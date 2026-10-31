Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_datascope?download=true
inline.NumInlined: 20
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pixscope_filter_frame:bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #14
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.v = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.t, ptr noundef nonnull %1) #14 ; 0 uses
  %i.w = tail call i32 @av_frame_copy(ptr noundef nonnull %i.t, ptr noundef nonnull %1) #14 ; 0 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 44 ; 6 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !84   ; 7 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 10 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !85  ; 3 uses
  %i.ab = sdiv i32 %i.y, %i.aa                    ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 28 ; 10 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !86 ; 3 uses
  %i.ae = sdiv i32 %i.y, %i.ad                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ag = load float, ptr %i.af, align 8, !tbaa !141 ; 3 uses
  %i.ah = load i32, ptr %i.p, align 8, !tbaa !61  ; 2 uses
  %i.ai = sub nsw i32 %i.ah, %i.y
  %i.aj = sitofp nsz i32 %i.ai to float
  %.sink = tail call float @llvm.fabs.f32(float %i.ag)
  %i.ak = fmul nsz float %.sink, %i.aj
  %.0278 = fptosi float %i.ak to i32              ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.am = load float, ptr %i.al, align 4, !tbaa !142 ; 3 uses
  %i.an = load i32, ptr %i.r, align 4, !tbaa !62  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !87 ; 5 uses
  %i.aq = sub nsw i32 %i.an, %i.ap
  %i.ar = sitofp nsz i32 %i.aq to float
  %.sink503 = tail call float @llvm.fabs.f32(float %i.am)
  %i.as = fmul nsz float %.sink503, %i.ar
  %.0276 = fptosi float %i.as to i32              ; 7 uses
  %i.at = fcmp nsz olt float %i.ag, 0.000000e+00
  br i1 %i.at, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.av = load i32, ptr %i.au, align 4, !tbaa !143
  %i.aw = add nsw i32 %i.av, %i.aa                ; 2 uses
  %.not300 = icmp slt i32 %i.aw, %.0278
  %i.ax = add nsw i32 %i.y, %.0278
  %.not301 = icmp sgt i32 %i.aw, %i.ax
  %or.cond = select i1 %.not300, i1 true, i1 %.not301
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !144
  %i.ba = add nsw i32 %i.az, %i.ad                ; 2 uses
  %.not302 = icmp slt i32 %i.ba, %.0276
  %i.bb = add nsw i32 %i.ap, %.0276
  %.not303 = icmp sgt i32 %i.ba, %i.bb
  %or.cond501 = select i1 %.not302, i1 true, i1 %.not303
  br i1 %or.cond501, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = sub nsw i32 %i.ah, %i.y
  %i.bd = sitofp nsz i32 %i.bc to float
  %i.be = fadd nnan nsz float %i.ag, 1.000000e+00
  %i.bf = fmul nsz float %i.be, %i.bd
  %i.bg = fptosi float %i.bf to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f, %bb.c
  %.1279 = phi i32 [ %i.bg, %bb.f ], [ %.0278, %bb.d ], [ %.0278, %bb.e ], [ %.0278, %bb.c ] ; 5 uses
  %i.bh = fcmp nsz olt float %i.am, 0.000000e+00
  br i1 %i.bh, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !143
  %i.bk = add nsw i32 %i.bj, %i.aa                ; 2 uses
  %.not304 = icmp slt i32 %i.bk, %.1279
  %i.bl = add nsw i32 %.1279, %i.y
  %.not305 = icmp sgt i32 %i.bk, %i.bl
  %or.cond332 = select i1 %.not304, i1 true, i1 %.not305
  br i1 %or.cond332, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !144
  %i.bo = add nsw i32 %i.bn, %i.ad                ; 2 uses
  %.not306 = icmp slt i32 %i.bo, %.0276
  %i.bp = add nsw i32 %i.ap, %.0276
  %.not307 = icmp sgt i32 %i.bo, %i.bp
  %or.cond502 = select i1 %.not306, i1 true, i1 %.not307
  br i1 %or.cond502, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = sub nsw i32 %i.an, %i.ap
  %i.br = sitofp nsz i32 %i.bq to float
  %i.bs = fadd nnan nsz float %i.am, 1.000000e+00
  %i.bt = fmul nsz float %i.bs, %i.br
  %i.bu = fptosi float %i.bt to i32
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %bb.g
  %.1277 = phi i32 [ %i.bu, %bb.j ], [ %.0276, %bb.h ], [ %.0276, %bb.i ], [ %.0276, %bb.g ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 15 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  %i.bx = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 14 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.t, i64 104 ; 13 uses
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !61
  %i.ca = getelementptr inbounds nuw i8, ptr %i.t, i64 108 ; 13 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !62
  tail call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bw, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.bz, i32 noundef %i.cb, i32 noundef %.1279, i32 noundef %.1277, i32 noundef %i.y, i32 noundef %i.ap) #14
  %i.cc = load i32, ptr %i.ac, align 4, !tbaa !86 ; 2 uses
  %i.cd = icmp sgt i32 %i.cc, 0
  %.pre390 = load i32, ptr %i.z, align 8, !tbaa !85 ; 4 uses
  br i1 %i.cd, label %.preheader336.lr.ph, label %._crit_edge344

.preheader336.lr.ph:                              ; preds = %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 51848
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ch = add i32 %.1277, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 648
  %i.cj = icmp sgt i32 %.pre390, 0
  br i1 %i.cj, label %.preheader336.preheader, label %._crit_edge344

.preheader336.preheader:                          ; preds = %.preheader336.lr.ph
  %i.ck = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.cm = load <4 x float>, ptr %i.d, align 16    ; 2 uses
  %i.cn = load <4 x i32>, ptr %i.c, align 16      ; 2 uses
  %i.co = load <4 x i32>, ptr %i.b, align 16      ; 2 uses
  %i.cp = load <2 x double>, ptr %i.cl, align 16
  %i.cq = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.cm, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cr = shufflevector <4 x i32> <i32 2147483647, i32 2147483647, i32 2147483647, i32 poison>, <4 x i32> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cs = shufflevector <4 x i32> <i32 0, i32 0, i32 0, i32 poison>, <4 x i32> %i.co, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %.preheader336

.preheader336:                                    ; preds = %.preheader336.preheader, %._crit_edge
  %i.ct = phi i32 [ %i.cc, %.preheader336.preheader ], [ %i.fe, %._crit_edge ]
  %i.cu = phi i32 [ %.pre390, %.preheader336.preheader ], [ %i.ff, %._crit_edge ] ; 2 uses
  %indvars.iv363 = phi i64 [ 0, %.preheader336.preheader ], [ %indvars.iv.next364, %._crit_edge ] ; 4 uses
  %i.cv = phi <2 x double> [ zeroinitializer, %.preheader336.preheader ], [ %i.fg, %._crit_edge ] ; 2 uses
  %i.cw = phi <4 x float> [ %i.cq, %.preheader336.preheader ], [ %i.fi, %._crit_edge ] ; 2 uses
  %i.cx = phi <4 x float> [ %i.cm, %.preheader336.preheader ], [ %i.fh, %._crit_edge ]
  %i.cy = phi <4 x i32> [ %i.cr, %.preheader336.preheader ], [ %i.fk, %._crit_edge ] ; 2 uses
  %i.cz = phi <4 x i32> [ %i.cn, %.preheader336.preheader ], [ %i.fj, %._crit_edge ]
  %i.da = phi <4 x i32> [ %i.cs, %.preheader336.preheader ], [ %i.fm, %._crit_edge ] ; 2 uses
  %i.db = phi <4 x i32> [ %i.co, %.preheader336.preheader ], [ %i.fl, %._crit_edge ]
  %i.dc = phi <2 x double> [ undef, %.preheader336.preheader ], [ %i.fn, %._crit_edge ]
  %i.dd = phi <2 x double> [ zeroinitializer, %.preheader336.preheader ], [ %i.fp, %._crit_edge ] ; 2 uses
  %i.de = phi <2 x double> [ %i.cp, %.preheader336.preheader ], [ %i.fo, %._crit_edge ]
  %i.df = icmp sgt i32 %i.cu, 0
  br i1 %i.df, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader336
  %i.dg = trunc i64 %indvars.iv363 to i32
  %i.dh = mul i32 %i.ae, %i.dg
  %i.di = add i32 %i.ch, %i.dh
  %invariant.gep342 = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv363
  %i.dj = trunc nuw nsw i64 %indvars.iv363 to i32
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.dk = phi <2 x double> [ %i.cv, %.lr.ph ], [ %i.em, %bb.l ]
  %i.dl = phi <4 x float> [ %i.cw, %.lr.ph ], [ %i.ew, %bb.l ]
  %i.dm = phi <4 x i32> [ %i.cy, %.lr.ph ], [ %i.ey, %bb.l ]
  %i.dn = phi <4 x i32> [ %i.da, %.lr.ph ], [ %i.fa, %bb.l ]
  %i.do = phi <2 x double> [ %i.dd, %.lr.ph ], [ %i.ev, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(68) %2, i8 0, i64 68, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  %i.dp = load ptr, ptr %i.ce, align 8, !tbaa !88
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.dr = load i32, ptr %i.cf, align 4, !tbaa !143
  %i.ds = trunc nuw nsw i64 %indvars.iv to i32
  %i.dt = add nsw i32 %i.dr, %i.ds
  %i.du = load i32, ptr %i.cg, align 8, !tbaa !144
  %i.dv = add nsw i32 %i.du, %i.dj
  call void %i.dp(ptr noundef nonnull %i.bv, ptr noundef nonnull %2, ptr noundef %i.dq, i32 noundef %i.dt, i32 noundef %i.dv, ptr noundef nonnull %i.h) #14
  %i.dw = load i32, ptr %i.x, align 4, !tbaa !84
  %i.dx = add nsw i32 %i.dw, -4
  %i.dy = load i32, ptr %i.z, align 8, !tbaa !85
  %i.dz = mul i32 %i.ab, %i.dy
  %i.ea = sub i32 %i.dx, %i.dz
  %i.eb = sdiv i32 %i.ea, 2
  %i.ec = trunc i64 %indvars.iv to i32
  %i.ed = mul i32 %i.ab, %i.ec
  %i.ee = add i32 %i.ed, %.1279
  %i.ef = add i32 %i.ee, %i.eb
  call void @ff_fill_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %2, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.ef, i32 noundef %i.di, i32 noundef %i.ab, i32 noundef %i.ae) #14
  %gep = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep342, i64 %indvars.iv ; 4 uses
  %gep339.1 = getelementptr inbounds nuw i8, ptr %gep, i64 12800
  %i.eg = load <2 x i32>, ptr %i.h, align 16, !tbaa !79 ; 6 uses
  %i.eh = bitcast <2 x i32> %i.eg to <4 x i16>
  %i.ei = extractelement <4 x i16> %i.eh, i64 0
  store i16 %i.ei, ptr %gep, align 2, !tbaa !90
  %i.ej = sitofp <2 x i32> %i.eg to <2 x double>  ; 2 uses
  %i.ek = bitcast <2 x i32> %i.eg to <4 x i16>
  %i.el = extractelement <4 x i16> %i.ek, i64 2
  store i16 %i.el, ptr %gep339.1, align 2, !tbaa !90
  %i.em = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.ej, <2 x double> %i.dk) ; 3 uses
  %gep339.2 = getelementptr inbounds nuw i8, ptr %gep, i64 25600
  %gep339.3 = getelementptr inbounds nuw i8, ptr %gep, i64 38400
  %i.en = load <2 x i32>, ptr %i.ck, align 8, !tbaa !79 ; 6 uses
  %i.eo = shufflevector <2 x i32> %i.eg, <2 x i32> %i.en, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ep = sitofp <4 x i32> %i.eo to <4 x float>
  %i.eq = bitcast <2 x i32> %i.en to <4 x i16>
  %i.er = extractelement <4 x i16> %i.eq, i64 0
  store i16 %i.er, ptr %gep339.2, align 2, !tbaa !90
  %i.es = sitofp <2 x i32> %i.en to <2 x double>  ; 2 uses
  %i.et = bitcast <2 x i32> %i.en to <4 x i16>
  %i.eu = extractelement <4 x i16> %i.et, i64 2
  store i16 %i.eu, ptr %gep339.3, align 2, !tbaa !90
  %i.ev = call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> %i.es, <2 x double> %i.do) ; 3 uses
  %i.ew = fadd nsz <4 x float> %i.dl, %i.ep       ; 3 uses
  %i.ex = shufflevector <2 x i32> %i.eg, <2 x i32> %i.en, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ey = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.dm, <4 x i32> %i.ex) ; 3 uses
  %i.ez = shufflevector <2 x i32> %i.eg, <2 x i32> %i.en, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.fa = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dn, <4 x i32> %i.ez) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fb = load i32, ptr %i.z, align 8, !tbaa !85  ; 2 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next, %i.fc
  br i1 %i.fd, label %bb.l, label %._crit_edge.loopexit, !llvm.loop !135

._crit_edge.loopexit:                             ; preds = %bb.l
  %.pre = load i32, ptr %i.ac, align 4, !tbaa !86
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader336
  %i.fe = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ct, %.preheader336 ] ; 2 uses
  %i.ff = phi i32 [ %i.fb, %._crit_edge.loopexit ], [ %i.cu, %.preheader336 ] ; 2 uses
  %i.fg = phi <2 x double> [ %i.em, %._crit_edge.loopexit ], [ %i.cv, %.preheader336 ] ; 2 uses
  %i.fh = phi <4 x float> [ %i.ew, %._crit_edge.loopexit ], [ %i.cx, %.preheader336 ] ; 2 uses
  %i.fi = phi <4 x float> [ %i.ew, %._crit_edge.loopexit ], [ %i.cw, %.preheader336 ] ; 2 uses
  %i.fj = phi <4 x i32> [ %i.ey, %._crit_edge.loopexit ], [ %i.cz, %.preheader336 ] ; 2 uses
  %i.fk = phi <4 x i32> [ %i.ey, %._crit_edge.loopexit ], [ %i.cy, %.preheader336 ]
  %i.fl = phi <4 x i32> [ %i.fa, %._crit_edge.loopexit ], [ %i.db, %.preheader336 ] ; 2 uses
  %i.fm = phi <4 x i32> [ %i.fa, %._crit_edge.loopexit ], [ %i.da, %.preheader336 ]
  %i.fn = phi <2 x double> [ %i.em, %._crit_edge.loopexit ], [ %i.dc, %.preheader336 ] ; 2 uses
  %i.fo = phi <2 x double> [ %i.ev, %._crit_edge.loopexit ], [ %i.de, %.preheader336 ] ; 2 uses
  %i.fp = phi <2 x double> [ %i.ev, %._crit_edge.loopexit ], [ %i.dd, %.preheader336 ]
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %i.fq = sext i32 %i.fe to i64
  %i.fr = icmp slt i64 %indvars.iv.next364, %i.fq
  br i1 %i.fr, label %.preheader336, label %._crit_edge344.loopexit, !llvm.loop !136

._crit_edge344.loopexit:                          ; preds = %._crit_edge
  store <2 x double> %i.fn, ptr %i.f, align 16
  store <4 x float> %i.fh, ptr %i.d, align 16
  store <4 x i32> %i.fj, ptr %i.c, align 16
  store <4 x i32> %i.fl, ptr %i.b, align 16
  store <2 x double> %i.fo, ptr %i.cl, align 16
  %i.fs = extractelement <4 x float> %i.fi, i64 0
  br label %._crit_edge344

._crit_edge344:                                   ; preds = %._crit_edge344.loopexit, %.preheader336.lr.ph, %bb.k
  %i.ft = phi float [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %.preheader336.lr.ph ], [ %i.fs, %._crit_edge344.loopexit ]
  %i.fu = phi i32 [ %.pre390, %bb.k ], [ %.pre390, %.preheader336.lr.ph ], [ %i.ff, %._crit_edge344.loopexit ]
  %i.fv = phi <2 x double> [ zeroinitializer, %bb.k ], [ zeroinitializer, %.preheader336.lr.ph ], [ %i.fg, %._crit_edge344.loopexit ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.l, i64 276 ; 4 uses
  %i.fx = load i32, ptr %i.by, align 8, !tbaa !61
  %i.fy = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.fz = getelementptr inbounds nuw i8, ptr %i.l, i64 36 ; 8 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !143
  %i.gb = add nsw i32 %i.ga, -2
  %i.gc = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 8 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !144
  %i.ge = add nsw i32 %i.gd, -2
  %i.gf = add nsw i32 %i.fu, 4
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.fx, i32 noundef %i.fy, i32 noundef %i.gb, i32 noundef %i.ge, i32 noundef %i.gf, i32 noundef 1) #14
  %i.gg = getelementptr inbounds nuw i8, ptr %i.l, i64 344 ; 6 uses
  %i.gh = load i32, ptr %i.by, align 8, !tbaa !61
  %i.gi = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.gj = load i32, ptr %i.fz, align 4, !tbaa !143
  %i.gk = add nsw i32 %i.gj, -1
  %i.gl = load i32, ptr %i.gc, align 8, !tbaa !144
  %i.gm = add nsw i32 %i.gl, -1
  %i.gn = load i32, ptr %i.z, align 8, !tbaa !85
  %i.go = add nsw i32 %i.gn, 2
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.gh, i32 noundef %i.gi, i32 noundef %i.gk, i32 noundef %i.gm, i32 noundef %i.go, i32 noundef 1) #14
  %i.gp = load i32, ptr %i.by, align 8, !tbaa !61
  %i.gq = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.gr = load i32, ptr %i.fz, align 4, !tbaa !143
  %i.gs = add nsw i32 %i.gr, -1
  %i.gt = load i32, ptr %i.gc, align 8, !tbaa !144
  %i.gu = add nsw i32 %i.gt, -1
  %i.gv = load i32, ptr %i.ac, align 4, !tbaa !86
  %i.gw = add nsw i32 %i.gv, 2
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.gp, i32 noundef %i.gq, i32 noundef %i.gs, i32 noundef %i.gu, i32 noundef 1, i32 noundef %i.gw) #14
  %i.gx = load i32, ptr %i.by, align 8, !tbaa !61
  %i.gy = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.gz = load i32, ptr %i.fz, align 4, !tbaa !143
  %i.ha = add nsw i32 %i.gz, -2
  %i.hb = load i32, ptr %i.gc, align 8, !tbaa !144
  %i.hc = add nsw i32 %i.hb, -2
  %i.hd = load i32, ptr %i.ac, align 4, !tbaa !86
  %i.he = add nsw i32 %i.hd, 4
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.gx, i32 noundef %i.gy, i32 noundef %i.ha, i32 noundef %i.hc, i32 noundef 1, i32 noundef %i.he) #14
  %i.hf = load i32, ptr %i.by, align 8, !tbaa !61
  %i.hg = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.hh = load i32, ptr %i.fz, align 4, !tbaa !143
  %i.hi = add nsw i32 %i.hh, -1
  %i.hj = load i32, ptr %i.gc, align 8, !tbaa !144
  %i.hk = add nsw i32 %i.hj, 1
  %i.hl = load i32, ptr %i.ac, align 4, !tbaa !86
  %i.hm = add nsw i32 %i.hk, %i.hl
  %i.hn = load i32, ptr %i.z, align 8, !tbaa !85
  %i.ho = add nsw i32 %i.hn, 3
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.hf, i32 noundef %i.hg, i32 noundef %i.hi, i32 noundef %i.hm, i32 noundef %i.ho, i32 noundef 1) #14
  %i.hp = load i32, ptr %i.by, align 8, !tbaa !61
  %i.hq = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.hr = load i32, ptr %i.fz, align 4, !tbaa !143
  %i.hs = add nsw i32 %i.hr, -2
  %i.ht = load i32, ptr %i.gc, align 8, !tbaa !144
  %i.hu = add nsw i32 %i.ht, 2
  %i.hv = load i32, ptr %i.ac, align 4, !tbaa !86
  %i.hw = add nsw i32 %i.hu, %i.hv
  %i.hx = load i32, ptr %i.z, align 8, !tbaa !85
  %i.hy = add nsw i32 %i.hx, 4
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.hp, i32 noundef %i.hq, i32 noundef %i.hs, i32 noundef %i.hw, i32 noundef %i.hy, i32 noundef 1) #14
  %i.hz = load i32, ptr %i.by, align 8, !tbaa !61
  %i.ia = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.ib = load i32, ptr %i.fz, align 4, !tbaa !143
  %i.ic = add nsw i32 %i.ib, 1
  %i.id = load i32, ptr %i.z, align 8, !tbaa !85
  %i.ie = add nsw i32 %i.ic, %i.id
  %i.if = load i32, ptr %i.gc, align 8, !tbaa !144
  %i.ig = add nsw i32 %i.if, -1
  %i.ih = load i32, ptr %i.ac, align 4, !tbaa !86
  %i.ii = add nsw i32 %i.ih, 2
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.hz, i32 noundef %i.ia, i32 noundef %i.ie, i32 noundef %i.ig, i32 noundef 1, i32 noundef %i.ii) #14
  %i.ij = load i32, ptr %i.by, align 8, !tbaa !61
  %i.ik = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.il = load i32, ptr %i.fz, align 4, !tbaa !143
  %i.im = add nsw i32 %i.il, 2
  %i.in = load i32, ptr %i.z, align 8, !tbaa !85
  %i.io = add nsw i32 %i.im, %i.in
  %i.ip = load i32, ptr %i.gc, align 8, !tbaa !144
  %i.iq = add nsw i32 %i.ip, -2
  %i.ir = load i32, ptr %i.ac, align 4, !tbaa !86
  %i.is = add nsw i32 %i.ir, 5
  call void @ff_blend_rectangle(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.fw, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.ij, i32 noundef %i.ik, i32 noundef %i.io, i32 noundef %i.iq, i32 noundef 1, i32 noundef %i.is) #14
  %i.it = load i32, ptr %i.z, align 8, !tbaa !85  ; 3 uses
  %i.iu = load i32, ptr %i.ac, align 4, !tbaa !86 ; 3 uses
  %i.iv = mul nsw i32 %i.iu, %i.it                ; 2 uses
  %i.iw = sitofp nsz i32 %i.iv to double
  %i.ix = sitofp nsz i32 %i.iv to float
  %i.iy = insertelement <2 x double> poison, double %i.iw, i64 0
  %i.iz = shufflevector <2 x double> %i.iy, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ja = fdiv nsz <2 x double> %i.fv, %i.iz
  %i.jb = call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ja)
  store <2 x double> %i.jb, ptr %i.f, align 16, !tbaa !146
  %i.jc = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !92
  %i.je = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.jf = insertelement <2 x float> %i.je, float %i.jd, i64 1
  %i.jg = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ji = fdiv nsz <2 x float> %i.jf, %i.jh       ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jl = load <2 x double>, ptr %i.jj, align 16, !tbaa !146
  %i.jm = fdiv nsz <2 x double> %i.jl, %i.iz
  %i.jn = call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.jm)
  store <2 x double> %i.jn, ptr %i.jj, align 16, !tbaa !146
  %i.jo = load <2 x float>, ptr %i.jk, align 8, !tbaa !92
  %i.jp = fdiv nsz <2 x float> %i.jo, %i.jh       ; 2 uses
  %i.jq = shufflevector <2 x float> %i.ji, <2 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.jq, ptr %i.d, align 16, !tbaa !92
  %i.jr = icmp sgt i32 %i.iu, 0
  br i1 %i.jr, label %.preheader334.lr.ph, label %._crit_edge344..preheader_crit_edge

._crit_edge344..preheader_crit_edge:              ; preds = %._crit_edge344
  %.pre403 = load double, ptr %i.e, align 16, !tbaa !146
  br label %.preheader

.preheader334.lr.ph:                              ; preds = %._crit_edge344
  %i.js = icmp sgt i32 %i.it, 0
  %i.jt = getelementptr inbounds nuw i8, ptr %i.l, i64 648
  %.pre404 = load double, ptr %i.e, align 16, !tbaa !146 ; 2 uses
  br i1 %i.js, label %.preheader334.preheader, label %.preheader

.preheader334.preheader:                          ; preds = %.preheader334.lr.ph
  %wide.trip.count378 = zext nneg i32 %i.iu to i64
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.pre392.pre = load double, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !146
  %.phi.trans.insert393.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ju = load <2 x double>, ptr %.phi.trans.insert393.phi.trans.insert, align 16, !tbaa !146
  %wide.trip.count = zext nneg i32 %i.it to i64
  %i.jv = insertelement <2 x double> poison, double %.pre404, i64 0
  %i.jw = insertelement <2 x double> %i.jv, double %.pre392.pre, i64 1
  br label %.preheader334

.preheader334:                                    ; preds = %.preheader334.preheader, %._crit_edge351
  %indvars.iv375 = phi i64 [ 0, %.preheader334.preheader ], [ %indvars.iv.next376, %._crit_edge351 ] ; 2 uses
  %i.jx = phi <2 x double> [ %i.jw, %.preheader334.preheader ], [ %i.la, %._crit_edge351 ]
  %i.jy = phi <2 x double> [ %i.ju, %.preheader334.preheader ], [ %i.lj, %._crit_edge351 ]
  %invariant.gep352 = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %indvars.iv375
  br label %.preheader333

.preheader.loopexit:                              ; preds = %._crit_edge351
  store <2 x double> %i.la, ptr %i.e, align 16, !tbaa !146
  store <2 x double> %i.lj, ptr %.phi.trans.insert393.phi.trans.insert, align 16, !tbaa !146
  %i.jz = extractelement <2 x double> %i.la, i64 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge344..preheader_crit_edge, %.preheader334.lr.ph
  %i.ka = phi double [ %.pre403, %._crit_edge344..preheader_crit_edge ], [ %.pre404, %.preheader334.lr.ph ], [ %i.jz, %.preheader.loopexit ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !146
  %i.kd = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.ke = insertelement <2 x double> %i.kd, double %i.kc, i64 1
  %i.kf = fdiv nsz <2 x double> %i.ke, %i.iz
  %i.kg = call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.kf)
  store <2 x double> %i.kg, ptr %i.e, align 16, !tbaa !146
  %i.kh = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.ki = load <2 x double>, ptr %i.kh, align 16, !tbaa !146
  %i.kj = fdiv nsz <2 x double> %i.ki, %i.iz
  %i.kk = call nsz <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.kj)
  store <2 x double> %i.kk, ptr %i.kh, align 16, !tbaa !146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(31) %i.g, ptr noundef nonnull align 1 dereferenceable(31) @.str.38, i64 31, i1 false)
  %i.kl = add nsw i32 %.1279, 28                  ; 8 uses
  %i.km = load i32, ptr %i.x, align 4, !tbaa !84
  %i.kn = add i32 %.1277, 5
  %i.ko = add i32 %i.kn, %i.km
  %i.kp = call ptr @avpriv_cga_font_get() #14
  br label %.split.us.i

.preheader333:                                    ; preds = %.preheader334, %.preheader333
  %indvars.iv372 = phi i64 [ 0, %.preheader334 ], [ %indvars.iv.next373, %.preheader333 ] ; 2 uses
  %i.kq = phi <2 x double> [ %i.jx, %.preheader334 ], [ %i.la, %.preheader333 ]
  %i.kr = phi <2 x double> [ %i.jy, %.preheader334 ], [ %i.lj, %.preheader333 ]
  %gep353 = getelementptr inbounds nuw [160 x i8], ptr %invariant.gep352, i64 %indvars.iv372 ; 4 uses
  %i.ks = load i16, ptr %gep353, align 2, !tbaa !90
  %gep348.1 = getelementptr inbounds nuw i8, ptr %gep353, i64 12800
  %i.kt = load i16, ptr %gep348.1, align 2, !tbaa !90
  %i.ku = insertelement <2 x i16> poison, i16 %i.ks, i64 0
  %i.kv = insertelement <2 x i16> %i.ku, i16 %i.kt, i64 1
  %i.kw = uitofp <2 x i16> %i.kv to <2 x float>
  %i.kx = fsub nsz <2 x float> %i.kw, %i.ji       ; 2 uses
  %i.ky = fmul nsz <2 x float> %i.kx, %i.kx
  %i.kz = fpext <2 x float> %i.ky to <2 x double>
  %i.la = fadd nsz <2 x double> %i.kq, %i.kz      ; 4 uses
  %gep348.2 = getelementptr inbounds nuw i8, ptr %gep353, i64 25600
  %i.lb = load i16, ptr %gep348.2, align 2, !tbaa !90
  %gep348.3 = getelementptr inbounds nuw i8, ptr %gep353, i64 38400
  %i.lc = load i16, ptr %gep348.3, align 2, !tbaa !90
  %i.ld = insertelement <2 x i16> poison, i16 %i.lb, i64 0
  %i.le = insertelement <2 x i16> %i.ld, i16 %i.lc, i64 1
  %i.lf = uitofp <2 x i16> %i.le to <2 x float>
  %i.lg = fsub nsz <2 x float> %i.lf, %i.jp       ; 2 uses
  %i.lh = fmul nsz <2 x float> %i.lg, %i.lg
  %i.li = fpext <2 x float> %i.lh to <2 x double>
  %i.lj = fadd nsz <2 x double> %i.kr, %i.li      ; 3 uses
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next373, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge351, label %.preheader333, !llvm.loop !137

._crit_edge351:                                   ; preds = %.preheader333
  %indvars.iv.next376 = add nuw nsw i64 %indvars.iv375, 1 ; 2 uses
  %exitcond379.not = icmp eq i64 %indvars.iv.next376, %wide.trip.count378
  br i1 %exitcond379.not, label %.preheader.loopexit, label %.preheader334, !llvm.loop !138

.split.us.i:                                      ; preds = %bb.o, %.preheader
  %i.lk = phi i8 [ %.pre397, %bb.o ], [ 67, %.preheader ] ; 2 uses
  %.021.us.i = phi ptr [ %i.ly, %bb.o ], [ %i.g, %.preheader ]
  %.019.us.i = phi i32 [ %.120.us.i, %bb.o ], [ %i.ko, %.preheader ] ; 3 uses
  %.0.us.i = phi i32 [ %.1.us.i, %bb.o ], [ %i.kl, %.preheader ] ; 2 uses
  switch i8 %i.lk, label %bb.n [
    i8 0, label %draw_text.exit.preheader
    i8 10, label %bb.m
  ]

draw_text.exit.preheader:                         ; preds = %.split.us.i
  %i.ll = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 4 uses
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !93
  %i.ln = icmp sgt i32 %i.lm, 0
  br i1 %i.ln, label %.lr.ph357, label %draw_text.exit._crit_edge

.lr.ph357:                                        ; preds = %draw_text.exit.preheader
  %i.lo = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.lp = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.lq = getelementptr inbounds nuw i8, ptr %i.l, i64 616
  br label %bb.p

bb.m:                                             ; preds = %.split.us.i
  %i.lr = add nsw i32 %.019.us.i, 8
  br label %bb.o

bb.n:                                             ; preds = %.split.us.i
  %i.ls = zext i8 %i.lk to i64
  %i.lt = load i32, ptr %i.by, align 8, !tbaa !61
  %i.lu = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.lv = shl nuw nsw i64 %i.ls, 3
  %i.lw = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.lv
  call void @ff_blend_mask(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.lt, i32 noundef %i.lu, ptr noundef nonnull %i.lw, i32 noundef 1, i32 noundef 8, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef %.0.us.i, i32 noundef %.019.us.i) #14
  %i.lx = add nsw i32 %.0.us.i, 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.120.us.i = phi i32 [ %i.lr, %bb.m ], [ %.019.us.i, %bb.n ]
  %.1.us.i = phi i32 [ %i.kl, %bb.m ], [ %i.lx, %bb.n ]
  %i.ly = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 1 ; 2 uses
  %.pre397 = load i8, ptr %i.ly, align 1, !tbaa !55
  br label %.split.us.i, !llvm.loop !0

draw_text.exit.loopexit:                          ; preds = %.split.us.i311
  %i.lz = load i32, ptr %i.ll, align 8, !tbaa !93
  %i.ma = sext i32 %i.lz to i64
  %i.mb = icmp slt i64 %indvars.iv.next385, %i.ma
  br i1 %i.mb, label %bb.p, label %draw_text.exit._crit_edge, !llvm.loop !139

bb.p:                                             ; preds = %.lr.ph357, %draw_text.exit.loopexit
  %indvars.iv384 = phi i64 [ 0, %.lr.ph357 ], [ %indvars.iv.next385, %draw_text.exit.loopexit ] ; 4 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lo, i64 %indvars.iv384
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !55
  %i.me = load i32, ptr %i.lp, align 4, !tbaa !94
  %.not309 = icmp eq i32 %i.me, 0
  %.in310.in.v = select i1 %.not309, ptr @__const.oscilloscope_filter_frame.yuva, ptr @__const.oscilloscope_filter_frame.rgba
  %.in310.in = getelementptr inbounds nuw i8, ptr %.in310.in.v, i64 %indvars.iv384
  %.in310 = load i8, ptr %.in310.in, align 1, !tbaa !55
  %i.mf = sext i8 %.in310 to i32
  %i.mg = zext i8 %i.md to i64                    ; 4 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.mg
  %i.mi = load float, ptr %i.mh, align 4, !tbaa !92
  %i.mj = fpext nsz float %i.mi to double
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.mg
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !79
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.mg
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !79
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.mg
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !146
  %i.mq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.39, i32 noundef %i.mf, double noundef %i.mj, i32 noundef %i.ml, i32 noundef %i.mn, double noundef %i.mp) #14 ; 0 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %indvars.iv384
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !96
  %i.mt = load i32, ptr %i.x, align 4, !tbaa !84
  %indvars.iv.next385 = add nuw nsw i64 %indvars.iv384, 1 ; 3 uses
  %i.mu = trunc i64 %indvars.iv.next385 to i32
  %i.mv = mul i32 %i.mu, 15
  %i.mw = add i32 %i.mv, %.1277
  %i.mx = add i32 %i.mw, %i.mt
  %i.my = call ptr @avpriv_cga_font_get() #14
  br label %.split.us.i311

.split.us.i311:                                   ; preds = %bb.s, %bb.p
  %.021.us.i312 = phi ptr [ %i.nh, %bb.s ], [ %i.g, %bb.p ] ; 2 uses
  %.019.us.i313 = phi i32 [ %.120.us.i315, %bb.s ], [ %i.mx, %bb.p ] ; 3 uses
  %.0.us.i314 = phi i32 [ %.1.us.i316, %bb.s ], [ %i.kl, %bb.p ] ; 2 uses
  %i.mz = load i8, ptr %.021.us.i312, align 1, !tbaa !55 ; 2 uses
  switch i8 %i.mz, label %bb.r [
    i8 0, label %draw_text.exit.loopexit
    i8 10, label %bb.q
  ]

bb.q:                                             ; preds = %.split.us.i311
  %i.na = add nsw i32 %.019.us.i313, 8
  br label %bb.s

bb.r:                                             ; preds = %.split.us.i311
  %i.nb = zext i8 %i.mz to i64
  %i.nc = load i32, ptr %i.by, align 8, !tbaa !61
  %i.nd = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.ne = shl nuw nsw i64 %i.nb, 3
  %i.nf = getelementptr inbounds nuw i8, ptr %i.my, i64 %i.ne
  call void @ff_blend_mask(ptr noundef nonnull %i.bv, ptr noundef %i.ms, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.nc, i32 noundef %i.nd, ptr noundef nonnull %i.nf, i32 noundef 1, i32 noundef 8, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef %.0.us.i314, i32 noundef %.019.us.i313) #14
  %i.ng = add nsw i32 %.0.us.i314, 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.120.us.i315 = phi i32 [ %i.na, %bb.q ], [ %.019.us.i313, %bb.r ]
  %.1.us.i316 = phi i32 [ %i.kl, %bb.q ], [ %i.ng, %bb.r ]
  %i.nh = getelementptr inbounds nuw i8, ptr %.021.us.i312, i64 1
  br label %.split.us.i311, !llvm.loop !0

draw_text.exit._crit_edge:                        ; preds = %draw_text.exit.loopexit, %draw_text.exit.preheader
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.g, ptr noundef nonnull align 1 dereferenceable(10) @.str.40, i64 10, i1 false)
  %i.ni = load i32, ptr %i.x, align 4, !tbaa !84
  %i.nj = add i32 %.1277, 75
  %i.nk = add i32 %i.nj, %i.ni
  %i.nl = call ptr @avpriv_cga_font_get() #14
  br label %.split.us.i318

.split.us.i318:                                   ; preds = %bb.v, %draw_text.exit._crit_edge
  %i.nm = phi i8 [ %.pre398, %bb.v ], [ 67, %draw_text.exit._crit_edge ] ; 2 uses
  %.021.us.i319 = phi ptr [ %i.oa, %bb.v ], [ %i.g, %draw_text.exit._crit_edge ]
  %.019.us.i320 = phi i32 [ %.120.us.i322, %bb.v ], [ %i.nk, %draw_text.exit._crit_edge ] ; 3 uses
  %.0.us.i321 = phi i32 [ %.1.us.i323, %bb.v ], [ %i.kl, %draw_text.exit._crit_edge ] ; 2 uses
  switch i8 %i.nm, label %bb.u [
    i8 0, label %draw_text.exit324.preheader
    i8 10, label %bb.t
  ]

draw_text.exit324.preheader:                      ; preds = %.split.us.i318
  %i.nn = load i32, ptr %i.ll, align 8, !tbaa !93
  %i.no = icmp sgt i32 %i.nn, 0
  br i1 %i.no, label %.lr.ph359, label %draw_text.exit324._crit_edge

.lr.ph359:                                        ; preds = %draw_text.exit324.preheader
  %i.np = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.nq = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.nr = getelementptr inbounds nuw i8, ptr %i.l, i64 616
  %i.ns = add i32 %.1277, 90
  br label %bb.w

bb.t:                                             ; preds = %.split.us.i318
  %i.nt = add nsw i32 %.019.us.i320, 8
  br label %bb.v

bb.u:                                             ; preds = %.split.us.i318
  %i.nu = zext i8 %i.nm to i64
  %i.nv = load i32, ptr %i.by, align 8, !tbaa !61
  %i.nw = load i32, ptr %i.ca, align 4, !tbaa !62
  %i.nx = shl nuw nsw i64 %i.nu, 3
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nx
  call void @ff_blend_mask(ptr noundef nonnull %i.bv, ptr noundef nonnull %i.gg, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bx, i32 noundef %i.nv, i32 noundef %i.nw, ptr noundef nonnull %i.ny, i32 noundef 1, i32 noundef 8, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef %.0.us.i321, i32 noundef %.019.us.i320) #14
  %i.nz = add nsw i32 %.0.us.i321, 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.120.us.i322 = phi i32 [ %i.nt, %bb.t ], [ %.019.us.i320, %bb.u ]
  %.1.us.i323 = phi i32 [ %i.kl, %bb.t ], [ %i.nz, %bb.u ]
  %i.oa = getelementptr inbounds nuw i8, ptr %.021.us.i319, i64 1 ; 2 uses
  %.pre398 = load i8, ptr %i.oa, align 1, !tbaa !55
  br label %.split.us.i318, !llvm.loop !0

bb.w:                                             ; preds = %.lr.ph359, %draw_text.exit331
  %indvars.iv387 = phi i64 [ 0, %.lr.ph359 ], [ %indvars.iv.next388, %draw_text.exit331 ] ; 5 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.np, i64 %indvars.iv387
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !55
  %i.od = load i32, ptr %i.nq, align 4, !tbaa !94
  %.not308 = icmp eq i32 %i.od, 0
  %.in.in.v = select i1 %.not308, ptr @__const.oscilloscope_filter_frame.yuva, ptr @__const.oscilloscope_filter_frame.rgba
  %.in.in = getelementptr inbounds nuw i8, ptr %.in.in.v, i64 %indvars.iv387
  %.in = load i8, ptr %.in.in, align 1, !tbaa !55
  %i.oe = sext i8 %.in to i32
  %i.of = zext i8 %i.oc to i64
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.of
  %i.oh = load double, ptr %i.og, align 8, !tbaa !146
  %i.oi = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.g, i64 noundef 128, ptr noundef nonnull @.str.41, i32 noundef %i.oe, double noundef %i.oh) #14 ; 0 uses
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nr, i64 %indvars.iv387
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !96
  %i.ol = load i32, ptr %i.x, align 4, !tbaa !84
  %i.om = trunc nuw nsw i64 %indvars.iv387 to i32
  %i.on = mul i32 %i.om, 15
  %i.oo = add i32 %i.ns, %i.on
  %i.op = add i32 %i.oo, %i.ol
  %i.oq = call ptr @avpriv_cga_font_get() #14
  br label %.split.us.i325

.split.us.i325:                                   ; preds = %bb.z, %bb.w
  %.021.us.i326 = phi ptr [ %i.oz, %bb.z ], [ %i.g, %bb.w ] ; 2 uses
  %.019.us.i327 = phi i32 [ %.120.us.i329, %bb.z ], [ %i.op, %bb.w ] ; 3 uses
  %.0.us.i328 = phi i32 [ %.1.us.i330, %bb.z ], [ %i.kl, %bb.w ] ; 2 uses
end_hunk_0
begin_hunk_1_@oscilloscope_filter_frame:bb.a
  %i.li = getelementptr inbounds nuw i8, ptr %i.i, i64 384
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph152, %bb.y
  %i.lj = phi i32 [ %.pre, %.lr.ph152 ], [ %i.mr, %bb.y ]
  %indvars.iv165 = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next166, %bb.y ] ; 6 uses
  %.3150 = phi i32 [ 0, %.lr.ph152 ], [ %.4, %bb.y ] ; 3 uses
  %i.lk = trunc nuw nsw i64 %indvars.iv165 to i32
  %i.ll = shl nuw i32 1, %i.lk
  %i.lm = load i32, ptr %i.lc, align 4, !tbaa !111
  %i.ln = and i32 %i.lm, %i.ll
  %.not137 = icmp eq i32 %i.ln, 0
  br i1 %.not137, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.lo = load i32, ptr %i.lh, align 8, !tbaa !112
  %.not138 = icmp eq i32 %i.lo, 0
  %.in.in.v = select i1 %.not138, ptr @__const.oscilloscope_filter_frame.yuva, ptr @__const.oscilloscope_filter_frame.rgba
  %.in.in = getelementptr inbounds nuw i8, ptr %.in.in.v, i64 %indvars.iv165
  %.in = load i8, ptr %.in.in, align 1, !tbaa !55
  %i.lp = sext i8 %.in to i32
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv165
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !92
  %i.ls = fpext nsz float %i.lr to double
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv165
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !79
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv165
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !79
  %i.lx = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 128, ptr noundef nonnull @.str.58, i32 noundef %i.lp, double noundef %i.ls, i32 noundef %i.lu, i32 noundef %i.lw) #14 ; 0 uses
  %i.ly = load i32, ptr %i.en, align 4, !tbaa !106
  %i.lz = mul nsw i32 %.3150, 280
  %i.ma = or disjoint i32 %i.lz, 2
  %i.mb = add i32 %i.ma, %i.ly                    ; 2 uses
  %i.mc = load i32, ptr %i.ep, align 8, !tbaa !107
  %i.md = load i32, ptr %i.et, align 4, !tbaa !109
  %i.me = add i32 %i.mc, 4
  %i.mf = add i32 %i.me, %i.md
  %i.mg = call ptr @avpriv_cga_font_get() #14
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.x, %bb.u
  %.021.us.i = phi ptr [ %i.mp, %bb.x ], [ %i.e, %bb.u ] ; 2 uses
  %.019.us.i = phi i32 [ %.120.us.i, %bb.x ], [ %i.mf, %bb.u ] ; 3 uses
  %.0.us.i = phi i32 [ %.1.us.i, %bb.x ], [ %i.mb, %bb.u ] ; 2 uses
  %i.mh = load i8, ptr %.021.us.i, align 1, !tbaa !55 ; 2 uses
  switch i8 %i.mh, label %bb.w [
    i8 0, label %draw_text.exit
    i8 10, label %bb.v
  ]

bb.v:                                             ; preds = %.split.us.i
  %i.mi = add nsw i32 %.019.us.i, 8
  br label %bb.x

bb.w:                                             ; preds = %.split.us.i
  %i.mj = zext i8 %i.mh to i64
  %i.mk = load i32, ptr %i.al, align 8, !tbaa !61
  %i.ml = load i32, ptr %i.am, align 4, !tbaa !62
  %i.mm = shl nuw nsw i64 %i.mj, 3
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.mm
  call void @ff_blend_mask(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.li, ptr noundef nonnull %1, ptr noundef nonnull %i.as, i32 noundef %i.mk, i32 noundef %i.ml, ptr noundef nonnull %i.mn, i32 noundef 1, i32 noundef 8, i32 noundef 8, i32 noundef 0, i32 noundef 0, i32 noundef %.0.us.i, i32 noundef %.019.us.i) #14
  %i.mo = add nsw i32 %.0.us.i, 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.120.us.i = phi i32 [ %i.mi, %bb.v ], [ %.019.us.i, %bb.w ]
  %.1.us.i = phi i32 [ %i.mb, %bb.v ], [ %i.mo, %bb.w ]
  %i.mp = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 1
  br label %.split.us.i, !llvm.loop !0

draw_text.exit:                                   ; preds = %.split.us.i
  %i.mq = add nsw i32 %.3150, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  %.pre168 = load i32, ptr %i.at, align 4, !tbaa !104
  br label %bb.y

bb.y:                                             ; preds = %bb.t, %draw_text.exit
  %i.mr = phi i32 [ %.pre168, %draw_text.exit ], [ %i.lj, %bb.t ] ; 2 uses
  %.4 = phi i32 [ %i.mq, %draw_text.exit ], [ %.3150, %bb.t ]
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.ms = sext i32 %i.mr to i64
  %i.mt = icmp slt i64 %indvars.iv.next166, %i.ms
  br i1 %i.mt, label %bb.t, label %.loopexit, !llvm.loop !157

.loopexit:                                        ; preds = %bb.y, %bb.s, %bb.r, %._crit_edge149
  %i.mu = call i32 @ff_filter_frame(ptr noundef %i.l, ptr noundef nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 %i.mu
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @oscilloscope_config_input(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 2 uses
  %i.b = alloca [4 x i8], align 4                 ; 2 uses
  %i.c = alloca [4 x i8], align 4                 ; 2 uses
  %i.d = alloca [4 x i8], align 4                 ; 2 uses
  %i.e = alloca [4 x i8], align 4                 ; 2 uses
  %i.f = alloca [4 x i8], align 4                 ; 2 uses
  %i.g = alloca [4 x i8], align 4                 ; 2 uses
  %i.h = alloca [4 x i8], align 4                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 22 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !70
  %i.o = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.n) #14
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store i32 %i.o, ptr %i.p, align 8, !tbaa !168
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 11 uses
  %i.r = load i32, ptr %i.m, align 4, !tbaa !70
  %i.s = tail call i32 @ff_draw_init(ptr noundef nonnull %i.q, i32 noundef %i.r, i32 noundef 0) #14 ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.j, i32 noundef 16, ptr noundef nonnull @.str.8) #14
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 316
  store <4 x i8> <i8 0, i8 0, i8 0, i8 -1>, ptr %i.a, align 4, !tbaa !55
  call void @ff_draw_color(ptr noundef nonnull %i.q, ptr noundef nonnull %i.u, ptr noundef nonnull %i.a) #14
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 384 ; 3 uses
  store i32 -1, ptr %i.b, align 4
  call void @ff_draw_color(ptr noundef nonnull %i.q, ptr noundef nonnull %i.v, ptr noundef nonnull %i.b) #14
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 452
  store <4 x i8> <i8 0, i8 -1, i8 0, i8 -1>, ptr %i.c, align 4, !tbaa !55
  call void @ff_draw_color(ptr noundef nonnull %i.q, ptr noundef nonnull %i.w, ptr noundef nonnull %i.c) #14
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 520
  store <4 x i8> <i8 0, i8 0, i8 -1, i8 -1>, ptr %i.d, align 4, !tbaa !55
  call void @ff_draw_color(ptr noundef nonnull %i.q, ptr noundef nonnull %i.x, ptr noundef nonnull %i.d) #14
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 588
  store <4 x i8> <i8 -1, i8 0, i8 0, i8 -1>, ptr %i.e, align 4, !tbaa !55
  call void @ff_draw_color(ptr noundef nonnull %i.q, ptr noundef nonnull %i.y, ptr noundef nonnull %i.e) #14
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 656 ; 2 uses
  store <4 x i8> <i8 0, i8 -1, i8 -1, i8 -1>, ptr %i.f, align 4, !tbaa !55
  call void @ff_draw_color(ptr noundef nonnull %i.q, ptr noundef nonnull %i.z, ptr noundef nonnull %i.f) #14
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 724 ; 2 uses
  store <4 x i8> <i8 -1, i8 0, i8 -1, i8 -1>, ptr %i.g, align 4, !tbaa !55
  call void @ff_draw_color(ptr noundef nonnull %i.q, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.g) #14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 792
  store <4 x i8> <i8 -128, i8 -128, i8 -128, i8 -1>, ptr %i.h, align 4, !tbaa !55
  call void @ff_draw_color(ptr noundef nonnull %i.q, ptr noundef nonnull %i.ab, ptr noundef nonnull %i.h) #14
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !103 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !75
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !97
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.aj, 32                       ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i32 %i.ak, ptr %i.al, align 8, !tbaa !112
  %.not = icmp eq i32 %i.ak, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 864 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 108 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, <4 x i64> <i64 588, i64 452, i64 520, i64 384>
  store <4 x ptr> %i.ao, ptr %i.am, align 8, !tbaa !96
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !70
  %i.aq = call i32 @ff_fill_rgba_map(ptr noundef nonnull %i.an, i32 noundef %i.ap) #14 ; 0 uses
  %.pre = load ptr, ptr %i.q, align 8, !tbaa !103
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 888
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 880
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 872
  store ptr %i.v, ptr %i.am, align 8, !tbaa !96
  store ptr %i.z, ptr %i.at, align 8, !tbaa !96
  store ptr %i.aa, ptr %i.as, align 8, !tbaa !96
  store ptr %i.v, ptr %i.ar, align 8, !tbaa !96
  store <4 x i8> <i8 0, i8 1, i8 2, i8 3>, ptr %i.an, align 4, !tbaa !55
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.au = phi ptr [ %i.ac, %bb.e ], [ %.pre, %bb.d ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !72 ; 2 uses
  %i.ax = icmp slt i32 %i.aw, 9                   ; 2 uses
  %spec.select = select i1 %i.ax, ptr @pick_color8, ptr @pick_color16
  %spec.select69 = select i1 %i.ax, ptr @draw_trace8, ptr @draw_trace16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 912
  store ptr %spec.select, ptr %i.ay, align 8, !tbaa !101
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 920
  store ptr %spec.select69, ptr %i.az, align 8, !tbaa !110
  %i.ba = shl nuw i32 1, %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !105
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load <2 x i32>, ptr %i.bc, align 8, !tbaa !79
  %i.be = sitofp <2 x i32> %i.bd to <2 x double>  ; 2 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0
  %i.bg = extractelement <2 x double> %i.be, i64 1
  %i.bh = call nsz double @hypot(double noundef %i.bf, double noundef %i.bg) #16
  %i.bi = fptosi double %i.bh to i32
  %i.bj = sext i32 %i.bi to i64
  %i.bk = call noalias ptr @av_calloc(i64 noundef %i.bj, i64 noundef 8) #14 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 904
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !102
  %.not66 = icmp eq ptr %i.bk, null
  br i1 %.not66, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !37  ; 2 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 32
  %.val = load ptr, ptr %i.bn, align 8, !tbaa !23
  %i.bo = getelementptr i8, ptr %i.bm, i64 72
  %.val67 = load ptr, ptr %i.bo, align 8, !tbaa !26
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !25
  call fastcc void @update_oscilloscope(ptr %.val.val, ptr %.val67)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  %.0 = phi i32 [ %i.s, %bb.b ], [ 0, %bb.g ], [ -12, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @draw_trace8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !100  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge43

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !104  ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader, label %._crit_edge43

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.w = phi i32 [ %i.gc, %._crit_edge ], [ %i.b, %.preheader.lr.ph ]
  %i.x = phi i32 [ %i.gd, %._crit_edge ], [ %i.u, %.preheader.lr.ph ] ; 2 uses
  %i.y = phi i32 [ %i.ge, %._crit_edge ], [ %i.u, %.preheader.lr.ph ] ; 2 uses
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %._crit_edge ], [ 1, %.preheader.lr.ph ] ; 4 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aa = add nsw i64 %indvars.iv47, -1           ; 2 uses
  %i.ab = trunc nuw nsw i64 %indvars.iv47 to i32
  %i.ac = trunc nuw nsw i64 %i.aa to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %draw_line.exit
  %i.ad = phi i32 [ %i.x, %.lr.ph ], [ %i.fz, %draw_line.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %draw_line.exit ] ; 4 uses
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = shl nuw i32 1, %i.ae
  %i.ag = load i32, ptr %i.e, align 4, !tbaa !111
  %i.ah = and i32 %i.ag, %i.af
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %draw_line.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = load i32, ptr %i.f, align 8, !tbaa !108 ; 2 uses
  %i.aj = mul nsw i32 %i.ai, %i.ab
  %i.ak = load i32, ptr %i.a, align 8, !tbaa !100 ; 2 uses
  %i.al = sdiv i32 %i.aj, %i.ak                   ; 3 uses
  %i.am = mul nsw i32 %i.ai, %i.ac
  %i.an = sdiv i32 %i.am, %i.ak                   ; 3 uses
  %i.ao = load i32, ptr %i.g, align 4, !tbaa !109 ; 4 uses
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !102 ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aa
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !55
  %i.at = zext i8 %i.as to i64                    ; 2 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2, !tbaa !90
  %i.aw = zext i16 %i.av to i32
  %i.ax = mul nsw i32 %i.ao, %i.aw
  %.neg = sdiv i32 %i.ax, -256                    ; 2 uses
  %i.ay = add i32 %.neg, %i.ao                    ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv47
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.at
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !90
  %i.bc = zext i16 %i.bb to i32
  %i.bd = mul nsw i32 %i.ao, %i.bc
  %.neg38 = sdiv i32 %i.bd, -256                  ; 2 uses
  %i.be = add i32 %.neg38, %i.ao                  ; 2 uses
  %i.bf = load i32, ptr %i.k, align 4, !tbaa !106 ; 2 uses
  %i.bg = add nsw i32 %i.bf, %i.al
  %i.bh = load i32, ptr %i.l, align 8, !tbaa !107 ; 2 uses
  %i.bi = add nsw i32 %i.be, %i.bh
  %i.bj = add nsw i32 %i.bf, %i.an
  %i.bk = add nsw i32 %i.ay, %i.bh
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !96
  %i.bn = sub nsw i32 %i.an, %i.al
  %i.bo = tail call i32 @llvm.abs.i32(i32 %i.bn, i1 true) ; 4 uses
  %i.bp = icmp slt i32 %i.al, %i.an
  %i.bq = select i1 %i.bp, i32 1, i32 -1
  %i.br = sub nsw i32 %.neg, %.neg38
  %i.bs = tail call i32 @llvm.abs.i32(i32 %i.br, i1 true) ; 4 uses
  %i.bt = icmp slt i32 %i.be, %i.ay
  %i.bu = select i1 %i.bt, i32 1, i32 -1
  %i.bv = icmp samesign ugt i32 %i.bo, %i.bs
  %i.bw = sub nsw i32 0, %i.bs
  %i.bx = select i1 %i.bv, i32 %i.bo, i32 %i.bw
  %i.by = sdiv i32 %i.bx, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 4 uses
  %i.ca = sub nsw i32 0, %i.bo
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  %.0101.i = phi i32 [ %i.bi, %bb.c ], [ %.1102.i, %bb.k ] ; 8 uses
  %.099.i = phi i32 [ %i.bg, %bb.c ], [ %.1100.i, %bb.k ] ; 8 uses
  %.097.i = phi i32 [ %i.by, %bb.c ], [ %.2.i, %bb.k ] ; 3 uses
  %i.cb = icmp sgt i32 %.099.i, -1
  %i.cc = icmp sgt i32 %.0101.i, -1
  %or.cond.i = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond.i, label %bb.e, label %.loopexit112.i

bb.e:                                             ; preds = %bb.d
  %i.cd = load i32, ptr %i.n, align 8, !tbaa !61
  %i.ce = icmp slt i32 %.099.i, %i.cd
  br i1 %i.ce, label %bb.f, label %.loopexit112.i

bb.f:                                             ; preds = %bb.e
  %i.cf = load i32, ptr %i.o, align 4, !tbaa !62
  %i.cg = icmp slt i32 %.0101.i, %i.cf
  br i1 %i.cg, label %.preheader111.i, label %.loopexit112.i

.preheader111.i:                                  ; preds = %bb.f
  %i.ch = load i32, ptr %i.p, align 4, !tbaa !80  ; 2 uses
  %.not.i = icmp eq i32 %i.ch, 0
  br i1 %.not.i, label %.loopexit112.i, label %.lr.ph117.i

.lr.ph117.i:                                      ; preds = %.preheader111.i, %.loopexit.i
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i, %.loopexit.i ], [ 0, %.preheader111.i ] ; 12 uses
  %i.ci = phi i32 [ %i.fo, %.loopexit.i ], [ %i.ch, %.preheader111.i ]
  %i.cj = load ptr, ptr %i.j, align 8, !tbaa !82  ; 3 uses
  %i.ck = getelementptr inbounds nuw [20 x i8], ptr %i.cj, i64 %indvars.iv125.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !72
  %i.cn = icmp eq i32 %i.cm, 8
  %i.co = icmp eq i32 %i.ci, 1                    ; 2 uses
  br i1 %i.cn, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph117.i
  br i1 %i.co, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cq = load i8, ptr %i.cp, align 8, !tbaa !75
  %.not119.i = icmp eq i8 %i.cq, 0
  br i1 %.not119.i, label %.loopexit.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.preheader.i, %.lr.ph115.i
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %.lr.ph115.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv122.i
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !55
  %i.ct = load ptr, ptr %1, align 8, !tbaa !78
  %i.cu = load i32, ptr %i.q, align 8, !tbaa !79
  %i.cv = mul nsw i32 %i.cu, %.0101.i
  %i.cw = load i32, ptr %i.t, align 8, !tbaa !79
  %i.cx = mul nsw i32 %i.cw, %.099.i
  %i.cy = trunc nuw nsw i64 %indvars.iv122.i to i32
  %i.cz = add i32 %i.cv, %i.cy
  %i.da = add i32 %i.cz, %i.cx
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.ct, i64 %i.db
  store i8 %i.cs, ptr %i.dc, align 1, !tbaa !55
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.dd = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load i8, ptr %i.de, align 8, !tbaa !75
  %i.dg = zext i8 %i.df to i64
  %i.dh = icmp samesign ult i64 %indvars.iv.next123.i, %i.dg
  br i1 %i.dh, label %.lr.ph115.i, label %.loopexit.i, !llvm.loop !1

bb.h:                                             ; preds = %bb.g
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %indvars.iv125.i
  %i.dj = load i8, ptr %i.di, align 4, !tbaa !55
end_hunk_1
begin_hunk_2_@draw_trace16:bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !75
  %.not119.i = icmp eq i8 %i.dc, 0
  br i1 %.not119.i, label %.loopexit.i, label %.lr.ph115.i

.lr.ph115.i:                                      ; preds = %.preheader.i, %.lr.ph115.i
  %indvars.iv122.i = phi i64 [ %indvars.iv.next123.i, %.lr.ph115.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv122.i
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !55
  %i.df = load ptr, ptr %1, align 8, !tbaa !78
  %i.dg = load i32, ptr %i.r, align 8, !tbaa !79
  %i.dh = mul nsw i32 %i.dg, %.0101.i
  %i.di = load i32, ptr %i.u, align 8, !tbaa !79
  %i.dj = mul nsw i32 %i.di, %.099.i
  %i.dk = trunc nuw nsw i64 %indvars.iv122.i to i32
  %i.dl = add i32 %i.dh, %i.dk
  %i.dm = add i32 %i.dl, %i.dj
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.df, i64 %i.dn
  store i8 %i.de, ptr %i.do, align 1, !tbaa !55
  %indvars.iv.next123.i = add nuw nsw i64 %indvars.iv122.i, 1 ; 2 uses
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !75
  %i.ds = zext i8 %i.dr to i64
  %i.dt = icmp samesign ult i64 %indvars.iv.next123.i, %i.ds
  br i1 %i.dt, label %.lr.ph115.i, label %.loopexit.i, !llvm.loop !1

bb.h:                                             ; preds = %bb.g
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %indvars.iv125.i
  %i.dv = load i8, ptr %i.du, align 4, !tbaa !55
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv125.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !78
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv125.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !79
  %i.ea = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv125.i
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !55
  %i.ec = zext nneg i8 %i.eb to i32
  %i.ed = lshr i32 %.0101.i, %i.ec
  %i.ee = mul nsw i32 %i.ed, %i.dz
  %i.ef = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv125.i
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !55
  %i.eh = zext nneg i8 %i.eg to i32
  %i.ei = lshr i32 %.099.i, %i.eh
  %i.ej = add nsw i32 %i.ee, %i.ei
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr inbounds i8, ptr %i.dx, i64 %i.ek
  store i8 %i.dv, ptr %i.el, align 1, !tbaa !55
  br label %.loopexit.i

bb.i:                                             ; preds = %.lr.ph117.i
  br i1 %i.da, label %.preheader109.i, label %bb.j

.preheader109.i:                                  ; preds = %bb.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.en = load i8, ptr %i.em, align 8, !tbaa !75
  %.not118.i = icmp eq i8 %i.en, 0
  br i1 %.not118.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader109.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader109.i ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.cl, i64 %indvars.iv.i
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !55
  %i.eq = load ptr, ptr %1, align 8, !tbaa !78
  %i.er = load i32, ptr %i.r, align 8, !tbaa !79
  %i.es = mul nsw i32 %i.er, %.0101.i
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds i8, ptr %i.eq, i64 %i.et
  %i.ev = load i32, ptr %i.u, align 8, !tbaa !79
  %i.ew = mul nsw i32 %i.ev, %.099.i
  %i.ex = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ey = add nsw i32 %i.ew, %i.ex
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %i.eu, i64 %i.ez
  store i16 %i.ep, ptr %i.fa, align 1, !tbaa !55
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fb = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i8, ptr %i.fc, align 8, !tbaa !75
  %i.fe = zext i8 %i.fd to i64
  %i.ff = icmp samesign ult i64 %indvars.iv.next.i, %i.fe
  br i1 %i.ff, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !2

bb.j:                                             ; preds = %bb.i
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %indvars.iv125.i
  %i.fh = load i16, ptr %i.fg, align 4, !tbaa !55
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv125.i
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !78
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv125.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !79
  %i.fm = getelementptr inbounds nuw i8, ptr %i.s, i64 %indvars.iv125.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !55
  %i.fo = zext nneg i8 %i.fn to i32
  %i.fp = lshr i32 %.0101.i, %i.fo
  %i.fq = mul nsw i32 %i.fp, %i.fl
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.fj, i64 %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv125.i
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !55
  %i.fv = zext nneg i8 %i.fu to i32
  %i.fw = lshr i32 %.099.i, %i.fv
  %i.fx = shl nuw nsw i32 %i.fw, 1
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fy
  store i16 %i.fh, ptr %i.fz, align 1, !tbaa !55
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i, %.lr.ph115.i, %bb.j, %.preheader109.i, %bb.h, %.preheader.i
  %indvars.iv.next126.i = add nuw nsw i64 %indvars.iv125.i, 1 ; 2 uses
  %i.ga = load i32, ptr %i.q, align 4, !tbaa !80  ; 2 uses
  %i.gb = zext i32 %i.ga to i64
  %i.gc = icmp samesign ult i64 %indvars.iv.next126.i, %i.gb
  br i1 %i.gc, label %.lr.ph117.i, label %.loopexit112.i, !llvm.loop !3

.loopexit112.i:                                   ; preds = %.loopexit.i, %.preheader111.i, %bb.f, %bb.e, %bb.d
  %i.gd = icmp eq i32 %.099.i, %i.bv
  %i.ge = icmp eq i32 %.0101.i, %i.bw
  %or.cond108.i = select i1 %i.gd, i1 %i.ge, i1 false
  br i1 %or.cond108.i, label %draw_line.exit.loopexit, label %bb.k

bb.k:                                             ; preds = %.loopexit112.i
  %i.gf = icmp sgt i32 %.097.i, %i.cm             ; 2 uses
  %i.gg = select i1 %i.gf, i32 %i.cc, i32 0
  %.1100.i = add nsw i32 %i.gg, %.099.i
  %i.gh = select i1 %i.gf, i32 %i.ce, i32 0
  %.198.i = sub i32 %.097.i, %i.gh
  %i.gi = icmp slt i32 %.097.i, %i.ce             ; 2 uses
  %i.gj = select i1 %i.gi, i32 %i.cg, i32 0
  %.1102.i = add nsw i32 %i.gj, %.0101.i
  %i.gk = select i1 %i.gi, i32 %i.ca, i32 0
  %.2.i = add nsw i32 %.198.i, %i.gk
  br label %bb.d

draw_line.exit.loopexit:                          ; preds = %.loopexit112.i
  %.pre = load i32, ptr %i.d, align 4, !tbaa !104
  br label %draw_line.exit

draw_line.exit:                                   ; preds = %draw_line.exit.loopexit, %bb.b
  %i.gl = phi i32 [ %.pre, %draw_line.exit.loopexit ], [ %i.ae, %bb.b ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %indvars.iv.next, %i.gm
  br i1 %i.gn, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !171

._crit_edge.loopexit:                             ; preds = %draw_line.exit
  %.pre50 = load i32, ptr %i.a, align 8, !tbaa !100
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.go = phi i32 [ %.pre50, %._crit_edge.loopexit ], [ %i.x, %.preheader ] ; 2 uses
  %i.gp = phi i32 [ %i.gl, %._crit_edge.loopexit ], [ %i.y, %.preheader ]
  %i.gq = phi i32 [ %i.gl, %._crit_edge.loopexit ], [ %i.z, %.preheader ]
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.gr = sext i32 %i.go to i64
  %i.gs = icmp slt i64 %indvars.iv.next48, %i.gr
  br i1 %i.gs, label %.preheader, label %._crit_edge43, !llvm.loop !172

._crit_edge43:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #11

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @update_oscilloscope(ptr nofree readonly captures(none) %.32.val.0.val, ptr %.72.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.72.val, i64 112
  %i.c = getelementptr inbounds nuw i8, ptr %.72.val, i64 248
  store i8 0, ptr %i.a, align 1, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 0, ptr %i.d, align 1, !tbaa !55
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 0, ptr %i.e, align 1, !tbaa !55
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.g = getelementptr inbounds nuw i8, ptr %.72.val, i64 40
  %i.h = load float, ptr %i.g, align 8, !tbaa !173
  %i.i = fmul nsz float %i.h, 2.550000e+02
  %i.j = fptoui float %i.i to i8
  store i8 %i.j, ptr %i.f, align 1, !tbaa !55
  call void @ff_draw_color(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a) #14
  %i.k = getelementptr inbounds nuw i8, ptr %.72.val, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %.72.val, i64 84
  %i.m = getelementptr inbounds nuw i8, ptr %.32.val.0.val, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %.72.val, i64 24
  %i.o = load float, ptr %i.n, align 8, !tbaa !174
  %i.p = getelementptr inbounds nuw i8, ptr %.72.val, i64 28
  %i.q = load float, ptr %i.p, align 4, !tbaa !175
  %i.r = fpext nsz float %i.q to double
  %i.s = fadd nsz double %i.r, -5.000000e-01
  %i.t = fmul nsz double %i.s, f0x400921FB54442D18
  %sincos = call nsz { double, double } @llvm.sincos.f64(double %i.t) ; 2 uses
  %sin = extractvalue { double, double } %sincos, 0
  %cos = extractvalue { double, double } %sincos, 1
  %i.u = getelementptr inbounds nuw i8, ptr %.72.val, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.72.val, i64 60
  %i.w = load <2 x i32>, ptr %i.m, align 8, !tbaa !79 ; 4 uses
  %i.x = sitofp <2 x i32> %i.w to <2 x double>    ; 2 uses
  %i.y = extractelement <2 x double> %i.x, i64 0
  %i.z = extractelement <2 x double> %i.x, i64 1
  %i.aa = call nsz double @hypot(double noundef %i.y, double noundef %i.z) #16
  %i.ab = fptosi double %i.aa to i32
  %i.ac = sitofp nsz i32 %i.ab to float
  %i.ad = fmul nsz float %i.o, %i.ac
  %i.ae = fptosi float %i.ad to i32
  %i.af = load <2 x float>, ptr %i.u, align 8, !tbaa !92
  %i.ag = add nsw <2 x i32> %i.w, splat (i32 -1)
  %i.ah = sitofp <2 x i32> %i.ag to <2 x float>
  %i.ai = fmul nsz <2 x float> %i.af, %i.ah
  %i.aj = fptosi <2 x float> %i.ai to <2 x i32>
  %i.ak = sitofp nsz i32 %i.ae to double
  %i.al = fmul nnan nsz double %i.ak, 5.000000e-01 ; 2 uses
  %i.am = fneg nsz double %i.al
  %i.an = sitofp <2 x i32> %i.aj to <2 x double>
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ap = insertelement <4 x double> poison, double %i.am, i64 0
  %i.aq = insertelement <4 x double> %i.ap, double %i.al, i64 2
  %i.ar = shufflevector <4 x double> %i.aq, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %i.as = insertelement <4 x double> poison, double %cos, i64 0
  %i.at = insertelement <4 x double> %i.as, double %sin, i64 1
  %i.au = shufflevector <4 x double> %i.at, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.av = call nsz <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ar, <4 x double> %i.au, <4 x double> %i.ao)
  %i.aw = fptosi <4 x double> %i.av to <4 x i32>
  store <4 x i32> %i.aw, ptr %i.v, align 4, !tbaa !79
  %i.ax = getelementptr inbounds nuw i8, ptr %.72.val, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.72.val, i64 76
  %i.az = load <2 x float>, ptr %i.k, align 8, !tbaa !92
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bb = sitofp <2 x i32> %i.w to <2 x float>
  %i.bc = fmul nsz <2 x float> %i.ba, %i.bb
  %i.bd = fptosi <2 x float> %i.bc to <2 x i32>   ; 2 uses
  %i.be = shufflevector <2 x i32> %i.bd, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.be, ptr %i.l, align 4, !tbaa !79
  %i.bf = sub nsw <2 x i32> %i.w, %i.bd
  %i.bg = sitofp <2 x i32> %i.bf to <2 x float>
  %i.bh = load <2 x float>, ptr %i.ax, align 8, !tbaa !92
  %i.bi = fmul nsz <2 x float> %i.bh, %i.bg
  %i.bj = fptosi <2 x float> %i.bi to <2 x i32>
  store <2 x i32> %i.bj, ptr %i.ay, align 4, !tbaa !79
  ret void
}

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #12

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !49}
!1 = distinct !{!1, !49}
!2 = distinct !{!2, !49}
!3 = distinct !{!3, !49}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 1, !"override-stack-alignment", i32 16}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS7AVClass", !13, i64 0}
!15 = !{!"p1 _ZTS8AVFilter", !13, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"p1 _ZTS11AVFilterPad", !13, i64 0}
!18 = !{!"any p2 pointer", !13, i64 0}
!19 = !{!"p2 _ZTS12AVFilterLink", !18, i64 0}
!20 = !{!"p1 _ZTS13AVFilterGraph", !13, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !13, i64 0}
!22 = !{!"AVFilterContext", !14, i64 0, !15, i64 8, !16, i64 16, !17, i64 24, !19, i64 32, !10, i64 40, !17, i64 48, !19, i64 56, !10, i64 64, !13, i64 72, !20, i64 80, !10, i64 88, !10, i64 92, !16, i64 96, !10, i64 104, !21, i64 112, !10, i64 120}
!23 = !{!22, !19, i64 32}
!24 = !{!"p1 _ZTS12AVFilterLink", !13, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!22, !13, i64 72}
!27 = !{!"p1 _ZTS7AVFrame", !13, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 _ZTS15AVFilterContext", !13, i64 0}
!30 = !{!"AVRational", !10, i64 0, !10, i64 4}
!31 = !{!"AVChannelLayout", !10, i64 0, !10, i64 4, !9, i64 8, !13, i64 16}
!32 = !{!"p2 _ZTS15AVFrameSideData", !18, i64 0}
!33 = !{!"p1 _ZTS15AVFilterFormats", !13, i64 0}
!34 = !{!"p1 _ZTS22AVFilterChannelLayouts", !13, i64 0}
!35 = !{!"AVFilterFormatsConfig", !33, i64 0, !33, i64 8, !34, i64 16, !33, i64 24, !33, i64 32, !33, i64 40}
!36 = !{!"AVFilterLink", !29, i64 0, !17, i64 8, !29, i64 16, !17, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !30, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !31, i64 72, !30, i64 96, !32, i64 104, !10, i64 112, !10, i64 116, !35, i64 120, !35, i64 168}
!37 = !{!36, !29, i64 16}
!38 = !{!22, !19, i64 56}
!39 = !{!"float", !9, i64 0}
!40 = !{!"p1 _ZTS18AVPixFmtDescriptor", !13, i64 0}
!41 = !{!"FFDrawContext", !40, i64 0, !10, i64 8, !10, i64 12, !9, i64 16, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 41, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !9, i64 64}
!42 = !{!"FFDrawColor", !9, i64 0, !9, i64 4}
!43 = !{!"DatascopeContext", !14, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !39, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !41, i64 56, !42, i64 192, !42, i64 260, !42, i64 328, !42, i64 396, !13, i64 464, !13, i64 472, !13, i64 480}
!44 = !{!43, !10, i64 44}
!45 = !{!43, !10, i64 48}
!46 = !{!36, !10, i64 40}
!47 = !{!36, !10, i64 44}
!48 = !{!43, !10, i64 36}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.isvectorized", i32 1}
!51 = !{!"llvm.loop.unroll.runtime.disable"}
!52 = !{!43, !10, i64 52}
!53 = !{!43, !10, i64 20}
!54 = !{!43, !10, i64 16}
!55 = !{!9, !9, i64 0}
!56 = !{!"p2 omnipotent char", !18, i64 0}
!57 = !{!"long", !9, i64 0}
!58 = !{!"p2 _ZTS11AVBufferRef", !18, i64 0}
!59 = !{!"p1 _ZTS12AVDictionary", !13, i64 0}
!60 = !{!"AVFrame", !9, i64 0, !9, i64 64, !56, i64 96, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !10, i64 120, !30, i64 124, !57, i64 136, !57, i64 144, !30, i64 152, !10, i64 160, !13, i64 168, !10, i64 176, !10, i64 180, !9, i64 184, !58, i64 248, !10, i64 256, !32, i64 264, !10, i64 272, !10, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !10, i64 292, !10, i64 296, !57, i64 304, !59, i64 312, !10, i64 320, !21, i64 328, !21, i64 336, !57, i64 344, !57, i64 352, !57, i64 360, !57, i64 368, !13, i64 376, !31, i64 384, !57, i64 408, !10, i64 416}
!61 = !{!60, !10, i64 104}
!62 = !{!60, !10, i64 108}
!63 = !{!"ThreadData", !27, i64 0, !27, i64 8, !10, i64 16, !10, i64 20, !10, i64 24}
!64 = !{!63, !27, i64 0}
!65 = !{!63, !27, i64 8}
!66 = !{!63, !10, i64 20}
!67 = !{!63, !10, i64 16}
!68 = !{!63, !10, i64 24}
!69 = !{!43, !13, i64 480}
!70 = !{!36, !10, i64 36}
!71 = !{!"AVComponentDescriptor", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16}
!72 = !{!71, !10, i64 16}
!73 = !{!43, !10, i64 28}
!74 = !{!"AVPixFmtDescriptor", !16, i64 0, !9, i64 8, !9, i64 9, !9, i64 10, !57, i64 16, !9, i64 24, !16, i64 104}
!75 = !{!74, !9, i64 8}
!76 = !{!43, !13, i64 464}
!77 = !{!43, !13, i64 472}
!78 = !{!16, !16, i64 0}
!79 = !{!10, !10, i64 0}
!80 = !{!41, !10, i64 12}
!81 = !{!"llvm.loop.peeled.count", i32 1}
!82 = !{!41, !40, i64 0}
!83 = !{!"PixscopeContext", !14, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !10, i64 24, !10, i64 28, !39, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !9, i64 64, !41, i64 72, !42, i64 208, !42, i64 276, !42, i64 344, !42, i64 412, !42, i64 480, !42, i64 548, !9, i64 616, !9, i64 648, !13, i64 51848}
!84 = !{!83, !10, i64 44}
!85 = !{!83, !10, i64 24}
!86 = !{!83, !10, i64 28}
!87 = !{!83, !10, i64 48}
!88 = !{!83, !13, i64 51848}
!89 = !{!"short", !9, i64 0}
!90 = !{!89, !89, i64 0}
!91 = !{!"llvm.loop.unswitch.partial.disable"}
!92 = !{!39, !39, i64 0}
!93 = !{!83, !10, i64 56}
!94 = !{!83, !10, i64 60}
!95 = !{!"p1 _ZTS11FFDrawColor", !13, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!74, !57, i64 16}
!98 = !{!"p1 _ZTS11PixelValues", !13, i64 0}
!99 = !{!"OscilloscopeContext", !14, i64 0, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !9, i64 108, !41, i64 112, !42, i64 248, !42, i64 316, !42, i64 384, !42, i64 452, !42, i64 520, !42, i64 588, !42, i64 656, !42, i64 724, !42, i64 792, !9, i64 864, !10, i64 896, !98, i64 904, !13, i64 912, !13, i64 920}
!100 = !{!99, !10, i64 896}
!101 = !{!99, !13, i64 912}
!102 = !{!99, !98, i64 904}
!103 = !{!99, !40, i64 112}
!104 = !{!99, !10, i64 100}
!105 = !{!99, !10, i64 92}
!106 = !{!99, !10, i64 76}
!107 = !{!99, !10, i64 80}
!108 = !{!99, !10, i64 88}
!109 = !{!99, !10, i64 84}
!110 = !{!99, !13, i64 920}
!111 = !{!99, !10, i64 44}
!112 = !{!99, !10, i64 104}
!113 = distinct !{!113, !49, !50, !51}
!114 = distinct !{!114, !49, !51, !50}
!115 = distinct !{!115, !49}
!116 = distinct !{!116, !49}
!117 = !{!43, !10, i64 32}
!118 = !{!43, !39, i64 40}
!119 = !{!43, !40, i64 56}
!120 = !{!43, !10, i64 24}
!121 = distinct !{!121, !49}
!122 = distinct !{!122, !49}
!123 = distinct !{!123, !49}
!124 = distinct !{!124, !49}
!125 = distinct !{!125, !49}
!126 = distinct !{!126, !49}
!127 = distinct !{!127, !49}
!128 = distinct !{!128, !49}
!129 = distinct !{!129, !49}
end_hunk_2
