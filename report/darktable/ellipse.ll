Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/ellipse?download=true
inline.NumInlined: 96
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ellipse_events_post_expose:dt_masks_get_image_size.exit
_ellipse_get_points.exit:                         ; preds = %bb.d
  %i.bp = fcmp reassoc nsz arcp contract afn ogt float %i.ad, 0.000000e+00
  br i1 %i.bp, label %bb.f, label %_ellipse_get_points.exit169

bb.f:                                             ; preds = %_ellipse_get_points.exit
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87 ; 2 uses
  %i.br = and i32 %i.ah, 1
  %.not161 = icmp eq i32 %i.br, 0                 ; 2 uses
  %i.bs = fadd reassoc nnan nsz arcp contract afn float %i.ad, 1.000000e+00 ; 2 uses
  %i.bt = fmul reassoc nsz arcp contract afn float %i.al, %i.bs
  %i.bu = fadd reassoc nsz arcp contract afn float %i.al, %i.ad
  %i.bv = select reassoc nsz arcp contract afn i1 %.not161, float %i.bu, float %i.bt
  %i.bw = fmul reassoc nsz arcp contract afn float %i.ap, %i.bs
  %i.bx = fadd reassoc nsz arcp contract afn float %i.ap, %i.ad
  %i.by = select reassoc nsz arcp contract afn i1 %.not161, float %i.bx, float %i.bw
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.ca = load ptr, ptr %i.bz, align 16, !tbaa !114
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 144
  %i.cc = load <2 x i32>, ptr %i.cb, align 16, !tbaa !32
  %i.cd = sitofp <2 x i32> %i.cc to <2 x float>   ; 2 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = extractelement <2 x float> %i.cd, i64 1
  %i.cg = call fastcc ptr @_points_to_transform(float noundef %i.bb, float noundef %i.bc, float noundef %i.bv, float noundef %i.by, float noundef %i.at, float noundef %i.ce, float noundef %i.cf, ptr noundef nonnull %i.e) ; 4 uses
  %.not.i166 = icmp eq ptr %i.cg, null
  br i1 %.not.i166, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ch = load i32, ptr %i.e, align 4, !tbaa !32  ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = call i32 @dt_dev_distort_transform(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.cg, i64 noundef %i.ci) #12
  %.not15.i167 = icmp eq i32 %i.cj, 0
  br i1 %.not15.i167, label %bb.h, label %_ellipse_get_points.exit169

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.cg) #12
  store i32 0, ptr %i.e, align 4, !tbaa !32
  br label %.thread

_ellipse_get_points.exit169:                      ; preds = %bb.g, %_ellipse_get_points.exit
  %i.ck = phi i32 [ %i.ch, %bb.g ], [ 0, %_ellipse_get_points.exit ] ; 2 uses
  %.0181 = phi ptr [ %i.cg, %bb.g ], [ null, %_ellipse_get_points.exit ] ; 5 uses
  %i.cl = icmp sgt i32 %i.bm, 1
  br i1 %i.cl, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ellipse_get_points.exit169
  %i.cm = load float, ptr %i.bl, align 4, !tbaa !26
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !26
  call fastcc void @_ellipse_draw_shape(i32 noundef 0, i32 noundef 0, ptr noundef %0, i32 noundef 0, float noundef %1, float noundef %i.cm, float noundef %i.co, ptr noundef nonnull %i.bl, i32 noundef %i.bm)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ellipse_get_points.exit169
  %i.cp = icmp sgt i32 %i.ck, 1
  br i1 %i.cp, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.cq = load float, ptr %.0181, align 4, !tbaa !26
  %i.cr = getelementptr inbounds nuw i8, ptr %.0181, i64 4
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !26
  call fastcc void @_ellipse_draw_shape(i32 noundef 1, i32 noundef 0, ptr noundef %0, i32 noundef 0, float noundef %1, float noundef %i.cq, float noundef %i.cs, ptr noundef nonnull %.0181, i32 noundef %i.ck)
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.h, %bb.c, %bb.e, %bb.k, %bb.j
  %.0182186191197 = phi ptr [ %i.bl, %bb.j ], [ %i.bl, %bb.k ], [ %i.bl, %bb.h ], [ %i.bl, %bb.f ], [ null, %bb.e ], [ null, %bb.c ] ; 2 uses
  %.0181192196 = phi ptr [ %.0181, %bb.j ], [ %.0181, %bb.k ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.e ], [ null, %bb.c ] ; 2 uses
  %i.ct = load i32, ptr %i.z, align 8, !tbaa !27
  %i.cu = and i32 %i.ct, 8
  %.not162 = icmp eq i32 %i.cu, 0
  br i1 %.not162, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !26
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !26
  %i.cv = load float, ptr %i.au, align 4, !tbaa !167 ; 2 uses
  %i.cw = load float, ptr %i.av, align 8, !tbaa !168 ; 2 uses
  call void @dt_masks_calculate_source_pos_value(ptr noundef nonnull %2, i32 noundef 32, float noundef %i.cv, float noundef %i.cw, float noundef %i.cv, float noundef %i.cw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) #12
  %i.cx = load float, ptr %i.a, align 4, !tbaa !26
  %i.cy = load float, ptr %i.b, align 4, !tbaa !26
  call void @dt_masks_draw_clone_source_pos(ptr noundef %0, float noundef %1, float noundef %i.cx, float noundef %i.cy) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread
  %.not163 = icmp eq ptr %.0182186191197, null
  br i1 %.not163, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %.0182186191197) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not164 = icmp eq ptr %.0181192196, null
  br i1 %.not164, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %.0181192196) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.critedge

bb.r:                                             ; preds = %dt_masks_get_image_size.exit
  %.not152 = icmp eq ptr %i.q, null
  br i1 %.not152, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cz = load ptr, ptr %i.q, align 8, !tbaa !41  ; 3 uses
  %i.da = load float, ptr %i.cz, align 4, !tbaa !26 ; 18 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.dc = load float, ptr %i.db, align 4, !tbaa !26 ; 18 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.q, i64 40 ; 4 uses
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !37
  %i.df = icmp sgt i32 %i.de, 10
  br i1 %i.df, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dg = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !38 ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !26
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !26
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0144 = phi nsz float [ %i.di, %bb.t ], [ 0.000000e+00, %bb.s ]
  %.0143 = phi nsz float [ %i.dk, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 164 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !177
  %i.dn = icmp eq i32 %i.dm, %3
  br i1 %i.dn, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !20
  %.not153 = icmp eq i32 %i.dp, 0
  br i1 %.not153, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !140
  %i.ds = icmp ne i32 %i.dr, 0
  %i.dt = zext i1 %i.ds to i32
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.u
  %i.du = phi i32 [ 0, %bb.u ], [ 1, %bb.v ], [ %i.dt, %bb.w ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !225
  tail call fastcc void @_ellipse_draw_shape(i32 noundef 0, i32 noundef 0, ptr noundef %0, i32 noundef %i.du, float noundef %1, float noundef %i.da, float noundef %i.dc, ptr noundef nonnull %i.cz, i32 noundef %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !226
  %.not154 = icmp eq i32 %i.dy, 0
  br i1 %.not154, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dz = load i32, ptr %i.dl, align 4, !tbaa !177
  %i.ea = icmp eq i32 %i.dz, %3
  br i1 %i.ea, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.eb = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !159
  %i.ed = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !42
  %i.ef = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !43
  tail call fastcc void @_ellipse_draw_shape(i32 noundef 1, i32 noundef 0, ptr noundef %0, i32 noundef %i.ec, float noundef %1, float noundef %i.da, float noundef %i.dc, ptr noundef %i.ee, i32 noundef %i.eg)
  %i.eh = load ptr, ptr %i.q, align 8, !tbaa !41  ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !26 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !26
  %i.em = fsub reassoc nsz arcp contract afn float %i.ej, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.eo = load float, ptr %i.en, align 4, !tbaa !26 ; 2 uses
  %i.ep = load float, ptr %i.eh, align 4, !tbaa !26
  %i.eq = fsub reassoc nsz arcp contract afn float %i.eo, %i.ep
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.em, float %i.eq)
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.er) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 3 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 3 uses
  %i.es = fmul reassoc nsz arcp contract afn float %sin, %sin
  %i.et = fmul reassoc nsz arcp contract afn float %cos, %cos
  %i.eu = fadd reassoc nsz arcp contract afn float %i.et, %i.es ; 16 uses
  %i.ev = fmul reassoc nsz arcp contract afn float %cos, %sin ; 2 uses
  %i.ew = fsub reassoc nsz arcp contract afn float %i.ev, %i.ev ; 16 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 132 ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 84 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 4 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 4 uses
  %i.fb = fsub reassoc nsz arcp contract afn float %i.eo, %i.da ; 2 uses
  %i.fc = fmul reassoc nsz arcp contract afn float %i.fb, %i.eu
  %i.fd = fsub reassoc nsz arcp contract afn float %i.ej, %i.dc ; 2 uses
  %i.fe = fmul reassoc nsz arcp contract afn float %i.fd, %i.ew
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fb, %i.ew
  %i.fg = fmul reassoc nsz arcp contract afn float %i.fd, %i.eu
  %i.fh = fadd reassoc nsz arcp contract afn float %i.da, %i.fe
  %i.fi = fadd reassoc nsz arcp contract afn float %i.fh, %i.fc
  %i.fj = fadd reassoc nsz arcp contract afn float %i.dc, %i.fg
  %i.fk = fadd reassoc nsz arcp contract afn float %i.fj, %i.ff
  %i.fl = load i32, ptr %i.ex, align 4, !tbaa !153
  %i.fm = icmp eq i32 %i.fl, 1
  br i1 %i.fm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fn = load i32, ptr %i.ey, align 4, !tbaa !19
  %i.fo = icmp eq i32 %i.fn, 1
  %i.fp = zext i1 %i.fo to i32
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fq = phi i32 [ 1, %bb.z ], [ %i.fp, %bb.aa ]
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.fq, float noundef %1, float noundef %i.fi, float noundef %i.fk) #12
  %i.fr = load ptr, ptr %i.ed, align 8, !tbaa !42 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !26
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 12
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !26
  %i.fw = fsub reassoc nsz arcp contract afn float %i.ft, %i.da ; 2 uses
  %i.fx = fmul reassoc nsz arcp contract afn float %i.fw, %i.eu
  %i.fy = fsub reassoc nsz arcp contract afn float %i.fv, %i.dc ; 2 uses
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fy, %i.ew
  %i.ga = fmul reassoc nsz arcp contract afn float %i.fw, %i.ew
  %i.gb = fmul reassoc nsz arcp contract afn float %i.fy, %i.eu
  %i.gc = fadd reassoc nsz arcp contract afn float %i.da, %i.fz
  %i.gd = fadd reassoc nsz arcp contract afn float %i.gc, %i.fx
  %i.ge = fadd reassoc nsz arcp contract afn float %i.dc, %i.gb
  %i.gf = fadd reassoc nsz arcp contract afn float %i.ge, %i.ga
  %i.gg = load i32, ptr %i.ez, align 8, !tbaa !154
  %i.gh = icmp eq i32 %i.gg, 1
  br i1 %i.gh, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gi = load i32, ptr %i.fa, align 8, !tbaa !160
  %i.gj = icmp eq i32 %i.gi, 1
  %i.gk = zext i1 %i.gj to i32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.gl = phi i32 [ 1, %bb.ab ], [ %i.gk, %bb.ac ]
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.gl, float noundef %1, float noundef %i.gd, float noundef %i.gf) #12
  %i.gm = load ptr, ptr %i.q, align 8, !tbaa !41  ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.go = load float, ptr %i.gn, align 4, !tbaa !26
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 20
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !26
  %i.gr = fsub reassoc nsz arcp contract afn float %i.go, %i.da ; 2 uses
  %i.gs = fmul reassoc nsz arcp contract afn float %i.gr, %i.eu
  %i.gt = fsub reassoc nsz arcp contract afn float %i.gq, %i.dc ; 2 uses
  %i.gu = fmul reassoc nsz arcp contract afn float %i.gt, %i.ew
  %i.gv = fmul reassoc nsz arcp contract afn float %i.gr, %i.ew
  %i.gw = fmul reassoc nsz arcp contract afn float %i.gt, %i.eu
  %i.gx = fadd reassoc nsz arcp contract afn float %i.da, %i.gu
  %i.gy = fadd reassoc nsz arcp contract afn float %i.gx, %i.gs
  %i.gz = fadd reassoc nsz arcp contract afn float %i.dc, %i.gw
  %i.ha = fadd reassoc nsz arcp contract afn float %i.gz, %i.gv
  %i.hb = load i32, ptr %i.ex, align 4, !tbaa !153
  %i.hc = icmp eq i32 %i.hb, 2
  br i1 %i.hc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hd = load i32, ptr %i.ey, align 4, !tbaa !19
  %i.he = icmp eq i32 %i.hd, 2
  %i.hf = zext i1 %i.he to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.hg = phi i32 [ 1, %bb.ad ], [ %i.hf, %bb.ae ]
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.hg, float noundef %1, float noundef %i.gy, float noundef %i.ha) #12
  %i.hh = load ptr, ptr %i.ed, align 8, !tbaa !42 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !26
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 20
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !26
  %i.hm = fsub reassoc nsz arcp contract afn float %i.hj, %i.da ; 2 uses
  %i.hn = fmul reassoc nsz arcp contract afn float %i.hm, %i.eu
  %i.ho = fsub reassoc nsz arcp contract afn float %i.hl, %i.dc ; 2 uses
  %i.hp = fmul reassoc nsz arcp contract afn float %i.ho, %i.ew
  %i.hq = fmul reassoc nsz arcp contract afn float %i.hm, %i.ew
  %i.hr = fmul reassoc nsz arcp contract afn float %i.ho, %i.eu
  %i.hs = fadd reassoc nsz arcp contract afn float %i.da, %i.hp
  %i.ht = fadd reassoc nsz arcp contract afn float %i.hs, %i.hn
  %i.hu = fadd reassoc nsz arcp contract afn float %i.dc, %i.hr
  %i.hv = fadd reassoc nsz arcp contract afn float %i.hu, %i.hq
  %i.hw = load i32, ptr %i.ez, align 8, !tbaa !154
  %i.hx = icmp eq i32 %i.hw, 2
  br i1 %i.hx, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hy = load i32, ptr %i.fa, align 8, !tbaa !160
  %i.hz = icmp eq i32 %i.hy, 2
  %i.ia = zext i1 %i.hz to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ib = phi i32 [ 1, %bb.af ], [ %i.ia, %bb.ag ]
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.ib, float noundef %1, float noundef %i.ht, float noundef %i.hv) #12
  %i.ic = load ptr, ptr %i.q, align 8, !tbaa !41  ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 24
  %i.ie = load float, ptr %i.id, align 4, !tbaa !26
  %i.if = getelementptr inbounds nuw i8, ptr %i.ic, i64 28
  %i.ig = load float, ptr %i.if, align 4, !tbaa !26
  %i.ih = fsub reassoc nsz arcp contract afn float %i.ie, %i.da ; 2 uses
  %i.ii = fmul reassoc nsz arcp contract afn float %i.ih, %i.eu
  %i.ij = fsub reassoc nsz arcp contract afn float %i.ig, %i.dc ; 2 uses
  %i.ik = fmul reassoc nsz arcp contract afn float %i.ij, %i.ew
  %i.il = fmul reassoc nsz arcp contract afn float %i.ih, %i.ew
  %i.im = fmul reassoc nsz arcp contract afn float %i.ij, %i.eu
  %i.in = fadd reassoc nsz arcp contract afn float %i.da, %i.ik
  %i.io = fadd reassoc nsz arcp contract afn float %i.in, %i.ii
  %i.ip = fadd reassoc nsz arcp contract afn float %i.dc, %i.im
  %i.iq = fadd reassoc nsz arcp contract afn float %i.ip, %i.il
  %i.ir = load i32, ptr %i.ex, align 4, !tbaa !153
  %i.is = icmp eq i32 %i.ir, 3
  br i1 %i.is, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.it = load i32, ptr %i.ey, align 4, !tbaa !19
  %i.iu = icmp eq i32 %i.it, 3
  %i.iv = zext i1 %i.iu to i32
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.iw = phi i32 [ 1, %bb.ah ], [ %i.iv, %bb.ai ]
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.iw, float noundef %1, float noundef %i.io, float noundef %i.iq) #12
  %i.ix = load ptr, ptr %i.ed, align 8, !tbaa !42 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 24
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !26
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 28
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !26
  %i.jc = fsub reassoc nsz arcp contract afn float %i.iz, %i.da ; 2 uses
  %i.jd = fmul reassoc nsz arcp contract afn float %i.jc, %i.eu
  %i.je = fsub reassoc nsz arcp contract afn float %i.jb, %i.dc ; 2 uses
  %i.jf = fmul reassoc nsz arcp contract afn float %i.je, %i.ew
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jc, %i.ew
  %i.jh = fmul reassoc nsz arcp contract afn float %i.je, %i.eu
  %i.ji = fadd reassoc nsz arcp contract afn float %i.da, %i.jf
  %i.jj = fadd reassoc nsz arcp contract afn float %i.ji, %i.jd
  %i.jk = fadd reassoc nsz arcp contract afn float %i.dc, %i.jh
  %i.jl = fadd reassoc nsz arcp contract afn float %i.jk, %i.jg
  %i.jm = load i32, ptr %i.ez, align 8, !tbaa !154
  %i.jn = icmp eq i32 %i.jm, 3
  br i1 %i.jn, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jo = load i32, ptr %i.fa, align 8, !tbaa !160
  %i.jp = icmp eq i32 %i.jo, 3
  %i.jq = zext i1 %i.jp to i32
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.jr = phi i32 [ 1, %bb.aj ], [ %i.jq, %bb.ak ]
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.jr, float noundef %1, float noundef %i.jj, float noundef %i.jl) #12
  %i.js = load ptr, ptr %i.q, align 8, !tbaa !41  ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 32
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !26
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 36
  %i.jw = load float, ptr %i.jv, align 4, !tbaa !26
  %i.jx = fsub reassoc nsz arcp contract afn float %i.ju, %i.da ; 2 uses
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jx, %i.eu
  %i.jz = fsub reassoc nsz arcp contract afn float %i.jw, %i.dc ; 2 uses
  %i.ka = fmul reassoc nsz arcp contract afn float %i.jz, %i.ew
  %i.kb = fmul reassoc nsz arcp contract afn float %i.jx, %i.ew
  %i.kc = fmul reassoc nsz arcp contract afn float %i.jz, %i.eu
  %i.kd = fadd reassoc nsz arcp contract afn float %i.da, %i.ka
  %i.ke = fadd reassoc nsz arcp contract afn float %i.kd, %i.jy
  %i.kf = fadd reassoc nsz arcp contract afn float %i.dc, %i.kc
  %i.kg = fadd reassoc nsz arcp contract afn float %i.kf, %i.kb
  %i.kh = load i32, ptr %i.ex, align 4, !tbaa !153
  %i.ki = icmp eq i32 %i.kh, 4
  br i1 %i.ki, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.kj = load i32, ptr %i.ey, align 4, !tbaa !19
  %i.kk = icmp eq i32 %i.kj, 4
  %i.kl = zext i1 %i.kk to i32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.km = phi i32 [ 1, %bb.al ], [ %i.kl, %bb.am ]
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.km, float noundef %1, float noundef %i.ke, float noundef %i.kg) #12
  %i.kn = load ptr, ptr %i.ed, align 8, !tbaa !42 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !26
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 36
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !26
  %i.ks = fsub reassoc nsz arcp contract afn float %i.kp, %i.da ; 2 uses
  %i.kt = fmul reassoc nsz arcp contract afn float %i.ks, %i.eu
  %i.ku = fsub reassoc nsz arcp contract afn float %i.kr, %i.dc ; 2 uses
  %i.kv = fmul reassoc nsz arcp contract afn float %i.ku, %i.ew
  %i.kw = fmul reassoc nsz arcp contract afn float %i.ks, %i.ew
  %i.kx = fmul reassoc nsz arcp contract afn float %i.ku, %i.eu
  %i.ky = fadd reassoc nsz arcp contract afn float %i.da, %i.kv
  %i.kz = fadd reassoc nsz arcp contract afn float %i.ky, %i.kt
  %i.la = fadd reassoc nsz arcp contract afn float %i.dc, %i.kx
  %i.lb = fadd reassoc nsz arcp contract afn float %i.la, %i.kw
  %i.lc = load i32, ptr %i.ez, align 8, !tbaa !154
  %i.ld = icmp eq i32 %i.lc, 4
  br i1 %i.ld, label %.loopexit.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.le = load i32, ptr %i.fa, align 8, !tbaa !160
  %i.lf = icmp eq i32 %i.le, 4
  %i.lg = zext i1 %i.lf to i32
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.ao, %bb.an
  %i.lh = phi i32 [ 1, %bb.an ], [ %i.lg, %bb.ao ]
  tail call void @dt_masks_draw_anchor(ptr noundef %0, i32 noundef %i.lh, float noundef %1, float noundef %i.kz, float noundef %i.lb) #12
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.y
  %i.li = load i32, ptr %i.dd, align 8, !tbaa !37 ; 3 uses
  %i.lj = icmp sgt i32 %i.li, 10
  br i1 %i.lj, label %bb.ap, label %.critedge

bb.ap:                                            ; preds = %.loopexit
  %i.lk = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 4 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !38 ; 4 uses
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !26
  %i.ln = load ptr, ptr %i.q, align 8, !tbaa !41  ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !26
  %i.lp = fsub reassoc nsz arcp contract afn float %i.lm, %i.lo
  %i.lq = fcmp reassoc nsz arcp contract afn une float %i.lp, 0.000000e+00
  br i1 %i.lq, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !26
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !26
  %i.lv = fsub reassoc nsz arcp contract afn float %i.ls, %i.lu
  %i.lw = fcmp reassoc nsz arcp contract afn une float %i.lv, 0.000000e+00
  br i1 %i.lw, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void @cairo_set_line_cap(ptr noundef %0, i32 noundef 1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store float 0.000000e+00, ptr %i.f, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  store float 0.000000e+00, ptr %i.g, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !26
  %i.lx = load i32, ptr %i.dv, align 8, !tbaa !225
  %i.ly = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.lz = load ptr, ptr %i.lk, align 8, !tbaa !38 ; 2 uses
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !26
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lz, i64 4
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !26
  call void @dt_masks_closest_point(i32 noundef %i.lx, i32 noundef 6, ptr noundef %i.ly, float noundef %i.ma, float noundef %i.mc, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #12
  %i.md = load i32, ptr %i.dd, align 8, !tbaa !37
  %i.me = load ptr, ptr %i.lk, align 8, !tbaa !38
  %i.mf = load float, ptr %i.f, align 4, !tbaa !26
  %i.mg = load float, ptr %i.g, align 4, !tbaa !26
  call void @dt_masks_closest_point(i32 noundef %i.md, i32 noundef 6, ptr noundef %i.me, float noundef %i.mf, float noundef %i.mg, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #12
  %i.mh = load float, ptr %i.h, align 4, !tbaa !26
  %i.mi = load float, ptr %i.i, align 4, !tbaa !26
  %i.mj = load float, ptr %i.f, align 4, !tbaa !26
  %i.mk = load float, ptr %i.g, align 4, !tbaa !26
  call void @dt_masks_draw_arrow(ptr noundef %0, float noundef %i.mh, float noundef %i.mi, float noundef %i.mj, float noundef %i.mk, float noundef %1, i32 noundef 0) #12
  call void @dt_masks_stroke_arrow(ptr noundef %0, ptr noundef nonnull %2, i32 noundef %3, float noundef %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  %.pre = load ptr, ptr %i.lk, align 8, !tbaa !38
  %.pre200 = load i32, ptr %i.dd, align 8, !tbaa !37
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.ml = phi i32 [ %.pre200, %bb.ar ], [ %i.li, %bb.aq ], [ %i.li, %bb.ap ]
  %i.mm = phi ptr [ %.pre, %bb.ar ], [ %i.ll, %bb.aq ], [ %i.ll, %bb.ap ]
  call fastcc void @_ellipse_draw_shape(i32 noundef 0, i32 noundef 1, ptr noundef %0, i32 noundef %i.du, float noundef %1, float noundef %.0144, float noundef %.0143, ptr noundef %i.mm, i32 noundef %i.ml)
  br label %.critedge

.critedge:                                        ; preds = %bb.q, %bb.b, %.loopexit, %bb.as, %bb.r, %bb.a
  ret void
}

declare float @dt_conf_get_and_sanitize_float(ptr noundef, float noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @dt_conf_get_and_sanitize_int(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #1

declare void @dt_conf_set_float(ptr noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @dt_mouse_action_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @g_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @g_strlcat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

declare i32 @dt_conf_get_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @g_list_append(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @g_list_nth_data(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @dt_masks_point_in_form_near(float noundef, float noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dt_masks_get_image_size(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 64), align 8, !tbaa !87 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !114 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.e = load float, ptr %i.d, align 8, !tbaa !149 ; 2 uses
  %i.f = fcmp reassoc nsz arcp contract afn ogt float %i.e, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %i.f, float %i.e, float 1.000000e+00 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.h = load i32, ptr %i.g, align 4, !tbaa !150  ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not45 = icmp eq ptr %0, null
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = uitofp nneg i32 %i.h to float
  store float %i.j, ptr %0, align 4, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not46 = icmp eq ptr %1, null
  br i1 %.not46, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.l = load i32, ptr %i.k, align 16, !tbaa !151
  %i.m = sitofp reassoc nsz arcp contract afn i32 %i.l to float
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 2760
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !152  ; 3 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 156
  %i.q = load i32, ptr %i.p, align 4, !tbaa !150  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %.not43 = icmp eq ptr %0, null
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = uitofp nneg i32 %i.q to float
  %i.t = fdiv reassoc nsz arcp contract afn float %i.s, %spec.select
  store float %i.t, ptr %0, align 4, !tbaa !26
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not44 = icmp eq ptr %1, null
  br i1 %.not44, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.v = load i32, ptr %i.u, align 16, !tbaa !151
  %i.w = sitofp reassoc nsz arcp contract afn i32 %i.v to float
  %i.x = fdiv reassoc nsz arcp contract afn float %i.w, %spec.select
  br label %.sink.split

bb.l:                                             ; preds = %bb.g, %bb.f
  %.not41 = icmp eq ptr %0, null
end_hunk_0
begin_hunk_1_@_ellipse_points_to_transform:bb.a
  store <2 x float> %i.ak, ptr %i.r, align 64, !tbaa !26
  %i.al = shufflevector <6 x float> %i.ai, <6 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 2, i32 3> ; 2 uses
  %i.am = fadd reassoc nsz arcp contract afn <8 x float> %i.aj, %i.al
  %i.an = fsub reassoc nsz arcp contract afn <8 x float> %i.aj, %i.al
  %i.ao = shufflevector <8 x float> %i.am, <8 x float> %i.an, <8 x i32> <i32 2, i32 3, i32 8, i32 9, i32 6, i32 7, i32 12, i32 13>
  store <8 x float> %i.ao, ptr %i.v, align 8, !tbaa !26
  %i.ap = fneg reassoc nsz arcp contract afn float %sin
  %factor.op.fmul = fmul reassoc nsz arcp contract afn float %.102, %i.ap ; 2 uses
  %factor.op.fmul108 = fmul reassoc nsz arcp contract afn float %.102, %cos ; 2 uses
  %i.aq = icmp sgt i32 %i.n, 0
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.ar = uitofp nneg i32 %i.n to float           ; 2 uses
  %wide.trip.count = zext nneg i32 %i.o to i64    ; 2 uses
  %i.as = add nsw i64 %wide.trip.count, -5        ; 3 uses
  %min.iters.check = icmp ult i64 %i.as, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.as, -8                      ; 3 uses
  %i.at = or disjoint i64 %n.vec, 5
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.ar, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat114 = shufflevector <6 x float> %i.ai, <6 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat116 = shufflevector <6 x float> %i.ai, <6 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat118 = shufflevector <6 x float> %i.ai, <6 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splatinsert119 = insertelement <8 x float> poison, float %factor.op.fmul108, i64 0
  %broadcast.splat120 = shufflevector <8 x float> %broadcast.splatinsert119, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert121 = insertelement <8 x float> poison, float %factor.op.fmul, i64 0
  %broadcast.splat122 = shufflevector <8 x float> %broadcast.splatinsert121, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat124 = shufflevector <6 x float> %i.ai, <6 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %i.au = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.av = add <8 x i32> %vec.ind, splat (i32 -5)
  %i.aw = sitofp reassoc nsz arcp contract afn <8 x i32> %i.av to <8 x float>
  %i.ax = fmul reassoc nnan nsz arcp contract afn <8 x float> %i.aw, splat (float f0x40C90FDB)
  %i.ay = fmul reassoc nsz arcp contract afn <8 x float> %i.ax, %i.au
  %i.az = tail call reassoc nsz arcp contract afn { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float> %i.ay) ; 2 uses
  %i.ba = extractvalue { <8 x float>, <8 x float> } %i.az, 0 ; 2 uses
  %i.bb = extractvalue { <8 x float>, <8 x float> } %i.az, 1 ; 2 uses
  %i.bc = fmul reassoc nsz arcp contract afn <8 x float> %i.bb, %broadcast.splat114
  %i.bd = fmul reassoc nsz arcp contract afn <8 x float> %i.bb, %broadcast.splat116
  %i.be = fadd reassoc nsz arcp contract afn <8 x float> %i.bd, %broadcast.splat118
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %i.ba, %broadcast.splat120
  %i.bg = fmul reassoc nsz arcp contract afn <8 x float> %i.ba, %broadcast.splat122
  %i.bh = fadd reassoc nsz arcp contract afn <8 x float> %i.be, %i.bg
  %i.bi = shl i64 %index, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  %i.bl = fadd reassoc nsz arcp contract afn <8 x float> %i.bc, %broadcast.splat124
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %i.bl, %i.bf
  %interleaved.vec = shufflevector <8 x float> %i.bh, <8 x float> %i.bm, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x float> %interleaved.vec, ptr %i.bk, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !229

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 5, %.lr.ph ], [ %i.at, %middle.block ]
  %i.bo = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ar
  %i.bp = extractelement <6 x float> %i.ai, i64 1
  %i.bq = extractelement <6 x float> %i.ai, i64 0
  %i.br = extractelement <6 x float> %i.ai, i64 2
  %i.bs = extractelement <6 x float> %i.ai, i64 3
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.bt = trunc i64 %indvars.iv to i32
  %i.bu = add i32 %i.bt, -5
  %i.bv = sitofp reassoc nsz arcp contract afn i32 %i.bu to float
  %i.bw = fmul reassoc nnan nsz arcp contract afn float %i.bv, f0x40C90FDB
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bo
  %sincos99 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.bx) ; 2 uses
  %sin100 = extractvalue { float, float } %sincos99, 0 ; 2 uses
  %cos101 = extractvalue { float, float } %sincos99, 1 ; 2 uses
  %.reass107 = fmul reassoc nsz arcp contract afn float %cos101, %i.bp
  %.reass = fmul reassoc nsz arcp contract afn float %cos101, %i.bq
  %i.by = fadd reassoc nsz arcp contract afn float %.reass, %i.br
  %.reass109 = fmul reassoc nsz arcp contract afn float %sin100, %factor.op.fmul108
  %.reass105.reass = fmul reassoc nsz arcp contract afn float %sin100, %factor.op.fmul
  %i.bz = fadd reassoc nsz arcp contract afn float %i.by, %.reass105.reass
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx ; 2 uses
  store float %i.bz, ptr %i.ca, align 8, !tbaa !26
  %i.cb = fadd reassoc nsz arcp contract afn float %.reass107, %i.bs
  %i.cc = fadd reassoc nsz arcp contract afn float %i.cb, %.reass109
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  store float %i.cc, ptr %i.cd, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !230

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.b, %bb.a
  ret ptr %i.r
}

declare i32 @dt_dev_distort_backtransform(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @dt_masks_gui_form_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_control_queue_redraw_center() local_unnamed_addr #1

declare float @dt_masks_drag_factor(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #10

declare float @dt_masks_change_rotation(i32 noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_toast_log(ptr noundef, ...) local_unnamed_addr #1

declare float @dt_masks_change_size(i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_dev_masks_list_change(ptr noundef) local_unnamed_addr #1

declare float @dt_masks_form_change_opacity(ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @dt_dev_add_masks_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #1

declare void @dt_masks_set_edit_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_iop_update(ptr noundef) local_unnamed_addr #1

declare void @dt_masks_set_source_pos_initial_state(ptr noundef, i32 noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_masks_set_source_pos_initial_value(ptr noundef, i32 noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_masks_gui_form_save_creation(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_dev_add_history_item(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_set_edit_mode_single_form(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_dev_masks_selection_change(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_select_form(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @dt_masks_get_from_id(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_masks_create(i32 noundef) local_unnamed_addr #1

declare void @dt_masks_change_form_gui(ptr noundef) local_unnamed_addr #1

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_masks_clear_form_gui(ptr noundef) local_unnamed_addr #1

declare ptr @g_list_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_masks_form_remove(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_conf_set_int(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @_ellipse_draw_shape(i32 noundef range(i32 0, 2) %0, i32 noundef range(i32 0, 2) %1, ptr noundef %2, i32 noundef %3, float noundef %4, float noundef %5, float noundef %6, ptr nofree noundef readonly captures(none) %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %8, 11
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !26
  %i.d = load <2 x float>, ptr %7, align 4, !tbaa !26
  %i.e = fsub reassoc nsz arcp contract afn <2 x float> %i.c, %i.d ; 2 uses
  %i.f = extractelement <2 x float> %i.e, i64 0
  %i.g = extractelement <2 x float> %i.e, i64 1
  %i.h = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.g, float %i.f)
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.h) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 3 uses
  %cos = extractvalue { float, float } %sincos, 1 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.j = load float, ptr %i.i, align 4, !tbaa !26
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 2 uses
  %i.l = load float, ptr %i.k, align 4, !tbaa !26
  %i.m = fmul reassoc nsz arcp contract afn float %sin, %sin
  %i.n = fmul reassoc nsz arcp contract afn float %cos, %cos
  %i.o = fadd reassoc nsz arcp contract afn float %i.n, %i.m ; 6 uses
  %i.p = fsub reassoc nsz arcp contract afn float %i.j, %5 ; 2 uses
  %i.q = fmul reassoc nsz arcp contract afn float %i.o, %i.p
  %i.r = fmul reassoc nsz arcp contract afn float %cos, %sin ; 2 uses
  %i.s = fsub reassoc nsz arcp contract afn float %i.r, %i.r ; 6 uses
  %i.t = fsub reassoc nsz arcp contract afn float %i.l, %6 ; 2 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.s, %i.t
  %i.v = fmul reassoc nsz arcp contract afn float %i.s, %i.p
  %i.w = fmul reassoc nsz arcp contract afn float %i.o, %i.t
  %i.x = fadd reassoc nsz arcp contract afn float %5, %i.u
  %i.y = fadd reassoc nsz arcp contract afn float %i.x, %i.q
  %i.z = fadd reassoc nsz arcp contract afn float %6, %i.w
  %i.aa = fadd reassoc nsz arcp contract afn float %i.z, %i.v
  %i.ab = fpext reassoc nsz arcp contract afn float %i.y to double
  %i.ac = fpext reassoc nsz arcp contract afn float %i.aa to double
  tail call void @cairo_move_to(ptr noundef %2, double noundef %i.ab, double noundef %i.ac) #12
  %wide.trip.count = zext nneg i32 %8 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.ad = load float, ptr %i.i, align 4, !tbaa !26
  %i.ae = load float, ptr %i.k, align 4, !tbaa !26
  %i.af = fsub reassoc nsz arcp contract afn float %i.ad, %5 ; 2 uses
  %i.ag = fmul reassoc nsz arcp contract afn float %i.af, %i.o
  %i.ah = fsub reassoc nsz arcp contract afn float %i.ae, %6 ; 2 uses
  %i.ai = fmul reassoc nsz arcp contract afn float %i.ah, %i.s
  %i.aj = fmul reassoc nsz arcp contract afn float %i.af, %i.s
  %i.ak = fmul reassoc nsz arcp contract afn float %i.ah, %i.o
  %i.al = fadd reassoc nsz arcp contract afn float %5, %i.ai
  %i.am = fadd reassoc nsz arcp contract afn float %i.al, %i.ag
  %i.an = fadd reassoc nsz arcp contract afn float %6, %i.ak
  %i.ao = fadd reassoc nsz arcp contract afn float %i.an, %i.aj
  %i.ap = fpext reassoc nsz arcp contract afn float %i.am to double
  %i.aq = fpext reassoc nsz arcp contract afn float %i.ao to double
  tail call void @cairo_line_to(ptr noundef %2, double noundef %i.ap, double noundef %i.aq) #12
  tail call void @dt_masks_line_stroke(ptr noundef %2, i32 noundef %0, i32 noundef %1, i32 noundef %3, float noundef %4) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.d
  %indvars.iv = phi i64 [ 6, %bb.b ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 %.idx ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !26
  %i.av = fsub reassoc nsz arcp contract afn float %i.as, %5 ; 2 uses
  %i.aw = fmul reassoc nsz arcp contract afn float %i.av, %i.o
  %i.ax = fsub reassoc nsz arcp contract afn float %i.au, %6 ; 2 uses
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ax, %i.s
  %i.az = fmul reassoc nsz arcp contract afn float %i.av, %i.s
  %i.ba = fmul reassoc nsz arcp contract afn float %i.ax, %i.o
  %i.bb = fadd reassoc nsz arcp contract afn float %5, %i.ay
  %i.bc = fadd reassoc nsz arcp contract afn float %i.bb, %i.aw
  %i.bd = fadd reassoc nsz arcp contract afn float %6, %i.ba
  %i.be = fadd reassoc nsz arcp contract afn float %i.bd, %i.az
  %i.bf = fpext reassoc nsz arcp contract afn float %i.bc to double
  %i.bg = fpext reassoc nsz arcp contract afn float %i.be to double
  tail call void @cairo_line_to(ptr noundef %2, double noundef %i.bf, double noundef %i.bg) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.d

bb.e:                                             ; preds = %bb.a, %bb.c
  ret void
}

declare void @dt_masks_calculate_source_pos_value(ptr noundef, i32 noundef, float noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_draw_clone_source_pos(ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @dt_masks_draw_anchor(ptr noundef, i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_closest_point(i32 noundef, i32 noundef, ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @dt_masks_draw_arrow(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #1

declare void @dt_masks_stroke_arrow(ptr noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #1

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare void @dt_masks_line_stroke(ptr noundef, i32 noundef, i32 noundef, i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { <8 x float>, <8 x float> } @llvm.sincos.v8f32(<8 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.minnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v8f32(<8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }

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
!12 = !{!"p1 _ZTS6_GList", !11, i64 0}
!13 = !{!"p1 _ZTS17dt_masks_dynbuf_t", !11, i64 0}
!14 = !{!"float", !7, i64 0}
!15 = !{!"p1 _ZTS15dt_iop_module_t", !11, i64 0}
!16 = !{!"long", !7, i64 0}
!17 = !{!"dt_masks_form_gui_t", !12, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !14, i64 152, !14, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !15, i64 184, !15, i64 192, !8, i64 200, !8, i64 204, !16, i64 208, !11, i64 216, !11, i64 224}
!18 = !{!17, !8, i64 172}
!19 = !{!17, !8, i64 84}
!20 = !{!17, !8, i64 60}
!21 = !{!"p1 _ZTS20dt_masks_functions_t", !11, i64 0}
!22 = !{!"dt_masks_form_t", !12, i64 0, !8, i64 8, !21, i64 16, !7, i64 24, !7, i64 32, !8, i64 160, !8, i64 164}
!23 = !{!22, !12, i64 0}
!24 = !{!"_GList", !11, i64 0, !12, i64 8, !12, i64 16}
!25 = !{!24, !11, i64 0}
!26 = !{!14, !14, i64 0}
!27 = !{!22, !8, i64 8}
!28 = !{!"dt_masks_point_ellipse_t", !7, i64 0, !7, i64 8, !14, i64 16, !14, i64 20, !8, i64 24}
!29 = !{!28, !8, i64 24}
!30 = !{!28, !14, i64 20}
!31 = !{!28, !14, i64 16}
!32 = !{!8, !8, i64 0}
!33 = !{!12, !12, i64 0}
!34 = !{!17, !12, i64 0}
!35 = !{!"p1 float", !11, i64 0}
!36 = !{!"dt_masks_form_gui_points_t", !35, i64 0, !8, i64 8, !35, i64 16, !8, i64 24, !35, i64 32, !8, i64 40, !8, i64 44}
!37 = !{!36, !8, i64 40}
!38 = !{!36, !35, i64 32}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!36, !35, i64 0}
!42 = !{!36, !35, i64 16}
!43 = !{!36, !8, i64 24}
!44 = !{!"dt_codepath_t", !8, i64 0}
!45 = !{!"p1 _ZTS11_JsonParser", !11, i64 0}
!46 = !{!"p1 _ZTS9dt_conf_t", !11, i64 0}
!47 = !{!"p1 _ZTS12dt_develop_t", !11, i64 0}
!48 = !{!"p1 _ZTS8dt_lib_t", !11, i64 0}
!49 = !{!"p1 _ZTS17dt_view_manager_t", !11, i64 0}
!50 = !{!"p1 _ZTS12dt_control_t", !11, i64 0}
!51 = !{!"p1 _ZTS19dt_control_signal_t", !11, i64 0}
!52 = !{!"p1 _ZTS12dt_gui_gtk_t", !11, i64 0}
!53 = !{!"p1 _ZTS17dt_mipmap_cache_t", !11, i64 0}
!54 = !{!"p1 _ZTS16dt_image_cache_t", !11, i64 0}
!55 = !{!"p1 _ZTS12dt_bauhaus_t", !11, i64 0}
!56 = !{!"p1 _ZTS13dt_database_t", !11, i64 0}
!57 = !{!"p1 _ZTS14dt_pwstorage_t", !11, i64 0}
!58 = !{!"p1 _ZTS11dt_camctl_t", !11, i64 0}
!59 = !{!"p1 _ZTS15dt_collection_t", !11, i64 0}
!60 = !{!"p1 _ZTS14dt_selection_t", !11, i64 0}
!61 = !{!"p1 _ZTS11dt_points_t", !11, i64 0}
!62 = !{!"p1 _ZTS12dt_imageio_t", !11, i64 0}
!63 = !{!"p1 _ZTS11dt_opencl_t", !11, i64 0}
!64 = !{!"p1 _ZTS9dt_dbus_t", !11, i64 0}
!65 = !{!"p1 _ZTS9dt_undo_t", !11, i64 0}
!66 = !{!"p1 _ZTS16dt_colorspaces_t", !11, i64 0}
!67 = !{!"p1 _ZTS9dt_l10n_t", !11, i64 0}
!68 = !{!"dt_pthread_mutex_t", !7, i64 0}
!69 = !{!"p1 omnipotent char", !11, i64 0}
!70 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!71 = !{!"_Bool", !7, i64 0}
!72 = !{!"p1 _ZTS10_GMainLoop", !11, i64 0}
!73 = !{!"p1 _ZTS13_GMainContext", !11, i64 0}
!74 = !{!"p1 _ZTS12_GThreadPool", !11, i64 0}
!75 = !{!"p1 _ZTS12_GAsyncQueue", !11, i64 0}
!76 = !{!"", !70, i64 0, !68, i64 8, !7, i64 48, !71, i64 96, !71, i64 97, !72, i64 104, !73, i64 112, !74, i64 120, !75, i64 128, !75, i64 136, !75, i64 144}
!77 = !{!"double", !7, i64 0}
!78 = !{!"p1 _ZTS10_GTimeZone", !11, i64 0}
!79 = !{!"p1 _ZTS10_GDateTime", !11, i64 0}
!80 = !{!"p1 int", !11, i64 0}
!81 = !{!"dt_sys_resources_t", !16, i64 0, !16, i64 8, !80, i64 16, !80, i64 24, !8, i64 32}
!82 = !{!"dt_backthumb_t", !77, i64 0, !77, i64 8, !8, i64 16, !8, i64 20}
!83 = !{!"dt_gimp_t", !8, i64 0, !69, i64 8, !69, i64 16, !8, i64 24, !8, i64 28}
!84 = !{!"p1 _ZTS10_GtkWidget", !11, i64 0}
!85 = !{!"dt_splash_t", !84, i64 0, !84, i64 8, !84, i64 16, !84, i64 24, !8, i64 32}
!86 = !{!"darktable_t", !44, i64 0, !8, i64 4, !8, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !45, i64 48, !46, i64 56, !47, i64 64, !48, i64 72, !49, i64 80, !50, i64 88, !51, i64 96, !52, i64 104, !53, i64 112, !54, i64 120, !55, i64 128, !56, i64 136, !57, i64 144, !58, i64 152, !59, i64 160, !60, i64 168, !61, i64 176, !62, i64 184, !63, i64 192, !64, i64 200, !65, i64 208, !66, i64 216, !67, i64 224, !7, i64 232, !68, i64 2792, !68, i64 2832, !68, i64 2872, !68, i64 2912, !68, i64 2952, !68, i64 2992, !69, i64 3032, !69, i64 3040, !69, i64 3048, !69, i64 3056, !69, i64 3064, !69, i64 3072, !69, i64 3080, !69, i64 3088, !69, i64 3096, !69, i64 3104, !69, i64 3112, !69, i64 3120, !69, i64 3128, !76, i64 3136, !12, i64 3288, !77, i64 3296, !12, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !78, i64 3520, !79, i64 3528, !81, i64 3536, !82, i64 3576, !83, i64 3600, !85, i64 3632, !8, i64 3672}
!87 = !{!86, !47, i64 64}
!88 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !11, i64 0}
!89 = !{!"short", !7, i64 0}
!90 = !{!"", !89, i64 0, !89, i64 2}
!91 = !{!"", !8, i64 0, !7, i64 16}
!92 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !90, i64 48, !91, i64 64, !7, i64 96, !8, i64 112}
!93 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!94 = !{!"dt_image_geoloc_t", !77, i64 0, !77, i64 8, !77, i64 16}
!95 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!96 = !{!"p1 _ZTS16dt_cache_entry_t", !11, i64 0}
!97 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !16, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !14, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !16, i64 1448, !16, i64 1456, !16, i64 1464, !16, i64 1472, !8, i64 1480, !92, i64 1488, !7, i64 1616, !69, i64 1656, !8, i64 1664, !8, i64 1668, !93, i64 1672, !94, i64 1680, !95, i64 1704, !89, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !14, i64 1756, !14, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !12, i64 1856, !96, i64 1864, !8, i64 1872, !8, i64 1876}
!98 = !{!"p1 _ZTS15dt_masks_form_t", !11, i64 0}
!99 = !{!"p1 _ZTS19dt_masks_form_gui_t", !11, i64 0}
!100 = !{!"dt_dev_proxy_exposure_t", !15, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!101 = !{!"p1 _ZTS15dt_lib_module_t", !11, i64 0}
!102 = !{!"", !101, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64}
!103 = !{!"", !101, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!104 = !{!"", !100, i64 0, !15, i64 40, !102, i64 48, !103, i64 120}
end_hunk_1
