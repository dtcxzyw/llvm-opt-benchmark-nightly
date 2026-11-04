Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lens?download=true
inline.NumInlined: 229
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 38
begin_hunk_0_@distort_transform:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.i = load float, ptr %i.h, align 8, !tbaa !125, !noalias !354
  %i.j = fcmp reassoc nsz arcp contract afn ugt float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.e, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load <2 x i32>, ptr %i.k, align 16, !tbaa !24, !noalias !354
  %i.m = sitofp reassoc nsz arcp contract afn <2 x i32> %i.l to <2 x float> ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !126, !noalias !354
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.q = tail call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.p), !noalias !354
  %i.r = extractelement <2 x float> %i.m, i64 0
  %i.s = fptosi float %i.r to i32
  %i.t = extractelement <2 x float> %i.m, i64 1
  %i.u = fptosi float %i.t to i32
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !130, !noalias !354 ; 2 uses
  %i.x = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #34, !noalias !354 ; 6 uses
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !115, !noalias !354
  %i.z = load float, ptr %i.h, align 8, !tbaa !125, !noalias !354
  invoke void @_ZN10lfModifierC1EPK6lfLensfii(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.y, float noundef %i.z, i32 noundef %i.s, i32 noundef %i.u)
          to label %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i unwind label %bb.f, !noalias !354

bb.f:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33, !noalias !354
  resume { ptr, i32 } %i.aa

_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i: ; preds = %bb.e
  %.not28.i = icmp eq i32 %i.q, 0
  %i.ab = select i1 %.not28.i, i32 -1, i32 -2
  %i.ac = and i32 %i.w, 3
  %i.ad = shl i32 %i.w, 1
  %i.ae = and i32 %i.ad, 8
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = or disjoint i32 %i.af, 48
  %i.ah = and i32 %i.ag, %i.ab
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !115, !noalias !354
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !133, !noalias !354
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.am = load float, ptr %i.al, align 8, !tbaa !134, !noalias !354
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ao = load float, ptr %i.an, align 4, !tbaa !135, !noalias !354
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !136, !noalias !354
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !137, !noalias !354
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.au = load i32, ptr %i.at, align 8, !tbaa !127, !noalias !354
  %.not23.i.i = icmp eq i32 %i.au, 0
  %i.av = tail call noundef i32 @_ZN10lfModifier10InitializeEPK6lfLens13lfPixelFormatffff10lfLensTypeib(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef %i.ai, i32 noundef 3, float noundef %i.ak, float noundef %i.am, float noundef %i.ao, float noundef %i.aq, i32 noundef %i.as, i32 noundef %i.ah, i1 noundef zeroext %.not23.i.i), !noalias !354
  %i.aw = and i32 %i.av, 57
  %.not29.i = icmp eq i32 %i.aw, 0
  br i1 %.not29.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  %i.ax = shl i64 %3, 1                           ; 2 uses
  %.not31.i = icmp eq i64 %i.ax, 0
  br i1 %.not31.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.030.i = phi i64 [ %i.bf, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !354
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.030.i ; 3 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !21, !alias.scope !354
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !21, !alias.scope !354
  %i.bc = call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.az, float noundef %i.bb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.a), !noalias !354 ; 0 uses
  %i.bd = load <4 x float>, ptr %i.a, align 64, !tbaa !21, !noalias !354
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.be, ptr %i.ay, align 4, !tbaa !21, !alias.scope !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !354
  %i.bf = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.ax
  br i1 %i.bg, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !351

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i, %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.x) #30, !noalias !354
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33, !noalias !354
  br label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit

bb.g:                                             ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !129
  %.fr22.i = freeze i32 %i.bi                     ; 4 uses
  %.not.i12 = icmp eq i32 %.fr22.i, 0
  br i1 %.not.i12, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !130
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.bn = load float, ptr %i.bm, align 8, !tbaa !131
  %i.bo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bn ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.bq = load <2 x i32>, ptr %i.bp, align 16, !tbaa !24
  %i.br = sitofp reassoc nsz arcp contract afn <2 x i32> %i.bq to <2 x float>
  %i.bs = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.br, splat (float 5.000000e-01) ; 6 uses
  %i.bt = shl i64 %3, 1                           ; 3 uses
  %.not21.i = icmp eq i64 %i.bt, 0
  br i1 %.not21.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.i
  %i.bu = extractelement <2 x float> %i.bs, i64 0
  %i.bv = extractelement <2 x float> %i.bs, i64 1
  %i.bw = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.bu, float noundef %i.bv) #32
  %i.bx = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.bw ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 300 ; 5 uses
  %i.ca = icmp sgt i32 %.fr22.i, 1
  %wide.trip.count.i.i = zext nneg i32 %.fr22.i to i64
  %i.cb = sext i32 %.fr22.i to i64
  %i.cc = getelementptr [4 x i8], ptr %i.bz, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 -4     ; 2 uses
  %i.ce = load float, ptr %i.by, align 4, !tbaa !21 ; 2 uses
  br i1 %i.ca, label %.split.us.us.i.preheader, label %.split.i.preheader

.split.i.preheader:                               ; preds = %.lr.ph.i13
  %i.cf = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.split.i

.split.us.us.i.preheader:                         ; preds = %.lr.ph.i13
  %i.ch = insertelement <2 x float> poison, float %i.bo, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.split.us.us.i

.split.us.us.i:                                   ; preds = %.split.us.us.i.preheader, %.split17.us.us.i
  %.05619.us.i = phi i64 [ %i.dx, %.split17.us.us.i ], [ 0, %.split.us.us.i.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.05619.us.i ; 2 uses
  %i.ck = load <2 x float>, ptr %i.cj, align 4, !tbaa !21 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i, %.split.us.us.i
  %.015.us.us.i = phi i32 [ 0, %.split.us.us.i ], [ %i.dv, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i ] ; 2 uses
  %i.cl = phi <2 x float> [ %i.ck, %.split.us.us.i ], [ %i.du, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i ] ; 3 uses
  %i.cm = fsub reassoc nsz arcp contract afn <2 x float> %i.cl, %i.bs
  %i.cn = fmul reassoc nsz arcp contract afn <2 x float> %i.cm, %i.ci ; 3 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0
  %i.cp = extractelement <2 x float> %i.cn, i64 1
  %i.cq = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.co, float noundef %i.cp) #32
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cq, %i.bx ; 4 uses
  %i.cs = fcmp reassoc nsz arcp contract afn olt float %i.cr, %i.ce
  br i1 %i.cs, label %bb.n, label %.lr.ph.i.us.us.i

.lr.ph.i.us.us.i:                                 ; preds = %bb.j, %bb.l
  %indvars.iv.i.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.i, %bb.l ], [ 1, %bb.j ] ; 4 uses
  %i.ct = add nsw i64 %indvars.iv.i.us.us.i, -1   ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.ct
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !21 ; 3 uses
  %i.cw = fcmp reassoc nsz arcp contract afn ult float %i.cr, %i.cv
  br i1 %i.cw, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.us.us.i
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.i.us.us.i
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !21 ; 2 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ugt float %i.cr, %i.cy
  br i1 %i.cz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.us.us.i
  %indvars.iv.next.i.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.i, label %._crit_edge.i.loopexit.us.us.i, label %.lr.ph.i.us.us.i, !llvm.loop !0

bb.m:                                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i.us.us.i
  %i.db = load float, ptr %i.da, align 4, !tbaa !21
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ct
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !21 ; 2 uses
  %i.de = fsub reassoc nsz arcp contract afn float %i.db, %i.dd
  %i.df = fsub reassoc nsz arcp contract afn float %i.cy, %i.cv
  %i.dg = fsub reassoc nsz arcp contract afn float %i.cr, %i.cv
  %i.dh = fmul reassoc nsz arcp contract afn float %i.de, %i.dg
  %i.di = fdiv reassoc nsz arcp contract afn float %i.dh, %i.df
  %i.dj = fadd reassoc nsz arcp contract afn float %i.di, %i.dd
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

._crit_edge.i.loopexit.us.us.i:                   ; preds = %bb.l
  %i.dk = load float, ptr %i.cd, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

bb.n:                                             ; preds = %bb.j
  %i.dl = load float, ptr %i.bz, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i: ; preds = %bb.n, %._crit_edge.i.loopexit.us.us.i, %bb.m
  %.1.i.us.us.i = phi nsz float [ %i.dl, %bb.n ], [ %i.dk, %._crit_edge.i.loopexit.us.us.i ], [ %i.dj, %bb.m ]
  %i.dm = insertelement <2 x float> poison, float %.1.i.us.us.i, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fmul reassoc nsz arcp contract afn <2 x float> %i.cn, %i.dn
  %i.dp = fadd reassoc nsz arcp contract afn <2 x float> %i.bs, %i.do
  %i.dq = fsub reassoc nsz arcp contract afn <2 x float> %i.ck, %i.dp
  %.fr57 = freeze <2 x float> %i.dq               ; 2 uses
  %4 = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %.fr57)
  %5 = fcmp reassoc nsz arcp contract afn uge <2 x float> %4, splat (float 5.000000e-01)
  %6 = bitcast <2 x i1> %5 to i2
  %or.cond.not.us.us.i = icmp ne i2 %6, 0         ; 2 uses
  %i.dr = fadd reassoc nsz arcp contract afn <2 x float> %.fr57, %i.cl
  %i.ds = insertelement <2 x i1> poison, i1 %or.cond.not.us.us.i, i64 0
  %i.dt = shufflevector <2 x i1> %i.ds, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.du = select <2 x i1> %i.dt, <2 x float> %i.dr, <2 x float> %i.cl ; 2 uses
  %i.dv = add nuw nsw i32 %.015.us.us.i, 1
  %i.dw = icmp samesign ult i32 %.015.us.us.i, 9
  %or.cond.i = select i1 %or.cond.not.us.us.i, i1 %i.dw, i1 false
  br i1 %or.cond.i, label %bb.j, label %.split17.us.us.i, !llvm.loop !352

.split17.us.us.i:                                 ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.i
  store <2 x float> %i.du, ptr %i.cj, align 4, !tbaa !21
  %i.dx = add nuw i64 %.05619.us.i, 2             ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.bt
  br i1 %i.dy, label %.split.us.us.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, !llvm.loop !353

.split.i:                                         ; preds = %.split.i.preheader, %.split17.i
  %.05619.i = phi i64 [ %i.eu, %.split17.i ], [ 0, %.split.i.preheader ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.05619.i ; 2 uses
  %i.ea = load <2 x float>, ptr %i.dz, align 4, !tbaa !21 ; 2 uses
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.i:   ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i, %.split.i
  %.015.i = phi i32 [ 0, %.split.i ], [ %i.es, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i ] ; 2 uses
  %i.eb = phi <2 x float> [ %i.ea, %.split.i ], [ %i.er, %_ZL26_interpolate_linear_splinePKfS0_if.exit.i ] ; 3 uses
  %i.ec = fsub reassoc nsz arcp contract afn <2 x float> %i.eb, %i.bs
  %i.ed = fmul reassoc nsz arcp contract afn <2 x float> %i.ec, %i.cg ; 3 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 0
  %i.ef = extractelement <2 x float> %i.ed, i64 1
  %i.eg = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.ee, float noundef %i.ef) #32
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.bx
  %i.ei = fcmp reassoc nsz arcp contract afn olt float %i.eh, %i.ce
  %spec.select.i = select i1 %i.ei, ptr %i.bz, ptr %i.cd
  %.1.i.i = load float, ptr %spec.select.i, align 4, !tbaa !21
  %i.ej = insertelement <2 x float> poison, float %.1.i.i, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.el = fmul reassoc nsz arcp contract afn <2 x float> %i.ek, %i.ed
  %i.em = fadd reassoc nsz arcp contract afn <2 x float> %i.bs, %i.el
  %i.en = fsub reassoc nsz arcp contract afn <2 x float> %i.ea, %i.em
  %.fr56 = freeze <2 x float> %i.en               ; 2 uses
  %7 = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %.fr56)
  %8 = fcmp reassoc nsz arcp contract afn uge <2 x float> %7, splat (float 5.000000e-01)
  %9 = bitcast <2 x i1> %8 to i2
  %or.cond.not.i = icmp ne i2 %9, 0               ; 2 uses
  %i.eo = fadd reassoc nsz arcp contract afn <2 x float> %.fr56, %i.eb
  %i.ep = insertelement <2 x i1> poison, i1 %or.cond.not.i, i64 0
  %i.eq = shufflevector <2 x i1> %i.ep, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.er = select <2 x i1> %i.eq, <2 x float> %i.eo, <2 x float> %i.eb ; 2 uses
  %i.es = add nuw nsw i32 %.015.i, 1
  %i.et = icmp samesign ult i32 %.015.i, 9
  %or.cond20.i = select i1 %or.cond.not.i, i1 %i.et, i1 false
  br i1 %or.cond20.i, label %_ZL26_interpolate_linear_splinePKfS0_if.exit.i, label %.split17.i, !llvm.loop !352

.split17.i:                                       ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit.i
  store <2 x float> %i.er, ptr %i.dz, align 4, !tbaa !21
  %i.eu = add nuw i64 %.05619.i, 2                ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.bt
  br i1 %i.ev, label %.split.i, label %_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, !llvm.loop !353

_ZL21_distort_transform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit: ; preds = %.split17.i, %.split17.us.us.i, %bb.i, %bb.h, %bb.g, %.loopexit.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.loopexit.i ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %.split17.us.us.i ], [ 1, %.split17.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @distort_backtransform(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noalias nofree noundef captures(none) %2, i64 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca [6 x float], align 64             ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !44  ; 9 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !114
  switch i32 %i.e, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit [
    i32 1, label %bb.b
    i32 0, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !115, !noalias !359 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124, !noalias !359
  %.not27.i = icmp eq ptr %i.h, null
  br i1 %.not27.i, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load float, ptr %i.i, align 8, !tbaa !125, !noalias !359
  %i.k = fcmp reassoc nsz arcp contract afn ugt float %i.j, 0.000000e+00
  br i1 %i.k, label %bb.e, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !126, !noalias !359
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  %i.o = tail call i32 @dt_image_is_monochrome(ptr noundef nonnull %i.n), !noalias !359
  %.not28.i = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not28.i, i32 -1, i32 -2
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.r = load <2 x i32>, ptr %i.q, align 16, !tbaa !24, !noalias !359
  %i.s = sitofp reassoc nsz arcp contract afn <2 x i32> %i.r to <2 x float> ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30, !noalias !359
  %i.t = extractelement <2 x float> %i.s, i64 0
  %i.u = fptosi float %i.t to i32
  %i.v = extractelement <2 x float> %i.s, i64 1
  %i.w = fptosi float %i.v to i32
  %i.x = call fastcc noundef ptr @_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii(ptr noundef nonnull %i.a, i32 noundef %i.u, i32 noundef %i.w, ptr noundef nonnull %i.d, i32 noundef %i.p, i32 noundef 0), !noalias !359 ; 3 uses
  %i.y = load i32, ptr %i.a, align 4, !tbaa !24, !noalias !359
  %i.z = and i32 %i.y, 57
  %.not29.i = icmp eq i32 %i.z, 0
  br i1 %.not29.i, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.e
  %i.aa = shl i64 %3, 1                           ; 2 uses
  %.not31.i = icmp eq i64 %i.aa, 0
  br i1 %.not31.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.030.i = phi i64 [ %i.ai, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !359
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.030.i ; 3 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !21, !alias.scope !359
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !21, !alias.scope !359
  %i.af = call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.ac, float noundef %i.ae, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.b), !noalias !359 ; 0 uses
  %i.ag = load <4 x float>, ptr %i.b, align 64, !tbaa !21, !noalias !359
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.ah, ptr %i.ab, align 4, !tbaa !21, !alias.scope !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !359
  %i.ai = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.aa
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !357

.loopexit.i:                                      ; preds = %.lr.ph.i, %.preheader.i, %bb.e
  call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.x) #30, !noalias !359
  call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33, !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30, !noalias !359
  br label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit

bb.f:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !129
  %.fr8.i = freeze i32 %i.al                      ; 4 uses
  %.not.i12 = icmp eq i32 %.fr8.i, 0
  br i1 %.not.i12, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !130
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !131
  %i.ar = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.at = load <2 x i32>, ptr %i.as, align 16, !tbaa !24
  %i.au = sitofp reassoc nsz arcp contract afn <2 x i32> %i.at to <2 x float>
  %i.av = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.au, splat (float 5.000000e-01) ; 6 uses
  %i.aw = extractelement <2 x float> %i.av, i64 0
  %i.ax = extractelement <2 x float> %i.av, i64 1
  %i.ay = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.aw, float noundef %i.ax) #32
  %i.az = shl i64 %3, 1                           ; 3 uses
  %i.ba = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ay ; 2 uses
  %.not7.i = icmp eq i64 %i.az, 0
  br i1 %.not7.i, label %_ZL25_distort_backtransform_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPfm.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 108 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.d, i64 300 ; 5 uses
  %i.bd = icmp sgt i32 %.fr8.i, 1
  %wide.trip.count.i.i = zext nneg i32 %.fr8.i to i64
  %i.be = sext i32 %.fr8.i to i64
  %i.bf = getelementptr [4 x i8], ptr %i.bc, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 -4     ; 2 uses
  %i.bh = load float, ptr %i.bb, align 4, !tbaa !21 ; 2 uses
  br i1 %i.bd, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i13
  %i.bi = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i13
  %i.bk = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.bl = shufflevector <2 x float> %i.bk, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i
  %.0356.us.i = phi i64 [ %i.cr, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i ], [ 0, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0356.us.i ; 2 uses
  %i.bn = load <2 x float>, ptr %i.bm, align 4, !tbaa !21
  %i.bo = fsub reassoc nsz arcp contract afn <2 x float> %i.bn, %i.av
  %i.bp = fmul reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bl ; 3 uses
  %i.bq = extractelement <2 x float> %i.bp, i64 0
  %i.br = extractelement <2 x float> %i.bp, i64 1
  %i.bs = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.bq, float noundef %i.br) #32
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.ba ; 4 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, %i.bh
  br i1 %i.bu, label %bb.l, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.split.us.i, %bb.j
  %indvars.iv.i.us.i = phi i64 [ %indvars.iv.next.i.us.i, %bb.j ], [ 1, %.lr.ph.split.us.i ] ; 4 uses
  %i.bv = add nsw i64 %indvars.iv.i.us.i, -1      ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !21 ; 3 uses
  %i.by = fcmp reassoc nsz arcp contract afn ult float %i.bt, %i.bx
  br i1 %i.by, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.us.i
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i.us.i
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !21 ; 2 uses
  %i.cb = fcmp reassoc nsz arcp contract afn ugt float %i.bt, %i.ca
  br i1 %i.cb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.us.i
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %._crit_edge.i.loopexit.us.i, label %.lr.ph.i.us.i, !llvm.loop !0

bb.k:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i.us.i
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !21
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bc, i64 %i.bv
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !21 ; 2 uses
  %i.cg = fsub reassoc nsz arcp contract afn float %i.cd, %i.cf
  %i.ch = fsub reassoc nsz arcp contract afn float %i.ca, %i.bx
  %i.ci = fsub reassoc nsz arcp contract afn float %i.bt, %i.bx
  %i.cj = fmul reassoc nsz arcp contract afn float %i.cg, %i.ci
  %i.ck = fdiv reassoc nsz arcp contract afn float %i.cj, %i.ch
  %i.cl = fadd reassoc nsz arcp contract afn float %i.ck, %i.cf
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i

bb.l:                                             ; preds = %.lr.ph.split.us.i
  %i.cm = load float, ptr %i.bc, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us.i: ; preds = %._crit_edge.i.loopexit.us.i, %bb.l, %bb.k
  %.1.i.us.i = phi nsz float [ %i.cm, %bb.l ], [ %i.ct, %._crit_edge.i.loopexit.us.i ], [ %i.cl, %bb.k ]
  %i.cn = insertelement <2 x float> poison, float %.1.i.us.i, i64 0
end_hunk_0
