Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/absGlaOld?download=true
inline.NumInlined: 785
inline.NumDeleted: 130
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Gla_ManStart:bb.a
  %i.lx = getelementptr i8, ptr %i.ab, i64 64     ; 4 uses
  %i.ly = getelementptr i8, ptr %i.ab, i64 72     ; 3 uses
  %.not214 = icmp eq ptr %.val239.pre, null
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph361, %.loopexit
  %indvars.iv383 = phi i64 [ 0, %.lr.ph361 ], [ %indvars.iv.next384, %.loopexit ] ; 5 uses
  %i.lz = getelementptr inbounds nuw [12 x i8], ptr %.val239.pre, i64 %indvars.iv383 ; 13 uses
  br i1 %.not214, label %.critedge4, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !100 ; 3 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv383
  store i32 %i.mb, ptr %i.mc, align 4, !tbaa !33
  %cond = icmp eq i32 %i.mb, -1
  br i1 %cond, label %.loopexit, label %Gla_ManObj.exit

Gla_ManObj.exit:                                  ; preds = %bb.cb
  %i.md = sext i32 %i.mb to i64
  %i.me = getelementptr inbounds [40 x i8], ptr %i.lp, i64 %i.md ; 5 uses
  %i.mf = trunc nuw nsw i64 %indvars.iv383 to i32
  store i32 %i.mf, ptr %i.me, align 8, !tbaa !36
  %.val249 = load i64, ptr %i.lz, align 4
  %i.mg = trunc i64 %.val249 to i32
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 4 ; 14 uses
  %i.mi = load i32, ptr %i.mh, align 4
  %i.mj = lshr i32 %i.mg, 28
  %i.mk = and i32 %i.mj, 2
  %i.ml = and i32 %i.mi, -7
  %i.mm = or disjoint i32 %i.mk, %i.ml
  %.val251 = load i64, ptr %i.lz, align 4
  %i.mn = and i64 %.val251, 2305843005455597567
  %narrow.i = icmp eq i64 %i.mn, 2305843005455597567
  %i.mo = select i1 %narrow.i, i32 4, i32 0
  %i.mp = or disjoint i32 %i.mo, %i.mm            ; 2 uses
  store i32 %i.mp, ptr %i.mh, align 4
  %.val238 = load i64, ptr %i.lz, align 4         ; 2 uses
  %i.mq = and i64 %.val238, 2684354559
  %narrow.i.not.i = icmp eq i64 %i.mq, 2684354559
  br i1 %narrow.i.not.i, label %bb.cc, label %Gia_ObjIsPi.exit

bb.cc:                                            ; preds = %Gla_ManObj.exit
  %i.mr = lshr i64 %.val238, 32
  %i.ms = trunc nuw i64 %i.mr to i32
  %i.mt = and i32 %i.ms, 536870911
  %.val.i = load i32, ptr %i.lw, align 8, !tbaa !78
  %.val3.i = load ptr, ptr %i.lx, align 8, !tbaa !79
  %i.mu = getelementptr i8, ptr %.val3.i, i64 4
  %.val3.val.i = load i32, ptr %i.mu, align 4, !tbaa !20
  %i.mv = sub nsw i32 %.val3.val.i, %.val.i
  %i.mw = icmp slt i32 %i.mt, %i.mv
  %i.mx = select i1 %i.mw, i32 8, i32 0
  br label %Gia_ObjIsPi.exit

Gia_ObjIsPi.exit:                                 ; preds = %Gla_ManObj.exit, %bb.cc
  %i.my = phi i32 [ 0, %Gla_ManObj.exit ], [ %i.mx, %bb.cc ]
  %i.mz = and i32 %i.mp, -9
  %i.na = or disjoint i32 %i.my, %i.mz            ; 2 uses
  store i32 %i.na, ptr %i.mh, align 4
  %.val246 = load i64, ptr %i.lz, align 4         ; 3 uses
  %i.nb = and i64 %.val246, 2147483648
  %.not.i.i297 = icmp eq i64 %i.nb, 0
  %i.nc = and i64 %.val246, 536870911
  %i.nd = icmp eq i64 %i.nc, 536870911
  %narrow.i.not.i298 = or i1 %.not.i.i297, %i.nd
  br i1 %narrow.i.not.i298, label %Gia_ObjIsPo.exit, label %bb.cd

bb.cd:                                            ; preds = %Gia_ObjIsPi.exit
  %i.ne = lshr i64 %.val246, 32
  %i.nf = trunc nuw i64 %i.ne to i32
  %i.ng = and i32 %i.nf, 536870911
  %.val4.i = load i32, ptr %i.lw, align 8, !tbaa !78
  %.val5.i = load ptr, ptr %i.ly, align 8, !tbaa !82
  %i.nh = getelementptr i8, ptr %.val5.i, i64 4
  %.val5.val.i = load i32, ptr %i.nh, align 4, !tbaa !20
  %i.ni = sub nsw i32 %.val5.val.i, %.val4.i
  %i.nj = icmp slt i32 %i.ng, %i.ni
  %i.nk = select i1 %i.nj, i32 16, i32 0
  br label %Gia_ObjIsPo.exit

Gia_ObjIsPo.exit:                                 ; preds = %Gia_ObjIsPi.exit, %bb.cd
  %i.nl = phi i32 [ 0, %Gia_ObjIsPi.exit ], [ %i.nk, %bb.cd ]
  %i.nm = and i32 %i.na, -17
  %i.nn = or disjoint i32 %i.nl, %i.nm            ; 2 uses
  store i32 %i.nn, ptr %i.mh, align 4
  %.val247 = load i64, ptr %i.lz, align 4         ; 3 uses
  %i.no = and i64 %.val247, 2147483648
  %.not.i.i299 = icmp eq i64 %i.no, 0
  %i.np = and i64 %.val247, 536870911
  %i.nq = icmp eq i64 %i.np, 536870911
  %narrow.i.not.i300 = or i1 %.not.i.i299, %i.nq
  br i1 %narrow.i.not.i300, label %Gia_ObjIsRi.exit, label %bb.ce

bb.ce:                                            ; preds = %Gia_ObjIsPo.exit
  %i.nr = lshr i64 %.val247, 32
  %i.ns = trunc nuw i64 %i.nr to i32
  %i.nt = and i32 %i.ns, 536870911
  %.val4.i301 = load i32, ptr %i.lw, align 8, !tbaa !78
  %.val5.i302 = load ptr, ptr %i.ly, align 8, !tbaa !82
  %i.nu = getelementptr i8, ptr %.val5.i302, i64 4
  %.val5.val.i303 = load i32, ptr %i.nu, align 4, !tbaa !20
  %i.nv = sub nsw i32 %.val5.val.i303, %.val4.i301
  %.not341 = icmp slt i32 %i.nt, %i.nv
  %i.nw = select i1 %.not341, i32 0, i32 64
  br label %Gia_ObjIsRi.exit

Gia_ObjIsRi.exit:                                 ; preds = %Gia_ObjIsPo.exit, %bb.ce
  %i.nx = phi i32 [ 0, %Gia_ObjIsPo.exit ], [ %i.nw, %bb.ce ]
  %i.ny = and i32 %i.nn, -65
  %i.nz = or disjoint i32 %i.nx, %i.ny            ; 2 uses
  store i32 %i.nz, ptr %i.mh, align 4
  %.val252 = load i64, ptr %i.lz, align 4         ; 2 uses
  %i.oa = and i64 %.val252, 2684354559
  %narrow.i.not.i304 = icmp eq i64 %i.oa, 2684354559
  br i1 %narrow.i.not.i304, label %bb.cf, label %Gia_ObjIsRo.exit

bb.cf:                                            ; preds = %Gia_ObjIsRi.exit
  %i.ob = lshr i64 %.val252, 32
  %i.oc = trunc nuw i64 %i.ob to i32
  %i.od = and i32 %i.oc, 536870911
  %.val.i305 = load i32, ptr %i.lw, align 8, !tbaa !78
  %.val3.i306 = load ptr, ptr %i.lx, align 8, !tbaa !79
  %i.oe = getelementptr i8, ptr %.val3.i306, i64 4
  %.val3.val.i307 = load i32, ptr %i.oe, align 4, !tbaa !20
  %i.of = sub nsw i32 %.val3.val.i307, %.val.i305
  %.not342 = icmp slt i32 %i.od, %i.of
  %i.og = select i1 %.not342, i32 0, i32 32
  br label %Gia_ObjIsRo.exit

Gia_ObjIsRo.exit:                                 ; preds = %Gia_ObjIsRi.exit, %bb.cf
  %i.oh = phi i32 [ 0, %Gia_ObjIsRi.exit ], [ %i.og, %bb.cf ]
  %i.oi = and i32 %i.nz, -161
  %i.oj = or disjoint i32 %i.oh, %i.oi
  %.val254 = load i64, ptr %i.lz, align 4         ; 2 uses
  %i.ok = and i64 %.val254, 2147483648
  %.not.i308 = icmp eq i64 %i.ok, 0
  %i.ol = and i64 %.val254, 536870911
  %i.om = icmp ne i64 %i.ol, 536870911
  %narrow.i309 = and i1 %.not.i308, %i.om
  %i.on = select i1 %narrow.i309, i32 128, i32 0
  %i.oo = or disjoint i32 %i.on, %i.oj            ; 4 uses
  store i32 %i.oo, ptr %i.mh, align 4
  %.val250 = load i64, ptr %i.lz, align 4         ; 5 uses
  %i.op = and i64 %.val250, 2305843005455597567
  %narrow.i310.not = icmp eq i64 %i.op, 2305843005455597567
  br i1 %narrow.i310.not, label %.loopexit, label %bb.cg

bb.cg:                                            ; preds = %Gia_ObjIsRo.exit
  %i.oq = and i64 %.val250, 2684354559
  %narrow.i.not.i311 = icmp eq i64 %i.oq, 2684354559
  br i1 %narrow.i.not.i311, label %Gia_ObjIsPi.exit315, label %Gia_ObjIsPi.exit315.thread

Gia_ObjIsPi.exit315:                              ; preds = %bb.cg
  %i.or = lshr i64 %.val250, 32
  %i.os = trunc nuw i64 %i.or to i32
  %i.ot = and i32 %i.os, 536870911
  %.val.i312 = load i32, ptr %i.lw, align 8, !tbaa !78
  %.val3.i313 = load ptr, ptr %i.lx, align 8, !tbaa !79
  %i.ou = getelementptr i8, ptr %.val3.i313, i64 4
  %.val3.val.i314 = load i32, ptr %i.ou, align 4, !tbaa !20
  %i.ov = sub nsw i32 %.val3.val.i314, %.val.i312
  %.not343 = icmp slt i32 %i.ot, %i.ov
  br i1 %.not343, label %.loopexit, label %Gia_ObjIsPi.exit315.thread

Gia_ObjIsPi.exit315.thread:                       ; preds = %bb.cg, %Gia_ObjIsPi.exit315
  %i.ow = and i64 %.val250, 2147483648
  %.not.i316 = icmp ne i64 %i.ow, 0               ; 2 uses
  %i.ox = and i64 %.val250, 536870911
  %i.oy = icmp ne i64 %i.ox, 536870911            ; 2 uses
  %narrow.i317 = and i1 %.not.i316, %i.oy
  br i1 %narrow.i317, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %Gia_ObjIsPi.exit315.thread
  %i.oz = and i32 %i.oo, 511
  %i.pa = or disjoint i32 %i.oz, 512
  store i32 %i.pa, ptr %i.mh, align 4
  %i.pb = load i64, ptr %i.lz, align 4
  %i.pc = and i64 %i.pb, 536870911
  %i.pd = sub nsw i64 0, %i.pc
  %i.pe = getelementptr inbounds [12 x i8], ptr %i.lz, i64 %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !100
  %i.ph = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store i32 %i.pg, ptr %i.ph, align 8, !tbaa !33
  br label %.loopexit

bb.ci:                                            ; preds = %Gia_ObjIsPi.exit315.thread
  %.not.i316.not = xor i1 %.not.i316, true
  %narrow.i319 = and i1 %i.oy, %.not.i316.not
  br i1 %narrow.i319, label %bb.cj, label %bb.cr

bb.cj:                                            ; preds = %bb.ci
  %i.pi = load ptr, ptr %i.z, align 8, !tbaa !193
  %i.pj = getelementptr i8, ptr %i.pi, i64 8
  %.val225 = load ptr, ptr %i.pj, align 8, !tbaa !22 ; 2 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %.val225, i64 %indvars.iv383
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !33
  %i.pm = sext i32 %i.pl to i64
  %i.pn = getelementptr inbounds [4 x i8], ptr %.val225, i64 %i.pm ; 4 uses
  %i.po = and i32 %i.oo, 511                      ; 3 uses
  store i32 %i.po, ptr %i.mh, align 4
  %i.pp = getelementptr inbounds nuw i8, ptr %i.me, i64 8 ; 4 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !33 ; 2 uses
  %.not221 = icmp eq i32 %i.pr, -1
  br i1 %.not221, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ps = sext i32 %i.pr to i64
  %i.pt = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.ps
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !100
  %i.pw = or disjoint i32 %i.po, 512              ; 2 uses
  store i32 %i.pw, ptr %i.mh, align 4
  store i32 %i.pv, ptr %i.pp, align 8, !tbaa !33
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %i.px = phi i32 [ %i.po, %bb.cj ], [ %i.pw, %bb.ck ] ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !33 ; 2 uses
  %.not221.1 = icmp eq i32 %i.pz, -1
  br i1 %.not221.1, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.qa
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !100
  %i.qe = lshr i32 %i.px, 9
  %i.qf = add nuw nsw i32 %i.px, 512              ; 2 uses
  store i32 %i.qf, ptr %i.mh, align 4
  %i.qg = zext nneg i32 %i.qe to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.qg
  store i32 %i.qd, ptr %i.qh, align 4, !tbaa !33
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.qi = phi i32 [ %i.qf, %bb.cm ], [ %i.px, %bb.cl ] ; 3 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !33 ; 2 uses
  %.not221.2 = icmp eq i32 %i.qk, -1
  br i1 %.not221.2, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ql = sext i32 %i.qk to i64
  %i.qm = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.ql
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !100
  %i.qp = lshr i32 %i.qi, 9
  %i.qq = add nuw nsw i32 %i.qi, 512              ; 2 uses
  store i32 %i.qq, ptr %i.mh, align 4
  %i.qr = zext nneg i32 %i.qp to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.qr
  store i32 %i.qo, ptr %i.qs, align 4, !tbaa !33
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.qt = phi i32 [ %i.qq, %bb.co ], [ %i.qi, %bb.cn ] ; 2 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !33 ; 2 uses
  %.not221.3 = icmp eq i32 %i.qv, -1
  br i1 %.not221.3, label %.loopexit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !100
  %i.ra = lshr i32 %i.qt, 9
  %i.rb = add nuw nsw i32 %i.qt, 512
  store i32 %i.rb, ptr %i.mh, align 4
  %i.rc = zext nneg i32 %i.ra to i64
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %i.rc
  store i32 %i.qz, ptr %i.rd, align 4, !tbaa !33
  br label %.loopexit

bb.cr:                                            ; preds = %bb.ci
  %i.re = and i32 %i.oo, 511
  %i.rf = or disjoint i32 %i.re, 512              ; 2 uses
  store i32 %i.rf, ptr %i.mh, align 4
  %.val242 = load i64, ptr %i.lz, align 4
  %.val6.i = load ptr, ptr %i.ly, align 8, !tbaa !82 ; 2 uses
  %i.rg = getelementptr i8, ptr %.val6.i, i64 4   ; 2 uses
  %.val6.val.i = load i32, ptr %i.rg, align 4, !tbaa !20
  %.val7.i = load ptr, ptr %i.lx, align 8, !tbaa !79
  %i.rh = getelementptr i8, ptr %.val7.i, i64 4   ; 2 uses
  %.val7.val.i = load i32, ptr %i.rh, align 4, !tbaa !20
  %i.ri = lshr i64 %.val242, 32
  %i.rj = trunc nuw i64 %i.ri to i32
  %i.rk = and i32 %i.rj, 536870911
  %i.rl = add i32 %i.rk, %.val6.val.i
  %i.rm = sub i32 %i.rl, %.val7.val.i
  %i.rn = getelementptr i8, ptr %.val6.i, i64 8
  %.val5.val.i321 = load ptr, ptr %i.rn, align 8, !tbaa !22 ; 2 uses
  %i.ro = sext i32 %i.rm to i64
  %i.rp = getelementptr inbounds [4 x i8], ptr %.val5.val.i321, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !33
  %i.rr = sext i32 %i.rq to i64
  %i.rs = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.rr ; 2 uses
  %i.rt = load i64, ptr %i.rs, align 4
  %i.ru = and i64 %i.rt, 536870911
  %i.rv = sub nsw i64 0, %i.ru
  %i.rw = getelementptr inbounds [12 x i8], ptr %i.rs, i64 %i.rv
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !100
  %i.rz = getelementptr inbounds nuw i8, ptr %i.me, i64 8
  store i32 %i.ry, ptr %i.rz, align 8, !tbaa !33
  %.val241 = load i64, ptr %i.lz, align 4
  %.val6.val.i323 = load i32, ptr %i.rg, align 4, !tbaa !20
  %.val7.val.i325 = load i32, ptr %i.rh, align 4, !tbaa !20
  %i.sa = lshr i64 %.val241, 32
  %i.sb = trunc nuw i64 %i.sa to i32
  %i.sc = and i32 %i.sb, 536870911
  %i.sd = sub i32 %.val6.val.i323, %.val7.val.i325
  %i.se = add i32 %i.sd, %i.sc
  %i.sf = sext i32 %i.se to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %.val5.val.i321, i64 %i.sf
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !33
  %i.si = sext i32 %i.sh to i64
  %i.sj = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.si
  %.val248 = load i64, ptr %i.sj, align 4
  %i.sk = trunc i64 %.val248 to i32
  %i.sl = lshr i32 %i.sk, 28
  %i.sm = and i32 %i.sl, 2
  %i.sn = and i32 %i.rf, 1021
  %i.so = or disjoint i32 %i.sm, %i.sn
  store i32 %i.so, ptr %i.mh, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cp, %bb.cq, %bb.cb, %Gia_ObjIsRo.exit, %Gia_ObjIsPi.exit315, %bb.cr, %bb.ch
  %indvars.iv.next384 = add nuw nsw i64 %indvars.iv383, 1 ; 2 uses
  %i.sp = icmp slt i64 %indvars.iv.next384, %i.lr
  br i1 %i.sp, label %bb.ca, label %.critedge4, !llvm.loop !191

.critedge4:                                       ; preds = %bb.ca, %.loopexit, %._crit_edge
  %i.sq = getelementptr i8, ptr %i.ab, i64 72
  %.val240 = load ptr, ptr %i.sq, align 8, !tbaa !82
  %i.sr = getelementptr i8, ptr %.val240, i64 8
  %.val240.val = load ptr, ptr %i.sr, align 8, !tbaa !22
  %.val240.val.val = load i32, ptr %.val240.val, align 4, !tbaa !33
  %i.ss = sext i32 %.val240.val.val to i64
  %i.st = getelementptr inbounds [12 x i8], ptr %.val239.pre, i64 %i.ss
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !100 ; 2 uses
  %.not.i328 = icmp eq i32 %i.sv, 0
  %i.sw = sext i32 %i.sv to i64
  %i.sx = getelementptr inbounds [40 x i8], ptr %i.lp, i64 %i.sw
  %i.sy = select i1 %.not.i328, ptr null, ptr %i.sx
  %i.sz = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.sy, ptr %i.sz, align 8, !tbaa !113
  %.idx = mul nsw i64 %i.lo, 40
  %i.ta = getelementptr inbounds i8, ptr %i.lp, i64 %.idx
  %i.tb = icmp sgt i32 %i.ko, 1
  br i1 %i.tb, label %.lr.ph366, label %._crit_edge367

.lr.ph366:                                        ; preds = %.critedge4
  %.0202363 = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %i.tc = ptrtoint ptr %i.lp to i64
  br label %bb.cs

bb.cs:                                            ; preds = %.lr.ph366, %bb.dd
  %.0202365 = phi ptr [ %.0202363, %.lr.ph366 ], [ %.0202, %bb.dd ] ; 4 uses
  %.pn364 = phi ptr [ %i.lp, %.lr.ph366 ], [ %.0202365, %bb.dd ]
  %i.td = load ptr, ptr %i.be, align 8, !tbaa !108
  %i.te = load i32, ptr %.0202365, align 8, !tbaa !36
  %i.tf = getelementptr i8, ptr %i.td, i64 8
  %.val224 = load ptr, ptr %i.tf, align 8, !tbaa !22
  %i.tg = sext i32 %i.te to i64
  %i.th = getelementptr inbounds [4 x i8], ptr %.val224, i64 %i.tg
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !33
  %i.tj = icmp eq i32 %i.ti, 0
  br i1 %i.tj, label %bb.dd, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.tk = getelementptr inbounds nuw i8, ptr %.pn364, i64 44 ; 2 uses
  %i.tl = load i32, ptr %i.tk, align 4
  %i.tm = or i32 %i.tl, 1
  store i32 %i.tm, ptr %i.tk, align 4
  %i.tn = load ptr, ptr %i.g, align 8, !tbaa !32  ; 6 uses
  %i.to = ptrtoint ptr %.0202365 to i64
  %i.tp = sub i64 %i.to, %i.tc
  %i.tq = sdiv exact i64 %i.tp, 40
  %i.tr = trunc i64 %i.tq to i32
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tn, i64 4 ; 3 uses
  %i.tt = load i32, ptr %i.ts, align 4, !tbaa !20 ; 7 uses
  %i.tu = load i32, ptr %i.tn, align 8, !tbaa !21
  %i.tv = icmp eq i32 %i.tt, %i.tu
  br i1 %i.tv, label %bb.cu, label %Vec_IntPush.exit337

bb.cu:                                            ; preds = %bb.ct
  %i.tw = icmp slt i32 %i.tt, 16
  br i1 %i.tw, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %bb.cu
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tn, i64 8 ; 2 uses
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !22 ; 2 uses
  %.not9.i.i335 = icmp eq ptr %i.ty, null
  br i1 %.not9.i.i335, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.tz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ty, i64 noundef 64) #28
  br label %Vec_IntGrow.exit.i336

bb.cx:                                            ; preds = %bb.cv
  %i.ua = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #27
  br label %Vec_IntGrow.exit.i336

Vec_IntGrow.exit.i336:                            ; preds = %bb.cx, %bb.cw
  %i.ub = phi ptr [ %i.tz, %bb.cw ], [ %i.ua, %bb.cx ]
  store ptr %i.ub, ptr %i.tx, align 8, !tbaa !22
  br label %Vec_IntGrow.exit11.sink.split.i333

bb.cy:                                            ; preds = %bb.cu
  %i.uc = icmp samesign ult i32 %i.tt, 1073741823
  %i.ud = shl nuw nsw i32 %i.tt, 1
  %spec.select.i330 = select i1 %i.uc, i32 %i.ud, i32 2147483647 ; 3 uses
  %.not.i9.i331 = icmp samesign ult i32 %i.tt, %spec.select.i330
  br i1 %.not.i9.i331, label %bb.cz, label %Vec_IntPush.exit337

bb.cz:                                            ; preds = %bb.cy
  %i.ue = getelementptr inbounds nuw i8, ptr %i.tn, i64 8 ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !22 ; 2 uses
  %.not9.i10.i332 = icmp eq ptr %i.uf, null
  %i.ug = zext nneg i32 %spec.select.i330 to i64
  %i.uh = shl nuw nsw i64 %i.ug, 2                ; 2 uses
  br i1 %.not9.i10.i332, label %bb.db, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ui = tail call ptr @realloc(ptr noundef nonnull %i.uf, i64 noundef %i.uh) #28
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.uj = tail call noalias ptr @malloc(i64 noundef %i.uh) #27
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.uk = phi ptr [ %i.ui, %bb.da ], [ %i.uj, %bb.db ]
  store ptr %i.uk, ptr %i.ue, align 8, !tbaa !22
  br label %Vec_IntGrow.exit11.sink.split.i333

Vec_IntGrow.exit11.sink.split.i333:               ; preds = %bb.dc, %Vec_IntGrow.exit.i336
  %spec.select.sink.i334 = phi i32 [ %spec.select.i330, %bb.dc ], [ 16, %Vec_IntGrow.exit.i336 ]
  store i32 %spec.select.sink.i334, ptr %i.tn, align 8, !tbaa !21
  %.pre418 = load i32, ptr %i.ts, align 4, !tbaa !20
  br label %Vec_IntPush.exit337

Vec_IntPush.exit337:                              ; preds = %bb.ct, %bb.cy, %Vec_IntGrow.exit11.sink.split.i333
  %i.ul = phi i32 [ %i.tt, %bb.ct ], [ %i.tt, %bb.cy ], [ %.pre418, %Vec_IntGrow.exit11.sink.split.i333 ] ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.tn, i64 8
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !22
  %i.uo = add nsw i32 %i.ul, 1
  store i32 %i.uo, ptr %i.ts, align 4, !tbaa !20
  %i.up = sext i32 %i.ul to i64
  %i.uq = getelementptr inbounds [4 x i8], ptr %i.un, i64 %i.up
  store i32 %i.tr, ptr %i.uq, align 4, !tbaa !33
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cs, %Vec_IntPush.exit337
  %.0202 = getelementptr inbounds nuw i8, ptr %.0202365, i64 40 ; 2 uses
  %i.ur = icmp ult ptr %.0202, %i.ta
  br i1 %i.ur, label %bb.cs, label %._crit_edge367, !llvm.loop !192

._crit_edge367:                                   ; preds = %bb.dd, %.critedge4
  %i.us = tail call ptr @sat_solver2_new() #29    ; 5 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.us, ptr %i.ut, align 8, !tbaa !61
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !194
  %.not215 = icmp eq i32 %i.uv, 0
  br i1 %.not215, label %bb.df, label %bb.de

end_hunk_0
