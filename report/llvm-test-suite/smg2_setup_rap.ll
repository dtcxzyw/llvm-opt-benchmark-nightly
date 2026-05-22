begin_hunk_0_@hypre_SMG2BuildRAPSym:bb.a
  %i.ca = call i32 @llvm.smax.i32(i32 %i.bz, i32 -1)
  %i.cb = add i32 %i.ca, 1                        ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.cf = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.cg = load i32, ptr %i.av, align 4, !tbaa !4
  %i.ch = sub i32 %i.cf, %i.cg
  %i.ci = call i32 @llvm.smax.i32(i32 %i.ch, i32 -1)
  %i.cj = add i32 %i.ci, 1                        ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.ck = call i32 @hypre_BoxGetSize(ptr noundef %i.ao, ptr noundef nonnull %i.c) #5 ; 0 uses
  %i.cl = load i32, ptr %i.ao, align 4, !tbaa !4  ; 5 uses
  %i.cm = load i32, ptr %i.av, align 4, !tbaa !4  ; 3 uses
  %i.cn = sub i32 %i.cl, %i.cm                    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !4  ; 5 uses
  %i.cq = load i32, ptr %i.ce, align 4, !tbaa !4  ; 2 uses
  %i.cr = sub i32 %i.cp, %i.cq                    ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 6 uses
  %i.ct = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cu = sub nsw i32 %i.ct, %i.cq                ; 5 uses
  %i.cv = icmp sgt i32 %i.cu, -1                  ; 4 uses
  br i1 %cond, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  br i1 %i.cv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cw = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !4
  %i.cz = sub nsw i32 %i.cw, %i.cy
  %i.da = add nuw nsw i32 %i.cu, 1
  %i.db = mul nsw i32 %i.cz, %i.da
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.dc = phi i32 [ %i.db, %bb.g ], [ 0, %bb.f ]
  %i.dd = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.de = sub i32 %i.dd, %i.cm                    ; 2 uses
  %i.df = icmp sgt i32 %i.de, -1                  ; 2 uses
  %i.dg = add nsw i32 %i.cr, %i.dc
  %i.dh = add i32 %i.de, 1                        ; 2 uses
  %i.di = mul nsw i32 %i.dh, %i.dg
  %i.dj = select i1 %i.df, i32 %i.di, i32 0
  %i.dk = add nsw i32 %i.cn, %i.dj
  %i.dl = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.dm = sub i32 %i.cl, %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4  ; 2 uses
  %i.dp = sub i32 %i.cp, %i.do
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !4
  %i.dt = sub nsw i32 %i.ds, %i.do                ; 3 uses
  %i.du = icmp sgt i32 %i.dt, -1                  ; 2 uses
  br i1 %i.du, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dv = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !4
  %i.dy = sub nsw i32 %i.dv, %i.dx
  %i.dz = add nuw nsw i32 %i.dt, 1
  %i.ea = mul nsw i32 %i.dy, %i.dz
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.eb = phi i32 [ %i.ea, %bb.i ], [ 0, %bb.h ]
  %i.ec = load i32, ptr %i.dq, align 4, !tbaa !4
  %i.ed = sub i32 %i.ec, %i.dl                    ; 2 uses
  %i.ee = icmp sgt i32 %i.ed, -1                  ; 2 uses
  %i.ef = add nsw i32 %i.dp, %i.eb
  %i.eg = add i32 %i.ed, 1                        ; 2 uses
  %i.eh = mul nsw i32 %i.eg, %i.ef
  %i.ei = select i1 %i.ee, i32 %i.eh, i32 0
  %i.ej = add nsw i32 %i.dm, %i.ei
  %i.ek = load i32, ptr %i.b, align 4, !tbaa !4
  %i.el = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %i.em = sub i32 %i.ek, %i.el
  %i.en = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.eo = load i32, ptr %i.bw, align 4, !tbaa !4  ; 2 uses
  %i.ep = sub i32 %i.en, %i.eo
  %i.eq = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.er = sub nsw i32 %i.eq, %i.eo                ; 3 uses
  %i.es = icmp sgt i32 %i.er, -1                  ; 2 uses
  br i1 %i.es, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.et = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !4
  %i.ew = sub nsw i32 %i.et, %i.ev
  %i.ex = add nuw nsw i32 %i.er, 1
  %i.ey = mul nsw i32 %i.ew, %i.ex
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ez = phi i32 [ %i.ey, %bb.k ], [ 0, %bb.j ]
  %i.fa = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.fb = sub nsw i32 %i.fa, %i.el                ; 2 uses
  %i.fc = icmp sgt i32 %i.fb, -1                  ; 2 uses
  %i.fd = add nsw i32 %i.ep, %i.ez
  %i.fe = add nuw nsw i32 %i.fb, 1                ; 3 uses
  %i.ff = mul nsw i32 %i.fe, %i.fd
  %i.fg = select i1 %i.fc, i32 %i.ff, i32 0
  %i.fh = add nsw i32 %i.em, %i.fg
  %i.fi = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.fj = sub i32 %i.cl, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !4  ; 2 uses
  %i.fm = sub i32 %i.cp, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !4
  %i.fq = sub nsw i32 %i.fp, %i.fl                ; 3 uses
  %i.fr = icmp sgt i32 %i.fq, -1                  ; 2 uses
  br i1 %i.fr, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fs = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4
  %i.fv = sub nsw i32 %i.fs, %i.fu
  %i.fw = add nuw nsw i32 %i.fq, 1
  %i.fx = mul nsw i32 %i.fv, %i.fw
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.fy = phi i32 [ %i.fx, %bb.m ], [ 0, %bb.l ]
  %i.fz = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.ga = sub i32 %i.fz, %i.fi                    ; 2 uses
  %i.gb = icmp sgt i32 %i.ga, -1                  ; 2 uses
  %i.gc = add nsw i32 %i.fm, %i.fy
  %i.gd = add i32 %i.ga, 1                        ; 2 uses
  %i.ge = mul nsw i32 %i.gd, %i.gc
  %i.gf = select i1 %i.gb, i32 %i.ge, i32 0
  %i.gg = add nsw i32 %i.fj, %i.gf
  %i.gh = select i1 %i.df, i32 %i.dh, i32 0       ; 3 uses
  %i.gi = add nuw nsw i32 %i.cu, 1
  %i.gj = mul nsw i32 %i.gh, %i.gi
  %i.gk = select i1 %i.cv, i32 %i.gj, i32 0
  %i.gl = select i1 %i.ee, i32 %i.eg, i32 0       ; 3 uses
  %i.gm = add nuw nsw i32 %i.dt, 1
  %i.gn = mul nsw i32 %i.gl, %i.gm
  %i.go = select i1 %i.du, i32 %i.gn, i32 0
  %i.gp = load i32, ptr %5, align 4, !tbaa !4     ; 3 uses
  br i1 %i.fc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gq = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.gr = mul nsw i32 %i.gq, %i.fe
  %i.gs = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.gt = mul nsw i32 %i.gs, %i.fe
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.gu = phi i32 [ %i.gr, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.gv = phi i32 [ %i.gt, %bb.o ], [ 0, %bb.n ]
  %i.gw = load i32, ptr %i.c, align 4, !tbaa !4   ; 10 uses
  %i.gx = load i32, ptr %i.af, align 4, !tbaa !4  ; 7 uses
  %i.gy = load i32, ptr %i.ag, align 4, !tbaa !4  ; 3 uses
  %.0866 = call i32 @llvm.smax.i32(i32 %i.gx, i32 %i.gw)
  %.1867 = call i32 @llvm.smax.i32(i32 %i.gy, i32 %.0866)
  %i.gz = icmp sgt i32 %.1867, 0
  br i1 %i.gz, label %.preheader954.lr.ph, label %.loopexit957

.preheader954.lr.ph:                              ; preds = %bb.p
  %i.ha = select i1 %i.gb, i32 %i.gd, i32 0       ; 3 uses
  %factor.op.mul1077 = mul i32 %i.gx, %i.ha
  %factor.op.mul1076 = mul i32 %i.gx, %i.gu
  %factor.op.mul1075 = mul i32 %i.gx, %i.gl
  %factor.op.mul1074 = mul i32 %i.gx, %i.gh
  %i.hb = add nuw nsw i32 %i.fq, 1
  %i.hc = mul nsw i32 %i.ha, %i.hb
  %i.hd = select i1 %i.fr, i32 %i.hc, i32 0
  %i.he = add nuw nsw i32 %i.er, 1
  %i.hf = mul nsw i32 %i.gv, %i.he
  %i.hg = select i1 %i.es, i32 %i.hf, i32 0
  %i.hh = mul i32 %i.gw, %i.gp
  %i.hi = icmp slt i32 %i.gy, 1
  %i.hj = icmp slt i32 %i.gw, 1
  %i.hk = sub i32 %i.gh, %i.gw
  %i.hl = sub i32 %i.gl, %i.gw
  %i.hm = sub i32 %i.gu, %i.hh
  %i.hn = sub i32 %i.ha, %i.gw
  %i.ho = sub i32 %i.gk, %factor.op.mul1074
  %i.hp = sub i32 %i.go, %factor.op.mul1075
  %i.hq = sub i32 %i.hg, %factor.op.mul1076
  %i.hr = sub i32 %i.hd, %factor.op.mul1077
  %i.hs = icmp slt i32 %i.gx, 1
  %or.cond.not1207 = or i1 %i.hi, %i.hs
  %brmerge = or i1 %or.cond.not1207, %i.hj
  br i1 %brmerge, label %.loopexit957, label %.preheader952.us.us.us.us.us.preheader

.preheader952.us.us.us.us.us.preheader:           ; preds = %.preheader954.lr.ph
  %i.ht = sext i32 %i.gp to i64
  %6 = sext i32 %i.cb to i64                      ; 7 uses
  %7 = sext i32 %i.cj to i64                      ; 4 uses
  %scevgep1216 = getelementptr i8, ptr %i.bs, i64 8
  %i.hu = add nsw i32 %i.gw, -1
  %i.hv = zext i32 %i.hu to i64                   ; 3 uses
  %i.hw = shl nuw nsw i64 %i.hv, 3                ; 16 uses
  %scevgep1217 = getelementptr i8, ptr %scevgep1216, i64 %i.hw
  %scevgep1220 = getelementptr i8, ptr %i.br, i64 8
  %scevgep1221 = getelementptr i8, ptr %scevgep1220, i64 %i.hw
  %scevgep1224 = getelementptr i8, ptr %i.bt, i64 8
  %scevgep1225 = getelementptr i8, ptr %scevgep1224, i64 %i.hw
  %scevgep1228 = getelementptr i8, ptr %i.bq, i64 8
  %scevgep1229 = getelementptr i8, ptr %scevgep1228, i64 %i.hw
  %scevgep1232 = getelementptr i8, ptr %i.bp, i64 8
  %scevgep1233 = getelementptr i8, ptr %scevgep1232, i64 %i.hw
  %scevgep1236 = getelementptr i8, ptr %i.bf, i64 8
  %scevgep1237 = getelementptr i8, ptr %scevgep1236, i64 %i.hw
  %scevgep1240 = getelementptr i8, ptr %i.bh, i64 8
  %scevgep1241 = getelementptr i8, ptr %scevgep1240, i64 %i.hw
  %scevgep1244 = getelementptr i8, ptr %i.bh, i64 8
  %scevgep1245 = getelementptr i8, ptr %scevgep1244, i64 %i.hw
  %i.hx = mul nsw i64 %6, -8                      ; 5 uses
  %scevgep1247 = getelementptr i8, ptr %i.bh, i64 %i.hx
  %scevgep1249 = getelementptr i8, ptr %i.bh, i64 8
  %i.hy = sub nsw i64 %i.hv, %6
  %i.hz = shl nsw i64 %i.hy, 3                    ; 5 uses
  %scevgep1250 = getelementptr i8, ptr %scevgep1249, i64 %i.hz
  %scevgep1252 = getelementptr i8, ptr %i.bc, i64 -8
  %scevgep1254 = getelementptr i8, ptr %i.bc, i64 8
  %scevgep1255 = getelementptr i8, ptr %scevgep1254, i64 %i.hw
  %scevgep1257 = getelementptr i8, ptr %i.bc, i64 -8
  %i.ia = mul nsw i64 %7, -8
  %scevgep1258 = getelementptr i8, ptr %scevgep1257, i64 %i.ia
  %scevgep1260 = getelementptr i8, ptr %i.bc, i64 16
  %i.ib = sub nsw i64 %i.hv, %7
  %i.ic = shl nsw i64 %i.ib, 3
  %scevgep1261 = getelementptr i8, ptr %scevgep1260, i64 %i.ic
  %scevgep1264 = getelementptr i8, ptr %i.bg, i64 8
  %scevgep1265 = getelementptr i8, ptr %scevgep1264, i64 %i.hw
  %scevgep1268 = getelementptr i8, ptr %i.bg, i64 8
  %scevgep1269 = getelementptr i8, ptr %scevgep1268, i64 %i.hw
  %scevgep1271 = getelementptr i8, ptr %i.bg, i64 %i.hx
  %scevgep1273 = getelementptr i8, ptr %i.bg, i64 8
  %scevgep1274 = getelementptr i8, ptr %scevgep1273, i64 %i.hz
  %scevgep1277 = getelementptr i8, ptr %i.bj, i64 8
  %scevgep1278 = getelementptr i8, ptr %scevgep1277, i64 %i.hw
  %scevgep1281 = getelementptr i8, ptr %i.bj, i64 8
  %scevgep1282 = getelementptr i8, ptr %scevgep1281, i64 %i.hw
  %scevgep1284 = getelementptr i8, ptr %i.bj, i64 %i.hx
  %scevgep1286 = getelementptr i8, ptr %i.bj, i64 8
  %scevgep1287 = getelementptr i8, ptr %scevgep1286, i64 %i.hz
  %scevgep1289 = getelementptr i8, ptr %i.bi, i64 %i.hx
  %scevgep1291 = getelementptr i8, ptr %i.bi, i64 8
  %scevgep1292 = getelementptr i8, ptr %scevgep1291, i64 %i.hz
  %scevgep1294 = getelementptr i8, ptr %i.bd, i64 -8
  %scevgep1296 = getelementptr i8, ptr %i.bd, i64 8
  %scevgep1297 = getelementptr i8, ptr %scevgep1296, i64 %i.hw
  %scevgep1300 = getelementptr i8, ptr %i.be, i64 8
  %scevgep1301 = getelementptr i8, ptr %scevgep1300, i64 %i.hw
  %scevgep1304 = getelementptr i8, ptr %i.bk, i64 8
  %scevgep1305 = getelementptr i8, ptr %scevgep1304, i64 %i.hw
  %scevgep1307 = getelementptr i8, ptr %i.bk, i64 %i.hx
  %scevgep1309 = getelementptr i8, ptr %i.bk, i64 8
  %scevgep1310 = getelementptr i8, ptr %scevgep1309, i64 %i.hz
  %i.id = zext nneg i32 %i.gw to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.gw, 19
  %ident.check.not = icmp eq i32 %i.gp, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.id, 2147483646              ; 7 uses
  %i.ie = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.id
  br label %.preheader952.us.us.us.us.us

.preheader952.us.us.us.us.us:                     ; preds = %.preheader952.us.us.us.us.us.preheader, %._crit_edge1040.split.us.us.us.us.us.us
  %.18221060.us.us.us.us.us = phi i32 [ %i.ol, %._crit_edge1040.split.us.us.us.us.us.us ], [ 0, %.preheader952.us.us.us.us.us.preheader ]
  %.08311059.us.us.us.us.us = phi i32 [ %i.oj, %._crit_edge1040.split.us.us.us.us.us.us ], [ %i.fh, %.preheader952.us.us.us.us.us.preheader ]
  %.08351058.us.us.us.us.us = phi i32 [ %i.ok, %._crit_edge1040.split.us.us.us.us.us.us ], [ %i.gg, %.preheader952.us.us.us.us.us.preheader ]
  %.08411057.us.us.us.us.us = phi i32 [ %i.oh, %._crit_edge1040.split.us.us.us.us.us.us ], [ %i.dk, %.preheader952.us.us.us.us.us.preheader ]
  %.08471056.us.us.us.us.us = phi i32 [ %i.oi, %._crit_edge1040.split.us.us.us.us.us.us ], [ %i.ej, %.preheader952.us.us.us.us.us.preheader ]
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge.us.us.us.us.us.us1094, %.preheader952.us.us.us.us.us
  %.18181039.us.us.us.us.us.us = phi i32 [ 0, %.preheader952.us.us.us.us.us ], [ %i.og, %._crit_edge.us.us.us.us.us.us1094 ]
  %.18321038.us.us.us.us.us.us = phi i32 [ %.08311059.us.us.us.us.us, %.preheader952.us.us.us.us.us ], [ %i.oe, %._crit_edge.us.us.us.us.us.us1094 ]
  %.18361037.us.us.us.us.us.us = phi i32 [ %.08351058.us.us.us.us.us, %.preheader952.us.us.us.us.us ], [ %i.of, %._crit_edge.us.us.us.us.us.us1094 ]
  %.18421036.us.us.us.us.us.us = phi i32 [ %.08411057.us.us.us.us.us, %.preheader952.us.us.us.us.us ], [ %i.oc, %._crit_edge.us.us.us.us.us.us1094 ]
  %.18481035.us.us.us.us.us.us = phi i32 [ %.08471056.us.us.us.us.us, %.preheader952.us.us.us.us.us ], [ %i.od, %._crit_edge.us.us.us.us.us.us1094 ]
  %i.if = sext i32 %.18321038.us.us.us.us.us.us to i64 ; 6 uses
  %i.ig = sext i32 %.18361037.us.us.us.us.us.us to i64 ; 5 uses
  %i.ih = sext i32 %.18421036.us.us.us.us.us.us to i64 ; 5 uses
  %i.ii = sext i32 %.18481035.us.us.us.us.us.us to i64 ; 5 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us.us.us.us
  %i.ij = shl nsw i64 %i.ig, 3                    ; 10 uses
  %scevgep = getelementptr i8, ptr %i.bs, i64 %i.ij ; 21 uses
  %scevgep1218 = getelementptr i8, ptr %scevgep1217, i64 %i.ij ; 21 uses
  %scevgep1219 = getelementptr i8, ptr %i.br, i64 %i.ij ; 21 uses
  %scevgep1222 = getelementptr i8, ptr %scevgep1221, i64 %i.ij ; 21 uses
  %scevgep1223 = getelementptr i8, ptr %i.bt, i64 %i.ij ; 21 uses
  %scevgep1226 = getelementptr i8, ptr %scevgep1225, i64 %i.ij ; 21 uses
  %scevgep1227 = getelementptr i8, ptr %i.bq, i64 %i.ij ; 21 uses
  %scevgep1230 = getelementptr i8, ptr %scevgep1229, i64 %i.ij ; 21 uses
  %scevgep1231 = getelementptr i8, ptr %i.bp, i64 %i.ij ; 21 uses
  %scevgep1234 = getelementptr i8, ptr %scevgep1233, i64 %i.ij ; 21 uses
  %i.ik = shl nsw i64 %i.ii, 3                    ; 4 uses
  %scevgep1235 = getelementptr i8, ptr %i.bf, i64 %i.ik ; 5 uses
  %scevgep1238 = getelementptr i8, ptr %scevgep1237, i64 %i.ik ; 5 uses
  %i.il = add nsw i64 %6, %i.if
  %i.im = shl nsw i64 %i.il, 3                    ; 6 uses
  %scevgep1239 = getelementptr i8, ptr %i.bh, i64 %i.im ; 5 uses
  %scevgep1242 = getelementptr i8, ptr %scevgep1241, i64 %i.im ; 5 uses
  %i.in = shl nsw i64 %i.if, 3                    ; 18 uses
  %scevgep1243 = getelementptr i8, ptr %i.bh, i64 %i.in ; 5 uses
  %scevgep1246 = getelementptr i8, ptr %scevgep1245, i64 %i.in ; 5 uses
  %scevgep1248 = getelementptr i8, ptr %scevgep1247, i64 %i.in ; 5 uses
  %scevgep1251 = getelementptr i8, ptr %scevgep1250, i64 %i.in ; 5 uses
  %i.io = shl nsw i64 %i.ih, 3                    ; 6 uses
  %scevgep1253 = getelementptr i8, ptr %scevgep1252, i64 %i.io ; 5 uses
  %scevgep1256 = getelementptr i8, ptr %scevgep1255, i64 %i.io ; 5 uses
  %scevgep1259 = getelementptr i8, ptr %scevgep1258, i64 %i.io ; 5 uses
  %scevgep1262 = getelementptr i8, ptr %scevgep1261, i64 %i.io ; 5 uses
  %scevgep1263 = getelementptr i8, ptr %i.bg, i64 %i.im ; 5 uses
  %scevgep1266 = getelementptr i8, ptr %scevgep1265, i64 %i.im ; 5 uses
  %scevgep1267 = getelementptr i8, ptr %i.bg, i64 %i.in ; 5 uses
  %scevgep1270 = getelementptr i8, ptr %scevgep1269, i64 %i.in ; 5 uses
  %scevgep1272 = getelementptr i8, ptr %scevgep1271, i64 %i.in ; 5 uses
  %scevgep1275 = getelementptr i8, ptr %scevgep1274, i64 %i.in ; 5 uses
  %scevgep1276 = getelementptr i8, ptr %i.bj, i64 %i.im ; 5 uses
  %scevgep1279 = getelementptr i8, ptr %scevgep1278, i64 %i.im ; 5 uses
  %scevgep1280 = getelementptr i8, ptr %i.bj, i64 %i.in ; 5 uses
  %scevgep1283 = getelementptr i8, ptr %scevgep1282, i64 %i.in ; 5 uses
  %scevgep1285 = getelementptr i8, ptr %scevgep1284, i64 %i.in ; 5 uses
  %scevgep1288 = getelementptr i8, ptr %scevgep1287, i64 %i.in ; 5 uses
  %scevgep1290 = getelementptr i8, ptr %scevgep1289, i64 %i.in ; 5 uses
  %scevgep1293 = getelementptr i8, ptr %scevgep1292, i64 %i.in ; 5 uses
  %scevgep1295 = getelementptr i8, ptr %scevgep1294, i64 %i.io ; 5 uses
  %scevgep1298 = getelementptr i8, ptr %scevgep1297, i64 %i.io ; 5 uses
  %scevgep1299 = getelementptr i8, ptr %i.be, i64 %i.ik ; 5 uses
  %scevgep1302 = getelementptr i8, ptr %scevgep1301, i64 %i.ik ; 5 uses
  %scevgep1303 = getelementptr i8, ptr %i.bk, i64 %i.in ; 5 uses
  %scevgep1306 = getelementptr i8, ptr %scevgep1305, i64 %i.in ; 5 uses
  %scevgep1308 = getelementptr i8, ptr %scevgep1307, i64 %i.in ; 5 uses
  %scevgep1311 = getelementptr i8, ptr %scevgep1310, i64 %i.in ; 5 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep1222
  %bound1 = icmp ult ptr %scevgep1219, %scevgep1218
  %found.conflict = and i1 %bound0, %bound1
  %bound01312 = icmp ult ptr %scevgep, %scevgep1226
  %bound11313 = icmp ult ptr %scevgep1223, %scevgep1218
  %found.conflict1314 = and i1 %bound01312, %bound11313
  %conflict.rdx = or i1 %found.conflict, %found.conflict1314
  %bound01315 = icmp ult ptr %scevgep, %scevgep1230
  %bound11316 = icmp ult ptr %scevgep1227, %scevgep1218
  %found.conflict1317 = and i1 %bound01315, %bound11316
  %conflict.rdx1318 = or i1 %conflict.rdx, %found.conflict1317
  %bound01319 = icmp ult ptr %scevgep, %scevgep1234
  %bound11320 = icmp ult ptr %scevgep1231, %scevgep1218
  %found.conflict1321 = and i1 %bound01319, %bound11320
  %conflict.rdx1322 = or i1 %conflict.rdx1318, %found.conflict1321
  %bound01323 = icmp ult ptr %scevgep, %scevgep1238
  %bound11324 = icmp ult ptr %scevgep1235, %scevgep1218
  %found.conflict1325 = and i1 %bound01323, %bound11324
  %conflict.rdx1326 = or i1 %conflict.rdx1322, %found.conflict1325
  %bound01327 = icmp ult ptr %scevgep, %scevgep1242
  %bound11328 = icmp ult ptr %scevgep1239, %scevgep1218
  %found.conflict1329 = and i1 %bound01327, %bound11328
  %conflict.rdx1330 = or i1 %conflict.rdx1326, %found.conflict1329
  %bound01331 = icmp ult ptr %scevgep, %scevgep1246
  %bound11332 = icmp ult ptr %scevgep1243, %scevgep1218
  %found.conflict1333 = and i1 %bound01331, %bound11332
  %conflict.rdx1334 = or i1 %conflict.rdx1330, %found.conflict1333
  %bound01335 = icmp ult ptr %scevgep, %scevgep1251
  %bound11336 = icmp ult ptr %scevgep1248, %scevgep1218
  %found.conflict1337 = and i1 %bound01335, %bound11336
  %conflict.rdx1338 = or i1 %conflict.rdx1334, %found.conflict1337
  %bound01339 = icmp ult ptr %scevgep, %scevgep1256
  %bound11340 = icmp ult ptr %scevgep1253, %scevgep1218
  %found.conflict1341 = and i1 %bound01339, %bound11340
  %conflict.rdx1342 = or i1 %conflict.rdx1338, %found.conflict1341
  %bound01343 = icmp ult ptr %scevgep, %scevgep1262
  %bound11344 = icmp ult ptr %scevgep1259, %scevgep1218
  %found.conflict1345 = and i1 %bound01343, %bound11344
  %conflict.rdx1346 = or i1 %conflict.rdx1342, %found.conflict1345
  %bound01347 = icmp ult ptr %scevgep, %scevgep1266
  %bound11348 = icmp ult ptr %scevgep1263, %scevgep1218
  %found.conflict1349 = and i1 %bound01347, %bound11348
  %conflict.rdx1350 = or i1 %conflict.rdx1346, %found.conflict1349
  %bound01351 = icmp ult ptr %scevgep, %scevgep1270
  %bound11352 = icmp ult ptr %scevgep1267, %scevgep1218
  %found.conflict1353 = and i1 %bound01351, %bound11352
  %conflict.rdx1354 = or i1 %conflict.rdx1350, %found.conflict1353
  %bound01355 = icmp ult ptr %scevgep, %scevgep1275
  %bound11356 = icmp ult ptr %scevgep1272, %scevgep1218
  %found.conflict1357 = and i1 %bound01355, %bound11356
  %conflict.rdx1358 = or i1 %conflict.rdx1354, %found.conflict1357
  %bound01359 = icmp ult ptr %scevgep, %scevgep1279
  %bound11360 = icmp ult ptr %scevgep1276, %scevgep1218
  %found.conflict1361 = and i1 %bound01359, %bound11360
  %conflict.rdx1362 = or i1 %conflict.rdx1358, %found.conflict1361
  %bound01363 = icmp ult ptr %scevgep, %scevgep1283
  %bound11364 = icmp ult ptr %scevgep1280, %scevgep1218
  %found.conflict1365 = and i1 %bound01363, %bound11364
end_hunk_0
begin_hunk_1_@hypre_SMG2BuildRAPSym:bb.a

._crit_edge.us.us.us.us.us.us1094:                ; preds = %scalar.ph, %middle.block
  %indvars.iv.next1157.lcssa = phi i64 [ %i.iq, %middle.block ], [ %indvars.iv.next1157, %scalar.ph ]
  %indvars.iv.next1159.lcssa = phi i64 [ %i.ip, %middle.block ], [ %indvars.iv.next1159, %scalar.ph ]
  %indvars.iv.next1153.lcssa = phi i64 [ %i.is, %middle.block ], [ %indvars.iv.next1153, %scalar.ph ]
  %indvars.iv.next1155.lcssa = phi i64 [ %i.ir, %middle.block ], [ %indvars.iv.next1155, %scalar.ph ]
  %i.ny = trunc nsw i64 %indvars.iv.next1159.lcssa to i32
  %i.nz = trunc nsw i64 %indvars.iv.next1157.lcssa to i32
  %i.oa = trunc nsw i64 %indvars.iv.next1155.lcssa to i32
  %i.ob = trunc nsw i64 %indvars.iv.next1153.lcssa to i32
  %i.oc = add nsw i32 %i.hk, %i.nz                ; 2 uses
  %i.od = add nsw i32 %i.hl, %i.ny                ; 2 uses
  %i.oe = add nsw i32 %i.hm, %i.ob                ; 2 uses
  %i.of = add nsw i32 %i.hn, %i.oa                ; 2 uses
  %i.og = add nuw nsw i32 %.18181039.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond1168.not = icmp eq i32 %i.og, %i.gx
  br i1 %exitcond1168.not, label %._crit_edge1040.split.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !91

._crit_edge1040.split.us.us.us.us.us.us:          ; preds = %._crit_edge.us.us.us.us.us.us1094
  %i.oh = add nsw i32 %i.ho, %i.oc
  %i.oi = add nsw i32 %i.hp, %i.od
  %i.oj = add nsw i32 %i.hq, %i.oe
  %i.ok = add nsw i32 %i.hr, %i.of
  %i.ol = add nuw nsw i32 %.18221060.us.us.us.us.us, 1 ; 2 uses
  %exitcond1169.not = icmp eq i32 %i.ol, %i.gy
  br i1 %exitcond1169.not, label %.loopexit957, label %.preheader952.us.us.us.us.us, !llvm.loop !92

bb.q:                                             ; preds = %bb.e
  br i1 %i.cv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.om = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.on = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !4
  %i.op = sub nsw i32 %i.om, %i.oo
  %i.oq = add nuw nsw i32 %i.cu, 1
  %i.or = mul nsw i32 %i.op, %i.oq
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.os = phi i32 [ %i.or, %bb.r ], [ 0, %bb.q ]
  %i.ot = load i32, ptr %i.cc, align 4, !tbaa !4
  %i.ou = sub i32 %i.ot, %i.cm                    ; 2 uses
  %i.ov = icmp sgt i32 %i.ou, -1                  ; 2 uses
  %i.ow = add nsw i32 %i.cr, %i.os
  %i.ox = add i32 %i.ou, 1                        ; 2 uses
  %i.oy = mul nsw i32 %i.ox, %i.ow
  %i.oz = select i1 %i.ov, i32 %i.oy, i32 0
  %i.pa = add nsw i32 %i.cn, %i.oz
  %i.pb = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.pc = sub i32 %i.cl, %i.pb
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !4  ; 2 uses
  %i.pf = sub i32 %i.cp, %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !4
  %i.pj = sub nsw i32 %i.pi, %i.pe                ; 3 uses
  %i.pk = icmp sgt i32 %i.pj, -1                  ; 2 uses
  br i1 %i.pk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.pl = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !4
  %i.po = sub nsw i32 %i.pl, %i.pn
  %i.pp = add nuw nsw i32 %i.pj, 1
  %i.pq = mul nsw i32 %i.po, %i.pp
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.pr = phi i32 [ %i.pq, %bb.t ], [ 0, %bb.s ]
  %i.ps = load i32, ptr %i.pg, align 4, !tbaa !4
  %i.pt = sub i32 %i.ps, %i.pb                    ; 2 uses
  %i.pu = icmp sgt i32 %i.pt, -1                  ; 2 uses
  %i.pv = add nsw i32 %i.pf, %i.pr
  %i.pw = add i32 %i.pt, 1                        ; 2 uses
  %i.px = mul nsw i32 %i.pw, %i.pv
  %i.py = select i1 %i.pu, i32 %i.px, i32 0
  %i.pz = add nsw i32 %i.pc, %i.py
  %i.qa = load i32, ptr %i.b, align 4, !tbaa !4
  %i.qb = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %i.qc = sub i32 %i.qa, %i.qb
  %i.qd = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.qe = load i32, ptr %i.bw, align 4, !tbaa !4  ; 2 uses
  %i.qf = sub i32 %i.qd, %i.qe
  %i.qg = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.qh = sub nsw i32 %i.qg, %i.qe                ; 3 uses
  %i.qi = icmp sgt i32 %i.qh, -1                  ; 2 uses
  br i1 %i.qi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.qj = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.qk = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !4
  %i.qm = sub nsw i32 %i.qj, %i.ql
  %i.qn = add nuw nsw i32 %i.qh, 1
  %i.qo = mul nsw i32 %i.qm, %i.qn
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.qp = phi i32 [ %i.qo, %bb.v ], [ 0, %bb.u ]
  %i.qq = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.qr = sub nsw i32 %i.qq, %i.qb                ; 2 uses
  %i.qs = icmp sgt i32 %i.qr, -1                  ; 2 uses
  %i.qt = add nsw i32 %i.qf, %i.qp
  %i.qu = add nuw nsw i32 %i.qr, 1                ; 3 uses
  %i.qv = mul nsw i32 %i.qu, %i.qt
  %i.qw = select i1 %i.qs, i32 %i.qv, i32 0
  %i.qx = add nsw i32 %i.qc, %i.qw
  %i.qy = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.qz = sub i32 %i.cl, %i.qy
  %i.ra = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !4  ; 2 uses
  %i.rc = sub i32 %i.cp, %i.rb
  %i.rd = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.re = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !4
  %i.rg = sub nsw i32 %i.rf, %i.rb                ; 3 uses
  %i.rh = icmp sgt i32 %i.rg, -1                  ; 2 uses
  br i1 %i.rh, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ri = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.rj = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !4
  %i.rl = sub nsw i32 %i.ri, %i.rk
  %i.rm = add nuw nsw i32 %i.rg, 1
  %i.rn = mul nsw i32 %i.rl, %i.rm
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ro = phi i32 [ %i.rn, %bb.x ], [ 0, %bb.w ]
  %i.rp = load i32, ptr %i.rd, align 4, !tbaa !4
  %i.rq = sub i32 %i.rp, %i.qy                    ; 2 uses
  %i.rr = icmp sgt i32 %i.rq, -1                  ; 2 uses
  %i.rs = add nsw i32 %i.rc, %i.ro
  %i.rt = add i32 %i.rq, 1                        ; 2 uses
  %i.ru = mul nsw i32 %i.rt, %i.rs
  %i.rv = select i1 %i.rr, i32 %i.ru, i32 0
  %i.rw = add nsw i32 %i.qz, %i.rv
  %i.rx = select i1 %i.ov, i32 %i.ox, i32 0       ; 3 uses
  %i.ry = add nuw nsw i32 %i.cu, 1
  %i.rz = mul nsw i32 %i.rx, %i.ry
  %i.sa = select i1 %i.cv, i32 %i.rz, i32 0
  %i.sb = select i1 %i.pu, i32 %i.pw, i32 0       ; 3 uses
  %i.sc = add nuw nsw i32 %i.pj, 1
  %i.sd = mul nsw i32 %i.sb, %i.sc
  %i.se = select i1 %i.pk, i32 %i.sd, i32 0
  %i.sf = load i32, ptr %5, align 4, !tbaa !4     ; 2 uses
  br i1 %i.qs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.sg = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.sh = mul nsw i32 %i.sg, %i.qu
  %i.si = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.sj = mul nsw i32 %i.si, %i.qu
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.sk = phi i32 [ %i.sh, %bb.z ], [ 0, %bb.y ]  ; 2 uses
  %i.sl = phi i32 [ %i.sj, %bb.z ], [ 0, %bb.y ]
  %i.sm = load i32, ptr %i.c, align 4, !tbaa !4   ; 7 uses
  %i.sn = load i32, ptr %i.af, align 4, !tbaa !4  ; 7 uses
  %i.so = load i32, ptr %i.ag, align 4, !tbaa !4  ; 3 uses
  %.0804 = call i32 @llvm.smax.i32(i32 %i.sn, i32 %i.sm)
  %.1805 = call i32 @llvm.smax.i32(i32 %i.so, i32 %.0804)
  %i.sp = icmp sgt i32 %.1805, 0
  br i1 %i.sp, label %.preheader955.lr.ph, label %.loopexit957

.preheader955.lr.ph:                              ; preds = %bb.aa
  %i.sq = select i1 %i.rr, i32 %i.rt, i32 0       ; 3 uses
  %factor.op.mul1009 = mul i32 %i.sn, %i.sq
  %factor.op.mul1008 = mul i32 %i.sn, %i.sk
  %factor.op.mul = mul i32 %i.sn, %i.sb
  %factor.op.mul1007 = mul i32 %i.sn, %i.rx
  %i.sr = add nuw nsw i32 %i.rg, 1
  %i.ss = mul nsw i32 %i.sq, %i.sr
  %i.st = select i1 %i.rh, i32 %i.ss, i32 0
  %i.su = add nuw nsw i32 %i.qh, 1
  %i.sv = mul nsw i32 %i.sl, %i.su
  %i.sw = select i1 %i.qi, i32 %i.sv, i32 0
  %i.sx = mul i32 %i.sm, %i.sf
  %i.sy = icmp slt i32 %i.so, 1
  %i.sz = icmp slt i32 %i.sm, 1
  %i.ta = sub i32 %i.rx, %i.sm
  %i.tb = sub i32 %i.sb, %i.sm
  %i.tc = sub i32 %i.sk, %i.sx
  %i.td = sub i32 %i.sq, %i.sm
  %i.te = sub i32 %i.sa, %factor.op.mul1007
  %i.tf = sub i32 %i.se, %factor.op.mul
  %i.tg = sub i32 %i.sw, %factor.op.mul1008
  %i.th = sub i32 %i.st, %factor.op.mul1009
  %i.ti = icmp slt i32 %i.sn, 1
  %or.cond1199.not1204 = or i1 %i.sy, %i.ti
  %brmerge1201 = or i1 %or.cond1199.not1204, %i.sz
  br i1 %brmerge1201, label %.loopexit957, label %.preheader953.us.us.us.us.us.preheader

.preheader953.us.us.us.us.us.preheader:           ; preds = %.preheader955.lr.ph
  %i.tj = sext i32 %i.sf to i64
  %8 = sext i32 %i.cb to i64                      ; 2 uses
  %9 = sext i32 %i.cj to i64
  br label %.preheader953.us.us.us.us.us

.preheader953.us.us.us.us.us:                     ; preds = %.preheader953.us.us.us.us.us.preheader, %._crit_edge974.split.us.us.us.us.us.us
  %.3824993.us.us.us.us.us = phi i32 [ %i.ya, %._crit_edge974.split.us.us.us.us.us.us ], [ 0, %.preheader953.us.us.us.us.us.preheader ]
  %.3834992.us.us.us.us.us = phi i32 [ %i.xy, %._crit_edge974.split.us.us.us.us.us.us ], [ %i.qx, %.preheader953.us.us.us.us.us.preheader ]
  %.3838991.us.us.us.us.us = phi i32 [ %i.xz, %._crit_edge974.split.us.us.us.us.us.us ], [ %i.rw, %.preheader953.us.us.us.us.us.preheader ]
  %.3844990.us.us.us.us.us = phi i32 [ %i.xw, %._crit_edge974.split.us.us.us.us.us.us ], [ %i.pa, %.preheader953.us.us.us.us.us.preheader ]
  %.3850989.us.us.us.us.us = phi i32 [ %i.xx, %._crit_edge974.split.us.us.us.us.us.us ], [ %i.pz, %.preheader953.us.us.us.us.us.preheader ]
  br label %.preheader951.us.us.us.us.us.us

.preheader951.us.us.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader953.us.us.us.us.us
  %.3820973.us.us.us.us.us.us = phi i32 [ 0, %.preheader953.us.us.us.us.us ], [ %i.xv, %._crit_edge.us.us.us.us.us.us ]
  %.4972.us.us.us.us.us.us = phi i32 [ %.3834992.us.us.us.us.us, %.preheader953.us.us.us.us.us ], [ %i.xt, %._crit_edge.us.us.us.us.us.us ]
  %.4839971.us.us.us.us.us.us = phi i32 [ %.3838991.us.us.us.us.us, %.preheader953.us.us.us.us.us ], [ %i.xu, %._crit_edge.us.us.us.us.us.us ]
  %.4845970.us.us.us.us.us.us = phi i32 [ %.3844990.us.us.us.us.us, %.preheader953.us.us.us.us.us ], [ %i.xr, %._crit_edge.us.us.us.us.us.us ]
  %.4851969.us.us.us.us.us.us = phi i32 [ %.3850989.us.us.us.us.us, %.preheader953.us.us.us.us.us ], [ %i.xs, %._crit_edge.us.us.us.us.us.us ]
  %i.tk = sext i32 %.4972.us.us.us.us.us.us to i64
  %i.tl = sext i32 %.4839971.us.us.us.us.us.us to i64
  %i.tm = sext i32 %.4845970.us.us.us.us.us.us to i64
  %i.tn = sext i32 %.4851969.us.us.us.us.us.us to i64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.preheader951.us.us.us.us.us.us
  %indvars.iv1139 = phi i64 [ %indvars.iv.next1140, %bb.ab ], [ %i.tn, %.preheader951.us.us.us.us.us.us ] ; 3 uses
  %indvars.iv1137 = phi i64 [ %indvars.iv.next1138, %bb.ab ], [ %i.tm, %.preheader951.us.us.us.us.us.us ] ; 5 uses
  %indvars.iv1135 = phi i64 [ %indvars.iv.next1136, %bb.ab ], [ %i.tl, %.preheader951.us.us.us.us.us.us ] ; 6 uses
  %indvars.iv1133 = phi i64 [ %indvars.iv.next1134, %bb.ab ], [ %i.tk, %.preheader951.us.us.us.us.us.us ] ; 10 uses
  %.3965.us.us.us.us.us.us = phi i32 [ %i.xm, %bb.ab ], [ 0, %.preheader951.us.us.us.us.us.us ]
  %i.to = sub nsw i64 %indvars.iv1133, %8         ; 8 uses
  %i.tp = add nsw i64 %indvars.iv1133, %8         ; 4 uses
  %i.tq = sub nsw i64 %indvars.iv1137, %9
  %i.tr = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %indvars.iv1139 ; 5 uses
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !35 ; 2 uses
  %i.tt = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.to ; 2 uses
  %i.tu = load double, ptr %i.tt, align 8, !tbaa !35
  %i.tv = fmul double %i.ts, %i.tu
  %i.tw = getelementptr [8 x i8], ptr %i.bc, i64 %i.tq ; 3 uses
  %i.tx = getelementptr i8, ptr %i.tw, i64 -8
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !35 ; 2 uses
  %i.tz = getelementptr inbounds [8 x i8], ptr %.1826, i64 %i.to
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !35
  %i.ub = fmul double %i.ts, %i.ua
  %i.uc = call double @llvm.fmuladd.f64(double %i.tv, double %i.ty, double %i.ub)
  %i.ud = getelementptr inbounds [8 x i8], ptr %.1826, i64 %indvars.iv1133 ; 2 uses
  %i.ue = load double, ptr %i.ud, align 8, !tbaa !35
  %i.uf = call double @llvm.fmuladd.f64(double %i.ue, double %i.ty, double %i.uc)
  %i.ug = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %indvars.iv1135
  store double %i.uf, ptr %i.ug, align 8, !tbaa !35
  %i.uh = load double, ptr %i.tr, align 8, !tbaa !35 ; 2 uses
  %i.ui = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.to ; 2 uses
  %i.uj = load double, ptr %i.ui, align 8, !tbaa !35
  %i.uk = fmul double %i.uh, %i.uj
  %i.ul = load double, ptr %i.tw, align 8, !tbaa !35 ; 2 uses
  %i.um = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.to
  %i.un = load double, ptr %i.um, align 8, !tbaa !35
  %i.uo = fmul double %i.uh, %i.un
  %i.up = call double @llvm.fmuladd.f64(double %i.uk, double %i.ul, double %i.uo)
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %indvars.iv1133 ; 2 uses
  %i.ur = load double, ptr %i.uq, align 8, !tbaa !35
  %i.us = call double @llvm.fmuladd.f64(double %i.ur, double %i.ul, double %i.up)
  %i.ut = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv1135
  store double %i.us, ptr %i.ut, align 8, !tbaa !35
  %i.uu = load double, ptr %i.tr, align 8, !tbaa !35 ; 2 uses
  %i.uv = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.to
  %i.uw = load double, ptr %i.uv, align 8, !tbaa !35
  %i.ux = fmul double %i.uu, %i.uw
  %i.uy = getelementptr i8, ptr %i.tw, i64 8
  %i.uz = load double, ptr %i.uy, align 8, !tbaa !35 ; 2 uses
  %i.va = getelementptr inbounds [8 x i8], ptr %.1828, i64 %i.to
  %i.vb = load double, ptr %i.va, align 8, !tbaa !35
  %i.vc = fmul double %i.uu, %i.vb
  %i.vd = call double @llvm.fmuladd.f64(double %i.ux, double %i.uz, double %i.vc)
  %i.ve = getelementptr inbounds [8 x i8], ptr %.1828, i64 %indvars.iv1133
  %i.vf = load double, ptr %i.ve, align 8, !tbaa !35
  %i.vg = call double @llvm.fmuladd.f64(double %i.vf, double %i.uz, double %i.vd)
  %i.vh = getelementptr inbounds [8 x i8], ptr %i.bt, i64 %indvars.iv1135
  store double %i.vg, ptr %i.vh, align 8, !tbaa !35
  %i.vi = add nsw i64 %indvars.iv1137, -1         ; 2 uses
  %i.vj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %indvars.iv1133
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !35
  %i.vl = load double, ptr %i.tr, align 8, !tbaa !35 ; 2 uses
  %i.vm = load double, ptr %i.tt, align 8, !tbaa !35
  %i.vn = fmul double %i.vl, %i.vm
  %i.vo = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.vi
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !35 ; 2 uses
  %i.vq = call double @llvm.fmuladd.f64(double %i.vn, double %i.vp, double %i.vk)
  %i.vr = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv1139 ; 2 uses
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !35 ; 2 uses
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.tp
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !35
  %i.vv = fmul double %i.vs, %i.vu
  %i.vw = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.vi
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !35 ; 2 uses
  %i.vy = call double @llvm.fmuladd.f64(double %i.vv, double %i.vx, double %i.vq)
  %i.vz = getelementptr inbounds [8 x i8], ptr %.1830, i64 %i.to
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !35
  %i.wb = call double @llvm.fmuladd.f64(double %i.vl, double %i.wa, double %i.vy)
  %i.wc = getelementptr inbounds [8 x i8], ptr %.1826, i64 %i.tp
  %i.wd = load double, ptr %i.wc, align 8, !tbaa !35
  %i.we = call double @llvm.fmuladd.f64(double %i.vs, double %i.wd, double %i.wb)
  %i.wf = load double, ptr %i.ud, align 8, !tbaa !35
  %i.wg = call double @llvm.fmuladd.f64(double %i.wf, double %i.vp, double %i.we)
  %i.wh = getelementptr inbounds [8 x i8], ptr %.1830, i64 %indvars.iv1133
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !35
  %i.wj = call double @llvm.fmuladd.f64(double %i.wi, double %i.vx, double %i.wg)
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %indvars.iv1135
  store double %i.wj, ptr %i.wk, align 8, !tbaa !35
  %i.wl = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %indvars.iv1133
  %i.wm = load double, ptr %i.wl, align 8, !tbaa !35
  %i.wn = load double, ptr %i.tr, align 8, !tbaa !35 ; 2 uses
  %i.wo = load double, ptr %i.ui, align 8, !tbaa !35
  %i.wp = fmul double %i.wn, %i.wo
  %i.wq = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv1137
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !35 ; 2 uses
  %i.ws = call double @llvm.fmuladd.f64(double %i.wp, double %i.wr, double %i.wm)
  %i.wt = load double, ptr %i.vr, align 8, !tbaa !35 ; 2 uses
  %i.wu = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.tp
  %i.wv = load double, ptr %i.wu, align 8, !tbaa !35
  %i.ww = fmul double %i.wt, %i.wv
  %i.wx = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %indvars.iv1137
  %i.wy = load double, ptr %i.wx, align 8, !tbaa !35 ; 2 uses
  %i.wz = call double @llvm.fmuladd.f64(double %i.ww, double %i.wy, double %i.ws)
  %i.xa = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.to
  %i.xb = load double, ptr %i.xa, align 8, !tbaa !35
  %i.xc = call double @llvm.fmuladd.f64(double %i.wn, double %i.xb, double %i.wz)
  %i.xd = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.tp
  %i.xe = load double, ptr %i.xd, align 8, !tbaa !35
  %i.xf = call double @llvm.fmuladd.f64(double %i.wt, double %i.xe, double %i.xc)
  %i.xg = load double, ptr %i.uq, align 8, !tbaa !35
  %i.xh = call double @llvm.fmuladd.f64(double %i.xg, double %i.wr, double %i.xf)
  %i.xi = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %indvars.iv1133
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !35
  %i.xk = call double @llvm.fmuladd.f64(double %i.xj, double %i.wy, double %i.xh)
  %i.xl = getelementptr inbounds [8 x i8], ptr %i.bp, i64 %indvars.iv1135
  store double %i.xk, ptr %i.xl, align 8, !tbaa !35
  %indvars.iv.next1138 = add nsw i64 %indvars.iv1137, 1 ; 2 uses
  %indvars.iv.next1140 = add nsw i64 %indvars.iv1139, 1 ; 2 uses
  %indvars.iv.next1134 = add nsw i64 %indvars.iv1133, %i.tj ; 2 uses
  %indvars.iv.next1136 = add nsw i64 %indvars.iv1135, 1 ; 2 uses
  %i.xm = add nuw nsw i32 %.3965.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %i.xm, %i.sm
  br i1 %exitcond.not, label %._crit_edge.us.us.us.us.us.us, label %bb.ab, !llvm.loop !93

._crit_edge.us.us.us.us.us.us:                    ; preds = %bb.ab
  %i.xn = trunc nsw i64 %indvars.iv.next1140 to i32
  %i.xo = trunc nsw i64 %indvars.iv.next1138 to i32
  %i.xp = trunc nsw i64 %indvars.iv.next1136 to i32
  %i.xq = trunc nsw i64 %indvars.iv.next1134 to i32
  %i.xr = add nsw i32 %i.ta, %i.xo                ; 2 uses
  %i.xs = add nsw i32 %i.tb, %i.xn                ; 2 uses
  %i.xt = add nsw i32 %i.tc, %i.xq                ; 2 uses
  %i.xu = add nsw i32 %i.td, %i.xp                ; 2 uses
  %i.xv = add nuw nsw i32 %.3820973.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond1148.not = icmp eq i32 %i.xv, %i.sn
  br i1 %exitcond1148.not, label %._crit_edge974.split.us.us.us.us.us.us, label %.preheader951.us.us.us.us.us.us, !llvm.loop !94

._crit_edge974.split.us.us.us.us.us.us:           ; preds = %._crit_edge.us.us.us.us.us.us
  %i.xw = add nsw i32 %i.te, %i.xr
  %i.xx = add nsw i32 %i.tf, %i.xs
  %i.xy = add nsw i32 %i.tg, %i.xt
  %i.xz = add nsw i32 %i.th, %i.xu
  %i.ya = add nuw nsw i32 %.3824993.us.us.us.us.us, 1 ; 2 uses
  %exitcond1149.not = icmp eq i32 %i.ya, %i.so
  br i1 %exitcond1149.not, label %.loopexit957, label %.preheader953.us.us.us.us.us, !llvm.loop !95

.loopexit957:                                     ; preds = %._crit_edge974.split.us.us.us.us.us.us, %._crit_edge1040.split.us.us.us.us.us.us, %.preheader955.lr.ph, %.preheader954.lr.ph, %bb.aa, %bb.p
  %indvars.iv.next1171 = add nuw nsw i64 %indvars.iv1170, 1 ; 2 uses
  %i.yb = load i32, ptr %i.n, align 8, !tbaa !26
  %i.yc = sext i32 %i.yb to i64
  %i.yd = icmp slt i64 %indvars.iv.next1171, %i.yc
  br i1 %i.yd, label %.preheader959, label %._crit_edge, !llvm.loop !96

._crit_edge:                                      ; preds = %.loopexit957, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

declare i32 @hypre_StructMapCoarseToFine(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @hypre_StructMatrixExtractPointerByIndex(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_SMG2BuildRAPNoSym(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 36 uses
  %i.b = alloca [3 x i32], align 4                ; 7 uses
  %i.c = alloca [3 x i32], align 4                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
end_hunk_1
begin_hunk_2_@hypre_SMG2BuildRAPNoSym:bb.a
  %i.by = call i32 @llvm.smax.i32(i32 %i.bx, i32 -1)
  %i.bz = add i32 %i.by, 1                        ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 12 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.cd = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.ce = load i32, ptr %i.av, align 4, !tbaa !4
  %i.cf = sub i32 %i.cd, %i.ce
  %i.cg = call i32 @llvm.smax.i32(i32 %i.cf, i32 -1)
  %i.ch = add i32 %i.cg, 1                        ; 2 uses
  store i32 1, ptr %i.a, align 4, !tbaa !4
  store i32 0, ptr %i.y, align 4, !tbaa !4
  store i32 0, ptr %i.z, align 4, !tbaa !4
  %i.ci = call i32 @hypre_BoxGetSize(ptr noundef %i.ao, ptr noundef nonnull %i.c) #5 ; 0 uses
  %i.cj = load i32, ptr %i.ao, align 4, !tbaa !4  ; 5 uses
  %i.ck = load i32, ptr %i.av, align 4, !tbaa !4  ; 3 uses
  %i.cl = sub i32 %i.cj, %i.ck                    ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !4  ; 5 uses
  %i.co = load i32, ptr %i.cc, align 4, !tbaa !4  ; 2 uses
  %i.cp = sub i32 %i.cn, %i.co                    ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 6 uses
  %i.cr = load i32, ptr %i.cb, align 4, !tbaa !4
  %i.cs = sub nsw i32 %i.cr, %i.co                ; 5 uses
  %i.ct = icmp sgt i32 %i.cs, -1                  ; 4 uses
  br i1 %cond, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  br i1 %i.ct, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cu = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = sub nsw i32 %i.cu, %i.cw
  %i.cy = add nuw nsw i32 %i.cs, 1
  %i.cz = mul nsw i32 %i.cx, %i.cy
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.da = phi i32 [ %i.cz, %bb.g ], [ 0, %bb.f ]
  %i.db = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.dc = sub i32 %i.db, %i.ck                    ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, -1                  ; 2 uses
  %i.de = add nsw i32 %i.cp, %i.da
  %i.df = add i32 %i.dc, 1                        ; 2 uses
  %i.dg = mul nsw i32 %i.df, %i.de
  %i.dh = select i1 %i.dd, i32 %i.dg, i32 0
  %i.di = add nsw i32 %i.cl, %i.dh
  %i.dj = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.dk = sub i32 %i.cj, %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4  ; 2 uses
  %i.dn = sub i32 %i.cn, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = sub nsw i32 %i.dq, %i.dm                ; 3 uses
  %i.ds = icmp sgt i32 %i.dr, -1                  ; 2 uses
  br i1 %i.ds, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dt = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.du = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  %i.dw = sub nsw i32 %i.dt, %i.dv
  %i.dx = add nuw nsw i32 %i.dr, 1
  %i.dy = mul nsw i32 %i.dw, %i.dx
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.dz = phi i32 [ %i.dy, %bb.i ], [ 0, %bb.h ]
  %i.ea = load i32, ptr %i.do, align 4, !tbaa !4
  %i.eb = sub i32 %i.ea, %i.dj                    ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, -1                  ; 2 uses
  %i.ed = add nsw i32 %i.dn, %i.dz
  %i.ee = add i32 %i.eb, 1                        ; 2 uses
  %i.ef = mul nsw i32 %i.ee, %i.ed
  %i.eg = select i1 %i.ec, i32 %i.ef, i32 0
  %i.eh = add nsw i32 %i.dk, %i.eg
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ej = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %i.ek = sub i32 %i.ei, %i.ej
  %i.el = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.em = load i32, ptr %i.bu, align 4, !tbaa !4  ; 2 uses
  %i.en = sub i32 %i.el, %i.em
  %i.eo = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.ep = sub nsw i32 %i.eo, %i.em                ; 3 uses
  %i.eq = icmp sgt i32 %i.ep, -1                  ; 2 uses
  br i1 %i.eq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.er = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.es = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.et = load i32, ptr %i.es, align 4, !tbaa !4
  %i.eu = sub nsw i32 %i.er, %i.et
  %i.ev = add nuw nsw i32 %i.ep, 1
  %i.ew = mul nsw i32 %i.eu, %i.ev
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ex = phi i32 [ %i.ew, %bb.k ], [ 0, %bb.j ]
  %i.ey = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.ez = sub nsw i32 %i.ey, %i.ej                ; 2 uses
  %i.fa = icmp sgt i32 %i.ez, -1                  ; 2 uses
  %i.fb = add nsw i32 %i.en, %i.ex
  %i.fc = add nuw nsw i32 %i.ez, 1                ; 3 uses
  %i.fd = mul nsw i32 %i.fc, %i.fb
  %i.fe = select i1 %i.fa, i32 %i.fd, i32 0
  %i.ff = add nsw i32 %i.ek, %i.fe
  %i.fg = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.fh = sub i32 %i.cj, %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !4  ; 2 uses
  %i.fk = sub i32 %i.cn, %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !4
  %i.fo = sub nsw i32 %i.fn, %i.fj                ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, -1                  ; 2 uses
  br i1 %i.fp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fq = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !4
  %i.ft = sub nsw i32 %i.fq, %i.fs
  %i.fu = add nuw nsw i32 %i.fo, 1
  %i.fv = mul nsw i32 %i.ft, %i.fu
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.fw = phi i32 [ %i.fv, %bb.m ], [ 0, %bb.l ]
  %i.fx = load i32, ptr %i.fl, align 4, !tbaa !4
  %i.fy = sub i32 %i.fx, %i.fg                    ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, -1                  ; 2 uses
  %i.ga = add nsw i32 %i.fk, %i.fw
  %i.gb = add i32 %i.fy, 1                        ; 2 uses
  %i.gc = mul nsw i32 %i.gb, %i.ga
  %i.gd = select i1 %i.fz, i32 %i.gc, i32 0
  %i.ge = add nsw i32 %i.fh, %i.gd
  %i.gf = select i1 %i.dd, i32 %i.df, i32 0       ; 3 uses
  %i.gg = add nuw nsw i32 %i.cs, 1
  %i.gh = mul nsw i32 %i.gf, %i.gg
  %i.gi = select i1 %i.ct, i32 %i.gh, i32 0
  %i.gj = select i1 %i.ec, i32 %i.ee, i32 0       ; 3 uses
  %i.gk = add nuw nsw i32 %i.dr, 1
  %i.gl = mul nsw i32 %i.gj, %i.gk
  %i.gm = select i1 %i.ds, i32 %i.gl, i32 0
  %i.gn = load i32, ptr %5, align 4, !tbaa !4     ; 3 uses
  br i1 %i.fa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.go = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.gp = mul nsw i32 %i.go, %i.fc
  %i.gq = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.gr = mul nsw i32 %i.gq, %i.fc
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.gs = phi i32 [ %i.gp, %bb.o ], [ 0, %bb.n ]  ; 2 uses
  %i.gt = phi i32 [ %i.gr, %bb.o ], [ 0, %bb.n ]
  %i.gu = load i32, ptr %i.c, align 4, !tbaa !4   ; 10 uses
  %i.gv = load i32, ptr %i.af, align 4, !tbaa !4  ; 7 uses
  %i.gw = load i32, ptr %i.ag, align 4, !tbaa !4  ; 3 uses
  %.0798 = call i32 @llvm.smax.i32(i32 %i.gv, i32 %i.gu)
  %.1799 = call i32 @llvm.smax.i32(i32 %i.gw, i32 %.0798)
  %i.gx = icmp sgt i32 %.1799, 0
  br i1 %i.gx, label %.preheader886.lr.ph, label %.loopexit889

.preheader886.lr.ph:                              ; preds = %bb.p
  %i.gy = select i1 %i.fz, i32 %i.gb, i32 0       ; 3 uses
  %factor.op.mul1009 = mul i32 %i.gv, %i.gy
  %factor.op.mul1008 = mul i32 %i.gv, %i.gs
  %factor.op.mul1007 = mul i32 %i.gv, %i.gj
  %factor.op.mul1006 = mul i32 %i.gv, %i.gf
  %i.gz = add nuw nsw i32 %i.fo, 1
  %i.ha = mul nsw i32 %i.gy, %i.gz
  %i.hb = select i1 %i.fp, i32 %i.ha, i32 0
  %i.hc = add nuw nsw i32 %i.ep, 1
  %i.hd = mul nsw i32 %i.gt, %i.hc
  %i.he = select i1 %i.eq, i32 %i.hd, i32 0
  %i.hf = mul i32 %i.gu, %i.gn
  %i.hg = icmp slt i32 %i.gw, 1
  %i.hh = icmp slt i32 %i.gu, 1
  %i.hi = sub i32 %i.gf, %i.gu
  %i.hj = sub i32 %i.gj, %i.gu
  %i.hk = sub i32 %i.gs, %i.hf
  %i.hl = sub i32 %i.gy, %i.gu
  %i.hm = sub i32 %i.gi, %factor.op.mul1006
  %i.hn = sub i32 %i.gm, %factor.op.mul1007
  %i.ho = sub i32 %i.he, %factor.op.mul1008
  %i.hp = sub i32 %i.hb, %factor.op.mul1009
  %i.hq = icmp slt i32 %i.gv, 1
  %or.cond.not1141 = or i1 %i.hg, %i.hq
  %brmerge = or i1 %or.cond.not1141, %i.hh
  br i1 %brmerge, label %.loopexit889, label %.preheader884.us.us.us.us.us.preheader

.preheader884.us.us.us.us.us.preheader:           ; preds = %.preheader886.lr.ph
  %i.hr = sext i32 %i.gn to i64
  %6 = sext i32 %i.bz to i64                      ; 7 uses
  %7 = sext i32 %i.ch to i64                      ; 2 uses
  %invariant.gep1130 = getelementptr [8 x i8], ptr %i.bd, i64 %7 ; 2 uses
  %scevgep1150 = getelementptr i8, ptr %i.bq, i64 8
  %i.hs = add nsw i32 %i.gu, -1
  %i.ht = zext i32 %i.hs to i64                   ; 2 uses
  %i.hu = shl nuw nsw i64 %i.ht, 3                ; 15 uses
  %scevgep1151 = getelementptr i8, ptr %scevgep1150, i64 %i.hu
  %scevgep1154 = getelementptr i8, ptr %i.bp, i64 8
  %scevgep1155 = getelementptr i8, ptr %scevgep1154, i64 %i.hu
  %scevgep1158 = getelementptr i8, ptr %i.br, i64 8
  %scevgep1159 = getelementptr i8, ptr %scevgep1158, i64 %i.hu
  %scevgep1162 = getelementptr i8, ptr %i.bo, i64 8
  %scevgep1163 = getelementptr i8, ptr %scevgep1162, i64 %i.hu
  %scevgep1166 = getelementptr i8, ptr %i.be, i64 8
  %scevgep1167 = getelementptr i8, ptr %scevgep1166, i64 %i.hu
  %i.hv = mul nsw i64 %6, -8
  %scevgep1169 = getelementptr i8, ptr %i.bi, i64 %i.hv
  %scevgep1171 = getelementptr i8, ptr %i.bi, i64 8
  %i.hw = sub nsw i64 %i.ht, %6
  %i.hx = shl nsw i64 %i.hw, 3
  %scevgep1172 = getelementptr i8, ptr %scevgep1171, i64 %i.hx
  %scevgep1175 = getelementptr i8, ptr %i.bi, i64 8
  %scevgep1176 = getelementptr i8, ptr %scevgep1175, i64 %i.hu
  %scevgep1179 = getelementptr i8, ptr %i.bi, i64 8
  %scevgep1180 = getelementptr i8, ptr %scevgep1179, i64 %i.hu
  %scevgep1182 = getelementptr i8, ptr %i.bd, i64 8
  %scevgep1184 = getelementptr i8, ptr %i.bd, i64 16
  %scevgep1185 = getelementptr i8, ptr %scevgep1184, i64 %i.hu
  %scevgep1187 = getelementptr i8, ptr %i.bd, i64 -8
  %i.hy = shl nsw i64 %7, 3                       ; 2 uses
  %scevgep1188 = getelementptr i8, ptr %scevgep1187, i64 %i.hy
  %scevgep1190 = getelementptr i8, ptr %i.bd, i64 16
  %i.hz = getelementptr i8, ptr %scevgep1190, i64 %i.hy
  %scevgep1191 = getelementptr i8, ptr %i.hz, i64 %i.hu
  %scevgep1194 = getelementptr i8, ptr %i.bg, i64 8
  %scevgep1195 = getelementptr i8, ptr %scevgep1194, i64 %i.hu
  %scevgep1198 = getelementptr i8, ptr %i.bj, i64 8
  %scevgep1199 = getelementptr i8, ptr %scevgep1198, i64 %i.hu
  %scevgep1202 = getelementptr i8, ptr %i.bj, i64 8
  %scevgep1203 = getelementptr i8, ptr %scevgep1202, i64 %i.hu
  %scevgep1206 = getelementptr i8, ptr %i.bh, i64 8
  %scevgep1207 = getelementptr i8, ptr %scevgep1206, i64 %i.hu
  %scevgep1210 = getelementptr i8, ptr %i.bf, i64 8
  %scevgep1211 = getelementptr i8, ptr %scevgep1210, i64 %i.hu
  %scevgep1213 = getelementptr i8, ptr %i.bc, i64 8
  %scevgep1215 = getelementptr i8, ptr %i.bc, i64 16
  %scevgep1216 = getelementptr i8, ptr %scevgep1215, i64 %i.hu
  %i.ia = zext nneg i32 %i.gu to i64              ; 2 uses
  %min.iters.check = icmp ugt i32 %i.gu, 17
  %ident.check.not = icmp eq i32 %i.gn, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %n.vec = and i64 %i.ia, 2147483646              ; 7 uses
  %i.ib = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %i.ia
  br label %.preheader884.us.us.us.us.us

.preheader884.us.us.us.us.us:                     ; preds = %.preheader884.us.us.us.us.us.preheader, %._crit_edge972.split.us.us.us.us.us.us
  %.1754992.us.us.us.us.us = phi i32 [ %i.mn, %._crit_edge972.split.us.us.us.us.us.us ], [ 0, %.preheader884.us.us.us.us.us.preheader ]
  %.0763991.us.us.us.us.us = phi i32 [ %i.ml, %._crit_edge972.split.us.us.us.us.us.us ], [ %i.ff, %.preheader884.us.us.us.us.us.preheader ]
  %.0767990.us.us.us.us.us = phi i32 [ %i.mm, %._crit_edge972.split.us.us.us.us.us.us ], [ %i.ge, %.preheader884.us.us.us.us.us.preheader ]
  %.0773989.us.us.us.us.us = phi i32 [ %i.mj, %._crit_edge972.split.us.us.us.us.us.us ], [ %i.di, %.preheader884.us.us.us.us.us.preheader ]
  %.0779988.us.us.us.us.us = phi i32 [ %i.mk, %._crit_edge972.split.us.us.us.us.us.us ], [ %i.eh, %.preheader884.us.us.us.us.us.preheader ]
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge.us.us.us.us.us.us1026, %.preheader884.us.us.us.us.us
  %.1750971.us.us.us.us.us.us = phi i32 [ 0, %.preheader884.us.us.us.us.us ], [ %i.mi, %._crit_edge.us.us.us.us.us.us1026 ]
  %.1764970.us.us.us.us.us.us = phi i32 [ %.0763991.us.us.us.us.us, %.preheader884.us.us.us.us.us ], [ %i.mg, %._crit_edge.us.us.us.us.us.us1026 ]
  %.1768969.us.us.us.us.us.us = phi i32 [ %.0767990.us.us.us.us.us, %.preheader884.us.us.us.us.us ], [ %i.mh, %._crit_edge.us.us.us.us.us.us1026 ]
  %.1774968.us.us.us.us.us.us = phi i32 [ %.0773989.us.us.us.us.us, %.preheader884.us.us.us.us.us ], [ %i.me, %._crit_edge.us.us.us.us.us.us1026 ]
  %.1780967.us.us.us.us.us.us = phi i32 [ %.0779988.us.us.us.us.us, %.preheader884.us.us.us.us.us ], [ %i.mf, %._crit_edge.us.us.us.us.us.us1026 ]
  %i.ic = sext i32 %.1764970.us.us.us.us.us.us to i64 ; 6 uses
  %i.id = sext i32 %.1768969.us.us.us.us.us.us to i64 ; 5 uses
  %i.ie = sext i32 %.1774968.us.us.us.us.us.us to i64 ; 5 uses
  %i.if = sext i32 %.1780967.us.us.us.us.us.us to i64 ; 5 uses
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.preheader.us.us.us.us.us.us
  %i.ig = shl nsw i64 %i.id, 3                    ; 8 uses
  %scevgep = getelementptr i8, ptr %i.bq, i64 %i.ig ; 15 uses
  %scevgep1152 = getelementptr i8, ptr %scevgep1151, i64 %i.ig ; 15 uses
  %scevgep1153 = getelementptr i8, ptr %i.bp, i64 %i.ig ; 15 uses
  %scevgep1156 = getelementptr i8, ptr %scevgep1155, i64 %i.ig ; 15 uses
  %scevgep1157 = getelementptr i8, ptr %i.br, i64 %i.ig ; 15 uses
  %scevgep1160 = getelementptr i8, ptr %scevgep1159, i64 %i.ig ; 15 uses
  %scevgep1161 = getelementptr i8, ptr %i.bo, i64 %i.ig ; 15 uses
  %scevgep1164 = getelementptr i8, ptr %scevgep1163, i64 %i.ig ; 15 uses
  %i.ih = shl nsw i64 %i.if, 3                    ; 4 uses
  %scevgep1165 = getelementptr i8, ptr %i.be, i64 %i.ih ; 4 uses
  %scevgep1168 = getelementptr i8, ptr %scevgep1167, i64 %i.ih ; 4 uses
  %i.ii = shl nsw i64 %i.ic, 3                    ; 6 uses
  %scevgep1170 = getelementptr i8, ptr %scevgep1169, i64 %i.ii ; 4 uses
  %scevgep1173 = getelementptr i8, ptr %scevgep1172, i64 %i.ii ; 4 uses
  %scevgep1174 = getelementptr i8, ptr %i.bi, i64 %i.ii ; 4 uses
  %scevgep1177 = getelementptr i8, ptr %scevgep1176, i64 %i.ii ; 4 uses
  %i.ij = add nsw i64 %6, %i.ic
  %i.ik = shl nsw i64 %i.ij, 3                    ; 8 uses
  %scevgep1178 = getelementptr i8, ptr %i.bi, i64 %i.ik ; 4 uses
  %scevgep1181 = getelementptr i8, ptr %scevgep1180, i64 %i.ik ; 4 uses
  %i.il = shl nsw i64 %i.ie, 3                    ; 6 uses
  %scevgep1183 = getelementptr i8, ptr %scevgep1182, i64 %i.il ; 4 uses
  %scevgep1186 = getelementptr i8, ptr %scevgep1185, i64 %i.il ; 4 uses
  %scevgep1189 = getelementptr i8, ptr %scevgep1188, i64 %i.il ; 4 uses
  %scevgep1192 = getelementptr i8, ptr %scevgep1191, i64 %i.il ; 4 uses
  %scevgep1193 = getelementptr i8, ptr %i.bg, i64 %i.ik ; 4 uses
  %scevgep1196 = getelementptr i8, ptr %scevgep1195, i64 %i.ik ; 4 uses
  %scevgep1197 = getelementptr i8, ptr %i.bj, i64 %i.ii ; 4 uses
  %scevgep1200 = getelementptr i8, ptr %scevgep1199, i64 %i.ii ; 4 uses
  %scevgep1201 = getelementptr i8, ptr %i.bj, i64 %i.ik ; 4 uses
  %scevgep1204 = getelementptr i8, ptr %scevgep1203, i64 %i.ik ; 4 uses
  %scevgep1205 = getelementptr i8, ptr %i.bh, i64 %i.ik ; 4 uses
  %scevgep1208 = getelementptr i8, ptr %scevgep1207, i64 %i.ik ; 4 uses
  %scevgep1209 = getelementptr i8, ptr %i.bf, i64 %i.ih ; 4 uses
  %scevgep1212 = getelementptr i8, ptr %scevgep1211, i64 %i.ih ; 4 uses
  %scevgep1214 = getelementptr i8, ptr %scevgep1213, i64 %i.il ; 4 uses
  %scevgep1217 = getelementptr i8, ptr %scevgep1216, i64 %i.il ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep1156
  %bound1 = icmp ult ptr %scevgep1153, %scevgep1152
  %found.conflict = and i1 %bound0, %bound1
  %bound01218 = icmp ult ptr %scevgep, %scevgep1160
  %bound11219 = icmp ult ptr %scevgep1157, %scevgep1152
  %found.conflict1220 = and i1 %bound01218, %bound11219
  %conflict.rdx = or i1 %found.conflict, %found.conflict1220
  %bound01221 = icmp ult ptr %scevgep, %scevgep1164
  %bound11222 = icmp ult ptr %scevgep1161, %scevgep1152
  %found.conflict1223 = and i1 %bound01221, %bound11222
  %conflict.rdx1224 = or i1 %conflict.rdx, %found.conflict1223
  %bound01225 = icmp ult ptr %scevgep, %scevgep1168
  %bound11226 = icmp ult ptr %scevgep1165, %scevgep1152
  %found.conflict1227 = and i1 %bound01225, %bound11226
  %conflict.rdx1228 = or i1 %conflict.rdx1224, %found.conflict1227
  %bound01229 = icmp ult ptr %scevgep, %scevgep1173
  %bound11230 = icmp ult ptr %scevgep1170, %scevgep1152
  %found.conflict1231 = and i1 %bound01229, %bound11230
  %conflict.rdx1232 = or i1 %conflict.rdx1228, %found.conflict1231
  %bound01233 = icmp ult ptr %scevgep, %scevgep1177
  %bound11234 = icmp ult ptr %scevgep1174, %scevgep1152
  %found.conflict1235 = and i1 %bound01233, %bound11234
  %conflict.rdx1236 = or i1 %conflict.rdx1232, %found.conflict1235
  %bound01237 = icmp ult ptr %scevgep, %scevgep1181
  %bound11238 = icmp ult ptr %scevgep1178, %scevgep1152
  %found.conflict1239 = and i1 %bound01237, %bound11238
  %conflict.rdx1240 = or i1 %conflict.rdx1236, %found.conflict1239
  %bound01241 = icmp ult ptr %scevgep, %scevgep1186
  %bound11242 = icmp ult ptr %scevgep1183, %scevgep1152
  %found.conflict1243 = and i1 %bound01241, %bound11242
  %conflict.rdx1244 = or i1 %conflict.rdx1240, %found.conflict1243
  %bound01245 = icmp ult ptr %scevgep, %scevgep1192
  %bound11246 = icmp ult ptr %scevgep1189, %scevgep1152
  %found.conflict1247 = and i1 %bound01245, %bound11246
  %conflict.rdx1248 = or i1 %conflict.rdx1244, %found.conflict1247
  %bound01249 = icmp ult ptr %scevgep, %scevgep1196
  %bound11250 = icmp ult ptr %scevgep1193, %scevgep1152
  %found.conflict1251 = and i1 %bound01249, %bound11250
  %conflict.rdx1252 = or i1 %conflict.rdx1248, %found.conflict1251
  %bound01253 = icmp ult ptr %scevgep, %scevgep1200
  %bound11254 = icmp ult ptr %scevgep1197, %scevgep1152
  %found.conflict1255 = and i1 %bound01253, %bound11254
  %conflict.rdx1256 = or i1 %conflict.rdx1252, %found.conflict1255
  %bound01257 = icmp ult ptr %scevgep, %scevgep1204
  %bound11258 = icmp ult ptr %scevgep1201, %scevgep1152
  %found.conflict1259 = and i1 %bound01257, %bound11258
  %conflict.rdx1260 = or i1 %conflict.rdx1256, %found.conflict1259
  %bound01261 = icmp ult ptr %scevgep, %scevgep1208
  %bound11262 = icmp ult ptr %scevgep1205, %scevgep1152
  %found.conflict1263 = and i1 %bound01261, %bound11262
  %conflict.rdx1264 = or i1 %conflict.rdx1260, %found.conflict1263
  %bound01265 = icmp ult ptr %scevgep, %scevgep1212
  %bound11266 = icmp ult ptr %scevgep1209, %scevgep1152
  %found.conflict1267 = and i1 %bound01265, %bound11266
  %conflict.rdx1268 = or i1 %conflict.rdx1264, %found.conflict1267
  %bound01269 = icmp ult ptr %scevgep, %scevgep1217
  %bound11270 = icmp ult ptr %scevgep1214, %scevgep1152
  %found.conflict1271 = and i1 %bound01269, %bound11270
  %conflict.rdx1272 = or i1 %conflict.rdx1268, %found.conflict1271
  %bound01273 = icmp ult ptr %scevgep1153, %scevgep1160
  %bound11274 = icmp ult ptr %scevgep1157, %scevgep1156
  %found.conflict1275 = and i1 %bound01273, %bound11274
  %conflict.rdx1276 = or i1 %conflict.rdx1272, %found.conflict1275
  %bound01277 = icmp ult ptr %scevgep1153, %scevgep1164
  %bound11278 = icmp ult ptr %scevgep1161, %scevgep1156
  %found.conflict1279 = and i1 %bound01277, %bound11278
  %conflict.rdx1280 = or i1 %conflict.rdx1276, %found.conflict1279
  %bound01281 = icmp ult ptr %scevgep1153, %scevgep1168
  %bound11282 = icmp ult ptr %scevgep1165, %scevgep1156
  %found.conflict1283 = and i1 %bound01281, %bound11282
  %conflict.rdx1284 = or i1 %conflict.rdx1280, %found.conflict1283
  %bound01285 = icmp ult ptr %scevgep1153, %scevgep1173
  %bound11286 = icmp ult ptr %scevgep1170, %scevgep1156
  %found.conflict1287 = and i1 %bound01285, %bound11286
  %conflict.rdx1288 = or i1 %conflict.rdx1284, %found.conflict1287
  %bound01289 = icmp ult ptr %scevgep1153, %scevgep1177
  %bound11290 = icmp ult ptr %scevgep1174, %scevgep1156
  %found.conflict1291 = and i1 %bound01289, %bound11290
  %conflict.rdx1292 = or i1 %conflict.rdx1288, %found.conflict1291
  %bound01293 = icmp ult ptr %scevgep1153, %scevgep1181
  %bound11294 = icmp ult ptr %scevgep1178, %scevgep1156
  %found.conflict1295 = and i1 %bound01293, %bound11294
  %conflict.rdx1296 = or i1 %conflict.rdx1292, %found.conflict1295
  %bound01297 = icmp ult ptr %scevgep1153, %scevgep1186
  %bound11298 = icmp ult ptr %scevgep1183, %scevgep1156
  %found.conflict1299 = and i1 %bound01297, %bound11298
  %conflict.rdx1300 = or i1 %conflict.rdx1296, %found.conflict1299
  %bound01301 = icmp ult ptr %scevgep1153, %scevgep1192
  %bound11302 = icmp ult ptr %scevgep1189, %scevgep1156
  %found.conflict1303 = and i1 %bound01301, %bound11302
  %conflict.rdx1304 = or i1 %conflict.rdx1300, %found.conflict1303
  %bound01305 = icmp ult ptr %scevgep1153, %scevgep1196
  %bound11306 = icmp ult ptr %scevgep1193, %scevgep1156
  %found.conflict1307 = and i1 %bound01305, %bound11306
  %conflict.rdx1308 = or i1 %conflict.rdx1304, %found.conflict1307
  %bound01309 = icmp ult ptr %scevgep1153, %scevgep1200
  %bound11310 = icmp ult ptr %scevgep1197, %scevgep1156
  %found.conflict1311 = and i1 %bound01309, %bound11310
  %conflict.rdx1312 = or i1 %conflict.rdx1308, %found.conflict1311
  %bound01313 = icmp ult ptr %scevgep1153, %scevgep1204
  %bound11314 = icmp ult ptr %scevgep1201, %scevgep1156
  %found.conflict1315 = and i1 %bound01313, %bound11314
  %conflict.rdx1316 = or i1 %conflict.rdx1312, %found.conflict1315
  %bound01317 = icmp ult ptr %scevgep1153, %scevgep1208
  %bound11318 = icmp ult ptr %scevgep1205, %scevgep1156
  %found.conflict1319 = and i1 %bound01317, %bound11318
  %conflict.rdx1320 = or i1 %conflict.rdx1316, %found.conflict1319
  %bound01321 = icmp ult ptr %scevgep1153, %scevgep1212
  %bound11322 = icmp ult ptr %scevgep1209, %scevgep1156
  %found.conflict1323 = and i1 %bound01321, %bound11322
  %conflict.rdx1324 = or i1 %conflict.rdx1320, %found.conflict1323
  %bound01325 = icmp ult ptr %scevgep1153, %scevgep1217
  %bound11326 = icmp ult ptr %scevgep1214, %scevgep1156
  %found.conflict1327 = and i1 %bound01325, %bound11326
  %conflict.rdx1328 = or i1 %conflict.rdx1324, %found.conflict1327
  %bound01329 = icmp ult ptr %scevgep1157, %scevgep1164
  %bound11330 = icmp ult ptr %scevgep1161, %scevgep1160
  %found.conflict1331 = and i1 %bound01329, %bound11330
  %conflict.rdx1332 = or i1 %conflict.rdx1328, %found.conflict1331
end_hunk_2
begin_hunk_3_@hypre_SMG2BuildRAPNoSym:bb.a

._crit_edge.us.us.us.us.us.us1026:                ; preds = %scalar.ph, %middle.block
  %indvars.iv.next1089.lcssa = phi i64 [ %i.in, %middle.block ], [ %indvars.iv.next1089, %scalar.ph ]
  %indvars.iv.next1091.lcssa = phi i64 [ %i.im, %middle.block ], [ %indvars.iv.next1091, %scalar.ph ]
  %indvars.iv.next1085.lcssa = phi i64 [ %i.ip, %middle.block ], [ %indvars.iv.next1085, %scalar.ph ]
  %indvars.iv.next1087.lcssa = phi i64 [ %i.io, %middle.block ], [ %indvars.iv.next1087, %scalar.ph ]
  %i.ma = trunc nsw i64 %indvars.iv.next1091.lcssa to i32
  %i.mb = trunc nsw i64 %indvars.iv.next1089.lcssa to i32
  %i.mc = trunc nsw i64 %indvars.iv.next1087.lcssa to i32
  %i.md = trunc nsw i64 %indvars.iv.next1085.lcssa to i32
  %i.me = add nsw i32 %i.hi, %i.mb                ; 2 uses
  %i.mf = add nsw i32 %i.hj, %i.ma                ; 2 uses
  %i.mg = add nsw i32 %i.hk, %i.md                ; 2 uses
  %i.mh = add nsw i32 %i.hl, %i.mc                ; 2 uses
  %i.mi = add nuw nsw i32 %.1750971.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond1100.not = icmp eq i32 %i.mi, %i.gv
  br i1 %exitcond1100.not, label %._crit_edge972.split.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !137

._crit_edge972.split.us.us.us.us.us.us:           ; preds = %._crit_edge.us.us.us.us.us.us1026
  %i.mj = add nsw i32 %i.hm, %i.me
  %i.mk = add nsw i32 %i.hn, %i.mf
  %i.ml = add nsw i32 %i.ho, %i.mg
  %i.mm = add nsw i32 %i.hp, %i.mh
  %i.mn = add nuw nsw i32 %.1754992.us.us.us.us.us, 1 ; 2 uses
  %exitcond1101.not = icmp eq i32 %i.mn, %i.gw
  br i1 %exitcond1101.not, label %.loopexit889, label %.preheader884.us.us.us.us.us, !llvm.loop !138

bb.q:                                             ; preds = %bb.e
  br i1 %i.ct, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.mo = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.mp = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !4
  %i.mr = sub nsw i32 %i.mo, %i.mq
  %i.ms = add nuw nsw i32 %i.cs, 1
  %i.mt = mul nsw i32 %i.mr, %i.ms
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.mu = phi i32 [ %i.mt, %bb.r ], [ 0, %bb.q ]
  %i.mv = load i32, ptr %i.ca, align 4, !tbaa !4
  %i.mw = sub i32 %i.mv, %i.ck                    ; 2 uses
  %i.mx = icmp sgt i32 %i.mw, -1                  ; 2 uses
  %i.my = add nsw i32 %i.cp, %i.mu
  %i.mz = add i32 %i.mw, 1                        ; 2 uses
  %i.na = mul nsw i32 %i.mz, %i.my
  %i.nb = select i1 %i.mx, i32 %i.na, i32 0
  %i.nc = add nsw i32 %i.cl, %i.nb
  %i.nd = load i32, ptr %i.ay, align 4, !tbaa !4  ; 2 uses
  %i.ne = sub i32 %i.cj, %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !4  ; 2 uses
  %i.nh = sub i32 %i.cn, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.nk = load i32, ptr %i.nj, align 4, !tbaa !4
  %i.nl = sub nsw i32 %i.nk, %i.ng                ; 3 uses
  %i.nm = icmp sgt i32 %i.nl, -1                  ; 2 uses
  br i1 %i.nm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.nn = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.no = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.np = load i32, ptr %i.no, align 4, !tbaa !4
  %i.nq = sub nsw i32 %i.nn, %i.np
  %i.nr = add nuw nsw i32 %i.nl, 1
  %i.ns = mul nsw i32 %i.nq, %i.nr
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.nt = phi i32 [ %i.ns, %bb.t ], [ 0, %bb.s ]
  %i.nu = load i32, ptr %i.ni, align 4, !tbaa !4
  %i.nv = sub i32 %i.nu, %i.nd                    ; 2 uses
  %i.nw = icmp sgt i32 %i.nv, -1                  ; 2 uses
  %i.nx = add nsw i32 %i.nh, %i.nt
  %i.ny = add i32 %i.nv, 1                        ; 2 uses
  %i.nz = mul nsw i32 %i.ny, %i.nx
  %i.oa = select i1 %i.nw, i32 %i.nz, i32 0
  %i.ob = add nsw i32 %i.ne, %i.oa
  %i.oc = load i32, ptr %i.b, align 4, !tbaa !4
  %i.od = load i32, ptr %i.as, align 4, !tbaa !4  ; 2 uses
  %i.oe = sub i32 %i.oc, %i.od
  %i.of = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.og = load i32, ptr %i.bu, align 4, !tbaa !4  ; 2 uses
  %i.oh = sub i32 %i.of, %i.og
  %i.oi = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.oj = sub nsw i32 %i.oi, %i.og                ; 3 uses
  %i.ok = icmp sgt i32 %i.oj, -1                  ; 2 uses
  br i1 %i.ok, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ol = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.om = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.on = load i32, ptr %i.om, align 4, !tbaa !4
  %i.oo = sub nsw i32 %i.ol, %i.on
  %i.op = add nuw nsw i32 %i.oj, 1
  %i.oq = mul nsw i32 %i.oo, %i.op
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.or = phi i32 [ %i.oq, %bb.v ], [ 0, %bb.u ]
  %i.os = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.ot = sub nsw i32 %i.os, %i.od                ; 2 uses
  %i.ou = icmp sgt i32 %i.ot, -1                  ; 2 uses
  %i.ov = add nsw i32 %i.oh, %i.or
  %i.ow = add nuw nsw i32 %i.ot, 1                ; 3 uses
  %i.ox = mul nsw i32 %i.ow, %i.ov
  %i.oy = select i1 %i.ou, i32 %i.ox, i32 0
  %i.oz = add nsw i32 %i.oe, %i.oy
  %i.pa = load i32, ptr %i.bb, align 4, !tbaa !4  ; 2 uses
  %i.pb = sub i32 %i.cj, %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !4  ; 2 uses
  %i.pe = sub i32 %i.cn, %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.pg = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !4
  %i.pi = sub nsw i32 %i.ph, %i.pd                ; 3 uses
  %i.pj = icmp sgt i32 %i.pi, -1                  ; 2 uses
  br i1 %i.pj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.pk = load i32, ptr %i.cq, align 4, !tbaa !4
  %i.pl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !4
  %i.pn = sub nsw i32 %i.pk, %i.pm
  %i.po = add nuw nsw i32 %i.pi, 1
  %i.pp = mul nsw i32 %i.pn, %i.po
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.pq = phi i32 [ %i.pp, %bb.x ], [ 0, %bb.w ]
  %i.pr = load i32, ptr %i.pf, align 4, !tbaa !4
  %i.ps = sub i32 %i.pr, %i.pa                    ; 2 uses
  %i.pt = icmp sgt i32 %i.ps, -1                  ; 2 uses
  %i.pu = add nsw i32 %i.pe, %i.pq
  %i.pv = add i32 %i.ps, 1                        ; 2 uses
  %i.pw = mul nsw i32 %i.pv, %i.pu
  %i.px = select i1 %i.pt, i32 %i.pw, i32 0
  %i.py = add nsw i32 %i.pb, %i.px
  %i.pz = select i1 %i.mx, i32 %i.mz, i32 0       ; 3 uses
  %i.qa = add nuw nsw i32 %i.cs, 1
  %i.qb = mul nsw i32 %i.pz, %i.qa
  %i.qc = select i1 %i.ct, i32 %i.qb, i32 0
  %i.qd = select i1 %i.nw, i32 %i.ny, i32 0       ; 3 uses
  %i.qe = add nuw nsw i32 %i.nl, 1
  %i.qf = mul nsw i32 %i.qd, %i.qe
  %i.qg = select i1 %i.nm, i32 %i.qf, i32 0
  %i.qh = load i32, ptr %5, align 4, !tbaa !4     ; 3 uses
  br i1 %i.ou, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.qi = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.qj = mul nsw i32 %i.qi, %i.ow
  %i.qk = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ql = mul nsw i32 %i.qk, %i.ow
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.qm = phi i32 [ %i.qj, %bb.z ], [ 0, %bb.y ]  ; 2 uses
  %i.qn = phi i32 [ %i.ql, %bb.z ], [ 0, %bb.y ]
  %i.qo = load i32, ptr %i.c, align 4, !tbaa !4   ; 10 uses
  %i.qp = load i32, ptr %i.af, align 4, !tbaa !4  ; 7 uses
  %i.qq = load i32, ptr %i.ag, align 4, !tbaa !4  ; 3 uses
  %.0736 = call i32 @llvm.smax.i32(i32 %i.qp, i32 %i.qo)
  %.1737 = call i32 @llvm.smax.i32(i32 %i.qq, i32 %.0736)
  %i.qr = icmp sgt i32 %.1737, 0
  br i1 %i.qr, label %.preheader887.lr.ph, label %.loopexit889

.preheader887.lr.ph:                              ; preds = %bb.aa
  %i.qs = select i1 %i.pt, i32 %i.pv, i32 0       ; 3 uses
  %factor.op.mul941 = mul i32 %i.qp, %i.qs
  %factor.op.mul940 = mul i32 %i.qp, %i.qm
  %factor.op.mul = mul i32 %i.qp, %i.qd
  %factor.op.mul939 = mul i32 %i.qp, %i.pz
  %i.qt = add nuw nsw i32 %i.pi, 1
  %i.qu = mul nsw i32 %i.qs, %i.qt
  %i.qv = select i1 %i.pj, i32 %i.qu, i32 0
  %i.qw = add nuw nsw i32 %i.oj, 1
  %i.qx = mul nsw i32 %i.qn, %i.qw
  %i.qy = select i1 %i.ok, i32 %i.qx, i32 0
  %i.qz = mul i32 %i.qo, %i.qh
  %i.ra = icmp slt i32 %i.qq, 1
  %i.rb = icmp slt i32 %i.qo, 1
  %i.rc = sub i32 %i.pz, %i.qo
  %i.rd = sub i32 %i.qd, %i.qo
  %i.re = sub i32 %i.qm, %i.qz
  %i.rf = sub i32 %i.qs, %i.qo
  %i.rg = sub i32 %i.qc, %factor.op.mul939
  %i.rh = sub i32 %i.qg, %factor.op.mul
  %i.ri = sub i32 %i.qy, %factor.op.mul940
  %i.rj = sub i32 %i.qv, %factor.op.mul941
  %i.rk = icmp slt i32 %i.qp, 1
  %or.cond1133.not1138 = or i1 %i.ra, %i.rk
  %brmerge1135 = or i1 %or.cond1133.not1138, %i.rb
  br i1 %brmerge1135, label %.loopexit889, label %.preheader885.us.us.us.us.us.preheader

.preheader885.us.us.us.us.us.preheader:           ; preds = %.preheader887.lr.ph
  %i.rl = sext i32 %i.qh to i64
  %8 = sext i32 %i.bz to i64                      ; 7 uses
  %9 = sext i32 %i.ch to i64                      ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.bd, i64 %9 ; 2 uses
  %scevgep1454 = getelementptr i8, ptr %i.bq, i64 8
  %i.rm = add nsw i32 %i.qo, -1
  %i.rn = zext i32 %i.rm to i64                   ; 2 uses
  %i.ro = shl nuw nsw i64 %i.rn, 3                ; 21 uses
  %scevgep1455 = getelementptr i8, ptr %scevgep1454, i64 %i.ro
  %scevgep1458 = getelementptr i8, ptr %i.bp, i64 8
  %scevgep1459 = getelementptr i8, ptr %scevgep1458, i64 %i.ro
  %scevgep1462 = getelementptr i8, ptr %i.br, i64 8
  %scevgep1463 = getelementptr i8, ptr %scevgep1462, i64 %i.ro
  %scevgep1466 = getelementptr i8, ptr %i.bo, i64 8
  %scevgep1467 = getelementptr i8, ptr %scevgep1466, i64 %i.ro
  %scevgep1470 = getelementptr i8, ptr %i.be, i64 8
  %scevgep1471 = getelementptr i8, ptr %scevgep1470, i64 %i.ro
  %i.rp = mul nsw i64 %8, -8                      ; 2 uses
  %scevgep1473 = getelementptr i8, ptr %i.bi, i64 %i.rp
  %scevgep1475 = getelementptr i8, ptr %i.bi, i64 8
  %i.rq = sub nsw i64 %i.rn, %8
  %i.rr = shl nsw i64 %i.rq, 3                    ; 2 uses
  %scevgep1476 = getelementptr i8, ptr %scevgep1475, i64 %i.rr
  %scevgep1479 = getelementptr i8, ptr %i.bi, i64 8
  %scevgep1480 = getelementptr i8, ptr %scevgep1479, i64 %i.ro
  %scevgep1483 = getelementptr i8, ptr %i.bi, i64 8
  %scevgep1484 = getelementptr i8, ptr %scevgep1483, i64 %i.ro
  %scevgep1486 = getelementptr i8, ptr %i.bd, i64 8
  %scevgep1488 = getelementptr i8, ptr %i.bd, i64 16
  %scevgep1489 = getelementptr i8, ptr %scevgep1488, i64 %i.ro
  %scevgep1491 = getelementptr i8, ptr %i.bd, i64 -8
  %i.rs = shl nsw i64 %9, 3                       ; 2 uses
  %scevgep1492 = getelementptr i8, ptr %scevgep1491, i64 %i.rs
  %scevgep1494 = getelementptr i8, ptr %i.bd, i64 16
  %i.rt = getelementptr i8, ptr %scevgep1494, i64 %i.rs
  %scevgep1495 = getelementptr i8, ptr %i.rt, i64 %i.ro
  %scevgep1498 = getelementptr i8, ptr %.1758, i64 8
  %scevgep1499 = getelementptr i8, ptr %scevgep1498, i64 %i.ro
  %scevgep1502 = getelementptr i8, ptr %.1758, i64 8
  %scevgep1503 = getelementptr i8, ptr %scevgep1502, i64 %i.ro
  %scevgep1505 = getelementptr i8, ptr %.1762, i64 %i.rp
  %scevgep1507 = getelementptr i8, ptr %.1762, i64 8
  %scevgep1508 = getelementptr i8, ptr %scevgep1507, i64 %i.rr
  %scevgep1511 = getelementptr i8, ptr %.1760, i64 8
  %scevgep1512 = getelementptr i8, ptr %scevgep1511, i64 %i.ro
  %scevgep1515 = getelementptr i8, ptr %.1760, i64 8
  %scevgep1516 = getelementptr i8, ptr %scevgep1515, i64 %i.ro
  %scevgep1519 = getelementptr i8, ptr %.1762, i64 8
  %scevgep1520 = getelementptr i8, ptr %scevgep1519, i64 %i.ro
  %scevgep1523 = getelementptr i8, ptr %.1762, i64 8
  %scevgep1524 = getelementptr i8, ptr %scevgep1523, i64 %i.ro
  %scevgep1527 = getelementptr i8, ptr %i.bg, i64 8
  %scevgep1528 = getelementptr i8, ptr %scevgep1527, i64 %i.ro
  %scevgep1531 = getelementptr i8, ptr %i.bj, i64 8
  %scevgep1532 = getelementptr i8, ptr %scevgep1531, i64 %i.ro
  %scevgep1535 = getelementptr i8, ptr %i.bj, i64 8
  %scevgep1536 = getelementptr i8, ptr %scevgep1535, i64 %i.ro
  %scevgep1539 = getelementptr i8, ptr %i.bh, i64 8
  %scevgep1540 = getelementptr i8, ptr %scevgep1539, i64 %i.ro
  %scevgep1543 = getelementptr i8, ptr %i.bf, i64 8
  %scevgep1544 = getelementptr i8, ptr %scevgep1543, i64 %i.ro
  %scevgep1546 = getelementptr i8, ptr %i.bc, i64 8
  %scevgep1548 = getelementptr i8, ptr %i.bc, i64 16
  %scevgep1549 = getelementptr i8, ptr %scevgep1548, i64 %i.ro
  %i.ru = zext nneg i32 %i.qo to i64              ; 2 uses
  %min.iters.check1879 = icmp ugt i32 %i.qo, 17
  %ident.check1451.not = icmp eq i32 %i.qh, 1
  %or.cond1919 = select i1 %min.iters.check1879, i1 %ident.check1451.not, i1 false
  %n.vec1882 = and i64 %i.ru, 2147483646          ; 7 uses
  %i.rv = trunc nuw nsw i64 %n.vec1882 to i32
  %cmp.n1913 = icmp eq i64 %n.vec1882, %i.ru
  br label %.preheader885.us.us.us.us.us

.preheader885.us.us.us.us.us:                     ; preds = %.preheader885.us.us.us.us.us.preheader, %._crit_edge906.split.us.us.us.us.us.us
  %.3756925.us.us.us.us.us = phi i32 [ %i.xt, %._crit_edge906.split.us.us.us.us.us.us ], [ 0, %.preheader885.us.us.us.us.us.preheader ]
  %.3766924.us.us.us.us.us = phi i32 [ %i.xr, %._crit_edge906.split.us.us.us.us.us.us ], [ %i.oz, %.preheader885.us.us.us.us.us.preheader ]
  %.3770923.us.us.us.us.us = phi i32 [ %i.xs, %._crit_edge906.split.us.us.us.us.us.us ], [ %i.py, %.preheader885.us.us.us.us.us.preheader ]
  %.3776922.us.us.us.us.us = phi i32 [ %i.xp, %._crit_edge906.split.us.us.us.us.us.us ], [ %i.nc, %.preheader885.us.us.us.us.us.preheader ]
  %.3782921.us.us.us.us.us = phi i32 [ %i.xq, %._crit_edge906.split.us.us.us.us.us.us ], [ %i.ob, %.preheader885.us.us.us.us.us.preheader ]
  br label %.preheader883.us.us.us.us.us.us

.preheader883.us.us.us.us.us.us:                  ; preds = %._crit_edge.us.us.us.us.us.us, %.preheader885.us.us.us.us.us
  %.3752905.us.us.us.us.us.us = phi i32 [ 0, %.preheader885.us.us.us.us.us ], [ %i.xo, %._crit_edge.us.us.us.us.us.us ]
  %.4904.us.us.us.us.us.us = phi i32 [ %.3766924.us.us.us.us.us, %.preheader885.us.us.us.us.us ], [ %i.xm, %._crit_edge.us.us.us.us.us.us ]
  %.4771903.us.us.us.us.us.us = phi i32 [ %.3770923.us.us.us.us.us, %.preheader885.us.us.us.us.us ], [ %i.xn, %._crit_edge.us.us.us.us.us.us ]
  %.4777902.us.us.us.us.us.us = phi i32 [ %.3776922.us.us.us.us.us, %.preheader885.us.us.us.us.us ], [ %i.xk, %._crit_edge.us.us.us.us.us.us ]
  %.4783901.us.us.us.us.us.us = phi i32 [ %.3782921.us.us.us.us.us, %.preheader885.us.us.us.us.us ], [ %i.xl, %._crit_edge.us.us.us.us.us.us ]
  %i.rw = sext i32 %.4904.us.us.us.us.us.us to i64 ; 6 uses
  %i.rx = sext i32 %.4771903.us.us.us.us.us.us to i64 ; 5 uses
  %i.ry = sext i32 %.4777902.us.us.us.us.us.us to i64 ; 5 uses
  %i.rz = sext i32 %.4783901.us.us.us.us.us.us to i64 ; 5 uses
  br i1 %or.cond1919, label %vector.memcheck1452, label %scalar.ph1878.preheader

vector.memcheck1452:                              ; preds = %.preheader883.us.us.us.us.us.us
  %i.sa = shl nsw i64 %i.rx, 3                    ; 8 uses
  %scevgep1453 = getelementptr i8, ptr %i.bq, i64 %i.sa ; 22 uses
  %scevgep1456 = getelementptr i8, ptr %scevgep1455, i64 %i.sa ; 22 uses
  %scevgep1457 = getelementptr i8, ptr %i.bp, i64 %i.sa ; 22 uses
  %scevgep1460 = getelementptr i8, ptr %scevgep1459, i64 %i.sa ; 22 uses
  %scevgep1461 = getelementptr i8, ptr %i.br, i64 %i.sa ; 22 uses
  %scevgep1464 = getelementptr i8, ptr %scevgep1463, i64 %i.sa ; 22 uses
  %scevgep1465 = getelementptr i8, ptr %i.bo, i64 %i.sa ; 22 uses
  %scevgep1468 = getelementptr i8, ptr %scevgep1467, i64 %i.sa ; 22 uses
  %i.sb = shl nsw i64 %i.rz, 3                    ; 4 uses
  %scevgep1469 = getelementptr i8, ptr %i.be, i64 %i.sb ; 4 uses
  %scevgep1472 = getelementptr i8, ptr %scevgep1471, i64 %i.sb ; 4 uses
  %i.sc = shl nsw i64 %i.rw, 3                    ; 14 uses
  %scevgep1474 = getelementptr i8, ptr %scevgep1473, i64 %i.sc ; 4 uses
  %scevgep1477 = getelementptr i8, ptr %scevgep1476, i64 %i.sc ; 4 uses
  %scevgep1478 = getelementptr i8, ptr %i.bi, i64 %i.sc ; 4 uses
  %scevgep1481 = getelementptr i8, ptr %scevgep1480, i64 %i.sc ; 4 uses
  %i.sd = add nsw i64 %8, %i.rw
  %i.se = shl nsw i64 %i.sd, 3                    ; 14 uses
  %scevgep1482 = getelementptr i8, ptr %i.bi, i64 %i.se ; 4 uses
  %scevgep1485 = getelementptr i8, ptr %scevgep1484, i64 %i.se ; 4 uses
  %i.sf = shl nsw i64 %i.ry, 3                    ; 6 uses
  %scevgep1487 = getelementptr i8, ptr %scevgep1486, i64 %i.sf ; 4 uses
  %scevgep1490 = getelementptr i8, ptr %scevgep1489, i64 %i.sf ; 4 uses
  %scevgep1493 = getelementptr i8, ptr %scevgep1492, i64 %i.sf ; 4 uses
  %scevgep1496 = getelementptr i8, ptr %scevgep1495, i64 %i.sf ; 4 uses
  %scevgep1497 = getelementptr i8, ptr %.1758, i64 %i.sc ; 4 uses
  %scevgep1500 = getelementptr i8, ptr %scevgep1499, i64 %i.sc ; 4 uses
  %scevgep1501 = getelementptr i8, ptr %.1758, i64 %i.se ; 4 uses
  %scevgep1504 = getelementptr i8, ptr %scevgep1503, i64 %i.se ; 4 uses
  %scevgep1506 = getelementptr i8, ptr %scevgep1505, i64 %i.sc ; 4 uses
  %scevgep1509 = getelementptr i8, ptr %scevgep1508, i64 %i.sc ; 4 uses
  %scevgep1510 = getelementptr i8, ptr %.1760, i64 %i.sc ; 4 uses
  %scevgep1513 = getelementptr i8, ptr %scevgep1512, i64 %i.sc ; 4 uses
  %scevgep1514 = getelementptr i8, ptr %.1760, i64 %i.se ; 4 uses
  %scevgep1517 = getelementptr i8, ptr %scevgep1516, i64 %i.se ; 4 uses
  %scevgep1518 = getelementptr i8, ptr %.1762, i64 %i.sc ; 4 uses
  %scevgep1521 = getelementptr i8, ptr %scevgep1520, i64 %i.sc ; 4 uses
  %scevgep1522 = getelementptr i8, ptr %.1762, i64 %i.se ; 4 uses
  %scevgep1525 = getelementptr i8, ptr %scevgep1524, i64 %i.se ; 4 uses
  %scevgep1526 = getelementptr i8, ptr %i.bg, i64 %i.se ; 4 uses
  %scevgep1529 = getelementptr i8, ptr %scevgep1528, i64 %i.se ; 4 uses
  %scevgep1530 = getelementptr i8, ptr %i.bj, i64 %i.sc ; 4 uses
  %scevgep1533 = getelementptr i8, ptr %scevgep1532, i64 %i.sc ; 4 uses
  %scevgep1534 = getelementptr i8, ptr %i.bj, i64 %i.se ; 4 uses
  %scevgep1537 = getelementptr i8, ptr %scevgep1536, i64 %i.se ; 4 uses
  %scevgep1538 = getelementptr i8, ptr %i.bh, i64 %i.se ; 4 uses
  %scevgep1541 = getelementptr i8, ptr %scevgep1540, i64 %i.se ; 4 uses
  %scevgep1542 = getelementptr i8, ptr %i.bf, i64 %i.sb ; 4 uses
  %scevgep1545 = getelementptr i8, ptr %scevgep1544, i64 %i.sb ; 4 uses
  %scevgep1547 = getelementptr i8, ptr %scevgep1546, i64 %i.sf ; 4 uses
  %scevgep1550 = getelementptr i8, ptr %scevgep1549, i64 %i.sf ; 4 uses
  %bound01551 = icmp ult ptr %scevgep1453, %scevgep1460
  %bound11552 = icmp ult ptr %scevgep1457, %scevgep1456
  %found.conflict1553 = and i1 %bound01551, %bound11552
  %bound01554 = icmp ult ptr %scevgep1453, %scevgep1464
  %bound11555 = icmp ult ptr %scevgep1461, %scevgep1456
  %found.conflict1556 = and i1 %bound01554, %bound11555
  %conflict.rdx1557 = or i1 %found.conflict1553, %found.conflict1556
  %bound01558 = icmp ult ptr %scevgep1453, %scevgep1468
  %bound11559 = icmp ult ptr %scevgep1465, %scevgep1456
  %found.conflict1560 = and i1 %bound01558, %bound11559
  %conflict.rdx1561 = or i1 %conflict.rdx1557, %found.conflict1560
  %bound01562 = icmp ult ptr %scevgep1453, %scevgep1472
  %bound11563 = icmp ult ptr %scevgep1469, %scevgep1456
  %found.conflict1564 = and i1 %bound01562, %bound11563
  %conflict.rdx1565 = or i1 %conflict.rdx1561, %found.conflict1564
  %bound01566 = icmp ult ptr %scevgep1453, %scevgep1477
  %bound11567 = icmp ult ptr %scevgep1474, %scevgep1456
  %found.conflict1568 = and i1 %bound01566, %bound11567
  %conflict.rdx1569 = or i1 %conflict.rdx1565, %found.conflict1568
  %bound01570 = icmp ult ptr %scevgep1453, %scevgep1481
  %bound11571 = icmp ult ptr %scevgep1478, %scevgep1456
  %found.conflict1572 = and i1 %bound01570, %bound11571
  %conflict.rdx1573 = or i1 %conflict.rdx1569, %found.conflict1572
  %bound01574 = icmp ult ptr %scevgep1453, %scevgep1485
  %bound11575 = icmp ult ptr %scevgep1482, %scevgep1456
  %found.conflict1576 = and i1 %bound01574, %bound11575
  %conflict.rdx1577 = or i1 %conflict.rdx1573, %found.conflict1576
  %bound01578 = icmp ult ptr %scevgep1453, %scevgep1490
  %bound11579 = icmp ult ptr %scevgep1487, %scevgep1456
  %found.conflict1580 = and i1 %bound01578, %bound11579
  %conflict.rdx1581 = or i1 %conflict.rdx1577, %found.conflict1580
  %bound01582 = icmp ult ptr %scevgep1453, %scevgep1496
  %bound11583 = icmp ult ptr %scevgep1493, %scevgep1456
  %found.conflict1584 = and i1 %bound01582, %bound11583
  %conflict.rdx1585 = or i1 %conflict.rdx1581, %found.conflict1584
  %bound01586 = icmp ult ptr %scevgep1453, %scevgep1500
  %bound11587 = icmp ult ptr %scevgep1497, %scevgep1456
  %found.conflict1588 = and i1 %bound01586, %bound11587
  %conflict.rdx1589 = or i1 %conflict.rdx1585, %found.conflict1588
  %bound01590 = icmp ult ptr %scevgep1453, %scevgep1504
  %bound11591 = icmp ult ptr %scevgep1501, %scevgep1456
  %found.conflict1592 = and i1 %bound01590, %bound11591
  %conflict.rdx1593 = or i1 %conflict.rdx1589, %found.conflict1592
  %bound01594 = icmp ult ptr %scevgep1453, %scevgep1509
  %bound11595 = icmp ult ptr %scevgep1506, %scevgep1456
  %found.conflict1596 = and i1 %bound01594, %bound11595
  %conflict.rdx1597 = or i1 %conflict.rdx1593, %found.conflict1596
  %bound01598 = icmp ult ptr %scevgep1453, %scevgep1513
  %bound11599 = icmp ult ptr %scevgep1510, %scevgep1456
  %found.conflict1600 = and i1 %bound01598, %bound11599
  %conflict.rdx1601 = or i1 %conflict.rdx1597, %found.conflict1600
  %bound01602 = icmp ult ptr %scevgep1453, %scevgep1517
  %bound11603 = icmp ult ptr %scevgep1514, %scevgep1456
  %found.conflict1604 = and i1 %bound01602, %bound11603
  %conflict.rdx1605 = or i1 %conflict.rdx1601, %found.conflict1604
  %bound01606 = icmp ult ptr %scevgep1453, %scevgep1521
  %bound11607 = icmp ult ptr %scevgep1518, %scevgep1456
  %found.conflict1608 = and i1 %bound01606, %bound11607
  %conflict.rdx1609 = or i1 %conflict.rdx1605, %found.conflict1608
  %bound01610 = icmp ult ptr %scevgep1453, %scevgep1525
  %bound11611 = icmp ult ptr %scevgep1522, %scevgep1456
  %found.conflict1612 = and i1 %bound01610, %bound11611
  %conflict.rdx1613 = or i1 %conflict.rdx1609, %found.conflict1612
  %bound01614 = icmp ult ptr %scevgep1453, %scevgep1529
  %bound11615 = icmp ult ptr %scevgep1526, %scevgep1456
  %found.conflict1616 = and i1 %bound01614, %bound11615
  %conflict.rdx1617 = or i1 %conflict.rdx1613, %found.conflict1616
  %bound01618 = icmp ult ptr %scevgep1453, %scevgep1533
  %bound11619 = icmp ult ptr %scevgep1530, %scevgep1456
  %found.conflict1620 = and i1 %bound01618, %bound11619
  %conflict.rdx1621 = or i1 %conflict.rdx1617, %found.conflict1620
  %bound01622 = icmp ult ptr %scevgep1453, %scevgep1537
  %bound11623 = icmp ult ptr %scevgep1534, %scevgep1456
  %found.conflict1624 = and i1 %bound01622, %bound11623
  %conflict.rdx1625 = or i1 %conflict.rdx1621, %found.conflict1624
  %bound01626 = icmp ult ptr %scevgep1453, %scevgep1541
  %bound11627 = icmp ult ptr %scevgep1538, %scevgep1456
  %found.conflict1628 = and i1 %bound01626, %bound11627
  %conflict.rdx1629 = or i1 %conflict.rdx1625, %found.conflict1628
  %bound01630 = icmp ult ptr %scevgep1453, %scevgep1545
  %bound11631 = icmp ult ptr %scevgep1542, %scevgep1456
  %found.conflict1632 = and i1 %bound01630, %bound11631
  %conflict.rdx1633 = or i1 %conflict.rdx1629, %found.conflict1632
  %bound01634 = icmp ult ptr %scevgep1453, %scevgep1550
  %bound11635 = icmp ult ptr %scevgep1547, %scevgep1456
  %found.conflict1636 = and i1 %bound01634, %bound11635
  %conflict.rdx1637 = or i1 %conflict.rdx1633, %found.conflict1636
  %bound01638 = icmp ult ptr %scevgep1457, %scevgep1464
  %bound11639 = icmp ult ptr %scevgep1461, %scevgep1460
  %found.conflict1640 = and i1 %bound01638, %bound11639
end_hunk_3
