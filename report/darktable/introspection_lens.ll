Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_lens?download=true
inline.NumInlined: 229
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 38
begin_hunk_0_@modify_roi_in:bb.a
  br label %bb.j

bb.i:                                             ; preds = %bb.i, %.lr.ph9.i
  %indvars.iv36.i = phi i64 [ 0, %.lr.ph9.i ], [ %indvars.iv.next37.i, %bb.i ] ; 3 uses
  %i.by = trunc i64 %indvars.iv36.i to i32
  %i.bz = mul i32 %i.be, %i.by
  %i.ca = add i32 %i.bz, %i.av
  %i.cb = sitofp reassoc nsz arcp contract afn i32 %i.ca to float
  %i.cc = add nuw nsw i64 %indvars.iv36.i, %wide.trip.count.i
  %.idx53.i = mul nuw nsw i64 %i.cc, 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx53.i
  %i.ce = tail call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.cb, float noundef %i.bp, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %i.cd) ; 0 uses
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count.i
  br i1 %exitcond40.not.i, label %.preheader5.i, label %bb.i, !llvm.loop !365

.lr.ph13.i:                                       ; preds = %bb.j
  %i.cf = add i32 %i.av, -1
  %i.cg = add i32 %i.cf, %i.az
  %i.ch = sitofp reassoc nsz arcp contract afn i32 %i.cg to float
  %i.ci = add nuw nsw i32 %i.bg, %i.bd
  %i.cj = zext nneg i32 %i.ci to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.j, %.lr.ph11.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph11.i ], [ %indvars.iv.next42.i, %bb.j ] ; 3 uses
  %i.ck = trunc i64 %indvars.iv41.i to i32
  %i.cl = mul i32 %i.bf, %i.ck
  %i.cm = add i32 %i.cl, %i.ax
  %i.cn = sitofp reassoc nsz arcp contract afn i32 %i.cm to float
  %i.co = add nuw nsw i64 %indvars.iv41.i, %i.bx
  %.idx54.i = mul nuw nsw i64 %i.co, 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx54.i
  %i.cq = tail call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.bw, float noundef %i.cn, i32 noundef 1, i32 noundef 1, ptr noundef %i.cp) ; 0 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %.lr.ph13.i, label %bb.j, !llvm.loop !366

.preheader3.i:                                    ; preds = %bb.k, %.preheader5.i
  %.not31.i = icmp eq i32 %i.bh, 0
  br i1 %.not31.i, label %._crit_edge.i, label %.preheader.i

bb.k:                                             ; preds = %bb.k, %.lr.ph13.i
  %indvars.iv46.i = phi i64 [ 0, %.lr.ph13.i ], [ %indvars.iv.next47.i, %bb.k ] ; 3 uses
  %i.cr = trunc i64 %indvars.iv46.i to i32
  %i.cs = mul i32 %i.bf, %i.cr
  %i.ct = add i32 %i.cs, %i.ax
  %i.cu = sitofp reassoc nsz arcp contract afn i32 %i.ct to float
  %i.cv = add nuw nsw i64 %indvars.iv46.i, %i.cj
  %.idx55.i = mul nuw nsw i64 %i.cv, 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx55.i
  %i.cx = tail call noundef zeroext i1 @_ZNK10lfModifier31ApplySubpixelGeometryDistortionEffiiPf(ptr noundef nonnull align 8 dereferenceable(96) %i.x, float noundef %i.ch, float noundef %i.cu, i32 noundef 1, i32 noundef 1, ptr noundef %i.cw) ; 0 uses
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next47.i, %wide.trip.count44.i
  br i1 %exitcond50.not.i, label %.preheader3.i, label %bb.k, !llvm.loop !367

.preheader.i:                                     ; preds = %.preheader3.i, %.preheader.i
  %.019123.i = phi i64 [ %i.eb, %.preheader.i ], [ 0, %.preheader3.i ] ; 2 uses
  %i.cy = phi <2 x float> [ %i.dr, %.preheader.i ], [ splat (float f0x7F7FFFFF), %.preheader3.i ] ; 2 uses
  %i.cz = phi <2 x float> [ %i.ea, %.preheader.i ], [ splat (float f0xFF7FFFFF), %.preheader3.i ] ; 2 uses
  %.idx.i = mul nuw nsw i64 %.019123.i, 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx.i ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dd = load <2 x float>, ptr %i.da, align 8, !tbaa !21 ; 5 uses
  %i.de = fcmp uno <2 x float> %i.dd, zeroinitializer ; 2 uses
  %i.df = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.cy, %i.dd
  %i.dg = select <2 x i1> %i.de, <2 x i1> splat (i1 true), <2 x i1> %i.df
  %i.dh = select <2 x i1> %i.dg, <2 x float> %i.cy, <2 x float> %i.dd ; 2 uses
  %i.di = load <2 x float>, ptr %i.db, align 8, !tbaa !21 ; 5 uses
  %i.dj = fcmp uno <2 x float> %i.di, zeroinitializer ; 2 uses
  %i.dk = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.dh, %i.di
  %i.dl = select <2 x i1> %i.dj, <2 x i1> splat (i1 true), <2 x i1> %i.dk
  %i.dm = select <2 x i1> %i.dl, <2 x float> %i.dh, <2 x float> %i.di ; 2 uses
  %i.dn = load <2 x float>, ptr %i.dc, align 8, !tbaa !21 ; 5 uses
  %i.do = fcmp uno <2 x float> %i.dn, zeroinitializer ; 2 uses
  %i.dp = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.dm, %i.dn
  %i.dq = select <2 x i1> %i.do, <2 x i1> splat (i1 true), <2 x i1> %i.dp
  %i.dr = select <2 x i1> %i.dq, <2 x float> %i.dm, <2 x float> %i.dn ; 2 uses
  %i.ds = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.cz, %i.dd
  %i.dt = select <2 x i1> %i.de, <2 x i1> splat (i1 true), <2 x i1> %i.ds
  %i.du = select <2 x i1> %i.dt, <2 x float> %i.cz, <2 x float> %i.dd ; 2 uses
  %i.dv = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.du, %i.di
  %i.dw = select <2 x i1> %i.dj, <2 x i1> splat (i1 true), <2 x i1> %i.dv
  %i.dx = select <2 x i1> %i.dw, <2 x float> %i.du, <2 x float> %i.di ; 2 uses
  %i.dy = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.dx, %i.dn
  %i.dz = select <2 x i1> %i.do, <2 x i1> splat (i1 true), <2 x i1> %i.dy
  %i.ea = select <2 x i1> %i.dz, <2 x float> %i.dx, <2 x float> %i.dn ; 2 uses
  %i.eb = add nuw nsw i64 %.019123.i, 1           ; 2 uses
  %exitcond51.not.i = icmp eq i64 %i.eb, %i.bj
  br i1 %exitcond51.not.i, label %._crit_edge.i, label %.preheader.i, !llvm.loop !368

._crit_edge.i:                                    ; preds = %.preheader.i, %.preheader3.i
  %i.ec = phi <2 x float> [ splat (float f0xFF7FFFFF), %.preheader3.i ], [ %i.ea, %.preheader.i ] ; 4 uses
  %i.ed = phi <2 x float> [ splat (float f0x7F7FFFFF), %.preheader3.i ], [ %i.dr, %.preheader.i ] ; 4 uses
  tail call void @free(ptr noundef %i.bl) #30
  %i.ee = extractelement <2 x float> %i.ed, i64 0
  %or.cond.i = tail call i1 @llvm.is.fpclass.f32(float %i.ee, /* (zero psub pnorm) */ i32 480)
  %i.ef = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ed, %i.q
  %i.eg = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ec)
  %i.eh = fcmp reassoc nsz arcp contract afn oge <2 x float> %i.ec, splat (float 1.000000e+00)
  %i.ei = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ec, %i.q
  %i.ej = extractelement <2 x float> %i.ed, i64 1
  %or.cond5.i = tail call i1 @llvm.is.fpclass.f32(float %i.ej, /* (zero psub pnorm) */ i32 480)
  %i.ek = tail call ptr @dt_interpolation_new(i32 noundef 3)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load i64, ptr %i.el, align 8, !tbaa !373
  %i.en = uitofp reassoc nsz arcp contract afn i64 %i.em to float
  %i.eo = fadd reassoc nsz arcp contract afn <2 x float> %i.q, splat (float -2.000000e+00)
  %i.ep = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.q)
  %i.eq = insertelement <2 x i1> poison, i1 %or.cond.i, i64 0
  %i.er = insertelement <2 x i1> %i.eq, i1 %or.cond5.i, i64 1
  %i.es = select <2 x i1> %i.er, <2 x i1> %i.ef, <2 x i1> zeroinitializer
  %i.et = select <2 x i1> %i.es, <2 x float> %i.ed, <2 x float> zeroinitializer
  %i.eu = fcmp one <2 x float> %i.eg, splat (float +inf)
  %i.ev = select <2 x i1> %i.eu, <2 x i1> %i.eh, <2 x i1> zeroinitializer
  %i.ew = select <2 x i1> %i.ev, <2 x i1> %i.ei, <2 x i1> zeroinitializer
  %i.ex = select <2 x i1> %i.ew, <2 x float> %i.ec, <2 x float> %i.q
  %i.ey = insertelement <2 x float> poison, float %i.en, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fa = fsub reassoc nsz arcp contract afn <2 x float> %i.et, %i.ez ; 2 uses
  %i.fb = fcmp reassoc nsz arcp contract afn ole <2 x float> %i.fa, zeroinitializer
  %i.fc = select <2 x i1> %i.fb, <2 x float> zeroinitializer, <2 x float> %i.fa
  %i.fd = fptosi <2 x float> %i.fc to <2 x i32>   ; 3 uses
  %i.fe = sitofp <2 x i32> %i.fd to <2 x float>   ; 2 uses
  %i.ff = fsub reassoc nsz arcp contract afn <2 x float> %i.q, %i.fe ; 2 uses
  %i.fg = fsub reassoc nsz arcp contract afn <2 x float> %i.ex, %i.fe
  %i.fh = fadd reassoc nsz arcp contract afn <2 x float> %i.fg, %i.ez ; 2 uses
  %i.fi = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.ff, %i.fh
  %i.fj = select <2 x i1> %i.fi, <2 x float> %i.ff, <2 x float> %i.fh
  %i.fk = fptosi <2 x float> %i.fj to <2 x i32>   ; 2 uses
  %i.fl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.eo)
  %i.fm = fptosi <2 x float> %i.fl to <2 x i32>   ; 2 uses
  %i.fn = icmp sgt <2 x i32> %i.fd, %i.fm
  %i.fo = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fd, <2 x i32> zeroinitializer)
  %i.fp = select <2 x i1> %i.fn, <2 x i32> %i.fm, <2 x i32> %i.fo ; 3 uses
  %i.fq = extractelement <2 x i32> %i.fp, i64 0
  store i32 %i.fq, ptr %3, align 4, !tbaa !112
  %i.fr = extractelement <2 x i32> %i.fp, i64 1
  store i32 %i.fr, ptr %i.aw, align 4, !tbaa !113
  %i.fs = fptosi <2 x float> %i.ep to <2 x i32>
  %i.ft = sub nsw <2 x i32> %i.fs, %i.fp          ; 2 uses
  %i.fu = icmp slt <2 x i32> %i.ft, %i.fk
  %i.fv = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fk, <2 x i32> splat (i32 1))
  %i.fw = select <2 x i1> %i.fu, <2 x i32> %i.ft, <2 x i32> %i.fv
  store <2 x i32> %i.fw, ptr %i.ay, align 4, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %_ZL13_get_modifierPiiiPK18dt_iop_lens_data_tii.exit.i
  tail call void @_ZN10lfModifierD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %i.x) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 96) #33
  br label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit

bb.m:                                             ; preds = %bb.a
  %i.fx = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !129
  %.fr121.i = freeze i32 %i.fy                    ; 7 uses
  %.not.i15 = icmp eq i32 %.fr121.i, 0
  br i1 %.not.i15, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !130
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gd = load float, ptr %i.gc, align 8, !tbaa !131
  %i.ge = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gd ; 8 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !111
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.gi = load <2 x i32>, ptr %i.gh, align 16, !tbaa !24
  %i.gj = sitofp <2 x i32> %i.gi to <2 x float>
  %i.gk = insertelement <2 x float> poison, float %i.gg, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = fmul reassoc nsz arcp contract afn <2 x float> %i.gl, %i.gj ; 3 uses
  %i.gn = fmul reassoc nsz arcp contract afn <2 x float> %i.gm, splat (float 5.000000e-01) ; 34 uses
  %i.go = extractelement <2 x float> %i.gn, i64 0 ; 5 uses
  %i.gp = extractelement <2 x float> %i.gn, i64 1 ; 5 uses
  %i.gq = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.go, float noundef %i.gp) #32
  %i.gr = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.gq ; 8 uses
  %i.gs = load i32, ptr %3, align 4, !tbaa !112   ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !113 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !106 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !107 ; 4 uses
  %i.gz = sitofp reassoc nsz arcp contract afn i32 %i.gs to float
  %i.ha = fsub reassoc nsz arcp contract afn float %i.gz, %i.go
  %i.hb = fmul reassoc nsz arcp contract afn float %i.ha, %i.ge ; 4 uses
  %i.hc = add i32 %i.gs, -1
  %i.hd = add i32 %i.hc, %i.gw
  %i.he = sitofp reassoc nsz arcp contract afn i32 %i.hd to float
  %i.hf = fsub reassoc nsz arcp contract afn float %i.he, %i.go
  %i.hg = fmul reassoc nsz arcp contract afn float %i.hf, %i.ge ; 4 uses
  %i.hh = sitofp reassoc nsz arcp contract afn i32 %i.gu to float
  %i.hi = fsub reassoc nsz arcp contract afn float %i.hh, %i.gp
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, %i.ge ; 5 uses
  %i.hk = add i32 %i.gu, -1
  %i.hl = add i32 %i.hk, %i.gy
  %i.hm = sitofp reassoc nsz arcp contract afn i32 %i.hl to float
  %i.hn = fsub reassoc nsz arcp contract afn float %i.hm, %i.gp
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hn, %i.ge ; 4 uses
  %i.hp = icmp sgt i32 %i.gw, 0
  br i1 %i.hp, label %.lr.ph.i19, label %.preheader.i16

.lr.ph.i19:                                       ; preds = %bb.o
  %i.hq = getelementptr inbounds nuw i8, ptr %i.b, i64 108 ; 13 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.b, i64 236 ; 9 uses
  %i.hs = load float, ptr %i.hq, align 4, !tbaa !21 ; 4 uses
  %i.ht = icmp sgt i32 %.fr121.i, 1
  %wide.trip.count.i.i = zext nneg i32 %.fr121.i to i64 ; 6 uses
  %i.hu = sext i32 %.fr121.i to i64               ; 3 uses
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.hr, i64 %i.hu ; 3 uses
  %i.hv = getelementptr i8, ptr %invariant.gep.i, i64 -4 ; 4 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 364 ; 9 uses
  br i1 %i.ht, label %.split42.us.us.preheader.i, label %.split42.preheader.i

.split42.preheader.i:                             ; preds = %.lr.ph.i19
  %i.hx = getelementptr i8, ptr %invariant.gep.i, i64 60 ; 2 uses
  %i.hy = getelementptr i8, ptr %invariant.gep.i, i64 124 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 300 ; 2 uses
  %i.ia = insertelement <2 x float> poison, float %i.hj, i64 1
  br label %.split42.i

.split42.us.us.preheader.i:                       ; preds = %.lr.ph.i19
  %i.ib = getelementptr inbounds nuw i8, ptr %i.b, i64 300 ; 7 uses
  %i.ic = getelementptr [4 x i8], ptr %i.ib, i64 %i.hu
  %i.id = getelementptr i8, ptr %i.ic, i64 -4     ; 2 uses
  %i.ie = getelementptr [4 x i8], ptr %i.hw, i64 %i.hu
  %i.if = getelementptr i8, ptr %i.ie, i64 -4     ; 2 uses
  %i.ig = insertelement <2 x float> poison, float %i.ho, i64 1 ; 3 uses
  %i.ih = insertelement <2 x float> poison, float %i.hj, i64 1 ; 3 uses
  br label %.split42.us.us.i

.split42.us.us.i:                                 ; preds = %.split18.split.us.us.us.i.1, %.split42.us.us.preheader.i
  %.016155.us.i = phi i32 [ %i.qy, %.split18.split.us.us.us.i.1 ], [ 0, %.split42.us.us.preheader.i ] ; 2 uses
  %i.ii = phi <4 x float> [ %i.qx, %.split18.split.us.us.us.i.1 ], [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.split42.us.us.preheader.i ] ; 6 uses
  %i.ij = add nsw i32 %.016155.us.i, %i.gs
  %i.ik = sitofp reassoc nsz arcp contract afn i32 %i.ij to float
  %i.il = fsub reassoc nsz arcp contract afn float %i.ik, %i.go
  %i.im = fmul reassoc nsz arcp contract afn float %i.il, %i.ge ; 8 uses
  %i.in = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.im, float noundef %i.hj) #32
  %i.io = fmul reassoc nsz arcp contract afn float %i.in, %i.gr ; 10 uses
  %i.ip = fcmp reassoc nsz arcp contract afn olt float %i.io, %i.hs
  br i1 %i.ip, label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i, label %.lr.ph.i.us.us.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us.us.us.preheader.i: ; preds = %.split42.us.us.i
  %i.iq = load float, ptr %i.hr, align 4, !tbaa !21
  %i.ir = load float, ptr %i.ib, align 4, !tbaa !21
  %i.is = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iu = insertelement <2 x float> %i.ih, float %i.im, i64 0 ; 2 uses
  %i.iv = fmul reassoc nsz arcp contract afn <2 x float> %i.it, %i.iu
  %i.iw = fadd reassoc nsz arcp contract afn <2 x float> %i.iv, %i.gn
  %i.ix = shufflevector <2 x float> %i.iw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.iy = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ii, %i.ix
  %i.iz = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ii, %i.ix
  %i.ja = shufflevector <4 x i1> %i.iz, <4 x i1> %i.iy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jb = select <4 x i1> %i.ja, <4 x float> %i.ii, <4 x float> %i.ix ; 3 uses
  %i.jc = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.je = fmul reassoc nsz arcp contract afn <2 x float> %i.jd, %i.iu
  %i.jf = fadd reassoc nsz arcp contract afn <2 x float> %i.je, %i.gn
  %i.jg = shufflevector <2 x float> %i.jf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.jh = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.jb, %i.jg
  %i.ji = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.jb, %i.jg
  %i.jj = shufflevector <4 x i1> %i.ji, <4 x i1> %i.jh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jk = select <4 x i1> %i.jj, <4 x float> %i.jb, <4 x float> %i.jg
  %i.jl = load float, ptr %i.hw, align 4, !tbaa !21
  br label %.split18.split.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %.split42.us.us.i, %bb.q
  %indvars.iv.i.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.i, %bb.q ], [ 1, %.split42.us.us.i ] ; 4 uses
  %i.jm = add nsw i64 %indvars.iv.i.us.us.us.i, -1 ; 2 uses
  %i.jn = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.jm
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !21 ; 3 uses
  %i.jp = fcmp reassoc nsz arcp contract afn ult float %i.io, %i.jo
  br i1 %i.jp, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.us.us.us.i
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i.us.us.us.i
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !21 ; 2 uses
  %i.js = fcmp reassoc nsz arcp contract afn ugt float %i.io, %i.jr
  br i1 %i.js, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.us.us.us.i
  %indvars.iv.next.i.us.us.us.i = add nuw nsw i64 %indvars.iv.i.us.us.us.i, 1 ; 2 uses
  %exitcond.not.i.us.us.us.i = icmp eq i64 %indvars.iv.next.i.us.us.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.us.i, label %._crit_edge.i.loopexit.us.us.us.i, label %.lr.ph.i.us.us.us.i, !llvm.loop !0

bb.r:                                             ; preds = %bb.p
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %indvars.iv.i.us.us.us.i
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !21
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.hr, i64 %i.jm
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !21 ; 2 uses
  %i.jx = fsub reassoc nsz arcp contract afn float %i.ju, %i.jw
  %i.jy = fsub reassoc nsz arcp contract afn float %i.jr, %i.jo
  %i.jz = fsub reassoc nsz arcp contract afn float %i.io, %i.jo
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jx, %i.jz
  %i.kb = fdiv reassoc nsz arcp contract afn float %i.ka, %i.jy
  %i.kc = fadd reassoc nsz arcp contract afn float %i.kb, %i.jw
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i

._crit_edge.i.loopexit.us.us.us.i:                ; preds = %bb.q
  %i.kd = load float, ptr %i.hv, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i: ; preds = %._crit_edge.i.loopexit.us.us.us.i, %bb.r
  %.1.i.us28.us.us.i = phi nsz float [ %i.kc, %bb.r ], [ %i.kd, %._crit_edge.i.loopexit.us.us.us.i ]
  %i.ke = insertelement <2 x float> poison, float %.1.i.us28.us.us.i, i64 0
  %i.kf = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kg = insertelement <2 x float> %i.ih, float %i.im, i64 0 ; 2 uses
  %i.kh = fmul reassoc nsz arcp contract afn <2 x float> %i.kf, %i.kg
  %i.ki = fadd reassoc nsz arcp contract afn <2 x float> %i.kh, %i.gn
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.kk = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ii, %i.kj
  %i.kl = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ii, %i.kj
  %i.km = shufflevector <4 x i1> %i.kl, <4 x i1> %i.kk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kn = select <4 x i1> %i.km, <4 x float> %i.ii, <4 x float> %i.kj ; 3 uses
  br label %.lr.ph.i.us.us.us.1.i

.lr.ph.i.us.us.us.1.i:                            ; preds = %bb.u, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i
  %indvars.iv.i.us.us.us.1.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.i ], [ %indvars.iv.next.i.us.us.us.1.i, %bb.u ] ; 4 uses
  %i.ko = add nsw i64 %indvars.iv.i.us.us.us.1.i, -1 ; 2 uses
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.ko
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !21 ; 3 uses
  %i.kr = fcmp reassoc nsz arcp contract afn ult float %i.io, %i.kq
  br i1 %i.kr, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i.us.us.us.1.i
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i.us.us.us.1.i
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !21 ; 2 uses
  %i.ku = fcmp reassoc nsz arcp contract afn ugt float %i.io, %i.kt
  br i1 %i.ku, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.ib, i64 %indvars.iv.i.us.us.us.1.i
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !21
  %i.kx = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.ko
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !21 ; 2 uses
  %i.kz = fsub reassoc nsz arcp contract afn float %i.kw, %i.ky
  %i.la = fsub reassoc nsz arcp contract afn float %i.kt, %i.kq
  %i.lb = fsub reassoc nsz arcp contract afn float %i.io, %i.kq
  %i.lc = fmul reassoc nsz arcp contract afn float %i.kz, %i.lb
  %i.ld = fdiv reassoc nsz arcp contract afn float %i.lc, %i.la
  %i.le = fadd reassoc nsz arcp contract afn float %i.ld, %i.ky
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i

bb.u:                                             ; preds = %bb.s, %.lr.ph.i.us.us.us.1.i
  %indvars.iv.next.i.us.us.us.1.i = add nuw nsw i64 %indvars.iv.i.us.us.us.1.i, 1 ; 2 uses
  %exitcond.not.i.us.us.us.1.i = icmp eq i64 %indvars.iv.next.i.us.us.us.1.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.us.us.1.i, label %._crit_edge.i.loopexit.us.us.us.1.i, label %.lr.ph.i.us.us.us.1.i, !llvm.loop !0

._crit_edge.i.loopexit.us.us.us.1.i:              ; preds = %bb.u
  %i.lf = load float, ptr %i.id, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i

_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i: ; preds = %._crit_edge.i.loopexit.us.us.us.1.i, %bb.t
  %.1.i.us28.us.us.1.i = phi nsz float [ %i.le, %bb.t ], [ %i.lf, %._crit_edge.i.loopexit.us.us.us.1.i ]
  %i.lg = insertelement <2 x float> poison, float %.1.i.us28.us.us.1.i, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fmul reassoc nsz arcp contract afn <2 x float> %i.lh, %i.kg
  %i.lj = fadd reassoc nsz arcp contract afn <2 x float> %i.li, %i.gn
  %i.lk = shufflevector <2 x float> %i.lj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.ll = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.kn, %i.lk
  %i.lm = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.kn, %i.lk
  %i.ln = shufflevector <4 x i1> %i.lm, <4 x i1> %i.ll, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.lo = select <4 x i1> %i.ln, <4 x float> %i.kn, <4 x float> %i.lk ; 2 uses
  br label %.lr.ph.i.us.us.us.2.i

.lr.ph.i.us.us.us.2.i:                            ; preds = %bb.x, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i
  %indvars.iv.i.us.us.us.2.i = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit.us27.us.us.1.i ], [ %indvars.iv.next.i.us.us.us.2.i, %bb.x ] ; 4 uses
  %i.lp = add nsw i64 %indvars.iv.i.us.us.us.2.i, -1 ; 2 uses
  %i.lq = getelementptr inbounds [4 x i8], ptr %i.hq, i64 %i.lp
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !21 ; 3 uses
  %i.ls = fcmp reassoc nsz arcp contract afn ult float %i.io, %i.lr
  br i1 %i.ls, label %bb.x, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.us.us.us.2.i
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i.us.us.us.2.i
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !21 ; 2 uses
  %i.lv = fcmp reassoc nsz arcp contract afn ugt float %i.io, %i.lu
  br i1 %i.lv, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %indvars.iv.i.us.us.us.2.i
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !21
  %i.ly = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.lp
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !21 ; 2 uses
  %i.ma = fsub reassoc nsz arcp contract afn float %i.lx, %i.lz
  %i.mb = fsub reassoc nsz arcp contract afn float %i.lu, %i.lr
  %i.mc = fsub reassoc nsz arcp contract afn float %i.io, %i.lr
  %i.md = fmul reassoc nsz arcp contract afn float %i.ma, %i.mc
  %i.me = fdiv reassoc nsz arcp contract afn float %i.md, %i.mb
  %i.mf = fadd reassoc nsz arcp contract afn float %i.me, %i.lz
  br label %.split18.split.us.us.us.i

end_hunk_0
begin_hunk_1_@modify_roi_in:bb.a
.split70.split.us.us.us.i:                        ; preds = %._crit_edge.i193.loopexit.us.us.us.2.i, %bb.ao, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i
  %.1.i194.us81.us.us.2.sink277.i = phi float [ %i.sy, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i ], [ %i.vs, %bb.ao ], [ %i.vt, %._crit_edge.i193.loopexit.us.us.us.2.i ]
  %i.vu = phi <4 x float> [ %i.sx, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i ], [ %i.vb, %bb.ao ], [ %i.vb, %._crit_edge.i193.loopexit.us.us.us.2.i ] ; 2 uses
  %i.vv = insertelement <2 x float> poison, float %.1.i194.us81.us.us.2.sink277.i, i64 0
  %i.vw = shufflevector <2 x float> %i.vv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vx = insertelement <2 x float> %i.ru, float %i.rz, i64 1
  %i.vy = fmul reassoc nsz arcp contract afn <2 x float> %i.vw, %i.vx
  %i.vz = shufflevector <4 x float> %i.vu, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.wa = fadd reassoc nsz arcp contract afn <2 x float> %i.vy, %i.gn ; 4 uses
  %i.wb = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.vz, %i.wa
  %i.wc = shufflevector <4 x float> %i.vu, <4 x float> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.wd = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.wc, %i.wa
  %i.we = select <2 x i1> %i.wd, <2 x float> %i.wc, <2 x float> %i.wa ; 4 uses
  %i.wf = select <2 x i1> %i.wb, <2 x float> %i.vz, <2 x float> %i.wa ; 4 uses
  %i.wg = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.hg, float noundef %i.rz) #32
  %i.wh = fmul reassoc nsz arcp contract afn float %i.wg, %i.gr ; 10 uses
  %i.wi = fcmp reassoc nsz arcp contract afn olt float %i.wh, %i.rf
  br i1 %i.wi, label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1, label %.lr.ph.i197.us.us.us.i.1

.lr.ph.i197.us.us.us.i.1:                         ; preds = %.split70.split.us.us.us.i, %bb.as
  %indvars.iv.i198.us.us.us.i.1 = phi i64 [ %indvars.iv.next.i199.us.us.us.i.1, %bb.as ], [ 1, %.split70.split.us.us.us.i ] ; 4 uses
  %i.wj = add nsw i64 %indvars.iv.i198.us.us.us.i.1, -1 ; 2 uses
  %i.wk = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.wj
  %i.wl = load float, ptr %i.wk, align 4, !tbaa !21 ; 3 uses
  %i.wm = fcmp reassoc nsz arcp contract afn ult float %i.wh, %i.wl
  br i1 %i.wm, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.i197.us.us.us.i.1
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv.i198.us.us.us.i.1
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !21 ; 2 uses
  %i.wp = fcmp reassoc nsz arcp contract afn ugt float %i.wh, %i.wo
  br i1 %i.wp, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %indvars.iv.i198.us.us.us.i.1
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !21
  %i.ws = getelementptr inbounds [4 x i8], ptr %i.re, i64 %i.wj
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !21 ; 2 uses
  %i.wu = fsub reassoc nsz arcp contract afn float %i.wr, %i.wt
  %i.wv = fsub reassoc nsz arcp contract afn float %i.wo, %i.wl
  %i.ww = fsub reassoc nsz arcp contract afn float %i.wh, %i.wl
  %i.wx = fmul reassoc nsz arcp contract afn float %i.wu, %i.ww
  %i.wy = fdiv reassoc nsz arcp contract afn float %i.wx, %i.wv
  %i.wz = fadd reassoc nsz arcp contract afn float %i.wy, %i.wt
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i.1

bb.as:                                            ; preds = %bb.aq, %.lr.ph.i197.us.us.us.i.1
  %indvars.iv.next.i199.us.us.us.i.1 = add nuw nsw i64 %indvars.iv.i198.us.us.us.i.1, 1 ; 2 uses
  %exitcond.not.i200.us.us.us.i.1 = icmp eq i64 %indvars.iv.next.i199.us.us.us.i.1, %wide.trip.count.i196.i
  br i1 %exitcond.not.i200.us.us.us.i.1, label %._crit_edge.i193.loopexit.us.us.us.i.1, label %.lr.ph.i197.us.us.us.i.1, !llvm.loop !0

._crit_edge.i193.loopexit.us.us.us.i.1:           ; preds = %bb.as
  %i.xa = load float, ptr %i.ri, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i.1

_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i.1: ; preds = %._crit_edge.i193.loopexit.us.us.us.i.1, %bb.ar
  %.1.i194.us81.us.us.i.1 = phi nsz float [ %i.wz, %bb.ar ], [ %i.xa, %._crit_edge.i193.loopexit.us.us.us.i.1 ]
  %i.xb = insertelement <2 x float> poison, float %.1.i194.us81.us.us.i.1, i64 0
  %i.xc = shufflevector <2 x float> %i.xb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xd = insertelement <2 x float> %i.rt, float %i.rz, i64 1 ; 2 uses
  %i.xe = fmul reassoc nsz arcp contract afn <2 x float> %i.xc, %i.xd
  %i.xf = fadd reassoc nsz arcp contract afn <2 x float> %i.xe, %i.gn ; 4 uses
  %i.xg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.we, %i.xf
  %i.xh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.wf, %i.xf
  %i.xi = select <2 x i1> %i.xg, <2 x float> %i.we, <2 x float> %i.xf ; 2 uses
  %i.xj = select <2 x i1> %i.xh, <2 x float> %i.wf, <2 x float> %i.xf ; 2 uses
  br label %.lr.ph.i197.us.us.us.1.i.1

.lr.ph.i197.us.us.us.1.i.1:                       ; preds = %bb.av, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i.1
  %indvars.iv.i198.us.us.us.1.i.1 = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.i.1 ], [ %indvars.iv.next.i199.us.us.us.1.i.1, %bb.av ] ; 4 uses
  %i.xk = add nsw i64 %indvars.iv.i198.us.us.us.1.i.1, -1 ; 2 uses
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.xk
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !21 ; 3 uses
  %i.xn = fcmp reassoc nsz arcp contract afn ult float %i.wh, %i.xm
  br i1 %i.xn, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i197.us.us.us.1.i.1
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv.i198.us.us.us.1.i.1
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !21 ; 2 uses
  %i.xq = fcmp reassoc nsz arcp contract afn ugt float %i.wh, %i.xp
  br i1 %i.xq, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.ro, i64 %indvars.iv.i198.us.us.us.1.i.1
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !21
  %i.xt = getelementptr inbounds [4 x i8], ptr %i.ro, i64 %i.xk
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !21 ; 2 uses
  %i.xv = fsub reassoc nsz arcp contract afn float %i.xs, %i.xu
  %i.xw = fsub reassoc nsz arcp contract afn float %i.xp, %i.xm
  %i.xx = fsub reassoc nsz arcp contract afn float %i.wh, %i.xm
  %i.xy = fmul reassoc nsz arcp contract afn float %i.xv, %i.xx
  %i.xz = fdiv reassoc nsz arcp contract afn float %i.xy, %i.xw
  %i.ya = fadd reassoc nsz arcp contract afn float %i.xz, %i.xu
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i.1

bb.av:                                            ; preds = %bb.at, %.lr.ph.i197.us.us.us.1.i.1
  %indvars.iv.next.i199.us.us.us.1.i.1 = add nuw nsw i64 %indvars.iv.i198.us.us.us.1.i.1, 1 ; 2 uses
  %exitcond.not.i200.us.us.us.1.i.1 = icmp eq i64 %indvars.iv.next.i199.us.us.us.1.i.1, %wide.trip.count.i196.i
  br i1 %exitcond.not.i200.us.us.us.1.i.1, label %._crit_edge.i193.loopexit.us.us.us.1.i.1, label %.lr.ph.i197.us.us.us.1.i.1, !llvm.loop !0

._crit_edge.i193.loopexit.us.us.us.1.i.1:         ; preds = %bb.av
  %i.yb = load float, ptr %i.rq, align 4, !tbaa !21
  br label %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i.1

_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i.1: ; preds = %._crit_edge.i193.loopexit.us.us.us.1.i.1, %bb.au
  %.1.i194.us81.us.us.1.i.1 = phi nsz float [ %i.ya, %bb.au ], [ %i.yb, %._crit_edge.i193.loopexit.us.us.us.1.i.1 ]
  %i.yc = insertelement <2 x float> poison, float %.1.i194.us81.us.us.1.i.1, i64 0
  %i.yd = shufflevector <2 x float> %i.yc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ye = fmul reassoc nsz arcp contract afn <2 x float> %i.yd, %i.xd
  %i.yf = fadd reassoc nsz arcp contract afn <2 x float> %i.ye, %i.gn ; 4 uses
  %i.yg = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.xi, %i.yf
  %i.yh = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.xj, %i.yf
  %i.yi = select <2 x i1> %i.yg, <2 x float> %i.xi, <2 x float> %i.yf ; 2 uses
  %i.yj = select <2 x i1> %i.yh, <2 x float> %i.xj, <2 x float> %i.yf ; 2 uses
  br label %.lr.ph.i197.us.us.us.2.i.1

.lr.ph.i197.us.us.us.2.i.1:                       ; preds = %bb.ay, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i.1
  %indvars.iv.i198.us.us.us.2.i.1 = phi i64 [ 1, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us80.us.us.1.i.1 ], [ %indvars.iv.next.i199.us.us.us.2.i.1, %bb.ay ] ; 4 uses
  %i.yk = add nsw i64 %indvars.iv.i198.us.us.us.2.i.1, -1 ; 2 uses
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.rd, i64 %i.yk
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !21 ; 3 uses
  %i.yn = fcmp reassoc nsz arcp contract afn ult float %i.wh, %i.ym
  br i1 %i.yn, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i197.us.us.us.2.i.1
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv.i198.us.us.us.2.i.1
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !21 ; 2 uses
  %i.yq = fcmp reassoc nsz arcp contract afn ugt float %i.wh, %i.yp
  br i1 %i.yq, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %indvars.iv.i198.us.us.us.2.i.1
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !21
  %i.yt = getelementptr inbounds [4 x i8], ptr %i.rj, i64 %i.yk
  %i.yu = load float, ptr %i.yt, align 4, !tbaa !21 ; 2 uses
  %i.yv = fsub reassoc nsz arcp contract afn float %i.ys, %i.yu
  %i.yw = fsub reassoc nsz arcp contract afn float %i.yp, %i.ym
  %i.yx = fsub reassoc nsz arcp contract afn float %i.wh, %i.ym
  %i.yy = fmul reassoc nsz arcp contract afn float %i.yv, %i.yx
  %i.yz = fdiv reassoc nsz arcp contract afn float %i.yy, %i.yw
  %i.za = fadd reassoc nsz arcp contract afn float %i.yz, %i.yu
  br label %.split70.split.us.us.us.i.1

bb.ay:                                            ; preds = %bb.aw, %.lr.ph.i197.us.us.us.2.i.1
  %indvars.iv.next.i199.us.us.us.2.i.1 = add nuw nsw i64 %indvars.iv.i198.us.us.us.2.i.1, 1 ; 2 uses
  %exitcond.not.i200.us.us.us.2.i.1 = icmp eq i64 %indvars.iv.next.i199.us.us.us.2.i.1, %wide.trip.count.i196.i
  br i1 %exitcond.not.i200.us.us.us.2.i.1, label %._crit_edge.i193.loopexit.us.us.us.2.i.1, label %.lr.ph.i197.us.us.us.2.i.1, !llvm.loop !0

._crit_edge.i193.loopexit.us.us.us.2.i.1:         ; preds = %bb.ay
  %i.zb = load float, ptr %i.rs, align 4, !tbaa !21
  br label %.split70.split.us.us.us.i.1

_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1: ; preds = %.split70.split.us.us.us.i
  %i.zc = load float, ptr %i.re, align 4, !tbaa !21
  %i.zd = load float, ptr %i.ro, align 4, !tbaa !21
  %i.ze = insertelement <2 x float> poison, float %i.zc, i64 0
  %i.zf = shufflevector <2 x float> %i.ze, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zg = insertelement <2 x float> %i.rt, float %i.rz, i64 1 ; 2 uses
  %i.zh = fmul reassoc nsz arcp contract afn <2 x float> %i.zf, %i.zg
  %i.zi = fadd reassoc nsz arcp contract afn <2 x float> %i.zh, %i.gn ; 4 uses
  %i.zj = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.we, %i.zi
  %i.zk = select <2 x i1> %i.zj, <2 x float> %i.we, <2 x float> %i.zi ; 2 uses
  %i.zl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.wf, %i.zi
  %i.zm = select <2 x i1> %i.zl, <2 x float> %i.wf, <2 x float> %i.zi ; 2 uses
  %i.zn = insertelement <2 x float> poison, float %i.zd, i64 0
  %i.zo = shufflevector <2 x float> %i.zn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zp = fmul reassoc nsz arcp contract afn <2 x float> %i.zo, %i.zg
  %i.zq = fadd reassoc nsz arcp contract afn <2 x float> %i.zp, %i.gn ; 4 uses
  %i.zr = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.zk, %i.zq
  %i.zs = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.zm, %i.zq
  %i.zt = select <2 x i1> %i.zr, <2 x float> %i.zk, <2 x float> %i.zq
  %i.zu = select <2 x i1> %i.zs, <2 x float> %i.zm, <2 x float> %i.zq
  %i.zv = load float, ptr %i.rj, align 4, !tbaa !21
  br label %.split70.split.us.us.us.i.1

.split70.split.us.us.us.i.1:                      ; preds = %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1, %._crit_edge.i193.loopexit.us.us.us.2.i.1, %bb.ax
  %.1.i194.us81.us.us.2.sink277.i.1 = phi float [ %i.zv, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1 ], [ %i.za, %bb.ax ], [ %i.zb, %._crit_edge.i193.loopexit.us.us.us.2.i.1 ]
  %i.zw = phi <2 x float> [ %i.zt, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1 ], [ %i.yi, %bb.ax ], [ %i.yi, %._crit_edge.i193.loopexit.us.us.us.2.i.1 ] ; 2 uses
  %i.zx = phi <2 x float> [ %i.zu, %_ZL26_interpolate_linear_splinePKfS0_if.exit201.us.us.us.preheader.i.1 ], [ %i.yj, %bb.ax ], [ %i.yj, %._crit_edge.i193.loopexit.us.us.us.2.i.1 ] ; 2 uses
  %i.zy = insertelement <2 x float> poison, float %.1.i194.us81.us.us.2.sink277.i.1, i64 0
  %i.zz = shufflevector <2 x float> %i.zy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaa = insertelement <2 x float> %i.rt, float %i.rz, i64 1
  %i.aab = fmul reassoc nsz arcp contract afn <2 x float> %i.zz, %i.aaa
  %i.aac = fadd reassoc nsz arcp contract afn <2 x float> %i.aab, %i.gn ; 4 uses
  %i.aad = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.zw, %i.aac
  %i.aae = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.zx, %i.aac
  %i.aaf = select <2 x i1> %i.aad, <2 x float> %i.zw, <2 x float> %i.aac ; 2 uses
  %i.aag = select <2 x i1> %i.aae, <2 x float> %i.zx, <2 x float> %i.aac ; 2 uses
  %i.aah = add nuw nsw i32 %.0158111.us.i, 1      ; 2 uses
  %exitcond187.not.i = icmp eq i32 %i.aah, %i.gy
  %i.aai = shufflevector <2 x float> %i.aag, <2 x float> %i.aaf, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br i1 %exitcond187.not.i, label %._crit_edge.i17, label %.split97.us.us.i, !llvm.loop !370

.split42.i:                                       ; preds = %.split42.i, %.split42.preheader.i
  %.016155.i = phi i32 [ %i.acw, %.split42.i ], [ 0, %.split42.preheader.i ] ; 2 uses
  %i.aaj = phi <2 x float> [ %i.acx, %.split42.i ], [ splat (float f0xFF7FFFFF), %.split42.preheader.i ] ; 2 uses
  %i.aak = phi <2 x float> [ %i.acy, %.split42.i ], [ splat (float f0x7F7FFFFF), %.split42.preheader.i ] ; 2 uses
  %i.aal = add nsw i32 %.016155.i, %i.gs
  %i.aam = sitofp reassoc nsz arcp contract afn i32 %i.aal to float
  %i.aan = fsub reassoc nsz arcp contract afn float %i.aam, %i.go
  %i.aao = fmul reassoc nsz arcp contract afn float %i.aan, %i.ge ; 4 uses
  %i.aap = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.aao, float noundef %i.hj) #32
  %i.aaq = fmul reassoc nsz arcp contract afn float %i.aap, %i.gr
  %i.aar = fcmp reassoc nsz arcp contract afn olt float %i.aaq, %i.hs ; 3 uses
  %. = select i1 %i.aar, ptr %i.hr, ptr %i.hv
  %.632 = select i1 %i.aar, ptr %i.hz, ptr %i.hx
  %.633 = select i1 %i.aar, ptr %i.hw, ptr %i.hy
  %.sink441 = load float, ptr %., align 4, !tbaa !21 ; 2 uses
  %4 = fmul reassoc nsz arcp contract afn float %.sink441, %i.aao
  %5 = fmul reassoc nsz arcp contract afn float %.sink441, %i.hj
  %.sink284 = load float, ptr %.632, align 4, !tbaa !21
  %.sink295.i = load float, ptr %.633, align 4, !tbaa !21
  %6 = insertelement <2 x float> poison, float %4, i64 0
  %7 = insertelement <2 x float> %6, float %5, i64 1
  %i.aas = fadd reassoc nsz arcp contract afn <2 x float> %7, %i.gn ; 3 uses
  %i.aat = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aak, %i.aas
  %i.aau = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aaj, %i.aas
  %i.aav = shufflevector <2 x i1> %i.aau, <2 x i1> %i.aat, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aaw = shufflevector <2 x float> %i.aaj, <2 x float> %i.aak, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aax = shufflevector <2 x float> %i.aas, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aay = select <4 x i1> %i.aav, <4 x float> %i.aaw, <4 x float> %i.aax ; 3 uses
  %i.aaz = insertelement <2 x float> poison, float %.sink284, i64 0
  %i.aba = shufflevector <2 x float> %i.aaz, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = insertelement <2 x float> %i.ia, float %i.aao, i64 0 ; 3 uses
  %i.abb = fmul reassoc nsz arcp contract afn <2 x float> %i.aba, %8
  %i.abc = fadd reassoc nsz arcp contract afn <2 x float> %i.abb, %i.gn
  %i.abd = shufflevector <2 x float> %i.abc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.abe = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.aay, %i.abd
  %i.abf = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.aay, %i.abd
  %i.abg = shufflevector <4 x i1> %i.abe, <4 x i1> %i.abf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.abh = select <4 x i1> %i.abg, <4 x float> %i.aay, <4 x float> %i.abd ; 3 uses
  %i.abi = insertelement <2 x float> poison, float %.sink295.i, i64 0
  %i.abj = shufflevector <2 x float> %i.abi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abk = fmul reassoc nsz arcp contract afn <2 x float> %i.abj, %8
  %i.abl = fadd reassoc nsz arcp contract afn <2 x float> %i.abk, %i.gn
  %i.abm = shufflevector <2 x float> %i.abl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.abn = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.abh, %i.abm
  %i.abo = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.abh, %i.abm
  %i.abp = shufflevector <4 x i1> %i.abn, <4 x i1> %i.abo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.abq = select <4 x i1> %i.abp, <4 x float> %i.abh, <4 x float> %i.abm ; 3 uses
  %i.abr = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.aao, float noundef %i.ho) #32
  %i.abs = fmul reassoc nsz arcp contract afn float %i.abr, %i.gr
  %i.abt = fcmp reassoc nsz arcp contract afn olt float %i.abs, %i.hs ; 3 uses
  %.sink451.in = select i1 %i.abt, ptr %i.hr, ptr %i.hv
  %.sink302.in = select i1 %i.abt, ptr %i.hz, ptr %i.hx
  %.sink313.in.i = select i1 %i.abt, ptr %i.hw, ptr %i.hy
  %.sink451 = load float, ptr %.sink451.in, align 4, !tbaa !21
  %i.abu = insertelement <2 x float> poison, float %.sink451, i64 0
  %i.abv = shufflevector <2 x float> %i.abu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abw = insertelement <2 x float> %8, float %i.ho, i64 1 ; 3 uses
  %i.abx = fmul reassoc nsz arcp contract afn <2 x float> %i.abv, %i.abw
  %.sink302 = load float, ptr %.sink302.in, align 4, !tbaa !21
  %.sink313.i = load float, ptr %.sink313.in.i, align 4, !tbaa !21
  %i.aby = fadd reassoc nsz arcp contract afn <2 x float> %i.abx, %i.gn
  %i.abz = shufflevector <2 x float> %i.aby, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.aca = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.abq, %i.abz
  %i.acb = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.abq, %i.abz
  %i.acc = shufflevector <4 x i1> %i.aca, <4 x i1> %i.acb, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.acd = select <4 x i1> %i.acc, <4 x float> %i.abq, <4 x float> %i.abz ; 3 uses
  %i.ace = insertelement <2 x float> poison, float %.sink302, i64 0
  %i.acf = shufflevector <2 x float> %i.ace, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acg = fmul reassoc nsz arcp contract afn <2 x float> %i.acf, %i.abw
  %i.ach = fadd reassoc nsz arcp contract afn <2 x float> %i.acg, %i.gn
  %i.aci = shufflevector <2 x float> %i.ach, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.acj = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.acd, %i.aci
  %i.ack = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.acd, %i.aci
  %i.acl = shufflevector <4 x i1> %i.acj, <4 x i1> %i.ack, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.acm = select <4 x i1> %i.acl, <4 x float> %i.acd, <4 x float> %i.aci ; 3 uses
  %i.acn = insertelement <2 x float> poison, float %.sink313.i, i64 0
  %i.aco = shufflevector <2 x float> %i.acn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acp = fmul reassoc nsz arcp contract afn <2 x float> %i.aco, %i.abw
  %i.acq = fadd reassoc nsz arcp contract afn <2 x float> %i.acp, %i.gn
  %i.acr = shufflevector <2 x float> %i.acq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.acs = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.acm, %i.acr
  %i.act = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.acm, %i.acr
  %i.acu = shufflevector <4 x i1> %i.acs, <4 x i1> %i.act, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.acv = select <4 x i1> %i.acu, <4 x float> %i.acm, <4 x float> %i.acr ; 3 uses
  %i.acw = add nuw nsw i32 %.016155.i, 1          ; 2 uses
  %exitcond.not.i20 = icmp eq i32 %i.acw, %i.gw
  %i.acx = shufflevector <4 x float> %i.acv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.acy = shufflevector <4 x float> %i.acv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %exitcond.not.i20, label %.preheader.i16, label %.split42.i, !llvm.loop !369

._crit_edge.i17:                                  ; preds = %.split97.i, %.split70.split.us.us.us.i.1, %.preheader.i16
  %i.acz = phi <2 x float> [ %i.rb, %.preheader.i16 ], [ %i.aaf, %.split70.split.us.us.us.i.1 ], [ %i.agm, %.split97.i ] ; 2 uses
  %i.ada = phi <2 x float> [ %i.rc, %.preheader.i16 ], [ %i.aag, %.split70.split.us.us.us.i.1 ], [ %i.agn, %.split97.i ]
  %i.adb = tail call ptr @dt_interpolation_new(i32 noundef 3)
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 16
  %i.add = load i64, ptr %i.adc, align 8, !tbaa !373
  %i.ade = uitofp reassoc nsz arcp contract afn i64 %i.add to float ; 2 uses
  %i.adf = fmul reassoc nnan nsz arcp contract afn float %i.ade, 2.000000e+00
  %i.adg = fsub reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.acz
  %i.adh = fadd reassoc nsz arcp contract afn <2 x float> %i.gm, splat (float -2.000000e+00)
  %i.adi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.gm)
  %i.adj = insertelement <2 x float> poison, float %i.ade, i64 0
  %i.adk = shufflevector <2 x float> %i.adj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adl = fsub reassoc nsz arcp contract afn <2 x float> %i.acz, %i.adk
  %i.adm = fptosi <2 x float> %i.adl to <2 x i32> ; 2 uses
  %i.adn = fadd reassoc nsz arcp contract afn <2 x float> %i.adg, %i.ada
  %i.ado = insertelement <2 x float> poison, float %i.adf, i64 0
  %i.adp = shufflevector <2 x float> %i.ado, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adq = fadd reassoc nsz arcp contract afn <2 x float> %i.adn, %i.adp
  %i.adr = fptosi <2 x float> %i.adq to <2 x i32> ; 2 uses
  %i.ads = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.adh)
  %i.adt = fptosi <2 x float> %i.ads to <2 x i32> ; 2 uses
  %i.adu = icmp sgt <2 x i32> %i.adm, %i.adt
  %i.adv = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.adm, <2 x i32> zeroinitializer)
  %i.adw = select <2 x i1> %i.adu, <2 x i32> %i.adt, <2 x i32> %i.adv ; 3 uses
  %i.adx = extractelement <2 x i32> %i.adw, i64 0
  store i32 %i.adx, ptr %3, align 4, !tbaa !112
  %i.ady = extractelement <2 x i32> %i.adw, i64 1
  store i32 %i.ady, ptr %i.gt, align 4, !tbaa !113
  %i.adz = fptosi <2 x float> %i.adi to <2 x i32>
  %i.aea = sub nsw <2 x i32> %i.adz, %i.adw       ; 2 uses
  %i.aeb = icmp slt <2 x i32> %i.aea, %i.adr
  %i.aec = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.adr, <2 x i32> splat (i32 1))
  %i.aed = select <2 x i1> %i.aeb, <2 x i32> %i.aea, <2 x i32> %i.aec
  store <2 x i32> %i.aed, ptr %i.gv, align 4, !tbaa !24
  br label %_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit

.split97.i:                                       ; preds = %.split97.i, %.split97.preheader.i
  %.0158111.i = phi i32 [ %i.ago, %.split97.i ], [ 0, %.split97.preheader.i ] ; 2 uses
  %i.aee = phi <2 x float> [ %i.agn, %.split97.i ], [ %i.rc, %.split97.preheader.i ] ; 2 uses
  %i.aef = phi <2 x float> [ %i.agm, %.split97.i ], [ %i.rb, %.split97.preheader.i ] ; 2 uses
  %i.aeg = add nsw i32 %.0158111.i, %i.gu
  %i.aeh = sitofp reassoc nsz arcp contract afn i32 %i.aeg to float
  %i.aei = fsub reassoc nsz arcp contract afn float %i.aeh, %i.gp
  %i.aej = fmul reassoc nsz arcp contract afn float %i.aei, %i.ge ; 3 uses
  %i.aek = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.hb, float noundef %i.aej) #32
  %i.ael = fmul reassoc nsz arcp contract afn float %i.aek, %i.gr
  %i.aem = fcmp reassoc nsz arcp contract afn olt float %i.ael, %i.rf ; 3 uses
  %.634 = select i1 %i.aem, ptr %i.re, ptr %i.ri
  %.635 = select i1 %i.aem, ptr %i.rm, ptr %i.rk
  %.636 = select i1 %i.aem, ptr %i.rj, ptr %i.rl
  %.sink461 = load float, ptr %.634, align 4, !tbaa !21
  %i.aen = insertelement <2 x float> poison, float %.sink461, i64 0
  %i.aeo = shufflevector <2 x float> %i.aen, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aep = insertelement <2 x float> %i.rn, float %i.aej, i64 1 ; 4 uses
  %i.aeq = fmul reassoc nsz arcp contract afn <2 x float> %i.aeo, %i.aep
  %.sink320 = load float, ptr %.635, align 4, !tbaa !21
  %.sink331.i = load float, ptr %.636, align 4, !tbaa !21
  %i.aer = fadd reassoc nsz arcp contract afn <2 x float> %i.aeq, %i.gn ; 4 uses
  %i.aes = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aef, %i.aer
  %i.aet = select <2 x i1> %i.aes, <2 x float> %i.aef, <2 x float> %i.aer ; 2 uses
  %i.aeu = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aee, %i.aer
  %i.aev = select <2 x i1> %i.aeu, <2 x float> %i.aee, <2 x float> %i.aer ; 2 uses
  %i.aew = insertelement <2 x float> poison, float %.sink320, i64 0
  %i.aex = shufflevector <2 x float> %i.aew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aey = fmul reassoc nsz arcp contract afn <2 x float> %i.aex, %i.aep
  %i.aez = fadd reassoc nsz arcp contract afn <2 x float> %i.aey, %i.gn ; 4 uses
  %i.afa = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aet, %i.aez
  %i.afb = select <2 x i1> %i.afa, <2 x float> %i.aet, <2 x float> %i.aez ; 2 uses
  %i.afc = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.aev, %i.aez
  %i.afd = select <2 x i1> %i.afc, <2 x float> %i.aev, <2 x float> %i.aez ; 2 uses
  %i.afe = insertelement <2 x float> poison, float %.sink331.i, i64 0
  %i.aff = shufflevector <2 x float> %i.afe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afg = fmul reassoc nsz arcp contract afn <2 x float> %i.aff, %i.aep
  %i.afh = fadd reassoc nsz arcp contract afn <2 x float> %i.afg, %i.gn ; 4 uses
  %i.afi = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.afb, %i.afh
  %i.afj = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.afd, %i.afh
  %i.afk = select <2 x i1> %i.afi, <2 x float> %i.afb, <2 x float> %i.afh ; 2 uses
  %i.afl = select <2 x i1> %i.afj, <2 x float> %i.afd, <2 x float> %i.afh ; 2 uses
  %i.afm = tail call reassoc nsz arcp contract afn noundef float @hypotf(float noundef %i.hg, float noundef %i.aej) #32
  %i.afn = fmul reassoc nsz arcp contract afn float %i.afm, %i.gr
  %i.afo = fcmp reassoc nsz arcp contract afn olt float %i.afn, %i.rf ; 3 uses
  %.sink471.in = select i1 %i.afo, ptr %i.re, ptr %i.ri
  %.sink338.in = select i1 %i.afo, ptr %i.rm, ptr %i.rk
  %.sink349.in.i = select i1 %i.afo, ptr %i.rj, ptr %i.rl
  %.sink471 = load float, ptr %.sink471.in, align 4, !tbaa !21
  %i.afp = insertelement <2 x float> poison, float %.sink471, i64 0
  %i.afq = shufflevector <2 x float> %i.afp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.afr = insertelement <2 x float> %i.aep, float %i.hg, i64 0 ; 3 uses
  %i.afs = fmul reassoc nsz arcp contract afn <2 x float> %i.afq, %i.afr
  %.sink338 = load float, ptr %.sink338.in, align 4, !tbaa !21
  %.sink349.i = load float, ptr %.sink349.in.i, align 4, !tbaa !21
  %i.aft = fadd reassoc nsz arcp contract afn <2 x float> %i.afs, %i.gn ; 4 uses
  %i.afu = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.afk, %i.aft
  %i.afv = select <2 x i1> %i.afu, <2 x float> %i.afk, <2 x float> %i.aft ; 2 uses
  %i.afw = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.afl, %i.aft
  %i.afx = select <2 x i1> %i.afw, <2 x float> %i.afl, <2 x float> %i.aft ; 2 uses
  %i.afy = insertelement <2 x float> poison, float %.sink338, i64 0
  %i.afz = shufflevector <2 x float> %i.afy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aga = fmul reassoc nsz arcp contract afn <2 x float> %i.afz, %i.afr
  %i.agb = fadd reassoc nsz arcp contract afn <2 x float> %i.aga, %i.gn ; 4 uses
  %i.agc = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.afv, %i.agb
  %i.agd = select <2 x i1> %i.agc, <2 x float> %i.afv, <2 x float> %i.agb ; 2 uses
  %i.age = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.afx, %i.agb
  %i.agf = select <2 x i1> %i.age, <2 x float> %i.afx, <2 x float> %i.agb ; 2 uses
  %i.agg = insertelement <2 x float> poison, float %.sink349.i, i64 0
  %i.agh = shufflevector <2 x float> %i.agg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agi = fmul reassoc nsz arcp contract afn <2 x float> %i.agh, %i.afr
  %i.agj = fadd reassoc nsz arcp contract afn <2 x float> %i.agi, %i.gn ; 4 uses
  %i.agk = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.agd, %i.agj
  %i.agl = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.agf, %i.agj
  %i.agm = select <2 x i1> %i.agk, <2 x float> %i.agd, <2 x float> %i.agj ; 2 uses
  %i.agn = select <2 x i1> %i.agl, <2 x float> %i.agf, <2 x float> %i.agj ; 2 uses
  %i.ago = add nuw nsw i32 %.0158111.i, 1         ; 2 uses
  %exitcond181.not.i = icmp eq i32 %i.ago, %i.gy
  br i1 %exitcond181.not.i, label %._crit_edge.i17, label %.split97.i, !llvm.loop !370

_ZL17_modify_roi_in_lfP15dt_iop_module_tP22dt_dev_pixelpipe_iop_tPK12dt_iop_roi_tPS3_.exit: ; preds = %bb.a, %._crit_edge.i17, %bb.n, %bb.m, %bb.l, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i32 @_get_method(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 664
  %.val = load ptr, ptr %i.b, align 8, !tbaa !126
  %i.c = getelementptr i8, ptr %.val, i64 680
  %.val.val = load i32, ptr %i.c, align 8, !tbaa !159
  %.not = icmp eq i32 %.val.val, 0
  %spec.select = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %spec.select, %bb.b ], [ %1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @commit_params(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef captures(none) initializes((216, 220)) %3) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x float], align 16            ; 12 uses
  %i.b = alloca [16 x float], align 16            ; 8 uses
  %i.c = alloca [16 x float], align 16            ; 8 uses
  %i.d = alloca [16 x float], align 16            ; 8 uses
  %i.e = alloca [16 x float], align 16            ; 16 uses
  %i.f = alloca [16 x float], align 16            ; 3 uses
  %i.g = alloca [3 x [16 x float]], align 16      ; 11 uses
  %4 = alloca %struct.lfLensCalibTCA, align 4     ; 6 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !44  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 332
  %i.l = load i32, ptr %i.k, align 4, !tbaa !161
  %.not = icmp eq i32 %i.l, 0
  %i.m = load i32, ptr %1, align 4, !tbaa !162    ; 3 uses
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !163 ; 2 uses
  %i.p = icmp eq i32 %i.m, 0
  br i1 %i.p, label %bb.c, label %_get_method.exit

end_hunk_1
