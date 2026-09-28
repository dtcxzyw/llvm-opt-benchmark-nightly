Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/yuv2rgb?download=true
inline.NumInlined: 42
inline.NumDeleted: 3
begin_hunk_0_@yuv420p_gbrp_c:bb.a
  %i.py = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !38
  %i.qa = getelementptr inbounds nuw i8, ptr %.0408.lcssa, i64 3
  store i8 %i.pz, ptr %i.qa, align 1, !tbaa !38
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.px
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !38
  %i.qd = getelementptr inbounds nuw i8, ptr %.0411.lcssa, i64 3
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !38
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.px
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !38
  %i.qg = getelementptr inbounds nuw i8, ptr %.0415.lcssa, i64 3
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !38
  %i.qh = getelementptr inbounds nuw i8, ptr %.0422.lcssa, i64 2
  %i.qi = getelementptr inbounds nuw i8, ptr %.0420.lcssa, i64 2
  %i.qj = getelementptr inbounds nuw i8, ptr %.0426.lcssa, i64 4
  %i.qk = getelementptr inbounds nuw i8, ptr %.0424.lcssa, i64 4
  %i.ql = getelementptr inbounds nuw i8, ptr %.0408.lcssa, i64 4
  %i.qm = getelementptr inbounds nuw i8, ptr %.0409.lcssa, i64 4
  %i.qn = getelementptr inbounds nuw i8, ptr %.0411.lcssa, i64 4
  %i.qo = getelementptr inbounds nuw i8, ptr %.0413.lcssa, i64 4
  %i.qp = getelementptr inbounds nuw i8, ptr %.0415.lcssa, i64 4
  %i.qq = getelementptr inbounds nuw i8, ptr %.0417.lcssa, i64 4
  %.pre465 = load i32, ptr %i.f, align 16, !tbaa !37
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.qr = phi i32 [ %.pre465, %bb.c ], [ %i.ln, %._crit_edge ]
  %.1427 = phi ptr [ %i.qj, %bb.c ], [ %.0426.lcssa, %._crit_edge ] ; 2 uses
  %.1425 = phi ptr [ %i.qk, %bb.c ], [ %.0424.lcssa, %._crit_edge ] ; 2 uses
  %.1423 = phi ptr [ %i.qh, %bb.c ], [ %.0422.lcssa, %._crit_edge ]
  %.1421 = phi ptr [ %i.qi, %bb.c ], [ %.0420.lcssa, %._crit_edge ]
  %.1418 = phi ptr [ %i.qq, %bb.c ], [ %.0417.lcssa, %._crit_edge ] ; 2 uses
  %.1416 = phi ptr [ %i.qp, %bb.c ], [ %.0415.lcssa, %._crit_edge ] ; 2 uses
  %.1414 = phi ptr [ %i.qo, %bb.c ], [ %.0413.lcssa, %._crit_edge ] ; 2 uses
  %.1412 = phi ptr [ %i.qn, %bb.c ], [ %.0411.lcssa, %._crit_edge ] ; 2 uses
  %.1410 = phi ptr [ %i.qm, %bb.c ], [ %.0409.lcssa, %._crit_edge ] ; 2 uses
  %.1 = phi ptr [ %i.ql, %bb.c ], [ %.0408.lcssa, %._crit_edge ] ; 2 uses
  %i.qs = and i32 %i.qr, 2
  %.not430 = icmp eq i32 %i.qs, 0
  br i1 %.not430, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.qt = load i8, ptr %.1423, align 1, !tbaa !38
  %i.qu = zext i8 %i.qt to i64
  %i.qv = load i8, ptr %.1421, align 1, !tbaa !38
  %i.qw = zext i8 %i.qv to i64
  %i.qx = or disjoint i64 %i.qw, 512              ; 2 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.qx
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !35 ; 4 uses
  %i.ra = or disjoint i64 %i.qu, 512              ; 2 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ra
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !35
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.qx
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !36
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds i8, ptr %i.rc, i64 %i.rf ; 4 uses
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ra
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !35 ; 4 uses
  %i.rj = load i8, ptr %.1427, align 1, !tbaa !38
  %i.rk = zext i8 %i.rj to i64                    ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.rk
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !38
  store i8 %i.rm, ptr %.1, align 1, !tbaa !38
  %i.rn = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rk
  %i.ro = load i8, ptr %i.rn, align 1, !tbaa !38
  store i8 %i.ro, ptr %.1412, align 1, !tbaa !38
  %i.rp = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rk
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !38
  store i8 %i.rq, ptr %.1416, align 1, !tbaa !38
  %i.rr = getelementptr inbounds nuw i8, ptr %.1427, i64 1
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !38
  %i.rt = zext i8 %i.rs to i64                    ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.rt
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !38
  %i.rw = getelementptr inbounds nuw i8, ptr %.1, i64 1
  store i8 %i.rv, ptr %i.rw, align 1, !tbaa !38
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rt
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !38
  %i.rz = getelementptr inbounds nuw i8, ptr %.1412, i64 1
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !38
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rt
  %i.sb = load i8, ptr %i.sa, align 1, !tbaa !38
  %i.sc = getelementptr inbounds nuw i8, ptr %.1416, i64 1
  store i8 %i.sb, ptr %i.sc, align 1, !tbaa !38
  %i.sd = load i8, ptr %.1425, align 1, !tbaa !38
  %i.se = zext i8 %i.sd to i64                    ; 3 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.se
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !38
  store i8 %i.sg, ptr %.1410, align 1, !tbaa !38
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.se
  %i.si = load i8, ptr %i.sh, align 1, !tbaa !38
  store i8 %i.si, ptr %.1414, align 1, !tbaa !38
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.se
  %i.sk = load i8, ptr %i.sj, align 1, !tbaa !38
  store i8 %i.sk, ptr %.1418, align 1, !tbaa !38
  %i.sl = getelementptr inbounds nuw i8, ptr %.1425, i64 1
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !38
  %i.sn = zext i8 %i.sm to i64                    ; 3 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.rg, i64 %i.sn
  %i.sp = load i8, ptr %i.so, align 1, !tbaa !38
  %i.sq = getelementptr inbounds nuw i8, ptr %.1410, i64 1
  store i8 %i.sp, ptr %i.sq, align 1, !tbaa !38
  %i.sr = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.sn
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !38
  %i.st = getelementptr inbounds nuw i8, ptr %.1414, i64 1
  store i8 %i.ss, ptr %i.st, align 1, !tbaa !38
  %i.su = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.sn
  %i.sv = load i8, ptr %i.su, align 1, !tbaa !38
  %i.sw = getelementptr inbounds nuw i8, ptr %.1418, i64 1
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.sx = add nuw nsw i32 %.0452, 2               ; 2 uses
  %i.sy = icmp slt i32 %i.sx, %4
  br i1 %i.sy, label %bb.b, label %._crit_edge455, !llvm.loop !99

._crit_edge455:                                   ; preds = %bb.f, %bb.a
  ret i32 %4
}

; Function Attrs: cold nounwind optsize uwtable
define range(i32 -22, 1) i32 @ff_yuv2rgb_c_init_tables(ptr noundef initializes((40348, 40372), (40400, 40464)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !32   ; 2 uses
  switch i32 %i.b, label %bb.b [
    i32 28, label %switch.edge
    i32 27, label %switch.edge
    i32 3, label %switch.edge
    i32 36, label %switch.edge
    i32 37, label %switch.edge
    i32 38, label %switch.edge
    i32 39, label %switch.edge
    i32 53, label %switch.edge
    i32 52, label %switch.edge
    i32 194, label %switch.edge
    i32 193, label %switch.edge
    i32 20, label %switch.edge
    i32 21, label %switch.edge
    i32 22, label %switch.edge
    i32 10, label %switch.edge
  ]

bb.b:                                             ; preds = %bb.a
  br label %switch.edge

switch.edge:                                      ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %i.c = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.a ] ; 9 uses
  switch i32 %i.b, label %bb.c [
    i32 36, label %switch.edge448
    i32 38, label %switch.edge448
    i32 53, label %switch.edge448
    i32 40, label %switch.edge448
    i32 42, label %switch.edge448
    i32 55, label %switch.edge448
    i32 194, label %switch.edge448
    i32 196, label %switch.edge448
  ]

bb.c:                                             ; preds = %switch.edge
  br label %switch.edge448

switch.edge448:                                   ; preds = %switch.edge, %switch.edge, %switch.edge, %switch.edge, %switch.edge, %switch.edge, %switch.edge, %switch.edge, %bb.c
  %i.d = phi i1 [ true, %switch.edge ], [ true, %switch.edge ], [ true, %switch.edge ], [ true, %switch.edge ], [ true, %switch.edge ], [ true, %switch.edge ], [ true, %switch.edge ], [ false, %bb.c ], [ true, %switch.edge ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load i32, ptr %i.e, align 16, !tbaa !113 ; 5 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.g = select i1 %.not, i32 838, i32 896        ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load <2 x i32>, ptr %1, align 4, !tbaa !36
  %i.j = sext <2 x i32> %i.i to <2 x i64>         ; 3 uses
  %i.k = load <2 x i32>, ptr %i.h, align 4, !tbaa !36
  %i.l = sub nsw <2 x i32> zeroinitializer, %i.k  ; 3 uses
  %i.m = sext <2 x i32> %i.l to <2 x i64>
  %i.n = shufflevector <2 x i64> %i.j, <2 x i64> %i.m, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %switch.edge448
  %i.o = extractelement <2 x i64> %i.j, i64 1
  %i.p = mul nsw i64 %i.o, 224
  %i.q = extractelement <2 x i64> %i.j, i64 0
  %i.r = mul nsw i64 %i.q, 224
  %i.s = extractelement <2 x i32> %i.l, i64 0
  %i.t = sext i32 %i.s to i64
  %i.u = mul nsw i64 %i.t, 224
  %i.v = extractelement <2 x i32> %i.l, i64 1
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.w, 224
  %i.y = insertelement <4 x i64> poison, i64 %i.r, i64 0
  %i.z = insertelement <4 x i64> %i.y, i64 %i.p, i64 1
  %i.aa = insertelement <4 x i64> %i.z, i64 %i.u, i64 2
  %i.ab = insertelement <4 x i64> %i.aa, i64 %i.x, i64 3
  %i.ac = sdiv <4 x i64> %i.ab, splat (i64 255)
  br label %bb.e

bb.e:                                             ; preds = %switch.edge448, %bb.d
  %.0410 = phi i64 [ 65536, %bb.d ], [ 76309, %switch.edge448 ]
  %.0409 = phi i64 [ 0, %bb.d ], [ 1048576, %switch.edge448 ]
  %i.ad = phi <4 x i64> [ %i.ac, %bb.d ], [ %i.n, %switch.edge448 ] ; 4 uses
  %i.ae = sext i32 %5 to i64
  %i.af = sext i32 %3 to i64
  %i.ag = shl nsw i64 %i.af, 8
  %i.ah = sub nsw i64 %.0409, %i.ag               ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 40448
  store <2 x i64> splat (i64 288234774265332736), ptr %i.ai, align 16, !tbaa !114
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40400
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40408
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40416
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40424
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40432
  %i.ao = shl nsw i64 %i.ah, 3
  %i.ap = add nsw i64 %i.ao, 32768
  %i.aq = lshr i64 %i.ap, 16                      ; 2 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = icmp slt i32 %i.ar, -32767
  %i.at = icmp sgt i32 %i.ar, 32767
  %i.au = and i64 %i.aq, 65535
  %i.av = mul nuw i64 %i.au, 281479271743489
  %i.aw = select i1 %i.at, i64 9223231297218904063, i64 %i.av
  %i.ax = select i1 %i.as, i64 -9223231297218904064, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40440
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !115
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40352
  %i.ba = lshr exact i64 %i.ah, 7                 ; 2 uses
  %i.bb = trunc i64 %i.ba to i32                  ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 32767
  %i.bd = trunc i64 %i.ba to i16
  %i.be = sext i16 %i.bd to i32
  %i.bf = select i1 %i.bc, i32 32767, i32 %i.be
  %.inv = icmp sgt i32 %i.bb, -32768
  %i.bg = select i1 %.inv, i32 %i.bf, i32 -32768
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40348
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !116
  %6 = sext i32 %4 to i64                         ; 2 uses
  %i.bi = mul nsw i64 %.0410, %6
  %i.bj = ashr i64 %i.bi, 16                      ; 21 uses
  %i.bk = mul nsw i64 %i.ae, %6                   ; 4 uses
  %i.bl = extractelement <4 x i64> %i.ad, i64 0
  %i.bm = mul i64 %i.bk, %i.bl
  %i.bn = ashr i64 %i.bm, 32                      ; 2 uses
  %i.bo = extractelement <4 x i64> %i.ad, i64 1
  %i.bp = mul i64 %i.bk, %i.bo
  %i.bq = ashr i64 %i.bp, 32                      ; 2 uses
  %i.br = extractelement <4 x i64> %i.ad, i64 2
  %i.bs = mul i64 %i.bk, %i.br
  %i.bt = ashr i64 %i.bs, 32                      ; 2 uses
  %i.bu = extractelement <4 x i64> %i.ad, i64 3
  %i.bv = mul i64 %i.bk, %i.bu
  %i.bw = ashr i64 %i.bv, 32                      ; 2 uses
  %i.bx = insertelement <4 x i64> poison, i64 %i.bj, i64 0 ; 3 uses
  %i.by = insertelement <4 x i64> %i.bx, i64 %i.bn, i64 1
  %i.bz = insertelement <4 x i64> %i.by, i64 %i.bw, i64 2
  %i.ca = insertelement <4 x i64> %i.bz, i64 %i.bt, i64 3
  %i.cb = shl nsw <4 x i64> %i.ca, splat (i64 13)
  %i.cc = add nsw <4 x i64> %i.cb, splat (i64 32768)
  %i.cd = lshr <4 x i64> %i.cc, splat (i64 16)    ; 2 uses
  %i.ce = trunc <4 x i64> %i.cd to <4 x i32>      ; 2 uses
  %i.cf = icmp slt <4 x i32> %i.ce, splat (i32 -32767)
  %i.cg = icmp sgt <4 x i32> %i.ce, splat (i32 32767)
  %i.ch = trunc <4 x i64> %i.cd to <4 x i16>
  %i.ci = select <4 x i1> %i.cg, <4 x i16> splat (i16 32767), <4 x i16> %i.ch
  %i.cj = select <4 x i1> %i.cf, <4 x i16> splat (i16 -32768), <4 x i16> %i.ci ; 5 uses
  %i.ck = extractelement <4 x i16> %i.cj, i64 0
  %i.cl = zext i16 %i.ck to i64
  %i.cm = mul nuw i64 %i.cl, 281479271743489
  store i64 %i.cm, ptr %i.aj, align 16, !tbaa !117
  %i.cn = extractelement <4 x i16> %i.cj, i64 1
  %i.co = zext i16 %i.cn to i64
  %i.cp = mul nuw i64 %i.co, 281479271743489
  store i64 %i.cp, ptr %i.ak, align 8, !tbaa !118
  %i.cq = shl nsw i64 %i.bq, 13
  %i.cr = add nsw i64 %i.cq, 32768
  %i.cs = lshr i64 %i.cr, 16                      ; 2 uses
  %i.ct = trunc i64 %i.cs to i32                  ; 2 uses
  %i.cu = icmp slt i32 %i.ct, -32767
  %i.cv = icmp sgt i32 %i.ct, 32767
  %i.cw = trunc i64 %i.cs to i16
  %spec.select.i478 = select i1 %i.cv, i16 32767, i16 %i.cw
  %.0.i479 = select i1 %i.cu, i16 -32768, i16 %spec.select.i478 ; 2 uses
  %i.cx = zext i16 %.0.i479 to i64
  %i.cy = mul nuw i64 %i.cx, 281479271743489
  store i64 %i.cy, ptr %i.al, align 16, !tbaa !119
  %i.cz = extractelement <4 x i16> %i.cj, i64 2
  %i.da = zext i16 %i.cz to i64
  %i.db = mul nuw i64 %i.da, 281479271743489
  store i64 %i.db, ptr %i.am, align 8, !tbaa !120
  %i.dc = extractelement <4 x i16> %i.cj, i64 3
  %i.dd = zext i16 %i.dc to i64
  %i.de = mul nuw i64 %i.dd, 281479271743489
  store i64 %i.de, ptr %i.an, align 16, !tbaa !121
  %i.df = sext <4 x i16> %i.cj to <4 x i32>
  store <4 x i32> %i.df, ptr %i.az, align 16, !tbaa !36
  %i.dg = sext i16 %.0.i479 to i32
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 40368
  store i32 %i.dg, ptr %i.dh, align 16, !tbaa !122
  %i.di = shl nsw i64 %i.bn, 16
  %i.dj = or disjoint i64 %i.di, 32768
  %i.dk = tail call i64 @llvm.smax.i64(i64 %i.bj, i64 1) ; 4 uses
  %i.dl = sdiv i64 %i.dj, %i.dk                   ; 14 uses
  %i.dm = shl nsw i64 %i.bq, 16
  %i.dn = or disjoint i64 %i.dm, 32768
  %i.do = sdiv i64 %i.dn, %i.dk                   ; 14 uses
  %i.dp = shl nsw i64 %i.bt, 16
  %i.dq = or disjoint i64 %i.dp, 32768
  %i.dr = sdiv i64 %i.dq, %i.dk                   ; 16 uses
  %i.ds = shl nsw i64 %i.bw, 16
  %i.dt = or disjoint i64 %i.ds, 32768
  %i.du = sdiv i64 %i.dt, %i.dk                   ; 16 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 3704 ; 9 uses
  tail call void @av_freep(ptr noundef nonnull %i.dv) #7
  switch i32 %i.f, label %bb.bg [
    i32 1, label %bb.f
    i32 4, label %bb.l
    i32 132, label %bb.l
    i32 8, label %bb.t
    i32 12, label %bb.ab
    i32 15, label %bb.ag
    i32 16, label %bb.ag
    i32 24, label %bb.al
    i32 48, label %bb.al
    i32 30, label %bb.aq
    i32 32, label %bb.ay
    i32 64, label %bb.ay
  ]

bb.f:                                             ; preds = %bb.e
  %i.dw = tail call noalias ptr @av_malloc(i64 noundef 2048) #7 ; 4 uses
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !123
  %.not447 = icmp eq ptr %i.dw, null
  br i1 %.not447, label %fill_gv_table.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.neg726 = mul nsw i64 %i.bj, -512
  %reass.sub764 = sub nsw i64 %.neg726, %i.ah
  %i.dx = add nsw i64 %reass.sub764, -25165824
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %indvars.iv809 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next810, %bb.h ] ; 2 uses
  %.0408757 = phi i64 [ %i.dx, %bb.g ], [ %i.eg, %bb.h ] ; 2 uses
  %i.dy = add nsw i64 %.0408757, 32768
  %i.dz = lshr i64 %i.dy, 16                      ; 2 uses
  %i.ea = trunc i64 %i.dz to i32                  ; 2 uses
  %.not.i469 = icmp ult i32 %i.ea, 256
  %isnotneg.i470 = icmp sgt i32 %i.ea, -1
  %i.eb = sext i1 %isnotneg.i470 to i8
  %i.ec = trunc i64 %i.dz to i8
  %.0.i471 = select i1 %.not.i469, i8 %i.ec, i8 %i.eb
  %i.ed = lshr i8 %.0.i471, 7
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dw, i64 %indvars.iv809
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 110
  store i8 %i.ed, ptr %i.ef, align 1, !tbaa !38
  %i.eg = add nsw i64 %.0408757, %i.bj
  %indvars.iv.next810 = add nuw nsw i64 %indvars.iv809, 1 ; 2 uses
  %exitcond812.not = icmp eq i64 %indvars.iv.next810, 1938
  br i1 %exitcond812.not, label %bb.i, label %bb.h, !llvm.loop !100

bb.i:                                             ; preds = %bb.h
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 19072
  %i.ei = zext nneg i32 %i.g to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.ei
  %i.ek = ashr i64 %i.dr, 9
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds i8, ptr %i.ej, i64 %i.el
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.i = phi i64 [ 0, %bb.i ], [ %indvars.iv.next.i, %bb.j ] ; 5 uses
  %i.en = and i64 %indvars.iv.i, 1792
  %.not.i.i = icmp eq i64 %i.en, 512
  %isnotneg.i.i = icmp samesign ugt i64 %indvars.iv.i, 511
  %i.eo = sext i1 %isnotneg.i.i to i64
  %.0.i.i = select i1 %.not.i.i, i64 %indvars.iv.i, i64 %i.eo
  %i.ep = and i64 %.0.i.i, 255
  %i.eq = mul nsw i64 %i.ep, %i.dr
  %i.er = ashr i64 %i.eq, 16
  %i.es = getelementptr inbounds i8, ptr %i.em, i64 %i.er
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.i
  store ptr %i.es, ptr %i.et, align 8, !tbaa !35
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 1280
  br i1 %exitcond.not.i, label %fill_table.exit, label %bb.j, !llvm.loop !101

fill_table.exit:                                  ; preds = %bb.j
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 3712
  %i.ev = shl i64 %i.du, 23
  %i.ew = and i64 %i.ev, -4294967296
  %sext.i = sub i64 0, %i.ew
  %i.ex = lshr exact i64 %sext.i, 32
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %fill_table.exit
  %indvars.iv.i498 = phi i64 [ 0, %fill_table.exit ], [ %indvars.iv.next.i502, %bb.k ] ; 5 uses
  %i.ey = and i64 %indvars.iv.i498, 1792
  %.not.i.i499 = icmp eq i64 %i.ey, 512
  %isnotneg.i.i500 = icmp samesign ugt i64 %indvars.iv.i498, 511
  %i.ez = sext i1 %isnotneg.i.i500 to i64
  %.0.i.i501 = select i1 %.not.i.i499, i64 %indvars.iv.i498, i64 %i.ez
  %i.fa = and i64 %.0.i.i501, 255
  %i.fb = mul nsw i64 %i.fa, %i.du
  %i.fc = lshr i64 %i.fb, 16
  %i.fd = add nuw nsw i64 %i.fc, %i.ex
  %i.fe = trunc i64 %i.fd to i32
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %indvars.iv.i498
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !36
  %indvars.iv.next.i502 = add nuw nsw i64 %indvars.iv.i498, 1 ; 2 uses
  %exitcond.not.i503 = icmp eq i64 %indvars.iv.next.i502, 1280
  br i1 %exitcond.not.i503, label %fill_gv_table.exit, label %bb.k, !llvm.loop !102

bb.l:                                             ; preds = %bb.e, %bb.e
  %i.fg = select i1 %i.c, i32 3, i32 0
  %i.fh = select i1 %i.c, i32 0, i32 3
  %i.fi = tail call noalias ptr @av_malloc(i64 noundef 6144) #7 ; 4 uses
  store ptr %i.fi, ptr %i.dv, align 8, !tbaa !123
  %.not445 = icmp eq ptr %i.fi, null
  br i1 %.not445, label %fill_gv_table.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.neg724 = mul nsw i64 %i.bj, -512
  %reass.sub763 = sub nsw i64 %.neg724, %i.ah
  %i.fj = add nsw i64 %reass.sub763, -25165824
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.n
  %indvars.iv805 = phi i64 [ 0, %bb.m ], [ %indvars.iv.next806, %bb.n ] ; 2 uses
  %.1755 = phi i64 [ %i.fj, %bb.m ], [ %i.gb, %bb.n ] ; 2 uses
  %i.fk = add nsw i64 %.1755, 32768
  %i.fl = lshr i64 %i.fk, 16
  %i.fm = trunc i64 %i.fl to i32                  ; 3 uses
  %.not.i466 = icmp ult i32 %i.fm, 256
  %isnotneg.i467 = icmp sgt i32 %i.fm, -1
  %i.fn = sext i1 %isnotneg.i467 to i32
  %.0.i468 = select i1 %.not.i466, i32 %i.fm, i32 %i.fn
  %i.fo = and i32 %.0.i468, 255                   ; 2 uses
end_hunk_0
