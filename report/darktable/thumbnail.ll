Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/thumbnail?download=true
inline.NumInlined: 149
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_event_image_draw:bb.a
bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 360
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !163
  %.not149 = icmp eq ptr %i.bb, null
  br i1 %.not149, label %bb.ai, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !170 ; 2 uses
  %.not12.i164 = icmp eq ptr %i.bc, null
  br i1 %.not12.i164, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = call i32 @cairo_surface_get_reference_count(ptr noundef nonnull %i.bc) #22
  %.not13.i165 = icmp eq i32 %i.bd, 0
  br i1 %.not13.i165, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.be = load ptr, ptr %i.ak, align 8, !tbaa !170
  call void @cairo_surface_destroy(ptr noundef %i.be) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  store ptr null, ptr %i.ak, align 8, !tbaa !170
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 172
  store i32 1, ptr %i.bf, align 4, !tbaa !123
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !124 ; 2 uses
  %.not14.i166 = icmp eq ptr %i.bh, null
  br i1 %.not14.i166, label %dt_thumbnail_surface_destroy.exit168, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bi = call i32 @cairo_surface_get_reference_count(ptr noundef nonnull %i.bh) #22
  %.not15.i167 = icmp eq i32 %i.bi, 0
  br i1 %.not15.i167, label %dt_thumbnail_surface_destroy.exit168, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !124
  call void @cairo_surface_destroy(ptr noundef %i.bj) #22
  br label %dt_thumbnail_surface_destroy.exit168

dt_thumbnail_surface_destroy.exit168:             ; preds = %bb.x, %bb.y, %bb.z
  store ptr null, ptr %i.bg, align 8, !tbaa !124
  %i.bk = load ptr, ptr %i.au, align 16, !tbaa !152
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 464 ; 2 uses
  %i.bm = call i32 @pthread_mutex_lock(ptr noundef nonnull %i.bl) #22 ; 0 uses
  %i.bn = load ptr, ptr %i.au, align 16, !tbaa !152 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 376
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !255 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 380
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !256 ; 4 uses
  %i.bs = sext i32 %i.bp to i64
  %i.bt = shl nsw i64 %i.bs, 2
  %i.bu = sext i32 %i.br to i64
  %i.bv = mul i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = call ptr @dt_alloc_aligned(i64 noundef %i.bv) #22 ; 4 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bw, i64 64) ]
  %i.bx = load ptr, ptr %i.au, align 16, !tbaa !152
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 360
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !163
  call void @llvm.memcpy.p0.p0.i64(ptr align 64 %i.bw, ptr align 1 %i.bz, i64 %i.bv, i1 false)
  %i.ca = call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.bl) #22 ; 0 uses
  %i.cb = call i32 @cairo_format_stride_for_width(i32 noundef 1, i32 noundef %i.bp) #22
  %i.cc = call ptr @cairo_image_surface_create_for_data(ptr noundef %i.bw, i32 noundef 1, i32 noundef %i.bp, i32 noundef %i.br, i32 noundef %i.cb) #22 ; 3 uses
  %.not153 = icmp eq ptr %i.cc, null
  br i1 %.not153, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %dt_thumbnail_surface_destroy.exit168
  %i.cd = load i32, ptr %i.f, align 4, !tbaa !171
  %i.ce = sitofp reassoc nsz arcp contract afn i32 %i.cd to float
  %i.cf = sitofp reassoc nsz arcp contract afn i32 %i.bp to float ; 3 uses
  %i.cg = fdiv reassoc nsz arcp contract afn float %i.ce, %i.cf
  %i.ch = load i32, ptr %i.g, align 4, !tbaa !171
  %i.ci = sitofp reassoc nsz arcp contract afn i32 %i.ch to float
  %i.cj = sitofp reassoc nsz arcp contract afn i32 %i.br to float ; 3 uses
  %i.ck = fdiv reassoc nsz arcp contract afn float %i.ci, %i.cj
  %i.cl = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.cg, float %i.ck)
  %i.cm = fpext reassoc nsz arcp contract afn float %i.cl to double
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1448
  %i.cp = load double, ptr %i.co, align 8, !tbaa !177
  %i.cq = fmul reassoc nsz arcp contract afn double %i.cp, %i.cm
  %i.cr = fptrunc reassoc nsz arcp contract afn double %i.cq to float ; 2 uses
  %i.cs = fmul reassoc nsz arcp contract afn float %i.cr, %i.cf
  %i.ct = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.cs)
  %i.cu = fptosi float %i.ct to i32               ; 3 uses
  %i.cv = fmul reassoc nsz arcp contract afn float %i.cr, %i.cj
  %i.cw = call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.cv)
  %i.cx = fptosi float %i.cw to i32               ; 3 uses
  %i.cy = sitofp reassoc nsz arcp contract afn i32 %i.cu to float
  %i.cz = fdiv reassoc nsz arcp contract afn float %i.cy, %i.cf
  %i.da = sitofp reassoc nsz arcp contract afn i32 %i.cx to float
  %i.db = fdiv reassoc nsz arcp contract afn float %i.da, %i.cj
  %i.dc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.cz, float %i.db) ; 3 uses
  %i.dd = call ptr @cairo_image_surface_create(i32 noundef 1, i32 noundef %i.cu, i32 noundef %i.cx) #22 ; 2 uses
  store ptr %i.dd, ptr %i.ak, align 8, !tbaa !170
  %i.de = call ptr @cairo_create(ptr noundef %i.dd) #22 ; 10 uses
  %i.df = fpext reassoc nsz arcp contract afn float %i.dc to double ; 2 uses
  call void @cairo_scale(ptr noundef %i.de, double noundef %i.df, double noundef %i.df) #22
  call void @cairo_set_source_surface(ptr noundef %i.de, ptr noundef nonnull %i.cc, double noundef 0.000000e+00, double noundef 0.000000e+00) #22
  %i.dg = icmp slt i32 %i.bp, 31
  %i.dh = icmp slt i32 %i.br, 31
  %or.cond = and i1 %i.dg, %i.dh
  br i1 %or.cond, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = fadd reassoc nsz arcp contract afn float %i.dc, -1.000000e+00
  %i.dj = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.di)
  %i.dk = fcmp reassoc nsz arcp contract afn olt float %i.dj, f0x3C23D70A
  br i1 %i.dk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.dl = call ptr @cairo_get_source(ptr noundef %i.de) #22
  call void @cairo_pattern_set_filter(ptr noundef %i.dl, i32 noundef 3) #22
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.dm = call ptr @cairo_get_source(ptr noundef %i.de) #22
  %i.dn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 5568
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !178
  call void @cairo_pattern_set_filter(ptr noundef %i.dm, i32 noundef %i.dp) #22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @cairo_paint(ptr noundef %i.de) #22
  %i.dq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1376
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !257
  %.not154 = icmp eq i32 %i.ds, 0
  br i1 %.not154, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @cairo_save(ptr noundef %i.de) #22
  %i.dt = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.dc
  %i.du = fpext reassoc nsz arcp contract afn float %i.dt to double ; 2 uses
  call void @cairo_scale(ptr noundef %i.de, double noundef %i.du, double noundef %i.du) #22
  %i.dv = load ptr, ptr %i.ak, align 8, !tbaa !170
  %i.dw = call ptr @cairo_image_surface_get_data(ptr noundef %i.dv) #22
  call fastcc void @dt_focuspeaking(ptr noundef %i.de, i32 noundef %i.cu, i32 noundef %i.cx, ptr noundef %i.dw)
  call void @cairo_restore(ptr noundef %i.de) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @cairo_surface_destroy(ptr noundef nonnull %i.cc) #22
  call void @cairo_destroy(ptr noundef %i.de) #22
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %dt_thumbnail_surface_destroy.exit168
  call void @free(ptr noundef %i.bw) #22
  store i32 1, ptr %i.r, align 8, !tbaa !125
  br label %bb.aw

bb.ai:                                            ; preds = %bb.t, %bb.s, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store ptr null, ptr %i.h, align 8, !tbaa !258
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 380
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !179
  %.not150 = icmp eq i32 %i.dy, 0
  br i1 %.not150, label %bb.aq, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 388 ; 3 uses
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !180 ; 3 uses
  %i.eb = fcmp reassoc nsz arcp contract afn ogt float %i.ea, 1.000000e+00
  br i1 %i.eb, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 408 ; 2 uses
  %i.ed = load float, ptr %i.ec, align 8, !tbaa !181 ; 2 uses
  %i.ee = fcmp reassoc nsz arcp contract afn olt float %i.ed, 1.000000e+00
  br i1 %i.ee, label %bb.al, label %dt_thumbnail_get_zoom100.exit

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 0, ptr %i.e, align 4, !tbaa !171
  %i.ef = load i32, ptr %2, align 8, !tbaa !86
  %i.eg = call i32 @dt_image_get_final_size(i32 noundef %i.ef, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #22 ; 0 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !182 ; 2 uses
  %.not.i169 = icmp eq ptr %i.ei, null
  br i1 %.not.i169, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call fastcc void @_thumb_retrieve_margins(ptr noundef nonnull %2)
  %.pre.i = load ptr, ptr %i.eh, align 8, !tbaa !182
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ej = phi ptr [ %.pre.i, %bb.am ], [ %i.ei, %bb.al ]
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.el = load <2 x i32>, ptr %i.ek, align 8, !tbaa !171
  %i.em = load <4 x i16>, ptr %i.ej, align 2, !tbaa !183 ; 2 uses
  %i.en = shufflevector <4 x i16> %i.em, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.eo = sext <2 x i16> %i.en to <2 x i32>
  %i.ep = shufflevector <4 x i16> %i.em, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.eq = sext <2 x i16> %i.ep to <2 x i32>
  %i.er = add nsw <2 x i32> %i.eo, %i.eq
  %i.es = sub <2 x i32> %i.el, %i.er
  %i.et = sitofp <2 x i32> %i.es to <2 x float>
  %i.eu = load i32, ptr %i.d, align 4, !tbaa !171
  %i.ev = load i32, ptr %i.e, align 4, !tbaa !171
  %i.ew = insertelement <2 x i32> poison, i32 %i.eu, i64 0
  %i.ex = insertelement <2 x i32> %i.ew, i32 %i.ev, i64 1
  %i.ey = sitofp <2 x i32> %i.ex to <2 x float>
  %i.ez = fdiv reassoc nsz arcp contract afn <2 x float> %i.ey, %i.et ; 2 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0
  %i.fb = extractelement <2 x float> %i.ez, i64 1
  %i.fc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.fa, float %i.fb) ; 2 uses
  %i.fd = fcmp reassoc nsz arcp contract afn olt float %i.fc, 1.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.fd, float 1.000000e+00, float %i.fc ; 2 uses
  store float %spec.select.i, ptr %i.ec, align 8, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %.pre.pre = load float, ptr %i.dz, align 4, !tbaa !180
  br label %dt_thumbnail_get_zoom100.exit

dt_thumbnail_get_zoom100.exit:                    ; preds = %bb.ak, %bb.an
  %.pre = phi float [ %.pre.pre, %bb.an ], [ %i.ea, %bb.ak ] ; 3 uses
  %i.fe = phi float [ %spec.select.i, %bb.an ], [ %i.ed, %bb.ak ] ; 2 uses
  %i.ff = fcmp reassoc nsz arcp contract afn olt float %i.fe, 1.000000e+00
  %spec.select18.i = select reassoc nsz arcp contract afn i1 %i.ff, float 1.000000e+00, float %i.fe ; 3 uses
  %i.fg = fcmp reassoc nsz arcp contract afn ogt float %spec.select18.i, 1.000000e+00
  br i1 %i.fg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %dt_thumbnail_get_zoom100.exit
  %i.fh = fcmp reassoc nsz arcp contract afn olt float %.pre, %spec.select18.i
  %. = select reassoc nsz arcp contract afn i1 %i.fh, float %.pre, float %spec.select18.i ; 2 uses
  store float %., ptr %i.dz, align 4, !tbaa !180
  br label %bb.ap

bb.ap:                                            ; preds = %dt_thumbnail_get_zoom100.exit, %bb.ao, %bb.aj
  %i.fi = phi float [ %.pre, %dt_thumbnail_get_zoom100.exit ], [ %., %bb.ao ], [ %i.ea, %bb.aj ] ; 2 uses
  %i.fj = load i32, ptr %2, align 8, !tbaa !86
  %i.fk = load i32, ptr %i.f, align 4, !tbaa !171
  %i.fl = sitofp reassoc nsz arcp contract afn i32 %i.fk to float
  %i.fm = fmul reassoc nsz arcp contract afn float %i.fi, %i.fl
  %i.fn = fptosi float %i.fm to i32
  %i.fo = load i32, ptr %i.g, align 4, !tbaa !171
  %i.fp = sitofp reassoc nsz arcp contract afn i32 %i.fo to float
  %i.fq = fmul reassoc nsz arcp contract afn float %i.fi, %i.fp
  %i.fr = fptosi float %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.ft = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.fu = call i32 @dt_view_image_get_surface_cached(i32 noundef %i.fj, i32 noundef %i.fn, i32 noundef %i.fr, ptr noundef nonnull %i.h, i32 noundef 0, ptr noundef nonnull %i.fs, ptr noundef nonnull %i.ft) #22
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ai
  %i.fv = load i32, ptr %2, align 8, !tbaa !86
  %i.fw = load i32, ptr %i.f, align 4, !tbaa !171
  %i.fx = load i32, ptr %i.g, align 4, !tbaa !171
  %i.fy = call i32 @dt_view_image_get_surface(i32 noundef %i.fv, i32 noundef %i.fw, i32 noundef %i.fx, ptr noundef nonnull %i.h, i32 noundef 0) #22
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.0134 = phi i32 [ %i.fu, %bb.ap ], [ %i.fy, %bb.aq ] ; 2 uses
  %i.fz = and i32 %.0134, -3
  %or.cond3 = icmp eq i32 %i.fz, 0
  br i1 %or.cond3, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.ga = load ptr, ptr %i.ak, align 8, !tbaa !170 ; 3 uses
  %i.gb = load ptr, ptr %i.h, align 8, !tbaa !258
  store ptr %i.gb, ptr %i.ak, align 8, !tbaa !170
  %.not151 = icmp eq ptr %i.ga, null
  br i1 %.not151, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gc = call i32 @cairo_surface_get_reference_count(ptr noundef nonnull %i.ga) #22
  %.not152 = icmp eq i32 %i.gc, 0
  br i1 %.not152, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @cairo_surface_destroy(ptr noundef nonnull %i.ga) #22
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.at, %bb.au, %bb.ar
  store i32 0, ptr %i.r, align 8, !tbaa !125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  %i.gd = icmp eq i32 %.0134, 0
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ah
  %.1135 = phi i1 [ true, %bb.ah ], [ %i.gd, %bb.av ]
  %i.ge = load ptr, ptr %i.ak, align 8, !tbaa !170 ; 2 uses
  %.not155 = icmp eq ptr %i.ge, null
  br i1 %.not155, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gf = call i32 @cairo_image_surface_get_width(ptr noundef nonnull %i.ge) #22
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.gf, ptr %i.gg, align 8, !tbaa !184
  %i.gh = load ptr, ptr %i.ak, align 8, !tbaa !170
  %i.gi = call i32 @cairo_image_surface_get_height(ptr noundef %i.gh) #22
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.gi, ptr %i.gj, align 4, !tbaa !185
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 388
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !180
  %i.gm = getelementptr inbounds nuw i8, ptr %2, i64 180
  store float %i.gl, ptr %i.gm, align 4, !tbaa !186
  call fastcc void @_thumb_update_image_box(ptr noundef nonnull %2)
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !97
  %i.gp = icmp eq i32 %i.go, 6
  br i1 %i.gp, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  call fastcc void @_thumb_resize_overlays(ptr noundef nonnull %2)
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw
  br i1 %.1135, label %.critedge, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i32 1, ptr %i.gq, align 8, !tbaa !259
  %i.gr = getelementptr inbounds nuw i8, ptr %2, i64 376 ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 8, !tbaa !187
  %.not157 = icmp eq i32 %i.gs, 0
  br i1 %.not157, label %bb.bb, label %.critedge162

bb.bb:                                            ; preds = %bb.ba
  %i.gt = call i32 @g_timeout_add(i32 noundef 250, ptr noundef nonnull @_thumb_expose_again, ptr noundef nonnull %2) #22
  store i32 %i.gt, ptr %i.gr, align 8, !tbaa !187
  br label %.critedge162

.critedge:                                        ; preds = %bb.az
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 412
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !260
  %.not158 = icmp eq i32 %i.gv, 0
  br i1 %.not158, label %.critedge161, label %bb.bc

bb.bc:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #22
  store ptr null, ptr %i.i, align 8, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.m, i8 0, i64 4096, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #22
  store i32 1, ptr %i.n, align 4, !tbaa !171
  %i.gw = load i32, ptr %2, align 8, !tbaa !86
  call void @dt_image_full_path(i32 noundef %i.gw, ptr noundef nonnull %i.m, i64 noundef 4096, ptr noundef nonnull %i.n) #22
  %i.gx = call i32 @dt_imageio_large_thumbnail(ptr noundef nonnull %i.m, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) #22
  %.not159 = icmp eq i32 %i.gx, 0
  br i1 %.not159, label %bb.bd, label %.critedge161.sink.split

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.gy = load ptr, ptr %i.i, align 8, !tbaa !188 ; 6 uses
  %i.gz = load i32, ptr %i.j, align 4, !tbaa !171 ; 10 uses
  %i.ha = load i32, ptr %i.k, align 4, !tbaa !171 ; 7 uses
  call fastcc void @_dt_focus_cdf22_wtf(ptr noundef %i.gy, i32 noundef 2, i32 noundef %i.gz, i32 noundef %i.ha)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %6, i8 0, i64 800, i1 false)
  %i.hb = add nsw i32 %i.ha, -1                   ; 2 uses
  %i.hc = icmp sgt i32 %i.ha, 1
  %i.hd = icmp sgt i32 %i.gz, 1
  %or.cond182 = and i1 %i.hd, %i.hc               ; 2 uses
  br i1 %or.cond182, label %.preheader129.lr.ph.split.i, label %.preheader128.i

.preheader129.lr.ph.split.i:                      ; preds = %bb.bd
  %i.he = uitofp nneg i32 %i.gz to float          ; 2 uses
  %i.hf = add nsw i32 %i.gz, -1
  %i.hg = uitofp nneg i32 %i.ha to float
  %i.hh = zext nneg i32 %i.hf to i64
  %i.hi = zext nneg i32 %i.gz to i64              ; 2 uses
  %i.hj = zext nneg i32 %i.hb to i64
  %i.hk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.hg
  %i.hl = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.he
  %i.hm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.he
  br label %.preheader129.i

.preheader129.i:                                  ; preds = %._crit_edge.i, %.preheader129.lr.ph.split.i
  %indvars.iv147.i = phi i64 [ 0, %.preheader129.lr.ph.split.i ], [ %indvars.iv.next148.i, %._crit_edge.i ] ; 4 uses
  %i.hn = or disjoint i64 %indvars.iv147.i, 2
  %i.ho = mul nuw nsw i64 %i.hn, %i.hi
  %i.hp = trunc nuw nsw i64 %indvars.iv147.i to i32
  %i.hq = uitofp nsz nneg i32 %i.hp to float      ; 4 uses
  %i.hr = fmul reassoc nnan nsz arcp contract afn float %i.hq, 5.000000e+00
  %i.hs = fmul reassoc nsz arcp contract afn float %i.hr, %i.hk
  %i.ht = fptosi float %i.hs to i32
  %i.hu = mul nuw nsw i32 %i.ht, 5                ; 2 uses
  %i.hv = fmul reassoc nnan nsz arcp contract afn float %i.hq, %i.hq
  %i.hw = mul nuw nsw i64 %indvars.iv147.i, %i.hi
  %i.hx = insertelement <4 x float> poison, float %i.hq, i64 1
  %i.hy = insertelement <4 x float> %i.hx, float %i.hv, i64 3 ; 2 uses
  br label %bb.be

.preheader128.loopexit.i:                         ; preds = %._crit_edge.i
  %.phi.trans.insert214 = getelementptr inbounds nuw i8, ptr %6, i64 512
  %.phi.trans.insert222 = getelementptr inbounds nuw i8, ptr %6, i64 640
  %.phi.trans.insert226 = getelementptr inbounds nuw i8, ptr %6, i64 704
  %.pre227 = load i64, ptr %.phi.trans.insert226, align 16, !tbaa !262
  %i.hz = load <61 x i64>, ptr %6, align 16, !tbaa !262
  %i.ia = shufflevector <61 x i64> %i.hz, <61 x i64> poison, <16 x i32> <i32 48, i32 52, i32 44, i32 40, i32 36, i32 32, i32 28, i32 24, i32 20, i32 16, i32 12, i32 8, i32 4, i32 0, i32 56, i32 60>
  %i.ib = shl nsw <16 x i64> %i.ia, splat (i64 2)
  %i.ic = load <13 x i64>, ptr %.phi.trans.insert214, align 16, !tbaa !262
  %i.id = shufflevector <13 x i64> %i.ic, <13 x i64> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %i.ie = load <5 x i64>, ptr %.phi.trans.insert222, align 16, !tbaa !262
  %i.if = shufflevector <5 x i64> %i.ie, <5 x i64> poison, <2 x i32> <i32 0, i32 4>
  %i.ig = sitofp <16 x i64> %i.ib to <16 x float>
  %i.ih = shl nsw <4 x i64> %i.id, splat (i64 2)
  %i.ii = sitofp <4 x i64> %i.ih to <4 x float>
  %i.ij = shl nsw <2 x i64> %i.if, splat (i64 2)
  %i.ik = sitofp <2 x i64> %i.ij to <2 x float>
  %i.il = shl nsw i64 %.pre227, 2
  %i.im = sitofp reassoc nsz arcp contract afn i64 %i.il to float
  %i.in = shufflevector <16 x float> %i.ig, <16 x float> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.io = shufflevector <4 x float> %i.ii, <4 x float> poison, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ip = shufflevector <2 x float> %i.ik, <2 x float> poison, <24 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  br label %.preheader128.i

.preheader128.i:                                  ; preds = %.preheader128.loopexit.i, %bb.bd
  %i.iq = phi float [ %i.im, %.preheader128.loopexit.i ], [ 0.000000e+00, %bb.bd ]
  %i.ir = phi <24 x float> [ %i.in, %.preheader128.loopexit.i ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>, %bb.bd ]
  %i.is = phi <24 x float> [ %i.io, %.preheader128.loopexit.i ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>, %bb.bd ]
  %i.it = phi <24 x float> [ %i.ip, %.preheader128.loopexit.i ], [ <float 0.000000e+00, float 0.000000e+00, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison, float poison>, %bb.bd ]
  %i.iu = mul nsw i32 %i.ha, %i.gz
  %i.iv = sitofp reassoc nsz arcp contract afn i32 %i.iu to float
  %i.iw = fmul reassoc nnan nsz arcp contract afn float %i.iv, 4.000000e-04 ; 27 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %6, i64 448 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %6, i64 480 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %6, i64 512 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 544 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 576 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %6, i64 608 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %6, i64 640 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %6, i64 672 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 704 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 736 ; 3 uses
  %i.jh = insertelement <24 x float> poison, float %i.iw, i64 0
  %i.ji = shufflevector <24 x float> %i.jh, <24 x float> poison, <24 x i32> zeroinitializer
  %i.jj = insertelement <24 x float> poison, float %i.iq, i64 22
  %i.jk = getelementptr inbounds nuw i8, ptr %6, i64 768 ; 2 uses
  %i.jl = load <5 x i64>, ptr %i.jg, align 16, !tbaa !262
  %i.jm = shufflevector <5 x i64> %i.jl, <5 x i64> poison, <2 x i32> <i32 0, i32 4>
  %i.jn = shl nsw <2 x i64> %i.jm, splat (i64 2)
  %i.jo = sitofp <2 x i64> %i.jn to <2 x float>   ; 2 uses
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <24 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.jq = shufflevector <24 x float> %i.jj, <24 x float> %i.jp, <24 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 22, i32 24>
  %i.jr = shufflevector <24 x float> %i.ir, <24 x float> %i.jq, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 46, i32 47>
  %i.js = shufflevector <24 x float> %i.jr, <24 x float> %i.is, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 poison, i32 poison, i32 22, i32 23>
  %i.jt = shufflevector <24 x float> %i.js, <24 x float> %i.it, <24 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 22, i32 23>
  %i.ju = fcmp reassoc nsz arcp contract afn olt <24 x float> %i.ji, %i.jt
  %i.jv = bitcast <24 x i1> %i.ju to i24
  %i.jw = call range(i24 0, 25) i24 @llvm.ctpop.i24(i24 %i.jv)
  %i.jx = extractelement <2 x float> %i.jo, i64 1
  %i.jy = fcmp reassoc nsz arcp contract afn olt float %i.iw, %i.jx
  %i.jz = zext i1 %i.jy to i24
  %i.ka = or i24 %i.jw, %i.jz
  %i.kb = icmp eq i24 %i.ka, 0
  br i1 %i.kb, label %bb.bh, label %vector.body

._crit_edge.i:                                    ; preds = %_dt_focus_update.exit124.i
  %indvars.iv.next148.i = add nuw nsw i64 %indvars.iv147.i, 4 ; 2 uses
  %i.kc = icmp samesign ult i64 %indvars.iv.next148.i, %i.hj
  br i1 %i.kc, label %.preheader129.i, label %.preheader128.loopexit.i

bb.be:                                            ; preds = %_dt_focus_update.exit124.i, %.preheader129.i
  %indvars.iv.i = phi i64 [ 0, %.preheader129.i ], [ %indvars.iv.next.i, %_dt_focus_update.exit124.i ] ; 5 uses
  %i.kd = add nuw nsw i64 %indvars.iv.i, %i.ho
  %i.ke = shl nuw nsw i64 %i.kd, 2
  %i.kf = getelementptr i8, ptr %i.gy, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.kf, i64 1
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !189
  %i.ki = zext i8 %i.kh to i32
  %i.kj = add nsw i32 %i.ki, -127
  %i.kk = call i32 @llvm.abs.i32(i32 %i.kj, i1 true) ; 2 uses
  %i.kl = icmp samesign ugt i32 %i.kk, 10
  br i1 %i.kl, label %bb.bf, label %_dt_focus_update.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.km = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.kn = uitofp nsz nneg i32 %i.km to float      ; 4 uses
  %i.ko = fmul reassoc nnan nsz arcp contract afn float %i.kn, 5.000000e+00
  %i.kp = fmul reassoc nsz arcp contract afn float %i.ko, %i.hl
  %i.kq = fptosi float %i.kp to i32
  %i.kr = add nuw nsw i32 %i.hu, %i.kq
  %i.ks = zext nneg i32 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.ks ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.kv = fmul reassoc nnan nsz arcp contract afn float %i.kn, %i.kn
  %i.kw = load <4 x float>, ptr %i.ku, align 8, !tbaa !190
  %i.kx = insertelement <4 x float> %i.hy, float %i.kn, i64 0
  %i.ky = insertelement <4 x float> %i.kx, float %i.kv, i64 2
  %i.kz = fadd reassoc nsz arcp contract afn <4 x float> %i.kw, %i.ky
  store <4 x float> %i.kz, ptr %i.ku, align 8, !tbaa !190
  %i.la = load i64, ptr %i.kt, align 16, !tbaa !262
  %i.lb = add nsw i64 %i.la, 1
  store i64 %i.lb, ptr %i.kt, align 16, !tbaa !262
  %i.lc = uitofp nneg i32 %i.kk to float
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 24 ; 2 uses
  %i.le = load float, ptr %i.ld, align 8, !tbaa !263
  %i.lf = fadd reassoc nsz arcp contract afn float %i.le, %i.lc
  store float %i.lf, ptr %i.ld, align 8, !tbaa !263
  br label %_dt_focus_update.exit.i

_dt_focus_update.exit.i:                          ; preds = %bb.bf, %bb.be
  %i.lg = add nuw nsw i64 %indvars.iv.i, %i.hw
  %i.lh = trunc nuw nsw i64 %i.lg to i32
  %i.li = shl i32 %i.lh, 2
  %i.lj = sext i32 %i.li to i64
  %i.lk = getelementptr i8, ptr %i.gy, i64 %i.lj
  %i.ll = getelementptr i8, ptr %i.lk, i64 9
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !189
  %i.ln = zext i8 %i.lm to i32
  %i.lo = add nsw i32 %i.ln, -127
  %i.lp = call i32 @llvm.abs.i32(i32 %i.lo, i1 true) ; 2 uses
  %i.lq = icmp samesign ugt i32 %i.lp, 10
  br i1 %i.lq, label %bb.bg, label %_dt_focus_update.exit124.i

bb.bg:                                            ; preds = %_dt_focus_update.exit.i
  %i.lr = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ls = uitofp nsz nneg i32 %i.lr to float      ; 4 uses
  %i.lt = fmul reassoc nnan nsz arcp contract afn float %i.ls, 5.000000e+00
  %i.lu = fmul reassoc nsz arcp contract afn float %i.lt, %i.hm
  %i.lv = fptosi float %i.lu to i32
  %i.lw = add nuw nsw i32 %i.hu, %i.lv
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.lx ; 4 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.ma = fmul reassoc nnan nsz arcp contract afn float %i.ls, %i.ls
  %i.mb = load <4 x float>, ptr %i.lz, align 8, !tbaa !190
  %i.mc = insertelement <4 x float> %i.hy, float %i.ls, i64 0
  %i.md = insertelement <4 x float> %i.mc, float %i.ma, i64 2
  %i.me = fadd reassoc nsz arcp contract afn <4 x float> %i.mb, %i.md
  store <4 x float> %i.me, ptr %i.lz, align 8, !tbaa !190
  %i.mf = load i64, ptr %i.ly, align 16, !tbaa !262
  %i.mg = add nsw i64 %i.mf, 1
  store i64 %i.mg, ptr %i.ly, align 16, !tbaa !262
  %i.mh = uitofp nneg i32 %i.lp to float
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ly, i64 24 ; 2 uses
  %i.mj = load float, ptr %i.mi, align 8, !tbaa !263
  %i.mk = fadd reassoc nsz arcp contract afn float %i.mj, %i.mh
  store float %i.mk, ptr %i.mi, align 8, !tbaa !263
  br label %_dt_focus_update.exit124.i

_dt_focus_update.exit124.i:                       ; preds = %bb.bg, %_dt_focus_update.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ml = icmp samesign ult i64 %indvars.iv.next.i, %i.hh
  br i1 %i.ml, label %bb.be, label %._crit_edge.i

bb.bh:                                            ; preds = %.preheader128.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %6, i8 0, i64 800, i1 false)
  call fastcc void @_dt_focus_cdf22_wtf(ptr noundef %i.gy, i32 noundef 3, i32 noundef %i.gz, i32 noundef %i.ha)
  br i1 %or.cond182, label %.preheader127.lr.ph.split.i, label %.preheader.i

.preheader127.lr.ph.split.i:                      ; preds = %bb.bh
  %i.mm = uitofp nneg i32 %i.gz to float          ; 2 uses
  %i.mn = add nsw i32 %i.gz, -1
  %i.mo = uitofp nneg i32 %i.ha to float
  %i.mp = zext nneg i32 %i.mn to i64
  %i.mq = zext nneg i32 %i.gz to i64              ; 2 uses
  %i.mr = zext nneg i32 %i.hb to i64
  %i.ms = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mo
  %i.mt = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mm
  %i.mu = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.mm
  br label %.preheader127.i

.preheader127.i:                                  ; preds = %._crit_edge137.i, %.preheader127.lr.ph.split.i
  %indvars.iv156.i = phi i64 [ 0, %.preheader127.lr.ph.split.i ], [ %indvars.iv.next157.i, %._crit_edge137.i ] ; 4 uses
  %i.mv = or disjoint i64 %indvars.iv156.i, 4
  %i.mw = mul nuw nsw i64 %i.mv, %i.mq
  %i.mx = trunc nuw nsw i64 %indvars.iv156.i to i32
  %i.my = uitofp nsz nneg i32 %i.mx to float      ; 4 uses
  %i.mz = fmul reassoc nnan nsz arcp contract afn float %i.my, 5.000000e+00
  %i.na = fmul reassoc nsz arcp contract afn float %i.mz, %i.ms
  %i.nb = fptosi float %i.na to i32
  %i.nc = mul nuw nsw i32 %i.nb, 5                ; 2 uses
  %i.nd = fmul reassoc nnan nsz arcp contract afn float %i.my, %i.my
  %i.ne = mul nuw nsw i64 %indvars.iv156.i, %i.mq
  %i.nf = insertelement <4 x float> poison, float %i.my, i64 1
  %i.ng = insertelement <4 x float> %i.nf, float %i.nd, i64 3 ; 2 uses
  br label %bb.bi

.preheader.i:                                     ; preds = %._crit_edge137.i, %bb.bh
  %i.nh = load i64, ptr %6, align 16, !tbaa !262  ; 2 uses
  %i.ni = sitofp reassoc nsz arcp contract afn i64 %i.nh to float
  %i.nj = fmul reassoc nnan nsz arcp contract afn float %i.ni, 6.000000e+00
  %i.nk = fcmp reassoc nsz arcp contract afn ogt float %i.nj, %i.iw
  br i1 %i.nk, label %bb.bl, label %bb.bm

._crit_edge137.i:                                 ; preds = %_dt_focus_update.exit126.i
  %indvars.iv.next157.i = add nuw nsw i64 %indvars.iv156.i, 8 ; 2 uses
  %i.nl = icmp samesign ult i64 %indvars.iv.next157.i, %i.mr
  br i1 %i.nl, label %.preheader127.i, label %.preheader.i

bb.bi:                                            ; preds = %_dt_focus_update.exit126.i, %.preheader127.i
  %indvars.iv153.i = phi i64 [ 0, %.preheader127.i ], [ %indvars.iv.next154.i, %_dt_focus_update.exit126.i ] ; 5 uses
  %i.nm = add nuw nsw i64 %indvars.iv153.i, %i.mw
  %i.nn = shl nuw nsw i64 %i.nm, 2
  %i.no = getelementptr i8, ptr %i.gy, i64 %i.nn
  %i.np = getelementptr i8, ptr %i.no, i64 1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !189
  %i.nr = zext i8 %i.nq to i32
  %i.ns = add nsw i32 %i.nr, -127
  %i.nt = call i32 @llvm.abs.i32(i32 %i.ns, i1 true)
  %i.nu = uitofp nneg i32 %i.nt to double
  %i.nv = fmul reassoc nnan nsz arcp contract afn double %i.nu, 1.500000e+00
  %i.nw = fptosi double %i.nv to i32              ; 2 uses
  %i.nx = icmp samesign ugt i32 %i.nw, 10
  br i1 %i.nx, label %bb.bj, label %_dt_focus_update.exit125.i

bb.bj:                                            ; preds = %bb.bi
  %i.ny = trunc nuw nsw i64 %indvars.iv153.i to i32
  %i.nz = uitofp nsz nneg i32 %i.ny to float      ; 4 uses
  %i.oa = fmul reassoc nnan nsz arcp contract afn float %i.nz, 5.000000e+00
  %i.ob = fmul reassoc nsz arcp contract afn float %i.oa, %i.mt
  %i.oc = fptosi float %i.ob to i32
  %i.od = add nuw nsw i32 %i.nc, %i.oc
  %i.oe = zext nneg i32 %i.od to i64
  %i.of = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %i.oe ; 4 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8 ; 2 uses
  %i.oh = fmul reassoc nnan nsz arcp contract afn float %i.nz, %i.nz
  %i.oi = load <4 x float>, ptr %i.og, align 8, !tbaa !190
  %i.oj = insertelement <4 x float> %i.ng, float %i.nz, i64 0
  %i.ok = insertelement <4 x float> %i.oj, float %i.oh, i64 2
  %i.ol = fadd reassoc nsz arcp contract afn <4 x float> %i.oi, %i.ok
  store <4 x float> %i.ol, ptr %i.og, align 8, !tbaa !190
  %i.om = load i64, ptr %i.of, align 16, !tbaa !262
  %i.on = add nsw i64 %i.om, 1
  store i64 %i.on, ptr %i.of, align 16, !tbaa !262
  %i.oo = uitofp nneg i32 %i.nw to float
  %i.op = getelementptr inbounds nuw i8, ptr %i.of, i64 24 ; 2 uses
  %i.oq = load float, ptr %i.op, align 8, !tbaa !263
  %i.or = fadd reassoc nsz arcp contract afn float %i.oq, %i.oo
  store float %i.or, ptr %i.op, align 8, !tbaa !263
  br label %_dt_focus_update.exit125.i

_dt_focus_update.exit125.i:                       ; preds = %bb.bj, %bb.bi
  %i.os = add nuw nsw i64 %indvars.iv153.i, %i.ne
  %i.ot = trunc nuw nsw i64 %i.os to i32
  %i.ou = shl i32 %i.ot, 2
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr i8, ptr %i.gy, i64 %i.ov
  %i.ox = getelementptr i8, ptr %i.ow, i64 17
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !189
  %i.oz = zext i8 %i.oy to i32
end_hunk_0
begin_hunk_1_@_event_image_draw:bb.a
  %i.zp = fmul reassoc nsz arcp contract afn float %i.zo, %i.zo
  %i.zq = fsub reassoc nsz arcp contract afn float %i.zm, %i.zp
  %i.zr = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.zq)
  %i.zs = getelementptr inbounds nuw i8, ptr %6, i64 788
  %i.zt = load float, ptr %i.zs, align 4, !tbaa !267
  %i.zu = getelementptr inbounds nuw i8, ptr %6, i64 780
  %i.zv = load float, ptr %i.zu, align 4, !tbaa !266 ; 3 uses
  %i.zw = fmul reassoc nsz arcp contract afn float %i.zv, %i.zv
  %i.zx = fsub reassoc nsz arcp contract afn float %i.zt, %i.zw
  %i.zy = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.zx)
  %i.zz = fadd reassoc nsz arcp contract afn float %i.zo, %i.xz ; 3 uses
  %i.aaa = fadd reassoc nsz arcp contract afn float %i.zv, %i.ya ; 3 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.xq, i64 192
  store float %i.zz, ptr %i.aab, align 4, !tbaa !190
  %i.aac = getelementptr inbounds nuw i8, ptr %i.xq, i64 196
  store float %i.aaa, ptr %i.aac, align 4, !tbaa !190
  %i.aad = fadd reassoc nsz arcp contract afn float %i.zr, %i.zz
  %i.aae = getelementptr inbounds nuw i8, ptr %i.xq, i64 392
  store float %i.aad, ptr %i.aae, align 4, !tbaa !190
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.xq, i64 396
  store float %i.aaa, ptr %i.aaf, align 4, !tbaa !190
  %i.aag = getelementptr inbounds nuw i8, ptr %i.xq, i64 592
  store float %i.zz, ptr %i.aag, align 4, !tbaa !190
  %i.aah = fadd reassoc nsz arcp contract afn float %i.zy, %i.aaa
  %i.aai = getelementptr inbounds nuw i8, ptr %i.xq, i64 596
  store float %i.aah, ptr %i.aai, align 4, !tbaa !190
  %i.aaj = add nsw i32 %.sroa.3.0.copyload.i, %i.xo ; 3 uses
  %i.aak = add nsw i32 %.sroa.5.0.copyload.i, %i.xp ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @dt_dev_init(ptr noundef nonnull %4, i32 noundef 0) #22
  call void @dt_dev_load_image(ptr noundef nonnull %4, i32 noundef %i.xn) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.aal = call i32 @dt_dev_pixelpipe_init_dummy(ptr noundef nonnull %5, i32 noundef %i.aaj, i32 noundef %i.aak) #22
  %.not284.i = icmp eq i32 %i.aal, 0
  br i1 %.not284.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %vector.ph266
  call void @dt_dev_pixelpipe_set_input(ptr noundef nonnull %5, ptr noundef nonnull %4, ptr noundef null, i32 noundef %i.aaj, i32 noundef %i.aak, float noundef 1.000000e+00) #22
  call void @dt_dev_pixelpipe_create_nodes(ptr noundef nonnull %5, ptr noundef nonnull %4) #22
  call void @dt_dev_pixelpipe_synch_all(ptr noundef nonnull %5, ptr noundef nonnull %4) #22
  %i.aam = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.aan = load i32, ptr %i.aam, align 16, !tbaa !268
  %i.aao = getelementptr inbounds nuw i8, ptr %5, i64 148
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !269
  %i.aaq = getelementptr inbounds nuw i8, ptr %5, i64 156 ; 2 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  call void @dt_dev_pixelpipe_get_dimensions(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %i.aan, i32 noundef %i.aap, ptr noundef nonnull %i.aaq, ptr noundef nonnull %i.aar) #22
  %i.aas = call i32 @dt_dev_distort_transform_plus(ptr noundef nonnull %4, ptr noundef nonnull %5, double noundef 0.000000e+00, i32 noundef 0, ptr noundef nonnull %i.xq, i64 noundef 75) #22 ; 0 uses
  call void @dt_dev_pixelpipe_cleanup(ptr noundef nonnull %5) #22
  %i.aat = load i32, ptr %i.aaq, align 4, !tbaa !270
  %i.aau = load i32, ptr %i.aar, align 16, !tbaa !271
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %vector.ph266
  %.0280.i = phi i32 [ %i.aat, %bb.di ], [ %i.aaj, %vector.ph266 ] ; 3 uses
  %.0279.i = phi i32 [ %i.aau, %bb.di ], [ %i.aak, %vector.ph266 ] ; 3 uses
  call void @dt_dev_cleanup(ptr noundef nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.aav = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !126
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 2704
  %i.aax = load i32, ptr %i.aaw, align 8, !tbaa !272
  %i.aay = shl nsw i32 %i.aax, 1                  ; 2 uses
  %i.aaz = sub nsw i32 %i.xk, %i.aay
  %i.aba = sitofp reassoc nsz arcp contract afn i32 %i.aaz to float
  %i.abb = sitofp reassoc nsz arcp contract afn i32 %.0280.i to float
  %i.abc = fdiv reassoc nsz arcp contract afn float %i.aba, %i.abb
  %i.abd = sub nsw i32 %i.xm, %i.aay
  %i.abe = sitofp reassoc nsz arcp contract afn i32 %i.abd to float
  %i.abf = sitofp reassoc nsz arcp contract afn i32 %.0279.i to float
  %i.abg = fdiv reassoc nsz arcp contract afn float %i.abe, %i.abf
  %i.abh = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.abc, float %i.abg) ; 2 uses
  %i.abi = fpext reassoc nsz arcp contract afn float %i.abh to double ; 3 uses
  call void @cairo_scale(ptr noundef %i.xi, double noundef %i.abi, double noundef %i.abi) #22
  %i.abj = sub nsw i32 0, %.0280.i
  %i.abk = sitofp reassoc nsz arcp contract afn i32 %i.abj to float
  %i.abl = fmul reassoc nnan nsz arcp contract afn float %i.abk, 5.000000e-01
  %i.abm = fpext reassoc nsz arcp contract afn float %i.abl to double
  %i.abn = fdiv reassoc nsz arcp contract afn float 0.000000e+00, %i.abh
  %i.abo = fpext reassoc ninf nsz arcp contract afn float %i.abn to double
  %i.abp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 1448
  %i.abr = load double, ptr %i.abq, align 8, !tbaa !177
  %i.abs = fmul reassoc nsz arcp contract afn double %i.abr, %i.abo ; 2 uses
  %i.abt = fadd reassoc nsz arcp contract afn double %i.abs, %i.abm
  %i.abu = sub nsw i32 0, %.0279.i
  %i.abv = sitofp reassoc nsz arcp contract afn i32 %i.abu to float
  %i.abw = fmul reassoc nnan nsz arcp contract afn float %i.abv, 5.000000e-01
  %i.abx = fpext reassoc nsz arcp contract afn float %i.abw to double
  %i.aby = fadd reassoc nsz arcp contract afn double %i.abs, %i.abx
  call void @cairo_translate(ptr noundef %i.xi, double noundef %i.abt, double noundef %i.aby) #22
  %i.abz = sitofp reassoc nsz arcp contract afn i32 %.0280.i to double
  %i.aca = sitofp reassoc nsz arcp contract afn i32 %.0279.i to double
  call void @cairo_rectangle(ptr noundef %i.xi, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.abz, double noundef %i.aca) #22
  call void @cairo_clip(ptr noundef %i.xi) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 4613937818241073152, ptr %i.c, align 8
  call void @cairo_set_dash(ptr noundef %i.xi, ptr noundef nonnull %i.c, i32 noundef 1, double noundef 0.000000e+00) #22
  %i.acb = mul nsw i32 %i.xp, %i.xo
  %i.acc = sitofp reassoc nsz arcp contract afn i32 %i.acb to float
  %i.acd = fmul reassoc nnan nsz arcp contract afn float %i.acc, 4.000000e-04 ; 2 uses
  %i.ace = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.abi ; 4 uses
  br label %bb.dl

bb.dk:                                            ; preds = %.loopexit.i176
  call void @cairo_restore(ptr noundef %i.xi) #22
  call void @free(ptr noundef %i.xq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.dp

bb.dl:                                            ; preds = %.loopexit.i176, %bb.dj
  %indvars.iv303.i = phi i64 [ 0, %bb.dj ], [ %indvars.iv.next304.i, %.loopexit.i176 ] ; 3 uses
  %i.acf = getelementptr inbounds nuw [32 x i8], ptr %6, i64 %indvars.iv303.i ; 2 uses
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 24
  %i.ach = load float, ptr %i.acg, align 8, !tbaa !263
  %i.aci = fmul reassoc nsz arcp contract afn float %i.ach, 1.000000e-01
  %i.acj = fadd reassoc nsz arcp contract afn float %i.aci, -1.000000e+00
  %i.ack = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.acj, float 1.000000e+00)
  %i.acl = load i64, ptr %i.acf, align 16, !tbaa !262 ; 2 uses
  %i.acm = sitofp reassoc nsz arcp contract afn i64 %i.acl to float
  %i.acn = fmul reassoc nnan nsz arcp contract afn float %i.acm, 4.000000e+00
  %i.aco = fcmp reassoc nsz arcp contract afn ule float %i.acn, %i.acd ; 2 uses
  br i1 %i.aco, label %.split.i, label %bb.dm

.split.i:                                         ; preds = %bb.dl
  %i.acp = sub nsw i64 0, %i.acl
  %i.acq = sitofp reassoc nsz arcp contract afn i64 %i.acp to float
  %i.acr = fmul reassoc nnan nsz arcp contract afn float %i.acq, 6.000000e+00
  %i.acs = fcmp reassoc nsz arcp contract afn ogt float %i.acr, %i.acd
  br i1 %i.acs, label %bb.dm, label %.loopexit.i176

bb.dm:                                            ; preds = %bb.dl, %.split.i
  %i.act = fpext reassoc nsz arcp contract afn float %i.ack to double ; 2 uses
  %i.acu = shl nuw nsw i64 %indvars.iv303.i, 1    ; 4 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %i.acu ; 10 uses
  %i.acw = or disjoint i64 %i.acu, 1              ; 3 uses
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %i.acw ; 10 uses
  %i.acy = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.acu ; 8 uses
  %i.acz = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.acu ; 8 uses
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %i.acw ; 6 uses
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %i.acw ; 6 uses
  call void @cairo_set_source_rgb(ptr noundef %i.xi, double noundef f0x3FB99999A0000000, double noundef f0x3FB99999A0000000, double noundef f0x3FB99999A0000000) #22
  call void @cairo_set_dash(ptr noundef %i.xi, ptr noundef nonnull %i.c, i32 noundef 1, double noundef 0.000000e+00) #22
  %i.adc = load float, ptr %i.acv, align 4, !tbaa !190
  %i.add = fpext reassoc nsz arcp contract afn float %i.adc to double
  %i.ade = load float, ptr %i.acx, align 4, !tbaa !190
  %i.adf = fpext reassoc nsz arcp contract afn float %i.ade to double
  call void @cairo_move_to(ptr noundef %i.xi, double noundef %i.add, double noundef %i.adf) #22
  %i.adg = load float, ptr %i.acy, align 4, !tbaa !190
  %i.adh = load float, ptr %i.acv, align 4, !tbaa !190
  %i.adi = fsub reassoc nsz arcp contract afn float %i.adh, %i.adg
  %i.adj = load float, ptr %i.acz, align 4, !tbaa !190 ; 2 uses
  %i.adk = fadd reassoc nsz arcp contract afn float %i.adi, %i.adj
  %i.adl = fpext reassoc nsz arcp contract afn float %i.adk to double ; 2 uses
  %i.adm = load float, ptr %i.ada, align 4, !tbaa !190
  %i.adn = load float, ptr %i.acx, align 4, !tbaa !190
  %i.ado = fsub reassoc nsz arcp contract afn float %i.adn, %i.adm
  %i.adp = load float, ptr %i.adb, align 4, !tbaa !190 ; 2 uses
  %i.adq = fadd reassoc nsz arcp contract afn float %i.ado, %i.adp
  %i.adr = fpext reassoc nsz arcp contract afn float %i.adq to double ; 2 uses
  %i.ads = fpext reassoc nsz arcp contract afn float %i.adj to double
  %i.adt = fpext reassoc nsz arcp contract afn float %i.adp to double
  call void @cairo_curve_to(ptr noundef %i.xi, double noundef %i.adl, double noundef %i.adr, double noundef %i.adl, double noundef %i.adr, double noundef %i.ads, double noundef %i.adt) #22
  %i.adu = load float, ptr %i.acy, align 4, !tbaa !190 ; 2 uses
  %i.adv = load float, ptr %i.acv, align 4, !tbaa !190 ; 2 uses
  %i.adw = fsub reassoc nsz arcp contract afn float %i.adu, %i.adv
  %i.adx = load float, ptr %i.acz, align 4, !tbaa !190
  %i.ady = fadd reassoc nsz arcp contract afn float %i.adw, %i.adx
  %i.adz = fpext reassoc nsz arcp contract afn float %i.ady to double ; 2 uses
  %i.aea = load float, ptr %i.ada, align 4, !tbaa !190 ; 2 uses
  %i.aeb = load float, ptr %i.acx, align 4, !tbaa !190 ; 2 uses
  %i.aec = fsub reassoc nsz arcp contract afn float %i.aea, %i.aeb
  %i.aed = load float, ptr %i.adb, align 4, !tbaa !190
  %i.aee = fadd reassoc nsz arcp contract afn float %i.aec, %i.aed
  %i.aef = fpext reassoc nsz arcp contract afn float %i.aee to double ; 2 uses
  %i.aeg = fmul reassoc nsz arcp contract afn float %i.adu, 2.000000e+00
  %i.aeh = fsub reassoc nsz arcp contract afn float %i.aeg, %i.adv
  %i.aei = fpext reassoc nsz arcp contract afn float %i.aeh to double
  %i.aej = fmul reassoc nsz arcp contract afn float %i.aea, 2.000000e+00
  %i.aek = fsub reassoc nsz arcp contract afn float %i.aej, %i.aeb
  %i.ael = fpext reassoc nsz arcp contract afn float %i.aek to double
  call void @cairo_curve_to(ptr noundef %i.xi, double noundef %i.adz, double noundef %i.aef, double noundef %i.adz, double noundef %i.aef, double noundef %i.aei, double noundef %i.ael) #22
  %i.aem = load float, ptr %i.acv, align 4, !tbaa !190
  %i.aen = load float, ptr %i.acx, align 4, !tbaa !190
  %i.aeo = load <2 x float>, ptr %i.acy, align 4, !tbaa !190 ; 3 uses
  %i.aep = extractelement <2 x float> %i.aeo, i64 0
  %i.aeq = fmul reassoc nsz arcp contract afn float %i.aep, 3.000000e+00
  %i.aer = load <2 x float>, ptr %i.acz, align 4, !tbaa !190 ; 3 uses
  %i.aes = extractelement <2 x float> %i.aer, i64 0
  %i.aet = fadd reassoc nsz arcp contract afn float %i.aem, %i.aes
  %i.aeu = fsub reassoc nsz arcp contract afn float %i.aeq, %i.aet
  %i.aev = fpext reassoc nsz arcp contract afn float %i.aeu to double ; 2 uses
  %i.aew = extractelement <2 x float> %i.aeo, i64 1
  %i.aex = fmul reassoc nsz arcp contract afn float %i.aew, 3.000000e+00
  %i.aey = extractelement <2 x float> %i.aer, i64 1
  %i.aez = fadd reassoc nsz arcp contract afn float %i.aen, %i.aey
  %i.afa = fsub reassoc nsz arcp contract afn float %i.aex, %i.aez
  %i.afb = fpext reassoc nsz arcp contract afn float %i.afa to double ; 2 uses
  %i.afc = fmul reassoc nsz arcp contract afn <2 x float> %i.aeo, splat (float 2.000000e+00)
  %i.afd = fsub reassoc nsz arcp contract afn <2 x float> %i.afc, %i.aer
  %i.afe = fpext <2 x float> %i.afd to <2 x double> ; 2 uses
  %i.aff = extractelement <2 x double> %i.afe, i64 0
  %i.afg = extractelement <2 x double> %i.afe, i64 1
  call void @cairo_curve_to(ptr noundef %i.xi, double noundef %i.aev, double noundef %i.afb, double noundef %i.aev, double noundef %i.afb, double noundef %i.aff, double noundef %i.afg) #22
  %i.afh = load float, ptr %i.acy, align 4, !tbaa !190
  %i.afi = load float, ptr %i.acv, align 4, !tbaa !190 ; 2 uses
  %i.afj = fadd reassoc nsz arcp contract afn float %i.afi, %i.afh
  %i.afk = load float, ptr %i.acz, align 4, !tbaa !190
  %i.afl = fsub reassoc nsz arcp contract afn float %i.afj, %i.afk
  %i.afm = fpext reassoc nsz arcp contract afn float %i.afl to double ; 2 uses
  %i.afn = load float, ptr %i.ada, align 4, !tbaa !190
  %i.afo = load float, ptr %i.acx, align 4, !tbaa !190 ; 2 uses
  %i.afp = fadd reassoc nsz arcp contract afn float %i.afo, %i.afn
  %i.afq = load float, ptr %i.adb, align 4, !tbaa !190
  %i.afr = fsub reassoc nsz arcp contract afn float %i.afp, %i.afq
  %i.afs = fpext reassoc nsz arcp contract afn float %i.afr to double ; 2 uses
  %i.aft = fpext reassoc nsz arcp contract afn float %i.afi to double
  %i.afu = fpext reassoc nsz arcp contract afn float %i.afo to double
  call void @cairo_curve_to(ptr noundef %i.xi, double noundef %i.afm, double noundef %i.afs, double noundef %i.afm, double noundef %i.afs, double noundef %i.aft, double noundef %i.afu) #22
  call void @cairo_save(ptr noundef %i.xi) #22
  call void @cairo_scale(ptr noundef %i.xi, double noundef %i.ace, double noundef %i.ace) #22
  call void @cairo_set_line_width(ptr noundef %i.xi, double noundef 2.000000e+00) #22
  call void @cairo_stroke(ptr noundef %i.xi) #22
  call void @cairo_restore(ptr noundef %i.xi) #22
  br i1 %i.aco, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @cairo_set_source_rgb(ptr noundef %i.xi, double noundef %i.act, double noundef f0x3FB99999A0000000, double noundef f0x3FB99999A0000000) #22
  br label %.loopexit.i176.loopexit

bb.do:                                            ; preds = %bb.dm
  call void @cairo_set_source_rgb(ptr noundef %i.xi, double noundef f0x3FB99999A0000000, double noundef f0x3FB99999A0000000, double noundef %i.act) #22
  br label %.loopexit.i176.loopexit

.loopexit.i176.loopexit:                          ; preds = %bb.dn, %bb.do
  %i.afv = load double, ptr %i.c, align 8, !tbaa !273
  call void @cairo_set_dash(ptr noundef %i.xi, ptr noundef nonnull %i.c, i32 noundef 1, double noundef %i.afv) #22
  %i.afw = load float, ptr %i.acv, align 4, !tbaa !190
  %i.afx = fpext reassoc nsz arcp contract afn float %i.afw to double
  %i.afy = load float, ptr %i.acx, align 4, !tbaa !190
  %i.afz = fpext reassoc nsz arcp contract afn float %i.afy to double
  call void @cairo_move_to(ptr noundef %i.xi, double noundef %i.afx, double noundef %i.afz) #22
  %i.aga = load float, ptr %i.acy, align 4, !tbaa !190
  %i.agb = load float, ptr %i.acv, align 4, !tbaa !190
  %i.agc = fsub reassoc nsz arcp contract afn float %i.agb, %i.aga
  %i.agd = load float, ptr %i.acz, align 4, !tbaa !190 ; 2 uses
  %i.age = fadd reassoc nsz arcp contract afn float %i.agc, %i.agd
  %i.agf = fpext reassoc nsz arcp contract afn float %i.age to double ; 2 uses
  %i.agg = load float, ptr %i.ada, align 4, !tbaa !190
  %i.agh = load float, ptr %i.acx, align 4, !tbaa !190
  %i.agi = fsub reassoc nsz arcp contract afn float %i.agh, %i.agg
  %i.agj = load float, ptr %i.adb, align 4, !tbaa !190 ; 2 uses
  %i.agk = fadd reassoc nsz arcp contract afn float %i.agi, %i.agj
  %i.agl = fpext reassoc nsz arcp contract afn float %i.agk to double ; 2 uses
  %i.agm = fpext reassoc nsz arcp contract afn float %i.agd to double
  %i.agn = fpext reassoc nsz arcp contract afn float %i.agj to double
  call void @cairo_curve_to(ptr noundef %i.xi, double noundef %i.agf, double noundef %i.agl, double noundef %i.agf, double noundef %i.agl, double noundef %i.agm, double noundef %i.agn) #22
  %i.ago = load float, ptr %i.acy, align 4, !tbaa !190 ; 2 uses
  %i.agp = load float, ptr %i.acv, align 4, !tbaa !190 ; 2 uses
  %i.agq = fsub reassoc nsz arcp contract afn float %i.ago, %i.agp
  %i.agr = load float, ptr %i.acz, align 4, !tbaa !190
  %i.ags = fadd reassoc nsz arcp contract afn float %i.agq, %i.agr
  %i.agt = fpext reassoc nsz arcp contract afn float %i.ags to double ; 2 uses
  %i.agu = load float, ptr %i.ada, align 4, !tbaa !190 ; 2 uses
  %i.agv = load float, ptr %i.acx, align 4, !tbaa !190 ; 2 uses
  %i.agw = fsub reassoc nsz arcp contract afn float %i.agu, %i.agv
  %i.agx = load float, ptr %i.adb, align 4, !tbaa !190
  %i.agy = fadd reassoc nsz arcp contract afn float %i.agw, %i.agx
  %i.agz = fpext reassoc nsz arcp contract afn float %i.agy to double ; 2 uses
  %i.aha = fmul reassoc nsz arcp contract afn float %i.ago, 2.000000e+00
  %i.ahb = fsub reassoc nsz arcp contract afn float %i.aha, %i.agp
  %i.ahc = fpext reassoc nsz arcp contract afn float %i.ahb to double
  %i.ahd = fmul reassoc nsz arcp contract afn float %i.agu, 2.000000e+00
  %i.ahe = fsub reassoc nsz arcp contract afn float %i.ahd, %i.agv
  %i.ahf = fpext reassoc nsz arcp contract afn float %i.ahe to double
  call void @cairo_curve_to(ptr noundef %i.xi, double noundef %i.agt, double noundef %i.agz, double noundef %i.agt, double noundef %i.agz, double noundef %i.ahc, double noundef %i.ahf) #22
  %i.ahg = load float, ptr %i.acv, align 4, !tbaa !190
  %i.ahh = load float, ptr %i.acx, align 4, !tbaa !190
  %i.ahi = load <2 x float>, ptr %i.acy, align 4, !tbaa !190 ; 3 uses
  %i.ahj = extractelement <2 x float> %i.ahi, i64 0
  %i.ahk = fmul reassoc nsz arcp contract afn float %i.ahj, 3.000000e+00
  %i.ahl = load <2 x float>, ptr %i.acz, align 4, !tbaa !190 ; 3 uses
  %i.ahm = extractelement <2 x float> %i.ahl, i64 0
  %i.ahn = fadd reassoc nsz arcp contract afn float %i.ahg, %i.ahm
  %i.aho = fsub reassoc nsz arcp contract afn float %i.ahk, %i.ahn
  %i.ahp = fpext reassoc nsz arcp contract afn float %i.aho to double ; 2 uses
  %i.ahq = extractelement <2 x float> %i.ahi, i64 1
  %i.ahr = fmul reassoc nsz arcp contract afn float %i.ahq, 3.000000e+00
  %i.ahs = extractelement <2 x float> %i.ahl, i64 1
  %i.aht = fadd reassoc nsz arcp contract afn float %i.ahh, %i.ahs
  %i.ahu = fsub reassoc nsz arcp contract afn float %i.ahr, %i.aht
  %i.ahv = fpext reassoc nsz arcp contract afn float %i.ahu to double ; 2 uses
  %i.ahw = fmul reassoc nsz arcp contract afn <2 x float> %i.ahi, splat (float 2.000000e+00)
  %i.ahx = fsub reassoc nsz arcp contract afn <2 x float> %i.ahw, %i.ahl
  %i.ahy = fpext <2 x float> %i.ahx to <2 x double> ; 2 uses
  %i.ahz = extractelement <2 x double> %i.ahy, i64 0
  %i.aia = extractelement <2 x double> %i.ahy, i64 1
  call void @cairo_curve_to(ptr noundef %i.xi, double noundef %i.ahp, double noundef %i.ahv, double noundef %i.ahp, double noundef %i.ahv, double noundef %i.ahz, double noundef %i.aia) #22
  %i.aib = load float, ptr %i.acy, align 4, !tbaa !190
  %i.aic = load float, ptr %i.acv, align 4, !tbaa !190 ; 2 uses
  %i.aid = fadd reassoc nsz arcp contract afn float %i.aic, %i.aib
  %i.aie = load float, ptr %i.acz, align 4, !tbaa !190
  %i.aif = fsub reassoc nsz arcp contract afn float %i.aid, %i.aie
  %i.aig = fpext reassoc nsz arcp contract afn float %i.aif to double ; 2 uses
  %i.aih = load float, ptr %i.ada, align 4, !tbaa !190
  %i.aii = load float, ptr %i.acx, align 4, !tbaa !190 ; 2 uses
  %i.aij = fadd reassoc nsz arcp contract afn float %i.aii, %i.aih
  %i.aik = load float, ptr %i.adb, align 4, !tbaa !190
  %i.ail = fsub reassoc nsz arcp contract afn float %i.aij, %i.aik
  %i.aim = fpext reassoc nsz arcp contract afn float %i.ail to double ; 2 uses
  %i.ain = fpext reassoc nsz arcp contract afn float %i.aic to double
  %i.aio = fpext reassoc nsz arcp contract afn float %i.aii to double
  call void @cairo_curve_to(ptr noundef %i.xi, double noundef %i.aig, double noundef %i.aim, double noundef %i.aig, double noundef %i.aim, double noundef %i.ain, double noundef %i.aio) #22
  call void @cairo_save(ptr noundef %i.xi) #22
  call void @cairo_scale(ptr noundef %i.xi, double noundef %i.ace, double noundef %i.ace) #22
  call void @cairo_set_line_width(ptr noundef %i.xi, double noundef 2.000000e+00) #22
  call void @cairo_stroke(ptr noundef %i.xi) #22
  call void @cairo_restore(ptr noundef %i.xi) #22
  br label %.loopexit.i176

.loopexit.i176:                                   ; preds = %.loopexit.i176.loopexit, %.split.i
  %indvars.iv.next304.i = add nuw nsw i64 %indvars.iv303.i, 1 ; 2 uses
  %exitcond306.not.i = icmp eq i64 %indvars.iv.next304.i, 25
  br i1 %exitcond306.not.i, label %bb.dk, label %bb.dl

bb.dp:                                            ; preds = %bb.dk, %vector.body
  call void @cairo_destroy(ptr noundef %i.xi) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.critedge161.sink.split

.critedge161.sink.split:                          ; preds = %bb.bc, %bb.dp
  %i.aip = load ptr, ptr %i.i, align 8, !tbaa !188
  call void @free(ptr noundef %i.aip) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #22
  br label %.critedge161

.critedge161:                                     ; preds = %.critedge161.sink.split, %.critedge
  %i.aiq = getelementptr inbounds nuw i8, ptr %2, i64 172
  store i32 0, ptr %i.aiq, align 4, !tbaa !123
  %i.air = getelementptr inbounds nuw i8, ptr %2, i64 416
  store i32 0, ptr %i.air, align 8, !tbaa !259
  call fastcc void @_thumb_update_zoom_label(ptr noundef nonnull %2)
  br label %.critedge162

.critedge162:                                     ; preds = %bb.bb, %bb.ba, %.critedge161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  br label %bb.dq

bb.dq:                                            ; preds = %.critedge162, %bb.r
  %i.ais = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 3 uses
  %i.ait = load ptr, ptr %i.ais, align 8, !tbaa !95 ; 2 uses
  %.not.i177 = icmp eq ptr %i.ait, null
  br i1 %.not.i177, label %_thumb_draw_image.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aiu = call ptr @gtk_widget_get_style_context(ptr noundef nonnull %i.ait) #22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !171
  %i.aiv = load ptr, ptr %i.ais, align 8, !tbaa !95
  call void @gtk_widget_get_size_request(ptr noundef %i.aiv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.aiw = load ptr, ptr %i.ak, align 8, !tbaa !170 ; 2 uses
  %.not41.i = icmp eq ptr %i.aiw, null
  br i1 %.not41.i, label %bb.dy, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.aix = call i32 @cairo_surface_get_reference_count(ptr noundef nonnull %i.aiw) #22
  %.not42.i = icmp eq i32 %i.aix, 0
  br i1 %.not42.i, label %bb.dy, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @cairo_save(ptr noundef %1) #22
  %i.aiy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiy, i64 1448
  %i.aja = load double, ptr %i.aiz, align 8, !tbaa !177
  %i.ajb = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aja
  %i.ajc = fptrunc reassoc nsz arcp contract afn double %i.ajb to float
  %i.ajd = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.aje = load float, ptr %i.ajd, align 4, !tbaa !186 ; 2 uses
  %i.ajf = fcmp reassoc nsz arcp contract afn ogt float %i.aje, 0.000000e+00
  br i1 %i.ajf, label %bb.du, label %bb.dx

bb.du:                                            ; preds = %bb.dt
  %i.ajg = getelementptr inbounds nuw i8, ptr %2, i64 388
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !180 ; 2 uses
  %i.aji = fcmp reassoc nsz arcp contract afn ogt float %i.ajh, 0.000000e+00
  br i1 %i.aji, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  %i.ajj = fdiv reassoc nsz arcp contract afn float %i.ajh, %i.aje ; 3 uses
  %i.ajk = fcmp reassoc nsz arcp contract afn ogt float %i.ajj, 2.000000e+01
  br i1 %i.ajk, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.inv.i = fcmp reassoc nsz arcp contract afn ole float %i.ajj, 1.000000e-01
  %spec.select44.i = select i1 %.inv.i, float 1.000000e-01, float %i.ajj
  %spec.select.i178 = fpext float %spec.select44.i to double
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv, %bb.du, %bb.dt
  %.0.i = phi double [ 1.000000e+00, %bb.dt ], [ 1.000000e+00, %bb.du ], [ 2.000000e+01, %bb.dv ], [ %spec.select.i178, %bb.dw ] ; 3 uses
  %i.ajl = fpext reassoc nsz arcp contract afn float %i.ajc to double ; 2 uses
  call void @cairo_scale(ptr noundef %1, double noundef %i.ajl, double noundef %i.ajl) #22
  call void @cairo_save(ptr noundef %1) #22
  call void @cairo_scale(ptr noundef %1, double noundef %.0.i, double noundef %.0.i) #22
  %i.ajm = load ptr, ptr %i.ak, align 8, !tbaa !170
  %i.ajn = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.ajo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajo, i64 1440
  %i.ajq = load double, ptr %i.ajp, align 8, !tbaa !274
  %i.ajr = load <2 x double>, ptr %i.ajn, align 8, !tbaa !273
  %i.ajs = insertelement <2 x double> poison, double %i.ajq, i64 0
  %i.ajt = shufflevector <2 x double> %i.ajs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aju = fmul reassoc nsz arcp contract afn <2 x double> %i.ajr, %i.ajt
  %i.ajv = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.ajw = shufflevector <2 x double> %i.ajv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ajx = fdiv reassoc nsz arcp contract afn <2 x double> %i.aju, %i.ajw ; 2 uses
  %i.ajy = extractelement <2 x double> %i.ajx, i64 0
  %i.ajz = extractelement <2 x double> %i.ajx, i64 1
  call void @cairo_set_source_surface(ptr noundef %1, ptr noundef %i.ajm, double noundef %i.ajy, double noundef %i.ajz) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.aka = load ptr, ptr %i.ais, align 8, !tbaa !95
  %i.akb = call i32 @gtk_widget_get_state_flags(ptr noundef %i.aka) #22
  call void @gtk_style_context_get_color(ptr noundef %i.aiu, i32 noundef %i.akb, ptr noundef nonnull %3) #22
  %i.akc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.akd = load double, ptr %i.akc, align 8, !tbaa !192
  call void @cairo_paint_with_alpha(ptr noundef %1, double noundef %i.akd) #22
  call void @cairo_restore(ptr noundef %1) #22
  %i.ake = load i32, ptr %i.a, align 4, !tbaa !171
  %i.akf = sitofp reassoc nsz arcp contract afn i32 %i.ake to double
  %i.akg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 1448
  %i.aki = load double, ptr %i.akh, align 8, !tbaa !177 ; 2 uses
  %i.akj = fmul reassoc nsz arcp contract afn double %i.aki, %i.akf
  %i.akk = load i32, ptr %i.b, align 4, !tbaa !171
  %i.akl = sitofp reassoc nsz arcp contract afn i32 %i.akk to double
  %i.akm = fmul reassoc nsz arcp contract afn double %i.aki, %i.akl
  call void @gtk_render_frame(ptr noundef %i.aiu, ptr noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef %i.akj, double noundef %i.akm) #22
  call void @cairo_restore(ptr noundef %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.ds, %bb.dr
  %i.akn = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.ako = load i32, ptr %i.akn, align 8, !tbaa !259
  %.not43.i = icmp eq i32 %i.ako, 0
  br i1 %.not43.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.akp = load i32, ptr %i.a, align 4, !tbaa !171
  %i.akq = load i32, ptr %i.b, align 4, !tbaa !171
  call void @dt_control_draw_busy_msg(ptr noundef %1, i32 noundef %i.akp, i32 noundef %i.akq) #22
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_thumb_draw_image.exit

_thumb_draw_image.exit:                           ; preds = %bb.ea, %bb.dq, %bb.c, %bb.a
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal void @_event_image_style_updated(ptr nofree readnone captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !182  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i16, ptr %i.c, align 2, !tbaa !194
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.f = load i16, ptr %i.e, align 2, !tbaa !195
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.h = load i16, ptr %i.g, align 2, !tbaa !196
  %i.i = load i16, ptr %i.b, align 2, !tbaa !197
  tail call fastcc void @_thumb_retrieve_margins(ptr noundef %1)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !182  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.l = load i16, ptr %i.k, align 2, !tbaa !194
  %.not = icmp eq i16 %i.d, %i.l
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !195
  %.not13 = icmp eq i16 %i.f, %i.n
  br i1 %.not13, label %bb.c, label %bb.e

end_hunk_1
begin_hunk_2_@_thumb_set_image_area:bb.a

bb.o:                                             ; preds = %.thread.3.i
  %i.dr = load i32, ptr %i.cp, align 8, !tbaa !298 ; 2 uses
  %i.ds = load i32, ptr %i.cq, align 4, !tbaa !299 ; 2 uses
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef 512) #22
  %i.dt = icmp slt i32 %i.dr, 1
  %i.du = icmp slt i32 %i.ds, 1
  %or.cond.not.4.i = select i1 %i.dt, i1 true, i1 %i.du
  br i1 %or.cond.not.4.i, label %.thread.4.i, label %bb.v

.thread.4.i:                                      ; preds = %bb.o, %.thread.3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.dv = load i32, ptr %0, align 8, !tbaa !86
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %2, i32 noundef %i.dv, i32 noundef 5, i32 noundef 4, i8 noundef signext 114, ptr noundef nonnull @.str.1, i32 noundef 507) #22
  %i.dw = load ptr, ptr %i.co, align 8, !tbaa !297
  %.not.5.i = icmp eq ptr %i.dw, null
  br i1 %.not.5.i, label %.thread.5.i, label %bb.p

bb.p:                                             ; preds = %.thread.4.i
  %i.dx = load i32, ptr %i.cp, align 8, !tbaa !298 ; 2 uses
  %i.dy = load i32, ptr %i.cq, align 4, !tbaa !299 ; 2 uses
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef 512) #22
  %i.dz = icmp slt i32 %i.dx, 1
  %i.ea = icmp slt i32 %i.dy, 1
  %or.cond.not.5.i = select i1 %i.dz, i1 true, i1 %i.ea
  br i1 %or.cond.not.5.i, label %.thread.5.i, label %bb.v

.thread.5.i:                                      ; preds = %bb.p, %.thread.4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.eb = load i32, ptr %0, align 8, !tbaa !86
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %2, i32 noundef %i.eb, i32 noundef 4, i32 noundef 4, i8 noundef signext 114, ptr noundef nonnull @.str.1, i32 noundef 507) #22
  %i.ec = load ptr, ptr %i.co, align 8, !tbaa !297
  %.not.6.i = icmp eq ptr %i.ec, null
  br i1 %.not.6.i, label %.thread.6.i, label %bb.q

bb.q:                                             ; preds = %.thread.5.i
  %i.ed = load i32, ptr %i.cp, align 8, !tbaa !298 ; 2 uses
  %i.ee = load i32, ptr %i.cq, align 4, !tbaa !299 ; 2 uses
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef 512) #22
  %i.ef = icmp slt i32 %i.ed, 1
  %i.eg = icmp slt i32 %i.ee, 1
  %or.cond.not.6.i = select i1 %i.ef, i1 true, i1 %i.eg
  br i1 %or.cond.not.6.i, label %.thread.6.i, label %bb.v

.thread.6.i:                                      ; preds = %bb.q, %.thread.5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.eh = load i32, ptr %0, align 8, !tbaa !86
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %2, i32 noundef %i.eh, i32 noundef 3, i32 noundef 4, i8 noundef signext 114, ptr noundef nonnull @.str.1, i32 noundef 507) #22
  %i.ei = load ptr, ptr %i.co, align 8, !tbaa !297
  %.not.7.i = icmp eq ptr %i.ei, null
  br i1 %.not.7.i, label %.thread.7.i, label %bb.r

bb.r:                                             ; preds = %.thread.6.i
  %i.ej = load i32, ptr %i.cp, align 8, !tbaa !298 ; 2 uses
  %i.ek = load i32, ptr %i.cq, align 4, !tbaa !299 ; 2 uses
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef 512) #22
  %i.el = icmp slt i32 %i.ej, 1
  %i.em = icmp slt i32 %i.ek, 1
  %or.cond.not.7.i = select i1 %i.el, i1 true, i1 %i.em
  br i1 %or.cond.not.7.i, label %.thread.7.i, label %bb.v

.thread.7.i:                                      ; preds = %bb.r, %.thread.6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.en = load i32, ptr %0, align 8, !tbaa !86
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %2, i32 noundef %i.en, i32 noundef 2, i32 noundef 4, i8 noundef signext 114, ptr noundef nonnull @.str.1, i32 noundef 507) #22
  %i.eo = load ptr, ptr %i.co, align 8, !tbaa !297
  %.not.8.i = icmp eq ptr %i.eo, null
  br i1 %.not.8.i, label %.thread.8.i, label %bb.s

bb.s:                                             ; preds = %.thread.7.i
  %i.ep = load i32, ptr %i.cp, align 8, !tbaa !298 ; 2 uses
  %i.eq = load i32, ptr %i.cq, align 4, !tbaa !299 ; 2 uses
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef 512) #22
  %i.er = icmp slt i32 %i.ep, 1
  %i.es = icmp slt i32 %i.eq, 1
  %or.cond.not.8.i = select i1 %i.er, i1 true, i1 %i.es
  br i1 %or.cond.not.8.i, label %.thread.8.i, label %bb.v

.thread.8.i:                                      ; preds = %bb.s, %.thread.7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.et = load i32, ptr %0, align 8, !tbaa !86
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %2, i32 noundef %i.et, i32 noundef 1, i32 noundef 4, i8 noundef signext 114, ptr noundef nonnull @.str.1, i32 noundef 507) #22
  %i.eu = load ptr, ptr %i.co, align 8, !tbaa !297
  %.not.9.i = icmp eq ptr %i.eu, null
  br i1 %.not.9.i, label %.thread.9.i, label %bb.t

bb.t:                                             ; preds = %.thread.8.i
  %i.ev = load i32, ptr %i.cp, align 8, !tbaa !298 ; 2 uses
  %i.ew = load i32, ptr %i.cq, align 4, !tbaa !299 ; 2 uses
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef 512) #22
  %i.ex = icmp slt i32 %i.ev, 1
  %i.ey = icmp slt i32 %i.ew, 1
  %or.cond.not.9.i = select i1 %i.ex, i1 true, i1 %i.ey
  br i1 %or.cond.not.9.i, label %.thread.9.i, label %bb.v

.thread.9.i:                                      ; preds = %bb.t, %.thread.8.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.ez = load i32, ptr %0, align 8, !tbaa !86
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %2, i32 noundef %i.ez, i32 noundef 0, i32 noundef 4, i8 noundef signext 114, ptr noundef nonnull @.str.1, i32 noundef 507) #22
  %i.fa = load ptr, ptr %i.co, align 8, !tbaa !297
  %.not.10.i = icmp eq ptr %i.fa, null
  br i1 %.not.10.i, label %.loopexit.i, label %bb.u

bb.u:                                             ; preds = %.thread.9.i
  %i.fb = load i32, ptr %i.cp, align 8, !tbaa !298 ; 2 uses
  %i.fc = load i32, ptr %i.cq, align 4, !tbaa !299 ; 2 uses
  call void @dt_mipmap_cache_release_with_caller(ptr noundef nonnull %2, ptr noundef nonnull @.str.1, i32 noundef 512) #22
  %i.fd = icmp slt i32 %i.fb, 1
  %i.fe = icmp slt i32 %i.fc, 1
  %or.cond.not.10.i = select i1 %i.fd, i1 true, i1 %i.fe
  br i1 %or.cond.not.10.i, label %.loopexit.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.lcssa56.i = phi i32 [ %i.ct, %bb.k ], [ %i.cz, %bb.l ], [ %i.df, %bb.m ], [ %i.dl, %bb.n ], [ %i.dr, %bb.o ], [ %i.dx, %bb.p ], [ %i.ed, %bb.q ], [ %i.ej, %bb.r ], [ %i.ep, %bb.s ], [ %i.ev, %bb.t ], [ %i.fb, %bb.u ]
  %.lcssa.i = phi i32 [ %i.cu, %bb.k ], [ %i.da, %bb.l ], [ %i.dg, %bb.m ], [ %i.dm, %bb.n ], [ %i.ds, %bb.o ], [ %i.dy, %bb.p ], [ %i.ee, %bb.q ], [ %i.ek, %bb.r ], [ %i.eq, %bb.s ], [ %i.ew, %bb.t ], [ %i.fc, %bb.u ]
  %i.ff = uitofp nneg i32 %.lcssa56.i to float
  %i.fg = uitofp nneg i32 %.lcssa.i to float
  %i.fh = fdiv reassoc nsz arcp contract afn float %i.ff, %i.fg
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.v, %bb.u, %.thread.9.i
  %.4.i = phi nsz float [ %i.fh, %bb.v ], [ 0.000000e+00, %bb.u ], [ 0.000000e+00, %.thread.9.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.fi = fpext reassoc nsz arcp contract afn float %.4.i to double ; 3 uses
  %i.fj = fcmp reassoc nsz arcp contract afn olt double %i.fi, 1.000000e-03
  br i1 %i.fj, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.loopexit.i
  %i.fk = load i32, ptr %0, align 8, !tbaa !86
  %i.fl = call ptr @dt_image_cache_get(i32 noundef %i.fk, i8 noundef signext 114) #22 ; 3 uses
  %.not49.i = icmp eq ptr %i.fl, null
  br i1 %.not49.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 1420
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !300 ; 2 uses
  call void @dt_image_cache_read_release(ptr noundef nonnull %i.fl) #22
  %.pre.i = fpext reassoc nsz arcp contract afn float %i.fn to double
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.loopexit.i
  %.pre-phi.i = phi double [ %i.fi, %bb.w ], [ %.pre.i, %bb.x ], [ %i.fi, %.loopexit.i ]
  %.6.i = phi nsz float [ %.4.i, %bb.w ], [ %i.fn, %bb.x ], [ %.4.i, %.loopexit.i ] ; 3 uses
  %i.fo = fcmp reassoc nsz arcp contract afn ogt double %.pre-phi.i, 1.000000e-03
  br i1 %i.fo, label %bb.z, label %_get_dimensions_for_img_to_fit.exit

bb.z:                                             ; preds = %bb.y
  %i.fp = fcmp reassoc nsz arcp contract afn olt float %.6.i, 1.000000e+00 ; 2 uses
  %i.fq = fmul reassoc nsz arcp contract afn float %.6.i, %i.cn
  %i.fr = fdiv reassoc nsz arcp contract afn float %i.cm, %.6.i
  %.041.i = select nsz i1 %i.fp, float %i.cn, float %i.fr ; 2 uses
  %.0.i = select nsz i1 %i.fp, float %i.fq, float %i.cm ; 2 uses
  %i.fs = fdiv reassoc nsz arcp contract afn float %i.cm, %.0.i
  %i.ft = fdiv reassoc nsz arcp contract afn float %i.cn, %.041.i
  %i.fu = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fs, float %i.ft)
  %i.fv = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fu, float 1.000000e+00) ; 2 uses
  %i.fw = fmul reassoc nsz arcp contract afn float %i.fv, %.0.i
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fv, %.041.i
  br label %_get_dimensions_for_img_to_fit.exit

bb.aa:                                            ; preds = %bb.i
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.fz = load float, ptr %i.fy, align 8, !tbaa !181 ; 2 uses
  %i.ga = fcmp reassoc nsz arcp contract afn olt float %i.fz, 1.000000e+00
  br i1 %i.ga, label %bb.ab, label %dt_thumbnail_get_zoom100.exit.i

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !171
  %i.gb = load i32, ptr %0, align 8, !tbaa !86
  %i.gc = call i32 @dt_image_get_final_size(i32 noundef %i.gb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !182 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ge, null
  br i1 %.not.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @_thumb_retrieve_margins(ptr noundef nonnull %0)
  %.pre.i.i = load ptr, ptr %i.gd, align 8, !tbaa !182
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gf = phi ptr [ %.pre.i.i, %bb.ac ], [ %i.ge, %bb.ab ]
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gh = load <2 x i32>, ptr %i.gg, align 8, !tbaa !171
  %i.gi = load <4 x i16>, ptr %i.gf, align 2, !tbaa !183 ; 2 uses
  %i.gj = shufflevector <4 x i16> %i.gi, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.gk = sext <2 x i16> %i.gj to <2 x i32>
  %i.gl = shufflevector <4 x i16> %i.gi, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.gm = sext <2 x i16> %i.gl to <2 x i32>
  %i.gn = add nsw <2 x i32> %i.gk, %i.gm
  %i.go = sub <2 x i32> %i.gh, %i.gn
  %i.gp = sitofp <2 x i32> %i.go to <2 x float>
  %i.gq = load i32, ptr %i.a, align 4, !tbaa !171
  %i.gr = load i32, ptr %i.b, align 4, !tbaa !171
  %i.gs = insertelement <2 x i32> poison, i32 %i.gq, i64 0
  %i.gt = insertelement <2 x i32> %i.gs, i32 %i.gr, i64 1
  %i.gu = sitofp <2 x i32> %i.gt to <2 x float>
  %i.gv = fdiv reassoc nsz arcp contract afn <2 x float> %i.gu, %i.gp ; 2 uses
  %i.gw = extractelement <2 x float> %i.gv, i64 0
  %i.gx = extractelement <2 x float> %i.gv, i64 1
  %i.gy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.gw, float %i.gx) ; 2 uses
  %i.gz = fcmp reassoc nsz arcp contract afn olt float %i.gy, 1.000000e+00
  %spec.select.i.i = select reassoc nsz arcp contract afn i1 %i.gz, float 1.000000e+00, float %i.gy ; 2 uses
  store float %spec.select.i.i, ptr %i.fy, align 8, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %dt_thumbnail_get_zoom100.exit.i

dt_thumbnail_get_zoom100.exit.i:                  ; preds = %bb.ad, %bb.aa
  %i.ha = phi float [ %spec.select.i.i, %bb.ad ], [ %i.fz, %bb.aa ] ; 2 uses
  %i.hb = load i32, ptr %0, align 8, !tbaa !86
  %i.hc = call ptr @dt_image_cache_get(i32 noundef %i.hb, i8 noundef signext 114) #22 ; 4 uses
  %.not.i75 = icmp eq ptr %i.hc, null
  br i1 %.not.i75, label %_get_dimensions_for_zoomed_img.exit, label %bb.ae

bb.ae:                                            ; preds = %dt_thumbnail_get_zoom100.exit.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 1388
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !301 ; 2 uses
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 1392
  %i.hh = load i32, ptr %i.hg, align 16, !tbaa !302 ; 2 uses
  %i.hi = icmp sgt i32 %i.hh, 0
  br i1 %i.hi, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.hj = uitofp nneg i32 %i.he to float
  %i.hk = uitofp nneg i32 %i.hh to float
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.034.i = phi nsz float [ %i.hj, %bb.ag ], [ %i.cm, %bb.af ], [ %i.cm, %bb.ae ]
  %.0.i76 = phi nsz float [ %i.hk, %bb.ag ], [ %i.cn, %bb.af ], [ %i.cn, %bb.ae ]
  call void @dt_image_cache_read_release(ptr noundef nonnull %i.hc) #22
  br label %_get_dimensions_for_zoomed_img.exit

_get_dimensions_for_zoomed_img.exit:              ; preds = %dt_thumbnail_get_zoom100.exit.i, %bb.ah
  %.135.i = phi nsz float [ %.034.i, %bb.ah ], [ %i.cm, %dt_thumbnail_get_zoom100.exit.i ] ; 2 uses
  %.1.i77 = phi nsz float [ %.0.i76, %bb.ah ], [ %i.cn, %dt_thumbnail_get_zoom100.exit.i ] ; 2 uses
  %i.hl = fcmp reassoc nsz arcp contract afn olt float %i.ha, 1.000000e+00
  %spec.select18.i.i = select reassoc nsz arcp contract afn i1 %i.hl, float 1.000000e+00, float %i.ha
  %i.hm = fdiv reassoc nsz arcp contract afn float %i.cm, %.135.i
  %i.hn = fdiv reassoc nsz arcp contract afn float %i.cn, %.1.i77
  %i.ho = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hm, float %i.hn)
  %i.hp = fadd reassoc nsz arcp contract afn float %spec.select18.i.i, -1.000000e+00
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hp, %1
  %i.hr = fadd reassoc nsz arcp contract afn float %i.hq, 1.000000e+00 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 388
  store float %i.hr, ptr %i.hs, align 4, !tbaa !180
  %i.ht = fmul reassoc nsz arcp contract afn float %i.ho, %i.hr ; 2 uses
  %i.hu = fmul reassoc nsz arcp contract afn float %i.ht, %.135.i ; 2 uses
  %i.hv = fcmp reassoc nsz arcp contract afn olt float %i.hu, %i.cm
  %..i = select reassoc nsz arcp contract afn i1 %i.hv, float %i.hu, float %i.cm
  %i.hw = fmul reassoc nsz arcp contract afn float %i.ht, %.1.i77 ; 2 uses
  %i.hx = fcmp reassoc nsz arcp contract afn olt float %i.hw, %i.cn
  %i.hy = select reassoc nsz arcp contract afn i1 %i.hx, float %i.hw, float %i.cn
  br label %_get_dimensions_for_img_to_fit.exit

_get_dimensions_for_img_to_fit.exit:              ; preds = %bb.z, %bb.y, %_get_dimensions_for_zoomed_img.exit
  %.080 = phi nsz float [ %..i, %_get_dimensions_for_zoomed_img.exit ], [ %i.fw, %bb.z ], [ %i.cm, %bb.y ]
  %.079 = phi nsz float [ %i.hy, %_get_dimensions_for_zoomed_img.exit ], [ %i.fx, %bb.z ], [ %i.cn, %bb.y ]
  %i.hz = load ptr, ptr %i.cf, align 8, !tbaa !95
  %i.ia = fptosi float %.080 to i32
  %i.ib = fptosi float %.079 to i32
  call void @gtk_widget_set_size_request(ptr noundef %i.hz, i32 noundef %i.ia, i32 noundef %i.ib) #22
  br label %bb.ak

bb.ai:                                            ; preds = %bb.h
  %i.ic = sitofp reassoc nsz arcp contract afn i32 %i.u to float
  %i.id = uitofp nneg i32 %i.ch to float          ; 2 uses
  %i.ie = fdiv reassoc nsz arcp contract afn float %i.ic, %i.id
  %i.if = sitofp reassoc nsz arcp contract afn i32 %.168 to float
  %i.ig = uitofp nneg i32 %i.cj to float          ; 2 uses
  %i.ih = fdiv reassoc nsz arcp contract afn float %i.if, %i.ig
  %i.ii = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ie, float %i.ih) ; 3 uses
  %i.ij = fcmp reassoc nsz arcp contract afn olt float %i.ii, 1.000000e+00
  br i1 %i.ij, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ik = load ptr, ptr %i.cf, align 8, !tbaa !95
  %i.il = fmul reassoc nsz arcp contract afn float %i.ii, %i.id
  %i.im = fptosi float %i.il to i32
  %i.in = fmul reassoc nsz arcp contract afn float %i.ii, %i.ig
  %i.io = fptosi float %i.in to i32
  call void @gtk_widget_set_size_request(ptr noundef %i.ik, i32 noundef %i.im, i32 noundef %i.io) #22
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %_get_dimensions_for_img_to_fit.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !94
  call void @gtk_widget_set_size_request(ptr noundef %i.iq, i32 noundef %i.u, i32 noundef %.168) #22
  %i.ir = load ptr, ptr %i.ip, align 8, !tbaa !94
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !182
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !197
  %i.iv = sext i16 %i.iu to i32
  call void @gtk_widget_set_margin_start(ptr noundef %i.ir, i32 noundef %i.iv) #22
  %i.iw = load ptr, ptr %i.ip, align 8, !tbaa !94
  call void @gtk_widget_set_margin_top(ptr noundef %i.iw, i32 noundef %.1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_thumbnail_image_refresh(ptr nofree noundef captures(none) initializes((172, 176)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 1, ptr %i.a, align 4, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @cairo_surface_get_reference_count(ptr noundef nonnull %i.c) #22
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !124
  tail call void @cairo_surface_destroy(ptr noundef %i.e) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !124
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = tail call i32 @gtk_widget_get_margin_start(ptr noundef %i.g) #22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !88
  %.not13 = icmp slt i32 %i.h, %i.j
  br i1 %.not13, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.l = tail call i32 @gtk_widget_get_margin_top(ptr noundef %i.k) #22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !89
  %.not14 = icmp slt i32 %i.l, %i.n
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !94
  tail call void @gtk_widget_set_margin_start(ptr noundef %i.o, i32 noundef 0) #22
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !94
  tail call void @gtk_widget_set_margin_top(ptr noundef %i.p, i32 noundef 0) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19
  tail call void @gtk_widget_queue_draw(ptr noundef %i.r) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_thumbnail_set_group_border(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @dt_gui_remove_class(ptr noundef %i.c, ptr noundef nonnull @.str.53) #22
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @dt_gui_remove_class(ptr noundef %i.d, ptr noundef nonnull @.str.54) #22
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @dt_gui_remove_class(ptr noundef %i.e, ptr noundef nonnull @.str.55) #22
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !19
  tail call void @dt_gui_remove_class(ptr noundef %i.f, ptr noundef nonnull @.str.56) #22
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 340
  store i32 0, ptr %i.g, align 4, !tbaa !303
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.h = and i32 %1, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %1, 2
  %.not15 = icmp eq i32 %i.i, 0
  br i1 %.not15, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %1, 4
  %.not16 = icmp eq i32 %i.j, 0
  br i1 %.not16, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %1, 8
  %.not17 = icmp eq i32 %i.k, 0
  br i1 %.not17, label %bb.g, label %.sink.split
end_hunk_2
begin_hunk_3_@dt_thumbnail_set_drop:bb.a
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @gtk_drag_dest_set(ptr noundef %i.b, i32 noundef 1, ptr noundef nonnull @target_list_all, i32 noundef 2, i32 noundef 4) #22
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @gtk_drag_dest_unset(ptr noundef %i.b) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @gtk_drag_dest_unset(ptr noundef) local_unnamed_addr #1

declare i32 @cairo_surface_get_reference_count(ptr noundef) local_unnamed_addr #1

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #1

declare i32 @gtk_widget_get_margin_start(ptr noundef) local_unnamed_addr #1

declare i32 @gtk_widget_get_margin_top(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @dt_thumbnail_image_refresh_zoom(ptr nofree noundef captures(none) initializes((172, 180)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 1, ptr %i.a, align 4, !tbaa !123
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 0, ptr %i.b, align 8, !tbaa !248
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.e = tail call i32 @gtk_widget_get_margin_start(ptr noundef %i.d) #22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !88
  %.not = icmp slt i32 %i.e, %i.g
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !94
  %i.i = tail call i32 @gtk_widget_get_margin_top(ptr noundef %i.h) #22
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !89
  %.not10 = icmp slt i32 %i.i, %i.k
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !94
  tail call void @gtk_widget_set_margin_start(ptr noundef %i.l, i32 noundef 0) #22
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !94
  tail call void @gtk_widget_set_margin_top(ptr noundef %i.m, i32 noundef 0) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_thumb_update_zoom_label(ptr noundef nonnull %0)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19
  tail call void @gtk_widget_queue_draw(ptr noundef %i.o) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_thumb_update_zoom_label(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.b = load i32, ptr %i.a, align 4, !tbaa !179
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.d = load i32, ptr %i.c, align 8, !tbaa !97
  %.not12 = icmp eq i32 %i.d, 6
  br i1 %.not12, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !112  ; 2 uses
  %.not13 = icmp eq ptr %i.f, null
  br i1 %.not13, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.h = load float, ptr %i.g, align 8, !tbaa !181 ; 2 uses
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.k = load float, ptr %i.j, align 4, !tbaa !180 ; 2 uses
  %i.l = fcmp reassoc nsz arcp contract afn ugt float %i.k, 1.000000e+00
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #22
  tail call void @gtk_label_set_text(ptr noundef nonnull %i.f, ptr noundef %i.m) #22
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = fpext reassoc nsz arcp contract afn float %i.k to double
  %i.o = fmul reassoc nsz arcp contract afn double %i.n, 1.000000e+02
  %i.p = fpext reassoc nsz arcp contract afn float %i.h to double
  %i.q = fdiv reassoc nsz arcp contract afn double %i.o, %i.p
  %i.r = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.81, double noundef %i.q) #22 ; 2 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !112
  tail call void @gtk_label_set_text(ptr noundef %i.s, ptr noundef %i.r) #22
  tail call void @g_free(ptr noundef %i.r) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.g, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_thumbnail_image_preview_zoom(ptr nofree noundef captures(none) initializes((176, 180)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 1, ptr %i.a, align 8, !tbaa !248
  tail call fastcc void @_thumb_update_image_box(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.d = tail call i32 @gtk_widget_get_margin_start(ptr noundef %i.c) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !88
  %.not = icmp slt i32 %i.d, %i.f
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !94
  %i.h = tail call i32 @gtk_widget_get_margin_top(ptr noundef %i.g) #22
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !89
  %.not10 = icmp slt i32 %i.h, %i.j
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !94
  tail call void @gtk_widget_set_margin_start(ptr noundef %i.k, i32 noundef 0) #22
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !94
  tail call void @gtk_widget_set_margin_top(ptr noundef %i.l, i32 noundef 0) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @_thumb_update_zoom_label(ptr noundef nonnull %0)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19
  tail call void @gtk_widget_queue_draw(ptr noundef %i.n) #22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_thumb_update_image_box(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !170
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.l = load float, ptr %i.k, align 4, !tbaa !186 ; 2 uses
  %i.m = fcmp reassoc nsz arcp contract afn ogt float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.o = load float, ptr %i.n, align 4, !tbaa !180
  %i.p = fdiv reassoc nsz arcp contract afn float %i.o, %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.q = phi reassoc nsz arcp contract afn float [ %i.p, %bb.c ], [ 1.000000e+00, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 0, ptr %i.c, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !171
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94
  call void @gtk_widget_get_size_request(ptr noundef %i.s, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #22
  %i.t = load i32, ptr %i.c, align 4, !tbaa !171
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1448
  %i.x = load double, ptr %i.w, align 8, !tbaa !177
  %i.y = load i32, ptr %i.d, align 4, !tbaa !171
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = load <2 x i32>, ptr %i.u, align 8, !tbaa !171
  %i.ab = sitofp <2 x i32> %i.aa to <2 x float>
  %i.ac = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul reassoc nsz arcp contract afn <2 x float> %i.ad, %i.ab
  %i.af = fpext <2 x float> %i.ae to <2 x double>
  %i.ag = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fdiv reassoc nsz arcp contract afn <2 x double> %i.af, %i.ah ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 0
  %i.ak = fptosi double %i.aj to i32
  %. = call i32 @llvm.smin.i32(i32 %i.t, i32 %i.ak)
  %i.al = extractelement <2 x double> %i.ai, i64 1
  %i.am = fptosi double %i.al to i32
  %i.an = call i32 @llvm.smin.i32(i32 %i.y, i32 %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i32 0, ptr %i.e, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i32 0, ptr %i.f, align 4, !tbaa !171
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !95
  call void @gtk_widget_get_size_request(ptr noundef %i.ap, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !171
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !94
  call void @gtk_widget_get_size_request(ptr noundef %i.aq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !95
  %i.as = load i32, ptr %i.a, align 4, !tbaa !171
  %i.at = call i32 @llvm.smin.i32(i32 %., i32 %i.as)
  %i.au = load i32, ptr %i.b, align 4, !tbaa !171
  %i.av = call i32 @llvm.smin.i32(i32 %i.an, i32 %i.au)
  call void @gtk_widget_set_size_request(ptr noundef %i.ar, i32 noundef %i.at, i32 noundef %i.av) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i32 0, ptr %i.g, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #22
  store i32 0, ptr %i.h, align 4, !tbaa !171
  %i.aw = load ptr, ptr %i.ao, align 8, !tbaa !95
  call void @gtk_widget_get_size_request(ptr noundef %i.aw, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h) #22
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !249
  %i.az = load i32, ptr %i.g, align 4, !tbaa !171 ; 2 uses
  %i.ba = load i32, ptr %i.e, align 4, !tbaa !171
  %i.bb = sub nsw i32 %i.az, %i.ba
  %i.bc = sitofp reassoc nsz arcp contract afn i32 %i.bb to double
  %i.bd = fmul reassoc nnan nsz arcp contract afn double %i.bc, 5.000000e-01
  %i.be = fadd reassoc nsz arcp contract afn double %i.bd, %i.ay ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !250
  %i.bh = load i32, ptr %i.h, align 4, !tbaa !171 ; 2 uses
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !171
  %i.bj = sub nsw i32 %i.bh, %i.bi
  %i.bk = sitofp reassoc nsz arcp contract afn i32 %i.bj to double
  %i.bl = fmul reassoc nnan nsz arcp contract afn double %i.bk, 5.000000e-01
  %i.bm = fadd reassoc nsz arcp contract afn double %i.bl, %i.bg ; 3 uses
  %i.bn = fcmp reassoc nsz arcp contract afn ogt double %i.be, 0.000000e+00
  br i1 %i.bn, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bo = sitofp reassoc nsz arcp contract afn i32 %i.az to double
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1448
  %i.br = load double, ptr %i.bq, align 8, !tbaa !177 ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn double %i.br, %i.bo
  %i.bt = load i32, ptr %i.u, align 8, !tbaa !184
  %i.bu = sitofp reassoc nsz arcp contract afn i32 %i.bt to float
  %i.bv = fmul reassoc nsz arcp contract afn float %i.q, %i.bu
  %i.bw = fpext reassoc nsz arcp contract afn float %i.bv to double
  %i.bx = fsub reassoc nsz arcp contract afn double %i.bs, %i.bw
  %i.by = fdiv reassoc nsz arcp contract afn double %i.bx, %i.br ; 2 uses
  %i.bz = fcmp reassoc nsz arcp contract afn olt double %i.be, %i.by
  %.45 = select reassoc nsz arcp contract afn i1 %i.bz, double %i.by, double %i.be
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ca = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.d ], [ %.45, %bb.e ]
  store double %i.ca, ptr %i.ax, align 8, !tbaa !249
  %i.cb = fcmp reassoc nsz arcp contract afn ogt double %i.bm, 0.000000e+00
  br i1 %i.cb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = sitofp reassoc nsz arcp contract afn i32 %i.bh to double
  %i.cd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1448
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !177 ; 2 uses
  %i.cg = fmul reassoc nsz arcp contract afn double %i.cf, %i.cc
  %i.ch = load i32, ptr %i.z, align 4, !tbaa !185
  %i.ci = sitofp reassoc nsz arcp contract afn i32 %i.ch to float
  %i.cj = fmul reassoc nsz arcp contract afn float %i.q, %i.ci
  %i.ck = fpext reassoc nsz arcp contract afn float %i.cj to double
  %i.cl = fsub reassoc nsz arcp contract afn double %i.cg, %i.ck
  %i.cm = fdiv reassoc nsz arcp contract afn double %i.cl, %i.cf ; 2 uses
  %i.cn = fcmp reassoc nsz arcp contract afn olt double %i.bm, %i.cm
  %.46 = select reassoc nsz arcp contract afn i1 %i.cn, double %i.cm, double %i.bm
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.co = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.f ], [ %.46, %bb.g ]
  store double %i.co, ptr %i.bf, align 8, !tbaa !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_thumbnail_set_overlay(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_thumbs_show_overlays.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.c = icmp eq i32 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 4 uses
  br i1 %i.c, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115
  %.not53 = icmp eq i32 %i.e, %2
  br i1 %.not53, label %_thumbs_show_overlays.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %2, ptr %i.d, align 4, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !114  ; 2 uses
  %.not54 = icmp eq i32 %i.g, 0
  br i1 %.not54, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @g_source_remove(i32 noundef %i.g) #22 ; 0 uses
  store i32 0, ptr %i.f, align 8, !tbaa !114
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = icmp slt i32 %2, 0
  br i1 %i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr %i.a, align 8, !tbaa !97
  %i.k = icmp eq i32 %i.j, 6
  br i1 %i.k, label %bb.h, label %_thumbs_show_overlays.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_thumb_update_icons(ptr noundef nonnull %0)
  %i.l = load i32, ptr %i.d, align 4, !tbaa !115  ; 2 uses
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %bb.i, label %_thumbs_show_overlays.exit

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i32 @g_timeout_add_seconds(i32 noundef %i.l, ptr noundef nonnull @_thumbs_hide_overlays, ptr noundef nonnull %0) #22
  store i32 %i.n, ptr %i.f, align 8, !tbaa !114
  br label %_thumbs_show_overlays.exit

bb.j:                                             ; preds = %bb.f
  %i.o = tail call i32 @_thumbs_hide_overlays(ptr noundef nonnull %0) ; 0 uses
  br label %_thumbs_show_overlays.exit

bb.k:                                             ; preds = %bb.b
  store i32 %2, ptr %i.d, align 4, !tbaa !115
  store i32 %1, ptr %i.a, align 8, !tbaa !97
  %i.p = icmp eq i32 %i.b, 6
  %i.q = icmp eq i32 %1, 6                        ; 2 uses
  %or.cond = or i1 %i.q, %i.p
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %spec.select.v = select i1 %i.q, i64 136, i64 112
  %spec.select = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.v
  %.048 = load ptr, ptr %spec.select, align 8, !tbaa !98 ; 14 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !99   ; 6 uses
  %i.t = tail call ptr @g_object_ref(ptr noundef %i.s) #22 ; 0 uses
  %i.u = tail call ptr @gtk_widget_get_parent(ptr noundef %i.s) #22
  tail call void @gtk_container_remove(ptr noundef %i.u, ptr noundef %i.s) #22
  tail call void @gtk_overlay_add_overlay(ptr noundef %.048, ptr noundef %i.s) #22
  tail call void @gtk_widget_show(ptr noundef %i.s) #22
  tail call void @g_object_unref(ptr noundef %i.s) #22
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !102  ; 6 uses
  %i.x = tail call ptr @g_object_ref(ptr noundef %i.w) #22 ; 0 uses
  %i.y = tail call ptr @gtk_widget_get_parent(ptr noundef %i.w) #22
  tail call void @gtk_container_remove(ptr noundef %i.y, ptr noundef %i.w) #22
  tail call void @gtk_overlay_add_overlay(ptr noundef %.048, ptr noundef %i.w) #22
  tail call void @gtk_widget_show(ptr noundef %i.w) #22
  tail call void @g_object_unref(ptr noundef %i.w) #22
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !98  ; 6 uses
  %i.ab = tail call ptr @g_object_ref(ptr noundef %i.aa) #22 ; 0 uses
  %i.ac = tail call ptr @gtk_widget_get_parent(ptr noundef %i.aa) #22
  tail call void @gtk_container_remove(ptr noundef %i.ac, ptr noundef %i.aa) #22
  tail call void @gtk_overlay_add_overlay(ptr noundef %.048, ptr noundef %i.aa) #22
  tail call void @gtk_widget_show(ptr noundef %i.aa) #22
  tail call void @g_object_unref(ptr noundef %i.aa) #22
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !98 ; 6 uses
end_hunk_3
begin_hunk_4_@dt_thumbnail_reload_infos:bb.a
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  tail call fastcc void @_thumb_update_extended_infos_line(ptr noundef nonnull %0)
  %.pr = load i32, ptr %i.n, align 8, !tbaa !97
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.p = phi i32 [ %i.o, %bb.e ], [ %.pr, %bb.f ]
  %.not35 = icmp eq i32 %i.p, 0
  br i1 %.not35, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_image_get_infos(ptr noundef nonnull %0)
  tail call fastcc void @_thumb_update_icons(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !229  ; 3 uses
  %i.s = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.r) #25 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.s ; 2 uses
  %.not17.i = icmp eq i64 %i.s, 0
  br i1 %.not17.i, label %_thumb_write_extension.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.j
  %.014.i = phi ptr [ %i.v, %bb.j ], [ %i.t, %bb.i ] ; 3 uses
  %i.u = load i8, ptr %.014.i, align 1, !tbaa !189
  %.not.i41 = icmp eq i8 %i.u, 46
  br i1 %.not.i41, label %_thumb_write_extension.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.v = getelementptr inbounds i8, ptr %.014.i, i64 -1 ; 3 uses
  %i.w = icmp ugt ptr %i.v, %i.r
  br i1 %i.w, label %.lr.ph.i, label %_thumb_write_extension.exit

_thumb_write_extension.exit:                      ; preds = %.lr.ph.i, %bb.j, %bb.i
  %.0.lcssa.i = phi ptr [ %i.t, %bb.i ], [ %.014.i, %.lr.ph.i ], [ %i.v, %bb.j ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load i32, ptr %i.y, align 8, !tbaa !233
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !234
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !235
  %i.ae = tail call ptr @dt_view_extend_modes_str(ptr noundef nonnull %i.x, i32 noundef %i.z, i32 noundef %i.ab, i32 noundef %i.ad) #22 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !93
  tail call void @gtk_label_set_text(ptr noundef %i.ag, ptr noundef %i.ae) #22
  tail call void @g_free(ptr noundef %i.ae) #22
  tail call fastcc void @_thumb_update_tooltip_text(ptr noundef nonnull %0)
  %i.ah = load i32, ptr %i.n, align 8, !tbaa !97
  switch i32 %i.ah, label %g_strdup_inline.exit [
    i32 4, label %bb.k
    i32 2, label %bb.k
    i32 5, label %bb.k
    i32 6, label %bb.k
  ]

bb.k:                                             ; preds = %_thumb_write_extension.exit, %_thumb_write_extension.exit, %_thumb_write_extension.exit, %_thumb_write_extension.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !100
  %i.ak = tail call noalias ptr @g_strdup(ptr noundef %i.aj) #22
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.k, %_thumb_write_extension.exit
  %.0 = phi ptr [ null, %_thumb_write_extension.exit ], [ %i.ak, %bb.k ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !101
  tail call void @gtk_label_set_markup(ptr noundef %i.am, ptr noundef %.0) #22
  tail call void @g_free(ptr noundef %.0) #22
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %g_strdup_inline.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @dt_thumbnail_image_refresh_position(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !171
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  call void @gtk_widget_get_size_request(ptr noundef %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.f = load float, ptr %i.e, align 4, !tbaa !186 ; 2 uses
  %i.g = fcmp reassoc nsz arcp contract afn ogt float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.i = load float, ptr %i.h, align 4, !tbaa !180
  %i.j = fdiv reassoc nsz arcp contract afn float %i.i, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi reassoc nsz arcp contract afn float [ %i.j, %bb.b ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !249 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn ogt double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.a, align 4, !tbaa !171
  %i.p = sitofp reassoc nsz arcp contract afn i32 %i.o to double
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1448
  %i.s = load double, ptr %i.r, align 8, !tbaa !177 ; 2 uses
  %i.t = fmul reassoc nsz arcp contract afn double %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !184
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.x = fmul reassoc nsz arcp contract afn float %i.k, %i.w
  %i.y = fpext reassoc nsz arcp contract afn float %i.x to double
  %i.z = fsub reassoc nsz arcp contract afn double %i.t, %i.y
  %i.aa = fdiv reassoc nsz arcp contract afn double %i.z, %i.s ; 2 uses
  %i.ab = fcmp reassoc nsz arcp contract afn olt double %i.m, %i.aa
  %. = select reassoc nsz arcp contract afn i1 %i.ab, double %i.aa, double %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.c ], [ %., %bb.d ]
  store double %i.ac, ptr %i.l, align 8, !tbaa !249
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !250 ; 3 uses
  %i.af = fcmp reassoc nsz arcp contract afn ogt double %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !171
  %i.ah = sitofp reassoc nsz arcp contract afn i32 %i.ag to double
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !172
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1448
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !177 ; 2 uses
  %i.al = fmul reassoc nsz arcp contract afn double %i.ak, %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !185
  %i.ao = sitofp reassoc nsz arcp contract afn i32 %i.an to float
  %i.ap = fmul reassoc nsz arcp contract afn float %i.k, %i.ao
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ap to double
  %i.ar = fsub reassoc nsz arcp contract afn double %i.al, %i.aq
  %i.as = fdiv reassoc nsz arcp contract afn double %i.ar, %i.ak ; 2 uses
  %i.at = fcmp reassoc nsz arcp contract afn olt double %i.ae, %i.as
  %.25 = select reassoc nsz arcp contract afn i1 %i.at, double %i.as, double %i.ae
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = phi reassoc nsz arcp contract afn double [ 0.000000e+00, %bb.e ], [ %.25, %bb.f ]
  store double %i.au, ptr %i.ad, align 8, !tbaa !250
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19
  call void @gtk_widget_queue_draw(ptr noundef %i.aw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: nounwind uwtable
define float @dt_thumbnail_get_zoom100(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !181 ; 2 uses
  %i.e = fcmp reassoc nsz arcp contract afn olt float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !171
  %i.f = load i32, ptr %0, align 8, !tbaa !86
  %i.g = call i32 @dt_image_get_final_size(i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !182  ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call fastcc void @_thumb_retrieve_margins(ptr noundef nonnull %0)
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !182
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %.pre, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load <2 x i32>, ptr %i.k, align 8, !tbaa !171
  %i.m = load <4 x i16>, ptr %i.j, align 2, !tbaa !183 ; 2 uses
  %i.n = shufflevector <4 x i16> %i.m, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.o = sext <2 x i16> %i.n to <2 x i32>
  %i.p = shufflevector <4 x i16> %i.m, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.q = sext <2 x i16> %i.p to <2 x i32>
  %i.r = add nsw <2 x i32> %i.o, %i.q
  %i.s = sub <2 x i32> %i.l, %i.r
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = load i32, ptr %i.a, align 4, !tbaa !171
  %i.v = load i32, ptr %i.b, align 4, !tbaa !171
  %i.w = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.v, i64 1
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = fdiv reassoc nsz arcp contract afn <2 x float> %i.y, %i.t ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1
  %i.ac = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aa, float %i.ab) ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.ac, 1.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.ad, float 1.000000e+00, float %i.ac ; 2 uses
  store float %spec.select, ptr %i.c, align 8, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.ae = phi float [ %spec.select, %bb.d ], [ %i.d, %bb.a ] ; 2 uses
  %i.af = fcmp reassoc nsz arcp contract afn olt float %i.ae, 1.000000e+00
  %spec.select18 = select reassoc nsz arcp contract afn i1 %i.af, float 1.000000e+00, float %i.ae
  ret float %spec.select18
}

declare i32 @dt_image_get_final_size(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

; Function Attrs: nounwind uwtable
define float @dt_thumbnail_get_zoom_ratio(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !181 ; 2 uses
  %i.e = fcmp reassoc nsz arcp contract afn olt float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 0, ptr %i.b, align 4, !tbaa !171
  %i.f = load i32, ptr %0, align 8, !tbaa !86
  %i.g = call i32 @dt_image_get_final_size(i32 noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !182  ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %dt_thumbnail_get_zoom100.exit

bb.c:                                             ; preds = %bb.b
  call fastcc void @_thumb_retrieve_margins(ptr noundef nonnull %0)
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !182
  br label %dt_thumbnail_get_zoom100.exit

dt_thumbnail_get_zoom100.exit:                    ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %.pre.i, %bb.c ], [ %i.i, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load <2 x i32>, ptr %i.k, align 8, !tbaa !171
  %i.m = load <4 x i16>, ptr %i.j, align 2, !tbaa !183 ; 2 uses
  %i.n = shufflevector <4 x i16> %i.m, <4 x i16> poison, <2 x i32> <i32 0, i32 2>
  %i.o = sext <2 x i16> %i.n to <2 x i32>
  %i.p = shufflevector <4 x i16> %i.m, <4 x i16> poison, <2 x i32> <i32 1, i32 3>
  %i.q = sext <2 x i16> %i.p to <2 x i32>
  %i.r = add nsw <2 x i32> %i.o, %i.q
  %i.s = sub <2 x i32> %i.l, %i.r
  %i.t = sitofp <2 x i32> %i.s to <2 x float>
  %i.u = load i32, ptr %i.a, align 4, !tbaa !171
  %i.v = load i32, ptr %i.b, align 4, !tbaa !171
  %i.w = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.v, i64 1
  %i.y = sitofp <2 x i32> %i.x to <2 x float>
  %i.z = fdiv reassoc nsz arcp contract afn <2 x float> %i.y, %i.t ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 0
  %i.ab = extractelement <2 x float> %i.z, i64 1
  %i.ac = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aa, float %i.ab) ; 2 uses
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.ac, 1.000000e+00
  %spec.select.i = select reassoc nsz arcp contract afn i1 %i.ad, float 1.000000e+00, float %i.ac ; 2 uses
  store float %spec.select.i, ptr %i.c, align 8, !tbaa !181
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.d

bb.d:                                             ; preds = %dt_thumbnail_get_zoom100.exit, %bb.a
  %i.ae = phi float [ %spec.select.i, %dt_thumbnail_get_zoom100.exit ], [ %i.d, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.ag = load float, ptr %i.af, align 4, !tbaa !180
  %i.ah = fadd reassoc nsz arcp contract afn float %i.ag, -1.000000e+00
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ae, -1.000000e+00
  %i.aj = fdiv reassoc nsz arcp contract afn float %i.ah, %i.ai
  ret float %i.aj
}

declare i32 @dt_view_get_current() local_unnamed_addr #1

declare void @dt_control_set_mouse_over_id(i32 noundef) local_unnamed_addr #1

declare void @dt_gui_gtk_set_source_rgb(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @cairo_paint(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @cairo_format_stride_for_width(i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cairo_image_surface_create_for_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #9

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #1

declare void @cairo_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

declare void @cairo_pattern_set_filter(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cairo_get_source(ptr noundef) local_unnamed_addr #1

declare void @cairo_save(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @dt_focuspeaking(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef readonly captures(none) %3) unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 23 uses
  %i.b = sext i32 %2 to i64                       ; 8 uses
  %i.c = mul nsw i64 %i.b, %i.a                   ; 6 uses
  %i.d = shl i64 %i.c, 2                          ; 2 uses
  %i.e = tail call ptr @dt_alloc_aligned(i64 noundef %i.d) #22 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.e, i64 64) ]
  %i.f = shl i32 %1, 2
  %i.g = mul i32 %i.f, %2
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @dt_alloc_aligned(i64 noundef %i.h) #22 ; 16 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.i, i64 64) ]
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 9
  br i1 %min.iters.check, label %.lr.ph.preheader419, label %vector.ph

.lr.ph.preheader419:                              ; preds = %vector.body, %.lr.ph.preheader
  %.0165192.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.j = and i64 %i.c, 7                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  %i.l = select i1 %i.k, i64 8, i64 %i.j
  %n.vec = sub i64 %i.c, %i.l                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.m = shl nuw i64 %index, 2
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.m
  %wide.vec = load <32 x i8>, ptr %i.n, align 1, !tbaa !189 ; 3 uses
  %strided.vec = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec295 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec296 = shufflevector <32 x i8> %wide.vec, <32 x i8> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.o = uitofp <8 x i8> %strided.vec to <8 x float>
  %i.p = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.o, splat (float f0x3B808081)
  %i.q = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.p, <8 x float> splat (float 4.400000e+00))
  %i.r = uitofp <8 x i8> %strided.vec295 to <8 x float>
  %i.s = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.r, splat (float f0x3B808081)
  %i.t = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.s, <8 x float> splat (float 4.400000e+00))
  %i.u = fadd reassoc nsz arcp contract afn <8 x float> %i.t, %i.q
  %i.v = uitofp <8 x i8> %strided.vec296 to <8 x float>
  %i.w = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.v, splat (float f0x3B808081)
  %i.x = tail call reassoc nsz arcp contract afn <8 x float> @llvm.pow.v8f32(<8 x float> %i.w, <8 x float> splat (float 4.400000e+00))
  %i.y = fadd reassoc nsz arcp contract afn <8 x float> %i.u, %i.x
  %i.z = tail call reassoc nsz arcp contract afn <8 x float> @llvm.sqrt.v8f32(<8 x float> %i.y)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index
  store <8 x float> %i.z, ptr %i.aa, align 32, !tbaa !190
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %.lr.ph.preheader419, label %vector.body, !llvm.loop !304

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call fastcc void @fast_surface_blur(ptr noundef %i.e, i64 noundef %i.a, i64 noundef %i.b)
  %i.ac = tail call ptr @dt_alloc_aligned(i64 noundef %i.d) #22 ; 18 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ac, i64 64) ]
  %.not236 = icmp ne i32 %2, 0                    ; 2 uses
  br i1 %.not236, label %.preheader191.lr.ph, label %._crit_edge205.split.thread

._crit_edge205.split.thread:                      ; preds = %._crit_edge
  tail call void @dt_box_mean(ptr noundef %i.ac, i64 noundef %i.b, i64 noundef %i.a, i32 noundef 1, i64 noundef 2, i32 noundef 1) #22
  br label %.preheader190.lr.ph

.preheader191.lr.ph:                              ; preds = %._crit_edge
  %.not237 = icmp eq i32 %1, 0
  %i.ad = add nsw i32 %2, -2                      ; 2 uses
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = add nsw i32 %1, -2
  %i.ag = sext i32 %i.af to i64
  br i1 %.not237, label %._crit_edge205.split, label %.preheader191.preheader

.preheader191.preheader:                          ; preds = %.preheader191.lr.ph
  %i.ah = shl nsw i64 %i.a, 2                     ; 2 uses
  %exitcond246.peel.not = icmp eq i32 %1, 1
  %exitcond246.peel256.not = icmp eq i32 %1, 2
  br label %.preheader191

.lr.ph:                                           ; preds = %.lr.ph.preheader419, %.lr.ph
  %.0165192 = phi i64 [ %i.bc, %.lr.ph ], [ %.0165192.ph, %.lr.ph.preheader419 ] ; 3 uses
  %i.ai = shl nuw i64 %.0165192, 2
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 %i.ai ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !189
  %i.al = uitofp reassoc nsz arcp contract afn i8 %i.ak to float
  %i.am = fmul reassoc nnan nsz arcp contract afn float %i.al, f0x3B808081
  %i.an = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.am, float 4.400000e+00)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !189
  %i.aq = uitofp reassoc nsz arcp contract afn i8 %i.ap to float
  %i.ar = fmul reassoc nnan nsz arcp contract afn float %i.aq, f0x3B808081
  %i.as = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ar, float 4.400000e+00)
  %i.at = fadd reassoc nsz arcp contract afn float %i.as, %i.an
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 2
  %i.av = load i8, ptr %i.au, align 1, !tbaa !189
  %i.aw = uitofp reassoc nsz arcp contract afn i8 %i.av to float
  %i.ax = fmul reassoc nnan nsz arcp contract afn float %i.aw, f0x3B808081
  %i.ay = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ax, float 4.400000e+00)
  %i.az = fadd reassoc nsz arcp contract afn float %i.at, %i.ay
  %i.ba = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.az)
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0165192
  store float %i.ba, ptr %i.bb, align 4, !tbaa !190
  %i.bc = add nuw i64 %.0165192, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bc, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !305

.preheader191:                                    ; preds = %.preheader191.preheader, %._crit_edge196
  %.0164204 = phi i64 [ %i.bi, %._crit_edge196 ], [ 0, %.preheader191.preheader ] ; 8 uses
  %i.bd = mul i64 %i.ah, %.0164204
  %scevgep258 = getelementptr i8, ptr %i.ac, i64 %i.bd
  %i.be = mul i64 %.0164204, %i.a                 ; 4 uses
  %i.bf = icmp ult i64 %.0164204, 2
  %i.bg = add i64 %.0164204, -1
  %i.bh = mul i64 %i.bg, %i.a
  %i.bi = add nuw i64 %.0164204, 1                ; 3 uses
  %i.bj = mul i64 %i.bi, %i.a
  %i.bk = add i64 %.0164204, -2
  %i.bl = mul i64 %i.bk, %i.a
  %i.bm = add i64 %.0164204, 2
  %i.bn = mul i64 %i.bm, %i.a
  %invariant.gep = getelementptr [4 x i8], ptr %i.e, i64 %i.be ; 4 uses
  %i.bo = getelementptr [4 x i8], ptr %i.e, i64 %i.bj ; 3 uses
  %i.bp = getelementptr [4 x i8], ptr %i.e, i64 %i.bh ; 3 uses
  %i.bq = getelementptr [4 x i8], ptr %i.e, i64 %i.bn ; 3 uses
  %i.br = getelementptr [4 x i8], ptr %i.e, i64 %i.bl ; 3 uses
  br i1 %i.bf, label %._crit_edge196.sink.split, label %.lr.ph195.split

.lr.ph195.split:                                  ; preds = %.preheader191
  %i.bs = icmp uge i64 %.0164204, %i.ae
  %.fr = freeze i1 %i.bs
  br i1 %.fr, label %._crit_edge196.sink.split, label %.lr.ph195.split.split.preheader

.lr.ph195.split.split.preheader:                  ; preds = %.lr.ph195.split
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %i.be
  store float 0.000000e+00, ptr %i.bt, align 4, !tbaa !190
  br i1 %exitcond246.peel.not, label %._crit_edge196, label %.lr.ph195.split.split.peel.next

.lr.ph195.split.split.peel.next:                  ; preds = %.lr.ph195.split.split.preheader
  %i.bu = getelementptr [4 x i8], ptr %i.ac, i64 %i.be
  %i.bv = getelementptr i8, ptr %i.bu, i64 4
end_hunk_4
