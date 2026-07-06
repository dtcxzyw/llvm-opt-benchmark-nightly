inline.NumInlined: 93
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12duckdb_miniz20mz_zip_validate_fileEPNS_14mz_zip_archiveEjj:bb.a
  %i.bt = add i64 %i.bs, %i.bo                    ; 2 uses
  %i.bu = zext i16 %i.bc to i64                   ; 3 uses
  %i.bv = add i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !285 ; 3 uses
  %i.by = add i64 %i.bx, %i.bv                    ; 2 uses
  %i.bz = load i64, ptr %0, align 8, !tbaa !228
  %i.ca = icmp ugt i64 %i.by, %i.bz
  br i1 %i.ca, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit275, label %bb.r

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit275: ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.cb, align 4, !tbaa !211
  br label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit291

bb.r:                                             ; preds = %bb.q
  %i.cc = call i16 @llvm.umax.i16(i16 %i.ba, i16 %i.bc) ; 2 uses
  %.not429 = icmp eq i16 %i.cc, 0
  br i1 %.not429, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = zext i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !217
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !212
  %i.ci = call noundef ptr %i.cf(ptr noundef %i.ch, ptr noundef null, i64 noundef 1, i64 noundef %i.cd), !inline_history !236 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit273, label %bb.t

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit273: ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 16, ptr %i.ck, align 4, !tbaa !211
  br label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit291

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0.1.ph = phi ptr [ %i.ci, %bb.s ], [ null, %bb.r ] ; 6 uses
  %.not234 = icmp eq i16 %i.ba, 0
  br i1 %.not234, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %i.k, align 8, !tbaa !216
  %i.cm = load ptr, ptr %i.at, align 8, !tbaa !229
  %i.cn = call noundef i64 %i.cl(ptr noundef %i.cm, i64 noundef %i.bs, ptr noundef %.sroa.0.1.ph, i64 noundef %i.bo)
  %.not235 = icmp eq i64 %i.cn, %i.bo
  br i1 %.not235, label %bb.v, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit271

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit271: ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.co, align 4, !tbaa !211
  br label %bb.ap

bb.v:                                             ; preds = %bb.u
  %bcmp = call i32 @bcmp(ptr nonnull %i.bp, ptr %.sroa.0.1.ph, i64 %i.bo)
  %.not236 = icmp eq i32 %bcmp, 0
  br i1 %.not236, label %bb.w, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit269

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit269: ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 30, ptr %i.cp, align 4, !tbaa !211
  br label %bb.ap

bb.w:                                             ; preds = %bb.v, %bb.t
  %.not237 = icmp eq i16 %i.bc, 0
  br i1 %.not237, label %.thread413, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = icmp eq i32 %i.bf, -1
  %i.cr = icmp eq i32 %i.bi, -1
  %or.cond8 = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond8, label %bb.y, label %.thread413

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr %i.k, align 8, !tbaa !216
  %i.ct = load ptr, ptr %i.at, align 8, !tbaa !229
  %i.cu = call noundef i64 %i.cs(ptr noundef %i.ct, i64 noundef %i.bt, ptr noundef %.sroa.0.1.ph, i64 noundef %i.bu)
  %.not238 = icmp eq i64 %i.cu, %i.bu
  br i1 %.not238, label %.preheader, label %.thread418

.thread418:                                       ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.cv, align 4, !tbaa !211
  br label %bb.ap

.preheader:                                       ; preds = %bb.y, %bb.ad
  %.0213 = phi ptr [ %i.dy, %bb.ad ], [ %.sroa.0.1.ph, %bb.y ] ; 7 uses
  %.0211 = phi i32 [ %i.dz, %bb.ad ], [ %i.bd, %bb.y ] ; 3 uses
  %i.cw = icmp ult i32 %.0211, 4
  br i1 %i.cw, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit265, label %bb.z

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit265: ; preds = %.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.cx, align 4, !tbaa !211
  br label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit291

bb.z:                                             ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %.0213, i64 2
  %i.cz = load i16, ptr %i.cy, align 1            ; 2 uses
  %i.da = zext i16 %i.cz to i32
  %i.db = add nuw nsw i32 %i.da, 4                ; 3 uses
  %i.dc = icmp ugt i32 %i.db, %.0211
  br i1 %i.dc, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit263, label %bb.aa

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit263: ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.dd, align 4, !tbaa !211
  br label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit291

bb.aa:                                            ; preds = %bb.z
  %i.de = load i16, ptr %.0213, align 1
  %i.df = icmp eq i16 %i.de, 1
  br i1 %i.df, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dg = icmp ult i16 %i.cz, 16
  br i1 %i.dg, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dh = getelementptr inbounds nuw i8, ptr %.0213, i64 4
  %i.di = load i32, ptr %i.dh, align 1
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %.0213, i64 8
  %i.dl = load i32, ptr %i.dk, align 1
  %i.dm = zext i32 %i.dl to i64
  %i.dn = shl nuw i64 %i.dm, 32
  %i.do = or disjoint i64 %i.dn, %i.dj
  %i.dp = getelementptr inbounds nuw i8, ptr %.0213, i64 12
  %i.dq = load i32, ptr %i.dp, align 1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %.0213, i64 16
  %i.dt = load i32, ptr %i.ds, align 1
  %i.du = zext i32 %i.dt to i64
  %i.dv = shl nuw i64 %i.du, 32
  %i.dw = or disjoint i64 %i.dv, %i.dr
  br label %.thread413

bb.ad:                                            ; preds = %bb.aa
  %i.dx = zext nneg i32 %i.db to i64
  %i.dy = getelementptr inbounds nuw i8, ptr %.0213, i64 %i.dx
  %i.dz = sub i32 %.0211, %i.db                   ; 2 uses
  %.not239 = icmp eq i32 %i.dz, 0
  br i1 %.not239, label %.thread413, label %.preheader, !llvm.loop !286

bb.ae:                                            ; preds = %bb.ab
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.ea, align 4, !tbaa !211
  br label %bb.ap

.thread413:                                       ; preds = %bb.ad, %bb.ac, %bb.x, %bb.w
  %.4206 = phi i64 [ %i.bj, %bb.w ], [ %i.bj, %bb.x ], [ %i.do, %bb.ac ], [ %i.bj, %bb.ad ]
  %.4201 = phi i64 [ %i.bg, %bb.w ], [ %i.bg, %bb.x ], [ %i.dw, %bb.ac ], [ %i.bg, %bb.ad ] ; 2 uses
  %i.eb = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.ac ], [ false, %bb.ad ] ; 2 uses
  %i.ec = and i8 %i.bn, 8
  %i.ed = icmp eq i8 %i.ec, 0
  %i.ee = icmp ne i64 %.4201, 0
  %or.cond10 = select i1 %i.ed, i1 true, i1 %i.ee
  %i.ef = icmp ne i32 %i.bl, 0
  %or.cond12 = select i1 %or.cond10, i1 true, i1 %i.ef
  br i1 %or.cond12, label %bb.al, label %bb.af

bb.af:                                            ; preds = %.thread413
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 100 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !225
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = or i1 %i.eb, %i.ei
  %i.ek = load ptr, ptr %i.k, align 8, !tbaa !216
  %i.el = load ptr, ptr %i.at, align 8, !tbaa !229
  %i.em = select i1 %i.ej, i64 24, i64 16         ; 2 uses
  %i.en = call noundef i64 %i.ek(ptr noundef %i.el, i64 noundef %i.by, ptr noundef nonnull %i.d, i64 noundef %i.em)
  %.not240 = icmp eq i64 %i.en, %i.em
  br i1 %.not240, label %bb.ag, label %.thread427

bb.ag:                                            ; preds = %bb.af
  %i.eo = load i32, ptr %i.d, align 16            ; 5 uses
  %i.ep = icmp eq i32 %i.eo, 134695760            ; 15 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.gep.val = load i8, ptr %.sroa.gep, align 4 ; 2 uses
  %i.eq = trunc i32 %i.eo to i8
  %i.er = select i1 %i.ep, i8 %.sroa.gep.val, i8 %i.eq
  %i.es = zext i8 %i.er to i32
  %.sroa.gep.sroa.gep372 = getelementptr inbounds nuw i8, ptr %i.d, i64 5 ; 2 uses
  %.sroa.gep.sroa.gep372.val = load i8, ptr %.sroa.gep.sroa.gep372, align 1
  %i.et = lshr i32 %i.eo, 8
  %i.eu = trunc i32 %i.et to i8
  %i.ev = select i1 %i.ep, i8 %.sroa.gep.sroa.gep372.val, i8 %i.eu
  %i.ew = zext i8 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 8
  %i.ey = or disjoint i32 %i.ex, %i.es
  %.sroa.gep.sroa.gep369 = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 2 uses
  %.sroa.gep.sroa.gep369.val = load i8, ptr %.sroa.gep.sroa.gep369, align 2
  %i.ez = lshr i32 %i.eo, 16
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = select i1 %i.ep, i8 %.sroa.gep.sroa.gep369.val, i8 %i.fa
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 16
  %i.fe = or disjoint i32 %i.fd, %i.ey
  %.sroa.gep.sroa.gep366 = getelementptr inbounds nuw i8, ptr %i.d, i64 7 ; 2 uses
  %.sroa.gep.sroa.gep366.val = load i8, ptr %.sroa.gep.sroa.gep366, align 1
  %i.ff = lshr i32 %i.eo, 24
  %4 = zext i8 %.sroa.gep.sroa.gep366.val to i32
  %5 = select i1 %i.ep, i32 %4, i32 %i.ff
  %i.fg = shl nuw i32 %5, 24
  %i.fh = or disjoint i32 %i.fg, %i.fe            ; 2 uses
  %i.fi = load i32, ptr %i.eg, align 4, !tbaa !225
  %i.fj = icmp ne i32 %i.fi, 0
  %or.cond14 = or i1 %i.eb, %i.fj
  %.sroa.gep.sroa.gep363 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.gep.sroa.gep363.val = load i8, ptr %.sroa.gep.sroa.gep363, align 8
  %i.fk = select i1 %i.ep, i8 %.sroa.gep.sroa.gep363.val, i8 %.sroa.gep.val
  %i.fl = zext i8 %i.fk to i64
  %.sroa.gep459 = getelementptr inbounds nuw i8, ptr %i.d, i64 9 ; 2 uses
  %.sroa.gep459.val = load i8, ptr %.sroa.gep459, align 1
  %.sroa.gep.sroa.gep372.val508 = load i8, ptr %.sroa.gep.sroa.gep372, align 1
  %i.fm = select i1 %i.ep, i8 %.sroa.gep459.val, i8 %.sroa.gep.sroa.gep372.val508
  %i.fn = zext i8 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 8
  %i.fp = or disjoint i64 %i.fo, %i.fl
  %.sroa.gep461 = getelementptr inbounds nuw i8, ptr %i.d, i64 10 ; 3 uses
  %.sroa.gep461.val = load i8, ptr %.sroa.gep461, align 2
  %.sroa.gep.sroa.gep369.val509 = load i8, ptr %.sroa.gep.sroa.gep369, align 2
  %i.fq = select i1 %i.ep, i8 %.sroa.gep461.val, i8 %.sroa.gep.sroa.gep369.val509
  %i.fr = zext i8 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 16
  %i.ft = or disjoint i64 %i.fp, %i.fs
  %.sroa.gep463 = getelementptr inbounds nuw i8, ptr %i.d, i64 11 ; 3 uses
  %.sroa.gep463.val = load i8, ptr %.sroa.gep463, align 1
  %.sroa.gep.sroa.gep366.val510 = load i8, ptr %.sroa.gep.sroa.gep366, align 1
  %i.fu = select i1 %i.ep, i8 %.sroa.gep463.val, i8 %.sroa.gep.sroa.gep366.val510
  %i.fv = zext i8 %i.fu to i64
  %i.fw = shl nuw nsw i64 %i.fv, 24
  %i.fx = or disjoint i64 %i.ft, %i.fw            ; 2 uses
  %.sroa.gep465 = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %.sroa.gep465.val = load i8, ptr %.sroa.gep465, align 4
  %.sroa.gep.sroa.gep363.val511 = load i8, ptr %.sroa.gep.sroa.gep363, align 8
  %i.fy = select i1 %i.ep, i8 %.sroa.gep465.val, i8 %.sroa.gep.sroa.gep363.val511
  %i.fz = zext i8 %i.fy to i64                    ; 2 uses
  %.sroa.gep467 = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %.sroa.gep467.val = load i8, ptr %.sroa.gep467, align 1
  %.sroa.gep459.val512 = load i8, ptr %.sroa.gep459, align 1
  %i.ga = select i1 %i.ep, i8 %.sroa.gep467.val, i8 %.sroa.gep459.val512
  %i.gb = zext i8 %i.ga to i64                    ; 2 uses
  br i1 %or.cond14, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.gep469 = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %.sroa.gep469.val = load i8, ptr %.sroa.gep469, align 2
  %.sroa.gep461.val513 = load i8, ptr %.sroa.gep461, align 2
  %i.gc = select i1 %i.ep, i8 %.sroa.gep469.val, i8 %.sroa.gep461.val513
  %i.gd = zext i8 %i.gc to i64
  %.sroa.gep471 = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %.sroa.gep471.val = load i8, ptr %.sroa.gep471, align 1
  %.sroa.gep463.val514 = load i8, ptr %.sroa.gep463, align 1
  %i.ge = select i1 %i.ep, i8 %.sroa.gep471.val, i8 %.sroa.gep463.val514
  %i.gf = zext i8 %i.ge to i64
  %i.gg = shl nuw i64 %i.gf, 56
  %i.gh = shl nuw nsw i64 %i.gd, 48
  %i.gi = shl nuw nsw i64 %i.gb, 40
  %i.gj = shl nuw nsw i64 %i.fz, 32
  %i.gk = or disjoint i64 %i.gi, %i.gj
  %i.gl = or disjoint i64 %i.gk, %i.gh
  %i.gm = or disjoint i64 %i.gl, %i.gg
  %i.gn = or disjoint i64 %i.gm, %i.fx
  %.sroa.gep473 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.go = load <8 x i8>, ptr %.sroa.gep473, align 16
  %i.gp = load <8 x i8>, ptr %.sroa.gep465, align 4
  %i.gq = insertelement <8 x i1> poison, i1 %i.ep, i64 0
  %i.gr = shufflevector <8 x i1> %i.gq, <8 x i1> poison, <8 x i32> zeroinitializer
  %i.gs = select <8 x i1> %i.gr, <8 x i8> %i.go, <8 x i8> %i.gp
  %i.gt = bitcast <8 x i8> %i.gs to i64
  %.pre = load i64, ptr %i.ad, align 8
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gu = shl nuw nsw i64 %i.gb, 8
  %.sroa.gep455 = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %.sroa.gep455.val = load i8, ptr %.sroa.gep455, align 2
  %.sroa.gep447.val506 = load i8, ptr %.sroa.gep461, align 2
  %i.gv = select i1 %i.ep, i8 %.sroa.gep455.val, i8 %.sroa.gep447.val506
  %i.gw = zext i8 %i.gv to i64
  %i.gx = shl nuw nsw i64 %i.gw, 16
  %i.gy = or disjoint i64 %i.gu, %i.gx
  %.sroa.gep457 = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %.sroa.gep457.val = load i8, ptr %.sroa.gep457, align 1
  %.sroa.gep449.val507 = load i8, ptr %.sroa.gep463, align 1
  %i.gz = select i1 %i.ep, i8 %.sroa.gep457.val, i8 %.sroa.gep449.val507
  %i.ha = zext i8 %i.gz to i64
  %i.hb = shl nuw nsw i64 %i.ha, 24
  %i.hc = or disjoint i64 %i.gy, %i.hb
  %i.hd = or disjoint i64 %i.hc, %i.fz
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.he = phi i64 [ %.pre, %bb.ah ], [ %i.ae, %bb.ai ]
  %.0191 = phi i64 [ %i.gn, %bb.ah ], [ %i.fx, %bb.ai ]
  %.0190 = phi i64 [ %i.gt, %bb.ah ], [ %i.hd, %bb.ai ]
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !256
  %.not241 = icmp eq i32 %i.fh, %i.hg
  %.not242 = icmp eq i64 %.0191, %i.bx
  %or.cond249 = select i1 %.not241, i1 %.not242, i1 false
  %.not243 = icmp eq i64 %.0190, %i.he
  %or.cond250 = select i1 %or.cond249, i1 %.not243, i1 false
  br i1 %or.cond250, label %bb.ak, label %.thread427

.thread427:                                       ; preds = %bb.aj, %bb.af
  %.sink = phi i32 [ 20, %bb.af ], [ 30, %bb.aj ]
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sink, ptr %i.hh, align 4, !tbaa !211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #26
  br label %bb.am

bb.al:                                            ; preds = %.thread413
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !256
  %.not244 = icmp eq i32 %i.bl, %i.hj
  %.not245 = icmp eq i64 %.4201, %i.bx
  %or.cond252 = select i1 %.not244, i1 %.not245, i1 false
  %.not246 = icmp eq i64 %.4206, %i.ae
  %or.cond253 = select i1 %or.cond252, i1 %.not246, i1 false
  br i1 %or.cond253, label %bb.am, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit255

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit255: ; preds = %bb.al
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 30, ptr %i.hk, align 4, !tbaa !211
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.hl = phi i32 [ %i.fh, %bb.ak ], [ %i.bl, %bb.al ]
  %i.hm = load ptr, ptr %i.i, align 8, !tbaa !209
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !212
  call void %i.hm(ptr noundef %i.ho, ptr noundef %.sroa.0.1.ph), !inline_history !287
  %i.hp = and i32 %2, 8192
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.an, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit291

bb.an:                                            ; preds = %bb.am
  %i.hr = call noundef i32 @_ZN12duckdb_miniz33mz_zip_reader_extract_to_callbackEPNS_14mz_zip_archiveEjPFmPvmPKvmES2_j(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull @_ZN12duckdb_minizL29mz_zip_compute_crc32_callbackEPvmPKvm, ptr noundef nonnull %i.c, i32 noundef 0)
  %.not247 = icmp eq i32 %i.hr, 0
  br i1 %.not247, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit291, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hs = load i32, ptr %i.c, align 4, !tbaa !3
  %.not248 = icmp eq i32 %i.hs, %i.hl
  br i1 %.not248, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit291, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit: ; preds = %bb.ao
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 30, ptr %i.ht, align 4, !tbaa !211
  br label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit291

bb.ap:                                            ; preds = %.thread427, %bb.ae, %.thread418, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit255, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit269, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit271
  %i.hu = load ptr, ptr %i.i, align 8, !tbaa !209
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !212
  call void %i.hu(ptr noundef %i.hw, ptr noundef %.sroa.0.1.ph), !inline_history !287
  br label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit291

_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit291: ; preds = %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit265, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit263, %bb.f, %bb.a, %bb.am, %bb.ao, %bb.an, %bb.j, %_ZN12duckdb_minizL14mz_zip_get_cdhEPNS_14mz_zip_archiveEj.exit, %bb.ap, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit273, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit275, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit277, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit279, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit281, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit283, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit285, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit287, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit289
  %.4 = phi i32 [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit289 ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit287 ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit285 ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit281 ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit279 ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit277 ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit275 ], [ 0, %bb.ap ], [ 0, %bb.f ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit ], [ 0, %bb.an ], [ 1, %bb.am ], [ 1, %bb.j ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit273 ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit283 ], [ 0, %_ZN12duckdb_minizL14mz_zip_get_cdhEPNS_14mz_zip_archiveEj.exit ], [ 1, %bb.ao ], [ 0, %bb.a ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit263 ], [ 0, %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit265 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  ret i32 %.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN12duckdb_minizL25mz_zip_file_stat_internalEPNS_14mz_zip_archiveEjPKhPNS_24mz_zip_archive_file_statEPi(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #18 {
bb.a:
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp ne ptr %2, null
  %i.b = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i205 = icmp eq ptr %0, null
  br i1 %.not.i205, label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit206, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.c, align 4, !tbaa !211
  br label %_ZN12duckdb_minizL16mz_zip_set_errorEPNS_14mz_zip_archiveENS_12mz_zip_errorE.exit206

bb.f:                                             ; preds = %bb.c
  store i32 %1, ptr %3, align 8, !tbaa !288
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !202
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !239
end_hunk_0
begin_hunk_1_@_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii:bb.a
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !3
  %i.ku = add nsw i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 4, !tbaa !3
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !350
  %i.ky = zext i16 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !3
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !3
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter219.next.3 = add i64 %niter219, 4         ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !365

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod216.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod216.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next129.3, %._crit_edge.unr-lcssa ]
  %lcmp.mod217 = icmp ne i64 %xtraiter214, 0
  tail call void @llvm.assume(i1 %lcmp.mod217)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next129.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter215 = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter215.next, %.lr.ph.epil ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv128.epil
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !350
  %i.le = zext i16 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !3
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4, !tbaa !3
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !366

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.li = icmp eq i32 %.173.lcssa, 1
  br i1 %i.li, label %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge
  %i.lj = zext nneg i32 %3 to i64                 ; 11 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 5 uses
  %i.ll = sub nuw nsw i64 32, %i.lj               ; 2 uses
  %n.vec = and i64 %i.ll, 56                      ; 4 uses
  %i.lm = add nuw nsw i64 %n.vec, %i.lj
  %.promoted.i = load i32, ptr %i.lk, align 4, !tbaa !3
  %i.ln = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i, i64 0
  %i.lo = getelementptr [4 x i8], ptr %i.c, i64 %i.lj ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 20
  %wide.load = load <4 x i32>, ptr %i.lp, align 4, !tbaa !3
  %wide.load180 = load <4 x i32>, ptr %i.lq, align 4, !tbaa !3 ; 2 uses
  %i.lr = add <4 x i32> %wide.load, %i.ln         ; 2 uses
  %i.ls = icmp eq i64 %n.vec, 8
  br i1 %i.ls, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %.preheader35.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lu = getelementptr [4 x i8], ptr %i.lt, i64 %i.lj ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  %wide.load.1 = load <4 x i32>, ptr %i.lv, align 4, !tbaa !3
  %wide.load180.1 = load <4 x i32>, ptr %i.lw, align 4, !tbaa !3
  %i.lx = add <4 x i32> %wide.load.1, %i.lr       ; 2 uses
  %i.ly = add <4 x i32> %wide.load180.1, %wide.load180 ; 2 uses
  %i.lz = icmp eq i64 %n.vec, 16
  br i1 %i.lz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.mb = getelementptr [4 x i8], ptr %i.ma, i64 %i.lj ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %wide.load.2 = load <4 x i32>, ptr %i.mc, align 4, !tbaa !3
  %wide.load180.2 = load <4 x i32>, ptr %i.md, align 4, !tbaa !3
  %i.me = add <4 x i32> %wide.load.2, %i.lx
  %i.mf = add <4 x i32> %wide.load180.2, %i.ly
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %.preheader35.i
  %.lcssa187 = phi <4 x i32> [ %i.lr, %.preheader35.i ], [ %i.lx, %vector.body.1 ], [ %i.me, %vector.body.2 ]
  %.lcssa186 = phi <4 x i32> [ %wide.load180, %.preheader35.i ], [ %i.ly, %vector.body.1 ], [ %i.mf, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa186, %.lcssa187
  %i.mg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.mg, ptr %i.lk, align 4, !tbaa !3
  %cmp.n = icmp eq i64 %i.ll, %n.vec
  br i1 %cmp.n, label %.preheader34.i.preheader, label %scalar.ph

.preheader34.i.preheader:                         ; preds = %scalar.ph, %middle.block
  %xtraiter220 = and i64 %i.lj, 3                 ; 3 uses
  %unroll_iter225 = and i64 %i.lj, 12
  br label %.preheader34.i

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %scalar.ph ], [ %i.lm, %middle.block ]
  %i.mh = phi i32 [ %i.mk, %scalar.ph ], [ %i.mg, %middle.block ]
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 3 uses
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i90
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !3
  %i.mk = add nsw i32 %i.mj, %i.mh                ; 2 uses
  store i32 %i.mk, ptr %i.lk, align 4, !tbaa !3
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, 32
  br i1 %exitcond.not.i91, label %.preheader34.i.preheader, label %scalar.ph, !llvm.loop !367

.preheader.i92.unr-lcssa:                         ; preds = %.preheader34.i
  %lcmp.mod222.not = icmp eq i64 %xtraiter220, 0
  br i1 %lcmp.mod222.not, label %.preheader.i92, label %.preheader34.i.epil.preheader

.preheader34.i.epil.preheader:                    ; preds = %.preheader.i92.unr-lcssa
  %lcmp.mod224 = icmp ne i64 %xtraiter220, 0
  tail call void @llvm.assume(i1 %lcmp.mod224)
  br label %.preheader34.i.epil

.preheader34.i.epil:                              ; preds = %.preheader34.i.epil, %.preheader34.i.epil.preheader
  %indvars.iv48.i.epil = phi i64 [ %indvars.iv.next49.i.epil, %.preheader34.i.epil ], [ %indvars.iv.next49.i.3, %.preheader34.i.epil.preheader ] ; 3 uses
  %.040.i.epil = phi i32 [ %i.mq, %.preheader34.i.epil ], [ %i.nq, %.preheader34.i.epil.preheader ]
  %epil.iter221 = phi i64 [ %epil.iter221.next, %.preheader34.i.epil ], [ 0, %.preheader34.i.epil.preheader ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i.epil
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !3
  %i.mn = trunc i64 %indvars.iv48.i.epil to i32
  %i.mo = sub i32 %3, %i.mn
  %i.mp = shl i32 %i.mm, %i.mo
  %i.mq = add i32 %i.mp, %.040.i.epil             ; 2 uses
  %indvars.iv.next49.i.epil = add nsw i64 %indvars.iv48.i.epil, -1
  %epil.iter221.next = add i64 %epil.iter221, 1   ; 2 uses
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.next, %xtraiter220
  br i1 %epil.iter221.cmp.not, label %.preheader.i92, label %.preheader34.i.epil, !llvm.loop !369

.preheader.i92:                                   ; preds = %.preheader34.i.epil, %.preheader.i92.unr-lcssa
  %.lcssa185 = phi i32 [ %i.nq, %.preheader.i92.unr-lcssa ], [ %i.mq, %.preheader34.i.epil ] ; 2 uses
  %i.mr = shl nuw nsw i64 1, %i.lj                ; 2 uses
  %i.ms = zext i32 %.lcssa185 to i64
  %.not42.i = icmp eq i64 %i.mr, %i.ms
  br i1 %.not42.i, label %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit, label %.lr.ph.i93

.preheader34.i:                                   ; preds = %.preheader34.i, %.preheader34.i.preheader
  %indvars.iv48.i = phi i64 [ %i.lj, %.preheader34.i.preheader ], [ %indvars.iv.next49.i.3, %.preheader34.i ] ; 6 uses
  %.040.i = phi i32 [ 0, %.preheader34.i.preheader ], [ %i.nq, %.preheader34.i ]
  %niter226 = phi i64 [ 0, %.preheader34.i.preheader ], [ %niter226.next.3, %.preheader34.i ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !3
  %i.mv = trunc i64 %indvars.iv48.i to i32
  %i.mw = sub nsw i32 %3, %i.mv
  %i.mx = shl i32 %i.mu, %i.mw
  %i.my = add i32 %i.mx, %.040.i
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, -1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !3
  %i.nb = trunc i64 %indvars.iv.next49.i to i32
  %i.nc = sub nsw i32 %3, %i.nb
  %i.nd = shl i32 %i.na, %i.nc
  %i.ne = add i32 %i.nd, %i.my
  %indvars.iv.next49.i.1 = add nsw i64 %indvars.iv48.i, -2 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.1
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !3
  %i.nh = trunc i64 %indvars.iv.next49.i.1 to i32
  %i.ni = sub nsw i32 %3, %i.nh
  %i.nj = shl i32 %i.ng, %i.ni
  %i.nk = add i32 %i.nj, %i.ne
  %indvars.iv.next49.i.2 = add nsw i64 %indvars.iv48.i, -3 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.2
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !3
  %i.nn = trunc i64 %indvars.iv.next49.i.2 to i32
  %i.no = sub nsw i32 %3, %i.nn
  %i.np = shl i32 %i.nm, %i.no
  %i.nq = add i32 %i.np, %i.nk                    ; 3 uses
  %indvars.iv.next49.i.3 = add nsw i64 %indvars.iv48.i, -4 ; 2 uses
  %niter226.next.3 = add nuw nsw i64 %niter226, 4 ; 2 uses
  %niter226.ncmp.3.not = icmp eq i64 %niter226.next.3, %unroll_iter225
  br i1 %niter226.ncmp.3.not, label %.preheader.i92.unr-lcssa, label %.preheader34.i, !llvm.loop !370

.lr.ph.i93:                                       ; preds = %.preheader.i92, %.loopexit.i
  %.143.i = phi i32 [ %i.ob, %.loopexit.i ], [ %.lcssa185, %.preheader.i92 ]
  %i.nr = load i32, ptr %i.lk, align 4, !tbaa !3
  %i.ns = add nsw i32 %i.nr, -1
  store i32 %i.ns, ptr %i.lk, align 4, !tbaa !3
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.nt = icmp sgt i64 %indvars.iv51.i178, 2
  br i1 %i.nt, label %bb.v, label %.loopexit.i, !llvm.loop !371

bb.v:                                             ; preds = %.lr.ph.i93, %bb.u
  %indvars.iv51.i178 = phi i64 [ %i.lj, %.lr.ph.i93 ], [ %indvars.iv.next52.i, %bb.u ] ; 3 uses
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i178, -1 ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !3  ; 2 uses
  %.not32.i = icmp eq i32 %i.nv, 0
  br i1 %.not32.i, label %bb.u, label %bb.w, !llvm.loop !371

bb.w:                                             ; preds = %bb.v
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nx = add nsw i32 %i.nv, -1
  store i32 %i.nx, ptr %i.nw, align 4, !tbaa !3
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv51.i178 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !3
  %i.oa = add nsw i32 %i.nz, 2
  store i32 %i.oa, ptr %i.ny, align 4, !tbaa !3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.u, %bb.w
  %i.ob = add i32 %.143.i, -1                     ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %.not.i94 = icmp eq i64 %i.mr, %i.oc
  br i1 %.not.i94, label %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit, label %.lr.ph.i93, !llvm.loop !372

_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit: ; preds = %.loopexit.i, %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit, %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit.thread, %_ZN12duckdb_minizL34tdefl_calculate_minimum_redundancyEPNS_14tdefl_sym_freqEi.exit, %._crit_edge, %.preheader.i92
  %.us-phi56.i163165170 = phi ptr [ %6, %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit.thread ], [ %.04052.us.i, %.preheader.i92 ], [ %.04052.us.i, %._crit_edge ], [ %.04052.us.i, %_ZN12duckdb_minizL34tdefl_calculate_minimum_redundancyEPNS_14tdefl_sym_freqEi.exit ], [ %.04052.us.i, %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit ], [ %.04052.us.i, %.loopexit.i ] ; 5 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.oe = getelementptr inbounds nuw [288 x i8], ptr %i.od, i64 %i.aj ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(288) %i.oe, i8 0, i64 288, i1 false)
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.og = getelementptr inbounds nuw [576 x i8], ptr %i.of, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(576) %i.og, i8 0, i64 576, i1 false)
  %i.oh = add nuw nsw i32 %3, 1
  %wide.trip.count140 = zext nneg i32 %i.oh to i64 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit, %._crit_edge108
  %indvars.iv137 = phi i64 [ 1, %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit ], [ %indvars.iv.next138, %._crit_edge108 ] ; 3 uses
  %.069109 = phi i32 [ %.173.lcssa, %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit ], [ %.170.lcssa, %._crit_edge108 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv137
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !3  ; 5 uses
  %i.ok = icmp sgt i32 %i.oj, 0
  br i1 %i.ok, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.x
  %i.ol = trunc i64 %indvars.iv137 to i8          ; 5 uses
  %i.om = sext i32 %.069109 to i64                ; 2 uses
  %xtraiter229 = and i32 %i.oj, 3                 ; 2 uses
  %lcmp.mod230.not = icmp eq i32 %xtraiter229, 0
  br i1 %lcmp.mod230.not, label %.prol.loopexit228, label %.prol.preheader227

.prol.preheader227:                               ; preds = %.lr.ph107, %.prol.preheader227
  %indvars.iv134.prol = phi i64 [ %indvars.iv.next135.prol, %.prol.preheader227 ], [ %i.om, %.lr.ph107 ]
  %.074104.prol = phi i32 [ %i.os, %.prol.preheader227 ], [ %i.oj, %.lr.ph107 ]
  %prol.iter231 = phi i32 [ %prol.iter231.next, %.prol.preheader227 ], [ 0, %.lr.ph107 ]
  %indvars.iv.next135.prol = add nsw i64 %indvars.iv134.prol, -1 ; 4 uses
  %i.on = getelementptr inbounds [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv.next135.prol
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !352
  %i.oq = zext i16 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.oq
  store i8 %i.ol, ptr %i.or, align 1, !tbaa !7
  %i.os = add nsw i32 %.074104.prol, -1           ; 2 uses
  %prol.iter231.next = add i32 %prol.iter231, 1   ; 2 uses
  %prol.iter231.cmp.not = icmp eq i32 %prol.iter231.next, %xtraiter229
  br i1 %prol.iter231.cmp.not, label %.prol.loopexit228, label %.prol.preheader227, !llvm.loop !373

.prol.loopexit228:                                ; preds = %.prol.preheader227, %.lr.ph107
  %indvars.iv134.unr = phi i64 [ %i.om, %.lr.ph107 ], [ %indvars.iv.next135.prol, %.prol.preheader227 ]
  %.074104.unr = phi i32 [ %i.oj, %.lr.ph107 ], [ %i.os, %.prol.preheader227 ]
  %indvars.iv.next135.lcssa.unr = phi i64 [ poison, %.lr.ph107 ], [ %indvars.iv.next135.prol, %.prol.preheader227 ]
  %i.ot = icmp ult i32 %i.oj, 4
  br i1 %i.ot, label %._crit_edge108.loopexit, label %.lr.ph107.new

.lr.ph107.new:                                    ; preds = %.prol.loopexit228, %.lr.ph107.new
  %indvars.iv134 = phi i64 [ %indvars.iv.next135.3, %.lr.ph107.new ], [ %indvars.iv134.unr, %.prol.loopexit228 ] ; 4 uses
  %.074104 = phi i32 [ %i.po, %.lr.ph107.new ], [ %.074104.unr, %.prol.loopexit228 ] ; 2 uses
  %i.ou = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.ov = getelementptr i8, ptr %i.ou, i64 -2
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !352
  %i.ox = zext i16 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ox
  store i8 %i.ol, ptr %i.oy, align 1, !tbaa !7
  %i.oz = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pa = getelementptr i8, ptr %i.oz, i64 -6
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !352
  %i.pc = zext i16 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pc
  store i8 %i.ol, ptr %i.pd, align 1, !tbaa !7
  %i.pe = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pf = getelementptr i8, ptr %i.pe, i64 -10
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !352
  %i.ph = zext i16 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ph
  store i8 %i.ol, ptr %i.pi, align 1, !tbaa !7
  %indvars.iv.next135.3 = add nsw i64 %indvars.iv134, -4 ; 3 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv.next135.3
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !352
  %i.pm = zext i16 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pm
  store i8 %i.ol, ptr %i.pn, align 1, !tbaa !7
  %i.po = add nsw i32 %.074104, -4
  %i.pp = icmp sgt i32 %.074104, 4
  br i1 %i.pp, label %.lr.ph107.new, label %._crit_edge108.loopexit, !llvm.loop !374

._crit_edge108.loopexit:                          ; preds = %.lr.ph107.new, %.prol.loopexit228
  %indvars.iv.next135.lcssa = phi i64 [ %indvars.iv.next135.lcssa.unr, %.prol.loopexit228 ], [ %indvars.iv.next135.3, %.lr.ph107.new ]
  %i.pq = trunc nsw i64 %indvars.iv.next135.lcssa to i32
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.x
  %.170.lcssa = phi i32 [ %.069109, %bb.x ], [ %i.pq, %._crit_edge108.loopexit ]
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %bb.y, label %bb.x, !llvm.loop !375

bb.y:                                             ; preds = %._crit_edge108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa
  %lcmp.mod188 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.z ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.z ]
  %i.pr = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.epil
  %i.ps = load i8, ptr %i.pr, align 1, !tbaa !7
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !3
  %i.pw = add nsw i32 %i.pv, 1
  store i32 %i.pw, ptr %i.pu, align 4, !tbaa !3
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %bb.z, !llvm.loop !376

.loopexit.loopexit:                               ; preds = %bb.z, %.loopexit.loopexit.unr-lcssa
  %.pre152 = add nuw nsw i32 %3, 1
  %.pre154 = zext nneg i32 %.pre152 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.y
  %wide.trip.count145.pre-phi = phi i64 [ %.pre154, %.loopexit.loopexit ], [ %wide.trip.count140, %bb.y ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.px, align 4, !tbaa !3
  %i.py = add nsw i64 %wide.trip.count145.pre-phi, -2 ; 2 uses
  %i.pz = add nsw i64 %wide.trip.count145.pre-phi, -3
  %xtraiter233 = and i64 %i.py, 3                 ; 3 uses
  %i.qa = icmp ult i64 %i.pz, 3
  br i1 %i.qa, label %.epil.preheader232, label %.loopexit.new

.loopexit.new:                                    ; preds = %.loopexit
  %unroll_iter237 = and i64 %i.py, -4
  br label %bb.ab

.preheader.unr-lcssa:                             ; preds = %bb.ab
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  br i1 %lcmp.mod235.not, label %.preheader, label %.epil.preheader232

.epil.preheader232:                               ; preds = %.preheader.unr-lcssa, %.loopexit
  %indvars.iv142.epil.init = phi i64 [ 2, %.loopexit ], [ %indvars.iv.next143.3, %.preheader.unr-lcssa ]
  %.271111.epil.init = phi i32 [ 0, %.loopexit ], [ %i.ri, %.preheader.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter233, 0
  tail call void @llvm.assume(i1 %lcmp.mod236)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader232
  %indvars.iv142.epil = phi i64 [ %indvars.iv142.epil.init, %.epil.preheader232 ], [ %indvars.iv.next143.epil, %bb.aa ] ; 3 uses
  %.271111.epil = phi i32 [ %.271111.epil.init, %.epil.preheader232 ], [ %i.qf, %bb.aa ]
  %epil.iter234 = phi i64 [ 0, %.epil.preheader232 ], [ %epil.iter234.next, %bb.aa ]
  %i.qb = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142.epil
  %i.qc = getelementptr i8, ptr %i.qb, i64 -4
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !3
  %i.qe = add nsw i32 %i.qd, %.271111.epil
  %i.qf = shl i32 %i.qe, 1                        ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142.epil
  store i32 %i.qf, ptr %i.qg, align 4, !tbaa !3
  %indvars.iv.next143.epil = add nuw nsw i64 %indvars.iv142.epil, 1
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %.preheader, label %bb.aa, !llvm.loop !377

.preheader:                                       ; preds = %bb.aa, %.preheader.unr-lcssa
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.qi = zext nneg i32 %1 to i64                 ; 2 uses
  %i.qj = getelementptr inbounds nuw [288 x i8], ptr %i.qh, i64 %i.qi
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.ql = getelementptr inbounds nuw [576 x i8], ptr %i.qk, i64 %i.qi
  %wide.trip.count150 = zext nneg i32 %2 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.ab, %.loopexit.new
  %indvars.iv142 = phi i64 [ 2, %.loopexit.new ], [ %indvars.iv.next143.3, %bb.ab ] ; 6 uses
  %.271111 = phi i32 [ 0, %.loopexit.new ], [ %i.ri, %bb.ab ]
  %niter238 = phi i64 [ 0, %.loopexit.new ], [ %niter238.next.3, %bb.ab ]
  %i.qm = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv142
  %i.qn = getelementptr i8, ptr %i.qm, i64 -4
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !3
  %i.qp = add nsw i32 %i.qo, %.271111
  %i.qq = shl i32 %i.qp, 1                        ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142
  store i32 %i.qq, ptr %i.qr, align 8, !tbaa !3
  %indvars.iv.next143 = or disjoint i64 %indvars.iv142, 1 ; 2 uses
end_hunk_1
