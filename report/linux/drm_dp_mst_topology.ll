Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_dp_mst_topology?download=true
inline.NumInlined: 535
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@process_single_tx_qlock:bb.a
  br i1 %or.cond5.i, label %set_hdr_from_dst_qlock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %i.g, i64 32
  %i.o = load i8, ptr %i.n, align 8               ; 3 uses
  %i.p = add i8 %i.o, 15
  %i.q = lshr i8 %i.o, 1
  %i.r = zext nneg i8 %i.q to i64
  %i.s = and i8 %i.p, 15
  br label %set_hdr_from_dst_qlock.exit

set_hdr_from_dst_qlock.exit:                      ; preds = %bb.d, %bb.e
  %.sink147 = phi i8 [ 0, %bb.e ], [ 1, %bb.d ]
  %.sroa.0.0 = phi i8 [ %i.o, %bb.e ], [ 1, %bb.d ] ; 3 uses
  %i.t = phi i64 [ %i.r, %bb.e ], [ 0, %bb.d ]
  %.sink23.i = phi i8 [ %i.s, %bb.e ], [ 6, %bb.d ]
  %.sink = load i8, ptr %i.m, align 8, !range !19, !noundef !20
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 8
  store i8 %.sink147, ptr %.sroa.8.8..sroa_idx, align 8
  %.sroa.8.9..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 9
  store i8 %.sink, ptr %.sroa.8.9..sroa_idx, align 1
  %i.u = getelementptr i8, ptr %i.g, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.8, ptr align 8 %i.u, i64 %i.t, i1 false)
  %i.v = getelementptr i8, ptr %1, i64 305        ; 2 uses
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = getelementptr i8, ptr %1, i64 304        ; 3 uses
  %i.z = load i8, ptr %i.y, align 8               ; 3 uses
  %i.aa = zext i8 %i.z to i32
  %i.ab = sub nsw i32 %i.x, %i.aa                 ; 2 uses
  %i.ac = lshr i8 %.sroa.0.0, 1                   ; 3 uses
  %narrow.i = add nuw i8 %i.ac, 3
  %i.ad = zext i8 %narrow.i to i32
  %i.ae = sub nsw i32 47, %i.ad                   ; 2 uses
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.ab, i32 %i.ae) ; 4 uses
  %i.ag = icmp eq i8 %i.z, 0
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %set_hdr_from_dst_qlock.exit
  %.sroa.8.11..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 11
  store i8 1, ptr %.sroa.8.11..sroa_idx, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %set_hdr_from_dst_qlock.exit
  %.not = icmp slt i32 %i.ae, %i.ab
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.8.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 12
  store i8 1, ptr %.sroa.8.12..sroa_idx, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ai = trunc i32 %i.ah to i8                   ; 2 uses
  %.sroa.8.10..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 10
  store i8 %i.ai, ptr %.sroa.8.10..sroa_idx, align 2
  %i.aj = shl i8 %.sroa.0.0, 4
  %i.ak = or disjoint i8 %i.aj, %.sink23.i
  store i8 %i.ak, ptr %i.a, align 16
  %.not.i = icmp ult i8 %.sroa.0.0, 2
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.al = zext nneg i8 %i.ac to i64
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep, ptr nonnull align 8 %.sroa.8, i64 %i.al, i1 false)
  %narrow = add nuw i8 %i.ac, 1
  %i.am = zext i8 %narrow to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i.preheader, %bb.i
  %.027.lcssa.i = phi i32 [ 1, %bb.i ], [ %i.am, %.lr.ph.i.preheader ] ; 3 uses
  %.sroa.8.8..sroa_idx279 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 8
  %.sroa.8.8..sroa.8.8..sroa.8.10. = load i8, ptr %.sroa.8.8..sroa_idx279, align 8
  %i.an = shl nuw i8 %.sroa.8.8..sroa.8.8..sroa.8.10., 7
  %.sroa.8.9..sroa_idx280 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 9
  %.sroa.8.9..sroa.8.9..sroa.8.11. = load i8, ptr %.sroa.8.9..sroa_idx280, align 1
  %i.ao = shl nuw nsw i8 %.sroa.8.9..sroa.8.9..sroa.8.11., 6
  %i.ap = and i8 %i.ai, 63
  %i.aq = or disjoint i8 %i.an, %i.ap
  %i.ar = or disjoint i8 %i.aq, %i.ao
  %i.as = zext nneg i32 %.027.lcssa.i to i64
  %i.at = getelementptr i8, ptr %i.a, i64 %i.as
  store i8 %i.ar, ptr %i.at, align 1
  %.sroa.8.11..sroa_idx281 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 11
  %.sroa.8.11..sroa.8.11..sroa.8.13. = load i8, ptr %.sroa.8.11..sroa_idx281, align 1
  %i.au = shl nuw i8 %.sroa.8.11..sroa.8.11..sroa.8.13., 7
  %.sroa.8.12..sroa_idx282 = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 12
  %.sroa.8.12..sroa.8.12..sroa.8.14. = load i8, ptr %.sroa.8.12..sroa_idx282, align 4
  %i.av = shl nuw nsw i8 %.sroa.8.12..sroa.8.12..sroa.8.14., 6
  %i.aw = or disjoint i8 %i.av, %i.au
  %.sroa.8.13..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.8, i64 13
  %.sroa.8.13..sroa.8.13..sroa.8.15. = load i8, ptr %.sroa.8.13..sroa_idx, align 1
  %i.ax = shl nuw nsw i8 %.sroa.8.13..sroa.8.13..sroa.8.15., 4
  %i.ay = or disjoint i8 %i.aw, %i.ax             ; 2 uses
  %i.az = add nuw nsw i32 %.027.lcssa.i, 2        ; 3 uses
  %i.ba = zext nneg i32 %.027.lcssa.i to i64
  %i.bb = getelementptr i8, ptr %i.a, i64 %i.ba
  %i.bc = getelementptr i8, ptr %i.bb, i64 1      ; 2 uses
  store i8 %i.ay, ptr %i.bc, align 1
  %i.bd = shl nuw nsw i32 %i.az, 3
  %i.be = add nsw i32 %i.bd, -4
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %._crit_edge.i
  %.036.i.i = phi i8 [ %.1.i.i, %.lr.ph.i.i ], [ 0, %._crit_edge.i ]
  %.02035.i.i = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %i.be, %._crit_edge.i ]
  %.02234.i.i = phi i8 [ %.123.i.i, %.lr.ph.i.i ], [ 0, %._crit_edge.i ] ; 2 uses
  %.02433.i.i = phi i8 [ %.125.i.i, %.lr.ph.i.i ], [ 7, %._crit_edge.i ] ; 2 uses
  %.02632.i.i = phi i32 [ %.127.i.i, %.lr.ph.i.i ], [ 128, %._crit_edge.i ] ; 2 uses
  %i.bf = add nsw i32 %.02035.i.i, -1             ; 2 uses
  %i.bg = shl i8 %.036.i.i, 1
  %i.bh = zext i8 %.02234.i.i to i64
  %i.bi = getelementptr i8, ptr %i.a, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i32
  %i.bl = and i32 %.02632.i.i, %i.bk
  %i.bm = zext nneg i8 %.02433.i.i to i32
  %i.bn = lshr i32 %i.bl, %i.bm
  %i.bo = trunc nuw i32 %i.bn to i8
  %i.bp = or i8 %i.bg, %i.bo                      ; 3 uses
  %i.bq = lshr i32 %.02632.i.i, 1
  %i.br = and i32 %i.bq, 127                      ; 2 uses
  %i.bs = add i8 %.02433.i.i, -1
  %i.bt = icmp eq i32 %i.br, 0                    ; 3 uses
  %.127.i.i = select i1 %i.bt, i32 128, i32 %i.br
  %.125.i.i = select i1 %i.bt, i8 7, i8 %i.bs
  %i.bu = zext i1 %i.bt to i8
  %.123.i.i = add i8 %.02234.i.i, %i.bu
  %i.bv = and i8 %i.bp, 16
  %.not30.i.i = icmp eq i8 %i.bv, 0
  %i.bw = xor i8 %i.bp, 19
  %.1.i.i = select i1 %.not30.i.i, i8 %i.bp, i8 %i.bw ; 3 uses
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %drm_dp_encode_sideband_msg_hdr.exit, label %.lr.ph.i.i, !llvm.loop !6

drm_dp_encode_sideband_msg_hdr.exit:              ; preds = %.lr.ph.i.i
  %i.bx = shl i8 %.1.i.i, 1                       ; 2 uses
  %i.by = and i8 %.1.i.i, 8
  %.not29.i.i = icmp eq i8 %i.by, 0
  %i.bz = xor i8 %i.bx, 19
  %spec.select.i.i = select i1 %.not29.i.i, i8 %i.bx, i8 %i.bz ; 2 uses
  %i.ca = shl i8 %spec.select.i.i, 1              ; 2 uses
  %i.cb = and i8 %spec.select.i.i, 8
  %.not29.1.i.i = icmp eq i8 %i.cb, 0
  %i.cc = xor i8 %i.ca, 19
  %spec.select.1.i.i = select i1 %.not29.1.i.i, i8 %i.ca, i8 %i.cc ; 2 uses
  %i.cd = shl i8 %spec.select.1.i.i, 1            ; 2 uses
  %i.ce = and i8 %spec.select.1.i.i, 8
  %.not29.2.i.i = icmp eq i8 %i.ce, 0
  %i.cf = xor i8 %i.cd, 19
  %spec.select.2.i.i = select i1 %.not29.2.i.i, i8 %i.cd, i8 %i.cf ; 2 uses
  %i.cg = shl i8 %spec.select.2.i.i, 1            ; 2 uses
  %i.ch = and i8 %spec.select.2.i.i, 8
  %.not29.3.i.i = icmp eq i8 %i.ch, 0
  %i.ci = xor i8 %i.cg, 3
  %spec.select.3.i.i = select i1 %.not29.3.i.i, i8 %i.cg, i8 %i.ci
  %i.cj = and i8 %spec.select.3.i.i, 15
  %i.ck = or disjoint i8 %i.cj, %i.ay
  store i8 %i.ck, ptr %i.bc, align 1
  %i.cl = zext nneg i32 %i.az to i64
  %i.cm = getelementptr i8, ptr %i.a, i64 %i.cl   ; 3 uses
  %i.cn = zext i8 %i.z to i64
  %i.co = getelementptr i8, ptr %1, i64 %i.cn
  %i.cp = sext i32 %i.af to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cm, ptr align 1 %i.co, i64 %i.cp, i1 false)
  %i.cq = trunc i32 %i.af to i8                   ; 2 uses
  %i.cr = call fastcc zeroext i8 @drm_dp_msg_data_crc4(ptr noundef %i.cm, i8 noundef zeroext %i.cq) #24, !srcloc !178
  %.mask = and i32 %i.af, 255
  %i.cs = zext nneg i32 %.mask to i64
  %i.ct = getelementptr i8, ptr %i.cm, i64 %i.cs
  store i8 %i.cr, ptr %i.ct, align 1
  %i.cu = add nsw i32 %i.az, %i.ah                ; 6 uses
  %i.cv = select i1 %2, i32 4608, i32 4096        ; 6 uses
  %i.cw = getelementptr i8, ptr %0, i64 104       ; 6 uses
  %i.cx = getelementptr i8, ptr %0, i64 112       ; 6 uses
  br label %bb.k

.split.us.i:                                      ; preds = %.split.4.i, %bb.j
  %.042.us.i = phi i32 [ %i.dn, %bb.j ], [ %i.cu, %.split.4.i ] ; 2 uses
  %.041.us.i = phi i32 [ %i.dm, %bb.j ], [ 0, %.split.4.i ] ; 3 uses
  %i.cy = load i32, ptr %i.cw, align 8
  %i.cz = call i32 @llvm.smin.i32(i32 %.042.us.i, i32 %i.cy)
  %i.da = call i32 @llvm.smin.i32(i32 %i.cz, i32 16) ; 4 uses
  %i.db = load ptr, ptr %i.cx, align 8
  %i.dc = add i32 %.041.us.i, %i.cv
  %i.dd = sext i32 %.041.us.i to i64
  %i.de = getelementptr i8, ptr %i.a, i64 %i.dd
  %i.df = sext i32 %i.da to i64                   ; 2 uses
  %i.dg = call i64 @drm_dp_dpcd_write(ptr noundef %i.db, i32 noundef %i.dc, ptr noundef %i.de, i64 noundef range(i64 -2147483648, 2147483648) %i.df) #23 ; 2 uses
  %i.dh = trunc i64 %i.dg to i32                  ; 2 uses
  %i.di = icmp slt i32 %i.dh, 0                   ; 2 uses
  %i.dj = and i64 %i.dg, 2147483647
  %i.dk = icmp ult i64 %i.dj, %i.df               ; 2 uses
  %i.dl = or i1 %i.di, %i.dk
  br i1 %i.dl, label %.split52.us.loopexit.i, label %bb.j

bb.j:                                             ; preds = %.split.us.i
  %i.dm = add i32 %i.da, %.041.us.i
  %i.dn = sub nuw nsw i32 %.042.us.i, %i.da       ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.split.us.i, label %.loopexit, !llvm.loop !175

bb.k:                                             ; preds = %bb.v, %drm_dp_encode_sideband_msg_hdr.exit
  %.042.i = phi i32 [ %i.cu, %drm_dp_encode_sideband_msg_hdr.exit ], [ %i.hd, %bb.v ] ; 2 uses
  %.041.i = phi i32 [ 0, %drm_dp_encode_sideband_msg_hdr.exit ], [ %i.hc, %bb.v ] ; 3 uses
  %i.dp = load i32, ptr %i.cw, align 8
  %i.dq = call i32 @llvm.smin.i32(i32 %.042.i, i32 %i.dp)
  %i.dr = call i32 @llvm.smin.i32(i32 %i.dq, i32 16) ; 4 uses
  %i.ds = load ptr, ptr %i.cx, align 8
  %i.dt = add i32 %.041.i, %i.cv
  %i.du = sext i32 %.041.i to i64
  %i.dv = getelementptr i8, ptr %i.a, i64 %i.du
  %i.dw = sext i32 %i.dr to i64                   ; 2 uses
  %i.dx = call i64 @drm_dp_dpcd_write(ptr noundef %i.ds, i32 noundef %i.dt, ptr noundef %i.dv, i64 noundef range(i64 -2147483648, 2147483648) %i.dw) #23 ; 2 uses
  %i.dy = trunc i64 %i.dx to i32                  ; 2 uses
  %i.dz = icmp slt i32 %i.dy, 0                   ; 2 uses
  %i.ea = and i64 %i.dx, 2147483647
  %i.eb = icmp ult i64 %i.ea, %i.dw               ; 2 uses
  %..i.i = select i1 %i.eb, i32 -71, i32 0
  %.0.i.i = select i1 %i.dz, i32 %i.dy, i32 %..i.i ; 2 uses
  %i.ec = icmp eq i32 %.0.i.i, -5
  br i1 %i.ec, label %.split.1.i, label %bb.t

.split.1.i:                                       ; preds = %bb.k, %bb.m
  %.042.1.i = phi i32 [ %i.et, %bb.m ], [ %i.cu, %bb.k ] ; 2 uses
  %.041.1.i = phi i32 [ %i.es, %bb.m ], [ 0, %bb.k ] ; 3 uses
  %i.ed = load i32, ptr %i.cw, align 8
  %i.ee = call i32 @llvm.smin.i32(i32 %.042.1.i, i32 %i.ed)
  %i.ef = call i32 @llvm.smin.i32(i32 %i.ee, i32 16) ; 4 uses
  %i.eg = load ptr, ptr %i.cx, align 8
  %i.eh = add i32 %.041.1.i, %i.cv
  %i.ei = sext i32 %.041.1.i to i64
  %i.ej = getelementptr i8, ptr %i.a, i64 %i.ei
  %i.ek = sext i32 %i.ef to i64                   ; 2 uses
  %i.el = call i64 @drm_dp_dpcd_write(ptr noundef %i.eg, i32 noundef %i.eh, ptr noundef %i.ej, i64 noundef range(i64 -2147483648, 2147483648) %i.ek) #23 ; 2 uses
  %i.em = trunc i64 %i.el to i32                  ; 2 uses
  %i.en = icmp slt i32 %i.em, 0                   ; 2 uses
  %i.eo = and i64 %i.el, 2147483647
  %i.ep = icmp ult i64 %i.eo, %i.ek               ; 2 uses
  %..i.1.i = select i1 %i.ep, i32 -71, i32 0
  %.0.i.1.i = select i1 %i.en, i32 %i.em, i32 %..i.1.i ; 2 uses
  %i.eq = icmp eq i32 %.0.i.1.i, -5
  br i1 %i.eq, label %.split.2.i, label %bb.l

bb.l:                                             ; preds = %.split.1.i
  %i.er = or i1 %i.en, %i.ep
  br i1 %i.er, label %.split52.us.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.es = add i32 %i.ef, %.041.1.i
  %i.et = sub nuw nsw i32 %.042.1.i, %i.ef        ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.split.1.i, label %.loopexit, !llvm.loop !175

.split.2.i:                                       ; preds = %.split.1.i, %bb.o
  %.042.2.i = phi i32 [ %i.fl, %bb.o ], [ %i.cu, %.split.1.i ] ; 2 uses
  %.041.2.i = phi i32 [ %i.fk, %bb.o ], [ 0, %.split.1.i ] ; 3 uses
  %i.ev = load i32, ptr %i.cw, align 8
  %i.ew = call i32 @llvm.smin.i32(i32 %.042.2.i, i32 %i.ev)
  %i.ex = call i32 @llvm.smin.i32(i32 %i.ew, i32 16) ; 4 uses
  %i.ey = load ptr, ptr %i.cx, align 8
  %i.ez = add i32 %.041.2.i, %i.cv
  %i.fa = sext i32 %.041.2.i to i64
  %i.fb = getelementptr i8, ptr %i.a, i64 %i.fa
  %i.fc = sext i32 %i.ex to i64                   ; 2 uses
  %i.fd = call i64 @drm_dp_dpcd_write(ptr noundef %i.ey, i32 noundef %i.ez, ptr noundef %i.fb, i64 noundef range(i64 -2147483648, 2147483648) %i.fc) #23 ; 2 uses
  %i.fe = trunc i64 %i.fd to i32                  ; 2 uses
  %i.ff = icmp slt i32 %i.fe, 0                   ; 2 uses
  %i.fg = and i64 %i.fd, 2147483647
  %i.fh = icmp ult i64 %i.fg, %i.fc               ; 2 uses
  %..i.2.i = select i1 %i.fh, i32 -71, i32 0
  %.0.i.2.i = select i1 %i.ff, i32 %i.fe, i32 %..i.2.i ; 2 uses
  %i.fi = icmp eq i32 %.0.i.2.i, -5
  br i1 %i.fi, label %.split.3.i, label %bb.n

bb.n:                                             ; preds = %.split.2.i
  %i.fj = or i1 %i.ff, %i.fh
  br i1 %i.fj, label %.split52.us.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fk = add i32 %i.ex, %.041.2.i
  %i.fl = sub nuw nsw i32 %.042.2.i, %i.ex        ; 2 uses
  %i.fm = icmp sgt i32 %i.fl, 0
  br i1 %i.fm, label %.split.2.i, label %.loopexit, !llvm.loop !175

.split.3.i:                                       ; preds = %.split.2.i, %bb.q
  %.042.3.i = phi i32 [ %i.gd, %bb.q ], [ %i.cu, %.split.2.i ] ; 2 uses
  %.041.3.i = phi i32 [ %i.gc, %bb.q ], [ 0, %.split.2.i ] ; 3 uses
  %i.fn = load i32, ptr %i.cw, align 8
  %i.fo = call i32 @llvm.smin.i32(i32 %.042.3.i, i32 %i.fn)
  %i.fp = call i32 @llvm.smin.i32(i32 %i.fo, i32 16) ; 4 uses
  %i.fq = load ptr, ptr %i.cx, align 8
  %i.fr = add i32 %.041.3.i, %i.cv
  %i.fs = sext i32 %.041.3.i to i64
  %i.ft = getelementptr i8, ptr %i.a, i64 %i.fs
  %i.fu = sext i32 %i.fp to i64                   ; 2 uses
  %i.fv = call i64 @drm_dp_dpcd_write(ptr noundef %i.fq, i32 noundef %i.fr, ptr noundef %i.ft, i64 noundef range(i64 -2147483648, 2147483648) %i.fu) #23 ; 2 uses
  %i.fw = trunc i64 %i.fv to i32                  ; 2 uses
  %i.fx = icmp slt i32 %i.fw, 0                   ; 2 uses
  %i.fy = and i64 %i.fv, 2147483647
  %i.fz = icmp ult i64 %i.fy, %i.fu               ; 2 uses
  %..i.3.i = select i1 %i.fz, i32 -71, i32 0
  %.0.i.3.i = select i1 %i.fx, i32 %i.fw, i32 %..i.3.i ; 2 uses
  %i.ga = icmp eq i32 %.0.i.3.i, -5
  br i1 %i.ga, label %.split.4.i, label %bb.p

bb.p:                                             ; preds = %.split.3.i
  %i.gb = or i1 %i.fx, %i.fz
  br i1 %i.gb, label %.split52.us.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gc = add i32 %i.fp, %.041.3.i
  %i.gd = sub nuw nsw i32 %.042.3.i, %i.fp        ; 2 uses
  %i.ge = icmp sgt i32 %i.gd, 0
  br i1 %i.ge, label %.split.3.i, label %.loopexit, !llvm.loop !175

.split.4.i:                                       ; preds = %.split.3.i, %bb.s
  %.042.4.i = phi i32 [ %i.gv, %bb.s ], [ %i.cu, %.split.3.i ] ; 2 uses
  %.041.4.i = phi i32 [ %i.gu, %bb.s ], [ 0, %.split.3.i ] ; 3 uses
  %i.gf = load i32, ptr %i.cw, align 8
  %i.gg = call i32 @llvm.smin.i32(i32 %.042.4.i, i32 %i.gf)
  %i.gh = call i32 @llvm.smin.i32(i32 %i.gg, i32 16) ; 4 uses
  %i.gi = load ptr, ptr %i.cx, align 8
  %i.gj = add i32 %.041.4.i, %i.cv
  %i.gk = sext i32 %.041.4.i to i64
  %i.gl = getelementptr i8, ptr %i.a, i64 %i.gk
  %i.gm = sext i32 %i.gh to i64                   ; 2 uses
  %i.gn = call i64 @drm_dp_dpcd_write(ptr noundef %i.gi, i32 noundef %i.gj, ptr noundef %i.gl, i64 noundef range(i64 -2147483648, 2147483648) %i.gm) #23 ; 2 uses
  %i.go = trunc i64 %i.gn to i32                  ; 2 uses
  %i.gp = icmp slt i32 %i.go, 0                   ; 2 uses
  %i.gq = and i64 %i.gn, 2147483647
  %i.gr = icmp ult i64 %i.gq, %i.gm               ; 2 uses
  %..i.4.i = select i1 %i.gr, i32 -71, i32 0
  %.0.i.4.i = select i1 %i.gp, i32 %i.go, i32 %..i.4.i ; 2 uses
  %i.gs = icmp eq i32 %.0.i.4.i, -5
  br i1 %i.gs, label %.split.us.i, label %bb.r

bb.r:                                             ; preds = %.split.4.i
  %i.gt = or i1 %i.gp, %i.gr
  br i1 %i.gt, label %.split52.us.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gu = add i32 %i.gh, %.041.4.i
  %i.gv = sub nuw nsw i32 %.042.4.i, %i.gh        ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %.split.4.i, label %.loopexit, !llvm.loop !175

bb.t:                                             ; preds = %bb.k
  %i.gx = or i1 %i.dz, %i.eb
  br i1 %i.gx, label %.split52.us.i, label %bb.v

.split52.us.loopexit.i:                           ; preds = %.split.us.i
  %..i.us.i = select i1 %i.dk, i32 -71, i32 0
  %.0.i.us.i = select i1 %i.di, i32 %i.dh, i32 %..i.us.i
  br label %.split52.us.i

.split52.us.i:                                    ; preds = %bb.t, %bb.l, %bb.n, %bb.p, %bb.r, %.split52.us.loopexit.i
  %.us-phi.i = phi i32 [ %i.da, %.split52.us.loopexit.i ], [ %i.ex, %bb.n ], [ %i.fp, %bb.p ], [ %i.gh, %bb.r ], [ %i.ef, %bb.l ], [ %i.dr, %bb.t ]
  %.us-phi53.i = phi i32 [ %.0.i.us.i, %.split52.us.loopexit.i ], [ %.0.i.2.i, %bb.n ], [ %.0.i.3.i, %bb.p ], [ %.0.i.4.i, %bb.r ], [ %.0.i.1.i, %bb.l ], [ %.0.i.i, %bb.t ]
  %i.gy = getelementptr i8, ptr %0, i64 88        ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8            ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i43, label %bb.w, label %bb.u

bb.u:                                             ; preds = %.split52.us.i
  %i.ha = getelementptr i8, ptr %i.gz, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.hc = add i32 %i.dr, %.041.i
  %i.hd = sub nuw nsw i32 %.042.i, %i.dr          ; 2 uses
  %i.he = icmp sgt i32 %i.hd, 0
  br i1 %i.he, label %bb.k, label %.loopexit, !llvm.loop !175

bb.w:                                             ; preds = %bb.u, %.split52.us.i
  %i.hf = phi ptr [ %i.hb, %bb.u ], [ null, %.split52.us.i ]
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.hf, i32 noundef 2, ptr noundef nonnull @.str.112, i32 noundef %.us-phi.i, i32 noundef %.us-phi53.i) #23
  %i.hg = load i64, ptr @__drm_debug, align 8
  %i.hh = and i64 %i.hg, 256
  %.not48 = icmp eq i64 %i.hh, 0
  br i1 %.not48, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.hi = load ptr, ptr %i.gy, align 8
  store ptr @__drm_printfn_dbg, ptr %3, align 8, !alias.scope !179
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.hj, align 8, !alias.scope !179
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.hi, ptr %i.hk, align 8, !alias.scope !179
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hm = tail call i64 asm "lea 0(%rip), $0", "=r,~{dirflag},~{fpsr},~{flags}"() #26, !srcloc !26
  %i.hn = inttoptr i64 %i.hm to ptr
  store ptr %i.hn, ptr %i.hl, align 8, !alias.scope !179
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr @.str.101, ptr %i.ho, align 8, !alias.scope !179
  %i.hp = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.hp, align 8, !alias.scope !179
  %i.hq = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 8, ptr %i.hq, align 8, !alias.scope !179
  %i.hr = getelementptr inbounds nuw i8, ptr %3, i64 52
  store i32 0, ptr %i.hr, align 4, !alias.scope !179
  call void (ptr, ptr, ...) @drm_printf(ptr noundef nonnull %3, ptr noundef nonnull @.str.111) #23
  call fastcc void @drm_dp_mst_dump_sideband_msg_tx(ptr noundef nonnull %3, ptr noundef %1) #24, !srcloc !180
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.z

.loopexit:                                        ; preds = %bb.v, %bb.m, %bb.o, %bb.q, %bb.s, %bb.j
  %i.hs = load i8, ptr %i.y, align 8
  %i.ht = add i8 %i.hs, %i.cq                     ; 2 uses
  store i8 %i.ht, ptr %i.y, align 8
  %i.hu = load i8, ptr %i.v, align 1
  %i.hv = icmp eq i8 %i.ht, %i.hu
  br i1 %i.hv, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.loopexit
  store i32 2, ptr %i.b, align 4
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bb.w, %bb.x, %bb.a, %bb.y
  %.0 = phi i32 [ 1, %bb.y ], [ -5, %bb.w ], [ 0, %bb.a ], [ -5, %bb.x ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong memory(argmem: read)
define internal fastcc zeroext i8 @drm_dp_msg_data_crc4(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1) unnamed_addr #13 align 16 prefalign(16) {
bb.a:
  %.not31 = icmp eq i8 %1, 0
  br i1 %.not31, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i8 %1 to i32
  %i.b = shl nuw nsw i32 %i.a, 3
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i16 [ 0, %bb.a ], [ %.1, %.lr.ph ] ; 2 uses
  %i.c = shl i16 %.0.lcssa, 1                     ; 2 uses
  %i.d = and i16 %.0.lcssa, 128
  %.not29 = icmp eq i16 %i.d, 0
  %i.e = xor i16 %i.c, 213
  %spec.select = select i1 %.not29, i16 %i.c, i16 %i.e ; 2 uses
  %i.f = shl i16 %spec.select, 1                  ; 2 uses
  %i.g = and i16 %spec.select, 128
  %.not29.1 = icmp eq i16 %i.g, 0
  %i.h = xor i16 %i.f, 213
  %spec.select.1 = select i1 %.not29.1, i16 %i.f, i16 %i.h ; 2 uses
  %i.i = shl i16 %spec.select.1, 1                ; 2 uses
  %i.j = and i16 %spec.select.1, 128
  %.not29.2 = icmp eq i16 %i.j, 0
  %i.k = xor i16 %i.i, 213
  %spec.select.2 = select i1 %.not29.2, i16 %i.i, i16 %i.k ; 2 uses
  %i.l = shl i16 %spec.select.2, 1                ; 2 uses
  %i.m = and i16 %spec.select.2, 128
  %.not29.3 = icmp eq i16 %i.m, 0
  %i.n = xor i16 %i.l, 213
  %spec.select.3 = select i1 %.not29.3, i16 %i.l, i16 %i.n ; 2 uses
  %i.o = shl i16 %spec.select.3, 1                ; 2 uses
  %i.p = and i16 %spec.select.3, 128
  %.not29.4 = icmp eq i16 %i.p, 0
  %i.q = xor i16 %i.o, 213
  %spec.select.4 = select i1 %.not29.4, i16 %i.o, i16 %i.q ; 2 uses
  %i.r = shl i16 %spec.select.4, 1                ; 2 uses
  %i.s = and i16 %spec.select.4, 128
  %.not29.5 = icmp eq i16 %i.s, 0
  %i.t = xor i16 %i.r, 213
  %spec.select.5 = select i1 %.not29.5, i16 %i.r, i16 %i.t ; 2 uses
  %i.u = shl i16 %spec.select.5, 1                ; 2 uses
  %i.v = and i16 %spec.select.5, 128
  %.not29.6 = icmp eq i16 %i.v, 0
  %i.w = xor i16 %i.u, 213
  %spec.select.6 = select i1 %.not29.6, i16 %i.u, i16 %i.w ; 2 uses
  %i.x = shl i16 %spec.select.6, 1                ; 2 uses
  %i.y = and i16 %spec.select.6, 128
  %.not29.7 = icmp eq i16 %i.y, 0
  %i.z = xor i16 %i.x, 213
  %spec.select.7 = select i1 %.not29.7, i16 %i.x, i16 %i.z
  %i.aa = trunc i16 %spec.select.7 to i8
  ret i8 %i.aa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.036 = phi i16 [ %.1, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02035 = phi i32 [ %i.ab, %.lr.ph ], [ %i.b, %.lr.ph.preheader ]
  %.02234 = phi i8 [ %.123, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02433 = phi i8 [ %.125, %.lr.ph ], [ 7, %.lr.ph.preheader ] ; 2 uses
  %.02632 = phi i32 [ %.127, %.lr.ph ], [ 128, %.lr.ph.preheader ] ; 2 uses
  %i.ab = add nsw i32 %.02035, -1                 ; 2 uses
  %i.ac = shl i16 %.036, 1
  %i.ad = zext i8 %.02234 to i64
  %i.ae = getelementptr i8, ptr %0, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = and i32 %.02632, %i.ag
  %i.ai = zext nneg i8 %.02433 to i32
  %i.aj = lshr i32 %i.ah, %i.ai
  %i.ak = trunc nuw nsw i32 %i.aj to i16
  %i.al = or i16 %i.ac, %i.ak                     ; 2 uses
  %i.am = lshr i32 %.02632, 1
  %i.an = and i32 %i.am, 127                      ; 2 uses
  %i.ao = add i8 %.02433, -1
  %i.ap = icmp eq i32 %i.an, 0                    ; 3 uses
  %.127 = select i1 %i.ap, i32 128, i32 %i.an
  %.125 = select i1 %i.ap, i8 7, i8 %i.ao
  %i.aq = zext i1 %i.ap to i8
  %.123 = add i8 %.02234, %i.aq
  %i.ar = and i16 %.036, 128
  %.not30 = icmp eq i16 %i.ar, 0
  %i.as = xor i16 %i.al, 213
  %.1 = select i1 %.not30, i16 %i.al, i16 %i.as   ; 2 uses
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !181
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @schedule_timeout(i64 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__might_resched() local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write_payload(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -22, 1) i32 @drm_dp_payload_send_msg(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 256) %2, i32 noundef %3) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.drm_printer, align 8        ; 11 uses
  %5 = alloca %struct.drm_dp_sideband_msg_req_body, align 8 ; 10 uses
  %i.a = alloca [16 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !annotation !25
  %i.b = getelementptr i8, ptr %1, i64 8
  %i.c = load i8, ptr %i.b, align 8               ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 1376       ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call fastcc ptr @drm_dp_mst_topology_get_mstb_validated(ptr noundef %0, ptr noundef %i.e) #24, !srcloc !187 ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.b, label %_kzalloc_noprof.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.d, align 8
  %i.h = getelementptr i8, ptr %0, i64 784        ; 3 uses
  tail call void @mutex_lock(ptr noundef %i.h) #23
  %i.i = getelementptr i8, ptr %0, i64 840
  %i.j = load ptr, ptr %i.i, align 8
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %drm_dp_get_last_connected_port_and_mstb.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b, %bb.h
  %.146 = phi i8 [ %.2, %bb.h ], [ %i.c, %bb.b ]
  %.012.i = phi ptr [ %.113.i, %bb.h ], [ %i.g, %bb.b ] ; 3 uses
  %i.k = getelementptr i8, ptr %.012.i, i64 56
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.l, null
  br i1 %.not8.i.i, label %drm_dp_get_last_connected_port_and_mstb.exit.thread, label %.lr.ph.i.i
end_hunk_0
