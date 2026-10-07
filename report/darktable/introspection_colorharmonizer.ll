Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorharmonizer?download=true
inline.NumInlined: 128
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 43
begin_hunk_0_@gui_changed:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  br label %_update_visibility.exit

.loopexit.loopexit.i:                             ; preds = %bb.r
  %i.go = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !36 ; 3 uses
  %spec.select.i = call i32 @llvm.smax.i32(i32 %i.gp, i32 2)
  %i.gq = call i32 @llvm.umin.i32(i32 %spec.select.i, i32 4)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !124
  call void @gtk_widget_set_visible(ptr noundef %i.gs, i32 noundef 1) #25
  %i.gt = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !124
  call void @gtk_widget_set_visible(ptr noundef %i.gu, i32 noundef 1) #25
  %i.gv = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !124
  %i.gx = icmp sgt i32 %i.gp, 2
  %i.gy = zext i1 %i.gx to i32
  call void @gtk_widget_set_visible(ptr noundef %i.gw, i32 noundef %i.gy) #25
  %i.gz = getelementptr inbounds nuw i8, ptr %i.i, i64 208
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !124
  %i.hb = icmp sgt i32 %i.gp, 3
  %i.hc = zext i1 %i.hb to i32
  call void @gtk_widget_set_visible(ptr noundef %i.ha, i32 noundef %i.hc) #25
  %.pre.i = zext nneg i32 %i.gq to i64
  br label %_update_visibility.exit

_update_visibility.exit:                          ; preds = %.preheader.i, %.loopexit.loopexit.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.loopexit.loopexit.i ], [ %i.fy, %.preheader.i ] ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.i, i64 216
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !124
  %i.hf = icmp sgt i64 %.pre-phi.i, 0
  %i.hg = zext i1 %i.hf to i32
  call void @gtk_widget_set_visible(ptr noundef %i.he, i32 noundef %i.hg) #25
  %i.hh = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !124
  %i.hj = icmp sgt i64 %.pre-phi.i, 1
  %i.hk = zext i1 %i.hj to i32
  call void @gtk_widget_set_visible(ptr noundef %i.hi, i32 noundef %i.hk) #25
  %i.hl = getelementptr inbounds nuw i8, ptr %i.i, i64 232
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !124
  %i.hn = icmp sgt i64 %.pre-phi.i, 2
  %i.ho = zext i1 %i.hn to i32
  call void @gtk_widget_set_visible(ptr noundef %i.hm, i32 noundef %i.ho) #25
  %i.hp = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !124
  %i.hr = icmp sgt i64 %.pre-phi.i, 3
  %i.hs = zext i1 %i.hr to i32
  call void @gtk_widget_set_visible(ptr noundef %i.hq, i32 noundef %i.hs) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  %i.ht = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.hu = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %i.hv = load ptr, ptr %i.ht, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hv) #25
  %i.hw = load ptr, ptr %i.hu, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hw) #25
  %i.hx = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.hy) #25
  %i.hz = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.ia) #25
  %i.ib = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.ic) #25
  %i.id = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.ie) #25
  %i.if = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.ig) #25
  %i.ih = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !124
  call void @gtk_widget_queue_draw(ptr noundef %i.ii) #25
  br i1 %i.m, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_update_visibility.exit
  call fastcc void @_sync_custom_sliders(ptr noundef nonnull %i.k, ptr noundef %i.i)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_update_visibility.exit
  %i.ij = load ptr, ptr %i.fe, align 8, !tbaa !122
  br label %bb.u

bb.u:                                             ; preds = %_ryb_to_ucs_fast.exit.i.i, %bb.t
  %.06.i.i = phi i32 [ 0, %bb.t ], [ %i.jo, %_ryb_to_ucs_fast.exit.i.i ] ; 2 uses
  %i.ik = uitofp nsz nneg i32 %.06.i.i to float   ; 2 uses
  %i.il = fmul reassoc nnan nsz arcp contract afn float %i.ik, f0x3D579436
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  %i.im = fmul reassoc nnan nsz arcp contract afn float %i.ik, f0x42179436 ; 2 uses
  %i.in = fptosi float %i.im to i32
  %.fr.i.i = freeze i32 %i.in                     ; 2 uses
  %i.io = urem i32 %.fr.i.i, 720                  ; 2 uses
  %i.ip = trunc nuw nsw i32 %i.io to i16
  %.lhs.trunc.i.i.i = add nuw nsw i16 %i.ip, 1    ; 2 uses
  %i.iq = icmp eq i16 %.lhs.trunc.i.i.i, 720
  %i.ir = select i1 %i.iq, i16 0, i16 %.lhs.trunc.i.i.i
  %i.is = zext nneg i32 %i.io to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.is
  %i.iu = load float, ptr %i.it, align 4, !tbaa !31 ; 5 uses
  %i.iv = zext nneg i16 %i.ir to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.iv
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !31 ; 4 uses
  %i.iy = fsub reassoc nsz arcp contract afn float %i.ix, %i.iu
  %i.iz = fcmp reassoc nsz arcp contract afn ogt float %i.iy, 5.000000e-01
  br i1 %i.iz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ja = fadd reassoc nsz arcp contract afn float %i.ix, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit.i.i

bb.w:                                             ; preds = %bb.u
  %i.jb = fsub reassoc nsz arcp contract afn float %i.iu, %i.ix
  %i.jc = fcmp reassoc nsz arcp contract afn ogt float %i.jb, 5.000000e-01
  %i.jd = fadd reassoc nsz arcp contract afn float %i.iu, -1.000000e+00
  %spec.select.i.i.i.i = select nsz i1 %i.jc, float %i.jd, float %i.iu
  br label %_ryb_to_ucs_fast.exit.i.i

_ryb_to_ucs_fast.exit.i.i:                        ; preds = %bb.w, %bb.v
  %.014.i.i.i.i = phi nsz float [ %i.ja, %bb.v ], [ %i.ix, %bb.w ]
  %.013.i.i.i.i = phi nsz float [ %i.iu, %bb.v ], [ %spec.select.i.i.i.i, %bb.w ] ; 2 uses
  %i.je = sitofp reassoc nsz arcp contract afn i32 %.fr.i.i to float
  %i.jf = fsub reassoc nnan nsz arcp contract afn float %i.im, %i.je
  %i.jg = fsub reassoc nsz arcp contract afn float %.014.i.i.i.i, %.013.i.i.i.i
  %i.jh = fmul reassoc nsz arcp contract afn float %i.jg, %i.jf
  %i.ji = fadd reassoc nsz arcp contract afn float %i.jh, %.013.i.i.i.i ; 3 uses
  %i.jj = fcmp reassoc nsz arcp contract afn olt float %i.ji, 0.000000e+00
  %i.jk = fadd reassoc nsz arcp contract afn float %i.ji, 1.000000e+00
  %spec.select16.i.i.i.i = select nsz i1 %i.jj, float %i.jk, float %i.ji
  call fastcc void @_hue_to_srgb(float noundef %spec.select16.i.i.i.i, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.jl = load float, ptr %i.a, align 4, !tbaa !31
  %i.jm = load float, ptr %i.b, align 4, !tbaa !31
  %i.jn = load float, ptr %i.c, align 4, !tbaa !31
  call void @dt_bauhaus_slider_set_stop(ptr noundef %i.ij, float noundef %i.il, float noundef %i.jl, float noundef %i.jm, float noundef %i.jn) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.jo = add nuw nsw i32 %.06.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jo, 20
  br i1 %exitcond.not.i.i, label %_paint_hue_slider.exit.preheader.i, label %bb.u

_paint_hue_slider.exit.preheader.i:               ; preds = %_ryb_to_ucs_fast.exit.i.i
  %i.jp = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %_paint_hue_slider.exit13.i, %_paint_hue_slider.exit.preheader.i
  %indvars.iv.i39 = phi i64 [ 0, %_paint_hue_slider.exit.preheader.i ], [ %indvars.iv.next.i40, %_paint_hue_slider.exit13.i ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %indvars.iv.i39
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !124
  br label %bb.y

bb.y:                                             ; preds = %dt_UCS_JCH_to_sRGB.exit.i, %bb.x
  %.06.i4.i = phi i32 [ 0, %bb.x ], [ %i.re, %dt_UCS_JCH_to_sRGB.exit.i ] ; 2 uses
  %i.js = uitofp nsz nneg i32 %.06.i4.i to float  ; 2 uses
  %i.jt = fmul reassoc nnan nsz arcp contract afn float %i.js, f0x3D579436
  %i.ju = fmul reassoc nnan nsz arcp contract afn float %i.js, f0x42179436 ; 2 uses
  %i.jv = fptosi float %i.ju to i32
  %.fr.i5.i = freeze i32 %i.jv                    ; 2 uses
  %i.jw = urem i32 %.fr.i5.i, 720                 ; 2 uses
  %i.jx = trunc nuw nsw i32 %i.jw to i16
  %.lhs.trunc.i.i6.i = add nuw nsw i16 %i.jx, 1   ; 2 uses
  %i.jy = icmp eq i16 %.lhs.trunc.i.i6.i, 720
  %i.jz = select i1 %i.jy, i16 0, i16 %.lhs.trunc.i.i6.i
  %i.ka = zext nneg i32 %i.jw to i64
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.ka
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !31 ; 5 uses
  %i.kd = zext nneg i16 %i.jz to i64
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr @s_ryb_to_ucs_lut, i64 %i.kd
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !31 ; 4 uses
  %i.kg = fsub reassoc nsz arcp contract afn float %i.kf, %i.kc
  %i.kh = fcmp reassoc nsz arcp contract afn ogt float %i.kg, 5.000000e-01
  br i1 %i.kh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ki = fadd reassoc nsz arcp contract afn float %i.kf, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit.i8.i

bb.aa:                                            ; preds = %bb.y
  %i.kj = fsub reassoc nsz arcp contract afn float %i.kc, %i.kf
  %i.kk = fcmp reassoc nsz arcp contract afn ogt float %i.kj, 5.000000e-01
  %i.kl = fadd reassoc nsz arcp contract afn float %i.kc, -1.000000e+00
  %spec.select.i.i.i7.i = select nsz i1 %i.kk, float %i.kl, float %i.kc
  br label %_ryb_to_ucs_fast.exit.i8.i

_ryb_to_ucs_fast.exit.i8.i:                       ; preds = %bb.aa, %bb.z
  %.014.i.i.i9.i = phi nsz float [ %i.ki, %bb.z ], [ %i.kf, %bb.aa ]
  %.013.i.i.i10.i = phi nsz float [ %i.kc, %bb.z ], [ %spec.select.i.i.i7.i, %bb.aa ] ; 2 uses
  %i.km = sitofp reassoc nsz arcp contract afn i32 %.fr.i5.i to float
  %i.kn = fsub reassoc nnan nsz arcp contract afn float %i.ju, %i.km
  %i.ko = fsub reassoc nsz arcp contract afn float %.014.i.i.i9.i, %.013.i.i.i10.i
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, %i.kn
  %i.kq = fadd reassoc nsz arcp contract afn float %i.kp, %.013.i.i.i10.i ; 3 uses
  %i.kr = fcmp reassoc nsz arcp contract afn olt float %i.kq, 0.000000e+00
  %i.ks = fadd reassoc nsz arcp contract afn float %i.kq, 1.000000e+00
  %spec.select16.i.i.i11.i = select nsz i1 %i.kr, float %i.ks, float %i.kq
  %i.kt = fmul reassoc nsz arcp contract afn float %spec.select16.i.i.i11.i, f0x40C90FDB
  %i.ku = fadd reassoc nsz arcp contract afn float %i.kt, f0xC0490FDB
  %sincos.i.i.i18.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ku) ; 2 uses
  %sin.i.i.i19.i = extractvalue { float, float } %sincos.i.i.i18.i, 0 ; 3 uses
  %cos.i.i.i20.i = extractvalue { float, float } %sincos.i.i.i18.i, 1 ; 3 uses
  %invariant.op.i = fmul reassoc nsz arcp contract afn float %cos.i.i.i20.i, f0xC0A13362
  %invariant.op39.i = fmul reassoc nsz arcp contract afn float %sin.i.i.i19.i, f0x40204F91
  %factor.op.fmul.i = fmul reassoc nsz arcp contract afn float %cos.i.i.i20.i, f0x40985229
  %factor.op.fmul42.i = fmul reassoc nsz arcp contract afn float %sin.i.i.i19.i, f0x4037EFD4
  %4 = fsub reassoc nsz arcp contract afn float %invariant.op.i, %invariant.op39.i ; 2 uses
  %5 = fadd reassoc nsz arcp contract afn float %factor.op.fmul.i, %factor.op.fmul42.i ; 2 uses
  %invariant.op61.i = fmul reassoc nsz arcp contract afn float %4, f0xBFBEFF8B
  %invariant.op62.i = fmul reassoc nsz arcp contract afn float %5, f0xBFC32F7A
  br label %dt_UCS_JCH_to_xyY.exit.i.i17.i

dt_UCS_JCH_to_xyY.exit.i.i17.i:                   ; preds = %dt_UCS_JCH_to_sRGB.exit24.i, %_ryb_to_ucs_fast.exit.i8.i
  %.029.i.i.i = phi i32 [ 0, %_ryb_to_ucs_fast.exit.i8.i ], [ %i.nr, %dt_UCS_JCH_to_sRGB.exit24.i ]
  %.02428.i.i.i = phi float [ 2.000000e+00, %_ryb_to_ucs_fast.exit.i8.i ], [ %.024..i.i.i, %dt_UCS_JCH_to_sRGB.exit24.i ] ; 2 uses
  %.02527.i.i.i = phi float [ 0.000000e+00, %_ryb_to_ucs_fast.exit.i8.i ], [ %..025.i.i.i, %dt_UCS_JCH_to_sRGB.exit24.i ] ; 2 uses
  %i.kv = fadd reassoc nsz arcp contract afn float %.02527.i.i.i, %.02428.i.i.i ; 2 uses
  %i.kw = fmul reassoc nsz arcp contract afn float %i.kv, 5.000000e-01 ; 2 uses
  %i.kx = fmul reassoc nsz arcp contract afn float %i.kv, f0x3D298A54
  %i.ky = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.kx, float f0x3F5510A2) ; 4 uses
  %i.kz = fmul reassoc nsz arcp contract afn float %i.ky, %4
  %i.la = fmul reassoc nsz arcp contract afn float %i.ky, %5
  %.reass.i = fmul reassoc nsz arcp contract afn float %invariant.op61.i, %i.ky
  %6 = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.kz)
  %7 = fadd reassoc nsz arcp contract afn float %6, f0xBFB2C28D
  %8 = fdiv reassoc nsz arcp contract afn float %.reass.i, %7 ; 3 uses
  %.reass63.i = fmul reassoc nsz arcp contract afn float %invariant.op62.i, %i.ky
  %9 = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.la)
  %i.lb = fadd reassoc nsz arcp contract afn float %9, f0xBFB9C753
  %i.lc = fdiv reassoc nsz arcp contract afn float %.reass63.i, %i.lb ; 3 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %8, f0xBE1A9505
  %i.le = fmul reassoc nsz arcp contract afn float %i.lc, f0xBE1EE8D5
  %i.lf = fadd reassoc nsz arcp contract afn float %i.ld, f0xBC0A2B16
  %i.lg = fadd reassoc nsz arcp contract afn float %i.lf, %i.le
  %i.lh = fmul reassoc nsz arcp contract afn float %8, f0x3F70B489
  %i.li = fadd reassoc nsz arcp contract afn float %i.lc, %i.lh
  %i.lj = fadd reassoc nsz arcp contract afn float %i.li, f0xBCD1FB74 ; 5 uses
  %i.lk = fcmp reassoc nsz arcp contract afn ult float %i.lj, 0.000000e+00
  %i.ll = fcmp reassoc nsz arcp contract afn olt float %i.lj, f0x00800000
  %i.lm = select reassoc nsz arcp contract afn i1 %i.ll, float f0x00800000, float %i.lj
  %i.ln = fcmp reassoc nsz arcp contract afn ogt float %i.lj, f0x80800000
  %i.lo = select reassoc nsz arcp contract afn i1 %i.ln, float f0x80800000, float %i.lj
  %i.lp = select reassoc nsz arcp contract afn i1 %i.lk, float %i.lo, float %i.lm ; 2 uses
  %i.lq = fdiv reassoc nsz arcp contract afn float %i.lg, %i.lp ; 4 uses
  %i.lr = fcmp reassoc nsz arcp contract afn oeq float %i.lq, 0.000000e+00
  br i1 %i.lr, label %dt_UCS_JCH_to_XYZ.exit.i21.i, label %bb.ab

bb.ab:                                            ; preds = %dt_UCS_JCH_to_xyY.exit.i.i17.i
  %i.ls = fmul reassoc nsz arcp contract afn float %i.lc, f0x3E10B0E5
  %i.lt = fmul reassoc nsz arcp contract afn float %8, f0x3E2B2F00
  %i.lu = fadd reassoc nsz arcp contract afn float %i.lt, f0xBC0352A9
  %i.lv = fadd reassoc nsz arcp contract afn float %i.lu, %i.ls
  %i.lw = fdiv reassoc nsz arcp contract afn float %i.lv, %i.lp ; 2 uses
  %i.lx = fmul reassoc nsz arcp contract afn float %i.lw, f0x3EA88D83
  %i.ly = fdiv reassoc nsz arcp contract afn float %i.lx, %i.lq
  %i.lz = fadd reassoc nsz arcp contract afn float %i.lw, %i.lq
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lz, f0x3EA88D83
  %i.mb = fsub reassoc nsz arcp contract afn float f0x3EA88D83, %i.ma
  %i.mc = fdiv reassoc nsz arcp contract afn float %i.mb, %i.lq
  br label %dt_UCS_JCH_to_XYZ.exit.i21.i

dt_UCS_JCH_to_XYZ.exit.i21.i:                     ; preds = %bb.ab, %dt_UCS_JCH_to_xyY.exit.i.i17.i
  %.sink8.i.i22.i = phi float [ %i.ly, %bb.ab ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i17.i ] ; 3 uses
  %.sink.i.i23.i = phi float [ f0x3EA88D83, %bb.ab ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i17.i ] ; 3 uses
  %i.md = phi reassoc nsz arcp contract afn float [ %i.mc, %bb.ab ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i17.i ] ; 3 uses
  %i.me = fmul reassoc nsz arcp contract afn float %.sink8.i.i22.i, f0x404F639A
  %i.mf = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i23.i, f0x3FC4C0F4
  %i.mg = fsub reassoc nsz arcp contract afn float %i.me, %i.mf
  %i.mh = fmul reassoc nsz arcp contract afn float %i.md, f0xBEFF3F82
  %i.mi = fadd reassoc nsz arcp contract afn float %i.mg, %i.mh ; 3 uses
  %i.mj = fmul reassoc nsz arcp contract afn float %.sink8.i.i22.i, f0x3F7821D1
  %i.mk = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i23.i, f0x3FF0211F
  %i.ml = fsub reassoc nsz arcp contract afn float %i.mk, %i.mj
  %i.mm = fmul reassoc nsz arcp contract afn float %i.md, 4.155600e-02
  %i.mn = fadd reassoc nsz arcp contract afn float %i.ml, %i.mm ; 3 uses
  %i.mo = fmul reassoc nsz arcp contract afn float %.sink8.i.i22.i, 5.564340e-02
  %i.mp = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i23.i, f0x3E50EC2A
  %i.mq = fsub reassoc nsz arcp contract afn float %i.mo, %i.mp
  %i.mr = fmul reassoc nsz arcp contract afn float %i.md, f0x3F875328
  %i.ms = fadd reassoc nsz arcp contract afn float %i.mq, %i.mr ; 3 uses
  %i.mt = fcmp reassoc nsz arcp contract afn ugt float %i.mi, 3.130800e-03
  br i1 %i.mt, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %dt_UCS_JCH_to_XYZ.exit.i21.i
  %i.mu = fmul reassoc nnan nsz arcp contract afn float %i.mi, 1.292000e+01
  br label %bb.ae

bb.ad:                                            ; preds = %dt_UCS_JCH_to_XYZ.exit.i21.i
  %i.mv = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mi, float f0x3ED55555)
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mv, 1.055000e+00
  %i.mx = fadd reassoc nsz arcp contract afn float %i.mw, -5.500000e-02
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.my = phi reassoc nsz arcp contract afn float [ %i.mu, %bb.ac ], [ %i.mx, %bb.ad ] ; 2 uses
  %i.mz = fcmp reassoc nsz arcp contract afn ugt float %i.mn, 3.130800e-03
  br i1 %i.mz, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.na = fmul reassoc nnan nsz arcp contract afn float %i.mn, 1.292000e+01
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.nb = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.mn, float f0x3ED55555)
  %i.nc = fmul reassoc nsz arcp contract afn float %i.nb, 1.055000e+00
  %i.nd = fadd reassoc nsz arcp contract afn float %i.nc, -5.500000e-02
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ne = phi reassoc nsz arcp contract afn float [ %i.na, %bb.af ], [ %i.nd, %bb.ag ] ; 2 uses
  %i.nf = fcmp reassoc nsz arcp contract afn ugt float %i.ms, 3.130800e-03
  br i1 %i.nf, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ng = fmul reassoc nnan nsz arcp contract afn float %i.ms, 1.292000e+01
  br label %dt_UCS_JCH_to_sRGB.exit24.i

bb.aj:                                            ; preds = %bb.ah
  %i.nh = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ms, float f0x3ED55555)
  %i.ni = fmul reassoc nsz arcp contract afn float %i.nh, 1.055000e+00
  %i.nj = fadd reassoc nsz arcp contract afn float %i.ni, -5.500000e-02
  br label %dt_UCS_JCH_to_sRGB.exit24.i

dt_UCS_JCH_to_sRGB.exit24.i:                      ; preds = %bb.aj, %bb.ai
  %i.nk = phi reassoc nsz arcp contract afn float [ %i.ng, %bb.ai ], [ %i.nj, %bb.aj ] ; 2 uses
  %i.nl = fcmp reassoc nsz arcp contract afn oge float %i.my, 0.000000e+00
  %i.nm = fcmp reassoc nsz arcp contract afn oge float %i.ne, 0.000000e+00
  %or.cond.i.i.i = select i1 %i.nl, i1 %i.nm, i1 false
  %i.nn = fcmp reassoc nsz arcp contract afn oge float %i.nk, 0.000000e+00
  %or.cond5.i.i.i = select i1 %or.cond.i.i.i, i1 %i.nn, i1 false
  %i.no = fcmp reassoc nsz arcp contract afn ole float %i.my, 1.000000e+00
  %or.cond8.i.i.i = and i1 %i.no, %or.cond5.i.i.i
  %i.np = fcmp reassoc nsz arcp contract afn ole float %i.ne, 1.000000e+00
  %or.cond11.i.i.i = select i1 %or.cond8.i.i.i, i1 %i.np, i1 false
  %i.nq = fcmp reassoc nsz arcp contract afn ole float %i.nk, 1.000000e+00
  %or.cond14.i.i.i = select i1 %or.cond11.i.i.i, i1 %i.nq, i1 false ; 2 uses
  %..025.i.i.i = select nsz i1 %or.cond14.i.i.i, float %i.kw, float %.02527.i.i.i ; 2 uses
  %.024..i.i.i = select nsz i1 %or.cond14.i.i.i, float %.02428.i.i.i, float %i.kw
  %i.nr = add nuw nsw i32 %.029.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i32 %i.nr, 16
  br i1 %exitcond.not.i.i.i, label %dt_UCS_JCH_to_xyY.exit.i.i.i, label %dt_UCS_JCH_to_xyY.exit.i.i17.i

dt_UCS_JCH_to_xyY.exit.i.i.i:                     ; preds = %dt_UCS_JCH_to_sRGB.exit24.i
  %i.ns = fmul reassoc nsz arcp contract afn float %..025.i.i.i, f0x3D901BFB
  %i.nt = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ns, float f0x3F5510A2) ; 2 uses
  %i.nu = fmul reassoc nsz arcp contract afn float %i.nt, %cos.i.i.i20.i ; 2 uses
  %i.nv = fmul reassoc nsz arcp contract afn float %i.nt, %sin.i.i.i19.i ; 2 uses
  %i.nw = fmul reassoc nsz arcp contract afn float %i.nu, f0xC0A13362
  %i.nx = fmul reassoc nsz arcp contract afn float %i.nv, f0x40204F91
  %i.ny = fsub reassoc nsz arcp contract afn float %i.nw, %i.nx ; 2 uses
  %i.nz = fmul reassoc nsz arcp contract afn float %i.nu, f0x40985229
  %i.oa = fmul reassoc nsz arcp contract afn float %i.nv, f0x4037EFD4
  %i.ob = fadd reassoc nsz arcp contract afn float %i.nz, %i.oa ; 2 uses
  %i.oc = fmul reassoc nsz arcp contract afn float %i.ny, f0xBFBEFF8B
  %i.od = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ny)
  %i.oe = fadd reassoc nsz arcp contract afn float %i.od, f0xBFB2C28D
  %i.of = fdiv reassoc nsz arcp contract afn float %i.oc, %i.oe ; 3 uses
  %i.og = fmul reassoc nsz arcp contract afn float %i.ob, f0xBFC32F7A
  %i.oh = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ob)
  %i.oi = fadd reassoc nsz arcp contract afn float %i.oh, f0xBFB9C753
  %i.oj = fdiv reassoc nsz arcp contract afn float %i.og, %i.oi ; 3 uses
  %i.ok = fmul reassoc nsz arcp contract afn float %i.of, f0xBE1A9505
  %i.ol = fmul reassoc nsz arcp contract afn float %i.oj, f0xBE1EE8D5
  %i.om = fadd reassoc nsz arcp contract afn float %i.ok, f0xBC0A2B16
  %i.on = fadd reassoc nsz arcp contract afn float %i.om, %i.ol
  %i.oo = fmul reassoc nsz arcp contract afn float %i.of, f0x3F70B489
  %i.op = fadd reassoc nsz arcp contract afn float %i.oj, %i.oo
  %i.oq = fadd reassoc nsz arcp contract afn float %i.op, f0xBCD1FB74 ; 5 uses
  %i.or = fcmp reassoc nsz arcp contract afn ult float %i.oq, 0.000000e+00
  %i.os = fcmp reassoc nsz arcp contract afn olt float %i.oq, f0x00800000
  %i.ot = select reassoc nsz arcp contract afn i1 %i.os, float f0x00800000, float %i.oq
  %i.ou = fcmp reassoc nsz arcp contract afn ogt float %i.oq, f0x80800000
  %i.ov = select reassoc nsz arcp contract afn i1 %i.ou, float f0x80800000, float %i.oq
  %i.ow = select reassoc nsz arcp contract afn i1 %i.or, float %i.ov, float %i.ot ; 2 uses
  %i.ox = fdiv reassoc nsz arcp contract afn float %i.on, %i.ow ; 4 uses
  %i.oy = fcmp reassoc nsz arcp contract afn oeq float %i.ox, 0.000000e+00
  br i1 %i.oy, label %dt_UCS_JCH_to_XYZ.exit.i.i, label %bb.ak

bb.ak:                                            ; preds = %dt_UCS_JCH_to_xyY.exit.i.i.i
  %i.oz = fmul reassoc nsz arcp contract afn float %i.oj, f0x3E10B0E5
  %i.pa = fmul reassoc nsz arcp contract afn float %i.of, f0x3E2B2F00
  %i.pb = fadd reassoc nsz arcp contract afn float %i.pa, f0xBC0352A9
  %i.pc = fadd reassoc nsz arcp contract afn float %i.pb, %i.oz
  %i.pd = fdiv reassoc nsz arcp contract afn float %i.pc, %i.ow ; 2 uses
  %i.pe = fmul reassoc nsz arcp contract afn float %i.pd, f0x3EA88D83
  %i.pf = fdiv reassoc nsz arcp contract afn float %i.pe, %i.ox
  %i.pg = fadd reassoc nsz arcp contract afn float %i.pd, %i.ox
  %i.ph = fmul reassoc nsz arcp contract afn float %i.pg, f0x3EA88D83
  %i.pi = fsub reassoc nsz arcp contract afn float f0x3EA88D83, %i.ph
  %i.pj = fdiv reassoc nsz arcp contract afn float %i.pi, %i.ox
  br label %dt_UCS_JCH_to_XYZ.exit.i.i

dt_UCS_JCH_to_XYZ.exit.i.i:                       ; preds = %bb.ak, %dt_UCS_JCH_to_xyY.exit.i.i.i
  %.sink8.i.i.i = phi float [ %i.pf, %bb.ak ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i.i ] ; 3 uses
  %.sink.i.i.i = phi float [ f0x3EA88D83, %bb.ak ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i.i ] ; 3 uses
  %i.pk = phi reassoc nsz arcp contract afn float [ %i.pj, %bb.ak ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i.i ] ; 3 uses
  %i.pl = fmul reassoc nsz arcp contract afn float %.sink8.i.i.i, f0x404F639A
  %i.pm = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i.i, f0x3FC4C0F4
  %i.pn = fsub reassoc nsz arcp contract afn float %i.pl, %i.pm
  %i.po = fmul reassoc nsz arcp contract afn float %i.pk, f0xBEFF3F82
  %i.pp = fadd reassoc nsz arcp contract afn float %i.pn, %i.po ; 3 uses
  %i.pq = fmul reassoc nsz arcp contract afn float %.sink8.i.i.i, f0x3F7821D1
  %i.pr = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i.i, f0x3FF0211F
  %i.ps = fsub reassoc nsz arcp contract afn float %i.pr, %i.pq
  %i.pt = fmul reassoc nsz arcp contract afn float %i.pk, 4.155600e-02
  %i.pu = fadd reassoc nsz arcp contract afn float %i.ps, %i.pt ; 3 uses
  %i.pv = fmul reassoc nsz arcp contract afn float %.sink8.i.i.i, 5.564340e-02
  %i.pw = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i.i, f0x3E50EC2A
  %i.px = fsub reassoc nsz arcp contract afn float %i.pv, %i.pw
  %i.py = fmul reassoc nsz arcp contract afn float %i.pk, f0x3F875328
  %i.pz = fadd reassoc nsz arcp contract afn float %i.px, %i.py ; 3 uses
  %i.qa = fcmp reassoc nsz arcp contract afn ugt float %i.pp, 3.130800e-03
  br i1 %i.qa, label %bb.am, label %bb.al

bb.al:                                            ; preds = %dt_UCS_JCH_to_XYZ.exit.i.i
  %i.qb = fmul reassoc nnan nsz arcp contract afn float %i.pp, 1.292000e+01
  br label %bb.an

bb.am:                                            ; preds = %dt_UCS_JCH_to_XYZ.exit.i.i
  %i.qc = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.pp, float f0x3ED55555)
  %i.qd = fmul reassoc nsz arcp contract afn float %i.qc, 1.055000e+00
  %i.qe = fadd reassoc nsz arcp contract afn float %i.qd, -5.500000e-02
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.qf = phi reassoc nsz arcp contract afn float [ %i.qb, %bb.al ], [ %i.qe, %bb.am ] ; 3 uses
  %i.qg = fcmp reassoc nsz arcp contract afn ugt float %i.pu, 3.130800e-03
  br i1 %i.qg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.qh = fmul reassoc nnan nsz arcp contract afn float %i.pu, 1.292000e+01
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.qi = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.pu, float f0x3ED55555)
  %i.qj = fmul reassoc nsz arcp contract afn float %i.qi, 1.055000e+00
  %i.qk = fadd reassoc nsz arcp contract afn float %i.qj, -5.500000e-02
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ql = phi reassoc nsz arcp contract afn float [ %i.qh, %bb.ao ], [ %i.qk, %bb.ap ] ; 3 uses
  %i.qm = fcmp reassoc nsz arcp contract afn ugt float %i.pz, 3.130800e-03
  br i1 %i.qm, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.qn = fmul reassoc nnan nsz arcp contract afn float %i.pz, 1.292000e+01
  br label %dt_UCS_JCH_to_sRGB.exit.i

bb.as:                                            ; preds = %bb.aq
  %i.qo = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.pz, float f0x3ED55555)
end_hunk_0
begin_hunk_1_@_sync_custom_sliders:bb.a
  br label %_ucs_to_ryb_fast.exit

bb.c:                                             ; preds = %bb.a
  %i.v = fsub reassoc nsz arcp contract afn float %i.o, %i.r
  %i.w = fcmp reassoc nsz arcp contract afn ogt float %i.v, 5.000000e-01
  %i.x = fadd reassoc nsz arcp contract afn float %i.o, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.w, float %i.x, float %i.o
  br label %_ucs_to_ryb_fast.exit

_ucs_to_ryb_fast.exit:                            ; preds = %bb.b, %bb.c
  %.014.i.i = phi nsz float [ %i.u, %bb.b ], [ %i.r, %bb.c ]
  %.013.i.i = phi nsz float [ %i.o, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.y = sitofp reassoc nsz arcp contract afn i32 %i.i to float
  %i.z = fsub reassoc nsz arcp contract afn float %i.h, %i.y
  %i.aa = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.ab = fmul reassoc nsz arcp contract afn float %i.aa, %i.z
  %i.ac = fadd reassoc nsz arcp contract afn float %i.ab, %.013.i.i ; 3 uses
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.ac, 0.000000e+00
  %i.ae = fadd reassoc nsz arcp contract afn float %i.ac, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.ad, float %i.ae, float %i.ac
  %i.af = fmul reassoc nsz arcp contract afn float %spec.select16.i.i, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.f, float noundef %i.af) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !124
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !31
  %i.ak = fmul reassoc nsz arcp contract afn float %i.aj, 7.200000e+02 ; 2 uses
  %i.al = fptosi float %i.ak to i32               ; 2 uses
  %i.am = srem i32 %i.al, 720                     ; 2 uses
  %i.an = trunc nsw i32 %i.am to i16
  %.lhs.trunc.i.1 = add nsw i16 %i.an, 1
  %i.ao = srem i16 %.lhs.trunc.i.1, 720
  %i.ap = sext i32 %i.am to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.ap
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !31 ; 5 uses
  %i.as = sext i16 %i.ao to i64
  %i.at = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.as
  %i.au = load float, ptr %i.at, align 4, !tbaa !31 ; 4 uses
  %i.av = fsub reassoc nsz arcp contract afn float %i.au, %i.ar
  %i.aw = fcmp reassoc nsz arcp contract afn ogt float %i.av, 5.000000e-01
  br i1 %i.aw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.ax = fsub reassoc nsz arcp contract afn float %i.ar, %i.au
  %i.ay = fcmp reassoc nsz arcp contract afn ogt float %i.ax, 5.000000e-01
  %i.az = fadd reassoc nsz arcp contract afn float %i.ar, -1.000000e+00
  %spec.select.i.i.1 = select nsz i1 %i.ay, float %i.az, float %i.ar
  br label %_ucs_to_ryb_fast.exit.1

bb.e:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.ba = fadd reassoc nsz arcp contract afn float %i.au, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.1

_ucs_to_ryb_fast.exit.1:                          ; preds = %bb.e, %bb.d
  %.014.i.i.1 = phi nsz float [ %i.ba, %bb.e ], [ %i.au, %bb.d ]
  %.013.i.i.1 = phi nsz float [ %i.ar, %bb.e ], [ %spec.select.i.i.1, %bb.d ] ; 2 uses
  %i.bb = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  %i.bc = fsub reassoc nsz arcp contract afn float %i.ak, %i.bb
  %i.bd = fsub reassoc nsz arcp contract afn float %.014.i.i.1, %.013.i.i.1
  %i.be = fmul reassoc nsz arcp contract afn float %i.bd, %i.bc
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, %.013.i.i.1 ; 3 uses
  %i.bg = fcmp reassoc nsz arcp contract afn olt float %i.bf, 0.000000e+00
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bf, 1.000000e+00
  %spec.select16.i.i.1 = select nsz i1 %i.bg, float %i.bh, float %i.bf
  %i.bi = fmul reassoc nsz arcp contract afn float %spec.select16.i.i.1, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ah, float noundef %i.bi) #25
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !124
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !31
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, 7.200000e+02 ; 2 uses
  %i.bo = fptosi float %i.bn to i32               ; 2 uses
  %i.bp = srem i32 %i.bo, 720                     ; 2 uses
  %i.bq = trunc nsw i32 %i.bp to i16
  %.lhs.trunc.i.2 = add nsw i16 %i.bq, 1
  %i.br = srem i16 %.lhs.trunc.i.2, 720
  %i.bs = sext i32 %i.bp to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.bs
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !31 ; 5 uses
  %i.bv = sext i16 %i.br to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !31 ; 4 uses
  %i.by = fsub reassoc nsz arcp contract afn float %i.bx, %i.bu
  %i.bz = fcmp reassoc nsz arcp contract afn ogt float %i.by, 5.000000e-01
  br i1 %i.bz, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ucs_to_ryb_fast.exit.1
  %i.ca = fsub reassoc nsz arcp contract afn float %i.bu, %i.bx
  %i.cb = fcmp reassoc nsz arcp contract afn ogt float %i.ca, 5.000000e-01
  %i.cc = fadd reassoc nsz arcp contract afn float %i.bu, -1.000000e+00
  %spec.select.i.i.2 = select nsz i1 %i.cb, float %i.cc, float %i.bu
  br label %_ucs_to_ryb_fast.exit.2

bb.g:                                             ; preds = %_ucs_to_ryb_fast.exit.1
  %i.cd = fadd reassoc nsz arcp contract afn float %i.bx, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.2

_ucs_to_ryb_fast.exit.2:                          ; preds = %bb.g, %bb.f
  %.014.i.i.2 = phi nsz float [ %i.cd, %bb.g ], [ %i.bx, %bb.f ]
  %.013.i.i.2 = phi nsz float [ %i.bu, %bb.g ], [ %spec.select.i.i.2, %bb.f ] ; 2 uses
  %i.ce = sitofp reassoc nsz arcp contract afn i32 %i.bo to float
  %i.cf = fsub reassoc nsz arcp contract afn float %i.bn, %i.ce
  %i.cg = fsub reassoc nsz arcp contract afn float %.014.i.i.2, %.013.i.i.2
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %i.cf
  %i.ci = fadd reassoc nsz arcp contract afn float %i.ch, %.013.i.i.2 ; 3 uses
  %i.cj = fcmp reassoc nsz arcp contract afn olt float %i.ci, 0.000000e+00
  %i.ck = fadd reassoc nsz arcp contract afn float %i.ci, 1.000000e+00
  %spec.select16.i.i.2 = select nsz i1 %i.cj, float %i.ck, float %i.ci
  %i.cl = fmul reassoc nsz arcp contract afn float %spec.select16.i.i.2, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.bk, float noundef %i.cl) #25
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !124
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = load float, ptr %i.co, align 4, !tbaa !31
  %i.cq = fmul reassoc nsz arcp contract afn float %i.cp, 7.200000e+02 ; 2 uses
  %i.cr = fptosi float %i.cq to i32               ; 2 uses
  %i.cs = srem i32 %i.cr, 720                     ; 2 uses
  %i.ct = trunc nsw i32 %i.cs to i16
  %.lhs.trunc.i.3 = add nsw i16 %i.ct, 1
  %i.cu = srem i16 %.lhs.trunc.i.3, 720
  %i.cv = sext i32 %i.cs to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !31 ; 5 uses
  %i.cy = sext i16 %i.cu to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !31 ; 4 uses
  %i.db = fsub reassoc nsz arcp contract afn float %i.da, %i.cx
  %i.dc = fcmp reassoc nsz arcp contract afn ogt float %i.db, 5.000000e-01
  br i1 %i.dc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ucs_to_ryb_fast.exit.2
  %i.dd = fsub reassoc nsz arcp contract afn float %i.cx, %i.da
  %i.de = fcmp reassoc nsz arcp contract afn ogt float %i.dd, 5.000000e-01
  %i.df = fadd reassoc nsz arcp contract afn float %i.cx, -1.000000e+00
  %spec.select.i.i.3 = select nsz i1 %i.de, float %i.df, float %i.cx
  br label %_ucs_to_ryb_fast.exit.3

bb.i:                                             ; preds = %_ucs_to_ryb_fast.exit.2
  %i.dg = fadd reassoc nsz arcp contract afn float %i.da, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit.3

_ucs_to_ryb_fast.exit.3:                          ; preds = %bb.i, %bb.h
  %.014.i.i.3 = phi nsz float [ %i.dg, %bb.i ], [ %i.da, %bb.h ]
  %.013.i.i.3 = phi nsz float [ %i.cx, %bb.i ], [ %spec.select.i.i.3, %bb.h ] ; 2 uses
  %i.dh = sitofp reassoc nsz arcp contract afn i32 %i.cr to float
  %i.di = fsub reassoc nsz arcp contract afn float %i.cq, %i.dh
  %i.dj = fsub reassoc nsz arcp contract afn float %.014.i.i.3, %.013.i.i.3
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dj, %i.di
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, %.013.i.i.3 ; 3 uses
  %i.dm = fcmp reassoc nsz arcp contract afn olt float %i.dl, 0.000000e+00
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dl, 1.000000e+00
  %spec.select16.i.i.3 = select nsz i1 %i.dm, float %i.dn, float %i.dl
  %i.do = fmul reassoc nsz arcp contract afn float %spec.select16.i.i.3, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.cn, float noundef %i.do) #25
  %i.dp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  %i.dr = atomicrmw sub ptr %i.dq, i32 1 seq_cst, align 4 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_paint_all_sat_sliders(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4, !tbaa !30
  %i.c = load i32, ptr %1, align 4, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !36
  call fastcc void @get_harmony_nodes(i32 noundef %i.c, float noundef %i.e, ptr noundef nonnull %i.f, i32 noundef %i.h, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !30   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.b

._crit_edge:                                      ; preds = %_paint_sat_slider.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void

bb.b:                                             ; preds = %.lr.ph, %_paint_sat_slider.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_paint_sat_slider.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !124  ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4, !tbaa !31
  %i.p = fmul reassoc nsz arcp contract afn float %i.o, f0x40C90FDB
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, f0xC0490FDB
  %sincos.i.i.i11 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.q) ; 2 uses
  %sin.i.i.i12 = extractvalue { float, float } %sincos.i.i.i11, 0 ; 2 uses
  %cos.i.i.i13 = extractvalue { float, float } %sincos.i.i.i11, 1 ; 2 uses
  %invariant.op = fmul reassoc nsz arcp contract afn float %cos.i.i.i13, f0xC0A13362
  %invariant.op30 = fmul reassoc nsz arcp contract afn float %sin.i.i.i12, f0x40204F91
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %cos.i.i.i13, f0x40985229
  %factor.op.fmul33 = fmul reassoc nsz arcp contract afn float %sin.i.i.i12, f0x4037EFD4
  %2 = fsub reassoc nsz arcp contract afn float %invariant.op, %invariant.op30 ; 4 uses
  %3 = fadd reassoc nsz arcp contract afn float %factor.op.fmul, %factor.op.fmul33 ; 4 uses
  %invariant.op61 = fmul reassoc nsz arcp contract afn float %2, f0xBFBEFF8B
  %invariant.op62 = fmul reassoc nsz arcp contract afn float %3, f0xBFC32F7A
  br label %dt_UCS_JCH_to_xyY.exit.i.i10

dt_UCS_JCH_to_xyY.exit.i.i10:                     ; preds = %dt_UCS_JCH_to_sRGB.exit17, %bb.b
  %.029.i.i = phi i32 [ 0, %bb.b ], [ %i.cn, %dt_UCS_JCH_to_sRGB.exit17 ]
  %.02428.i.i = phi float [ 2.000000e+00, %bb.b ], [ %.024..i.i, %dt_UCS_JCH_to_sRGB.exit17 ] ; 2 uses
  %.02527.i.i = phi float [ 0.000000e+00, %bb.b ], [ %..025.i.i, %dt_UCS_JCH_to_sRGB.exit17 ] ; 2 uses
  %i.r = fadd reassoc nsz arcp contract afn float %.02527.i.i, %.02428.i.i ; 2 uses
  %i.s = fmul reassoc nsz arcp contract afn float %i.r, 5.000000e-01 ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn float %i.r, f0x3D298A54
  %i.u = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.t, float f0x3F5510A2) ; 4 uses
  %i.v = fmul reassoc nsz arcp contract afn float %2, %i.u
  %i.w = fmul reassoc nsz arcp contract afn float %3, %i.u
  %.reass = fmul reassoc nsz arcp contract afn float %i.u, %invariant.op61
  %4 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.v)
  %5 = fadd reassoc nsz arcp contract afn float %4, f0xBFB2C28D
  %6 = fdiv reassoc nsz arcp contract afn float %.reass, %5 ; 3 uses
  %.reass63 = fmul reassoc nsz arcp contract afn float %i.u, %invariant.op62
  %7 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.w)
  %i.x = fadd reassoc nsz arcp contract afn float %7, f0xBFB9C753
  %i.y = fdiv reassoc nsz arcp contract afn float %.reass63, %i.x ; 3 uses
  %i.z = fmul reassoc nsz arcp contract afn float %6, f0xBE1A9505
  %i.aa = fmul reassoc nsz arcp contract afn float %i.y, f0xBE1EE8D5
  %i.ab = fadd reassoc nsz arcp contract afn float %i.z, f0xBC0A2B16
  %i.ac = fadd reassoc nsz arcp contract afn float %i.ab, %i.aa
  %i.ad = fmul reassoc nsz arcp contract afn float %6, f0x3F70B489
  %i.ae = fadd reassoc nsz arcp contract afn float %i.y, %i.ad
  %i.af = fadd reassoc nsz arcp contract afn float %i.ae, f0xBCD1FB74 ; 5 uses
  %i.ag = fcmp reassoc nsz arcp contract afn ult float %i.af, 0.000000e+00
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %i.af, f0x00800000
  %i.ai = select reassoc nsz arcp contract afn i1 %i.ah, float f0x00800000, float %i.af
  %i.aj = fcmp reassoc nsz arcp contract afn ogt float %i.af, f0x80800000
  %i.ak = select reassoc nsz arcp contract afn i1 %i.aj, float f0x80800000, float %i.af
  %i.al = select reassoc nsz arcp contract afn i1 %i.ag, float %i.ak, float %i.ai ; 2 uses
  %i.am = fdiv reassoc nsz arcp contract afn float %i.ac, %i.al ; 4 uses
  %i.an = fcmp reassoc nsz arcp contract afn oeq float %i.am, 0.000000e+00
  br i1 %i.an, label %dt_UCS_JCH_to_XYZ.exit.i14, label %bb.c

bb.c:                                             ; preds = %dt_UCS_JCH_to_xyY.exit.i.i10
  %i.ao = fmul reassoc nsz arcp contract afn float %i.y, f0x3E10B0E5
  %i.ap = fmul reassoc nsz arcp contract afn float %6, f0x3E2B2F00
  %i.aq = fadd reassoc nsz arcp contract afn float %i.ap, f0xBC0352A9
  %i.ar = fadd reassoc nsz arcp contract afn float %i.aq, %i.ao
  %i.as = fdiv reassoc nsz arcp contract afn float %i.ar, %i.al ; 2 uses
  %i.at = fmul reassoc nsz arcp contract afn float %i.as, f0x3EA88D83
  %i.au = fdiv reassoc nsz arcp contract afn float %i.at, %i.am
  %i.av = fadd reassoc nsz arcp contract afn float %i.as, %i.am
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, f0x3EA88D83
  %i.ax = fsub reassoc nsz arcp contract afn float f0x3EA88D83, %i.aw
  %i.ay = fdiv reassoc nsz arcp contract afn float %i.ax, %i.am
  br label %dt_UCS_JCH_to_XYZ.exit.i14

dt_UCS_JCH_to_XYZ.exit.i14:                       ; preds = %bb.c, %dt_UCS_JCH_to_xyY.exit.i.i10
  %.sink8.i.i15 = phi float [ %i.au, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i10 ] ; 3 uses
  %.sink.i.i16 = phi float [ f0x3EA88D83, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i10 ] ; 3 uses
  %i.az = phi reassoc nsz arcp contract afn float [ %i.ay, %bb.c ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i10 ] ; 3 uses
  %i.ba = fmul reassoc nsz arcp contract afn float %.sink8.i.i15, f0x404F639A
  %i.bb = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i16, f0x3FC4C0F4
  %i.bc = fsub reassoc nsz arcp contract afn float %i.ba, %i.bb
  %i.bd = fmul reassoc nsz arcp contract afn float %i.az, f0xBEFF3F82
  %i.be = fadd reassoc nsz arcp contract afn float %i.bc, %i.bd ; 3 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %.sink8.i.i15, f0x3F7821D1
  %i.bg = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i16, f0x3FF0211F
  %i.bh = fsub reassoc nsz arcp contract afn float %i.bg, %i.bf
  %i.bi = fmul reassoc nsz arcp contract afn float %i.az, 4.155600e-02
  %i.bj = fadd reassoc nsz arcp contract afn float %i.bh, %i.bi ; 3 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %.sink8.i.i15, 5.564340e-02
  %i.bl = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i16, f0x3E50EC2A
  %i.bm = fsub reassoc nsz arcp contract afn float %i.bk, %i.bl
  %i.bn = fmul reassoc nsz arcp contract afn float %i.az, f0x3F875328
  %i.bo = fadd reassoc nsz arcp contract afn float %i.bm, %i.bn ; 3 uses
  %i.bp = fcmp reassoc nsz arcp contract afn ugt float %i.be, 3.130800e-03
  br i1 %i.bp, label %bb.e, label %bb.d

bb.d:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i14
  %i.bq = fmul reassoc nnan nsz arcp contract afn float %i.be, 1.292000e+01
  br label %bb.f

bb.e:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i14
  %i.br = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.be, float f0x3ED55555)
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, 1.055000e+00
  %i.bt = fadd reassoc nsz arcp contract afn float %i.bs, -5.500000e-02
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bu = phi reassoc nsz arcp contract afn float [ %i.bq, %bb.d ], [ %i.bt, %bb.e ] ; 2 uses
  %i.bv = fcmp reassoc nsz arcp contract afn ugt float %i.bj, 3.130800e-03
  br i1 %i.bv, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bw = fmul reassoc nnan nsz arcp contract afn float %i.bj, 1.292000e+01
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bj, float f0x3ED55555)
  %i.by = fmul reassoc nsz arcp contract afn float %i.bx, 1.055000e+00
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, -5.500000e-02
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ca = phi reassoc nsz arcp contract afn float [ %i.bw, %bb.g ], [ %i.bz, %bb.h ] ; 2 uses
  %i.cb = fcmp reassoc nsz arcp contract afn ugt float %i.bo, 3.130800e-03
  br i1 %i.cb, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = fmul reassoc nnan nsz arcp contract afn float %i.bo, 1.292000e+01
  br label %dt_UCS_JCH_to_sRGB.exit17

bb.k:                                             ; preds = %bb.i
  %i.cd = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.bo, float f0x3ED55555)
  %i.ce = fmul reassoc nsz arcp contract afn float %i.cd, 1.055000e+00
  %i.cf = fadd reassoc nsz arcp contract afn float %i.ce, -5.500000e-02
  br label %dt_UCS_JCH_to_sRGB.exit17

dt_UCS_JCH_to_sRGB.exit17:                        ; preds = %bb.k, %bb.j
  %i.cg = phi reassoc nsz arcp contract afn float [ %i.cc, %bb.j ], [ %i.cf, %bb.k ] ; 2 uses
  %i.ch = fcmp reassoc nsz arcp contract afn oge float %i.bu, 0.000000e+00
  %i.ci = fcmp reassoc nsz arcp contract afn oge float %i.ca, 0.000000e+00
  %or.cond.i.i = select i1 %i.ch, i1 %i.ci, i1 false
  %i.cj = fcmp reassoc nsz arcp contract afn oge float %i.cg, 0.000000e+00
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.cj, i1 false
  %i.ck = fcmp reassoc nsz arcp contract afn ole float %i.bu, 1.000000e+00
  %or.cond8.i.i = and i1 %i.ck, %or.cond5.i.i
  %i.cl = fcmp reassoc nsz arcp contract afn ole float %i.ca, 1.000000e+00
  %or.cond11.i.i = select i1 %or.cond8.i.i, i1 %i.cl, i1 false
  %i.cm = fcmp reassoc nsz arcp contract afn ole float %i.cg, 1.000000e+00
  %or.cond14.i.i = select i1 %or.cond11.i.i, i1 %i.cm, i1 false ; 2 uses
  %..025.i.i = select nsz i1 %or.cond14.i.i, float %i.s, float %.02527.i.i ; 3 uses
  %.024..i.i = select nsz i1 %or.cond14.i.i, float %.02428.i.i, float %i.s
  %i.cn = add nuw nsw i32 %.029.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.cn, 16
  br i1 %exitcond.not.i.i, label %_find_max_chroma.exit.i, label %dt_UCS_JCH_to_xyY.exit.i.i10

_find_max_chroma.exit.i:                          ; preds = %dt_UCS_JCH_to_sRGB.exit17
  %i.co = fmul reassoc nsz arcp contract afn float %..025.i.i, f0x3DB73DFB
  %invariant.op64 = fmul reassoc nsz arcp contract afn float %2, f0xBFBEFF8B
  %invariant.op66 = fmul reassoc nsz arcp contract afn float %3, f0xBFC32F7A
  br label %dt_UCS_JCH_to_xyY.exit.i.i

dt_UCS_JCH_to_xyY.exit.i.i:                       ; preds = %dt_UCS_JCH_to_sRGB.exit, %_find_max_chroma.exit.i
  %.019.i = phi i32 [ 0, %_find_max_chroma.exit.i ], [ %i.fl, %dt_UCS_JCH_to_sRGB.exit ] ; 2 uses
  %i.cp = uitofp nsz nneg i32 %.019.i to float    ; 3 uses
  %i.cq = fmul reassoc nnan nsz arcp contract afn float %i.cp, f0x3D579436 ; 2 uses
  %i.cr = fcmp reassoc nsz arcp contract afn ugt float %i.cq, 5.000000e-01
  %i.cs = fmul reassoc nsz arcp contract afn float %i.co, %i.cp
  %i.ct = fmul reassoc nnan nsz arcp contract afn float %i.cp, f0x3C8158EC
  %reass.add = fadd reassoc nnan nsz arcp contract afn float %i.ct, f0x3F333334
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %..025.i.i
  %i.cu = select reassoc nsz arcp contract afn i1 %i.cr, float %reass.mul, float %i.cs
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cu, f0x3DA98A54
  %i.cw = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.cv, float f0x3F5510A2) ; 4 uses
  %8 = fmul reassoc nsz arcp contract afn float %2, %i.cw
  %9 = fmul reassoc nsz arcp contract afn float %3, %i.cw
  %.reass65 = fmul reassoc nsz arcp contract afn float %i.cw, %invariant.op64
  %10 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %8)
  %11 = fadd reassoc nsz arcp contract afn float %10, f0xBFB2C28D
  %12 = fdiv reassoc nsz arcp contract afn float %.reass65, %11 ; 3 uses
  %.reass67 = fmul reassoc nsz arcp contract afn float %i.cw, %invariant.op66
  %13 = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %9)
  %14 = fadd reassoc nsz arcp contract afn float %13, f0xBFB9C753
  %15 = fdiv reassoc nsz arcp contract afn float %.reass67, %14 ; 3 uses
  %16 = fmul reassoc nsz arcp contract afn float %12, f0xBE1A9505
  %17 = fmul reassoc nsz arcp contract afn float %15, f0xBE1EE8D5
  %18 = fadd reassoc nsz arcp contract afn float %16, f0xBC0A2B16
  %19 = fadd reassoc nsz arcp contract afn float %18, %17
  %20 = fmul reassoc nsz arcp contract afn float %12, f0x3F70B489
  %21 = fadd reassoc nsz arcp contract afn float %15, %20
  %i.cx = fadd reassoc nsz arcp contract afn float %21, f0xBCD1FB74 ; 5 uses
  %i.cy = fcmp reassoc nsz arcp contract afn ult float %i.cx, 0.000000e+00
  %i.cz = fcmp reassoc nsz arcp contract afn olt float %i.cx, f0x00800000
  %i.da = select reassoc nsz arcp contract afn i1 %i.cz, float f0x00800000, float %i.cx
  %i.db = fcmp reassoc nsz arcp contract afn ogt float %i.cx, f0x80800000
  %i.dc = select reassoc nsz arcp contract afn i1 %i.db, float f0x80800000, float %i.cx
  %i.dd = select reassoc nsz arcp contract afn i1 %i.cy, float %i.dc, float %i.da ; 2 uses
  %i.de = fdiv reassoc nsz arcp contract afn float %19, %i.dd ; 4 uses
  %i.df = fcmp reassoc nsz arcp contract afn oeq float %i.de, 0.000000e+00
  br i1 %i.df, label %dt_UCS_JCH_to_XYZ.exit.i, label %bb.l

bb.l:                                             ; preds = %dt_UCS_JCH_to_xyY.exit.i.i
  %i.dg = fmul reassoc nsz arcp contract afn float %15, f0x3E10B0E5
  %i.dh = fmul reassoc nsz arcp contract afn float %12, f0x3E2B2F00
  %i.di = fadd reassoc nsz arcp contract afn float %i.dh, f0xBC0352A9
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %i.dg
  %i.dk = fdiv reassoc nsz arcp contract afn float %i.dj, %i.dd ; 2 uses
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dk, f0x3EA88D83
  %i.dm = fdiv reassoc nsz arcp contract afn float %i.dl, %i.de
  %i.dn = fadd reassoc nsz arcp contract afn float %i.dk, %i.de
  %i.do = fmul reassoc nsz arcp contract afn float %i.dn, f0x3EA88D83
  %i.dp = fsub reassoc nsz arcp contract afn float f0x3EA88D83, %i.do
  %i.dq = fdiv reassoc nsz arcp contract afn float %i.dp, %i.de
  br label %dt_UCS_JCH_to_XYZ.exit.i

dt_UCS_JCH_to_XYZ.exit.i:                         ; preds = %bb.l, %dt_UCS_JCH_to_xyY.exit.i.i
  %.sink8.i.i = phi float [ %i.dm, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i ] ; 3 uses
  %.sink.i.i = phi float [ f0x3EA88D83, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i ] ; 3 uses
  %i.dr = phi reassoc nsz arcp contract afn float [ %i.dq, %bb.l ], [ 0.000000e+00, %dt_UCS_JCH_to_xyY.exit.i.i ] ; 3 uses
  %i.ds = fmul reassoc nsz arcp contract afn float %.sink8.i.i, f0x404F639A
  %i.dt = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i, f0x3FC4C0F4
  %i.du = fsub reassoc nsz arcp contract afn float %i.ds, %i.dt
  %i.dv = fmul reassoc nsz arcp contract afn float %i.dr, f0xBEFF3F82
  %i.dw = fadd reassoc nsz arcp contract afn float %i.du, %i.dv ; 3 uses
  %i.dx = fmul reassoc nsz arcp contract afn float %.sink8.i.i, f0x3F7821D1
  %i.dy = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i, f0x3FF0211F
  %i.dz = fsub reassoc nsz arcp contract afn float %i.dy, %i.dx
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dr, 4.155600e-02
  %i.eb = fadd reassoc nsz arcp contract afn float %i.dz, %i.ea ; 3 uses
  %i.ec = fmul reassoc nsz arcp contract afn float %.sink8.i.i, 5.564340e-02
  %i.ed = fmul reassoc nnan nsz arcp contract afn float %.sink.i.i, f0x3E50EC2A
  %i.ee = fsub reassoc nsz arcp contract afn float %i.ec, %i.ed
  %i.ef = fmul reassoc nsz arcp contract afn float %i.dr, f0x3F875328
  %i.eg = fadd reassoc nsz arcp contract afn float %i.ee, %i.ef ; 3 uses
  %i.eh = fcmp reassoc nsz arcp contract afn ugt float %i.dw, 3.130800e-03
  br i1 %i.eh, label %bb.n, label %bb.m

bb.m:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i
  %i.ei = fmul reassoc nnan nsz arcp contract afn float %i.dw, 1.292000e+01
  br label %bb.o

bb.n:                                             ; preds = %dt_UCS_JCH_to_XYZ.exit.i
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.dw, float f0x3ED55555)
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, 1.055000e+00
  %i.el = fadd reassoc nsz arcp contract afn float %i.ek, -5.500000e-02
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.em = phi reassoc nsz arcp contract afn float [ %i.ei, %bb.m ], [ %i.el, %bb.n ] ; 3 uses
  %i.en = fcmp reassoc nsz arcp contract afn ugt float %i.eb, 3.130800e-03
  br i1 %i.en, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eo = fmul reassoc nnan nsz arcp contract afn float %i.eb, 1.292000e+01
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.ep = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.eb, float f0x3ED55555)
  %i.eq = fmul reassoc nsz arcp contract afn float %i.ep, 1.055000e+00
  %i.er = fadd reassoc nsz arcp contract afn float %i.eq, -5.500000e-02
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.es = phi reassoc nsz arcp contract afn float [ %i.eo, %bb.p ], [ %i.er, %bb.q ] ; 3 uses
  %i.et = fcmp reassoc nsz arcp contract afn ugt float %i.eg, 3.130800e-03
  br i1 %i.et, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = fmul reassoc nnan nsz arcp contract afn float %i.eg, 1.292000e+01
  br label %dt_UCS_JCH_to_sRGB.exit

bb.t:                                             ; preds = %bb.r
  %i.ev = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.eg, float f0x3ED55555)
  %i.ew = fmul reassoc nsz arcp contract afn float %i.ev, 1.055000e+00
  %i.ex = fadd reassoc nsz arcp contract afn float %i.ew, -5.500000e-02
  br label %dt_UCS_JCH_to_sRGB.exit

dt_UCS_JCH_to_sRGB.exit:                          ; preds = %bb.t, %bb.s
  %i.ey = phi reassoc nsz arcp contract afn float [ %i.eu, %bb.s ], [ %i.ex, %bb.t ] ; 3 uses
  %i.ez = fcmp reassoc nsz arcp contract afn ogt float %i.em, 1.000000e+00
  %i.fa = fcmp reassoc nsz arcp contract afn olt float %i.em, 0.000000e+00
  %i.fb = select reassoc nsz arcp contract afn i1 %i.fa, float 0.000000e+00, float %i.em
  %i.fc = select reassoc nsz arcp contract afn i1 %i.ez, float 1.000000e+00, float %i.fb
  %i.fd = fcmp reassoc nsz arcp contract afn ogt float %i.es, 1.000000e+00
  %i.fe = fcmp reassoc nsz arcp contract afn olt float %i.es, 0.000000e+00
  %i.ff = select reassoc nsz arcp contract afn i1 %i.fe, float 0.000000e+00, float %i.es
  %i.fg = select reassoc nsz arcp contract afn i1 %i.fd, float 1.000000e+00, float %i.ff
  %i.fh = fcmp reassoc nsz arcp contract afn ogt float %i.ey, 1.000000e+00
  %i.fi = fcmp reassoc nsz arcp contract afn olt float %i.ey, 0.000000e+00
  %i.fj = select reassoc nsz arcp contract afn i1 %i.fi, float 0.000000e+00, float %i.ey
  %i.fk = select reassoc nsz arcp contract afn i1 %i.fh, float 1.000000e+00, float %i.fj
  tail call void @dt_bauhaus_slider_set_stop(ptr noundef %i.m, float noundef %i.cq, float noundef %i.fc, float noundef %i.fg, float noundef %i.fk) #25
  %i.fl = add nuw nsw i32 %.019.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.fl, 20
  br i1 %exitcond.not.i, label %_paint_sat_slider.exit, label %dt_UCS_JCH_to_xyY.exit.i.i

_paint_sat_slider.exit:                           ; preds = %dt_UCS_JCH_to_sRGB.exit
  tail call void @gtk_widget_queue_draw(ptr noundef %i.m) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @gui_update(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !53  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !75   ; 9 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = atomicrmw add ptr %i.f, i32 1 seq_cst, align 4 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !122
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !35
  %i.l = fmul reassoc nsz arcp contract afn float %i.k, 7.200000e+02 ; 2 uses
  %i.m = fptosi float %i.l to i32                 ; 2 uses
  %i.n = srem i32 %i.m, 720                       ; 2 uses
  %i.o = trunc nsw i32 %i.n to i16
  %.lhs.trunc.i = add nsw i16 %i.o, 1
  %i.p = srem i16 %.lhs.trunc.i, 720
  %i.q = sext i32 %i.n to i64
  %i.r = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.q
  %i.s = load float, ptr %i.r, align 4, !tbaa !31 ; 5 uses
  %i.t = sext i16 %i.p to i64
  %i.u = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !31 ; 4 uses
  %i.w = fsub reassoc nsz arcp contract afn float %i.v, %i.s
  %i.x = fcmp reassoc nsz arcp contract afn ogt float %i.w, 5.000000e-01
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = fadd reassoc nsz arcp contract afn float %i.v, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit

bb.c:                                             ; preds = %bb.a
  %i.z = fsub reassoc nsz arcp contract afn float %i.s, %i.v
  %i.aa = fcmp reassoc nsz arcp contract afn ogt float %i.z, 5.000000e-01
  %i.ab = fadd reassoc nsz arcp contract afn float %i.s, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.aa, float %i.ab, float %i.s
  br label %_ucs_to_ryb_fast.exit

_ucs_to_ryb_fast.exit:                            ; preds = %bb.b, %bb.c
  %.014.i.i = phi nsz float [ %i.y, %bb.b ], [ %i.v, %bb.c ]
  %.013.i.i = phi nsz float [ %i.s, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.ac = sitofp reassoc nsz arcp contract afn i32 %i.m to float
  %i.ad = fsub reassoc nsz arcp contract afn float %i.l, %i.ac
  %i.ae = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.af = fmul reassoc nsz arcp contract afn float %i.ae, %i.ad
  %i.ag = fadd reassoc nsz arcp contract afn float %i.af, %.013.i.i ; 3 uses
  %i.ah = fcmp reassoc nsz arcp contract afn olt float %i.ag, 0.000000e+00
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ag, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.ah, float %i.ai, float %i.ag
  %i.aj = fmul reassoc nsz arcp contract afn float %spec.select16.i.i, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.i, float noundef %i.aj) #25
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !124
  %i.ap = load float, ptr %i.al, align 4, !tbaa !31
  %i.aq = fmul reassoc nsz arcp contract afn float %i.ap, 7.200000e+02 ; 2 uses
  %i.ar = fptosi float %i.aq to i32               ; 2 uses
  %i.as = srem i32 %i.ar, 720                     ; 2 uses
  %i.at = trunc nsw i32 %i.as to i16
  %.lhs.trunc.i16 = add nsw i16 %i.at, 1
  %i.au = srem i16 %.lhs.trunc.i16, 720
  %i.av = sext i32 %i.as to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.av
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !31 ; 5 uses
  %i.ay = sext i16 %i.au to i64
  %i.az = getelementptr inbounds [4 x i8], ptr @s_ucs_to_ryb_lut, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4, !tbaa !31 ; 4 uses
  %i.bb = fsub reassoc nsz arcp contract afn float %i.ba, %i.ax
  %i.bc = fcmp reassoc nsz arcp contract afn ogt float %i.bb, 5.000000e-01
  br i1 %i.bc, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.bd = fadd reassoc nsz arcp contract afn float %i.ba, -1.000000e+00
  br label %_ucs_to_ryb_fast.exit21

bb.e:                                             ; preds = %_ucs_to_ryb_fast.exit
  %i.be = fsub reassoc nsz arcp contract afn float %i.ax, %i.ba
  %i.bf = fcmp reassoc nsz arcp contract afn ogt float %i.be, 5.000000e-01
  %i.bg = fadd reassoc nsz arcp contract afn float %i.ax, -1.000000e+00
  %spec.select.i.i17 = select nsz i1 %i.bf, float %i.bg, float %i.ax
  br label %_ucs_to_ryb_fast.exit21

_ucs_to_ryb_fast.exit21:                          ; preds = %bb.d, %bb.e
  %.014.i.i18 = phi nsz float [ %i.bd, %bb.d ], [ %i.ba, %bb.e ]
  %.013.i.i19 = phi nsz float [ %i.ax, %bb.d ], [ %spec.select.i.i17, %bb.e ] ; 2 uses
  %i.bh = sitofp reassoc nsz arcp contract afn i32 %i.ar to float
  %i.bi = fsub reassoc nsz arcp contract afn float %i.aq, %i.bh
  %i.bj = fsub reassoc nsz arcp contract afn float %.014.i.i18, %.013.i.i19
  %i.bk = fmul reassoc nsz arcp contract afn float %i.bj, %i.bi
  %i.bl = fadd reassoc nsz arcp contract afn float %i.bk, %.013.i.i19 ; 3 uses
  %i.bm = fcmp reassoc nsz arcp contract afn olt float %i.bl, 0.000000e+00
  %i.bn = fadd reassoc nsz arcp contract afn float %i.bl, 1.000000e+00
  %spec.select16.i.i20 = select nsz i1 %i.bm, float %i.bn, float %i.bl
  %i.bo = fmul reassoc nsz arcp contract afn float %spec.select16.i.i20, 3.600000e+02
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ao, float noundef %i.bo) #25
  %i.bp = load ptr, ptr %i.am, align 8, !tbaa !124
end_hunk_1
begin_hunk_2_@dt_lib_histogram_get_harmony
declare void @dt_lib_histogram_get_harmony(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_lib_histogram_get_sector_angles(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_visible(ptr noundef, i32 noundef) local_unnamed_addr #3

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

bb.c:                                             ; preds = %bb.b
  %sext = shl i64 %i.i, 32
  %i.t = ashr exact i64 %sext, 30
  %i.u = getelementptr inbounds i8, ptr %i.a, i64 %i.t
  %i.v = load float, ptr %i.u, align 4, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef 2.500000e-01, double noundef 2.500000e-01, double noundef 2.500000e-01) #25
  tail call void @cairo_paint(ptr noundef %1) #25
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %.thread
  %.11723 = phi float [ %i.o, %.thread ], [ %i.v, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call fastcc void @_hue_to_srgb(float noundef %.11723, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e)
  %i.w = load float, ptr %i.c, align 4, !tbaa !31
  %i.x = fpext reassoc nsz arcp contract afn float %i.w to double
  %i.y = load float, ptr %i.d, align 4, !tbaa !31
  %i.z = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.aa = load float, ptr %i.e, align 4, !tbaa !31
  %i.ab = fpext reassoc nsz arcp contract afn float %i.aa to double
  tail call void @cairo_set_source_rgb(ptr noundef %1, double noundef %i.x, double noundef %i.z, double noundef %i.ab) #25
  tail call void @cairo_paint(ptr noundef %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 1
}

declare ptr @g_object_get_data(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgb(ptr noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @dt_lib_histogram_set_harmony(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @_apply_harmony_guide(ptr noundef %0, ptr nofree noundef captures(none) initializes((0, 8)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !118
  %i.b = add i32 %i.a, -1
  store i32 %i.b, ptr %1, align 4, !tbaa !34
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !119
  %i.e = sitofp reassoc nsz arcp contract afn i32 %i.d to float
  %i.f = fmul reassoc nnan nsz arcp contract afn float %i.e, 2.000000e+00 ; 2 uses
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
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = fadd reassoc nsz arcp contract afn float %i.p, -1.000000e+00
  br label %_ryb_to_ucs_fast.exit

bb.c:                                             ; preds = %bb.a
  %i.t = fsub reassoc nsz arcp contract afn float %i.m, %i.p
  %i.u = fcmp reassoc nsz arcp contract afn ogt float %i.t, 5.000000e-01
  %i.v = fadd reassoc nsz arcp contract afn float %i.m, -1.000000e+00
  %spec.select.i.i = select nsz i1 %i.u, float %i.v, float %i.m
  br label %_ryb_to_ucs_fast.exit

_ryb_to_ucs_fast.exit:                            ; preds = %bb.b, %bb.c
  %.014.i.i = phi nsz float [ %i.s, %bb.b ], [ %i.p, %bb.c ]
  %.013.i.i = phi nsz float [ %i.m, %bb.b ], [ %spec.select.i.i, %bb.c ] ; 2 uses
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.g to float
  %i.x = fsub reassoc nnan nsz arcp contract afn float %i.f, %i.w
  %i.y = fsub reassoc nsz arcp contract afn float %.014.i.i, %.013.i.i
  %i.z = fmul reassoc nsz arcp contract afn float %i.y, %i.x
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %.013.i.i ; 3 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt float %i.aa, 0.000000e+00
  %i.ac = fadd reassoc nsz arcp contract afn float %i.aa, 1.000000e+00
  %spec.select16.i.i = select nsz i1 %i.ab, float %i.ac, float %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %spec.select16.i.i, ptr %i.ad, align 4, !tbaa !35
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = atomicrmw add ptr %i.af, i32 1 seq_cst, align 4 ; 0 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !79
  %i.ai = load i32, ptr %1, align 4, !tbaa !34
  tail call void @dt_bauhaus_combobox_set(ptr noundef %i.ah, i32 noundef %i.ai) #25
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !122
  %i.al = load i32, ptr %i.c, align 4, !tbaa !119
  %i.am = sitofp reassoc nsz arcp contract afn i32 %i.al to float
  tail call void @dt_bauhaus_slider_set(ptr noundef %i.ak, float noundef %i.am) #25
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !120
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 104
  %i.ap = atomicrmw sub ptr %i.ao, i32 1 seq_cst, align 4 ; 0 uses
  tail call void @gui_changed(ptr noundef %0, ptr noundef null, ptr noundef null)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !127
  tail call void @dt_dev_add_history_item(ptr noundef %i.ar, ptr noundef %0, i32 noundef 1) #25
  ret void
}

declare void @dt_lib_histogram_set_scope(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_lib_histogram_set_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.floor.v8f32(<8 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.floor.v4f32(<4 x float>) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.maxnum.v3f32(<3 x float>, <3 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v3f32(float, <3 x float>) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0,1) }
attributes #27 = { nounwind allocsize(0) }
attributes #28 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!13 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!14 = !{!"p1 _ZTS18dt_histogram_roi_t", !11, i64 0}
!15 = !{!"dt_dev_histogram_collection_params_t", !14, i64 0, !8, i64 8}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !17, i64 8, !8, i64 16, !8, i64 20}
!19 = !{!"float", !7, i64 0}
!20 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !19, i64 16}
!21 = !{!"short", !7, i64 0}
!22 = !{!"", !21, i64 0, !21, i64 2}
!23 = !{!"", !8, i64 0, !7, i64 16}
!24 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !22, i64 48, !23, i64 64, !7, i64 96, !8, i64 112}
!25 = !{!"p1 _ZTS11_GHashTable", !11, i64 0}
!26 = !{!"p1 float", !11, i64 0}
!27 = !{!"dt_dev_distorted_mask_cache_t", !26, i64 0, !20, i64 8, !17, i64 32, !17, i64 40}
!28 = !{!"dt_dev_pixelpipe_iop_t", !12, i64 0, !13, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !8, i64 36, !15, i64 40, !16, i64 56, !18, i64 64, !7, i64 88, !19, i64 104, !8, i64 108, !8, i64 112, !17, i64 120, !8, i64 128, !8, i64 132, !20, i64 136, !20, i64 156, !20, i64 176, !20, i64 196, !8, i64 216, !8, i64 220, !24, i64 224, !24, i64 352, !7, i64 480, !8, i64 516, !25, i64 520, !27, i64 528, !27, i64 576}
!29 = !{!28, !11, i64 16}
!30 = !{!8, !8, i64 0}
!31 = !{!19, !19, i64 0}
!32 = !{!7, !7, i64 0}
!33 = !{!"dt_iop_colorharmonizer_params_t", !8, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !7, i64 20, !8, i64 36, !7, i64 40, !19, i64 56}
!34 = !{!33, !8, i64 0}
!35 = !{!33, !19, i64 4}
!36 = !{!33, !8, i64 36}
!37 = !{!"", !8, i64 0, !7, i64 4}
!38 = !{!37, !8, i64 0}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"branch_weights", i32 4, i32 28}
!42 = !{!"p1 _ZTS8_GModule", !11, i64 0}
!43 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!44 = !{!"dt_pthread_mutex_t", !7, i64 0}
!45 = !{!"p1 _ZTS25dt_develop_blend_params_t", !11, i64 0}
!46 = !{!"", !25, i64 0, !25, i64 8}
!47 = !{!"", !12, i64 0, !8, i64 8}
!48 = !{!"", !46, i64 0, !47, i64 16}
!49 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!50 = !{!"p1 _ZTS7_GSList", !11, i64 0}
!51 = !{!"p1 _ZTS18dt_iop_module_so_t", !11, i64 0}
!52 = !{!"dt_iop_module_t", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !42, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !16, i64 608, !18, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !43, i64 664, !8, i64 672, !8, i64 676, !11, i64 680, !11, i64 688, !8, i64 696, !11, i64 704, !44, i64 712, !11, i64 752, !11, i64 760, !45, i64 768, !45, i64 776, !11, i64 784, !48, i64 792, !49, i64 824, !49, i64 832, !49, i64 840, !49, i64 848, !49, i64 856, !49, i64 864, !49, i64 872, !8, i64 880, !49, i64 888, !49, i64 896, !49, i64 904, !50, i64 912, !50, i64 920, !49, i64 928, !49, i64 936, !8, i64 944, !51, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !49, i64 1096, !11, i64 1104, !8, i64 1112}
!53 = !{!52, !11, i64 704}
!54 = !{!"any p2 pointer", !11, i64 0}
!55 = !{!"p1 long", !11, i64 0}
!56 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !11, i64 0}
!57 = !{!"dt_dev_pixelpipe_cache_t", !8, i64 0, !17, i64 8, !17, i64 16, !54, i64 24, !55, i64 32, !56, i64 40, !55, i64 48, !16, i64 56, !16, i64 64, !17, i64 72, !8, i64 80, !17, i64 88, !17, i64 96, !8, i64 104, !8, i64 108, !8, i64 112}
!58 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !11, i64 0}
!59 = !{!"p1 _ZTS6_GList", !11, i64 0}
!60 = !{!"p1 omnipotent char", !11, i64 0}
!61 = !{!"dt_dev_detail_mask_t", !20, i64 0, !17, i64 24, !26, i64 32}
!62 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!63 = !{!"double", !7, i64 0}
!64 = !{!"dt_image_geoloc_t", !63, i64 0, !63, i64 8, !63, i64 16}
!65 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!66 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!67 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !19, i64 8, !19, i64 12, !19, i64 16, !19, i64 20, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !17, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !19, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !17, i64 1448, !17, i64 1456, !17, i64 1464, !17, i64 1472, !8, i64 1480, !24, i64 1488, !7, i64 1616, !60, i64 1656, !8, i64 1664, !8, i64 1668, !62, i64 1672, !64, i64 1680, !65, i64 1704, !21, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !19, i64 1756, !19, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !59, i64 1856, !66, i64 1864, !8, i64 1872, !8, i64 1876}
!68 = !{!"dt_dev_pixelpipe_t", !57, i64 0, !8, i64 120, !17, i64 128, !26, i64 136, !8, i64 144, !8, i64 148, !19, i64 152, !8, i64 156, !8, i64 160, !24, i64 176, !58, i64 304, !58, i64 312, !58, i64 320, !58, i64 328, !59, i64 336, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !60, i64 360, !17, i64 368, !8, i64 376, !8, i64 380, !19, i64 384, !7, i64 388, !17, i64 416, !44, i64 424, !44, i64 464, !44, i64 504, !8, i64 544, !8, i64 548, !8, i64 552, !61, i64 560, !8, i64 600, !8, i64 604, !8, i64 608, !7, i64 612, !8, i64 616, !8, i64 620, !8, i64 624, !8, i64 628, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !67, i64 656, !8, i64 2544, !60, i64 2552, !8, i64 2560, !59, i64 2568, !59, i64 2576, !59, i64 2584, !8, i64 2592, !26, i64 2600, !17, i64 2608, !7, i64 2616, !7, i64 2632}
!69 = !{!"p1 _ZTS7_GtkBox", !11, i64 0}
!70 = !{!"p1 _ZTS11dt_action_t", !11, i64 0}
!71 = !{!"_gui_collapsible_section_t", !69, i64 0, !60, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !69, i64 40, !70, i64 48}
!72 = !{!"dt_iop_colorharmonizer_gui_data_t", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !7, i64 88, !7, i64 120, !7, i64 152, !7, i64 184, !7, i64 216, !7, i64 248, !71, i64 280, !7, i64 336, !8, i64 1776, !7, i64 1784}
!73 = !{!72, !8, i64 1776}
!74 = !{!72, !49, i64 64}
!75 = !{!52, !11, i64 680}
!76 = !{!"dt_action_t", !8, i64 0, !60, i64 8, !60, i64 16, !11, i64 24, !70, i64 32, !70, i64 40}
!77 = !{!"dt_iop_module_so_t", !76, i64 0, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !11, i64 368, !11, i64 376, !11, i64 384, !11, i64 392, !11, i64 400, !11, i64 408, !11, i64 416, !11, i64 424, !11, i64 432, !11, i64 440, !11, i64 448, !11, i64 456, !11, i64 464, !11, i64 472, !11, i64 480, !42, i64 488, !7, i64 496, !11, i64 520, !8, i64 528, !11, i64 536, !8, i64 544, !8, i64 548}
!78 = !{!77, !11, i64 520}
!79 = !{!72, !49, i64 0}
!80 = !{!"dt_codepath_t", !8, i64 0}
!81 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!82 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!83 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!84 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!85 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!86 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!87 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!88 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!89 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!90 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!91 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!92 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!93 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!94 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!95 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!96 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!97 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!98 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!99 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!100 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!101 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!102 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!103 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!104 = !{!"_Bool", !7, i64 0}
!105 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!106 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!107 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!108 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!109 = !{!"", !103, i64 0, !44, i64 8, !7, i64 48, !104, i64 96, !104, i64 97, !105, i64 104, !106, i64 112, !107, i64 120, !108, i64 128, !108, i64 136, !108, i64 144}
!110 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!111 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!112 = !{!"dt_sys_resources_t", !17, i64 0, !17, i64 8, !16, i64 16, !16, i64 24, !8, i64 32}
!113 = !{!"dt_backthumb_t", !63, i64 0, !63, i64 8, !8, i64 16, !8, i64 20}
!114 = !{!"dt_gimp_t", !8, i64 0, !60, i64 8, !60, i64 16, !8, i64 24, !8, i64 28}
!115 = !{!"dt_splash_t", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !8, i64 32}
!116 = !{!"darktable_t", !80, i64 0, !8, i64 4, !8, i64 8, !59, i64 16, !59, i64 24, !59, i64 32, !59, i64 40, !81, i64 48, !82, i64 56, !43, i64 64, !83, i64 72, !84, i64 80, !85, i64 88, !86, i64 96, !87, i64 104, !88, i64 112, !89, i64 120, !90, i64 128, !91, i64 136, !92, i64 144, !93, i64 152, !94, i64 160, !95, i64 168, !96, i64 176, !97, i64 184, !98, i64 192, !99, i64 200, !100, i64 208, !101, i64 216, !102, i64 224, !7, i64 232, !44, i64 2792, !44, i64 2832, !44, i64 2872, !44, i64 2912, !44, i64 2952, !44, i64 2992, !60, i64 3032, !60, i64 3040, !60, i64 3048, !60, i64 3056, !60, i64 3064, !60, i64 3072, !60, i64 3080, !60, i64 3088, !60, i64 3096, !60, i64 3104, !60, i64 3112, !60, i64 3120, !60, i64 3128, !109, i64 3136, !59, i64 3288, !63, i64 3296, !59, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !110, i64 3520, !111, i64 3528, !112, i64 3536, !113, i64 3576, !114, i64 3600, !115, i64 3632, !8, i64 3672}
!117 = !{!116, !83, i64 72}
!118 = !{!65, !8, i64 0}
!119 = !{!65, !8, i64 4}
!120 = !{!116, !87, i64 104}
!121 = !{!72, !49, i64 72}
!122 = !{!72, !49, i64 8}
!123 = !{!72, !49, i64 80}
!124 = !{!49, !49, i64 0}
!125 = !{!72, !49, i64 56}
!126 = !{!52, !8, i64 672}
!127 = !{!52, !43, i64 664}
!128 = !{!72, !49, i64 48}
!129 = !{!65, !8, i64 12}
!130 = !{i64 0, i64 4, !30, i64 4, i64 4, !31, i64 8, i64 4, !31, i64 12, i64 4, !31, i64 16, i64 4, !31, i64 20, i64 16, !32, i64 36, i64 4, !30, i64 40, i64 16, !32, i64 56, i64 4, !31}
!131 = distinct !{!131, !39, !40}
!132 = distinct !{!132, !39, !40}
!133 = distinct !{!133, !40, !39}
!134 = distinct !{!134, !39, !40}
!135 = distinct !{!135, !40, !39}
!136 = !{!28, !8, i64 132}
!137 = !{!"dt_iop_colorharmonizer_data_t", !33, i64 0, !7, i64 60, !8, i64 76}
!138 = !{!137, !8, i64 76}
!139 = !{!28, !13, i64 8}
!140 = !{!33, !19, i64 8}
!141 = !{!33, !19, i64 16}
!142 = !{!33, !19, i64 12}
!143 = !{!33, !19, i64 56}
!144 = !{!20, !8, i64 12}
!145 = !{!20, !8, i64 8}
!146 = !{!20, !19, i64 16}
!147 = !{!28, !19, i64 104}
!148 = !{!68, !8, i64 644}
!149 = !{!52, !11, i64 688}
!150 = !{!52, !8, i64 696}
!151 = !{!"dt_iop_colorharmonizer_global_data_t", !8, i64 0, !8, i64 4}
!152 = !{!151, !8, i64 0}
!153 = !{!151, !8, i64 4}
!154 = !{!68, !58, i64 304}
!155 = !{!11, !11, i64 0}
!156 = !{!52, !49, i64 824}
!157 = !{!"p1 _ZTS7dt_ui_t", !11, i64 0}
!158 = !{!"dt_gui_widgets_t", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!159 = !{!"dt_gui_scrollbars_t", !49, i64 0, !49, i64 8, !8, i64 16}
!160 = !{!"p1 _ZTS14_cairo_surface", !11, i64 0}
!161 = !{!"dt_gui_gtk_t", !157, i64 0, !158, i64 8, !159, i64 56, !160, i64 80, !8, i64 88, !60, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !63, i64 1384, !63, i64 1392, !63, i64 1400, !63, i64 1408, !49, i64 1416, !63, i64 1424, !63, i64 1432, !63, i64 1440, !63, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!162 = !{!161, !63, i64 1432}
!163 = !{!72, !49, i64 16}
end_hunk_2
