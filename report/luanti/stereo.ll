Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/stereo?download=true
inline.NumInlined: 179
inline.NumDeleted: 55
begin_hunk_0_@_ZN16OffsetCameraStepC2Eb:.noexc.i

bb.a:                                             ; preds = %.noexc.i
  %i.am = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.af
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.ao = load i64, ptr %i.af, align 8, !tbaa !23
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aq = fmul nsz float %i.al, 1.000000e+01      ; 2 uses
  %i.ar = fneg nsz float %i.aq
  %i.as = select nsz i1 %2, float %i.aq, float %i.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float %i.as, ptr %i.at, align 8, !tbaa !11
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <2 x float> zeroinitializer, ptr %i.au, align 4, !tbaa !11
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  %i.aw = load ptr, ptr %3, align 8, !tbaa !21    ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.af
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.b
  %i.ay = load i64, ptr %i.af, align 8, !tbaa !23
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  resume { ptr, i32 } %i.av
}

declare noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff(ptr noundef nonnull align 8 dereferenceable(236), ptr noundef nonnull align 8 dereferenceable(32), float noundef, float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16OffsetCameraStepC1Eb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((0, 136)) %0, i1 noundef zeroext %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store ptr getelementptr inbounds nuw inrange(-40, 48) (i8, ptr @_ZTV16OffsetCameraStep, i64 40), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.c, i8 0, i64 56, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float 1.000000e+00, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !11
  store float 1.000000e+00, ptr %i.b, align 8, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.g, i8 0, i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 132
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 92
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !11
  store <2 x float> splat (float 1.000000e+00), ptr %i.d, align 4, !tbaa !11
  %i.k = load ptr, ptr @g_settings, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 19, ptr %i.a, align 8, !tbaa !19
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !21
  %i.n = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.n, ptr %i.l, align 8, !tbaa !23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.m, ptr noundef nonnull align 1 dereferenceable(19) @.str, i64 19, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !24
  %i.p = load ptr, ptr %2, align 8, !tbaa !21
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  store i8 0, ptr %i.q, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.r = invoke noundef float @_ZNK8Settings8getFloatERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEff(ptr noundef nonnull align 8 dereferenceable(236) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %2, float noundef -8.700000e-02, float noundef 8.700000e-02)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %.noexc.i
  %i.s = load ptr, ptr %2, align 8, !tbaa !21     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.l
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.u = load i64, ptr %i.l, align 8, !tbaa !23
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.w = fmul nsz float %i.r, 1.000000e+01        ; 2 uses
  %i.x = fneg nsz float %i.w
  %i.y = select nsz i1 %1, float %i.w, float %i.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  store float %i.y, ptr %i.z, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <2 x float> zeroinitializer, ptr %i.aa, align 4, !tbaa !11
  ret void

bb.b:                                             ; preds = %.noexc.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  %i.ac = load ptr, ptr %2, align 8, !tbaa !21    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.l
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8: ; preds = %bb.b
  %i.ae = load i64, ptr %i.l, align 8, !tbaa !23
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit10: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16OffsetCameraStep5resetER15PipelineContext(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(136) initializes((8, 72)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(47) %1) unnamed_addr #3 align 2 {
bb.a:
  %2 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !228  ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr dead_on_unwind nonnull writable sret(%"class.core::CMatrix4") align 4 %2, ptr noundef nonnull align 8 dereferenceable(218) %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !256
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: uwtable
define dso_local void @_ZTv0_n32_N16OffsetCameraStep5resetER15PipelineContext(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(47) %1) unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %"class.core::CMatrix4", align 4    ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds i8, ptr %i.a, i64 -32
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 624
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !228  ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 88
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr dead_on_unwind nonnull writable sret(%"class.core::CMatrix4") align 4 %2, ptr noundef nonnull align 8 dereferenceable(218) %i.j), !inline_history !257
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 64, i1 false), !tbaa.struct !256
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16OffsetCameraStep3runER15PipelineContext(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(47) %1) unnamed_addr #6 align 2 {
bb.a:
  %2 = alloca %"class.core::vector3d", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 624
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !228  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load float, ptr %i.k, align 8, !tbaa !11, !noalias !258
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load float, ptr %i.m, align 8, !tbaa !11, !noalias !258
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load float, ptr %i.o, align 8, !tbaa !11, !noalias !258
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load float, ptr %i.q, align 8, !tbaa !11, !noalias !258
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %3 = load <2 x float>, ptr %i.g, align 8, !tbaa !11, !noalias !258
  %i.t = load <2 x float>, ptr %i.h, align 8, !tbaa !11, !noalias !258
  %i.u = load <2 x float>, ptr %i.i, align 8, !tbaa !11, !noalias !258
  %i.v = load <2 x float>, ptr %i.j, align 8, !tbaa !11, !noalias !258
  %4 = load <4 x float>, ptr %i.s, align 8, !tbaa !11, !noalias !258 ; 8 uses
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %6 = fmul nsz <2 x float> %i.t, %5
  %7 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> zeroinitializer
  %8 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %3, <2 x float> %7, <2 x float> %6)
  %9 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.w = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %9, <2 x float> %8)
  %10 = shufflevector <4 x float> %4, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %11 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %10, <2 x float> %i.w)
  %12 = extractelement <4 x float> %4, i64 1
  %13 = fmul nsz float %i.n, %12
  %14 = extractelement <4 x float> %4, i64 0
  %15 = tail call nsz float @llvm.fmuladd.f32(float %i.l, float %14, float %13)
  %16 = extractelement <4 x float> %4, i64 2
  %i.x = tail call nsz float @llvm.fmuladd.f32(float %i.p, float %16, float %15)
  %17 = extractelement <4 x float> %4, i64 3
  %i.y = tail call nsz float @llvm.fmuladd.f32(float %i.r, float %17, float %i.x)
  store <2 x float> %11, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.y, ptr %.sroa.2.0..sroa_idx, align 8
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 224
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(218) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17TrivialRenderStepD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17TrivialRenderStepD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17TrivialRenderStep5resetER15PipelineContext(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(47) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17TrivialRenderStep15setRenderSourceEP12RenderSource(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17TrivialRenderStep15setRenderTargetEP12RenderTarget(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10RenderStepD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN10RenderStepD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #17
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20RenderPipelineObject5resetER15PipelineContext(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(47) %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16OffsetCameraStepD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16OffsetCameraStepD0Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #16
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @__cxx_global_var_init() #9 section ".text.startup" comdat($_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, align 8
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev, ptr nonnull @_ZN13ModifySafeMapItSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS1_EEE10null_valueE, ptr nonnull @__dso_handle) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10unique_ptrI18ClientActiveObjectSt14default_deleteIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !261    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit

_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  tail call void %i.d(ptr noundef nonnull align 8 dereferenceable(32) %i.a) #15, !inline_history !263
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteI18ClientActiveObjectEclEPS0_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #12

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTS8Settings", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"long", !7, i64 0}
!21 = !{!22, !18, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !20, i64 8, !7, i64 16}
!23 = !{!7, !7, i64 0}
!24 = !{!22, !20, i64 8}
!25 = !{!26, !28, i64 8}
!26 = !{!"_ZTS15PipelineContext", !27, i64 0, !28, i64 8, !29, i64 16, !30, i64 24, !31, i64 32, !32, i64 36, !33, i64 44, !33, i64 45, !33, i64 46}
!27 = !{!"p1 _ZTS14IrrlichtDevice", !15, i64 0}
!28 = !{!"p1 _ZTS6Client", !15, i64 0}
!29 = !{!"p1 _ZTS3Hud", !15, i64 0}
!30 = !{!"p1 _ZTS14ShadowRenderer", !15, i64 0}
!31 = !{!"_ZTSN5video6SColorE", !6, i64 0}
!32 = !{!"_ZTSN4core8vector2dIjEE", !6, i64 0, !6, i64 4}
!33 = !{!"bool", !7, i64 0}
!34 = !{!35, !116, i64 624}
!35 = !{!"_ZTS6Client", !36, i64 0, !37, i64 8, !38, i64 16, !33, i64 24, !33, i64 25, !33, i64 26, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !6, i64 44, !39, i64 48, !40, i64 56, !41, i64 64, !42, i64 72, !43, i64 80, !44, i64 88, !45, i64 96, !46, i64 104, !47, i64 112, !48, i64 120, !55, i64 128, !101, i64 568, !108, i64 576, !22, i64 584, !115, i64 616, !116, i64 624, !117, i64 632, !7, i64 640, !100, i64 642, !33, i64 644, !33, i64 645, !124, i64 648, !12, i64 656, !6, i64 660, !131, i64 664, !12, i64 712, !6, i64 716, !99, i64 720, !135, i64 728, !6, i64 808, !12, i64 812, !143, i64 816, !6, i64 896, !20, i64 904, !22, i64 912, !22, i64 944, !22, i64 976, !152, i64 1008, !15, i64 1016, !33, i64 1024, !33, i64 1025, !22, i64 1032, !153, i64 1064, !33, i64 1144, !33, i64 1145, !33, i64 1146, !33, i64 1147, !161, i64 1152, !166, i64 1176, !173, i64 1184, !12, i64 1208, !12, i64 1212, !178, i64 1216, !178, i64 1272, !184, i64 1328, !186, i64 1384, !188, i64 1440, !190, i64 1496, !192, i64 1552, !193, i64 1560, !39, i64 1568, !100, i64 1572, !67, i64 1576, !200, i64 1584, !12, i64 1592, !201, i64 1600, !206, i64 1624, !213, i64 1632, !33, i64 1640, !20, i64 1648, !6, i64 1656, !220, i64 1664, !227, i64 1672}
!36 = !{!"_ZTSN3con11PeerHandlerE"}
!37 = !{!"_ZTS16InventoryManager"}
!38 = !{!"_ZTS8IGameDef"}
!39 = !{!"_ZTS15IntervalLimiter", !12, i64 0}
!40 = !{!"p1 _ZTS22IWritableTextureSource", !15, i64 0}
!41 = !{!"p1 _ZTS21IWritableShaderSource", !15, i64 0}
!42 = !{!"p1 _ZTS23IWritableItemDefManager", !15, i64 0}
!43 = !{!"p1 _ZTS14NodeDefManager", !15, i64 0}
!44 = !{!"p1 _ZTS13ISoundManager", !15, i64 0}
!45 = !{!"p1 _ZTS14MtEventManager", !15, i64 0}
end_hunk_0
