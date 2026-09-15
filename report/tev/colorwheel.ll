Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/colorwheel?download=true
inline.NumInlined: 100
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.NVGpaint = type { [6 x float], [2 x float], float, float, %struct.NVGcolor, %struct.NVGcolor, i32 }
%struct.NVGcolor = type { %union.anon.11 }
%union.anon.11 = type { [4 x float] }
%"class.nanogui::Color" = type { %"struct.nanogui::Array.10" }
%"struct.nanogui::Array.10" = type { [4 x float] }

$_ZN7nanogui10ColorWheelD2Ev = comdat any

$_ZN7nanogui10ColorWheelD0Ev = comdat any

@_ZTVN7nanogui10ColorWheelE = hidden constant { [17 x ptr] } { [17 x ptr] [ptr null, ptr @_ZTIN7nanogui10ColorWheelE, ptr @_ZN7nanogui10ColorWheelD2Ev, ptr @_ZN7nanogui10ColorWheelD0Ev, ptr @_ZN7nanogui6Widget9set_themeEPNS_5ThemeE, ptr @_ZN7nanogui6Widget9add_childEiPS0_, ptr @_ZN7nanogui10ColorWheel18mouse_button_eventERKNS_5ArrayIiLm2EEEibi, ptr @_ZN7nanogui6Widget18mouse_motion_eventERKNS_5ArrayIiLm2EEES4_ii, ptr @_ZN7nanogui10ColorWheel16mouse_drag_eventERKNS_5ArrayIiLm2EEES4_ii, ptr @_ZN7nanogui6Widget17mouse_enter_eventERKNS_5ArrayIiLm2EEEb, ptr @_ZN7nanogui6Widget12scroll_eventERKNS_5ArrayIiLm2EEERKNS1_IfLm2EEE, ptr @_ZN7nanogui6Widget11focus_eventEb, ptr @_ZN7nanogui6Widget14keyboard_eventEiiii, ptr @_ZN7nanogui6Widget24keyboard_character_eventEj, ptr @_ZN7nanogui6Widget14perform_layoutEP10NVGcontext, ptr @_ZN7nanogui10ColorWheel4drawEP10NVGcontext, ptr @_ZNK7nanogui10ColorWheel19preferred_size_implEP10NVGcontext] }, align 8
@_ZTIN7nanogui10ColorWheelE = hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN7nanogui10ColorWheelE, ptr @_ZTIN7nanogui6WidgetE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN7nanogui10ColorWheelE = hidden constant [23 x i8] c"N7nanogui10ColorWheelE\00", align 1
@_ZTIN7nanogui6WidgetE = external constant ptr

@_ZN7nanogui10ColorWheelC1EPNS_6WidgetERKNS_5ColorE = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN7nanogui10ColorWheelC2EPNS_6WidgetERKNS_5ColorE

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui10ColorWheelC2EPNS_6WidgetERKNS_5ColorE(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN7nanogui6WidgetC2EPS0_(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7nanogui10ColorWheelE, i64 16), ptr %0, align 16, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr null, ptr %i.b, align 16, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @_ZN7nanogui10ColorWheel9set_colorERKNS_5ColorE(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.c, align 8, !tbaa !52
  ret void
}

declare void @_ZN7nanogui6WidgetC2EPS0_(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN7nanogui10ColorWheel9set_colorERKNS_5ColorE(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(224) initializes((148, 160)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #2 align 2 {
.lr.ph.i.i.i:
  %i.a = load float, ptr %1, align 4, !tbaa !41   ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !41 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !41 ; 7 uses
  %i.f = fcmp olt float %i.a, %i.c
  %i.g = select i1 %i.f, float %i.c, float %i.a   ; 2 uses
  %i.h = fcmp olt float %i.g, %i.e
  %.sroa.speculated110 = select i1 %i.h, float %i.e, float %i.g ; 8 uses
  %i.i = fcmp olt float %i.c, %i.a
  %i.j = select i1 %i.i, float %i.c, float %i.a   ; 2 uses
  %i.k = fcmp olt float %i.e, %i.j
  %.sroa.speculated105 = select i1 %i.k, float %i.e, float %i.j ; 6 uses
  %i.l = fcmp oeq float %.sroa.speculated110, %.sroa.speculated105
  br i1 %i.l, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i.i
  %i.m = fadd float %.sroa.speculated110, %.sroa.speculated105
  %i.n = fmul float %i.m, 5.000000e-01            ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float 0.000000e+00, ptr %i.o, align 4, !tbaa !45
  %i.p = fsub float 1.000000e+00, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156
  store float %i.p, ptr %i.q, align 4, !tbaa !46
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 152
  store float %i.n, ptr %i.r, align 8, !tbaa !47
  br label %bb.n

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.s = fsub float %.sroa.speculated110, %.sroa.speculated105 ; 3 uses
  %i.t = fcmp oeq float %.sroa.speculated110, %i.a
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = fsub float %i.c, %i.e
  %i.v = fdiv float %i.u, %i.s
  %i.w = fcmp olt float %i.c, %i.e
  %i.x = select i1 %i.w, float 6.000000e+00, float 0.000000e+00
  %i.y = fadd float %i.x, %i.v
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.z = fcmp oeq float %.sroa.speculated110, %i.c
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = fsub float %i.e, %i.a
  %i.ab = fdiv float %i.aa, %i.s
  %i.ac = fadd float %i.ab, 2.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ad = fsub float %i.a, %i.c
  %i.ae = fdiv float %i.ad, %i.s
  %i.af = fadd float %i.ae, 4.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0 = phi float [ %i.y, %bb.c ], [ %i.ac, %bb.e ], [ %i.af, %bb.f ]
  %i.ag = fdiv float %.0, 6.000000e+00            ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 148
  store float %i.ag, ptr %i.ah, align 4, !tbaa !45
  %i.ai = fcmp olt float %i.ag, 0.000000e+00
  %i.aj = fadd float %i.ag, 1.000000e+00
  %.036.i = select i1 %i.ai, float %i.aj, float %i.ag ; 2 uses
  %i.ak = fmul float %.036.i, 6.000000e+00
  %i.al = fptosi float %i.ak to i32               ; 2 uses
  %i.am = sitofp i32 %i.al to float
  %i.an = fneg float %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %.036.i, float 6.000000e+00, float %i.an) ; 2 uses
  %i.ap = fsub float 1.000000e+00, %i.ao          ; 3 uses
  %i.aq = fadd float %i.ao, -1.000000e+00
  %i.ar = fadd float %i.aq, 1.000000e+00          ; 3 uses
  %i.as = srem i32 %i.al, 6
  switch i32 %i.as, label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.k
    i32 4, label %bb.l
    i32 5, label %bb.m
  ]

bb.h:                                             ; preds = %bb.g
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.i:                                             ; preds = %bb.g
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.j:                                             ; preds = %bb.g
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.k:                                             ; preds = %bb.g
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.l:                                             ; preds = %bb.g
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.m:                                             ; preds = %bb.g
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

_ZNK7nanogui10ColorWheel7hue2rgbEf.exit:          ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.035.i = phi float [ 0.000000e+00, %bb.g ], [ 1.000000e+00, %bb.h ], [ %i.ap, %bb.i ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ], [ %i.ar, %bb.l ], [ 1.000000e+00, %bb.m ] ; 4 uses
  %.034.i = phi float [ 0.000000e+00, %bb.g ], [ %i.ar, %bb.h ], [ 1.000000e+00, %bb.i ], [ 1.000000e+00, %bb.j ], [ %i.ap, %bb.k ], [ 0.000000e+00, %bb.l ], [ 0.000000e+00, %bb.m ] ; 4 uses
  %.0.i = phi float [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.i ], [ %i.ar, %bb.j ], [ 1.000000e+00, %bb.k ], [ 1.000000e+00, %bb.l ], [ %i.ap, %bb.m ] ; 4 uses
  %i.at = fcmp olt float %.035.i, %.034.i
  %i.au = select i1 %i.at, float %.034.i, float %.035.i ; 2 uses
  %i.av = fcmp olt float %i.au, %.0.i
  %.sroa.speculated100 = select i1 %i.av, float %.0.i, float %i.au ; 4 uses
  %i.aw = fcmp olt float %.034.i, %.035.i
  %i.ax = select i1 %i.aw, float %.034.i, float %.035.i ; 2 uses
  %i.ay = fcmp olt float %.0.i, %i.ax
  %.sroa.speculated = select i1 %i.ay, float %.0.i, float %i.ax ; 4 uses
  %i.az = fneg float %.sroa.speculated100
  %i.ba = fmul float %.sroa.speculated105, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %.sroa.speculated110, float %.sroa.speculated, float %i.ba)
  %i.bc = fsub float %.sroa.speculated, %.sroa.speculated100
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.be = fadd float %.sroa.speculated110, %.sroa.speculated
  %i.bf = tail call float @llvm.fmuladd.f32(float %.sroa.speculated105, float %.sroa.speculated100, float %i.be)
  %i.bg = fsub float %i.bf, %.sroa.speculated105
  %i.bh = fneg float %.sroa.speculated110
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bh, float %.sroa.speculated, float %i.bg)
  %i.bj = fsub float %i.bi, %.sroa.speculated100
  %i.bk = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bl = insertelement <2 x float> %i.bk, float %i.bj, i64 1
  %i.bm = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.bn = shufflevector <2 x float> %i.bm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bo = fdiv <2 x float> %i.bl, %i.bn
  store <2 x float> %i.bo, ptr %i.bd, align 8, !tbaa !41
  br label %bb.n

bb.n:                                             ; preds = %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i64 @_ZNK7nanogui10ColorWheel19preferred_size_implEP10NVGcontext(ptr nofree nonnull readnone align 16 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #4 align 2 {
bb.a:
  ret i64 429496729700
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui10ColorWheel4drawEP10NVGcontext(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %struct.NVGpaint, align 8           ; 10 uses
  %3 = alloca %struct.NVGcolor, align 8           ; 3 uses
  %4 = alloca %struct.NVGpaint, align 8           ; 4 uses
  %5 = alloca %struct.NVGpaint, align 8           ; 4 uses
  tail call void @_ZN7nanogui6Widget4drawEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = load i8, ptr %i.a, align 8, !tbaa !54, !range !48, !noundef !49
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load <2 x i32>, ptr %i.d, align 8, !tbaa !50
  %i.g = shufflevector <2 x i32> %i.f, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.h = sitofp <4 x i32> %i.g to <4 x float>
  %i.i = load <2 x i32>, ptr %i.e, align 16, !tbaa !50
  %i.j = shufflevector <2 x i32> %i.i, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.k = sitofp <4 x i32> %i.j to <4 x float>     ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.m = load float, ptr %i.l, align 4, !tbaa !45 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  tail call void @nvgSave(ptr noundef %1)
  %i.n = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.k, <4 x float> splat (float 5.000000e-01), <4 x float> %i.h) ; 3 uses
  %i.o = extractelement <4 x float> %i.k, i64 0   ; 2 uses
  %i.p = extractelement <4 x float> %i.k, i64 1   ; 2 uses
  %i.q = fcmp olt float %i.o, %i.p
  %i.r = select i1 %i.q, float %i.o, float %i.p
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float 5.000000e-01, float -5.000000e+00) ; 7 uses
  %i.t = fmul nnan float %i.s, 7.500000e-01       ; 8 uses
  %i.u = fdiv float 5.000000e-01, %i.s            ; 2 uses
  %i.v = fneg float %i.u
  %i.w = fadd float %i.s, %i.t
  %i.x = insertelement <2 x float> poison, float %i.v, i64 0
  %i.y = insertelement <2 x float> %i.x, float %i.u, i64 1
  %i.z = insertelement <4 x float> poison, float %i.w, i64 0
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ab = extractelement <4 x float> %i.n, i64 0  ; 5 uses
  %i.ac = extractelement <4 x float> %i.n, i64 1  ; 5 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  call void @nvgBeginPath(ptr noundef %1)
  %i.ad = fadd float %i.t, -5.000000e-01
  call void @nvgCircle(ptr noundef %1, float noundef %i.ab, float noundef %i.ac, float noundef %i.ad)
  %i.ae = fadd float %i.s, 5.000000e-01
  call void @nvgCircle(ptr noundef %1, float noundef %i.ab, float noundef %i.ac, float noundef %i.ae)
  %i.af = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 64) ; 2 uses
  %i.ag = extractvalue { <2 x float>, <2 x float> } %i.af, 0
  %i.ah = extractvalue { <2 x float>, <2 x float> } %i.af, 1
  call void @nvgStrokeColor(ptr noundef %1, <2 x float> %i.ag, <2 x float> %i.ah)
  call void @nvgStrokeWidth(ptr noundef %1, float noundef 1.000000e+00)
  call void @nvgStroke(ptr noundef %1)
  call void @nvgSave(ptr noundef %1)
  call void @nvgTranslate(ptr noundef %1, float noundef %i.ab, float noundef %i.ac)
  %i.ai = fmul float %i.m, f0x40490FDB
  %i.aj = fmul float %i.ai, 2.000000e+00
  call void @nvgRotate(ptr noundef %1, float noundef %i.aj)
  %i.ak = fdiv float %i.s, 5.000000e+01           ; 2 uses
  %i.al = fcmp olt float %i.ak, 1.500000e+00
  %.sroa.speculated168 = select i1 %i.al, float 1.500000e+00, float %i.ak ; 2 uses
  %i.am = fcmp ogt float %.sroa.speculated168, 4.000000e+00
  %.sroa.speculated = select i1 %i.am, float 4.000000e+00, float %.sroa.speculated168 ; 5 uses
  call void @nvgStrokeWidth(ptr noundef %1, float noundef %.sroa.speculated)
  call void @nvgBeginPath(ptr noundef %1)
  %i.an = fadd float %i.t, -1.000000e+00
  %i.ao = fmul float %.sroa.speculated, -2.000000e+00
  %i.ap = fsub float %i.s, %i.t                   ; 3 uses
  %i.aq = fadd float %i.ap, 2.000000e+00
  %i.ar = fmul float %.sroa.speculated, 4.000000e+00
  call void @nvgRect(ptr noundef %1, float noundef %i.an, float noundef %i.ao, float noundef %i.aq, float noundef %i.ar)
  %i.as = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -64) ; 2 uses
  %i.at = extractvalue { <2 x float>, <2 x float> } %i.as, 0
  %i.au = extractvalue { <2 x float>, <2 x float> } %i.as, 1
  call void @nvgStrokeColor(ptr noundef %1, <2 x float> %i.at, <2 x float> %i.au)
  call void @nvgStroke(ptr noundef %1)
  %i.av = fadd float %i.t, -3.000000e+00
  %i.aw = fadd float %i.ap, 6.000000e+00
  %i.ax = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -128) ; 2 uses
  %i.ay = extractvalue { <2 x float>, <2 x float> } %i.ax, 0
  %i.az = extractvalue { <2 x float>, <2 x float> } %i.ax, 1
  %i.ba = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) ; 2 uses
  %i.bb = extractvalue { <2 x float>, <2 x float> } %i.ba, 0
  store <2 x float> %i.bb, ptr %3, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bd = extractvalue { <2 x float>, <2 x float> } %i.ba, 1
  store <2 x float> %i.bd, ptr %i.bc, align 8
  call void @nvgBoxGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %2, ptr noundef %1, float noundef %i.av, float noundef -5.000000e+00, float noundef %i.aw, float noundef 1.000000e+01, float noundef 2.000000e+00, float noundef 4.000000e+00, <2 x float> %i.ay, <2 x float> %i.az, ptr noundef nonnull byval(%struct.NVGcolor) align 8 %3)
  call void @nvgBeginPath(ptr noundef %1)
  %i.be = fadd float %i.t, -2.000000e+00          ; 2 uses
  %i.bf = fadd float %i.be, -1.000000e+01
  %i.bg = fadd float %i.ap, 4.000000e+00          ; 2 uses
  %i.bh = fadd float %i.bg, 2.000000e+01
  call void @nvgRect(ptr noundef %1, float noundef %i.bf, float noundef -1.400000e+01, float noundef %i.bh, float noundef 2.800000e+01)
  call void @nvgRect(ptr noundef %1, float noundef %i.be, float noundef -4.000000e+00, float noundef %i.bg, float noundef 8.000000e+00)
  call void @nvgPathWinding(ptr noundef %1, i32 noundef 2)
  call void @nvgFillPaint(ptr noundef %1, ptr noundef nonnull byval(%struct.NVGpaint) align 8 %2)
  call void @nvgFill(ptr noundef %1)
  %i.bi = fadd float %i.t, -6.000000e+00          ; 6 uses
  call void @nvgBeginPath(ptr noundef %1)
  call void @nvgMoveTo(ptr noundef %1, float noundef %i.bi, float noundef 0.000000e+00)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bk = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fmul nnan <2 x float> %i.bl, <float f0x3F5DB3D7, float -5.000000e-01> ; 3 uses
  %i.bn = fmul nnan float %i.bi, f0xBF5DB3D7      ; 3 uses
  %i.bo = extractelement <2 x float> %i.bm, i64 0 ; 3 uses
  %i.bp = extractelement <2 x float> %i.bm, i64 1 ; 6 uses
  call void @nvgLineTo(ptr noundef %1, float noundef %i.bp, float noundef %i.bo)
  call void @nvgLineTo(ptr noundef %1, float noundef %i.bp, float noundef %i.bn)
  call void @nvgClosePath(ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bq = call { <2 x float>, <2 x float> } @nvgHSLA(float noundef %i.m, float noundef 1.000000e+00, float noundef 5.000000e-01, i8 noundef zeroext -1) ; 2 uses
  %i.br = extractvalue { <2 x float>, <2 x float> } %i.bq, 0
  %i.bs = extractvalue { <2 x float>, <2 x float> } %i.bq, 1
  %i.bt = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) ; 2 uses
  %i.bu = extractvalue { <2 x float>, <2 x float> } %i.bt, 0
  %i.bv = extractvalue { <2 x float>, <2 x float> } %i.bt, 1
  call void @nvgLinearGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %4, ptr noundef %1, float noundef %i.bi, float noundef 0.000000e+00, float noundef %i.bp, float noundef %i.bo, <2 x float> %i.br, <2 x float> %i.bs, <2 x float> %i.bu, <2 x float> %i.bv)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %2, ptr noundef nonnull align 8 dereferenceable(76) %4, i64 76, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @nvgFillPaint(ptr noundef %1, ptr noundef nonnull byval(%struct.NVGpaint) align 8 %2)
  call void @nvgFill(ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bw = fadd float %i.bi, %i.bp
  %i.bx = fmul float %i.bw, 5.000000e-01
  %i.by = fadd nnan float %i.bo, 0.000000e+00
  %i.bz = fmul nnan float %i.by, 5.000000e-01
  %i.ca = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) ; 2 uses
  %i.cb = extractvalue { <2 x float>, <2 x float> } %i.ca, 0
  %i.cc = extractvalue { <2 x float>, <2 x float> } %i.ca, 1
  %i.cd = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) ; 2 uses
  %i.ce = extractvalue { <2 x float>, <2 x float> } %i.cd, 0
  %i.cf = extractvalue { <2 x float>, <2 x float> } %i.cd, 1
  call void @nvgLinearGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %5, ptr noundef %1, float noundef %i.bx, float noundef %i.bz, float noundef %i.bp, float noundef %i.bn, <2 x float> %i.cb, <2 x float> %i.cc, <2 x float> %i.ce, <2 x float> %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %2, ptr noundef nonnull align 8 dereferenceable(76) %5, i64 76, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @nvgFillPaint(ptr noundef %1, ptr noundef nonnull byval(%struct.NVGpaint) align 8 %2)
  call void @nvgFill(ptr noundef %1)
  %i.cg = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 64) ; 2 uses
  %i.ch = extractvalue { <2 x float>, <2 x float> } %i.cg, 0
  %i.ci = extractvalue { <2 x float>, <2 x float> } %i.cg, 1
  call void @nvgStrokeColor(ptr noundef %1, <2 x float> %i.ch, <2 x float> %i.ci)
  call void @nvgStroke(ptr noundef %1)
  %i.cj = load <2 x float>, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 0 ; 2 uses
  %i.cl = fsub float 1.000000e+00, %i.ck
  %i.cm = extractelement <2 x float> %i.cj, i64 1 ; 2 uses
  %i.cn = fsub float %i.cl, %i.cm
  %i.co = fmul float %i.bp, %i.ck
  %i.cp = fmul float %i.bn, %i.cm
  %i.cq = call float @llvm.fmuladd.f32(float %i.bi, float %i.cn, float %i.co)
  %i.cr = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cs = insertelement <2 x float> %i.cr, float %i.cq, i64 1
  %i.ct = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.cj, <2 x float> %i.cs) ; 2 uses
  call void @nvgStrokeWidth(ptr noundef %1, float noundef %.sroa.speculated)
  call void @nvgBeginPath(ptr noundef %1)
  %i.cu = fmul float %.sroa.speculated, 2.000000e+00
  %i.cv = extractelement <2 x float> %i.ct, i64 0
  %i.cw = extractelement <2 x float> %i.ct, i64 1
  call void @nvgCircle(ptr noundef %1, float noundef %i.cw, float noundef %i.cv, float noundef %i.cu)
  %i.cx = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -64) ; 2 uses
  %i.cy = extractvalue { <2 x float>, <2 x float> } %i.cx, 0
  %i.cz = extractvalue { <2 x float>, <2 x float> } %i.cx, 1
  call void @nvgStrokeColor(ptr noundef %1, <2 x float> %i.cy, <2 x float> %i.cz)
  call void @nvgStroke(ptr noundef %1)
  call void @nvgRestore(ptr noundef %1)
  call void @nvgRestore(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %.0175 = phi i32 [ 0, %bb.b ], [ %i.eg, %bb.d ] ; 2 uses
  call void @nvgBeginPath(ptr noundef %1)
  %i.da = uitofp nneg i32 %.0175 to float
  %i.db = insertelement <2 x float> poison, float %i.da, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fadd nnan <2 x float> %i.dc, <float -0.000000e+00, float 1.000000e+00>
  %i.de = fdiv nnan <2 x float> %i.dd, splat (float 6.000000e+00)
  %i.df = fmul nnan <2 x float> %i.de, splat (float f0x40490FDB)
  %i.dg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> splat (float 2.000000e+00), <2 x float> %i.y) ; 3 uses
  %i.dh = extractelement <2 x float> %i.dg, i64 0 ; 4 uses
  %i.di = extractelement <2 x float> %i.dg, i64 1 ; 4 uses
  call void @nvgArc(ptr noundef %1, float noundef %i.ab, float noundef %i.ac, float noundef %i.t, float noundef %i.dh, float noundef %i.di, i32 noundef 2)
  call void @nvgArc(ptr noundef %1, float noundef %i.ab, float noundef %i.ac, float noundef %i.s, float noundef %i.di, float noundef %i.dh, i32 noundef 1)
  call void @nvgClosePath(ptr noundef %1)
  %i.dj = call float @cosf(float noundef %i.dh) #13
  %i.dk = call float @sinf(float noundef %i.dh) #13
  %i.dl = call float @cosf(float noundef %i.di) #13
  %i.dm = call float @sinf(float noundef %i.di) #13
  %i.dn = insertelement <4 x float> poison, float %i.dj, i64 0
  %i.do = insertelement <4 x float> %i.dn, float %i.dk, i64 1
  %i.dp = insertelement <4 x float> %i.do, float %i.dl, i64 2
  %i.dq = insertelement <4 x float> %i.dp, float %i.dm, i64 3
  %i.dr = fmul <4 x float> %i.aa, %i.dq
  %i.ds = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dr, <4 x float> splat (float 5.000000e-01), <4 x float> %i.n) ; 4 uses
  %i.dt = fdiv <2 x float> %i.dg, splat (float f0x40C90FDB) ; 2 uses
  %i.du = extractelement <2 x float> %i.dt, i64 0
  %i.dv = call { <2 x float>, <2 x float> } @nvgHSLA(float noundef %i.du, float noundef 1.000000e+00, float noundef 5.500000e-01, i8 noundef zeroext -1) ; 2 uses
  %i.dw = extractvalue { <2 x float>, <2 x float> } %i.dv, 0
  %i.dx = extractvalue { <2 x float>, <2 x float> } %i.dv, 1
  %i.dy = extractelement <2 x float> %i.dt, i64 1
  %i.dz = call { <2 x float>, <2 x float> } @nvgHSLA(float noundef %i.dy, float noundef 1.000000e+00, float noundef 5.500000e-01, i8 noundef zeroext -1) ; 2 uses
  %i.ea = extractvalue { <2 x float>, <2 x float> } %i.dz, 0
  %i.eb = extractvalue { <2 x float>, <2 x float> } %i.dz, 1
  %i.ec = extractelement <4 x float> %i.ds, i64 0
  %i.ed = extractelement <4 x float> %i.ds, i64 1
  %i.ee = extractelement <4 x float> %i.ds, i64 2
  %i.ef = extractelement <4 x float> %i.ds, i64 3
  call void @nvgLinearGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %2, ptr noundef %1, float noundef %i.ec, float noundef %i.ed, float noundef %i.ee, float noundef %i.ef, <2 x float> %i.dw, <2 x float> %i.dx, <2 x float> %i.ea, <2 x float> %i.eb)
  call void @nvgFillPaint(ptr noundef %1, ptr noundef nonnull byval(%struct.NVGpaint) align 8 %2)
  call void @nvgFill(ptr noundef %1)
  %i.eg = add nuw nsw i32 %.0175, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.eg, 6
  br i1 %exitcond.not, label %bb.c, label %bb.d, !llvm.loop !53

bb.e:                                             ; preds = %bb.a, %bb.c
  ret void
}

declare void @_ZN7nanogui6Widget4drawEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

declare void @nvgSave(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

declare void @nvgBeginPath(ptr noundef) local_unnamed_addr #1

declare void @nvgArc(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @nvgClosePath(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #8

declare void @nvgLinearGradient(ptr dead_on_unwind writable sret(%struct.NVGpaint) align 4, ptr noundef, float noundef, float noundef, float noundef, float noundef, <2 x float>, <2 x float>, <2 x float>, <2 x float>) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @nvgHSLA(float noundef, float noundef, float noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

declare void @nvgFillPaint(ptr noundef, ptr noundef byval(%struct.NVGpaint) align 8) local_unnamed_addr #1

declare void @nvgFill(ptr noundef) local_unnamed_addr #1

declare void @nvgCircle(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @nvgStrokeColor(ptr noundef, <2 x float>, <2 x float>) local_unnamed_addr #1

declare { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare void @nvgStrokeWidth(ptr noundef, float noundef) local_unnamed_addr #1

declare void @nvgStroke(ptr noundef) local_unnamed_addr #1

declare void @nvgTranslate(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @nvgRotate(ptr noundef, float noundef) local_unnamed_addr #1

declare void @nvgRect(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @nvgBoxGradient(ptr dead_on_unwind writable sret(%struct.NVGpaint) align 4, ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, <2 x float>, <2 x float>, ptr noundef byval(%struct.NVGcolor) align 8) local_unnamed_addr #1

declare void @nvgPathWinding(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @nvgMoveTo(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @nvgLineTo(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @nvgRestore(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7nanogui10ColorWheel18mouse_button_eventERKNS_5ArrayIiLm2EEEibi(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7nanogui6Widget18mouse_button_eventERKNS_5ArrayIiLm2EEEibi(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef %4) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.c = load i8, ptr %i.b, align 1, !tbaa !58, !range !48, !noundef !49
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = icmp eq i32 %2, 0
  %or.cond.not = and i1 %i.e, %i.d
  br i1 %or.cond.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef i32 @_ZN7nanogui10ColorWheel15adjust_positionERKNS_5ArrayIiLm2EEENS0_6RegionE(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 3) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %i.f, ptr %i.g, align 16, !tbaa !51
  %i.h = icmp ne i32 %i.f, 0
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.i, align 16, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i1 [ true, %bb.d ], [ %i.h, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN7nanogui6Widget18mouse_button_eventERKNS_5ArrayIiLm2EEEibi(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i1 noundef zeroext, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 3) i32 @_ZN7nanogui10ColorWheel15adjust_positionERKNS_5ArrayIiLm2EEENS0_6RegionE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %"class.nanogui::Color", align 8    ; 5 uses
  %4 = alloca %"class.nanogui::Color", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load <2 x i32>, ptr %1, align 4, !tbaa !50
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !50
  %i.d = sub nsw <2 x i32> %i.b, %i.c
  %i.e = sitofp <2 x i32> %i.d to <2 x float>     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load <2 x i32>, ptr %i.f, align 16, !tbaa !50
  %i.h = sitofp <2 x i32> %i.g to <2 x float>     ; 2 uses
  %i.i = extractelement <2 x float> %i.h, i64 0   ; 3 uses
  %i.j = fmul nnan float %i.i, 5.000000e-01
  %i.k = extractelement <2 x float> %i.h, i64 1   ; 3 uses
  %i.l = fmul nnan float %i.k, 5.000000e-01
  %i.m = fcmp olt float %i.i, %i.k
  %i.n = select i1 %i.m, float %i.i, float %i.k
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float 5.000000e-01, float -5.000000e+00) ; 2 uses
  %i.p = fmul nnan float %i.o, 7.500000e-01       ; 2 uses
  %i.q = extractelement <2 x float> %i.e, i64 0
  %i.r = fsub float %i.q, %i.j                    ; 4 uses
  %i.s = extractelement <2 x float> %i.e, i64 1
  %i.t = fsub float %i.s, %i.l                    ; 5 uses
  %i.u = fmul float %i.t, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.u)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.v) ; 2 uses
  %i.w = and i32 %2, 2
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = fcmp ult float %sqrt, %i.p
  br i1 %i.x, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = fcmp ole float %sqrt, %i.o
  %i.z = icmp eq i32 %2, 2
  %or.cond = or i1 %i.z, %i.y
  br i1 %or.cond, label %bb.e, label %bb.m

bb.d:                                             ; preds = %bb.b
  %.old1 = icmp eq i32 %2, 2
  br i1 %.old1, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.aa = tail call noundef float @atan2f(float noundef %i.t, float noundef %i.r) #13
  %i.ab = fdiv float %i.aa, f0x40C90FDB           ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ad = fcmp olt float %i.ab, 0.000000e+00
  %i.ae = fadd float %i.ab, 1.000000e+00
  %storemerge = select i1 %i.ad, float %i.ae, float %i.ab ; 4 uses
  store float %storemerge, ptr %i.ac, align 4, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !15 ; 3 uses
  %.not111 = icmp eq ptr %i.ag, null
  br i1 %.not111, label %bb.w, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ah = fcmp olt float %storemerge, 0.000000e+00
  %i.ai = fadd float %storemerge, 1.000000e+00
  %.036.i.i = select i1 %i.ah, float %i.ai, float %storemerge ; 2 uses
  %i.aj = fmul float %.036.i.i, 6.000000e+00
  %i.ak = fptosi float %i.aj to i32               ; 2 uses
  %i.al = sitofp i32 %i.ak to float
  %i.am = fneg float %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %.036.i.i, float 6.000000e+00, float %i.am) ; 2 uses
  %i.ao = fsub float 1.000000e+00, %i.an          ; 3 uses
  %i.ap = fadd float %i.an, -1.000000e+00
  %i.aq = fadd float %i.ap, 1.000000e+00          ; 3 uses
  %i.ar = srem i32 %i.ak, 6
  switch i32 %i.ar, label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit [
    i32 0, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

bb.h:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

bb.i:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

bb.j:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

bb.k:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

bb.l:                                             ; preds = %bb.f
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit

_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit: ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.035.i.i = phi float [ 0.000000e+00, %bb.f ], [ 1.000000e+00, %bb.g ], [ %i.ao, %bb.h ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.j ], [ %i.aq, %bb.k ], [ 1.000000e+00, %bb.l ]
  %.034.i.i = phi float [ 0.000000e+00, %bb.f ], [ %i.aq, %bb.g ], [ 1.000000e+00, %bb.h ], [ 1.000000e+00, %bb.i ], [ %i.ao, %bb.j ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.l ]
  %.0.i.i = phi float [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ], [ 0.000000e+00, %bb.h ], [ %i.aq, %bb.i ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %bb.k ], [ %i.ao, %bb.l ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 152
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %6 = load float, ptr %5, align 4, !tbaa !46     ; 2 uses
  %7 = load float, ptr %i.as, align 8, !tbaa !47  ; 2 uses
  %8 = fsub float 1.000000e+00, %7
  %i.at = fsub float %8, %6
  %i.au = insertelement <4 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aw = insertelement <4 x float> poison, float %.035.i.i, i64 0
  %i.ax = insertelement <4 x float> %i.aw, float %.034.i.i, i64 1
  %i.ay = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.0.i.i, i64 2
  %i.az = shufflevector <4 x float> %i.ax, <4 x float> %i.ay, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ba = fmul <4 x float> %i.av, %i.az
  %9 = insertelement <4 x float> poison, float %6, i64 0
  %10 = shufflevector <4 x float> %9, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bb = fmul <4 x float> %10, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.bc = fadd <4 x float> %i.bb, %i.ba
  %11 = insertelement <4 x float> poison, float %7, i64 0
  %i.bd = shufflevector <4 x float> %11, <4 x float> poison, <4 x i32> zeroinitializer
  %i.be = fadd <4 x float> %i.bd, %i.bc           ; 2 uses
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bg = shufflevector <4 x float> %i.be, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.bf, ptr %3, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %i.bg, ptr %i.bh, align 8
  %i.bi = load ptr, ptr %i.ag, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %3), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.w

bb.m:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !45 ; 4 uses
  %i.bn = fmul float %i.bm, -2.000000e+00
  %i.bo = fmul float %i.bn, f0x40490FDB           ; 2 uses
  %i.bp = tail call noundef float @sinf(float noundef %i.bo) #13 ; 2 uses
  %i.bq = tail call noundef float @cosf(float noundef %i.bo) #13 ; 2 uses
  %i.br = fneg float %i.t
  %i.bs = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.t, i64 1
  %i.bu = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bq, i64 1
  %i.bw = fmul <2 x float> %i.bt, %i.bv
  %i.bx = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.bp, i64 1
  %i.bz = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ca, <2 x float> %i.bw) ; 2 uses
  %i.cc = fadd float %i.p, -6.000000e+00          ; 2 uses
  %i.cd = extractelement <2 x float> %i.cb, i64 0
  %i.ce = fsub float %i.cc, %i.cd
  %i.cf = fpext float %i.ce to double
  %i.cg = extractelement <2 x float> %i.cb, i64 1
  %i.ch = fpext float %i.cg to double
  %i.ci = fmul nnan float %i.cc, 3.000000e+00
  %i.cj = fpext float %i.ci to double
  %i.ck = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cm = insertelement <2 x double> poison, double %i.cf, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> <double f0x3FFBB67AE8584CAA, double f0xBFFBB67AE8584CAA>, <2 x double> %i.cn)
  %i.cp = insertelement <2 x double> poison, double %i.cj, i64 0
  %i.cq = shufflevector <2 x double> %i.cp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cr = fdiv <2 x double> %i.co, %i.cq          ; 3 uses
  %i.cs = fptrunc <2 x double> %i.cr to <2 x float> ; 3 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 0
  %i.cu = fsub float 1.000000e+00, %i.ct
  %i.cv = extractelement <2 x float> %i.cs, i64 1
  %i.cw = fsub float %i.cu, %i.cv
  %.fr116 = freeze float %i.cw                    ; 4 uses
  %i.cx = and i32 %2, 1
  %.not67 = icmp eq i32 %i.cx, 0
  br i1 %.not67, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cy = fcmp ole float %.fr116, 1.000000e+00
  %i.cz = fcmp oge float %.fr116, 0.000000e+00
  %i.da = shufflevector <2 x double> %i.cr, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.db = fcmp ole <4 x double> %i.da, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000, double f0xB690000000000000>
  %i.dc = fcmp oge <4 x double> %i.da, <double f0x3FF0000010000000, double f0x3FF0000010000000, double f0xB690000000000000, double f0xB690000000000000>
  %i.dd = shufflevector <4 x i1> %i.db, <4 x i1> %i.dc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.de = freeze <4 x i1> %i.dd
  %i.df = bitcast <4 x i1> %i.de to i4
  %i.dg = icmp eq i4 %i.df, -1
  %op.rdx = and i1 %i.dg, %i.cy
  %op.rdx114 = and i1 %op.rdx, %i.cz
  %i.dh = icmp eq i32 %2, 1
  %or.cond16 = or i1 %i.dh, %op.rdx114
  br i1 %or.cond16, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.di = fcmp ogt <2 x double> %i.cr, splat (double f0x3690000000000000)
  %i.dj = fcmp ogt float %.fr116, 0.000000e+00
  %.sroa.speculated80 = select i1 %i.dj, float %.fr116, float 0.000000e+00 ; 2 uses
  %i.dk = fcmp ogt float %.sroa.speculated80, 1.000000e+00
  %.sroa.speculated = select i1 %i.dk, float 1.000000e+00, float %.sroa.speculated80
  %i.dl = select <2 x i1> %i.di, <2 x float> %i.cs, <2 x float> zeroinitializer ; 2 uses
  %i.dm = fcmp ogt <2 x float> %i.dl, splat (float 1.000000e+00)
  %i.dn = select <2 x i1> %i.dm, <2 x float> splat (float 1.000000e+00), <2 x float> %i.dl ; 3 uses
  %shift = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.dn, %shift
  %i.do = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.dp = fadd float %i.do, %.sroa.speculated
  %i.dq = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fdiv <2 x float> %i.dn, %i.dr           ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <2 x float> %i.ds, ptr %i.dt, align 8, !tbaa !41
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.dv = load ptr, ptr %i.du, align 16, !tbaa !15 ; 3 uses
  %.not112 = icmp eq ptr %i.dv, null
  br i1 %.not112, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.dw = fcmp olt float %i.bm, 0.000000e+00
  %i.dx = fadd float %i.bm, 1.000000e+00
  %.036.i.i68 = select i1 %i.dw, float %i.dx, float %i.bm ; 2 uses
  %i.dy = fmul float %.036.i.i68, 6.000000e+00
  %i.dz = fptosi float %i.dy to i32               ; 2 uses
  %i.ea = sitofp i32 %i.dz to float
  %i.eb = fneg float %i.ea
  %i.ec = tail call float @llvm.fmuladd.f32(float %.036.i.i68, float 6.000000e+00, float %i.eb) ; 2 uses
  %i.ed = fsub float 1.000000e+00, %i.ec          ; 3 uses
  %i.ee = fadd float %i.ec, -1.000000e+00
  %i.ef = fadd float %i.ee, 1.000000e+00          ; 3 uses
  %i.eg = srem i32 %i.dz, 6
  switch i32 %i.eg, label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79 [
    i32 0, label %bb.q
    i32 1, label %bb.r
    i32 2, label %bb.s
    i32 3, label %bb.t
    i32 4, label %bb.u
    i32 5, label %bb.v
  ]

bb.q:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

bb.r:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

bb.s:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

bb.t:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

bb.u:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

bb.v:                                             ; preds = %bb.p
  br label %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79

_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p
  %.035.i.i69 = phi float [ 0.000000e+00, %bb.p ], [ 1.000000e+00, %bb.q ], [ %i.ed, %bb.r ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.t ], [ %i.ef, %bb.u ], [ 1.000000e+00, %bb.v ]
  %.034.i.i70 = phi float [ 0.000000e+00, %bb.p ], [ %i.ef, %bb.q ], [ 1.000000e+00, %bb.r ], [ 1.000000e+00, %bb.s ], [ %i.ed, %bb.t ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %bb.v ]
  %.0.i.i71 = phi float [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.q ], [ 0.000000e+00, %bb.r ], [ %i.ef, %bb.s ], [ 1.000000e+00, %bb.t ], [ 1.000000e+00, %bb.u ], [ %i.ed, %bb.v ]
  %i.eh = extractelement <2 x float> %i.ds, i64 0
  %i.ei = fsub float 1.000000e+00, %i.eh
  %i.ej = extractelement <2 x float> %i.ds, i64 1
  %i.ek = fsub float %i.ei, %i.ej                 ; 3 uses
  %i.el = fmul float %i.ek, %.0.i.i71
  %i.em = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.en = fmul <2 x float> %i.em, <float 0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.eo = insertelement <2 x float> poison, float %i.el, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.ek, i64 1
  %i.eq = fadd <2 x float> %i.en, %i.ep
  %i.er = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = insertelement <2 x float> poison, float %.035.i.i69, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %.034.i.i70, i64 1
  %i.ev = fmul <2 x float> %i.es, %i.eu
  %i.ew = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fadd <2 x float> %i.ew, %i.ev
  %i.ey = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ez = fadd <2 x float> %i.ey, %i.ex
  %i.fa = fadd <2 x float> %i.ey, %i.eq
  store <2 x float> %i.ez, ptr %4, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %i.fa, ptr %i.fb, align 8
  %i.fc = load ptr, ptr %i.dv, align 8, !tbaa !10
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 48
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(8) %i.dv, ptr noundef nonnull align 4 dereferenceable(16) %4), !inline_history !59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.w

bb.w:                                             ; preds = %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79, %bb.o, %bb.n, %bb.m, %bb.e, %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit
  %.1 = phi i32 [ 2, %bb.e ], [ 2, %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit ], [ 1, %bb.o ], [ 1, %_ZNKSt3__18functionIFvRKN7nanogui5ColorEEEclES4_.exit79 ], [ 0, %bb.n ], [ 0, %bb.m ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7nanogui10ColorWheel16mouse_drag_eventERKNS_5ArrayIiLm2EEES4_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(224) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree nonnull readnone align 4 captures(none) %2, i32 %3, i32 %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i32, ptr %i.a, align 16, !tbaa !51
  %i.c = tail call noundef i32 @_ZN7nanogui10ColorWheel15adjust_positionERKNS_5ArrayIiLm2EEENS0_6RegionE(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %i.b)
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden { <2 x float>, <2 x float> } @_ZNK7nanogui10ColorWheel5colorEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(224) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.b = load float, ptr %i.a, align 4, !tbaa !45 ; 3 uses
  %i.c = fcmp olt float %i.b, 0.000000e+00
  %i.d = fadd float %i.b, 1.000000e+00
  %.036.i = select i1 %i.c, float %i.d, float %i.b ; 2 uses
  %i.e = fmul float %.036.i, 6.000000e+00
  %i.f = fptosi float %i.e to i32                 ; 2 uses
  %i.g = sitofp i32 %i.f to float
  %i.h = fneg float %i.g
  %i.i = tail call float @llvm.fmuladd.f32(float %.036.i, float 6.000000e+00, float %i.h) ; 2 uses
  %i.j = fsub float 1.000000e+00, %i.i            ; 3 uses
  %i.k = fadd float %i.i, -1.000000e+00
  %i.l = fadd float %i.k, 1.000000e+00            ; 3 uses
  %i.m = srem i32 %i.f, 6
  switch i32 %i.m, label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.c:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.d:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.e:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.f:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

bb.g:                                             ; preds = %bb.a
  br label %_ZNK7nanogui10ColorWheel7hue2rgbEf.exit

_ZNK7nanogui10ColorWheel7hue2rgbEf.exit:          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.035.i = phi float [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %i.j, %bb.c ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.e ], [ %i.l, %bb.f ], [ 1.000000e+00, %bb.g ]
  %.034.i = phi float [ 0.000000e+00, %bb.a ], [ %i.l, %bb.b ], [ 1.000000e+00, %bb.c ], [ 1.000000e+00, %bb.d ], [ %i.j, %bb.e ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ]
  %.0.i = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %i.l, %bb.d ], [ 1.000000e+00, %bb.e ], [ 1.000000e+00, %bb.f ], [ %i.j, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 156
  %2 = load float, ptr %1, align 4, !tbaa !46     ; 2 uses
  %3 = load float, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %4 = fsub float 1.000000e+00, %3
  %i.o = fsub float %4, %2
  %i.p = insertelement <4 x float> poison, float %i.o, i64 0
  %i.q = shufflevector <4 x float> %i.p, <4 x float> poison, <4 x i32> zeroinitializer
  %i.r = insertelement <4 x float> poison, float %.035.i, i64 0
  %i.s = insertelement <4 x float> %i.r, float %.034.i, i64 1
  %i.t = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %.0.i, i64 2
  %i.u = shufflevector <4 x float> %i.s, <4 x float> %i.t, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.v = fmul <4 x float> %i.q, %i.u
  %5 = insertelement <4 x float> poison, float %2, i64 0
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <4 x i32> zeroinitializer
  %i.w = fmul <4 x float> %6, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.x = fadd <4 x float> %i.w, %i.v
  %7 = insertelement <4 x float> poison, float %3, i64 0
  %i.y = shufflevector <4 x float> %7, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = fadd <4 x float> %i.y, %i.x              ; 2 uses
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ab = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert.i31 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.aa, 0
  %.fca.1.insert.i32 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i31, <2 x float> %i.ab, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden { <2 x float>, <2 x float> } @_ZNK7nanogui10ColorWheel7hue2rgbEf(ptr nofree noundef nonnull readnone align 16 captures(none) dereferenceable(224) %0, float noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = fcmp olt float %1, 0.000000e+00
  %i.b = fadd float %1, 1.000000e+00
  %.036 = select i1 %i.a, float %i.b, float %1    ; 2 uses
  %i.c = fmul float %.036, 6.000000e+00
  %i.d = fptosi float %i.c to i32                 ; 2 uses
  %i.e = sitofp i32 %i.d to float
  %i.f = fneg float %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %.036, float 6.000000e+00, float %i.f) ; 2 uses
  %i.h = fsub float 1.000000e+00, %i.g            ; 3 uses
  %i.i = fadd float %i.g, -1.000000e+00
  %i.j = fadd float %i.i, 1.000000e+00            ; 3 uses
  %i.k = srem i32 %i.d, 6
  switch i32 %i.k, label %bb.h [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.035 = phi float [ 0.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %i.h, %bb.c ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.e ], [ %i.j, %bb.f ], [ 1.000000e+00, %bb.g ]
  %.034 = phi float [ 0.000000e+00, %bb.a ], [ %i.j, %bb.b ], [ 1.000000e+00, %bb.c ], [ 1.000000e+00, %bb.d ], [ %i.h, %bb.e ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.g ]
  %.0 = phi float [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.c ], [ %i.j, %bb.d ], [ 1.000000e+00, %bb.e ], [ 1.000000e+00, %bb.f ], [ %i.h, %bb.g ]
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %.035, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %.034, i64 1
  %.sroa.3.12.vec.insert = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.0, i64 0
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.4.vec.insert, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.3.12.vec.insert, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7nanogui10ColorWheelD2Ev(ptr noundef nonnull align 16 dead_on_return(224) dereferenceable(224) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7nanogui10ColorWheelE, i64 16), ptr %0, align 16, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !15  ; 4 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %.sink.split.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZNSt3__18functionIFvRKN7nanogui5ColorEEED2Ev.exit, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.b, %bb.a
  %.sink2.i.i = phi i64 [ 32, %bb.a ], [ 40, %bb.b ]
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink2.i.i
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #13, !inline_history !60
  br label %_ZNSt3__18functionIFvRKN7nanogui5ColorEEED2Ev.exit

_ZNSt3__18functionIFvRKN7nanogui5ColorEEED2Ev.exit: ; preds = %bb.b, %.sink.split.i.i
  tail call void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7nanogui10ColorWheelD0Ev(ptr noundef nonnull align 16 dereferenceable(224) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN7nanogui10ColorWheelE, i64 16), ptr %0, align 16, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !15  ; 4 uses
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %.sink.split.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN7nanogui10ColorWheelD2Ev.exit, label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.b, %bb.a
  %.sink2.i.i.i = phi i64 [ 32, %bb.a ], [ 40, %bb.b ]
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink2.i.i.i
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #13, !inline_history !61
  br label %_ZN7nanogui10ColorWheelD2Ev.exit

_ZN7nanogui10ColorWheelD2Ev.exit:                 ; preds = %bb.b, %.sink.split.i.i.i
  tail call void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 16 dead_on_return(148) dereferenceable(224) %0) #13, !inline_history !62
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 224) #14
  ret void
}

declare void @_ZN7nanogui6Widget9set_themeEPNS_5ThemeE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

declare void @_ZN7nanogui6Widget9add_childEiPS0_(ptr noundef nonnull align 8 dereferenceable(148), i32 noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN7nanogui6Widget18mouse_motion_eventERKNS_5ArrayIiLm2EEES4_ii(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN7nanogui6Widget17mouse_enter_eventERKNS_5ArrayIiLm2EEEb(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) unnamed_addr #1

declare noundef zeroext i1 @_ZN7nanogui6Widget12scroll_eventERKNS_5ArrayIiLm2EEERKNS1_IfLm2EEE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN7nanogui6Widget11focus_eventEb(ptr noundef nonnull align 8 dereferenceable(148), i1 noundef zeroext) unnamed_addr #1

declare noundef zeroext i1 @_ZN7nanogui6Widget14keyboard_eventEiiii(ptr noundef nonnull align 8 dereferenceable(148), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN7nanogui6Widget24keyboard_character_eventEj(ptr noundef nonnull align 8 dereferenceable(148), i32 noundef) unnamed_addr #1

declare void @_ZN7nanogui6Widget14perform_layoutEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }

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
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTSNSt3__115aligned_storageILm24ELm16EE4typeE", !5, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTSNSt3__110__function6__baseIFvRKN7nanogui5ColorEEEE", !12, i64 0}
!14 = !{!"_ZTSNSt3__110__function12__value_funcIFvRKN7nanogui5ColorEEEE", !11, i64 0, !13, i64 32}
!15 = !{!14, !13, i64 32}
!16 = !{!"_ZTSNSt3__122__cxx_atomic_base_implImEE", !5, i64 0}
!17 = !{!"_ZTSNSt3__117__cxx_atomic_implImNS_22__cxx_atomic_base_implImEEEE", !16, i64 0}
!18 = !{!"_ZTSNSt3__113__atomic_baseImLb0EEE", !17, i64 0}
!19 = !{!"_ZTSNSt3__113__atomic_baseImLb1EEE", !18, i64 0}
!20 = !{!"_ZTSNSt3__16atomicImEE", !19, i64 0}
!21 = !{!"_ZTSN7nanogui6ObjectE", !20, i64 8}
!22 = !{!"p1 _ZTSN7nanogui6WidgetE", !12, i64 0}
!23 = !{!"p1 _ZTSN7nanogui5ThemeE", !12, i64 0}
!24 = !{!"_ZTSN7nanogui3refINS_5ThemeEEE", !23, i64 0}
!25 = !{!"p1 _ZTSN7nanogui6LayoutE", !12, i64 0}
!26 = !{!"_ZTSN7nanogui3refINS_6LayoutEEE", !25, i64 0}
!27 = !{!"_ZTSN7nanogui5ArrayIiLm2EEE", !5, i64 0}
!28 = !{!"bool", !5, i64 0}
!29 = !{!"any p2 pointer", !12, i64 0}
!30 = !{!"p2 _ZTSN7nanogui6WidgetE", !29, i64 0}
!31 = !{!"_ZTSNSt3__122__compressed_pair_elemIPPN7nanogui6WidgetELi0ELb0EEE", !30, i64 0}
!32 = !{!"_ZTSNSt3__117__compressed_pairIPPN7nanogui6WidgetENS_9allocatorIS3_EEEE", !31, i64 0}
!33 = !{!"_ZTSNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEEE", !30, i64 0, !30, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repE", !5, i64 0}
!35 = !{!"_ZTSNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEE", !34, i64 0}
!36 = !{!"_ZTSNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EE", !35, i64 0}
!37 = !{!"_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE", !36, i64 0}
!38 = !{!"float", !5, i64 0}
!39 = !{!"_ZTSN7nanogui6CursorE", !5, i64 0}
!40 = !{!"_ZTSN7nanogui6WidgetE", !21, i64 0, !22, i64 16, !24, i64 24, !26, i64 32, !27, i64 40, !27, i64 48, !27, i64 56, !27, i64 64, !28, i64 72, !33, i64 80, !28, i64 104, !28, i64 105, !28, i64 106, !28, i64 107, !37, i64 112, !6, i64 136, !38, i64 140, !39, i64 144}
!41 = !{!38, !38, i64 0}
!42 = !{!"_ZTSN7nanogui10ColorWheel6RegionE", !5, i64 0}
!43 = !{!"_ZTSNSt3__18functionIFvRKN7nanogui5ColorEEEE", !14, i64 0}
!44 = !{!"_ZTSN7nanogui10ColorWheelE", !40, i64 0, !38, i64 148, !38, i64 152, !38, i64 156, !42, i64 160, !43, i64 176}
!45 = !{!44, !38, i64 148}
!46 = !{!44, !38, i64 156}
!47 = !{!44, !38, i64 152}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!6, !6, i64 0}
!51 = !{!44, !42, i64 160}
!52 = !{!40, !28, i64 72}
!53 = distinct !{!53, !57}
!54 = !{!40, !28, i64 104}
!55 = !{!5, !5, i64 0}
!56 = !{i64 0, i64 24, !55, i64 24, i64 8, !55, i64 32, i64 4, !41, i64 36, i64 4, !41, i64 40, i64 16, !55, i64 56, i64 16, !55, i64 72, i64 4, !50}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!40, !28, i64 105}
!59 = distinct !{null, null}
!60 = distinct !{null, null}
!61 = distinct !{ptr @_ZN7nanogui10ColorWheelD2Ev, null, null}
!62 = !{ptr @_ZN7nanogui10ColorWheelD2Ev}
end_hunk_0
