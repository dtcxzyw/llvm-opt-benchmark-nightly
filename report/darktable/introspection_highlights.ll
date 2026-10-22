Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 97
begin_hunk_0_@process_lch_bayer:bb.a
  %.2112.137 = phi nsz float [ %.2112.1, %.preheader.1 ], [ %.2112.1, %bb.l ], [ %i.dz, %bb.k ], [ %.2112.1, %bb.j ] ; 5 uses
  %.2.138 = phi nsz float [ %.2.1, %.preheader.1 ], [ %.2.1, %bb.l ], [ %.2.1, %bb.k ], [ %i.dp, %bb.j ] ; 3 uses
  %i.ea = getelementptr i8, ptr %i.do, i64 4
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !12 ; 7 uses
  %i.ec = fcmp reassoc nsz arcp contract afn ogt float %i.eb, %3
  %i.ed = select i1 %i.dr, i1 true, i1 %i.ec
  %i.ee = or disjoint i32 %i.df, %i.bd
  %i.ef = shl nuw nsw i32 %i.ee, 1
  %i.eg = lshr i32 %.516.val, %i.ef
  %i.eh = and i32 %i.eg, 3
  switch i32 %i.eh, label %default.unreachable [
    i32 0, label %bb.p
    i32 1, label %bb.o
    i32 2, label %bb.n
    i32 3, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  %i.ei = fcmp reassoc nsz arcp contract afn olt float %.2115.136, %i.eb
  %i.ej = select reassoc nsz arcp contract afn i1 %i.ei, float %.2115.136, float %i.eb
  %i.ek = fcmp reassoc nsz arcp contract afn ogt float %.2112.137, %i.eb
  %i.el = select reassoc nsz arcp contract afn i1 %i.ek, float %.2112.137, float %i.eb
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %.2118.1.1 = phi nsz float [ %.2118.135, %bb.m ], [ %i.eb, %bb.p ], [ %.2118.135, %bb.o ], [ %.2118.135, %bb.n ] ; 5 uses
  %.2115.1.1 = phi nsz float [ %.2115.136, %bb.m ], [ %.2115.136, %bb.p ], [ %i.ej, %bb.o ], [ %.2115.136, %bb.n ] ; 2 uses
  %.2112.1.1 = phi nsz float [ %.2112.137, %bb.m ], [ %.2112.137, %bb.p ], [ %i.el, %bb.o ], [ %.2112.137, %bb.n ] ; 4 uses
  %.2.1.1 = phi nsz float [ %.2.138, %bb.m ], [ %.2.138, %bb.p ], [ %.2.138, %bb.o ], [ %i.eb, %bb.n ] ; 5 uses
  br i1 %i.ed, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.em = fadd reassoc nsz arcp contract afn float %.2112.1.1, %.2118.1.1 ; 2 uses
  %i.en = fadd reassoc nsz arcp contract afn float %i.em, %.2.1.1
  %i.eo = fmul reassoc nsz arcp contract afn float %i.en, f0x3EAAAAAB ; 2 uses
  %i.ep = fsub reassoc nsz arcp contract afn float %.2118.1.1, %.2112.1.1
  %i.eq = fpext reassoc nsz arcp contract afn float %i.ep to x86_fp80
  %i.er = fmul reassoc nsz arcp contract afn x86_fp80 %i.eq, f0x3FFFDDB3D742C265539E
  %i.es = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.er to float ; 4 uses
  %i.et = fmul reassoc nsz arcp contract afn float %.2.1.1, 2.000000e+00
  %i.eu = fsub reassoc nsz arcp contract afn float %i.et, %i.em ; 4 uses
  %i.ev = fcmp reassoc nsz arcp contract afn une float %.2118.1.1, %.2112.1.1
  %i.ew = fcmp reassoc nsz arcp contract afn une float %.2112.1.1, %.2.1.1
  %or.cond = select i1 %i.ev, i1 %i.ew, i1 false
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ex = fcmp reassoc nsz arcp contract afn olt float %.2.1.1, %3
  %i.ey = select reassoc nsz arcp contract afn i1 %i.ex, float %.2.1.1, float %3
  %i.ez = fmul reassoc nsz arcp contract afn float %i.ey, 2.000000e+00
  %i.fa = fcmp reassoc nsz arcp contract afn olt float %.2115.1.1, %3
  %i.fb = select reassoc nsz arcp contract afn i1 %i.fa, float %.2115.1.1, float %3 ; 2 uses
  %i.fc = fcmp reassoc nsz arcp contract afn olt float %.2118.1.1, %3
  %i.fd = select reassoc nsz arcp contract afn i1 %i.fc, float %.2118.1.1, float %3 ; 2 uses
  %i.fe = fadd reassoc nsz arcp contract afn float %i.fd, %i.fb
  %i.ff = fsub reassoc nsz arcp contract afn float %i.ez, %i.fe ; 2 uses
  %i.fg = fsub reassoc nsz arcp contract afn float %i.fd, %i.fb
  %i.fh = fpext reassoc nsz arcp contract afn float %i.fg to x86_fp80
  %i.fi = fmul reassoc nsz arcp contract afn x86_fp80 %i.fh, f0x3FFFDDB3D742C265539E
  %i.fj = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.fi to float ; 2 uses
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, %i.fj
  %i.fl = fmul reassoc nsz arcp contract afn float %i.ff, %i.ff
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fk, %i.fl
  %i.fn = fmul reassoc nsz arcp contract afn float %i.es, %i.es
  %i.fo = fmul reassoc nsz arcp contract afn float %i.eu, %i.eu
  %i.fp = fadd reassoc nsz arcp contract afn float %i.fn, %i.fo
  %i.fq = fdiv reassoc nsz arcp contract afn float %i.fm, %i.fp
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.fq) ; 2 uses
  %i.fs = fmul reassoc nsz arcp contract afn float %i.fr, %i.es
  %i.ft = fmul reassoc nsz arcp contract afn float %i.fr, %i.eu
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0106 = phi nsz float [ %i.fs, %bb.s ], [ %i.es, %bb.r ]
  %.0 = phi nsz float [ %i.ft, %bb.s ], [ %i.eu, %bb.r ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.fu = fmul reassoc nsz arcp contract afn float %.0, f0x3E2AAAAB
  %i.fv = fsub reassoc nsz arcp contract afn float %i.eo, %i.fu
  %i.fw = fpext reassoc nsz arcp contract afn float %i.fv to x86_fp80 ; 2 uses
  %i.fx = fpext reassoc nsz arcp contract afn float %.0106 to x86_fp80
  %i.fy = fmul reassoc nsz arcp contract afn x86_fp80 %i.fx, f0x3FFD93CD3A2C8198E269 ; 2 uses
  %i.fz = fadd reassoc nsz arcp contract afn x86_fp80 %i.fy, %i.fw
  %i.ga = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.fz to float
  store float %i.ga, ptr %i.c, align 16, !tbaa !12
  %i.gb = fsub reassoc nsz arcp contract afn x86_fp80 %i.fw, %i.fy
  %i.gc = fptrunc reassoc nsz arcp contract afn x86_fp80 %i.gb to float
  store float %i.gc, ptr %i.k, align 4, !tbaa !12
  %i.gd = fmul reassoc nsz arcp contract afn float %.0, f0x3EAAAAAB
  %i.ge = fadd reassoc nsz arcp contract afn float %i.gd, %i.eo
  store float %i.ge, ptr %i.l, align 8, !tbaa !12
  %i.gf = zext nneg i32 %i.cu to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !12
  store float %i.gh, ptr %i.ck, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %bb.v

bb.u:                                             ; preds = %bb.q
  store float %i.cn, ptr %i.ck, align 4, !tbaa !12
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.b
  %indvars.iv.next.pre-phi = phi i64 [ %i.dd, %bb.t ], [ %i.dd, %bb.u ], [ %.pre, %bb.b ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_process_opposed(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef range(i32 0, 2) %6, i32 noundef range(i32 0, 2) %7, float noundef %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 28 uses
  %i.b = alloca [4 x float], align 16             ; 11 uses
  %i.c = alloca [4 x float], align 16             ; 12 uses
  %i.d = alloca [3 x i8], align 1                 ; 28 uses
  %i.e = alloca [4 x float], align 16             ; 8 uses
  %i.f = alloca [4 x float], align 16             ; 8 uses
  %i.g = alloca [4 x float], align 16             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 516
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80   ; 19 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  %i.n = load i32, ptr %i.m, align 16, !tbaa !96
  %.not = icmp eq i32 %i.n, 0
  %i.o = insertelement <2 x float> poison, float %8, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br i1 %.not, label %.thread335, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.r = load <2 x float>, ptr %i.q, align 16, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.t = load float, ptr %i.s, align 8, !tbaa !12
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %i.r, %i.p
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, %8
  br label %.thread335

.thread335:                                       ; preds = %bb.a, %bb.b
  %i.w = phi float [ %i.v, %bb.b ], [ %8, %bb.a ] ; 2 uses
  %i.x = phi <2 x float> [ %i.u, %bb.b ], [ %i.p, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store <2 x float> %i.x, ptr %i.a, align 16, !tbaa !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store float %i.w, ptr %i.y, align 8, !tbaa !12
  %.ptr309 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %.ptr309, align 4, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !99  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2480
  %i.ac = load i32, ptr %i.ab, align 16, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %.not312 = icmp eq i32 %i.ac, 0
  br i1 %.not312, label %.thread337, label %bb.c

.thread337:                                       ; preds = %.thread335
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.c:                                             ; preds = %.thread335
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 2416
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 2448
  %i.ag = load <2 x double>, ptr %i.ae, align 16, !tbaa !145
  %i.ah = load <2 x double>, ptr %i.af, align 16, !tbaa !145
  %i.ai = fdiv reassoc nsz arcp contract afn <2 x double> %i.ag, %i.ah
  %i.aj = fptrunc <2 x double> %i.ai to <2 x float>
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 2432
  %i.am = load double, ptr %i.al, align 16, !tbaa !145
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 2464
  %i.ao = load double, ptr %i.an, align 16, !tbaa !145
  %i.ap = fdiv reassoc nsz arcp contract afn double %i.am, %i.ao
  %i.aq = fptrunc reassoc nsz arcp contract afn double %i.ap to float
  br label %bb.d

bb.d:                                             ; preds = %.thread337, %bb.c
  %i.ar = phi ptr [ %i.ad, %.thread337 ], [ %i.ak, %bb.c ]
  %i.as = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.thread337 ], [ %i.aq, %bb.c ]
  %i.at = phi <2 x float> [ splat (float 1.000000e+00), %.thread337 ], [ %i.aj, %bb.c ]
  store <2 x float> %i.at, ptr %i.b, align 16, !tbaa !12
  store float %i.as, ptr %i.ar, align 4, !tbaa !12
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 1.000000e+00, ptr %i.au, align 4, !tbaa !12
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ax = load <2 x i32>, ptr %i.av, align 4, !tbaa !15 ; 3 uses
  %i.ay = sdiv <2 x i32> %i.ax, splat (i32 3)     ; 2 uses
  %i.az = extractelement <2 x i32> %i.ay, i64 0   ; 4 uses
  %i.ba = sext i32 %i.az to i64                   ; 15 uses
  %i.bb = extractelement <2 x i32> %i.ay, i64 1
  %i.bc = sext i32 %i.bb to i64                   ; 4 uses
  %i.bd = tail call i64 @dt_round_size(i64 noundef %i.ba, i64 noundef 4) #33 ; 2 uses
  %i.be = tail call i64 @dt_round_size(i64 noundef %i.bc, i64 noundef 4) #33 ; 2 uses
  %i.bf = mul i64 %i.be, %i.bd                    ; 12 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load ptr, ptr %i.bg, align 16, !tbaa !53 ; 4 uses
  %i.bi = tail call i64 @dt_dev_pixelpipe_piece_hash(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #33
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bk = mul i64 %i.bi, 33
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !97
  %i.bm = zext i8 %i.bl to i64
  %i.bn = xor i64 %i.bk, %i.bm
  %i.bo = mul i64 %i.bn, 33
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 17
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !97
  %i.br = zext i8 %i.bq to i64
  %i.bs = xor i64 %i.bo, %i.br
  %i.bt = mul i64 %i.bs, 33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 18
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !97
  %i.bw = zext i8 %i.bv to i64
  %i.bx = xor i64 %i.bt, %i.bw
  %i.by = mul i64 %i.bx, 33
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 19
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !97
  %i.cb = zext i8 %i.ca to i64
  %i.cc = xor i64 %i.by, %i.cb
  %i.cd = load ptr, ptr %1, align 16, !tbaa !98
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 664
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !99 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2480
  %i.ch = mul i64 %i.cc, 33
  %i.ci = load i8, ptr %i.cg, align 1, !tbaa !97
  %i.cj = zext i8 %i.ci to i64
  %i.ck = xor i64 %i.ch, %i.cj
  %i.cl = mul i64 %i.ck, 33
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 2481
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !97
  %i.co = zext i8 %i.cn to i64
  %i.cp = xor i64 %i.cl, %i.co
  %i.cq = mul i64 %i.cp, 33
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 2482
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !97
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %i.cq, %i.ct
  %i.cv = mul i64 %i.cu, 33
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 2483
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !97
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.da = load i64, ptr @img_opphash, align 8, !tbaa !100
  %i.db = icmp eq i64 %i.cz, %i.da
  br i1 %i.db, label %.preheader349.preheader, label %bb.f

.preheader349.preheader:                          ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.c, ptr noundef nonnull align 16 dereferenceable(12) @img_oppchroma, i64 12, i1 false), !tbaa !12
  %i.dc = load i32, ptr @img_oppclipped, align 4, !tbaa !15
  %i.dd = or i32 %i.dc, %6
  %or.cond.not = icmp eq i32 %i.dd, 0
  br i1 %or.cond.not, label %bb.e, label %bb.ab

bb.e:                                             ; preds = %.preheader349.preheader
  tail call void @dt_iop_copy_image_roi(ptr noundef %3, ptr noundef %2, i64 noundef 1, ptr noundef nonnull %4, ptr noundef %5) #33
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %.not313 = icmp eq i32 %7, 0
  br i1 %.not313, label %.thread338, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.de = mul i64 %i.bf, 6                        ; 2 uses
  %i.df = tail call ptr @dt_alloc_aligned(i64 noundef %i.de) #33 ; 23 uses
  %.not.i = icmp eq ptr %i.df, null
  br i1 %.not.i, label %.thread338, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.df, i8 0, i64 %i.de, i1 false)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.df, i64 64) ]
  %i.dg = add nsw i64 %i.bc, -1                   ; 3 uses
  %.not411 = icmp eq i64 %i.dg, 0
  br i1 %.not411, label %._crit_edge371.thread, label %.preheader357.lr.ph

.preheader357.lr.ph:                              ; preds = %bb.h
  %i.dh = add nsw i64 %i.ba, -1                   ; 3 uses
  %.not412 = icmp eq i64 %i.dh, 0
  br i1 %.not412, label %._crit_edge371.thread, label %.preheader357.lr.ph.split.us

.preheader357.lr.ph.split.us:                     ; preds = %.preheader357.lr.ph
  %i.di = icmp eq i32 %i.j, 9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 2 uses
  %i.dl = shl i64 %i.bf, 1                        ; 2 uses
  br i1 %i.di, label %.preheader357.us.us, label %.preheader357.us

.preheader357.us.us:                              ; preds = %.preheader357.lr.ph.split.us, %._crit_edge.split.us.us.us
  %indvars.iv454 = phi i64 [ %indvars.iv.next455, %._crit_edge.split.us.us.us ], [ 0, %.preheader357.lr.ph.split.us ] ; 3 uses
  %.0281369.us.us = phi i32 [ %i.ka, %._crit_edge.split.us.us.us ], [ 0, %.preheader357.lr.ph.split.us ]
  %i.dm = mul nuw nsw i64 %indvars.iv454, 3       ; 5 uses
  %i.dn = mul nsw i64 %indvars.iv454, %i.ba
  %invariant.gep.us.us = getelementptr i8, ptr %i.df, i64 %i.dn
  %i.do = trunc i64 %i.dm to i32
  %i.dp = trunc i64 %i.dm to i32
  %i.dq = add i32 %i.dp, 600
  %i.dr = urem i32 %i.dq, 6
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.ds ; 3 uses
  %i.du = trunc i64 %i.dm to i32
  %i.dv = add i32 %i.du, 1
  %i.dw = trunc i64 %i.dm to i32
  %i.dx = add i32 %i.dw, 2
  %i.dy = trunc i64 %i.dm to i32
  %i.dz = insertelement <2 x i32> poison, i32 %i.dy, i64 0
  %i.ea = shufflevector <2 x i32> %i.dz, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.eb = add <2 x i32> %i.ea, <i32 601, i32 602>
  %i.ec = urem <2 x i32> %i.eb, splat (i32 6)     ; 2 uses
  %i.ed = extractelement <2 x i32> %i.ec, i64 0
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.ee ; 3 uses
  %i.eg = extractelement <2 x i32> %i.ec, i64 1
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [6 x i8], ptr %i.h, i64 %i.eh ; 3 uses
  br label %.split362.us.us.us.us

.split362.us.us.us.us:                            ; preds = %.split362.us.us.us.us, %.preheader357.us.us
  %indvars.iv449 = phi i64 [ %indvars.iv.next450, %.split362.us.us.us.us ], [ 0, %.preheader357.us.us ] ; 3 uses
  %.1282367.us.us.us = phi i32 [ %i.ka, %.split362.us.us.us.us ], [ %.0281369.us.us, %.preheader357.us.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, i8 0, i64 3, i1 false)
  %i.ej = load i32, ptr %i.av, align 4, !tbaa !79 ; 3 uses
  %i.ek = mul nuw nsw i64 %indvars.iv449, 3       ; 3 uses
  %i.el = mul i32 %i.ej, %i.do
  %i.em = trunc nuw nsw i64 %i.ek to i32          ; 3 uses
  %invariant.op.us.us.us.us = add i32 %i.el, %i.em ; 3 uses
  %i.en = sext i32 %invariant.op.us.us.us.us to i64
  %i.eo = trunc i64 %i.ek to i32
  %i.ep = add i32 %i.eo, 600
  %i.eq = urem i32 %i.ep, 6
  %i.er = zext nneg i32 %i.eq to i64              ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !97
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.en
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !12
  %i.ew = zext i8 %i.et to i64                    ; 2 uses
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ew
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !12
  %i.ez = fcmp reassoc nsz arcp contract afn oge float %i.ev, %i.ey
  %i.fa = zext i1 %i.ez to i8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ew ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !97
  %i.fd = add i8 %i.fc, %i.fa
  store i8 %i.fd, ptr %i.fb, align 1, !tbaa !97
  %.reass.us.us.us.us.us.1 = add i32 %invariant.op.us.us.us.us, 1
  %i.fe = sext i32 %.reass.us.us.us.us.us.1 to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fe
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !12
  %.reass.us.us.us.us.us.2 = add i32 %invariant.op.us.us.us.us, 2
  %i.fh = sext i32 %.reass.us.us.us.us.us.2 to i64
  %i.fi = trunc i64 %i.ek to i32
  %i.fj = insertelement <2 x i32> poison, i32 %i.fi, i64 0
  %i.fk = shufflevector <2 x i32> %i.fj, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fl = add <2 x i32> %i.fk, <i32 601, i32 602>
  %i.fm = urem <2 x i32> %i.fl, splat (i32 6)     ; 2 uses
  %i.fn = extractelement <2 x i32> %i.fm, i64 0
  %i.fo = zext nneg i32 %i.fn to i64              ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.fo
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !97
  %i.fr = zext i8 %i.fq to i64                    ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !12
  %i.fu = fcmp reassoc nsz arcp contract afn oge float %i.fg, %i.ft
  %i.fv = zext i1 %i.fu to i8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fr ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !97
  %i.fy = add i8 %i.fx, %i.fv
  store i8 %i.fy, ptr %i.fw, align 1, !tbaa !97
  %i.fz = extractelement <2 x i32> %i.fm, i64 1
  %i.ga = zext nneg i32 %i.fz to i64              ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !97
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fh
  %i.ge = load float, ptr %i.gd, align 4, !tbaa !12
  %i.gf = zext i8 %i.gc to i64                    ; 2 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gf
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !12
  %i.gi = fcmp reassoc nsz arcp contract afn oge float %i.ge, %i.gh
  %i.gj = zext i1 %i.gi to i8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gf ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !97
  %i.gm = add i8 %i.gl, %i.gj
  store i8 %i.gm, ptr %i.gk, align 1, !tbaa !97
  %i.gn = mul i32 %i.ej, %i.dv
  %invariant.op.us.us.us.us.1 = add i32 %i.gn, %i.em ; 3 uses
  %i.go = sext i32 %invariant.op.us.us.us.us.1 to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.er
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !97
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.go
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !12
  %i.gt = zext i8 %i.gq to i64                    ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gt
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !12
  %i.gw = fcmp reassoc nsz arcp contract afn oge float %i.gs, %i.gv
  %i.gx = zext i1 %i.gw to i8
end_hunk_0
begin_hunk_1_@_process_opposed:bb.a
  %i.li = sext i32 %.reass.us.1 to i64
  %i.lj = trunc i64 %i.kq to i32
  %i.lk = and i32 %i.lj, 1
  %i.ll = xor i32 %i.lk, 1                        ; 3 uses
  %.tr.i.i.us.1 = or disjoint i32 %i.ll, %i.kg
  %i.lm = shl nuw nsw i32 %.tr.i.i.us.1, 1
  %i.ln = lshr i32 %i.j, %i.lm
  %i.lo = and i32 %i.ln, 3
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.li
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !12
  %i.lr = zext nneg i32 %i.lo to i64              ; 2 uses
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.lr
  %i.lt = load float, ptr %i.ls, align 4, !tbaa !12
  %i.lu = fcmp reassoc nsz arcp contract afn oge float %i.lq, %i.lt
  %i.lv = zext i1 %i.lu to i8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.lr ; 2 uses
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !97
  %i.ly = add i8 %i.lx, %i.lv
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !97
  %.reass.us.2 = add i32 %invariant.op.us, 2
  %i.lz = sext i32 %.reass.us.2 to i64
  %i.ma = trunc i64 %i.kq to i32
  %i.mb = and i32 %i.ma, 1                        ; 3 uses
  %.tr.i.i.us.2 = or disjoint i32 %i.mb, %i.kg
  %i.mc = shl nuw nsw i32 %.tr.i.i.us.2, 1
  %i.md = lshr i32 %i.j, %i.mc
  %i.me = and i32 %i.md, 3
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.lz
  %i.mg = load float, ptr %i.mf, align 4, !tbaa !12
  %i.mh = zext nneg i32 %i.me to i64              ; 2 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mh
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !12
  %i.mk = fcmp reassoc nsz arcp contract afn oge float %i.mg, %i.mj
  %i.ml = zext i1 %i.mk to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mh ; 2 uses
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !97
  %i.mo = add i8 %i.mn, %i.ml
  store i8 %i.mo, ptr %i.mm, align 1, !tbaa !97
  %i.mp = mul i32 %i.kp, %i.ki
  %invariant.op.us.1 = add i32 %i.mp, %i.ks       ; 3 uses
  %i.mq = sext i32 %invariant.op.us.1 to i64
  %.tr.i.i.us.1432 = or disjoint i32 %i.ku, %i.kk
  %i.mr = shl nuw nsw i32 %.tr.i.i.us.1432, 1
  %i.ms = lshr i32 %i.j, %i.mr
  %i.mt = and i32 %i.ms, 3
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.mq
  %i.mv = load float, ptr %i.mu, align 4, !tbaa !12
  %i.mw = zext nneg i32 %i.mt to i64              ; 2 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mw
  %i.my = load float, ptr %i.mx, align 4, !tbaa !12
  %i.mz = fcmp reassoc nsz arcp contract afn oge float %i.mv, %i.my
  %i.na = zext i1 %i.mz to i8
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.mw ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 1, !tbaa !97
  %i.nd = add i8 %i.nc, %i.na
  store i8 %i.nd, ptr %i.nb, align 1, !tbaa !97
  %.reass.us.1.1 = add i32 %invariant.op.us.1, 1
  %i.ne = sext i32 %.reass.us.1.1 to i64
  %.tr.i.i.us.1.1 = or disjoint i32 %i.ll, %i.kk
  %i.nf = shl nuw nsw i32 %.tr.i.i.us.1.1, 1
  %i.ng = lshr i32 %i.j, %i.nf
  %i.nh = and i32 %i.ng, 3
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ne
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !12
  %i.nk = zext nneg i32 %i.nh to i64              ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.nk
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !12
  %i.nn = fcmp reassoc nsz arcp contract afn oge float %i.nj, %i.nm
  %i.no = zext i1 %i.nn to i8
  %i.np = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.nk ; 2 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !97
  %i.nr = add i8 %i.nq, %i.no
  store i8 %i.nr, ptr %i.np, align 1, !tbaa !97
  %.reass.us.2.1 = add i32 %invariant.op.us.1, 2
  %i.ns = sext i32 %.reass.us.2.1 to i64
  %.tr.i.i.us.2.1 = or disjoint i32 %i.mb, %i.kk
  %i.nt = shl nuw nsw i32 %.tr.i.i.us.2.1, 1
  %i.nu = lshr i32 %i.j, %i.nt
  %i.nv = and i32 %i.nu, 3
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ns
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !12
  %i.ny = zext nneg i32 %i.nv to i64              ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ny
  %i.oa = load float, ptr %i.nz, align 4, !tbaa !12
  %i.ob = fcmp reassoc nsz arcp contract afn oge float %i.nx, %i.oa
  %i.oc = zext i1 %i.ob to i8
  %i.od = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ny ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !97
  %i.of = add i8 %i.oe, %i.oc
  store i8 %i.of, ptr %i.od, align 1, !tbaa !97
  %i.og = mul i32 %i.kp, %i.km
  %invariant.op.us.2 = add i32 %i.og, %i.ks       ; 3 uses
  %i.oh = sext i32 %invariant.op.us.2 to i64
  %.tr.i.i.us.2433 = or disjoint i32 %i.ku, %i.ko
  %i.oi = shl nuw nsw i32 %.tr.i.i.us.2433, 1
  %i.oj = lshr i32 %i.j, %i.oi
  %i.ok = and i32 %i.oj, 3
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.oh
  %i.om = load float, ptr %i.ol, align 4, !tbaa !12
  %i.on = zext nneg i32 %i.ok to i64              ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.on
  %i.op = load float, ptr %i.oo, align 4, !tbaa !12
  %i.oq = fcmp reassoc nsz arcp contract afn oge float %i.om, %i.op
  %i.or = zext i1 %i.oq to i8
  %i.os = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.on ; 2 uses
  %i.ot = load i8, ptr %i.os, align 1, !tbaa !97
  %i.ou = add i8 %i.ot, %i.or
  store i8 %i.ou, ptr %i.os, align 1, !tbaa !97
  %.reass.us.1.2 = add i32 %invariant.op.us.2, 1
  %i.ov = sext i32 %.reass.us.1.2 to i64
  %.tr.i.i.us.1.2 = or disjoint i32 %i.ll, %i.ko
  %i.ow = shl nuw nsw i32 %.tr.i.i.us.1.2, 1
  %i.ox = lshr i32 %i.j, %i.ow
  %i.oy = and i32 %i.ox, 3
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ov
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !12
  %i.pb = zext nneg i32 %i.oy to i64              ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pb
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !12
  %i.pe = fcmp reassoc nsz arcp contract afn oge float %i.pa, %i.pd
  %i.pf = zext i1 %i.pe to i8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pb ; 2 uses
  %i.ph = load i8, ptr %i.pg, align 1, !tbaa !97
  %i.pi = add i8 %i.ph, %i.pf
  store i8 %i.pi, ptr %i.pg, align 1, !tbaa !97
  %.reass.us.2.2 = add i32 %invariant.op.us.2, 2
  %i.pj = sext i32 %.reass.us.2.2 to i64
  %.tr.i.i.us.2.2 = or disjoint i32 %i.mb, %i.ko
  %i.pk = shl nuw nsw i32 %.tr.i.i.us.2.2, 1
  %i.pl = lshr i32 %i.j, %i.pk
  %i.pm = and i32 %i.pl, 3
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.pj
  %i.po = load float, ptr %i.pn, align 4, !tbaa !12
  %i.pp = zext nneg i32 %i.pm to i64              ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pp
  %i.pr = load float, ptr %i.pq, align 4, !tbaa !12
  %i.ps = fcmp reassoc nsz arcp contract afn oge float %i.po, %i.pr
  %i.pt = zext i1 %i.ps to i8
  %i.pu = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.pp ; 2 uses
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !97
  %i.pw = add i8 %i.pv, %i.pt
  store i8 %i.pw, ptr %i.pu, align 1, !tbaa !97
  %invariant.gep363.us376 = getelementptr i8, ptr %invariant.gep.us, i64 %indvars.iv ; 3 uses
  %i.px = load i8, ptr %i.d, align 1, !tbaa !97
  %.not319.us379 = icmp ne i8 %i.px, 0            ; 2 uses
  %i.py = zext i1 %.not319.us379 to i8
  store i8 %i.py, ptr %invariant.gep363.us376, align 1, !tbaa !97
  %i.pz = zext i1 %.not319.us379 to i32
  %i.qa = or i32 %.1282367.us375, %i.pz
  %i.qb = load i8, ptr %i.dj, align 1, !tbaa !97
  %.not319.us379.1 = icmp ne i8 %i.qb, 0          ; 2 uses
  %i.qc = zext i1 %.not319.us379.1 to i8
  %gep364.us380.1 = getelementptr i8, ptr %invariant.gep363.us376, i64 %i.bf
  store i8 %i.qc, ptr %gep364.us380.1, align 1, !tbaa !97
  %i.qd = zext i1 %.not319.us379.1 to i32
  %i.qe = or i32 %i.qa, %i.qd
  %i.qf = load i8, ptr %i.dk, align 1, !tbaa !97
  %.not319.us379.2 = icmp ne i8 %i.qf, 0          ; 2 uses
  %i.qg = zext i1 %.not319.us379.2 to i8
  %gep364.us380.2 = getelementptr i8, ptr %invariant.gep363.us376, i64 %i.dl
  store i8 %i.qg, ptr %gep364.us380.2, align 1, !tbaa !97
  %i.qh = zext i1 %.not319.us379.2 to i32
  %i.qi = or i32 %i.qe, %i.qh                     ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.dh
  br i1 %exitcond.not, label %._crit_edge.split.us382, label %.split362.us

._crit_edge.split.us382:                          ; preds = %.split362.us
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next436, %i.dg
  br i1 %exitcond438.not, label %._crit_edge371, label %.preheader357.us

._crit_edge371.thread:                            ; preds = %bb.h, %.preheader357.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  br label %bb.x

._crit_edge371:                                   ; preds = %._crit_edge.split.us382, %._crit_edge.split.us.us.us
  %.0281.lcssa = phi i32 [ %i.ka, %._crit_edge.split.us.us.us ], [ %i.qi, %._crit_edge.split.us382 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %.not315 = icmp eq i32 %.0281.lcssa, 0
  br i1 %.not315, label %bb.x, label %.preheader354

.preheader354:                                    ; preds = %._crit_edge371
  %i.qj = extractelement <2 x i32> %i.ax, i64 1
  %.off = add i32 %i.qj, 2
  %.not413 = icmp ult i32 %.off, 5
  br i1 %.not413, label %._crit_edge390.split, label %.preheader353.lr.ph

.preheader353.lr.ph:                              ; preds = %.preheader354
  %invariant.gep = getelementptr i8, ptr %i.df, i64 %i.bf ; 11 uses
  %i.qk = extractelement <2 x i32> %i.ax, i64 0   ; 3 uses
  %.off415 = add i32 %i.qk, 2
  %.not414 = icmp ult i32 %.off415, 5
  %i.ql = add nsw i64 %i.ba, -4
  %i.qm = add nsw i64 %i.bc, -4
  %9 = mul i64 %i.bf, 3
  %i.qn = getelementptr i8, ptr %i.df, i64 %9     ; 11 uses
  %10 = shl i64 %i.bf, 2
  %i.qo = getelementptr i8, ptr %i.df, i64 %10    ; 11 uses
  %i.qp = shl i64 %i.bf, 1
  %invariant.gep386 = getelementptr i8, ptr %i.df, i64 %i.qp ; 11 uses
  %i.qq = mul i64 %i.bf, 5                        ; 2 uses
  %i.qr = getelementptr i8, ptr %i.df, i64 %i.qq  ; 11 uses
  br i1 %.not414, label %._crit_edge390.split, label %.preheader353.preheader

.preheader353.preheader:                          ; preds = %.preheader353.lr.ph
  %11 = insertelement <2 x i64> poison, i64 %i.bf, i64 0 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1) ; 5 uses
  %umax477 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 1)
  %exitcond463.peel.not = icmp ult i32 %i.az, 2
  %.off521 = add i32 %i.qk, -6
  %exitcond463.peel469.not = icmp ult i32 %.off521, 3
  %.off522 = add i32 %i.qk, -9
  %exitcond463.peel475.not = icmp ult i32 %.off522, 3
  %i.qs = mul i64 %i.bd, %i.be                    ; 2 uses
  %i.qt = shufflevector <2 x i64> %11, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.qu = shl <4 x i64> %i.qt, <i64 0, i64 1, i64 poison, i64 poison>
  %12 = shufflevector <2 x i64> %11, <2 x i64> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %13 = mul <4 x i64> %12, <i64 3, i64 4, i64 poison, i64 poison>
  %i.qv = shufflevector <4 x i64> %i.qu, <4 x i64> %13, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %min.iters.check = icmp ult i32 %i.az, 8
  %i.qw = add <4 x i64> %i.qv, splat (i64 -1)
  %i.qx = shl i64 %i.qs, 1
  %diff.check541 = icmp ugt i64 %i.qx, -64
  %diff.check543 = icmp ugt i64 %i.qs, -64
  %i.qy = icmp ult <4 x i64> %i.qw, splat (i64 63)
  %i.qz = add i64 %i.qq, -1
  %diff.check547 = icmp ult i64 %i.qz, 63
  %i.ra = bitcast <4 x i1> %i.qy to i4
  %i.rb = icmp ne i4 %i.ra, 0
  %op.rdx = or i1 %i.rb, %diff.check547
  %op.rdx607 = or i1 %diff.check541, %diff.check543
  %op.rdx608 = or i1 %op.rdx, %op.rdx607
  %min.iters.check549 = icmp ult i32 %i.az, 64
  %i.rc = and i64 %umax, 56
  %n.vec = and i64 %umax, -64                     ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ba
  %min.epilog.iters.check = icmp eq i64 %i.rc, 0
  %n.vec555 = and i64 %umax, -8                   ; 3 uses
  %cmp.n561 = icmp eq i64 %n.vec555, %i.ba
  %xtraiter = and i64 %umax, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader353

.preheader353:                                    ; preds = %.preheader353.preheader, %._crit_edge
  %.0274389 = phi i64 [ %i.uy, %._crit_edge ], [ 0, %.preheader353.preheader ] ; 4 uses
  %i.rd = mul i64 %.0274389, %i.ba                ; 16 uses
  %i.re = icmp ugt i64 %.0274389, 2
  %i.rf = icmp ult i64 %.0274389, %i.qm
  %.fr = freeze i1 %i.rf
  %i.rg = and i1 %.fr, %i.re
  br i1 %i.rg, label %bb.i, label %iter.check

iter.check:                                       ; preds = %.preheader353
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx608
  br i1 %brmerge, label %.lr.ph.split.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check549, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %i.rh = add i64 %index, %i.rd                   ; 6 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.rh ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 32
  %wide.load = load <32 x i8>, ptr %i.ri, align 1, !tbaa !97
  %wide.load550 = load <32 x i8>, ptr %i.rj, align 1, !tbaa !97
  %i.rk = getelementptr i8, ptr %i.qn, i64 %i.rh  ; 2 uses
  %i.rl = getelementptr i8, ptr %i.rk, i64 32
  store <32 x i8> %wide.load, ptr %i.rk, align 1, !tbaa !97
  store <32 x i8> %wide.load550, ptr %i.rl, align 1, !tbaa !97
  %i.rm = getelementptr i8, ptr %invariant.gep, i64 %i.rh ; 2 uses
  %i.rn = getelementptr i8, ptr %i.rm, i64 32
  %wide.load551 = load <32 x i8>, ptr %i.rm, align 1, !tbaa !97
  %wide.load552 = load <32 x i8>, ptr %i.rn, align 1, !tbaa !97
  %i.ro = getelementptr i8, ptr %i.qo, i64 %i.rh  ; 2 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 32
  store <32 x i8> %wide.load551, ptr %i.ro, align 1, !tbaa !97
  store <32 x i8> %wide.load552, ptr %i.rp, align 1, !tbaa !97
  %i.rq = getelementptr i8, ptr %invariant.gep386, i64 %i.rh ; 2 uses
  %i.rr = getelementptr i8, ptr %i.rq, i64 32
  %wide.load553 = load <32 x i8>, ptr %i.rq, align 1, !tbaa !97
  %wide.load554 = load <32 x i8>, ptr %i.rr, align 1, !tbaa !97
  %i.rs = getelementptr i8, ptr %i.qr, i64 %i.rh  ; 2 uses
  %i.rt = getelementptr i8, ptr %i.rs, i64 32
  store <32 x i8> %wide.load553, ptr %i.rs, align 1, !tbaa !97
  store <32 x i8> %wide.load554, ptr %i.rt, align 1, !tbaa !97
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ru = icmp eq i64 %index.next, %n.vec
  br i1 %i.ru, label %middle.block, label %vector.body, !llvm.loop !501

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.split.us.preheader, label %vec.epilog.ph, !prof !513

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index556 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next560, %vec.epilog.vector.body ] ; 2 uses
  %i.rv = add i64 %index556, %i.rd                ; 6 uses
  %i.rw = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.rv
  %wide.load557 = load <8 x i8>, ptr %i.rw, align 1, !tbaa !97
  %i.rx = getelementptr i8, ptr %i.qn, i64 %i.rv
  store <8 x i8> %wide.load557, ptr %i.rx, align 1, !tbaa !97
  %i.ry = getelementptr i8, ptr %invariant.gep, i64 %i.rv
  %wide.load558 = load <8 x i8>, ptr %i.ry, align 1, !tbaa !97
  %i.rz = getelementptr i8, ptr %i.qo, i64 %i.rv
  store <8 x i8> %wide.load558, ptr %i.rz, align 1, !tbaa !97
  %i.sa = getelementptr i8, ptr %invariant.gep386, i64 %i.rv
  %wide.load559 = load <8 x i8>, ptr %i.sa, align 1, !tbaa !97
  %i.sb = getelementptr i8, ptr %i.qr, i64 %i.rv
  store <8 x i8> %wide.load559, ptr %i.sb, align 1, !tbaa !97
  %index.next560 = add nuw i64 %index556, 8       ; 2 uses
  %i.sc = icmp eq i64 %index.next560, %n.vec555
  br i1 %i.sc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !502

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n561, label %._crit_edge, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0273385.us.ph = phi i64 [ 0, %iter.check ], [ %n.vec555, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %.0273385.us.prol = phi i64 [ %i.sl, %.lr.ph.split.us.prol ], [ %.0273385.us.ph, %.lr.ph.split.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.sd = add i64 %.0273385.us.prol, %i.rd        ; 6 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.sd
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !97
  %i.sg = getelementptr i8, ptr %i.qn, i64 %i.sd
  store i8 %i.sf, ptr %i.sg, align 1, !tbaa !97
  %gep.us.prol = getelementptr i8, ptr %invariant.gep, i64 %i.sd
  %i.sh = load i8, ptr %gep.us.prol, align 1, !tbaa !97
  %i.si = getelementptr i8, ptr %i.qo, i64 %i.sd
  store i8 %i.sh, ptr %i.si, align 1, !tbaa !97
  %gep387.us.prol = getelementptr i8, ptr %invariant.gep386, i64 %i.sd
  %i.sj = load i8, ptr %gep387.us.prol, align 1, !tbaa !97
  %i.sk = getelementptr i8, ptr %i.qr, i64 %i.sd
  store i8 %i.sj, ptr %i.sk, align 1, !tbaa !97
  %i.sl = add nuw i64 %.0273385.us.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !503

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %.0273385.us.unr = phi i64 [ %.0273385.us.ph, %.lr.ph.split.us.preheader ], [ %i.sl, %.lr.ph.split.us.prol ]
  %i.sm = sub i64 %.0273385.us.ph, %umax
  %i.sn = icmp ugt i64 %i.sm, -4
  br i1 %i.sn, label %._crit_edge, label %.lr.ph.split.us.preheader.new

.lr.ph.split.us.preheader.new:                    ; preds = %.lr.ph.split.us.prol.loopexit
  %invariant.op = add i64 1, %i.rd
  %invariant.op621 = add i64 2, %i.rd
  %invariant.op623 = add i64 3, %i.rd
  br label %.lr.ph.split.us

bb.i:                                             ; preds = %.preheader353
  %i.so = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.rd
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !97
  %i.sq = getelementptr i8, ptr %i.qn, i64 %i.rd
  store i8 %i.sp, ptr %i.sq, align 1, !tbaa !97
  %gep.peel = getelementptr i8, ptr %invariant.gep, i64 %i.rd
  %i.sr = load i8, ptr %gep.peel, align 1, !tbaa !97
  %i.ss = getelementptr i8, ptr %i.qo, i64 %i.rd
  store i8 %i.sr, ptr %i.ss, align 1, !tbaa !97
  %gep387.peel = getelementptr i8, ptr %invariant.gep386, i64 %i.rd
  %i.st = load i8, ptr %gep387.peel, align 1, !tbaa !97
  %i.su = getelementptr i8, ptr %i.qr, i64 %i.rd
  store i8 %i.st, ptr %i.su, align 1, !tbaa !97
  br i1 %exitcond463.peel.not, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.sv = add i64 %i.rd, 1                        ; 6 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.sv
  %i.sx = load i8, ptr %i.sw, align 1, !tbaa !97
  %i.sy = getelementptr i8, ptr %i.qn, i64 %i.sv
  store i8 %i.sx, ptr %i.sy, align 1, !tbaa !97
  %gep.peel467 = getelementptr i8, ptr %invariant.gep, i64 %i.sv
  %i.sz = load i8, ptr %gep.peel467, align 1, !tbaa !97
  %i.ta = getelementptr i8, ptr %i.qo, i64 %i.sv
  store i8 %i.sz, ptr %i.ta, align 1, !tbaa !97
  %gep387.peel468 = getelementptr i8, ptr %invariant.gep386, i64 %i.sv
  %i.tb = load i8, ptr %gep387.peel468, align 1, !tbaa !97
  %i.tc = getelementptr i8, ptr %i.qr, i64 %i.sv
  store i8 %i.tb, ptr %i.tc, align 1, !tbaa !97
  br i1 %exitcond463.peel469.not, label %._crit_edge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.td = add i64 %i.rd, 2                        ; 6 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.td
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !97
  %i.tg = getelementptr i8, ptr %i.qn, i64 %i.td
  store i8 %i.tf, ptr %i.tg, align 1, !tbaa !97
  %gep.peel473 = getelementptr i8, ptr %invariant.gep, i64 %i.td
  %i.th = load i8, ptr %gep.peel473, align 1, !tbaa !97
  %i.ti = getelementptr i8, ptr %i.qo, i64 %i.td
  store i8 %i.th, ptr %i.ti, align 1, !tbaa !97
  %gep387.peel474 = getelementptr i8, ptr %invariant.gep386, i64 %i.td
  %i.tj = load i8, ptr %gep387.peel474, align 1, !tbaa !97
  %i.tk = getelementptr i8, ptr %i.qr, i64 %i.td
  store i8 %i.tj, ptr %i.tk, align 1, !tbaa !97
  br i1 %exitcond463.peel475.not, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us, %.lr.ph.split.us.preheader.new
  %.0273385.us = phi i64 [ %.0273385.us.unr, %.lr.ph.split.us.preheader.new ], [ %i.uo, %.lr.ph.split.us ] ; 5 uses
  %i.tl = add i64 %.0273385.us, %i.rd             ; 6 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.tl
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !97
  %i.to = getelementptr i8, ptr %i.qn, i64 %i.tl
  store i8 %i.tn, ptr %i.to, align 1, !tbaa !97
  %gep.us = getelementptr i8, ptr %invariant.gep, i64 %i.tl
  %i.tp = load i8, ptr %gep.us, align 1, !tbaa !97
  %i.tq = getelementptr i8, ptr %i.qo, i64 %i.tl
  store i8 %i.tp, ptr %i.tq, align 1, !tbaa !97
  %gep387.us = getelementptr i8, ptr %invariant.gep386, i64 %i.tl
  %i.tr = load i8, ptr %gep387.us, align 1, !tbaa !97
end_hunk_1
begin_hunk_2_@_process_opposed:bb.a
  store float %.1.us409, ptr %i.afz, align 4, !tbaa !12
  %i.aga = add nuw i64 %.0265404.us408, 1         ; 2 uses
  %exitcond487.not = icmp eq i64 %i.aga, %i.acg
  br i1 %exitcond487.not, label %._crit_edge405, label %.lr.ph.split406.split.us

._crit_edge405:                                   ; preds = %.lr.ph.split406.split.prol.loopexit, %bb.as, %bb.an, %middle.block582, %vec.epilog.middle.block604, %.lr.ph.split406.us.preheader
  %i.agb = add nuw i64 %.0266410, 1               ; 2 uses
  %exitcond488.not = icmp eq i64 %i.agb, %i.acd
  br i1 %exitcond488.not, label %.loopexit, label %.preheader

.lr.ph.split406.split:                            ; preds = %.lr.ph.split406.split.prol.loopexit, %bb.as
  %.0265404 = phi i64 [ %i.agz, %bb.as ], [ %.0265404.unr, %.lr.ph.split406.split.prol.loopexit ] ; 6 uses
  %i.agc = add i64 %.0265404, %i.acm              ; 2 uses
  %i.agd = icmp ult i64 %i.agc, %i.aco
  br i1 %i.agd, label %bb.ao, label %.lr.ph.split406.split.1

bb.ao:                                            ; preds = %.lr.ph.split406.split
  %i.age = getelementptr [4 x i8], ptr %i.adw, i64 %i.agc
  %i.agf = load float, ptr %i.age, align 4, !tbaa !12
  br label %.lr.ph.split406.split.1

.lr.ph.split406.split.1:                          ; preds = %bb.ao, %.lr.ph.split406.split
  %.1 = phi nsz float [ %i.agf, %bb.ao ], [ 0.000000e+00, %.lr.ph.split406.split ]
  %i.agg = getelementptr [4 x i8], ptr %i.adv, i64 %.0265404
  store float %.1, ptr %i.agg, align 4, !tbaa !12
  %i.agh = add nuw i64 %.0265404, 1               ; 2 uses
  %i.agi = add i64 %i.agh, %i.acm                 ; 2 uses
  %i.agj = icmp ult i64 %i.agi, %i.aco
  br i1 %i.agj, label %bb.ap, label %.lr.ph.split406.split.2

bb.ap:                                            ; preds = %.lr.ph.split406.split.1
  %i.agk = getelementptr [4 x i8], ptr %i.adw, i64 %i.agi
  %i.agl = load float, ptr %i.agk, align 4, !tbaa !12
  br label %.lr.ph.split406.split.2

.lr.ph.split406.split.2:                          ; preds = %bb.ap, %.lr.ph.split406.split.1
  %.1.1 = phi nsz float [ %i.agl, %bb.ap ], [ 0.000000e+00, %.lr.ph.split406.split.1 ]
  %i.agm = getelementptr [4 x i8], ptr %i.adv, i64 %i.agh
  store float %.1.1, ptr %i.agm, align 4, !tbaa !12
  %i.agn = add nuw i64 %.0265404, 2               ; 2 uses
  %i.ago = add i64 %i.agn, %i.acm                 ; 2 uses
  %i.agp = icmp ult i64 %i.ago, %i.aco
  br i1 %i.agp, label %bb.aq, label %.lr.ph.split406.split.3

bb.aq:                                            ; preds = %.lr.ph.split406.split.2
  %i.agq = getelementptr [4 x i8], ptr %i.adw, i64 %i.ago
  %i.agr = load float, ptr %i.agq, align 4, !tbaa !12
  br label %.lr.ph.split406.split.3

.lr.ph.split406.split.3:                          ; preds = %bb.aq, %.lr.ph.split406.split.2
  %.1.2 = phi nsz float [ %i.agr, %bb.aq ], [ 0.000000e+00, %.lr.ph.split406.split.2 ]
  %i.ags = getelementptr [4 x i8], ptr %i.adv, i64 %i.agn
  store float %.1.2, ptr %i.ags, align 4, !tbaa !12
  %i.agt = add nuw i64 %.0265404, 3               ; 2 uses
  %i.agu = add i64 %i.agt, %i.acm                 ; 2 uses
  %i.agv = icmp ult i64 %i.agu, %i.aco
  br i1 %i.agv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph.split406.split.3
  %i.agw = getelementptr [4 x i8], ptr %i.adw, i64 %i.agu
  %i.agx = load float, ptr %i.agw, align 4, !tbaa !12
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph.split406.split.3
  %.1.3 = phi nsz float [ %i.agx, %bb.ar ], [ 0.000000e+00, %.lr.ph.split406.split.3 ]
  %i.agy = getelementptr [4 x i8], ptr %i.adv, i64 %i.agt
  store float %.1.3, ptr %i.agy, align 4, !tbaa !12
  %i.agz = add nuw i64 %.0265404, 4               ; 2 uses
  %exitcond486.not.3 = icmp eq i64 %i.agz, %i.acg
  br i1 %exitcond486.not.3, label %._crit_edge405, label %.lr.ph.split406.split, !llvm.loop !512

.loopexit:                                        ; preds = %._crit_edge405, %.thread344, %.preheader.lr.ph, %bb.e
  %.0276 = phi ptr [ null, %bb.e ], [ %i.aca, %.preheader.lr.ph ], [ %i.aca, %.thread344 ], [ %i.aca, %._crit_edge405 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0276
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_process_segmentation(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef range(i32 5, 4) %6, ptr nofree noundef nonnull captures(none) %7) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = alloca [4 x float], align 16             ; 7 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [8 x ptr], align 16               ; 12 uses
  %i.e = alloca [3 x ptr], align 16               ; 7 uses
  %8 = alloca [4 x %struct.dt_iop_segmentation_t], align 16 ; 70 uses
  %i.f = alloca [4 x float], align 16             ; 22 uses
  %i.g = alloca [4 x float], align 16             ; 21 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.j = load i32, ptr %i.i, align 4, !tbaa !80   ; 15 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !56   ; 7 uses
  %i.m = getelementptr i8, ptr %i.l, i64 644
  %.val = load i32, ptr %i.m, align 4, !tbaa !92
  %i.n = and i32 %.val, 2
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.p = load float, ptr %i.o, align 4, !tbaa !95
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, f0x3F7CAC08 ; 2 uses
  %i.r = fcmp reassoc nsz arcp contract afn olt float %i.q, 1.000000e-01
  %spec.select = select reassoc nsz arcp contract afn i1 %i.r, float 1.000000e-01, float %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  %i.t = load float, ptr %i.s, align 16, !tbaa !12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 260
  %i.v = load float, ptr %i.u, align 4, !tbaa !12 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  %i.x = load float, ptr %i.w, align 8, !tbaa !12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.y = fmul reassoc nsz arcp contract afn float %i.t, %spec.select ; 2 uses
  store float %i.y, ptr %i.a, align 16, !tbaa !12
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aa = fmul reassoc nsz arcp contract afn float %i.v, %spec.select ; 2 uses
  store float %i.aa, ptr %i.z, align 4, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = fmul reassoc nsz arcp contract afn float %i.x, %spec.select ; 2 uses
  store float %i.ac, ptr %i.ab, align 8, !tbaa !12
  %.ptr447 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %.ptr447, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.ad = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.y) #35 ; 2 uses
  store float %i.ad, ptr %i.b, align 16, !tbaa !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.af = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.aa) #35 ; 2 uses
  store float %i.af, ptr %i.ae, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ah = tail call reassoc nsz arcp contract afn float @cbrtf(float noundef %i.ac) #35 ; 2 uses
  store float %i.ah, ptr %i.ag, align 8, !tbaa !12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.ai, align 4, !tbaa !12
  %i.aj = load ptr, ptr %0, align 16, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 664
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !99 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2480
  %i.an = load i32, ptr %i.am, align 16, !tbaa !144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %.thread549, label %bb.b

.thread549:                                       ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 2416
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 2448
  %i.ar = load <2 x double>, ptr %i.ap, align 16, !tbaa !145
  %i.as = load <2 x double>, ptr %i.aq, align 16, !tbaa !145
  %i.at = fdiv reassoc nsz arcp contract afn <2 x double> %i.ar, %i.as
  %i.au = fptrunc <2 x double> %i.at to <2 x float>
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 2432
  %i.ax = load double, ptr %i.aw, align 16, !tbaa !145
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 2464
  %i.az = load double, ptr %i.ay, align 16, !tbaa !145
  %i.ba = fdiv reassoc nsz arcp contract afn double %i.ax, %i.az
  %i.bb = fptrunc reassoc nsz arcp contract afn double %i.ba to float
  br label %bb.c

bb.c:                                             ; preds = %.thread549, %bb.b
  %i.bc = phi ptr [ %i.ao, %.thread549 ], [ %i.av, %bb.b ]
  %i.bd = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %.thread549 ], [ %i.bb, %bb.b ] ; 2 uses
  %i.be = phi <2 x float> [ splat (float 1.000000e+00), %.thread549 ], [ %i.au, %bb.b ] ; 3 uses
  store <2 x float> %i.be, ptr %i.c, align 16, !tbaa !12
  store float %i.bd, ptr %i.bc, align 4, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store float 1.000000e+00, ptr %i.bf, align 4, !tbaa !12
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !146 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !544 ; 5 uses
  %i.bk = sext i32 %i.bh to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [4 x i8], ptr @__const._process_segmentation.recovery_closing, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !15 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  %i.bo = load i32, ptr %i.bn, align 16, !tbaa !545
  %i.bp = getelementptr inbounds nuw i8, ptr %i.l, i64 148
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !546
  %i.br = mul nsw i32 %i.bq, %i.bo
  %i.bs = sitofp reassoc nsz arcp contract afn i32 %i.br to float
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 152
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !547 ; 2 uses
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, %i.bu
  %i.bw = fmul reassoc nsz arcp contract afn float %i.bv, 2.500000e-04
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bs
  %i.by = fptosi float %i.bx to i32               ; 5 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !79
  %i.cb = sdiv i32 %i.ca, 3
  %i.cc = sext i32 %i.cb to i64
  %i.cd = tail call i64 @dt_round_size(i64 noundef %i.cc, i64 noundef 2) #33 ; 4 uses
  %i.ce = add i64 %i.cd, 16                       ; 10 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 7 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !78
  %i.ch = sdiv i32 %i.cg, 3
  %i.ci = sext i32 %i.ch to i64
  %i.cj = tail call i64 @dt_round_size(i64 noundef %i.ci, i64 noundef 2) #33 ; 3 uses
  %i.ck = add i64 %i.cj, 16                       ; 7 uses
  %i.cl = mul i64 %i.ck, %i.ce
  %i.cm = tail call i64 @dt_round_size(i64 noundef %i.cl, i64 noundef 64) #33 ; 11 uses
  %i.cn = shl i64 %i.cm, 5
  %i.co = tail call ptr @dt_alloc_aligned(i64 noundef %i.cn) #33 ; 20 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.co, i64 64) ]
  %.not450 = icmp eq ptr %i.co, null
  br i1 %.not450, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !138
  %i.cq = and i32 %i.cp, 33554432
  %.not451 = icmp eq i32 %i.cq, 0
  br i1 %.not451, label %bb.ex, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.119) #33
  br label %bb.ex

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store ptr %i.co, ptr %i.d, align 16, !tbaa !139
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.cm ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !139
  %.idx = shl i64 %i.cm, 3                        ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.ct, ptr %i.cu, align 16, !tbaa !139
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.idx840 = shl i64 %i.cm, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx840
  %i.cx = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 3 uses
  store ptr %i.cw, ptr %i.cx, align 16, !tbaa !139
  %.idx841 = mul i64 %i.cm, 20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx841
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !139
  %.idx842 = mul i64 %i.cm, 24
  %i.da = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx842
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  store ptr %i.da, ptr %i.db, align 16, !tbaa !139
  %.idx839 = mul i64 %i.cm, 12
  %i.dc = insertelement <4 x i64> poison, i64 %i.cm, i64 0
  %i.dd = shufflevector <4 x i64> %i.dc, <4 x i64> poison, <4 x i32> zeroinitializer
  %.idx843 = mul i64 %i.cm, 28                    ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx839 ; 38 uses
  store ptr %i.de, ptr %i.cv, align 8, !tbaa !139
  %i.df = getelementptr i8, ptr %i.co, i64 %.idx843 ; 17 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.e, ptr noundef nonnull align 16 dereferenceable(24) %i.cx, i64 24, i1 false), !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  %i.dh = trunc i64 %i.ce to i32                  ; 19 uses
  %i.di = trunc i64 %i.ck to i32                  ; 10 uses
  %i.dj = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %8, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef 9, i32 noundef %i.by)
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 5 uses
  %i.dl = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dk, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef 9, i32 noundef %i.by)
  %i.dm = or i32 %i.dl, %i.dj
  %i.dn = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 5 uses
  %i.do = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dn, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef 9, i32 noundef %i.by)
  %i.dp = or i32 %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %8, i64 288 ; 10 uses
  %i.dr = call i32 @dt_segmentation_init_struct(ptr noundef nonnull %i.dq, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef 9, i32 noundef %i.by)
  %i.ds = or i32 %i.dr, %i.dp
  %.not452 = icmp eq i32 %i.ds, 0
  br i1 %.not452, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !138
  %i.du = and i32 %i.dt, 33554432
  %.not457 = icmp eq i32 %i.du, 0
  br i1 %.not457, label %bb.ew, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.120) #33
  br label %bb.ew

bb.i:                                             ; preds = %bb.f
  %.not453 = icmp eq i32 %i.j, 9                  ; 7 uses
  %i.dv = and i32 %i.j, 3
  %i.dw = icmp ne i32 %i.dv, 1
  %i.dx = or i1 %.not453, %i.dw
  %i.dy = select i1 %i.dx, i32 2, i32 1
  %i.dz = load i32, ptr %i.cf, align 4, !tbaa !78 ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, 2
  br i1 %i.ea, label %.preheader591.lr.ph, label %._crit_edge615

.preheader591.lr.ph:                              ; preds = %bb.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.bz, align 4, !tbaa !79 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ef = load ptr, ptr %i.e, align 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ej = load ptr, ptr %i.ei, align 16
  %i.ek = extractelement <2 x float> %i.be, i64 0
  %i.el = extractelement <2 x float> %i.be, i64 1
  br label %.preheader591

.preheader591:                                    ; preds = %.preheader591.lr.ph, %._crit_edge
  %i.em = phi i32 [ %i.dz, %.preheader591.lr.ph ], [ %i.hb, %._crit_edge ] ; 2 uses
  %i.en = phi i32 [ %.pre, %.preheader591.lr.ph ], [ %i.hc, %._crit_edge ] ; 3 uses
  %i.eo = phi i32 [ %.pre, %.preheader591.lr.ph ], [ %i.hd, %._crit_edge ] ; 4 uses
  %indvars.iv681 = phi i64 [ 0, %.preheader591.lr.ph ], [ %indvars.iv.next682, %._crit_edge ] ; 5 uses
  %.0418614 = phi i32 [ 1, %.preheader591.lr.ph ], [ %i.he, %._crit_edge ] ; 3 uses
  %.0419613 = phi i32 [ 0, %.preheader591.lr.ph ], [ %.1420.lcssa, %._crit_edge ] ; 3 uses
  %.0421612 = phi i32 [ 0, %.preheader591.lr.ph ], [ %.1422.lcssa, %._crit_edge ] ; 3 uses
  %i.ep = icmp sgt i32 %i.eo, 2
  br i1 %i.ep, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader591
  %i.eq = urem i32 %.0418614, 3
  %i.er = icmp eq i32 %i.eq, 1
  %i.es = udiv i32 %.0418614, 3
  %i.et = add nuw nsw i32 %i.es, 8
  %i.eu = mul nsw i32 %i.et, %i.dh
  %i.ev = add i32 %i.eu, 8
  %i.ew = load ptr, ptr %i.dq, align 16
  br i1 %i.er, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ex = load ptr, ptr %8, align 16
  %i.ey = load ptr, ptr %i.dk, align 16
  %i.ez = load ptr, ptr %i.dn, align 16
  %i.fa = trunc i64 %indvars.iv681 to i32         ; 2 uses
  %i.fb = shl nuw i32 %i.fa, 1
  %i.fc = and i32 %i.fb, 14                       ; 3 uses
  %i.fd = add i32 %i.fa, 600
  %i.fe = srem i32 %i.fd, 6
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.ff ; 3 uses
  %indvars.iv.next684 = add nuw nsw i64 %indvars.iv681, 1 ; 2 uses
  %i.fh = trunc i64 %indvars.iv.next684 to i32    ; 2 uses
  %i.fi = shl nuw i32 %i.fh, 1
  %i.fj = and i32 %i.fi, 14                       ; 3 uses
  %i.fk = add i32 %i.fh, 600
  %i.fl = srem i32 %i.fk, 6
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.fm ; 3 uses
  %indvars.iv.next684.1 = add nuw nsw i64 %indvars.iv681, 2 ; 2 uses
  %i.fo = trunc i64 %indvars.iv.next684.1 to i32  ; 2 uses
  %i.fp = shl nuw i32 %i.fo, 1
  %i.fq = and i32 %i.fp, 14                       ; 3 uses
  %i.fr = add i32 %i.fo, 600
  %i.fs = srem i32 %i.fr, 6
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [6 x i8], ptr %i.h, i64 %i.ft ; 3 uses
  br label %.lr.ph.split

._crit_edge615.loopexit:                          ; preds = %._crit_edge
  %i.fv = icmp slt i32 %.1422.lcssa, 20
  %i.fw = icmp ne i32 %.1420.lcssa, 0
  br label %._crit_edge615

._crit_edge615:                                   ; preds = %._crit_edge615.loopexit, %bb.i
  %.0421.lcssa = phi i1 [ true, %bb.i ], [ %i.fv, %._crit_edge615.loopexit ]
  %.0419.lcssa = phi i1 [ false, %bb.i ], [ %i.fw, %._crit_edge615.loopexit ]
  %i.fx = icmp eq i32 %6, 0                       ; 2 uses
  %or.cond = and i1 %i.fx, %.0421.lcssa
  br i1 %or.cond, label %bb.ew, label %.preheader589

.preheader589:                                    ; preds = %._crit_edge615
  %i.fy = add nsw i32 %i.di, -8                   ; 2 uses
  %i.fz = sext i32 %i.fy to i64                   ; 3 uses
  %i.ga = icmp ugt i32 %i.fy, 8                   ; 3 uses
  %sext566 = shl i64 %i.ce, 32                    ; 6 uses
  %i.gb = ashr exact i64 %sext566, 32             ; 50 uses
  %.not.i = icmp eq i32 %i.dh, 0                  ; 5 uses
  %i.gc = shl nsw i32 %i.dh, 3
  %i.gd = sext i32 %i.gc to i64                   ; 3 uses
  %i.ge = shl i64 %i.cd, 32                       ; 2 uses
  %sext567 = add i64 %i.ge, 30064771072
  %i.gf = ashr exact i64 %sext567, 32             ; 3 uses
  %i.gg = add i64 %i.cj, 7
  %sext568 = mul i64 %sext566, %i.gg
  %sext569 = shl i64 %i.ck, 32
  %i.gh = ashr exact i64 %sext569, 32             ; 18 uses
  %i.gi = ashr exact i64 %sext568, 30             ; 3 uses
  %i.gj = add nsw i64 %i.gh, -1
  %i.gk = mul nsw i64 %i.gj, %i.gb                ; 3 uses
  %i.gl = add nsw i64 %i.gh, -2
  %i.gm = mul nsw i64 %i.gl, %i.gb                ; 3 uses
  %i.gn = ashr exact i64 %sext566, 29             ; 3 uses
  %i.go = add nsw i64 %i.gh, -3
  %i.gp = mul nsw i64 %i.go, %i.gb                ; 3 uses
  %.idx844 = mul nsw i64 %i.gb, 12                ; 3 uses
  %i.gq = add nsw i64 %i.gh, -4
  %i.gr = mul nsw i64 %i.gq, %i.gb                ; 3 uses
  %i.gs = ashr exact i64 %sext566, 28             ; 3 uses
  %i.gt = add nsw i64 %i.gh, -5
  %i.gu = mul nsw i64 %i.gt, %i.gb                ; 3 uses
  %.idx845 = mul nsw i64 %i.gb, 20                ; 3 uses
  %i.gv = add nsw i64 %i.gh, -6
  %i.gw = mul nsw i64 %i.gv, %i.gb                ; 3 uses
  %.idx846 = mul nsw i64 %i.gb, 24                ; 3 uses
  %i.gx = add nsw i64 %i.gh, -7
  %i.gy = mul nsw i64 %i.gx, %i.gb                ; 3 uses
  %.idx847 = mul nsw i64 %i.gb, 28                ; 3 uses
  %i.gz = add nsw i64 %i.gh, -8
  %i.ha = mul nsw i64 %i.gz, %i.gb                ; 3 uses
  br i1 %i.ga, label %.lr.ph.i, label %.preheader.i

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre780 = load i32, ptr %i.cf, align 4, !tbaa !78
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge.loopexit, %.preheader591
  %i.hb = phi i32 [ %i.em, %.preheader591 ], [ %.pre780, %._crit_edge.loopexit ], [ %i.em, %.lr.ph ] ; 2 uses
  %i.hc = phi i32 [ %i.en, %.preheader591 ], [ %i.rf, %._crit_edge.loopexit ], [ %i.en, %.lr.ph ]
  %i.hd = phi i32 [ %i.eo, %.preheader591 ], [ %i.rf, %._crit_edge.loopexit ], [ %i.eo, %.lr.ph ]
  %.1422.lcssa = phi i32 [ %.0421612, %.preheader591 ], [ %.2423, %._crit_edge.loopexit ], [ %.0421612, %.lr.ph ] ; 2 uses
  %.1420.lcssa = phi i32 [ %.0419613, %.preheader591 ], [ %.2, %._crit_edge.loopexit ], [ %.0419613, %.lr.ph ] ; 2 uses
  %i.he = add nuw nsw i32 %.0418614, 1            ; 2 uses
  %i.hf = add nsw i32 %i.hb, -1
  %i.hg = icmp slt i32 %i.he, %i.hf
  %indvars.iv.next682 = add nuw nsw i64 %indvars.iv681, 1
  br i1 %i.hg, label %.preheader591, label %._crit_edge615.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.t
  %i.hh = phi i32 [ %i.en, %.lr.ph.split.preheader ], [ %i.rf, %bb.t ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.t ] ; 19 uses
  %i.hi = phi i32 [ %i.eo, %.lr.ph.split.preheader ], [ %i.rf, %bb.t ]
  %.0417609 = phi i32 [ 1, %.lr.ph.split.preheader ], [ %i.rg, %bb.t ] ; 3 uses
  %.1420608 = phi i32 [ %.0419613, %.lr.ph.split.preheader ], [ %.2, %bb.t ] ; 2 uses
  %.1422607 = phi i32 [ %.0421612, %.lr.ph.split.preheader ], [ %.2423, %bb.t ] ; 2 uses
  %i.hj = urem i32 %.0417609, 3
  %i.hk = udiv i32 %.0417609, 3
  %i.hl = icmp eq i32 %i.hj, %i.dy
  br i1 %i.hl, label %bb.j, label %bb.t

bb.j:                                             ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.hm = sext i32 %i.hi to i64                   ; 3 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv to i32
  %i.ho = and i32 %i.hn, 1                        ; 3 uses
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.hp = trunc nuw nsw i64 %indvars.iv.next674 to i32
  %i.hq = and i32 %i.hp, 1                        ; 3 uses
  %i.hr = trunc i64 %indvars.iv to i32
  %i.hs = and i32 %i.hr, 1                        ; 3 uses
  %i.ht = trunc i64 %indvars.iv to i32
end_hunk_2
begin_hunk_3_@_process_segmentation:bb.a
  %lcmp.mod1156.not = icmp eq i64 %xtraiter1154, 0
  %lcmp.mod1158 = icmp ne i64 %xtraiter1154, 0
  br label %bb.ba

bb.ay:                                            ; preds = %.epilog-lcssa1147, %.lr.ph.i500
  %.07482.i502 = phi i64 [ %i.axx, %.lr.ph.i500 ], [ %i.ayw, %.epilog-lcssa1147 ] ; 2 uses
  %i.aym = mul i64 %.07482.i502, %i.gb            ; 2 uses
  %i.ayn = getelementptr [4 x i8], ptr %i.anq, i64 %i.aym ; 6 uses
  %i.ayo = getelementptr [4 x i8], ptr %i.ayn, i64 %i.axx ; 5 uses
  %gep.i503 = getelementptr [4 x i8], ptr %invariant.gep.i501, i64 %i.aym ; 6 uses
  %i.ayp = getelementptr [4 x i8], ptr %gep.i503, i64 %i.ayb ; 5 uses
  br i1 %i.ayc, label %.epil.preheader1143, label %.new1141

.unr-lcssa1142:                                   ; preds = %.new1141
  br i1 %lcmp.mod1146.not, label %.epilog-lcssa1147, label %.epil.preheader1143

.epil.preheader1143:                              ; preds = %.unr-lcssa1142, %bb.ay
  %.07381.i504.epil.init = phi i64 [ 0, %bb.ay ], [ %i.azv, %.unr-lcssa1142 ]
  tail call void @llvm.assume(i1 %lcmp.mod1148)
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.epil.preheader1143
  %.07381.i504.epil = phi i64 [ %.07381.i504.epil.init, %.epil.preheader1143 ], [ %i.ayv, %bb.az ] ; 3 uses
  %epil.iter1145 = phi i64 [ 0, %.epil.preheader1143 ], [ %epil.iter1145.next, %bb.az ]
  %i.ayq = load float, ptr %i.ayo, align 4, !tbaa !12
  %i.ayr = getelementptr [4 x i8], ptr %i.ayn, i64 %.07381.i504.epil
  store float %i.ayq, ptr %i.ayr, align 4, !tbaa !12
  %i.ays = load float, ptr %i.ayp, align 4, !tbaa !12
  %i.ayt = xor i64 %.07381.i504.epil, -1
  %i.ayu = getelementptr [4 x i8], ptr %gep.i503, i64 %i.ayt
  store float %i.ays, ptr %i.ayu, align 4, !tbaa !12
  %i.ayv = add nuw nsw i64 %.07381.i504.epil, 1
  %epil.iter1145.next = add i64 %epil.iter1145, 1 ; 2 uses
  %epil.iter1145.cmp.not = icmp eq i64 %epil.iter1145.next, %xtraiter1144
  br i1 %epil.iter1145.cmp.not, label %.epilog-lcssa1147, label %bb.az, !llvm.loop !521

.epilog-lcssa1147:                                ; preds = %bb.az, %.unr-lcssa1142
  %i.ayw = add nuw i64 %.07482.i502, 1            ; 2 uses
  %i.ayx = icmp ult i64 %i.ayw, %i.axz
  br i1 %i.ayx, label %bb.ay, label %.preheader.i492

.new1141:                                         ; preds = %bb.ay, %.new1141
  %.07381.i504 = phi i64 [ %i.azv, %.new1141 ], [ 0, %bb.ay ] ; 9 uses
  %niter1150 = phi i64 [ %niter1150.next.3, %.new1141 ], [ 0, %bb.ay ]
  %i.ayy = load float, ptr %i.ayo, align 4, !tbaa !12
  %i.ayz = getelementptr [4 x i8], ptr %i.ayn, i64 %.07381.i504
  store float %i.ayy, ptr %i.ayz, align 4, !tbaa !12
  %i.aza = load float, ptr %i.ayp, align 4, !tbaa !12
  %i.azb = xor i64 %.07381.i504, -1
  %i.azc = getelementptr [4 x i8], ptr %gep.i503, i64 %i.azb
  store float %i.aza, ptr %i.azc, align 4, !tbaa !12
  %i.azd = load float, ptr %i.ayo, align 4, !tbaa !12
  %i.aze = getelementptr [4 x i8], ptr %i.ayn, i64 %.07381.i504
  %i.azf = getelementptr i8, ptr %i.aze, i64 4
  store float %i.azd, ptr %i.azf, align 4, !tbaa !12
  %i.azg = load float, ptr %i.ayp, align 4, !tbaa !12
  %i.azh = xor i64 %.07381.i504, -2
  %i.azi = getelementptr [4 x i8], ptr %gep.i503, i64 %i.azh
  store float %i.azg, ptr %i.azi, align 4, !tbaa !12
  %i.azj = load float, ptr %i.ayo, align 4, !tbaa !12
  %i.azk = getelementptr [4 x i8], ptr %i.ayn, i64 %.07381.i504
  %i.azl = getelementptr i8, ptr %i.azk, i64 8
  store float %i.azj, ptr %i.azl, align 4, !tbaa !12
  %i.azm = load float, ptr %i.ayp, align 4, !tbaa !12
  %i.azn = xor i64 %.07381.i504, -3
  %i.azo = getelementptr [4 x i8], ptr %gep.i503, i64 %i.azn
  store float %i.azm, ptr %i.azo, align 4, !tbaa !12
  %i.azp = load float, ptr %i.ayo, align 4, !tbaa !12
  %i.azq = getelementptr [4 x i8], ptr %i.ayn, i64 %.07381.i504
  %i.azr = getelementptr i8, ptr %i.azq, i64 12
  store float %i.azp, ptr %i.azr, align 4, !tbaa !12
  %i.azs = load float, ptr %i.ayp, align 4, !tbaa !12
  %i.azt = xor i64 %.07381.i504, -4
  %i.azu = getelementptr [4 x i8], ptr %gep.i503, i64 %i.azt
  store float %i.azs, ptr %i.azu, align 4, !tbaa !12
  %i.azv = add nuw nsw i64 %.07381.i504, 4        ; 2 uses
  %niter1150.next.3 = add i64 %niter1150, 4       ; 2 uses
  %niter1150.ncmp.3 = icmp eq i64 %niter1150.next.3, %unroll_iter1149
  br i1 %niter1150.ncmp.3, label %.unr-lcssa1142, label %.new1141

bb.ba:                                            ; preds = %.epilog-lcssa1157, %.lr.ph85.i494
  %.07284.i495 = phi i64 [ 0, %.lr.ph85.i494 ], [ %i.bak, %.epilog-lcssa1157 ] ; 3 uses
  %i.azw = tail call i64 @llvm.umax.i64(i64 %.07284.i495, i64 %i.axx)
  %..i496 = tail call i64 @llvm.umin.i64(i64 %i.azw, i64 %i.ayh)
  %i.azx = getelementptr [4 x i8], ptr %i.anq, i64 %..i496 ; 2 uses
  %i.azy = getelementptr [4 x i8], ptr %i.azx, i64 %i.aye
  %i.azz = load float, ptr %i.azy, align 4, !tbaa !12 ; 5 uses
  %i.baa = getelementptr [4 x i8], ptr %i.azx, i64 %i.ayk
  %i.bab = load float, ptr %i.baa, align 4, !tbaa !12 ; 5 uses
  %i.bac = getelementptr [4 x i8], ptr %i.anq, i64 %.07284.i495 ; 10 uses
  br i1 %i.ayl, label %.epil.preheader1153, label %.new1151

.unr-lcssa1152:                                   ; preds = %.new1151
  br i1 %lcmp.mod1156.not, label %.epilog-lcssa1157, label %.epil.preheader1153

.epil.preheader1153:                              ; preds = %.unr-lcssa1152, %bb.ba
  %.083.i497.epil.init = phi i64 [ 0, %bb.ba ], [ %i.bbm, %.unr-lcssa1152 ]
  tail call void @llvm.assume(i1 %lcmp.mod1158)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %.epil.preheader1153
  %.083.i497.epil = phi i64 [ %.083.i497.epil.init, %.epil.preheader1153 ], [ %i.baj, %bb.bb ] ; 3 uses
  %epil.iter1155 = phi i64 [ 0, %.epil.preheader1153 ], [ %epil.iter1155.next, %bb.bb ]
  %i.bad = mul nsw i64 %.083.i497.epil, %i.gb
  %i.bae = getelementptr [4 x i8], ptr %i.bac, i64 %i.bad
  store float %i.azz, ptr %i.bae, align 4, !tbaa !12
  %i.baf = xor i64 %.083.i497.epil, -1
  %i.bag = add nsw i64 %i.gh, %i.baf
  %i.bah = mul nsw i64 %i.bag, %i.gb
  %i.bai = getelementptr [4 x i8], ptr %i.bac, i64 %i.bah
  store float %i.bab, ptr %i.bai, align 4, !tbaa !12
  %i.baj = add nuw nsw i64 %.083.i497.epil, 1
  %epil.iter1155.next = add i64 %epil.iter1155, 1 ; 2 uses
  %epil.iter1155.cmp.not = icmp eq i64 %epil.iter1155.next, %xtraiter1154
  br i1 %epil.iter1155.cmp.not, label %.epilog-lcssa1157, label %bb.bb, !llvm.loop !522

.epilog-lcssa1157:                                ; preds = %bb.bb, %.unr-lcssa1152
  %i.bak = add nuw i64 %.07284.i495, 1            ; 2 uses
  %exitcond87.not.i499 = icmp eq i64 %i.bak, %i.gb
  br i1 %exitcond87.not.i499, label %_masks_extend_border.exit506, label %bb.ba

.new1151:                                         ; preds = %bb.ba, %.new1151
  %.083.i497 = phi i64 [ %i.bbm, %.new1151 ], [ 0, %bb.ba ] ; 9 uses
  %niter1160 = phi i64 [ %niter1160.next.3, %.new1151 ], [ 0, %bb.ba ]
  %i.bal = mul nsw i64 %.083.i497, %i.gb
  %i.bam = getelementptr [4 x i8], ptr %i.bac, i64 %i.bal
  store float %i.azz, ptr %i.bam, align 4, !tbaa !12
  %i.ban = xor i64 %.083.i497, -1
  %i.bao = add nsw i64 %i.gh, %i.ban
  %i.bap = mul nsw i64 %i.bao, %i.gb
  %i.baq = getelementptr [4 x i8], ptr %i.bac, i64 %i.bap
  store float %i.bab, ptr %i.baq, align 4, !tbaa !12
  %i.bar = or disjoint i64 %.083.i497, 1
  %i.bas = mul nsw i64 %i.bar, %i.gb
  %i.bat = getelementptr [4 x i8], ptr %i.bac, i64 %i.bas
  store float %i.azz, ptr %i.bat, align 4, !tbaa !12
  %i.bau = xor i64 %.083.i497, -2
  %i.bav = add nsw i64 %i.gh, %i.bau
  %i.baw = mul nsw i64 %i.bav, %i.gb
  %i.bax = getelementptr [4 x i8], ptr %i.bac, i64 %i.baw
  store float %i.bab, ptr %i.bax, align 4, !tbaa !12
  %i.bay = or disjoint i64 %.083.i497, 2
  %i.baz = mul nsw i64 %i.bay, %i.gb
  %i.bba = getelementptr [4 x i8], ptr %i.bac, i64 %i.baz
  store float %i.azz, ptr %i.bba, align 4, !tbaa !12
  %i.bbb = xor i64 %.083.i497, -3
  %i.bbc = add nsw i64 %i.gh, %i.bbb
  %i.bbd = mul nsw i64 %i.bbc, %i.gb
  %i.bbe = getelementptr [4 x i8], ptr %i.bac, i64 %i.bbd
  store float %i.bab, ptr %i.bbe, align 4, !tbaa !12
  %i.bbf = or disjoint i64 %.083.i497, 3
  %i.bbg = mul nsw i64 %i.bbf, %i.gb
  %i.bbh = getelementptr [4 x i8], ptr %i.bac, i64 %i.bbg
  store float %i.azz, ptr %i.bbh, align 4, !tbaa !12
  %i.bbi = xor i64 %.083.i497, -4
  %i.bbj = add nsw i64 %i.gh, %i.bbi
  %i.bbk = mul nsw i64 %i.bbj, %i.gb
  %i.bbl = getelementptr [4 x i8], ptr %i.bac, i64 %i.bbk
  store float %i.bab, ptr %i.bbl, align 4, !tbaa !12
  %i.bbm = add nuw nsw i64 %.083.i497, 4          ; 2 uses
  %niter1160.next.3 = add i64 %niter1160, 4       ; 2 uses
  %niter1160.ncmp.3 = icmp eq i64 %niter1160.next.3, %unroll_iter1159
  br i1 %niter1160.ncmp.3, label %.unr-lcssa1152, label %.new1151

_masks_extend_border.exit506:                     ; preds = %.epilog-lcssa1157, %_initial_gradients.exit, %.preheader.i492
  %i.bbn = getelementptr inbounds nuw i8, ptr %8, i64 360
  %i.bbo = load i32, ptr %i.bbn, align 8, !tbaa !34 ; 3 uses
  %i.bbp = icmp ugt i32 %i.bbo, 2
  br i1 %i.bbp, label %.lr.ph638, label %._crit_edge639.thread

.lr.ph638:                                        ; preds = %_masks_extend_border.exit506
  %i.bbq = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.bbr = load ptr, ptr %i.bbq, align 8, !tbaa !27
  %i.bbs = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.bbt = load ptr, ptr %i.bbs, align 16, !tbaa !26
  %i.bbu = getelementptr inbounds nuw i8, ptr %8, i64 372
  %i.bbv = load i32, ptr %i.bbu, align 4, !tbaa !19 ; 5 uses
  %i.bbw = sub i32 %i.bbv, %i.axv                 ; 2 uses
  %i.bbx = getelementptr inbounds nuw i8, ptr %8, i64 328
  %i.bby = load ptr, ptr %i.bbx, align 8, !tbaa !25
  %i.bbz = getelementptr inbounds nuw i8, ptr %8, i64 336
  %i.bca = load ptr, ptr %i.bbz, align 16, !tbaa !24
  %i.bcb = getelementptr inbounds nuw i8, ptr %8, i64 376
  %i.bcc = load i32, ptr %i.bcb, align 8, !tbaa !20
  %i.bcd = sub i32 %i.bcc, %i.axv                 ; 2 uses
  %i.bce = sext i32 %i.bbv to i64                 ; 14 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %8, i64 344
  %i.bcg = load ptr, ptr %i.bcf, align 8          ; 2 uses
  %i.bch = load ptr, ptr %i.dq, align 16          ; 19 uses
  %i.bci = sext i32 %i.axv to i64
  %i.bcj = icmp slt i32 %i.bh, 5
  %i.bck = getelementptr inbounds [4 x i8], ptr @__const._segment_attenuation.attenuate, i64 %i.bk
  %i.bcl = sitofp reassoc nsz arcp contract afn i32 %i.bm to float
  %i.bcm = fmul reassoc nnan nsz arcp contract afn float %i.bcl, 1.000000e-01
  %i.bcn = shl nsw i64 %i.bce, 1                  ; 2 uses
  %wide.trip.count732 = zext i32 %i.bbo to i64
  %scevgep961 = getelementptr i8, ptr %i.anq, i64 4
  %i.bco = shl nsw i64 %i.bce, 2
  %scevgep964 = getelementptr i8, ptr %i.bch, i64 4
  %i.bcp = shl nsw i64 %i.bce, 2
  %scevgep1005 = getelementptr i8, ptr %i.co, i64 %.idx843
  %scevgep1057 = getelementptr i8, ptr %i.co, i64 %.idx843
  %i.bcq = shl nsw i64 %i.bce, 2
  %stride.check1067 = icmp slt i32 %i.bbv, 0
  %stride.check1010 = icmp slt i32 %i.bbv, 0
  %stride.check = icmp slt i32 %i.bbv, 0
  br label %bb.bc

._crit_edge639:                                   ; preds = %_segment_gradients.exit
  tail call void @dt_gaussian_fast_blur(ptr noundef %i.anq, ptr noundef %i.ano, i32 noundef %i.dh, i32 noundef %i.di, float noundef 1.200000e+00, float noundef 0.000000e+00, float noundef 2.000000e+01, i32 noundef 1) #33
  %i.bcr = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.bcs = load float, ptr %i.bcr, align 4, !tbaa !140 ; 5 uses
  %i.bct = fcmp reassoc nsz arcp contract afn ule float %i.bcs, 0.000000e+00
  br i1 %i.bct, label %.loopexit580, label %.lr.ph641

._crit_edge639.thread:                            ; preds = %_masks_extend_border.exit506
  tail call void @dt_gaussian_fast_blur(ptr noundef %i.anq, ptr noundef %i.ano, i32 noundef %i.dh, i32 noundef %i.di, float noundef 1.200000e+00, float noundef 0.000000e+00, float noundef 2.000000e+01, i32 noundef 1) #33
  br label %.loopexit580

.lr.ph641:                                        ; preds = %._crit_edge639
  %i.bcu = getelementptr inbounds nuw i8, ptr %8, i64 344
  %i.bcv = load ptr, ptr %i.bcu, align 8, !tbaa !30
  %i.bcw = getelementptr inbounds nuw i8, ptr %8, i64 312
  %i.bcx = load ptr, ptr %i.bcw, align 8
  %i.bcy = load i32, ptr %i.axu, align 4          ; 4 uses
  %i.bcz = getelementptr inbounds nuw i8, ptr %8, i64 320
  %i.bda = load ptr, ptr %i.bcz, align 16
  %i.bdb = getelementptr inbounds nuw i8, ptr %8, i64 372
  %i.bdc = load i32, ptr %i.bdb, align 4          ; 2 uses
  %i.bdd = sub i32 %i.bdc, %i.bcy
  %i.bde = getelementptr inbounds nuw i8, ptr %8, i64 328
  %i.bdf = load ptr, ptr %i.bde, align 8
  %i.bdg = getelementptr inbounds nuw i8, ptr %8, i64 336
  %i.bdh = load ptr, ptr %i.bdg, align 16
  %i.bdi = getelementptr inbounds nuw i8, ptr %8, i64 376
  %i.bdj = load i32, ptr %i.bdi, align 8
  %i.bdk = sub i32 %i.bdj, %i.bcy
  %i.bdl = sext i32 %i.bdc to i64
  %i.bdm = fmul reassoc nnan nsz arcp contract afn float %i.bcs, %i.bcs
  %i.bdn = load ptr, ptr %i.dq, align 16
  %wide.trip.count737 = zext i32 %i.bbo to i64
  br label %bb.dz

bb.bc:                                            ; preds = %.lr.ph638, %_segment_gradients.exit
  %indvars.iv729 = phi i64 [ 2, %.lr.ph638 ], [ %indvars.iv.next730, %_segment_gradients.exit ] ; 23 uses
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %i.bbr, i64 %indvars.iv729
  %i.bdp = load i32, ptr %i.bdo, align 4, !tbaa !15 ; 2 uses
  %i.bdq = add i32 %i.bdp, -2
  %..i507 = tail call i32 @llvm.smax.i32(i32 %i.bdq, i32 %i.axv) ; 4 uses
  %i.bdr = getelementptr inbounds nuw [4 x i8], ptr %i.bbt, i64 %indvars.iv729
  %i.bds = load i32, ptr %i.bdr, align 4, !tbaa !15 ; 2 uses
  %i.bdt = add i32 %i.bds, 3
  %i.bdu = tail call i32 @llvm.smin.i32(i32 %i.bdt, i32 %i.bbw) ; 4 uses
  %i.bdv = getelementptr inbounds nuw [4 x i8], ptr %i.bby, i64 %indvars.iv729
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !15 ; 3 uses
  %i.bdx = add nsw i32 %i.bdw, -2
  %i.bdy = tail call i32 @llvm.smax.i32(i32 %i.bdx, i32 %i.axv) ; 2 uses
  %i.bdz = getelementptr inbounds nuw [4 x i8], ptr %i.bca, i64 %indvars.iv729
  %i.bea = load i32, ptr %i.bdz, align 4, !tbaa !15 ; 2 uses
  %i.beb = add nsw i32 %i.bea, 3
  %i.bec = tail call i32 @llvm.smin.i32(i32 %i.beb, i32 %i.bcd) ; 2 uses
  %i.bed = icmp slt i32 %i.bdy, %i.bec
  %i.bee = icmp slt i32 %..i507, %i.bdu
  %or.cond654 = select i1 %i.bed, i1 %i.bee, i1 false
  br i1 %or.cond654, label %.preheader.lr.ph.split.us.i, label %_segment_maxdistance.exit.thread

.preheader.lr.ph.split.us.i:                      ; preds = %bb.bc
  %smax.i509 = sext i32 %..i507 to i64            ; 2 uses
  %i.bef = sext i32 %i.bdw to i64
  %i.beg = add nsw i64 %i.bef, -2
  %smax62.i = tail call i64 @llvm.smax.i64(i64 %i.beg, i64 %i.bci) ; 2 uses
  %i.beh = trunc nsw i64 %smax62.i to i32
  %i.bei = sub i32 %i.beh, %i.bdy
  %i.bej = add i32 %i.bei, %i.bec
  %i.bek = sub i32 %i.bdu, %..i507
  %xtraiter1161 = and i32 %i.bek, 3               ; 2 uses
  %lcmp.mod1162.not = icmp eq i32 %xtraiter1161, 0
  %i.bel = sub i32 %..i507, %i.bdu
  %i.bem = icmp ugt i32 %i.bel, -4
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i514, %.preheader.lr.ph.split.us.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %._crit_edge.us.i514 ], [ %smax62.i, %.preheader.lr.ph.split.us.i ] ; 2 uses
  %.04657.us.i = phi float [ %.pre178.i.lcssa, %._crit_edge.us.i514 ], [ 0.000000e+00, %.preheader.lr.ph.split.us.i ] ; 2 uses
  %i.ben = mul nsw i64 %indvars.iv63.i, %i.bce    ; 5 uses
  br i1 %lcmp.mod1162.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.us.i, %bb.be
  %indvars.iv.i510.prol = phi i64 [ %indvars.iv.next.i511.prol, %bb.be ], [ %smax.i509, %.preheader.us.i ] ; 2 uses
  %.155.us.i.prol = phi float [ %.pre178.i.prol, %bb.be ], [ %.04657.us.i, %.preheader.us.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %bb.be ], [ 0, %.preheader.us.i ]
  %i.beo = add nsw i64 %indvars.iv.i510.prol, %i.ben ; 2 uses
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %i.beo
  %i.beq = load i32, ptr %i.bep, align 4, !tbaa !15
  %i.ber = zext i32 %i.beq to i64
  %i.bes = icmp eq i64 %indvars.iv729, %i.ber
  br i1 %i.bes, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.prol.preheader
  %i.bet = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.beo
  %i.beu = load float, ptr %i.bet, align 4, !tbaa !12
  %i.bev = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.155.us.i.prol, float %i.beu)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %.prol.preheader
  %.pre178.i.prol = phi nsz float [ %i.bev, %bb.bd ], [ %.155.us.i.prol, %.prol.preheader ] ; 3 uses
  %indvars.iv.next.i511.prol = add nsw i64 %indvars.iv.i510.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1161
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !523

.prol.loopexit:                                   ; preds = %bb.be, %.preheader.us.i
  %.pre178.i.lcssa.unr = phi float [ poison, %.preheader.us.i ], [ %.pre178.i.prol, %bb.be ]
  %indvars.iv.i510.unr = phi i64 [ %smax.i509, %.preheader.us.i ], [ %indvars.iv.next.i511.prol, %bb.be ]
  %.155.us.i.unr = phi float [ %.04657.us.i, %.preheader.us.i ], [ %.pre178.i.prol, %bb.be ]
  br i1 %i.bem, label %._crit_edge.us.i514, label %.preheader.us.i.new

.preheader.us.i.new:                              ; preds = %.prol.loopexit
  %invariant.op1175 = add i64 1, %i.ben
  %invariant.op1177 = add i64 2, %i.ben
  %invariant.op1179 = add i64 3, %i.ben
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bn, %.preheader.us.i.new
  %indvars.iv.i510 = phi i64 [ %indvars.iv.i510.unr, %.preheader.us.i.new ], [ %indvars.iv.next.i511.3, %bb.bn ] ; 5 uses
  %.155.us.i = phi float [ %.155.us.i.unr, %.preheader.us.i.new ], [ %.pre178.i.3, %bb.bn ] ; 2 uses
  %i.bew = add nsw i64 %indvars.iv.i510, %i.ben   ; 2 uses
  %i.bex = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %i.bew
  %i.bey = load i32, ptr %i.bex, align 4, !tbaa !15
  %i.bez = zext i32 %i.bey to i64
  %i.bfa = icmp eq i64 %indvars.iv729, %i.bez
  br i1 %i.bfa, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.bfb = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.bew
  %i.bfc = load float, ptr %i.bfb, align 4, !tbaa !12
  %i.bfd = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.155.us.i, float %i.bfc)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.pre178.i = phi nsz float [ %i.bfd, %bb.bg ], [ %.155.us.i, %bb.bf ] ; 2 uses
  %.reass1176 = add i64 %indvars.iv.i510, %invariant.op1175 ; 2 uses
  %i.bfe = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %.reass1176
  %i.bff = load i32, ptr %i.bfe, align 4, !tbaa !15
  %i.bfg = zext i32 %i.bff to i64
  %i.bfh = icmp eq i64 %indvars.iv729, %i.bfg
  br i1 %i.bfh, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.bfi = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.reass1176
  %i.bfj = load float, ptr %i.bfi, align 4, !tbaa !12
  %i.bfk = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.pre178.i, float %i.bfj)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pre178.i.1 = phi nsz float [ %i.bfk, %bb.bi ], [ %.pre178.i, %bb.bh ] ; 2 uses
  %.reass1178 = add i64 %indvars.iv.i510, %invariant.op1177 ; 2 uses
  %i.bfl = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %.reass1178
  %i.bfm = load i32, ptr %i.bfl, align 4, !tbaa !15
  %i.bfn = zext i32 %i.bfm to i64
  %i.bfo = icmp eq i64 %indvars.iv729, %i.bfn
  br i1 %i.bfo, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.bfp = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.reass1178
  %i.bfq = load float, ptr %i.bfp, align 4, !tbaa !12
  %i.bfr = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.pre178.i.1, float %i.bfq)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pre178.i.2 = phi nsz float [ %i.bfr, %bb.bk ], [ %.pre178.i.1, %bb.bj ] ; 2 uses
  %.reass1180 = add i64 %indvars.iv.i510, %invariant.op1179 ; 2 uses
  %i.bfs = getelementptr inbounds nuw [4 x i8], ptr %i.bch, i64 %.reass1180
  %i.bft = load i32, ptr %i.bfs, align 4, !tbaa !15
  %i.bfu = zext i32 %i.bft to i64
  %i.bfv = icmp eq i64 %indvars.iv729, %i.bfu
  br i1 %i.bfv, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.bfw = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %.reass1180
  %i.bfx = load float, ptr %i.bfw, align 4, !tbaa !12
  %i.bfy = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.pre178.i.2, float %i.bfx)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pre178.i.3 = phi nsz float [ %i.bfy, %bb.bm ], [ %.pre178.i.2, %bb.bl ] ; 2 uses
  %indvars.iv.next.i511.3 = add nsw i64 %indvars.iv.i510, 4 ; 2 uses
  %lftr.wideiv.i512.3 = trunc i64 %indvars.iv.next.i511.3 to i32
  %exitcond.not.i513.3 = icmp eq i32 %i.bdu, %lftr.wideiv.i512.3
  br i1 %exitcond.not.i513.3, label %._crit_edge.us.i514, label %bb.bf

._crit_edge.us.i514:                              ; preds = %bb.bn, %.prol.loopexit
  %.pre178.i.lcssa = phi float [ %.pre178.i.lcssa.unr, %.prol.loopexit ], [ %.pre178.i.3, %bb.bn ] ; 7 uses
  %indvars.iv.next64.i = add nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %lftr.wideiv65.i = trunc i64 %indvars.iv.next64.i to i32
  %exitcond66.not.i = icmp eq i32 %i.bej, %lftr.wideiv65.i
  br i1 %exitcond66.not.i, label %_segment_maxdistance.exit, label %.preheader.us.i

_segment_maxdistance.exit.thread:                 ; preds = %bb.bc
  %i.bfz = getelementptr inbounds nuw [4 x i8], ptr %i.bcg, i64 %indvars.iv729
  store float 0.000000e+00, ptr %i.bfz, align 4, !tbaa !12
  br label %_segment_gradients.exit
end_hunk_3
