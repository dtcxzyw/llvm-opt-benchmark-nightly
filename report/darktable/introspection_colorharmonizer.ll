Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorharmonizer?download=true
inline.NumInlined: 123
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 44
begin_hunk_0_@llvm.atan2.f32
declare float @llvm.atan2.f32(float, float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #8

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

declare ptr @dt_gaussian_init(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gaussian_blur(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_gaussian_free(ptr noundef) local_unnamed_addr #3

declare void @g_mutex_lock(ptr noundef) local_unnamed_addr #3

declare void @g_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare ptr @g_object_ref(ptr noundef) local_unnamed_addr #3

declare i32 @gdk_threads_add_idle(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_auto_detect_button_enable_idle(ptr noundef %0) #1 {
bb.a:
  tail call void @gtk_widget_set_sensitive(ptr noundef %0, i32 noundef 1) #25
  %i.a = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.67, i32 noundef 5) #25
  tail call void @gtk_widget_set_tooltip_text(ptr noundef %0, ptr noundef %i.a) #25
  tail call void @g_object_unref(ptr noundef %0) #25
  ret i32 0
}

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc void @_hue_to_srgb(float noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #22 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [4 x float], align 16             ; 5 uses
  %i.e = fmul reassoc nsz arcp contract afn float %0, f0x40C90FDB
  %i.f = fadd reassoc nsz arcp contract afn float %i.e, f0xC0490FDB ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store float 6.500000e-01, ptr %i.c, align 16, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.029.i = phi i32 [ 0, %bb.a ], [ %i.w, %bb.b ]
  %.02428.i = phi float [ 2.000000e+00, %bb.a ], [ %.024..i, %bb.b ] ; 2 uses
  %.02527.i = phi float [ 0.000000e+00, %bb.a ], [ %..025.i, %bb.b ] ; 2 uses
  %i.l = fadd reassoc nsz arcp contract afn float %.02527.i, %.02428.i
  %i.m = fmul reassoc nsz arcp contract afn float %i.l, 5.000000e-01 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store float 6.500000e-01, ptr %i.a, align 16, !tbaa !31
  store float %i.m, ptr %i.g, align 4, !tbaa !31
  store float %i.f, ptr %i.h, align 8, !tbaa !31
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call fastcc void @dt_UCS_JCH_to_sRGB(ptr noundef %i.a, float noundef f0x3F7CF0E2, ptr noundef %i.b)
  %i.n = load float, ptr %i.b, align 16, !tbaa !31 ; 2 uses
  %i.o = fcmp reassoc nsz arcp contract afn oge float %i.n, 0.000000e+00
  %i.p = load float, ptr %i.j, align 4            ; 2 uses
  %i.q = fcmp reassoc nsz arcp contract afn oge float %i.p, 0.000000e+00
  %or.cond.i = select i1 %i.o, i1 %i.q, i1 false
  %i.r = load float, ptr %i.k, align 8            ; 2 uses
  %i.s = fcmp reassoc nsz arcp contract afn oge float %i.r, 0.000000e+00
  %or.cond5.i = select i1 %or.cond.i, i1 %i.s, i1 false
  %i.t = fcmp reassoc nsz arcp contract afn ole float %i.n, 1.000000e+00
  %or.cond8.i = and i1 %i.t, %or.cond5.i
  %i.u = fcmp reassoc nsz arcp contract afn ole float %i.p, 1.000000e+00
  %or.cond11.i = select i1 %or.cond8.i, i1 %i.u, i1 false
  %i.v = fcmp reassoc nsz arcp contract afn ole float %i.r, 1.000000e+00
  %or.cond14.i = select i1 %or.cond11.i, i1 %i.v, i1 false ; 2 uses
  %..025.i = select nsz i1 %or.cond14.i, float %i.m, float %.02527.i ; 2 uses
  %.024..i = select nsz i1 %or.cond14.i, float %.02428.i, float %i.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.w = add nuw nsw i32 %.029.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.w, 16
  br i1 %exitcond.not.i, label %_find_max_chroma.exit, label %bb.b

_find_max_chroma.exit:                            ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.y = fmul reassoc nsz arcp contract afn float %..025.i, 8.500000e-01
  store float %i.y, ptr %i.x, align 4, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.f, ptr %i.z, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float 0.000000e+00, ptr %i.aa, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call fastcc void @dt_UCS_JCH_to_sRGB(ptr noundef %i.c, float noundef f0x3F7CF0E2, ptr noundef %i.d)
  %i.ab = load float, ptr %i.d, align 16, !tbaa !31 ; 3 uses
  %i.ac = fcmp reassoc nsz arcp contract afn ogt float %i.ab, 1.000000e+00
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.ab, 0.000000e+00
  %i.ae = select reassoc nsz arcp contract afn i1 %i.ad, float 0.000000e+00, float %i.ab
  %i.af = select reassoc nsz arcp contract afn i1 %i.ac, float 1.000000e+00, float %i.ae
  store float %i.af, ptr %1, align 4, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.ah = load <2 x float>, ptr %i.ag, align 4, !tbaa !31 ; 3 uses
  %i.ai = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ah, splat (float 1.000000e+00)
  %i.aj = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ah, zeroinitializer
  %i.ak = select <2 x i1> %i.aj, <2 x float> zeroinitializer, <2 x float> %i.ah
  %i.al = select <2 x i1> %i.ai, <2 x float> splat (float 1.000000e+00), <2 x float> %i.ak ; 2 uses
  %i.am = extractelement <2 x float> %i.al, i64 0
  store float %i.am, ptr %2, align 4, !tbaa !31
  %i.an = extractelement <2 x float> %i.al, i64 1
  store float %i.an, ptr %3, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @dt_UCS_JCH_to_sRGB(ptr nofree noundef nonnull readonly captures(none) %0, float noundef nofpclass(nan inf zero sub nnorm) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %2) unnamed_addr #23 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !31
  %i.b = fmul reassoc nsz arcp contract afn float %i.a, %1 ; 3 uses
  %i.c = fcmp reassoc nsz arcp contract afn ult float %i.b, 0.000000e+00
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %i.b, 2.098850e+00
  %spec.select.i.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %i.b, float 2.098850e+00
  %i.d = select reassoc nsz arcp contract afn i1 %i.c, float 0.000000e+00, float %spec.select.i.i ; 4 uses
  %i.e = fcmp reassoc nsz arcp contract afn une float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %dt_UCS_JCH_to_xyY.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load float, ptr %i.f, align 4, !tbaa !31
  %i.h = fmul reassoc nsz arcp contract afn float %i.g, %1
  %i.i = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.d, float f0x3F2703AC)
  %i.j = fmul reassoc nnan nsz arcp contract afn float %i.i, f0x417EED8B
  %i.k = fdiv reassoc nsz arcp contract afn float %i.h, %i.j
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.k, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit.i

dt_UCS_JCH_to_xyY.exit.i:                         ; preds = %bb.b, %bb.a
  %i.m = phi reassoc nsz arcp contract afn float [ %i.l, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  %sincos.i.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.o) ; 2 uses
  %sin.i.i = extractvalue { float, float } %sincos.i.i, 0
  %cos.i.i = extractvalue { float, float } %sincos.i.i, 1
  %i.p = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %i.q = insertelement <2 x float> %i.p, float %sin.i.i, i64 1
  %i.r = insertelement <2 x float> poison, float %i.m, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul reassoc nsz arcp contract afn <2 x float> %i.q, %i.s ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %i.t, <float f0x40985229, float f0x40204F91>
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn <2 x float> %i.t, <float f0xC0A13362, float f0x4037EFD4> ; 2 uses
  %i.x = fsub reassoc nsz arcp contract afn <2 x float> %i.w, %i.v
  %i.y = fadd reassoc nsz arcp contract afn <2 x float> %i.w, %i.v
  %i.z = shufflevector <2 x float> %i.x, <2 x float> %i.y, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.aa = fmul reassoc nsz arcp contract afn <2 x float> %i.z, <float f0xBFBEFF8B, float f0xBFC32F7A>
  %i.ab = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.z)
  %i.ac = fadd reassoc nsz arcp contract afn <2 x float> %i.ab, <float f0xBFB2C28D, float f0xBFB9C753>
  %i.ad = fdiv reassoc nsz arcp contract afn <2 x float> %i.aa, %i.ac ; 3 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0 ; 2 uses
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, f0xBE1A9505
  %i.ag = extractelement <2 x float> %i.ad, i64 1 ; 2 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, f0xBE1EE8D5
  %i.ai = fadd reassoc nsz arcp contract afn float %i.af, f0xBC0A2B16
  %i.aj = fadd reassoc nsz arcp contract afn float %i.ai, %i.ah
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ae, f0x3F70B489
  %i.al = fadd reassoc nsz arcp contract afn float %i.ag, %i.ak
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, f0xBCD1FB74 ; 5 uses
  %i.an = fcmp reassoc nsz arcp contract afn ult float %i.am, 0.000000e+00
  %i.ao = fcmp reassoc nsz arcp contract afn olt float %i.am, f0x00800000
  %i.ap = select reassoc nsz arcp contract afn i1 %i.ao, float f0x00800000, float %i.am
  %i.aq = fcmp reassoc nsz arcp contract afn ogt float %i.am, f0x80800000
  %i.ar = select reassoc nsz arcp contract afn i1 %i.aq, float f0x80800000, float %i.am
  %i.as = select reassoc nsz arcp contract afn i1 %i.an, float %i.ar, float %i.ap ; 2 uses
  %i.at = fdiv reassoc nsz arcp contract afn float %i.aj, %i.as ; 4 uses
  %i.au = fcmp reassoc nsz arcp contract afn oeq float %i.at, 0.000000e+00
  br i1 %i.au, label %dt_UCS_JCH_to_XYZ.exit, label %bb.c

bb.c:                                             ; preds = %dt_UCS_JCH_to_xyY.exit.i
  %i.av = fmul reassoc nsz arcp contract afn float %i.d, f0x3F8FE801
  %i.aw = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.d
  %i.ax = fdiv reassoc nsz arcp contract afn float %i.av, %i.aw
  %i.ay = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.ax, float f0x3FCAA4B8) ; 3 uses
  %i.az = fmul reassoc nsz arcp contract afn <2 x float> %i.ad, <float f0x3E2B2F00, float f0x3E10B0E5> ; 2 uses
  %i.ba = extractelement <2 x float> %i.az, i64 0
  %i.bb = fadd reassoc nsz arcp contract afn float %i.ba, f0xBC0352A9
  %i.bc = extractelement <2 x float> %i.az, i64 1
  %i.bd = fadd reassoc nsz arcp contract afn float %i.bb, %i.bc
  %i.be = fdiv reassoc nsz arcp contract afn float %i.bd, %i.as ; 2 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.ay
  %i.bg = fdiv reassoc nsz arcp contract afn float %i.bf, %i.at
  %i.bh = fadd reassoc nsz arcp contract afn float %i.be, %i.at
  %i.bi = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.bh
  %i.bj = fmul reassoc nsz arcp contract afn float %i.bi, %i.ay
  %i.bk = fdiv reassoc nsz arcp contract afn float %i.bj, %i.at
  br label %dt_UCS_JCH_to_XYZ.exit

dt_UCS_JCH_to_XYZ.exit:                           ; preds = %dt_UCS_JCH_to_xyY.exit.i, %bb.c
  %.sink8.i = phi float [ %i.bg, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ]
  %.sink.i = phi float [ %i.ay, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ]
  %i.bl = phi reassoc nsz arcp contract afn float [ %i.bk, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i ] ; 4 uses
  %3 = fmul reassoc nsz arcp contract afn float %i.bl, f0xBEFF3F82
  %i.bm = fmul reassoc nsz arcp contract afn float %i.bl, 4.155600e-02
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bl, f0x3F875328
  %4 = insertelement <4 x float> poison, float %.sink8.i, i64 0
  %5 = shufflevector <4 x float> %4, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bo = fmul reassoc nsz arcp contract afn <4 x float> %5, <float f0x404F639A, float f0xBF7821D1, float 5.564340e-02, float 1.000000e+00>
  %6 = insertelement <4 x float> poison, float %.sink.i, i64 0
  %i.bp = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bq = fmul reassoc nsz arcp contract afn <4 x float> %i.bp, <float f0xBFC4C0F4, float f0x3FF0211F, float f0xBE50EC2A, float 1.000000e+00>
  %i.br = fadd reassoc nsz arcp contract afn <4 x float> %i.bq, %i.bo ; 4 uses
  %i.bs = extractelement <4 x float> %i.br, i64 0
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, %3 ; 3 uses
  %i.bu = extractelement <4 x float> %i.br, i64 1
  %i.bv = fadd reassoc nsz arcp contract afn float %i.bu, %i.bm ; 3 uses
  %i.bw = extractelement <4 x float> %i.br, i64 2
  %i.bx = fadd reassoc nsz arcp contract afn float %i.bw, %i.bn ; 3 uses
  %i.by = extractelement <4 x float> %i.br, i64 3
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %i.bl
  %i.ca = fmul reassoc nsz arcp contract afn float %i.bz, 0.000000e+00 ; 2 uses
  %i.cb = fcmp reassoc nsz arcp contract afn ugt float %i.bt, 3.130800e-03
  br i1 %i.cb, label %bb.e, label %bb.d

bb.d:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit
  %i.cc = fmul reassoc nnan nsz arcp contract afn float %i.bt, 1.292000e+01
  br label %bb.f

bb.e:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bt, float f0x3ED55555)
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, 1.055000e+00
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, -5.500000e-02
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cg = phi reassoc nsz arcp contract afn float [ %i.cc, %bb.d ], [ %i.cf, %bb.e ]
  store float %i.cg, ptr %2, align 4, !tbaa !31
  %i.ch = fcmp reassoc nsz arcp contract afn ugt float %i.bv, 3.130800e-03
  br i1 %i.ch, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ci = fmul reassoc nnan nsz arcp contract afn float %i.bv, 1.292000e+01
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.cj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bv, float f0x3ED55555)
  %i.ck = fmul reassoc nsz arcp contract afn float %i.cj, 1.055000e+00
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, -5.500000e-02
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cm = phi reassoc nsz arcp contract afn float [ %i.ci, %bb.g ], [ %i.cl, %bb.h ]
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.cm, ptr %i.cn, align 4, !tbaa !31
  %i.co = fcmp reassoc nsz arcp contract afn ugt float %i.bx, 3.130800e-03
  br i1 %i.co, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = fmul reassoc nnan nsz arcp contract afn float %i.bx, 1.292000e+01
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bx, float f0x3ED55555)
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, 1.055000e+00
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, -5.500000e-02
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ct = phi reassoc nsz arcp contract afn float [ %i.cp, %bb.j ], [ %i.cs, %bb.k ]
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.ct, ptr %i.cu, align 4, !tbaa !31
  %i.cv = fcmp reassoc nsz arcp contract afn ugt float %i.ca, 3.130800e-03
  br i1 %i.cv, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ca, float f0x3ED55555)
  %i.cx = fmul reassoc nsz arcp contract afn float %i.cw, 1.055000e+00
  %i.cy = fadd reassoc nsz arcp contract afn float %i.cx, -5.500000e-02
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cz = phi reassoc nsz arcp contract afn float [ %i.cy, %bb.m ], [ 0.000000e+00, %bb.l ]
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.cz, ptr %i.da, align 4, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #8

declare void @dt_lib_histogram_get_harmony(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_lib_histogram_get_sector_angles(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_paint_hue_slider(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ryb_to_ucs_fast.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_ryb_to_ucs_fast.exit
  %.05 = phi i32 [ 0, %bb.a ], [ %i.ag, %_ryb_to_ucs_fast.exit ] ; 2 uses
  %i.d = uitofp nneg i32 %.05 to float            ; 2 uses
  %i.e = fmul reassoc nnan nsz arcp contract afn float %i.d, f0x3D579436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.f = fmul reassoc nnan nsz arcp contract afn float %i.d, f0x42179436 ; 2 uses
  %i.g = fptosi float %i.f to i32                 ; 2 uses
  %i.h = srem i32 %i.g, 720                       ; 2 uses
  %i.i = trunc nsw i32 %i.h to i16
  %.lhs.trunc.i = add nsw i16 %i.i, 1
  %i.j = srem i16 %.lhs.trunc.i, 720
  %i.k = sext i32 %i.h to i64
  %i.l = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.k
  %i.m = load float, ptr %i.l, align 4, !tbaa !31 ; 5 uses
  %i.n = sext i16 %i.j to i64
  %i.o = getelementptr inbounds [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.n
  %i.p = load float, ptr %i.o, align 4, !tbaa !31 ; 4 uses
  %i.q = fsub reassoc nsz arcp contract afn float %i.p, %i.m
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.q, 5.000000e-01
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = fadd reassoc nsz arcp contract afn float %i.p, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit

bb.e:                                             ; preds = %bb.c
  %i.t = fsub reassoc nsz arcp contract afn float %i.m, %i.p
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.t, 5.000000e-01
  %i.v = fadd reassoc nsz arcp contract afn float %i.m, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.u, float %i.v, float %i.m
  br label %_ryb_to_ucs_fast.exit

_ryb_to_ucs_fast.exit:                            ; preds = %bb.d, %bb.e
  %.014.i.i = phi nsz float [ %i.s, %bb.d ], [ %i.p, %bb.e ]
  %.013.i.i = phi nsz float [ %i.m, %bb.d ], [ %spec.select.i.i, %bb.e ] ; 2 uses
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.g to float
  %i.x = fsub reassoc nnan nsz arcp contract afn float %i.f, %i.w
  %i.y = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.x
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %.013.i.i ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.aa, 0.000000e+00
  %i.ac = fadd reassoc nsz arcp contract afn float %i.aa, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.ab, float %i.ac, float %i.aa
  call fastcc void @_hue_to_srgb(float noundef %spec.select16.i.i, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.ad = load float, ptr %i.a, align 4, !tbaa !31
  %i.ae = load float, ptr %i.b, align 4, !tbaa !31
  %i.af = load float, ptr %i.c, align 4, !tbaa !31
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %0, float noundef %i.e, float noundef %i.ad, float noundef %i.ae, float noundef %i.af) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ag = add nuw nsw i32 %.05, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.ag, 20
  br i1 %exitcond.not, label %bb.b, label %bb.c
}

declare void @dt_bauhaus_slider_set_stop(ptr noundef, float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_combobox_set(ptr noundef, i32 noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #3

declare ptr @gtk_drawing_area_new() local_unnamed_addr #3

declare void @gtk_widget_set_size_request(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @_swatch_draw_callback(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 3 uses
  %i.h = tail call ptr @g_object_get_data(ptr noundef %0, ptr noundef nonnull @.str.68) #25
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = load i32, ptr %i.g, align 4, !tbaa !34   ; 2 uses
  %i.k = icmp eq i32 %i.j, 9
  br i1 %i.k, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %sext20 = shl i64 %i.i, 32
  %i.m = ashr exact i64 %sext20, 30
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = trunc i64 %i.i to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.r = load float, ptr %i.q, align 4, !tbaa !35
  call fastcc void @get_harmony_nodes(i32 noundef %i.j, float noundef %i.r, ptr noundef null, i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.s = load i32, ptr %i.b, align 4, !tbaa !30
  %.not = icmp sgt i32 %i.s, %i.p
  br i1 %.not, label %bb.c, label %bb.d
end_hunk_0
