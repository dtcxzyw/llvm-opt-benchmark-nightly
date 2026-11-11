Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libregexp?download=true
inline.NumInlined: 313
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@lre_exec:bb.a
  %.610571364.i = phi ptr [ %i.jk, %.thread1361.i ], [ %i.jn, %bb.bi ]
  %i.kc = zext nneg i32 %.1010361365.i to i64
  %i.kd = getelementptr inbounds nuw i8, ptr @lre_ctype_bits, i64 %i.kc
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !21
  %i.kf = and i8 %i.ke, 1
  %i.kg = zext nneg i8 %i.kf to i32
  br label %lre_is_space.exit.i

.thread1355.i:                                    ; preds = %bb.bi, %bb.bh, %bb.bg
  %.1010361360.i = phi i32 [ %i.jp, %bb.bi ], [ %i.jp, %bb.bg ], [ %i.ka, %bb.bh ]
  %.610571359.i = phi ptr [ %i.jn, %bb.bi ], [ %i.jn, %bb.bg ], [ %i.jv, %bb.bh ]
  %i.kh = call i32 @lre_is_space_non_ascii(i32 noundef range(i32 0, 1114112) %.1010361360.i) #20
  br label %lre_is_space.exit.i

lre_is_space.exit.i:                              ; preds = %.thread1355.i, %bb.bj
  %.610571358.i = phi ptr [ %.610571364.i, %bb.bj ], [ %.610571359.i, %.thread1355.i ]
  %.0.i1288.i = phi i32 [ %i.kg, %bb.bj ], [ %i.kh, %.thread1355.i ]
  %.not1220.i = icmp eq i32 %.0.i1288.i, 0
  br i1 %.not1220.i, label %is_line_terminator.exit.i, label %is_line_terminator.exit1283.i.backedge

bb.bk:                                            ; preds = %is_line_terminator.exit1283.i
  %i.ki = icmp eq ptr %.01051.i, %i.k
  br i1 %i.ki, label %is_line_terminator.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  br i1 %i.an, label %.thread1373.i, label %bb.bm

.thread1373.i:                                    ; preds = %bb.bl
  %i.kj = getelementptr inbounds nuw i8, ptr %.01051.i, i64 1
  %i.kk = load i8, ptr %.01051.i, align 1, !tbaa !21
  %i.kl = zext i8 %i.kk to i32
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.km = getelementptr inbounds nuw i8, ptr %.01051.i, i64 2 ; 5 uses
  %i.kn = load i16, ptr %.01051.i, align 2, !tbaa !62 ; 2 uses
  %i.ko = zext i16 %i.kn to i32                   ; 5 uses
  %.mask.i1289.i = and i32 %i.ko, 64512
  %i.kp = icmp eq i32 %.mask.i1289.i, 55296
  %or.cond32.i = select i1 %i.kp, i1 %i.ad, i1 false
  %i.kq = icmp ult ptr %i.km, %i.k
  %or.cond1238.i = select i1 %or.cond32.i, i1 %i.kq, i1 false
  br i1 %or.cond1238.i, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.kr = load i16, ptr %i.km, align 2, !tbaa !62
  %i.ks = zext i16 %i.kr to i32                   ; 2 uses
  %.mask.i1290.i = and i32 %i.ks, 64512
  %i.kt = icmp eq i32 %.mask.i1290.i, 56320
  br i1 %i.kt, label %bb.bo, label %.thread1367.i

bb.bo:                                            ; preds = %bb.bn
  %i.ku = getelementptr inbounds nuw i8, ptr %.01051.i, i64 4
  %i.kv = shl nuw nsw i32 %i.ko, 10
  %i.kw = and i32 %i.kv, 1047552
  %i.kx = add nuw nsw i32 %i.kw, 65536
  %i.ky = and i32 %i.ks, 1023
  %i.kz = or disjoint i32 %i.ky, %i.kx
  br label %.thread1367.i

bb.bp:                                            ; preds = %bb.bm
  %i.la = icmp ult i16 %i.kn, 256
  br i1 %i.la, label %bb.bq, label %.thread1367.i

bb.bq:                                            ; preds = %bb.bp, %.thread1373.i
  %.1210381377.i = phi i32 [ %i.kl, %.thread1373.i ], [ %i.ko, %bb.bp ]
  %.710581376.i = phi ptr [ %i.kj, %.thread1373.i ], [ %i.km, %bb.bp ]
  %i.lb = zext nneg i32 %.1210381377.i to i64
  %i.lc = getelementptr inbounds nuw i8, ptr @lre_ctype_bits, i64 %i.lb
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !21
  %i.le = and i8 %i.ld, 1
  %i.lf = zext nneg i8 %i.le to i32
  br label %lre_is_space.exit1292.i

.thread1367.i:                                    ; preds = %bb.bp, %bb.bo, %bb.bn
  %.1210381372.i = phi i32 [ %i.ko, %bb.bp ], [ %i.ko, %bb.bn ], [ %i.kz, %bb.bo ]
  %.710581371.i = phi ptr [ %i.km, %bb.bp ], [ %i.km, %bb.bn ], [ %i.ku, %bb.bo ]
  %i.lg = call i32 @lre_is_space_non_ascii(i32 noundef range(i32 0, 1114112) %.1210381372.i) #20
  br label %lre_is_space.exit1292.i

lre_is_space.exit1292.i:                          ; preds = %.thread1367.i, %bb.bq
  %.710581370.i = phi ptr [ %.710581376.i, %bb.bq ], [ %.710581371.i, %.thread1367.i ]
  %.0.i1291.i = phi i32 [ %i.lf, %bb.bq ], [ %i.lg, %.thread1367.i ]
  %.not1219.i = icmp eq i32 %.0.i1291.i, 0
  br i1 %.not1219.i, label %is_line_terminator.exit1283.i.backedge, label %is_line_terminator.exit.i

bb.br:                                            ; preds = %is_line_terminator.exit1283.i, %is_line_terminator.exit1283.i
  %i.lh = getelementptr inbounds nuw i8, ptr %.01070.i, i64 2
  %i.li = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.lj = zext i8 %i.li to i32                    ; 2 uses
  %i.lk = load i32, ptr %i.h, align 4, !tbaa !101
  %.not1217.i = icmp ugt i32 %i.lk, %i.lj
  br i1 %.not1217.i, label %bb.bs, label %lre_exec_backtrack.exit

bb.bs:                                            ; preds = %bb.br
  %i.ll = shl nuw nsw i32 %i.lj, 1
  %i.lm = add nsw i32 %i.aq, -19
  %i.ln = add nuw nsw i32 %i.lm, %i.ll
  %i.lo = ptrtoint ptr %.0921.i to i64
  %i.lp = ptrtoint ptr %.0984.i to i64            ; 2 uses
  %i.lq = sub i64 %i.lo, %i.lp
  %i.lr = icmp slt i64 %i.lq, 9
  br i1 %i.lr, label %bb.bt, label %bb.bu, !prof !42

bb.bt:                                            ; preds = %bb.bs
  %i.ls = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.lt = ptrtoint ptr %i.ls to i64               ; 2 uses
  %i.lu = sub i64 %i.lp, %i.lt                    ; 2 uses
  %i.lv = ashr exact i64 %i.lu, 3
  %i.lw = add nsw i64 %i.lv, 2
  %i.lx = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.lw)
  %.not1218.i = icmp eq i32 %i.lx, 0
  br i1 %.not1218.i, label %.thread1378.i, label %lre_exec_backtrack.exit

.thread1378.i:                                    ; preds = %bb.bt
  %i.ly = ptrtoint ptr %.0946.i to i64
  %i.lz = sub i64 %i.ly, %i.lt
  %i.ma = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.mb = load i64, ptr %i.s, align 8, !tbaa !60
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.mb
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.lu
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 %i.lz
  br label %bb.bu

bb.bu:                                            ; preds = %.thread1378.i, %bb.bs
  %.171001.i = phi ptr [ %i.md, %.thread1378.i ], [ %.0984.i, %bb.bs ] ; 3 uses
  %.12958.i = phi ptr [ %i.me, %.thread1378.i ], [ %.0946.i, %bb.bs ]
  %.8929.i = phi ptr [ %i.mc, %.thread1378.i ], [ %.0921.i, %bb.bs ]
  %i.mf = zext nneg i32 %i.ln to i64              ; 2 uses
  store i64 %i.mf, ptr %.171001.i, align 8, !tbaa !21
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.mf ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !20
  %i.mi = getelementptr inbounds nuw i8, ptr %.171001.i, i64 8
  store ptr %i.mh, ptr %i.mi, align 8, !tbaa !21
  %i.mj = getelementptr inbounds nuw i8, ptr %.171001.i, i64 16
  store ptr %.01051.i, ptr %i.mg, align 8, !tbaa !20
  br label %is_line_terminator.exit1283.i.backedge

bb.bv:                                            ; preds = %is_line_terminator.exit1283.i
  %i.mk = load i8, ptr %i.ao, align 1, !tbaa !21  ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.01070.i, i64 2
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !21  ; 2 uses
  %i.mn = zext i8 %i.mm to i32                    ; 3 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %.01070.i, i64 3 ; 2 uses
  %i.mp = load i32, ptr %i.h, align 4, !tbaa !101
  %.not1212.i = icmp ugt i32 %i.mp, %i.mn
  br i1 %.not1212.i, label %bb.bw, label %lre_exec_backtrack.exit

bb.bw:                                            ; preds = %bb.bv
  %i.mq = zext i8 %i.mk to i32
  %i.mr = ptrtoint ptr %.0921.i to i64
  %i.ms = ptrtoint ptr %.0984.i to i64            ; 2 uses
  %i.mt = sub i64 %i.mr, %i.ms
  %i.mu = ashr exact i64 %i.mt, 3
  %i.mv = sub nsw i32 %i.mn, %i.mq
  %i.mw = shl nsw i32 %i.mv, 1
  %i.mx = add nsw i32 %i.mw, 2
  %i.my = zext i32 %i.mx to i64                   ; 2 uses
  %i.mz = icmp slt i64 %i.mu, %i.my
  br i1 %i.mz, label %bb.bx, label %bb.by, !prof !42

bb.bx:                                            ; preds = %bb.bw
  %i.na = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.nb = ptrtoint ptr %i.na to i64               ; 2 uses
  %i.nc = sub i64 %i.ms, %i.nb                    ; 2 uses
  %i.nd = ashr exact i64 %i.nc, 3
  %i.ne = add nsw i64 %i.nd, %i.my
  %i.nf = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.ne)
  %.not1213.i = icmp eq i32 %i.nf, 0
  br i1 %.not1213.i, label %.thread1383.i, label %lre_exec_backtrack.exit

.thread1383.i:                                    ; preds = %bb.bx
  %i.ng = ptrtoint ptr %.0946.i to i64
  %i.nh = sub i64 %i.ng, %i.nb
  %i.ni = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.nj = load i64, ptr %i.s, align 8, !tbaa !60
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %i.ni, i64 %i.nj
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nc
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nh
  br label %bb.by

bb.by:                                            ; preds = %.thread1383.i, %bb.bw
  %.191003.i = phi ptr [ %i.nl, %.thread1383.i ], [ %.0984.i, %bb.bw ] ; 2 uses
  %.14960.i = phi ptr [ %i.nm, %.thread1383.i ], [ %.0946.i, %bb.bw ] ; 2 uses
  %.10931.i = phi ptr [ %i.nk, %.thread1383.i ], [ %.0921.i, %bb.bw ] ; 2 uses
  %.not12141592.i = icmp ugt i8 %i.mk, %i.mm
  br i1 %.not12141592.i, label %is_line_terminator.exit1283.i.backedge, label %.lr.ph1597.preheader.i

.lr.ph1597.preheader.i:                           ; preds = %bb.by
  %i.nn = zext i8 %i.mk to i64
  %i.no = add nuw nsw i32 %i.mn, 1
  %wide.trip.count1654.i = zext nneg i32 %i.no to i64
  br label %.lr.ph1597.i

.lr.ph1597.i:                                     ; preds = %bb.cc, %.lr.ph1597.preheader.i
  %indvars.iv1651.i = phi i64 [ %i.nn, %.lr.ph1597.preheader.i ], [ %indvars.iv.next1652.i, %bb.cc ] ; 2 uses
  %.119321596.i = phi ptr [ %.10931.i, %.lr.ph1597.preheader.i ], [ %.15936.i, %bb.cc ] ; 2 uses
  %.159611595.i = phi ptr [ %.14960.i, %.lr.ph1597.preheader.i ], [ %.19965.i, %bb.cc ] ; 2 uses
  %.2010041594.i = phi ptr [ %.191003.i, %.lr.ph1597.preheader.i ], [ %i.pf, %bb.cc ] ; 2 uses
  %i.np = shl nuw nsw i64 %indvars.iv1651.i, 1    ; 3 uses
  %i.nq = ptrtoint ptr %.119321596.i to i64       ; 2 uses
  %i.nr = ptrtoint ptr %.2010041594.i to i64      ; 2 uses
  %i.ns = sub i64 %i.nq, %i.nr
  %i.nt = icmp slt i64 %i.ns, 9
  br i1 %i.nt, label %bb.bz, label %bb.ca, !prof !42

bb.bz:                                            ; preds = %.lr.ph1597.i
  %i.nu = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.nv = ptrtoint ptr %i.nu to i64               ; 2 uses
  %i.nw = sub i64 %i.nr, %i.nv                    ; 2 uses
  %i.nx = ashr exact i64 %i.nw, 3
  %i.ny = add nsw i64 %i.nx, 2
  %i.nz = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.ny)
  %.not1215.i = icmp eq i32 %i.nz, 0
  br i1 %.not1215.i, label %.thread1388.i, label %lre_exec_backtrack.exit

.thread1388.i:                                    ; preds = %bb.bz
  %i.oa = ptrtoint ptr %.159611595.i to i64
  %i.ob = sub i64 %i.oa, %i.nv
  %i.oc = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.od = load i64, ptr %i.s, align 8, !tbaa !60
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.od ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nw
  %i.og = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.ob
  %.pre.i = ptrtoint ptr %i.oe to i64
  br label %bb.ca

bb.ca:                                            ; preds = %.thread1388.i, %.lr.ph1597.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.thread1388.i ], [ %i.nq, %.lr.ph1597.i ]
  %.221006.i = phi ptr [ %i.of, %.thread1388.i ], [ %.2010041594.i, %.lr.ph1597.i ] ; 3 uses
  %.17963.i = phi ptr [ %i.og, %.thread1388.i ], [ %.159611595.i, %.lr.ph1597.i ] ; 2 uses
  %.13934.i = phi ptr [ %i.oe, %.thread1388.i ], [ %.119321596.i, %.lr.ph1597.i ]
  store i64 %i.np, ptr %.221006.i, align 8, !tbaa !21
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.np ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !20
  %i.oj = getelementptr inbounds nuw i8, ptr %.221006.i, i64 8
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !21
  %i.ok = getelementptr inbounds nuw i8, ptr %.221006.i, i64 16 ; 2 uses
  store ptr null, ptr %i.oh, align 8, !tbaa !20
  %i.ol = or disjoint i64 %i.np, 1                ; 2 uses
  %i.om = ptrtoint ptr %i.ok to i64               ; 2 uses
  %i.on = sub i64 %.pre-phi.i, %i.om
  %i.oo = icmp slt i64 %i.on, 9
  br i1 %i.oo, label %bb.cb, label %bb.cc, !prof !42

bb.cb:                                            ; preds = %bb.ca
  %i.op = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.oq = ptrtoint ptr %i.op to i64               ; 2 uses
  %i.or = sub i64 %i.om, %i.oq                    ; 2 uses
  %i.os = ashr exact i64 %i.or, 3
  %i.ot = add nsw i64 %i.os, 2
  %i.ou = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.ot)
  %.not1216.i = icmp eq i32 %i.ou, 0
  br i1 %.not1216.i, label %.thread1393.i, label %lre_exec_backtrack.exit

.thread1393.i:                                    ; preds = %bb.cb
  %i.ov = ptrtoint ptr %.17963.i to i64
  %i.ow = sub i64 %i.ov, %i.oq
  %i.ox = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.oy = load i64, ptr %i.s, align 8, !tbaa !60
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.or
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.ow
  br label %bb.cc

bb.cc:                                            ; preds = %.thread1393.i, %bb.ca
  %.241008.i = phi ptr [ %i.pa, %.thread1393.i ], [ %i.ok, %bb.ca ] ; 3 uses
  %.19965.i = phi ptr [ %i.pb, %.thread1393.i ], [ %.17963.i, %bb.ca ] ; 2 uses
  %.15936.i = phi ptr [ %i.oz, %.thread1393.i ], [ %.13934.i, %bb.ca ] ; 2 uses
  store i64 %i.ol, ptr %.241008.i, align 8, !tbaa !21
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ol ; 2 uses
  %i.pd = load ptr, ptr %i.pc, align 8, !tbaa !20
  %i.pe = getelementptr inbounds nuw i8, ptr %.241008.i, i64 8
  store ptr %i.pd, ptr %i.pe, align 8, !tbaa !21
  %i.pf = getelementptr inbounds nuw i8, ptr %.241008.i, i64 16 ; 2 uses
  store ptr null, ptr %i.pc, align 8, !tbaa !20
  %indvars.iv.next1652.i = add nuw nsw i64 %indvars.iv1651.i, 1 ; 2 uses
  %exitcond1655.not.i = icmp eq i64 %indvars.iv.next1652.i, %wide.trip.count1654.i
  br i1 %exitcond1655.not.i, label %is_line_terminator.exit1283.i.backedge, label %.lr.ph1597.i, !llvm.loop !94

bb.cd:                                            ; preds = %is_line_terminator.exit1283.i
  %i.pg = load i32, ptr %i.h, align 4, !tbaa !101
  %i.ph = shl nsw i32 %i.pg, 1
  %i.pi = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.pj = zext i8 %i.pi to i32
  %i.pk = add nsw i32 %i.ph, %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %.01070.i, i64 2
  %.val1260.i = load i32, ptr %i.pl, align 1
  %i.pm = getelementptr inbounds nuw i8, ptr %.01070.i, i64 6
  %i.pn = zext i32 %i.pk to i64                   ; 4 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cf, %bb.cd
  %.0906.i = phi ptr [ %.0984.i, %bb.cd ], [ %i.pp, %bb.cf ] ; 2 uses
  %i.po = icmp ugt ptr %.0906.i, %.0946.i
  br i1 %i.po, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.pp = getelementptr inbounds i8, ptr %.0906.i, i64 -16 ; 2 uses
  %i.pq = load i64, ptr %i.pp, align 8, !tbaa !21
  %i.pr = icmp eq i64 %i.pq, %i.pn
  br i1 %i.pr, label %.thread1410.i, label %bb.ce

bb.cg:                                            ; preds = %bb.ce
  %i.ps = ptrtoint ptr %.0921.i to i64
  %i.pt = ptrtoint ptr %.0984.i to i64            ; 2 uses
  %i.pu = sub i64 %i.ps, %i.pt
  %i.pv = icmp slt i64 %i.pu, 9
  br i1 %i.pv, label %bb.ch, label %bb.ci, !prof !42

bb.ch:                                            ; preds = %bb.cg
  %i.pw = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.px = ptrtoint ptr %i.pw to i64               ; 2 uses
  %i.py = sub i64 %i.pt, %i.px                    ; 2 uses
  %i.pz = ashr exact i64 %i.py, 3
  %i.qa = add nsw i64 %i.pz, 2
  %i.qb = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.qa)
  %.not1211.i = icmp eq i32 %i.qb, 0
  br i1 %.not1211.i, label %.thread1405.i, label %lre_exec_backtrack.exit

.thread1405.i:                                    ; preds = %bb.ch
  %i.qc = ptrtoint ptr %.0946.i to i64
  %i.qd = sub i64 %i.qc, %i.px
  %i.qe = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.qf = load i64, ptr %i.s, align 8, !tbaa !60
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qe, i64 %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.py
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qd
  br label %bb.ci

bb.ci:                                            ; preds = %.thread1405.i, %bb.cg
  %.271011.i = phi ptr [ %i.qh, %.thread1405.i ], [ %.0984.i, %bb.cg ] ; 3 uses
  %.22968.i = phi ptr [ %i.qi, %.thread1405.i ], [ %.0946.i, %bb.cg ]
  %.18939.i = phi ptr [ %i.qg, %.thread1405.i ], [ %.0921.i, %bb.cg ]
  store i64 %i.pn, ptr %.271011.i, align 8, !tbaa !21
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.pn
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !20
  %i.ql = getelementptr inbounds nuw i8, ptr %.271011.i, i64 8
  store ptr %i.qk, ptr %i.ql, align 8, !tbaa !21
  %i.qm = getelementptr inbounds nuw i8, ptr %.271011.i, i64 16
  br label %.thread1410.i

.thread1410.i:                                    ; preds = %bb.cf, %bb.ci
  %.281012.i = phi ptr [ %i.qm, %bb.ci ], [ %.0984.i, %bb.cf ]
  %.23969.i = phi ptr [ %.22968.i, %bb.ci ], [ %.0946.i, %bb.cf ]
  %.19940.i = phi ptr [ %.18939.i, %bb.ci ], [ %.0921.i, %bb.cf ]
  %i.qn = zext i32 %.val1260.i to i64
  %i.qo = inttoptr i64 %i.qn to ptr
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.pn
  store ptr %i.qo, ptr %i.qp, align 8, !tbaa !20
  br label %is_line_terminator.exit1283.i.backedge

bb.cj:                                            ; preds = %is_line_terminator.exit1283.i
  %i.qq = load i32, ptr %i.h, align 4, !tbaa !101
  %i.qr = shl nsw i32 %i.qq, 1
  %i.qs = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.qt = zext i8 %i.qs to i32
  %i.qu = add nsw i32 %i.qr, %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %.01070.i, i64 2
  %.val1259.i = load i32, ptr %i.qv, align 1
  %i.qw = getelementptr inbounds nuw i8, ptr %.01070.i, i64 6 ; 2 uses
  %i.qx = zext i32 %i.qu to i64                   ; 3 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.qx ; 3 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !20
  %i.ra = ptrtoint ptr %i.qz to i64
  %i.rb = trunc i64 %i.ra to i32
  %i.rc = add i32 %i.rb, -1                       ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %bb.cj
  %.0905.i = phi ptr [ %.0984.i, %bb.cj ], [ %i.re, %bb.cl ] ; 2 uses
  %i.rd = icmp ugt ptr %.0905.i, %.0946.i
  br i1 %i.rd, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.re = getelementptr inbounds i8, ptr %.0905.i, i64 -16 ; 2 uses
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !21
  %i.rg = icmp eq i64 %i.rf, %i.qx
  br i1 %i.rg, label %.loopexit1555.i, label %bb.ck

bb.cm:                                            ; preds = %bb.ck
  %i.rh = ptrtoint ptr %.0921.i to i64
  %i.ri = ptrtoint ptr %.0984.i to i64            ; 2 uses
  %i.rj = sub i64 %i.rh, %i.ri
  %i.rk = icmp slt i64 %i.rj, 9
  br i1 %i.rk, label %bb.cn, label %bb.co, !prof !42

bb.cn:                                            ; preds = %bb.cm
  %i.rl = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.rm = ptrtoint ptr %i.rl to i64               ; 2 uses
  %i.rn = sub i64 %i.ri, %i.rm                    ; 2 uses
  %i.ro = ashr exact i64 %i.rn, 3
  %i.rp = add nsw i64 %i.ro, 2
  %i.rq = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.rp)
  %.not1208.i = icmp eq i32 %i.rq, 0
  br i1 %.not1208.i, label %.thread1416.i, label %lre_exec_backtrack.exit

.thread1416.i:                                    ; preds = %bb.cn
  %i.rr = ptrtoint ptr %.0946.i to i64
  %i.rs = sub i64 %i.rr, %i.rm
  %i.rt = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.ru = load i64, ptr %i.s, align 8, !tbaa !60
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rn
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rs
  br label %bb.co

bb.co:                                            ; preds = %.thread1416.i, %bb.cm
  %.311015.i = phi ptr [ %i.rw, %.thread1416.i ], [ %.0984.i, %bb.cm ] ; 3 uses
  %.26972.i = phi ptr [ %i.rx, %.thread1416.i ], [ %.0946.i, %bb.cm ]
  %.22943.i = phi ptr [ %i.rv, %.thread1416.i ], [ %.0921.i, %bb.cm ]
  store i64 %i.qx, ptr %.311015.i, align 8, !tbaa !21
  %i.ry = load ptr, ptr %i.qy, align 8, !tbaa !20
  %i.rz = getelementptr inbounds nuw i8, ptr %.311015.i, i64 8
  store ptr %i.ry, ptr %i.rz, align 8, !tbaa !21
  %i.sa = getelementptr inbounds nuw i8, ptr %.311015.i, i64 16
  br label %.loopexit1555.i

.loopexit1555.i:                                  ; preds = %bb.cl, %bb.co
  %.321016.i = phi ptr [ %i.sa, %bb.co ], [ %.0984.i, %bb.cl ] ; 3 uses
  %.27973.i = phi ptr [ %.26972.i, %bb.co ], [ %.0946.i, %bb.cl ] ; 3 uses
  %.23944.i = phi ptr [ %.22943.i, %bb.co ], [ %.0921.i, %bb.cl ] ; 3 uses
  %i.sb = zext i32 %i.rc to i64
  %i.sc = inttoptr i64 %i.sb to ptr
  store ptr %i.sc, ptr %i.qy, align 8, !tbaa !20
  %.not1209.i = icmp eq i32 %i.rc, 0
  br i1 %.not1209.i, label %is_line_terminator.exit1283.i.backedge, label %bb.cp

bb.cp:                                            ; preds = %.loopexit1555.i
  %i.sd = sext i32 %.val1259.i to i64
  %i.se = getelementptr inbounds i8, ptr %i.qw, i64 %i.sd ; 2 uses
  %i.sf = load i32, ptr %i.o, align 4, !tbaa !105 ; 2 uses
  %i.sg = add nsw i32 %i.sf, -1
  store i32 %i.sg, ptr %i.o, align 4, !tbaa !105
  %i.sh = icmp slt i32 %i.sf, 2
  br i1 %i.sh, label %bb.cq, label %is_line_terminator.exit1283.i.backedge, !prof !42

bb.cq:                                            ; preds = %bb.cp
  store i32 10000, ptr %i.o, align 4, !tbaa !105
  %i.si = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.sj = call i32 @lre_check_timeout(ptr noundef %i.si) #20
  %.not.i1294.i = icmp eq i32 %i.sj, 0
end_hunk_0
