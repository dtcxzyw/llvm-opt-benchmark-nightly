Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/textbox?download=true
inline.NumInlined: 3846
inline.NumDeleted: 1489
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN7nanogui7TextBoxC2EPNS_6WidgetENSt3__117basic_string_viewIcNS3_11char_traitsIcEEEE:bb.a
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45: ; preds = %bb.o, %_ZNSt3__18functionIFbRKNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEED2Ev.exit
  %i.bp = load i8, ptr %i.v, align 16
  %i.bq = trunc i8 %i.bp to i1
  br i1 %i.bq, label %bb.p, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46

bb.p:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.bs = load ptr, ptr %i.br, align 16, !tbaa !63
  %i.bt = load i64, ptr %i.v, align 16
  %i.bu = and i64 %i.bt, -2
  tail call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bu) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46: ; preds = %bb.p, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit45
  %i.bv = load i8, ptr %i.s, align 16
  %i.bw = trunc i8 %i.bv to i1
  br i1 %i.bw, label %bb.q, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit47

bb.q:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !63
  %i.bz = load i64, ptr %i.s, align 16
  %i.ca = and i64 %i.bz, -2
  tail call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.ca) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit47

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit47: ; preds = %bb.q, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit46
  %i.cb = load i8, ptr %i.d, align 8
  %i.cc = trunc i8 %i.cb to i1
  br i1 %i.cc, label %bb.r, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit48

bb.r:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit47
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !63
  %i.cf = load i64, ptr %i.d, align 8
  %i.cg = and i64 %i.cf, -2
  tail call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.cg) #30
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit48

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit48: ; preds = %bb.r, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit47, %bb.k
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.k ], [ %i.bb, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit47 ], [ %i.bb, %bb.r ]
  tail call void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %0) #29
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

declare void @_ZN7nanogui6WidgetC2EPS0_(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN7nanogui6WidgetD2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN7nanogui7TextBox12set_editableEb(ptr nofree noundef nonnull writeonly align 16 captures(none) dereferenceable(448) initializes((144, 149)) %0, i1 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 %i.a, ptr %i.b, align 4, !tbaa !60
  %i.c = zext i1 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.c, ptr %i.d, align 16, !tbaa !75
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui7TextBox9set_themeEPNS_5ThemeE(ptr noundef nonnull align 16 dereferenceable(448) %0, ptr noundef %1) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN7nanogui6Widget9set_themeEPNS_5ThemeE(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN7nanogui6Widget13set_font_sizeEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.d = load i32, ptr %i.c, align 4, !tbaa !72   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !73
  %.not.i = icmp eq i32 %i.f, %i.d
  br i1 %.not.i, label %_ZN7nanogui6Widget13set_font_sizeEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %i.e, align 8, !tbaa !73
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.g, align 16, !tbaa !63
  br label %_ZN7nanogui6Widget13set_font_sizeEi.exit

_ZN7nanogui6Widget13set_font_sizeEi.exit:         ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_ZN7nanogui6Widget9set_themeEPNS_5ThemeE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden i64 @_ZNK7nanogui7TextBox19preferred_size_implEP10NVGcontext(ptr noundef nonnull align 16 dereferenceable(448) %0, ptr noundef %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = tail call noundef i32 @_ZNK7nanogui6Widget9font_sizeEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.d = sitofp i32 %i.c to float
  %i.e = fmul nnan float %i.d, 1.400000e+00
  %i.f = fptosi float %i.e to i32                 ; 3 uses
  tail call void @nvgFontFace(ptr noundef %1, ptr noundef nonnull @.str.1)
  %i.g = tail call noundef i32 @_ZNK7nanogui6Widget9font_sizeEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.h = sitofp i32 %i.g to float
  tail call void @nvgFontSize(ptr noundef %1, float noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = load i32, ptr %i.i, align 16, !tbaa !65  ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @nvgImageSize(ptr noundef %1, i32 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.l = sitofp i32 %i.f to float
  %i.m = fmul nnan float %i.l, 4.000000e-01
  %i.n = load i32, ptr %i.a, align 4, !tbaa !76
  %i.o = sitofp i32 %i.n to float
  %i.p = fmul float %i.m, %i.o
  %i.q = load i32, ptr %i.b, align 4, !tbaa !76
  %i.r = sitofp i32 %i.q to float
  %i.s = fdiv float %i.p, %i.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.u = load i8, ptr %i.t, align 16              ; 2 uses
  %i.v = trunc i8 %i.u to i1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.x = load i64, ptr %i.w, align 8
  %i.y = lshr i8 %i.u, 1
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = select i1 %i.v, i64 %i.x, i64 %i.z
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ad = load ptr, ptr %i.ac, align 16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 209
  %i.af = select i1 %i.v, ptr %i.ad, ptr %i.ae
  %i.ag = tail call float @nvgTextBounds(ptr noundef %1, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.af, ptr noundef null, ptr noundef null)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi float [ %i.s, %bb.b ], [ 0.000000e+00, %bb.c ], [ %i.ag, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !61, !range !77, !noundef !78
  %i.aj = trunc nuw i8 %i.ai to i1
  %spec.store.select = select i1 %i.aj, float 1.400000e+01, float 0.000000e+00
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.al = load i8, ptr %i.ak, align 8
  %i.am = trunc i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.aq = select i1 %i.am, ptr %i.ao, ptr %i.ap
  %i.ar = call float @nvgTextBounds(ptr noundef %1, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.aq, ptr noundef null, ptr noundef null)
  %i.as = sitofp i32 %i.f to float
  %i.at = fadd float %i.ar, %i.as
  %i.au = fadd float %.0, %i.at
  %i.av = fadd float %spec.store.select, %i.au
  %i.aw = fptosi float %i.av to i32
  %.sroa.3.0.insert.ext = zext i32 %i.f to i64
  %.sroa.3.0.insert.shift = shl nuw i64 %.sroa.3.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.aw to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

declare noundef i32 @_ZNK7nanogui6Widget9font_sizeEv(ptr noundef nonnull align 8 dereferenceable(148)) local_unnamed_addr #1

declare void @nvgFontFace(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @nvgFontSize(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare void @nvgImageSize(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

declare float @nvgTextBounds(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui7TextBox4drawEP10NVGcontext(ptr noundef nonnull align 16 dereferenceable(448) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.NVGpaint, align 8           ; 6 uses
  %3 = alloca %struct.NVGpaint, align 8           ; 7 uses
  %4 = alloca %struct.NVGpaint, align 8           ; 8 uses
  %5 = alloca %struct.NVGcolor, align 16          ; 2 uses
  %6 = alloca %struct.NVGcolor, align 16          ; 2 uses
  %7 = alloca %struct.NVGpaint, align 4           ; 4 uses
  %8 = alloca %struct.NVGcolor, align 16          ; 2 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %struct.NVGpaint, align 8           ; 4 uses
  %10 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__1::basic_string", align 8 ; 12 uses
  %12 = alloca [1024 x %struct.NVGglyphPosition], align 16 ; 10 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  tail call void @_ZN7nanogui6Widget4drawEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148) %0, ptr noundef %1)
  tail call void @nvgBeginPath(ptr noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.e = load float, ptr %i.d, align 4, !tbaa !69
  %i.f = fcmp ogt float %i.e, 0.000000e+00
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !76   ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !76
  %i.l = sitofp i32 %i.k to float
  %i.m = sitofp i32 %i.h to float
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 16, !tbaa !76
  %i.p = sitofp i32 %i.o to float
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !76
  %i.s = sitofp i32 %i.r to float
  %.sroa.081.0.copyload = load <2 x float>, ptr %i.i, align 16
  %.sroa.282.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.sroa.282.0.copyload = load <2 x float>, ptr %.sroa.282.0..sroa_idx, align 8, !tbaa !63
  call void @nvgBoxGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %4, ptr noundef %1, float noundef %i.l, float noundef %i.m, float noundef %i.p, float noundef %i.s, float noundef 3.000000e+00, float noundef 4.000000e+00, <2 x float> %.sroa.081.0.copyload, <2 x float> %.sroa.282.0.copyload, ptr noundef nonnull byval(%struct.NVGcolor) align 8 %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %3, ptr noundef nonnull align 8 dereferenceable(76) %4, i64 76, i1 false), !tbaa.struct !304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %2, ptr noundef nonnull align 8 dereferenceable(76) %4, i64 76, i1 false)
  %i.t = load <4 x i32>, ptr %i.j, align 8, !tbaa !76
  %i.u = sitofp <4 x i32> %i.t to <4 x float>     ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.w = load float, ptr %i.v, align 4, !tbaa !305
  %i.x = extractelement <4 x float> %i.u, i64 0
  %i.y = extractelement <4 x float> %i.u, i64 1
  %i.z = extractelement <4 x float> %i.u, i64 2
  %i.aa = extractelement <4 x float> %i.u, i64 3
  call void @nvgRoundedRect(ptr noundef %1, float noundef %i.x, float noundef %i.y, float noundef %i.z, float noundef %i.aa, float noundef %i.w)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ac = load <4 x i32>, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load <4 x i32>, ptr %i.ad, align 16
  %i.af = insertelement <4 x i32> %i.ac, i32 %i.h, i64 1
  %i.ag = shufflevector <4 x i32> %i.af, <4 x i32> %i.ae, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ah = add nsw <4 x i32> %i.ag, <i32 1, i32 1, i32 -2, i32 -2>
  %i.ai = sitofp <4 x i32> %i.ah to <4 x float>   ; 4 uses
  %i.aj = extractelement <4 x float> %i.ai, i64 1
  %i.ak = fadd float %i.aj, 1.000000e+00
  store <4 x float> splat (float f0x3E008081), ptr %5, align 16
  %i.al = extractelement <4 x float> %i.ai, i64 0
  %i.am = extractelement <4 x float> %i.ai, i64 2
  %i.an = extractelement <4 x float> %i.ai, i64 3
  call void @nvgBoxGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %2, ptr noundef %1, float noundef %i.al, float noundef %i.ak, float noundef %i.am, float noundef %i.an, float noundef 3.000000e+00, float noundef 4.000000e+00, <2 x float> splat (float 1.000000e+00), <2 x float> <float 1.000000e+00, float f0x3E008081>, ptr noundef nonnull byval(%struct.NVGcolor) align 8 %5)
  %i.ao = load <4 x i32>, ptr %i.ab, align 8, !tbaa !76
  %i.ap = add nsw <4 x i32> %i.ao, <i32 1, i32 1, i32 -2, i32 -2>
  %i.aq = sitofp <4 x i32> %i.ap to <4 x float>   ; 4 uses
  %i.ar = extractelement <4 x float> %i.aq, i64 1
  %i.as = fadd float %i.ar, 1.000000e+00
  store <4 x float> splat (float f0x3E008081), ptr %6, align 16
  %i.at = extractelement <4 x float> %i.aq, i64 0
  %i.au = extractelement <4 x float> %i.aq, i64 2
  %i.av = extractelement <4 x float> %i.aq, i64 3
  call void @nvgBoxGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %3, ptr noundef %1, float noundef %i.at, float noundef %i.as, float noundef %i.au, float noundef %i.av, float noundef 3.000000e+00, float noundef 4.000000e+00, <2 x float> splat (float f0x3F169697), <2 x float> <float f0x3F169697, float f0x3E008081>, ptr noundef nonnull byval(%struct.NVGcolor) align 8 %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.aw = load <4 x i32>, ptr %i.ab, align 8, !tbaa !76
  %i.ax = add nsw <4 x i32> %i.aw, <i32 1, i32 1, i32 -2, i32 -2>
  %i.ay = sitofp <4 x i32> %i.ax to <4 x float>   ; 4 uses
  %i.az = extractelement <4 x float> %i.ay, i64 1
  %i.ba = fadd float %i.az, 1.000000e+00
  %i.bb = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 100) ; 2 uses
  %i.bc = extractvalue { <2 x float>, <2 x float> } %i.bb, 0
  %i.bd = extractvalue { <2 x float>, <2 x float> } %i.bb, 1
  %i.be = call { <2 x float>, <2 x float> } @nvgRGBA(i8 noundef zeroext -1, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 50) ; 2 uses
  %i.bf = extractvalue { <2 x float>, <2 x float> } %i.be, 0
  %13 = extractvalue { <2 x float>, <2 x float> } %i.be, 1
  %14 = shufflevector <2 x float> %i.bf, <2 x float> %13, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %14, ptr %8, align 16
  %i.bg = extractelement <4 x float> %i.ay, i64 0
  %i.bh = extractelement <4 x float> %i.ay, i64 2
  %i.bi = extractelement <4 x float> %i.ay, i64 3
  call void @nvgBoxGradient(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %7, ptr noundef %1, float noundef %i.bg, float noundef %i.ba, float noundef %i.bh, float noundef %i.bi, float noundef 3.000000e+00, float noundef 4.000000e+00, <2 x float> %i.bc, <2 x float> %i.bd, ptr noundef nonnull byval(%struct.NVGcolor) align 8 %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(76) %4, ptr noundef nonnull align 4 dereferenceable(76) %7, i64 76, i1 false), !tbaa.struct !304
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  %i.bj = load <4 x i32>, ptr %i.ab, align 8, !tbaa !76
  %i.bk = add nsw <4 x i32> %i.bj, <i32 1, i32 1, i32 -2, i32 -2>
  %i.bl = sitofp <4 x i32> %i.bk to <4 x float>   ; 4 uses
  %i.bm = extractelement <4 x float> %i.bl, i64 1
  %i.bn = fadd float %i.bm, 1.000000e+00
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !305
  %i.bq = extractelement <4 x float> %i.bl, i64 0
  %i.br = extractelement <4 x float> %i.bl, i64 2
  %i.bs = extractelement <4 x float> %i.bl, i64 3
  call void @nvgRoundedRect(ptr noundef %1, float noundef %i.bq, float noundef %i.bn, float noundef %i.br, float noundef %i.bs, float noundef %i.bp)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.bu = load i8, ptr %i.bt, align 4, !tbaa !60, !range !77, !noundef !78
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !79, !range !77, !noundef !78
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ca = load i8, ptr %i.bz, align 16, !tbaa !67, !range !77, !noundef !78
  %i.cb = trunc nuw i8 %i.ca to i1
  %.285 = select i1 %i.cb, ptr %3, ptr %4
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !61, !range !77, !noundef !78
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !76
  %.not = icmp eq i32 %i.cg, -1
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.i
  %.sink = phi ptr [ %.285, %bb.f ], [ %2, %bb.i ], [ %3, %bb.h ]
  call void @nvgFillPaint(ptr noundef %1, ptr noundef nonnull byval(%struct.NVGpaint) align 8 %.sink)
  call void @nvgFill(ptr noundef %1)
  call void @nvgBeginPath(ptr noundef %1)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 10 uses
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !76
  %i.cj = sitofp i32 %i.ci to float
  %i.ck = fadd float %i.cj, 5.000000e-01
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 5 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !76
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fadd float %i.cn, 5.000000e-01
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 6 uses
  %i.cr = load <2 x i32>, ptr %i.cp, align 16, !tbaa !76
  %i.cs = add nsw <2 x i32> %i.cr, splat (i32 -1)
  %i.ct = sitofp <2 x i32> %i.cs to <2 x float>   ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !305
  %i.cw = fadd float %i.cv, -5.000000e-01         ; 2 uses
  %i.cx = fcmp olt float %i.cw, 0.000000e+00
  %.sroa.speculated = select i1 %i.cx, float 0.000000e+00, float %i.cw
  %i.cy = extractelement <2 x float> %i.ct, i64 0
  %i.cz = extractelement <2 x float> %i.ct, i64 1
  call void @nvgRoundedRect(ptr noundef %1, float noundef %i.ck, float noundef %i.co, float noundef %i.cy, float noundef %i.cz, float noundef %.sroa.speculated)
  call void @nvgStrokeColor(ptr noundef %1, <2 x float> zeroinitializer, <2 x float> <float 0.000000e+00, float f0x3E40C0C1>)
  call void @nvgStroke(ptr noundef %1)
  %i.da = call noundef i32 @_ZNK7nanogui6Widget9font_sizeEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
  %i.db = sitofp i32 %i.da to float
  call void @nvgFontSize(ptr noundef %1, float noundef %i.db)
  call void @nvgFontFace(ptr noundef %1, ptr noundef nonnull @.str.1)
  %i.dc = load i32, ptr %i.ch, align 8, !tbaa !76 ; 4 uses
  %i.dd = load i32, ptr %i.cl, align 4, !tbaa !76
  %i.de = sitofp i32 %i.dd to float
  %i.df = load i32, ptr %i.cq, align 4, !tbaa !76
  %i.dg = sitofp i32 %i.df to float               ; 2 uses
  %i.dh = call float @llvm.fmuladd.f32(float %i.dg, float 5.000000e-01, float %i.de)
  %i.di = fadd float %i.dh, 1.000000e+00
  %i.dj = fptosi float %i.di to i32               ; 4 uses
  %i.dk = fmul nnan float %i.dg, 2.000000e-01     ; 8 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 16, !tbaa !65 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  call void @nvgImageSize(ptr noundef %1, i32 noundef %i.dm, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.do = load i32, ptr %i.cq, align 4, !tbaa !76
  %i.dp = sitofp i32 %i.do to float
  %i.dq = fmul nnan float %i.dp, 4.000000e-01     ; 4 uses
  %i.dr = load i32, ptr %i.a, align 4, !tbaa !76
  %i.ds = sitofp i32 %i.dr to float
  %i.dt = fmul nnan float %i.dq, %i.ds
  %i.du = load i32, ptr %i.b, align 4, !tbaa !76
  %i.dv = sitofp i32 %i.du to float
  %i.dw = fdiv float %i.dt, %i.dv                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  %i.dx = load i32, ptr %i.ch, align 8, !tbaa !76
  %i.dy = load i32, ptr %i.cp, align 16, !tbaa !76
  %i.dz = add nsw i32 %i.dy, %i.dx
  %i.ea = sitofp i32 %i.dz to float
  %i.eb = fsub float %i.ea, %i.dk
  %i.ec = fsub float %i.eb, %i.dw
  %i.ed = sitofp i32 %i.dj to float
  %i.ee = fneg float %i.dq
  %i.ef = call float @llvm.fmuladd.f32(float %i.ee, float 5.000000e-01, float %i.ed) ; 2 uses
  %i.eg = load i32, ptr %i.dl, align 16, !tbaa !65
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !306, !range !77, !noundef !78
  %i.ej = trunc nuw i8 %i.ei to i1
  %i.ek = select i1 %i.ej, float f0x3F333333, float 3.500000e-01
  call void @nvgImagePattern(ptr dead_on_unwind nonnull writable sret(%struct.NVGpaint) align 4 %9, ptr noundef %1, float noundef %i.ec, float noundef %i.ef, float noundef %i.dw, float noundef %i.dq, float noundef 0.000000e+00, i32 noundef %i.eg, float noundef %i.ek)
  call void @nvgBeginPath(ptr noundef %1)
  %i.el = load i32, ptr %i.ch, align 8, !tbaa !76
  %i.em = load i32, ptr %i.cp, align 16, !tbaa !76
  %i.en = add nsw i32 %i.em, %i.el
  %i.eo = sitofp i32 %i.en to float
  %i.ep = fsub float %i.eo, %i.dk
  %i.eq = fsub float %i.ep, %i.dw
  call void @nvgRect(ptr noundef %1, float noundef %i.eq, float noundef %i.ef, float noundef %i.dw, float noundef %i.dq)
  call void @nvgFillPaint(ptr noundef %1, ptr noundef nonnull byval(%struct.NVGpaint) align 8 %9)
  call void @nvgFill(ptr noundef %1)
  %i.er = fadd float %i.dw, 2.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.et = load i8, ptr %i.es, align 16            ; 2 uses
  %i.eu = trunc i8 %i.et to i1                    ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = lshr i8 %i.et, 1
  %i.ey = zext nneg i8 %i.ex to i64
  %i.ez = select i1 %i.eu, i64 %i.ew, i64 %i.ey
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 16
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 209 ; 2 uses
  %i.fe = select i1 %i.eu, ptr %i.fc, ptr %i.fd
  %i.ff = call float @nvgTextBounds(ptr noundef %1, float noundef 0.000000e+00, float noundef 0.000000e+00, ptr noundef %i.fe, ptr noundef null, ptr noundef null)
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !306, !range !77, !noundef !78
  %i.fi = trunc nuw i8 %i.fh to i1
  %i.fj = select i1 %i.fi, float f0x3E808081, float f0x3E008081
  %.sroa.5211.12.vec.insert = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.fj, i64 1
  call void @nvgFillColor(ptr noundef %1, <2 x float> splat (float 1.000000e+00), <2 x float> %.sroa.5211.12.vec.insert)
  call void @nvgTextAlign(ptr noundef %1, i32 noundef 20)
  %i.fk = load i32, ptr %i.ch, align 8, !tbaa !76
  %i.fl = load i32, ptr %i.cp, align 16, !tbaa !76
  %i.fm = add nsw i32 %i.fl, %i.fk
  %i.fn = sitofp i32 %i.fm to float
  %i.fo = fsub float %i.fn, %i.dk
  %i.fp = sitofp i32 %i.dj to float
  %i.fq = load i8, ptr %i.es, align 16
  %i.fr = trunc i8 %i.fq to i1
  %i.fs = load ptr, ptr %i.fb, align 16
  %i.ft = select i1 %i.fr, ptr %i.fs, ptr %i.fd
  %i.fu = call float @nvgText(ptr noundef %1, float noundef %i.fo, float noundef %i.fp, ptr noundef %i.ft, ptr noundef null) ; 0 uses
  %i.fv = fadd float %i.ff, 2.000000e+00
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %.0 = phi float [ %i.er, %bb.k ], [ 0.000000e+00, %bb.l ], [ %i.fv, %bb.m ] ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 149
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !61, !range !77, !noundef !78
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.o, label %bb.aq

bb.o:                                             ; preds = %bb.n
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.ga = load i8, ptr %i.fz, align 2, !tbaa !79, !range !77, !noundef !78
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.aq, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @nvgFontFace(ptr noundef %1, ptr noundef nonnull @.str.2)
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !73 ; 2 uses
end_hunk_0
