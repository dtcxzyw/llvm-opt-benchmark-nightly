Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/leaddec?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lead_decode_frame:bb.a
bb.i:                                             ; preds = %bb.c, %bb.b, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi i32 [ 5, %bb.g ], [ 5, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.p = phi i32 [ 3, %bb.g ], [ 3, %bb.f ], [ 4, %bb.e ], [ 4, %bb.b ], [ 4, %bb.c ], [ 4, %bb.d ] ; 4 uses
  %i.q = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ true, %bb.b ], [ false, %bb.c ], [ false, %bb.d ]
  %i.r = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.b ], [ true, %bb.c ], [ false, %bb.d ] ; 4 uses
  %.1292.neg.neg.neg = phi i32 [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.b ], [ -8, %bb.c ], [ 0, %bb.d ]
  %.0290 = phi i32 [ 2, %bb.g ], [ 1, %bb.f ], [ 2, %bb.e ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.d ] ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %.sink, ptr %i.s, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.u = load i16, ptr %i.t, align 1, !tbaa !33
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i, %bb.j ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !33
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @ff_mjpeg_std_luminance_quant_tbl, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !33
  %i.ab = zext i8 %i.aa to i32
  %i.ac = mul nuw nsw i32 %i.ab, %i.v             ; 2 uses
  %i.ad = udiv i32 %i.ac, 50
  %i.ae = icmp samesign ult i32 %i.ac, 100
  %..i.i = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 32767)
  %i.af = trunc nuw nsw i32 %..i.i to i16
  %i.ag = select i1 %i.ae, i16 2, i16 %i.af
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv.i
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %calc_dequant.exit, label %bb.j, !llvm.loop !37

calc_dequant.exit:                                ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %calc_dequant.exit
  %indvars.iv.i328 = phi i64 [ 0, %calc_dequant.exit ], [ %indvars.iv.next.i330, %bb.k ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr @ff_zigzag_direct, i64 %indvars.iv.i328
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !33
  %i.al = zext i8 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @ff_mjpeg_std_chrominance_quant_tbl, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !33
  %i.ao = zext i8 %i.an to i32
  %i.ap = mul nuw nsw i32 %i.ao, %i.v             ; 2 uses
  %i.aq = udiv i32 %i.ap, 50
  %i.ar = icmp samesign ult i32 %i.ap, 100
  %..i.i329 = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 32767)
  %i.as = trunc nuw nsw i32 %..i.i329 to i16
  %i.at = select i1 %i.ar, i16 2, i16 %i.as
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %indvars.iv.i328
  store i16 %i.at, ptr %i.au, align 2, !tbaa !35
  %indvars.iv.next.i330 = add nuw nsw i64 %indvars.iv.i328, 1 ; 2 uses
  %exitcond.not.i331 = icmp eq i64 %indvars.iv.next.i330, 64
  br i1 %exitcond.not.i331, label %calc_dequant.exit332, label %bb.k, !llvm.loop !37

calc_dequant.exit332:                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.aw = shl nuw nsw i32 1, %i.p
  %i.ax = shl nuw nsw i32 %i.aw, %i.p
  %i.ay = zext nneg i32 %i.k to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = add nsw i64 %i.az, -64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !39
  %i.bd = sub nsw i32 0, %i.bc
  %i.be = ashr i32 %i.bd, %i.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !40
  %i.bh = sub nsw i32 0, %i.bg
  %i.bi = ashr i32 %i.bh, %i.p
  %i.bj = lshr i32 %i.ax, 4
  %i.bk = and i32 %i.bj, 2044
  %.neg577.neg = add i32 %.1292.neg.neg.neg, %i.bk
  %.neg578.neg = add i32 %.neg577.neg, 8
  %.neg579.neg = mul i32 %.neg578.neg, %i.be
  %.neg580 = mul i32 %.neg579.neg, %i.bi
  %i.bl = sext i32 %.neg580 to i64
  %i.bm = icmp slt i64 %i.ba, %i.bl
  br i1 %i.bm, label %.thread368, label %bb.l

bb.l:                                             ; preds = %calc_dequant.exit332
  %i.bn = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #6 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %.thread368, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bq = load i32, ptr %i.j, align 8, !tbaa !32
  %i.br = add nsw i32 %i.bq, -8
  %i.bs = sext i32 %i.br to i64
  tail call void @av_fast_padded_malloc(ptr noundef %i.g, ptr noundef nonnull %i.bp, i64 noundef %i.bs) #6
  %i.bt = load ptr, ptr %i.g, align 8, !tbaa !41  ; 2 uses
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %.thread368, label %.preheader427

.preheader427:                                    ; preds = %bb.m
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !32
  %i.bv = icmp sgt i32 %i.bu, 8
  br i1 %i.bv, label %.lr.ph, label %._crit_edge.thread

._crit_edge:                                      ; preds = %bb.p
  %i.bw = trunc nuw i64 %indvars.iv.next to i32
  %.pre513 = load ptr, ptr %i.g, align 8, !tbaa !41
  %or.cond.i = icmp ugt i64 %indvars.iv, 268435454
  %i.bx = shl nuw nsw i32 %i.bw, 3
  %spec.select568 = select i1 %or.cond.i, i32 -8, i32 %i.bx
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %.preheader427
  %i.by = phi ptr [ %i.bt, %.preheader427 ], [ %.pre513, %._crit_edge ] ; 12 uses
  %i.bz = phi i32 [ 0, %.preheader427 ], [ %spec.select568, %._crit_edge ] ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.bz, 2147483135   ; 2 uses
  %i.ca = icmp ne ptr %i.by, null
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.ca      ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.by, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.bz, i32 0 ; 4 uses
  store ptr %.014.i.i, ptr %4, align 8, !tbaa !45
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %.013.i.i, ptr %i.cb, align 4, !tbaa !47
  %i.cc = add nuw nsw i32 %.013.i.i, 8            ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.cc, ptr %i.cd, align 8, !tbaa !48
  %i.ce = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.ce, align 8, !tbaa !49
  br i1 %or.cond3.i.i, label %bb.q, label %.thread368

.lr.ph:                                           ; preds = %.preheader427, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader427 ] ; 3 uses
  %.0286429 = phi i32 [ %i.cs, %bb.p ], [ 8, %.preheader427 ] ; 5 uses
  %i.cf = sext i32 %.0286429 to i64
  %i.cg = getelementptr inbounds i8, ptr %i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !33  ; 2 uses
  %i.ci = xor i8 %i.ch, -128
  %i.cj = load ptr, ptr %i.g, align 8, !tbaa !41
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !33
  %i.cl = icmp eq i8 %i.ch, 127
  %.pre = load i32, ptr %i.j, align 8, !tbaa !32  ; 2 uses
  br i1 %i.cl, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.cm = add nsw i32 %.0286429, 1                ; 3 uses
  %i.cn = icmp slt i32 %i.cm, %.pre
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.co = sext i32 %i.cm to i64
  %i.cp = getelementptr inbounds i8, ptr %i.i, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !33
  %i.cr = icmp eq i8 %i.cq, -128
  %spec.select = select i1 %i.cr, i32 %i.cm, i32 %.0286429
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph
  %.1 = phi i32 [ %.0286429, %.lr.ph ], [ %spec.select, %bb.o ], [ %.0286429, %bb.n ]
  %i.cs = add nsw i32 %.1, 1                      ; 2 uses
  %i.ct = icmp slt i32 %i.cs, %.pre
  br i1 %i.ct, label %.lr.ph, label %._crit_edge, !llvm.loop !50

bb.q:                                             ; preds = %._crit_edge.thread
  %i.cu = load i32, ptr %i.av, align 8, !tbaa !34
  %i.cv = icmp eq i32 %i.cu, 0                    ; 2 uses
  %or.cond = and i1 %i.q, %i.cv
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 15 uses
  br i1 %or.cond, label %.preheader416, label %bb.ae

.preheader416:                                    ; preds = %bb.q
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !40 ; 2 uses
  %.not324483 = icmp sgt i32 %i.cx, 7
  br i1 %.not324483, label %.preheader415.lr.ph, label %.thread373

.preheader415.lr.ph:                              ; preds = %.preheader416
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.pre520 = load i32, ptr %i.cy, align 8, !tbaa !39
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.e, i64 5
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 6
  %i.dg = getelementptr inbounds nuw i8, ptr %i.e, i64 7
  br label %.preheader415

.preheader415:                                    ; preds = %.preheader415.lr.ph, %.thread370
  %i.dh = phi i32 [ %i.cx, %.preheader415.lr.ph ], [ %i.iu, %.thread370 ]
  %i.di = phi i32 [ %.pre520, %.preheader415.lr.ph ], [ %i.iv, %.thread370 ] ; 2 uses
  %indvars.iv510 = phi i64 [ 0, %.preheader415.lr.ph ], [ %indvars.iv.next511, %.thread370 ] ; 4 uses
  %.not325481 = icmp sgt i32 %i.di, 15
  br i1 %.not325481, label %.preheader.lr.ph, label %.thread370

.preheader.lr.ph:                                 ; preds = %.preheader415
  %indvars512 = trunc i64 %indvars.iv510 to i32
  %i.dj = shl nuw nsw i64 %indvars.iv510, 2       ; 10 uses
  %i.dk = shl nuw nsw i32 %indvars512, 2
  %i.dl = add nuw nsw i64 %i.dj, 8
  %indvars.iv510.tr = trunc nuw i64 %indvars.iv510 to i32
  %i.dm = shl nuw nsw i32 %indvars.iv510.tr, 3
  %i.dn = trunc nuw nsw i64 %i.dj to i32
  %i.do = or disjoint i64 %i.dj, 1                ; 2 uses
  %i.dp = trunc nuw nsw i64 %i.do to i32
  %i.dq = or disjoint i64 %i.dj, 2                ; 2 uses
  %i.dr = trunc nuw nsw i64 %i.dq to i32
  %i.ds = or disjoint i64 %i.dj, 3                ; 2 uses
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = add nuw nsw i64 %i.dj, 4                ; 2 uses
  %i.dv = trunc nuw nsw i64 %i.du to i32
  %i.dw = add nuw nsw i64 %i.dj, 5                ; 2 uses
  %i.dx = trunc nuw nsw i64 %i.dw to i32
  %i.dy = add nuw nsw i64 %i.dj, 6                ; 2 uses
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = add nuw nsw i64 %i.dj, 7                ; 2 uses
  %i.eb = trunc nuw nsw i64 %i.ea to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.thread361
  %indvars.iv507 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next508, %.thread361 ] ; 3 uses
  %i.ec = shl nuw nsw i64 %indvars.iv507, 3       ; 9 uses
  %indvars.iv507.tr = trunc nuw i64 %indvars.iv507 to i32
  %i.ed = shl nuw nsw i32 %indvars.iv507.tr, 4
  br label %bb.r

bb.r:                                             ; preds = %.preheader, %bb.ad
  %.0283479 = phi i32 [ 0, %.preheader ], [ %i.iq, %bb.ad ] ; 4 uses
  %i.ee = icmp samesign ult i32 %.0283479, 2      ; 4 uses
  %i.ef = select i1 %i.ee, ptr @luma_dc_vlc, ptr @chroma_dc_vlc
  %i.eg = select i1 %i.ee, i32 9, i32 11
  %i.eh = select i1 %i.ee, ptr @luma_ac_vlc, ptr @chroma_ac_vlc
  %i.ei = call i32 @llvm.usub.sat.i32(i32 %.0283479, i32 1) ; 2 uses
  br i1 %i.ee, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.r
  %i.ej = shl nuw nsw i32 %.0283479, 3
  %i.ek = or disjoint i32 %i.ej, %i.ed
  %5 = zext nneg i32 %i.ek to i64
  br label %.thread364

bb.s:                                             ; preds = %bb.r
  %i.el = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.em = sdiv i32 %i.el, 2
  %i.en = sext i32 %i.em to i64
  %.not323 = icmp slt i64 %i.dl, %i.en
  br i1 %.not323, label %.thread364, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.eo = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.eo
  %i.eq = call fastcc i32 @decode_block(ptr noundef nonnull %i.g, ptr noundef %4, ptr noundef nonnull @chroma_dc_vlc, i32 noundef 11, ptr noundef nonnull @chroma_ac_vlc, ptr noundef %i.ep, ptr noundef %i.d, ptr noundef nonnull %i.e, i32 noundef 8) ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.eo ; 8 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.eo ; 8 uses
  %i.et = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.eu = sdiv i32 %i.et, 2
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %i.dj, %i.ev
  br i1 %i.ew, label %bb.u, label %bb.ac

bb.u:                                             ; preds = %bb.t
  %i.ex = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.ey = load i32, ptr %i.es, align 4, !tbaa !52
  %i.ez = mul nsw i32 %i.ey, %i.dn
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds i8, ptr %i.ex, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.ec
  %i.fd = load i64, ptr %i.e, align 16
  store i64 %i.fd, ptr %i.fc, align 1
  %i.fe = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.ff = sdiv i32 %i.fe, 2
  %i.fg = sext i32 %i.ff to i64
  %i.fh = icmp slt i64 %i.do, %i.fg
  br i1 %i.fh, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.fi = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.fj = load i32, ptr %i.es, align 4, !tbaa !52
  %i.fk = mul nsw i32 %i.fj, %i.dp
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.fi, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.ec
  %i.fo = load i64, ptr %i.da, align 1
  store i64 %i.fo, ptr %i.fn, align 1
  %i.fp = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.fq = sdiv i32 %i.fp, 2
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %i.dq, %i.fr
  br i1 %i.fs, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.ft = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.fu = load i32, ptr %i.es, align 4, !tbaa !52
  %i.fv = mul nsw i32 %i.fu, %i.dr
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds i8, ptr %i.ft, i64 %i.fw
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 %i.ec
  %i.fz = load i64, ptr %i.db, align 2
  store i64 %i.fz, ptr %i.fy, align 1
  %i.ga = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.gb = sdiv i32 %i.ga, 2
  %i.gc = sext i32 %i.gb to i64
  %i.gd = icmp slt i64 %i.ds, %i.gc
  br i1 %i.gd, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.ge = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.gf = load i32, ptr %i.es, align 4, !tbaa !52
  %i.gg = mul nsw i32 %i.gf, %i.dt
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds i8, ptr %i.ge, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.ec
  %i.gk = load i64, ptr %i.dc, align 1
  store i64 %i.gk, ptr %i.gj, align 1
  %i.gl = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.gm = sdiv i32 %i.gl, 2
  %i.gn = sext i32 %i.gm to i64
  %i.go = icmp slt i64 %i.du, %i.gn
  br i1 %i.go, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.gp = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.gq = load i32, ptr %i.es, align 4, !tbaa !52
  %i.gr = mul nsw i32 %i.gq, %i.dv
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr %i.gp, i64 %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %i.ec
  %i.gv = load i64, ptr %i.dd, align 4
  store i64 %i.gv, ptr %i.gu, align 1
  %i.gw = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.gx = sdiv i32 %i.gw, 2
  %i.gy = sext i32 %i.gx to i64
  %i.gz = icmp slt i64 %i.dw, %i.gy
  br i1 %i.gz, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ha = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.hb = load i32, ptr %i.es, align 4, !tbaa !52
  %i.hc = mul nsw i32 %i.hb, %i.dx
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr %i.ha, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.ec
  %i.hg = load i64, ptr %i.de, align 1
  store i64 %i.hg, ptr %i.hf, align 1
  %i.hh = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.hi = sdiv i32 %i.hh, 2
  %i.hj = sext i32 %i.hi to i64
  %i.hk = icmp slt i64 %i.dy, %i.hj
  br i1 %i.hk, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.hl = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.hm = load i32, ptr %i.es, align 4, !tbaa !52
  %i.hn = mul nsw i32 %i.hm, %i.dz
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds i8, ptr %i.hl, i64 %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.ec
  %i.hr = load i64, ptr %i.df, align 2
  store i64 %i.hr, ptr %i.hq, align 1
  %i.hs = load i32, ptr %i.cw, align 4, !tbaa !40
  %i.ht = sdiv i32 %i.hs, 2
  %i.hu = sext i32 %i.ht to i64
  %i.hv = icmp slt i64 %i.ea, %i.hu
  br i1 %i.hv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.hw = load ptr, ptr %i.er, align 8, !tbaa !51
  %i.hx = load i32, ptr %i.es, align 4, !tbaa !52
  %i.hy = mul nsw i32 %i.hx, %i.eb
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds i8, ptr %i.hw, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ec
  %i.ic = load i64, ptr %i.dg, align 1
  store i64 %i.ic, ptr %i.ib, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %i.id = icmp sgt i32 %i.eq, -1
  br i1 %i.id, label %bb.ad, label %.thread368

.thread364:                                       ; preds = %bb.s, %.thread
  %.0281360 = phi i32 [ %i.dm, %.thread ], [ %i.dk, %bb.s ]
  %.0282359 = phi i64 [ %5, %.thread ], [ %i.ec, %bb.s ]
  %i.ie = zext nneg i32 %i.ei to i64              ; 3 uses
  %i.if = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %i.ie
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ie
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !51
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ie
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !52 ; 2 uses
  %i.ik = mul nsw i32 %i.ij, %.0281360
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds i8, ptr %i.ih, i64 %i.il
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 %.0282359
  %i.io = call fastcc i32 @decode_block(ptr noundef nonnull %i.g, ptr noundef %4, ptr noundef nonnull %i.ef, i32 noundef %i.eg, ptr noundef nonnull %i.eh, ptr noundef %i.if, ptr noundef %i.d, ptr noundef %i.in, i32 noundef %i.ij) ; 2 uses
  %i.ip = icmp sgt i32 %i.io, -1
  br i1 %i.ip, label %bb.ad, label %.thread368

bb.ad:                                            ; preds = %.thread364, %bb.ac
  %i.iq = add nuw nsw i32 %.0283479, 1            ; 2 uses
  %exitcond506 = icmp eq i32 %i.iq, 4
  br i1 %exitcond506, label %.thread361, label %bb.r, !llvm.loop !53

.thread361:                                       ; preds = %bb.ad
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 2 uses
  %i.ir = load i32, ptr %i.cy, align 8, !tbaa !39 ; 2 uses
  %i.is = sdiv i32 %i.ir, 16
  %i.it = sext i32 %i.is to i64
  %.not325 = icmp slt i64 %indvars.iv.next508, %i.it
  br i1 %.not325, label %.preheader, label %.thread370.loopexit, !llvm.loop !54

.thread370.loopexit:                              ; preds = %.thread361
  %.pre521 = load i32, ptr %i.cw, align 4, !tbaa !40
  br label %.thread370

.thread370:                                       ; preds = %.thread370.loopexit, %.preheader415
  %i.iu = phi i32 [ %.pre521, %.thread370.loopexit ], [ %i.dh, %.preheader415 ] ; 2 uses
  %i.iv = phi i32 [ %i.ir, %.thread370.loopexit ], [ %i.di, %.preheader415 ]
  %indvars.iv.next511 = add nuw nsw i64 %indvars.iv510, 1 ; 2 uses
  %i.iw = sdiv i32 %i.iu, 8
  %i.ix = sext i32 %i.iw to i64
  %.not324 = icmp slt i64 %indvars.iv.next511, %i.ix
  br i1 %.not324, label %.preheader415, label %.thread373, !llvm.loop !55

bb.ae:                                            ; preds = %bb.q
  br i1 %i.cv, label %.preheader420, label %.preheader425

.preheader425:                                    ; preds = %bb.ae
  %factor.op.mul440 = shl nuw nsw i32 %.0290, 3
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.jb = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.jc = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.pre514 = load i32, ptr %i.cw, align 4, !tbaa !40 ; 2 uses
  br label %.preheader424

.preheader420:                                    ; preds = %bb.ae
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.je = select i1 %i.r, i32 4, i32 6
  %i.jf = select i1 %i.r, i32 2, i32 4
  %.neg = select i1 %i.r, i32 -1, i32 -3
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.jh = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.jj = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.pre517 = load i32, ptr %i.cw, align 4, !tbaa !40 ; 2 uses
  br label %.preheader419

.preheader419:                                    ; preds = %.preheader420, %.thread389
  %i.jk = phi i32 [ %.pre517, %.preheader420 ], [ %i.rc, %.thread389 ] ; 2 uses
  %i.jl = phi i32 [ %.pre517, %.preheader420 ], [ %i.rd, %.thread389 ] ; 2 uses
  %.0278477 = phi i32 [ 0, %.preheader420 ], [ %i.re, %.thread389 ] ; 2 uses
  %.lcssa455458.lcssa465.lcssa473476 = phi i32 [ 0, %.preheader420 ], [ %.lcssa455458.lcssa465.lcssa, %.thread389 ] ; 2 uses
  %i.jm = add nsw i32 %i.jl, 15
  %i.jn = sdiv i32 %i.jm, 16
  %i.jo = sdiv i32 %i.jn, %.0290
  %.not320468 = icmp sgt i32 %i.jo, 0
  br i1 %.not320468, label %.preheader418.preheader, label %.thread389

.preheader418.preheader:                          ; preds = %.preheader419
  %.pre518 = load i32, ptr %i.jd, align 8, !tbaa !39
  br label %.preheader418

.preheader418:                                    ; preds = %.preheader418.preheader, %.thread386
  %i.jp = phi i32 [ %i.qw, %.thread386 ], [ %i.jk, %.preheader418.preheader ]
  %i.jq = phi i32 [ %i.qx, %.thread386 ], [ %.pre518, %.preheader418.preheader ] ; 2 uses
  %.0277470 = phi i32 [ %i.qy, %.thread386 ], [ 0, %.preheader418.preheader ] ; 3 uses
  %.lcssa455458.lcssa465469 = phi i32 [ %.lcssa455458.lcssa, %.thread386 ], [ %.lcssa455458.lcssa465.lcssa473476, %.preheader418.preheader ] ; 2 uses
  %.not321461 = icmp sgt i32 %i.jq, 0
  br i1 %.not321461, label %.preheader417.lr.ph, label %.thread386

.preheader417.lr.ph:                              ; preds = %.preheader418
  %i.jr = shl nsw i32 %.0277470, 3
  %i.js = shl nsw i32 %.0277470, 4
  br label %.preheader417

.preheader417:                                    ; preds = %.preheader417.lr.ph, %.thread383
  %.0276463 = phi i32 [ 0, %.preheader417.lr.ph ], [ %i.qs, %.thread383 ] ; 3 uses
  %.lcssa455458462 = phi i32 [ %.lcssa455458.lcssa465469, %.preheader417.lr.ph ], [ %i.pf, %.thread383 ]
  %i.jt = shl nuw nsw i32 %.0276463, 3
  %i.ju = shl nuw nsw i32 %.0276463, 4
  br label %bb.af

bb.af:                                            ; preds = %.preheader417, %bb.at
  %.0275456 = phi i32 [ 0, %.preheader417 ], [ %i.qr, %bb.at ] ; 7 uses
  %i.jv = phi i32 [ %.lcssa455458462, %.preheader417 ], [ %i.pf, %bb.at ] ; 4 uses
  %i.jw = icmp samesign ult i32 %.0275456, %i.jf  ; 5 uses
  %i.jx = select i1 %i.jw, ptr @luma_dc_vlc, ptr @chroma_dc_vlc
  %i.jy = select i1 %i.jw, ptr @luma_ac_vlc, ptr @chroma_ac_vlc ; 2 uses
  %i.jz = add nsw i32 %.0275456, %.neg
  %narrow = select i1 %i.jw, i32 0, i32 %i.jz
  %i.ka = sext i32 %narrow to i64                 ; 3 uses
  br i1 %i.jw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.kb = shl nuw nsw i32 %.0275456, 2
  %i.kc = and i32 %i.kb, 2147483640
  %i.kd = add nuw nsw i32 %i.kc, %i.js
  %i.ke = shl nuw nsw i32 %.0275456, 3
  %i.kf = and i32 %i.ke, 8
  %i.kg = or disjoint i32 %i.kf, %i.ju
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.0274 = phi i32 [ %i.kg, %bb.ag ], [ %i.jt, %bb.af ]
  %.0273 = phi i32 [ %i.kd, %bb.ag ], [ %i.jr, %bb.af ] ; 3 uses
  %i.kh = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.ka ; 2 uses
  %i.ki = icmp samesign ugt i32 %.0275456, 3
  %.sroa.sel355 = select i1 %i.ki, ptr %i.ai, ptr %i.d ; 2 uses
  %i.kj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ka ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !51
  %i.kl = mul nsw i32 %.0273, %.0290
  %i.km = add nsw i32 %i.kl, %.0278477
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.ka ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !52 ; 2 uses
  %i.kp = mul nsw i32 %i.km, %i.ko
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds i8, ptr %i.kk, i64 %i.kq
  %i.ks = sext i32 %.0274 to i64                  ; 3 uses
  %i.kt = getelementptr inbounds i8, ptr %i.kr, i64 %i.ks
  %i.ku = icmp samesign ult i32 %.0275456, 2
  %i.kv = select i1 %i.r, i1 %i.ku, i1 false      ; 2 uses
  %i.kw = zext i1 %i.kv to i32
  %i.kx = shl nuw nsw i32 %.0290, %i.kw
  %i.ky = mul nsw i32 %i.ko, %i.kx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.kz = load ptr, ptr %i.jh, align 8, !tbaa !56
  call void %i.kz(ptr noundef nonnull %i.b) #6, !inline_history !57
  %.not62.i = icmp sgt i32 %.013.i.i, %i.jv
  br i1 %.not62.i, label %bb.ai, label %.thread409

bb.ai:                                            ; preds = %bb.ah
  %i.la = lshr i32 %i.jv, 3
  %i.lb = zext nneg i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 1, !tbaa !33
  %i.le = call i32 @llvm.bswap.i32(i32 %i.ld)
  %i.lf = and i32 %i.jv, 7
  %i.lg = shl i32 %i.le, %i.lf
  %i.lh = select i1 %i.jw, i32 23, i32 21
  %i.li = lshr i32 %i.lg, %i.lh
  %i.lj = zext nneg i32 %i.li to i64
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.jx, i64 %i.lj ; 2 uses
  %i.ll = load i16, ptr %i.lk, align 4, !tbaa !33 ; 3 uses
  %i.lm = sext i16 %i.ll to i32                   ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !33
  %i.lp = sext i16 %i.lo to i32
  %i.lq = add i32 %i.jv, %i.lp
  %i.lr = call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.lq) ; 4 uses
  %i.ls = icmp slt i16 %i.ll, 0
  br i1 %i.ls, label %.thread409, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not.i = icmp eq i16 %i.ll, 0
  %.pre.i = load i16, ptr %i.kh, align 2, !tbaa !35 ; 2 uses
  br i1 %.not.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lt = lshr i32 %i.lr, 3
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 1, !tbaa !33
  %i.lx = call i32 @llvm.bswap.i32(i32 %i.lw)
  %i.ly = and i32 %i.lr, 7
  %i.lz = shl i32 %i.lx, %i.ly                    ; 2 uses
  %isnotneg.i.i = icmp sgt i32 %i.lz, -1          ; 2 uses
  %i.ma = sext i1 %isnotneg.i.i to i32
  %i.mb = add nuw i32 %i.lr, %i.lm
  %i.mc = call i32 @llvm.umin.i32(i32 %i.cc, i32 %i.mb)
  %i.md = xor i32 %i.lz, %i.ma
  %i.me = sub nsw i32 32, %i.lm
  %i.mf = lshr i32 %i.md, %i.me                   ; 2 uses
  %i.mg = sub i32 0, %i.mf
  %i.mh = select i1 %isnotneg.i.i, i32 %i.mg, i32 %i.mf
  %i.mi = trunc i32 %i.mh to i16
  %i.mj = add i16 %.pre.i, %i.mi                  ; 2 uses
  store i16 %i.mj, ptr %i.kh, align 2, !tbaa !35
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.promoted.i = phi i32 [ %i.mc, %bb.ak ], [ %i.lr, %bb.aj ]
  %i.mk = phi i16 [ %i.mj, %bb.ak ], [ %.pre.i, %bb.aj ]
  %i.ml = load i16, ptr %.sroa.sel355, align 16, !tbaa !35
  %i.mm = mul i16 %i.ml, %i.mk
  %i.mn = add i16 %i.mm, 1024
  store i16 %i.mn, ptr %i.b, align 16, !tbaa !35
  br label %bb.am

bb.am:                                            ; preds = %bb.as, %bb.al
  %i.mo = phi i32 [ %.promoted.i, %bb.al ], [ %i.pd, %bb.as ] ; 4 uses
  %.063.i = phi i32 [ 1, %bb.al ], [ %i.pe, %bb.as ]
  %i.mp = lshr i32 %i.mo, 3
end_hunk_0
