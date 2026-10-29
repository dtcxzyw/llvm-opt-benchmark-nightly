Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_overexposed?download=true
inline.NumInlined: 24
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@process:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 2552
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !136
  switch i32 %i.ar, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader267
    i32 2, label %.preheader269
    i32 3, label %.preheader271
  ]

.preheader271:                                    ; preds = %bb.e
  %i.as = load i32, ptr %i.ah, align 4, !tbaa !134
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 2
  %i.av = load i32, ptr %i.aj, align 4, !tbaa !135
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul i64 %i.au, %i.aw                    ; 2 uses
  %.not283 = icmp eq i64 %i.ax, 0
  br i1 %.not283, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader271
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.az = getelementptr inbounds nuw i8, ptr %i.ad, i64 576
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 712
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ad, i64 768
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ad, i64 704
  %i.bd = load i32, ptr %i.bc, align 64, !tbaa !138
  %i.be = getelementptr inbounds nuw i8, ptr %i.ad, i64 852
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !139
  %i.bg = insertelement <4 x float> poison, float %i.u, i64 0
  %i.bh = shufflevector <4 x float> %i.bg, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.ae

.preheader269:                                    ; preds = %bb.e
  %i.bi = load i32, ptr %i.ah, align 4, !tbaa !134
  %i.bj = sext i32 %i.bi to i64
  %i.bk = shl nsw i64 %i.bj, 2
  %i.bl = load i32, ptr %i.aj, align 4, !tbaa !135
  %i.bm = sext i32 %i.bl to i64
  %i.bn = mul i64 %i.bk, %i.bm                    ; 2 uses
  %.not284 = icmp eq i64 %i.bn, 0
  br i1 %.not284, label %.loopexit, label %.lr.ph277

.lr.ph277:                                        ; preds = %.preheader269
  %i.bo = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ad, i64 576
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ad, i64 712
  %i.br = getelementptr inbounds nuw i8, ptr %i.ad, i64 768
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ad, i64 704
  %i.bt = load i32, ptr %i.bs, align 64, !tbaa !138
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ad, i64 852
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !139
  br label %bb.y

.preheader267:                                    ; preds = %bb.e
  %i.bw = load i32, ptr %i.ah, align 4, !tbaa !134
  %i.bx = sext i32 %i.bw to i64
  %i.by = shl nsw i64 %i.bx, 2
  %i.bz = load i32, ptr %i.aj, align 4, !tbaa !135
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul i64 %i.by, %i.ca                    ; 2 uses
  %.not285 = icmp eq i64 %i.cb, 0
  br i1 %.not285, label %.loopexit, label %.lr.ph280

.lr.ph280:                                        ; preds = %.preheader267
  %i.cc = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ad, i64 576
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ad, i64 712
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ad, i64 768
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ad, i64 704
  %i.ch = load i32, ptr %i.cg, align 64, !tbaa !138
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ad, i64 852
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !139
  %i.ck = insertelement <4 x float> poison, float %i.u, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %bb.o

.preheader:                                       ; preds = %bb.e
  %i.cm = load i32, ptr %i.ah, align 4, !tbaa !134
  %i.cn = sext i32 %i.cm to i64
  %i.co = shl nsw i64 %i.cn, 2
  %i.cp = load i32, ptr %i.aj, align 4, !tbaa !135
  %i.cq = sext i32 %i.cp to i64
  %i.cr = mul i64 %i.co, %i.cq                    ; 2 uses
  %.not286 = icmp eq i64 %i.cr, 0
  br i1 %.not286, label %.loopexit, label %.lr.ph282

.lr.ph282:                                        ; preds = %.preheader
  %i.cs = load ptr, ptr %i.f, align 8, !tbaa !41
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.2) #17
  call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 4, ptr noundef %4, ptr noundef %5) #17
  %i.ct = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3, i32 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.ct) #17
  br label %dt_iop_alpha_copy.exit

bb.g:                                             ; preds = %.lr.ph282, %bb.n
  %.0227281 = phi i64 [ 0, %.lr.ph282 ], [ %i.dj, %bb.n ] ; 5 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.0227281 ; 3 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !67 ; 2 uses
  %i.cw = fcmp reassoc nsz arcp contract afn ult float %i.cv, %i.u
  br i1 %i.cw, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !67 ; 2 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ult float %i.cy, %i.u
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.db = load float, ptr %i.da, align 4, !tbaa !67 ; 2 uses
  %i.dc = fcmp reassoc nsz arcp contract afn ult float %i.db, %i.u
  br i1 %i.dc, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0227281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dd, ptr noundef nonnull readonly align 32 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa !67, !alias.scope !140
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.de = fcmp reassoc nsz arcp contract afn ugt float %i.cv, %i.r
  %i.df = fcmp reassoc nsz arcp contract afn ugt float %i.cy, %i.r
  %or.cond248 = or i1 %i.de, %i.df
  %i.dg = fcmp reassoc nsz arcp contract afn ugt float %i.db, %i.r
  %or.cond249 = or i1 %or.cond248, %i.dg
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0227281 ; 2 uses
  br i1 %or.cond249, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dh, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa !67, !alias.scope !141
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0227281
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dh, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.di, i64 16, i1 false), !tbaa !67, !alias.scope !142
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.m, %bb.l
  %i.dj = add nuw i64 %.0227281, 4                ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.cr
  br i1 %i.dk, label %bb.g, label %.loopexit

bb.o:                                             ; preds = %.lr.ph280, %bb.x
  %.0226279 = phi i64 [ 0, %.lr.ph280 ], [ %i.ff, %bb.x ] ; 7 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %.0226279 ; 3 uses
  %i.dm = call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef %i.dl, ptr noundef %i.cd, ptr noundef %i.ce, ptr noundef %i.cf, i32 noundef %i.ch, i32 noundef %i.cj) ; 6 uses
  %i.dn = fcmp reassoc nsz arcp contract afn ult float %i.dm, %i.u
  br i1 %i.dn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0226279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.do, ptr noundef nonnull readonly align 32 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa !67, !alias.scope !143
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  %i.dp = fcmp reassoc nsz arcp contract afn ugt float %i.dm, %i.r
  br i1 %i.dp, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0226279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.dq, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa !67, !alias.scope !144
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.dr = fmul reassoc nsz arcp contract afn float %i.dm, %i.dm ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !67 ; 5 uses
  %i.du = fsub reassoc nsz arcp contract afn float %i.dt, %i.dm ; 2 uses
  %i.dv = fmul reassoc nsz arcp contract afn float %i.du, %i.du
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dt, %i.dt
  %i.dx = fadd reassoc nsz arcp contract afn float %i.dw, %i.dr
  %i.dy = fdiv reassoc nsz arcp contract afn float %i.dv, %i.dx
  %i.dz = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.dy)
  %i.ea = fcmp reassoc nsz arcp contract afn ule float %i.dz, %i.u
  %i.eb = load <2 x float>, ptr %i.dl, align 4, !tbaa !67 ; 6 uses
  %i.ec = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ee = fsub reassoc nsz arcp contract afn <2 x float> %i.eb, %i.ed ; 2 uses
  %i.ef = fmul reassoc nsz arcp contract afn <2 x float> %i.ee, %i.ee
  %i.eg = fmul reassoc nsz arcp contract afn <2 x float> %i.eb, %i.eb
  %i.eh = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.ei = shufflevector <2 x float> %i.eh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = fadd reassoc nsz arcp contract afn <2 x float> %i.eg, %i.ei
  %i.ek = fdiv reassoc nsz arcp contract afn <2 x float> %i.ef, %i.ej
  %i.el = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.em = insertelement <4 x float> %i.el, float %i.dt, i64 1
  %i.en = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ek)
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ep = shufflevector <4 x float> %i.em, <4 x float> %i.eo, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.eq = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.ep, %i.cl
  %i.er = fcmp reassoc nsz arcp contract afn ule <4 x float> %i.ep, %i.cl
  %i.es = shufflevector <4 x i1> %i.eq, <4 x i1> %i.er, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.et = extractelement <2 x float> %i.eb, i64 0 ; 2 uses
  %i.eu = fcmp reassoc nsz arcp contract afn ult float %i.et, %i.u
  %i.ev = freeze <4 x i1> %i.es
  %i.ew = bitcast <4 x i1> %i.ev to i4
  %i.ex = icmp eq i4 %i.ew, -1
  %op.rdx = select i1 %i.ex, i1 %i.ea, i1 false
  %op.rdx343 = select i1 %op.rdx, i1 %i.eu, i1 false
  br i1 %op.rdx343, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0226279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ey, ptr noundef nonnull readonly align 32 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa !67, !alias.scope !145
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.ez = fcmp reassoc nsz arcp contract afn ugt float %i.et, %i.r
  %i.fa = extractelement <2 x float> %i.eb, i64 1
  %i.fb = fcmp reassoc nsz arcp contract afn ugt float %i.fa, %i.r
  %or.cond256 = or i1 %i.ez, %i.fb
  %i.fc = fcmp reassoc nsz arcp contract afn ugt float %i.dt, %i.r
  %or.cond257 = or i1 %or.cond256, %i.fc
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0226279 ; 2 uses
  br i1 %or.cond257, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fd, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa !67, !alias.scope !146
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0226279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fd, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fe, i64 16, i1 false), !tbaa !67, !alias.scope !147
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %bb.w, %bb.v, %bb.r, %bb.p
  %i.ff = add nuw i64 %.0226279, 4                ; 2 uses
  %i.fg = icmp ult i64 %i.ff, %i.cb
  br i1 %i.fg, label %bb.o, label %.loopexit

bb.y:                                             ; preds = %.lr.ph277, %bb.ad
  %.0224276 = phi i64 [ 0, %.lr.ph277 ], [ %i.fo, %bb.ad ] ; 5 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %.0224276
  %i.fi = call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef %i.fh, ptr noundef %i.bp, ptr noundef %i.bq, ptr noundef %i.br, i32 noundef %i.bt, i32 noundef %i.bv) ; 2 uses
  %i.fj = fcmp reassoc nsz arcp contract afn ult float %i.fi, %i.u
  br i1 %i.fj, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0224276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fk, ptr noundef nonnull readonly align 32 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa !67, !alias.scope !148
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.fl = fcmp reassoc nsz arcp contract afn ugt float %i.fi, %i.r
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0224276 ; 2 uses
  br i1 %i.fl, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fm, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa !67, !alias.scope !149
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0224276
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.fm, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.fn, i64 16, i1 false), !tbaa !67, !alias.scope !150
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.z
  %i.fo = add nuw i64 %.0224276, 4                ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.bn
  br i1 %i.fp, label %bb.y, label %.loopexit

bb.ae:                                            ; preds = %.lr.ph, %bb.al
  %.0223274 = phi i64 [ 0, %.lr.ph ], [ %i.hk, %bb.al ] ; 7 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.0223274 ; 3 uses
  %i.fr = call reassoc nsz arcp contract afn fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr noundef %i.fq, ptr noundef %i.az, ptr noundef %i.ba, ptr noundef %i.bb, i32 noundef %i.bd, i32 noundef %i.bf) ; 6 uses
  %i.fs = fcmp reassoc nsz arcp contract afn olt float %i.fr, %i.u
  %i.ft = fcmp reassoc nsz arcp contract afn ogt float %i.fr, %i.r
  %or.cond258 = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %or.cond258, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.fu = fmul reassoc nsz arcp contract afn float %i.fr, %i.fr ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !67 ; 5 uses
  %i.fx = fsub reassoc nsz arcp contract afn float %i.fw, %i.fr ; 2 uses
  %i.fy = fmul reassoc nsz arcp contract afn float %i.fx, %i.fx
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fw, %i.fw
  %i.ga = fadd reassoc nsz arcp contract afn float %i.fz, %i.fu
  %i.gb = fdiv reassoc nsz arcp contract afn float %i.fy, %i.ga
  %i.gc = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.gb)
  %i.gd = fcmp reassoc nsz arcp contract afn ule float %i.gc, %i.u
  %i.ge = load <2 x float>, ptr %i.fq, align 4, !tbaa !67 ; 6 uses
  %i.gf = insertelement <2 x float> poison, float %i.fr, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fsub reassoc nsz arcp contract afn <2 x float> %i.ge, %i.gg ; 2 uses
  %i.gi = fmul reassoc nsz arcp contract afn <2 x float> %i.gh, %i.gh
  %i.gj = fmul reassoc nsz arcp contract afn <2 x float> %i.ge, %i.ge
  %i.gk = insertelement <2 x float> poison, float %i.fu, i64 0
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = fadd reassoc nsz arcp contract afn <2 x float> %i.gj, %i.gl
  %i.gn = fdiv reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gm
  %i.go = shufflevector <2 x float> %i.ge, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gp = insertelement <4 x float> %i.go, float %i.fw, i64 1
  %i.gq = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gn)
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gs = shufflevector <4 x float> %i.gp, <4 x float> %i.gr, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.gt = fcmp reassoc nsz arcp contract afn ult <4 x float> %i.gs, %i.bh
  %i.gu = fcmp reassoc nsz arcp contract afn ule <4 x float> %i.gs, %i.bh
  %i.gv = shufflevector <4 x i1> %i.gt, <4 x i1> %i.gu, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gw = extractelement <2 x float> %i.ge, i64 0 ; 2 uses
  %i.gx = fcmp reassoc nsz arcp contract afn ult float %i.gw, %i.u
  %i.gy = freeze <4 x i1> %i.gv
  %i.gz = bitcast <4 x i1> %i.gy to i4
  %i.ha = icmp eq i4 %i.gz, -1
  %op.rdx344 = select i1 %i.ha, i1 %i.gd, i1 false
  %op.rdx345 = select i1 %op.rdx344, i1 %i.gx, i1 false
  br i1 %op.rdx345, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0223274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hb, ptr noundef nonnull readonly align 32 dereferenceable(16) %i.y, i64 16, i1 false), !tbaa !67, !alias.scope !151
  br label %bb.al

bb.ah:                                            ; preds = %bb.af
  %i.hc = fcmp reassoc nsz arcp contract afn ugt float %i.gw, %i.r
  %i.hd = extractelement <2 x float> %i.ge, i64 1
  %i.he = fcmp reassoc nsz arcp contract afn ugt float %i.hd, %i.r
  %or.cond265 = or i1 %i.hc, %i.he
  %i.hf = fcmp reassoc nsz arcp contract afn ugt float %i.fw, %i.r
  %or.cond266 = or i1 %or.cond265, %i.hf
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0223274 ; 2 uses
  br i1 %or.cond266, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hg, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa !67, !alias.scope !152
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0223274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hg, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.hh, i64 16, i1 false), !tbaa !67, !alias.scope !153
  br label %bb.al

bb.ak:                                            ; preds = %bb.ae
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0223274
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0223274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hi, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.hj, i64 16, i1 false), !tbaa !67, !alias.scope !154
  br label %bb.al

bb.al:                                            ; preds = %bb.ag, %bb.aj, %bb.ai, %bb.ak
  %i.hk = add nuw i64 %.0223274, 4                ; 2 uses
  %i.hl = icmp ult i64 %i.hk, %i.ax
  br i1 %i.hl, label %bb.ae, label %.loopexit

.loopexit:                                        ; preds = %bb.al, %bb.ad, %bb.x, %bb.n, %.preheader271, %.preheader269, %.preheader267, %.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.hm = load i32, ptr %i.a, align 4
  %i.hn = and i32 %i.hm, -32769
  %i.ho = or disjoint i32 %i.hn, %i.an
  store i32 %i.ho, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hp = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 628
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !155
  %i.hs = and i32 %i.hr, 1
  %.not247 = icmp eq i32 %i.hs, 0
  br i1 %.not247, label %dt_iop_alpha_copy.exit, label %bb.am

bb.am:                                            ; preds = %.loopexit
  %i.ht = load i32, ptr %i.ah, align 4, !tbaa !134
  %i.hu = sext i32 %i.ht to i64
  %i.hv = load i32, ptr %i.aj, align 4, !tbaa !135
  %i.hw = sext i32 %i.hv to i64
  %i.hx = shl nsw i64 %i.hu, 2
  %i.hy = mul i64 %i.hx, %i.hw                    ; 3 uses
  %.not.i = icmp eq i64 %i.hy, 0
  br i1 %.not.i, label %dt_iop_alpha_copy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.am
  %i.hz = call i64 @llvm.umax.i64(i64 %i.hy, i64 7)
  %i.ia = add i64 %i.hz, -4                       ; 3 uses
  %i.ib = lshr i64 %i.ia, 2
  %i.ic = add nuw nsw i64 %i.ib, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ia, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader347, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.id = getelementptr i8, ptr %3, i64 12
  %i.ie = shl i64 %i.ia, 2
  %i.if = and i64 %i.ie, -16
  %i.ig = add i64 %i.if, 16                       ; 2 uses
  %i.ih = getelementptr i8, ptr %3, i64 %i.ig
  %i.ii = getelementptr i8, ptr %2, i64 12
  %i.ij = getelementptr i8, ptr %2, i64 %i.ig
  %bound0 = icmp ult ptr %i.id, %i.ij
  %bound1 = icmp ult ptr %i.ii, %i.ih
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader347, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ik = and i64 %i.ic, 7                        ; 2 uses
  %i.il = icmp eq i64 %i.ik, 0
  %i.im = select i1 %i.il, i64 8, i64 %i.ik
  %n.vec = sub nsw i64 %i.ic, %i.im               ; 2 uses
  %i.in = shl i64 %n.vec, 2
  %i.io = or disjoint i64 %i.in, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 3, i64 7, i64 11, i64 15, i64 19, i64 23, i64 27, i64 31>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %.idx = shl nuw i64 %index, 4
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 12
  %wide.vec = load <32 x float>, ptr %i.iq, align 4, !tbaa !67, !alias.scope !156
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %3, <8 x i64> %vec.ind
  call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %strided.vec, <8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true)), !tbaa !67, !alias.scope !157, !noalias !156
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ir = icmp eq i64 %index.next, %n.vec
  br i1 %i.ir, label %.lr.ph.i.preheader347, label %vector.body, !llvm.loop !127

.lr.ph.i.preheader347:                            ; preds = %vector.body, %vector.memcheck, %.lr.ph.i.preheader
  %.09.i.ph = phi i64 [ 3, %vector.memcheck ], [ 3, %.lr.ph.i.preheader ], [ %i.io, %vector.body ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader347, %.lr.ph.i
  %.09.i = phi i64 [ %i.iv, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader347 ] ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.09.i
  %i.it = load float, ptr %i.is, align 4, !tbaa !67
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.09.i
  store float %i.it, ptr %i.iu, align 4, !tbaa !67
  %i.iv = add nuw i64 %.09.i, 4                   ; 2 uses
  %i.iw = icmp ult i64 %i.iv, %i.hy
  br i1 %i.iw, label %.lr.ph.i, label %dt_iop_alpha_copy.exit, !llvm.loop !128

dt_iop_alpha_copy.exit:                           ; preds = %.lr.ph.i, %bb.am, %.loopexit, %bb.f
  %i.ix = load ptr, ptr %i.f, align 8, !tbaa !41
  call void @free(ptr noundef %i.ix) #17
  br label %bb.an

bb.an:                                            ; preds = %dt_iop_alpha_copy.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %bb.an
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @dt_iop_alloc_image_buffers(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @dt_iop_copy_image_roi(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp2.f32(float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @dt_ioppr_get_histogram_profile_info(ptr noundef) local_unnamed_addr #3

declare void @dt_ioppr_transform_image_colorspace_rgb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_print_ext(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc float @dt_ioppr_get_rgb_matrix_luminance(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef nonnull readonly captures(none) %3, i32 noundef %4, i32 noundef %5) unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add nsw i32 %4, -1
  %i.b = sitofp reassoc nsz arcp contract afn i32 %i.a to float ; 9 uses
  %i.c = add nsw i32 %4, -2
  %i.d = sitofp reassoc nsz arcp contract afn i32 %i.c to float ; 6 uses
  %i.e = load ptr, ptr %2, align 8, !tbaa !41     ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !67
  %i.g = fcmp reassoc nsz arcp contract afn ult float %i.f, 0.000000e+00
  %i.h = load float, ptr %0, align 4, !tbaa !67   ; 4 uses
  br i1 %i.g, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = fcmp reassoc nsz arcp contract afn olt float %i.h, 1.000000e+00
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = fmul reassoc nsz arcp contract afn float %i.h, %i.b ; 3 uses
  %i.k = fcmp reassoc nsz arcp contract afn ogt float %i.j, 0.000000e+00
  %i.l = fcmp reassoc nsz arcp contract afn olt float %i.j, %i.b
  %..i.i = select reassoc nsz arcp contract afn i1 %i.l, float %i.j, float %i.b
  %i.m = select reassoc nsz arcp contract afn i1 %i.k, float %..i.i, float 0.000000e+00 ; 3 uses
  %i.n = fcmp reassoc nsz arcp contract afn olt float %i.m, %i.d
  %i.o = select reassoc nsz arcp contract afn i1 %i.n, float %i.m, float %i.d
  %i.p = fptosi float %i.o to i32                 ; 2 uses
  %i.q = sitofp reassoc nsz arcp contract afn i32 %i.p to float
  %i.r = fsub reassoc nnan nsz arcp contract afn float %i.m, %i.q
end_hunk_0
