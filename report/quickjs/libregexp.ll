Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libregexp?download=true
inline.NumInlined: 313
inline.NumDeleted: 50
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 11
begin_hunk_0_@lre_exec:bb.a
bb.bm:                                            ; preds = %bb.bl
  %i.jy = getelementptr inbounds nuw i8, ptr %.01051.i, i64 2 ; 5 uses
  %i.jz = load i16, ptr %.01051.i, align 2, !tbaa !62 ; 2 uses
  %i.ka = zext i16 %i.jz to i32                   ; 5 uses
  %.mask.i1289.i = and i32 %i.ka, 64512
  %i.kb = icmp eq i32 %.mask.i1289.i, 55296
  %or.cond32.i = select i1 %i.kb, i1 %i.ad, i1 false
  %i.kc = icmp ult ptr %i.jy, %i.k
  %or.cond1238.i = select i1 %or.cond32.i, i1 %i.kc, i1 false
  br i1 %or.cond1238.i, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.kd = load i16, ptr %i.jy, align 2, !tbaa !62
  %i.ke = zext i16 %i.kd to i32                   ; 2 uses
  %.mask.i1290.i = and i32 %i.ke, 64512
  %i.kf = icmp eq i32 %.mask.i1290.i, 56320
  br i1 %i.kf, label %bb.bo, label %.thread1367.i

bb.bo:                                            ; preds = %bb.bn
  %i.kg = getelementptr inbounds nuw i8, ptr %.01051.i, i64 4
  %i.kh = shl nuw nsw i32 %i.ka, 10
  %i.ki = and i32 %i.kh, 1047552
  %i.kj = add nuw nsw i32 %i.ki, 65536
  %i.kk = and i32 %i.ke, 1023
  %i.kl = or disjoint i32 %i.kk, %i.kj
  br label %.thread1367.i

bb.bp:                                            ; preds = %bb.bm
  %i.km = icmp ult i16 %i.jz, 256
  br i1 %i.km, label %bb.bq, label %.thread1367.i

bb.bq:                                            ; preds = %bb.bp, %.thread1373.i
  %.1210381377.i = phi i32 [ %i.jx, %.thread1373.i ], [ %i.ka, %bb.bp ]
  %.710581376.i = phi ptr [ %i.jv, %.thread1373.i ], [ %i.jy, %bb.bp ]
  %i.kn = zext nneg i32 %.1210381377.i to i64
  %i.ko = getelementptr inbounds nuw i8, ptr @lre_ctype_bits, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !21
  %i.kq = and i8 %i.kp, 1
  %i.kr = zext nneg i8 %i.kq to i32
  br label %lre_is_space.exit1292.i

.thread1367.i:                                    ; preds = %bb.bp, %bb.bo, %bb.bn
  %.1210381372.i = phi i32 [ %i.ka, %bb.bp ], [ %i.ka, %bb.bn ], [ %i.kl, %bb.bo ]
  %.710581371.i = phi ptr [ %i.jy, %bb.bp ], [ %i.jy, %bb.bn ], [ %i.kg, %bb.bo ]
  %i.ks = call i32 @lre_is_space_non_ascii(i32 noundef range(i32 0, 1114112) %.1210381372.i) #20
  br label %lre_is_space.exit1292.i

lre_is_space.exit1292.i:                          ; preds = %.thread1367.i, %bb.bq
  %.710581370.i = phi ptr [ %.710581376.i, %bb.bq ], [ %.710581371.i, %.thread1367.i ]
  %.0.i1291.i = phi i32 [ %i.kr, %bb.bq ], [ %i.ks, %.thread1367.i ]
  %.not1219.i = icmp eq i32 %.0.i1291.i, 0
  br i1 %.not1219.i, label %is_line_terminator.exit1283.i.backedge, label %is_line_terminator.exit.i

bb.br:                                            ; preds = %is_line_terminator.exit1283.i, %is_line_terminator.exit1283.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.01070.i, i64 2
  %i.ku = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.kv = zext i8 %i.ku to i32                    ; 2 uses
  %i.kw = load i32, ptr %i.h, align 4, !tbaa !100
  %.not1217.i = icmp ugt i32 %i.kw, %i.kv
  br i1 %.not1217.i, label %bb.bs, label %lre_exec_backtrack.exit

bb.bs:                                            ; preds = %bb.br
  %i.kx = shl nuw nsw i32 %i.kv, 1
  %i.ky = add nsw i32 %i.aq, -19
  %i.kz = add nuw nsw i32 %i.ky, %i.kx
  %i.la = ptrtoint ptr %.0921.i to i64
  %i.lb = ptrtoint ptr %.0984.i to i64            ; 2 uses
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = icmp slt i64 %i.lc, 9
  br i1 %i.ld, label %bb.bt, label %bb.bu, !prof !42

bb.bt:                                            ; preds = %bb.bs
  %i.le = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.lf = ptrtoint ptr %i.le to i64               ; 2 uses
  %i.lg = sub i64 %i.lb, %i.lf                    ; 2 uses
  %i.lh = ashr exact i64 %i.lg, 3
  %i.li = add nsw i64 %i.lh, 2
  %i.lj = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.li)
  %.not1218.i = icmp eq i32 %i.lj, 0
  br i1 %.not1218.i, label %.thread1378.i, label %lre_exec_backtrack.exit

.thread1378.i:                                    ; preds = %bb.bt
  %i.lk = ptrtoint ptr %.0946.i to i64
  %i.ll = sub i64 %i.lk, %i.lf
  %i.lm = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.ln = load i64, ptr %i.s, align 8, !tbaa !60
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.ln
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lg
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ll
  br label %bb.bu

bb.bu:                                            ; preds = %.thread1378.i, %bb.bs
  %.171001.i = phi ptr [ %i.lp, %.thread1378.i ], [ %.0984.i, %bb.bs ] ; 3 uses
  %.12958.i = phi ptr [ %i.lq, %.thread1378.i ], [ %.0946.i, %bb.bs ]
  %.8929.i = phi ptr [ %i.lo, %.thread1378.i ], [ %.0921.i, %bb.bs ]
  %i.lr = zext nneg i32 %i.kz to i64              ; 2 uses
  store i64 %i.lr, ptr %.171001.i, align 8, !tbaa !21
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.lr ; 2 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !20
  %i.lu = getelementptr inbounds nuw i8, ptr %.171001.i, i64 8
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !21
  %i.lv = getelementptr inbounds nuw i8, ptr %.171001.i, i64 16
  store ptr %.01051.i, ptr %i.ls, align 8, !tbaa !20
  br label %is_line_terminator.exit1283.i.backedge

bb.bv:                                            ; preds = %is_line_terminator.exit1283.i
  %i.lw = load i8, ptr %i.ao, align 1, !tbaa !21  ; 3 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %.01070.i, i64 2
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !21  ; 2 uses
  %i.lz = zext i8 %i.ly to i32                    ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.01070.i, i64 3 ; 2 uses
  %i.mb = load i32, ptr %i.h, align 4, !tbaa !100
  %.not1212.i = icmp ugt i32 %i.mb, %i.lz
  br i1 %.not1212.i, label %bb.bw, label %lre_exec_backtrack.exit

bb.bw:                                            ; preds = %bb.bv
  %i.mc = zext i8 %i.lw to i32
  %i.md = ptrtoint ptr %.0921.i to i64
  %i.me = ptrtoint ptr %.0984.i to i64            ; 2 uses
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = ashr exact i64 %i.mf, 3
  %i.mh = sub nsw i32 %i.lz, %i.mc
  %i.mi = shl nsw i32 %i.mh, 1
  %i.mj = add nsw i32 %i.mi, 2
  %i.mk = zext i32 %i.mj to i64                   ; 2 uses
  %i.ml = icmp slt i64 %i.mg, %i.mk
  br i1 %i.ml, label %bb.bx, label %bb.by, !prof !42

bb.bx:                                            ; preds = %bb.bw
  %i.mm = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.mn = ptrtoint ptr %i.mm to i64               ; 2 uses
  %i.mo = sub i64 %i.me, %i.mn                    ; 2 uses
  %i.mp = ashr exact i64 %i.mo, 3
  %i.mq = add nsw i64 %i.mp, %i.mk
  %i.mr = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.mq)
  %.not1213.i = icmp eq i32 %i.mr, 0
  br i1 %.not1213.i, label %.thread1383.i, label %lre_exec_backtrack.exit

.thread1383.i:                                    ; preds = %bb.bx
  %i.ms = ptrtoint ptr %.0946.i to i64
  %i.mt = sub i64 %i.ms, %i.mn
  %i.mu = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.mv = load i64, ptr %i.s, align 8, !tbaa !60
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mu, i64 %i.mv
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mo
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 %i.mt
  br label %bb.by

bb.by:                                            ; preds = %.thread1383.i, %bb.bw
  %.191003.i = phi ptr [ %i.mx, %.thread1383.i ], [ %.0984.i, %bb.bw ] ; 2 uses
  %.14960.i = phi ptr [ %i.my, %.thread1383.i ], [ %.0946.i, %bb.bw ] ; 2 uses
  %.10931.i = phi ptr [ %i.mw, %.thread1383.i ], [ %.0921.i, %bb.bw ] ; 2 uses
  %.not12141592.i = icmp ugt i8 %i.lw, %i.ly
  br i1 %.not12141592.i, label %is_line_terminator.exit1283.i.backedge, label %.lr.ph1597.preheader.i

.lr.ph1597.preheader.i:                           ; preds = %bb.by
  %i.mz = zext i8 %i.lw to i64
  %i.na = add nuw nsw i32 %i.lz, 1
  %wide.trip.count1654.i = zext nneg i32 %i.na to i64
  br label %.lr.ph1597.i

.lr.ph1597.i:                                     ; preds = %bb.cc, %.lr.ph1597.preheader.i
  %indvars.iv1651.i = phi i64 [ %i.mz, %.lr.ph1597.preheader.i ], [ %indvars.iv.next1652.i, %bb.cc ] ; 2 uses
  %.119321596.i = phi ptr [ %.10931.i, %.lr.ph1597.preheader.i ], [ %.15936.i, %bb.cc ] ; 2 uses
  %.159611595.i = phi ptr [ %.14960.i, %.lr.ph1597.preheader.i ], [ %.19965.i, %bb.cc ] ; 2 uses
  %.2010041594.i = phi ptr [ %.191003.i, %.lr.ph1597.preheader.i ], [ %i.oq, %bb.cc ] ; 2 uses
  %i.nb = shl nuw nsw i64 %indvars.iv1651.i, 1    ; 3 uses
  %i.nc = ptrtoint ptr %.119321596.i to i64       ; 2 uses
  %i.nd = ptrtoint ptr %.2010041594.i to i64      ; 2 uses
  %i.ne = sub i64 %i.nc, %i.nd
  %i.nf = icmp slt i64 %i.ne, 9
  br i1 %i.nf, label %bb.bz, label %bb.ca, !prof !42

bb.bz:                                            ; preds = %.lr.ph1597.i
  %i.ng = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.nh = ptrtoint ptr %i.ng to i64               ; 2 uses
  %i.ni = sub i64 %i.nd, %i.nh                    ; 2 uses
  %i.nj = ashr exact i64 %i.ni, 3
  %i.nk = add nsw i64 %i.nj, 2
  %i.nl = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.nk)
  %.not1215.i = icmp eq i32 %i.nl, 0
  br i1 %.not1215.i, label %.thread1388.i, label %lre_exec_backtrack.exit

.thread1388.i:                                    ; preds = %bb.bz
  %i.nm = ptrtoint ptr %.159611595.i to i64
  %i.nn = sub i64 %i.nm, %i.nh
  %i.no = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.np = load i64, ptr %i.s, align 8, !tbaa !60
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %i.np ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.ni
  %i.ns = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nn
  %.pre.i = ptrtoint ptr %i.nq to i64
  br label %bb.ca

bb.ca:                                            ; preds = %.thread1388.i, %.lr.ph1597.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.thread1388.i ], [ %i.nc, %.lr.ph1597.i ]
  %.221006.i = phi ptr [ %i.nr, %.thread1388.i ], [ %.2010041594.i, %.lr.ph1597.i ] ; 3 uses
  %.17963.i = phi ptr [ %i.ns, %.thread1388.i ], [ %.159611595.i, %.lr.ph1597.i ] ; 2 uses
  %.13934.i = phi ptr [ %i.nq, %.thread1388.i ], [ %.119321596.i, %.lr.ph1597.i ]
  store i64 %i.nb, ptr %.221006.i, align 8, !tbaa !21
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.nb ; 2 uses
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !20
  %i.nv = getelementptr inbounds nuw i8, ptr %.221006.i, i64 8
  store ptr %i.nu, ptr %i.nv, align 8, !tbaa !21
  %i.nw = getelementptr inbounds nuw i8, ptr %.221006.i, i64 16 ; 2 uses
  store ptr null, ptr %i.nt, align 8, !tbaa !20
  %i.nx = or disjoint i64 %i.nb, 1                ; 2 uses
  %i.ny = ptrtoint ptr %i.nw to i64               ; 2 uses
  %i.nz = sub i64 %.pre-phi.i, %i.ny
  %i.oa = icmp slt i64 %i.nz, 9
  br i1 %i.oa, label %bb.cb, label %bb.cc, !prof !42

bb.cb:                                            ; preds = %bb.ca
  %i.ob = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.oc = ptrtoint ptr %i.ob to i64               ; 2 uses
  %i.od = sub i64 %i.ny, %i.oc                    ; 2 uses
  %i.oe = ashr exact i64 %i.od, 3
  %i.of = add nsw i64 %i.oe, 2
  %i.og = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.of)
  %.not1216.i = icmp eq i32 %i.og, 0
  br i1 %.not1216.i, label %.thread1393.i, label %lre_exec_backtrack.exit

.thread1393.i:                                    ; preds = %bb.cb
  %i.oh = ptrtoint ptr %.17963.i to i64
  %i.oi = sub i64 %i.oh, %i.oc
  %i.oj = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.ok = load i64, ptr %i.s, align 8, !tbaa !60
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.oj, i64 %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.od
  %i.on = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.oi
  br label %bb.cc

bb.cc:                                            ; preds = %.thread1393.i, %bb.ca
  %.241008.i = phi ptr [ %i.om, %.thread1393.i ], [ %i.nw, %bb.ca ] ; 3 uses
  %.19965.i = phi ptr [ %i.on, %.thread1393.i ], [ %.17963.i, %bb.ca ] ; 2 uses
  %.15936.i = phi ptr [ %i.ol, %.thread1393.i ], [ %.13934.i, %bb.ca ] ; 2 uses
  store i64 %i.nx, ptr %.241008.i, align 8, !tbaa !21
  %8 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.nx ; 2 uses
  %i.oo = load ptr, ptr %8, align 8, !tbaa !20
  %i.op = getelementptr inbounds nuw i8, ptr %.241008.i, i64 8
  store ptr %i.oo, ptr %i.op, align 8, !tbaa !21
  %i.oq = getelementptr inbounds nuw i8, ptr %.241008.i, i64 16 ; 2 uses
  store ptr null, ptr %8, align 8, !tbaa !20
  %indvars.iv.next1652.i = add nuw nsw i64 %indvars.iv1651.i, 1 ; 2 uses
  %exitcond1655.not.i = icmp eq i64 %indvars.iv.next1652.i, %wide.trip.count1654.i
  br i1 %exitcond1655.not.i, label %is_line_terminator.exit1283.i.backedge, label %.lr.ph1597.i, !llvm.loop !93

bb.cd:                                            ; preds = %is_line_terminator.exit1283.i
  %i.or = load i32, ptr %i.h, align 4, !tbaa !100
  %i.os = shl nsw i32 %i.or, 1
  %i.ot = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.ou = zext i8 %i.ot to i32
  %i.ov = add nsw i32 %i.os, %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %.01070.i, i64 2
  %.val1260.i = load i32, ptr %i.ow, align 1
  %i.ox = getelementptr inbounds nuw i8, ptr %.01070.i, i64 6
  %i.oy = zext i32 %i.ov to i64                   ; 4 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cf, %bb.cd
  %.0906.i = phi ptr [ %.0984.i, %bb.cd ], [ %i.pa, %bb.cf ] ; 2 uses
  %i.oz = icmp ugt ptr %.0906.i, %.0946.i
  br i1 %i.oz, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.pa = getelementptr inbounds i8, ptr %.0906.i, i64 -16 ; 2 uses
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !21
  %i.pc = icmp eq i64 %i.pb, %i.oy
  br i1 %i.pc, label %.thread1410.i, label %bb.ce

bb.cg:                                            ; preds = %bb.ce
  %i.pd = ptrtoint ptr %.0921.i to i64
  %i.pe = ptrtoint ptr %.0984.i to i64            ; 2 uses
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = icmp slt i64 %i.pf, 9
  br i1 %i.pg, label %bb.ch, label %bb.ci, !prof !42

bb.ch:                                            ; preds = %bb.cg
  %i.ph = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.pi = ptrtoint ptr %i.ph to i64               ; 2 uses
  %i.pj = sub i64 %i.pe, %i.pi                    ; 2 uses
  %i.pk = ashr exact i64 %i.pj, 3
  %i.pl = add nsw i64 %i.pk, 2
  %i.pm = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.pl)
  %.not1211.i = icmp eq i32 %i.pm, 0
  br i1 %.not1211.i, label %.thread1405.i, label %lre_exec_backtrack.exit

.thread1405.i:                                    ; preds = %bb.ch
  %i.pn = ptrtoint ptr %.0946.i to i64
  %i.po = sub i64 %i.pn, %i.pi
  %i.pp = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.pq = load i64, ptr %i.s, align 8, !tbaa !60
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.pq
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.pj
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pp, i64 %i.po
  br label %bb.ci

bb.ci:                                            ; preds = %.thread1405.i, %bb.cg
  %.271011.i = phi ptr [ %i.ps, %.thread1405.i ], [ %.0984.i, %bb.cg ] ; 3 uses
  %.22968.i = phi ptr [ %i.pt, %.thread1405.i ], [ %.0946.i, %bb.cg ]
  %.18939.i = phi ptr [ %i.pr, %.thread1405.i ], [ %.0921.i, %bb.cg ]
  store i64 %i.oy, ptr %.271011.i, align 8, !tbaa !21
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.oy
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !20
  %i.pw = getelementptr inbounds nuw i8, ptr %.271011.i, i64 8
  store ptr %i.pv, ptr %i.pw, align 8, !tbaa !21
  %i.px = getelementptr inbounds nuw i8, ptr %.271011.i, i64 16
  br label %.thread1410.i

.thread1410.i:                                    ; preds = %bb.cf, %bb.ci
  %.281012.i = phi ptr [ %i.px, %bb.ci ], [ %.0984.i, %bb.cf ]
  %.23969.i = phi ptr [ %.22968.i, %bb.ci ], [ %.0946.i, %bb.cf ]
  %.19940.i = phi ptr [ %.18939.i, %bb.ci ], [ %.0921.i, %bb.cf ]
  %i.py = zext i32 %.val1260.i to i64
  %i.pz = inttoptr i64 %i.py to ptr
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.oy
  store ptr %i.pz, ptr %i.qa, align 8, !tbaa !20
  br label %is_line_terminator.exit1283.i.backedge

bb.cj:                                            ; preds = %is_line_terminator.exit1283.i
  %i.qb = load i32, ptr %i.h, align 4, !tbaa !100
  %i.qc = shl nsw i32 %i.qb, 1
  %i.qd = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.qe = zext i8 %i.qd to i32
  %i.qf = add nsw i32 %i.qc, %i.qe
  %i.qg = getelementptr inbounds nuw i8, ptr %.01070.i, i64 2
  %.val1259.i = load i32, ptr %i.qg, align 1
  %i.qh = getelementptr inbounds nuw i8, ptr %.01070.i, i64 6 ; 2 uses
  %i.qi = zext i32 %i.qf to i64                   ; 3 uses
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.qi ; 3 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !20
  %i.ql = ptrtoint ptr %i.qk to i64
  %i.qm = trunc i64 %i.ql to i32
  %i.qn = add i32 %i.qm, -1                       ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cl, %bb.cj
  %.0905.i = phi ptr [ %.0984.i, %bb.cj ], [ %i.qp, %bb.cl ] ; 2 uses
  %i.qo = icmp ugt ptr %.0905.i, %.0946.i
  br i1 %i.qo, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.qp = getelementptr inbounds i8, ptr %.0905.i, i64 -16 ; 2 uses
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !21
  %i.qr = icmp eq i64 %i.qq, %i.qi
  br i1 %i.qr, label %.loopexit1555.i, label %bb.ck

bb.cm:                                            ; preds = %bb.ck
  %i.qs = ptrtoint ptr %.0921.i to i64
  %i.qt = ptrtoint ptr %.0984.i to i64            ; 2 uses
  %i.qu = sub i64 %i.qs, %i.qt
  %i.qv = icmp slt i64 %i.qu, 9
  br i1 %i.qv, label %bb.cn, label %bb.co, !prof !42

bb.cn:                                            ; preds = %bb.cm
  %i.qw = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.qx = ptrtoint ptr %i.qw to i64               ; 2 uses
  %i.qy = sub i64 %i.qt, %i.qx                    ; 2 uses
  %i.qz = ashr exact i64 %i.qy, 3
  %i.ra = add nsw i64 %i.qz, 2
  %i.rb = call fastcc i32 @stack_realloc(ptr noundef nonnull %7, i64 noundef %i.ra)
  %.not1208.i = icmp eq i32 %i.rb, 0
  br i1 %.not1208.i, label %.thread1416.i, label %lre_exec_backtrack.exit

.thread1416.i:                                    ; preds = %bb.cn
  %i.rc = ptrtoint ptr %.0946.i to i64
  %i.rd = sub i64 %i.rc, %i.qx
  %i.re = load ptr, ptr %i.r, align 8, !tbaa !59  ; 3 uses
  %i.rf = load i64, ptr %i.s, align 8, !tbaa !60
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %i.rf
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.qy
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 %i.rd
  br label %bb.co

bb.co:                                            ; preds = %.thread1416.i, %bb.cm
  %.311015.i = phi ptr [ %i.rh, %.thread1416.i ], [ %.0984.i, %bb.cm ] ; 3 uses
  %.26972.i = phi ptr [ %i.ri, %.thread1416.i ], [ %.0946.i, %bb.cm ]
  %.22943.i = phi ptr [ %i.rg, %.thread1416.i ], [ %.0921.i, %bb.cm ]
  store i64 %i.qi, ptr %.311015.i, align 8, !tbaa !21
  %i.rj = load ptr, ptr %i.qj, align 8, !tbaa !20
  %i.rk = getelementptr inbounds nuw i8, ptr %.311015.i, i64 8
  store ptr %i.rj, ptr %i.rk, align 8, !tbaa !21
  %i.rl = getelementptr inbounds nuw i8, ptr %.311015.i, i64 16
  br label %.loopexit1555.i

.loopexit1555.i:                                  ; preds = %bb.cl, %bb.co
  %.321016.i = phi ptr [ %i.rl, %bb.co ], [ %.0984.i, %bb.cl ] ; 3 uses
  %.27973.i = phi ptr [ %.26972.i, %bb.co ], [ %.0946.i, %bb.cl ] ; 3 uses
  %.23944.i = phi ptr [ %.22943.i, %bb.co ], [ %.0921.i, %bb.cl ] ; 3 uses
  %i.rm = zext i32 %i.qn to i64
  %i.rn = inttoptr i64 %i.rm to ptr
  store ptr %i.rn, ptr %i.qj, align 8, !tbaa !20
  %.not1209.i = icmp eq i32 %i.qn, 0
  br i1 %.not1209.i, label %is_line_terminator.exit1283.i.backedge, label %bb.cp

bb.cp:                                            ; preds = %.loopexit1555.i
  %i.ro = sext i32 %.val1259.i to i64
  %i.rp = getelementptr inbounds i8, ptr %i.qh, i64 %i.ro ; 2 uses
  %i.rq = load i32, ptr %i.o, align 4, !tbaa !104 ; 2 uses
  %i.rr = add nsw i32 %i.rq, -1
  store i32 %i.rr, ptr %i.o, align 4, !tbaa !104
  %i.rs = icmp slt i32 %i.rq, 2
  br i1 %i.rs, label %bb.cq, label %is_line_terminator.exit1283.i.backedge, !prof !42

bb.cq:                                            ; preds = %bb.cp
  store i32 10000, ptr %i.o, align 4, !tbaa !104
  %i.rt = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.ru = call i32 @lre_check_timeout(ptr noundef %i.rt) #20
  %.not.i1294.i = icmp eq i32 %i.ru, 0
  br i1 %.not.i1294.i, label %is_line_terminator.exit1283.i.backedge, label %lre_exec_backtrack.exit

bb.cr:                                            ; preds = %is_line_terminator.exit1283.i, %is_line_terminator.exit1283.i, %is_line_terminator.exit1283.i, %is_line_terminator.exit1283.i
  %i.rv = load i32, ptr %i.h, align 4, !tbaa !100
  %i.rw = shl nsw i32 %i.rv, 1
  %i.rx = load i8, ptr %i.ao, align 1, !tbaa !21
  %i.ry = zext i8 %i.rx to i32
  %i.rz = add nsw i32 %i.rw, %i.ry                ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.01070.i, i64 2
  %.val1258.i = load i32, ptr %i.sa, align 1      ; 2 uses
  %i.sb = getelementptr inbounds nuw i8, ptr %.01070.i, i64 6
  %.val1257.i = load i32, ptr %i.sb, align 1      ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.01070.i, i64 10 ; 5 uses
  %i.sd = zext i32 %i.rz to i64                   ; 3 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.sd ; 3 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !20
  %i.sg = ptrtoint ptr %i.sf to i64
  %i.sh = trunc i64 %i.sg to i32
  %i.si = add i32 %i.sh, -1                       ; 4 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.ct, %bb.cr
  %.0903.i = phi ptr [ %.0984.i, %bb.cr ], [ %i.sk, %bb.ct ] ; 2 uses
  %i.sj = icmp ugt ptr %.0903.i, %.0946.i
  br i1 %i.sj, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.sk = getelementptr inbounds i8, ptr %.0903.i, i64 -16 ; 2 uses
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !21
end_hunk_0
begin_hunk_1_@get_class_atom:bb.a
  ret i32 %.066
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @re_emit_string_list(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca [50 x %struct.anon.0], align 16     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !73   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call fastcc i32 @re_emit_range(ptr noundef %0, ptr noundef %1)
  %.not90 = icmp eq i32 %i.d, 0
  br i1 %.not90, label %bb.by, label %bb.ca

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26
  %i.g = zext i32 %i.b to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  %i.i = tail call ptr @lre_realloc(ptr noundef %i.f, ptr noundef null, i64 noundef %i.h) #20 ; 7 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %.preheader125

.preheader125:                                    ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.k = load i32, ptr %i.j, align 4, !tbaa !68   ; 2 uses
  %.not169 = icmp eq i32 %i.k, 0
  br i1 %.not169, label %._crit_edge153, label %.lr.ph152

.lr.ph152:                                        ; preds = %.preheader125
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69
  %wide.trip.count = zext i32 %i.k to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @re_parse_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.40)
  br label %bb.ca

bb.e:                                             ; preds = %.lr.ph152, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %.071151 = phi i8 [ 0, %.lr.ph152 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.072150 = phi i32 [ 0, %.lr.ph152 ], [ %.173.lcssa, %._crit_edge ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %.083143 = load ptr, ptr %i.n, align 8, !tbaa !71 ; 2 uses
  %.not89144 = icmp eq ptr %.083143, null
  br i1 %.not89144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.083147 = phi ptr [ %.083, %bb.g ], [ %.083143, %bb.e ] ; 3 uses
  %.1146 = phi i8 [ %.2, %bb.g ], [ %.071151, %bb.e ]
  %.173145 = phi i32 [ %.274, %bb.g ], [ %.072150, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.083147, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !45
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = add nsw i32 %.173145, 1
  %i.s = sext i32 %.173145 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.s
  store ptr %.083147, ptr %i.t, align 8, !tbaa !71
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %.274 = phi i32 [ %i.r, %bb.f ], [ %.173145, %.lr.ph ] ; 2 uses
  %.2 = phi i8 [ %.1146, %bb.f ], [ 1, %.lr.ph ]  ; 2 uses
  %.083 = load ptr, ptr %.083147, align 8, !tbaa !71 ; 2 uses
  %.not89 = icmp eq ptr %.083, null
  br i1 %.not89, label %._crit_edge, label %.lr.ph, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.g, %bb.e
  %.173.lcssa = phi i32 [ %.072150, %bb.e ], [ %.274, %bb.g ] ; 2 uses
  %.1.lcssa = phi i8 [ %.071151, %bb.e ], [ %.2, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge153.loopexit, label %bb.e, !llvm.loop !110

._crit_edge153.loopexit:                          ; preds = %._crit_edge
  %i.u = trunc nuw i8 %.1.lcssa to i1
  br label %._crit_edge153

._crit_edge153:                                   ; preds = %._crit_edge153.loopexit, %.preheader125
  %.072.lcssa = phi i32 [ 0, %.preheader125 ], [ %.173.lcssa, %._crit_edge153.loopexit ] ; 5 uses
  %.071.lcssa = phi i1 [ false, %.preheader125 ], [ %i.u, %._crit_edge153.loopexit ] ; 2 uses
  %i.v = sext i32 %.072.lcssa to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.w = ptrtoint ptr %i.i to i64
  %i.x = and i64 %i.w, 7
  %i.y = or disjoint i64 %i.x, 8                  ; 2 uses
  switch i64 %i.y, label %bb.h [
    i64 14, label %exchange_func.exit.i
    i64 8, label %exchange_func.exit.thread.i
    i64 10, label %exchange_func.exit.i
    i64 12, label %exchange_func.exit210.i
  ]

exchange_func.exit.thread.i:                      ; preds = %._crit_edge153
  br label %exchange_func.exit210.i

bb.h:                                             ; preds = %._crit_edge153
  br label %exchange_func.exit.i

exchange_func.exit.i:                             ; preds = %bb.h, %._crit_edge153, %._crit_edge153
  %.0.i.i = phi ptr [ @exchange_bytes, %bb.h ], [ @exchange_int16s, %._crit_edge153 ], [ @exchange_int16s, %._crit_edge153 ] ; 4 uses
  switch i64 %i.y, label %bb.k [
    i64 14, label %bb.j
    i64 8, label %bb.i
    i64 10, label %bb.j
    i64 12, label %exchange_func.exit210.i
  ]

bb.i:                                             ; preds = %exchange_func.exit.i
  br label %exchange_func.exit210.i

bb.j:                                             ; preds = %exchange_func.exit.i, %exchange_func.exit.i
  br label %exchange_func.exit210.i

bb.k:                                             ; preds = %exchange_func.exit.i
  br label %exchange_func.exit210.i

exchange_func.exit210.i:                          ; preds = %bb.k, %bb.j, %bb.i, %exchange_func.exit.i, %exchange_func.exit.thread.i, %._crit_edge153
  %.0.i104.i = phi ptr [ %.0.i.i, %bb.i ], [ %.0.i.i, %bb.k ], [ %.0.i.i, %exchange_func.exit.i ], [ %.0.i.i, %bb.j ], [ @exchange_one_int64, %exchange_func.exit.thread.i ], [ @exchange_int32s, %._crit_edge153 ] ; 5 uses
  %.0.i209.i = phi ptr [ @exchange_int64s, %bb.i ], [ @exchange_bytes, %bb.k ], [ @exchange_int32s, %exchange_func.exit.i ], [ @exchange_int16s, %bb.j ], [ @exchange_int64s, %exchange_func.exit.thread.i ], [ @exchange_int32s, %._crit_edge153 ] ; 2 uses
  %i.z = icmp ult i32 %.072.lcssa, 2
  br i1 %i.z, label %rqsort.exit, label %bb.l

bb.l:                                             ; preds = %exchange_func.exit210.i
  store ptr %i.i, ptr %2, align 16, !tbaa !127
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.v, ptr %i.aa, align 8, !tbaa !128
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.ab, align 16, !tbaa !129
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.m

.loopexit.i:                                      ; preds = %.critedge5.i.loopexit, %._crit_edge11.i.i, %heapsortx.exit.i, %.preheader.i.i
  %.118910111.i = phi ptr [ %.118910.i, %heapsortx.exit.i ], [ %.118940.i.lcssa, %._crit_edge11.i.i ], [ %.118940.i.lcssa, %.preheader.i.i ], [ %.118910.i, %.critedge5.i.loopexit ] ; 2 uses
  %i.ad = icmp ugt ptr %.118910111.i, %2
  br i1 %i.ad, label %bb.m, label %rqsort.exit, !llvm.loop !111

bb.m:                                             ; preds = %.loopexit.i, %bb.l
  %.018852.i = phi ptr [ %i.ac, %bb.l ], [ %.118910111.i, %.loopexit.i ] ; 3 uses
  %i.ae = getelementptr inbounds i8, ptr %.018852.i, i64 -24 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !127 ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.018852.i, i64 -16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !128 ; 4 uses
  %i.ai = icmp ugt i64 %i.ah, 6
  br i1 %i.ai, label %.lr.ph43.preheader.i, label %heapsortx.exit.i

.lr.ph43.preheader.i:                             ; preds = %bb.m
  %i.aj = getelementptr inbounds i8, ptr %.018852.i, i64 -8
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !129 ; 3 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ak, i32 50)
  %exitcond.i284 = icmp sgt i32 %i.ak, 49
  br i1 %exitcond.i284, label %.lr.ph43.i._crit_edge, label %.lr.ph288

.lr.ph43.i:                                       ; preds = %bb.ah
  %exitcond.i = icmp eq i32 %i.ct, %smax.i
  br i1 %exitcond.i, label %.lr.ph43.i._crit_edge, label %.lr.ph288, !llvm.loop !112

.lr.ph43.i._crit_edge:                            ; preds = %.lr.ph43.i, %.lr.ph43.preheader.i
  %.018641.i.lcssa = phi ptr [ %i.af, %.lr.ph43.preheader.i ], [ %.1187.i, %.lr.ph43.i ] ; 9 uses
  %.118940.i.lcssa = phi ptr [ %i.ae, %.lr.ph43.preheader.i ], [ %.2190.i, %.lr.ph43.i ] ; 2 uses
  %.019139.i.lcssa = phi i64 [ %i.ah, %.lr.ph43.preheader.i ], [ %.1192.i, %.lr.ph43.i ] ; 2 uses
  %i.al = ptrtoint ptr %.018641.i.lcssa to i64
  %i.am = and i64 %i.al, 7                        ; 2 uses
  %.not291 = icmp eq i64 %i.am, 7
  br i1 %.not291, label %exchange_func.exit.i.i, label %switch.lookup

switch.lookup:                                    ; preds = %.lr.ph43.i._crit_edge
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.re_emit_string_list, i64 %i.am
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %exchange_func.exit.i.i

exchange_func.exit.i.i:                           ; preds = %.lr.ph43.i._crit_edge, %switch.lookup
  %.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @exchange_bytes, %.lr.ph43.i._crit_edge ] ; 3 uses
  %i.an = shl i64 %.019139.i.lcssa, 2
  %i.ao = and i64 %i.an, -8                       ; 2 uses
  %i.ap = shl i64 %.019139.i.lcssa, 3             ; 4 uses
  %.not5.i.i = icmp eq i64 %i.ao, 0
  %.pre.i.i = add i64 %i.ap, -8                   ; 3 uses
  br i1 %.not5.i.i, label %.preheader.i.i, label %.lr.ph7.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %exchange_func.exit.i.i
  %.not8514.i.i = icmp eq i64 %.pre.i.i, 0
  br i1 %.not8514.i.i, label %.loopexit.i, label %.lr.ph17.i.i

.lr.ph7.i.i:                                      ; preds = %exchange_func.exit.i.i, %._crit_edge.i.i
  %.0796.i.i = phi i64 [ %i.aq, %._crit_edge.i.i ], [ %i.ao, %exchange_func.exit.i.i ]
  %i.aq = add i64 %.0796.i.i, -8                  ; 4 uses
  %i.ar = shl i64 %i.aq, 1                        ; 2 uses
  %i.as = or disjoint i64 %i.ar, 8                ; 2 uses
  %i.at = icmp ult i64 %i.as, %i.ap
  br i1 %i.at, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i, %bb.p
  %i.au = phi i64 [ %i.bq, %bb.p ], [ %i.as, %.lr.ph7.i.i ] ; 4 uses
  %i.av = phi i64 [ %i.bp, %bb.p ], [ %i.ar, %.lr.ph7.i.i ]
  %.03.i.i = phi i64 [ %.077.i.i, %bb.p ], [ %i.aq, %.lr.ph7.i.i ]
  %i.aw = icmp ult i64 %i.au, %.pre.i.i
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %i.au ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !71
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !45
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !45
  %.not1.i.i = icmp ugt i32 %i.be, %i.bc
  %i.bf = add i64 %i.av, 16
  %spec.select.i.i = select i1 %.not1.i.i, i64 %i.au, i64 %i.bf
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i.i
  %.077.i.i = phi i64 [ %i.au, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.n ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.03.i.i ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.077.i.i ; 2 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !71
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !71
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !45
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !45
  %i.bo = icmp ugt i32 %i.bn, %i.bl
  br i1 %i.bo, label %._crit_edge.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void %.0.i.i.i(ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bh, i64 noundef 8) #20, !inline_history !113
  %i.bp = shl i64 %.077.i.i, 1                    ; 2 uses
  %i.bq = add i64 %i.bp, 8                        ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.ap
  br i1 %i.br, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !114

._crit_edge.i.i:                                  ; preds = %bb.p, %bb.o, %.lr.ph7.i.i
  %.not.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph7.i.i, !llvm.loop !115

.lr.ph17.i.i:                                     ; preds = %.preheader.i.i, %._crit_edge11.i.i
  %.18016.i.i = phi i64 [ %.180.i.i, %._crit_edge11.i.i ], [ %.pre.i.i, %.preheader.i.i ] ; 5 uses
  %.180.in15.i.i = phi i64 [ %.18016.i.i, %._crit_edge11.i.i ], [ %i.ap, %.preheader.i.i ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.18016.i.i
  call void %.0.i.i.i(ptr noundef %.018641.i.lcssa, ptr noundef nonnull %i.bs, i64 noundef 8) #20, !inline_history !113
  %i.bt = icmp ugt i64 %.18016.i.i, 8
  br i1 %i.bt, label %.lr.ph10.i.i, label %._crit_edge11.i.i

.lr.ph10.i.i:                                     ; preds = %.lr.ph17.i.i
  %i.bu = add i64 %.180.in15.i.i, -16
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %.lr.ph10.i.i
  %i.bv = phi i64 [ 8, %.lr.ph10.i.i ], [ %i.cr, %bb.t ] ; 4 uses
  %i.bw = phi i64 [ 0, %.lr.ph10.i.i ], [ %i.cq, %bb.t ]
  %.18.i.i = phi i64 [ 0, %.lr.ph10.i.i ], [ %.178.i.i, %bb.t ]
  %i.bx = icmp ult i64 %i.bv, %i.bu
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %i.bv ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !71
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !71
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !45
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !45
  %.not2.i.i = icmp ugt i32 %i.cf, %i.cd
  %i.cg = add i64 %i.bw, 16
  %spec.select86.i.i = select i1 %.not2.i.i, i64 %i.bv, i64 %i.cg
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.178.i.i = phi i64 [ %i.bv, %bb.q ], [ %spec.select86.i.i, %bb.r ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.18.i.i ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.018641.i.lcssa, i64 %.178.i.i ; 2 uses
  %i.cj = load ptr, ptr %i.ch, align 8, !tbaa !71
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !71
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !45
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !45
  %i.cp = icmp ugt i32 %i.co, %i.cm
  br i1 %i.cp, label %._crit_edge11.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void %.0.i.i.i(ptr noundef nonnull %i.ch, ptr noundef nonnull %i.ci, i64 noundef 8) #20, !inline_history !113
  %i.cq = shl i64 %.178.i.i, 1                    ; 2 uses
  %i.cr = add i64 %i.cq, 8                        ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %.18016.i.i
  br i1 %i.cs, label %bb.q, label %._crit_edge11.i.i, !llvm.loop !116

._crit_edge11.i.i:                                ; preds = %bb.t, %bb.s, %.lr.ph17.i.i
  %.180.i.i = add i64 %.18016.i.i, -8             ; 2 uses
  %.not85.i.i = icmp eq i64 %.180.i.i, 0
  br i1 %.not85.i.i, label %.loopexit.i, label %.lr.ph17.i.i, !llvm.loop !117

.lr.ph288:                                        ; preds = %.lr.ph43.preheader.i, %.lr.ph43.i
  %.in = phi i32 [ %i.ct, %.lr.ph43.i ], [ %i.ak, %.lr.ph43.preheader.i ]
  %.019139.i287 = phi i64 [ %.1192.i, %.lr.ph43.i ], [ %i.ah, %.lr.ph43.preheader.i ] ; 3 uses
  %.118940.i286 = phi ptr [ %.2190.i, %.lr.ph43.i ], [ %i.ae, %.lr.ph43.preheader.i ] ; 4 uses
  %.018641.i285 = phi ptr [ %.1187.i, %.lr.ph43.i ], [ %i.af, %.lr.ph43.preheader.i ] ; 12 uses
  %i.ct = add nsw i32 %.in, 1                     ; 3 uses
  %i.cu = shl i64 %.019139.i287, 1
  %i.cv = and i64 %i.cu, -8                       ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.cv ; 3 uses
  %i.cx = shl i64 %i.cv, 1
  %i.cy = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.cx ; 3 uses
  %i.cz = mul i64 %i.cv, 3
  %i.da = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.cz ; 3 uses
  %i.db = load ptr, ptr %i.cw, align 8, !tbaa !71
  %i.dc = load ptr, ptr %i.cy, align 8, !tbaa !71
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !45 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !45 ; 3 uses
  %i.dh = icmp ult i32 %i.dg, %i.de
  %i.di = load ptr, ptr %i.da, align 8, !tbaa !71
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !45 ; 4 uses
  br i1 %i.dh, label %bb.u, label %bb.w

bb.u:                                             ; preds = %.lr.ph288
  %i.dl = icmp ult i32 %i.dk, %i.dg
  br i1 %i.dl, label %med3.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dm = icmp ult i32 %i.dk, %i.de
  %i.dn = select i1 %i.dm, ptr %i.da, ptr %i.cw
  br label %med3.exit.i

bb.w:                                             ; preds = %.lr.ph288
  %i.do = icmp ugt i32 %i.dk, %i.dg
  br i1 %i.do, label %med3.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dp = icmp ult i32 %i.dk, %i.de
  %i.dq = select i1 %i.dp, ptr %i.cw, ptr %i.da
  br label %med3.exit.i

med3.exit.i:                                      ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %i.dr = phi ptr [ %i.dn, %bb.v ], [ %i.dq, %bb.x ], [ %i.cy, %bb.u ], [ %i.cy, %bb.w ]
  call void %.0.i104.i(ptr noundef nonnull %.018641.i285, ptr noundef nonnull %i.dr, i64 noundef 8) #20, !inline_history !118
  %i.ds = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 8 ; 2 uses
  %i.dt = shl i64 %.019139.i287, 3
  %i.du = getelementptr inbounds nuw i8, ptr %.018641.i285, i64 %i.dt ; 5 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.af, %med3.exit.i
  %.0183.i = phi ptr [ %i.ds, %med3.exit.i ], [ %i.ex, %bb.af ] ; 3 uses
  %.0180.i = phi ptr [ %i.du, %med3.exit.i ], [ %i.ek, %bb.af ] ; 3 uses
  %.0177.i = phi ptr [ %i.ds, %med3.exit.i ], [ %.1178.lcssa.i, %bb.af ] ; 2 uses
  %.0174.i = phi ptr [ %i.du, %med3.exit.i ], [ %.117524.i, %bb.af ] ; 2 uses
  %.0172.i = phi i64 [ 1, %med3.exit.i ], [ %i.ew, %bb.af ] ; 2 uses
  %.0169.i = phi i64 [ 1, %med3.exit.i ], [ %.1170.lcssa.i, %bb.af ] ; 2 uses
  %.0167.i = phi i64 [ %.019139.i287, %med3.exit.i ], [ %.116825.i, %bb.af ] ; 2 uses
  %i.dv = icmp ult ptr %.0183.i, %.0180.i
  br i1 %i.dv, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.y, %bb.ab
  %.117015.i = phi i64 [ %.2171.i, %bb.ab ], [ %.0169.i, %bb.y ] ; 3 uses
  %.117314.i = phi i64 [ %i.ef, %bb.ab ], [ %.0172.i, %bb.y ] ; 2 uses
  %.117813.i = phi ptr [ %.2179.i, %bb.ab ], [ %.0177.i, %bb.y ] ; 4 uses
  %.118412.i = phi ptr [ %i.eg, %bb.ab ], [ %.0183.i, %bb.y ] ; 4 uses
  %i.dw = load ptr, ptr %.018641.i285, align 8, !tbaa !71
  %i.dx = load ptr, ptr %.118412.i, align 8, !tbaa !71
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !45 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 12
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !45 ; 2 uses
  %.not.i = icmp ult i32 %i.eb, %i.dz
  br i1 %.not.i, label %.critedge.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i
  %i.ec = icmp eq i32 %i.eb, %i.dz
  br i1 %i.ec, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  call void %.0.i104.i(ptr noundef %.117813.i, ptr noundef nonnull %.118412.i, i64 noundef 8) #20, !inline_history !118
  %i.ed = add i64 %.117015.i, 1
  %i.ee = getelementptr inbounds nuw i8, ptr %.117813.i, i64 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.2179.i = phi ptr [ %i.ee, %bb.aa ], [ %.117813.i, %bb.z ] ; 2 uses
  %.2171.i = phi i64 [ %i.ed, %bb.aa ], [ %.117015.i, %bb.z ] ; 2 uses
  %i.ef = add i64 %.117314.i, 1                   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.118412.i, i64 8 ; 3 uses
  %i.eh = icmp ult ptr %i.eg, %.0180.i
  br i1 %i.eh, label %.lr.ph.i, label %.critedge.i, !llvm.loop !119

.critedge.i:                                      ; preds = %bb.ab, %.lr.ph.i, %bb.y
  %.1184.lcssa.i = phi ptr [ %.0183.i, %bb.y ], [ %.118412.i, %.lr.ph.i ], [ %i.eg, %bb.ab ] ; 7 uses
  %.1178.lcssa.i = phi ptr [ %.0177.i, %bb.y ], [ %.117813.i, %.lr.ph.i ], [ %.2179.i, %bb.ab ] ; 2 uses
  %.1173.lcssa.i = phi i64 [ %.0172.i, %bb.y ], [ %.117314.i, %.lr.ph.i ], [ %i.ef, %bb.ab ] ; 3 uses
  %.1170.lcssa.i = phi i64 [ %.0169.i, %bb.y ], [ %.117015.i, %.lr.ph.i ], [ %.2171.i, %bb.ab ] ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.0180.i, i64 -8 ; 2 uses
  %i.ej = icmp ult ptr %.1184.lcssa.i, %i.ei
  br i1 %i.ej, label %.lr.ph26.i, label %.critedge3.i

.lr.ph26.i:                                       ; preds = %.critedge.i, %bb.ae
  %i.ek = phi ptr [ %i.eu, %bb.ae ], [ %i.ei, %.critedge.i ] ; 5 uses
  %.116825.i = phi i64 [ %.2.i, %bb.ae ], [ %.0167.i, %.critedge.i ] ; 3 uses
  %.117524.i = phi ptr [ %.2176.i, %bb.ae ], [ %.0174.i, %.critedge.i ] ; 3 uses
  %i.el = load ptr, ptr %.018641.i285, align 8, !tbaa !71
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !71
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !45 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !45 ; 2 uses
  %.not1.i = icmp ugt i32 %i.eq, %i.eo
  br i1 %.not1.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph26.i
  %i.er = icmp eq i32 %i.eq, %i.eo
  br i1 %i.er, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.es = add i64 %.116825.i, -1
  %i.et = getelementptr inbounds i8, ptr %.117524.i, i64 -8 ; 2 uses
  call void %.0.i104.i(ptr noundef nonnull %i.et, ptr noundef nonnull %i.ek, i64 noundef 8) #20, !inline_history !118
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2176.i = phi ptr [ %i.et, %bb.ad ], [ %.117524.i, %bb.ac ] ; 2 uses
  %.2.i = phi i64 [ %i.es, %bb.ad ], [ %.116825.i, %bb.ac ] ; 2 uses
  %i.eu = getelementptr inbounds i8, ptr %i.ek, i64 -8 ; 2 uses
  %i.ev = icmp ult ptr %.1184.lcssa.i, %i.eu
  br i1 %i.ev, label %.lr.ph26.i, label %.critedge3.i, !llvm.loop !120

bb.af:                                            ; preds = %.lr.ph26.i
  call void %.0.i104.i(ptr noundef %.1184.lcssa.i, ptr noundef nonnull %i.ek, i64 noundef 8) #20, !inline_history !118
  %i.ew = add i64 %.1173.lcssa.i, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %.1184.lcssa.i, i64 8
  br label %bb.y

.critedge3.i:                                     ; preds = %.critedge.i, %bb.ae
  %.1175.lcssa.i = phi ptr [ %.2176.i, %bb.ae ], [ %.0174.i, %.critedge.i ]
  %.1168.lcssa.i = phi i64 [ %.2.i, %bb.ae ], [ %.0167.i, %.critedge.i ]
  %i.ey = ptrtoint ptr %.1178.lcssa.i to i64      ; 2 uses
  %i.ez = ptrtoint ptr %.018641.i285 to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = ptrtoint ptr %.1184.lcssa.i to i64      ; 2 uses
  %i.fc = sub i64 %i.fb, %i.ey
  %i.fd = sub i64 %.1173.lcssa.i, %.1170.lcssa.i  ; 3 uses
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.fc) ; 2 uses
  %i.fe = sub i64 0, %spec.select.i
  %i.ff = getelementptr inbounds i8, ptr %.1184.lcssa.i, i64 %i.fe
  call void %.0.i209.i(ptr noundef nonnull %.018641.i285, ptr noundef %i.ff, i64 noundef %spec.select.i) #20, !inline_history !118
  %i.fg = ptrtoint ptr %i.du to i64
  %i.fh = ptrtoint ptr %.1175.lcssa.i to i64      ; 2 uses
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = sub i64 %i.fh, %i.fb                    ; 2 uses
  %i.fk = sub i64 0, %i.fj
  %i.fl = getelementptr inbounds i8, ptr %i.du, i64 %i.fk ; 2 uses
  %i.fm = sub i64 %.1168.lcssa.i, %.1173.lcssa.i  ; 3 uses
  %.1.i = call i64 @llvm.umin.i64(i64 %i.fi, i64 %i.fj) ; 2 uses
  %i.fn = sub i64 0, %.1.i
  %i.fo = getelementptr inbounds i8, ptr %i.du, i64 %i.fn
  call void %.0.i209.i(ptr noundef %.1184.lcssa.i, ptr noundef nonnull %i.fo, i64 noundef %.1.i) #20, !inline_history !118
  %i.fp = icmp ugt i64 %i.fd, %i.fm
end_hunk_1
