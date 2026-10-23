Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cinepakenc?download=true
inline.NumInlined: 29
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 31
begin_hunk_0_@cinepak_encode_frame:bb.a
  %i.ay = load ptr, ptr %i.ak, align 8, !tbaa !40 ; 6 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv.i
  %i.bc = load i32, ptr %i.az, align 8, !tbaa !49 ; 2 uses
  %i.bd = mul nsw i32 %i.bc, %.0197438.i
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds i8, ptr %i.bb, i64 %i.be ; 3 uses
  %i.bg = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.d, label %get_sub_picture.exit.i

bb.d:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !44
  %i.bk = lshr exact i64 %indvars.iv.i, 1         ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 68
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !49 ; 2 uses
  %i.bo = mul nsw i32 %i.bn, %i.aq
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds i8, ptr %i.bl, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !44
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !49 ; 2 uses
  %i.bw = mul nsw i32 %i.bv, %i.aq
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 %i.bx
  br label %get_sub_picture.exit.i

get_sub_picture.exit.i:                           ; preds = %bb.d, %bb.c
  %.sroa.10.7.i = phi ptr [ %i.by, %bb.d ], [ %.sroa.10.1426.i, %bb.c ] ; 3 uses
  %.sroa.6243.7.i = phi ptr [ %i.bq, %bb.d ], [ %.sroa.6243.1427.i, %bb.c ] ; 3 uses
  %.sroa.9.7.i = phi i32 [ %i.bv, %bb.d ], [ %.sroa.9.1428.i, %bb.c ] ; 2 uses
  %.sroa.6.7.i = phi i32 [ %i.bn, %bb.d ], [ %.sroa.6.1429.i, %bb.c ] ; 2 uses
  %i.bz = load i8, ptr %i.ax, align 1, !tbaa !55
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ax, i64 1
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !55
  %i.cd = zext i8 %i.cc to i32                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !55
  %i.cg = zext i8 %i.cf to i32                    ; 2 uses
  %i.ch = mul nuw nsw i32 %i.ca, 2396625
  %i.ci = mul nuw nsw i32 %i.cd, 4793251
  %i.cj = add nuw nsw i32 %i.ci, %i.ch
  %i.ck = mul nuw nsw i32 %i.cg, 1198732
  %i.cl = add nuw nsw i32 %i.cj, %i.ck
  %i.cm = lshr i32 %i.cl, 23
  %i.cn = trunc nuw i32 %i.cm to i8
  store i8 %i.cn, ptr %i.bf, align 1, !tbaa !55
  %i.co = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !55
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !55
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ax, i64 5
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !55
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = add nuw nsw i32 %i.cq, %i.ca
  %i.cy = add nuw nsw i32 %i.ct, %i.cd
  %i.cz = add nuw nsw i32 %i.cw, %i.cg
  %i.da = mul nuw nsw i32 %i.cq, 2396625
  %i.db = mul nuw nsw i32 %i.ct, 4793251
  %i.dc = add nuw nsw i32 %i.db, %i.da
  %i.dd = mul nuw nsw i32 %i.cw, 1198732
  %i.de = add nuw nsw i32 %i.dc, %i.dd
  %i.df = lshr i32 %i.de, 23
  %i.dg = trunc nuw i32 %i.df to i8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !55
  %.sroa.speculated.idx.2.i = sext i32 %i.au to i64
  %.sroa.speculated.2.i = getelementptr inbounds i8, ptr %i.ax, i64 %.sroa.speculated.idx.2.i ; 6 uses
  %i.di = load i8, ptr %.sroa.speculated.2.i, align 1, !tbaa !55
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.speculated.2.i, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !55
  %i.dm = zext i8 %i.dl to i32                    ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.speculated.2.i, i64 2
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !55
  %i.dp = zext i8 %i.do to i32                    ; 2 uses
  %i.dq = add nuw nsw i32 %i.cx, %i.dj
  %i.dr = add nuw nsw i32 %i.cy, %i.dm
  %i.ds = add nuw nsw i32 %i.cz, %i.dp
  %i.dt = mul nuw nsw i32 %i.dj, 2396625
  %i.du = mul nuw nsw i32 %i.dm, 4793251
  %i.dv = add nuw nsw i32 %i.du, %i.dt
  %i.dw = mul nuw nsw i32 %i.dp, 1198732
  %i.dx = add nuw nsw i32 %i.dv, %i.dw
  %i.dy = lshr i32 %i.dx, 23
  %i.dz = trunc nuw i32 %i.dy to i8
  %i.ea = sext i32 %i.bc to i64
  %i.eb = getelementptr inbounds i8, ptr %i.bf, i64 %i.ea ; 2 uses
  store i8 %i.dz, ptr %i.eb, align 1, !tbaa !55
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.speculated.2.i, i64 3
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !55
  %i.ee = zext i8 %i.ed to i32                    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.speculated.2.i, i64 4
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !55
  %i.eh = zext i8 %i.eg to i32                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.speculated.2.i, i64 5
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !55
  %i.ek = zext i8 %i.ej to i32                    ; 2 uses
  %i.el = add nuw nsw i32 %i.dq, %i.ee            ; 2 uses
  %i.em = add nuw nsw i32 %i.dr, %i.eh
  %i.en = add nuw nsw i32 %i.ds, %i.ek            ; 2 uses
  %i.eo = mul nuw nsw i32 %i.ee, 2396625
  %i.ep = mul nuw nsw i32 %i.eh, 4793251
  %i.eq = add nuw nsw i32 %i.ep, %i.eo
  %i.er = mul nuw nsw i32 %i.ek, 1198732
  %i.es = add nuw nsw i32 %i.eq, %i.er
  %i.et = lshr i32 %i.es, 23
  %i.eu = trunc nuw i32 %i.et to i8
  %i.ev = getelementptr i8, ptr %i.eb, i64 1
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !55
  %i.ew = mul i32 %i.el, 2147183965
  %.neg335.i = mul nsw i32 %i.em, -599156         ; 2 uses
  %i.ex = add i32 %.neg335.i, %i.ew
  %i.ey = mul nuw nsw i32 %i.en, 898839
  %i.ez = add i32 %i.ex, %i.ey
  %i.fa = lshr i32 %i.ez, 23
  %i.fb = trunc i32 %i.fa to i8
  %i.fc = xor i8 %i.fb, -128
  store i8 %i.fc, ptr %.sroa.6243.7.i, align 1, !tbaa !55
  %i.fd = mul nuw nsw i32 %i.el, 748893
  %i.fe = add nsw i32 %.neg335.i, %i.fd
  %.neg.i = mul i32 %i.en, 2147333911
  %i.ff = add i32 %i.fe, %.neg.i
  %i.fg = lshr i32 %i.ff, 23
  %i.fh = trunc i32 %i.fg to i8
  %i.fi = xor i8 %i.fh, -128
  store i8 %i.fi, ptr %.sroa.10.7.i, align 1, !tbaa !55
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.fj = load i32, ptr %i.ai, align 4, !tbaa !53 ; 2 uses
  %i.fk = sext i32 %i.fj to i64
  %i.fl = icmp slt i64 %indvars.iv.next.i, %i.fk
  br i1 %i.fl, label %bb.c, label %._crit_edge.loopexit.i, !llvm.loop !67

._crit_edge.loopexit.i:                           ; preds = %get_sub_picture.exit.i
  %.pre.i = load i32, ptr %i.af, align 8, !tbaa !54
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.fm = phi i32 [ %i.an, %.preheader.i ], [ %.pre.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fn = phi i32 [ %i.ao, %.preheader.i ], [ %i.fj, %._crit_edge.loopexit.i ]
  %.sroa.10.1.lcssa.i = phi ptr [ %.sroa.10.0434.i, %.preheader.i ], [ %.sroa.10.7.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.6243.1.lcssa.i = phi ptr [ %.sroa.6243.0435.i, %.preheader.i ], [ %.sroa.6243.7.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi i32 [ %.sroa.9.0436.i, %.preheader.i ], [ %.sroa.9.7.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.sroa.6.1.lcssa.i = phi i32 [ %.sroa.6.0437.i, %.preheader.i ], [ %.sroa.6.7.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fo = add nuw nsw i32 %.0197438.i, 2          ; 2 uses
  %i.fp = icmp slt i32 %i.fo, %i.fm
  br i1 %i.fp, label %.preheader.i, label %.loopexit.i.loopexit, !llvm.loop !68

.loopexit.i.loopexit:                             ; preds = %._crit_edge.i
  %i.fq = insertelement <2 x i32> poison, i32 %.sroa.6.1.lcssa.i, i64 0
  %i.fr = insertelement <2 x i32> %i.fq, i32 %.sroa.9.1.lcssa.i, i64 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %.preheader.lr.ph.i, %.preheader345.i, %bb.b
  %.sroa.10.2.i = phi ptr [ undef, %bb.b ], [ undef, %.preheader345.i ], [ undef, %.preheader.lr.ph.i ], [ %.sroa.10.1.lcssa.i, %.loopexit.i.loopexit ]
  %.sroa.6243.2.i = phi ptr [ undef, %bb.b ], [ undef, %.preheader345.i ], [ undef, %.preheader.lr.ph.i ], [ %.sroa.6243.1.lcssa.i, %.loopexit.i.loopexit ]
  %i.fs = phi <2 x i32> [ undef, %bb.b ], [ undef, %.preheader345.i ], [ undef, %.preheader.lr.ph.i ], [ %i.fr, %.loopexit.i.loopexit ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.m, i64 408 ; 3 uses
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !102 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.m, i64 412 ; 5 uses
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !103
  %.not505.i = icmp sgt i32 %i.fu, %i.fw
  br i1 %.not505.i, label %._crit_edge528.i, label %.lr.ph520.i

.lr.ph520.i:                                      ; preds = %.loopexit.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.m, i64 104 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.m, i64 80 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.gc = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ge = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 8 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.m, i64 100 ; 9 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.m, i64 400 ; 14 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %4, i64 12292 ; 10 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %4, i64 12288 ; 10 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %4, i64 12296 ; 7 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.m, i64 416
  %i.gv = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.m, i64 420 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %4, i64 6144 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.cj, %.lr.ph520.i
  %.031 = phi i32 [ undef, %.lr.ph520.i ], [ %.1, %bb.cj ] ; 3 uses
  %.0181518.i = phi i32 [ undef, %.lr.ph520.i ], [ %.1182.i, %bb.cj ] ; 2 uses
  %.0187517.i = phi i64 [ 0, %.lr.ph520.i ], [ %.1188.i, %bb.cj ] ; 3 uses
  %.0190516.i = phi i32 [ undef, %.lr.ph520.i ], [ %.1191.i, %bb.cj ] ; 2 uses
  %.0202515.i = phi i32 [ %i.fu, %.lr.ph520.i ], [ %i.aty, %bb.cj ] ; 8 uses
  %i.hd = phi i32 [ undef, %.lr.ph520.i ], [ %.lcssa365.i, %bb.cj ] ; 2 uses
  %i.he = phi i32 [ undef, %.lr.ph520.i ], [ %.lcssa369.i.a, %bb.cj ] ; 2 uses
  %i.hf = phi ptr [ undef, %.lr.ph520.i ], [ %.lcssa373.i.a, %bb.cj ] ; 2 uses
  %i.hg = phi ptr [ undef, %.lr.ph520.i ], [ %.lcssa377.i.a, %bb.cj ] ; 2 uses
  %.0255514.i = phi i64 [ undef, %.lr.ph520.i ], [ %.1256.lcssa.i, %bb.cj ] ; 2 uses
  %.sroa.8.0511.i = phi ptr [ undef, %.lr.ph520.i ], [ %.sroa.8.1.lcssa.i, %bb.cj ] ; 2 uses
  %.sroa.6236.0510.i = phi i32 [ undef, %.lr.ph520.i ], [ %.sroa.6236.1.lcssa.i, %bb.cj ] ; 2 uses
  %.sroa.9238.0509.i = phi i32 [ undef, %.lr.ph520.i ], [ %.sroa.9238.1.lcssa.i, %bb.cj ] ; 2 uses
  %.sroa.5.0508.i = phi ptr [ undef, %.lr.ph520.i ], [ %.sroa.5.1.lcssa.i, %bb.cj ] ; 2 uses
  %.sroa.6243.3507.i = phi ptr [ %.sroa.6243.2.i, %.lr.ph520.i ], [ %.sroa.6243.4.lcssa.i, %bb.cj ] ; 2 uses
  %.sroa.10.3506.i = phi ptr [ %.sroa.10.2.i, %.lr.ph520.i ], [ %.sroa.10.4.lcssa.i, %bb.cj ] ; 2 uses
  %i.hh = phi <2 x i32> [ %i.fs, %.lr.ph520.i ], [ %i.ast, %bb.cj ] ; 2 uses
  %i.hi = load i32, ptr %i.fx, align 8, !tbaa !54 ; 3 uses
  %i.hj = sdiv i32 %i.hi, 4
  %.not214.i = icmp sgt i32 %.0202515.i, %i.hj
  br i1 %.not214.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.hk = icmp sgt i32 %i.hi, 0
  br i1 %i.hk, label %.lr.ph487.i, label %._crit_edge488.i

.lr.ph487.i:                                      ; preds = %bb.f, %bb.cg
  %indvars.iv567.i = phi i64 [ %indvars.iv.next568.i, %bb.cg ], [ 1, %bb.f ] ; 3 uses
  %i.hl = phi i32 [ %i.asq, %bb.cg ], [ %i.hi, %bb.f ]
  %.0172485.i = phi i32 [ %.1173.i, %bb.cg ], [ 1, %bb.f ] ; 2 uses
  %.0185484.i = phi i64 [ %.1186.i, %bb.cg ], [ 0, %bb.f ] ; 2 uses
  %.0194483.i = phi i32 [ %.1195.i, %bb.cg ], [ 0, %bb.f ] ; 3 uses
  %.1198482.i = phi i32 [ %.0196.i, %bb.cg ], [ 0, %bb.f ] ; 8 uses
  %i.hm = phi i32 [ %i.aso, %bb.cg ], [ %i.hd, %bb.f ] ; 2 uses
  %i.hn = phi i32 [ %i.asn, %bb.cg ], [ %i.he, %bb.f ] ; 2 uses
  %i.ho = phi ptr [ %i.asm, %bb.cg ], [ %i.hf, %bb.f ] ; 2 uses
  %i.hp = phi ptr [ %i.asl, %bb.cg ], [ %i.hg, %bb.f ] ; 2 uses
  %.1256480.i = phi i64 [ %.2257.i, %bb.cg ], [ %.0255514.i, %bb.f ] ; 2 uses
  %.sroa.8.1477.i = phi ptr [ %.sroa.8.2.i, %bb.cg ], [ %.sroa.8.0511.i, %bb.f ] ; 2 uses
  %.sroa.6236.1476.i = phi i32 [ %.sroa.6236.2.i, %bb.cg ], [ %.sroa.6236.0510.i, %bb.f ] ; 2 uses
  %.sroa.9238.1475.i = phi i32 [ %.sroa.9238.2.i, %bb.cg ], [ %.sroa.9238.0509.i, %bb.f ] ; 2 uses
  %.sroa.5.1474.i = phi ptr [ %.sroa.5.2.i, %bb.cg ], [ %.sroa.5.0508.i, %bb.f ] ; 2 uses
  %.sroa.6243.4473.i = phi ptr [ %.sroa.6243.5.i, %bb.cg ], [ %.sroa.6243.3507.i, %bb.f ] ; 2 uses
  %.sroa.10.4472.i = phi ptr [ %.sroa.10.5.i, %bb.cg ], [ %.sroa.10.3506.i, %bb.f ] ; 2 uses
  %i.hq = phi <2 x i32> [ %i.asp, %bb.cg ], [ %i.hh, %bb.f ] ; 2 uses
  %i.hr = add nuw nsw i32 %.0194483.i, 10         ; 2 uses
  %i.hs = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv567.i
  %i.ht = getelementptr i8, ptr %i.hs, i64 -4
  store i32 %i.hr, ptr %i.ht, align 4, !tbaa !49
  %i.hu = trunc nuw nsw i64 %indvars.iv567.i to i32 ; 2 uses
  %i.hv = mul nsw i32 %i.hl, %i.hu
  %i.hw = sdiv i32 %i.hv, %.0202515.i
  %.biased.i = add i32 %i.hw, 3
  %.0196.i = and i32 %.biased.i, -4               ; 3 uses
  %i.hx = sub nsw i32 %.0196.i, %.1198482.i       ; 16 uses
  %i.hy = icmp slt i32 %i.hx, 1
  br i1 %i.hy, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph487.i
  %i.hz = load ptr, ptr %i.hb, align 8, !tbaa !48
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hz, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef %i.hu, i32 noundef %.0202515.i) #10
  br label %bb.cg

bb.h:                                             ; preds = %.lr.ph487.i
  %i.ia = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.ib = icmp eq i32 %i.ia, 2                    ; 2 uses
  br i1 %i.ib, label %bb.i, label %get_sub_picture.exit225.i

get_sub_picture.exit225.i:                        ; preds = %bb.h
  %i.ic = load ptr, ptr %2, align 8, !tbaa !44
  %i.id = load i32, ptr %i.fy, align 8, !tbaa !49 ; 2 uses
  %i.ie = mul nsw i32 %i.id, %.1198482.i
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds i8, ptr %i.ic, i64 %i.if
  %i.ih = load ptr, ptr %i.fz, align 8, !tbaa !37 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  %i.ij = load ptr, ptr %i.ih, align 8, !tbaa !44
  %i.ik = load i32, ptr %i.ii, align 8, !tbaa !49 ; 2 uses
  %i.il = mul nsw i32 %i.ik, %.1198482.i
  %i.im = sext i32 %i.il to i64
  %i.in = getelementptr inbounds i8, ptr %i.ij, i64 %i.im
  %i.io = load ptr, ptr %i.ga, align 8, !tbaa !38 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 64
  %i.iq = load ptr, ptr %i.io, align 8, !tbaa !44
  %i.ir = load i32, ptr %i.ip, align 8, !tbaa !49 ; 2 uses
  %i.is = mul nsw i32 %i.ir, %.1198482.i
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds i8, ptr %i.iq, i64 %i.it
  br label %get_sub_picture.exit226.i

bb.i:                                             ; preds = %bb.h
  %i.iv = load ptr, ptr %i.gb, align 8, !tbaa !40 ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 64
  %i.ix = load ptr, ptr %i.iv, align 8, !tbaa !44
  %i.iy = load i32, ptr %i.iw, align 8, !tbaa !49 ; 2 uses
  %i.iz = mul nsw i32 %i.iy, %.1198482.i
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds i8, ptr %i.ix, i64 %i.ja
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !44
  %i.je = ashr exact i32 %.1198482.i, 1           ; 6 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 68
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !49 ; 3 uses
  %i.jh = mul nsw i32 %i.jg, %i.je
  %i.ji = sext i32 %i.jh to i64
  %i.jj = getelementptr inbounds i8, ptr %i.jd, i64 %i.ji ; 2 uses
  store ptr %i.jj, ptr %i.gc, align 8, !tbaa !44
  store i32 %i.jg, ptr %i.gd, align 4, !tbaa !49
  %i.jk = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !44
  %i.jm = getelementptr inbounds nuw i8, ptr %i.iv, i64 72
  %i.jn = load i32, ptr %i.jm, align 8, !tbaa !49 ; 3 uses
  %i.jo = mul nsw i32 %i.jn, %i.je
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds i8, ptr %i.jl, i64 %i.jp ; 2 uses
  store ptr %i.jq, ptr %i.ge, align 16, !tbaa !44
  store i32 %i.jn, ptr %i.gf, align 8, !tbaa !49
  %i.jr = load ptr, ptr %i.fz, align 8, !tbaa !37 ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.jt = load ptr, ptr %i.jr, align 8, !tbaa !44
  %i.ju = load i32, ptr %i.js, align 8, !tbaa !49 ; 2 uses
  %i.jv = mul nsw i32 %i.ju, %.1198482.i
  %i.jw = sext i32 %i.jv to i64
  %i.jx = getelementptr inbounds i8, ptr %i.jt, i64 %i.jw
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !44
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 68
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !49 ; 2 uses
  %i.kc = mul nsw i32 %i.kb, %i.je
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds i8, ptr %i.jz, i64 %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !44
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  %i.ki = load i32, ptr %i.kh, align 8, !tbaa !49 ; 2 uses
  %i.kj = mul nsw i32 %i.ki, %i.je
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds i8, ptr %i.kg, i64 %i.kk
  %i.km = load ptr, ptr %i.ga, align 8, !tbaa !38 ; 5 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 64
  %i.ko = load ptr, ptr %i.km, align 8, !tbaa !44
  %i.kp = load i32, ptr %i.kn, align 8, !tbaa !49 ; 2 uses
  %i.kq = mul nsw i32 %i.kp, %.1198482.i
  %i.kr = sext i32 %i.kq to i64
  %i.ks = getelementptr inbounds i8, ptr %i.ko, i64 %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !44
  %i.kv = getelementptr inbounds nuw i8, ptr %i.km, i64 68
  %i.kw = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !44
  %i.ky = load <2 x i32>, ptr %i.kv, align 4, !tbaa !49 ; 3 uses
  %i.kz = extractelement <2 x i32> %i.ky, i64 0
  %i.la = mul nsw i32 %i.kz, %i.je
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds i8, ptr %i.ku, i64 %i.lb
  %i.ld = extractelement <2 x i32> %i.ky, i64 1
  %i.le = mul nsw i32 %i.ld, %i.je
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds i8, ptr %i.kx, i64 %i.lf
  br label %get_sub_picture.exit226.i

get_sub_picture.exit226.i:                        ; preds = %bb.i, %get_sub_picture.exit225.i
  %.sink573.i = phi ptr [ %i.jb, %bb.i ], [ %i.ig, %get_sub_picture.exit225.i ] ; 3 uses
  %.sink.i = phi i32 [ %i.iy, %bb.i ], [ %i.id, %get_sub_picture.exit225.i ] ; 5 uses
  %i.lh = phi ptr [ %i.ks, %bb.i ], [ %i.iu, %get_sub_picture.exit225.i ]
  %i.li = phi i32 [ %i.kp, %bb.i ], [ %i.ir, %get_sub_picture.exit225.i ] ; 4 uses
  %.sroa.8.4271.i = phi ptr [ %i.kl, %bb.i ], [ %.sroa.8.1477.i, %get_sub_picture.exit225.i ] ; 3 uses
  %.sroa.6236.4269.i = phi i32 [ %i.kb, %bb.i ], [ %.sroa.6236.1476.i, %get_sub_picture.exit225.i ] ; 5 uses
  %.sroa.9238.4267.i = phi i32 [ %i.ki, %bb.i ], [ %.sroa.9238.1475.i, %get_sub_picture.exit225.i ] ; 5 uses
  %.sroa.5.4265.i = phi ptr [ %i.ke, %bb.i ], [ %.sroa.5.1474.i, %get_sub_picture.exit225.i ] ; 3 uses
  %i.lj = phi ptr [ %i.jq, %bb.i ], [ %i.hp, %get_sub_picture.exit225.i ] ; 2 uses
  %i.lk = phi ptr [ %i.jj, %bb.i ], [ %i.ho, %get_sub_picture.exit225.i ] ; 2 uses
  %i.ll = phi i32 [ %i.jn, %bb.i ], [ %i.hn, %get_sub_picture.exit225.i ] ; 3 uses
  %i.lm = phi i32 [ %i.jg, %bb.i ], [ %i.hm, %get_sub_picture.exit225.i ] ; 3 uses
  %i.ln = phi i32 [ %i.ju, %bb.i ], [ %i.ik, %get_sub_picture.exit225.i ] ; 6 uses
  %i.lo = phi ptr [ %i.jx, %bb.i ], [ %i.in, %get_sub_picture.exit225.i ] ; 3 uses
  %.sroa.10.8.i = phi ptr [ %i.lg, %bb.i ], [ %.sroa.10.4472.i, %get_sub_picture.exit225.i ] ; 2 uses
  %.sroa.6243.8.i = phi ptr [ %i.lc, %bb.i ], [ %.sroa.6243.4473.i, %get_sub_picture.exit225.i ] ; 2 uses
  %i.lp = phi <2 x i32> [ %i.ky, %bb.i ], [ %i.hq, %get_sub_picture.exit225.i ] ; 4 uses
  store ptr %.sink573.i, ptr %i.h, align 16, !tbaa !44
  store i32 %.sink.i, ptr %i.i, align 16, !tbaa !49
  %i.lq = load ptr, ptr %i.gg, align 8, !tbaa !46
  %i.lr = sext i32 %i.hr to i64
  %i.ls = getelementptr inbounds i8, ptr %i.lq, i64 %i.lr
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  br i1 %i.z, label %bb.k, label %bb.j

bb.j:                                             ; preds = %get_sub_picture.exit226.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.lt = load i32, ptr %i.gh, align 4, !tbaa !53 ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.split.i.i.i, label %calculate_skip_errors.exit.i.i

.split.i.i.i:                                     ; preds = %bb.j
  %i.lv = load ptr, ptr %i.gq, align 8, !tbaa !47 ; 2 uses
  %i.lw = add nsw i32 %i.lt, -1
  %i.lx = lshr i32 %i.lw, 2
  %i.ly = add nuw nsw i32 %i.lx, 1                ; 2 uses
  store i32 %i.ln, ptr %i.f, align 16, !tbaa !49
  br i1 %i.ib, label %.split.split.us.i.i.i, label %.split.split.i.i.i

.split.split.us.i.i.i:                            ; preds = %.split.i.i.i
  store i32 %.sroa.6236.4269.i, ptr %i.gj, align 4, !tbaa !49
  store i32 %.sroa.9238.4267.i, ptr %i.gl, align 8, !tbaa !49
  store i32 %.sink.i, ptr %i.g, align 16, !tbaa !49
  store i32 %i.lm, ptr %i.gn, align 4, !tbaa !49
  store i32 %i.ll, ptr %i.gp, align 8, !tbaa !49
  %i.lz = sext i32 %.sroa.6236.4269.i to i64
  %i.ma = sext i32 %.sroa.9238.4267.i to i64
  %i.mb = sext i32 %i.lm to i64
  %i.mc = sext i32 %i.ll to i64
  %i.md = sext i32 %i.ln to i64
  %i.me = sext i32 %.sink.i to i64
  %i.mf = zext nneg i32 %i.hx to i64
  br label %.preheader.us.i.i.i

.preheader.us.i.i.i:                              ; preds = %._crit_edge.split.us.us.i.i.i, %.split.split.us.i.i.i
  %indvars.iv561.i = phi i64 [ %indvars.iv.next562.i, %._crit_edge.split.us.us.i.i.i ], [ 0, %.split.split.us.i.i.i ] ; 4 uses
  %.05.us.i.i.i = phi i32 [ %i.mi, %._crit_edge.split.us.us.i.i.i ], [ 0, %.split.split.us.i.i.i ] ; 2 uses
  %i.mg = lshr exact i64 %indvars.iv561.i, 1      ; 4 uses
  %i.mh = sext i32 %.05.us.i.i.i to i64
  %i.mi = add i32 %.05.us.i.i.i, %i.ly            ; 2 uses
  %i.mj = mul nsw i64 %indvars.iv561.i, %i.md
  %invariant.gep448.i = getelementptr i8, ptr %i.lo, i64 %i.mj
  %i.mk = mul nsw i64 %i.mg, %i.lz
  %invariant.gep450.i.a = getelementptr i8, ptr %.sroa.5.4265.i, i64 %i.mk
  %i.ml = mul nsw i64 %i.mg, %i.ma
  %invariant.gep452.i = getelementptr i8, ptr %.sroa.8.4271.i, i64 %i.ml
  %i.mm = mul nsw i64 %indvars.iv561.i, %i.me
  %invariant.gep454.i = getelementptr i8, ptr %.sink573.i, i64 %i.mm
  %i.mn = mul nsw i64 %i.mg, %i.mb
  %invariant.gep456.i = getelementptr i8, ptr %i.lk, i64 %i.mn
  %i.mo = mul nsw i64 %i.mg, %i.mc
  %invariant.gep458.i = getelementptr i8, ptr %i.lj, i64 %i.mo
  br label %get_sub_picture.exit21.us.us.i.i.i

get_sub_picture.exit21.us.us.i.i.i:               ; preds = %get_sub_picture.exit21.us.us.i.i.i, %.preheader.us.i.i.i
  %indvars.iv18.i.i.i = phi i64 [ %indvars.iv.next19.i.i.i, %get_sub_picture.exit21.us.us.i.i.i ], [ 0, %.preheader.us.i.i.i ] ; 4 uses
  %indvars.iv16.i.i.i = phi i64 [ %indvars.iv.next17.i.i.i, %get_sub_picture.exit21.us.us.i.i.i ], [ %i.mh, %.preheader.us.i.i.i ] ; 2 uses
  %gep449.i = getelementptr i8, ptr %invariant.gep448.i, i64 %indvars.iv18.i.i.i
  store ptr %gep449.i, ptr %i.d, align 16, !tbaa !44
  %i.mp = lshr exact i64 %indvars.iv18.i.i.i, 1   ; 4 uses
  %gep451.i.a = getelementptr i8, ptr %invariant.gep450.i.a, i64 %i.mp
  store ptr %gep451.i.a, ptr %i.gi, align 8, !tbaa !44
  %gep453.i = getelementptr i8, ptr %invariant.gep452.i, i64 %i.mp
  store ptr %gep453.i, ptr %i.gk, align 16, !tbaa !44
  %gep455.i = getelementptr i8, ptr %invariant.gep454.i, i64 %indvars.iv18.i.i.i
  store ptr %gep455.i, ptr %i.e, align 16, !tbaa !44
  %gep457.i = getelementptr i8, ptr %invariant.gep456.i, i64 %i.mp
  store ptr %gep457.i, ptr %i.gm, align 8, !tbaa !44
  %gep459.i = getelementptr i8, ptr %invariant.gep458.i, i64 %i.mp
  store ptr %gep459.i, ptr %i.go, align 16, !tbaa !44
  %i.mq = call fastcc i32 @compute_mb_distortion(ptr noundef nonnull readonly %i.m, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.e, ptr noundef %i.g)
  %i.mr = getelementptr inbounds [36 x i8], ptr %i.lv, i64 %indvars.iv16.i.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 28
  store i32 %i.mq, ptr %i.ms, align 4, !tbaa !104
  %indvars.iv.next19.i.i.i = add nuw nsw i64 %indvars.iv18.i.i.i, 4
  %indvars.iv.next17.i.i.i = add nsw i64 %indvars.iv16.i.i.i, 1 ; 2 uses
  %lftr.wideiv23.i.i.i = trunc i64 %indvars.iv.next17.i.i.i to i32
  %exitcond24.not.i.i.i = icmp eq i32 %i.mi, %lftr.wideiv23.i.i.i
  br i1 %exitcond24.not.i.i.i, label %._crit_edge.split.us.us.i.i.i, label %get_sub_picture.exit21.us.us.i.i.i, !llvm.loop !69

._crit_edge.split.us.us.i.i.i:                    ; preds = %get_sub_picture.exit21.us.us.i.i.i
  %indvars.iv.next562.i = add nuw nsw i64 %indvars.iv561.i, 4 ; 2 uses
  %i.mt = icmp samesign ult i64 %indvars.iv.next562.i, %i.mf
  br i1 %i.mt, label %.preheader.us.i.i.i, label %calculate_skip_errors.exit.i.i, !llvm.loop !70

.split.split.i.i.i:                               ; preds = %.split.i.i.i
  store i32 %.sink.i, ptr %i.g, align 16, !tbaa !49
  %i.mu = sext i32 %i.ln to i64
  %i.mv = sext i32 %.sink.i to i64
  %i.mw = zext nneg i32 %i.hx to i64
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.split.i.i.i, %.split.split.i.i.i
  %indvars.iv558.i = phi i64 [ %indvars.iv.next559.i, %._crit_edge.split.i.i.i ], [ 0, %.split.split.i.i.i ] ; 3 uses
  %.05.i.i.i = phi i32 [ %i.my, %._crit_edge.split.i.i.i ], [ 0, %.split.split.i.i.i ] ; 2 uses
  %i.mx = sext i32 %.05.i.i.i to i64
  %i.my = add i32 %.05.i.i.i, %i.ly               ; 2 uses
  %i.mz = mul nsw i64 %indvars.iv558.i, %i.mu
  %invariant.gep.i = getelementptr i8, ptr %i.lo, i64 %i.mz
  %i.na = mul nsw i64 %indvars.iv558.i, %i.mv
  %invariant.gep446.i = getelementptr i8, ptr %.sink573.i, i64 %i.na
  br label %get_sub_picture.exit.i.i.i

get_sub_picture.exit.i.i.i:                       ; preds = %get_sub_picture.exit.i.i.i, %.preheader.i.i.i
  %indvars.iv11.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %indvars.iv.next12.i.i.i, %get_sub_picture.exit.i.i.i ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ %i.mx, %.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %get_sub_picture.exit.i.i.i ] ; 2 uses
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv11.i.i.i
  store ptr %gep.i, ptr %i.d, align 16, !tbaa !44
  %gep447.i = getelementptr i8, ptr %invariant.gep446.i, i64 %indvars.iv11.i.i.i
  store ptr %gep447.i, ptr %i.e, align 16, !tbaa !44
  %i.nb = call fastcc i32 @compute_mb_distortion(ptr noundef nonnull readonly %i.m, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.e, ptr noundef %i.g)
  %i.nc = getelementptr inbounds [36 x i8], ptr %i.lv, i64 %indvars.iv.i.i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 28
  store i32 %i.nb, ptr %i.nd, align 4, !tbaa !104
  %indvars.iv.next12.i.i.i = add nuw nsw i64 %indvars.iv11.i.i.i, 4
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32
  %exitcond.not.i.i.i = icmp eq i32 %i.my, %lftr.wideiv.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.split.i.i.i, label %get_sub_picture.exit.i.i.i, !llvm.loop !69

._crit_edge.split.i.i.i:                          ; preds = %get_sub_picture.exit.i.i.i
  %indvars.iv.next559.i = add nuw nsw i64 %indvars.iv558.i, 4 ; 2 uses
  %i.ne = icmp samesign ult i64 %indvars.iv.next559.i, %i.mw
  br i1 %i.ne, label %.preheader.i.i.i, label %calculate_skip_errors.exit.i.i, !llvm.loop !70

calculate_skip_errors.exit.i.i:                   ; preds = %._crit_edge.split.i.i.i, %._crit_edge.split.us.us.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %bb.k

bb.k:                                             ; preds = %calculate_skip_errors.exit.i.i, %get_sub_picture.exit226.i
  %i.nf = phi i8 [ 17, %calculate_skip_errors.exit.i.i ], [ 16, %get_sub_picture.exit226.i ]
  %i.ng = trunc i32 %i.hx to i16
  %i.nh = call i16 @llvm.bswap.i16(i16 %i.ng)
  %i.ni = sext i32 %i.li to i64                   ; 3 uses
  %i.nj = sext i32 %i.ln to i64                   ; 2 uses
  %i.nk = shl nsw i32 %i.li, 1
  %i.nl = sext i32 %i.nk to i64                   ; 2 uses
  %i.nm = shl nsw i32 %i.ln, 1
  %i.nn = sext i32 %i.nm to i64
  %i.no = mul nsw i32 %i.li, 3
  %i.np = sext i32 %i.no to i64                   ; 2 uses
  %i.nq = mul nsw i32 %i.ln, 3
  %i.nr = sext i32 %i.nq to i64
  %i.ns = zext nneg i32 %i.hx to i64
  %i.nt = sext i32 %.sroa.6236.4269.i to i64
  %i.nu = sext i32 %.sroa.9238.4267.i to i64
  %i.nv = extractelement <2 x i32> %i.lp, i64 0   ; 2 uses
  %i.nw = sext i32 %i.nv to i64
  %i.nx = extractelement <2 x i32> %i.lp, i64 1   ; 2 uses
  %i.ny = sext i32 %i.nx to i64
  br label %.preheader.lr.ph.i.i

.preheader.lr.ph.i.i:                             ; preds = %.critedge3.i.i, %bb.k
  %.4259.i = phi i64 [ %.1256480.i, %bb.k ], [ %.8.i, %.critedge3.i.i ]
  %.0250.i = phi i32 [ undef, %bb.k ], [ %.4254.i, %.critedge3.i.i ]
  %.0122299.i.i = phi i32 [ 1, %bb.k ], [ %i.asc, %.critedge3.i.i ] ; 7 uses
  %.0128298.i.i = phi i32 [ 0, %bb.k ], [ %.3131375.i.i, %.critedge3.i.i ]
  %.0193297.i.i = phi i32 [ undef, %bb.k ], [ %.6198374.i.i, %.critedge3.i.i ]
  %.0200296.i.i = phi i32 [ undef, %bb.k ], [ %.6206373.i.i, %.critedge3.i.i ]
  %i.nz = call i32 @llvm.smax.i32(i32 %.0122299.i.i, i32 4)
  %i.oa = lshr i32 %i.nz, 2
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.thread227.i.i, %.preheader.lr.ph.i.i
  %.5260.i = phi i64 [ %.4259.i, %.preheader.lr.ph.i.i ], [ %.8.i, %.thread227.i.i ]
  %.1251.i = phi i32 [ %.0250.i, %.preheader.lr.ph.i.i ], [ %.4254.i, %.thread227.i.i ]
  %.0119292.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %i.asb, %.thread227.i.i ] ; 6 uses
  %.1124291.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %.5376.i.i, %.thread227.i.i ]
  %.1129290.i.i = phi i32 [ %.0128298.i.i, %.preheader.lr.ph.i.i ], [ %.3131375.i.i, %.thread227.i.i ]
  %.1289.i.i = phi i32 [ %.0193297.i.i, %.preheader.lr.ph.i.i ], [ %.6198374.i.i, %.thread227.i.i ]
  %.1201288.i.i = phi i32 [ %.0200296.i.i, %.preheader.lr.ph.i.i ], [ %.6206373.i.i, %.thread227.i.i ]
  %.not155.i.i = icmp eq i32 %.0119292.i.i, 0     ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.ce, %.preheader.i.i
  %.6.i = phi i64 [ %.5260.i, %.preheader.i.i ], [ %.7.i, %bb.ce ] ; 4 uses
  %.2252.i = phi i32 [ %.1251.i, %.preheader.i.i ], [ %.3253.i, %bb.ce ] ; 3 uses
  %.0118286.i.i = phi i32 [ 0, %.preheader.i.i ], [ %i.arz, %bb.ce ] ; 4 uses
  %.1121285.i.i = phi i32 [ 0, %.preheader.i.i ], [ %.3.i.i, %bb.ce ] ; 8 uses
  %.2125284.i.i = phi i32 [ %.1124291.i.i, %.preheader.i.i ], [ %.5.i.i, %bb.ce ] ; 5 uses
  %.2130283.i.i = phi i32 [ %.1129290.i.i, %.preheader.i.i ], [ %.3131.i.i, %bb.ce ] ; 4 uses
  %.2194282.i.i = phi i32 [ %.1289.i.i, %.preheader.i.i ], [ %.6198.i.i, %bb.ce ] ; 6 uses
  %.2202281.i.i = phi i32 [ %.1201288.i.i, %.preheader.i.i ], [ %.6206.i.i, %bb.ce ] ; 6 uses
  %i.ob = icmp eq i32 %.0118286.i.i, 2
  %or.cond.i.i = and i1 %i.z, %i.ob
  br i1 %or.cond.i.i, label %.thread227.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.oc = icmp eq i32 %.0118286.i.i, 0
  br i1 %i.oc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 %.0122299.i.i, ptr %i.gs, align 4, !tbaa !106
  %i.od = call fastcc i32 @quantize(ptr noundef %i.m, i32 noundef range(i32 1, -2147483648) %i.hx, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i32 noundef 1, ptr noundef %4, i32 noundef 3) ; 6 uses
  %i.oe = icmp slt i32 %i.od, 0
  br i1 %i.oe, label %rd_strip.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n
  store i32 %i.od, ptr %i.gs, align 4, !tbaa !106
  %i.of = icmp slt i32 %i.od, %.0122299.i.i
  %spec.select.i.i = select i1 %i.of, i32 1, i32 %.2125284.i.i ; 3 uses
  store i32 0, ptr %i.gr, align 4, !tbaa !107
  store i32 0, ptr %i.gt, align 4, !tbaa !108
  %i.og = load i32, ptr %i.gh, align 4, !tbaa !53 ; 4 uses
  %i.oh = mul nsw i32 %i.og, %i.hx                ; 3 uses
  %i.oi = sdiv i32 %i.oh, 16                      ; 3 uses
  %i.oj = load i64, ptr %i.r, align 8, !tbaa !99
  %i.ok = load i32, ptr %i.ac, align 8, !tbaa !52 ; 4 uses
  %i.ol = icmp eq i32 %i.ok, 2
  %i.om = select i1 %i.ol, i32 6, i32 4
  %.not.i.i.i = icmp eq i32 %i.od, 0
  %i.on = mul nuw nsw i32 %i.om, %i.od
  %i.oo = add nuw i32 %i.on, 8
  %i.op = select i1 %.not.i.i.i, i32 4, i32 %i.oo
  %i.oq = sext i32 %i.op to i64
  %i.or = shl i64 %i.oj, 3
  %i.os = sext i32 %i.oi to i64
  %i.ot = add nsw i64 %i.oq, %i.os
  %i.ou = mul i64 %i.ot, %i.or                    ; 3 uses
  %i.ov = icmp sgt i32 %i.oh, 15
  br i1 %i.ov, label %.lr.ph174.i.i.i, label %calculate_mode_score.exit.thread213.i.i

bb.o:                                             ; preds = %bb.m
  br i1 %.not155.i.i, label %bb.ce, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ow = icmp eq i32 %.0118286.i.i, 1
  br i1 %i.ow, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %.0119292.i.i, ptr %i.gr, align 4, !tbaa !107
  %i.ox = call fastcc i32 @quantize(ptr noundef %i.m, i32 noundef range(i32 1, -2147483648) %i.hx, ptr noundef nonnull readonly %i.h, ptr noundef nonnull readonly %i.i, i32 noundef 0, ptr noundef %4, i32 noundef 3) ; 4 uses
  %i.oy = icmp slt i32 %i.ox, 0
  br i1 %i.oy, label %rd_strip.exit.thread.i, label %.thread359.i.i

.thread359.i.i:                                   ; preds = %bb.q
  store i32 %i.ox, ptr %i.gr, align 4, !tbaa !107
  %i.oz = icmp slt i32 %i.ox, %.0119292.i.i
  %spec.select162.i.i = select i1 %i.oz, i32 1, i32 %.1121285.i.i ; 3 uses
  store i32 1, ptr %i.gt, align 4, !tbaa !108
  %i.pa = load i32, ptr %i.gh, align 4, !tbaa !53
  %i.pb = mul nsw i32 %i.pa, %i.hx                ; 2 uses
  %i.pc = icmp sgt i32 %i.pb, 15
  br i1 %i.pc, label %.lr.ph169.i.i.i, label %calculate_mode_score.exit.thread.i.i

bb.r:                                             ; preds = %bb.p
  store i32 2, ptr %i.gt, align 4, !tbaa !108
  %i.pd = load i32, ptr %i.gh, align 4, !tbaa !53
  %i.pe = mul nsw i32 %i.pd, %i.hx                ; 2 uses
  %i.pf = load i64, ptr %i.r, align 8, !tbaa !99  ; 3 uses
  %i.pg = icmp sgt i32 %i.pe, 15
  br i1 %i.pg, label %.lr.ph160.i.i.i, label %calculate_mode_score.exit.thread.i.i

.lr.ph174.i.i.i:                                  ; preds = %.thread.i.i
  %i.ph = load ptr, ptr %i.gq, align 8, !tbaa !47 ; 3 uses
  %wide.trip.count199.i.i.i = zext nneg i32 %i.oi to i64 ; 2 uses
  %xtraiter263 = and i64 %wide.trip.count199.i.i.i, 1
  %i.pi = and i32 %i.oh, 2147483632
  %i.pj = icmp eq i32 %i.pi, 16
  br i1 %i.pj, label %.epil.preheader262, label %.lr.ph174.i.i.i.new

.lr.ph174.i.i.i.new:                              ; preds = %.lr.ph174.i.i.i
  %unroll_iter267 = and i64 %wide.trip.count199.i.i.i, 134217726
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph174.i.i.i.new
  %indvars.iv196.i.i.i = phi i64 [ 0, %.lr.ph174.i.i.i.new ], [ %indvars.iv.next197.i.i.i.1, %bb.s ] ; 3 uses
  %.0116172.i.i.i = phi i64 [ %i.ou, %.lr.ph174.i.i.i.new ], [ %i.pw, %bb.s ]
  %niter268 = phi i64 [ 0, %.lr.ph174.i.i.i.new ], [ %niter268.next.1, %bb.s ]
  %i.pk = getelementptr inbounds nuw [36 x i8], ptr %i.ph, i64 %indvars.iv196.i.i.i ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 4
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !58
  %i.pn = shl nsw i32 %i.pm, 7
  %i.po = sext i32 %i.pn to i64
  %i.pp = add nsw i64 %.0116172.i.i.i, %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pk, i64 32
  store i32 0, ptr %i.pq, align 4, !tbaa !59
  %i.pr = getelementptr inbounds nuw [36 x i8], ptr %i.ph, i64 %indvars.iv196.i.i.i ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 40
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !58
  %i.pu = shl nsw i32 %i.pt, 7
  %i.pv = sext i32 %i.pu to i64
  %i.pw = add nsw i64 %i.pp, %i.pv                ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pr, i64 68
  store i32 0, ptr %i.px, align 4, !tbaa !59
  %indvars.iv.next197.i.i.i.1 = add nuw nsw i64 %indvars.iv196.i.i.i, 2 ; 2 uses
  %niter268.next.1 = add i64 %niter268, 2         ; 2 uses
  %niter268.ncmp.1 = icmp eq i64 %niter268.next.1, %unroll_iter267
  br i1 %niter268.ncmp.1, label %calculate_mode_score.exit.thread213.i.i.loopexit.unr-lcssa, label %bb.s, !llvm.loop !71

.lr.ph169.i.i.i:                                  ; preds = %.thread359.i.i
  %i.py = load i64, ptr %i.r, align 8, !tbaa !99  ; 2 uses
  %i.pz = lshr i32 %i.pb, 4                       ; 3 uses
  %i.qa = load ptr, ptr %i.gq, align 8, !tbaa !47 ; 3 uses
  %i.qb = mul i64 %i.py, 9                        ; 3 uses
  %i.qc = mul i64 %i.py, 33                       ; 3 uses
  %wide.trip.count194.i.i.i = zext nneg i32 %i.pz to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count194.i.i.i, 1
  %i.qd = icmp eq i32 %i.pz, 1
  br i1 %i.qd, label %.epil.preheader, label %.lr.ph169.i.i.i.new

.lr.ph169.i.i.i.new:                              ; preds = %.lr.ph169.i.i.i
  %unroll_iter = and i64 %wide.trip.count194.i.i.i, 134217726
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.lr.ph169.i.i.i.new
  %indvars.iv191.i.i.i = phi i64 [ 0, %.lr.ph169.i.i.i.new ], [ %indvars.iv.next192.i.i.i.1, %bb.t ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph169.i.i.i.new ], [ %niter.next.1, %bb.t ]
  %i.qe = getelementptr inbounds nuw [36 x i8], ptr %i.qa, i64 %indvars.iv191.i.i.i ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 4
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !58
  %i.qh = shl nsw i32 %i.qg, 7
  %i.qi = sext i32 %i.qh to i64
  %i.qj = add i64 %i.qb, %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qe, i64 24
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !60
  %i.qm = shl nsw i32 %i.ql, 7
  %i.qn = sext i32 %i.qm to i64
  %i.qo = add i64 %i.qc, %i.qn
  %.not145.i.i.i = icmp sgt i64 %i.qj, %i.qo
  %spec.select.i.i.i = zext i1 %.not145.i.i.i to i32
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qe, i64 32
  store i32 %spec.select.i.i.i, ptr %i.qp, align 4, !tbaa !59
  %i.qq = getelementptr inbounds nuw [36 x i8], ptr %i.qa, i64 %indvars.iv191.i.i.i ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 40
  %i.qs = load i32, ptr %i.qr, align 4, !tbaa !58
  %i.qt = shl nsw i32 %i.qs, 7
  %i.qu = sext i32 %i.qt to i64
  %i.qv = add i64 %i.qb, %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qq, i64 60
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !60
  %i.qy = shl nsw i32 %i.qx, 7
  %i.qz = sext i32 %i.qy to i64
  %i.ra = add i64 %i.qc, %i.qz
  %.not145.i.i.i.1 = icmp sgt i64 %i.qv, %i.ra
  %spec.select.i.i.i.1 = zext i1 %.not145.i.i.i.1 to i32
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qq, i64 68
  store i32 %spec.select.i.i.i.1, ptr %i.rb, align 4, !tbaa !59
  %indvars.iv.next192.i.i.i.1 = add nuw nsw i64 %indvars.iv191.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %calculate_mode_score.exit.thread.i.i.loopexit.unr-lcssa, label %bb.t, !llvm.loop !72

.lr.ph160.i.i.i:                                  ; preds = %bb.r
  %i.rc = lshr i32 %i.pe, 4
  %i.rd = load ptr, ptr %i.gq, align 8, !tbaa !47
  %i.re = mul i64 %i.pf, 10
  %i.rf = mul i64 %i.pf, 34
  %wide.trip.count184.i.i.i = zext nneg i32 %i.rc to i64
end_hunk_0
begin_hunk_1_@cinepak_encode_frame:bb.a
  %i.add = mul nuw nsw i64 %indvars.iv23.i208.us.i.i.i, %i.acz
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.add ; 9 uses
  %i.adf = load i32, ptr %i.ade, align 4, !tbaa !49
  %i.adg = trunc i32 %i.adf to i8
  %i.adh = getelementptr inbounds i8, ptr %i.ack, i64 %.34.i209.us.i.i.i ; 4 uses
  store i8 %i.adg, ptr %i.adh, align 1, !tbaa !55
  %i.adi = getelementptr inbounds nuw i8, ptr %i.ade, i64 4
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !49
  %i.adk = trunc i32 %i.adj to i8
  %i.adl = getelementptr i8, ptr %i.adh, i64 1
  store i8 %i.adk, ptr %i.adl, align 1, !tbaa !55
  %i.adm = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !49
  %i.ado = trunc i32 %i.adn to i8
  %i.adp = getelementptr i8, ptr %i.adh, i64 2
  store i8 %i.ado, ptr %i.adp, align 1, !tbaa !55
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ade, i64 12
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !49
  %i.ads = trunc i32 %i.adr to i8
  %indvars.iv.next.peel19.i210.us.i.i.i = add nsw i64 %.34.i209.us.i.i.i, 4 ; 2 uses
  %i.adt = getelementptr i8, ptr %i.adh, i64 3
  store i8 %i.ads, ptr %i.adt, align 1, !tbaa !55
  br i1 %i.adc, label %.peel.next18.i216.us.i.i.i.epil.preheader, label %.peel.next18.i216.us.i.i.i

.peel.next18.i216.us.i.i.i:                       ; preds = %.peel.next14.i207.us.i.i.i, %.peel.next18.i216.us.i.i.i
  %indvars.iv5.i218.us.i.i.i = phi i64 [ %indvars.iv.next6.i222.us.i.i.i.3, %.peel.next18.i216.us.i.i.i ], [ 4, %.peel.next14.i207.us.i.i.i ] ; 5 uses
  %indvars.iv.i219.us.i.i.i = phi i64 [ %indvars.iv.next.i221.us.i.i.i.3, %.peel.next18.i216.us.i.i.i ], [ %indvars.iv.next.peel19.i210.us.i.i.i, %.peel.next14.i207.us.i.i.i ] ; 5 uses
  %niter294 = phi i64 [ %niter294.next.3, %.peel.next18.i216.us.i.i.i ], [ 0, %.peel.next14.i207.us.i.i.i ]
  %gep.i220.us.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv5.i218.us.i.i.i
  %i.adu = load i32, ptr %gep.i220.us.i.i.i, align 4, !tbaa !49
  %i.adv = trunc i32 %i.adu to i8
  %i.adw = xor i8 %i.adv, -128
  %i.adx = getelementptr inbounds i8, ptr %i.ack, i64 %indvars.iv.i219.us.i.i.i
  store i8 %i.adw, ptr %i.adx, align 1, !tbaa !55
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv5.i218.us.i.i.i
  %gep.i220.us.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  %i.adz = load i32, ptr %gep.i220.us.i.i.i.1, align 4, !tbaa !49
  %i.aea = trunc i32 %i.adz to i8
  %i.aeb = xor i8 %i.aea, -128
  %i.aec = getelementptr i8, ptr %i.ack, i64 %indvars.iv.i219.us.i.i.i
  %i.aed = getelementptr i8, ptr %i.aec, i64 1
  store i8 %i.aeb, ptr %i.aed, align 1, !tbaa !55
  %i.aee = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv5.i218.us.i.i.i
  %gep.i220.us.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.aee, i64 8
  %i.aef = load i32, ptr %gep.i220.us.i.i.i.2, align 4, !tbaa !49
  %i.aeg = trunc i32 %i.aef to i8
  %i.aeh = xor i8 %i.aeg, -128
  %i.aei = getelementptr i8, ptr %i.ack, i64 %indvars.iv.i219.us.i.i.i
  %i.aej = getelementptr i8, ptr %i.aei, i64 2
  store i8 %i.aeh, ptr %i.aej, align 1, !tbaa !55
  %i.aek = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv5.i218.us.i.i.i
  %gep.i220.us.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.aek, i64 12
  %i.ael = load i32, ptr %gep.i220.us.i.i.i.3, align 4, !tbaa !49
  %i.aem = trunc i32 %i.ael to i8
  %i.aen = xor i8 %i.aem, -128
  %indvars.iv.next.i221.us.i.i.i.3 = add nsw i64 %indvars.iv.i219.us.i.i.i, 4 ; 3 uses
  %i.aeo = getelementptr i8, ptr %i.ack, i64 %indvars.iv.i219.us.i.i.i
  %i.aep = getelementptr i8, ptr %i.aeo, i64 3
  store i8 %i.aen, ptr %i.aep, align 1, !tbaa !55
  %indvars.iv.next6.i222.us.i.i.i.3 = add nuw nsw i64 %indvars.iv5.i218.us.i.i.i, 4 ; 2 uses
  %niter294.next.3 = add i64 %niter294, 4         ; 2 uses
  %niter294.ncmp.3 = icmp eq i64 %niter294.next.3, 0
  br i1 %niter294.ncmp.3, label %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa, label %.peel.next18.i216.us.i.i.i, !llvm.loop !76

.loopexit.i211.loopexit.us.i.i.i.unr-lcssa:       ; preds = %.peel.next18.i216.us.i.i.i
  br i1 %lcmp.mod290.not, label %.loopexit.i211.loopexit.us.i.i.i, label %.peel.next18.i216.us.i.i.i.epil.preheader

.peel.next18.i216.us.i.i.i.epil.preheader:        ; preds = %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa, %.peel.next14.i207.us.i.i.i
  %indvars.iv5.i218.us.i.i.i.epil.init = phi i64 [ 4, %.peel.next14.i207.us.i.i.i ], [ %indvars.iv.next6.i222.us.i.i.i.3, %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa ]
  %indvars.iv.i219.us.i.i.i.epil.init = phi i64 [ %indvars.iv.next.peel19.i210.us.i.i.i, %.peel.next14.i207.us.i.i.i ], [ %indvars.iv.next.i221.us.i.i.i.3, %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod292)
  br label %.peel.next18.i216.us.i.i.i.epil

.peel.next18.i216.us.i.i.i.epil:                  ; preds = %.peel.next18.i216.us.i.i.i.epil, %.peel.next18.i216.us.i.i.i.epil.preheader
  %indvars.iv5.i218.us.i.i.i.epil = phi i64 [ %indvars.iv.next6.i222.us.i.i.i.epil, %.peel.next18.i216.us.i.i.i.epil ], [ %indvars.iv5.i218.us.i.i.i.epil.init, %.peel.next18.i216.us.i.i.i.epil.preheader ] ; 2 uses
  %indvars.iv.i219.us.i.i.i.epil = phi i64 [ %indvars.iv.next.i221.us.i.i.i.epil, %.peel.next18.i216.us.i.i.i.epil ], [ %indvars.iv.i219.us.i.i.i.epil.init, %.peel.next18.i216.us.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter289 = phi i64 [ %epil.iter289.next, %.peel.next18.i216.us.i.i.i.epil ], [ 0, %.peel.next18.i216.us.i.i.i.epil.preheader ]
  %gep.i220.us.i.i.i.epil = getelementptr inbounds nuw [4 x i8], ptr %i.ade, i64 %indvars.iv5.i218.us.i.i.i.epil
  %i.aeq = load i32, ptr %gep.i220.us.i.i.i.epil, align 4, !tbaa !49
  %i.aer = trunc i32 %i.aeq to i8
  %i.aes = xor i8 %i.aer, -128
  %indvars.iv.next.i221.us.i.i.i.epil = add nsw i64 %indvars.iv.i219.us.i.i.i.epil, 1 ; 2 uses
  %i.aet = getelementptr inbounds i8, ptr %i.ack, i64 %indvars.iv.i219.us.i.i.i.epil
  store i8 %i.aes, ptr %i.aet, align 1, !tbaa !55
  %indvars.iv.next6.i222.us.i.i.i.epil = add nuw nsw i64 %indvars.iv5.i218.us.i.i.i.epil, 1
  %epil.iter289.next = add i64 %epil.iter289, 1   ; 2 uses
  %epil.iter289.cmp.not = icmp eq i64 %epil.iter289.next, 2
  br i1 %epil.iter289.cmp.not, label %.loopexit.i211.loopexit.us.i.i.i, label %.peel.next18.i216.us.i.i.i.epil, !llvm.loop !79

.loopexit.i211.loopexit.us.i.i.i:                 ; preds = %.peel.next18.i216.us.i.i.i.epil, %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa
  %indvars.iv.next.i221.us.i.i.i.lcssa = phi i64 [ %indvars.iv.next.i221.us.i.i.i.3, %.loopexit.i211.loopexit.us.i.i.i.unr-lcssa ], [ %indvars.iv.next.i221.us.i.i.i.epil, %.peel.next18.i216.us.i.i.i.epil ] ; 2 uses
  %indvars.iv.next24.i213.us.i.i.i = add nuw nsw i64 %indvars.iv23.i208.us.i.i.i, 1 ; 2 uses
  %exitcond27.not.i214.us.i.i.i = icmp eq i64 %indvars.iv.next24.i213.us.i.i.i, %wide.trip.count26.i206.i.i.i
  br i1 %exitcond27.not.i214.us.i.i.i, label %._crit_edge.loopexit.i215.i.i.i, label %.peel.next14.i207.us.i.i.i, !llvm.loop !78

.peel.next14.i207.i.i.i:                          ; preds = %.peel.next14.i207.i.i.i, %.peel.next14.i207.i.i.i.preheader.new
  %indvars.iv23.i208.i.i.i = phi i64 [ 0, %.peel.next14.i207.i.i.i.preheader.new ], [ %indvars.iv.next24.i213.i.i.i.1, %.peel.next14.i207.i.i.i ] ; 3 uses
  %.34.i209.i.i.i = phi i64 [ 4, %.peel.next14.i207.i.i.i.preheader.new ], [ %indvars.iv.next.peel19.i210.i.i.i.1, %.peel.next14.i207.i.i.i ] ; 3 uses
  %niter287 = phi i64 [ 0, %.peel.next14.i207.i.i.i.preheader.new ], [ %niter287.next.1, %.peel.next14.i207.i.i.i ]
  %i.aeu = mul nuw nsw i64 %indvars.iv23.i208.i.i.i, %i.acz
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.aeu ; 4 uses
  %i.aew = load i32, ptr %i.aev, align 4, !tbaa !49
  %i.aex = trunc i32 %i.aew to i8
  %i.aey = getelementptr inbounds nuw i8, ptr %i.ack, i64 %.34.i209.i.i.i ; 4 uses
  store i8 %i.aex, ptr %i.aey, align 1, !tbaa !55
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aev, i64 4
  %i.afa = load i32, ptr %i.aez, align 4, !tbaa !49
  %i.afb = trunc i32 %i.afa to i8
  %i.afc = getelementptr i8, ptr %i.aey, i64 1
  store i8 %i.afb, ptr %i.afc, align 1, !tbaa !55
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  %i.afe = load i32, ptr %i.afd, align 4, !tbaa !49
  %i.aff = trunc i32 %i.afe to i8
  %i.afg = getelementptr i8, ptr %i.aey, i64 2
  store i8 %i.aff, ptr %i.afg, align 1, !tbaa !55
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aev, i64 12
  %i.afi = load i32, ptr %i.afh, align 4, !tbaa !49
  %i.afj = trunc i32 %i.afi to i8
  %i.afk = getelementptr i8, ptr %i.aey, i64 3
  store i8 %i.afj, ptr %i.afk, align 1, !tbaa !55
  %indvars.iv.next24.i213.i.i.i = or disjoint i64 %indvars.iv23.i208.i.i.i, 1
  %i.afl = mul nuw nsw i64 %indvars.iv.next24.i213.i.i.i, %i.acz
  %i.afm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.afl ; 4 uses
  %i.afn = load i32, ptr %i.afm, align 4, !tbaa !49
  %i.afo = trunc i32 %i.afn to i8
  %i.afp = getelementptr inbounds nuw i8, ptr %i.ack, i64 %.34.i209.i.i.i ; 4 uses
  %i.afq = getelementptr inbounds nuw i8, ptr %i.afp, i64 4
  store i8 %i.afo, ptr %i.afq, align 1, !tbaa !55
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afm, i64 4
  %i.afs = load i32, ptr %i.afr, align 4, !tbaa !49
  %i.aft = trunc i32 %i.afs to i8
  %i.afu = getelementptr i8, ptr %i.afp, i64 5
  store i8 %i.aft, ptr %i.afu, align 1, !tbaa !55
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !49
  %i.afx = trunc i32 %i.afw to i8
  %i.afy = getelementptr i8, ptr %i.afp, i64 6
  store i8 %i.afx, ptr %i.afy, align 1, !tbaa !55
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afm, i64 12
  %i.aga = load i32, ptr %i.afz, align 4, !tbaa !49
  %i.agb = trunc i32 %i.aga to i8
  %indvars.iv.next.peel19.i210.i.i.i.1 = add nuw nsw i64 %.34.i209.i.i.i, 8 ; 3 uses
  %i.agc = getelementptr i8, ptr %i.afp, i64 7
  store i8 %i.agb, ptr %i.agc, align 1, !tbaa !55
  %indvars.iv.next24.i213.i.i.i.1 = add nuw nsw i64 %indvars.iv23.i208.i.i.i, 2 ; 2 uses
  %niter287.next.1 = add i64 %niter287, 2         ; 2 uses
  %niter287.ncmp.1 = icmp eq i64 %niter287.next.1, %unroll_iter286
  br i1 %niter287.ncmp.1, label %._crit_edge.loopexit.i215.i.i.i.loopexit217.unr-lcssa, label %.peel.next14.i207.i.i.i, !llvm.loop !78

._crit_edge.loopexit.i215.i.i.i.loopexit217.unr-lcssa: ; preds = %.peel.next14.i207.i.i.i
  %lcmp.mod283.not = icmp eq i64 %xtraiter281, 0
  br i1 %lcmp.mod283.not, label %._crit_edge.loopexit.i215.i.i.i, label %.peel.next14.i207.i.i.i.epil.preheader

.peel.next14.i207.i.i.i.epil.preheader:           ; preds = %._crit_edge.loopexit.i215.i.i.i.loopexit217.unr-lcssa, %.peel.next14.i207.i.i.i.preheader
  %indvars.iv23.i208.i.i.i.epil.init = phi i64 [ 0, %.peel.next14.i207.i.i.i.preheader ], [ %indvars.iv.next24.i213.i.i.i.1, %._crit_edge.loopexit.i215.i.i.i.loopexit217.unr-lcssa ]
  %.34.i209.i.i.i.epil.init = phi i64 [ 4, %.peel.next14.i207.i.i.i.preheader ], [ %indvars.iv.next.peel19.i210.i.i.i.1, %._crit_edge.loopexit.i215.i.i.i.loopexit217.unr-lcssa ] ; 2 uses
  %lcmp.mod285 = trunc i32 %i.ach to i1
  call void @llvm.assume(i1 %lcmp.mod285)
  %i.agd = mul nuw nsw i64 %indvars.iv23.i208.i.i.i.epil.init, %i.acz
  %i.age = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.agd ; 4 uses
  %i.agf = load i32, ptr %i.age, align 4, !tbaa !49
  %i.agg = trunc i32 %i.agf to i8
  %i.agh = getelementptr inbounds nuw i8, ptr %i.ack, i64 %.34.i209.i.i.i.epil.init ; 4 uses
  store i8 %i.agg, ptr %i.agh, align 1, !tbaa !55
  %i.agi = getelementptr inbounds nuw i8, ptr %i.age, i64 4
  %i.agj = load i32, ptr %i.agi, align 4, !tbaa !49
  %i.agk = trunc i32 %i.agj to i8
  %i.agl = getelementptr i8, ptr %i.agh, i64 1
  store i8 %i.agk, ptr %i.agl, align 1, !tbaa !55
  %i.agm = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agn = load i32, ptr %i.agm, align 4, !tbaa !49
  %i.ago = trunc i32 %i.agn to i8
  %i.agp = getelementptr i8, ptr %i.agh, i64 2
  store i8 %i.ago, ptr %i.agp, align 1, !tbaa !55
  %i.agq = getelementptr inbounds nuw i8, ptr %i.age, i64 12
  %i.agr = load i32, ptr %i.agq, align 4, !tbaa !49
  %i.ags = trunc i32 %i.agr to i8
  %indvars.iv.next.peel19.i210.i.i.i.epil = add nuw nsw i64 %.34.i209.i.i.i.epil.init, 4
  %i.agt = getelementptr i8, ptr %i.agh, i64 3
  store i8 %i.ags, ptr %i.agt, align 1, !tbaa !55
  br label %._crit_edge.loopexit.i215.i.i.i

._crit_edge.loopexit.i215.i.i.i:                  ; preds = %.peel.next14.i207.i.i.i.epil.preheader, %._crit_edge.loopexit.i215.i.i.i.loopexit217.unr-lcssa, %.loopexit.i211.loopexit.us.i.i.i
  %.us-phi246.i.i.i = phi i64 [ %indvars.iv.next.i221.us.i.i.i.lcssa, %.loopexit.i211.loopexit.us.i.i.i ], [ %indvars.iv.next.peel19.i210.i.i.i.1, %._crit_edge.loopexit.i215.i.i.i.loopexit217.unr-lcssa ], [ %indvars.iv.next.peel19.i210.i.i.i.epil, %.peel.next14.i207.i.i.i.epil.preheader ]
  %i.agu = trunc nsw i64 %.us-phi246.i.i.i to i32
  br label %encode_codebook.exit224.i.i.i

encode_codebook.exit224.i.i.i:                    ; preds = %._crit_edge.loopexit.i215.i.i.i, %bb.be
  %.3.lcssa.i204.i.i.i = phi i32 [ 4, %bb.be ], [ %i.agu, %._crit_edge.loopexit.i215.i.i.i ]
  %i.agv = add nsw i32 %.3.lcssa.i204.i.i.i, %.0165.i.i.i
  br label %bb.bf

bb.bf:                                            ; preds = %encode_codebook.exit224.i.i.i, %bb.bd
  %.1166.i.i.i = phi i32 [ %i.agv, %encode_codebook.exit224.i.i.i ], [ %.0165.i.i.i, %bb.bd ] ; 9 uses
  %i.agw = load i32, ptr %i.gh, align 4, !tbaa !53 ; 2 uses
  %i.agx = icmp sgt i32 %i.agw, 0
  br i1 %i.agx, label %.preheader244.i.i.i, label %.split269.us.i.i.i

.preheader244.i.i.i:                              ; preds = %bb.bf, %._crit_edge.i186.i.i
  %indvars.iv564.i = phi i64 [ %indvars.iv.next565.i, %._crit_edge.i186.i.i ], [ 0, %bb.bf ] ; 4 uses
  %5 = phi i32 [ %i.akw, %._crit_edge.i186.i.i ], [ %i.agw, %bb.bf ] ; 2 uses
  %.0180272.i.i.i = phi i32 [ %.1181.lcssa.i.i.i, %._crit_edge.i186.i.i ], [ 0, %bb.bf ] ; 2 uses
  %i.agy = phi i32 [ %.lcssa246.i.i.i, %._crit_edge.i186.i.i ], [ 0, %bb.bf ] ; 2 uses
  %.0180267.i.i.i = phi i32 [ %.lcssa247.i.i.i, %._crit_edge.i186.i.i ], [ 0, %bb.bf ] ; 2 uses
  %6 = phi ptr [ %.lcssa248.i.i.i, %._crit_edge.i186.i.i ], [ null, %bb.bf ] ; 2 uses
  %7 = phi ptr [ %.lcssa249.i.i.i, %._crit_edge.i186.i.i ], [ null, %bb.bf ] ; 2 uses
  %.sroa.9.0265.i.i.i = phi i32 [ %.sroa.9.1.lcssa.i.i.i, %._crit_edge.i186.i.i ], [ 0, %bb.bf ] ; 2 uses
  %.sroa.7.0264.i.i.i = phi i32 [ %.sroa.7.1.lcssa.i.i.i, %._crit_edge.i186.i.i ], [ 0, %bb.bf ] ; 2 uses
  %.sroa.11237.0263.i.i.i = phi ptr [ %.sroa.11237.1.lcssa.i.i.i, %._crit_edge.i186.i.i ], [ null, %bb.bf ] ; 2 uses
  %.sroa.8.0262.i.i.i = phi ptr [ %.sroa.8.1.lcssa.i.i.i, %._crit_edge.i186.i.i ], [ null, %bb.bf ] ; 2 uses
  %i.agz = icmp sgt i32 %5, 0
  br i1 %i.agz, label %.lr.ph.i187.i.i, label %._crit_edge.i186.i.i

.lr.ph.i187.i.i:                                  ; preds = %.preheader244.i.i.i
  %i.aha = lshr exact i64 %indvars.iv564.i, 1     ; 4 uses
  %i.ahb = sext i32 %.0180272.i.i.i to i64
  %i.ahc = mul nsw i64 %indvars.iv564.i, %i.ni
  %invariant.gep460.i = getelementptr i8, ptr %i.lh, i64 %i.ahc
  %i.ahd = mul nsw i64 %i.aha, %i.nw
  %invariant.gep462.i = getelementptr i8, ptr %.sroa.6243.8.i, i64 %i.ahd
  %i.ahe = mul nsw i64 %i.aha, %i.ny
  %invariant.gep464.i = getelementptr i8, ptr %.sroa.10.8.i, i64 %i.ahe
  %i.ahf = mul nsw i64 %indvars.iv564.i, %i.nj
  %invariant.gep466.i = getelementptr i8, ptr %i.lo, i64 %i.ahf
  %i.ahg = mul nsw i64 %i.aha, %i.nt
  %invariant.gep468.i = getelementptr i8, ptr %.sroa.5.4265.i, i64 %i.ahg
  %i.ahh = mul nsw i64 %i.aha, %i.nu
  %invariant.gep470.i = getelementptr i8, ptr %.sroa.8.4271.i, i64 %i.ahh
  br label %bb.bg

bb.bg:                                            ; preds = %copy_mb.exit.i.i.i, %.lr.ph.i187.i.i
  %indvars.iv313.i.i.i = phi i64 [ 0, %.lr.ph.i187.i.i ], [ %indvars.iv.next314.i.i.i, %copy_mb.exit.i.i.i ] ; 5 uses
  %indvars.iv.i188.i.i = phi i64 [ %i.ahb, %.lr.ph.i187.i.i ], [ %indvars.iv.next.i190.i.i, %copy_mb.exit.i.i.i ] ; 2 uses
  %8 = phi i32 [ %i.agy, %.lr.ph.i187.i.i ], [ %11, %copy_mb.exit.i.i.i ]
  %9 = phi i32 [ %.0180267.i.i.i, %.lr.ph.i187.i.i ], [ %10, %copy_mb.exit.i.i.i ]
  %i.ahi = phi ptr [ %6, %.lr.ph.i187.i.i ], [ %i.ahq, %copy_mb.exit.i.i.i ]
  %i.ahj = phi ptr [ %7, %.lr.ph.i187.i.i ], [ %i.ahp, %copy_mb.exit.i.i.i ]
  %.sroa.9.1250.i.i.i = phi i32 [ %.sroa.9.0265.i.i.i, %.lr.ph.i187.i.i ], [ %.sroa.9.2.i.i.i, %copy_mb.exit.i.i.i ] ; 4 uses
  %.sroa.7.1249.i.i.i = phi i32 [ %.sroa.7.0264.i.i.i, %.lr.ph.i187.i.i ], [ %.sroa.7.2.i.i.i, %copy_mb.exit.i.i.i ] ; 4 uses
  %.sroa.11237.1248.i.i.i = phi ptr [ %.sroa.11237.0263.i.i.i, %.lr.ph.i187.i.i ], [ %.sroa.11237.2.i.i.i, %copy_mb.exit.i.i.i ] ; 4 uses
  %.sroa.8.1247.i.i.i = phi ptr [ %.sroa.8.0262.i.i.i, %.lr.ph.i187.i.i ], [ %.sroa.8.2.i.i.i, %copy_mb.exit.i.i.i ] ; 4 uses
  %i.ahk = load ptr, ptr %i.gq, align 8, !tbaa !47
  %i.ahl = getelementptr inbounds [36 x i8], ptr %i.ahk, i64 %indvars.iv.i188.i.i ; 4 uses
  %gep461.i = getelementptr i8, ptr %invariant.gep460.i, i64 %indvars.iv313.i.i.i ; 12 uses
  store ptr %gep461.i, ptr %i.b, align 16, !tbaa !44
  store i32 %i.li, ptr %i.c, align 16, !tbaa !49
  %i.ahm = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.ahn = icmp eq i32 %i.ahm, 2                  ; 3 uses
  br i1 %i.ahn, label %bb.bh, label %get_sub_picture.exit.i189.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.aho = lshr exact i64 %indvars.iv313.i.i.i, 1 ; 2 uses
  %gep463.i = getelementptr i8, ptr %invariant.gep462.i, i64 %i.aho ; 2 uses
  store ptr %gep463.i, ptr %i.gy, align 8, !tbaa !44
  %gep465.i = getelementptr i8, ptr %invariant.gep464.i, i64 %i.aho ; 2 uses
  store ptr %gep465.i, ptr %i.ha, align 16, !tbaa !44
  store <2 x i32> %i.lp, ptr %i.gz, align 4, !tbaa !49
  br label %get_sub_picture.exit.i189.i.i

get_sub_picture.exit.i189.i.i:                    ; preds = %bb.bh, %bb.bg
  %i.ahp = phi ptr [ %i.ahj, %bb.bg ], [ %gep465.i, %bb.bh ] ; 7 uses
  %i.ahq = phi ptr [ %i.ahi, %bb.bg ], [ %gep463.i, %bb.bh ] ; 7 uses
  %10 = phi i32 [ %9, %bb.bg ], [ %i.nx, %bb.bh ] ; 4 uses
  %11 = phi i32 [ %8, %bb.bg ], [ %i.nv, %bb.bh ] ; 4 uses
  %i.ahr = load i32, ptr %i.gt, align 4, !tbaa !108
  switch i32 %i.ahr, label %get_sub_picture.exit..thread_crit_edge.i.i.i [
    i32 2, label %bb.bi
    i32 0, label %bb.bl
  ]

get_sub_picture.exit..thread_crit_edge.i.i.i:     ; preds = %get_sub_picture.exit.i189.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ahl, i64 32
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !59
  br label %.thread.i.i.i

bb.bi:                                            ; preds = %get_sub_picture.exit.i189.i.i
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahl, i64 32
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !59 ; 2 uses
  %i.ahu = icmp eq i32 %i.aht, 2
  br i1 %i.ahu, label %bb.bj, label %.thread.i.i.i

bb.bj:                                            ; preds = %bb.bi
  %gep467.i = getelementptr i8, ptr %invariant.gep466.i, i64 %indvars.iv313.i.i.i ; 4 uses
  br i1 %i.ahn, label %bb.bk, label %get_sub_picture.exit225.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.ahv = lshr exact i64 %indvars.iv313.i.i.i, 1 ; 2 uses
  %gep469.i = getelementptr i8, ptr %invariant.gep468.i, i64 %i.ahv
  %gep471.i = getelementptr i8, ptr %invariant.gep470.i, i64 %i.ahv
  br label %get_sub_picture.exit225.i.i.i

get_sub_picture.exit225.i.i.i:                    ; preds = %bb.bk, %bb.bj
  %.sroa.8.3.i.i.i = phi ptr [ %gep469.i, %bb.bk ], [ %.sroa.8.1247.i.i.i, %bb.bj ] ; 4 uses
  %.sroa.11237.3.i.i.i = phi ptr [ %gep471.i, %bb.bk ], [ %.sroa.11237.1248.i.i.i, %bb.bj ] ; 4 uses
  %.sroa.7.3.i.i.i = phi i32 [ %.sroa.6236.4269.i, %bb.bk ], [ %.sroa.7.1249.i.i.i, %bb.bj ] ; 3 uses
  %.sroa.9.3.i.i.i = phi i32 [ %.sroa.9238.4267.i, %bb.bk ], [ %.sroa.9.1250.i.i.i, %bb.bj ] ; 3 uses
  %i.ahw = load i32, ptr %gep467.i, align 1
  store i32 %i.ahw, ptr %gep461.i, align 1
  %i.ahx = getelementptr inbounds i8, ptr %gep461.i, i64 %i.ni
  %i.ahy = getelementptr inbounds i8, ptr %gep467.i, i64 %i.nj
  %i.ahz = load i32, ptr %i.ahy, align 1
  store i32 %i.ahz, ptr %i.ahx, align 1
  %i.aia = getelementptr inbounds i8, ptr %gep461.i, i64 %i.nl
  %i.aib = getelementptr inbounds i8, ptr %gep467.i, i64 %i.nn
  %i.aic = load i32, ptr %i.aib, align 1
  store i32 %i.aic, ptr %i.aia, align 1
  %i.aid = getelementptr inbounds i8, ptr %gep461.i, i64 %i.np
  %i.aie = getelementptr inbounds i8, ptr %gep467.i, i64 %i.nr
  %i.aif = load i32, ptr %i.aie, align 1
  store i32 %i.aif, ptr %i.aid, align 1
  %i.aig = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.aih = icmp eq i32 %i.aig, 2
  br i1 %i.aih, label %.preheader.preheader.i227.i.i.i, label %copy_mb.exit.i.i.i

.preheader.preheader.i227.i.i.i:                  ; preds = %get_sub_picture.exit225.i.i.i
  %i.aii = load i16, ptr %.sroa.8.3.i.i.i, align 1
  store i16 %i.aii, ptr %i.ahq, align 1
  %i.aij = sext i32 %11 to i64
  %i.aik = getelementptr inbounds i8, ptr %i.ahq, i64 %i.aij
  %i.ail = sext i32 %.sroa.7.3.i.i.i to i64
  %i.aim = getelementptr inbounds i8, ptr %.sroa.8.3.i.i.i, i64 %i.ail
  %i.ain = load i16, ptr %i.aim, align 1
  store i16 %i.ain, ptr %i.aik, align 1
  %i.aio = load i16, ptr %.sroa.11237.3.i.i.i, align 1
  store i16 %i.aio, ptr %i.ahp, align 1
  %i.aip = sext i32 %10 to i64
  %i.aiq = getelementptr inbounds i8, ptr %i.ahp, i64 %i.aip
  %i.air = sext i32 %.sroa.9.3.i.i.i to i64
  %i.ais = getelementptr inbounds i8, ptr %.sroa.11237.3.i.i.i, i64 %i.air
  %i.ait = load i16, ptr %i.ais, align 1
  store i16 %i.ait, ptr %i.aiq, align 1
  br label %copy_mb.exit.i.i.i

.thread.i.i.i:                                    ; preds = %bb.bi, %get_sub_picture.exit..thread_crit_edge.i.i.i
  %i.aiu = phi i32 [ %.pre.i.i.i, %get_sub_picture.exit..thread_crit_edge.i.i.i ], [ %i.aht, %bb.bi ]
  %i.aiv = icmp eq i32 %i.aiu, 0
  br i1 %i.aiv, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %.thread.i.i.i, %get_sub_picture.exit.i189.i.i
  %i.aiw = load i32, ptr %i.ahl, align 4, !tbaa !62
  %i.aix = select i1 %i.ahn, i32 6, i32 4
  %i.aiy = mul nsw i32 %i.aiw, %i.aix
  %i.aiz = sext i32 %i.aiy to i64
  %i.aja = getelementptr inbounds [4 x i8], ptr %4, i64 %i.aiz ; 6 uses
  %i.ajb = load i32, ptr %i.aja, align 4, !tbaa !49
  %i.ajc = trunc i32 %i.ajb to i8                 ; 4 uses
  %i.ajd = getelementptr i8, ptr %gep461.i, i64 %i.ni ; 4 uses
  %i.aje = getelementptr i8, ptr %i.ajd, i64 1
  store i8 %i.ajc, ptr %i.aje, align 1, !tbaa !55
  store i8 %i.ajc, ptr %i.ajd, align 1, !tbaa !55
  %i.ajf = getelementptr inbounds nuw i8, ptr %gep461.i, i64 1
  store i8 %i.ajc, ptr %i.ajf, align 1, !tbaa !55
  store i8 %i.ajc, ptr %gep461.i, align 1, !tbaa !55
  %i.ajg = getelementptr i8, ptr %i.aja, i64 4
  %i.ajh = load i32, ptr %i.ajg, align 4, !tbaa !49
  %i.aji = trunc i32 %i.ajh to i8                 ; 4 uses
  %i.ajj = getelementptr i8, ptr %i.ajd, i64 3
  store i8 %i.aji, ptr %i.ajj, align 1, !tbaa !55
  %i.ajk = getelementptr i8, ptr %i.ajd, i64 2
  store i8 %i.aji, ptr %i.ajk, align 1, !tbaa !55
  %i.ajl = getelementptr inbounds nuw i8, ptr %gep461.i, i64 3
  store i8 %i.aji, ptr %i.ajl, align 1, !tbaa !55
  %i.ajm = getelementptr inbounds nuw i8, ptr %gep461.i, i64 2
  store i8 %i.aji, ptr %i.ajm, align 1, !tbaa !55
  %i.ajn = getelementptr i8, ptr %i.aja, i64 8
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !49
  %i.ajp = trunc i32 %i.ajo to i8                 ; 4 uses
  %i.ajq = getelementptr i8, ptr %gep461.i, i64 %i.np ; 4 uses
  %i.ajr = getelementptr i8, ptr %i.ajq, i64 1
  store i8 %i.ajp, ptr %i.ajr, align 1, !tbaa !55
  store i8 %i.ajp, ptr %i.ajq, align 1, !tbaa !55
  %i.ajs = getelementptr i8, ptr %gep461.i, i64 %i.nl ; 4 uses
  %i.ajt = getelementptr i8, ptr %i.ajs, i64 1
  store i8 %i.ajp, ptr %i.ajt, align 1, !tbaa !55
  store i8 %i.ajp, ptr %i.ajs, align 1, !tbaa !55
  %i.aju = getelementptr i8, ptr %i.aja, i64 12
  %i.ajv = load i32, ptr %i.aju, align 4, !tbaa !49
  %i.ajw = trunc i32 %i.ajv to i8                 ; 4 uses
  %i.ajx = getelementptr i8, ptr %i.ajq, i64 3
  store i8 %i.ajw, ptr %i.ajx, align 1, !tbaa !55
  %i.ajy = getelementptr i8, ptr %i.ajq, i64 2
  store i8 %i.ajw, ptr %i.ajy, align 1, !tbaa !55
  %i.ajz = getelementptr i8, ptr %i.ajs, i64 3
  store i8 %i.ajw, ptr %i.ajz, align 1, !tbaa !55
  %i.aka = getelementptr i8, ptr %i.ajs, i64 2
  store i8 %i.ajw, ptr %i.aka, align 1, !tbaa !55
  %i.akb = load i32, ptr %i.ac, align 8, !tbaa !52
  %i.akc = icmp eq i32 %i.akb, 2
  br i1 %i.akc, label %bb.bm, label %copy_mb.exit.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.akd = getelementptr i8, ptr %i.aja, i64 16
  %i.ake = load i32, ptr %i.akd, align 4, !tbaa !49
  %i.akf = trunc i32 %i.ake to i8                 ; 4 uses
  %i.akg = sext i32 %11 to i64
  %i.akh = getelementptr i8, ptr %i.ahq, i64 %i.akg ; 2 uses
  %i.aki = getelementptr i8, ptr %i.akh, i64 1
  store i8 %i.akf, ptr %i.aki, align 1, !tbaa !55
  store i8 %i.akf, ptr %i.akh, align 1, !tbaa !55
  %i.akj = getelementptr inbounds nuw i8, ptr %i.ahq, i64 1
  store i8 %i.akf, ptr %i.akj, align 1, !tbaa !55
  store i8 %i.akf, ptr %i.ahq, align 1, !tbaa !55
  %i.akk = getelementptr i8, ptr %i.aja, i64 20
  %i.akl = load i32, ptr %i.akk, align 4, !tbaa !49
  %i.akm = trunc i32 %i.akl to i8                 ; 4 uses
  %i.akn = sext i32 %10 to i64
  %i.ako = getelementptr i8, ptr %i.ahp, i64 %i.akn ; 2 uses
  %i.akp = getelementptr i8, ptr %i.ako, i64 1
  store i8 %i.akm, ptr %i.akp, align 1, !tbaa !55
  store i8 %i.akm, ptr %i.ako, align 1, !tbaa !55
  %i.akq = getelementptr inbounds nuw i8, ptr %i.ahp, i64 1
  store i8 %i.akm, ptr %i.akq, align 1, !tbaa !55
  store i8 %i.akm, ptr %i.ahp, align 1, !tbaa !55
  br label %copy_mb.exit.i.i.i

bb.bn:                                            ; preds = %.thread.i.i.i
  %i.akr = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  call fastcc void @decode_v4_vector(ptr noundef nonnull readonly %i.m, ptr noundef %i.b, ptr noundef %i.c, ptr noundef nonnull %i.akr, ptr noundef nonnull readonly %4)
  br label %copy_mb.exit.i.i.i

copy_mb.exit.i.i.i:                               ; preds = %bb.bn, %bb.bm, %bb.bl, %.preheader.preheader.i227.i.i.i, %get_sub_picture.exit225.i.i.i
  %.sroa.8.2.i.i.i = phi ptr [ %.sroa.8.1247.i.i.i, %bb.bn ], [ %.sroa.8.3.i.i.i, %.preheader.preheader.i227.i.i.i ], [ %.sroa.8.3.i.i.i, %get_sub_picture.exit225.i.i.i ], [ %.sroa.8.1247.i.i.i, %bb.bl ], [ %.sroa.8.1247.i.i.i, %bb.bm ] ; 2 uses
  %.sroa.11237.2.i.i.i = phi ptr [ %.sroa.11237.1248.i.i.i, %bb.bn ], [ %.sroa.11237.3.i.i.i, %.preheader.preheader.i227.i.i.i ], [ %.sroa.11237.3.i.i.i, %get_sub_picture.exit225.i.i.i ], [ %.sroa.11237.1248.i.i.i, %bb.bl ], [ %.sroa.11237.1248.i.i.i, %bb.bm ] ; 2 uses
  %.sroa.7.2.i.i.i = phi i32 [ %.sroa.7.1249.i.i.i, %bb.bn ], [ %.sroa.7.3.i.i.i, %.preheader.preheader.i227.i.i.i ], [ %.sroa.7.3.i.i.i, %get_sub_picture.exit225.i.i.i ], [ %.sroa.7.1249.i.i.i, %bb.bl ], [ %.sroa.7.1249.i.i.i, %bb.bm ] ; 2 uses
  %.sroa.9.2.i.i.i = phi i32 [ %.sroa.9.1250.i.i.i, %bb.bn ], [ %.sroa.9.3.i.i.i, %.preheader.preheader.i227.i.i.i ], [ %.sroa.9.3.i.i.i, %get_sub_picture.exit225.i.i.i ], [ %.sroa.9.1250.i.i.i, %bb.bl ], [ %.sroa.9.1250.i.i.i, %bb.bm ] ; 2 uses
  %indvars.iv.next314.i.i.i = add nuw nsw i64 %indvars.iv313.i.i.i, 4 ; 2 uses
  %indvars.iv.next.i190.i.i = add nsw i64 %indvars.iv.i188.i.i, 1 ; 2 uses
  %i.aks = load i32, ptr %i.gh, align 4, !tbaa !53 ; 2 uses
  %i.akt = sext i32 %i.aks to i64
  %i.aku = icmp slt i64 %indvars.iv.next314.i.i.i, %i.akt
  br i1 %i.aku, label %bb.bg, label %._crit_edge.loopexit.i.i.i, !llvm.loop !80

._crit_edge.loopexit.i.i.i:                       ; preds = %copy_mb.exit.i.i.i
  %i.akv = trunc nsw i64 %indvars.iv.next.i190.i.i to i32
  br label %._crit_edge.i186.i.i

._crit_edge.i186.i.i:                             ; preds = %._crit_edge.loopexit.i.i.i, %.preheader244.i.i.i
  %i.akw = phi i32 [ %5, %.preheader244.i.i.i ], [ %i.aks, %._crit_edge.loopexit.i.i.i ]
  %.sroa.8.1.lcssa.i.i.i = phi ptr [ %.sroa.8.0262.i.i.i, %.preheader244.i.i.i ], [ %.sroa.8.2.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.sroa.11237.1.lcssa.i.i.i = phi ptr [ %.sroa.11237.0263.i.i.i, %.preheader244.i.i.i ], [ %.sroa.11237.2.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.sroa.7.1.lcssa.i.i.i = phi i32 [ %.sroa.7.0264.i.i.i, %.preheader244.i.i.i ], [ %.sroa.7.2.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.sroa.9.1.lcssa.i.i.i = phi i32 [ %.sroa.9.0265.i.i.i, %.preheader244.i.i.i ], [ %.sroa.9.2.i.i.i, %._crit_edge.loopexit.i.i.i ]
  %.lcssa249.i.i.i = phi ptr [ %7, %.preheader244.i.i.i ], [ %i.ahp, %._crit_edge.loopexit.i.i.i ]
  %.lcssa248.i.i.i = phi ptr [ %6, %.preheader244.i.i.i ], [ %i.ahq, %._crit_edge.loopexit.i.i.i ]
  %.lcssa247.i.i.i = phi i32 [ %.0180267.i.i.i, %.preheader244.i.i.i ], [ %10, %._crit_edge.loopexit.i.i.i ]
  %.lcssa246.i.i.i = phi i32 [ %i.agy, %.preheader244.i.i.i ], [ %11, %._crit_edge.loopexit.i.i.i ]
  %.1181.lcssa.i.i.i = phi i32 [ %.0180272.i.i.i, %.preheader244.i.i.i ], [ %i.akv, %._crit_edge.loopexit.i.i.i ]
  %indvars.iv.next565.i = add nuw nsw i64 %indvars.iv564.i, 4 ; 2 uses
  %i.akx = icmp samesign ult i64 %indvars.iv.next565.i, %i.ns
  br i1 %i.akx, label %.preheader244.i.i.i, label %.split269.us.i.i.i, !llvm.loop !81

.split269.us.i.i.i:                               ; preds = %._crit_edge.i186.i.i, %bb.bf
  %i.aky = load i32, ptr %i.gt, align 4, !tbaa !108
  switch i32 %i.aky, label %encode_mode.exit.i.i [
    i32 0, label %bb.bo
    i32 1, label %bb.bq
    i32 2, label %bb.bt
  ]

bb.bo:                                            ; preds = %.split269.us.i.i.i
  %i.akz = sext i32 %.1166.i.i.i to i64
  %i.ala = getelementptr inbounds i8, ptr %i.xt, i64 %i.akz ; 4 uses
  store i8 50, ptr %i.ala, align 1, !tbaa !55
  %i.alb = add nsw i32 %i.xv, 4                   ; 3 uses
  %i.alc = trunc i32 %i.alb to i8
  %i.ald = getelementptr inbounds nuw i8, ptr %i.ala, i64 1
  %i.ale = getelementptr inbounds nuw i8, ptr %i.ala, i64 3
  store i8 %i.alc, ptr %i.ale, align 1, !tbaa !55
  %i.alf = lshr i32 %i.alb, 8
  %i.alg = trunc i32 %i.alf to i8
  %i.alh = getelementptr inbounds nuw i8, ptr %i.ala, i64 2
  store i8 %i.alg, ptr %i.alh, align 1, !tbaa !55
  %i.ali = lshr i32 %i.alb, 16
  %i.alj = trunc i32 %i.ali to i8
  store i8 %i.alj, ptr %i.ald, align 1, !tbaa !55
  %i.alk = add i32 %.1166.i.i.i, 4                ; 2 uses
  %i.all = icmp sgt i32 %i.xu, 15
  br i1 %i.all, label %.lr.ph305.i.i.i, label %encode_mode.exit.i.i

.lr.ph305.i.i.i:                                  ; preds = %bb.bo
  %i.alm = sext i32 %i.alk to i64                 ; 2 uses
  %wide.trip.count353.i.i.i = zext nneg i32 %i.xv to i64 ; 2 uses
  %xtraiter296 = and i64 %wide.trip.count353.i.i.i, 1
  %i.aln = and i32 %i.xu, 2147483632
  %i.alo = icmp eq i32 %i.aln, 16
  br i1 %i.alo, label %.epil.preheader295, label %.lr.ph305.i.i.i.new

.lr.ph305.i.i.i.new:                              ; preds = %.lr.ph305.i.i.i
  %unroll_iter301 = and i64 %wide.trip.count353.i.i.i, 134217726
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph305.i.i.i.new
  %indvars.iv348.i.i.i = phi i64 [ 0, %.lr.ph305.i.i.i.new ], [ %indvars.iv.next349.i.i.i.1, %bb.bp ] ; 3 uses
  %indvars.iv346.i.i.i = phi i64 [ %i.alm, %.lr.ph305.i.i.i.new ], [ %indvars.iv.next347.i.i.i.1, %bb.bp ] ; 3 uses
  %niter302 = phi i64 [ 0, %.lr.ph305.i.i.i.new ], [ %niter302.next.1, %bb.bp ]
  %i.alp = load ptr, ptr %i.gq, align 8, !tbaa !47
  %i.alq = getelementptr inbounds nuw [36 x i8], ptr %i.alp, i64 %indvars.iv348.i.i.i
  %i.alr = load i32, ptr %i.alq, align 4, !tbaa !62
  %i.als = trunc i32 %i.alr to i8
  %i.alt = getelementptr inbounds i8, ptr %i.xt, i64 %indvars.iv346.i.i.i
  store i8 %i.als, ptr %i.alt, align 1, !tbaa !55
  %i.alu = load ptr, ptr %i.gq, align 8, !tbaa !47
  %i.alv = getelementptr inbounds nuw [36 x i8], ptr %i.alu, i64 %indvars.iv348.i.i.i
  %i.alw = getelementptr inbounds nuw i8, ptr %i.alv, i64 36
  %i.alx = load i32, ptr %i.alw, align 4, !tbaa !62
  %i.aly = trunc i32 %i.alx to i8
  %indvars.iv.next347.i.i.i.1 = add nsw i64 %indvars.iv346.i.i.i, 2 ; 3 uses
  %i.alz = getelementptr i8, ptr %i.xt, i64 %indvars.iv346.i.i.i
  %i.ama = getelementptr i8, ptr %i.alz, i64 1
  store i8 %i.aly, ptr %i.ama, align 1, !tbaa !55
  %indvars.iv.next349.i.i.i.1 = add nuw nsw i64 %indvars.iv348.i.i.i, 2 ; 2 uses
  %niter302.next.1 = add i64 %niter302, 2         ; 2 uses
  %niter302.ncmp.1 = icmp eq i64 %niter302.next.1, %unroll_iter301
  br i1 %niter302.ncmp.1, label %.loopexit.loopexit.i.i.i.unr-lcssa, label %bb.bp, !llvm.loop !82

bb.bq:                                            ; preds = %.split269.us.i.i.i
  %i.amb = add nsw i32 %.1166.i.i.i, 4            ; 2 uses
  %i.amc = icmp sgt i32 %i.xu, 15
  br i1 %i.amc, label %.preheader241.lr.ph.i.i.i, label %._crit_edge300.i.i.i

.preheader241.lr.ph.i.i.i:                        ; preds = %bb.bq
  %i.amd = zext nneg i32 %i.xv to i64
  br label %.lr.ph286.i.i.i

.loopexit240.i.i.i:                               ; preds = %.loopexit239.i.i.i
  %i.ame = icmp samesign ult i64 %indvars.iv.next329.i.i.i, %i.amd
  br i1 %i.ame, label %.lr.ph286.i.i.i, label %._crit_edge300.i.i.i, !llvm.loop !83

.lr.ph286.i.i.i:                                  ; preds = %.loopexit240.i.i.i, %.preheader241.lr.ph.i.i.i
  %indvars.iv328.i.i.i = phi i64 [ 0, %.preheader241.lr.ph.i.i.i ], [ %indvars.iv.next329.i.i.i, %.loopexit240.i.i.i ] ; 4 uses
  %.3168299.i.i.i = phi i32 [ %i.amb, %.preheader241.lr.ph.i.i.i ], [ %.6.i.i.i, %.loopexit240.i.i.i ] ; 2 uses
  %indvars.iv.next329.i.i.i = add nuw nsw i64 %indvars.iv328.i.i.i, 32 ; 3 uses
  %i.amf = trunc nuw nsw i64 %indvars.iv.next329.i.i.i to i32
  %i.amg = call i32 @llvm.smin.i32(i32 %i.amf, i32 %i.xv)
  %i.amh = load ptr, ptr %i.gq, align 8, !tbaa !47
  %i.ami = or disjoint i64 %indvars.iv328.i.i.i, 31
  %i.amj = sext i32 %i.amg to i64                 ; 2 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.br, %.lr.ph286.i.i.i
  %indvars.iv330.i.i.i = phi i64 [ %indvars.iv328.i.i.i, %.lr.ph286.i.i.i ], [ %indvars.iv.next331.i.i.i, %bb.br ] ; 3 uses
  %.0285.i.i.i = phi i32 [ 0, %.lr.ph286.i.i.i ], [ %.1.i184.i.i, %bb.br ]
  %i.amk = getelementptr inbounds nuw [36 x i8], ptr %i.amh, i64 %indvars.iv330.i.i.i
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 32
  %i.amm = load i32, ptr %i.aml, align 4, !tbaa !59
  %i.amn = icmp eq i32 %i.amm, 1
  %i.amo = sub nsw i64 %i.ami, %indvars.iv330.i.i.i
  %i.amp = trunc nsw i64 %i.amo to i32
  %i.amq = shl nuw i32 1, %i.amp
  %i.amr = select i1 %i.amn, i32 %i.amq, i32 0
  %.1.i184.i.i = or i32 %i.amr, %.0285.i.i.i      ; 2 uses
  %indvars.iv.next331.i.i.i = add nuw nsw i64 %indvars.iv330.i.i.i, 1 ; 2 uses
  %i.ams = icmp slt i64 %indvars.iv.next331.i.i.i, %i.amj
  br i1 %i.ams, label %bb.br, label %.lr.ph296.preheader.i.i.i, !llvm.loop !84

.lr.ph296.preheader.i.i.i:                        ; preds = %bb.br
  %i.amt = call i32 @llvm.bswap.i32(i32 %.1.i184.i.i)
  %i.amu = sext i32 %.3168299.i.i.i to i64
  %i.amv = getelementptr inbounds i8, ptr %i.xt, i64 %i.amu
  store i32 %i.amt, ptr %i.amv, align 1, !tbaa !55
  %i.amw = add nsw i32 %.3168299.i.i.i, 4
  br label %.lr.ph296.i.i.i

.lr.ph296.i.i.i:                                  ; preds = %.loopexit239.i.i.i, %.lr.ph296.preheader.i.i.i
  %indvars.iv341.i.i.i = phi i64 [ %indvars.iv328.i.i.i, %.lr.ph296.preheader.i.i.i ], [ %indvars.iv.next342.i.i.i, %.loopexit239.i.i.i ] ; 2 uses
  %.4169294.i.i.i = phi i32 [ %i.amw, %.lr.ph296.preheader.i.i.i ], [ %.6.i.i.i, %.loopexit239.i.i.i ] ; 4 uses
  %i.amx = load ptr, ptr %i.gq, align 8, !tbaa !47
  %i.amy = getelementptr inbounds nuw [36 x i8], ptr %i.amx, i64 %indvars.iv341.i.i.i ; 6 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 32
  %i.ana = load i32, ptr %i.amz, align 4, !tbaa !59
  %i.anb = icmp eq i32 %i.ana, 0
  br i1 %i.anb, label %bb.bs, label %.preheader.i185.i.i

.preheader.i185.i.i:                              ; preds = %.lr.ph296.i.i.i
  %i.anc = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  %i.and = sext i32 %.4169294.i.i.i to i64
  %i.ane = load i32, ptr %i.anc, align 4, !tbaa !49
  %i.anf = trunc i32 %i.ane to i8
  %i.ang = getelementptr inbounds i8, ptr %i.xt, i64 %i.and ; 4 uses
  store i8 %i.anf, ptr %i.ang, align 1, !tbaa !55
  %i.anh = getelementptr inbounds nuw i8, ptr %i.amy, i64 12
  %i.ani = load i32, ptr %i.anh, align 4, !tbaa !49
  %i.anj = trunc i32 %i.ani to i8
  %i.ank = getelementptr i8, ptr %i.ang, i64 1
  store i8 %i.anj, ptr %i.ank, align 1, !tbaa !55
  %i.anl = getelementptr inbounds nuw i8, ptr %i.amy, i64 16
  %i.anm = load i32, ptr %i.anl, align 4, !tbaa !49
  %i.ann = trunc i32 %i.anm to i8
  %i.ano = getelementptr i8, ptr %i.ang, i64 2
  store i8 %i.ann, ptr %i.ano, align 1, !tbaa !55
  %i.anp = getelementptr inbounds nuw i8, ptr %i.amy, i64 20
  %i.anq = load i32, ptr %i.anp, align 4, !tbaa !49
  %i.anr = trunc i32 %i.anq to i8
  %indvars.iv.next334.3.i.i.i = add i32 %.4169294.i.i.i, 4
  %i.ans = getelementptr i8, ptr %i.ang, i64 3
  store i8 %i.anr, ptr %i.ans, align 1, !tbaa !55
  br label %.loopexit239.i.i.i

bb.bs:                                            ; preds = %.lr.ph296.i.i.i
  %i.ant = load i32, ptr %i.amy, align 4, !tbaa !62
  %i.anu = trunc i32 %i.ant to i8
  %i.anv = add nsw i32 %.4169294.i.i.i, 1
  %i.anw = sext i32 %.4169294.i.i.i to i64
  %i.anx = getelementptr inbounds i8, ptr %i.xt, i64 %i.anw
  store i8 %i.anu, ptr %i.anx, align 1, !tbaa !55
  br label %.loopexit239.i.i.i

.loopexit239.i.i.i:                               ; preds = %bb.bs, %.preheader.i185.i.i
  %.6.i.i.i = phi i32 [ %i.anv, %bb.bs ], [ %indvars.iv.next334.3.i.i.i, %.preheader.i185.i.i ] ; 3 uses
  %indvars.iv.next342.i.i.i = add nuw nsw i64 %indvars.iv341.i.i.i, 1 ; 2 uses
  %i.any = icmp slt i64 %indvars.iv.next342.i.i.i, %i.amj
  br i1 %i.any, label %.lr.ph296.i.i.i, label %.loopexit240.i.i.i, !llvm.loop !85

._crit_edge300.i.i.i:                             ; preds = %.loopexit240.i.i.i, %bb.bq
  %.3168.lcssa.i.i.i = phi i32 [ %i.amb, %bb.bq ], [ %.6.i.i.i, %.loopexit240.i.i.i ] ; 2 uses
  %i.anz = sext i32 %.1166.i.i.i to i64
  %i.aoa = getelementptr inbounds i8, ptr %i.xt, i64 %i.anz ; 4 uses
  %i.aob = sub nsw i32 %.3168.lcssa.i.i.i, %.1166.i.i.i ; 3 uses
  store i8 48, ptr %i.aoa, align 1, !tbaa !55
  %i.aoc = trunc i32 %i.aob to i8
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoa, i64 1
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aoa, i64 3
  store i8 %i.aoc, ptr %i.aoe, align 1, !tbaa !55
  %i.aof = lshr i32 %i.aob, 8
  %i.aog = trunc i32 %i.aof to i8
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aoa, i64 2
  store i8 %i.aog, ptr %i.aoh, align 1, !tbaa !55
  %i.aoi = lshr i32 %i.aob, 16
  %i.aoj = trunc i32 %i.aoi to i8
  store i8 %i.aoj, ptr %i.aod, align 1, !tbaa !55
  br label %encode_mode.exit.i.i

bb.bt:                                            ; preds = %.split269.us.i.i.i
  %i.aok = add nsw i32 %.1166.i.i.i, 4            ; 2 uses
  %i.aol = icmp sgt i32 %i.xu, 15
  br i1 %i.aol, label %.lr.ph278.i.i.i, label %._crit_edge279.thread.i.i.i

.lr.ph278.i.i.i:                                  ; preds = %bb.bt
  %wide.trip.count.i178.i.i = zext nneg i32 %i.xv to i64
  br label %bb.bu

bb.bu:                                            ; preds = %bb.cc, %.lr.ph278.i.i.i
  %indvars.iv325.i.i.i = phi i64 [ 0, %.lr.ph278.i.i.i ], [ %indvars.iv.next326.i.i.i, %bb.cc ] ; 2 uses
  %.2276.i.i.i = phi i32 [ 0, %.lr.ph278.i.i.i ], [ %.5.i181.i.i, %bb.cc ]
  %.7275.i.i.i = phi i32 [ %i.aok, %.lr.ph278.i.i.i ], [ %.9.i.i.i, %bb.cc ] ; 3 uses
  %.0171274.i.i.i = phi i32 [ 0, %.lr.ph278.i.i.i ], [ %.4175.i.i.i, %bb.cc ] ; 4 uses
  %.0176273.i.i.i = phi i32 [ 0, %.lr.ph278.i.i.i ], [ %.3179.i.i.i, %bb.cc ] ; 5 uses
end_hunk_1
