Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorchecker?download=true
inline.NumInlined: 70
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 63
begin_hunk_0_@checker_button_press:bb.a
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cr, ptr nonnull align 4 %i.cs, i64 %i.cw, i1 false)
  %i.cx = load i32, ptr %i.o, align 4, !tbaa !17
  %i.cy = add nsw i32 %i.cx, -1
  store i32 %i.cy, ptr %i.o, align 4, !tbaa !17
  %i.cz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  call void @dt_dev_add_history_item(ptr noundef %i.cz, ptr noundef nonnull %2, i32 noundef 1) #23
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 104
  %i.dc = atomicrmw add ptr %i.db, i32 1 seq_cst, align 4 ; 0 uses
  call void @_colorchecker_rebuild_patch_list(ptr noundef nonnull %2)
  call void @_colorchecker_update_sliders(ptr noundef nonnull %2)
  %i.dd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 104
  %i.df = atomicrmw sub ptr %i.de, i32 1 seq_cst, align 4 ; 0 uses
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !64
  call void @gtk_widget_queue_draw(ptr noundef %i.dg) #23
  br label %bb.u

bb.h:                                             ; preds = %bb.b
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !235
  %i.dj = call i32 @gtk_accelerator_get_default_mod_mask() #23
  %i.dk = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !15
  %i.dl = or i32 %i.dk, %i.di
  %i.dm = and i32 %i.dl, %i.dj
  %.not = icmp eq i32 %i.dm, 1
  br i1 %.not, label %bb.i, label %.thread173

bb.i:                                             ; preds = %bb.h
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 492
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !73
  %i.dp = icmp eq i32 %i.do, 1
  br i1 %i.dp, label %bb.j, label %.thread173

bb.j:                                             ; preds = %bb.i
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.dr = load float, ptr %i.dq, align 16, !tbaa !12 ; 6 uses
  %i.ds = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dr)
  %i.dt = fcmp reassoc nsz arcp contract afn ogt float %i.ds, 1.000000e-03
  br i1 %i.dt, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 516
  %i.dv = load float, ptr %i.du, align 4, !tbaa !12
  %i.dw = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dv)
  %i.dx = fcmp reassoc nsz arcp contract afn ogt float %i.dw, 1.000000e-03
  br i1 %i.dx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.dz = load float, ptr %i.dy, align 8, !tbaa !12
  %i.ea = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.dz)
  %i.eb = fcmp reassoc nsz arcp contract afn ogt float %i.ea, 1.000000e-03
  %i.ec = zext i1 %i.eb to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ed = phi i32 [ 0, %bb.k ], [ 0, %bb.j ], [ %i.ec, %bb.l ] ; 6 uses
  %i.ee = load i32, ptr %i.o, align 4, !tbaa !17  ; 8 uses
  %i.ef = icmp sgt i32 %i.ee, 0
  br i1 %i.ef, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.m
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 392 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 516 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 520 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.ee to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ee, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check181 = icmp ult i32 %i.ee, 32
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ek = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x ptr> poison, ptr %i.ei, i64 0
  %broadcast.splat = shufflevector <8 x ptr> %broadcast.splatinsert, <8 x ptr> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert182 = insertelement <8 x ptr> poison, ptr %i.ej, i64 0
  %broadcast.splat183 = shufflevector <8 x ptr> %broadcast.splatinsert182, <8 x ptr> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert184 = insertelement <8 x float> poison, float %i.dr, i64 0
  %broadcast.splat185 = shufflevector <8 x float> %broadcast.splatinsert184, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.phi = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi186 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi206, %vector.body ]
  %vec.phi187 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi207, %vector.body ]
  %vec.phi188 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %predphi208, %vector.body ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 96
  %wide.load = load <8 x float>, ptr %i.el, align 4, !tbaa !12
  %wide.load189 = load <8 x float>, ptr %i.em, align 4, !tbaa !12
  %wide.load190 = load <8 x float>, ptr %i.en, align 4, !tbaa !12
  %wide.load191 = load <8 x float>, ptr %i.eo, align 4, !tbaa !12
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 96
  %wide.load192 = load <8 x float>, ptr %i.ep, align 4, !tbaa !12
  %wide.load193 = load <8 x float>, ptr %i.eq, align 4, !tbaa !12
  %wide.load194 = load <8 x float>, ptr %i.er, align 4, !tbaa !12
  %wide.load195 = load <8 x float>, ptr %i.es, align 4, !tbaa !12
  %i.et = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load
  %i.eu = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load189
  %i.ev = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load190
  %i.ew = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat185, %wide.load191
  %i.ex = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.et)
  %i.ey = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.eu)
  %i.ez = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ev)
  %i.fa = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ew)
  %i.fb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ex, splat (float 1.000000e-03) ; 4 uses
  %i.fc = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ey, splat (float 1.000000e-03) ; 4 uses
  %i.fd = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ez, splat (float 1.000000e-03) ; 4 uses
  %i.fe = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fa, splat (float 1.000000e-03) ; 4 uses
  %i.ff = getelementptr [4 x i8], ptr %i.eh, i64 %index ; 4 uses
  %i.fg = getelementptr i8, ptr %i.ff, i64 32
  %i.fh = getelementptr i8, ptr %i.ff, i64 64
  %i.fi = getelementptr i8, ptr %i.ff, i64 96
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.ff, <8 x i1> %i.fb, <8 x float> poison), !tbaa !12
  %wide.masked.load196 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fg, <8 x i1> %i.fc, <8 x float> poison), !tbaa !12
  %wide.masked.load197 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fh, <8 x i1> %i.fd, <8 x float> poison), !tbaa !12
  %wide.masked.load198 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fi, <8 x i1> %i.fe, <8 x float> poison), !tbaa !12
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fb, <8 x float> poison), !tbaa !12
  %wide.masked.gather199 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fc, <8 x float> poison), !tbaa !12
  %wide.masked.gather200 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fd, <8 x float> poison), !tbaa !12
  %wide.masked.gather201 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat, <8 x i1> %i.fe, <8 x float> poison), !tbaa !12
  %i.fj = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %wide.masked.load
  %i.fk = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather199, %wide.masked.load196
  %i.fl = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather200, %wide.masked.load197
  %i.fm = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather201, %wide.masked.load198
  %i.fn = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fj)
  %i.fo = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fk)
  %i.fp = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fl)
  %i.fq = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fm)
  %i.fr = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fn, splat (float 1.000000e-03) ; 2 uses
  %i.fs = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fo, splat (float 1.000000e-03) ; 2 uses
  %i.ft = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fp, splat (float 1.000000e-03) ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fq, splat (float 1.000000e-03) ; 2 uses
  %i.fv = select <8 x i1> %i.fb, <8 x i1> %i.fr, <8 x i1> zeroinitializer
  %i.fw = select <8 x i1> %i.fc, <8 x i1> %i.fs, <8 x i1> zeroinitializer
  %i.fx = select <8 x i1> %i.fd, <8 x i1> %i.ft, <8 x i1> zeroinitializer
  %i.fy = select <8 x i1> %i.fe, <8 x i1> %i.fu, <8 x i1> zeroinitializer
  %wide.masked.gather202 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fv, <8 x float> poison), !tbaa !12
  %wide.masked.gather203 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fw, <8 x float> poison), !tbaa !12
  %wide.masked.gather204 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fx, <8 x float> poison), !tbaa !12
  %wide.masked.gather205 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat183, <8 x i1> %i.fy, <8 x float> poison), !tbaa !12
  %i.fz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather202, %wide.load192
  %i.ga = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather203, %wide.load193
  %i.gb = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather204, %wide.load194
  %i.gc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather205, %wide.load195
  %i.gd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.fz)
  %i.ge = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ga)
  %i.gf = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gb)
  %i.gg = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gc)
  %i.gh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gd, splat (float 1.000000e-03)
  %i.gi = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.ge, splat (float 1.000000e-03)
  %i.gj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gf, splat (float 1.000000e-03)
  %i.gk = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gg, splat (float 1.000000e-03)
  %i.gl = select <8 x i1> %i.fb, <8 x i1> %i.fr, <8 x i1> zeroinitializer
  %i.gm = select <8 x i1> %i.fc, <8 x i1> %i.fs, <8 x i1> zeroinitializer
  %i.gn = select <8 x i1> %i.fd, <8 x i1> %i.ft, <8 x i1> zeroinitializer
  %i.go = select <8 x i1> %i.fe, <8 x i1> %i.fu, <8 x i1> zeroinitializer
  %i.gp = select <8 x i1> %i.gl, <8 x i1> %i.gh, <8 x i1> zeroinitializer
  %predphi = or <8 x i1> %vec.phi, %i.gp          ; 2 uses
  %i.gq = select <8 x i1> %i.gm, <8 x i1> %i.gi, <8 x i1> zeroinitializer
  %predphi206 = or <8 x i1> %vec.phi186, %i.gq    ; 2 uses
  %i.gr = select <8 x i1> %i.gn, <8 x i1> %i.gj, <8 x i1> zeroinitializer
  %predphi207 = or <8 x i1> %vec.phi187, %i.gr    ; 2 uses
  %i.gs = select <8 x i1> %i.go, <8 x i1> %i.gk, <8 x i1> zeroinitializer
  %predphi208 = or <8 x i1> %vec.phi188, %i.gs    ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i1> %predphi206, %predphi
  %bin.rdx209 = or <8 x i1> %predphi207, %bin.rdx
  %bin.rdx210 = or <8 x i1> %predphi208, %bin.rdx209
  %bin.rdx210.fr = freeze <8 x i1> %bin.rdx210
  %i.gu = bitcast <8 x i1> %bin.rdx210.fr to i8
  %.not232 = icmp eq i8 %i.gu, 0
  %rdx.select = select i1 %.not232, i32 %i.ed, i32 0 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ek, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !236

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %rdx.select, %vec.epilog.iter.check ], [ %i.ed, %vector.main.loop.iter.check ]
  %i.gv = icmp ne i32 %bc.merge.rdx, %i.ed
  %n.vec211 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert212.a = insertelement <8 x ptr> poison, ptr %i.ei, i64 0
  %broadcast.splat213.a = shufflevector <8 x ptr> %broadcast.splatinsert212.a, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert214 = insertelement <8 x ptr> poison, ptr %i.ej, i64 0
  %broadcast.splat215 = shufflevector <8 x ptr> %broadcast.splatinsert214, <8 x ptr> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert216 = insertelement <8 x float> poison, float %i.dr, i64 0
  %broadcast.splat217 = shufflevector <8 x float> %broadcast.splatinsert216, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert218 = insertelement <8 x i1> poison, i1 %i.gv, i64 0
  %broadcast.splat219 = shufflevector <8 x i1> %broadcast.splatinsert218, <8 x i1> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index220 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next228, %vec.epilog.vector.body ] ; 4 uses
  %vec.phi221 = phi <8 x i1> [ %broadcast.splat219, %vec.epilog.ph ], [ %predphi227.fr, %vec.epilog.vector.body ]
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index220
  %wide.load222 = load <8 x float>, ptr %i.gw, align 4, !tbaa !12
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index220
  %wide.load223 = load <8 x float>, ptr %i.gx, align 4, !tbaa !12
  %i.gy = fsub reassoc nsz arcp contract afn <8 x float> %broadcast.splat217, %wide.load222
  %i.gz = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.gy)
  %i.ha = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gz, splat (float 1.000000e-03) ; 4 uses
  %i.hb = getelementptr [4 x i8], ptr %i.eh, i64 %index220
  %wide.masked.load224 = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.hb, <8 x i1> %i.ha, <8 x float> poison), !tbaa !12
  %wide.masked.gather225 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %broadcast.splat213.a, <8 x i1> %i.ha, <8 x float> poison), !tbaa !12
  %i.hc = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather225, %wide.masked.load224
  %i.hd = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hc)
  %i.he = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.hd, splat (float 1.000000e-03) ; 2 uses
  %i.hf = select <8 x i1> %i.ha, <8 x i1> %i.he, <8 x i1> zeroinitializer
  %wide.masked.gather226 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 8 %broadcast.splat215, <8 x i1> %i.hf, <8 x float> poison), !tbaa !12
  %i.hg = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather226, %wide.load223
  %i.hh = call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.hg)
  %i.hi = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.hh, splat (float 1.000000e-03)
  %i.hj = select <8 x i1> %i.ha, <8 x i1> %i.he, <8 x i1> zeroinitializer
  %i.hk = select <8 x i1> %i.hj, <8 x i1> %i.hi, <8 x i1> zeroinitializer
  %predphi227 = or <8 x i1> %vec.phi221, %i.hk
  %predphi227.fr = freeze <8 x i1> %predphi227    ; 2 uses
  %index.next228 = add nuw i64 %index220, 8       ; 2 uses
  %i.hl = icmp eq i64 %index.next228, %n.vec211
  br i1 %i.hl, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !227

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hm = bitcast <8 x i1> %predphi227.fr to i8
  %.not233 = icmp eq i8 %i.hm, 0
  %rdx.select229 = select i1 %.not233, i32 %i.ed, i32 0 ; 2 uses
  %cmp.n230 = icmp eq i64 %n.vec211, %wide.trip.count
  br i1 %cmp.n230, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec211, %vec.epilog.middle.block ]
  %.0146174.ph = phi i32 [ %i.ed, %iter.check ], [ %rdx.select, %vec.epilog.iter.check ], [ %rdx.select229, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %bb.p, %middle.block, %vec.epilog.middle.block, %bb.m
  %.0146.lcssa = phi i32 [ %i.ed, %bb.m ], [ %rdx.select229, %vec.epilog.middle.block ], [ %rdx.select, %middle.block ], [ %.1, %bb.p ]
  %.not162 = icmp eq i32 %.0146.lcssa, 0
  br i1 %.not162, label %bb.u, label %bb.q

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %.0146174 = phi i32 [ %.1, %bb.p ], [ %.0146174.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !12
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !12
  %i.hr = fsub reassoc nsz arcp contract afn float %i.dr, %i.ho
  %i.hs = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hr)
  %i.ht = fcmp reassoc nsz arcp contract afn olt float %i.hs, 1.000000e-03
  br i1 %i.ht, label %bb.n, label %bb.p

bb.n:                                             ; preds = %vec.epilog.scalar.ph
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !12
  %i.hw = load float, ptr %i.ei, align 4, !tbaa !12
  %i.hx = fsub reassoc nsz arcp contract afn float %i.hw, %i.hv
  %i.hy = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.hx)
  %i.hz = fcmp reassoc nsz arcp contract afn olt float %i.hy, 1.000000e-03
  br i1 %i.hz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ia = load float, ptr %i.ej, align 8, !tbaa !12
  %i.ib = fsub reassoc nsz arcp contract afn float %i.ia, %i.hq
  %i.ic = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ib)
  %i.id = fcmp reassoc nsz arcp contract afn olt float %i.ic, 1.000000e-03
  %spec.select169 = select i1 %i.id, i32 0, i32 %.0146174
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %vec.epilog.scalar.ph
  %.1 = phi i32 [ %.0146174, %vec.epilog.scalar.ph ], [ %spec.select169, %bb.o ], [ %.0146174, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !228

bb.q:                                             ; preds = %._crit_edge
  %i.ie = icmp slt i32 %i.ee, 49
  br i1 %i.ie, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.if = icmp sgt i32 %i.ac, -1
  %.not163 = icmp slt i32 %i.ac, %i.ee
  %or.cond170 = and i1 %i.if, %.not163
  br i1 %or.cond170, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ig = add nsw i32 %i.ee, 1
  store i32 %i.ig, ptr %i.o, align 4, !tbaa !17
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.0147 = phi i32 [ %i.ee, %bb.s ], [ %i.ac, %bb.r ], [ %i.ac, %bb.q ] ; 4 uses
  %i.ih = sext i32 %.0147 to i64                  ; 6 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ih
  store float %i.dr, ptr %i.ii, align 4, !tbaa !12
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 588
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.ih
  store float %i.dr, ptr %i.ik, align 4, !tbaa !12
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 516
  %i.im = load float, ptr %i.il, align 4, !tbaa !12 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.io = getelementptr inbounds [4 x i8], ptr %i.in, i64 %i.ih
  store float %i.im, ptr %i.io, align 4, !tbaa !12
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 784
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.ip, i64 %i.ih
  store float %i.im, ptr %i.iq, align 4, !tbaa !12
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 520
  %i.is = load float, ptr %i.ir, align 8, !tbaa !12 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.it, i64 %i.ih
  store float %i.is, ptr %i.iu, align 4, !tbaa !12
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.iw = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.ih
  store float %i.is, ptr %i.iw, align 4, !tbaa !12
  %i.ix = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !113
  call void @dt_dev_add_history_item(ptr noundef %i.ix, ptr noundef %2, i32 noundef 1) #23
  %i.iy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 104
  %i.ja = atomicrmw add ptr %i.iz, i32 1 seq_cst, align 4 ; 0 uses
  call void @_colorchecker_rebuild_patch_list(ptr noundef %2)
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !63
  call void @dt_bauhaus_combobox_set(ptr noundef %i.jc, i32 noundef %.0147) #23
  call void @_colorchecker_update_sliders(ptr noundef %2)
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 104), align 8, !tbaa !112
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 104
  %i.jf = atomicrmw sub ptr %i.je, i32 1 seq_cst, align 4 ; 0 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 %.0147, ptr %i.jg, align 4, !tbaa !65
  %i.jh = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.0147, ptr %i.jh, align 8, !tbaa !62
  %i.ji = load ptr, ptr %i.d, align 8, !tbaa !64
  call void @gtk_widget_queue_draw(ptr noundef %i.ji) #23
  br label %bb.u

.thread173:                                       ; preds = %bb.a, %bb.e, %bb.i, %bb.h
  %i.jj = load i32, ptr %i.o, align 4, !tbaa !17
  %i.jk = add nsw i32 %i.jj, -1
  %spec.select172 = call i32 @llvm.smin.i32(i32 %i.ac, i32 %i.jk)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !63
  call void @dt_bauhaus_combobox_set(ptr noundef %i.jm, i32 noundef %spec.select172) #23
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.t, %bb.f, %bb.c, %.thread173, %bb.g, %bb.d
  %.0151 = phi i32 [ 0, %.thread173 ], [ 1, %bb.d ], [ 0, %bb.c ], [ 1, %bb.g ], [ 0, %bb.f ], [ 1, %._crit_edge ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i32 %.0151
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @checker_motion_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %3 = alloca %struct._cairo_rectangle_int, align 4 ; 4 uses
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 680
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 704
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @gtk_widget_get_allocation(ptr noundef %0, ptr noundef nonnull %3) #23
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load <2 x i32>, ptr %i.f, align 4, !tbaa !15 ; 2 uses
  %i.i = load <2 x double>, ptr %i.g, align 8, !tbaa !47 ; 3 uses
  %i.j = sitofp <2 x i32> %i.h to <2 x double>    ; 2 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt <2 x double> %i.i, %i.j
  %i.l = fcmp reassoc nsz arcp contract afn olt <2 x double> %i.i, zeroinitializer
  %i.m = select <2 x i1> %i.l, <2 x double> zeroinitializer, <2 x double> %i.i
  %i.n = select <2 x i1> %i.k, <2 x double> %i.j, <2 x double> %i.m
  %i.o = fptrunc <2 x double> %i.n to <2 x float>
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1176
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 24                    ; 2 uses
  %spec.select41 = select i1 %i.r, i32 7, i32 6   ; 2 uses
  %spec.select42 = select i1 %i.r, float 7.000000e+00, float 4.000000e+00
  %i.s = uitofp nneg i32 %spec.select41 to float
  %i.t = sitofp <2 x i32> %i.h to <2 x float>
  %i.u = insertelement <2 x float> poison, float %i.s, i64 0
  %i.v = insertelement <2 x float> %i.u, float %spec.select42, i64 1
  %i.w = fmul reassoc nsz arcp contract afn <2 x float> %i.v, %i.o
  %i.x = fdiv reassoc nsz arcp contract afn <2 x float> %i.w, %i.t ; 2 uses
  %i.y = extractelement <2 x float> %i.x, i64 0
  %i.z = fptosi float %i.y to i32
  %i.aa = extractelement <2 x float> %i.x, i64 1
  %i.ab = fptosi float %i.aa to i32
  %i.ac = mul nsw i32 %spec.select41, %i.ab
  %i.ad = add nsw i32 %i.ac, %i.z                 ; 3 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  %.not = icmp slt i32 %i.ad, %i.q
  %or.cond = and i1 %i.ae, %.not
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.af = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #23
  %i.ag = zext nneg i32 %i.ad to i64              ; 3 uses
end_hunk_0
