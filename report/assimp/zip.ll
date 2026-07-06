inline.NumInlined: 193
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 62
begin_hunk_0_@mz_zip_validate_file:bb.a
  %i.bt = add i64 %i.bs, %i.bo                    ; 2 uses
  %i.bu = zext i16 %i.bc to i64                   ; 3 uses
  %i.bv = add i64 %i.bt, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bx = load i64, ptr %i.bw, align 8            ; 3 uses
  %i.by = add i64 %i.bx, %i.bv                    ; 2 uses
  %i.bz = load i64, ptr %0, align 8
  %i.ca = icmp ugt i64 %i.by, %i.bz
  br i1 %i.ca, label %mz_zip_set_error.exit271, label %bb.r

mz_zip_set_error.exit271:                         ; preds = %bb.q
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.cb, align 4
  br label %mz_zip_set_error.exit287

bb.r:                                             ; preds = %bb.q
  %i.cc = call i16 @llvm.umax.i16(i16 %i.ba, i16 %i.bc) ; 2 uses
  %.not418 = icmp eq i16 %i.cc, 0
  br i1 %.not418, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = zext i16 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = call ptr %i.cf(ptr noundef %i.ch, ptr noundef null, i64 noundef 1, i64 noundef %i.cd) #36, !inline_history !21 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %mz_zip_set_error.exit269, label %bb.t

mz_zip_set_error.exit269:                         ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 16, ptr %i.ck, align 4
  br label %.thread387

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0.1.ph = phi ptr [ %i.ci, %bb.s ], [ null, %bb.r ] ; 13 uses
  %.not230 = icmp eq i16 %i.ba, 0
  br i1 %.not230, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %i.k, align 8
  %i.cm = load ptr, ptr %i.at, align 8
  %i.cn = call i64 %i.cl(ptr noundef %i.cm, i64 noundef %i.bs, ptr noundef %.sroa.0.1.ph, i64 noundef %i.bo) #36
  %.not231 = icmp eq i64 %i.cn, %i.bo
  br i1 %.not231, label %bb.v, label %mz_zip_set_error.exit267

mz_zip_set_error.exit267:                         ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.co, align 4
  br label %.thread387

bb.v:                                             ; preds = %bb.u
  %bcmp = call i32 @bcmp(ptr nonnull %i.bp, ptr %.sroa.0.1.ph, i64 %i.bo)
  %.not232 = icmp eq i32 %bcmp, 0
  br i1 %.not232, label %bb.w, label %mz_zip_set_error.exit265

mz_zip_set_error.exit265:                         ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 30, ptr %i.cp, align 4
  br label %.thread387

bb.w:                                             ; preds = %bb.v, %bb.t
  %.not233 = icmp eq i16 %i.bc, 0
  br i1 %.not233, label %.thread410, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cq = icmp eq i32 %i.bf, -1
  %i.cr = icmp eq i32 %i.bi, -1
  %or.cond8 = select i1 %i.cq, i1 true, i1 %i.cr
  br i1 %or.cond8, label %bb.y, label %.thread410

bb.y:                                             ; preds = %bb.x
  %i.cs = load ptr, ptr %i.k, align 8
  %i.ct = load ptr, ptr %i.at, align 8
  %i.cu = call i64 %i.cs(ptr noundef %i.ct, i64 noundef %i.bt, ptr noundef %.sroa.0.1.ph, i64 noundef %i.bu) #36
  %.not234 = icmp eq i64 %i.cu, %i.bu
  br i1 %.not234, label %.preheader, label %mz_zip_set_error.exit263

mz_zip_set_error.exit263:                         ; preds = %bb.y
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 20, ptr %i.cv, align 4
  br label %.thread387

.preheader:                                       ; preds = %bb.y, %bb.ad
  %.0209 = phi ptr [ %i.dz, %bb.ad ], [ %.sroa.0.1.ph, %bb.y ] ; 7 uses
  %.0207 = phi i32 [ %i.ea, %bb.ad ], [ %i.bd, %bb.y ] ; 3 uses
  %i.cw = icmp ult i32 %.0207, 4
  br i1 %i.cw, label %mz_zip_set_error.exit261, label %bb.z

mz_zip_set_error.exit261:                         ; preds = %.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.cx, align 4
  br label %.thread387

bb.z:                                             ; preds = %.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %.0209, i64 2
  %i.cz = load i16, ptr %i.cy, align 1            ; 2 uses
  %i.da = zext i16 %i.cz to i32
  %i.db = add nuw nsw i32 %i.da, 4                ; 3 uses
  %i.dc = icmp ugt i32 %i.db, %.0207
  br i1 %i.dc, label %mz_zip_set_error.exit259, label %bb.aa

mz_zip_set_error.exit259:                         ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.dd, align 4
  br label %.thread387

bb.aa:                                            ; preds = %bb.z
  %i.de = load i16, ptr %.0209, align 1
  %i.df = icmp eq i16 %i.de, 1
  br i1 %i.df, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dg = icmp ult i16 %i.cz, 16
  br i1 %i.dg, label %mz_zip_set_error.exit257, label %bb.ac

mz_zip_set_error.exit257:                         ; preds = %bb.ab
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 9, ptr %i.dh, align 4
  br label %.thread387

bb.ac:                                            ; preds = %bb.ab
  %i.di = getelementptr inbounds nuw i8, ptr %.0209, i64 4
  %i.dj = load i32, ptr %i.di, align 1
  %i.dk = zext i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %.0209, i64 8
  %i.dm = load i32, ptr %i.dl, align 1
  %i.dn = zext i32 %i.dm to i64
  %i.do = shl nuw i64 %i.dn, 32
  %i.dp = or disjoint i64 %i.do, %i.dk
  %i.dq = getelementptr inbounds nuw i8, ptr %.0209, i64 12
  %i.dr = load i32, ptr %i.dq, align 1
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %.0209, i64 16
  %i.du = load i32, ptr %i.dt, align 1
  %i.dv = zext i32 %i.du to i64
  %i.dw = shl nuw i64 %i.dv, 32
  %i.dx = or disjoint i64 %i.dw, %i.ds
  br label %.thread410

bb.ad:                                            ; preds = %bb.aa
  %i.dy = zext nneg i32 %i.db to i64
  %i.dz = getelementptr inbounds nuw i8, ptr %.0209, i64 %i.dy
  %i.ea = sub i32 %.0207, %i.db                   ; 2 uses
  %.not235 = icmp eq i32 %i.ea, 0
  br i1 %.not235, label %.thread410, label %.preheader

.thread410:                                       ; preds = %bb.ad, %bb.ac, %bb.x, %bb.w
  %.4202 = phi i64 [ %i.bj, %bb.w ], [ %i.bj, %bb.x ], [ %i.dp, %bb.ac ], [ %i.bj, %bb.ad ]
  %.4197 = phi i64 [ %i.bg, %bb.w ], [ %i.bg, %bb.x ], [ %i.dx, %bb.ac ], [ %i.bg, %bb.ad ] ; 2 uses
  %i.eb = phi i1 [ false, %bb.w ], [ false, %bb.x ], [ true, %bb.ac ], [ false, %bb.ad ] ; 2 uses
  %i.ec = and i8 %i.bn, 8
  %i.ed = icmp eq i8 %i.ec, 0
  %i.ee = icmp ne i64 %.4197, 0
  %or.cond10 = select i1 %i.ed, i1 true, i1 %i.ee
  %i.ef = icmp ne i32 %i.bl, 0
  %or.cond12 = select i1 %or.cond10, i1 true, i1 %i.ef
  br i1 %or.cond12, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %.thread410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.eg = getelementptr inbounds nuw i8, ptr %i.f, i64 100 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = icmp ne i32 %i.eh, 0
  %i.ej = or i1 %i.eb, %i.ei
  %i.ek = load ptr, ptr %i.k, align 8
  %i.el = load ptr, ptr %i.at, align 8
  %i.em = select i1 %i.ej, i64 24, i64 16         ; 2 uses
  %i.en = call i64 %i.ek(ptr noundef %i.el, i64 noundef %i.by, ptr noundef nonnull %i.d, i64 noundef %i.em) #36
  %.not236 = icmp eq i64 %i.en, %i.em
  br i1 %.not236, label %bb.af, label %.thread416

bb.af:                                            ; preds = %bb.ae
  %i.eo = load i32, ptr %i.d, align 16            ; 5 uses
  %i.ep = icmp eq i32 %i.eo, 134695760            ; 15 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %.sroa.gep.val = load i8, ptr %.sroa.gep, align 4 ; 2 uses
  %i.eq = trunc i32 %i.eo to i8
  %i.er = select i1 %i.ep, i8 %.sroa.gep.val, i8 %i.eq
  %i.es = zext i8 %i.er to i32
  %.sroa.gep.sroa.gep368 = getelementptr inbounds nuw i8, ptr %i.d, i64 5 ; 2 uses
  %.sroa.gep.sroa.gep368.val = load i8, ptr %.sroa.gep.sroa.gep368, align 1
  %i.et = lshr i32 %i.eo, 8
  %i.eu = trunc i32 %i.et to i8
  %i.ev = select i1 %i.ep, i8 %.sroa.gep.sroa.gep368.val, i8 %i.eu
  %i.ew = zext i8 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 8
  %i.ey = or disjoint i32 %i.ex, %i.es
  %.sroa.gep.sroa.gep365 = getelementptr inbounds nuw i8, ptr %i.d, i64 6 ; 2 uses
  %.sroa.gep.sroa.gep365.val = load i8, ptr %.sroa.gep.sroa.gep365, align 2
  %i.ez = lshr i32 %i.eo, 16
  %i.fa = trunc i32 %i.ez to i8
  %i.fb = select i1 %i.ep, i8 %.sroa.gep.sroa.gep365.val, i8 %i.fa
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, 16
  %i.fe = or disjoint i32 %i.fd, %i.ey
  %.sroa.gep.sroa.gep362 = getelementptr inbounds nuw i8, ptr %i.d, i64 7 ; 2 uses
  %.sroa.gep.sroa.gep362.val = load i8, ptr %.sroa.gep.sroa.gep362, align 1
  %i.ff = lshr i32 %i.eo, 24
  %4 = trunc nuw i32 %i.ff to i8
  %5 = select i1 %i.ep, i8 %.sroa.gep.sroa.gep362.val, i8 %4
  %6 = zext i8 %5 to i32
  %i.fg = shl nuw i32 %6, 24
  %i.fh = or disjoint i32 %i.fg, %i.fe            ; 2 uses
  %i.fi = load i32, ptr %i.eg, align 4
  %i.fj = icmp ne i32 %i.fi, 0
  %or.cond14 = or i1 %i.eb, %i.fj
  %.sroa.gep.sroa.gep359 = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.gep.sroa.gep359.val = load i8, ptr %.sroa.gep.sroa.gep359, align 8
  %i.fk = select i1 %i.ep, i8 %.sroa.gep.sroa.gep359.val, i8 %.sroa.gep.val
  %i.fl = zext i8 %i.fk to i64
  %.sroa.gep448 = getelementptr inbounds nuw i8, ptr %i.d, i64 9 ; 2 uses
  %.sroa.gep448.val = load i8, ptr %.sroa.gep448, align 1
  %.sroa.gep.sroa.gep368.val498 = load i8, ptr %.sroa.gep.sroa.gep368, align 1
  %i.fm = select i1 %i.ep, i8 %.sroa.gep448.val, i8 %.sroa.gep.sroa.gep368.val498
  %i.fn = zext i8 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 8
  %i.fp = or disjoint i64 %i.fo, %i.fl
  %.sroa.gep450 = getelementptr inbounds nuw i8, ptr %i.d, i64 10 ; 3 uses
  %.sroa.gep450.val = load i8, ptr %.sroa.gep450, align 2
  %.sroa.gep.sroa.gep365.val499 = load i8, ptr %.sroa.gep.sroa.gep365, align 2
  %i.fq = select i1 %i.ep, i8 %.sroa.gep450.val, i8 %.sroa.gep.sroa.gep365.val499
  %i.fr = zext i8 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 16
  %i.ft = or disjoint i64 %i.fp, %i.fs
  %.sroa.gep452 = getelementptr inbounds nuw i8, ptr %i.d, i64 11 ; 3 uses
  %.sroa.gep452.val = load i8, ptr %.sroa.gep452, align 1
  %.sroa.gep.sroa.gep362.val500 = load i8, ptr %.sroa.gep.sroa.gep362, align 1
  %i.fu = select i1 %i.ep, i8 %.sroa.gep452.val, i8 %.sroa.gep.sroa.gep362.val500
  %i.fv = zext i8 %i.fu to i64
  %i.fw = shl nuw nsw i64 %i.fv, 24
  %i.fx = or disjoint i64 %i.ft, %i.fw            ; 2 uses
  %.sroa.gep454 = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  %.sroa.gep454.val = load i8, ptr %.sroa.gep454, align 4
  %.sroa.gep.sroa.gep359.val501 = load i8, ptr %.sroa.gep.sroa.gep359, align 8
  %i.fy = select i1 %i.ep, i8 %.sroa.gep454.val, i8 %.sroa.gep.sroa.gep359.val501
  %i.fz = zext i8 %i.fy to i64                    ; 2 uses
  %.sroa.gep456 = getelementptr inbounds nuw i8, ptr %i.d, i64 13
  %.sroa.gep456.val = load i8, ptr %.sroa.gep456, align 1
  %.sroa.gep448.val502 = load i8, ptr %.sroa.gep448, align 1
  %i.ga = select i1 %i.ep, i8 %.sroa.gep456.val, i8 %.sroa.gep448.val502
  %i.gb = zext i8 %i.ga to i64                    ; 2 uses
  br i1 %or.cond14, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.sroa.gep458 = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %.sroa.gep458.val = load i8, ptr %.sroa.gep458, align 2
  %.sroa.gep450.val503 = load i8, ptr %.sroa.gep450, align 2
  %i.gc = select i1 %i.ep, i8 %.sroa.gep458.val, i8 %.sroa.gep450.val503
  %i.gd = zext i8 %i.gc to i64
  %.sroa.gep460 = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %.sroa.gep460.val = load i8, ptr %.sroa.gep460, align 1
  %.sroa.gep452.val504 = load i8, ptr %.sroa.gep452, align 1
  %i.ge = select i1 %i.ep, i8 %.sroa.gep460.val, i8 %.sroa.gep452.val504
  %i.gf = zext i8 %i.ge to i64
  %i.gg = shl nuw i64 %i.gf, 56
  %i.gh = shl nuw nsw i64 %i.gd, 48
  %i.gi = shl nuw nsw i64 %i.gb, 40
  %i.gj = shl nuw nsw i64 %i.fz, 32
  %i.gk = or disjoint i64 %i.gi, %i.gj
  %i.gl = or disjoint i64 %i.gk, %i.gh
  %i.gm = or disjoint i64 %i.gl, %i.gg
  %i.gn = or disjoint i64 %i.gm, %i.fx
  %.sroa.gep462 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.go = load <8 x i8>, ptr %.sroa.gep462, align 16
  %i.gp = load <8 x i8>, ptr %.sroa.gep454, align 4
  %i.gq = insertelement <8 x i1> poison, i1 %i.ep, i64 0
  %i.gr = shufflevector <8 x i1> %i.gq, <8 x i1> poison, <8 x i32> zeroinitializer
  %i.gs = select <8 x i1> %i.gr, <8 x i8> %i.go, <8 x i8> %i.gp
  %i.gt = bitcast <8 x i8> %i.gs to i64
  %.pre = load i64, ptr %i.ad, align 8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gu = shl nuw nsw i64 %i.gb, 8
  %.sroa.gep444 = getelementptr inbounds nuw i8, ptr %i.d, i64 14
  %.sroa.gep444.val = load i8, ptr %.sroa.gep444, align 2
  %.sroa.gep436.val496 = load i8, ptr %.sroa.gep450, align 2
  %i.gv = select i1 %i.ep, i8 %.sroa.gep444.val, i8 %.sroa.gep436.val496
  %i.gw = zext i8 %i.gv to i64
  %i.gx = shl nuw nsw i64 %i.gw, 16
  %i.gy = or disjoint i64 %i.gu, %i.gx
  %.sroa.gep446 = getelementptr inbounds nuw i8, ptr %i.d, i64 15
  %.sroa.gep446.val = load i8, ptr %.sroa.gep446, align 1
  %.sroa.gep438.val497 = load i8, ptr %.sroa.gep452, align 1
  %i.gz = select i1 %i.ep, i8 %.sroa.gep446.val, i8 %.sroa.gep438.val497
  %i.ha = zext i8 %i.gz to i64
  %i.hb = shl nuw nsw i64 %i.ha, 24
  %i.hc = or disjoint i64 %i.gy, %i.hb
  %i.hd = or disjoint i64 %i.hc, %i.fz
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.he = phi i64 [ %.pre, %bb.ag ], [ %i.ae, %bb.ah ]
  %.0191 = phi i64 [ %i.gn, %bb.ag ], [ %i.fx, %bb.ah ]
  %.0190 = phi i64 [ %i.gt, %bb.ag ], [ %i.hd, %bb.ah ]
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hg = load i32, ptr %i.hf, align 8
  %.not237 = icmp eq i32 %i.fh, %i.hg
  %.not238 = icmp eq i64 %.0191, %i.bx
  %or.cond245 = select i1 %.not237, i1 %.not238, i1 false
  %.not239 = icmp eq i64 %.0190, %i.he
  %or.cond246 = select i1 %or.cond245, i1 %.not239, i1 false
  br i1 %or.cond246, label %bb.aj, label %.thread416

.thread416:                                       ; preds = %bb.ai, %bb.ae
  %.sink = phi i32 [ 20, %bb.ae ], [ 30, %bb.ai ]
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.sink, ptr %i.hh, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %.thread387

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %bb.al

bb.ak:                                            ; preds = %.thread410
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.hj = load i32, ptr %i.hi, align 8
  %.not240 = icmp eq i32 %i.bl, %i.hj
  %.not241 = icmp eq i64 %.4197, %i.bx
  %or.cond248 = select i1 %.not240, i1 %.not241, i1 false
  %.not242 = icmp eq i64 %.4202, %i.ae
  %or.cond249 = select i1 %or.cond248, i1 %.not242, i1 false
  br i1 %or.cond249, label %bb.al, label %mz_zip_set_error.exit251

mz_zip_set_error.exit251:                         ; preds = %bb.ak
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 30, ptr %i.hk, align 4
  br label %.thread387

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.hl = phi i32 [ %i.fh, %bb.aj ], [ %i.bl, %bb.ak ]
  %i.hm = load ptr, ptr %i.i, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ho = load ptr, ptr %i.hn, align 8
  call void %i.hm(ptr noundef %i.ho, ptr noundef %.sroa.0.1.ph) #36, !inline_history !17
  %i.hp = and i32 %2, 8192
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.am, label %mz_zip_set_error.exit287

bb.am:                                            ; preds = %bb.al
  %i.hr = call i32 @mz_zip_reader_extract_to_callback(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull @mz_zip_compute_crc32_callback, ptr noundef nonnull %i.c, i32 noundef 0)
  %.not243 = icmp eq i32 %i.hr, 0
  br i1 %.not243, label %mz_zip_set_error.exit287, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hs = load i32, ptr %i.c, align 4
  %.not244 = icmp eq i32 %i.hs, %i.hl
  br i1 %.not244, label %mz_zip_set_error.exit287, label %mz_zip_set_error.exit

mz_zip_set_error.exit:                            ; preds = %bb.an
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 30, ptr %i.ht, align 4
  br label %mz_zip_set_error.exit287

.thread387:                                       ; preds = %mz_zip_set_error.exit257, %mz_zip_set_error.exit259, %mz_zip_set_error.exit261, %.thread416, %mz_zip_set_error.exit263, %mz_zip_set_error.exit251, %mz_zip_set_error.exit265, %mz_zip_set_error.exit267, %mz_zip_set_error.exit269
  %.sroa.0.1384 = phi ptr [ %.sroa.0.1.ph, %.thread416 ], [ %.sroa.0.1.ph, %mz_zip_set_error.exit251 ], [ null, %mz_zip_set_error.exit269 ], [ %.sroa.0.1.ph, %mz_zip_set_error.exit265 ], [ %.sroa.0.1.ph, %mz_zip_set_error.exit267 ], [ %.sroa.0.1.ph, %mz_zip_set_error.exit263 ], [ %.sroa.0.1.ph, %mz_zip_set_error.exit261 ], [ %.sroa.0.1.ph, %mz_zip_set_error.exit259 ], [ %.sroa.0.1.ph, %mz_zip_set_error.exit257 ]
  %i.hu = load ptr, ptr %i.i, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hu(ptr noundef %i.hw, ptr noundef %.sroa.0.1384) #36, !inline_history !17
  br label %mz_zip_set_error.exit287

mz_zip_set_error.exit287:                         ; preds = %bb.f, %bb.a, %bb.al, %bb.an, %bb.am, %bb.j, %mz_zip_get_cdh.exit, %.thread387, %mz_zip_set_error.exit, %mz_zip_set_error.exit271, %mz_zip_set_error.exit273, %mz_zip_set_error.exit275, %mz_zip_set_error.exit277, %mz_zip_set_error.exit279, %mz_zip_set_error.exit281, %mz_zip_set_error.exit283, %mz_zip_set_error.exit285
  %.0 = phi i32 [ 0, %mz_zip_set_error.exit285 ], [ 0, %mz_zip_set_error.exit283 ], [ 0, %mz_zip_set_error.exit281 ], [ 0, %mz_zip_set_error.exit277 ], [ 0, %mz_zip_set_error.exit275 ], [ 0, %mz_zip_set_error.exit273 ], [ 0, %mz_zip_set_error.exit271 ], [ 0, %.thread387 ], [ 0, %bb.f ], [ 0, %mz_zip_set_error.exit ], [ 0, %bb.am ], [ 1, %bb.al ], [ 1, %bb.j ], [ 0, %mz_zip_set_error.exit279 ], [ 0, %mz_zip_get_cdh.exit ], [ 1, %bb.an ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) unnamed_addr #20 {
bb.a:
  %5 = alloca %struct.tm, align 8                 ; 11 uses
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = icmp ne ptr %2, null
  %i.b = icmp ne ptr %3, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i209 = icmp eq ptr %0, null
  br i1 %.not.i209, label %mz_zip_set_error.exit210, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 24, ptr %i.c, align 4
  br label %mz_zip_set_error.exit210

bb.f:                                             ; preds = %bb.c
  store i32 %1, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8
end_hunk_0
begin_hunk_1_@zip_entries_delete:bb.a
  %i.ax = trunc i64 %.05586.i.i to i32            ; 2 uses
  %i.ay = load ptr, ptr %i.k, align 8             ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not10.i.i.i.i, label %mz_zip_reader_file_stat.exit.i.i, label %bb.l

.split.us.i.i:                                    ; preds = %.lr.ph88.split.us.i.i, %.lr.ph88.split.i.i
  %.us-phi.i.i = phi i32 [ %i.au, %.lr.ph88.split.i.i ], [ %i.m, %.lr.ph88.split.us.i.i ]
  %i.az = sext i32 %.us-phi.i.i to i64
  br label %zip_entry_mark.exit.thread13.i

bb.l:                                             ; preds = %.preheader79.i.i
  %i.ba = load i32, ptr %i.e, align 8
  %.not11.i.i.i.i = icmp ugt i32 %i.ba, %i.ax
  br i1 %.not11.i.i.i.i, label %bb.m, label %mz_zip_reader_file_stat.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.ay, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.05586.i.i
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bg
  br label %mz_zip_reader_file_stat.exit.i.i

mz_zip_reader_file_stat.exit.i.i:                 ; preds = %bb.m, %bb.l, %.preheader79.i.i
  %.0.i.i.i.i = phi ptr [ %i.bh, %bb.m ], [ null, %bb.l ], [ null, %.preheader79.i.i ]
  %i.bi = call fastcc range(i32 0, 2) i32 @mz_zip_file_stat_internal(ptr noundef nonnull %0, i32 noundef %i.ax, ptr noundef %.0.i.i.i.i, ptr noundef nonnull %3, ptr noundef null)
  %.not72.not.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not72.not.i.i, label %zip_entry_mark.exit.thread13.i, label %bb.n

bb.n:                                             ; preds = %mz_zip_reader_file_stat.exit.i.i
  %i.bj = call i32 @zip_entry_close(ptr noundef nonnull %0) ; 0 uses
  %i.bk = load i64, ptr %i.l, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %i.bk, ptr %i.bl, align 8
  store i64 -1, ptr %i.av, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 0, ptr %i.bm, align 8
  %i.bn = add nuw nsw i64 %.05586.i.i, 1          ; 2 uses
  %exitcond101.not.i.i = icmp eq i64 %i.bn, %i.g
  br i1 %exitcond101.not.i.i, label %.preheader.i.i, label %.lr.ph88.split.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.preheader.i.i.new
  %.15690.i.i = phi i64 [ 0, %.preheader.i.i.new ], [ %i.ca, %bb.q ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.i.i.new ], [ %niter.next.1, %bb.q ]
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.15690.i.i ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = icmp ugt i64 %i.bq, %.052.lcssa.i.i
  br i1 %i.br, label %bb.o, label %.lr.ph.i.i.1

bb.o:                                             ; preds = %.lr.ph.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %.not67.i.i = icmp eq i32 %i.bt, 1
  %spec.store.select = select i1 %.not67.i.i, i32 1, i32 2
  store i32 %spec.store.select, ptr %i.bs, align 8
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.o, %.lr.ph.i.i
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.15690.i.i ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = icmp ugt i64 %i.bw, %.052.lcssa.i.i
  br i1 %i.bx, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph.i.i.1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 40 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8
  %.not67.i.i.1 = icmp eq i32 %i.bz, 1
  %spec.store.select.1 = select i1 %.not67.i.i.1, i32 1, i32 2
  store i32 %spec.store.select.1, ptr %i.by, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i.1
  %i.ca = add nuw nsw i64 %.15690.i.i, 2          ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %zip_entry_set.exit.loopexit.unr-lcssa, label %.lr.ph.i.i

zip_entry_mark.exit.thread13.i:                   ; preds = %mz_zip_reader_file_stat.exit.us.i.i, %mz_zip_reader_file_stat.exit.i.i, %.split.us.i.i
  %.259.i.ph.i = phi i64 [ %i.az, %.split.us.i.i ], [ -3, %mz_zip_reader_file_stat.exit.i.i ], [ -3, %mz_zip_reader_file_stat.exit.us.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %.sink.split

zip_entry_set.exit.loopexit.unr-lcssa:            ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %zip_entry_set.exit, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %zip_entry_set.exit.loopexit.unr-lcssa, %.preheader.i.i
  %.15690.i.i.epil.init = phi i64 [ 0, %.preheader.i.i ], [ %i.ca, %zip_entry_set.exit.loopexit.unr-lcssa ]
  %lcmp.mod89 = trunc i32 %i.f to i1
  call void @llvm.assume(i1 %lcmp.mod89)
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.15690.i.i.epil.init ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = icmp ugt i64 %i.cd, %.052.lcssa.i.i
  br i1 %i.ce, label %bb.r, label %zip_entry_set.exit

bb.r:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 8
  %.not67.i.i.epil = icmp eq i32 %i.cg, 1
  %spec.store.select.epil = select i1 %.not67.i.i.epil, i32 1, i32 2
  store i32 %spec.store.select.epil, ptr %i.cf, align 8
  br label %zip_entry_set.exit

zip_entry_set.exit:                               ; preds = %zip_entry_set.exit.loopexit.unr-lcssa, %bb.r, %.lr.ph.i.i.epil.preheader, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.ch = call fastcc i32 @zip_entry_finalize(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i64 noundef range(i64 -1, 4294967296) %i.g) ; 2 uses
  %spec.select.i = sext i32 %i.ch to i64
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %zip_entry_set.exit
  %i.cj = call fastcc i64 @zip_entries_delete_mark(ptr noundef %0, ptr noundef %i.h, i32 noundef %i.f)
  br label %.sink.split

.sink.split:                                      ; preds = %zip_entry_set.exit, %zip_entry_mark.exit.thread13.i, %bb.d, %bb.s
  %.0.ph = phi i64 [ %i.cj, %bb.s ], [ %spec.select.i, %zip_entry_set.exit ], [ -1, %bb.d ], [ %.259.i.ph.i, %zip_entry_mark.exit.thread13.i ]
  call void @free(ptr noundef nonnull %i.h) #36
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %zip_entries_total.exit, %bb.c, %bb.a, %bb.b
  %.0 = phi i64 [ 0, %bb.c ], [ -1, %bb.a ], [ -1, %bb.b ], [ -21, %zip_entries_total.exit ], [ %.0.ph, %.sink.split ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @zip_entries_delete_mark(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 4 uses
  %i.b = tail call noalias ptr @calloc(i64 noundef %i.a, i64 noundef 4) #40 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 2, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 112 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @fseeko(ptr noundef nonnull %i.h, i64 noundef 0, i32 noundef 0)
  %.not110 = icmp eq i32 %i.i, 0
  br i1 %.not110, label %.preheader118, label %.thread.sink.split

.preheader118:                                    ; preds = %bb.c
  %i.j = icmp sgt i32 %2, 0
  br i1 %i.j, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %.preheader118
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.l
  %.084153 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bu, %bb.l ] ; 2 uses
  %.086152 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bv, %bb.l ]
  %.094151 = phi i64 [ 0, %.preheader.lr.ph ], [ %.195.lcssa186, %bb.l ] ; 3 uses
  %.096150 = phi i32 [ 0, %.preheader.lr.ph ], [ %.399.lcssa, %bb.l ] ; 2 uses
  %.0101149 = phi i64 [ 0, %.preheader.lr.ph ], [ %.1102.lcssa, %bb.l ] ; 4 uses
  %.0103148 = phi i64 [ 0, %.preheader.lr.ph ], [ %.1104.lcssa185, %bb.l ] ; 3 uses
  %i.l = sext i32 %.096150 to i64                 ; 3 uses
  %i.m = add nsw i32 %.096150, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.m)
  %i.n = getelementptr inbounds [32 x i8], ptr %1, i64 %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.lr.ph231, label %.critedge

bb.d:                                             ; preds = %.lr.ph231
  %i.r = getelementptr inbounds [32 x i8], ptr %1, i64 %indvars.iv.next
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.lr.ph231, label %.critedge

.lr.ph231:                                        ; preds = %.preheader, %bb.d
  %.185127230 = phi i64 [ %i.y, %bb.d ], [ %.084153, %.preheader ]
  %indvars.iv229 = phi i64 [ %indvars.iv.next, %bb.d ], [ %i.l, %.preheader ] ; 2 uses
  %i.v = getelementptr inbounds [32 x i8], ptr %1, i64 %indvars.iv229
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add i64 %i.x, %.185127230                ; 5 uses
  %indvars.iv.next = add nsw i64 %indvars.iv229, 1 ; 4 uses
  %i.z = icmp slt i64 %indvars.iv.next, %i.a
  br i1 %i.z, label %bb.d, label %.critedge4

.critedge:                                        ; preds = %bb.d, %.preheader
  %indvars.iv.lcssa = phi i64 [ %i.l, %.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.185127.lcssa = phi i64 [ %.084153, %.preheader ], [ %i.y, %bb.d ] ; 4 uses
  %.187126.lcssa = phi i64 [ %.086152, %.preheader ], [ %i.y, %bb.d ] ; 2 uses
  %i.aa = trunc nsw i64 %indvars.iv.lcssa to i32  ; 2 uses
  %i.ab = icmp sgt i32 %2, %i.aa
  br i1 %i.ab, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %.critedge
  %sext = shl i64 %indvars.iv.lcssa, 32
  %3 = ashr exact i64 %sext, 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv162 = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next163, %bb.e ] ; 4 uses
  %.288131 = phi i64 [ %.187126.lcssa, %.lr.ph.preheader ], [ %i.aj, %bb.e ] ; 2 uses
  %.195130 = phi i64 [ %.094151, %.lr.ph.preheader ], [ %i.al, %bb.e ] ; 2 uses
  %.1104128 = phi i64 [ %.0103148, %.lr.ph.preheader ], [ %i.ak, %bb.e ] ; 2 uses
  %i.ac = getelementptr inbounds [32 x i8], ptr %1, i64 %indvars.iv162 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp eq i32 %i.ae, 1
  br i1 %i.af, label %bb.e, label %.critedge2.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.b, i64 %indvars.iv162
  store i32 1, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = add i64 %i.ai, %.288131                 ; 2 uses
  %i.ak = add i64 %i.ai, %.1104128                ; 2 uses
  %indvars.iv.next163 = add nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.al = add i64 %.195130, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next163, %i.a
  br i1 %exitcond.not, label %.critedge4, label %.lr.ph

.critedge2.loopexit:                              ; preds = %.lr.ph
  %i.am = trunc nsw i64 %indvars.iv162 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge
  %.1104.lcssa = phi i64 [ %.0103148, %.critedge ], [ %.1104128, %.critedge2.loopexit ] ; 4 uses
  %.298.lcssa = phi i32 [ %i.aa, %.critedge ], [ %i.am, %.critedge2.loopexit ] ; 3 uses
  %.195.lcssa = phi i64 [ %.094151, %.critedge ], [ %.195130, %.critedge2.loopexit ] ; 3 uses
  %.288.lcssa = phi i64 [ %.187126.lcssa, %.critedge ], [ %.288131, %.critedge2.loopexit ] ; 3 uses
  %i.an = icmp slt i32 %.298.lcssa, %2
  br i1 %i.an, label %.lr.ph142, label %.critedge4

.lr.ph142:                                        ; preds = %.critedge2
  %i.ao = trunc i64 %.1104.lcssa to i32
  %i.ap = sext i32 %.298.lcssa to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph142, %bb.h
  %indvars.iv165 = phi i64 [ %i.ap, %.lr.ph142 ], [ %indvars.iv.next166, %bb.h ] ; 4 uses
  %.1102140 = phi i64 [ %.0101149, %.lr.ph142 ], [ %i.ax, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds [32 x i8], ptr %1, i64 %indvars.iv165 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = icmp eq i32 %i.as, 2
  br i1 %i.at, label %bb.g, label %.critedge4.loopexit.split.loop.exit205

bb.g:                                             ; preds = %bb.f
  %i.au = load ptr, ptr %i.e, align 8             ; 2 uses
  %.not114.not = icmp eq ptr %i.au, null
  br i1 %.not114.not, label %.thread.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = add i64 %i.aw, %.1102140                ; 2 uses
  %i.ay = load ptr, ptr %i.k, align 8
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %indvars.iv165
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 42 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 1
  %i.bf = sub i32 %i.be, %i.ao
  store i32 %i.bf, ptr %i.bd, align 1
  %indvars.iv.next166 = add nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next166, %i.a
  br i1 %exitcond168.not, label %.critedge4, label %bb.f

.critedge4.loopexit.split.loop.exit205:           ; preds = %bb.f
  %i.bg = trunc nsw i64 %indvars.iv165 to i32
  br label %.critedge4

.critedge4:                                       ; preds = %.lr.ph231, %bb.e, %bb.h, %.critedge4.loopexit.split.loop.exit205, %.critedge2
  %.288.lcssa187 = phi i64 [ %.288.lcssa, %.critedge2 ], [ %i.aj, %bb.e ], [ %.288.lcssa, %.critedge4.loopexit.split.loop.exit205 ], [ %.288.lcssa, %bb.h ], [ %i.y, %.lr.ph231 ] ; 2 uses
  %.195.lcssa186 = phi i64 [ %.195.lcssa, %.critedge2 ], [ %i.al, %bb.e ], [ %.195.lcssa, %.critedge4.loopexit.split.loop.exit205 ], [ %.195.lcssa, %bb.h ], [ %.094151, %.lr.ph231 ] ; 2 uses
  %.1104.lcssa185 = phi i64 [ %.1104.lcssa, %.critedge2 ], [ %i.ak, %bb.e ], [ %.1104.lcssa, %.critedge4.loopexit.split.loop.exit205 ], [ %.1104.lcssa, %bb.h ], [ %.0103148, %.lr.ph231 ] ; 2 uses
  %.185.lcssa178184 = phi i64 [ %.185127.lcssa, %.critedge2 ], [ %.185127.lcssa, %bb.e ], [ %.185127.lcssa, %.critedge4.loopexit.split.loop.exit205 ], [ %.185127.lcssa, %bb.h ], [ %i.y, %.lr.ph231 ] ; 2 uses
  %.1102.lcssa = phi i64 [ %.0101149, %.critedge2 ], [ %.0101149, %bb.e ], [ %.1102140, %.critedge4.loopexit.split.loop.exit205 ], [ %i.ax, %bb.h ], [ %.0101149, %.lr.ph231 ] ; 6 uses
  %.399.lcssa = phi i32 [ %.298.lcssa, %.critedge2 ], [ %2, %bb.e ], [ %i.bg, %.critedge4.loopexit.split.loop.exit205 ], [ %2, %bb.h ], [ %smax, %.lr.ph231 ] ; 2 uses
  %i.bh = load ptr, ptr %i.g, align 8             ; 4 uses
  %i.bi = tail call noalias dereferenceable_or_null(4096) ptr @calloc(i64 noundef 1, i64 noundef 4096) #40 ; 4 uses
  %.not.i = icmp eq ptr %i.bi, null
  br i1 %.not.i, label %zip_files_move.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.critedge4
  %i.bj = icmp sgt i64 %.1102.lcssa, 0
  br i1 %i.bj, label %.lr.ph.i, label %zip_file_move.exit.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i, %zip_file_move.exit.i
  %.037.i = phi i64 [ %i.bs, %zip_file_move.exit.i ], [ 0, %.preheader.i ]
  %.02536.i = phi i64 [ %i.br, %zip_file_move.exit.i ], [ %.1102.lcssa, %.preheader.i ] ; 2 uses
  %.02635.i = phi i64 [ %i.bq, %zip_file_move.exit.i ], [ %.288.lcssa187, %.preheader.i ] ; 2 uses
  %.02734.i = phi i64 [ %i.bp, %zip_file_move.exit.i ], [ %.185.lcssa178184, %.preheader.i ] ; 2 uses
  %i.bk = tail call i64 @llvm.umin.i64(i64 %.02536.i, i64 4096) ; 8 uses
  %i.bl = tail call i32 @fseeko(ptr noundef %i.bh, i64 noundef %.02635.i, i32 noundef 0)
  %.not.i.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i, label %bb.i, label %zip_file_move.exit.thread.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.bm = tail call i64 @fread(ptr noundef nonnull %i.bi, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775808) %i.bk, ptr noundef %i.bh)
  %.not16.i.i = icmp eq i64 %i.bm, %i.bk
  br i1 %.not16.i.i, label %bb.j, label %zip_file_move.exit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.bn = tail call i32 @fseeko(ptr noundef %i.bh, i64 noundef %.02734.i, i32 noundef 0)
  %.not17.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not17.i.i, label %bb.k, label %zip_file_move.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bo = tail call i64 @fwrite(ptr noundef nonnull %i.bi, i64 noundef 1, i64 noundef range(i64 1, -9223372036854775808) %i.bk, ptr noundef %i.bh)
  %.not18.i.i = icmp eq i64 %i.bo, %i.bk
  br i1 %.not18.i.i, label %zip_file_move.exit.i, label %zip_file_move.exit.thread.i

zip_file_move.exit.i:                             ; preds = %bb.k
  %i.bp = add i64 %.02734.i, %i.bk
  %i.bq = add i64 %i.bk, %.02635.i
  %i.br = sub nsw i64 %.02536.i, %i.bk            ; 2 uses
  %i.bs = add nuw nsw i64 %i.bk, %.037.i          ; 2 uses
  %i.bt = icmp sgt i64 %i.br, 0
  br i1 %i.bt, label %.lr.ph.i, label %zip_file_move.exit.thread.i

zip_file_move.exit.thread.i:                      ; preds = %zip_file_move.exit.i, %bb.k, %bb.j, %bb.i, %.lr.ph.i, %.preheader.i
  %.1.i = phi i64 [ 0, %.preheader.i ], [ %i.bs, %zip_file_move.exit.i ], [ -27, %.lr.ph.i ], [ -28, %bb.i ], [ -29, %bb.k ], [ -27, %bb.j ]
  tail call void @free(ptr noundef %i.bi) #36
  br label %zip_files_move.exit

zip_files_move.exit:                              ; preds = %.critedge4, %zip_file_move.exit.thread.i
  %.024.i = phi i64 [ %.1.i, %zip_file_move.exit.thread.i ], [ -21, %.critedge4 ] ; 2 uses
  %.not112 = icmp eq i64 %.024.i, %.1102.lcssa
  br i1 %.not112, label %bb.l, label %.thread.sink.split

bb.l:                                             ; preds = %zip_files_move.exit
  %i.bu = add i64 %.1102.lcssa, %.185.lcssa178184
  %i.bv = add i64 %.1102.lcssa, %.288.lcssa187
  %i.bw = icmp slt i32 %.399.lcssa, %2
  br i1 %i.bw, label %.preheader, label %._crit_edge

._crit_edge:                                      ; preds = %bb.l, %.preheader118
  %.0103.lcssa = phi i64 [ 0, %.preheader118 ], [ %.1104.lcssa185, %bb.l ]
  %.094.lcssa = phi i64 [ 0, %.preheader118 ], [ %.195.lcssa186, %bb.l ] ; 2 uses
  %i.bx = load i64, ptr %0, align 8
  %i.by = sub i64 %i.bx, %.0103.lcssa
  store i64 %i.by, ptr %0, align 8
  %i.bz = trunc i64 %.094.lcssa to i32
  %i.ca = sub i32 %2, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ca, ptr %i.cb, align 8
  tail call fastcc void @zip_central_dir_delete(ptr noundef %i.e, ptr noundef nonnull %i.b, i32 noundef %2)
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %zip_files_move.exit, %bb.g, %bb.b, %bb.c, %._crit_edge
  %.4.ph = phi i64 [ -3, %bb.g ], [ %.094.lcssa, %._crit_edge ], [ -3, %bb.b ], [ -3, %bb.c ], [ %.024.i, %zip_files_move.exit ]
  tail call void @free(ptr noundef nonnull %i.b) #36
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.a
  %.4 = phi i64 [ -21, %bb.a ], [ %.4.ph, %.thread.sink.split ]
  ret i64 %.4
}

; Function Attrs: nounwind uwtable
define i64 @zip_entries_deletebyindex(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #9 {
bb.a:
  %3 = alloca %struct.mz_zip_archive_file_stat, align 8 ; 6 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null                     ; 3 uses
  %i.c = icmp ne i64 %2, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i64 %2, 0                        ; 2 uses
  %or.cond3 = and i1 %i.b, %i.d
  br i1 %or.cond3, label %bb.r, label %zip_entries_total.exit

zip_entries_total.exit:                           ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = zext i32 %i.f to i64                     ; 6 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 32) #40 ; 9 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.r, label %bb.d

bb.d:                                             ; preds = %zip_entries_total.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 1, ptr %i.i, align 4
  br i1 %i.b, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %.not33 = icmp eq i32 %i.f, 0
  br i1 %.not33, label %zip_entry_setbyindex.exit, label %.lr.ph83.i.i

.lr.ph83.i.i:                                     ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  br i1 %i.d, label %.lr.ph83.split.i.i, label %.lr.ph83.split.us.i.i

.lr.ph83.split.us.i.i:                            ; preds = %.lr.ph83.i.i, %bb.i
end_hunk_1
begin_hunk_2_@tdefl_optimize_huffman_table:bb.a
  %i.kt = load i32, ptr %i.ks, align 4
  %i.ku = add nsw i32 %i.kt, 1
  store i32 %i.ku, ptr %i.ks, align 4
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv128
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 12
  %i.kx = load i16, ptr %i.kw, align 2
  %i.ky = zext i16 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.kz, align 4
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter219.next.3 = add i64 %niter219, 4         ; 2 uses
  %niter219.ncmp.3 = icmp eq i64 %niter219.next.3, %unroll_iter218
  br i1 %niter219.ncmp.3, label %._crit_edge.unr-lcssa, label %.lr.ph

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
  %i.ld = load i16, ptr %i.lc, align 2
  %i.le = zext i16 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.le ; 2 uses
  %i.lg = load i32, ptr %i.lf, align 4
  %i.lh = add nsw i32 %i.lg, 1
  store i32 %i.lh, ptr %i.lf, align 4
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter215.next = add i64 %epil.iter215, 1   ; 2 uses
  %epil.iter215.cmp.not = icmp eq i64 %epil.iter215.next, %xtraiter214
  br i1 %epil.iter215.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !39

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.li = icmp eq i32 %.173.lcssa, 1
  br i1 %i.li, label %tdefl_huffman_enforce_max_code_size.exit, label %.preheader35.i

.preheader35.i:                                   ; preds = %._crit_edge
  %i.lj = zext nneg i32 %3 to i64                 ; 11 uses
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.lj ; 5 uses
  %i.ll = sub nuw nsw i64 32, %i.lj               ; 2 uses
  %n.vec = and i64 %i.ll, 56                      ; 4 uses
  %i.lm = add nuw nsw i64 %n.vec, %i.lj
  %.promoted.i = load i32, ptr %i.lk, align 4
  %i.ln = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.promoted.i, i64 0
  %i.lo = getelementptr [4 x i8], ptr %i.c, i64 %i.lj ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lo, i64 20
  %wide.load = load <4 x i32>, ptr %i.lp, align 4
  %wide.load180 = load <4 x i32>, ptr %i.lq, align 4 ; 2 uses
  %i.lr = add <4 x i32> %wide.load, %i.ln         ; 2 uses
  %i.ls = icmp eq i64 %n.vec, 8
  br i1 %i.ls, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %.preheader35.i
  %i.lt = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.lu = getelementptr [4 x i8], ptr %i.lt, i64 %i.lj ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 4
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 20
  %wide.load.1 = load <4 x i32>, ptr %i.lv, align 4
  %wide.load180.1 = load <4 x i32>, ptr %i.lw, align 4
  %i.lx = add <4 x i32> %wide.load.1, %i.lr       ; 2 uses
  %i.ly = add <4 x i32> %wide.load180.1, %wide.load180 ; 2 uses
  %i.lz = icmp eq i64 %n.vec, 16
  br i1 %i.lz, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.ma = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.mb = getelementptr [4 x i8], ptr %i.ma, i64 %i.lj ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %wide.load.2 = load <4 x i32>, ptr %i.mc, align 4
  %wide.load180.2 = load <4 x i32>, ptr %i.md, align 4
  %i.me = add <4 x i32> %wide.load.2, %i.lx
  %i.mf = add <4 x i32> %wide.load180.2, %i.ly
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %.preheader35.i
  %.lcssa187 = phi <4 x i32> [ %i.lr, %.preheader35.i ], [ %i.lx, %vector.body.1 ], [ %i.me, %vector.body.2 ]
  %.lcssa186 = phi <4 x i32> [ %wide.load180, %.preheader35.i ], [ %i.ly, %vector.body.1 ], [ %i.mf, %vector.body.2 ]
  %bin.rdx = add <4 x i32> %.lcssa186, %.lcssa187
  %i.mg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  store i32 %i.mg, ptr %i.lk, align 4
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
  %i.mj = load i32, ptr %i.mi, align 4
  %i.mk = add nsw i32 %i.mj, %i.mh                ; 2 uses
  store i32 %i.mk, ptr %i.lk, align 4
  %exitcond.not.i91 = icmp eq i64 %indvars.iv.next.i90, 32
  br i1 %exitcond.not.i91, label %.preheader34.i.preheader, label %scalar.ph, !llvm.loop !40

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
  %i.mm = load i32, ptr %i.ml, align 4
  %i.mn = trunc i64 %indvars.iv48.i.epil to i32
  %i.mo = sub i32 %3, %i.mn
  %i.mp = shl i32 %i.mm, %i.mo
  %i.mq = add i32 %i.mp, %.040.i.epil             ; 2 uses
  %indvars.iv.next49.i.epil = add nsw i64 %indvars.iv48.i.epil, -1
  %epil.iter221.next = add i64 %epil.iter221, 1   ; 2 uses
  %epil.iter221.cmp.not = icmp eq i64 %epil.iter221.next, %xtraiter220
  br i1 %epil.iter221.cmp.not, label %.preheader.i92, label %.preheader34.i.epil, !llvm.loop !43

.preheader.i92:                                   ; preds = %.preheader34.i.epil, %.preheader.i92.unr-lcssa
  %.lcssa185 = phi i32 [ %i.nq, %.preheader.i92.unr-lcssa ], [ %i.mq, %.preheader34.i.epil ] ; 2 uses
  %i.mr = shl nuw nsw i64 1, %i.lj                ; 2 uses
  %i.ms = zext i32 %.lcssa185 to i64
  %.not42.i = icmp eq i64 %i.mr, %i.ms
  br i1 %.not42.i, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93

.preheader34.i:                                   ; preds = %.preheader34.i, %.preheader34.i.preheader
  %indvars.iv48.i = phi i64 [ %i.lj, %.preheader34.i.preheader ], [ %indvars.iv.next49.i.3, %.preheader34.i ] ; 6 uses
  %.040.i = phi i32 [ 0, %.preheader34.i.preheader ], [ %i.nq, %.preheader34.i ]
  %niter226 = phi i64 [ 0, %.preheader34.i.preheader ], [ %niter226.next.3, %.preheader34.i ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv48.i
  %i.mu = load i32, ptr %i.mt, align 4
  %i.mv = trunc i64 %indvars.iv48.i to i32
  %i.mw = sub nsw i32 %3, %i.mv
  %i.mx = shl i32 %i.mu, %i.mw
  %i.my = add i32 %i.mx, %.040.i
  %indvars.iv.next49.i = add nsw i64 %indvars.iv48.i, -1 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i
  %i.na = load i32, ptr %i.mz, align 4
  %i.nb = trunc i64 %indvars.iv.next49.i to i32
  %i.nc = sub nsw i32 %3, %i.nb
  %i.nd = shl i32 %i.na, %i.nc
  %i.ne = add i32 %i.nd, %i.my
  %indvars.iv.next49.i.1 = add nsw i64 %indvars.iv48.i, -2 ; 2 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.1
  %i.ng = load i32, ptr %i.nf, align 4
  %i.nh = trunc i64 %indvars.iv.next49.i.1 to i32
  %i.ni = sub nsw i32 %3, %i.nh
  %i.nj = shl i32 %i.ng, %i.ni
  %i.nk = add i32 %i.nj, %i.ne
  %indvars.iv.next49.i.2 = add nsw i64 %indvars.iv48.i, -3 ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next49.i.2
  %i.nm = load i32, ptr %i.nl, align 4
  %i.nn = trunc i64 %indvars.iv.next49.i.2 to i32
  %i.no = sub nsw i32 %3, %i.nn
  %i.np = shl i32 %i.nm, %i.no
  %i.nq = add i32 %i.np, %i.nk                    ; 3 uses
  %indvars.iv.next49.i.3 = add nsw i64 %indvars.iv48.i, -4 ; 2 uses
  %niter226.next.3 = add nuw nsw i64 %niter226, 4 ; 2 uses
  %niter226.ncmp.3.not = icmp eq i64 %niter226.next.3, %unroll_iter225
  br i1 %niter226.ncmp.3.not, label %.preheader.i92.unr-lcssa, label %.preheader34.i

.lr.ph.i93:                                       ; preds = %.preheader.i92, %.loopexit.i
  %.143.i = phi i32 [ %i.ob, %.loopexit.i ], [ %.lcssa185, %.preheader.i92 ]
  %i.nr = load i32, ptr %i.lk, align 4
  %i.ns = add nsw i32 %i.nr, -1
  store i32 %i.ns, ptr %i.lk, align 4
  br label %bb.v

bb.u:                                             ; preds = %bb.v
  %i.nt = icmp sgt i64 %indvars.iv51.i178, 2
  br i1 %i.nt, label %bb.v, label %.loopexit.i

bb.v:                                             ; preds = %.lr.ph.i93, %bb.u
  %indvars.iv51.i178 = phi i64 [ %i.lj, %.lr.ph.i93 ], [ %indvars.iv.next52.i, %bb.u ] ; 3 uses
  %indvars.iv.next52.i = add nsw i64 %indvars.iv51.i178, -1 ; 3 uses
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nv = load i32, ptr %i.nu, align 4            ; 2 uses
  %.not32.i = icmp eq i32 %i.nv, 0
  br i1 %.not32.i, label %bb.u, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next52.i
  %i.nx = add nsw i32 %i.nv, -1
  store i32 %i.nx, ptr %i.nw, align 4
  %7 = and i64 %indvars.iv51.i178, 4294967295
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %7 ; 2 uses
  %i.nz = load i32, ptr %i.ny, align 4
  %i.oa = add nsw i32 %i.nz, 2
  store i32 %i.oa, ptr %i.ny, align 4
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.u, %bb.w
  %i.ob = add i32 %.143.i, -1                     ; 2 uses
  %i.oc = zext i32 %i.ob to i64
  %.not.i94 = icmp eq i64 %i.mr, %i.oc
  br i1 %.not.i94, label %tdefl_huffman_enforce_max_code_size.exit, label %.lr.ph.i93

tdefl_huffman_enforce_max_code_size.exit:         ; preds = %.loopexit.i, %tdefl_radix_sort_syms.exit, %tdefl_radix_sort_syms.exit.thread, %tdefl_calculate_minimum_redundancy.exit, %._crit_edge, %.preheader.i92
  %.us-phi56.i163165170 = phi ptr [ %6, %tdefl_radix_sort_syms.exit.thread ], [ %.04052.us.i, %.preheader.i92 ], [ %.04052.us.i, %._crit_edge ], [ %.04052.us.i, %tdefl_calculate_minimum_redundancy.exit ], [ %.04052.us.i, %tdefl_radix_sort_syms.exit ], [ %.04052.us.i, %.loopexit.i ] ; 5 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.oe = getelementptr inbounds nuw [288 x i8], ptr %i.od, i64 %i.aj ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(288) %i.oe, i8 0, i64 288, i1 false)
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 34954
  %i.og = getelementptr inbounds nuw [576 x i8], ptr %i.of, i64 %i.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(576) %i.og, i8 0, i64 576, i1 false)
  %i.oh = add nuw nsw i32 %3, 1
  %wide.trip.count140 = zext nneg i32 %i.oh to i64 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %tdefl_huffman_enforce_max_code_size.exit, %._crit_edge108
  %indvars.iv137 = phi i64 [ 1, %tdefl_huffman_enforce_max_code_size.exit ], [ %indvars.iv.next138, %._crit_edge108 ] ; 3 uses
  %.069109 = phi i32 [ %.173.lcssa, %tdefl_huffman_enforce_max_code_size.exit ], [ %.170.lcssa, %._crit_edge108 ] ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv137
  %i.oj = load i32, ptr %i.oi, align 4            ; 5 uses
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
  %i.op = load i16, ptr %i.oo, align 2
  %i.oq = zext i16 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.oq
  store i8 %i.ol, ptr %i.or, align 1
  %i.os = add nsw i32 %.074104.prol, -1           ; 2 uses
  %prol.iter231.next = add i32 %prol.iter231, 1   ; 2 uses
  %prol.iter231.cmp.not = icmp eq i32 %prol.iter231.next, %xtraiter229
  br i1 %prol.iter231.cmp.not, label %.prol.loopexit228, label %.prol.preheader227, !llvm.loop !44

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
  %i.ow = load i16, ptr %i.ov, align 2
  %i.ox = zext i16 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ox
  store i8 %i.ol, ptr %i.oy, align 1
  %i.oz = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pa = getelementptr i8, ptr %i.oz, i64 -6
  %i.pb = load i16, ptr %i.pa, align 2
  %i.pc = zext i16 %i.pb to i64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pc
  store i8 %i.ol, ptr %i.pd, align 1
  %i.pe = getelementptr [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv134
  %i.pf = getelementptr i8, ptr %i.pe, i64 -10
  %i.pg = load i16, ptr %i.pf, align 2
  %i.ph = zext i16 %i.pg to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.ph
  store i8 %i.ol, ptr %i.pi, align 1
  %indvars.iv.next135.3 = add nsw i64 %indvars.iv134, -4 ; 3 uses
  %i.pj = getelementptr inbounds [4 x i8], ptr %.us-phi56.i163165170, i64 %indvars.iv.next135.3
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 2
  %i.pl = load i16, ptr %i.pk, align 2
  %i.pm = zext i16 %i.pl to i64
  %i.pn = getelementptr inbounds nuw i8, ptr %i.oe, i64 %i.pm
  store i8 %i.ol, ptr %i.pn, align 1
  %i.po = add nsw i32 %.074104, -4
  %i.pp = icmp sgt i32 %.074104, 4
  br i1 %i.pp, label %.lr.ph107.new, label %._crit_edge108.loopexit

._crit_edge108.loopexit:                          ; preds = %.lr.ph107.new, %.prol.loopexit228
  %indvars.iv.next135.lcssa = phi i64 [ %indvars.iv.next135.lcssa.unr, %.prol.loopexit228 ], [ %indvars.iv.next135.3, %.lr.ph107.new ]
  %i.pq = trunc nsw i64 %indvars.iv.next135.lcssa to i32
  br label %._crit_edge108

._crit_edge108:                                   ; preds = %._crit_edge108.loopexit, %bb.x
  %.170.lcssa = phi i32 [ %.069109, %bb.x ], [ %i.pq, %._crit_edge108.loopexit ]
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %exitcond141.not = icmp eq i64 %indvars.iv.next138, %wide.trip.count140
  br i1 %exitcond141.not, label %bb.y, label %bb.x

bb.y:                                             ; preds = %._crit_edge108
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
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
  %i.ps = load i8, ptr %i.pr, align 1
  %i.pt = zext i8 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.pt ; 2 uses
  %i.pv = load i32, ptr %i.pu, align 4
  %i.pw = add nsw i32 %i.pv, 1
  store i32 %i.pw, ptr %i.pu, align 4
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit, label %bb.z, !llvm.loop !45

.loopexit.loopexit:                               ; preds = %bb.z, %.loopexit.loopexit.unr-lcssa
  %.pre152 = add nuw nsw i32 %3, 1
  %.pre154 = zext nneg i32 %.pre152 to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.y
  %wide.trip.count145.pre-phi = phi i64 [ %.pre154, %.loopexit.loopexit ], [ %wide.trip.count140, %bb.y ] ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.px, align 4
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
  %i.qd = load i32, ptr %i.qc, align 4
  %i.qe = add nsw i32 %i.qd, %.271111.epil
  %i.qf = shl i32 %i.qe, 1                        ; 2 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142.epil
  store i32 %i.qf, ptr %i.qg, align 4
  %indvars.iv.next143.epil = add nuw nsw i64 %indvars.iv142.epil, 1
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %.preheader, label %bb.aa, !llvm.loop !46

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
  %i.qo = load i32, ptr %i.qn, align 4
  %i.qp = add nsw i32 %i.qo, %.271111
  %i.qq = shl i32 %i.qp, 1                        ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv142
  store i32 %i.qq, ptr %i.qr, align 8
  %indvars.iv.next143 = or disjoint i64 %indvars.iv142, 1 ; 2 uses
end_hunk_2
begin_hunk_3_@zip_entry_finalize:bb.a
.preheader:                                       ; preds = %._crit_edge
  %i.aq = add nsw i64 %2, -1                      ; 8 uses
  %i.ar = icmp sgt i64 %2, 1
  br i1 %i.ar, label %.lr.ph65.preheader, label %._crit_edge66

.lr.ph65.preheader:                               ; preds = %.preheader
  %.pre = load i64, ptr %i.a, align 8             ; 2 uses
  %min.iters.check88 = icmp ult i64 %2, 5
  br i1 %min.iters.check88, label %.lr.ph65.preheader101, label %vector.ph89

vector.ph89:                                      ; preds = %.lr.ph65.preheader
  %n.vec91 = and i64 %i.aq, -4                    ; 3 uses
  %vector.recur.init = insertelement <2 x i64> poison, i64 %.pre, i64 1
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next96, %vector.body92 ] ; 3 uses
  %vector.recur = phi <2 x i64> [ %vector.recur.init, %vector.ph89 ], [ %wide.load95, %vector.body92 ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index93 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %wide.load94 = load <2 x i64>, ptr %i.at, align 8 ; 3 uses
  %wide.load95 = load <2 x i64>, ptr %i.au, align 8 ; 4 uses
  %i.av = shufflevector <2 x i64> %vector.recur, <2 x i64> %wide.load94, <2 x i32> <i32 1, i32 2>
  %i.aw = shufflevector <2 x i64> %wide.load94, <2 x i64> %wide.load95, <2 x i32> <i32 1, i32 2>
  %i.ax = sub <2 x i64> %wide.load94, %i.av
  %i.ay = sub <2 x i64> %wide.load95, %i.aw
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index93 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x i64> %i.ax, ptr %i.az, align 8
  store <2 x i64> %i.ay, ptr %i.ba, align 8
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %i.bb = icmp eq i64 %index.next96, %n.vec91
  br i1 %i.bb, label %middle.block97, label %vector.body92, !llvm.loop !50

middle.block97:                                   ; preds = %vector.body92
  %vector.recur.extract = extractelement <2 x i64> %wide.load95, i64 1
  %cmp.n98 = icmp eq i64 %i.aq, %n.vec91
  br i1 %cmp.n98, label %._crit_edge66.thread, label %.lr.ph65.preheader101

.lr.ph65.preheader101:                            ; preds = %.lr.ph65.preheader, %middle.block97
  %.ph = phi i64 [ %.pre, %.lr.ph65.preheader ], [ %vector.recur.extract, %middle.block97 ]
  %.15064.ph = phi i64 [ 0, %.lr.ph65.preheader ], [ %n.vec91, %middle.block97 ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader101, %.lr.ph65
  %i.bc = phi i64 [ %i.bf, %.lr.ph65 ], [ %.ph, %.lr.ph65.preheader101 ]
  %.15064 = phi i64 [ %i.bd, %.lr.ph65 ], [ %.15064.ph, %.lr.ph65.preheader101 ] ; 2 uses
  %i.bd = add nuw nsw i64 %.15064, 1              ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load i64, ptr %i.be, align 8            ; 2 uses
  %i.bg = sub i64 %i.bf, %i.bc
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.15064
  store i64 %i.bg, ptr %i.bh, align 8
  %exitcond73.not = icmp eq i64 %i.bd, %i.aq
  br i1 %exitcond73.not, label %._crit_edge66.thread, label %.lr.ph65, !llvm.loop !51

._crit_edge66.thread:                             ; preds = %.lr.ph65, %middle.block97
  %i.bi = load i64, ptr %0, align 8
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aq
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = sub i64 %i.bi, %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  store i64 %i.bl, ptr %i.bm, align 8
  br label %.lr.ph69.preheader

._crit_edge66:                                    ; preds = %.preheader
  %i.bn = load i64, ptr %0, align 8
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aq
  %i.bp = load i64, ptr %i.bo, align 8
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.aq
  store i64 %i.bq, ptr %i.br, align 8
  br i1 %i.b, label %.lr.ph69.preheader, label %._crit_edge70

.lr.ph69.preheader:                               ; preds = %._crit_edge66.thread, %._crit_edge66
  %xtraiter104 = and i64 %2, 3                    ; 3 uses
  %i.bs = icmp ult i64 %i.aq, 3
  br i1 %i.bs, label %.lr.ph69.epil.preheader, label %.lr.ph69.preheader.new

.lr.ph69.preheader.new:                           ; preds = %.lr.ph69.preheader
  %unroll_iter107 = and i64 %2, -4
  br label %.lr.ph69

.lr.ph69:                                         ; preds = %.lr.ph69, %.lr.ph69.preheader.new
  %.267 = phi i64 [ 0, %.lr.ph69.preheader.new ], [ %i.cq, %.lr.ph69 ] ; 5 uses
  %niter108 = phi i64 [ 0, %.lr.ph69.preheader.new ], [ %niter108.next.3, %.lr.ph69 ]
  %i.bt = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.267 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.bu
  %i.bw = load i64, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.267 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  store i64 %i.cc, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.267 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 64
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.cg
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 88
  store i64 %i.ci, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.267 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 96
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 120
  store i64 %i.co, ptr %i.cp, align 8
  %i.cq = add nuw nsw i64 %.267, 4                ; 2 uses
  %niter108.next.3 = add i64 %niter108, 4         ; 2 uses
  %niter108.ncmp.3 = icmp eq i64 %niter108.next.3, %unroll_iter107
  br i1 %niter108.ncmp.3, label %._crit_edge70.loopexit.unr-lcssa, label %.lr.ph69

._crit_edge70.loopexit.unr-lcssa:                 ; preds = %.lr.ph69
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %._crit_edge70, label %.lr.ph69.epil.preheader

.lr.ph69.epil.preheader:                          ; preds = %._crit_edge70.loopexit.unr-lcssa, %.lr.ph69.preheader
  %.267.epil.init = phi i64 [ 0, %.lr.ph69.preheader ], [ %i.cq, %._crit_edge70.loopexit.unr-lcssa ]
  %lcmp.mod106 = icmp ne i64 %xtraiter104, 0
  tail call void @llvm.assume(i1 %lcmp.mod106)
  br label %.lr.ph69.epil

.lr.ph69.epil:                                    ; preds = %.lr.ph69.epil, %.lr.ph69.epil.preheader
  %.267.epil = phi i64 [ %i.cw, %.lr.ph69.epil ], [ %.267.epil.init, %.lr.ph69.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph69.epil ], [ 0, %.lr.ph69.epil.preheader ]
  %i.cr = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %.267.epil ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store i64 %i.cu, ptr %i.cv, align 8
  %i.cw = add nuw nsw i64 %.267.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter104
  br i1 %epil.iter.cmp.not, label %._crit_edge70, label %.lr.ph69.epil, !llvm.loop !52

._crit_edge70:                                    ; preds = %._crit_edge70.loopexit.unr-lcssa, %.lr.ph69.epil, %._crit_edge66
  tail call void @free(ptr noundef nonnull %i.ap) #36
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %._crit_edge70
  %.1.ph = phi i32 [ 0, %._crit_edge70 ], [ -21, %._crit_edge ]
  tail call void @free(ptr noundef %i.a) #36
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi i32 [ -21, %bb.a ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #23

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @zip_central_dir_delete(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.preheader71.lr.ph, label %.critedge4._crit_edge

.preheader71.lr.ph:                               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count81.i = zext nneg i32 %2 to i64  ; 2 uses
  %i.d = zext nneg i32 %2 to i64                  ; 6 uses
  br label %.preheader71

.preheader71:                                     ; preds = %.preheader71.lr.ph, %zip_central_dir_move.exit
  %.05778 = phi i32 [ 0, %.preheader71.lr.ph ], [ %.2.lcssa, %zip_central_dir_move.exit ] ; 2 uses
  %i.e = sext i32 %.05778 to i64
  %i.f = add nsw i32 %.05778, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.f) ; 2 uses
  br label %bb.b

.preheader68.lr.ph:                               ; preds = %zip_central_dir_move.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.h = zext nneg i32 %2 to i64                  ; 2 uses
  br label %.preheader68

bb.b:                                             ; preds = %.preheader71, %bb.c
  %indvars.iv = phi i64 [ %i.e, %.preheader71 ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4
  %.not60 = icmp eq i32 %i.j, 0
  br i1 %.not60, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.k = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.k, label %bb.b, label %.critedge2

.critedge:                                        ; preds = %bb.b
  %i.l = trunc nsw i64 %indvars.iv to i32         ; 5 uses
  %i.m = icmp sgt i32 %2, %i.l
  br i1 %i.m, label %.lr.ph.preheader, label %.critedge2

.lr.ph.preheader:                                 ; preds = %.critedge
  %sext = shl i64 %indvars.iv, 32
  %3 = ashr exact i64 %sext, 32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv95 = phi i64 [ %3, %.lr.ph.preheader ], [ %indvars.iv.next96, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv95
  %i.o = load i32, ptr %i.n, align 4
  %.not61 = icmp eq i32 %i.o, 0
  br i1 %.not61, label %.critedge2.loopexit.split.loop.exit133, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next96, %i.d
  br i1 %exitcond.not, label %.critedge2, label %.lr.ph

.critedge2.loopexit.split.loop.exit133:           ; preds = %.lr.ph
  %i.p = trunc nsw i64 %indvars.iv95 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.c, %bb.d, %.critedge2.loopexit.split.loop.exit133, %.critedge
  %.1.lcssa116 = phi i32 [ %i.l, %.critedge ], [ %i.l, %.critedge2.loopexit.split.loop.exit133 ], [ %i.l, %bb.d ], [ %smax, %bb.c ] ; 2 uses
  %.2.lcssa = phi i32 [ %i.l, %.critedge ], [ %i.p, %.critedge2.loopexit.split.loop.exit133 ], [ %2, %bb.d ], [ %smax, %bb.c ] ; 4 uses
  %.lcssa = phi i1 [ false, %.critedge ], [ true, %.critedge2.loopexit.split.loop.exit133 ], [ false, %bb.d ], [ false, %bb.c ] ; 2 uses
  %i.q = icmp eq i32 %.1.lcssa116, %2
  br i1 %i.q, label %zip_central_dir_move.exit, label %bb.e

bb.e:                                             ; preds = %.critedge2
  %i.r = load ptr, ptr %0, align 8                ; 4 uses
  %i.s = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.t = sext i32 %.1.lcssa116 to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4              ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.w
  %i.y = icmp eq i32 %.2.lcssa, %2
  br i1 %i.y, label %.thread66.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sext i32 %.2.lcssa to i64                ; 9 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.c, align 8
  %i.af = sub i64 %i.ae, %i.ac                    ; 11 uses
  %gepdiff.i = sub i32 %i.ab, %i.v                ; 10 uses
  %i.ag = icmp ne ptr %i.r, null                  ; 2 uses
  %i.ah = icmp eq i32 %i.v, 0
  %or.cond.i = select i1 %i.ag, i1 %i.ah, i1 false
  br i1 %or.cond.i, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = tail call ptr @realloc(ptr noundef %i.ai, i64 noundef %i.af) #38
  store ptr %i.aj, ptr %0, align 8
  br i1 %.lcssa, label %.lr.ph.i.preheader, label %.thread66.i

.lr.ph.i.preheader:                               ; preds = %bb.g
  %i.ak = sub nsw i64 %i.d, %i.z
  %xtraiter27 = and i64 %i.ak, 3                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.z, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.al = load ptr, ptr %i.b, align 8
  %i.am = getelementptr inbounds [4 x i8], ptr %i.al, i64 %indvars.iv.i.prol ; 2 uses
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = sub i32 %i.an, %gepdiff.i
  store i32 %i.ao, ptr %i.am, align 4
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !53

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.z, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ap = sub nsw i64 %i.z, %i.d
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %.thread66.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.ar = load ptr, ptr %i.b, align 8
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %indvars.iv.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4
  %i.au = sub i32 %i.at, %gepdiff.i
  store i32 %i.au, ptr %i.as, align 4
  %i.av = load ptr, ptr %i.b, align 8
  %i.aw = getelementptr [4 x i8], ptr %i.av, i64 %indvars.iv.i
  %i.ax = getelementptr i8, ptr %i.aw, i64 4      ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = sub i32 %i.ay, %gepdiff.i
  store i32 %i.az, ptr %i.ax, align 4
  %i.ba = load ptr, ptr %i.b, align 8
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv.i
  %i.bc = getelementptr i8, ptr %i.bb, i64 8      ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = sub i32 %i.bd, %gepdiff.i
  store i32 %i.be, ptr %i.bc, align 4
  %i.bf = load ptr, ptr %i.b, align 8
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv.i
  %i.bh = getelementptr i8, ptr %i.bg, i64 12     ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = sub i32 %i.bi, %gepdiff.i
  store i32 %i.bj, ptr %i.bh, align 4
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count81.i
  br i1 %exitcond.not.i.3, label %.thread66.i, label %.lr.ph.i

.loopexit.i:                                      ; preds = %bb.f
  %i.bk = mul i64 %i.af, %i.w
  %.not.i = icmp ne i64 %i.bk, 0
  %or.cond58.not.i = select i1 %i.ag, i1 %.not.i, i1 false
  br i1 %or.cond58.not.i, label %bb.h, label %.thread66.i

bb.h:                                             ; preds = %.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false)
  br i1 %.lcssa, label %.lr.ph76.i.preheader, label %.thread66.i

.lr.ph76.i.preheader:                             ; preds = %bb.h
  %i.bl = sub nsw i64 %i.d, %i.z
  %xtraiter = and i64 %i.bl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.i.prol.loopexit, label %.lr.ph76.i.prol

.lr.ph76.i.prol:                                  ; preds = %.lr.ph76.i.preheader, %.lr.ph76.i.prol
  %indvars.iv78.i.prol = phi i64 [ %indvars.iv.next79.i.prol, %.lr.ph76.i.prol ], [ %i.z, %.lr.ph76.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph76.i.prol ], [ 0, %.lr.ph76.i.preheader ]
  %i.bm = load ptr, ptr %i.b, align 8
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %indvars.iv78.i.prol ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sub i32 %i.bo, %gepdiff.i
  store i32 %i.bp, ptr %i.bn, align 4
  %indvars.iv.next79.i.prol = add nsw i64 %indvars.iv78.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph76.i.prol.loopexit, label %.lr.ph76.i.prol, !llvm.loop !54

.lr.ph76.i.prol.loopexit:                         ; preds = %.lr.ph76.i.prol, %.lr.ph76.i.preheader
  %indvars.iv78.i.unr = phi i64 [ %i.z, %.lr.ph76.i.preheader ], [ %indvars.iv.next79.i.prol, %.lr.ph76.i.prol ]
  %i.bq = sub nsw i64 %i.z, %i.d
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %.thread66.i, label %.lr.ph76.i

.lr.ph76.i:                                       ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i
  %indvars.iv78.i = phi i64 [ %indvars.iv.next79.i.3, %.lr.ph76.i ], [ %indvars.iv78.i.unr, %.lr.ph76.i.prol.loopexit ] ; 5 uses
  %i.bs = load ptr, ptr %i.b, align 8
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bs, i64 %indvars.iv78.i ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = sub i32 %i.bu, %gepdiff.i
  store i32 %i.bv, ptr %i.bt, align 4
  %i.bw = load ptr, ptr %i.b, align 8
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv78.i
  %i.by = getelementptr i8, ptr %i.bx, i64 4      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = sub i32 %i.bz, %gepdiff.i
  store i32 %i.ca, ptr %i.by, align 4
  %i.cb = load ptr, ptr %i.b, align 8
  %i.cc = getelementptr [4 x i8], ptr %i.cb, i64 %indvars.iv78.i
  %i.cd = getelementptr i8, ptr %i.cc, i64 8      ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = sub i32 %i.ce, %gepdiff.i
  store i32 %i.cf, ptr %i.cd, align 4
  %i.cg = load ptr, ptr %i.b, align 8
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv78.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 12     ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = sub i32 %i.cj, %gepdiff.i
  store i32 %i.ck, ptr %i.ci, align 4
  %indvars.iv.next79.i.3 = add nsw i64 %indvars.iv78.i, 4 ; 2 uses
  %exitcond82.not.i.3 = icmp eq i64 %indvars.iv.next79.i.3, %wide.trip.count81.i
  br i1 %exitcond82.not.i.3, label %.thread66.i, label %.lr.ph76.i

.thread66.i:                                      ; preds = %.lr.ph76.i.prol.loopexit, %.lr.ph76.i, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.g, %bb.h, %.loopexit.i, %bb.e
  %.0536373.i = phi i64 [ %i.af, %.loopexit.i ], [ 0, %bb.e ], [ %i.af, %bb.h ], [ %i.af, %.lr.ph.i.prol.loopexit ], [ %i.af, %bb.g ], [ %i.af, %.lr.ph.i ], [ %i.af, %.lr.ph76.i ], [ %i.af, %.lr.ph76.i.prol.loopexit ]
  %i.cl = add i64 %.0536373.i, %i.w
  store i64 %i.cl, ptr %i.c, align 8
  br label %zip_central_dir_move.exit

zip_central_dir_move.exit:                        ; preds = %.critedge2, %.thread66.i
  %i.cm = icmp slt i32 %.2.lcssa, %2
  br i1 %i.cm, label %.preheader71, label %.preheader68.lr.ph

.preheader68:                                     ; preds = %._crit_edge, %.preheader68.lr.ph
  %.05689 = phi i32 [ 0, %.preheader68.lr.ph ], [ %i.en, %._crit_edge ] ; 3 uses
  %.388 = phi i32 [ 0, %.preheader68.lr.ph ], [ %.5.lcssa, %._crit_edge ] ; 2 uses
  %i.cn = sext i32 %.388 to i64
  %i.co = add nsw i32 %.388, 1
  %smax100 = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.co)
  br label %bb.i

bb.i:                                             ; preds = %.preheader68, %bb.j
  %indvars.iv98 = phi i64 [ %i.cn, %.preheader68 ], [ %indvars.iv.next99, %bb.j ] ; 3 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv98
  %i.cq = load i32, ptr %i.cp, align 4
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.j, label %.critedge4.split.loop.exit136

bb.j:                                             ; preds = %bb.i
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, 1 ; 2 uses
  %i.cr = icmp slt i64 %indvars.iv.next99, %i.h
  br i1 %i.cr, label %bb.i, label %.critedge4
end_hunk_3
