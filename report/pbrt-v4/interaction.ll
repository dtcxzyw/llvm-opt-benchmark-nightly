Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/interaction?download=true
inline.NumInlined: 2722
inline.NumDeleted: 705
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZNK4pbrt17MediumInteraction8ToStringB5cxx11Ev:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.critedge

.critedge:                                        ; preds = %_ZN4pbrt12StringPrintfIJRKNS_8Point3fiERKNS_7Normal3IfEERKNS_6Point2IfEERKNS_7Vector3IfEERKfPKcSJ_SJ_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESJ_DpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br i1 %.not.not, label %.critedge27, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.ah = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.l
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !43
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.critedge27

.critedge27:                                      ; preds = %.critedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %.not, label %.critedge29, label %bb.m

bb.m:                                             ; preds = %.critedge27
  %i.am = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.m
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !43
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.critedge29

.critedge29:                                      ; preds = %.critedge27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.n:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42

bb.o:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i39

.body:                                            ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  br i1 %.not55, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %bb.p

bb.p:                                             ; preds = %.body
  %i.at = load ptr, ptr %4, align 8, !tbaa !24    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %bb.p
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !43
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i39: ; preds = %bb.p, %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  %.pn.ph = phi { ptr, i32 } [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %i.as, %bb.o ], [ %i.x, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i39
  %.pn49 = phi { ptr, i32 } [ %.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i39 ], [ %i.x, %.body ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br i1 %.not.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %bb.q

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.ay = load ptr, ptr %3, align 8, !tbaa !24    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %bb.q
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !43
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42: ; preds = %bb.q, %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  %.pn.pn.ph = phi { ptr, i32 } [ %.pn49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41 ], [ %i.ar, %bb.n ], [ %.pn49, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42
  %.pn.pn53 = phi { ptr, i32 } [ %.pn.pn.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i42 ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %.not, label %.critedge31, label %bb.r

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.bd = load ptr, ptr %2, align 8, !tbaa !24    ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44: ; preds = %bb.r
  %i.bg = load i64, ptr %i.be, align 8, !tbaa !43
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bh) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.critedge31

.critedge31:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn53
}

declare void @_ZNK4pbrt13PhaseFunction8ToStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4pbrt18SurfaceInteraction20ComputeDifferentialsERKNS_15RayDifferentialENS_6CameraEi(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(92) %1, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %2, i32 noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr @_ZN4pbrt7OptionsE, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.c = load i8, ptr %i.b, align 1, !tbaa !243, !range !49, !noundef !50
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !55, !range !49, !noundef !50
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.0217.0.copyload = load <2 x float>, ptr %i.i, align 8 ; 5 uses
  %.sroa.2218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.2218.0.copyload = load float, ptr %.sroa.2218.0..sroa_idx, align 8 ; 8 uses
  br i1 %i.h, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.0215.0.copyload = load <2 x float>, ptr %i.j, align 4 ; 3 uses
  %.sroa.2216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.2216.0.copyload = load float, ptr %.sroa.2216.0..sroa_idx, align 4 ; 3 uses
  %.sroa.04.0.vec.extract.i = extractelement <2 x float> %.sroa.0217.0.copyload, i64 0 ; 3 uses
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.0215.0.copyload, i64 0
  %.sroa.04.4.vec.extract.i = extractelement <2 x float> %.sroa.0217.0.copyload, i64 1 ; 3 uses
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.0215.0.copyload, i64 1
  %i.k = fmul float %.sroa.2218.0.copyload, %.sroa.2216.0.copyload ; 2 uses
  %i.l = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i, float %.sroa.01.4.vec.extract.i, float %i.k)
  %i.m = fneg float %i.k
  %i.n = tail call noundef float @llvm.fma.f32(float %.sroa.2218.0.copyload, float %.sroa.2216.0.copyload, float %i.m)
  %i.o = fadd float %i.l, %i.n
  %i.p = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i, float %.sroa.01.0.vec.extract.i, float %i.o) ; 2 uses
  %i.q = fcmp une float %i.p, 0.000000e+00
  br i1 %i.q, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0207.0.copyload = load <2 x float>, ptr %i.r, align 8 ; 3 uses
  %.sroa.2208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.2208.0.copyload = load float, ptr %.sroa.2208.0..sroa_idx, align 8 ; 3 uses
  %.sroa.01.0.vec.extract.i232 = extractelement <2 x float> %.sroa.0207.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i234 = extractelement <2 x float> %.sroa.0207.0.copyload, i64 1
  %i.s = fmul float %.sroa.2218.0.copyload, %.sroa.2208.0.copyload ; 2 uses
  %i.t = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i, float %.sroa.01.4.vec.extract.i234, float %i.s)
  %i.u = fneg float %i.s
  %i.v = tail call noundef float @llvm.fma.f32(float %.sroa.2218.0.copyload, float %.sroa.2208.0.copyload, float %i.u)
  %i.w = fadd float %i.t, %i.v
  %i.x = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i, float %.sroa.01.0.vec.extract.i232, float %i.w) ; 2 uses
  %i.y = fcmp une float %i.x, 0.000000e+00
  br i1 %i.y, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.z = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.aa = fmul float %i.z, 5.000000e-01           ; 3 uses
  %i.ab = fmul float %.sroa.2218.0.copyload, %i.aa ; 2 uses
  %i.ac = fneg float %i.ab
  %i.ad = tail call noundef float @llvm.fma.f32(float %.sroa.2218.0.copyload, float %i.aa, float %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 44
  %.sroa.0182.0.copyload = load <2 x float>, ptr %i.ae, align 4 ; 3 uses
  %.sroa.2183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 52
  %4 = load <2 x float>, ptr %.sroa.2183.0..sroa_idx, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.0147.0.copyload = load <2 x float>, ptr %i.af, align 8 ; 3 uses
  %.sroa.2148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.2148.0.copyload = load float, ptr %.sroa.2148.0..sroa_idx, align 8
  %i.ag = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.ah = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %0, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.aj = fadd <2 x float> %i.ag, %i.ai
  %i.ak = fmul <2 x float> %i.aj, splat (float 5.000000e-01) ; 4 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1
  %i.am = tail call noundef float @llvm.fma.f32(float %.sroa.04.4.vec.extract.i, float %i.al, float %i.ab)
  %i.an = fadd float %i.am, %i.ad
  %i.ao = extractelement <2 x float> %i.ak, i64 0
  %i.ap = tail call noundef float @llvm.fma.f32(float %.sroa.04.0.vec.extract.i, float %i.ao, float %i.an)
  %i.aq = insertelement <2 x float> poison, float %.sroa.2218.0.copyload, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.as = insertelement <2 x float> %4, float %.sroa.2148.0.copyload, i64 1 ; 3 uses
  %i.at = fmul <2 x float> %i.ar, %i.as           ; 2 uses
  %i.au = shufflevector <2 x float> %.sroa.0217.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.av = shufflevector <2 x float> %.sroa.0182.0.copyload, <2 x float> %.sroa.0147.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.aw = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.au, <2 x float> %i.av, <2 x float> %i.at)
  %i.ax = fneg <2 x float> %i.at
  %i.ay = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ar, <2 x float> %i.as, <2 x float> %i.ax)
  %i.az = fadd <2 x float> %i.aw, %i.ay
  %i.ba = shufflevector <2 x float> %.sroa.0217.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = shufflevector <2 x float> %.sroa.0182.0.copyload, <2 x float> %.sroa.0147.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.bc = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ba, <2 x float> %i.bb, <2 x float> %i.az)
  %i.bd = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bf = fsub <2 x float> %i.be, %i.bc
  %i.bg = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.x, i64 1
  %i.bi = fdiv <2 x float> %i.bf, %i.bh           ; 3 uses
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x float> %.sroa.0215.0.copyload, %i.bj
  %i.bl = fadd <2 x float> %i.bk, %.sroa.0182.0.copyload
  %i.bm = fsub <2 x float> %i.bl, %i.ak           ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 208
  store <2 x float> %i.bm, ptr %i.bn, align 8
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bo = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fmul <2 x float> %.sroa.0207.0.copyload, %i.bo
  %i.bq = fadd <2 x float> %i.bp, %.sroa.0147.0.copyload
  %i.br = fsub <2 x float> %i.bq, %i.ak           ; 2 uses
  %i.bs = insertelement <2 x float> poison, float %.sroa.2216.0.copyload, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %.sroa.2208.0.copyload, i64 1
  %i.bu = fmul <2 x float> %i.bt, %i.bi
  %i.bv = fadd <2 x float> %i.as, %i.bu
  %i.bw = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bx = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.by = fsub <2 x float> %i.bv, %i.bx           ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 220
  store <2 x float> %i.br, ptr %i.bz, align 4
  %i.ca = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 1>
  tail call void @llvm.masked.store.v4f32.p0(<4 x float> %i.ca, ptr align 8 %.sroa.4116.0..sroa_idx, <4 x i1> <i1 true, i1 false, i1 false, i1 true>)
  br label %bb.g

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.d
  %.sroa.0.sroa.2.0..sroa_idx.i318 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i324 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.sroa.5.0.copyload.i325 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i324, align 8
  %.sroa.0.sroa.6.0..sroa_idx.i326 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.0.sroa.6.0.copyload.i327 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i326, align 4
  %i.cb = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i318, align 4
  %i.cc = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %0, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ce = fadd <2 x float> %i.cb, %i.cd
  %i.cf = fmul <2 x float> %i.ce, splat (float 5.000000e-01)
  %i.cg = fadd float %.sroa.0.sroa.5.0.copyload.i325, %.sroa.0.sroa.6.0.copyload.i327
  %i.ch = fmul float %i.cg, 5.000000e-01
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !56
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.cm = load i64, ptr %2, align 8, !tbaa !58
  %i.cn = and i64 %i.cm, 144115188075855871
  %i.co = inttoptr i64 %i.cn to ptr
  tail call void @_ZNK4pbrt10CameraBase18Approximate_dp_dxyENS_6Point3IfEENS_7Normal3IfEEfiPNS_7Vector3IfEES7_(ptr noundef nonnull align 8 dereferenceable(896) %i.co, <2 x float> %i.cf, float %i.ch, <2 x float> %.sroa.0217.0.copyload, float %.sroa.2218.0.copyload, float noundef %i.cj, i32 noundef %3, ptr noundef nonnull %i.ck, ptr noundef nonnull %i.cl)
  %.sroa.032.0.copyload.pre = load <2 x float>, ptr %i.ck, align 8
  %.sroa.233.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.012.0.copyload.pre = load <2 x float>, ptr %i.cl, align 4
  %i.cp = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %.sroa.233.0..sroa_idx.phi.trans.insert, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.sroa.012.0.copyload = phi <2 x float> [ %.sroa.012.0.copyload.pre, %._crit_edge ], [ %i.br, %bb.f ] ; 2 uses
  %.sroa.032.0.copyload = phi <2 x float> [ %.sroa.032.0.copyload.pre, %._crit_edge ], [ %i.bm, %bb.f ] ; 2 uses
  %i.cr = phi <2 x float> [ %i.cq, %._crit_edge ], [ %i.by, %bb.f ]
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.075.0.copyload = load <2 x float>, ptr %i.ct, align 8 ; 5 uses
  %.sroa.276.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.276.0.copyload = load float, ptr %.sroa.276.0..sroa_idx, align 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.059.0.copyload = load <2 x float>, ptr %i.cu, align 4 ; 5 uses
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.260.0.copyload = load float, ptr %.sroa.260.0..sroa_idx, align 4 ; 3 uses
  %i.cv = fmul <2 x float> %.sroa.075.0.copyload, %.sroa.059.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cv, %shift
  %i.cw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cx = fmul float %.sroa.276.0.copyload, %.sroa.260.0.copyload
  %i.cy = fadd float %i.cx, %i.cw                 ; 5 uses
  %i.cz = fmul float %i.cy, %i.cy                 ; 2 uses
  %i.da = fneg float %i.cz
  %i.db = fneg float %i.cy                        ; 2 uses
  %i.dc = tail call noundef float @llvm.fma.f32(float %i.db, float %i.cy, float %i.cz)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.de = shufflevector <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.075.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.df = fmul <2 x float> %i.de, %i.de
  %i.dg = shufflevector <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.075.0.copyload, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dh = fmul <2 x float> %i.dg, %i.dg
  %i.di = fadd <2 x float> %i.df, %i.dh
  %i.dj = insertelement <2 x float> poison, float %.sroa.260.0.copyload, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %.sroa.276.0.copyload, i64 1 ; 2 uses
  %i.dl = fmul <2 x float> %i.dk, %i.dk
  %i.dm = fadd <2 x float> %i.dl, %i.di           ; 3 uses
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.do = extractelement <2 x float> %i.dm, i64 0
  %i.dp = extractelement <2 x float> %i.dm, i64 1
  %i.dq = tail call noundef float @llvm.fma.f32(float %i.dp, float %i.do, float %i.da)
  %i.dr = fadd float %i.dq, %i.dc
  %i.ds = fdiv float 1.000000e+00, %i.dr          ; 2 uses
  %i.dt = tail call float @llvm.fabs.f32(float %i.ds)
  %i.du = fcmp one float %i.dt, +inf
  %i.dv = select i1 %i.du, float %i.ds, float 0.000000e+00
  %i.dw = shufflevector <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.075.0.copyload, <4 x i32> <i32 0, i32 3, i32 0, i32 3>
  %i.dx = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %.sroa.012.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dy = fmul <4 x float> %i.dw, %i.dx
  %i.dz = shufflevector <2 x float> %.sroa.059.0.copyload, <2 x float> %.sroa.075.0.copyload, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ea = shufflevector <2 x float> %.sroa.032.0.copyload, <2 x float> %.sroa.012.0.copyload, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.eb = fmul <4 x float> %i.dz, %i.ea
  %i.ec = fadd <4 x float> %i.dy, %i.eb
  %i.ed = insertelement <4 x float> poison, float %.sroa.260.0.copyload, i64 0
  %i.ee = insertelement <4 x float> %i.ed, float %.sroa.276.0.copyload, i64 1
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.eg = fmul <4 x float> %i.ef, %i.cs
  %i.eh = fadd <4 x float> %i.eg, %i.ec           ; 2 uses
  %i.ei = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.ej = shufflevector <4 x float> %i.ei, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ek = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.el = fmul <4 x float> %i.ej, %i.ek           ; 2 uses
  %i.em = fneg <4 x float> %i.el
  %i.en = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.dn, <4 x float> %i.eh, <4 x float> %i.em)
  %i.eo = insertelement <4 x float> poison, float %i.db, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = tail call <4 x float> @llvm.fma.v4f32(<4 x float> %i.ep, <4 x float> %i.ek, <4 x float> %i.el)
  %i.er = fadd <4 x float> %i.en, %i.eq
  %i.es = insertelement <4 x float> poison, float %i.dv, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = fmul <4 x float> %i.er, %i.et           ; 4 uses
  %i.ev = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.eu)
  %i.ew = fcmp one <4 x float> %i.ev, splat (float +inf)
  %i.ex = fcmp olt <4 x float> %i.eu, splat (float -1.000000e+08)
  %i.ey = fcmp ogt <4 x float> %i.eu, splat (float 1.000000e+08)
  %i.ez = select <4 x i1> %i.ey, <4 x float> splat (float 1.000000e+08), <4 x float> %i.eu
  %i.fa = select <4 x i1> %i.ex, <4 x float> splat (float -1.000000e+08), <4 x float> %i.ez
  %i.fb = select <4 x i1> %i.ew, <4 x float> %i.fa, <4 x float> zeroinitializer
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x float> %i.fc, ptr %i.dd, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt18SurfaceInteraction16SkipIntersectionEPNS_15RayDifferentialEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %0, ptr nofree noundef captures(none) initializes((0, 12), (24, 28), (32, 40)) %1, float noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 4 uses
  %.sroa.235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %i.b, align 8, !noalias !248
  %.sroa.210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.210.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !noalias !248
  %i.c = tail call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %0, <2 x float> %.sroa.09.0.copyload.i.i, float %.sroa.210.0.copyload.i.i, <2 x float> %.sroa.034.0.copyload, float %.sroa.235.0.copyload), !noalias !248 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load float, ptr %i.d, align 8, !tbaa !56, !noalias !248
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40, !noalias !249 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.b, align 8, !noalias !249 ; 2 uses
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !noalias !249 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.034.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1
  %.sroa.04.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.034.0.copyload, i64 1
  %i.h = fmul float %.sroa.235.0.copyload, %.sroa.24.0.copyload.i.i ; 2 uses
  %i.i = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i, float %.sroa.04.4.vec.extract.i.i.i, float %i.h)
  %i.j = fneg float %i.h
  %i.k = tail call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i.i, float %.sroa.235.0.copyload, float %i.j)
  %i.l = fadd float %i.i, %i.k
  %i.m = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i, float %.sroa.04.0.vec.extract.i.i.i, float %i.l)
  %i.n = fcmp ogt float %i.m, 0.000000e+00
  %spec.select.idx.i.i = select i1 %i.n, i64 8, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %spec.select.idx.i.i
  br label %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit

_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit: ; preds = %bb.b, %bb.c
  %storemerge.in.i.i = phi ptr [ %spec.select.i.i, %bb.b ], [ %i.o, %bb.c ]
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.c, 1
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.c, 0
  %storemerge.i.i = load i64, ptr %storemerge.in.i.i, align 8, !tbaa !19, !noalias !249
  store <2 x float> %.fca.0.extract.i, ptr %1, align 8
  %.sroa.4.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx59, align 8
  store <2 x float> %.sroa.034.0.copyload, ptr %i.a, align 4
  store float %.sroa.235.0.copyload, ptr %.sroa.235.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %i.e, ptr %.sroa.7.0..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %storemerge.i.i, ptr %i.p, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i8, ptr %i.q, align 8, !tbaa !55, !range !49, !noundef !50
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 68
  %.sroa.026.0.copyload = load <2 x float>, ptr %i.u, align 4, !tbaa !59
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.227.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 4, !tbaa !59
  %i.v = fmul float %2, %.sroa.227.0.copyload
  %i.w = insertelement <2 x float> poison, float %2, i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.y = fmul <2 x float> %i.x, %.sroa.026.0.copyload
  %i.z = load <2 x float>, ptr %i.t, align 4, !tbaa !59
  %i.aa = fadd <2 x float> %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !60
  %i.ad = fadd float %i.v, %i.ac
  store <2 x float> %i.aa, ptr %i.t, align 4
  store float %i.ad, ptr %i.ab, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.09.0.copyload = load <2 x float>, ptr %i.af, align 8, !tbaa !59
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 8, !tbaa !59
  %i.ag = fmul float %2, %.sroa.210.0.copyload
  %i.ah = fmul <2 x float> %i.x, %.sroa.09.0.copyload
  %i.ai = load <2 x float>, ptr %i.ae, align 8, !tbaa !59
  %i.aj = fadd <2 x float> %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8, !tbaa !60
  %i.am = fadd float %i.ag, %i.al
  store <2 x float> %i.aj, ptr %i.ae, align 8
  store float %i.am, ptr %i.ak, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt18SurfaceInteraction8SpawnRayERKNS_15RayDifferentialERKNS_4BSDFENS_7Vector3IfEEif(ptr dead_on_unwind noalias nofree writable sret(%"class.pbrt::RayDifferential") align 8 captures(none) initializes((0, 28), (32, 41), (44, 92)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(92) %2, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(44) %3, <2 x float> %4, float %5, i32 noundef %6, float noundef %7) local_unnamed_addr #3 align 2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %.sroa.09.0.copyload.i.i = load <2 x float>, ptr %i.a, align 8, !noalias !254
  %.sroa.210.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.210.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !noalias !254
  %i.b = tail call { <2 x float>, float } @_ZN4pbrt15OffsetRayOriginENS_8Point3fiENS_7Normal3IfEENS_7Vector3IfEE(ptr noundef nonnull byval(%"class.pbrt::Point3fi") align 8 %1, <2 x float> %.sroa.09.0.copyload.i.i, float %.sroa.210.0.copyload.i.i, <2 x float> %4, float %5), !noalias !254 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load float, ptr %i.c, align 8, !tbaa !56, !noalias !254
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40, !noalias !255 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.03.0.copyload.i.i = load <2 x float>, ptr %i.a, align 8, !noalias !255 ; 2 uses
  %.sroa.24.0.copyload.i.i = load float, ptr %.sroa.210.0..sroa_idx.i.i, align 8, !noalias !255 ; 2 uses
  %.sroa.01.0.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 0
  %.sroa.04.0.vec.extract.i.i.i = extractelement <2 x float> %4, i64 0
  %.sroa.01.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.03.0.copyload.i.i, i64 1
  %.sroa.04.4.vec.extract.i.i.i = extractelement <2 x float> %4, i64 1
  %i.g = fmul float %5, %.sroa.24.0.copyload.i.i  ; 2 uses
  %i.h = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i, float %.sroa.04.4.vec.extract.i.i.i, float %i.g)
  %i.i = fneg float %i.g
  %i.j = tail call noundef float @llvm.fma.f32(float %.sroa.24.0.copyload.i.i, float %5, float %i.i)
  %i.k = fadd float %i.h, %i.j
  %i.l = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i, float %.sroa.04.0.vec.extract.i.i.i, float %i.k)
  %i.m = fcmp ogt float %i.l, 0.000000e+00
  %spec.select.idx.i.i = select i1 %i.m, i64 8, i64 0
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %spec.select.idx.i.i
  br label %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 72
  br label %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit

_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit: ; preds = %bb.b, %bb.c
  %storemerge.in.i.i = phi ptr [ %spec.select.i.i, %bb.b ], [ %i.n, %bb.c ]
  %.fca.1.extract.i = extractvalue { <2 x float>, float } %i.b, 1
  %.fca.0.extract.i = extractvalue { <2 x float>, float } %i.b, 0
  %storemerge.i.i = load i64, ptr %storemerge.in.i.i, align 8, !tbaa !19, !noalias !255
  store <2 x float> %.fca.0.extract.i, ptr %0, align 8, !alias.scope !254
  %.sroa.27.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.fca.1.extract.i, ptr %.sroa.27.0..sroa_idx.i.i.i, align 8, !alias.scope !254
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %4, ptr %i.o, align 4, !alias.scope !254
  %.sroa.23.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %5, ptr %.sroa.23.0..sroa_idx.i.i.i, align 4, !alias.scope !254
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.d, ptr %i.p, align 8, !tbaa !256, !alias.scope !254
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %storemerge.i.i, ptr %i.q, align 8, !tbaa !19, !alias.scope !254
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  store i8 0, ptr %i.r, align 8, !tbaa !55, !alias.scope !254
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %i.s, i8 0, i64 48, i1 false), !alias.scope !254
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i8, ptr %i.t, align 8, !tbaa !55, !range !49, !noundef !50
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNK4pbrt11Interaction8SpawnRayENS_7Vector3IfEE.exit
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.0929.0.copyload = load <2 x float>, ptr %i.w, align 8 ; 10 uses
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 8 ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 164
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 236
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 180
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.0467.0.copyload = load <2 x float>, ptr %i.af, align 4 ; 9 uses
  %.sroa.2468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 36
  %.sroa.2468.0.copyload = load float, ptr %.sroa.2468.0..sroa_idx, align 4 ; 9 uses
  %.sroa.03.0.vec.extract.i554 = extractelement <2 x float> %.sroa.0467.0.copyload, i64 0 ; 3 uses
  %.sroa.03.4.vec.extract.i555 = extractelement <2 x float> %.sroa.0467.0.copyload, i64 1 ; 3 uses
  %i.ag = load <4 x float>, ptr %i.x, align 4, !tbaa !59 ; 3 uses
  %i.ah = load float, ptr %i.aa, align 8, !tbaa !61
  %8 = load <2 x float>, ptr %i.z, align 8
  %i.ai = load <3 x float>, ptr %i.ab, align 4, !tbaa !59 ; 2 uses
  %i.aj = shufflevector <3 x float> %i.ai, <3 x float> poison, <4 x i32> <i32 2, i32 1, i32 0, i32 2>
  %i.ak = load <4 x float>, ptr %i.ac, align 4    ; 3 uses
  %i.al = shufflevector <3 x float> %i.ai, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 poison>
  %i.am = shufflevector <4 x float> %i.ag, <4 x float> %i.ak, <4 x i32> <i32 0, i32 4, i32 2, i32 2>
  %i.an = shufflevector <4 x float> %i.ag, <4 x float> %i.ak, <4 x i32> <i32 3, i32 1, i32 5, i32 5>
  %i.ao = fmul <4 x float> %i.aj, %i.an
  %i.ap = load <2 x float>, ptr %i.y, align 8, !tbaa !59 ; 3 uses
  %i.aq = insertelement <2 x float> %8, float %i.ah, i64 1
  %i.ar = fmul <2 x float> %i.ap, %i.aq
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.at = shufflevector <4 x float> %i.ag, <4 x float> %i.ak, <2 x i32> <i32 0, i32 4>
  %i.au = fmul <2 x float> %i.ap, %i.at
  %i.av = fadd <2 x float> %i.as, %i.au           ; 5 uses
  %i.aw = shufflevector <2 x float> %i.ap, <2 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 0>
  %i.ax = shufflevector <3 x float> %i.al, <3 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 5, i32 0>
  %i.ay = fmul <4 x float> %i.ax, %i.am
  %i.az = fadd <4 x float> %i.ay, %i.ao           ; 7 uses
  %i.ba = load <2 x float>, ptr %i.ad, align 4, !tbaa !59
  %i.bb = fneg <2 x float> %i.ba
  %i.bc = fsub <2 x float> %i.bb, %.sroa.0467.0.copyload ; 6 uses
  %i.bd = load <4 x float>, ptr %i.ae, align 4, !tbaa !59
  %i.be = fneg <4 x float> %i.bd
  %i.bf = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.bg = insertelement <4 x float> poison, float %.sroa.2468.0.copyload, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.bi = shufflevector <4 x float> %i.bh, <4 x float> %i.bf, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.bj = fsub <4 x float> %i.be, %i.bi           ; 7 uses
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 4 uses
  switch i32 %6, label %bb.i [
    i32 17, label %bb.e
    i32 18, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.r, align 8, !tbaa !55
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0.copyload.i = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i, align 8
  %.sroa.0.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.sroa.6.0.copyload.i = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i, align 4
  %i.bl = fadd float %.sroa.0.sroa.5.0.copyload.i, %.sroa.0.sroa.6.0.copyload.i
  %i.bm = fmul float %i.bl, 5.000000e-01          ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.0437.0.copyload = load <2 x float>, ptr %i.bn, align 8
  %.sroa.2438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.2438.0.copyload = load float, ptr %.sroa.2438.0..sroa_idx, align 8
  %i.bo = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 4
  %i.bp = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.br = fadd <2 x float> %i.bo, %i.bq
  %i.bs = fmul <2 x float> %i.br, splat (float 5.000000e-01) ; 2 uses
  %i.bt = fadd <2 x float> %i.bs, %.sroa.0437.0.copyload
  %i.bu = fadd float %.sroa.2438.0.copyload, %i.bm
  store <2 x float> %i.bt, ptr %i.s, align 4
  %.sroa.4444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.bu, ptr %.sroa.4444.0..sroa_idx, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.sroa.0423.0.copyload = load <2 x float>, ptr %i.bv, align 4
  %.sroa.2424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 228
  %.sroa.2424.0.copyload = load float, ptr %.sroa.2424.0..sroa_idx, align 4
  %i.bw = fadd <2 x float> %i.bs, %.sroa.0423.0.copyload
  %i.bx = fadd float %i.bm, %.sroa.2424.0.copyload
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %i.bw, ptr %i.by, align 8
  %.sroa.4430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.bx, ptr %.sroa.4430.0..sroa_idx, align 8
  %.sroa.01.0.vec.extract.i = extractelement <2 x float> %.sroa.0929.0.copyload, i64 0
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.0929.0.copyload, i64 1
  %i.bz = fmul float %.sroa.23.0.copyload, %.sroa.2468.0.copyload ; 2 uses
  %i.ca = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i, float %.sroa.03.4.vec.extract.i555, float %i.bz)
  %i.cb = fneg float %i.bz
  %i.cc = tail call noundef float @llvm.fma.f32(float %.sroa.23.0.copyload, float %.sroa.2468.0.copyload, float %i.cb)
  %i.cd = fadd float %i.ca, %i.cc
  %i.ce = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i, float %.sroa.03.0.vec.extract.i554, float %i.cd) ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 68
  %.sroa.4382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.cg = shufflevector <4 x float> %i.az, <4 x float> %i.bj, <2 x i32> <i32 2, i32 4> ; 2 uses
  %i.ch = insertelement <2 x float> poison, float %.sroa.2468.0.copyload, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %.sroa.23.0.copyload, i64 1 ; 4 uses
  %i.cj = fmul <2 x float> %i.cg, %i.ci           ; 2 uses
  %i.ck = shufflevector <2 x float> %i.av, <2 x float> %.sroa.0929.0.copyload, <2 x i32> <i32 1, i32 3>
  %i.cl = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> %i.bc, <2 x i32> <i32 1, i32 3>
  %i.cm = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ck, <2 x float> %i.cl, <2 x float> %i.cj)
  %i.cn = fneg <2 x float> %i.cj
  %i.co = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cg, <2 x float> %i.ci, <2 x float> %i.cn)
  %i.cp = fadd <2 x float> %i.cm, %i.co
  %i.cq = shufflevector <2 x float> %i.av, <2 x float> %.sroa.0929.0.copyload, <2 x i32> <i32 0, i32 2>
  %i.cr = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> %i.bc, <2 x i32> <i32 0, i32 2>
  %i.cs = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cq, <2 x float> %i.cr, <2 x float> %i.cp) ; 2 uses
  %shift = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.cs, %shift ; 2 uses
  %i.ct = shufflevector <4 x float> %i.az, <4 x float> %i.bj, <2 x i32> <i32 3, i32 7> ; 2 uses
  %i.cu = fmul <2 x float> %i.ct, %i.ci           ; 2 uses
  %i.cv = shufflevector <2 x float> %.sroa.0929.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.cw = shufflevector <4 x float> %i.az, <4 x float> %i.cv, <2 x i32> <i32 1, i32 5>
  %i.cx = shufflevector <2 x float> %.sroa.0467.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> %i.bk, <2 x i32> <i32 1, i32 5>
  %i.cz = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.cw, <2 x float> %i.cy, <2 x float> %i.cu)
  %i.da = fneg <2 x float> %i.cu
  %i.db = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.ct, <2 x float> %i.ci, <2 x float> %i.da)
  %i.dc = fadd <2 x float> %i.cz, %i.db
  %i.dd = shufflevector <4 x float> %i.az, <4 x float> %i.cv, <2 x i32> <i32 0, i32 4>
  %i.de = shufflevector <4 x float> %i.cx, <4 x float> %i.bj, <2 x i32> <i32 0, i32 5>
  %i.df = tail call <2 x float> @llvm.fma.v2f32(<2 x float> %i.dd, <2 x float> %i.de, <2 x float> %i.dc) ; 2 uses
  %shift987 = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop988 = fadd <2 x float> %i.df, %shift987
  %i.dg = fsub <2 x float> %4, %i.bc
  %i.dh = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = fmul <2 x float> %i.av, %i.di
  %i.dk = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fmul <2 x float> %.sroa.0929.0.copyload, %i.dk
  %i.dm = fadd <2 x float> %i.dj, %i.dl
  %i.dn = fmul <2 x float> %i.dm, splat (float 2.000000e+00)
  %i.do = fadd <2 x float> %i.dg, %i.dn           ; 2 uses
  store <2 x float> %i.do, ptr %i.cf, align 4
  %i.dp = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dq = insertelement <4 x float> poison, float %5, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.ds = shufflevector <4 x float> %i.dp, <4 x float> %i.dr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dt = fsub <4 x float> %i.ds, %i.bk
  %i.du = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = fmul <4 x float> %i.az, %i.dv
  %i.dx = insertelement <4 x float> poison, float %.sroa.23.0.copyload, i64 0
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.dz = shufflevector <4 x float> %i.cv, <4 x float> %i.dy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ea = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %foldExtExtBinop988, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eb = shufflevector <4 x float> %i.ea, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.ec = fmul <4 x float> %i.dz, %i.eb
  %i.ed = fadd <4 x float> %i.dw, %i.ec
  %i.ee = fmul <4 x float> %i.ed, splat (float 2.000000e+00)
  %i.ef = fadd <4 x float> %i.dt, %i.ee           ; 2 uses
  %i.eg = extractelement <4 x float> %i.ef, i64 2
  store float %i.eg, ptr %.sroa.4382.0..sroa_idx, align 4
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  %i.eh = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  store i8 1, ptr %i.r, align 8, !tbaa !55
  %.sroa.0.sroa.2.0..sroa_idx.i690 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.0.sroa.5.0..sroa_idx.i696 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.sroa.5.0.copyload.i697 = load float, ptr %.sroa.0.sroa.5.0..sroa_idx.i696, align 8
  %.sroa.0.sroa.6.0..sroa_idx.i698 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.0.sroa.6.0.copyload.i699 = load float, ptr %.sroa.0.sroa.6.0..sroa_idx.i698, align 4
  %i.ei = fadd float %.sroa.0.sroa.5.0.copyload.i697, %.sroa.0.sroa.6.0.copyload.i699
  %i.ej = fmul float %i.ei, 5.000000e-01          ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.0251.0.copyload = load <2 x float>, ptr %i.ek, align 8
  %.sroa.2252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.sroa.2252.0.copyload = load float, ptr %.sroa.2252.0..sroa_idx, align 8
  %i.el = load <2 x float>, ptr %.sroa.0.sroa.2.0..sroa_idx.i690, align 4
  %i.em = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 8 %1, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison)
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.eo = fadd <2 x float> %i.el, %i.en
  %i.ep = fmul <2 x float> %i.eo, splat (float 5.000000e-01) ; 2 uses
  %i.eq = fadd <2 x float> %i.ep, %.sroa.0251.0.copyload
  %i.er = fadd float %.sroa.2252.0.copyload, %i.ej
  store <2 x float> %i.eq, ptr %i.s, align 4
  %.sroa.4258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.er, ptr %.sroa.4258.0..sroa_idx, align 4
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 220
  %.sroa.0237.0.copyload = load <2 x float>, ptr %i.es, align 4
  %.sroa.2238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 228
  %.sroa.2238.0.copyload = load float, ptr %.sroa.2238.0..sroa_idx, align 4
  %i.et = fadd <2 x float> %i.ep, %.sroa.0237.0.copyload
  %i.eu = fadd float %i.ej, %.sroa.2238.0.copyload
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %i.et, ptr %i.ev, align 8
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.eu, ptr %.sroa.4244.0..sroa_idx, align 8
  %.sroa.01.0.vec.extract.i731 = extractelement <2 x float> %.sroa.0929.0.copyload, i64 0 ; 2 uses
  %.sroa.01.4.vec.extract.i733 = extractelement <2 x float> %.sroa.0929.0.copyload, i64 1 ; 2 uses
  %i.ew = fmul float %.sroa.23.0.copyload, %.sroa.2468.0.copyload ; 2 uses
  %i.ex = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i733, float %.sroa.03.4.vec.extract.i555, float %i.ew)
  %i.ey = fneg float %i.ew
  %i.ez = tail call noundef float @llvm.fma.f32(float %.sroa.23.0.copyload, float %.sroa.2468.0.copyload, float %i.ey)
  %i.fa = fadd float %i.ex, %i.ez
  %i.fb = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i731, float %.sroa.03.0.vec.extract.i554, float %i.fa) ; 2 uses
  %i.fc = fcmp olt float %i.fb, 0.000000e+00
  %i.fd = shufflevector <2 x float> %.sroa.0929.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> %i.az, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  br i1 %i.fc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ff = fneg <4 x float> %i.fe                  ; 4 uses
  %i.fg = extractelement <4 x float> %i.ff, i64 1 ; 2 uses
  %i.fh = extractelement <4 x float> %i.ff, i64 0 ; 2 uses
  %i.fi = fneg float %.sroa.23.0.copyload         ; 3 uses
  %i.fj = fneg <2 x float> %i.av
  %i.fk = fneg <2 x float> %i.eh
  %.pre971 = fmul float %.sroa.2468.0.copyload, %i.fi ; 2 uses
  %.pre972 = tail call noundef float @llvm.fma.f32(float %i.fg, float %.sroa.03.4.vec.extract.i555, float %.pre971)
  %.pre974 = fneg float %.pre971
  %.pre976 = tail call noundef float @llvm.fma.f32(float %i.fi, float %.sroa.2468.0.copyload, float %.pre974)
  %.pre978 = fadd float %.pre972, %.pre976
  %.pre980 = tail call noundef float @llvm.fma.f32(float %i.fh, float %.sroa.03.0.vec.extract.i554, float %.pre978)
  %i.fl = shufflevector <4 x float> %i.ff, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre-phi981 = phi float [ %.pre980, %bb.g ], [ %i.fb, %bb.f ] ; 2 uses
  %.sroa.01.4.vec.extract.i749.pre-phi = phi float [ %i.fg, %bb.g ], [ %.sroa.01.4.vec.extract.i733, %bb.f ] ; 2 uses
  %.sroa.01.0.vec.extract.i747.pre-phi = phi float [ %i.fh, %bb.g ], [ %.sroa.01.0.vec.extract.i731, %bb.f ] ; 2 uses
  %.sroa.0916.0 = phi <2 x float> [ %i.fk, %bb.g ], [ %i.eh, %bb.f ]
  %.sroa.0923.0 = phi <2 x float> [ %i.fj, %bb.g ], [ %i.av, %bb.f ] ; 3 uses
  %.sroa.23.0 = phi float [ %i.fi, %bb.g ], [ %.sroa.23.0.copyload, %bb.f ] ; 4 uses
  %i.fm = phi <4 x float> [ %i.ff, %bb.g ], [ %i.fe, %bb.f ] ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK4pbrt16DiffuseAreaLight1LENS_6Point3IfEENS_7Normal3IfEENS_6Point2IfEENS_7Vector3IfEERKNS_18SampledWavelengthsE:bb.a

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i:     ; preds = %bb.m, %bb.l
  %.0.i.i.2.i = phi float [ %i.cs, %bb.m ], [ %i.cq, %bb.l ]
  %i.ct = fmul float %i.ay, %.0.i.i.2.i
  %i.cu = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !59 ; 2 uses
  %i.cw = call noundef float @llvm.fma.f32(float %i.cv, float %i.be, float %i.bd)
  %i.cx = call noundef float @llvm.fma.f32(float %i.cv, float %i.cw, float %i.bb) ; 5 uses
  %i.cy = call float @llvm.fabs.f32(float %i.cx)
  %i.cz = fcmp oeq float %i.cy, +inf
  br i1 %i.cz, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.da = fmul float %i.cx, %i.cx
  %i.db = fadd float %i.da, 1.000000e+00
  %sqrt.i.i.3.i = call float @llvm.sqrt.f32(float %i.db)
  %i.dc = fmul float %sqrt.i.i.3.i, 2.000000e+00
  %i.dd = fdiv float %i.cx, %i.dc
  %i.de = fadd float %i.dd, 5.000000e-01
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

bb.o:                                             ; preds = %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.2.i
  %i.df = fcmp ogt float %i.cx, 0.000000e+00
  %i.dg = uitofp i1 %i.df to float
  br label %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i

_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i:     ; preds = %bb.o, %bb.n
  %.0.i.i.3.i = phi float [ %i.dg, %bb.o ], [ %i.de, %bb.n ]
  %i.dh = fmul float %i.ay, %.0.i.i.3.i
  %i.di = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.hy, ptr noundef nonnull align 4 dereferenceable(32) %8) ; 2 uses
  %i.dj = extractvalue { <2 x float>, <2 x float> } %i.di, 0
  %i.dk = extractvalue { <2 x float>, <2 x float> } %i.di, 1
  %i.dl = insertelement <2 x float> poison, float %i.br, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.cf, i64 1
  %i.dn = fmul <2 x float> %i.dm, %i.dj
  %i.do = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dh, i64 1
  %i.dq = fmul <2 x float> %i.dp, %i.dk
  br label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit

_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit: ; preds = %_ZN4pbrt3RGBixEi.exit.2, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i
  %.sroa.06.0.i = phi <2 x float> [ %i.dn, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %.sroa.4.0.i = phi <2 x float> [ %i.dq, %_ZNK4pbrt20RGBSigmoidPolynomialclEf.exit.3.i ], [ zeroinitializer, %_ZN4pbrt3RGBixEi.exit.2 ]
  %i.dr = shufflevector <1 x float> %i.hw, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ds = fmul <2 x float> %i.dr, %.sroa.06.0.i
  %i.dt = fmul <2 x float> %i.dr, %.sroa.4.0.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.q

_ZN4pbrt3RGBixEi.exit.2:                          ; preds = %bb.f
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 12 uses
  %.sroa.083.4.vec.extract = extractelement <2 x float> %5, i64 1
  %i.dv = fsub float 1.000000e+00, %.sroa.083.4.vec.extract ; 3 uses
  %.sroa.040.0.vec.extract.i = extractelement <2 x float> %5, i64 0
  %i.dw = uitofp nneg i32 %i.as to float
  %i.dx = fmul float %.sroa.040.0.vec.extract.i, %i.dw
  %i.dy = uitofp nneg i32 %i.av to float
  %i.dz = fmul float %i.dv, %i.dy
  %i.ea = fadd float %i.dx, -5.000000e-01         ; 2 uses
  %i.eb = fadd float %i.dz, -5.000000e-01         ; 2 uses
  %i.ec = call noundef float @llvm.floor.f32(float %i.ea)
  %i.ed = fptosi float %i.ec to i32               ; 3 uses
  %i.ee = call noundef float @llvm.floor.f32(float %i.eb)
  %i.ef = fptosi float %i.ee to i32               ; 3 uses
  %.sroa.239.0.insert.ext.i = zext i32 %i.ef to i64
  %.sroa.239.0.insert.shift.i = shl nuw i64 %.sroa.239.0.insert.ext.i, 32 ; 2 uses
  %.sroa.038.0.insert.ext.i = zext i32 %i.ed to i64 ; 2 uses
  %.sroa.038.0.insert.insert.i = or disjoint i64 %.sroa.239.0.insert.shift.i, %.sroa.038.0.insert.ext.i
  %i.eg = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.038.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %i.eh = add nsw i32 %i.ed, 1
  %.sroa.036.0.insert.ext.i = zext i32 %i.eh to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i = or disjoint i64 %.sroa.239.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.ei = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.036.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %i.ej = add nsw i32 %i.ef, 1
  %.sroa.235.0.insert.ext.i = zext i32 %i.ej to i64
  %.sroa.235.0.insert.shift.i = shl nuw i64 %.sroa.235.0.insert.ext.i, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.038.0.insert.ext.i
  %i.ek = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.034.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.el = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.0.0.insert.insert.i, i32 noundef 0, i64 4294967297)
  %i.em = load <2 x i32>, ptr %i.ar, align 4, !tbaa !119
  %i.en = sitofp <2 x i32> %i.em to <2 x float>   ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %5, %i.en
  %i.eo = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ep = fadd float %i.eo, -5.000000e-01         ; 2 uses
  %i.eq = extractelement <2 x float> %i.en, i64 1
  %i.er = fmul float %i.dv, %i.eq
  %i.es = fadd float %i.er, -5.000000e-01         ; 2 uses
  %i.et = call noundef float @llvm.floor.f32(float %i.ep)
  %i.eu = fptosi float %i.et to i32               ; 3 uses
  %i.ev = call noundef float @llvm.floor.f32(float %i.es)
  %i.ew = fptosi float %i.ev to i32               ; 3 uses
  %.sroa.239.0.insert.ext.i.1 = zext i32 %i.ew to i64
  %.sroa.239.0.insert.shift.i.1 = shl nuw i64 %.sroa.239.0.insert.ext.i.1, 32 ; 2 uses
  %.sroa.038.0.insert.ext.i.1 = zext i32 %i.eu to i64 ; 2 uses
  %.sroa.038.0.insert.insert.i.1 = or disjoint i64 %.sroa.239.0.insert.shift.i.1, %.sroa.038.0.insert.ext.i.1
  %i.ex = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.038.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %i.ey = add nsw i32 %i.eu, 1
  %.sroa.036.0.insert.ext.i.1 = zext i32 %i.ey to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i.1 = or disjoint i64 %.sroa.239.0.insert.shift.i.1, %.sroa.036.0.insert.ext.i.1
  %i.ez = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.036.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %i.fa = add nsw i32 %i.ew, 1
  %.sroa.235.0.insert.ext.i.1 = zext i32 %i.fa to i64
  %.sroa.235.0.insert.shift.i.1 = shl nuw i64 %.sroa.235.0.insert.ext.i.1, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i.1 = or disjoint i64 %.sroa.235.0.insert.shift.i.1, %.sroa.038.0.insert.ext.i.1
  %i.fb = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.034.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %.sroa.0.0.insert.insert.i.1 = or disjoint i64 %.sroa.235.0.insert.shift.i.1, %.sroa.036.0.insert.ext.i.1
  %i.fc = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.0.0.insert.insert.i.1, i32 noundef 1, i64 4294967297)
  %i.fd = insertelement <2 x i32> poison, i32 %i.ef, i64 0
  %i.fe = insertelement <2 x i32> %i.fd, i32 %i.ew, i64 1
  %i.ff = sitofp <2 x i32> %i.fe to <2 x float>
  %i.fg = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.es, i64 1
  %i.fi = fsub <2 x float> %i.fh, %i.ff           ; 3 uses
  %i.fj = insertelement <2 x i32> poison, i32 %i.ed, i64 0
  %i.fk = insertelement <2 x i32> %i.fj, i32 %i.eu, i64 1
  %i.fl = sitofp <2 x i32> %i.fk to <2 x float>
  %i.fm = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.ep, i64 1
  %i.fo = fsub <2 x float> %i.fn, %i.fl           ; 3 uses
  %i.fp = fsub <2 x float> splat (float 1.000000e+00), %i.fo ; 2 uses
  %i.fq = fsub <2 x float> splat (float 1.000000e+00), %i.fi ; 2 uses
  %i.fr = fmul <2 x float> %i.fp, %i.fq
  %i.fs = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ft = insertelement <2 x float> %i.fs, float %i.ex, i64 1
  %i.fu = fmul <2 x float> %i.ft, %i.fr
  %i.fv = fmul <2 x float> %i.fo, %i.fq
  %i.fw = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fx = insertelement <2 x float> %i.fw, float %i.ez, i64 1
  %i.fy = fmul <2 x float> %i.fx, %i.fv
  %i.fz = fadd <2 x float> %i.fu, %i.fy
  %i.ga = fmul <2 x float> %i.fp, %i.fi
  %i.gb = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.gc = insertelement <2 x float> %i.gb, float %i.fb, i64 1
  %i.gd = fmul <2 x float> %i.gc, %i.ga
  %i.ge = fadd <2 x float> %i.gd, %i.fz
  %i.gf = fmul <2 x float> %i.fo, %i.fi
  %i.gg = insertelement <2 x float> poison, float %i.el, i64 0
  %i.gh = insertelement <2 x float> %i.gg, float %i.fc, i64 1
  %i.gi = fmul <2 x float> %i.gh, %i.gf
  %i.gj = fadd <2 x float> %i.gi, %i.ge           ; 2 uses
  %i.gk = load <2 x i32>, ptr %i.ar, align 4, !tbaa !119
  %i.gl = sitofp <2 x i32> %i.gk to <2 x float>
  %i.gm = insertelement <2 x float> %5, float %i.dv, i64 1
  %i.gn = fmul <2 x float> %i.gm, %i.gl
  %i.go = fadd <2 x float> %i.gn, splat (float -5.000000e-01) ; 2 uses
  %i.gp = call <2 x float> @llvm.floor.v2f32(<2 x float> %i.go)
  %i.gq = fptosi <2 x float> %i.gp to <2 x i32>   ; 4 uses
  %i.gr = extractelement <2 x i32> %i.gq, i64 1   ; 2 uses
  %.sroa.239.0.insert.ext.i.2 = zext i32 %i.gr to i64
  %.sroa.239.0.insert.shift.i.2 = shl nuw i64 %.sroa.239.0.insert.ext.i.2, 32
  %i.gs = extractelement <2 x i32> %i.gq, i64 0   ; 2 uses
  %.sroa.038.0.insert.ext.i.2 = zext i32 %i.gs to i64
  %.sroa.038.0.insert.insert.i.2 = bitcast <2 x i32> %i.gq to i64
  %i.gt = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.038.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %i.gu = add nsw i32 %i.gs, 1
  %.sroa.036.0.insert.ext.i.2 = zext i32 %i.gu to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i.2 = or disjoint i64 %.sroa.239.0.insert.shift.i.2, %.sroa.036.0.insert.ext.i.2
  %i.gv = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.036.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %i.gw = add nsw i32 %i.gr, 1
  %.sroa.235.0.insert.ext.i.2 = zext i32 %i.gw to i64
  %.sroa.235.0.insert.shift.i.2 = shl nuw i64 %.sroa.235.0.insert.ext.i.2, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i.2 = or disjoint i64 %.sroa.235.0.insert.shift.i.2, %.sroa.038.0.insert.ext.i.2
  %i.gx = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.034.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %.sroa.0.0.insert.insert.i.2 = or disjoint i64 %.sroa.235.0.insert.shift.i.2, %.sroa.036.0.insert.ext.i.2
  %i.gy = call noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %i.du, i64 %.sroa.0.0.insert.insert.i.2, i32 noundef 2, i64 4294967297)
  %i.gz = sitofp <2 x i32> %i.gq to <2 x float>
  %i.ha = fsub <2 x float> %i.go, %i.gz           ; 2 uses
  %i.hb = extractelement <2 x float> %i.ha, i64 0 ; 3 uses
  %i.hc = fsub float 1.000000e+00, %i.hb          ; 2 uses
  %i.hd = extractelement <2 x float> %i.ha, i64 1 ; 3 uses
  %i.he = fsub float 1.000000e+00, %i.hd          ; 2 uses
  %i.hf = fmul float %i.hc, %i.he
  %i.hg = fmul float %i.gt, %i.hf
  %i.hh = fmul float %i.hb, %i.he
  %i.hi = fmul float %i.gv, %i.hh
  %i.hj = fadd float %i.hg, %i.hi
  %i.hk = fmul float %i.hc, %i.hd
  %i.hl = fmul float %i.gx, %i.hk
  %i.hm = fadd float %i.hl, %i.hj
  %i.hn = fmul float %i.hb, %i.hd
  %i.ho = fmul float %i.gy, %i.hn
  %i.hp = fadd float %i.ho, %i.hm                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !540
  %i.hs = fcmp ogt <2 x float> %i.gj, zeroinitializer
  %i.ht = select <2 x i1> %i.hs, <2 x float> %i.gj, <2 x float> zeroinitializer
  %i.hu = fcmp ogt float %i.hp, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.hu, float %i.hp, float 0.000000e+00
  call void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(152) %i.hr, <2 x float> %i.ht, float %.sroa.speculated.i)
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.hw = load <1 x float>, ptr %i.hv, align 8
  %i.hx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !201 ; 2 uses
  %.not.i40 = icmp eq ptr %i.hy, null
  br i1 %.not.i40, label %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit, label %bb.g

bb.p:                                             ; preds = %bb.f
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %13 = load <1 x float>, ptr %i.hz, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !541
  %i.ic = call { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ib, ptr noundef nonnull align 4 dereferenceable(32) %8) ; 2 uses
  %i.id = extractvalue { <2 x float>, <2 x float> } %i.ic, 0
  %i.ie = extractvalue { <2 x float>, <2 x float> } %i.ic, 1
  %i.if = shufflevector <1 x float> %13, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ig = fmul <2 x float> %i.if, %i.id
  %i.ih = fmul <2 x float> %i.if, %i.ie
  br label %bb.q

bb.q:                                             ; preds = %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread99, %bb.b, %bb.p, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit
  %.sroa.086.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.ds, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ], [ %i.ig, %bb.p ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread99 ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit ]
  %.sroa.792.0 = phi <2 x float> [ zeroinitializer, %bb.b ], [ %i.dt, %_ZNK4pbrt21RGBIlluminantSpectrum6SampleERKNS_18SampledWavelengthsE.exit ], [ %i.ih, %bb.p ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit.thread99 ], [ zeroinitializer, %_ZNK4pbrt16DiffuseAreaLight11AlphaMaskedERKNS_11InteractionE.exit ]
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.086.0, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.792.0, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

declare void @_ZN4pbrt21RGBIlluminantSpectrumC1ERKNS_13RGBColorSpaceENS_3RGBE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(152), <2 x float>, float) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt22DenselySampledSpectrum6SampleERKNS_18SampledWavelengthsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load float, ptr %1, align 4, !tbaa !59
  %i.d = tail call noundef i64 @lroundf(float noundef %i.c) #23
  %i.e = load i32, ptr %0, align 8, !tbaa !203
  %i.f = trunc i64 %i.d to i32
  %i.g = sub i32 %i.f, %i.e                       ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64                ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !204
  %.not = icmp ugt i64 %i.j, %i.i
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  %i.m = load float, ptr %i.l, align 4, !tbaa !59
  %.sroa.0.0.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.vec.insert, %bb.c ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !59
  %i.p = tail call noundef i64 @lroundf(float noundef %i.o) #23
  %i.q = load i32, ptr %0, align 8, !tbaa !203
  %i.r = trunc i64 %i.p to i32
  %i.s = sub i32 %i.r, %i.q                       ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = zext nneg i32 %i.s to i64                ; 2 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !204
  %.not.1 = icmp ugt i64 %i.v, %i.u
  br i1 %.not.1, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.u
  %i.y = load float, ptr %i.x, align 4, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink = phi float [ %i.y, %bb.f ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load float, ptr %i.z, align 4, !tbaa !59
  %i.ab = tail call noundef i64 @lroundf(float noundef %i.aa) #23
  %i.ac = load i32, ptr %0, align 8, !tbaa !203
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = sub i32 %i.ad, %i.ac                    ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !204
  %.not.2 = icmp ugt i64 %i.ah, %i.ag
  br i1 %.not.2, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !59
  %.sroa.6.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.6.0 = phi <2 x float> [ %.sroa.6.8.vec.insert, %bb.i ], [ zeroinitializer, %bb.h ], [ zeroinitializer, %bb.g ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = load float, ptr %i.al, align 4, !tbaa !59
  %i.an = tail call noundef i64 @lroundf(float noundef %i.am) #23
  %i.ao = load i32, ptr %0, align 8, !tbaa !203
  %i.ap = trunc i64 %i.an to i32
  %i.aq = sub i32 %i.ap, %i.ao                    ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = zext nneg i32 %i.aq to i64              ; 2 uses
  %i.at = load i64, ptr %i.a, align 8, !tbaa !204
  %.not.3 = icmp ugt i64 %i.at, %i.as
  br i1 %.not.3, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !165
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.as
  %i.aw = load float, ptr %i.av, align 4, !tbaa !59
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sink30 = phi float [ %i.aw, %bb.l ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ]
  %.sroa.0.4.vec.insert17 = insertelement <2 x float> %.sroa.0.0, float %.sink, i64 1
  %.sroa.6.12.vec.insert22 = insertelement <2 x float> %.sroa.6.0, float %.sink30, i64 1
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert17, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.6.12.vec.insert22, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

declare noundef float @_ZN4pbrt25UniversalTextureEvaluatorclENS_12FloatTextureENS_18TextureEvalContextE(ptr noundef nonnull align 1 dereferenceable(1), ptr nofree noundef align 8 dead_on_return dereferenceable(8), ptr noundef byval(%"struct.pbrt::TextureEvalContext") align 8) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @lroundf(float noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_8Point3fiEJRKNS_7Normal3IfEERKNS_6Point2IfEERKNS_7Vector3IfEERKfPKcSK_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %11 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 noundef signext 42, i64 noundef 0) #23
  %.not = icmp eq i64 %i.d, -1
  %i.e = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 noundef signext 115, i64 noundef 0) #23
  %.not22 = icmp eq i64 %i.e, -1
  %i.f = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 noundef signext 100, i64 noundef 0) #23
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not23 = icmp eq i64 %i.f, -1
  br i1 %.not23, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not22, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %11)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %.sroa.02.0.copyload.i.i = load <2 x float>, ptr %2, align 4, !tbaa !59, !noalias !550
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.i, align 4, !tbaa !59, !noalias !550
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.j, align 4, !tbaa !59, !noalias !550
  invoke void @_ZN4pbrt8internal9ToString3INS_8IntervalEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S9_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, <2 x float> %.sroa.02.0.copyload.i.i, <2 x float> %.sroa.01.0.copyload.i.i, <2 x float> %.sroa.0.0.copyload.i.i)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.f
  %i.k = load ptr, ptr %9, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !42
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc
  %i.o = load ptr, ptr %9, align 8, !tbaa !24     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !43
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.g:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !24     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZZNK4pbrt8Material7GetBSDFINS_25UniversalTextureEvaluatorEEENS_4BSDFET_NS_19MaterialEvalContextERNS_18SampledWavelengthsERNS_13ScratchBufferEENKUlS4_E_clIPKNS_22ThinDielectricMaterialEEES3_S4_:bb.a
  %.sroa.0.4.vec.insert.i.i24.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i23.i, float %i.bf, i64 1
  store <2 x float> %i.aq, ptr %i.aj, align 8, !alias.scope !846
  %.sroa.210.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ar, ptr %.sroa.210.0..sroa_idx.i.i.i, align 8, !alias.scope !846
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 20
  store <2 x float> %.sroa.0.4.vec.insert.i.i24.i, ptr %i.bm, align 4, !alias.scope !846
  %.sroa.26.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.bl, ptr %.sroa.26.0..sroa_idx.i.i.i, align 4, !alias.scope !846
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.sroa.05.0.copyload, ptr %i.bn, align 8, !alias.scope !846
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %.sroa.26.0.copyload, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !alias.scope !846
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4pbrt13ScratchBuffer5AllocINS_18ThinDielectricBxDFEJEEENS_16AllocationTraitsIT_E12SingleObjectEDpOT0_(ptr noundef nonnull align 64 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !127  ; 3 uses
  %i.c = and i32 %i.b, 3
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub = and i32 %i.b, -4
  %i.d = add i32 %reass.sub, 4                    ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.pre-phi.i = sext i32 %i.e to i64
  %i.f = add nsw i64 %.pre-phi.i, 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !128
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 64, !tbaa !129
  br label %_ZN4pbrt13ScratchBuffer5AllocEmm.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %0, align 64, !tbaa !25
  %i.m = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.l, ptr %i.n, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 32, !tbaa !130
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 32, !tbaa !130
  %i.r = load i32, ptr %i.g, align 8, !tbaa !128
  %i.s = sext i32 %i.r to i64
  %i.t = add nsw i64 %i.s, 4
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 8)
  %i.u = trunc i64 %.sroa.speculated.i.i to i32
  store i32 %i.u, ptr %i.g, align 8, !tbaa !128
  %i.v = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #23 ; 2 uses
  %i.w = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = sext i32 %i.w to i64
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.y, i64 noundef 64), !inline_history !0
  br label %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i

_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i:         ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ null, %bb.d ] ; 2 uses
  store ptr %.0.i.i.i.i, ptr %0, align 64, !tbaa !129
  br label %_ZN4pbrt13ScratchBuffer5AllocEmm.exit

_ZN4pbrt13ScratchBuffer5AllocEmm.exit:            ; preds = %._crit_edge.i, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i
  %i.ad = phi i32 [ %i.e, %._crit_edge.i ], [ 0, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i ] ; 2 uses
  %i.ae = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i.i, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i ]
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = add i32 %i.ad, 4
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !127
  store i32 0, ptr %i.ag, align 4
  ret ptr %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN4pbrt13ScratchBuffer5AllocINS_15TabulatedBSSRDFEJEEENS_16AllocationTraitsIT_E12SingleObjectEDpOT0_(ptr noundef nonnull align 64 dereferenceable(40) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !127  ; 3 uses
  %i.c = and i32 %i.b, 7
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %reass.sub = and i32 %i.b, -8
  %i.d = add i32 %reass.sub, 8                    ; 2 uses
  store i32 %i.d, ptr %i.a, align 4, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %.pre-phi.i = sext i32 %i.e to i64
  %i.f = add nsw i64 %.pre-phi.i, 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !128
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp ugt i64 %i.f, %i.i
  br i1 %i.j, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 64, !tbaa !129
  br label %_ZN4pbrt13ScratchBuffer5AllocEmm.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %0, align 64, !tbaa !25
  %i.m = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.l, ptr %i.n, align 8
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 %i.i, ptr %.sroa.47.0..sroa_idx.i.i, align 8
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.k) #23
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.p = load i64, ptr %i.o, align 32, !tbaa !130
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.o, align 32, !tbaa !130
  %i.r = load i32, ptr %i.g, align 8, !tbaa !128
  %i.s = sext i32 %i.r to i64
  %i.t = add nsw i64 %i.s, 80
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 160)
  %i.u = trunc i64 %.sroa.speculated.i.i to i32
  store i32 %i.u, ptr %i.g, align 8, !tbaa !128
  %i.v = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #23 ; 2 uses
  %i.w = load i32, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = sext i32 %i.w to i64
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.v, i64 noundef %i.y, i64 noundef 64), !inline_history !0
  br label %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i

_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i:         ; preds = %bb.e, %bb.d
  %.0.i.i.i.i = phi ptr [ %i.ac, %bb.e ], [ null, %bb.d ] ; 2 uses
  store ptr %.0.i.i.i.i, ptr %0, align 64, !tbaa !129
  br label %_ZN4pbrt13ScratchBuffer5AllocEmm.exit

_ZN4pbrt13ScratchBuffer5AllocEmm.exit:            ; preds = %._crit_edge.i, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i
  %i.ad = phi i32 [ %i.e, %._crit_edge.i ], [ 0, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i ] ; 2 uses
  %i.ae = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.0.i.i.i.i, %_ZN4pbrt13ScratchBuffer7ReallocEm.exit.i ]
  %i.af = sext i32 %i.ad to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = add i32 %i.ad, 80
  store i32 %i.ah, ptr %i.a, align 4, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ag, i8 0, i64 80, i1 false)
  ret ptr %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt18SubsurfaceMaterial9GetBSSRDFINS_25UniversalTextureEvaluatorEEENS_15TabulatedBSSRDFET_RKNS_19MaterialEvalContextERNS_18SampledWavelengthsE(ptr dead_on_unwind noalias writable sret(%"class.pbrt::TabulatedBSSRDF") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1, ptr noundef nonnull align 4 dereferenceable(112) %2, ptr noundef nonnull align 4 dereferenceable(32) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::UniversalTextureEvaluator", align 1 ; 4 uses
  %5 = alloca %"class.pbrt::SpectrumTexture", align 8 ; 2 uses
  %6 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 2 uses
  %7 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 2 uses
  %8 = alloca %"class.pbrt::SpectrumTexture", align 8 ; 2 uses
  %9 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 2 uses
  %10 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 2 uses
  %11 = alloca %"class.pbrt::SpectrumTexture", align 8 ; 2 uses
  %12 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 2 uses
  %13 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 2 uses
  %14 = alloca %"class.pbrt::SpectrumTexture", align 8 ; 2 uses
  %15 = alloca %"struct.pbrt::TextureEvalContext", align 8 ; 2 uses
  %16 = alloca %"class.pbrt::SampledWavelengths", align 8 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !223  ; 2 uses
  %i.c = and i64 %i.b, 144115188075855871
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !223
  %i.f = and i64 %i.e, 144115188075855871
  %.not114 = icmp eq i64 %i.f, 0
  br i1 %.not114, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %17 = load <1 x float>, ptr %i.g, align 8
  store i64 %i.b, ptr %5, align 8, !tbaa !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %6, ptr noundef nonnull align 4 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !224
  %i.h = call { <2 x float>, <2 x float> } @_ZN4pbrt25UniversalTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %5, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %6, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %7) ; 2 uses
  %i.i = extractvalue { <2 x float>, <2 x float> } %i.h, 0
  %i.j = extractvalue { <2 x float>, <2 x float> } %i.h, 1
  %i.k = shufflevector <1 x float> %17, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.l = fmul <2 x float> %i.k, %i.i              ; 2 uses
  %i.m = fcmp ogt <2 x float> %i.l, zeroinitializer
  %i.n = select <2 x i1> %i.m, <2 x float> %i.l, <2 x float> zeroinitializer
  %i.o = fmul <2 x float> %i.k, %i.j              ; 2 uses
  %i.p = fcmp ogt <2 x float> %i.o, zeroinitializer
  %i.q = select <2 x i1> %i.p, <2 x float> %i.o, <2 x float> zeroinitializer
  %18 = load <1 x float>, ptr %i.g, align 8
  %i.r = load i64, ptr %i.d, align 8, !tbaa !223
  store i64 %i.r, ptr %8, align 8, !tbaa !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %9, ptr noundef nonnull align 4 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !224
  %i.s = call { <2 x float>, <2 x float> } @_ZN4pbrt25UniversalTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %9, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %10) ; 2 uses
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0
  %i.u = extractvalue { <2 x float>, <2 x float> } %i.s, 1
  %i.v = shufflevector <1 x float> %18, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.w = fmul <2 x float> %i.v, %i.t              ; 2 uses
  %i.x = fcmp ogt <2 x float> %i.w, zeroinitializer
  %i.y = select <2 x i1> %i.x, <2 x float> %i.w, <2 x float> zeroinitializer
  %i.z = fmul <2 x float> %i.v, %i.u              ; 2 uses
  %i.aa = fcmp ogt <2 x float> %i.z, zeroinitializer
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.z, <2 x float> zeroinitializer
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 48
  %19 = load <1 x float>, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !223
  store i64 %i.ae, ptr %11, align 8, !tbaa !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %12, ptr noundef nonnull align 4 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !224
  %i.af = call { <2 x float>, <2 x float> } @_ZN4pbrt25UniversalTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %11, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %12, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %13) ; 2 uses
  %i.ag = extractvalue { <2 x float>, <2 x float> } %i.af, 0
  %i.ah = extractvalue { <2 x float>, <2 x float> } %i.af, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !223
  store i64 %i.aj, ptr %14, align 8, !tbaa !223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %15, ptr noundef nonnull align 4 dereferenceable(76) %2, i64 76, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 4 dereferenceable(32) %3, i64 32, i1 false), !tbaa.struct !224
  %i.ak = call { <2 x float>, <2 x float> } @_ZN4pbrt25UniversalTextureEvaluatorclENS_15SpectrumTextureENS_18TextureEvalContextENS_18SampledWavelengthsE(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %14, ptr noundef nonnull byval(%"struct.pbrt::TextureEvalContext") align 8 %15, ptr noundef nonnull byval(%"class.pbrt::SampledWavelengths") align 8 %16) ; 2 uses
  %i.al = extractvalue { <2 x float>, <2 x float> } %i.ak, 0
  %i.am = extractvalue { <2 x float>, <2 x float> } %i.ak, 1
  %i.an = shufflevector <2 x float> %i.al, <2 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 3 uses
  %i.ao = fcmp ogt <4 x float> %i.an, splat (float 1.000000e+00)
  %i.ap = select <4 x i1> %i.ao, <4 x float> splat (float 1.000000e+00), <4 x float> %i.an
  %i.aq = fcmp olt <4 x float> %i.an, zeroinitializer
  %i.ar = select <4 x i1> %i.aq, <4 x float> zeroinitializer, <4 x float> %i.ap ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 4 uses
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !165
  %i.ax = load i64, ptr %i.at, align 8, !tbaa !204
  %i.ay = load ptr, ptr %i.au, align 8, !tbaa !165
  %i.az = load i64, ptr %i.av, align 8, !tbaa !204
  %i.ba = extractelement <4 x float> %i.ar, i64 0
  %i.bb = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.aw, i64 %i.ax, ptr %i.ay, i64 %i.az, float noundef %i.ba)
  %i.bc = load ptr, ptr %i.as, align 8, !tbaa !165
  %i.bd = load i64, ptr %i.at, align 8, !tbaa !204
  %i.be = load ptr, ptr %i.au, align 8, !tbaa !165
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !204
  %i.bg = extractelement <4 x float> %i.ar, i64 1
  %i.bh = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.bc, i64 %i.bd, ptr %i.be, i64 %i.bf, float noundef %i.bg)
  %i.bi = shufflevector <1 x float> %19, <1 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bj = fmul <2 x float> %i.bi, %i.ag           ; 2 uses
  %i.bk = fcmp ogt <2 x float> %i.bj, zeroinitializer
  %i.bl = select <2 x i1> %i.bk, <2 x float> %i.bj, <2 x float> zeroinitializer ; 2 uses
  %i.bm = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bh, i64 1 ; 2 uses
  %i.bo = fsub <2 x float> splat (float 1.000000e+00), %i.bn
  %i.bp = fdiv <2 x float> %i.bo, %i.bl
  %i.bq = fdiv <2 x float> %i.bn, %i.bl
  %i.br = load ptr, ptr %i.as, align 8, !tbaa !165
  %i.bs = load i64, ptr %i.at, align 8, !tbaa !204
  %i.bt = load ptr, ptr %i.au, align 8, !tbaa !165
  %i.bu = load i64, ptr %i.av, align 8, !tbaa !204
  %i.bv = extractelement <4 x float> %i.ar, i64 2
  %i.bw = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.br, i64 %i.bs, ptr %i.bt, i64 %i.bu, float noundef %i.bv)
  %i.bx = load ptr, ptr %i.as, align 8, !tbaa !165
  %i.by = load i64, ptr %i.at, align 8, !tbaa !204
  %i.bz = load ptr, ptr %i.au, align 8, !tbaa !165
  %i.ca = load i64, ptr %i.av, align 8, !tbaa !204
  %i.cb = extractelement <4 x float> %i.ar, i64 3
  %i.cc = call noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr %i.bx, i64 %i.by, ptr %i.bz, i64 %i.ca, float noundef %i.cb)
  %i.cd = fmul <2 x float> %i.bi, %i.ah           ; 2 uses
  %i.ce = fcmp ogt <2 x float> %i.cd, zeroinitializer
  %i.cf = select <2 x i1> %i.ce, <2 x float> %i.cd, <2 x float> zeroinitializer ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.bw, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.cc, i64 1 ; 2 uses
  %i.ci = fsub <2 x float> splat (float 1.000000e+00), %i.ch
  %i.cj = fdiv <2 x float> %i.ci, %i.cf
  %i.ck = fdiv <2 x float> %i.ch, %i.cf
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0103.0 = phi <2 x float> [ %i.y, %bb.c ], [ %i.bq, %bb.d ] ; 2 uses
  %.sroa.9.0 = phi <2 x float> [ %i.ab, %bb.c ], [ %i.ck, %bb.d ] ; 2 uses
  %.sroa.0110.0 = phi <2 x float> [ %i.n, %bb.c ], [ %i.bp, %bb.d ]
  %.sroa.7112.0 = phi <2 x float> [ %i.q, %bb.c ], [ %i.cj, %bb.d ]
  %.sroa.09.0.copyload = load <2 x float>, ptr %2, align 4
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.210.0.copyload = load float, ptr %.sroa.210.0..sroa_idx, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.07.0.copyload = load <2 x float>, ptr %i.cl, align 4
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.28.0.copyload = load float, ptr %.sroa.28.0..sroa_idx, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 76
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.cm, align 4
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 84
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.co = load float, ptr %i.cn, align 4, !tbaa !227
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 80
  store <2 x float> %.sroa.09.0.copyload, ptr %0, align 8
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %.sroa.210.0.copyload, ptr %.sroa.222.0..sroa_idx.i, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.sroa.05.0.copyload, ptr %i.cq, align 4
  %.sroa.214.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.sroa.26.0.copyload, ptr %.sroa.214.0..sroa_idx.i, align 4
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.sroa.07.0.copyload, ptr %i.cr, align 8
  %.sroa.218.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %.sroa.28.0.copyload, ptr %.sroa.218.0..sroa_idx.i, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.co, ptr %i.cs, align 4, !tbaa !851
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.cp, ptr %i.cv, align 8, !tbaa !852
  %i.cw = fadd <2 x float> %.sroa.0103.0, %.sroa.0110.0 ; 3 uses
  %i.cx = fadd <2 x float> %.sroa.9.0, %.sroa.7112.0 ; 3 uses
  store <2 x float> %i.cw, ptr %i.ct, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %i.cx, ptr %.sroa.45.0..sroa_idx.i, align 8, !tbaa !43
  %i.cy = fcmp une <2 x float> %i.cw, zeroinitializer
  %i.cz = fdiv <2 x float> %.sroa.0103.0, %i.cw
  %i.da = select <2 x i1> %i.cy, <2 x float> %i.cz, <2 x float> zeroinitializer
  %i.db = fcmp une <2 x float> %i.cx, zeroinitializer
  %i.dc = fdiv <2 x float> %.sroa.9.0, %i.cx
  %i.dd = select <2 x i1> %i.db, <2 x float> %i.dc, <2 x float> zeroinitializer
  store <2 x float> %i.da, ptr %i.cu, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x float> %i.dd, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !43
  ret void
}

declare noundef float @_ZN4pbrt16InvertCatmullRomEN4pstd4spanIKfEES3_f(ptr, i64, ptr, i64, float noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN4pbrt6detail21stringPrintfRecursiveIRKNS_8Point3fiEJRKNS_7Normal3IfEERKNS_6Point2IfEERKNS_7Vector3IfEERKfPKcSK_SG_SG_S8_S8_S8_SG_SG_S8_S8_SK_SK_SG_SG_SI_SI_SI_SI_RKiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESK_OT_DpOT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %10, ptr noundef nonnull align 4 dereferenceable(12) %11, ptr noundef nonnull align 4 dereferenceable(12) %12, ptr noundef nonnull align 4 dereferenceable(12) %13, ptr noundef nonnull align 4 dereferenceable(12) %14, ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %16, ptr noundef nonnull align 4 dereferenceable(12) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 4 dereferenceable(12) %20, ptr noundef nonnull align 4 dereferenceable(12) %21, ptr noundef nonnull align 4 dereferenceable(4) %22, ptr noundef nonnull align 4 dereferenceable(4) %23, ptr noundef nonnull align 4 dereferenceable(4) %24, ptr noundef nonnull align 4 dereferenceable(4) %25, ptr noundef nonnull align 4 dereferenceable(4) %26) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %29 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #23
  call void @_ZN4pbrt6detail18copyToFormatStringEPPKcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull %i.c, ptr noundef %0)
  %i.d = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 noundef signext 42, i64 noundef 0) #23
  %.not = icmp eq i64 %i.d, -1
  %i.e = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 noundef signext 115, i64 noundef 0) #23
  %.not40 = icmp eq i64 %i.e, -1
  %i.f = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEcm(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 noundef signext 100, i64 noundef 0) #23
  br i1 %.not, label %bb.c, label %.invoke

bb.b:                                             ; preds = %.invoke, %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %.not41 = icmp eq i64 %i.f, -1
  br i1 %.not41, label %bb.d, label %.invoke

bb.d:                                             ; preds = %bb.c
  br i1 %.not40, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %29)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %.sroa.02.0.copyload.i.i = load <2 x float>, ptr %2, align 4, !tbaa !59, !noalias !861
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.01.0.copyload.i.i = load <2 x float>, ptr %i.i, align 4, !tbaa !59, !noalias !861
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.j, align 4, !tbaa !59, !noalias !861
  invoke void @_ZN4pbrt8internal9ToString3INS_8IntervalEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_S9_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %27, <2 x float> %.sroa.02.0.copyload.i.i, <2 x float> %.sroa.01.0.copyload.i.i, <2 x float> %.sroa.0.0.copyload.i.i)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %bb.f
  %i.k = load ptr, ptr %27, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !42
  %i.n = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.k, i64 noundef %i.m)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i unwind label %bb.g ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i: ; preds = %.noexc
  %i.o = load ptr, ptr %27, align 8, !tbaa !24    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !43
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.g:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %27, align 8, !tbaa !24    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i: ; preds = %bb.g
  %i.x = load i64, ptr %i.v, align 8, !tbaa !43
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.z = load ptr, ptr %28, align 8, !tbaa !24    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !862)
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  %i.aa = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 7 uses
  store ptr %i.aa, ptr %31, align 8, !tbaa !41, !alias.scope !864
  %i.ab = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.ab, align 8, !tbaa !42, !alias.scope !864
  store i8 0, ptr %i.aa, align 8, !tbaa !43, !alias.scope !864
  %i.ac = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !145, !noalias !864 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !864 ; 2 uses
  %i.ag = icmp ugt ptr %i.ad, %i.af
  %.08.i.i.i = select i1 %i.ag, ptr %i.ad, ptr %i.af ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !146, !noalias !864 ; 2 uses
  %i.aj = ptrtoint ptr %.08.i.i.i to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
end_hunk_2
