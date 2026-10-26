Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ops?download=true
inline.NumInlined: 777
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 222
loop-unroll.NumUnrolled: 269
begin_hunk_0_@_ZL29ggml_compute_forward_rope_fltItEvPK19ggml_compute_paramsP11ggml_tensorb:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !31  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !31 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !31 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !31 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !31 ; 16 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !31 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !31 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !31 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !31 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !31 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !31 ; 3 uses
  %i.ax = icmp eq i64 %i.aq, %i.aa
  br i1 %i.ax, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6118, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.97) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ay = icmp eq i64 %i.aa, 2
  br i1 %i.ay, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6119, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.98) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.az = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !36 ; 2 uses
  %i.bc = tail call i64 @ggml_nrows(ptr noundef nonnull %1)
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = sext i32 %i.l to i64                    ; 13 uses
  %.not248 = icmp slt i64 %i.ai, %i.be
  br i1 %.not248, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6126, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.99) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bf = and i32 %i.l, 1
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6127, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.100) #17
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp sgt i32 %i.y, -1
  br i1 %i.bh, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6129, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.101) #17
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bi = and i32 %i.y, 1
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6130, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.102) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bk = add nsw i32 %i.y, %i.l
  %i.bl = sext i32 %i.bk to i64
  %.not249 = icmp slt i64 %i.ai, %i.bl
  br i1 %.not249, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6131, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.103) #17
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bm = add i32 %i.bb, -1
  %i.bn = add i32 %i.bm, %i.bd
  %i.bo = sdiv i32 %i.bn, %i.bb                   ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %i.az                ; 2 uses
  %i.bq = add nsw i32 %i.bp, %i.bo
  %i.br = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bd)
  %i.bs = sitofp i32 %i.l to float
  %i.bt = fdiv float -2.000000e+00, %i.bs
  %i.bu = tail call float @powf(float noundef %.0.copyload160, float noundef %i.bt) #18 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @ggml_rope_yarn_corr_dims(i32 noundef %i.l, i32 noundef %i.p, float noundef %.0.copyload160, float noundef %.0.copyload148, float noundef %.0.copyload, ptr noundef nonnull %i.a)
  %i.bv = icmp eq i32 %i.n, 40
  %i.bw = and i32 %i.n, 8
  %.not250 = icmp eq i32 %i.bw, 0                 ; 2 uses
  %i.bx = icmp eq i32 %i.n, 24                    ; 3 uses
  br i1 %.not250, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = icmp sgt i32 %.sroa.0.0.copyload, 0
  %i.bz = icmp sgt i32 %.sroa.8.0.copyload, 0
  %or.cond = select i1 %i.by, i1 true, i1 %i.bz
  %i.ca = icmp sgt i32 %.sroa.11.0.copyload, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.ca
  br i1 %or.cond5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6153, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104) #17
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s
  br i1 %i.bx, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cb = sdiv i64 %i.ai, 2
  %i.cc = icmp eq i64 %i.cb, %i.be
  br i1 %i.cc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6157, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.105) #17
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cd = icmp eq i32 %i.y, 0
  br i1 %i.cd, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6158, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.106) #17
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.v
  %.not251 = icmp eq ptr %i.g, null
  br i1 %.not251, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load i32, ptr %i.g, align 8, !tbaa !30
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6163, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.107) #17
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !31
  %i.ci = ashr exact i32 %i.l, 1
  %i.cj = sext i32 %i.ci to i64
  %.not252 = icmp slt i64 %i.ch, %i.cj
  br i1 %.not252, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6164, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.108) #17
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !37
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %.0229 = phi ptr [ %i.cl, %bb.af ], [ null, %bb.aa ] ; 6 uses
  %i.cm = select i1 %2, float 1.000000e+00, float -1.000000e+00 ; 11 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !37
  %i.cp = icmp sgt i64 %i.ao, 0
  br i1 %i.cp, label %.preheader297.lr.ph, label %._crit_edge.split

.preheader297.lr.ph:                              ; preds = %bb.ag
  %i.cq = icmp sgt i64 %i.am, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = add i64 %i.ai, 16
  %i.ct = sext i32 %i.az to i64
  %i.cu = mul i64 %i.cs, %i.ct
  %.idx = shl i64 %i.am, 3
  %.idx255 = mul i64 %i.am, 12
  %i.cv = add nsw i32 %.sroa.8.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.cw = add nsw i32 %i.cv, %.sroa.11.0.copyload ; 3 uses
  %i.cx = add nsw i32 %i.cw, %.sroa.15.0.copyload
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %.not.i256 = icmp slt i64 %i.ai, %i.cy
  %i.cz = icmp sgt i64 %i.ai, 0                   ; 3 uses
  %.not98.i = icmp eq ptr %.0229, null            ; 3 uses
  %i.da = fcmp une float %.0.copyload154, 0.000000e+00 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.dc = fdiv float 1.000000e+00, %.0.copyload157 ; 3 uses
  %i.dd = mul nsw i32 %.sroa.0.0.copyload, 3
  %i.de = mul nsw i32 %.sroa.11.0.copyload, 3
  %i.df = mul nsw i32 %.sroa.8.0.copyload, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.di = ashr exact i32 %i.l, 1
  %i.dj = sext i32 %i.di to i64                   ; 6 uses
  %i.dk = zext nneg i32 %i.y to i64               ; 7 uses
  %i.dl = icmp sgt i32 %i.l, 0                    ; 2 uses
  %i.dm = icmp sgt i64 %i.ak, 0
  %or.cond363 = select i1 %i.cq, i1 %i.dm, i1 false
  br i1 %or.cond363, label %.preheader297.us.preheader, label %._crit_edge.split

.preheader297.us.preheader:                       ; preds = %.preheader297.lr.ph
  %i.dn = add nsw i32 %i.l, -2
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %i.ai, 1
  %i.dq = trunc i64 %i.ak to i32
  %brmerge = select i1 %i.bx, i1 true, i1 %i.dp
  %i.dr = add nsw i64 %i.dk, %i.do
  %i.ds = add nsw i64 %i.be, %i.dk
  %i.dt = shl nsw i64 %i.ds, 1                    ; 2 uses
  %i.du = shl nsw i64 %i.dj, 1                    ; 2 uses
  %i.dv = sub i64 %i.aw, %i.ag                    ; 2 uses
  %i.dw = sub i64 %i.au, %i.ae                    ; 2 uses
  %i.dx = sub i64 %i.as, %i.ac                    ; 2 uses
  %i.dy = shl nsw i64 %i.be, 1                    ; 2 uses
  %i.dz = add i64 %i.ai, -1                       ; 2 uses
  %i.ea = lshr i64 %i.dz, 1                       ; 2 uses
  %i.eb = add nuw i64 %i.ea, 1                    ; 4 uses
  %i.ec = shl nsw i64 %i.be, 1
  %i.ed = shl nsw i64 %i.dj, 1
  %i.ee = icmp eq i64 %i.ea, 0
  %unroll_iter = and i64 %i.eb, -2
  %i.ef = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.cm, i64 1
  %i.eh = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.cm, i64 1
  %i.ej = and i64 %i.dz, 2
  %lcmp.mod.not.not = icmp eq i64 %i.ej, 0
  %lcmp.mod437 = trunc i64 %i.eb to i1
  %i.ek = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.el = insertelement <2 x float> %i.ek, float %i.cm, i64 1
  %xtraiter438 = and i64 %i.eb, 3                 ; 3 uses
  %i.em = icmp ult i64 %i.ai, 7
  %unroll_iter441 = and i64 %i.eb, -4
  %i.en = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.cm, i64 1
  %i.ep = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.cm, i64 1
  %i.er = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.es = insertelement <2 x float> %i.er, float %i.cm, i64 1
  %i.et = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.cm, i64 1
  %lcmp.mod439.not = icmp eq i64 %xtraiter438, 0
  %lcmp.mod440 = icmp ne i64 %xtraiter438, 0
  %i.ev = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.cm, i64 1
  %i.ex = add nsw i64 %i.ai, -1
  %i.ey = lshr i64 %i.ex, 1
  %i.ez = add nuw i64 %i.ey, 1                    ; 2 uses
  %min.iters.check410 = icmp ult i64 %i.ai, 15
  %i.fa = add nsw i64 %i.dy, -1
  %diff.check402 = icmp ult i64 %i.fa, 15
  %n.vec412 = and i64 %i.ez, -8                   ; 3 uses
  %i.fb = shl i64 %n.vec412, 1
  %cmp.n426 = icmp eq i64 %i.ez, %n.vec412
  %i.fc = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fd = lshr exact i64 %i.fc, 1
  %i.fe = add nuw i64 %i.fd, 1                    ; 2 uses
  %min.iters.check384 = icmp ult i64 %i.fc, 14
  %diff.check = icmp ult i64 %i.du, 16
  %n.vec386 = and i64 %i.fe, -8                   ; 3 uses
  %i.ff = shl i64 %n.vec386, 1
  %cmp.n399 = icmp eq i64 %i.fe, %n.vec386
  %i.fg = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fh = lshr exact i64 %i.fg, 1
  %i.fi = add nuw i64 %i.fh, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.fg, 14
  %n.vec = and i64 %i.fi, -8                      ; 3 uses
  %i.fj = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.fi, %n.vec
  br label %.preheader297.us

.preheader297.us:                                 ; preds = %.preheader297.us.preheader, %._crit_edge319.split.us.us
  %.0226327.us = phi i64 [ %i.adr, %._crit_edge319.split.us.us ], [ 0, %.preheader297.us.preheader ] ; 7 uses
  %.0227326.us = phi i64 [ %.2.lcssa.us.us, %._crit_edge319.split.us.us ], [ -1, %.preheader297.us.preheader ]
  %.0230325.us = phi i32 [ %.lcssa, %._crit_edge319.split.us.us ], [ 0, %.preheader297.us.preheader ]
  %i.fk = mul i64 %i.dv, %.0226327.us             ; 3 uses
  %i.fl = sub i64 %i.fk, %i.ec
  %i.fm = add i64 %i.dy, %i.fk
  %i.fn = mul i64 %i.dv, %.0226327.us             ; 3 uses
  %i.fo = sub i64 %i.fn, %i.ed
  %i.fp = add i64 %i.du, %i.fn
  %i.fq = mul i64 %i.aw, %.0226327.us
  %i.fr = mul i64 %i.ag, %.0226327.us
  %i.fs = mul i64 %.0226327.us, %i.ag
  %i.ft = mul i64 %.0226327.us, %i.aw
  br label %.preheader296.us.us

.preheader296.us.us:                              ; preds = %._crit_edge.us.us, %.preheader297.us
  %.0225318.us.us = phi i64 [ 0, %.preheader297.us ], [ %i.adq, %._crit_edge.us.us ] ; 14 uses
  %.1228317.us.us = phi i64 [ %.0227326.us, %.preheader297.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ]
  %.1231316.us.us = phi i32 [ %.0230325.us, %.preheader297.us ], [ %.lcssa, %._crit_edge.us.us ] ; 2 uses
  %i.fu = mul i64 %i.dw, %.0225318.us.us          ; 3 uses
  %i.fv = add i64 %i.fl, %i.fu
  %i.fw = add i64 %i.fk, %i.fu
  %i.fx = add i64 %i.fm, %i.fu
  %i.fy = mul i64 %i.dw, %.0225318.us.us          ; 3 uses
  %i.fz = add i64 %i.fo, %i.fy
  %i.ga = add i64 %i.fn, %i.fy
  %i.gb = add i64 %i.fp, %i.fy
  %i.gc = mul i64 %i.au, %.0225318.us.us
  %i.gd = mul i64 %i.ae, %.0225318.us.us
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0225318.us.us ; 4 uses
  %i.gf = getelementptr [4 x i8], ptr %i.ge, i64 %i.am
  %i.gg = getelementptr i8, ptr %i.ge, i64 %.idx
  %i.gh = getelementptr i8, ptr %i.ge, i64 %.idx255
  %i.gi = mul i64 %.0225318.us.us, %i.ae
  %i.gj = mul i64 %.0225318.us.us, %i.au
  %i.gk = add i32 %.1231316.us.us, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us, %.preheader296.us.us
  %.0224310.us.us = phi i64 [ 0, %.preheader296.us.us ], [ %i.adp, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 7 uses
  %.2309.us.us = phi i64 [ %.1228317.us.us, %.preheader296.us.us ], [ %.4.us.us, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %.2232308.us.us = phi i32 [ %.1231316.us.us, %.preheader296.us.us ], [ %i.gv, %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %i.gl = mul i64 %i.dx, %.0224310.us.us          ; 3 uses
  %i.gm = add i64 %i.fv, %i.gl
  %i.gn = add i64 %i.fw, %i.gl
  %i.go = add i64 %i.fx, %i.gl
  %i.gp = mul i64 %i.dx, %.0224310.us.us          ; 3 uses
  %i.gq = add i64 %i.fz, %i.gp
  %i.gr = add i64 %i.ga, %i.gp
  %i.gs = add i64 %i.gb, %i.gp
  %i.gt = mul i64 %i.as, %.0224310.us.us
  %i.gu = mul i64 %i.ac, %.0224310.us.us
  %i.gv = add nsw i32 %.2232308.us.us, 1          ; 2 uses
  %i.gw = icmp slt i32 %.2232308.us.us, %i.bp
  br i1 %i.gw, label %_ZL12rotate_pairsItEvllPKfPKT_PS2_i.exit.thread.us.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not253.us.us = icmp slt i32 %.2232308.us.us, %i.br
  br i1 %.not253.us.us, label %bb.aj, label %._crit_edge.us.us

bb.aj:                                            ; preds = %bb.ai
  %i.gx = load ptr, ptr %i.cr, align 8, !tbaa !48
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %i.cu ; 17 uses
  %.not254.us.us = icmp eq i64 %.2309.us.us, %.0225318.us.us
  br i1 %.not254.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gz = load i32, ptr %i.ge, align 4, !tbaa !51 ; 2 uses
  br i1 %.not250, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ha = load i32, ptr %i.gf, align 4, !tbaa !51
  %i.hb = load i32, ptr %i.gg, align 4, !tbaa !51
  %i.hc = load i32, ptr %i.gh, align 4, !tbaa !51
  %i.hd = sitofp i32 %i.gz to float               ; 2 uses
  %i.he = sitofp i32 %i.ha to float               ; 2 uses
  %i.hf = sitofp i32 %i.hb to float               ; 2 uses
  %i.hg = sitofp i32 %i.hc to float               ; 2 uses
  br i1 %.not.i256, label %.split.us, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.al
  br i1 %i.cz, label %.lr.ph.i257.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

.lr.ph.i257.us.us:                                ; preds = %.preheader.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us
  %.085107.i.us.us = phi i64 [ %i.jg, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ 0, %.preheader.i.us.us ] ; 4 uses
  %.086106.i.us.us = phi float [ %i.jf, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hg, %.preheader.i.us.us ] ; 10 uses
  %.087105.i.us.us = phi float [ %i.jd, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hf, %.preheader.i.us.us ] ; 9 uses
  %.089104.i.us.us = phi float [ %i.je, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.he, %.preheader.i.us.us ] ; 9 uses
  %.091103.i.us.us = phi float [ %i.jc, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hd, %.preheader.i.us.us ] ; 9 uses
  %.pre110.i.us.us = lshr exact i64 %.085107.i.us.us, 1 ; 2 uses
  br i1 %.not98.i, label %._crit_edge109.i.us.us, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i257.us.us
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %.pre110.i.us.us
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !43
  br label %._crit_edge109.i.us.us

._crit_edge109.i.us.us:                           ; preds = %bb.am, %.lr.ph.i257.us.us
  %i.hj = phi float [ %i.hi, %bb.am ], [ 1.000000e+00, %.lr.ph.i257.us.us ]
  %i.hk = srem i64 %.pre110.i.us.us, %i.cy        ; 2 uses
  %i.hl = trunc nuw nsw i64 %i.hk to i32          ; 10 uses
  br i1 %i.bx, label %bb.at, label %bb.an

bb.an:                                            ; preds = %._crit_edge109.i.us.us
  br i1 %i.bv, label %bb.ao, label %.thread.us.us

bb.ao:                                            ; preds = %bb.an
  %i.hm = urem i32 %i.hl, 3
  switch i32 %i.hm, label %default.unreachable [
    i32 1, label %bb.ar
    i32 2, label %bb.aq
    i32 0, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.hn = icmp sgt i32 %i.dd, %i.hl
  br i1 %i.hn, label %bb.az, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.ho = icmp sgt i32 %i.de, %i.hl
  br i1 %i.ho, label %bb.az, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.hp = icmp sgt i32 %i.df, %i.hl
  br i1 %i.hp, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  br label %bb.az

bb.at:                                            ; preds = %._crit_edge109.i.us.us
  %i.hq = icmp eq i64 %i.hk, 0
  br i1 %i.hq, label %.thread.us.us, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hr = icmp eq i32 %.sroa.0.0.copyload, %i.hl
  br i1 %i.hr, label %.thread.us.us, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.hs = icmp eq i32 %i.cv, %i.hl
  br i1 %i.hs, label %.thread.us.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ht = icmp eq i32 %i.cw, %i.hl
  %spec.select.i.us.us = select i1 %i.ht, float %i.hg, float %.086106.i.us.us
  br label %.thread.us.us

.thread.us.us:                                    ; preds = %bb.aw, %bb.av, %bb.au, %bb.at, %bb.an
  %.1.i288.us.us = phi float [ %.086106.i.us.us, %bb.an ], [ %spec.select.i.us.us, %bb.aw ], [ %.086106.i.us.us, %bb.av ], [ %.086106.i.us.us, %bb.au ], [ %.086106.i.us.us, %bb.at ] ; 5 uses
  %.188.i286.us.us = phi float [ %.087105.i.us.us, %bb.an ], [ %.087105.i.us.us, %bb.aw ], [ %i.hf, %bb.av ], [ %.087105.i.us.us, %bb.au ], [ %.087105.i.us.us, %bb.at ] ; 4 uses
  %.190.i285.us.us = phi float [ %.089104.i.us.us, %bb.an ], [ %.089104.i.us.us, %bb.aw ], [ %.089104.i.us.us, %bb.av ], [ %i.he, %bb.au ], [ %.089104.i.us.us, %bb.at ] ; 4 uses
  %.192.i283.us.us = phi float [ %.091103.i.us.us, %bb.an ], [ %.091103.i.us.us, %bb.aw ], [ %.091103.i.us.us, %bb.av ], [ %.091103.i.us.us, %bb.au ], [ %i.hd, %bb.at ] ; 4 uses
  %.not99.i.us.us = icmp sle i32 %.sroa.0.0.copyload, %i.hl
  %i.hu = icmp sgt i32 %i.cv, %i.hl               ; 2 uses
  %or.cond.i.us.us = and i1 %i.hu, %.not99.i.us.us
  br i1 %or.cond.i.us.us, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %.thread.us.us
  %i.hv = icmp sgt i32 %i.cw, %i.hl               ; 2 uses
  br i1 %i.hu, label %._crit_edge108.i.us.us, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %spec.select122.i.us.us = select i1 %i.hv, float %.188.i286.us.us, float %.1.i288.us.us
  br label %bb.az

._crit_edge108.i.us.us:                           ; preds = %bb.ax
  %i.hw = select i1 %i.hv, float %.192.i283.us.us, float %.1.i288.us.us
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge108.i.us.us, %bb.ay, %.thread.us.us, %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.1.i289.us.us = phi float [ %.1.i288.us.us, %bb.ay ], [ %.086106.i.us.us, %bb.ar ], [ %.086106.i.us.us, %bb.aq ], [ %.086106.i.us.us, %bb.as ], [ %.086106.i.us.us, %bb.ap ], [ %.1.i288.us.us, %.thread.us.us ], [ %.1.i288.us.us, %._crit_edge108.i.us.us ]
  %.188.i287.us.us = phi float [ %.188.i286.us.us, %bb.ay ], [ %.087105.i.us.us, %bb.ar ], [ %.087105.i.us.us, %bb.aq ], [ %.087105.i.us.us, %bb.as ], [ %.087105.i.us.us, %bb.ap ], [ %.188.i286.us.us, %.thread.us.us ], [ %.188.i286.us.us, %._crit_edge108.i.us.us ]
  %.190.i284.us.us = phi float [ %.190.i285.us.us, %bb.ay ], [ %.089104.i.us.us, %bb.ar ], [ %.089104.i.us.us, %bb.aq ], [ %.089104.i.us.us, %bb.as ], [ %.089104.i.us.us, %bb.ap ], [ %.190.i285.us.us, %.thread.us.us ], [ %.190.i285.us.us, %._crit_edge108.i.us.us ]
  %.192.i282.us.us = phi float [ %.192.i283.us.us, %bb.ay ], [ %.091103.i.us.us, %bb.ar ], [ %.091103.i.us.us, %bb.aq ], [ %.091103.i.us.us, %bb.as ], [ %.091103.i.us.us, %bb.ap ], [ %.192.i283.us.us, %.thread.us.us ], [ %.192.i283.us.us, %._crit_edge108.i.us.us ]
  %.0.i.us.us = phi float [ %spec.select122.i.us.us, %bb.ay ], [ %.089104.i.us.us, %bb.ar ], [ %.087105.i.us.us, %bb.aq ], [ %.086106.i.us.us, %bb.as ], [ %.091103.i.us.us, %bb.ap ], [ %.190.i285.us.us, %.thread.us.us ], [ %i.hw, %._crit_edge108.i.us.us ]
  %i.hx = fdiv float %.0.i.us.us, %i.hj           ; 2 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.085107.i.us.us ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = fmul float %.0.copyload157, %i.hx       ; 2 uses
  br i1 %i.da, label %bb.ba, label %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us

bb.ba:                                            ; preds = %bb.az
  %i.ib = load float, ptr %i.a, align 4, !tbaa !43 ; 2 uses
  %i.ic = load float, ptr %i.db, align 4, !tbaa !43
  %i.id = trunc i64 %.085107.i.us.us to i32
  %i.ie = ashr exact i32 %i.id, 1
  %i.if = sitofp i32 %i.ie to float
  %i.ig = fsub float %i.if, %i.ib
end_hunk_0
begin_hunk_1_@_ZL29ggml_compute_forward_rope_fltIfEvPK19ggml_compute_paramsP11ggml_tensorb:bb.a
  br i1 %i.ax, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6118, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.97) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ay = icmp eq i64 %i.aa, 4
  br i1 %i.ay, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6119, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.98) #17
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.az = load i32, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !36 ; 2 uses
  %i.bc = tail call i64 @ggml_nrows(ptr noundef nonnull %1)
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %i.be = sext i32 %i.l to i64                    ; 14 uses
  %.not248 = icmp slt i64 %i.ai, %i.be
  br i1 %.not248, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6126, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.99) #17
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.bf = and i32 %i.l, 1
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6127, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.100) #17
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp sgt i32 %i.y, -1
  br i1 %i.bh, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6129, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.101) #17
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bi = and i32 %i.y, 1
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6130, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.102) #17
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bk = add nsw i32 %i.y, %i.l
  %i.bl = sext i32 %i.bk to i64
  %.not249 = icmp slt i64 %i.ai, %i.bl
  br i1 %.not249, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6131, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.103) #17
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bm = add i32 %i.bb, -1
  %i.bn = add i32 %i.bm, %i.bd
  %i.bo = sdiv i32 %i.bn, %i.bb                   ; 2 uses
  %i.bp = mul nsw i32 %i.bo, %i.az                ; 2 uses
  %i.bq = add nsw i32 %i.bp, %i.bo
  %i.br = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bd)
  %i.bs = sitofp i32 %i.l to float
  %i.bt = fdiv float -2.000000e+00, %i.bs
  %i.bu = tail call float @powf(float noundef %.0.copyload160, float noundef %i.bt) #18 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @ggml_rope_yarn_corr_dims(i32 noundef %i.l, i32 noundef %i.p, float noundef %.0.copyload160, float noundef %.0.copyload148, float noundef %.0.copyload, ptr noundef nonnull %i.a)
  %i.bv = icmp eq i32 %i.n, 40
  %i.bw = and i32 %i.n, 8
  %.not250 = icmp eq i32 %i.bw, 0                 ; 2 uses
  %i.bx = icmp eq i32 %i.n, 24                    ; 3 uses
  br i1 %.not250, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = icmp sgt i32 %.sroa.0.0.copyload, 0
  %i.bz = icmp sgt i32 %.sroa.8.0.copyload, 0
  %or.cond = select i1 %i.by, i1 true, i1 %i.bz
  %i.ca = icmp sgt i32 %.sroa.11.0.copyload, 0
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.ca
  br i1 %or.cond5, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6153, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.104) #17
  unreachable

bb.v:                                             ; preds = %bb.t, %bb.s
  br i1 %i.bx, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cb = sdiv i64 %i.ai, 2
  %i.cc = icmp eq i64 %i.cb, %i.be
  br i1 %i.cc, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6157, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.105) #17
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.cd = icmp eq i32 %i.y, 0
  br i1 %i.cd, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6158, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.106) #17
  unreachable

bb.aa:                                            ; preds = %bb.y, %bb.v
  %.not251 = icmp eq ptr %i.g, null
  br i1 %.not251, label %bb.ag, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ce = load i32, ptr %i.g, align 8, !tbaa !30
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6163, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.107) #17
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !31
  %i.ci = ashr exact i32 %i.l, 1
  %i.cj = sext i32 %i.ci to i64
  %.not252 = icmp slt i64 %i.ch, %i.cj
  br i1 %.not252, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str, i32 noundef 6164, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.108) #17
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !37
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %.0229 = phi ptr [ %i.cl, %bb.af ], [ null, %bb.aa ] ; 6 uses
  %i.cm = select i1 %2, float 1.000000e+00, float -1.000000e+00 ; 11 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !37
  %i.cp = icmp sgt i64 %i.ao, 0
  br i1 %i.cp, label %.preheader293.lr.ph, label %._crit_edge.split

.preheader293.lr.ph:                              ; preds = %bb.ag
  %i.cq = icmp sgt i64 %i.am, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cs = add i64 %i.ai, 16                       ; 4 uses
  %i.ct = sext i32 %i.az to i64                   ; 4 uses
  %i.cu = mul i64 %i.cs, %i.ct
  %.idx = shl i64 %i.am, 3
  %.idx255 = mul i64 %i.am, 12
  %i.cv = add nsw i32 %.sroa.8.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.cw = add nsw i32 %i.cv, %.sroa.11.0.copyload ; 3 uses
  %i.cx = add nsw i32 %i.cw, %.sroa.15.0.copyload
  %i.cy = sext i32 %i.cx to i64                   ; 2 uses
  %.not.i256 = icmp slt i64 %i.ai, %i.cy
  %i.cz = icmp sgt i64 %i.ai, 0                   ; 3 uses
  %.not98.i = icmp eq ptr %.0229, null            ; 3 uses
  %i.da = fcmp une float %.0.copyload154, 0.000000e+00 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.dc = fdiv float 1.000000e+00, %.0.copyload157 ; 3 uses
  %i.dd = mul nsw i32 %.sroa.0.0.copyload, 3
  %i.de = mul nsw i32 %.sroa.11.0.copyload, 3
  %i.df = mul nsw i32 %.sroa.8.0.copyload, 3
  %i.dg = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.di = ashr exact i32 %i.l, 1
  %i.dj = sext i32 %i.di to i64                   ; 5 uses
  %i.dk = zext nneg i32 %i.y to i64               ; 8 uses
  %i.dl = icmp sgt i32 %i.l, 0                    ; 2 uses
  %i.dm = icmp sgt i64 %i.ak, 0
  %or.cond359 = select i1 %i.cq, i1 %i.dm, i1 false
  br i1 %or.cond359, label %.preheader293.us.preheader, label %._crit_edge.split

.preheader293.us.preheader:                       ; preds = %.preheader293.lr.ph
  %i.dn = add nsw i32 %i.l, -2
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %i.ai, 1
  %i.dq = trunc i64 %i.ak to i32
  %brmerge = select i1 %i.bx, i1 true, i1 %i.dp
  %i.dr = add nsw i64 %i.dk, %i.do
  %i.ds = add nsw i64 %i.be, %i.dk
  %i.dt = shl nsw i64 %i.ds, 2                    ; 2 uses
  %i.du = mul i64 %i.cs, %i.ct
  %i.dv = add i64 %i.du, %i.be
  %i.dw = shl i64 %i.dv, 2
  %i.dx = add nsw i64 %i.be, -2                   ; 2 uses
  %i.dy = shl nsw i64 %i.dx, 1                    ; 2 uses
  %i.dz = shl nuw nsw i64 %i.dk, 2                ; 3 uses
  %i.ea = add nsw i64 %i.dy, %i.dz
  %i.eb = add nsw i64 %i.ea, 4                    ; 2 uses
  %i.ec = shl nsw i64 %i.dj, 2                    ; 2 uses
  %i.ed = add nsw i64 %i.ec, %i.dz                ; 2 uses
  %i.ee = add nsw i64 %i.dy, %i.ec
  %i.ef = add nsw i64 %i.ee, %i.dz
  %i.eg = add nsw i64 %i.ef, 4                    ; 2 uses
  %i.eh = mul i64 %i.cs, %i.ct
  %i.ei = add i64 %i.eh, %i.dx
  %i.ej = shl i64 %i.ei, 2
  %i.ek = add i64 %i.ai, -1
  %i.el = lshr i64 %i.ek, 1                       ; 2 uses
  %i.em = shl i64 %i.el, 2                        ; 2 uses
  %i.en = add i64 %i.em, 4                        ; 2 uses
  %i.eo = shl nsw i64 %i.be, 2                    ; 3 uses
  %i.ep = add i64 %i.em, %i.eo
  %i.eq = add i64 %i.ep, 4                        ; 2 uses
  %i.er = mul i64 %i.cs, %i.ct
  %i.es = shl i64 %i.er, 2
  %i.et = shl i64 %i.el, 3
  %i.eu = add i64 %i.ai, -1                       ; 2 uses
  %i.ev = lshr i64 %i.eu, 1                       ; 2 uses
  %i.ew = add nuw i64 %i.ev, 1                    ; 4 uses
  %i.ex = icmp eq i64 %i.ev, 0
  %unroll_iter = and i64 %i.ew, -2
  %i.ey = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.ez = insertelement <2 x float> %i.ey, float %i.cm, i64 1
  %i.fa = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fb = insertelement <2 x float> %i.fa, float %i.cm, i64 1
  %i.fc = and i64 %i.eu, 2
  %lcmp.mod.not.not = icmp eq i64 %i.fc, 0
  %lcmp.mod485 = trunc i64 %i.ew to i1
  %i.fd = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.cm, i64 1
  %xtraiter486 = and i64 %i.ew, 3                 ; 3 uses
  %i.ff = icmp ult i64 %i.ai, 7
  %unroll_iter489 = and i64 %i.ew, -4
  %i.fg = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fh = insertelement <2 x float> %i.fg, float %i.cm, i64 1
  %i.fi = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fj = insertelement <2 x float> %i.fi, float %i.cm, i64 1
  %i.fk = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.cm, i64 1
  %i.fm = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fn = insertelement <2 x float> %i.fm, float %i.cm, i64 1
  %lcmp.mod487.not = icmp eq i64 %xtraiter486, 0
  %lcmp.mod488 = icmp ne i64 %xtraiter486, 0
  %i.fo = insertelement <2 x float> poison, float %.0.copyload151, i64 0
  %i.fp = insertelement <2 x float> %i.fo, float %i.cm, i64 1
  %i.fq = add nsw i64 %i.ai, -1
  %i.fr = lshr i64 %i.fq, 1
  %i.fs = add nuw i64 %i.fr, 1                    ; 2 uses
  %min.iters.check460 = icmp ult i64 %i.ai, 31
  %n.vec462 = and i64 %i.fs, -8                   ; 3 uses
  %i.ft = shl i64 %n.vec462, 1
  %cmp.n472 = icmp eq i64 %i.fs, %n.vec462
  %i.fu = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fv = lshr exact i64 %i.fu, 1
  %i.fw = add nuw i64 %i.fv, 1                    ; 2 uses
  %min.iters.check411 = icmp ult i64 %i.fu, 30
  %n.vec413 = and i64 %i.fw, -8                   ; 3 uses
  %i.fx = shl i64 %n.vec413, 1
  %cmp.n422 = icmp eq i64 %i.fw, %n.vec413
  %i.fy = add nsw i64 %i.be, -2                   ; 2 uses
  %i.fz = lshr exact i64 %i.fy, 1
  %i.ga = add nuw i64 %i.fz, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %i.fy, 14
  %n.vec = and i64 %i.ga, -8                      ; 3 uses
  %i.gb = shl i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ga, %n.vec
  br label %.preheader293.us

.preheader293.us:                                 ; preds = %.preheader293.us.preheader, %._crit_edge315.split.us.us
  %.0226323.us = phi i64 [ %i.vw, %._crit_edge315.split.us.us ], [ 0, %.preheader293.us.preheader ] ; 9 uses
  %.0227322.us = phi i64 [ %.2.lcssa.us.us, %._crit_edge315.split.us.us ], [ -1, %.preheader293.us.preheader ]
  %.0230321.us = phi i32 [ %.lcssa, %._crit_edge315.split.us.us ], [ 0, %.preheader293.us.preheader ]
  %i.gc = mul i64 %i.aw, %.0226323.us             ; 3 uses
  %i.gd = mul i64 %i.ag, %.0226323.us             ; 3 uses
  %i.ge = mul i64 %i.aw, %.0226323.us             ; 3 uses
  %i.gf = mul i64 %i.ag, %.0226323.us             ; 3 uses
  %i.gg = mul i64 %i.aw, %.0226323.us
  %i.gh = mul i64 %i.ag, %.0226323.us
  %i.gi = mul i64 %.0226323.us, %i.ag
  %i.gj = mul i64 %.0226323.us, %i.aw
  br label %.preheader292.us.us

.preheader292.us.us:                              ; preds = %._crit_edge.us.us, %.preheader293.us
  %.0225314.us.us = phi i64 [ 0, %.preheader293.us ], [ %i.vv, %._crit_edge.us.us ] ; 16 uses
  %.1228313.us.us = phi i64 [ %.0227322.us, %.preheader293.us ], [ %.2.lcssa.us.us, %._crit_edge.us.us ]
  %.1231312.us.us = phi i32 [ %.0230321.us, %.preheader293.us ], [ %.lcssa, %._crit_edge.us.us ] ; 2 uses
  %i.gk = mul i64 %i.au, %.0225314.us.us          ; 3 uses
  %i.gl = mul i64 %i.ae, %.0225314.us.us          ; 3 uses
  %i.gm = mul i64 %i.au, %.0225314.us.us          ; 3 uses
  %i.gn = mul i64 %i.ae, %.0225314.us.us          ; 3 uses
  %i.go = mul i64 %i.au, %.0225314.us.us
  %i.gp = mul i64 %i.ae, %.0225314.us.us
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %.0225314.us.us ; 4 uses
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %i.am
  %i.gs = getelementptr i8, ptr %i.gq, i64 %.idx
  %i.gt = getelementptr i8, ptr %i.gq, i64 %.idx255
  %i.gu = mul i64 %.0225314.us.us, %i.ae
  %i.gv = mul i64 %.0225314.us.us, %i.au
  %i.gw = add i32 %.1231312.us.us, %i.dq
  br label %bb.ah

bb.ah:                                            ; preds = %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, %.preheader292.us.us
  %.0224306.us.us = phi i64 [ 0, %.preheader292.us.us ], [ %i.vu, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 9 uses
  %.2305.us.us = phi i64 [ %.1228313.us.us, %.preheader292.us.us ], [ %.4.us.us, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %.2232304.us.us = phi i32 [ %.1231312.us.us, %.preheader292.us.us ], [ %i.hd, %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us ] ; 3 uses
  %i.gx = mul i64 %i.as, %.0224306.us.us          ; 3 uses
  %i.gy = mul i64 %i.ac, %.0224306.us.us          ; 3 uses
  %i.gz = mul i64 %i.as, %.0224306.us.us          ; 3 uses
  %i.ha = mul i64 %i.ac, %.0224306.us.us          ; 3 uses
  %i.hb = mul i64 %i.as, %.0224306.us.us
  %i.hc = mul i64 %i.ac, %.0224306.us.us
  %i.hd = add nsw i32 %.2232304.us.us, 1          ; 2 uses
  %i.he = icmp slt i32 %.2232304.us.us, %i.bp
  br i1 %i.he, label %_ZL12rotate_pairsIfEvllPKfPKT_PS2_i.exit.thread.us.us, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not253.us.us = icmp slt i32 %.2232304.us.us, %i.br
  br i1 %.not253.us.us, label %bb.aj, label %._crit_edge.us.us

bb.aj:                                            ; preds = %bb.ai
  %i.hf = load ptr, ptr %i.cr, align 8, !tbaa !48 ; 4 uses
  %i.hg = getelementptr [4 x i8], ptr %i.hf, i64 %i.cu ; 22 uses
  %.not254.us.us = icmp eq i64 %.2305.us.us, %.0225314.us.us
  br i1 %.not254.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hh = load i32, ptr %i.gq, align 4, !tbaa !51 ; 2 uses
  br i1 %.not250, label %bb.bb, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hi = load i32, ptr %i.gr, align 4, !tbaa !51
  %i.hj = load i32, ptr %i.gs, align 4, !tbaa !51
  %i.hk = load i32, ptr %i.gt, align 4, !tbaa !51
  %i.hl = sitofp i32 %i.hh to float               ; 2 uses
  %i.hm = sitofp i32 %i.hi to float               ; 2 uses
  %i.hn = sitofp i32 %i.hj to float               ; 2 uses
  %i.ho = sitofp i32 %i.hk to float               ; 2 uses
  br i1 %.not.i256, label %.split.us, label %.preheader.i.us.us

.preheader.i.us.us:                               ; preds = %bb.al
  br i1 %i.cz, label %.lr.ph.i257.us.us, label %_ZL20ggml_rope_cache_initffPKfPflffS1_ff.exit.us.us

.lr.ph.i257.us.us:                                ; preds = %.preheader.i.us.us, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us
  %.085107.i.us.us = phi i64 [ %i.jo, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ 0, %.preheader.i.us.us ] ; 4 uses
  %.086106.i.us.us = phi float [ %i.jn, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.ho, %.preheader.i.us.us ] ; 10 uses
  %.087105.i.us.us = phi float [ %i.jl, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hn, %.preheader.i.us.us ] ; 9 uses
  %.089104.i.us.us = phi float [ %i.jm, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hm, %.preheader.i.us.us ] ; 9 uses
  %.091103.i.us.us = phi float [ %i.jk, %_ZL9rope_yarnffPflffS_S_.exit.i258.us.us ], [ %i.hl, %.preheader.i.us.us ] ; 9 uses
  %.pre110.i.us.us = lshr exact i64 %.085107.i.us.us, 1 ; 2 uses
  br i1 %.not98.i, label %._crit_edge109.i.us.us, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i257.us.us
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.0229, i64 %.pre110.i.us.us
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !43
  br label %._crit_edge109.i.us.us

._crit_edge109.i.us.us:                           ; preds = %bb.am, %.lr.ph.i257.us.us
  %i.hr = phi float [ %i.hq, %bb.am ], [ 1.000000e+00, %.lr.ph.i257.us.us ]
  %i.hs = srem i64 %.pre110.i.us.us, %i.cy        ; 2 uses
  %i.ht = trunc nuw nsw i64 %i.hs to i32          ; 10 uses
  br i1 %i.bx, label %bb.at, label %bb.an

bb.an:                                            ; preds = %._crit_edge109.i.us.us
  br i1 %i.bv, label %bb.ao, label %.thread.us.us

bb.ao:                                            ; preds = %bb.an
  %i.hu = urem i32 %i.ht, 3
  switch i32 %i.hu, label %default.unreachable [
    i32 1, label %bb.ar
    i32 2, label %bb.aq
    i32 0, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.hv = icmp sgt i32 %i.dd, %i.ht
  br i1 %i.hv, label %bb.az, label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.hw = icmp sgt i32 %i.de, %i.ht
  br i1 %i.hw, label %bb.az, label %bb.as

bb.ar:                                            ; preds = %bb.ao
  %i.hx = icmp sgt i32 %i.df, %i.ht
  br i1 %i.hx, label %bb.az, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  br label %bb.az

bb.at:                                            ; preds = %._crit_edge109.i.us.us
  %i.hy = icmp eq i64 %i.hs, 0
  br i1 %i.hy, label %.thread.us.us, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hz = icmp eq i32 %.sroa.0.0.copyload, %i.ht
  br i1 %i.hz, label %.thread.us.us, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ia = icmp eq i32 %i.cv, %i.ht
  br i1 %i.ia, label %.thread.us.us, label %bb.aw

end_hunk_1
