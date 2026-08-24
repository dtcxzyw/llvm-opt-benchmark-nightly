Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lens?download=true
inline.NumInlined: 229
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 39
begin_hunk_0_@distort_mask:bb.a
  %i.ef = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !163 ; 2 uses
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %.preheader.lr.ph.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

.preheader.lr.ph.i:                               ; preds = %bb.t
  %i.ei = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.c, i64 300 ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.em = load i32, ptr %i.ei, align 4, !tbaa !162 ; 2 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %.preheader.preheader.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.eo = extractelement <2 x float> %i.dv, i64 0 ; 2 uses
  %i.ep = extractelement <2 x float> %i.dv, i64 1 ; 2 uses
  %i.eq = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.eo, float noundef %i.ep) #32
  %i.er = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.eq
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i20, %.preheader.preheader.i
  %i.es = phi i32 [ %i.ew, %._crit_edge.i20 ], [ %i.eg, %.preheader.preheader.i ]
  %i.et = phi i32 [ %i.ex, %._crit_edge.i20 ], [ %i.em, %.preheader.preheader.i ] ; 2 uses
  %.0888.i = phi i32 [ %i.ey, %._crit_edge.i20 ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i21.preheader, label %._crit_edge.i20

.lr.ph.i21.preheader:                             ; preds = %.preheader.i
  %i.ev = insertelement <2 x i32> poison, i32 %.0888.i, i64 1
  br label %.lr.ph.i21

._crit_edge.loopexit.i:                           ; preds = %bb.ag
  %.pre.i22 = load i32, ptr %i.ef, align 4, !tbaa !163
  br label %._crit_edge.i20

._crit_edge.i20:                                  ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ew = phi i32 [ %.pre.i22, %._crit_edge.loopexit.i ], [ %i.es, %.preheader.i ] ; 2 uses
  %i.ex = phi i32 [ %i.hn, %._crit_edge.loopexit.i ], [ %i.et, %.preheader.i ]
  %i.ey = add nuw nsw i32 %.0888.i, 1             ; 2 uses
  %i.ez = icmp slt i32 %i.ey, %i.ew
  br i1 %i.ez, label %.preheader.i, label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit, !llvm.loop !229

.lr.ph.i21:                                       ; preds = %.lr.ph.i21.preheader, %bb.ag
  %.07.i = phi i32 [ %i.hs, %bb.ag ], [ 0, %.lr.ph.i21.preheader ] ; 3 uses
  %i.fa = load <2 x i32>, ptr %5, align 4, !tbaa !38
  %i.fb = insertelement <2 x i32> %i.ev, i32 %.07.i, i64 0
  %i.fc = add nsw <2 x i32> %i.fa, %i.fb
  %i.fd = sitofp <2 x i32> %i.fc to <2 x float>
  %i.fe = fsub reassoc nsz arcp contract afn <2 x float> %i.fd, %i.dv ; 2 uses
  %i.ff = extractelement <2 x float> %i.fe, i64 0
  %i.fg = fmul reassoc nsz arcp contract afn float %i.ff, %i.dm ; 2 uses
  %i.fh = extractelement <2 x float> %i.fe, i64 1
  %i.fi = fmul reassoc nsz arcp contract afn float %i.fh, %i.dm ; 2 uses
  %i.fj = load i32, ptr %i.cy, align 8, !tbaa !196 ; 3 uses
  %i.fk = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.fg, float noundef %i.fi) #32
  %i.fl = fmul reassoc nsz arcp contract afn float %i.fk, %i.er ; 4 uses
  %i.fm = load float, ptr %i.ej, align 4, !tbaa !24
  %i.fn = fcmp reassoc nsz arcp contract afn olt float %i.fl, %i.fm
  br i1 %i.fn, label %bb.u, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.lr.ph.i21
  %i.fo = icmp sgt i32 %i.fj, 1
  br i1 %i.fo, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.fj to i64
  br label %.lr.ph.i.i

bb.u:                                             ; preds = %.lr.ph.i21
  %i.fp = load float, ptr %i.ek, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

.lr.ph.i.i:                                       ; preds = %bb.w, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.w ] ; 4 uses
  %i.fq = add nsw i64 %indvars.iv.i.i, -1         ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.fq
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !24 ; 3 uses
  %i.ft = fcmp reassoc nsz arcp contract afn ult float %i.fl, %i.fs
  br i1 %i.ft, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.ej, i64 %indvars.iv.i.i
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !24 ; 2 uses
  %i.fw = fcmp reassoc nsz arcp contract afn ugt float %i.fl, %i.fv
  br i1 %i.fw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %.lr.ph.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !199

bb.x:                                             ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv.i.i
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !24
  %i.fz = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.fq
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !24 ; 2 uses
  %i.gb = fsub reassoc nsz arcp contract afn float %i.fy, %i.ga
  %i.gc = fsub reassoc nsz arcp contract afn float %i.fv, %i.fs
  %i.gd = fsub reassoc nsz arcp contract afn float %i.fl, %i.fs
  %i.ge = fmul reassoc nsz arcp contract afn float %i.gb, %i.gd
  %i.gf = fdiv reassoc nsz arcp contract afn float %i.ge, %i.gc
  %i.gg = fadd reassoc nsz arcp contract afn float %i.gf, %i.ga
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

._crit_edge.i.i:                                  ; preds = %bb.w, %.preheader.i.i
  %i.gh = sext i32 %i.fj to i64
  %i.gi = getelementptr [4 x i8], ptr %i.ek, i64 %i.gh
  %i.gj = getelementptr i8, ptr %i.gi, i64 -4
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !24
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.i:   ; preds = %._crit_edge.i.i, %bb.x, %bb.u
  %.1.i.i = phi nsz float [ %i.fp, %bb.u ], [ %i.gk, %._crit_edge.i.i ], [ %i.gg, %bb.x ] ; 2 uses
  %i.gl = fmul reassoc nsz arcp contract afn float %.1.i.i, %i.fg
  %i.gm = fadd reassoc nsz arcp contract afn float %i.eo, %i.gl
  %i.gn = load i32, ptr %4, align 4, !tbaa !170
  %i.go = sitofp reassoc nsz arcp contract afn i32 %i.gn to float
  %i.gp = fsub reassoc nsz arcp contract afn float %i.gm, %i.go ; 3 uses
  %i.gq = fcmp reassoc nsz arcp contract afn ogt float %i.gp, %i.dz
  br i1 %i.gq, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  %i.gr = fcmp reassoc nsz arcp contract afn olt float %i.gp, 0.000000e+00
  br i1 %i.gr, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  %i.gs = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.y ], [ %i.gp, %bb.z ], [ %i.dz, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i ] ; 3 uses
  %i.gt = fmul reassoc nsz arcp contract afn float %.1.i.i, %i.fi
  %i.gu = fadd reassoc nsz arcp contract afn float %i.ep, %i.gt
  %i.gv = load i32, ptr %i.el, align 4, !tbaa !171
  %i.gw = sitofp reassoc nsz arcp contract afn i32 %i.gv to float
  %i.gx = fsub reassoc nsz arcp contract afn float %i.gu, %i.gw ; 3 uses
  %i.gy = fcmp reassoc nsz arcp contract afn ogt float %i.gx, %i.ed
  br i1 %i.gy, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gz = fcmp reassoc nsz arcp contract afn olt float %i.gx, 0.000000e+00
  br i1 %i.gz, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.ha = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.ab ], [ %i.gx, %bb.ac ], [ %i.ed, %bb.aa ] ; 3 uses
  %i.hb = load i32, ptr %i.dw, align 4, !tbaa !162 ; 2 uses
  %i.hc = load i32, ptr %i.ea, align 4, !tbaa !163
  %i.hd = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ee, ptr noundef %2, float noundef %i.gs, float noundef %i.ha, i32 noundef %i.hb, i32 noundef %i.hc, i32 noundef 1, i32 noundef %i.hb)
  %i.he = fcmp reassoc nsz arcp contract afn ult float %i.hd, 0.000000e+00
  br i1 %i.he, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hf = load i32, ptr %i.dw, align 4, !tbaa !162 ; 2 uses
  %i.hg = load i32, ptr %i.ea, align 4, !tbaa !163
  %i.hh = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ee, ptr noundef %2, float noundef %i.gs, float noundef %i.ha, i32 noundef %i.hf, i32 noundef %i.hg, i32 noundef 1, i32 noundef %i.hf)
  %i.hi = fcmp reassoc nsz arcp contract afn ugt float %i.hh, 1.000000e+00
  br i1 %i.hi, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hj = load i32, ptr %i.dw, align 4, !tbaa !162 ; 2 uses
  %i.hk = load i32, ptr %i.ea, align 4, !tbaa !163
  %i.hl = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ee, ptr noundef %2, float noundef %i.gs, float noundef %i.ha, i32 noundef %i.hj, i32 noundef %i.hk, i32 noundef 1, i32 noundef %i.hj)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.hm = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.ae ], [ %i.hl, %bb.af ], [ 0.000000e+00, %bb.ad ]
  %i.hn = load i32, ptr %i.ei, align 4, !tbaa !162 ; 3 uses
  %i.ho = mul nsw i32 %i.hn, %.0888.i
  %i.hp = add nsw i32 %i.ho, %.07.i
  %i.hq = sext i32 %i.hp to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %3, i64 %i.hq
  store float %i.hm, ptr %i.hr, align 4, !tbaa !24
  %i.hs = add nuw nsw i32 %.07.i, 1               ; 2 uses
  %i.ht = icmp slt i32 %i.hs, %i.hn
  br i1 %i.ht, label %.lr.ph.i21, label %._crit_edge.loopexit.i, !llvm.loop !230

bb.ah:                                            ; preds = %bb.a
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef %4, ptr noundef %5)
  br label %_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit

_ZL16_distort_mask_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPKfPfPK12dt_iop_roi_tS8_.exit: ; preds = %._crit_edge.i20, %.preheader.lr.ph.i, %bb.t, %bb.s, %bb.p, %bb.e, %bb.ah
  ret void
}

; Function Attrs: mustprogress uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) initializes((0, 20)) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !81  ; 23 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !174
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull readonly align 4 dereferenceable(20) %2, i64 20, i1 false)
  switch i32 %i.c, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit [
    i32 1, label %bb.b
    i32 0, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !176  ; 3 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !177
  %.not224.i = icmp eq ptr %i.f, null
  br i1 %.not224.i, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load float, ptr %i.g, align 8, !tbaa !186 ; 2 uses
  %i.i = fcmp reassoc nsz arcp contract afn ugt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.e, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load float, ptr %i.j, align 4, !tbaa !169
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.m = load <2 x i32>, ptr %i.l, align 16, !tbaa !38
  %i.n = sitofp <2 x i32> %i.m to <2 x float>
  %i.o = insertelement <2 x float> poison, float %i.k, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul reassoc nsz arcp contract afn <2 x float> %i.p, %i.n ; 8 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = fptosi float %i.r to i32
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = fptosi float %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !197  ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34 ; 9 uses
  invoke void @_ZN10lfModifierC1EPK6lfLensfii(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef nonnull %i.e, float noundef %i.h, i32 noundef %i.s, i32 noundef %i.u)
          to label %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33
  resume { ptr, i32 } %i.y

_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i: ; preds = %bb.e
  %i.z = and i32 %i.w, 3
  %i.aa = shl i32 %i.w, 1
  %i.ab = and i32 %i.aa, 8
  %i.ac = or disjoint i32 %i.z, %i.ab
  %i.ad = or disjoint i32 %i.ac, 48
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !176
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ag = load float, ptr %i.af, align 4, !tbaa !214
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !215
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 36
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !216
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.am = load float, ptr %i.al, align 4, !tbaa !217
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !218
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !188
  %.not23.i.i = icmp ne i32 %i.aq, 0
  %i.ar = tail call noundef i32 @_ZN10lfModifier10InitializeEPK6lfLens13lfPixelFormatffff10lfLensTypeib(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.ae, i32 noundef 3, float noundef %i.ag, float noundef %i.ai, float noundef %i.ak, float noundef %i.am, i32 noundef %i.ao, i32 noundef %i.ad, i1 noundef zeroext %.not23.i.i)
  %i.as = and i32 %i.ar, 57
  %.not225.i = icmp eq i32 %i.as, 0
  br i1 %.not225.i, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  %i.at = load i32, ptr %3, align 4, !tbaa !170   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !171 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !162 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !163 ; 4 uses
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.ax, i1 true) ; 3 uses
  %i.bb = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true) ; 3 uses
  %.inv.i = icmp sgt i32 %i.ax, -1
  %i.bc = select i1 %.inv.i, i32 1, i32 -1        ; 2 uses
  %.inv226.i = icmp sgt i32 %i.az, -1
  %i.bd = select i1 %.inv226.i, i32 1, i32 -1     ; 2 uses
  %i.be = shl nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bf = add nuw i32 %i.bb, %i.ba                ; 2 uses
  %i.bg = shl nuw i32 %i.bf, 1
  %i.bh = zext nneg i32 %i.bg to i64              ; 2 uses
  %i.bi = mul nuw nsw i64 %i.bh, 24
  %i.bj = tail call noundef ptr @dt_alloc_aligned(i64 noundef %i.bi) ; 7 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bj, i64 64) ]
  %.not27.i = icmp eq i32 %i.ax, 0
  br i1 %.not27.i, label %.preheader5.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bk = sitofp reassoc nsz arcp contract afn i32 %i.av to float
  %wide.trip.count.i = zext nneg i32 %i.ba to i64 ; 3 uses
  br label %bb.h

.lr.ph9.i:                                        ; preds = %bb.h
  %i.bl = add i32 %i.av, -1
  %i.bm = add i32 %i.bl, %i.az
  %i.bn = sitofp reassoc nsz arcp contract afn i32 %i.bm to float
  br label %bb.i

bb.h:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.bo = trunc i64 %indvars.iv.i to i32
  %i.bp = mul i32 %i.bc, %i.bo
  %i.bq = add i32 %i.bp, %i.at
  %i.br = sitofp reassoc nsz arcp contract afn i32 %i.bq to float
  %.idx53.i.a = mul nuw nsw i64 %indvars.iv.i, 24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx53.i.a
  %i.bt = tail call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.br, float noundef %i.bk, i32 noundef 1, i32 noundef 1, ptr noundef %i.bs) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph9.i, label %bb.h, !llvm.loop !231

.preheader5.i:                                    ; preds = %bb.i, %bb.g
  %.not29.i = icmp eq i32 %i.az, 0
  br i1 %.not29.i, label %.preheader3.i, label %.lr.ph11.i

.lr.ph11.i:                                       ; preds = %.preheader5.i
  %i.bu = sitofp reassoc nsz arcp contract afn i32 %i.at to float
  %i.bv = zext nneg i32 %i.be to i64
  %wide.trip.count44.i = zext nneg i32 %i.bb to i64 ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph9.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph9.i ], [ %indvars.iv.next37.i, %bb.i ] ; 3 uses
  %i.bw = trunc i64 %indvars.iv36.i to i32
  %i.bx = mul i32 %i.bc, %i.bw
  %i.by = add i32 %i.bx, %i.at
  %i.bz = sitofp reassoc nsz arcp contract afn i32 %i.by to float
  %i.ca = add nuw nsw i64 %indvars.iv36.i, %wide.trip.count.i
  %.idx54.i.a = mul nuw nsw i64 %i.ca, 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx54.i.a
  %i.cc = tail call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.bz, float noundef %i.bn, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.cb) ; 0 uses
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count.i
  br i1 %exitcond40.not.i, label %.preheader5.i, label %bb.i, !llvm.loop !232

.lr.ph13.i:                                       ; preds = %bb.j
  %i.cd = add i32 %i.at, -1
  %i.ce = add i32 %i.cd, %i.ax
  %i.cf = sitofp reassoc nsz arcp contract afn i32 %i.ce to float
  %i.cg = add nuw nsw i32 %i.be, %i.bb
  %i.ch = zext nneg i32 %i.cg to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph11.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph11.i ], [ %indvars.iv.next42.i, %bb.j ] ; 3 uses
  %i.ci = trunc i64 %indvars.iv41.i to i32
  %i.cj = mul i32 %i.bd, %i.ci
  %i.ck = add i32 %i.cj, %i.av
  %i.cl = sitofp reassoc nsz arcp contract afn i32 %i.ck to float
  %i.cm = add nuw nsw i64 %indvars.iv41.i, %i.bv
  %.idx55.i.a = mul nuw nsw i64 %i.cm, 24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx55.i.a
  %i.co = tail call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.bu, float noundef %i.cl, i32 noundef 1, i32 noundef 1, ptr noundef %i.cn) ; 0 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %.lr.ph13.i, label %bb.j, !llvm.loop !233

.preheader3.i:                                    ; preds = %bb.k, %.preheader5.i
  %.not31.i = icmp eq i32 %i.bf, 0
  br i1 %.not31.i, label %._crit_edge.i, label %.preheader.i

bb.k:                                             ; preds = %bb.k, %.lr.ph13.i
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph13.i ], [ %indvars.iv.next47.i, %bb.k ] ; 3 uses
  %i.cp = trunc i64 %indvars.iv46.i to i32
  %i.cq = mul i32 %i.bd, %i.cp
  %i.cr = add i32 %i.cq, %i.av
  %i.cs = sitofp reassoc nsz arcp contract afn i32 %i.cr to float
  %i.ct = add nuw nsw i64 %indvars.iv46.i, %i.ch
  %.idx56.i = mul nuw nsw i64 %i.ct, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx56.i
  %i.cv = tail call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.cf, float noundef %i.cs, i32 noundef 1, i32 noundef 1, ptr noundef %i.cu) ; 0 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next47.i, %wide.trip.count44.i
  br i1 %exitcond50.not.i, label %.preheader3.i, label %bb.k, !llvm.loop !234

.preheader.i:                                     ; preds = %.preheader3.i, %.preheader.i
  %.019123.i = phi i64 [ %i.dz, %.preheader.i ], [ 0, %.preheader3.i ] ; 2 uses
  %i.cw = phi <2 x float> [ %i.dp, %.preheader.i ], [ splat (float f0x7F7FFFFF), %.preheader3.i ] ; 2 uses
  %i.cx = phi <2 x float> [ %i.dy, %.preheader.i ], [ splat (float f0xFF7FFFFF), %.preheader3.i ] ; 2 uses
  %.idx.i = mul nuw nsw i64 %.019123.i, 24
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx.i ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.db = load <2 x float>, ptr %i.cy, align 8, !tbaa !24 ; 5 uses
  %i.dc = fcmp uno <2 x float> %i.db, zeroinitializer ; 2 uses
  %i.dd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.cw, %i.db
  %i.de = select <2 x i1> %i.dc, <2 x i1> splat (i1 true), <2 x i1> %i.dd
  %i.df = select <2 x i1> %i.de, <2 x float> %i.cw, <2 x float> %i.db ; 2 uses
  %i.dg = load <2 x float>, ptr %i.cz, align 8, !tbaa !24 ; 5 uses
  %i.dh = fcmp uno <2 x float> %i.dg, zeroinitializer ; 2 uses
  %i.di = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.df, %i.dg
  %i.dj = select <2 x i1> %i.dh, <2 x i1> splat (i1 true), <2 x i1> %i.di
  %i.dk = select <2 x i1> %i.dj, <2 x float> %i.df, <2 x float> %i.dg ; 2 uses
  %i.dl = load <2 x float>, ptr %i.da, align 8, !tbaa !24 ; 5 uses
  %i.dm = fcmp uno <2 x float> %i.dl, zeroinitializer ; 2 uses
  %i.dn = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.dk, %i.dl
  %i.do = select <2 x i1> %i.dm, <2 x i1> splat (i1 true), <2 x i1> %i.dn
  %i.dp = select <2 x i1> %i.do, <2 x float> %i.dk, <2 x float> %i.dl ; 2 uses
  %i.dq = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cx, %i.db
  %i.dr = select <2 x i1> %i.dc, <2 x i1> splat (i1 true), <2 x i1> %i.dq
  %i.ds = select <2 x i1> %i.dr, <2 x float> %i.cx, <2 x float> %i.db ; 2 uses
  %i.dt = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.ds, %i.dg
  %i.du = select <2 x i1> %i.dh, <2 x i1> splat (i1 true), <2 x i1> %i.dt
  %i.dv = select <2 x i1> %i.du, <2 x float> %i.ds, <2 x float> %i.dg ; 2 uses
  %i.dw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.dv, %i.dl
  %i.dx = select <2 x i1> %i.dm, <2 x i1> splat (i1 true), <2 x i1> %i.dw
  %i.dy = select <2 x i1> %i.dx, <2 x float> %i.dv, <2 x float> %i.dl ; 2 uses
  %i.dz = add nuw nsw i64 %.019123.i, 1           ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.dz, %i.bh
  br i1 %exitcond51.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !235

._crit_edge.i:                                    ; preds = %.preheader.i, %.preheader3.i
  %i.ea = phi <2 x float> [ splat (float f0xFF7FFFFF), %.preheader3.i ], [ %i.dy, %.preheader.i ] ; 4 uses
  %i.eb = phi <2 x float> [ splat (float f0x7F7FFFFF), %.preheader3.i ], [ %i.dp, %.preheader.i ] ; 4 uses
  tail call void @free(ptr noundef %i.bj) #30
  %i.ec = extractelement <2 x float> %i.eb, i64 0
  %or.cond.i = tail call i1 @llvm.is.fpclass.f32(float %i.ec, /* (zero psub pnorm) */ i32 480)
  %i.ed = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.eb, %i.q
  %i.ee = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ea)
  %i.ef = fcmp reassoc nsz arcp contract afn oge <2 x float> %i.ea, splat (float 1.000000e+00)
  %i.eg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ea, %i.q
  %i.eh = extractelement <2 x float> %i.eb, i64 1
  %or.cond5.i = tail call i1 @llvm.is.fpclass.f32(float %i.eh, /* (zero psub pnorm) */ i32 480)
  %i.ei = tail call ptr @dt_interpolation_new(i32 noundef 3)
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !236
  %i.el = uitofp reassoc nsz arcp contract afn i64 %i.ek to float
  %i.em = fadd reassoc nsz arcp contract afn <2 x float> %i.q, splat (float -2.000000e+00)
  %i.en = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.q)
  %i.eo = insertelement <2 x i1> poison, i1 %or.cond.i, i64 0
end_hunk_0
