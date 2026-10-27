Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_highlights?download=true
inline.NumInlined: 258
inline.NumDeleted: 77
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 97
begin_hunk_0_@process:bb.a
  %i.ar = phi ptr [ null, %.thread ], [ %i.an, %bb.f ] ; 9 uses
  %i.as = icmp ne ptr %i.s, null
  %i.at = icmp ne i32 %i.x, 0
  %or.cond3 = and i1 %i.as, %i.at                 ; 2 uses
  br i1 %or.cond3, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.av = load i32, ptr %i.au, align 8, !tbaa !94 ; 2 uses
  %.not276 = icmp eq i32 %i.av, 0
  br i1 %.not276, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 128, ptr %i.t, align 4, !tbaa !416
  %i.aw = icmp eq i32 %i.av, 4
  br i1 %i.aw, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %.val288 = load i32, ptr %i.q, align 4, !tbaa !55 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.q, i64 16
  %.val289 = load float, ptr %i.ax, align 4, !tbaa !95 ; 2 uses
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @process_visualize(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %i.ar, ptr noundef %4, ptr noundef %4, i32 %.val288, float %.val289)
  tail call void @dt_iop_clip_and_zoom_roi(ptr noundef %3, ptr noundef %i.ar, ptr noundef %5, ptr noundef %4) #33
  tail call void @free(ptr noundef %i.ar) #33
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @process_visualize(ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 %.val288, float %.val289)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  tail call void @dt_iop_piece_clear_raster(ptr noundef nonnull %1, ptr noundef null) #33
  br label %.loopexit380

bb.o:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.val290 = load i32, ptr %i.w, align 4, !tbaa !92
  %i.ay = and i32 %.val290, 8
  %.not277 = icmp eq i32 %i.ay, 0
  br i1 %.not277, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.ba = load i32, ptr %i.az, align 16, !tbaa !417
  %i.bb = getelementptr inbounds nuw i8, ptr %i.m, i64 548
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !418
  %i.bd = tail call i32 @dt_mipmap_cache_get_matching_size(i32 noundef %i.ba, i32 noundef %i.bc) #33
  %i.be = tail call ptr @dt_conf_get_string_const(ptr noundef nonnull @.str.9) #33
  %i.bf = tail call i32 @dt_mipmap_cache_get_min_mip_from_pref(ptr noundef %i.be) #33
  %i.bg = icmp uge i32 %i.bd, %i.bf
  %i.bh = zext i1 %i.bg to i32
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0269 = phi i32 [ %i.bh, %bb.p ], [ 1, %bb.o ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !95
  %i.bk = zext i32 %i.aa to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr @highlights_clip_magics, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !12
  %i.bn = fmul reassoc nsz arcp contract afn float %i.bm, %i.bj ; 13 uses
  br i1 %i.ab, label %bb.r, label %bb.be

bb.r:                                             ; preds = %bb.q
  br i1 %i.ac, label %bb.s, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.r
  tail call fastcc void @process_clip(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, float noundef %i.bn)
  %.val291 = load ptr, ptr %i.l, align 8, !tbaa !56 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val291, i64 272
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = getelementptr inbounds nuw i8, ptr %.val291, i64 276
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bp, float %i.br)
  %i.bt = getelementptr inbounds nuw i8, ptr %.val291, i64 280
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bv = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.bs, float %i.bu)
  %i.bw = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bv, float 1.000000e+00) ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 272
  store float %i.bw, ptr %i.bx, align 4, !tbaa !12
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 276
  store float %i.bw, ptr %i.by, align 4, !tbaa !12
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  store float %i.bw, ptr %i.bz, align 4, !tbaa !12
  br label %.loopexit

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr %i.p, align 16, !tbaa !53
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !95
  %i.cd = fmul reassoc nsz arcp contract afn float %i.cc, f0x3F7CAC08 ; 6 uses
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !56  ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 240
  %i.cg = load i32, ptr %i.cf, align 16, !tbaa !96
  %.not.i = icmp eq i32 %i.cg, 0
  br i1 %.not.i, label %.thread198.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 256
  %i.ci = load float, ptr %i.ch, align 16, !tbaa !12
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 260
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !12
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ce, i64 264
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !12
  %i.cn = fmul reassoc nsz arcp contract afn float %i.ci, %i.cd
  %i.co = fmul reassoc nsz arcp contract afn float %i.ck, %i.cd
  %i.cp = fmul reassoc nsz arcp contract afn float %i.cm, %i.cd
  br label %.thread198.i

.thread198.i:                                     ; preds = %bb.t, %bb.s
  %.sroa.5.0.i = phi float [ %i.co, %bb.t ], [ %i.cd, %bb.s ] ; 4 uses
  %.sroa.0278.0.i = phi float [ %i.cn, %bb.t ], [ %i.cd, %bb.s ] ; 4 uses
  %i.cq = phi float [ %i.cp, %bb.t ], [ %i.cd, %bb.s ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !79 ; 2 uses
  %i.ct = sext i32 %i.cs to i64                   ; 8 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !78 ; 2 uses
  %i.cw = sext i32 %i.cv to i64                   ; 5 uses
  %i.cx = udiv i64 %i.ct, 3                       ; 8 uses
  %i.cy = udiv i64 %i.cw, 3                       ; 2 uses
  %i.cz = tail call i64 @dt_round_size(i64 noundef %i.cx, i64 noundef 4) #33
  %i.da = tail call i64 @dt_round_size(i64 noundef %i.cy, i64 noundef 4) #33
  %i.db = mul i64 %i.da, %i.cz                    ; 10 uses
  %i.dc = load ptr, ptr %i.p, align 16, !tbaa !53 ; 4 uses
  %i.dd = tail call i64 @dt_dev_pixelpipe_piece_hash(ptr noundef nonnull %1, ptr noundef null, i32 noundef 0) #33
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = mul i64 %i.dd, 33
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !97
  %i.dh = zext i8 %i.dg to i64
  %i.di = xor i64 %i.df, %i.dh
  %i.dj = mul i64 %i.di, 33
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 17
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !97
  %i.dm = zext i8 %i.dl to i64
  %i.dn = xor i64 %i.dj, %i.dm
  %i.do = mul i64 %i.dn, 33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dc, i64 18
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !97
  %i.dr = zext i8 %i.dq to i64
  %i.ds = xor i64 %i.do, %i.dr
  %i.dt = mul i64 %i.ds, 33
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 19
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !97
  %i.dw = zext i8 %i.dv to i64
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = load ptr, ptr %1, align 16, !tbaa !98
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 664
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !99 ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 2480
  %i.ec = mul i64 %i.dx, 33
  %i.ed = load i8, ptr %i.eb, align 1, !tbaa !97
  %i.ee = zext i8 %i.ed to i64
  %i.ef = xor i64 %i.ec, %i.ee
  %i.eg = mul i64 %i.ef, 33
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 2481
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !97
  %i.ej = zext i8 %i.ei to i64
  %i.ek = xor i64 %i.eg, %i.ej
  %i.el = mul i64 %i.ek, 33
  %i.em = getelementptr inbounds nuw i8, ptr %i.ea, i64 2482
  %i.en = load i8, ptr %i.em, align 1, !tbaa !97
  %i.eo = zext i8 %i.en to i64
  %i.ep = xor i64 %i.el, %i.eo
  %i.eq = mul i64 %i.ep, 33
  %i.er = getelementptr inbounds nuw i8, ptr %i.ea, i64 2483
  %i.es = load i8, ptr %i.er, align 1, !tbaa !97
  %i.et = zext i8 %i.es to i64
  %i.eu = xor i64 %i.eq, %i.et                    ; 2 uses
  %i.ev = load i64, ptr @img_opphash, align 8, !tbaa !100
  %i.ew = icmp eq i64 %i.eu, %i.ev
  br i1 %i.ew, label %.preheader204.preheader.i, label %bb.v

.preheader204.preheader.i:                        ; preds = %.thread198.i
  %.sroa.0262.0.copyload264.i = load float, ptr @img_oppchroma, align 16, !tbaa !12
  %.sroa.8.0.copyload265.i = load float, ptr getelementptr inbounds nuw (i8, ptr @img_oppchroma, i64 4), align 4, !tbaa !12
  %.sroa.11.0.copyload267.i = load float, ptr getelementptr inbounds nuw (i8, ptr @img_oppchroma, i64 8), align 8, !tbaa !12
  %i.ex = load i32, ptr @img_oppclipped, align 4, !tbaa !15
  %.not197.i = icmp eq i32 %i.ex, 0
  br i1 %.not197.i, label %bb.u, label %.thread199.i

bb.u:                                             ; preds = %.preheader204.preheader.i
  %i.ey = shl nsw i64 %i.ct, 2
  %i.ez = mul i64 %i.ey, %i.cw
  tail call void @dt_iop_image_copy(ptr noundef %i.ar, ptr noundef %2, i64 noundef %i.ez) #33
  br label %_process_linear_opposed.exit

bb.v:                                             ; preds = %.thread198.i
  %.not190.i = icmp eq i32 %.0269, 0
  br i1 %.not190.i, label %.thread199.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fa = mul i64 %i.db, 6                        ; 2 uses
  %i.fb = tail call ptr @dt_alloc_aligned(i64 noundef %i.fa) #33 ; 12 uses
  %.not.i.i = icmp eq ptr %i.fb, null
  br i1 %.not.i.i, label %.thread199.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.fb, i8 0, i64 %i.fa, i1 false)
  call void @llvm.assume(i1 true) [ "align"(ptr %i.fb, i64 64) ]
  %i.fc = add nsw i64 %i.cw, -1                   ; 2 uses
  %.not237.i = icmp eq i64 %i.fc, 0
  br i1 %.not237.i, label %._crit_edge220.thread.i, label %.preheader211.lr.ph.i

.preheader211.lr.ph.i:                            ; preds = %bb.x
  %i.fd = add nsw i64 %i.ct, -1                   ; 2 uses
  %.not238.i = icmp eq i64 %i.fd, 0
  br i1 %.not238.i, label %._crit_edge220.thread.i, label %.preheader211.us.preheader.i

.preheader211.us.preheader.i:                     ; preds = %.preheader211.lr.ph.i
  %i.fe = shl i64 %i.db, 1                        ; 2 uses
  br label %.preheader211.us.i

.preheader211.us.i:                               ; preds = %._crit_edge.us.i, %.preheader211.us.preheader.i
  %.0172219.us.i = phi i64 [ %i.fy, %._crit_edge.us.i ], [ 0, %.preheader211.us.preheader.i ] ; 3 uses
  %.0173218.us.i = phi i32 [ %.3.us.2.i, %._crit_edge.us.i ], [ 0, %.preheader211.us.preheader.i ]
  %i.ff = mul i64 %.0172219.us.i, %i.ct
  %i.fg = udiv i64 %.0172219.us.i, 3
  %i.fh = mul i64 %i.fg, %i.cx
  %invariant.gep.us.i = getelementptr i8, ptr %i.fb, i64 %i.fh
  br label %bb.y

bb.y:                                             ; preds = %bb.ah, %.preheader211.us.i
  %.0171217.us.i = phi i64 [ 0, %.preheader211.us.i ], [ %i.fx, %bb.ah ] ; 3 uses
  %.1216.us.i = phi i32 [ %.0173218.us.i, %.preheader211.us.i ], [ %.3.us.2.i, %bb.ah ] ; 2 uses
  %i.fi = add i64 %.0171217.us.i, %i.ff
  %i.fj = udiv i64 %.0171217.us.i, 3
  %.idx196.us.i = shl i64 %i.fi, 4
  %i.fk = getelementptr inbounds nuw i8, ptr %2, i64 %.idx196.us.i ; 3 uses
  %invariant.gep212.us.i = getelementptr i8, ptr %invariant.gep.us.i, i64 %i.fj ; 4 uses
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !12 ; 3 uses
  %i.fm = fcmp reassoc nsz arcp contract afn ult float %i.fl, %.sroa.0278.0.i
  br i1 %i.fm, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fn = load i8, ptr %invariant.gep212.us.i, align 1, !tbaa !97
  %i.fo = icmp eq i8 %i.fn, 0
  br i1 %i.fo, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %invariant.gep212.us.i, align 1, !tbaa !97
  %.pre.i = load float, ptr %i.fk, align 4, !tbaa !12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y
  %i.fp = phi float [ %.pre.i, %bb.aa ], [ %i.fl, %bb.z ], [ %i.fl, %bb.y ] ; 3 uses
  %.3.us.i = phi i32 [ 1, %bb.aa ], [ %.1216.us.i, %bb.z ], [ %.1216.us.i, %bb.y ] ; 2 uses
  %i.fq = fcmp reassoc nsz arcp contract afn ult float %i.fp, %.sroa.5.0.i
  br i1 %i.fq, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %gep213.us.1.i = getelementptr i8, ptr %invariant.gep212.us.i, i64 %i.db ; 2 uses
  %i.fr = load i8, ptr %gep213.us.1.i, align 1, !tbaa !97
  %i.fs = icmp eq i8 %i.fr, 0
  br i1 %i.fs, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i8 1, ptr %gep213.us.1.i, align 1, !tbaa !97
  %.pre288.i = load float, ptr %i.fk, align 4, !tbaa !12
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.ft = phi float [ %.pre288.i, %bb.ad ], [ %i.fp, %bb.ac ], [ %i.fp, %bb.ab ]
  %.3.us.1.i = phi i32 [ 1, %bb.ad ], [ %.3.us.i, %bb.ac ], [ %.3.us.i, %bb.ab ] ; 2 uses
  %i.fu = fcmp reassoc nsz arcp contract afn ult float %i.ft, %i.cq
  br i1 %i.fu, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %gep213.us.2.i = getelementptr i8, ptr %invariant.gep212.us.i, i64 %i.fe ; 2 uses
  %i.fv = load i8, ptr %gep213.us.2.i, align 1, !tbaa !97
  %i.fw = icmp eq i8 %i.fv, 0
  br i1 %i.fw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %gep213.us.2.i, align 1, !tbaa !97
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.3.us.2.i = phi i32 [ 1, %bb.ag ], [ %.3.us.1.i, %bb.af ], [ %.3.us.1.i, %bb.ae ] ; 3 uses
  %i.fx = add nuw i64 %.0171217.us.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fx, %i.fd
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.y

._crit_edge.us.i:                                 ; preds = %bb.ah
  %i.fy = add nuw i64 %.0172219.us.i, 1           ; 2 uses
  %exitcond242.not.i = icmp eq i64 %i.fy, %i.fc
  br i1 %exitcond242.not.i, label %._crit_edge220.i, label %.preheader211.us.i

._crit_edge220.i:                                 ; preds = %._crit_edge.us.i
  %i.fz = icmp eq i32 %.3.us.2.i, 0
  br i1 %i.fz, label %._crit_edge220.thread.i, label %.preheader210.i

.preheader210.i:                                  ; preds = %._crit_edge220.i
  %i.ga = add nsw i64 %i.cy, -3                   ; 2 uses
  %i.gb = icmp ugt i64 %i.ga, 3
  br i1 %i.gb, label %.preheader209.lr.ph.i, label %.preheader208.i

.preheader209.lr.ph.i:                            ; preds = %.preheader210.i
  %i.gc = add nsw i64 %i.cx, -3                   ; 2 uses
  %i.gd = icmp ugt i64 %i.gc, 3
  %i.ge = mul i64 %i.db, 3
  %i.gf = getelementptr i8, ptr %i.fb, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.db
  %i.gh = shl i64 %i.db, 2
  %i.gi = getelementptr i8, ptr %i.fb, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.gk = mul i64 %i.db, 5
  %i.gl = getelementptr i8, ptr %i.fb, i64 %i.gk
  br i1 %i.gd, label %.preheader209.i, label %.preheader208.i

.preheader209.i:                                  ; preds = %.preheader209.lr.ph.i, %._crit_edge.i
  %.0169223.i = phi i64 [ %i.gx, %._crit_edge.i ], [ 3, %.preheader209.lr.ph.i ] ; 2 uses
  %i.gm = mul i64 %.0169223.i, %i.cx
  br label %bb.ai

.preheader208.i:                                  ; preds = %._crit_edge.i, %.preheader209.lr.ph.i, %.preheader210.i
  %i.gn = add nsw i64 %i.cw, -3                   ; 2 uses
  %i.go = icmp ugt i64 %i.gn, 3
  br i1 %i.go, label %.preheader207.lr.ph.i, label %.thread338.i

.preheader207.lr.ph.i:                            ; preds = %.preheader208.i
  %i.gp = add nsw i64 %i.ct, -3                   ; 2 uses
  %i.gq = icmp ugt i64 %i.gp, 3
  br i1 %i.gq, label %.preheader207.preheader.i, label %.thread338.i

.preheader207.preheader.i:                        ; preds = %.preheader207.lr.ph.i
  %i.gr = fmul reassoc nsz arcp contract afn float %.sroa.0278.0.i, 2.000000e-01
  %i.gs = mul i64 %i.db, 3
  %i.gt = fmul reassoc nsz arcp contract afn float %.sroa.5.0.i, 2.000000e-01
  %i.gu = shl i64 %i.db, 2
  %i.gv = fmul reassoc nsz arcp contract afn float %i.cq, 2.000000e-01
  %i.gw = mul i64 %i.db, 5
  br label %.preheader207.i

._crit_edge.i:                                    ; preds = %bb.ai
  %i.gx = add nuw i64 %.0169223.i, 1              ; 2 uses
  %exitcond244.not.i = icmp eq i64 %i.gx, %i.ga
  br i1 %exitcond244.not.i, label %.preheader208.i, label %.preheader209.i

bb.ai:                                            ; preds = %bb.ai, %.preheader209.i
  %.0168222.i = phi i64 [ 3, %.preheader209.i ], [ %i.hi, %bb.ai ] ; 2 uses
  %i.gy = add i64 %.0168222.i, %i.gm              ; 6 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.gy
  %i.ha = tail call fastcc signext i8 @_mask_dilated(ptr noundef %i.gz, i64 noundef %i.cx)
  %i.hb = getelementptr i8, ptr %i.gf, i64 %i.gy
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !97
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.gy
  %i.hd = tail call fastcc signext i8 @_mask_dilated(ptr noundef %i.hc, i64 noundef %i.cx)
  %i.he = getelementptr i8, ptr %i.gi, i64 %i.gy
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !97
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gy
  %i.hg = tail call fastcc signext i8 @_mask_dilated(ptr noundef %i.hf, i64 noundef %i.cx)
  %i.hh = getelementptr i8, ptr %i.gl, i64 %i.gy
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !97
  %i.hi = add nuw i64 %.0168222.i, 1              ; 2 uses
  %exitcond243.not.i = icmp eq i64 %i.hi, %i.gc
  br i1 %exitcond243.not.i, label %._crit_edge.i, label %bb.ai

.preheader207.i:                                  ; preds = %._crit_edge228.i, %.preheader207.preheader.i
  %.sroa.0255.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.0255.3.i, %._crit_edge228.i ]
  %.sroa.6257.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.6257.3.i, %._crit_edge228.i ]
  %.sroa.9259.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.9259.3.i, %._crit_edge228.i ]
  %.sroa.0.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.0.3.i, %._crit_edge228.i ]
  %.sroa.6.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.6.3.i, %._crit_edge228.i ]
  %.sroa.9.0.i = phi nsz float [ 0.000000e+00, %.preheader207.preheader.i ], [ %.sroa.9.3.i, %._crit_edge228.i ]
  %.0167229.i = phi i64 [ 3, %.preheader207.preheader.i ], [ %i.hu, %._crit_edge228.i ] ; 3 uses
  %i.hj = mul i64 %.0167229.i, %i.ct
  %i.hk = udiv i64 %.0167229.i, 3
  %i.hl = mul i64 %i.hk, %i.cx
  %invariant.gep.i = getelementptr i8, ptr %i.fb, i64 %i.hl
  br label %bb.aj

.preheader206.i:                                  ; preds = %._crit_edge228.i
  %i.hm = fcmp reassoc nsz arcp contract afn ogt float %.sroa.0.3.i, 3.000000e+01
  %i.hn = fdiv reassoc nsz arcp contract afn float %.sroa.0255.3.i, %.sroa.0.3.i
  %i.ho = select reassoc nsz arcp contract afn i1 %i.hm, float %i.hn, float 0.000000e+00
  %i.hp = fcmp reassoc nsz arcp contract afn ogt float %.sroa.6.3.i, 3.000000e+01
  %i.hq = fdiv reassoc nsz arcp contract afn float %.sroa.6257.3.i, %.sroa.6.3.i
  %i.hr = select reassoc nsz arcp contract afn i1 %i.hp, float %i.hq, float 0.000000e+00
  %i.hs = fcmp reassoc nsz arcp contract afn ogt float %.sroa.9.3.i, 3.000000e+01
  %i.ht = fdiv reassoc nsz arcp contract afn float %.sroa.9259.3.i, %.sroa.9.3.i
  %spec.select370 = select reassoc nsz arcp contract afn i1 %i.hs, float %i.ht, float 0.000000e+00
  br label %.thread338.i

._crit_edge228.i:                                 ; preds = %bb.as
  %i.hu = add nuw i64 %.0167229.i, 1              ; 2 uses
  %exitcond247.not.i = icmp eq i64 %i.hu, %i.gn
  br i1 %exitcond247.not.i, label %.preheader206.i, label %.preheader207.i

bb.aj:                                            ; preds = %bb.as, %.preheader207.i
  %.sroa.0255.2.i = phi nsz float [ %.sroa.0255.0.i, %.preheader207.i ], [ %.sroa.0255.3.i, %bb.as ] ; 3 uses
  %.sroa.6257.2.i = phi nsz float [ %.sroa.6257.0.i, %.preheader207.i ], [ %.sroa.6257.3.i, %bb.as ] ; 3 uses
  %.sroa.9259.2.i = phi nsz float [ %.sroa.9259.0.i, %.preheader207.i ], [ %.sroa.9259.3.i, %bb.as ] ; 3 uses
  %.sroa.0.2.i = phi nsz float [ %.sroa.0.0.i, %.preheader207.i ], [ %.sroa.0.3.i, %bb.as ] ; 3 uses
  %.sroa.6.2.i = phi nsz float [ %.sroa.6.0.i, %.preheader207.i ], [ %.sroa.6.3.i, %bb.as ] ; 3 uses
  %.sroa.9.2.i = phi nsz float [ %.sroa.9.0.i, %.preheader207.i ], [ %.sroa.9.3.i, %bb.as ] ; 3 uses
  %.0166227.i = phi i64 [ 3, %.preheader207.i ], [ %i.ju, %bb.as ] ; 3 uses
  %i.hv = add i64 %.0166227.i, %i.hj
  %.idx203.i = shl i64 %i.hv, 4
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 %.idx203.i ; 3 uses
end_hunk_0
begin_hunk_1_@process_clip:bb.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict129
  br i1 %conflict.rdx, label %.lr.ph.split.preheader167, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eu
  %broadcast.splatinsert132 = insertelement <8 x i32> poison, i32 %.reass82.fr, i64 0
  %broadcast.splat133 = shufflevector <8 x i32> %broadcast.splatinsert132, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert136 = insertelement <8 x i32> poison, i32 %i.fa, i64 0
  %broadcast.splat137 = shufflevector <8 x i32> %broadcast.splatinsert136, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.fe = add <8 x i32> %broadcast.splat, %vec.ind ; 4 uses
  %i.ff = extractelement <8 x i32> %i.fe, i64 0
  %i.fg = zext i32 %i.ff to i64
  %i.fh = icmp sgt <8 x i32> %i.fe, splat (i32 -1) ; 2 uses
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %broadcast.splat131, <8 x i1> %i.fh, <8 x i32> poison), !tbaa !78, !alias.scope !466
  %i.fi = icmp slt <8 x i32> %broadcast.splat133, %wide.masked.gather
  %i.fj = icmp slt <8 x i32> %i.fe, %broadcast.splat135
  %i.fk = select <8 x i1> %i.fh, <8 x i1> %i.fi, <8 x i1> zeroinitializer
  %i.fl = select <8 x i1> %i.fk, <8 x i1> %i.fj, <8 x i1> zeroinitializer ; 3 uses
  %i.fm = and <8 x i32> %i.fe, splat (i32 1)
  %i.fn = or disjoint <8 x i32> %i.fm, %broadcast.splat137
  %i.fo = shl nuw nsw <8 x i32> %i.fn, splat (i32 1)
  %i.fp = lshr <8 x i32> %broadcast.splat139, %i.fo
  %i.fq = and <8 x i32> %i.fp, splat (i32 3)
  %i.fr = getelementptr [4 x i8], ptr %i.fb, i64 %i.fg
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0(ptr align 4 %i.fr, <8 x i1> %i.fl, <8 x float> poison), !tbaa !12, !alias.scope !467
  %i.fs = zext nneg <8 x i32> %i.fq to <8 x i64>
  %wide.gep = getelementptr inbounds nuw [4 x i8], ptr %i.c, <8 x i64> %i.fs
  %wide.masked.gather140 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.fl, <8 x float> poison), !tbaa !12
  %i.ft = call reassoc nsz arcp contract afn <8 x float> @llvm.minnum.v8f32(<8 x float> %wide.masked.load, <8 x float> %wide.masked.gather140)
  %predphi = select <8 x i1> %i.fl, <8 x float> %i.ft, <8 x float> zeroinitializer
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %index
  store <8 x float> %predphi, ptr %i.fu, align 4, !tbaa !12, !alias.scope !468, !noalias !469
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !463

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader167

.lr.ph.split.preheader167:                        ; preds = %.lr.ph.split.preheader, %vector.memcheck, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.split.preheader ] ; 5 uses
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader167
  %i.fw = trunc nuw nsw i64 %indvars.iv.ph to i32
  %.reass.prol = add i32 %invariant.op, %i.fw     ; 3 uses
  %i.fx = zext nneg i32 %.reass.prol to i64
  %i.fy = icmp sgt i32 %.reass.prol, -1
  br i1 %i.fy, label %bb.i, label %.lr.ph.split.prol.loopexit.unr-lcssa

bb.i:                                             ; preds = %.lr.ph.split.prol
  %i.fz = load i32, ptr %i.ck, align 4, !tbaa !78
  %i.ga = icmp slt i32 %.reass82.fr, %i.fz
  %i.gb = icmp slt i32 %.reass.prol, %i.ct
  %or.cond73.prol = select i1 %i.ga, i1 %i.gb, i1 false
  br i1 %or.cond73.prol, label %fcol.exit.prol, label %.lr.ph.split.prol.loopexit.unr-lcssa

fcol.exit.prol:                                   ; preds = %bb.i
  %.tr.i.i.prol = or disjoint i32 %i.do, %i.fa
  %i.gc = shl nuw nsw i32 %.tr.i.i.prol, 1
  %i.gd = lshr i32 %.fr89, %i.gc
  %i.ge = and i32 %i.gd, 3
  %i.gf = getelementptr [4 x i8], ptr %i.fb, i64 %i.fx
  %i.gg = load float, ptr %i.gf, align 4, !tbaa !12
  %i.gh = zext nneg i32 %i.ge to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gh
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !12
  %i.gk = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.gg, float %i.gj)
  br label %.lr.ph.split.prol.loopexit.unr-lcssa

.lr.ph.split.prol.loopexit.unr-lcssa:             ; preds = %fcol.exit.prol, %bb.i, %.lr.ph.split.prol
  %.sink118.prol = phi float [ %i.gk, %fcol.exit.prol ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %.lr.ph.split.prol ]
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eu
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gl, i64 %indvars.iv.ph
  store float %.sink118.prol, ptr %i.gm, align 4, !tbaa !12
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.split.prol.loopexit

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol.loopexit.unr-lcssa, %.lr.ph.split.preheader167
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.preheader167 ], [ %indvars.iv.next.prol, %.lr.ph.split.prol.loopexit.unr-lcssa ] ; 2 uses
  %i.gn = icmp eq i64 %indvars.iv.ph, %i.dp
  br i1 %i.gn, label %._crit_edge, label %.lr.ph.split.preheader167.new

.lr.ph.split.preheader167.new:                    ; preds = %.lr.ph.split.prol.loopexit
  %i.go = trunc nsw i64 %indvars.iv.unr to i32
  %i.gp = add i32 %i.di, %i.go
  %i.gq = and i32 %i.gp, 1
  %.tr.i.i = or disjoint i32 %i.gq, %i.fa
  %i.gr = shl nuw nsw i32 %.tr.i.i, 1
  %i.gs = lshr i32 %.fr89, %i.gr
  %i.gt = and i32 %i.gs, 3
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gu
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eu
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.eu
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.preheader
  %i.gy = mul i64 %i.cv, %indvar
  %scevgep = getelementptr i8, ptr %3, i64 %i.gy
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.cx, i1 false), !tbaa !12
  br label %._crit_edge

._crit_edge80.split:                              ; preds = %._crit_edge, %._crit_edge.us, %.preheader.lr.ph, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  br label %.loopexit

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %bb.l, %middle.block, %.lr.ph.split.us.preheader
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond98.not = icmp eq i64 %indvar.next, %wide.trip.count111
  br i1 %exitcond98.not, label %._crit_edge80.split, label %.preheader

.lr.ph.split:                                     ; preds = %bb.l, %.lr.ph.split.preheader167.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.split.preheader167.new ], [ %indvars.iv.next.1, %bb.l ] ; 4 uses
  %i.gz = trunc nuw nsw i64 %indvars.iv to i32
  %.reass = add i32 %invariant.op, %i.gz          ; 3 uses
  %i.ha = zext nneg i32 %.reass to i64
  %i.hb = icmp sgt i32 %.reass, -1
  br i1 %i.hb, label %bb.j, label %.lr.ph.split.1

bb.j:                                             ; preds = %.lr.ph.split
  %i.hc = load i32, ptr %i.ck, align 4, !tbaa !78
  %i.hd = icmp slt i32 %.reass82.fr, %i.hc
  %i.he = icmp slt i32 %.reass, %i.ct
  %or.cond73 = select i1 %i.hd, i1 %i.he, i1 false
  br i1 %or.cond73, label %fcol.exit, label %.lr.ph.split.1

fcol.exit:                                        ; preds = %bb.j
  %i.hf = getelementptr [4 x i8], ptr %i.fb, i64 %i.ha
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !12
  %i.hh = load float, ptr %i.gv, align 4, !tbaa !12
  %i.hi = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hg, float %i.hh)
  br label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split, %bb.j, %fcol.exit
  %.sink118 = phi float [ %i.hi, %fcol.exit ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %.lr.ph.split ]
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv
  store float %.sink118, ptr %i.hj, align 4, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hk = trunc nuw nsw i64 %indvars.iv.next to i32
  %.reass.1 = add i32 %invariant.op, %i.hk        ; 4 uses
  %i.hl = zext nneg i32 %.reass.1 to i64
  %i.hm = icmp sgt i32 %.reass.1, -1
  br i1 %i.hm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.1
  %i.hn = load i32, ptr %i.ck, align 4, !tbaa !78
  %i.ho = icmp slt i32 %.reass82.fr, %i.hn
  %i.hp = icmp slt i32 %.reass.1, %i.ct
  %or.cond73.1 = select i1 %i.ho, i1 %i.hp, i1 false
  br i1 %or.cond73.1, label %fcol.exit.1, label %bb.l

fcol.exit.1:                                      ; preds = %bb.k
  %i.hq = and i32 %.reass.1, 1
  %.tr.i.i.1 = or disjoint i32 %i.hq, %i.fa
  %i.hr = shl nuw nsw i32 %.tr.i.i.1, 1
  %i.hs = lshr i32 %.fr89, %i.hr
  %i.ht = and i32 %i.hs, 3
  %i.hu = getelementptr [4 x i8], ptr %i.fb, i64 %i.hl
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !12
  %i.hw = zext nneg i32 %i.ht to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4, !tbaa !12
  %i.hz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.hv, float %i.hy)
  br label %bb.l

bb.l:                                             ; preds = %fcol.exit.1, %bb.k, %.lr.ph.split.1
  %.sink118.1 = phi float [ %i.hz, %fcol.exit.1 ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %.lr.ph.split.1 ]
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gx, i64 %indvars.iv.next
  store float %.sink118.1, ptr %i.ia, align 4, !tbaa !12
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.cw
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.split, !llvm.loop !464

.loopexit:                                        ; preds = %vec.epilog.vector.body, %.lr.ph, %middle.block156, %bb.b, %._crit_edge80.split
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_provide_raster_mask(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, ptr nofree noundef readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca [4 x float], align 16             ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !79
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !78
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.e, 2
  %i.j = mul i64 %i.i, %i.h                       ; 2 uses
  %i.k = tail call ptr @dt_alloc_aligned(i64 noundef %i.j) #33 ; 5 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.k, i64 64) ]
  %i.l = tail call ptr @dt_alloc_aligned(i64 noundef %i.j) #33 ; 19 uses
  %5 = ptrtoaddr ptr %i.l to i64
  call void @llvm.assume(i1 true) [ "align"(ptr %i.l, i64 64) ]
  %i.m = icmp ne ptr %i.k, null
  %i.n = icmp ne ptr %i.l, null
  %or.cond = select i1 %i.m, i1 %i.n, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %i.l) #33
  tail call void @free(ptr noundef %i.k) #33
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 516
  %i.p = load i32, ptr %i.o, align 4, !tbaa !80   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !56   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 272
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 280
  %i.u = load float, ptr %i.t, align 8, !tbaa !12 ; 2 uses
  %i.v = load <2 x float>, ptr %i.s, align 16, !tbaa !12
  %i.w = fmul reassoc nsz arcp contract afn float %i.u, %3
  %i.x = insertelement <4 x float> poison, float %3, i64 0
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <4 x i32> zeroinitializer
  %i.z = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.u, i64 2
  %i.aa = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ab = shufflevector <4 x float> %i.aa, <4 x float> %i.z, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ac = fmul reassoc arcp contract afn <4 x float> %i.y, %i.ab ; 3 uses
  store <4 x float> %i.ac, ptr %i.b, align 16, !tbaa !12
  %i.ad = icmp eq i32 %i.p, 0
  br i1 %i.ad, label %.preheader103, label %bb.d

.preheader103:                                    ; preds = %bb.c
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !78  ; 5 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %.pre152 = load i32, ptr %i.c, align 4, !tbaa !79 ; 7 uses
  br i1 %i.af, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader103
  %i.ag = icmp sgt i32 %.pre152, 0
  %i.ah = sext i32 %.pre152 to i64                ; 2 uses
  br i1 %i.ag, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %wide.trip.count150 = zext nneg i32 %i.ae to i64 ; 2 uses
  %wide.trip.count145 = zext nneg i32 %.pre152 to i64 ; 7 uses
  %i.ai = extractelement <4 x float> %i.ac, i64 0
  %i.aj = fmul reassoc nsz arcp contract afn float %i.ai, f0x3F733333 ; 2 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt float %i.aj, 5.000000e-01
  %spec.select = select i1 %i.ak, float 5.000000e-01, float %i.aj ; 7 uses
  %i.al = shufflevector <4 x float> %i.ac, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.am = insertelement <2 x float> %i.al, float %i.w, i64 1
  %i.an = fmul reassoc nsz arcp contract afn <2 x float> %i.am, splat (float f0x3F733333) ; 2 uses
  %i.ao = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.an, splat (float 5.000000e-01)
  %i.ap = select <2 x i1> %i.ao, <2 x float> splat (float 5.000000e-01), <2 x float> %i.an ; 11 uses
  %i.aq = add nsw i64 %wide.trip.count150, -1
  %i.ar = mul nsw i64 %i.aq, %i.ah                ; 2 uses
  %i.as = add i64 %i.ar, %wide.trip.count145
  %i.at = shl i64 %i.as, 2
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.at
  %i.au = add i64 %i.ar, %wide.trip.count145
  %i.av = shl i64 %i.au, 4
  %i.aw = getelementptr i8, ptr %2, i64 %i.av
  %scevgep167 = getelementptr i8, ptr %i.aw, i64 -4
  %min.iters.check169 = icmp ult i32 %.pre152, 9
  %bound0 = icmp ult ptr %i.l, %scevgep167
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ax = and i64 %wide.trip.count145, 7          ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  %i.az = select i1 %i.ay, i64 8, i64 %i.ax
  %n.vec171 = sub nsw i64 %wide.trip.count145, %i.az ; 2 uses
  %broadcast.splatinsert172 = insertelement <8 x float> poison, float %spec.select, i64 0
  %broadcast.splat173 = shufflevector <8 x float> %broadcast.splatinsert172, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat175 = shufflevector <2 x float> %i.ap, <2 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splat177 = shufflevector <2 x float> %i.ap, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ba = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat173
  %i.bb = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat175
  %i.bc = fdiv reassoc nsz arcp contract afn <8 x float> splat (float 1.000000e+00), %broadcast.splat177
  %i.bd = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %spec.select
  %i.be = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ap
  %i.bf = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ap
  %i.bg = add nsw i64 %wide.trip.count145, -1
  %i.bh = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %spec.select
  %i.bi = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ap
  %i.bj = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ap
  %i.bk = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %spec.select
  %i.bl = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ap
  %i.bm = fdiv reassoc nsz arcp contract afn <2 x float> splat (float 1.000000e+00), %i.ap
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv147 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next148, %._crit_edge ] ; 2 uses
  %i.bn = mul nuw nsw i64 %indvars.iv147, %i.ah   ; 4 uses
  %brmerge = select i1 %min.iters.check169, i1 true, i1 %found.conflict
  br i1 %brmerge, label %scalar.ph168.preheader, label %vector.body178

scalar.ph168.preheader:                           ; preds = %.preheader, %vector.body178
  %indvars.iv142.ph = phi i64 [ %n.vec171, %vector.body178 ], [ 0, %.preheader ] ; 5 uses
  %i.bo = sub nsw i64 %wide.trip.count145, %indvars.iv142.ph
  %xtraiter194 = and i64 %i.bo, 1
  %lcmp.mod195.not = icmp eq i64 %xtraiter194, 0
  br i1 %lcmp.mod195.not, label %scalar.ph168.prol.loopexit, label %scalar.ph168.prol

scalar.ph168.prol:                                ; preds = %scalar.ph168.preheader
  %i.bp = add nuw nsw i64 %i.bn, %indvars.iv142.ph ; 2 uses
  %.idx.prol = shl i64 %i.bp, 4
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.prol ; 2 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = fsub reassoc nsz arcp contract afn float %i.br, %spec.select
  %i.bt = fmul reassoc nsz arcp contract afn float %i.bs, %i.bd ; 2 uses
  %i.bu = fcmp reassoc nsz arcp contract afn olt float %i.bt, 0.000000e+00
  %i.bv = select reassoc nsz arcp contract afn i1 %i.bu, float 0.000000e+00, float %i.bt ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bx = load <2 x float>, ptr %i.bw, align 4, !tbaa !12
  %i.by = fsub reassoc nsz arcp contract afn <2 x float> %i.bx, %i.ap ; 2 uses
  %i.bz = fmul reassoc nsz arcp contract afn <2 x float> %i.by, %i.be
  %i.ca = extractelement <2 x float> %i.bz, i64 0 ; 2 uses
  %i.cb = fcmp reassoc nsz arcp contract afn ogt float %i.bv, %i.ca
  %i.cc = select reassoc nsz arcp contract afn i1 %i.cb, float %i.bv, float %i.ca ; 2 uses
  %i.cd = fmul reassoc nsz arcp contract afn <2 x float> %i.by, %i.bf
  %i.ce = extractelement <2 x float> %i.cd, i64 1 ; 2 uses
  %i.cf = fcmp reassoc nsz arcp contract afn ogt float %i.cc, %i.ce
  %i.cg = select reassoc nsz arcp contract afn i1 %i.cf, float %i.cc, float %i.ce ; 2 uses
  %i.ch = fcmp reassoc nsz arcp contract afn olt float %i.cg, 0.000000e+00
  %i.ci = select reassoc nsz arcp contract afn i1 %i.ch, float 0.000000e+00, float %i.cg
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bp
  store float %i.ci, ptr %i.cj, align 4, !tbaa !12
  %indvars.iv.next143.prol = add nuw nsw i64 %indvars.iv142.ph, 1
  br label %scalar.ph168.prol.loopexit

scalar.ph168.prol.loopexit:                       ; preds = %scalar.ph168.prol, %scalar.ph168.preheader
  %indvars.iv142.unr = phi i64 [ %indvars.iv142.ph, %scalar.ph168.preheader ], [ %indvars.iv.next143.prol, %scalar.ph168.prol ]
  %i.ck = icmp eq i64 %indvars.iv142.ph, %i.bg
  br i1 %i.ck, label %._crit_edge, label %scalar.ph168.preheader.new

scalar.ph168.preheader.new:                       ; preds = %scalar.ph168.prol.loopexit
  %invariant.op196 = add nuw nsw i64 1, %i.bn
  br label %scalar.ph168

vector.body178:                                   ; preds = %.preheader, %vector.body178
  %index179 = phi i64 [ %index.next182, %vector.body178 ], [ 0, %.preheader ] ; 2 uses
  %i.cl = add nuw nsw i64 %i.bn, %index179        ; 2 uses
  %i.cm = shl i64 %i.cl, 4
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cm
  %wide.vec = load <32 x float>, ptr %i.cn, align 4, !tbaa !12, !alias.scope !477 ; 3 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec180 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec181 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %i.co = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %broadcast.splat173
  %i.cp = fmul reassoc nsz arcp contract afn <8 x float> %i.co, %i.ba ; 2 uses
  %i.cq = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cp, zeroinitializer
  %i.cr = select reassoc nsz arcp contract afn <8 x i1> %i.cq, <8 x float> zeroinitializer, <8 x float> %i.cp ; 2 uses
  %i.cs = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec180, %broadcast.splat175
  %i.ct = fmul reassoc nsz arcp contract afn <8 x float> %i.cs, %i.bb ; 2 uses
  %i.cu = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cr, %i.ct
  %i.cv = select reassoc nsz arcp contract afn <8 x i1> %i.cu, <8 x float> %i.cr, <8 x float> %i.ct ; 2 uses
  %i.cw = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec181, %broadcast.splat177
  %i.cx = fmul reassoc nsz arcp contract afn <8 x float> %i.cw, %i.bc ; 2 uses
  %i.cy = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cv, %i.cx
  %i.cz = select reassoc nsz arcp contract afn <8 x i1> %i.cy, <8 x float> %i.cv, <8 x float> %i.cx ; 2 uses
  %i.da = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.cz, zeroinitializer
  %i.db = select reassoc nsz arcp contract afn <8 x i1> %i.da, <8 x float> zeroinitializer, <8 x float> %i.cz
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.cl
  store <8 x float> %i.db, ptr %i.dc, align 4, !tbaa !12, !alias.scope !478, !noalias !477
  %index.next182 = add nuw i64 %index179, 8       ; 2 uses
  %i.dd = icmp eq i64 %index.next182, %n.vec171
  br i1 %i.dd, label %scalar.ph168.preheader, label %vector.body178, !llvm.loop !473

._crit_edge:                                      ; preds = %scalar.ph168, %scalar.ph168.prol.loopexit
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %.loopexit, label %.preheader

scalar.ph168:                                     ; preds = %scalar.ph168, %scalar.ph168.preheader.new
  %indvars.iv142 = phi i64 [ %indvars.iv142.unr, %scalar.ph168.preheader.new ], [ %indvars.iv.next143.1, %scalar.ph168 ] ; 3 uses
  %i.de = add nuw nsw i64 %i.bn, %indvars.iv142   ; 2 uses
  %.idx = shl i64 %i.de, 4
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 2 uses
  %i.dg = load float, ptr %i.df, align 4, !tbaa !12
  %i.dh = fsub reassoc nsz arcp contract afn float %i.dg, %spec.select
  %i.di = fmul reassoc nsz arcp contract afn float %i.dh, %i.bh ; 2 uses
  %i.dj = fcmp reassoc nsz arcp contract afn olt float %i.di, 0.000000e+00
  %i.dk = select reassoc nsz arcp contract afn i1 %i.dj, float 0.000000e+00, float %i.di ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.dm = load <2 x float>, ptr %i.dl, align 4, !tbaa !12
  %i.dn = fsub reassoc nsz arcp contract afn <2 x float> %i.dm, %i.ap ; 2 uses
  %i.do = fmul reassoc nsz arcp contract afn <2 x float> %i.dn, %i.bi
  %i.dp = extractelement <2 x float> %i.do, i64 0 ; 2 uses
  %i.dq = fcmp reassoc nsz arcp contract afn ogt float %i.dk, %i.dp
  %i.dr = select reassoc nsz arcp contract afn i1 %i.dq, float %i.dk, float %i.dp ; 2 uses
  %i.ds = fmul reassoc nsz arcp contract afn <2 x float> %i.dn, %i.bj
  %i.dt = extractelement <2 x float> %i.ds, i64 1 ; 2 uses
  %i.du = fcmp reassoc nsz arcp contract afn ogt float %i.dr, %i.dt
  %i.dv = select reassoc nsz arcp contract afn i1 %i.du, float %i.dr, float %i.dt ; 2 uses
  %i.dw = fcmp reassoc nsz arcp contract afn olt float %i.dv, 0.000000e+00
  %i.dx = select reassoc nsz arcp contract afn i1 %i.dw, float 0.000000e+00, float %i.dv
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.de
  store float %i.dx, ptr %i.dy, align 4, !tbaa !12
  %.reass = add nuw nsw i64 %indvars.iv142, %invariant.op196 ; 2 uses
  %.idx.1 = shl i64 %.reass, 4
end_hunk_1
begin_hunk_2_@process_lch_bayer:bb.a
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
  %i.gy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gt ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !97
  %i.ha = add i8 %i.gz, %i.gx
  store i8 %i.ha, ptr %i.gy, align 1, !tbaa !97
  %.reass.us.us.us.us.us.1.1 = add i32 %invariant.op.us.us.us.us.1, 1
  %i.hb = sext i32 %.reass.us.us.us.us.us.1.1 to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.fo
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !97
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hb
  %i.hf = load float, ptr %i.he, align 4, !tbaa !12
  %i.hg = zext i8 %i.hd to i64                    ; 2 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.hg
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !12
  %i.hj = fcmp reassoc nsz arcp contract afn oge float %i.hf, %i.hi
  %i.hk = zext i1 %i.hj to i8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.hg ; 2 uses
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !97
  %i.hn = add i8 %i.hm, %i.hk
  store i8 %i.hn, ptr %i.hl, align 1, !tbaa !97
  %.reass.us.us.us.us.us.2.1 = add i32 %invariant.op.us.us.us.us.1, 2
  %i.ho = sext i32 %.reass.us.us.us.us.us.2.1 to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ga
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !97
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ho
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !12
  %i.ht = zext i8 %i.hq to i64                    ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ht
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !12
  %i.hw = fcmp reassoc nsz arcp contract afn oge float %i.hs, %i.hv
  %i.hx = zext i1 %i.hw to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ht ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !97
  %i.ia = add i8 %i.hz, %i.hx
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !97
  %i.ib = mul i32 %i.ej, %i.dx
  %invariant.op.us.us.us.us.2 = add i32 %i.ib, %i.em ; 3 uses
  %i.ic = sext i32 %invariant.op.us.us.us.us.2 to i64
  %i.id = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.er
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !97
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ic
  %i.ig = load float, ptr %i.if, align 4, !tbaa !12
  %i.ih = zext i8 %i.ie to i64                    ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ih
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !12
  %i.ik = fcmp reassoc nsz arcp contract afn oge float %i.ig, %i.ij
  %i.il = zext i1 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ih ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !97
  %i.io = add i8 %i.in, %i.il
  store i8 %i.io, ptr %i.im, align 1, !tbaa !97
  %.reass.us.us.us.us.us.1.2 = add i32 %invariant.op.us.us.us.us.2, 1
  %i.ip = sext i32 %.reass.us.us.us.us.us.1.2 to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fo
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !97
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ip
  %i.it = load float, ptr %i.is, align 4, !tbaa !12
  %i.iu = zext i8 %i.ir to i64                    ; 2 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.iu
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !12
  %i.ix = fcmp reassoc nsz arcp contract afn oge float %i.it, %i.iw
  %i.iy = zext i1 %i.ix to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.iu ; 2 uses
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !97
  %i.jb = add i8 %i.ja, %i.iy
  store i8 %i.jb, ptr %i.iz, align 1, !tbaa !97
  %.reass.us.us.us.us.us.2.2 = add i32 %invariant.op.us.us.us.us.2, 2
  %i.jc = sext i32 %.reass.us.us.us.us.us.2.2 to i64
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ga
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !97
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.jc
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !12
  %i.jh = zext i8 %i.je to i64                    ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jh
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !12
  %i.jk = fcmp reassoc nsz arcp contract afn oge float %i.jg, %i.jj
  %i.jl = zext i1 %i.jk to i8
end_hunk_2
begin_hunk_3_@interpolate_bilinear:bb.a
  %wide.masked.gather17 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.masked.gather18 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep13, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep19 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep15, i64 4
  %wide.masked.gather20 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep19, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bb = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather20, %i.at
  %wide.gep21 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep14, i64 4
  %wide.masked.gather22 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep21, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bc = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather22, %i.au
  %i.bd = fadd reassoc nsz arcp contract afn <8 x float> %i.bc, %i.bb ; 2 uses
  %wide.gep23 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather24 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep23, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep25 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep13, i64 4
  %wide.masked.gather26 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep25, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep27 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep15, i64 8
  %wide.masked.gather28 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep27, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.be = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather28, %i.at
  %wide.gep29 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep14, i64 8
  %wide.masked.gather30 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep29, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bf = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather30, %i.au
  %i.bg = fadd reassoc nsz arcp contract afn <8 x float> %i.bf, %i.be ; 2 uses
  %wide.gep31 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather32 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep31, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep33 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep13, i64 8
  %wide.masked.gather34 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep33, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep35 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep15, i64 12
  %wide.masked.gather36 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep35, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bh = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather36, %i.at
  %wide.gep37 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep14, i64 12
  %wide.masked.gather38 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep37, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bi = fmul reassoc nsz arcp contract afn <8 x float> %wide.masked.gather38, %i.au
  %i.bj = fadd reassoc nsz arcp contract afn <8 x float> %i.bi, %i.bh ; 2 uses
  %wide.gep39 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather40 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep39, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %wide.gep41 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep13, i64 12
  %wide.masked.gather42 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep41, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12
  %i.bk = shufflevector <8 x float> %wide.masked.gather17, <8 x float> %wide.masked.gather24, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bl = shufflevector <8 x float> %i.at, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bm = fmul reassoc nsz arcp contract afn <16 x float> %i.bk, %i.bl
  %i.bn = shufflevector <8 x float> %i.ba, <8 x float> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bo = fsub reassoc nsz arcp contract afn <16 x float> %i.bm, %i.bn
  %i.bp = shufflevector <8 x float> %wide.masked.gather18, <8 x float> %wide.masked.gather26, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bq = shufflevector <8 x float> %i.au, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.br = fmul reassoc nsz arcp contract afn <16 x float> %i.bp, %i.bq
  %i.bs = fadd reassoc nsz arcp contract afn <16 x float> %i.bo, %i.br
  %i.bt = fmul reassoc nsz arcp contract afn <16 x float> %i.bs, %i.y
  %i.bu = shufflevector <8 x float> %i.ba, <8 x float> %i.bd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bv = fadd reassoc nsz arcp contract afn <16 x float> %i.bt, %i.bu
  %i.bw = shufflevector <8 x float> %wide.masked.gather32, <8 x float> %wide.masked.gather40, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bx = shufflevector <8 x float> %i.at, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.by = fmul reassoc nsz arcp contract afn <16 x float> %i.bw, %i.bx
  %i.bz = shufflevector <8 x float> %i.bg, <8 x float> %i.bj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ca = fsub reassoc nsz arcp contract afn <16 x float> %i.by, %i.bz
  %i.cb = shufflevector <8 x float> %wide.masked.gather34, <8 x float> %wide.masked.gather42, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cc = shufflevector <8 x float> %i.au, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cd = fmul reassoc nsz arcp contract afn <16 x float> %i.cb, %i.cc
  %i.ce = fadd reassoc nsz arcp contract afn <16 x float> %i.ca, %i.cd
  %i.cf = fmul reassoc nsz arcp contract afn <16 x float> %i.ce, %i.z
  %i.cg = shufflevector <8 x float> %i.bg, <8 x float> %i.bj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ch = fadd reassoc nsz arcp contract afn <16 x float> %i.cf, %i.cg
  %interleaved.vec = shufflevector <16 x float> %i.bv, <16 x float> %i.ch, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.ax, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !589

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %.08392.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %i.cj = insertelement <4 x float> poison, float %i.w, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> zeroinitializer
  br label %scalar.ph

._crit_edge94.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %bb.a
  ret void

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cl = add nuw i64 %.08493, 1                  ; 2 uses
  %exitcond96.not = icmp eq i64 %i.cl, %5
  br i1 %exitcond96.not, label %._crit_edge94.split, label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.08392 = phi i64 [ %i.ea, %scalar.ph ], [ %.08392.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cm = uitofp reassoc nsz arcp contract afn i64 %.08392 to float
  %i.cn = fmul reassoc nnan nsz arcp contract afn float %i.cm, %i.a
  %i.co = fmul reassoc nsz arcp contract afn float %i.cn, %i.i ; 2 uses
  %i.cp = tail call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.co)
  %i.cq = fptoui float %i.cp to i64               ; 3 uses
  %i.cr = add i64 %i.cq, 1                        ; 2 uses
  %i.cs = icmp ugt i64 %1, %i.cq
  %i.ct = select i1 %i.cs, i64 %i.cq, i64 %i.b    ; 2 uses
  %i.cu = icmp ult i64 %i.cr, %1
  %i.cv = select i1 %i.cu, i64 %i.cr, i64 %i.b    ; 3 uses
  %i.cw = add i64 %i.ct, %i.t
  %.idx = shl i64 %i.cw, 4
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.cy = add i64 %i.cv, %i.t
  %.idx87 = shl i64 %i.cy, 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 %.idx87
  %i.da = add i64 %i.cv, %i.u
  %.idx88 = shl i64 %i.da, 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 %.idx88
  %i.dc = add i64 %i.ct, %i.u
  %.idx89 = shl i64 %i.dc, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 %.idx89
  %i.de = uitofp reassoc nsz arcp contract afn i64 %i.cv to float
  %i.df = fsub reassoc nsz arcp contract afn float %i.de, %i.co ; 2 uses
  %i.dg = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.df
  %i.dh = add i64 %.08392, %i.x
  %.idx90 = shl i64 %i.dh, 4
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 %.idx90
  %i.dj = load <4 x float>, ptr %i.dd, align 4, !tbaa !12
  %i.dk = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dm = fmul reassoc nsz arcp contract afn <4 x float> %i.dj, %i.dl
  %i.dn = load <4 x float>, ptr %i.db, align 4, !tbaa !12
  %i.do = insertelement <4 x float> poison, float %i.dg, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.dq = fmul reassoc nsz arcp contract afn <4 x float> %i.dn, %i.dp
  %i.dr = fadd reassoc nsz arcp contract afn <4 x float> %i.dq, %i.dm ; 2 uses
  %i.ds = load <4 x float>, ptr %i.cx, align 4, !tbaa !12
  %i.dt = fmul reassoc nsz arcp contract afn <4 x float> %i.ds, %i.dl
  %i.du = load <4 x float>, ptr %i.cz, align 4, !tbaa !12
  %i.dv = fmul reassoc nsz arcp contract afn <4 x float> %i.du, %i.dp
  %i.dw = fsub reassoc nsz arcp contract afn <4 x float> %i.dt, %i.dr
  %i.dx = fadd reassoc nsz arcp contract afn <4 x float> %i.dw, %i.dv
  %i.dy = fmul reassoc nsz arcp contract afn <4 x float> %i.dx, %i.ck
  %i.dz = fadd reassoc nsz arcp contract afn <4 x float> %i.dy, %i.dr
  store <4 x float> %i.dz, ptr %i.di, align 4, !tbaa !12
  %i.ea = add nuw i64 %.08392, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %4
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !590
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @wavelets_process(ptr noalias noundef %0, ptr noalias nofree noundef captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, i64 noundef range(i64 0, 4611686018427387904) %3, i64 noundef range(i64 0, 4611686018427387904) %4, i32 noundef range(i32 1, 13) %5, ptr noalias nofree noundef captures(none) %6, ptr noalias noundef %7, ptr noalias noundef %8, i32 noundef range(i32 0, 2) %9, float noundef %10, i32 noundef range(i32 0, 2) %11, float noundef %12) unnamed_addr #26 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = alloca [9 x [4 x float]], align 16       ; 13 uses
  %i.c = alloca [4 x float], align 16             ; 4 uses
  %i.d = alloca [4 x float], align 16             ; 4 uses
  %i.e = alloca [64 x i8], align 16               ; 6 uses
  %i.f = shl nuw i64 %3, 2                        ; 5 uses
  %i.g = shl i64 %3, 4
  %i.h = add i64 %i.g, 48
  %i.i = and i64 %i.h, -64
  %i.j = tail call ptr @dt_alloc_aligned(i64 noundef %i.i) #33 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.j, i64 64) ]
  %.not.i = icmp eq i64 %4, 0                     ; 3 uses
  %i.k = add nsw i32 %5, -1
  %i.l = trunc i64 %4 to i32                      ; 9 uses
  %invariant.op.i = add i32 %i.l, -1              ; 5 uses
  %i.m = add nsw i64 %4, -1                       ; 2 uses
  %.not.i40.i = icmp eq i64 %3, 0                 ; 3 uses
  %i.n = add nsw i64 %3, -1                       ; 3 uses
  %i.o = icmp eq i32 %9, 0
  %i.p = trunc i64 %3 to i32                      ; 3 uses
  %i.q = add i32 %i.p, -1                         ; 2 uses
  %reass.add105 = fsub reassoc nsz arcp contract afn float -3.000000e+00, %12 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 3 uses
  %i.ac = icmp ne i32 %11, 0
  %i.ad = shl i64 %3, 4
  %min.iters.check162 = icmp samesign ult i64 %3, 4
  %n.vec164 = and i64 %3, 4611686018427387900     ; 3 uses
  %cmp.n195 = icmp eq i64 %3, %n.vec164
  %min.iters.check = icmp samesign ult i64 %3, 8
  %n.vec = and i64 %3, 4611686018427387896        ; 3 uses
  %broadcast.splatinsert116 = insertelement <8 x i64> poison, i64 %i.n, i64 0
  %broadcast.splat117 = shufflevector <8 x i64> %broadcast.splatinsert116, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %3, %n.vec
  %i.ae = insertelement <2 x float> poison, float %reass.add105, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x float> poison, float %10, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.b:                                             ; preds = %bb.aa
  call void @free(ptr noundef %i.j) #33
  ret void

bb.c:                                             ; preds = %bb.a, %bb.aa
  %.054119 = phi i32 [ 0, %bb.a ], [ %i.adz, %bb.aa ] ; 15 uses
  %i.ai = shl nuw nsw i32 1, %.054119             ; 24 uses
  %.not147.not = icmp eq i32 %.054119, 0          ; 3 uses
  %i.aj = and i32 %.054119, 1
  %.not = icmp eq i32 %i.aj, 0                    ; 2 uses
  %. = select i1 %.not, ptr %8, ptr %7
  %.053 = select i1 %.not147.not, ptr %0, ptr %.  ; 13 uses
  %.0 = select i1 %.not, ptr %7, ptr %8           ; 17 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  br i1 %.not.i, label %decompose_2D_Bspline.exit, label %.lr.ph66.i

.lr.ph66.i:                                       ; preds = %bb.c
  %.not.i.i = icmp slt i32 %i.ai, %i.l
  %.reass.i = add nuw i32 %invariant.op.i, %i.ai
  %i.ak = shl nuw nsw i32 2, %.054119             ; 4 uses
  %i.al = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.am = zext nneg i32 %i.ak to i64              ; 3 uses
  %i.an = add nsw i32 %i.ai, -1
  %i.ao = and i32 %i.an, %i.l                     ; 3 uses
  %i.ap = icmp eq i32 %i.ao, 0
  %scevgep2 = getelementptr i8, ptr %.0, i64 -12
  %scevgep4 = getelementptr i8, ptr %.0, i64 4
  %scevgep6 = getelementptr i8, ptr %.0, i64 -8
  %scevgep8 = getelementptr i8, ptr %.0, i64 8
  %scevgep10 = getelementptr i8, ptr %.0, i64 -4
  %scevgep12 = getelementptr i8, ptr %.0, i64 12
  %scevgep16 = getelementptr i8, ptr %.053, i64 -12
  %scevgep18 = getelementptr i8, ptr %.053, i64 4
  %scevgep20 = getelementptr i8, ptr %.053, i64 -8
  %scevgep22 = getelementptr i8, ptr %.053, i64 8
  %scevgep24 = getelementptr i8, ptr %.053, i64 -4
  %scevgep26 = getelementptr i8, ptr %.053, i64 12
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <8 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat113 = shufflevector <8 x i32> %broadcast.splatinsert112, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert114 = insertelement <8 x i64> poison, i64 %i.al, i64 0
  %broadcast.splat115 = shufflevector <8 x i64> %broadcast.splatinsert114, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert118 = insertelement <8 x i64> poison, i64 %i.am, i64 0
  %broadcast.splat119 = shufflevector <8 x i64> %broadcast.splatinsert118, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph66.i
  %.03764.i = phi i64 [ 0, %.lr.ph66.i ], [ %i.hd, %._crit_edge.i ] ; 2 uses
  %i.aq = trunc i64 %.03764.i to i32              ; 5 uses
  br i1 %.not.i.i, label %bb.e, label %dwt_interleave_rows.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ar = sdiv i32 %.reass.i, %i.ai               ; 4 uses
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = mul nsw i32 %i.ao, %i.ar                ; 2 uses
  %i.at = icmp sgt i32 %i.as, %i.aq
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = sdiv i32 %i.aq, %i.ar
  %i.av = srem i32 %i.aq, %i.ar
  %i.aw = shl nsw i32 %i.av, %.054119
  %i.ax = add nsw i32 %i.aw, %i.au
  br label %dwt_interleave_rows.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ay = sub nsw i32 %i.aq, %i.as                ; 2 uses
  %i.az = add nsw i32 %i.ar, -1                   ; 2 uses
  %i.ba = sdiv i32 %i.ay, %i.az
  %i.bb = add nsw i32 %i.ba, %i.ao
  %i.bc = srem i32 %i.ay, %i.az
  %i.bd = shl nsw i32 %i.bc, %.054119
  %i.be = add nsw i32 %i.bb, %i.bd
  br label %dwt_interleave_rows.exit.i

dwt_interleave_rows.exit.i:                       ; preds = %bb.h, %bb.g, %bb.d
  %.1.i.i = phi i32 [ %i.aq, %bb.d ], [ %i.ax, %bb.g ], [ %i.be, %bb.h ] ; 3 uses
  %i.bf = sext i32 %.1.i.i to i64                 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.bg = sub nsw i32 %.1.i.i, %i.ak
  %i.bh = call i32 @llvm.smax.i32(i32 %i.bg, i32 0)
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = mul i64 %i.f, %i.bi                     ; 2 uses
  %i.bk = sub nsw i32 %.1.i.i, %i.ai
  %i.bl = call i32 @llvm.smax.i32(i32 %i.bk, i32 0)
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = mul i64 %i.f, %i.bm                     ; 2 uses
  %i.bo = mul i64 %i.f, %i.bf                     ; 2 uses
  %i.bp = add nsw i64 %i.bf, %i.al
  %..i.i = call i64 @llvm.umin.i64(i64 %i.bp, i64 %i.m)
  %i.bq = mul i64 %..i.i, %i.f                    ; 2 uses
  %i.br = add nsw i64 %i.bf, %i.am
  %i.bs = call i64 @llvm.umin.i64(i64 %i.br, i64 %i.m)
  %i.bt = mul i64 %i.bs, %i.f                     ; 2 uses
  br i1 %.not.i40.i, label %._crit_edge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %dwt_interleave_rows.exit.i
  br i1 %min.iters.check162, label %.lr.ph.i.i.preheader214, label %vector.body165

vector.body165:                                   ; preds = %.lr.ph.i.i.preheader, %vector.body165
  %index166 = phi i64 [ %index.next193, %vector.body165 ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bu = shl nuw i64 %index166, 2                ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.bu ; 5 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.bu
  %i.bx = getelementptr [4 x i8], ptr %i.bv, i64 %i.bj
  %i.by = getelementptr [4 x i8], ptr %i.bv, i64 %i.bn
  %i.bz = getelementptr [4 x i8], ptr %i.bv, i64 %i.bo
  %i.ca = getelementptr [4 x i8], ptr %i.bv, i64 %i.bq
  %i.cb = getelementptr [4 x i8], ptr %i.bv, i64 %i.bt
  %wide.vec167 = load <16 x float>, ptr %i.bx, align 4, !tbaa !12, !alias.scope !616, !noalias !615 ; 4 uses
  %strided.vec168 = shufflevector <16 x float> %wide.vec167, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec169 = shufflevector <16 x float> %wide.vec167, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec170 = shufflevector <16 x float> %wide.vec167, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec171 = shufflevector <16 x float> %wide.vec167, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec172 = load <16 x float>, ptr %i.by, align 4, !tbaa !12, !alias.scope !616, !noalias !615 ; 4 uses
  %strided.vec173 = shufflevector <16 x float> %wide.vec172, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec174 = shufflevector <16 x float> %wide.vec172, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec175 = shufflevector <16 x float> %wide.vec172, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec176 = shufflevector <16 x float> %wide.vec172, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec177 = load <16 x float>, ptr %i.bz, align 4, !tbaa !12, !alias.scope !616, !noalias !615 ; 4 uses
  %strided.vec178 = shufflevector <16 x float> %wide.vec177, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec179 = shufflevector <16 x float> %wide.vec177, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec180 = shufflevector <16 x float> %wide.vec177, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec181 = shufflevector <16 x float> %wide.vec177, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cc = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec178, splat (float 3.750000e-01)
  %wide.vec182 = load <16 x float>, ptr %i.ca, align 4, !tbaa !12, !alias.scope !616, !noalias !615 ; 4 uses
  %strided.vec183 = shufflevector <16 x float> %wide.vec182, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec184 = shufflevector <16 x float> %wide.vec182, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec185 = shufflevector <16 x float> %wide.vec182, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec186 = shufflevector <16 x float> %wide.vec182, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %wide.vec187 = load <16 x float>, ptr %i.cb, align 4, !tbaa !12, !alias.scope !616, !noalias !615 ; 4 uses
  %strided.vec188 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 0, i32 4, i32 8, i32 12>
  %strided.vec189 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 1, i32 5, i32 9, i32 13>
  %strided.vec190 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 2, i32 6, i32 10, i32 14>
  %strided.vec191 = shufflevector <16 x float> %wide.vec187, <16 x float> poison, <4 x i32> <i32 3, i32 7, i32 11, i32 15>
  %i.cd = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec183, %strided.vec173
  %i.ce = fmul reassoc nsz arcp contract afn <4 x float> %i.cd, splat (float 2.500000e-01)
  %i.cf = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec188, %strided.vec168
  %i.cg = fmul reassoc nsz arcp contract afn <4 x float> %i.cf, splat (float 6.250000e-02)
  %i.ch = fadd reassoc nsz arcp contract afn <4 x float> %i.ce, %i.cc
  %i.ci = fadd reassoc nsz arcp contract afn <4 x float> %i.ch, %i.cg ; 2 uses
  %i.cj = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec179, splat (float 3.750000e-01)
  %i.ck = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec184, %strided.vec174
  %i.cl = fmul reassoc nsz arcp contract afn <4 x float> %i.ck, splat (float 2.500000e-01)
  %i.cm = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec189, %strided.vec169
  %i.cn = fmul reassoc nsz arcp contract afn <4 x float> %i.cm, splat (float 6.250000e-02)
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.cl, %i.cj
  %i.cp = fadd reassoc nsz arcp contract afn <4 x float> %i.co, %i.cn ; 2 uses
  %i.cq = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec180, splat (float 3.750000e-01)
  %i.cr = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec185, %strided.vec175
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %i.cr, splat (float 2.500000e-01)
  %i.ct = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec190, %strided.vec170
  %i.cu = fmul reassoc nsz arcp contract afn <4 x float> %i.ct, splat (float 6.250000e-02)
  %i.cv = fadd reassoc nsz arcp contract afn <4 x float> %i.cs, %i.cq
  %i.cw = fadd reassoc nsz arcp contract afn <4 x float> %i.cv, %i.cu ; 2 uses
  %i.cx = fmul reassoc nsz arcp contract afn <4 x float> %strided.vec181, splat (float 3.750000e-01)
  %i.cy = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec186, %strided.vec176
  %i.cz = fmul reassoc nsz arcp contract afn <4 x float> %i.cy, splat (float 2.500000e-01)
  %i.da = fadd reassoc nsz arcp contract afn <4 x float> %strided.vec191, %strided.vec171
  %i.db = fmul reassoc nsz arcp contract afn <4 x float> %i.da, splat (float 6.250000e-02)
  %i.dc = fadd reassoc nsz arcp contract afn <4 x float> %i.cz, %i.cx
  %i.dd = fadd reassoc nsz arcp contract afn <4 x float> %i.dc, %i.db ; 2 uses
  %i.de = shufflevector <4 x float> %i.ci, <4 x float> %i.cp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.df = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.de, zeroinitializer
  %i.dg = shufflevector <4 x float> %i.ci, <4 x float> %i.cp, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dh = select reassoc nsz arcp contract afn <8 x i1> %i.df, <8 x float> zeroinitializer, <8 x float> %i.dg
  %i.di = shufflevector <4 x float> %i.cw, <4 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dj = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.di, zeroinitializer
  %i.dk = shufflevector <4 x float> %i.cw, <4 x float> %i.dd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.dl = select reassoc nsz arcp contract afn <8 x i1> %i.dj, <8 x float> zeroinitializer, <8 x float> %i.dk
  %interleaved.vec192 = shufflevector <8 x float> %i.dh, <8 x float> %i.dl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec192, ptr %i.bw, align 64, !tbaa !12, !alias.scope !617, !noalias !615
  %index.next193 = add nuw i64 %index166, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next193, %n.vec164
  br i1 %i.dm, label %middle.block194, label %vector.body165, !llvm.loop !596

middle.block194:                                  ; preds = %vector.body165
  br i1 %cmp.n195, label %.lr.ph.i, label %.lr.ph.i.i.preheader214

.lr.ph.i.i.preheader214:                          ; preds = %.lr.ph.i.i.preheader, %middle.block194
  %.036.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %n.vec164, %middle.block194 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader214, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %i.ej, %.lr.ph.i.i ], [ %.036.i.i.ph, %.lr.ph.i.i.preheader214 ] ; 2 uses
  %i.dn = shl nuw i64 %.036.i.i, 2                ; 2 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.dn ; 5 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dn
  %i.dq = getelementptr [4 x i8], ptr %i.do, i64 %i.bj
  %i.dr = getelementptr [4 x i8], ptr %i.do, i64 %i.bn
  %i.ds = getelementptr [4 x i8], ptr %i.do, i64 %i.bo
  %i.dt = getelementptr [4 x i8], ptr %i.do, i64 %i.bq
  %i.du = getelementptr [4 x i8], ptr %i.do, i64 %i.bt
  %i.dv = load <4 x float>, ptr %i.dq, align 4, !tbaa !12, !alias.scope !616, !noalias !615
  %i.dw = load <4 x float>, ptr %i.dr, align 4, !tbaa !12, !alias.scope !616, !noalias !615
  %i.dx = load <4 x float>, ptr %i.ds, align 4, !tbaa !12, !alias.scope !616, !noalias !615
  %i.dy = fmul reassoc nsz arcp contract afn <4 x float> %i.dx, splat (float 3.750000e-01)
  %i.dz = load <4 x float>, ptr %i.dt, align 4, !tbaa !12, !alias.scope !616, !noalias !615
  %i.ea = load <4 x float>, ptr %i.du, align 4, !tbaa !12, !alias.scope !616, !noalias !615
  %i.eb = fadd reassoc nsz arcp contract afn <4 x float> %i.dz, %i.dw
  %i.ec = fmul reassoc nsz arcp contract afn <4 x float> %i.eb, splat (float 2.500000e-01)
  %i.ed = fadd reassoc nsz arcp contract afn <4 x float> %i.ea, %i.dv
  %i.ee = fmul reassoc nsz arcp contract afn <4 x float> %i.ed, splat (float 6.250000e-02)
  %i.ef = fadd reassoc nsz arcp contract afn <4 x float> %i.ec, %i.dy
  %i.eg = fadd reassoc nsz arcp contract afn <4 x float> %i.ef, %i.ee ; 2 uses
  %i.eh = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.eg, zeroinitializer
  %i.ei = select <4 x i1> %i.eh, <4 x float> zeroinitializer, <4 x float> %i.eg
  store <4 x float> %i.ei, ptr %i.dp, align 16, !tbaa !12, !alias.scope !617, !noalias !615
  %i.ej = add nuw nsw i64 %.036.i.i, 1            ; 2 uses
end_hunk_3
begin_hunk_4_@wavelets_process:bb.a
  %bound1105 = icmp ult ptr %scevgep23, %scevgep14
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  %bound0108 = icmp ult ptr %scevgep13, %scevgep28
  %bound1109 = icmp ult ptr %scevgep27, %scevgep14
  %found.conflict110 = and i1 %bound0108, %bound1109
  %conflict.rdx111 = or i1 %conflict.rdx107, %found.conflict110
  br i1 %conflict.rdx111, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.memcheck ] ; 3 uses
  %vec.ind120 = phi <8 x i32> [ %vec.ind.next160, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vector.memcheck ] ; 3 uses
  %i.ep = add i64 %index, %i.ek
  %i.eq = shl i64 %i.ep, 2                        ; 3 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.eq
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.es = sub nsw <8 x i32> %vec.ind120, %broadcast.splat
  %i.et = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.es, <8 x i32> zeroinitializer)
  %i.eu = shl nuw nsw <8 x i32> %i.et, splat (i32 2)
  %i.ev = zext nneg <8 x i32> %i.eu to <8 x i64>
  %i.ew = sub nsw <8 x i32> %vec.ind120, %broadcast.splat113
  %i.ex = call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ew, <8 x i32> zeroinitializer)
  %i.ey = shl nuw nsw <8 x i32> %i.ex, splat (i32 2)
  %i.ez = zext nneg <8 x i32> %i.ey to <8 x i64>
  %i.fa = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat115
  %i.fb = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %i.fa, <8 x i64> %broadcast.splat117)
  %i.fc = add nuw nsw <8 x i64> %vec.ind, %broadcast.splat119
  %i.fd = call <8 x i64> @llvm.umin.v8i64(<8 x i64> %i.fc, <8 x i64> %broadcast.splat117)
  %wide.gep = getelementptr [4 x i8], ptr %i.j, <8 x i64> %i.ev ; 4 uses
  %wide.gep121 = getelementptr [4 x i8], ptr %i.j, <8 x i64> %i.ez ; 4 uses
  %i.fe = shl i64 %index, 4
  %i.ff = getelementptr i8, ptr %i.j, i64 %i.fe
  %i.fg = shl <8 x i64> %i.fb, splat (i64 4)
  %wide.gep122 = getelementptr i8, ptr %i.j, <8 x i64> %i.fg ; 4 uses
  %i.fh = shl <8 x i64> %i.fd, splat (i64 4)
  %wide.gep123 = getelementptr i8, ptr %i.j, <8 x i64> %i.fh ; 4 uses
  %wide.masked.gather = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.masked.gather124 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep121, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.vec = load <32 x float>, ptr %i.ff, align 64, !tbaa !12, !alias.scope !618, !noalias !615 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec125 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec126 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec127 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec, splat (float 3.750000e-01)
  %wide.masked.gather128 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep122, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.masked.gather129 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep123, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.fj = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather128, %wide.masked.gather124
  %i.fk = fmul reassoc nsz arcp contract afn <8 x float> %i.fj, splat (float 2.500000e-01)
  %i.fl = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather129, %wide.masked.gather
  %i.fm = fmul reassoc nsz arcp contract afn <8 x float> %i.fl, splat (float 6.250000e-02)
  %i.fn = fadd reassoc nsz arcp contract afn <8 x float> %i.fk, %i.fi
  %i.fo = fadd reassoc nsz arcp contract afn <8 x float> %i.fn, %i.fm ; 2 uses
  %i.fp = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fo, zeroinitializer
  %i.fq = select reassoc nsz arcp contract afn <8 x i1> %i.fp, <8 x float> zeroinitializer, <8 x float> %i.fo ; 2 uses
  %wide.gep130 = getelementptr i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather131 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep130, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep132 = getelementptr i8, <8 x ptr> %wide.gep121, i64 4
  %wide.masked.gather133 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep132, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.fr = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec125, splat (float 3.750000e-01)
  %wide.gep134 = getelementptr i8, <8 x ptr> %wide.gep122, i64 4
  %wide.masked.gather135 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep134, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep136 = getelementptr i8, <8 x ptr> %wide.gep123, i64 4
  %wide.masked.gather137 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep136, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.fs = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather135, %wide.masked.gather133
  %i.ft = fmul reassoc nsz arcp contract afn <8 x float> %i.fs, splat (float 2.500000e-01)
  %i.fu = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather137, %wide.masked.gather131
  %i.fv = fmul reassoc nsz arcp contract afn <8 x float> %i.fu, splat (float 6.250000e-02)
  %i.fw = fadd reassoc nsz arcp contract afn <8 x float> %i.ft, %i.fr
  %i.fx = fadd reassoc nsz arcp contract afn <8 x float> %i.fw, %i.fv ; 2 uses
  %i.fy = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.fx, zeroinitializer
  %i.fz = select reassoc nsz arcp contract afn <8 x i1> %i.fy, <8 x float> zeroinitializer, <8 x float> %i.fx ; 2 uses
  %wide.gep138 = getelementptr i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather139 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep138, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep140 = getelementptr i8, <8 x ptr> %wide.gep121, i64 8
  %wide.masked.gather141 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep140, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.ga = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec126, splat (float 3.750000e-01)
  %wide.gep142 = getelementptr i8, <8 x ptr> %wide.gep122, i64 8
  %wide.masked.gather143 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep142, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep144 = getelementptr i8, <8 x ptr> %wide.gep123, i64 8
  %wide.masked.gather145 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep144, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.gb = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather143, %wide.masked.gather141
  %i.gc = fmul reassoc nsz arcp contract afn <8 x float> %i.gb, splat (float 2.500000e-01)
  %i.gd = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather145, %wide.masked.gather139
  %i.ge = fmul reassoc nsz arcp contract afn <8 x float> %i.gd, splat (float 6.250000e-02)
  %i.gf = fadd reassoc nsz arcp contract afn <8 x float> %i.gc, %i.ga
  %i.gg = fadd reassoc nsz arcp contract afn <8 x float> %i.gf, %i.ge ; 2 uses
  %i.gh = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gg, zeroinitializer
  %i.gi = select reassoc nsz arcp contract afn <8 x i1> %i.gh, <8 x float> zeroinitializer, <8 x float> %i.gg ; 2 uses
  %wide.gep146 = getelementptr i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather147 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep146, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep148 = getelementptr i8, <8 x ptr> %wide.gep121, i64 12
  %wide.masked.gather149 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep148, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.gj = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec127, splat (float 3.750000e-01)
  %wide.gep150 = getelementptr i8, <8 x ptr> %wide.gep122, i64 12
  %wide.masked.gather151 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep150, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %wide.gep152 = getelementptr i8, <8 x ptr> %wide.gep123, i64 12
  %wide.masked.gather153 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep152, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !12, !alias.scope !618, !noalias !615
  %i.gk = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather151, %wide.masked.gather149
  %i.gl = fmul reassoc nsz arcp contract afn <8 x float> %i.gk, splat (float 2.500000e-01)
  %i.gm = fadd reassoc nsz arcp contract afn <8 x float> %wide.masked.gather153, %wide.masked.gather147
  %i.gn = fmul reassoc nsz arcp contract afn <8 x float> %i.gm, splat (float 6.250000e-02)
  %i.go = fadd reassoc nsz arcp contract afn <8 x float> %i.gl, %i.gj
  %i.gp = fadd reassoc nsz arcp contract afn <8 x float> %i.go, %i.gn ; 2 uses
  %i.gq = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.gp, zeroinitializer
  %i.gr = select reassoc nsz arcp contract afn <8 x i1> %i.gq, <8 x float> zeroinitializer, <8 x float> %i.gp ; 2 uses
  %i.gs = shufflevector <8 x float> %i.fq, <8 x float> %i.fz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.gt = shufflevector <8 x float> %i.gi, <8 x float> %i.gr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.gs, <16 x float> %i.gt, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.er, align 4, !tbaa !12, !alias.scope !620
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.eq
  %wide.vec154 = load <32 x float>, ptr %i.gu, align 4, !tbaa !12, !noalias !615 ; 4 uses
  %strided.vec155 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec156 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec157 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec158 = shufflevector <32 x float> %wide.vec154, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %i.gv = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec155, %i.fq
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.eq
  %i.gx = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec156, %i.fz
  %i.gy = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec157, %i.gi
  %i.gz = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec158, %i.gr
  %i.ha = shufflevector <8 x float> %i.gv, <8 x float> %i.gx, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.hb = shufflevector <8 x float> %i.gy, <8 x float> %i.gz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec159 = shufflevector <16 x float> %i.ha, <16 x float> %i.hb, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec159, ptr %i.gw, align 4, !tbaa !12, !alias.scope !621, !noalias !615
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <8 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next160 = add <8 x i32> %vec.ind120, splat (i32 8)
  %i.hc = icmp eq i64 %index.next, %n.vec
  br i1 %i.hc, label %middle.block, label %vector.body, !llvm.loop !603

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %.03663.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block, %dwt_interleave_rows.exit.i
  %i.hd = add nuw nsw i64 %.03764.i, 1            ; 2 uses
  %exitcond69.not.i = icmp eq i64 %i.hd, %4
  br i1 %exitcond69.not.i, label %decompose_2D_Bspline.exit, label %bb.d

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.03663.i = phi i64 [ %i.iq, %scalar.ph ], [ %.03663.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.he = add i64 %.03663.i, %i.ek
  %i.hf = shl i64 %i.he, 2                        ; 3 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.hf
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  %i.hh = trunc i64 %.03663.i to i32              ; 2 uses
  %i.hi = sub nsw i32 %i.hh, %i.ak
  %i.hj = call i32 @llvm.smax.i32(i32 %i.hi, i32 0)
  %i.hk = shl nuw nsw i32 %i.hj, 2
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = sub nsw i32 %i.hh, %i.ai
  %i.hn = call i32 @llvm.smax.i32(i32 %i.hm, i32 0)
  %i.ho = shl nuw nsw i32 %i.hn, 2
  %i.hp = zext nneg i32 %i.ho to i64
  %i.hq = add nuw nsw i64 %.03663.i, %i.al
  %..i41.i = call i64 @llvm.umin.i64(i64 %i.hq, i64 %i.n)
  %i.hr = add nuw nsw i64 %.03663.i, %i.am
  %i.hs = call i64 @llvm.umin.i64(i64 %i.hr, i64 %i.n)
  %i.ht = getelementptr [4 x i8], ptr %i.j, i64 %i.hl
  %i.hu = getelementptr [4 x i8], ptr %i.j, i64 %i.hp
  %.idx.i.i = shl i64 %.03663.i, 4
  %i.hv = getelementptr i8, ptr %i.j, i64 %.idx.i.i
  %.idx25.i.i = shl i64 %..i41.i, 4
  %i.hw = getelementptr i8, ptr %i.j, i64 %.idx25.i.i
  %.idx26.i.i = shl i64 %i.hs, 4
  %i.hx = getelementptr i8, ptr %i.j, i64 %.idx26.i.i
  %i.hy = load <4 x float>, ptr %i.ht, align 16, !tbaa !12, !alias.scope !618, !noalias !615
  %i.hz = load <4 x float>, ptr %i.hu, align 16, !tbaa !12, !alias.scope !618, !noalias !615
  %i.ia = load <4 x float>, ptr %i.hv, align 16, !tbaa !12, !alias.scope !618, !noalias !615
  %i.ib = fmul reassoc nsz arcp contract afn <4 x float> %i.ia, splat (float 3.750000e-01)
  %i.ic = load <4 x float>, ptr %i.hw, align 16, !tbaa !12, !alias.scope !618, !noalias !615
  %i.id = load <4 x float>, ptr %i.hx, align 16, !tbaa !12, !alias.scope !618, !noalias !615
  %i.ie = fadd reassoc nsz arcp contract afn <4 x float> %i.ic, %i.hz
  %i.if = fmul reassoc nsz arcp contract afn <4 x float> %i.ie, splat (float 2.500000e-01)
  %i.ig = fadd reassoc nsz arcp contract afn <4 x float> %i.id, %i.hy
  %i.ih = fmul reassoc nsz arcp contract afn <4 x float> %i.ig, splat (float 6.250000e-02)
  %i.ii = fadd reassoc nsz arcp contract afn <4 x float> %i.if, %i.ib
  %i.ij = fadd reassoc nsz arcp contract afn <4 x float> %i.ii, %i.ih ; 2 uses
  %i.ik = fcmp reassoc nsz arcp contract afn olt <4 x float> %i.ij, zeroinitializer
  %i.il = select <4 x i1> %i.ik, <4 x float> zeroinitializer, <4 x float> %i.ij ; 2 uses
  store <4 x float> %i.il, ptr %i.hg, align 4, !tbaa !12, !alias.scope !620
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %.053, i64 %i.hf
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.hf
  %i.io = load <4 x float>, ptr %i.im, align 4, !tbaa !12, !noalias !615
  %i.ip = fsub reassoc nsz arcp contract afn <4 x float> %i.io, %i.il
  store <4 x float> %i.ip, ptr %i.in, align 4, !tbaa !12, !noalias !615
  %i.iq = add nuw nsw i64 %.03663.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.iq, %3
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !604

decompose_2D_Bspline.exit:                        ; preds = %._crit_edge.i, %bb.c
  %.not80 = icmp eq i32 %.054119, %i.k            ; 2 uses
  %i.ir = shl nuw nsw i32 %.054119, 2
  %i.is = call fastcc float @equivalent_sigma_at_step(i32 noundef %i.ir) ; 2 uses
  %i.it = fmul reassoc nsz arcp contract afn float %i.is, %i.is ; 4 uses
  br i1 %i.o, label %bb.i, label %bb.s

bb.i:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  call void @llvm.experimental.noalias.scope.decl(metadata !623)
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64), "align"(ptr %.0, i64 64), "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph321.i

.lr.ph321.i:                                      ; preds = %bb.i
  %.not.i.i59 = icmp slt i32 %i.ai, %i.l
  %.reass318.i = add i32 %invariant.op.i, %i.ai
  %i.iu = add nsw i32 %i.ai, -1
  %i.iv = and i32 %i.iu, %i.l                     ; 3 uses
  %i.iw = icmp eq i32 %i.iv, 0
  %i.ix = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  %i.iy = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  %i.iz = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  %i.ja = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.it
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i65, %.lr.ph321.i
  %.0252319.i = phi i64 [ 0, %.lr.ph321.i ], [ %i.kb, %._crit_edge.i65 ] ; 2 uses
  %i.jb = trunc i64 %.0252319.i to i32            ; 5 uses
  br i1 %.not.i.i59, label %bb.k, label %dwt_interleave_rows.exit.i61

bb.k:                                             ; preds = %bb.j
  %i.jc = sdiv i32 %.reass318.i, %i.ai            ; 4 uses
  br i1 %i.iw, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.jd = mul nsw i32 %i.iv, %i.jc                ; 2 uses
  %i.je = icmp sgt i32 %i.jd, %i.jb
  br i1 %i.je, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.jf = sdiv i32 %i.jb, %i.jc
  %i.jg = srem i32 %i.jb, %i.jc
  %i.jh = shl nsw i32 %i.jg, %.054119
  %i.ji = add nsw i32 %i.jh, %i.jf
  br label %dwt_interleave_rows.exit.i61

bb.n:                                             ; preds = %bb.l
  %i.jj = sub nsw i32 %i.jb, %i.jd                ; 2 uses
  %i.jk = add nsw i32 %i.jc, -1                   ; 2 uses
  %i.jl = sdiv i32 %i.jj, %i.jk
  %i.jm = add nsw i32 %i.jl, %i.iv
  %i.jn = srem i32 %i.jj, %i.jk
  %i.jo = shl nsw i32 %i.jn, %.054119
  %i.jp = add nsw i32 %i.jm, %i.jo
  br label %dwt_interleave_rows.exit.i61

dwt_interleave_rows.exit.i61:                     ; preds = %bb.n, %bb.m, %bb.j
  %.1.i.i62 = phi i32 [ %i.jb, %bb.j ], [ %i.ji, %bb.m ], [ %i.jp, %bb.n ] ; 4 uses
  %i.jq = sub nsw i32 %.1.i.i62, %i.ai
  %i.jr = call i32 @llvm.smax.i32(i32 %i.jq, i32 0)
  %i.js = zext nneg i32 %i.jr to i64
  %i.jt = mul i64 %3, %i.js                       ; 3 uses
  %i.ju = sext i32 %.1.i.i62 to i64
  %i.jv = mul i64 %3, %i.ju                       ; 3 uses
  %i.jw = add i32 %.1.i.i62, %i.ai
  %..i = call i32 @llvm.smin.i32(i32 %i.jw, i32 %invariant.op.i)
  %i.jx = sext i32 %..i to i64
  %i.jy = mul i64 %3, %i.jx                       ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i65, label %.lr.ph.i63

.lr.ph.i63:                                       ; preds = %dwt_interleave_rows.exit.i61
  %i.jz = add nsw i32 %.1.i.i62, 3
  %i.ka = sext i32 %i.jz to i64
  br label %bb.o

._crit_edge.i65:                                  ; preds = %.thread290.i, %dwt_interleave_rows.exit.i61
  %i.kb = add nuw nsw i64 %.0252319.i, 1          ; 2 uses
  %exitcond330.not.i = icmp eq i64 %i.kb, %4
  br i1 %exitcond330.not.i, label %guide_laplacians.exit, label %bb.j

bb.o:                                             ; preds = %.thread290.i, %.lr.ph.i63
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i63 ], [ %indvars.iv.next.i, %.thread290.i ] ; 6 uses
  %i.kc = add i64 %indvars.iv.i, %i.jv
  %i.kd = shl i64 %i.kc, 2                        ; 7 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 12
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !12, !alias.scope !624 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33, !noalias !626
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.kd ; 2 uses
  %i.ki = or disjoint i64 %i.kd, 1                ; 2 uses
  %i.kj = or disjoint i64 %i.kd, 2                ; 3 uses
  %i.kk = load <4 x float>, ptr %i.kh, align 16, !tbaa !12, !alias.scope !622 ; 10 uses
  store <4 x float> %i.kk, ptr %i.a, align 16, !tbaa !12, !noalias !626
  %i.kl = fcmp reassoc nsz arcp contract afn ogt float %i.kg, 0.000000e+00 ; 2 uses
  br i1 %i.kl, label %.preheader294.i, label %bb.p

.preheader294.i:                                  ; preds = %bb.o
  %i.km = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.kn = sub i32 %i.km, %i.ai
  %i.ko = call i32 @llvm.smax.i32(i32 %i.kn, i32 0)
  %i.kp = zext nneg i32 %i.ko to i64              ; 3 uses
  %i.kq = add i32 %i.ai, %i.km
  %.269.i = call i32 @llvm.smin.i32(i32 %i.kq, i32 %i.q)
  %i.kr = sext i32 %.269.i to i64                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33, !noalias !626
  %i.ks = add i64 %i.jt, %i.kp
  %.idx.i = shl i64 %i.ks, 4
  %i.kt = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i
  %i.ku = add i64 %indvars.iv.i, %i.jt
  %.idx262.i = shl i64 %i.ku, 4
  %i.kv = getelementptr inbounds nuw i8, ptr %6, i64 %.idx262.i
  %i.kw = add i64 %i.jt, %i.kr
  %.idx263.i = shl i64 %i.kw, 4
  %i.kx = getelementptr inbounds nuw i8, ptr %6, i64 %.idx263.i
  %i.ky = add i64 %i.jv, %i.kp
  %.idx264.i = shl i64 %i.ky, 4
  %i.kz = getelementptr inbounds nuw i8, ptr %6, i64 %.idx264.i
  %i.la = add i64 %i.jv, %i.kr
  %.idx265.i = shl i64 %i.la, 4
  %i.lb = getelementptr i8, ptr %6, i64 %.idx265.i
  %i.lc = add i64 %i.jy, %i.kp
  %.idx266.i = shl i64 %i.lc, 4
  %i.ld = getelementptr i8, ptr %6, i64 %.idx266.i
  %i.le = add i64 %indvars.iv.i, %i.jy
  %.idx267.i = shl i64 %i.le, 4
  %i.lf = getelementptr i8, ptr %6, i64 %.idx267.i
  %i.lg = add i64 %i.jy, %i.kr
  %.idx268.i = shl i64 %i.lg, 4
  %i.lh = getelementptr i8, ptr %6, i64 %.idx268.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kt, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kv, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kx, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kz, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.kh, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lb, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ld, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lf, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.lh, i64 16, i1 false), !tbaa !12, !noalias !627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33, !noalias !626
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33, !noalias !626
  %i.li = load <4 x float>, ptr %i.b, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lj = load <4 x float>, ptr %i.u, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lk = load <4 x float>, ptr %i.v, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.ll = load <4 x float>, ptr %i.w, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lm = load <4 x float>, ptr %i.x, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.ln = load <4 x float>, ptr %i.y, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lo = load <4 x float>, ptr %i.z, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lp = load <4 x float>, ptr %i.aa, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lq = load <4 x float>, ptr %i.ab, align 16, !tbaa !12, !noalias !626 ; 2 uses
  %i.lr = fadd reassoc nsz arcp contract afn <4 x float> %i.lj, %i.li
  %i.ls = fadd reassoc nsz arcp contract afn <4 x float> %i.lr, %i.lk
  %i.lt = fadd reassoc nsz arcp contract afn <4 x float> %i.ls, %i.ll
  %i.lu = fadd reassoc nsz arcp contract afn <4 x float> %i.lt, %i.lm
  %i.lv = fadd reassoc nsz arcp contract afn <4 x float> %i.lu, %i.ln
  %i.lw = fadd reassoc nsz arcp contract afn <4 x float> %i.lv, %i.lo
  %i.lx = fadd reassoc nsz arcp contract afn <4 x float> %i.lw, %i.lp
  %i.ly = fadd reassoc nsz arcp contract afn <4 x float> %i.lx, %i.lq
  %i.lz = fmul reassoc nsz arcp contract afn <4 x float> %i.ly, splat (float f0x3DE38E39) ; 14 uses
  store <4 x float> %i.lz, ptr %i.c, align 16, !tbaa !12, !noalias !626
  %i.ma = fsub reassoc nsz arcp contract afn <4 x float> %i.li, %i.lz ; 3 uses
  %i.mb = fmul reassoc nsz arcp contract afn <4 x float> %i.ma, %i.ma
  %i.mc = fsub reassoc nsz arcp contract afn <4 x float> %i.lj, %i.lz ; 3 uses
  %i.md = fmul reassoc nsz arcp contract afn <4 x float> %i.mc, %i.mc
  %i.me = fadd reassoc nsz arcp contract afn <4 x float> %i.md, %i.mb
  %i.mf = fsub reassoc nsz arcp contract afn <4 x float> %i.lk, %i.lz ; 3 uses
  %i.mg = fmul reassoc nsz arcp contract afn <4 x float> %i.mf, %i.mf
  %i.mh = fadd reassoc nsz arcp contract afn <4 x float> %i.me, %i.mg
  %i.mi = fsub reassoc nsz arcp contract afn <4 x float> %i.ll, %i.lz ; 3 uses
  %i.mj = fmul reassoc nsz arcp contract afn <4 x float> %i.mi, %i.mi
  %i.mk = fadd reassoc nsz arcp contract afn <4 x float> %i.mh, %i.mj
  %i.ml = fsub reassoc nsz arcp contract afn <4 x float> %i.lm, %i.lz ; 3 uses
  %i.mm = fmul reassoc nsz arcp contract afn <4 x float> %i.ml, %i.ml
  %i.mn = fadd reassoc nsz arcp contract afn <4 x float> %i.mk, %i.mm
  %i.mo = fsub reassoc nsz arcp contract afn <4 x float> %i.ln, %i.lz ; 3 uses
  %i.mp = fmul reassoc nsz arcp contract afn <4 x float> %i.mo, %i.mo
  %i.mq = fadd reassoc nsz arcp contract afn <4 x float> %i.mn, %i.mp
  %i.mr = fsub reassoc nsz arcp contract afn <4 x float> %i.lo, %i.lz ; 3 uses
  %i.ms = fmul reassoc nsz arcp contract afn <4 x float> %i.mr, %i.mr
  %i.mt = fadd reassoc nsz arcp contract afn <4 x float> %i.mq, %i.ms
  %i.mu = fsub reassoc nsz arcp contract afn <4 x float> %i.lp, %i.lz ; 3 uses
  %i.mv = fmul reassoc nsz arcp contract afn <4 x float> %i.mu, %i.mu
  %i.mw = fadd reassoc nsz arcp contract afn <4 x float> %i.mt, %i.mv
  %i.mx = fsub reassoc nsz arcp contract afn <4 x float> %i.lq, %i.lz ; 3 uses
  %i.my = fmul reassoc nsz arcp contract afn <4 x float> %i.mx, %i.mx
  %i.mz = fadd reassoc nsz arcp contract afn <4 x float> %i.mw, %i.my
  %i.na = fmul reassoc nsz arcp contract afn <4 x float> %i.mz, splat (float f0x3DE38E39) ; 4 uses
  store <4 x float> %i.na, ptr %i.d, align 16, !tbaa !12, !noalias !626
  %i.nb = extractelement <4 x float> %i.na, i64 0 ; 2 uses
  %i.nc = fcmp reassoc nsz arcp contract afn ogt float %i.nb, 0.000000e+00 ; 2 uses
  %spec.select.i66 = select i1 %i.nc, i64 0, i64 3
  %spec.select270.i = select nsz i1 %i.nc, float %i.nb, float 0.000000e+00 ; 2 uses
  %i.nd = extractelement <4 x float> %i.na, i64 1 ; 2 uses
  %i.ne = fcmp reassoc nsz arcp contract afn ogt float %i.nd, %spec.select270.i ; 2 uses
  %spec.select.1.i = select i1 %i.ne, i64 1, i64 %spec.select.i66
  %spec.select270.1.i = select nsz i1 %i.ne, float %i.nd, float %spec.select270.i
  %i.nf = extractelement <4 x float> %i.na, i64 2
  %i.ng = fcmp reassoc nsz arcp contract afn ogt float %i.nf, %spec.select270.1.i
  %spec.select.2.i = select i1 %i.ng, i64 2, i64 %spec.select.1.i ; 12 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %spec.select.2.i
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !12, !noalias !626 ; 13 uses
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %spec.select.2.i
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !12, !noalias !626
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %spec.select.2.i
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !12, !noalias !626
  %i.nn = fsub reassoc nsz arcp contract afn float %i.nk, %i.ni
  %factor.op.fmul.i = fmul reassoc nsz arcp contract afn float %i.nn, f0x3DE38E39
  %i.no = insertelement <4 x float> poison, float %factor.op.fmul.i, i64 0
  %i.np = shufflevector <4 x float> %i.no, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nq = fmul reassoc nsz arcp contract afn <4 x float> %i.np, %i.ma
  %i.nr = fsub reassoc nsz arcp contract afn float %i.nm, %i.ni
  %factor.op.fmul.1.i = fmul reassoc nsz arcp contract afn float %i.nr, f0x3DE38E39
end_hunk_4
begin_hunk_5_@wavelets_process:bb.a
  %i.sb = fadd reassoc nsz arcp contract afn float %i.sa, %i.ry
  %i.sc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.sb, float 0.000000e+00) ; 3 uses
  store float %i.sc, ptr %i.rx, align 8, !tbaa !12, !alias.scope !625
  %or.cond3.i = and i1 %i.ac, %i.kl
  br i1 %or.cond3.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader295.preheader.i
  %i.sd = fmul reassoc nsz arcp contract afn <2 x float> %i.rv, %i.ah ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.rn, i64 4
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.sg = fmul reassoc nsz arcp contract afn float %i.sc, %10 ; 3 uses
  %i.sh = add nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.si = mul i64 %i.sh, 7109453100751455733      ; 2 uses
  %i.sj = lshr i64 %i.si, 28
  %i.sk = xor i64 %i.sj, %i.si
  %i.sl = mul i64 %i.sk, -3808689974395783757
  %i.sm = lshr i64 %i.sl, 32
  %i.sn = trunc nuw i64 %i.sm to i32              ; 2 uses
  %i.so = mul nsw i64 %i.sh, %i.ka                ; 2 uses
  %i.sp = lshr i64 %i.so, 33
  %i.sq = xor i64 %i.sp, %i.so
  %i.sr = mul i64 %i.sq, 7109453100751455733      ; 2 uses
  %i.ss = lshr i64 %i.sr, 28
  %i.st = xor i64 %i.ss, %i.sr
  %i.su = mul i64 %i.st, -3808689974395783757
  %i.sv = lshr i64 %i.su, 32
  %i.sw = trunc nuw i64 %i.sv to i32              ; 3 uses
  %i.sx = shl i32 %i.sw, 9
  %i.sy = xor i32 %i.sn, 635086878                ; 2 uses
  %i.sz = xor i32 %i.sw, -1171427716              ; 3 uses
  %i.ta = xor i32 %i.sy, %i.sw                    ; 3 uses
  %i.tb = xor i32 %i.sz, %i.sn                    ; 2 uses
  %i.tc = xor i32 %i.sx, %i.sy
  %i.td = call noundef i32 @llvm.fshl.i32(i32 %i.sz, i32 %i.sz, i32 11)
  %i.te = shl i32 %i.ta, 9
  %i.tf = xor i32 %i.tc, %i.tb                    ; 2 uses
  %i.tg = xor i32 %i.td, %i.ta                    ; 3 uses
  %i.th = xor i32 %i.tf, %i.ta                    ; 3 uses
  %i.ti = xor i32 %i.tg, %i.tb                    ; 2 uses
  %i.tj = xor i32 %i.tf, %i.te
  %i.tk = call noundef i32 @llvm.fshl.i32(i32 %i.tg, i32 %i.tg, i32 11)
  %i.tl = shl i32 %i.th, 9
  %i.tm = xor i32 %i.tj, %i.ti                    ; 2 uses
  %i.tn = xor i32 %i.th, %i.tk                    ; 3 uses
  %i.to = xor i32 %i.tm, %i.th                    ; 3 uses
  %i.tp = xor i32 %i.tn, %i.ti                    ; 2 uses
  %i.tq = xor i32 %i.tm, %i.tl
  %i.tr = call noundef i32 @llvm.fshl.i32(i32 %i.tn, i32 %i.tn, i32 11)
  %i.ts = shl i32 %i.to, 9
  %i.tt = xor i32 %i.tq, %i.tp                    ; 2 uses
  %i.tu = xor i32 %i.to, %i.tr                    ; 3 uses
  %i.tv = xor i32 %i.tt, %i.to                    ; 3 uses
  %i.tw = xor i32 %i.tt, %i.ts
  %i.tx = shl i32 %i.tv, 9
  %i.ty = xor i32 %i.tu, %i.tp                    ; 3 uses
  %i.tz = call noundef i32 @llvm.fshl.i32(i32 %i.tu, i32 %i.tu, i32 11) ; 2 uses
  %i.ua = xor i32 %i.tw, %i.ty                    ; 2 uses
  %i.ub = xor i32 %i.tv, %i.tz                    ; 3 uses
  %i.uc = xor i32 %i.ua, %i.tv                    ; 3 uses
  %i.ud = xor i32 %i.ub, %i.ty                    ; 3 uses
  %i.ue = xor i32 %i.ua, %i.tx
  %i.uf = call noundef i32 @llvm.fshl.i32(i32 %i.ub, i32 %i.ub, i32 11) ; 2 uses
  %i.ug = add i32 %i.uf, %i.ud
  %i.uh = shl i32 %i.uc, 9
  %i.ui = xor i32 %i.ue, %i.ud                    ; 2 uses
  %i.uj = xor i32 %i.uc, %i.uf                    ; 3 uses
  %i.uk = xor i32 %i.ui, %i.uc                    ; 3 uses
  %i.ul = xor i32 %i.uj, %i.ud                    ; 3 uses
  %i.um = xor i32 %i.ui, %i.uh
  %i.un = call noundef i32 @llvm.fshl.i32(i32 %i.uj, i32 %i.uj, i32 11) ; 2 uses
  %i.uo = lshr i32 %i.ug, 8
  %i.up = uitofp reassoc nsz arcp contract afn nneg i32 %i.uo to float
  %i.uq = shl i32 %i.uk, 9
  %i.ur = xor i32 %i.um, %i.ul                    ; 2 uses
  %i.us = xor i32 %i.uk, %i.un                    ; 3 uses
  %i.ut = xor i32 %i.ur, %i.uk                    ; 2 uses
  %i.uu = xor i32 %i.us, %i.ul                    ; 3 uses
  %i.uv = xor i32 %i.ur, %i.uq
  %i.uw = call noundef i32 @llvm.fshl.i32(i32 %i.us, i32 %i.us, i32 11) ; 2 uses
  %i.ux = add i32 %i.uw, %i.uu
  %i.uy = xor i32 %i.uv, %i.uu
  %i.uz = xor i32 %i.ut, %i.uw                    ; 3 uses
  %i.va = xor i32 %i.uy, %i.ut
  %i.vb = xor i32 %i.uz, %i.uu                    ; 2 uses
  %i.vc = call noundef i32 @llvm.fshl.i32(i32 %i.uz, i32 %i.uz, i32 11) ; 2 uses
  %i.vd = lshr i32 %i.ux, 8
  %i.ve = uitofp reassoc nsz arcp contract afn nneg i32 %i.vd to float
  %i.vf = xor i32 %i.va, %i.vc                    ; 3 uses
  %i.vg = xor i32 %i.vf, %i.vb
  %i.vh = call noundef i32 @llvm.fshl.i32(i32 %i.vf, i32 %i.vf, i32 11)
  %i.vi = add i32 %i.vh, %i.vg
  %i.vj = lshr i32 %i.vi, 8
  %i.vk = uitofp reassoc nsz arcp contract afn nneg i32 %i.vj to float
  %i.vl = fmul reassoc nnan nsz arcp contract afn float %i.up, f0x34C90FDB
  %sincos.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.vl)
  %cos.i.i.i = extractvalue { float, float } %sincos.i.i.i, 1
  %i.vm = fmul reassoc nnan nsz arcp contract afn float %i.ve, f0x34C90FDB
  %sincos60.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.vm)
  %sin61.i.i.i = extractvalue { float, float } %sincos60.i.i.i, 0
  %i.vn = fmul reassoc nnan nsz arcp contract afn float %i.vk, f0x34C90FDB
  %sincos63.i.i.i = call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.vn)
  %cos65.i.i.i = extractvalue { float, float } %sincos63.i.i.i, 1
  %i.vo = add i32 %i.vc, %i.vb
  %i.vp = lshr i32 %i.vo, 8
  %i.vq = uitofp reassoc nsz arcp contract afn nneg i32 %i.vp to float
  %i.vr = fmul reassoc nnan nsz arcp contract afn float %i.vq, f0x33800000
  %i.vs = call reassoc nnan nsz arcp contract afn float @llvm.maxnum.f32(float %i.vr, float f0x00800000)
  %i.vt = call fast float @llvm.log.f32(float %i.vs)
  %i.vu = fmul reassoc nnan nsz arcp contract afn float %i.vt, -2.000000e+00
  %i.vv = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.vu)
  %i.vw = add i32 %i.un, %i.ul
  %i.vx = add i32 %i.tz, %i.ty
  %i.vy = insertelement <2 x i32> poison, i32 %i.vx, i64 0
  %i.vz = insertelement <2 x i32> %i.vy, i32 %i.vw, i64 1
  %i.wa = lshr <2 x i32> %i.vz, splat (i32 8)
  %i.wb = uitofp nneg <2 x i32> %i.wa to <2 x float>
  %i.wc = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.wb, splat (float f0x33800000)
  %i.wd = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.wc, <2 x float> splat (float f0x00800000))
  %i.we = call fast <2 x float> @llvm.log.v2f32(<2 x float> %i.wd)
  %i.wf = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.we, splat (float -2.000000e+00)
  %i.wg = call reassoc nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.wf)
  %i.wh = extractelement <2 x float> %i.rv, i64 0
  %i.wi = fadd reassoc nnan nsz arcp contract afn float %i.wh, 3.750000e-01
  %i.wj = load float, ptr %i.se, align 4, !tbaa !12, !alias.scope !625 ; 2 uses
  %i.wk = fadd reassoc nsz arcp contract afn float %i.wj, 3.750000e-01
  %i.wl = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wk, float 0.000000e+00)
  %i.wm = fmul reassoc nsz arcp contract afn float %cos65.i.i.i, %i.vv
  %i.wn = fmul reassoc nsz arcp contract afn float %i.wm, %i.sg
  %i.wo = load float, ptr %i.sf, align 8, !tbaa !12, !alias.scope !625 ; 3 uses
  %i.wp = fadd reassoc nsz arcp contract afn float %i.wo, 3.750000e-01
  %i.wq = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wp, float 0.000000e+00)
  %i.wr = call reassoc nnan nsz arcp contract afn float @llvm.sqrt.f32(float %i.wq)
  %i.ws = fmul reassoc nnan nsz arcp contract afn float %i.wr, 2.000000e+00
  %i.wt = fadd reassoc nsz arcp contract afn float %i.ws, %i.wn ; 2 uses
  %i.wu = fmul reassoc nsz arcp contract afn float %i.wt, %i.wt
  %i.wv = fmul reassoc nsz arcp contract afn float %i.sg, %i.sg
  %i.ww = fsub reassoc nsz arcp contract afn float %i.wu, %i.wv
  %i.wx = fmul reassoc nsz arcp contract afn float %i.ww, 2.500000e-01
  %i.wy = insertelement <2 x float> poison, float %cos.i.i.i, i64 0
  %i.wz = insertelement <2 x float> %i.wy, float %sin61.i.i.i, i64 1
  %i.xa = fmul reassoc nsz arcp contract afn <2 x float> %i.wz, %i.wg
  %i.xb = fmul reassoc nsz arcp contract afn <2 x float> %i.xa, %i.sd
  %i.xc = insertelement <2 x float> poison, float %i.wi, i64 0
  %i.xd = insertelement <2 x float> %i.xc, float %i.wl, i64 1
  %i.xe = call reassoc nnan nsz arcp contract afn <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.xd)
  %i.xf = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.xe, splat (float 2.000000e+00)
  %i.xg = fadd reassoc nsz arcp contract afn <2 x float> %i.xf, %i.xb ; 2 uses
  %i.xh = fmul reassoc nsz arcp contract afn <2 x float> %i.xg, %i.xg
  %i.xi = fmul reassoc nsz arcp contract afn <2 x float> %i.sd, %i.sd
  %i.xj = fsub reassoc nsz arcp contract afn <2 x float> %i.xh, %i.xi
  %i.xk = fmul reassoc nsz arcp contract afn <2 x float> %i.xj, splat (float 2.500000e-01)
  %i.xl = insertelement <2 x float> %i.rv, float %i.wj, i64 1 ; 2 uses
  %i.xm = fsub reassoc nsz arcp contract afn <2 x float> splat (float -3.750000e-01), %i.xl
  %i.xn = fadd reassoc nsz arcp contract afn <2 x float> %i.xm, %i.xk
  %i.xo = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.xn)
  %i.xp = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.xq = shufflevector <2 x float> %i.xp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xr = fmul reassoc nsz arcp contract afn <2 x float> %i.xo, %i.xq
  %i.xs = fadd reassoc nsz arcp contract afn <2 x float> %i.xr, %i.xl
  %i.xt = call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.xs, <2 x float> zeroinitializer)
  %i.xu = fsub reassoc nsz arcp contract afn float -3.750000e-01, %i.wo
  %i.xv = fadd reassoc nsz arcp contract afn float %i.xu, %i.wx
  %i.xw = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.xv)
  %i.xx = fmul reassoc nsz arcp contract afn float %i.xw, %i.kg
  %i.xy = fadd reassoc nsz arcp contract afn float %i.xx, %i.wo
  %i.xz = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xy, float 0.000000e+00)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader295.preheader.i
  %i.ya = phi float [ %i.sc, %.preheader295.preheader.i ], [ %i.xz, %bb.q ] ; 3 uses
  %i.yb = phi <2 x float> [ %i.rv, %.preheader295.preheader.i ], [ %i.xt, %bb.q ] ; 5 uses
  %foldExtExtBinop204 = fmul reassoc nsz arcp contract afn <2 x float> %i.yb, %i.yb
  %i.yc = extractelement <2 x float> %foldExtExtBinop204, i64 0
  %foldExtExtBinop206 = fmul reassoc nsz arcp contract afn <2 x float> %i.yb, %i.yb
  %i.yd = extractelement <2 x float> %foldExtExtBinop206, i64 1
  %i.ye = fmul reassoc nsz arcp contract afn float %i.ya, %i.ya
  %i.yf = fadd reassoc nsz arcp contract afn float %i.yd, %i.ye
  %i.yg = fadd reassoc nsz arcp contract afn float %i.yf, %i.yc
  %i.yh = call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.yg)
  %i.yi = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.yh, float f0x358637BD) ; 2 uses
  %i.yj = shufflevector <2 x float> %i.yb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.yk = insertelement <4 x float> %i.yj, float %i.ya, i64 2
  %i.yl = insertelement <4 x float> %i.yk, float %i.yi, i64 3
  %i.ym = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.yi, i64 0
  %i.yn = shufflevector <4 x float> %i.ym, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.yo = fdiv reassoc nsz arcp contract afn <4 x float> %i.yl, %i.yn
  store <4 x float> %i.yo, ptr %i.rn, align 16, !tbaa !12, !alias.scope !625
  br label %.thread290.i

.thread290.i:                                     ; preds = %bb.r, %.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33, !noalias !626
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i, %3
  br i1 %exitcond.not.i64, label %._crit_edge.i65, label %bb.o

bb.s:                                             ; preds = %decompose_2D_Bspline.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  call void @llvm.assume(i1 true) [ "align"(ptr %1, i64 64), "align"(ptr %.0, i64 64), "align"(ptr %6, i64 64) ]
  br i1 %.not.i, label %guide_laplacians.exit, label %.lr.ph214.i

.lr.ph214.i:                                      ; preds = %bb.s
  %.not.i.i69 = icmp slt i32 %i.ai, %i.l
  %.reass.i70 = add i32 %invariant.op.i, %i.ai
  %i.yp = add nsw i32 %i.ai, -1
  %i.yq = and i32 %i.yp, %i.l                     ; 3 uses
  %i.yr = icmp eq i32 %i.yq, 0
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i78, %.lr.ph214.i
  %.0179212.i = phi i64 [ 0, %.lr.ph214.i ], [ %i.zq, %._crit_edge.i78 ] ; 2 uses
  %i.ys = trunc i64 %.0179212.i to i32            ; 5 uses
  br i1 %.not.i.i69, label %bb.u, label %dwt_interleave_rows.exit.i72

bb.u:                                             ; preds = %bb.t
  %i.yt = sdiv i32 %.reass.i70, %i.ai             ; 4 uses
  br i1 %i.yr, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.yu = mul nsw i32 %i.yq, %i.yt                ; 2 uses
  %i.yv = icmp sgt i32 %i.yu, %i.ys
  br i1 %i.yv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.yw = sdiv i32 %i.ys, %i.yt
  %i.yx = srem i32 %i.ys, %i.yt
  %i.yy = shl nsw i32 %i.yx, %.054119
  %i.yz = add nsw i32 %i.yy, %i.yw
  br label %dwt_interleave_rows.exit.i72

bb.x:                                             ; preds = %bb.v
  %i.za = sub nsw i32 %i.ys, %i.yu                ; 2 uses
  %i.zb = add nsw i32 %i.yt, -1                   ; 2 uses
  %i.zc = sdiv i32 %i.za, %i.zb
  %i.zd = add nsw i32 %i.zc, %i.yq
  %i.ze = srem i32 %i.za, %i.zb
  %i.zf = shl nsw i32 %i.ze, %.054119
  %i.zg = add nsw i32 %i.zd, %i.zf
  br label %dwt_interleave_rows.exit.i72

dwt_interleave_rows.exit.i72:                     ; preds = %bb.x, %bb.w, %bb.t
  %.1.i.i73 = phi i32 [ %i.ys, %bb.t ], [ %i.yz, %bb.w ], [ %i.zg, %bb.x ] ; 3 uses
  %i.zh = sext i32 %.1.i.i73 to i64
  %i.zi = sub i32 %.1.i.i73, %i.ai
  %i.zj = call i32 @llvm.smax.i32(i32 %i.zi, i32 0)
  %i.zk = zext nneg i32 %i.zj to i64
  %i.zl = mul i64 %3, %i.zk                       ; 3 uses
  %i.zm = mul i64 %3, %i.zh                       ; 3 uses
  %i.zn = add i32 %.1.i.i73, %i.ai
  %..i74 = call i32 @llvm.smin.i32(i32 %i.zn, i32 %invariant.op.i)
  %i.zo = sext i32 %..i74 to i64
  %i.zp = mul i64 %3, %i.zo                       ; 3 uses
  br i1 %.not.i40.i, label %._crit_edge.i78, label %.lr.ph.i75

._crit_edge.i78:                                  ; preds = %.loopexit.i76, %dwt_interleave_rows.exit.i72
  %i.zq = add nuw nsw i64 %.0179212.i, 1          ; 2 uses
  %exitcond220.not.i = icmp eq i64 %i.zq, %4
  br i1 %exitcond220.not.i, label %guide_laplacians.exit, label %bb.t

.lr.ph.i75:                                       ; preds = %dwt_interleave_rows.exit.i72, %.loopexit.i76
  %.0178211.i = phi i64 [ %i.adv, %.loopexit.i76 ], [ 0, %dwt_interleave_rows.exit.i72 ] ; 5 uses
  %i.zr = add i64 %.0178211.i, %i.zm
  %i.zs = shl i64 %i.zr, 2                        ; 6 uses
  %i.zt = or disjoint i64 %i.zs, 2                ; 3 uses
  %i.zu = or disjoint i64 %i.zs, 3                ; 2 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zu
  %i.zw = load float, ptr %i.zv, align 4, !tbaa !12, !alias.scope !631
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.zs
  %i.zy = load <2 x float>, ptr %i.zx, align 16, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.zt
  %i.aaa = load float, ptr %i.zz, align 8, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.zu
  %i.aac = load float, ptr %i.aab, align 4, !tbaa !12, !alias.scope !629 ; 3 uses
  %i.aad = fcmp reassoc nsz arcp contract afn ogt float %i.zw, 0.000000e+00 ; 2 uses
  br i1 %i.aad, label %.preheader.i, label %bb.y

.preheader.i:                                     ; preds = %.lr.ph.i75
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zt
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !12, !alias.scope !631
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zs
  %i.aah = trunc i64 %.0178211.i to i32           ; 2 uses
  %i.aai = sub i32 %i.aah, %i.ai
  %i.aaj = call i32 @llvm.smax.i32(i32 %i.aai, i32 0)
  %i.aak = zext nneg i32 %i.aaj to i64            ; 3 uses
  %i.aal = add i32 %i.ai, %i.aah
  %.194.i = call i32 @llvm.smin.i32(i32 %i.aal, i32 %i.q)
  %i.aam = sext i32 %.194.i to i64                ; 3 uses
  %i.aan = add i64 %i.zl, %i.aak
  %.idx.i79 = shl i64 %i.aan, 4
  %i.aao = getelementptr inbounds nuw i8, ptr %6, i64 %.idx.i79 ; 2 uses
  %i.aap = add i64 %.0178211.i, %i.zl
  %.idx187.i = shl i64 %i.aap, 4
  %i.aaq = getelementptr inbounds nuw i8, ptr %6, i64 %.idx187.i ; 2 uses
  %i.aar = add i64 %i.zl, %i.aam
  %.idx188.i = shl i64 %i.aar, 4
  %i.aas = getelementptr inbounds nuw i8, ptr %6, i64 %.idx188.i ; 2 uses
  %i.aat = add i64 %i.zm, %i.aak
  %.idx189.i = shl i64 %i.aat, 4
  %i.aau = getelementptr inbounds nuw i8, ptr %6, i64 %.idx189.i ; 2 uses
  %i.aav = add i64 %i.zm, %i.aam
  %.idx190.i = shl i64 %i.aav, 4
  %i.aaw = getelementptr i8, ptr %6, i64 %.idx190.i ; 2 uses
  %i.aax = add i64 %i.zp, %i.aak
  %.idx191.i = shl i64 %i.aax, 4
  %i.aay = getelementptr i8, ptr %6, i64 %.idx191.i ; 2 uses
  %i.aaz = add i64 %.0178211.i, %i.zp
  %.idx192.i = shl i64 %i.aaz, 4
  %i.aba = getelementptr i8, ptr %6, i64 %.idx192.i ; 2 uses
  %i.abb = add i64 %i.zp, %i.aam
  %.idx193.i = shl i64 %i.abb, 4
  %i.abc = getelementptr i8, ptr %6, i64 %.idx193.i ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %.sroa.5.0.copyload.i = load float, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaq, i64 8
  %.sroa.10.16.copyload.i = load float, ptr %.sroa.10.16..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.15.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aas, i64 8
  %.sroa.15.32.copyload.i = load float, ptr %.sroa.15.32..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.20.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aau, i64 8
  %.sroa.20.48.copyload.i = load float, ptr %.sroa.20.48..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.30.80..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8
  %.sroa.30.80.copyload.i = load float, ptr %.sroa.30.80..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.35.96..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aay, i64 8
  %.sroa.35.96.copyload.i = load float, ptr %.sroa.35.96..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.40.112..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aba, i64 8
  %.sroa.40.112.copyload.i = load float, ptr %.sroa.40.112..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %.sroa.45.128..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.abc, i64 8
  %.sroa.45.128.copyload.i = load float, ptr %.sroa.45.128..sroa_idx.i, align 8, !tbaa !12, !alias.scope !629
  %i.abd = fmul reassoc nsz arcp contract afn <2 x float> %i.af, %i.zy
  %i.abe = load <2 x float>, ptr %i.aao, align 16, !tbaa !12, !alias.scope !629
  %i.abf = load <2 x float>, ptr %i.aaq, align 16, !tbaa !12, !alias.scope !629
  %i.abg = load <2 x float>, ptr %i.aas, align 16, !tbaa !12, !alias.scope !629
  %i.abh = load <2 x float>, ptr %i.aau, align 16, !tbaa !12, !alias.scope !629
  %i.abi = load <2 x float>, ptr %i.aaw, align 16, !tbaa !12, !alias.scope !629
  %i.abj = load <2 x float>, ptr %i.aay, align 16, !tbaa !12, !alias.scope !629
  %i.abk = load <2 x float>, ptr %i.aba, align 16, !tbaa !12, !alias.scope !629
  %i.abl = load <2 x float>, ptr %i.abc, align 16, !tbaa !12, !alias.scope !629
  %i.abm = fadd reassoc nsz arcp contract afn <2 x float> %i.abh, %i.abf
  %i.abn = fadd reassoc nsz arcp contract afn <2 x float> %i.abm, %i.abi
  %i.abo = fadd reassoc nsz arcp contract afn <2 x float> %i.abn, %i.abk
  %i.abp = fmul reassoc nsz arcp contract afn <2 x float> %i.abo, splat (float 5.000000e-01)
  %i.abq = fadd reassoc nsz arcp contract afn <2 x float> %i.abg, %i.abe
  %i.abr = fadd reassoc nsz arcp contract afn <2 x float> %i.abq, %i.abj
  %i.abs = fadd reassoc nsz arcp contract afn <2 x float> %i.abr, %i.abl
  %i.abt = fmul reassoc nsz arcp contract afn <2 x float> %i.abs, splat (float 2.500000e-01)
  %i.abu = fadd reassoc nsz arcp contract afn <2 x float> %i.abt, %i.abp
  %i.abv = load <2 x float>, ptr %i.aag, align 4, !tbaa !12, !alias.scope !631
  %i.abw = fmul reassoc nsz arcp contract afn <2 x float> %i.abv, splat (float f0x3EA0DE4A)
  %i.abx = fadd reassoc nsz arcp contract afn <2 x float> %i.abu, %i.abd
  %i.aby = fmul reassoc nsz arcp contract afn <2 x float> %i.abw, %i.abx
  %i.abz = fadd reassoc nsz arcp contract afn <2 x float> %i.aby, %i.zy
  %i.aca = fmul reassoc nsz arcp contract afn float %i.aaf, f0x3EA0DE4A
  %reass.add97 = fadd reassoc nsz arcp contract afn float %.sroa.20.48.copyload.i, %.sroa.10.16.copyload.i
  %reass.add98 = fadd reassoc nsz arcp contract afn float %reass.add97, %.sroa.30.80.copyload.i
  %reass.add99 = fadd reassoc nsz arcp contract afn float %reass.add98, %.sroa.40.112.copyload.i
  %reass.mul100 = fmul reassoc nsz arcp contract afn float %reass.add99, 5.000000e-01
  %reass.add101 = fadd reassoc nsz arcp contract afn float %.sroa.15.32.copyload.i, %.sroa.5.0.copyload.i
  %reass.add102 = fadd reassoc nsz arcp contract afn float %reass.add101, %.sroa.35.96.copyload.i
  %reass.add103 = fadd reassoc nsz arcp contract afn float %reass.add102, %.sroa.45.128.copyload.i
  %reass.mul104 = fmul reassoc nsz arcp contract afn float %reass.add103, 2.500000e-01
  %reass.mul110 = fmul reassoc nsz arcp contract afn float %reass.add105, %i.aaa
  %i.acb = fadd reassoc nsz arcp contract afn float %reass.mul104, %reass.mul100
  %i.acc = fadd reassoc nsz arcp contract afn float %i.acb, %reass.mul110
  %i.acd = fmul reassoc nsz arcp contract afn float %i.aca, %i.acc
  %i.ace = fadd reassoc nsz arcp contract afn float %i.acd, %i.aaa
  br label %bb.y

bb.y:                                             ; preds = %.preheader.i, %.lr.ph.i75
  %.sroa.11264.0.i = phi nsz float [ %i.ace, %.preheader.i ], [ %i.aaa, %.lr.ph.i75 ] ; 3 uses
  %i.acf = phi <2 x float> [ %i.abz, %.preheader.i ], [ %i.zy, %.lr.ph.i75 ] ; 3 uses
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.zs ; 9 uses
  br i1 %.not147.not, label %.preheader199.i, label %.preheader197.i

.preheader199.i:                                  ; preds = %bb.y
  store <2 x float> %i.acf, ptr %i.acg, align 16, !tbaa !12, !alias.scope !632
  %.sroa.11264.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acg, i64 8
  store float %.sroa.11264.0.i, ptr %.sroa.11264.0..sroa_idx.i, align 8, !tbaa !12, !alias.scope !632
  %.sroa.15266.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.acg, i64 12
  store float %i.aac, ptr %.sroa.15266.0..sroa_idx.i, align 4, !tbaa !12, !alias.scope !632
  %i.ach = insertelement <2 x float> poison, float %.sroa.11264.0.i, i64 0
  %i.aci = insertelement <2 x float> %i.ach, float %i.aac, i64 1
  br label %.loopexit198.i

.preheader197.i:                                  ; preds = %bb.y
  %i.acj = load <2 x float>, ptr %i.acg, align 16, !tbaa !12, !alias.scope !632
  %i.ack = fadd reassoc nsz arcp contract afn <2 x float> %i.acj, %i.acf ; 2 uses
  store <2 x float> %i.ack, ptr %i.acg, align 16, !tbaa !12, !alias.scope !632
  %i.acl = getelementptr inbounds nuw i8, ptr %i.acg, i64 8 ; 2 uses
  %i.acm = load <2 x float>, ptr %i.acl, align 8, !tbaa !12, !alias.scope !632
  %i.acn = insertelement <2 x float> poison, float %.sroa.11264.0.i, i64 0
  %i.aco = insertelement <2 x float> %i.acn, float %i.aac, i64 1
  %i.acp = fadd reassoc nsz arcp contract afn <2 x float> %i.acm, %i.aco ; 2 uses
  store <2 x float> %i.acp, ptr %i.acl, align 8, !tbaa !12, !alias.scope !632
  br label %.loopexit198.i

.loopexit198.i:                                   ; preds = %.preheader197.i, %.preheader199.i
  %i.acq = phi <2 x float> [ %i.acf, %.preheader199.i ], [ %i.ack, %.preheader197.i ]
  %i.acr = phi <2 x float> [ %i.aci, %.preheader199.i ], [ %i.acp, %.preheader197.i ]
  br i1 %.not80, label %.preheader196.preheader.i, label %.loopexit.i76

end_hunk_5
