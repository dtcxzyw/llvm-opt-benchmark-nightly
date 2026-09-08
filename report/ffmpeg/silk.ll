Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/silk?download=true
inline.NumInlined: 16
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 21
begin_hunk_0_@silk_decode_frame:bb.a
  %i.p = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_stereo_s1) #9 ; 2 uses
  %i.q = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_stereo_s2) #9
  %i.r = sdiv i32 %i.p, 5
  %i.s = mul nsw i32 %i.r, 3
  %i.t = add i32 %i.s, %i.q
  %i.u = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_stereo_s3) #9
  %i.v = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_stereo_s2) #9
  %i.w = srem i32 %i.p, 5
  %i.x = mul nsw i32 %i.w, 3
  %i.y = add i32 %i.v, %i.x
  %i.z = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_stereo_s3) #9
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr inbounds [2 x i8], ptr @ff_silk_stereo_weights, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !28
  %i.ad = sext i16 %i.ac to i32                   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ab, i64 2
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !28
  %i.ag = sext i16 %i.af to i32
  %i.ah = sub nsw i32 %i.ag, %i.ad
  %i.ai = mul nsw i32 %i.ah, 6554
  %i.aj = ashr i32 %i.ai, 16
  %i.ak = shl nsw i32 %i.u, 1
  %i.al = or disjoint i32 %i.ak, 1
  %i.am = mul nsw i32 %i.aj, %i.al
  %i.an = add nsw i32 %i.am, %i.ad
  %i.ao = sext i32 %i.y to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr @ff_silk_stereo_weights, i64 %i.ao ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !28
  %i.ar = sext i16 %i.aq to i32                   ; 2 uses
  %i.as = getelementptr i8, ptr %i.ap, i64 2
  %i.at = load i16, ptr %i.as, align 2, !tbaa !28
  %i.au = sext i16 %i.at to i32
  %i.av = sub nsw i32 %i.au, %i.ar
  %i.aw = mul nsw i32 %i.av, 6554
  %i.ax = ashr i32 %i.aw, 16
  %i.ay = shl nsw i32 %i.z, 1
  %i.az = or disjoint i32 %i.ay, 1
  %i.ba = mul nsw i32 %i.ax, %i.az
  %i.bb = add nsw i32 %i.ba, %i.ar                ; 2 uses
  %i.bc = sub nsw i32 %i.an, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 10576
  %i.be = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.bf = insertelement <2 x i32> %i.be, i32 %i.bb, i64 1
  %i.bg = sitofp <2 x i32> %i.bf to <2 x double>
  %i.bh = fmul nnan nsz <2 x double> %i.bg, splat (double f0x3F20000000000000)
  %i.bi = fptrunc <2 x double> %i.bh to <2 x float>
  store <2 x float> %i.bi, ptr %i.bd, align 8, !tbaa !24
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bj = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_mid_only) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bk = phi i32 [ %i.bj, %bb.c ], [ 0, %bb.b ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.not254 = icmp eq i32 %5, 0
  br i1 %.not254, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bm = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_frame_type_inactive) #9
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bn = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_frame_type_active) #9 ; 2 uses
  %i.bo = and i32 %i.bn, 1
  %i.bp = ashr i32 %i.bn, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0235 = phi i32 [ %i.bo, %bb.g ], [ %i.bm, %bb.f ]
  %.0234 = phi i32 [ %i.bp, %bb.g ], [ 0, %bb.f ] ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !12
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.i, label %._crit_edge

bb.i:                                             ; preds = %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 5 uses
  %i.bu = add nsw i32 %.0234, %5
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [18 x i8], ptr @ff_silk_model_gain_highbits, i64 %i.bv
  %i.bx = icmp eq i32 %2, 0
  br i1 %i.bx, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.by = load i32, ptr %i.m, align 4, !tbaa !18
  %.not261.peel = icmp eq i32 %i.by, 0
  br i1 %.not261.peel, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_gain_delta) #9 ; 2 uses
  %i.ca = shl i32 %i.bz, 1
  %i.cb = add nsw i32 %i.ca, -16
  %i.cc = load i32, ptr %i.bt, align 4, !tbaa !103
  %i.cd = add i32 %i.bz, -4
  %i.ce = add i32 %i.cd, %i.cc
  %.263.peel = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 %i.ce)
  %i.cf = tail call i32 @llvm.smax.i32(i32 %.263.peel, i32 0)
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 63)
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ch = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull %i.bw) #9
  %i.ci = shl i32 %i.ch, 3
  %i.cj = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_gain_lowbits) #9
  %i.ck = or i32 %i.ci, %i.cj                     ; 2 uses
  %i.cl = load i32, ptr %i.m, align 4, !tbaa !18
  %.not262.peel = icmp eq i32 %i.cl, 0
  br i1 %.not262.peel, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = load i32, ptr %i.bt, align 4, !tbaa !103
  %i.cn = add nsw i32 %i.cm, -16
  %..peel = tail call i32 @llvm.smax.i32(i32 %i.ck, i32 %i.cn)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.1243.peel = phi i32 [ %i.cg, %bb.k ], [ %..peel, %bb.m ], [ %i.ck, %bb.l ] ; 2 uses
  store i32 %.1243.peel, ptr %i.bt, align 4, !tbaa !103
  %i.co = mul nsw i32 %.1243.peel, 1907825
  %i.cp = ashr i32 %i.co, 16
  %i.cq = add nsw i32 %i.cp, 2090                 ; 2 uses
  %i.cr = ashr i32 %i.cq, 7
  %i.cs = and i32 %i.cq, 127                      ; 3 uses
  %i.ct = shl nuw i32 1, %i.cr                    ; 2 uses
  %i.cu = mul nsw i32 %i.cs, -174
  %i.cv = sub nuw nsw i32 128, %i.cs
  %i.cw = mul nsw i32 %i.cu, %i.cv
  %i.cx = ashr i32 %i.cw, 16
  %i.cy = add nsw i32 %i.cx, %i.cs
  %i.cz = ashr i32 %i.ct, 7
  %i.da = mul nsw i32 %i.cy, %i.cz
  %i.db = add nsw i32 %i.da, %i.ct
  %i.dc = sitofp nsz i32 %i.db to float
  %i.dd = fmul nnan nsz float %i.dc, f0x37800000
  store float %i.dd, ptr %8, align 16, !tbaa !105
  %i.de = load i32, ptr %i.bq, align 8, !tbaa !12
  %i.df = icmp sgt i32 %i.de, 1
  br i1 %i.df, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.n, %.peel.next
  %indvars.iv = phi i64 [ %indvars.iv.next, %.peel.next ], [ 1, %bb.n ] ; 2 uses
  %i.dg = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_gain_delta) #9 ; 2 uses
  %.pre = load i32, ptr %i.bq, align 8, !tbaa !12
  %i.dh = shl i32 %i.dg, 1
  %i.di = add nsw i32 %i.dh, -16
  %i.dj = add i32 %i.dg, -4
  %i.dk = load i32, ptr %i.bt, align 4, !tbaa !103
  %i.dl = add i32 %i.dj, %i.dk
  %.263 = tail call i32 @llvm.smax.i32(i32 %i.di, i32 %i.dl)
  %i.dm = tail call i32 @llvm.smax.i32(i32 %.263, i32 0)
  %i.dn = tail call i32 @llvm.umin.i32(i32 %i.dm, i32 63) ; 2 uses
  store i32 %i.dn, ptr %i.bt, align 4, !tbaa !103
  %i.do = mul nuw nsw i32 %i.dn, 1907825
  %i.dp = lshr i32 %i.do, 16
  %i.dq = add nuw nsw i32 %i.dp, 2090             ; 2 uses
  %i.dr = lshr i32 %i.dq, 7
  %i.ds = and i32 %i.dq, 127                      ; 3 uses
  %i.dt = shl nuw nsw i32 1, %i.dr                ; 2 uses
  %i.du = mul nsw i32 %i.ds, -174
  %i.dv = sub nuw nsw i32 128, %i.ds
  %i.dw = mul nsw i32 %i.du, %i.dv
  %i.dx = ashr i32 %i.dw, 16
  %i.dy = add nsw i32 %i.dx, %i.ds
  %i.dz = lshr i32 %i.dt, 7
  %i.ea = mul nsw i32 %i.dy, %i.dz
  %i.eb = add nsw i32 %i.ea, %i.dt
  %i.ec = sitofp nsz i32 %i.eb to float
  %i.ed = fmul nnan nsz float %i.ec, f0x37800000
  %i.ee = getelementptr inbounds nuw [28 x i8], ptr %8, i64 %indvars.iv
  store float %i.ed, ptr %i.ee, align 4, !tbaa !105
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ef = sext i32 %.pre to i64
  %i.eg = icmp slt i64 %indvars.iv.next, %i.ef
  br i1 %i.eg, label %.peel.next, label %._crit_edge, !llvm.loop !61

._crit_edge:                                      ; preds = %.peel.next, %bb.n, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !16 ; 2 uses
  %.not.i267 = icmp eq i32 %i.ei, 0
  %i.ej = select i1 %.not.i267, i32 10, i32 16    ; 7 uses
  %i.ek = sext i32 %i.ei to i64
  %i.el = getelementptr inbounds [132 x i8], ptr @ff_silk_model_lsf_s1, i64 %i.ek
  %i.em = sext i32 %.0234 to i64                  ; 3 uses
  %i.en = getelementptr inbounds [66 x i8], ptr %i.el, i64 %i.em
  %i.eo = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull %i.en) #9
  %i.ep = zext i32 %i.eo to i64
  %sext.i = shl i64 %i.ep, 56
  %i.eq = ashr exact i64 %sext.i, 56              ; 8 uses
  %i.er = getelementptr inbounds [16 x i8], ptr @ff_silk_lsf_s2_model_sel_wb, i64 %i.eq
  %i.es = getelementptr inbounds [10 x i8], ptr @ff_silk_lsf_s2_model_sel_nbmb, i64 %i.eq
  %wide.trip.count.i = zext nneg i32 %i.ej to i64 ; 21 uses
  br label %bb.o

.preheader120.i:                                  ; preds = %bb.s
  %i.et = load i32, ptr %i.eh, align 4, !tbaa !16
  %.not110.i = icmp eq i32 %i.et, 0               ; 5 uses
  %i.eu = select i1 %.not110.i, i32 11796, i32 9830
  %i.ev = getelementptr inbounds [15 x i8], ptr @ff_silk_lsf_weight_sel_wb, i64 %i.eq
  %i.ew = getelementptr inbounds [9 x i8], ptr @ff_silk_lsf_weight_sel_nbmb, i64 %i.eq
  br label %bb.t

bb.o:                                             ; preds = %bb.s, %._crit_edge
  %indvars.iv.i = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i, %bb.s ] ; 3 uses
  %i.ex = load i32, ptr %i.eh, align 4, !tbaa !16
  %.not115.i = icmp eq i32 %i.ex, 0
  %.in116.in.v.i = select i1 %.not115.i, ptr %i.es, ptr %i.er
  %.in116.in.i = getelementptr inbounds nuw i8, ptr %.in116.in.v.i, i64 %indvars.iv.i
  %.in116.i = load i8, ptr %.in116.in.i, align 1, !tbaa !30
  %i.ey = zext i8 %.in116.i to i64
  %i.ez = getelementptr inbounds nuw [20 x i8], ptr @ff_silk_model_lsf_s2, i64 %i.ey
  %i.fa = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull %i.ez) #9
  %i.fb = trunc i32 %i.fa to i8                   ; 2 uses
  %i.fc = add i8 %i.fb, -4                        ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i ; 2 uses
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !30
  %i.fe = icmp eq i8 %i.fb, 0
  br i1 %i.fe, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ff = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_lsf_s2_ext) #9
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = sub i8 %i.fc, %i.fg
  br label %.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.fi = icmp eq i8 %i.fc, 4
  br i1 %i.fi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.fj = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_lsf_s2_ext) #9
  %i.fk = trunc i32 %i.fj to i8
  %i.fl = add i8 %i.fk, 4
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.r, %bb.p
  %.sink.i = phi i8 [ %i.fl, %bb.r ], [ %i.fh, %bb.p ]
  store i8 %.sink.i, ptr %i.fd, align 1, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i, %bb.q
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader120.i, label %bb.o, !llvm.loop !62

.preheader.i:                                     ; preds = %bb.y
  %i.fm = getelementptr inbounds [16 x i8], ptr @ff_silk_lsf_codebook_wb, i64 %i.eq
  %i.fn = getelementptr inbounds [10 x i8], ptr @ff_silk_lsf_codebook_nbmb, i64 %i.eq
  %i.fo = select i1 %.not110.i, ptr %i.fn, ptr %i.fm
  %i.fp = getelementptr inbounds [32 x i8], ptr @ff_silk_model_lsf_weight_wb, i64 %i.eq
  %i.fq = getelementptr inbounds [20 x i8], ptr @ff_silk_model_lsf_weight_nbmb, i64 %i.eq
  %.pn.i = select i1 %.not110.i, ptr %i.fq, ptr %i.fp
  br label %bb.z

bb.t:                                             ; preds = %bb.y, %.preheader120.i
  %indvars.iv135.i = phi i64 [ %wide.trip.count.i, %.preheader120.i ], [ %indvars.iv.next136.i, %bb.y ] ; 4 uses
  %indvars.iv.next136.i = add nsw i64 %indvars.iv135.i, -1 ; 6 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next136.i
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !30  ; 3 uses
  %i.ft = zext i8 %i.fs to i16
  %i.fu = shl i16 %i.ft, 10                       ; 2 uses
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv.next136.i ; 2 uses
  %i.fw = icmp slt i8 %i.fs, 0
  %.not111.i = icmp eq i8 %i.fs, 0
  %i.fx = add i16 %i.fu, -102
  %spec.select.i = select i1 %.not111.i, i16 0, i16 %i.fx
  %i.fy = or disjoint i16 %i.fu, 102
  %i.fz = select i1 %i.fw, i16 %i.fy, i16 %spec.select.i
  %i.ga = sext i16 %i.fz to i32
  %i.gb = mul nsw i32 %i.eu, %i.ga
  %i.gc = lshr i32 %i.gb, 16
  %i.gd = trunc nuw i32 %i.gc to i16              ; 2 uses
  store i16 %i.gd, ptr %i.fv, align 2, !tbaa !28
  %i.ge = icmp samesign ult i64 %indvars.iv135.i, %wide.trip.count.i
  br i1 %i.ge, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  br i1 %.not110.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ev, i64 %indvars.iv.next136.i
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !30
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [15 x i8], ptr @ff_silk_lsf_pred_weights_wb, i64 %i.gh
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ew, i64 %indvars.iv.next136.i
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !30
  %i.gl = zext i8 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [9 x i8], ptr @ff_silk_lsf_pred_weights_nbmb, i64 %i.gl
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn114.i = phi ptr [ %i.gi, %bb.v ], [ %i.gm, %bb.w ]
  %.in113.in.i = getelementptr inbounds nuw i8, ptr %.pn114.i, i64 %indvars.iv.next136.i
  %.in113.i = load i8, ptr %.in113.in.i, align 1, !tbaa !30
  %i.gn = zext i8 %.in113.i to i32
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv135.i
  %i.gp = load i16, ptr %i.go, align 2, !tbaa !28
  %i.gq = sext i16 %i.gp to i32
  %i.gr = mul nsw i32 %i.gq, %i.gn
  %i.gs = lshr i32 %i.gr, 8
  %i.gt = trunc i32 %i.gs to i16
  %i.gu = add i16 %i.gt, %i.gd
  store i16 %i.gu, ptr %i.fv, align 2, !tbaa !28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.t
  %i.gv = icmp sgt i64 %indvars.iv135.i, 1
  br i1 %i.gv, label %bb.t, label %.preheader.i, !llvm.loop !63

bb.z:                                             ; preds = %bb.z, %.preheader.i
  %indvars.iv138.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next139.i, %bb.z ] ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fo, i64 %indvars.iv138.i
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !30
  %i.gy = zext i8 %i.gx to i32
  %.in.in.i = getelementptr inbounds nuw [2 x i8], ptr %.pn.i, i64 %indvars.iv138.i
  %.in.i = load i16, ptr %.in.in.i, align 2, !tbaa !28
  %i.gz = zext i16 %.in.i to i32
  %i.ha = shl nuw nsw i32 %i.gy, 7
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.e, i64 %indvars.iv138.i
  %i.hc = load i16, ptr %i.hb, align 2, !tbaa !28
  %i.hd = sext i16 %i.hc to i32
  %i.he = shl nsw i32 %i.hd, 14
  %i.hf = sdiv i32 %i.he, %i.gz
  %i.hg = add nsw i32 %i.hf, %i.ha
  %i.hh = tail call i32 @llvm.smax.i32(i32 %i.hg, i32 0)
  %i.hi = tail call i32 @llvm.umin.i32(i32 %i.hh, i32 32767)
  %i.hj = trunc nuw nsw i32 %i.hi to i16
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv138.i
  store i16 %i.hj, ptr %i.hk, align 2, !tbaa !28
  %indvars.iv.next139.i = add nuw nsw i64 %indvars.iv138.i, 1 ; 2 uses
  %exitcond142.not.i = icmp eq i64 %indvars.iv.next139.i, %wide.trip.count.i
  br i1 %exitcond142.not.i, label %bb.aa, label %bb.z, !llvm.loop !64

bb.aa:                                            ; preds = %bb.z
  %i.hl = select i1 %.not110.i, ptr @ff_silk_lsf_min_spacing_nbmb, ptr @ff_silk_lsf_min_spacing_wb ; 14 uses
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %wide.trip.count.i
  %i.hn = getelementptr [2 x i8], ptr %i.f, i64 %wide.trip.count.i
  %i.ho = getelementptr i8, ptr %i.hn, i64 -2     ; 4 uses
  %i.hp = load i16, ptr %i.hl, align 2, !tbaa !28 ; 4 uses
  %i.hq = zext i16 %i.hp to i32                   ; 2 uses
  %.pre150.i = load i16, ptr %i.f, align 16, !tbaa !28
  %i.hr = load i16, ptr %i.hm, align 2, !tbaa !28 ; 2 uses
  %i.hs = zext i16 %i.hr to i32                   ; 2 uses
  %i.ht = sub i16 -32768, %i.hr
  %i.hu = add nsw i64 %wide.trip.count.i, -4
  br label %.peel.next.i.split.i

.peel.next.i.split.i:                             ; preds = %bb.af, %bb.aa
  %i.hv = phi i16 [ %.pre150.i, %bb.aa ], [ %i.lq, %bb.af ] ; 2 uses
  %.0161198.i.i = phi i32 [ 0, %bb.aa ], [ %i.lr, %bb.af ]
  %i.hw = sext i16 %i.hv to i32
  %i.hx = sub nsw i32 %i.hw, %i.hq
  %spec.select175.peel.i.i = tail call i32 @llvm.smin.i32(i32 %i.hx, i32 0)
  br label %.peel.next.i.split.i.new

.peel.next.i.split.i.new:                         ; preds = %.peel.next.i.split.i.new, %.peel.next.i.split.i
  %indvars.iv.i.i = phi i64 [ 1, %.peel.next.i.split.i ], [ %indvars.iv.next.i.i.1, %.peel.next.i.split.i.new ] ; 5 uses
  %.0151189.i.i = phi i32 [ %spec.select175.peel.i.i, %.peel.next.i.split.i ], [ %spec.select175.i.i.1, %.peel.next.i.split.i.new ] ; 2 uses
  %.0153188.i.i = phi i32 [ 0, %.peel.next.i.split.i ], [ %spec.select.i.i.1, %.peel.next.i.split.i.new ]
  %niter = phi i64 [ 0, %.peel.next.i.split.i ], [ %niter.next.1, %.peel.next.i.split.i.new ] ; 2 uses
  %i.hy = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv.i.i ; 2 uses
  %i.hz = getelementptr i8, ptr %i.hy, i64 -2
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !28
  %i.ib = sext i16 %i.ia to i32
  %i.ic = load i16, ptr %i.hy, align 2, !tbaa !28 ; 2 uses
  %i.id = sext i16 %i.ic to i32
  %i.ie = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv.i.i
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !28
  %i.ig = zext i16 %i.if to i32
  %i.ih = add nsw i32 %i.ib, %i.ig
  %i.ii = sub nsw i32 %i.id, %i.ih                ; 2 uses
  %i.ij = icmp slt i32 %i.ii, %.0151189.i.i
  %i.ik = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %spec.select.i.i = select i1 %i.ij, i32 %i.ik, i32 %.0153188.i.i
  %spec.select175.i.i = tail call i32 @llvm.smin.i32(i32 %i.ii, i32 %.0151189.i.i) ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 3 uses
  %i.il = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv.next.i.i
  %i.im = sext i16 %i.ic to i32
  %i.in = load i16, ptr %i.il, align 2, !tbaa !28
  %i.io = sext i16 %i.in to i32
  %i.ip = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv.next.i.i
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !28
  %i.ir = zext i16 %i.iq to i32
  %i.is = add nsw i32 %i.im, %i.ir
  %i.it = sub nsw i32 %i.io, %i.is                ; 2 uses
  %i.iu = icmp slt i32 %i.it, %spec.select175.i.i
  %i.iv = trunc nuw nsw i64 %indvars.iv.next.i.i to i32
  %spec.select.i.i.1 = select i1 %i.iu, i32 %i.iv, i32 %spec.select.i.i ; 2 uses
  %spec.select175.i.i.1 = tail call i32 @llvm.smin.i32(i32 %i.it, i32 %spec.select175.i.i) ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 4 uses
  %niter.next.1 = add nuw i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.hu
  br i1 %niter.ncmp.1, label %.loopexit.i.peel.next.i.epilog-lcssa, label %.peel.next.i.split.i.new, !llvm.loop !65

.loopexit.i.peel.next.i.epilog-lcssa:             ; preds = %.peel.next.i.split.i.new
  %i.iw = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv.next.i.i.1 ; 2 uses
  %i.ix = getelementptr i8, ptr %i.iw, i64 -2
  %i.iy = load i16, ptr %i.ix, align 2, !tbaa !28
  %i.iz = sext i16 %i.iy to i32
  %i.ja = load i16, ptr %i.iw, align 2, !tbaa !28
  %i.jb = sext i16 %i.ja to i32
  %i.jc = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv.next.i.i.1
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !28
  %i.je = zext i16 %i.jd to i32
  %i.jf = add nsw i32 %i.iz, %i.je
  %i.jg = sub nsw i32 %i.jb, %i.jf                ; 2 uses
  %i.jh = icmp slt i32 %i.jg, %spec.select175.i.i.1
  %i.ji = trunc nuw nsw i64 %indvars.iv.next.i.i.1 to i32
  %spec.select.i.i.epil = select i1 %i.jh, i32 %i.ji, i32 %spec.select.i.i.1
  %spec.select175.i.i.epil = tail call i32 @llvm.smin.i32(i32 %i.jg, i32 %spec.select175.i.i.1) ; 2 uses
  %i.jj = load i16, ptr %i.ho, align 2, !tbaa !28
  %i.jk = sext i16 %i.jj to i32
  %i.jl = add nsw i32 %i.jk, %i.hs
  %i.jm = sub nsw i32 32768, %i.jl                ; 2 uses
  %i.jn = icmp slt i32 %i.jm, %spec.select175.i.i.epil
  %spec.select.i.peel.i = select i1 %i.jn, i32 %i.ej, i32 %spec.select.i.i.epil ; 7 uses
  %spec.select175.i.peel.i = tail call i32 @llvm.smin.i32(i32 %i.jm, i32 %spec.select175.i.i.epil)
  %.not172.i.i = icmp eq i32 %spec.select175.i.peel.i, 0
  br i1 %.not172.i.i, label %silk_stabilize_lsf.exit.i, label %bb.ab

bb.ab:                                            ; preds = %.loopexit.i.peel.next.i.epilog-lcssa
  %i.jo = icmp eq i32 %spec.select.i.peel.i, 0
  br i1 %i.jo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i16 %i.hp, ptr %i.f, align 16, !tbaa !28
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  %i.jp = icmp eq i32 %spec.select.i.peel.i, %i.ej
  br i1 %i.jp, label %bb.ae, label %.preheader184.i.i

.preheader184.i.i:                                ; preds = %bb.ad
  %i.jq = icmp sgt i32 %spec.select.i.peel.i, 0
  br i1 %i.jq, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader184.i.i
  %wide.trip.count214.i.i = zext nneg i32 %spec.select.i.peel.i to i64 ; 3 uses
  %min.iters.check454 = icmp ult i32 %spec.select.i.peel.i, 8
  br i1 %min.iters.check454, label %.lr.ph.i.i.preheader, label %vector.ph455

vector.ph455:                                     ; preds = %.lr.ph.preheader.i.i
  %n.vec456 = and i64 %wide.trip.count214.i.i, 2147483640 ; 3 uses
  br label %vector.body457

vector.body457:                                   ; preds = %vector.body457, %vector.ph455
  %index458 = phi i64 [ 0, %vector.ph455 ], [ %index.next463, %vector.body457 ] ; 2 uses
  %vec.phi459 = phi <4 x i32> [ zeroinitializer, %vector.ph455 ], [ %i.jv, %vector.body457 ]
  %vec.phi460 = phi <4 x i32> [ zeroinitializer, %vector.ph455 ], [ %i.jw, %vector.body457 ]
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %index458 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %wide.load461 = load <4 x i16>, ptr %i.jr, align 2, !tbaa !28
  %wide.load462 = load <4 x i16>, ptr %i.js, align 2, !tbaa !28
  %i.jt = zext <4 x i16> %wide.load461 to <4 x i32>
  %i.ju = zext <4 x i16> %wide.load462 to <4 x i32>
  %i.jv = add <4 x i32> %vec.phi459, %i.jt        ; 2 uses
  %i.jw = add <4 x i32> %vec.phi460, %i.ju        ; 2 uses
  %index.next463 = add nuw i64 %index458, 8       ; 2 uses
  %i.jx = icmp eq i64 %index.next463, %n.vec456
  br i1 %i.jx, label %middle.block464, label %vector.body457, !llvm.loop !66

middle.block464:                                  ; preds = %vector.body457
  %bin.rdx465 = add <4 x i32> %i.jw, %i.jv
  %i.jy = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx465) ; 2 uses
  %cmp.n466 = icmp eq i64 %n.vec456, %wide.trip.count214.i.i
  br i1 %cmp.n466, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block464
  %indvars.iv211.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec456, %middle.block464 ]
  %.0149191.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.jy, %middle.block464 ]
  br label %.lr.ph.i.i

bb.ae:                                            ; preds = %bb.ad
  store i16 %i.ht, ptr %i.ho, align 2, !tbaa !28
  br label %bb.af

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv211.i.i = phi i64 [ %indvars.iv.next212.i.i, %.lr.ph.i.i ], [ %indvars.iv211.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.0149191.i.i = phi i32 [ %i.kc, %.lr.ph.i.i ], [ %.0149191.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv211.i.i
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !28
  %i.kb = zext i16 %i.ka to i32
  %i.kc = add nuw nsw i32 %.0149191.i.i, %i.kb    ; 2 uses
  %indvars.iv.next212.i.i = add nuw nsw i64 %indvars.iv211.i.i, 1 ; 2 uses
  %exitcond215.not.i.i = icmp eq i64 %indvars.iv.next212.i.i, %wide.trip.count214.i.i
  br i1 %exitcond215.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !67

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block464, %.preheader184.i.i
  %.0149.lcssa.i.i = phi i32 [ 0, %.preheader184.i.i ], [ %i.jy, %middle.block464 ], [ %i.kc, %.lr.ph.i.i ]
  %i.kd = sext i32 %spec.select.i.peel.i to i64   ; 4 uses
  %i.ke = getelementptr inbounds [2 x i8], ptr %i.hl, i64 %i.kd
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !28 ; 2 uses
  %i.kg = lshr i16 %i.kf, 1                       ; 2 uses
  %i.kh = zext nneg i16 %i.kg to i32              ; 2 uses
  %i.ki = add nuw nsw i32 %.0149.lcssa.i.i, %i.kh
  %i.kj = icmp sgt i32 %i.ej, %spec.select.i.peel.i
  br i1 %i.kj, label %.lr.ph195.i.i.preheader, label %._crit_edge196.i.i

.lr.ph195.i.i.preheader:                          ; preds = %._crit_edge.i.i
  %i.kk = sub nsw i64 %wide.trip.count.i, %i.kd   ; 3 uses
  %min.iters.check = icmp ult i64 %i.kk, 8
  br i1 %min.iters.check, label %.lr.ph195.i.i.preheader561, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph195.i.i.preheader
  %n.vec = and i64 %i.kk, -8                      ; 3 uses
  %i.kl = sub nsw i64 %wide.trip.count.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ <i32 32768, i32 0, i32 0, i32 0>, %vector.ph ], [ %i.ks, %vector.body ]
  %vec.phi450 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.kt, %vector.body ]
  %i.km = sub i64 %wide.trip.count.i, %index
  %i.kn = getelementptr inbounds [2 x i8], ptr %i.hl, i64 %i.km ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %i.kn, i64 -6
  %i.kp = getelementptr inbounds i8, ptr %i.kn, i64 -14
  %wide.load = load <4 x i16>, ptr %i.ko, align 2, !tbaa !28
  %wide.load451 = load <4 x i16>, ptr %i.kp, align 2, !tbaa !28
  %reverse = shufflevector <4 x i16> %wide.load, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse452 = shufflevector <4 x i16> %wide.load451, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.kq = zext <4 x i16> %reverse to <4 x i32>
  %i.kr = zext <4 x i16> %reverse452 to <4 x i32>
  %i.ks = sub <4 x i32> %vec.phi, %i.kq           ; 2 uses
  %i.kt = sub <4 x i32> %vec.phi450, %i.kr        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ku = icmp eq i64 %index.next, %n.vec
  br i1 %i.ku, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.kt, %i.ks
  %i.kv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.kk, %n.vec
  br i1 %cmp.n, label %._crit_edge196.i.i, label %.lr.ph195.i.i.preheader561

.lr.ph195.i.i.preheader561:                       ; preds = %.lr.ph195.i.i.preheader, %middle.block
  %indvars.iv216.i.i.ph = phi i64 [ %wide.trip.count.i, %.lr.ph195.i.i.preheader ], [ %i.kl, %middle.block ]
  %.0148193.i.i.ph = phi i32 [ 32768, %.lr.ph195.i.i.preheader ], [ %i.kv, %middle.block ]
  br label %.lr.ph195.i.i

.lr.ph195.i.i:                                    ; preds = %.lr.ph195.i.i.preheader561, %.lr.ph195.i.i
  %indvars.iv216.i.i = phi i64 [ %indvars.iv.next217.i.i, %.lr.ph195.i.i ], [ %indvars.iv216.i.i.ph, %.lr.ph195.i.i.preheader561 ] ; 2 uses
  %.0148193.i.i = phi i32 [ %i.kz, %.lr.ph195.i.i ], [ %.0148193.i.i.ph, %.lr.ph195.i.i.preheader561 ]
  %i.kw = getelementptr inbounds [2 x i8], ptr %i.hl, i64 %indvars.iv216.i.i
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !28
  %i.ky = zext i16 %i.kx to i32
  %i.kz = sub nsw i32 %.0148193.i.i, %i.ky        ; 2 uses
  %indvars.iv.next217.i.i = add nsw i64 %indvars.iv216.i.i, -1 ; 2 uses
  %i.la = icmp sgt i64 %indvars.iv.next217.i.i, %i.kd
  br i1 %i.la, label %.lr.ph195.i.i, label %._crit_edge196.i.i, !llvm.loop !69

._crit_edge196.i.i:                               ; preds = %.lr.ph195.i.i, %middle.block, %._crit_edge.i.i
  %.0148.lcssa.i.i = phi i32 [ 32768, %._crit_edge.i.i ], [ %i.kv, %middle.block ], [ %i.kz, %.lr.ph195.i.i ]
  %i.lb = sub nsw i32 %.0148.lcssa.i.i, %i.kh
  %i.lc = getelementptr [2 x i8], ptr %i.f, i64 %i.kd ; 3 uses
  %i.ld = getelementptr i8, ptr %i.lc, i64 -2     ; 2 uses
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !28
  %i.lf = sext i16 %i.le to i32
  %i.lg = load i16, ptr %i.lc, align 2, !tbaa !28
  %i.lh = sext i16 %i.lg to i32
  %i.li = add nsw i32 %i.lh, %i.lf                ; 2 uses
  %i.lj = ashr i32 %i.li, 1
  %i.lk = and i32 %i.li, 1
  %i.ll = add nsw i32 %i.lj, %i.lk
  %i.lm = tail call i32 @llvm.smax.i32(i32 %i.ki, i32 %i.ll)
  %..i.i = tail call i32 @llvm.smin.i32(i32 %i.lb, i32 %i.lm)
  %i.ln = trunc i32 %..i.i to i16
  %i.lo = sub i16 %i.ln, %i.kg                    ; 2 uses
  store i16 %i.lo, ptr %i.ld, align 2, !tbaa !28
  %i.lp = add i16 %i.lo, %i.kf
  store i16 %i.lp, ptr %i.lc, align 2, !tbaa !28
  %.pre.i = load i16, ptr %i.f, align 16, !tbaa !28
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge196.i.i, %bb.ae, %bb.ac
  %i.lq = phi i16 [ %.pre.i, %._crit_edge196.i.i ], [ %i.hv, %bb.ae ], [ %i.hp, %bb.ac ]
  %i.lr = add nuw nsw i32 %.0161198.i.i, 1        ; 2 uses
  %exitcond219.not.i.i = icmp eq i32 %i.lr, 20
  br i1 %exitcond219.not.i.i, label %.preheader.i.i.preheader.new, label %.peel.next.i.split.i, !llvm.loop !70

.preheader.i.i.preheader.new:                     ; preds = %bb.af
  %i.ls = add nsw i64 %wide.trip.count.i, -4
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.critedge.i.i.1, %.preheader.i.i.preheader.new
  %indvars.iv220.i.i = phi i64 [ 1, %.preheader.i.i.preheader.new ], [ %indvars.iv.next221.i.i.1, %.critedge.i.i.1 ] ; 4 uses
  %niter576 = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %niter576.next.1, %.critedge.i.i.1 ] ; 2 uses
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv220.i.i
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !28 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.preheader.i.i
  %indvars.iv222.i.i = phi i64 [ %indvars.iv220.i.i, %.preheader.i.i ], [ %indvars.iv.next223.i.i, %bb.ah ] ; 4 uses
  %indvars.iv.next223.i.i = add nsw i64 %indvars.iv222.i.i, -1 ; 2 uses
  %i.lv = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next223.i.i
  %i.lw = load i16, ptr %i.lv, align 2, !tbaa !28 ; 2 uses
  %i.lx = icmp sgt i16 %i.lw, %i.lu
  br i1 %i.lx, label %bb.ah, label %.critedge.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv222.i.i
  store i16 %i.lw, ptr %i.ly, align 2, !tbaa !28
  %i.lz = icmp sgt i64 %indvars.iv222.i.i, 1
  br i1 %i.lz, label %bb.ag, label %.critedge.i.i, !llvm.loop !71

.critedge.i.i:                                    ; preds = %bb.ah, %bb.ag
  %.0.in.lcssa.i.i = phi i64 [ 0, %bb.ah ], [ %indvars.iv222.i.i, %bb.ag ]
  %i.ma = getelementptr inbounds [2 x i8], ptr %i.f, i64 %.0.in.lcssa.i.i
  store i16 %i.lu, ptr %i.ma, align 2, !tbaa !28
  %indvars.iv.next221.i.i = add nuw nsw i64 %indvars.iv220.i.i, 1 ; 2 uses
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next221.i.i
  %i.mc = load i16, ptr %i.mb, align 2, !tbaa !28 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %.critedge.i.i
  %indvars.iv222.i.i.1 = phi i64 [ %indvars.iv.next221.i.i, %.critedge.i.i ], [ %indvars.iv.next223.i.i.1, %bb.aj ] ; 4 uses
  %indvars.iv.next223.i.i.1 = add nsw i64 %indvars.iv222.i.i.1, -1 ; 2 uses
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next223.i.i.1
  %i.me = load i16, ptr %i.md, align 2, !tbaa !28 ; 2 uses
  %i.mf = icmp sgt i16 %i.me, %i.mc
  br i1 %i.mf, label %bb.aj, label %.critedge.i.i.1

bb.aj:                                            ; preds = %bb.ai
  %i.mg = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv222.i.i.1
  store i16 %i.me, ptr %i.mg, align 2, !tbaa !28
  %i.mh = icmp sgt i64 %indvars.iv222.i.i.1, 1
  br i1 %i.mh, label %bb.ai, label %.critedge.i.i.1, !llvm.loop !71

.critedge.i.i.1:                                  ; preds = %bb.aj, %bb.ai
  %.0.in.lcssa.i.i.1 = phi i64 [ 0, %bb.aj ], [ %indvars.iv222.i.i.1, %bb.ai ]
  %i.mi = getelementptr inbounds [2 x i8], ptr %i.f, i64 %.0.in.lcssa.i.i.1
  store i16 %i.mc, ptr %i.mi, align 2, !tbaa !28
  %indvars.iv.next221.i.i.1 = add nuw nsw i64 %indvars.iv220.i.i, 2 ; 3 uses
  %niter576.next.1 = add nuw nsw i64 %niter576, 2
  %niter576.ncmp.1 = icmp eq i64 %niter576, %i.ls
  br i1 %niter576.ncmp.1, label %.preheader.i.i.epil, label %.preheader.i.i, !llvm.loop !72

.preheader.i.i.epil:                              ; preds = %.critedge.i.i.1
  %i.mj = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next221.i.i.1
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !28 ; 2 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.preheader.i.i.epil
  %indvars.iv222.i.i.epil = phi i64 [ %indvars.iv.next221.i.i.1, %.preheader.i.i.epil ], [ %indvars.iv.next223.i.i.epil, %bb.al ] ; 4 uses
  %indvars.iv.next223.i.i.epil = add nsw i64 %indvars.iv222.i.i.epil, -1 ; 2 uses
  %i.ml = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.next223.i.i.epil
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !28 ; 2 uses
  %i.mn = icmp sgt i16 %i.mm, %i.mk
  br i1 %i.mn, label %bb.al, label %.critedge.i.i.epil

bb.al:                                            ; preds = %bb.ak
  %i.mo = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv222.i.i.epil
  store i16 %i.mm, ptr %i.mo, align 2, !tbaa !28
  %i.mp = icmp sgt i64 %indvars.iv222.i.i.epil, 1
  br i1 %i.mp, label %bb.ak, label %.critedge.i.i.epil, !llvm.loop !71

.critedge.i.i.epil:                               ; preds = %bb.al, %bb.ak
  %.0.in.lcssa.i.i.epil = phi i64 [ 0, %bb.al ], [ %indvars.iv222.i.i.epil, %bb.ak ]
  %i.mq = getelementptr inbounds [2 x i8], ptr %i.f, i64 %.0.in.lcssa.i.i.epil
  store i16 %i.mk, ptr %i.mq, align 2, !tbaa !28
  %i.mr = load i16, ptr %i.f, align 16, !tbaa !28 ; 2 uses
  %i.ms = sext i16 %i.mr to i32
  %i.mt = icmp slt i32 %i.ms, %i.hq
  %spec.store.select.i = select i1 %i.mt, i16 %i.hp, i16 %i.mr ; 2 uses
  store i16 %spec.store.select.i, ptr %i.f, align 16
  br label %bb.am

bb.am:                                            ; preds = %bb.ao, %.critedge.i.i.epil
  %store_forwarded = phi i16 [ %spec.store.select.i, %.critedge.i.i.epil ], [ %i.ne, %bb.ao ]
  %indvars.iv228.i.i = phi i64 [ 1, %.critedge.i.i.epil ], [ %indvars.iv.next229.i.i, %bb.ao ] ; 3 uses
  %i.mu = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv228.i.i ; 2 uses
  %i.mv = sext i16 %store_forwarded to i32
  %i.mw = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv228.i.i
  %i.mx = load i16, ptr %i.mw, align 2, !tbaa !28
  %i.my = zext i16 %i.mx to i32
  %i.mz = add nsw i32 %i.my, %i.mv                ; 3 uses
  %i.na = icmp sgt i32 %i.mz, 32767
  br i1 %i.na, label %.critedge179.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.nb = load i16, ptr %i.mu, align 2, !tbaa !28 ; 2 uses
  %i.nc = sext i16 %i.nb to i32
  %i.nd = icmp slt i32 %i.mz, %i.nc
  br i1 %i.nd, label %bb.ao, label %.critedge179.i.i

.critedge179.i.i:                                 ; preds = %bb.an, %bb.am
  %spec.select180181.i.i = tail call i32 @llvm.smin.i32(i32 %i.mz, i32 32767)
  %spec.select180.i.i = trunc nsw i32 %spec.select180181.i.i to i16
  br label %bb.ao

bb.ao:                                            ; preds = %.critedge179.i.i, %bb.an
  %i.ne = phi i16 [ %spec.select180.i.i, %.critedge179.i.i ], [ %i.nb, %bb.an ] ; 2 uses
  store i16 %i.ne, ptr %i.mu, align 2, !tbaa !28
  %indvars.iv.next229.i.i = add nuw nsw i64 %indvars.iv228.i.i, 1 ; 2 uses
  %exitcond232.not.i.i = icmp eq i64 %indvars.iv.next229.i.i, %wide.trip.count.i
  br i1 %exitcond232.not.i.i, label %bb.ap, label %bb.am, !llvm.loop !73

bb.ap:                                            ; preds = %bb.ao
  %i.nf = load i16, ptr %i.ho, align 2, !tbaa !28
  %i.ng = sext i16 %i.nf to i32
  %i.nh = sub nsw i32 32768, %i.hs                ; 2 uses
  %i.ni = icmp slt i32 %i.nh, %i.ng
  br i1 %i.ni, label %bb.aq, label %.lr.ph206.preheader.i.i

bb.aq:                                            ; preds = %bb.ap
  %i.nj = trunc nsw i32 %i.nh to i16
  store i16 %i.nj, ptr %i.ho, align 2, !tbaa !28
  br label %.lr.ph206.preheader.i.i

.lr.ph206.preheader.i.i:                          ; preds = %bb.aq, %bb.ap
  %i.nk = add nsw i32 %i.ej, -2                   ; 2 uses
  %i.nl = zext i32 %i.nk to i64                   ; 3 uses
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.nl ; 2 uses
  %i.nn = load i16, ptr %i.nm, align 4, !tbaa !28
  %i.no = sext i16 %i.nn to i32
  %i.np = or disjoint i64 %i.nl, 1                ; 2 uses
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.np
  %i.nr = load i16, ptr %i.nq, align 2, !tbaa !28
  %i.ns = sext i16 %i.nr to i32
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.np
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !28
  %i.nv = zext i16 %i.nu to i32
  %i.nw = sub nsw i32 %i.ns, %i.nv                ; 2 uses
  %i.nx = icmp slt i32 %i.nw, %i.no
  br i1 %i.nx, label %bb.ar, label %.lr.ph206.i.i.prol.loopexit.unr-lcssa

bb.ar:                                            ; preds = %.lr.ph206.preheader.i.i
  %i.ny = trunc i32 %i.nw to i16
  store i16 %i.ny, ptr %i.nm, align 4, !tbaa !28
  br label %.lr.ph206.i.i.prol.loopexit.unr-lcssa

.lr.ph206.i.i.prol.loopexit.unr-lcssa:            ; preds = %bb.ar, %.lr.ph206.preheader.i.i
  %indvars.iv.next234.i.i.prol = add nsw i64 %i.nl, -1
  %i.nz = icmp eq i32 %i.nk, 0
  br i1 %i.nz, label %silk_stabilize_lsf.exit.i, label %.lr.ph206.i.i

.lr.ph206.i.i:                                    ; preds = %.lr.ph206.i.i.prol.loopexit.unr-lcssa, %bb.au
  %indvars.iv233.i.i = phi i64 [ %indvars.iv.next234.i.i.1, %bb.au ], [ %indvars.iv.next234.i.i.prol, %.lr.ph206.i.i.prol.loopexit.unr-lcssa ] ; 7 uses
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv233.i.i ; 2 uses
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !28
  %i.oc = sext i16 %i.ob to i32
  %i.od = add nuw nsw i64 %indvars.iv233.i.i, 1   ; 2 uses
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %i.od
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !28
  %i.og = sext i16 %i.of to i32
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.od
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !28
  %i.oj = zext i16 %i.oi to i32
  %i.ok = sub nsw i32 %i.og, %i.oj                ; 2 uses
  %i.ol = icmp slt i32 %i.ok, %i.oc
  br i1 %i.ol, label %bb.as, label %.lr.ph206.i.i.1

bb.as:                                            ; preds = %.lr.ph206.i.i
  %i.om = trunc i32 %i.ok to i16
  store i16 %i.om, ptr %i.oa, align 2, !tbaa !28
  br label %.lr.ph206.i.i.1

.lr.ph206.i.i.1:                                  ; preds = %bb.as, %.lr.ph206.i.i
  %i.on = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv233.i.i
  %i.oo = getelementptr i8, ptr %i.on, i64 -2     ; 2 uses
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !28
  %i.oq = sext i16 %i.op to i32
  %i.or = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv233.i.i
  %i.os = load i16, ptr %i.or, align 2, !tbaa !28
  %i.ot = sext i16 %i.os to i32
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %indvars.iv233.i.i
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !28
  %i.ow = zext i16 %i.ov to i32
  %i.ox = sub nsw i32 %i.ot, %i.ow                ; 2 uses
  %i.oy = icmp slt i32 %i.ox, %i.oq
  br i1 %i.oy, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph206.i.i.1
  %i.oz = trunc i32 %i.ox to i16
  store i16 %i.oz, ptr %i.oo, align 2, !tbaa !28
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph206.i.i.1
  %indvars.iv.next234.i.i.1 = add nsw i64 %indvars.iv233.i.i, -2
  %i.pa = icmp sgt i64 %indvars.iv233.i.i, 1
  br i1 %i.pa, label %.lr.ph206.i.i, label %silk_stabilize_lsf.exit.i, !llvm.loop !74

silk_stabilize_lsf.exit.i:                        ; preds = %.loopexit.i.peel.next.i.epilog-lcssa, %.lr.ph206.i.i.prol.loopexit.unr-lcssa, %bb.au
  %i.pb = load i32, ptr %i.bq, align 8, !tbaa !12
  %i.pc = icmp eq i32 %i.pb, 4
  br i1 %i.pc, label %bb.av, label %silk_decode_lpc.exit

bb.av:                                            ; preds = %silk_stabilize_lsf.exit.i
  %i.pd = tail call i32 @ff_opus_rc_dec_cdf(ptr noundef %1, ptr noundef nonnull @ff_silk_model_lsf_interpolation_offset) #9 ; 5 uses
  %.not106.i = icmp eq i32 %i.pd, 4
  br i1 %.not106.i, label %silk_decode_lpc.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.pe = load i32, ptr %i.m, align 4, !tbaa !18
  %.not107.i = icmp eq i32 %i.pe, 0
  br i1 %.not107.i, label %silk_decode_lpc.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %.not108.i = icmp eq i32 %i.pd, 0
  br i1 %.not108.i, label %bb.ay, label %vector.ph470

vector.ph470:                                     ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.pf = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %n.vec471 = and i64 %wide.trip.count.i, 24      ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.pd, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body472

vector.body472:                                   ; preds = %vector.body472, %vector.ph470
  %index473 = phi i64 [ 0, %vector.ph470 ], [ %index.next476, %vector.body472 ] ; 4 uses
  %i.pg = getelementptr inbounds nuw [2 x i8], ptr %i.pf, i64 %index473
  %wide.load474 = load <8 x i16>, ptr %i.pg, align 2, !tbaa !28 ; 2 uses
  %i.ph = sext <8 x i16> %wide.load474 to <8 x i32>
  %i.pi = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %index473
  %wide.load475 = load <8 x i16>, ptr %i.pi, align 16, !tbaa !28
  %i.pj = sext <8 x i16> %wide.load475 to <8 x i32>
  %i.pk = sub nsw <8 x i32> %i.pj, %i.ph
  %i.pl = mul nsw <8 x i32> %i.pk, %broadcast.splat
  %i.pm = lshr <8 x i32> %i.pl, splat (i32 2)
  %i.pn = trunc <8 x i32> %i.pm to <8 x i16>
  %i.po = add <8 x i16> %wide.load474, %i.pn
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %index473
  store <8 x i16> %i.po, ptr %i.pp, align 16, !tbaa !28
  %index.next476 = add nuw i64 %index473, 8       ; 2 uses
  %i.pq = icmp eq i64 %index.next476, %n.vec471
  br i1 %i.pq, label %middle.block477, label %vector.body472, !llvm.loop !75

middle.block477:                                  ; preds = %vector.body472
  %cmp.n478 = icmp eq i64 %n.vec471, %wide.trip.count.i
  br i1 %cmp.n478, label %.loopexit555, label %scalar.ph469

scalar.ph469:                                     ; preds = %middle.block477, %scalar.ph469
  %indvars.iv145.i = phi i64 [ %indvars.iv.next146.i, %scalar.ph469 ], [ %n.vec471, %middle.block477 ] ; 4 uses
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %i.pf, i64 %indvars.iv145.i
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !28 ; 2 uses
  %i.pt = sext i16 %i.ps to i32
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv145.i
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !28
  %i.pw = sext i16 %i.pv to i32
  %i.px = sub nsw i32 %i.pw, %i.pt
  %i.py = mul nsw i32 %i.px, %i.pd
  %i.pz = lshr i32 %i.py, 2
  %i.qa = trunc i32 %i.pz to i16
end_hunk_0
begin_hunk_1_@silk_lsf2lpc:bb.a
.new:                                             ; preds = %bb.d
  %i.ou = add nuw i32 %.199.lcssa, 16
  %i.ov = lshr i32 %i.ou, 5
  %i.ow = tail call i32 @llvm.umin.i32(i32 %i.ov, i32 163838) ; 2 uses
  %i.ox = shl nuw i32 %i.ow, 14
  %i.oy = add i32 %i.ox, -536854528
  %i.oz = add nuw nsw i32 %.3.lcssa, 1
  %i.pa = mul i32 %i.ow, %i.oz
  %i.pb = lshr i32 %i.pa, 2
  %i.pc = udiv i32 %i.oy, %i.pb
  %i.pd = sub nsw i32 65470, %i.pc                ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.new
  %indvars.iv165 = phi i64 [ 0, %.new ], [ %indvars.iv.next166.1, %bb.e ] ; 3 uses
  %.097144 = phi i32 [ %i.pd, %.new ], [ %i.qc, %bb.e ] ; 2 uses
  %niter267 = phi i64 [ 0, %.new ], [ %niter267.next.1, %bb.e ]
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv165 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !19
  %i.pg = sext i32 %i.pf to i64
  %i.ph = zext i32 %.097144 to i64
  %i.pi = mul nsw i64 %i.pg, %i.ph
  %i.pj = lshr i64 %i.pi, 15
  %i.pk = add nuw nsw i64 %i.pj, 1
  %i.pl = lshr i64 %i.pk, 1
  %i.pm = trunc i64 %i.pl to i32
  store i32 %i.pm, ptr %i.pe, align 8, !tbaa !19
  %i.pn = mul i32 %.097144, %i.pd
  %i.po = add i32 %i.pn, 32768
  %i.pp = lshr i32 %i.po, 16                      ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv165
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 4 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !19
  %i.pt = sext i32 %i.ps to i64
  %i.pu = zext nneg i32 %i.pp to i64
  %i.pv = mul nsw i64 %i.pt, %i.pu
  %i.pw = lshr i64 %i.pv, 15
  %i.px = add nuw nsw i64 %i.pw, 1
  %i.py = lshr i64 %i.px, 1
  %i.pz = trunc i64 %i.py to i32
  store i32 %i.pz, ptr %i.pr, align 4, !tbaa !19
  %i.qa = mul i32 %i.pp, %i.pd
  %i.qb = add i32 %i.qa, 32768
  %i.qc = lshr i32 %i.qb, 16                      ; 2 uses
  %indvars.iv.next166.1 = add nuw nsw i64 %indvars.iv165, 2 ; 2 uses
  %niter267.next.1 = add nuw nsw i64 %niter267, 2 ; 2 uses
  %niter267.ncmp.1 = icmp eq i64 %niter267.next.1, %unroll_iter266
  br i1 %niter267.ncmp.1, label %.unr-lcssa260, label %bb.e, !llvm.loop !129

.unr-lcssa260:                                    ; preds = %bb.e
  br i1 %lcmp.mod263.not, label %bb.f, label %.epil.preheader261

.epil.preheader261:                               ; preds = %.unr-lcssa260
  tail call void @llvm.assume(i1 %lcmp.mod265)
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next166.1 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !19
  %i.qf = sext i32 %i.qe to i64
  %i.qg = zext i32 %i.qc to i64
  %i.qh = mul nsw i64 %i.qf, %i.qg
  %i.qi = lshr i64 %i.qh, 15
  %i.qj = add nuw nsw i64 %i.qi, 1
  %i.qk = lshr i64 %i.qj, 1
  %i.ql = trunc i64 %i.qk to i32
  store i32 %i.ql, ptr %i.qd, align 4, !tbaa !19
  br label %bb.f

bb.f:                                             ; preds = %.unr-lcssa260, %.epil.preheader261
  %i.qm = add nuw nsw i32 %.095145, 1             ; 2 uses
  %exitcond170.not = icmp eq i32 %i.qm, 10
  br i1 %exitcond170.not, label %vector.ph214, label %.preheader133, !llvm.loop !130

bb.g:                                             ; preds = %bb.d
  %i.qn = icmp eq i32 %.095145, 10
  br i1 %i.qn, label %vector.ph214, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %wide.trip.count, 24           ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <4 x i32>, ptr %i.e, align 16, !tbaa !19
  %wide.load212 = load <4 x i32>, ptr %i.qo, align 16, !tbaa !19
  %i.qp = add nsw <4 x i32> %wide.load, splat (i32 16)
  %i.qq = add nsw <4 x i32> %wide.load212, splat (i32 16)
  %i.qr = lshr <4 x i32> %i.qp, splat (i32 5)
  %i.qs = lshr <4 x i32> %i.qq, splat (i32 5)
  %i.qt = trunc <4 x i32> %i.qr to <4 x i16>
  %i.qu = trunc <4 x i32> %i.qs to <4 x i16>
  %i.qv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <4 x i16> %i.qt, ptr %i.f, align 16, !tbaa !28
  store <4 x i16> %i.qu, ptr %i.qv, align 8, !tbaa !28
  %i.qw = icmp eq i64 %n.vec, 8
  br i1 %i.qw, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.qx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.qy = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %wide.load.1 = load <4 x i32>, ptr %i.qx, align 16, !tbaa !19
  %wide.load212.1 = load <4 x i32>, ptr %i.qy, align 16, !tbaa !19
  %i.qz = add nsw <4 x i32> %wide.load.1, splat (i32 16)
  %i.ra = add nsw <4 x i32> %wide.load212.1, splat (i32 16)
  %i.rb = lshr <4 x i32> %i.qz, splat (i32 5)
  %i.rc = lshr <4 x i32> %i.ra, splat (i32 5)
  %i.rd = trunc <4 x i32> %i.rb to <4 x i16>
  %i.re = trunc <4 x i32> %i.rc to <4 x i16>
  %i.rf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.rg = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store <4 x i16> %i.rd, ptr %i.rf, align 16, !tbaa !28
  store <4 x i16> %i.re, ptr %i.rg, align 8, !tbaa !28
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.preheader131

vector.ph214:                                     ; preds = %bb.f, %bb.g
  %n.vec215 = and i64 %wide.trip.count, 24        ; 3 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load218 = load <4 x i32>, ptr %i.e, align 16, !tbaa !19
  %wide.load219 = load <4 x i32>, ptr %i.rh, align 16, !tbaa !19
  %i.ri = add nsw <4 x i32> %wide.load218, splat (i32 16)
  %i.rj = add nsw <4 x i32> %wide.load219, splat (i32 16)
  %i.rk = ashr <4 x i32> %i.ri, splat (i32 5)
  %i.rl = ashr <4 x i32> %i.rj, splat (i32 5)
  %i.rm = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.rk, <4 x i32> splat (i32 -32768))
  %i.rn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.rl, <4 x i32> splat (i32 -32768))
  %i.ro = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rm, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.rp = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.rn, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.rq = trunc nsw <4 x i32> %i.ro to <4 x i16>
  %i.rr = trunc nsw <4 x i32> %i.rp to <4 x i16>
  %i.rs = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <4 x i16> %i.rq, ptr %i.f, align 16, !tbaa !28
  store <4 x i16> %i.rr, ptr %i.rs, align 8, !tbaa !28
  %i.rt = shl nsw <4 x i32> %i.ro, splat (i32 5)
  %i.ru = shl nsw <4 x i32> %i.rp, splat (i32 5)
  store <4 x i32> %i.rt, ptr %i.e, align 16, !tbaa !19
  store <4 x i32> %i.ru, ptr %i.rh, align 16, !tbaa !19
  %i.rv = icmp eq i64 %n.vec215, 8
  br i1 %i.rv, label %middle.block221, label %vector.body216.1

vector.body216.1:                                 ; preds = %vector.ph214
  %i.rw = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %wide.load218.1 = load <4 x i32>, ptr %i.rw, align 16, !tbaa !19
  %wide.load219.1 = load <4 x i32>, ptr %i.rx, align 16, !tbaa !19
  %i.ry = add nsw <4 x i32> %wide.load218.1, splat (i32 16)
  %i.rz = add nsw <4 x i32> %wide.load219.1, splat (i32 16)
  %i.sa = ashr <4 x i32> %i.ry, splat (i32 5)
  %i.sb = ashr <4 x i32> %i.rz, splat (i32 5)
  %i.sc = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.sa, <4 x i32> splat (i32 -32768))
  %i.sd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.sb, <4 x i32> splat (i32 -32768))
  %i.se = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.sc, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.sf = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.sd, <4 x i32> splat (i32 32767)) ; 2 uses
  %i.sg = trunc nsw <4 x i32> %i.se to <4 x i16>
  %i.sh = trunc nsw <4 x i32> %i.sf to <4 x i16>
  %i.si = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.sj = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store <4 x i16> %i.sg, ptr %i.si, align 16, !tbaa !28
  store <4 x i16> %i.sh, ptr %i.sj, align 8, !tbaa !28
  %i.sk = shl nsw <4 x i32> %i.se, splat (i32 5)
  %i.sl = shl nsw <4 x i32> %i.sf, splat (i32 5)
  store <4 x i32> %i.sk, ptr %i.rw, align 16, !tbaa !19
  store <4 x i32> %i.sl, ptr %i.rx, align 16, !tbaa !19
  br label %middle.block221

middle.block221:                                  ; preds = %vector.body216.1, %vector.ph214
  %cmp.n222 = icmp eq i64 %n.vec215, %wide.trip.count
  br i1 %cmp.n222, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %middle.block221, %.preheader
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %.preheader ], [ %n.vec215, %middle.block221 ] ; 3 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv176 ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !19
  %i.so = add nsw i32 %i.sn, 16
  %i.sp = ashr i32 %i.so, 5
  %i.sq = tail call i32 @llvm.smax.i32(i32 %i.sp, i32 -32768)
  %i.sr = tail call i32 @llvm.smin.i32(i32 %i.sq, i32 32767) ; 2 uses
  %.0.i = trunc nsw i32 %i.sr to i16
  %i.ss = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv176
  store i16 %.0.i, ptr %i.ss, align 2, !tbaa !28
  %i.st = shl nsw i32 %i.sr, 5
  store i32 %i.st, ptr %i.sm, align 4, !tbaa !19
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count
  br i1 %exitcond180.not, label %.loopexit, label %.preheader, !llvm.loop !131

.preheader131:                                    ; preds = %middle.block, %.preheader131
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %.preheader131 ], [ %n.vec, %middle.block ] ; 3 uses
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv171
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !19
  %i.sw = add nsw i32 %i.sv, 16
  %i.sx = lshr i32 %i.sw, 5
  %i.sy = trunc i32 %i.sx to i16
  %i.sz = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv171
  store i16 %i.sy, ptr %i.sz, align 2, !tbaa !28
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count
  br i1 %exitcond175.not, label %.loopexit, label %.preheader131, !llvm.loop !132

.loopexit:                                        ; preds = %.preheader131, %.preheader, %middle.block, %middle.block221
  %i.ta = getelementptr [4 x i8], ptr %i.a, i64 %wide.trip.count
  %i.tb = getelementptr i8, ptr %i.ta, i64 -4
  %i.tc = add nsw i64 %wide.trip.count, -1
  %n.vec225 = and i64 %wide.trip.count, 24        ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.tf = icmp eq i64 %n.vec225, 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.th = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.tj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.tk = icmp eq i64 %n.vec225, %wide.trip.count
  br label %vector.ph224

vector.ph224:                                     ; preds = %.loopexit, %bb.l
  %.1150 = phi i32 [ 1, %.loopexit ], [ %i.xs, %bb.l ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %wide.load229 = load <4 x i16>, ptr %i.f, align 16, !tbaa !28
  %wide.load230 = load <4 x i16>, ptr %i.td, align 8, !tbaa !28
  %i.tl = sext <4 x i16> %wide.load229 to <4 x i32> ; 3 uses
  %i.tm = sext <4 x i16> %wide.load230 to <4 x i32> ; 3 uses
  %i.tn = shl nsw <4 x i32> %i.tl, splat (i32 12)
  %i.to = shl nsw <4 x i32> %i.tm, splat (i32 12)
  store <4 x i32> %i.tn, ptr %i.a, align 16, !tbaa !19
  store <4 x i32> %i.to, ptr %i.te, align 16, !tbaa !19
  br i1 %i.tf, label %middle.block232, label %vector.body226.1

vector.body226.1:                                 ; preds = %vector.ph224
  %wide.load229.1 = load <4 x i16>, ptr %i.tg, align 16, !tbaa !28
  %wide.load230.1 = load <4 x i16>, ptr %i.th, align 8, !tbaa !28
  %i.tp = sext <4 x i16> %wide.load229.1 to <4 x i32> ; 2 uses
  %i.tq = sext <4 x i16> %wide.load230.1 to <4 x i32> ; 2 uses
  %i.tr = add nsw <4 x i32> %i.tl, %i.tp
  %i.ts = add nsw <4 x i32> %i.tm, %i.tq
  %i.tt = shl nsw <4 x i32> %i.tp, splat (i32 12)
  %i.tu = shl nsw <4 x i32> %i.tq, splat (i32 12)
  store <4 x i32> %i.tt, ptr %i.ti, align 16, !tbaa !19
  store <4 x i32> %i.tu, ptr %i.tj, align 16, !tbaa !19
  br label %middle.block232

middle.block232:                                  ; preds = %vector.body226.1, %vector.ph224
  %.lcssa248 = phi <4 x i32> [ %i.tl, %vector.ph224 ], [ %i.tr, %vector.body226.1 ]
  %.lcssa247 = phi <4 x i32> [ %i.tm, %vector.ph224 ], [ %i.ts, %vector.body226.1 ]
  %bin.rdx = add nsw <4 x i32> %.lcssa247, %.lcssa248
  %i.tv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %i.tk, label %.loopexit245, label %scalar.ph223

scalar.ph223:                                     ; preds = %middle.block232, %scalar.ph223
  %indvars.iv.i121 = phi i64 [ %indvars.iv.next.i122, %scalar.ph223 ], [ %n.vec225, %middle.block232 ] ; 3 uses
  %.06484.i = phi i32 [ %i.tz, %scalar.ph223 ], [ %i.tv, %middle.block232 ]
  %i.tw = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv.i121
  %i.tx = load i16, ptr %i.tw, align 2, !tbaa !28
  %i.ty = sext i16 %i.tx to i32                   ; 2 uses
  %i.tz = add nsw i32 %.06484.i, %i.ty            ; 2 uses
  %i.ua = shl nsw i32 %i.ty, 12
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i121
  store i32 %i.ua, ptr %i.ub, align 4, !tbaa !19
  %indvars.iv.next.i122 = add nuw nsw i64 %indvars.iv.i121, 1 ; 2 uses
  %exitcond.not.i123 = icmp eq i64 %indvars.iv.next.i122, %wide.trip.count
  br i1 %exitcond.not.i123, label %.loopexit245, label %scalar.ph223, !llvm.loop !133

.loopexit245:                                     ; preds = %scalar.ph223, %middle.block232
  %.lcssa = phi i32 [ %i.tv, %middle.block232 ], [ %i.tz, %scalar.ph223 ]
  %i.uc = icmp sgt i32 %.lcssa, 4095
  br i1 %i.uc, label %silk_is_lpc_stable.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.loopexit245
  %i.ud = load i32, ptr %i.tb, align 4, !tbaa !19 ; 2 uses
  %i.ue = add i32 %i.ud, -16773023
  %i.uf = icmp ult i32 %i.ue, -33546045
  br i1 %i.uf, label %silk_is_lpc_stable.exit.thread, label %.lr.ph90.i.preheader

.lr.ph90.i.preheader:                             ; preds = %.preheader.i
  %.neg.i207 = mul nsw i32 %i.ud, -128
  %i.ug = sext i32 %.neg.i207 to i64              ; 3 uses
  %i.uh = mul nsw i64 %i.ug, %i.ug
  %i.ui = lshr i64 %i.uh, 32
  %i.uj = trunc nuw i64 %i.ui to i32
  %i.uk = sub nsw i32 1073741824, %i.uj           ; 2 uses
  %i.ul = and i32 %i.uk, -4
  br label %.lr.ph.i124

.loopexit.i.loopexit:                             ; preds = %bb.i
  %indvars.iv.next102.i = add nsw i64 %indvars.iv101.i210, -1 ; 3 uses
  %i.um = getelementptr inbounds [4 x i8], ptr %i.ve, i64 %indvars.iv.next102.i
  %i.un = load i32, ptr %i.um, align 4, !tbaa !19 ; 2 uses
  %i.uo = add i32 %i.un, -16773023
  %i.up = icmp ult i32 %i.uo, -33546045
  br i1 %i.up, label %silk_is_lpc_stable.exit.thread, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %.loopexit.i.loopexit
  %.neg.i = mul nsw i32 %i.un, -128
  %i.uq = sext i32 %.neg.i to i64                 ; 3 uses
  %i.ur = mul nsw i64 %i.uq, %i.uq
  %i.us = lshr i64 %i.ur, 32
  %i.ut = trunc nuw i64 %i.us to i32
  %i.uu = sub nsw i32 1073741824, %i.ut           ; 2 uses
  %i.uv = sext i32 %i.va to i64
  %i.uw = sext i32 %i.uu to i64
  %i.ux = mul nsw i64 %i.uw, %i.uv
  %sh.diff.i = lshr i64 %i.ux, 30
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i32
  %i.uy = and i32 %tr.sh.diff.i, -4               ; 2 uses
  %i.uz = icmp eq i64 %indvars.iv.next102.i, 0
  br i1 %i.uz, label %silk_is_lpc_stable.exit, label %.lr.ph.i124

.lr.ph.i124:                                      ; preds = %.lr.ph90.i.preheader, %.lr.ph90.i
  %i.va = phi i32 [ %i.uy, %.lr.ph90.i ], [ %i.ul, %.lr.ph90.i.preheader ]
  %i.vb = phi i32 [ %i.uu, %.lr.ph90.i ], [ %i.uk, %.lr.ph90.i.preheader ] ; 5 uses
  %i.vc = phi i64 [ %i.uq, %.lr.ph90.i ], [ %i.ug, %.lr.ph90.i.preheader ]
  %.06088.i211 = phi ptr [ %i.ve, %.lr.ph90.i ], [ %i.a, %.lr.ph90.i.preheader ] ; 2 uses
  %indvars.iv101.i210 = phi i64 [ %indvars.iv.next102.i, %.lr.ph90.i ], [ %i.tc, %.lr.ph90.i.preheader ] ; 4 uses
  %i.vd = and i64 %indvars.iv101.i210, 1
  %i.ve = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.vd ; 3 uses
  %i.vf = icmp samesign ugt i32 %i.vb, 65535      ; 2 uses
  %i.vg = lshr i32 %i.vb, 16
  %spec.select.i.i = select i1 %i.vf, i32 %i.vg, i32 %i.vb ; 3 uses
  %.not.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %spec.select11.i.i = select i1 %i.vf, i32 16, i32 0 ; 2 uses
  %i.vh = or disjoint i32 %spec.select11.i.i, 8
  %.1.i.i = select i1 %.not.i.i, i32 %spec.select11.i.i, i32 %i.vh
  %i.vi = lshr i32 %spec.select.i.i, 8
  %.110.i.i = select i1 %.not.i.i, i32 %spec.select.i.i, i32 %i.vi
  %i.vj = zext nneg i32 %.110.i.i to i64
  %i.vk = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.vj
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !30
  %i.vm = zext i8 %i.vl to i32
  %i.vn = add nuw nsw i32 %.1.i.i, %i.vm          ; 3 uses
  %i.vo = sub nsw i32 30, %i.vn
  %i.vp = shl i32 %i.vb, %i.vo
  %i.vq = sext i32 %i.vp to i64
  %i.vr = add nsw i32 %i.vn, -14
  %i.vs = lshr i32 %i.vb, %i.vr
  %i.vt = sdiv i32 536870911, %i.vs               ; 3 uses
  %i.vu = zext nneg i32 %i.vt to i64
  %i.vv = mul nsw i64 %i.vq, %i.vu
  %i.vw = lshr i64 %i.vv, 16
  %i.vx = trunc i64 %i.vw to i32
  %i.vy = sub i32 536870912, %i.vx
  %i.vz = mul nsw i32 %i.vy, %i.vt
  %i.wa = ashr i32 %i.vz, 13
  %i.wb = shl i32 %i.vt, 16
  %i.wc = add nsw i32 %i.wa, %i.wb
  %i.wd = shl nsw i64 %i.vc, 1
  %i.we = sext i32 %i.wc to i64
  %i.wf = zext nneg i32 %i.vn to i64
  %wide.trip.count99.i = and i64 %indvars.iv101.i210, 4294967295
  %i.wg = getelementptr [4 x i8], ptr %.06088.i211, i64 %indvars.iv101.i210
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %.lr.ph.i124
  %indvars.iv96.i = phi i64 [ 0, %.lr.ph.i124 ], [ %indvars.iv.next97.i, %bb.i ] ; 4 uses
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %.06088.i211, i64 %indvars.iv96.i
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !19
  %i.wj = xor i64 %indvars.iv96.i, -1
  %i.wk = getelementptr [4 x i8], ptr %i.wg, i64 %i.wj
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !19
  %i.wm = sext i32 %i.wl to i64
  %i.wn = mul i64 %i.wd, %i.wm
  %i.wo = add i64 %i.wn, 2147483648
  %i.wp = lshr i64 %i.wo, 32
  %i.wq = trunc nuw i64 %i.wp to i32
  %i.wr = tail call i32 @llvm.ssub.sat.i32(i32 %i.wi, i32 %i.wq)
  %i.ws = sext i32 %i.wr to i64
  %i.wt = mul nsw i64 %i.ws, %i.we
  %i.wu = ashr i64 %i.wt, %i.wf
  %i.wv = add nsw i64 %i.wu, 1
  %i.ww = ashr i64 %i.wv, 1                       ; 2 uses
  %i.wx = add nsw i64 %i.ww, 2147483648
  %or.cond.i = icmp ult i64 %i.wx, 4294967296
  br i1 %or.cond.i, label %bb.i, label %silk_is_lpc_stable.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.wy = trunc nsw i64 %i.ww to i32
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.ve, i64 %indvars.iv96.i
  store i32 %i.wy, ptr %i.wz, align 4, !tbaa !19
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %exitcond100.not.i = icmp eq i64 %indvars.iv.next97.i, %wide.trip.count99.i
  br i1 %exitcond100.not.i, label %.loopexit.i.loopexit, label %bb.h, !llvm.loop !134

silk_is_lpc_stable.exit.thread:                   ; preds = %.loopexit.i.loopexit, %bb.h, %.loopexit245, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.j

silk_is_lpc_stable.exit:                          ; preds = %.lr.ph90.i
  %i.xa = icmp slt i32 %i.uy, 107374
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br i1 %i.xa, label %bb.j, label %vector.ph235

bb.j:                                             ; preds = %silk_is_lpc_stable.exit.thread, %silk_is_lpc_stable.exit
  %.neg = shl nsw i32 -1, %.1150
  %i.xb = add nsw i32 %.neg, 65536                ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.k
  %indvars.iv181 = phi i64 [ 0, %bb.j ], [ %indvars.iv.next182, %bb.k ] ; 3 uses
  %.0149 = phi i32 [ %i.xb, %bb.j ], [ %i.xr, %bb.k ] ; 2 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv181 ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !19
  %i.xe = sext i32 %i.xd to i64
  %i.xf = zext i32 %.0149 to i64
  %i.xg = mul nsw i64 %i.xe, %i.xf
  %i.xh = lshr i64 %i.xg, 15
  %i.xi = add nuw nsw i64 %i.xh, 1
  %i.xj = lshr i64 %i.xi, 1
  %i.xk = trunc i64 %i.xj to i32                  ; 2 uses
  store i32 %i.xk, ptr %i.xc, align 4, !tbaa !19
  %i.xl = add nsw i32 %i.xk, 16
  %i.xm = lshr i32 %i.xl, 5
  %i.xn = trunc i32 %i.xm to i16
  %i.xo = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv181
  store i16 %i.xn, ptr %i.xo, align 2, !tbaa !28
  %i.xp = mul i32 %.0149, %i.xb
  %i.xq = add i32 %i.xp, 32768
  %i.xr = lshr i32 %i.xq, 16
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1 ; 2 uses
  %exitcond185.not = icmp eq i64 %indvars.iv.next182, %wide.trip.count
  br i1 %exitcond185.not, label %bb.l, label %bb.k, !llvm.loop !135

bb.l:                                             ; preds = %bb.k
  %i.xs = add nuw nsw i32 %.1150, 1               ; 2 uses
  %exitcond186.not = icmp eq i32 %i.xs, 17
  br i1 %exitcond186.not, label %vector.ph235, label %vector.ph224, !llvm.loop !136

vector.ph235:                                     ; preds = %silk_is_lpc_stable.exit, %bb.l
  %n.vec236 = and i64 %wide.trip.count, 24        ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %wide.load239 = load <4 x i16>, ptr %i.f, align 16, !tbaa !28
  %wide.load240 = load <4 x i16>, ptr %i.xt, align 8, !tbaa !28
  %i.xu = sitofp <4 x i16> %wide.load239 to <4 x float>
  %i.xv = sitofp <4 x i16> %wide.load240 to <4 x float>
  %i.xw = fmul nnan nsz <4 x float> %i.xu, splat (float f0x39800000)
  %i.xx = fmul nnan nsz <4 x float> %i.xv, splat (float f0x39800000)
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <4 x float> %i.xw, ptr %1, align 4, !tbaa !24
  store <4 x float> %i.xx, ptr %i.xy, align 4, !tbaa !24
  %i.xz = icmp eq i64 %n.vec236, 8
  br i1 %i.xz, label %middle.block242, label %vector.body237.1

vector.body237.1:                                 ; preds = %vector.ph235
  %i.ya = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.yb = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %wide.load239.1 = load <4 x i16>, ptr %i.ya, align 16, !tbaa !28
  %wide.load240.1 = load <4 x i16>, ptr %i.yb, align 8, !tbaa !28
  %i.yc = sitofp <4 x i16> %wide.load239.1 to <4 x float>
  %i.yd = sitofp <4 x i16> %wide.load240.1 to <4 x float>
  %i.ye = fmul nnan nsz <4 x float> %i.yc, splat (float f0x39800000)
  %i.yf = fmul nnan nsz <4 x float> %i.yd, splat (float f0x39800000)
  %i.yg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.yh = getelementptr inbounds nuw i8, ptr %1, i64 48
  store <4 x float> %i.ye, ptr %i.yg, align 4, !tbaa !24
  store <4 x float> %i.yf, ptr %i.yh, align 4, !tbaa !24
  br label %middle.block242

middle.block242:                                  ; preds = %vector.body237.1, %vector.ph235
  %cmp.n243 = icmp eq i64 %n.vec236, %wide.trip.count
  br i1 %cmp.n243, label %.loopexit244, label %scalar.ph234

scalar.ph234:                                     ; preds = %middle.block242, %scalar.ph234
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %scalar.ph234 ], [ %n.vec236, %middle.block242 ] ; 3 uses
  %i.yi = getelementptr inbounds nuw [2 x i8], ptr %i.f, i64 %indvars.iv187
  %i.yj = load i16, ptr %i.yi, align 2, !tbaa !28
  %i.yk = sitofp i16 %i.yj to float
  %i.yl = fmul nnan nsz float %i.yk, f0x39800000
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv187
  store float %i.yl, ptr %i.ym, align 4, !tbaa !24
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %wide.trip.count
  br i1 %exitcond191.not, label %.loopexit244, label %scalar.ph234, !llvm.loop !137

.loopexit244:                                     ; preds = %scalar.ph234, %middle.block242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"SilkContext", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !5, i64 40, !5, i64 10568, !5, i64 10576, !6, i64 10584}
!11 = !{!10, !9, i64 0}
!12 = !{!10, !6, i64 16}
!13 = !{!10, !6, i64 20}
!14 = !{!10, !6, i64 24}
!15 = !{!10, !6, i64 32}
!16 = !{!10, !6, i64 36}
!17 = !{!"SilkFrame", !6, i64 0, !6, i64 4, !5, i64 8, !5, i64 40, !5, i64 104, !5, i64 2680, !6, i64 5256, !6, i64 5260}
!18 = !{!17, !6, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!10, !6, i64 12}
!22 = !{!10, !6, i64 8}
!23 = !{!"float", !5, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = !{!"short", !5, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"llvm.loop.peeled.count", i32 1}
!30 = !{!5, !5, i64 0}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = distinct !{!41, !20, !25, !26}
!42 = distinct !{!42, !"LVerDomain"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !42}
!46 = distinct !{!46, !20, !25, !26}
!47 = distinct !{!47, !20, !25}
!48 = distinct !{!48, !20, !25}
!49 = distinct !{!49, !20}
!50 = !{!10, !6, i64 10584}
!51 = !{!"p1 float", !9, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!38}
!54 = !{!39}
!55 = !{!40, !38}
end_hunk_1
