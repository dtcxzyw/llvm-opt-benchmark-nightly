Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/colorwheel?download=true
inline.NumInlined: 100
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN7nanogui10ColorWheel9set_colorERKNS_5ColorE:.lr.ph.i.i.i
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
  %6 = fmul nnan float %i.bi, f0xBF5DB3D7         ; 3 uses
  %i.bn = extractelement <2 x float> %i.bm, i64 0 ; 3 uses
  %i.bo = extractelement <2 x float> %i.bm, i64 1 ; 6 uses
  call void @nvgLineTo(ptr noundef %1, float noundef %i.bo, float noundef %i.bn)
  call void @nvgLineTo(ptr noundef %1, float noundef %i.bo, float noundef %6)
  call void @nvgClosePath(ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.bp = call { <2 x float>, <2 x float> } @nvgHSLA(float noundef %i.m, float noundef 1.000000e+00, float noundef 5.000000e-01, i8 noundef zeroext -1) ; 2 uses
  %i.bq = extractvalue { <2 x float>, <2 x float> } %i.bp, 0
  %i.br = extractvalue { <2 x float>, <2 x float> } %i.bp, 1
  %i.bs = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1) ; 2 uses
  %i.bt = extractvalue { <2 x float>, <2 x float> } %i.bs, 0
  %i.bu = extractvalue { <2 x float>, <2 x float> } %i.bs, 1
  call void @nvgLinearGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %4, ptr noundef %1, float noundef %i.bi, float noundef 0.000000e+00, float noundef %i.bo, float noundef %i.bn, <2 x float> %i.bq, <2 x float> %i.br, <2 x float> %i.bt, <2 x float> %i.bu)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %2, ptr noundef nonnull align 8 dereferenceable(76) %4, i64 76, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @nvgFillPaint(ptr noundef %1, ptr noundef nonnull byval(%struct.NVGpaint) align 8 %2)
  call void @nvgFill(ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.bv = fadd float %i.bi, %i.bo
  %i.bw = fmul float %i.bv, 5.000000e-01
  %i.bx = fadd nnan float %i.bn, 0.000000e+00
  %i.by = fmul nnan float %i.bx, 5.000000e-01
  %i.bz = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) ; 2 uses
  %i.ca = extractvalue { <2 x float>, <2 x float> } %i.bz, 0
  %i.cb = extractvalue { <2 x float>, <2 x float> } %i.bz, 1
  %i.cc = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext -1) ; 2 uses
  %i.cd = extractvalue { <2 x float>, <2 x float> } %i.cc, 0
  %i.ce = extractvalue { <2 x float>, <2 x float> } %i.cc, 1
  call void @nvgLinearGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %5, ptr noundef %1, float noundef %i.bw, float noundef %i.by, float noundef %i.bo, float noundef %6, <2 x float> %i.ca, <2 x float> %i.cb, <2 x float> %i.cd, <2 x float> %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %2, ptr noundef nonnull align 8 dereferenceable(76) %5, i64 76, i1 false), !tbaa.struct !56
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @nvgFillPaint(ptr noundef %1, ptr noundef nonnull byval(%struct.NVGpaint) align 8 %2)
  call void @nvgFill(ptr noundef %1)
  %i.cf = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 64) ; 2 uses
  %i.cg = extractvalue { <2 x float>, <2 x float> } %i.cf, 0
  %i.ch = extractvalue { <2 x float>, <2 x float> } %i.cf, 1
  call void @nvgStrokeColor(ptr noundef %1, <2 x float> %i.cg, <2 x float> %i.ch)
  call void @nvgStroke(ptr noundef %1)
  %i.ci = load <2 x float>, ptr %i.bj, align 8, !tbaa !41 ; 3 uses
  %i.cj = extractelement <2 x float> %i.ci, i64 0 ; 2 uses
  %i.ck = fsub float 1.000000e+00, %i.cj
  %i.cl = extractelement <2 x float> %i.ci, i64 1 ; 2 uses
  %i.cm = fsub float %i.ck, %i.cl
  %i.cn = fmul float %i.bo, %i.cj
  %i.co = call float @llvm.fmuladd.f32(float %i.bi, float %i.cm, float %i.cn)
  %i.cp = fmul float %6, %i.cl
  %i.cq = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.co, i64 1
  %i.cs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.ci, <2 x float> %i.cr) ; 2 uses
  call void @nvgStrokeWidth(ptr noundef %1, float noundef %.sroa.speculated)
  call void @nvgBeginPath(ptr noundef %1)
  %i.ct = fmul float %.sroa.speculated, 2.000000e+00
  %i.cu = extractelement <2 x float> %i.cs, i64 0
  %i.cv = extractelement <2 x float> %i.cs, i64 1
  call void @nvgCircle(ptr noundef %1, float noundef %i.cv, float noundef %i.cu, float noundef %i.ct)
  %i.cw = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -1, i8 noundef zeroext -64) ; 2 uses
  %i.cx = extractvalue { <2 x float>, <2 x float> } %i.cw, 0
  %i.cy = extractvalue { <2 x float>, <2 x float> } %i.cw, 1
  call void @nvgStrokeColor(ptr noundef %1, <2 x float> %i.cx, <2 x float> %i.cy)
  call void @nvgStroke(ptr noundef %1)
  call void @nvgRestore(ptr noundef %1)
  call void @nvgRestore(ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %.0175 = phi i32 [ 0, %bb.b ], [ %i.ef, %bb.d ] ; 2 uses
  call void @nvgBeginPath(ptr noundef %1)
  %i.cz = uitofp nneg i32 %.0175 to float
  %i.da = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fadd nnan <2 x float> %i.db, <float -0.000000e+00, float 1.000000e+00>
  %i.dd = fdiv nnan <2 x float> %i.dc, splat (float 6.000000e+00)
  %i.de = fmul nnan <2 x float> %i.dd, splat (float f0x40490FDB)
  %i.df = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> splat (float 2.000000e+00), <2 x float> %i.y) ; 3 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0 ; 4 uses
  %i.dh = extractelement <2 x float> %i.df, i64 1 ; 4 uses
  call void @nvgArc(ptr noundef %1, float noundef %i.ab, float noundef %i.ac, float noundef %i.t, float noundef %i.dg, float noundef %i.dh, i32 noundef 2)
  call void @nvgArc(ptr noundef %1, float noundef %i.ab, float noundef %i.ac, float noundef %i.s, float noundef %i.dh, float noundef %i.dg, i32 noundef 1)
  call void @nvgClosePath(ptr noundef %1)
  %i.di = call float @cosf(float noundef %i.dg) #13
  %i.dj = call float @sinf(float noundef %i.dg) #13
  %i.dk = call float @cosf(float noundef %i.dh) #13
  %i.dl = call float @sinf(float noundef %i.dh) #13
  %i.dm = insertelement <4 x float> poison, float %i.di, i64 0
  %i.dn = insertelement <4 x float> %i.dm, float %i.dj, i64 1
  %i.do = insertelement <4 x float> %i.dn, float %i.dk, i64 2
  %i.dp = insertelement <4 x float> %i.do, float %i.dl, i64 3
  %i.dq = fmul <4 x float> %i.aa, %i.dp
  %i.dr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dq, <4 x float> splat (float 5.000000e-01), <4 x float> %i.n) ; 4 uses
  %i.ds = fdiv <2 x float> %i.df, splat (float f0x40C90FDB) ; 2 uses
  %i.dt = extractelement <2 x float> %i.ds, i64 0
  %i.du = call { <2 x float>, <2 x float> } @nvgHSLA(float noundef %i.dt, float noundef 1.000000e+00, float noundef 5.500000e-01, i8 noundef zeroext -1) ; 2 uses
  %i.dv = extractvalue { <2 x float>, <2 x float> } %i.du, 0
  %i.dw = extractvalue { <2 x float>, <2 x float> } %i.du, 1
  %i.dx = extractelement <2 x float> %i.ds, i64 1
  %i.dy = call { <2 x float>, <2 x float> } @nvgHSLA(float noundef %i.dx, float noundef 1.000000e+00, float noundef 5.500000e-01, i8 noundef zeroext -1) ; 2 uses
  %i.dz = extractvalue { <2 x float>, <2 x float> } %i.dy, 0
  %i.ea = extractvalue { <2 x float>, <2 x float> } %i.dy, 1
  %i.eb = extractelement <4 x float> %i.dr, i64 0
  %i.ec = extractelement <4 x float> %i.dr, i64 1
  %i.ed = extractelement <4 x float> %i.dr, i64 2
  %i.ee = extractelement <4 x float> %i.dr, i64 3
  call void @nvgLinearGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %2, ptr noundef %1, float noundef %i.eb, float noundef %i.ec, float noundef %i.ed, float noundef %i.ee, <2 x float> %i.dv, <2 x float> %i.dw, <2 x float> %i.dz, <2 x float> %i.ea)
  call void @nvgFillPaint(ptr noundef %1, ptr noundef nonnull byval(%struct.NVGpaint) align 8 %2)
  call void @nvgFill(ptr noundef %1)
  %i.ef = add nuw nsw i32 %.0175, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ef, 6
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
end_hunk_0
