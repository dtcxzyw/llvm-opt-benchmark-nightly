Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jdmarker?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@read_markers:bb.a
  %.481.i = phi ptr [ %i.ks, %bb.bu ], [ %i.km, %bb.bs ] ; 2 uses
  %.4.i70 = phi i64 [ %i.kt, %bb.bu ], [ %i.kl, %bb.bs ]
  %i.ku = load i8, ptr %.481.i, align 1, !tbaa !38 ; 4 uses
  %i.kv = zext i8 %i.ku to i32                    ; 2 uses
  %i.kw = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 40
  store i32 79, ptr %i.kx, align 8, !tbaa !37
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kw, i64 44
  store i32 %i.ko, ptr %i.ky, align 4, !tbaa !38
  %i.kz = load ptr, ptr %0, align 8, !tbaa !34
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  store i32 %i.kv, ptr %i.la, align 4, !tbaa !38
  %i.lb = load ptr, ptr %0, align 8, !tbaa !34
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !39
  tail call void %i.ld(ptr noundef nonnull %0, i32 noundef 1) #6, !inline_history !89
  %i.le = icmp ugt i8 %i.kn, 31
  br i1 %i.le, label %.thread.i, label %bb.bw

.thread.i:                                        ; preds = %bb.bv
  %i.lf = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 40
  store i32 28, ptr %i.lg, align 8, !tbaa !37
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 44
  store i32 %i.ko, ptr %i.lh, align 4, !tbaa !38
  %i.li = load ptr, ptr %0, align 8, !tbaa !34
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !61
  tail call void %i.lj(ptr noundef nonnull %0) #6, !inline_history !89
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.lk = icmp samesign ugt i8 %i.kn, 15
  br i1 %i.lk, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw, %.thread.i
  %i.ll = zext i8 %i.kn to i64
  %i.lm = getelementptr i8, ptr %0, i64 %i.ll
  %i.ln = getelementptr i8, ptr %i.lm, i64 336
  store i8 %i.ku, ptr %i.ln, align 1, !tbaa !38
  br label %bb.ca

bb.by:                                            ; preds = %bb.bw
  %i.lo = and i8 %i.ku, 15                        ; 2 uses
  %i.lp = zext nneg i8 %i.kn to i64               ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.lp
  store i8 %i.lo, ptr %i.lq, align 1, !tbaa !38
  %i.lr = lshr i8 %i.ku, 4                        ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.lp
  store i8 %i.lr, ptr %i.ls, align 1, !tbaa !38
  %i.lt = icmp samesign ugt i8 %i.lo, %i.lr
  br i1 %i.lt, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.lu = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 40
  store i32 29, ptr %i.lv, align 8, !tbaa !37
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lu, i64 44
  store i32 %i.kv, ptr %i.lw, align 4, !tbaa !38
  %i.lx = load ptr, ptr %0, align 8, !tbaa !34
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !61
  tail call void %i.ly(ptr noundef nonnull %0) #6, !inline_history !89
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by, %bb.bx
  %.082.i = add nsw i64 %.082100.i, -2            ; 2 uses
  %.279.i = getelementptr inbounds nuw i8, ptr %.481.i, i64 1 ; 2 uses
  %.2.i71 = add i64 %.4.i70, -1                   ; 2 uses
  %i.lz = icmp samesign ugt i64 %.082100.i, 2
  br i1 %i.lz, label %bb.bp, label %._crit_edge.i66, !llvm.loop !90

._crit_edge.i66:                                  ; preds = %bb.ca, %bb.bo
  %.082.lcssa.i = phi i64 [ %.08297.i, %bb.bo ], [ %.082.i, %bb.ca ]
  %.279.lcssa.i = phi ptr [ %.27998.i, %bb.bo ], [ %.279.i, %bb.ca ]
  %.2.lcssa.i = phi i64 [ %.299.i, %bb.bo ], [ %.2.i71, %bb.ca ]
  %.not91.i = icmp eq i64 %.082.lcssa.i, 0
  br i1 %.not91.i, label %get_dac.exit, label %bb.cb

bb.cb:                                            ; preds = %._crit_edge.i66
  %i.ma = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  store i32 11, ptr %i.mb, align 8, !tbaa !37
  %i.mc = load ptr, ptr %i.ma, align 8, !tbaa !61
  tail call void %i.mc(ptr noundef nonnull %0) #6, !inline_history !89
  br label %get_dac.exit

get_dac.exit:                                     ; preds = %._crit_edge.i66, %bb.cb
  store ptr %.279.lcssa.i, ptr %i.ji, align 8, !tbaa !42
  store i64 %.2.lcssa.i, ptr %i.jj, align 8, !tbaa !43
  br label %skip_variable.exit

bb.cc:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.md = load ptr, ptr %i.d, align 8, !tbaa !40  ; 25 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8 ; 22 uses
  %i.mf = load i64, ptr %i.me, align 8, !tbaa !43 ; 2 uses
  %i.mg = icmp eq i64 %i.mf, 0
  br i1 %i.mg, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.mh = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !44
  %i.mj = tail call i32 %i.mi(ptr noundef nonnull %0) #6, !inline_history !91
  %.not.i87 = icmp eq i32 %i.mj, 0
  br i1 %.not.i87, label %get_dht.exit.thread, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mk = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  %.0127.i = phi i64 [ %i.mk, %bb.ce ], [ %i.mf, %bb.cc ]
  %.0128.i = load ptr, ptr %i.md, align 8, !tbaa !42 ; 2 uses
  %i.ml = add i64 %.0127.i, -1                    ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %.0128.i, i64 1
  %i.mn = load i8, ptr %.0128.i, align 1, !tbaa !38
  %i.mo = zext i8 %i.mn to i64
  %i.mp = shl nuw nsw i64 %i.mo, 8
  %i.mq = icmp eq i64 %i.ml, 0
  br i1 %i.mq, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.mr = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !44
  %i.mt = tail call i32 %i.ms(ptr noundef nonnull %0) #6, !inline_history !91
  %.not143.i = icmp eq i32 %i.mt, 0
  br i1 %.not143.i, label %get_dht.exit.thread, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mu = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.mv = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %.1129.i = phi ptr [ %i.mu, %bb.ch ], [ %i.mm, %bb.cf ] ; 2 uses
  %.1.i73 = phi i64 [ %i.mv, %bb.ch ], [ %i.ml, %bb.cf ]
  %i.mw = add i64 %.1.i73, -1                     ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %.1129.i, i64 1 ; 2 uses
  %i.my = load i8, ptr %.1129.i, align 1, !tbaa !38
  %i.mz = zext i8 %i.my to i64
  %i.na = or disjoint i64 %i.mp, %i.mz            ; 2 uses
  %i.nb = add nsw i64 %i.na, -2                   ; 2 uses
  %i.nc = icmp samesign ugt i64 %i.na, 18
  br i1 %i.nc, label %.lr.ph180.i, label %._crit_edge181.i

.lr.ph180.i:                                      ; preds = %bb.ci
  %i.nd = getelementptr inbounds nuw i8, ptr %i.md, i64 24 ; 18 uses
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ew, %.lr.ph180.i
  %.0126178.i = phi i64 [ %i.nb, %.lr.ph180.i ], [ %i.uf, %bb.ew ]
  %.2177.i = phi i64 [ %i.mw, %.lr.ph180.i ], [ %.6.lcssa.i, %bb.ew ] ; 2 uses
  %.2130176.i = phi ptr [ %i.mx, %.lr.ph180.i ], [ %.6134.lcssa.i, %bb.ew ]
  %i.ne = icmp eq i64 %.2177.i, 0
  br i1 %i.ne, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.nf = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.ng = tail call i32 %i.nf(ptr noundef %0) #6, !inline_history !91
  %.not145.i = icmp eq i32 %i.ng, 0
  br i1 %.not145.i, label %get_dht.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nh = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.ni = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %.3131.i = phi ptr [ %i.nh, %bb.cl ], [ %.2130176.i, %bb.cj ] ; 2 uses
  %.3.i77 = phi i64 [ %i.ni, %bb.cl ], [ %.2177.i, %bb.cj ]
  %i.nj = load i8, ptr %.3131.i, align 1, !tbaa !38 ; 4 uses
  %i.nk = zext i8 %i.nj to i32                    ; 4 uses
  %i.nl = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 40
  store i32 80, ptr %i.nm, align 8, !tbaa !37
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 44
  store i32 %i.nk, ptr %i.nn, align 4, !tbaa !38
  %i.no = load ptr, ptr %0, align 8, !tbaa !34
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !39
  tail call void %i.nq(ptr noundef nonnull %0, i32 noundef 1) #6, !inline_history !91
  %.4132166.i = getelementptr inbounds nuw i8, ptr %.3131.i, i64 1
  %.4167.i = add i64 %.3.i77, -1                  ; 2 uses
  %i.nr = icmp eq i64 %.4167.i, 0
  br i1 %i.nr, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.ns = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.nt = tail call i32 %i.ns(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.i = icmp eq i32 %i.nt, 0
  br i1 %.not148.i, label %get_dht.exit.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.nu = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.nv = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cm
  %.5133.i = phi ptr [ %i.nu, %bb.co ], [ %.4132166.i, %bb.cm ] ; 2 uses
  %.5.i78 = phi i64 [ %i.nv, %bb.co ], [ %.4167.i, %bb.cm ]
  %i.nw = load i8, ptr %.5133.i, align 1, !tbaa !38 ; 2 uses
  %i.nx = zext i8 %i.nw to i32                    ; 3 uses
  %.4132.i = getelementptr inbounds nuw i8, ptr %.5133.i, i64 1
  %.4.i79 = add i64 %.5.i78, -1                   ; 2 uses
  %i.ny = icmp eq i64 %.4.i79, 0
  br i1 %i.ny, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.nz = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.oa = tail call i32 %i.nz(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.1.i = icmp eq i32 %i.oa, 0
  br i1 %.not148.1.i, label %get_dht.exit.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ob = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.oc = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  %.5133.1.i = phi ptr [ %i.ob, %bb.cr ], [ %.4132.i, %bb.cp ] ; 2 uses
  %.5.1.i = phi i64 [ %i.oc, %bb.cr ], [ %.4.i79, %bb.cp ]
  %i.od = load i8, ptr %.5133.1.i, align 1, !tbaa !38 ; 2 uses
  %i.oe = zext i8 %i.od to i32                    ; 3 uses
  %i.of = add nuw nsw i32 %i.oe, %i.nx
  %.4132.1.i = getelementptr inbounds nuw i8, ptr %.5133.1.i, i64 1
  %.4.1.i = add i64 %.5.1.i, -1                   ; 2 uses
  %i.og = icmp eq i64 %.4.1.i, 0
  br i1 %i.og, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.oh = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.oi = tail call i32 %i.oh(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.2.i = icmp eq i32 %i.oi, 0
  br i1 %.not148.2.i, label %get_dht.exit.thread, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.oj = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.ok = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %.5133.2.i = phi ptr [ %i.oj, %bb.cu ], [ %.4132.1.i, %bb.cs ] ; 2 uses
  %.5.2.i = phi i64 [ %i.ok, %bb.cu ], [ %.4.1.i, %bb.cs ]
  %i.ol = load i8, ptr %.5133.2.i, align 1, !tbaa !38 ; 2 uses
  %i.om = zext i8 %i.ol to i32                    ; 3 uses
  %i.on = add nuw nsw i32 %i.of, %i.om
  %.4132.2.i = getelementptr inbounds nuw i8, ptr %.5133.2.i, i64 1
  %.4.2.i = add i64 %.5.2.i, -1                   ; 2 uses
  %i.oo = icmp eq i64 %.4.2.i, 0
  br i1 %i.oo, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.op = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.oq = tail call i32 %i.op(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.3.i = icmp eq i32 %i.oq, 0
  br i1 %.not148.3.i, label %get_dht.exit.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.or = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.os = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cv
  %.5133.3.i = phi ptr [ %i.or, %bb.cx ], [ %.4132.2.i, %bb.cv ] ; 2 uses
  %.5.3.i = phi i64 [ %i.os, %bb.cx ], [ %.4.2.i, %bb.cv ]
  %i.ot = load i8, ptr %.5133.3.i, align 1, !tbaa !38 ; 2 uses
  %i.ou = zext i8 %i.ot to i32                    ; 3 uses
  %i.ov = add nuw nsw i32 %i.on, %i.ou
  %.4132.3.i = getelementptr inbounds nuw i8, ptr %.5133.3.i, i64 1
  %.4.3.i = add i64 %.5.3.i, -1                   ; 2 uses
  %i.ow = icmp eq i64 %.4.3.i, 0
  br i1 %i.ow, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ox = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.oy = tail call i32 %i.ox(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.4.i = icmp eq i32 %i.oy, 0
  br i1 %.not148.4.i, label %get_dht.exit.thread, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.oz = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.pa = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cy
  %.5133.4.i = phi ptr [ %i.oz, %bb.da ], [ %.4132.3.i, %bb.cy ] ; 2 uses
  %.5.4.i = phi i64 [ %i.pa, %bb.da ], [ %.4.3.i, %bb.cy ]
  %i.pb = load i8, ptr %.5133.4.i, align 1, !tbaa !38 ; 2 uses
  %i.pc = zext i8 %i.pb to i32                    ; 3 uses
  %i.pd = add nuw nsw i32 %i.ov, %i.pc
  %.4132.4.i = getelementptr inbounds nuw i8, ptr %.5133.4.i, i64 1
  %.4.4.i = add i64 %.5.4.i, -1                   ; 2 uses
  %i.pe = icmp eq i64 %.4.4.i, 0
  br i1 %i.pe, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.pf = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.pg = tail call i32 %i.pf(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.5.i = icmp eq i32 %i.pg, 0
  br i1 %.not148.5.i, label %get_dht.exit.thread, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ph = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.pi = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.db
  %.5133.5.i = phi ptr [ %i.ph, %bb.dd ], [ %.4132.4.i, %bb.db ] ; 2 uses
  %.5.5.i = phi i64 [ %i.pi, %bb.dd ], [ %.4.4.i, %bb.db ]
  %i.pj = load i8, ptr %.5133.5.i, align 1, !tbaa !38 ; 2 uses
  %i.pk = zext i8 %i.pj to i32                    ; 3 uses
  %i.pl = add nuw nsw i32 %i.pd, %i.pk
  %.4132.5.i = getelementptr inbounds nuw i8, ptr %.5133.5.i, i64 1
  %.4.5.i = add i64 %.5.5.i, -1                   ; 2 uses
  %i.pm = icmp eq i64 %.4.5.i, 0
  br i1 %i.pm, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.pn = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.po = tail call i32 %i.pn(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.6.i = icmp eq i32 %i.po, 0
  br i1 %.not148.6.i, label %get_dht.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pp = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.pq = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.de
  %.5133.6.i = phi ptr [ %i.pp, %bb.dg ], [ %.4132.5.i, %bb.de ] ; 2 uses
  %.5.6.i = phi i64 [ %i.pq, %bb.dg ], [ %.4.5.i, %bb.de ]
  %i.pr = load i8, ptr %.5133.6.i, align 1, !tbaa !38 ; 2 uses
  %i.ps = zext i8 %i.pr to i32                    ; 3 uses
  %i.pt = add nuw nsw i32 %i.pl, %i.ps
  %.4132.6.i = getelementptr inbounds nuw i8, ptr %.5133.6.i, i64 1
  %.4.6.i = add i64 %.5.6.i, -1                   ; 2 uses
  %i.pu = icmp eq i64 %.4.6.i, 0
  br i1 %i.pu, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.pv = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.pw = tail call i32 %i.pv(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.7.i = icmp eq i32 %i.pw, 0
  br i1 %.not148.7.i, label %get_dht.exit.thread, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.px = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.py = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dh
  %.5133.7.i = phi ptr [ %i.px, %bb.dj ], [ %.4132.6.i, %bb.dh ] ; 2 uses
  %.5.7.i = phi i64 [ %i.py, %bb.dj ], [ %.4.6.i, %bb.dh ]
  %i.pz = load i8, ptr %.5133.7.i, align 1, !tbaa !38 ; 2 uses
  %i.qa = zext i8 %i.pz to i32                    ; 3 uses
  %i.qb = add nuw nsw i32 %i.pt, %i.qa
  %.4132.7.i = getelementptr inbounds nuw i8, ptr %.5133.7.i, i64 1
  %.4.7.i = add i64 %.5.7.i, -1                   ; 2 uses
  %i.qc = icmp eq i64 %.4.7.i, 0
  br i1 %i.qc, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.qd = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.qe = tail call i32 %i.qd(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.8.i = icmp eq i32 %i.qe, 0
  br i1 %.not148.8.i, label %get_dht.exit.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.qf = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.qg = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dk
  %.5133.8.i = phi ptr [ %i.qf, %bb.dm ], [ %.4132.7.i, %bb.dk ] ; 2 uses
  %.5.8.i = phi i64 [ %i.qg, %bb.dm ], [ %.4.7.i, %bb.dk ]
  %i.qh = load i8, ptr %.5133.8.i, align 1, !tbaa !38 ; 2 uses
  %i.qi = zext i8 %i.qh to i32                    ; 3 uses
  %i.qj = add nuw nsw i32 %i.qb, %i.qi
  %.4132.8.i = getelementptr inbounds nuw i8, ptr %.5133.8.i, i64 1
  %.4.8.i = add i64 %.5.8.i, -1                   ; 2 uses
  %i.qk = icmp eq i64 %.4.8.i, 0
  br i1 %i.qk, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.ql = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.qm = tail call i32 %i.ql(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.9.i = icmp eq i32 %i.qm, 0
  br i1 %.not148.9.i, label %get_dht.exit.thread, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qn = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.qo = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dn
  %.5133.9.i = phi ptr [ %i.qn, %bb.dp ], [ %.4132.8.i, %bb.dn ] ; 2 uses
  %.5.9.i = phi i64 [ %i.qo, %bb.dp ], [ %.4.8.i, %bb.dn ]
  %i.qp = load i8, ptr %.5133.9.i, align 1, !tbaa !38 ; 2 uses
  %i.qq = zext i8 %i.qp to i32                    ; 3 uses
  %i.qr = add nuw nsw i32 %i.qj, %i.qq
  %.4132.9.i = getelementptr inbounds nuw i8, ptr %.5133.9.i, i64 1
  %.4.9.i = add i64 %.5.9.i, -1                   ; 2 uses
  %i.qs = icmp eq i64 %.4.9.i, 0
  br i1 %i.qs, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.qt = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.qu = tail call i32 %i.qt(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.10.i = icmp eq i32 %i.qu, 0
  br i1 %.not148.10.i, label %get_dht.exit.thread, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qv = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.qw = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dq
  %.5133.10.i = phi ptr [ %i.qv, %bb.ds ], [ %.4132.9.i, %bb.dq ] ; 2 uses
  %.5.10.i = phi i64 [ %i.qw, %bb.ds ], [ %.4.9.i, %bb.dq ]
  %i.qx = load i8, ptr %.5133.10.i, align 1, !tbaa !38 ; 2 uses
  %i.qy = zext i8 %i.qx to i32                    ; 3 uses
  %i.qz = add nuw nsw i32 %i.qr, %i.qy
  %.4132.10.i = getelementptr inbounds nuw i8, ptr %.5133.10.i, i64 1
  %.4.10.i = add i64 %.5.10.i, -1                 ; 2 uses
  %i.ra = icmp eq i64 %.4.10.i, 0
  br i1 %i.ra, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.rb = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.rc = tail call i32 %i.rb(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.11.i = icmp eq i32 %i.rc, 0
  br i1 %.not148.11.i, label %get_dht.exit.thread, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.rd = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.re = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dt
  %.5133.11.i = phi ptr [ %i.rd, %bb.dv ], [ %.4132.10.i, %bb.dt ] ; 2 uses
  %.5.11.i = phi i64 [ %i.re, %bb.dv ], [ %.4.10.i, %bb.dt ]
  %i.rf = load i8, ptr %.5133.11.i, align 1, !tbaa !38 ; 2 uses
  %i.rg = zext i8 %i.rf to i32                    ; 3 uses
  %i.rh = add nuw nsw i32 %i.qz, %i.rg
  %.4132.11.i = getelementptr inbounds nuw i8, ptr %.5133.11.i, i64 1
  %.4.11.i = add i64 %.5.11.i, -1                 ; 2 uses
  %i.ri = icmp eq i64 %.4.11.i, 0
  br i1 %i.ri, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.rj = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.rk = tail call i32 %i.rj(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.12.i = icmp eq i32 %i.rk, 0
  br i1 %.not148.12.i, label %get_dht.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.rl = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.rm = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dw
  %.5133.12.i = phi ptr [ %i.rl, %bb.dy ], [ %.4132.11.i, %bb.dw ] ; 2 uses
  %.5.12.i = phi i64 [ %i.rm, %bb.dy ], [ %.4.11.i, %bb.dw ]
  %i.rn = load i8, ptr %.5133.12.i, align 1, !tbaa !38 ; 2 uses
  %i.ro = zext i8 %i.rn to i32                    ; 3 uses
  %i.rp = add nuw nsw i32 %i.rh, %i.ro
  %.4132.12.i = getelementptr inbounds nuw i8, ptr %.5133.12.i, i64 1
  %.4.12.i = add i64 %.5.12.i, -1                 ; 2 uses
  %i.rq = icmp eq i64 %.4.12.i, 0
  br i1 %i.rq, label %bb.ea, label %bb.ec

bb.ea:                                            ; preds = %bb.dz
  %i.rr = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.rs = tail call i32 %i.rr(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.13.i = icmp eq i32 %i.rs, 0
  br i1 %.not148.13.i, label %get_dht.exit.thread, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.rt = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.ru = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.dz
  %.5133.13.i = phi ptr [ %i.rt, %bb.eb ], [ %.4132.12.i, %bb.dz ] ; 2 uses
  %.5.13.i = phi i64 [ %i.ru, %bb.eb ], [ %.4.12.i, %bb.dz ]
  %i.rv = load i8, ptr %.5133.13.i, align 1, !tbaa !38 ; 2 uses
  %i.rw = zext i8 %i.rv to i32                    ; 3 uses
  %i.rx = add nuw nsw i32 %i.rp, %i.rw
  %.4132.13.i = getelementptr inbounds nuw i8, ptr %.5133.13.i, i64 1
  %.4.13.i = add i64 %.5.13.i, -1                 ; 2 uses
  %i.ry = icmp eq i64 %.4.13.i, 0
  br i1 %i.ry, label %bb.ed, label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.rz = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.sa = tail call i32 %i.rz(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.14.i = icmp eq i32 %i.sa, 0
  br i1 %.not148.14.i, label %get_dht.exit.thread, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.sb = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.sc = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ec
  %.5133.14.i = phi ptr [ %i.sb, %bb.ee ], [ %.4132.13.i, %bb.ec ] ; 2 uses
  %.5.14.i = phi i64 [ %i.sc, %bb.ee ], [ %.4.13.i, %bb.ec ]
  %i.sd = load i8, ptr %.5133.14.i, align 1, !tbaa !38 ; 2 uses
  %i.se = zext i8 %i.sd to i32                    ; 3 uses
  %i.sf = add nuw nsw i32 %i.rx, %i.se
  %.4132.14.i = getelementptr inbounds nuw i8, ptr %.5133.14.i, i64 1
  %.4.14.i = add i64 %.5.14.i, -1                 ; 2 uses
  %i.sg = icmp eq i64 %.4.14.i, 0
  br i1 %i.sg, label %bb.eg, label %bb.ei

bb.eg:                                            ; preds = %bb.ef
  %i.sh = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.si = tail call i32 %i.sh(ptr noundef nonnull %0) #6, !inline_history !91
  %.not148.15.i = icmp eq i32 %i.si, 0
  br i1 %.not148.15.i, label %get_dht.exit.thread, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.sj = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.sk = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.ef
  %.5133.15.i = phi ptr [ %i.sj, %bb.eh ], [ %.4132.14.i, %bb.ef ] ; 2 uses
  %.5.15.i = phi i64 [ %i.sk, %bb.eh ], [ %.4.14.i, %bb.ef ]
  %i.sl = load i8, ptr %.5133.15.i, align 1, !tbaa !38 ; 2 uses
  %i.sm = zext i8 %i.sl to i32                    ; 3 uses
  %i.sn = add nuw nsw i32 %i.sf, %i.sm            ; 4 uses
  %.4132.15.i = getelementptr inbounds nuw i8, ptr %.5133.15.i, i64 1 ; 2 uses
  %.4.15.i = add i64 %.5.15.i, -1                 ; 2 uses
  %i.so = add nsw i64 %.0126178.i, -17            ; 2 uses
  %i.sp = load ptr, ptr %0, align 8, !tbaa !34    ; 10 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 44
  store i32 %i.nx, ptr %i.sq, align 4, !tbaa !54
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sp, i64 48
  store i32 %i.oe, ptr %i.sr, align 4, !tbaa !54
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sp, i64 52
  store i32 %i.om, ptr %i.ss, align 4, !tbaa !54
  %i.st = getelementptr inbounds nuw i8, ptr %i.sp, i64 56
  store i32 %i.ou, ptr %i.st, align 4, !tbaa !54
  %i.su = getelementptr inbounds nuw i8, ptr %i.sp, i64 60
  store i32 %i.pc, ptr %i.su, align 4, !tbaa !54
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sp, i64 64
  store i32 %i.pk, ptr %i.sv, align 4, !tbaa !54
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sp, i64 68
  store i32 %i.ps, ptr %i.sw, align 4, !tbaa !54
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sp, i64 72
  store i32 %i.qa, ptr %i.sx, align 4, !tbaa !54
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sp, i64 40
  store i32 86, ptr %i.sy, align 8, !tbaa !37
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !39
  tail call void %i.ta(ptr noundef nonnull %0, i32 noundef 2) #6, !inline_history !91
  %i.tb = load ptr, ptr %0, align 8, !tbaa !34    ; 10 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 44
  store i32 %i.qi, ptr %i.tc, align 4, !tbaa !54
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 48
  store i32 %i.qq, ptr %i.td, align 4, !tbaa !54
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 52
  store i32 %i.qy, ptr %i.te, align 4, !tbaa !54
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tb, i64 56
  store i32 %i.rg, ptr %i.tf, align 4, !tbaa !54
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tb, i64 60
  store i32 %i.ro, ptr %i.tg, align 4, !tbaa !54
  %i.th = getelementptr inbounds nuw i8, ptr %i.tb, i64 64
  store i32 %i.rw, ptr %i.th, align 4, !tbaa !54
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tb, i64 68
  store i32 %i.se, ptr %i.ti, align 4, !tbaa !54
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tb, i64 72
  store i32 %i.sm, ptr %i.tj, align 4, !tbaa !54
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  store i32 86, ptr %i.tk, align 8, !tbaa !37
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !39
  tail call void %i.tm(ptr noundef nonnull %0, i32 noundef 2) #6, !inline_history !91
  %i.tn = icmp samesign ugt i32 %i.sn, 256
  %i.to = zext nneg i32 %i.sn to i64              ; 3 uses
  %i.tp = icmp samesign ult i64 %i.so, %i.to
  %or.cond.i80 = select i1 %i.tn, i1 true, i1 %i.tp
  br i1 %or.cond.i80, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.tq = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 40
  store i32 8, ptr %i.tr, align 8, !tbaa !37
  %i.ts = load ptr, ptr %i.tq, align 8, !tbaa !61
  tail call void %i.ts(ptr noundef nonnull %0) #6, !inline_history !91
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei
  %.not185.i81 = icmp eq i32 %i.sn, 0
  br i1 %.not185.i81, label %._crit_edge.i86, label %.lr.ph.i82.preheader

.lr.ph.i82.preheader:                             ; preds = %bb.ek
  %1 = add nuw nsw i32 %i.sm, %i.se
  %2 = add nuw nsw i32 %1, %i.rw
  %3 = add nuw nsw i32 %2, %i.ro
  %4 = add nuw nsw i32 %3, %i.rg
  %5 = add nuw nsw i32 %4, %i.qy
  %6 = add nuw nsw i32 %5, %i.qq
  %7 = add nuw nsw i32 %6, %i.qi
  %8 = add nuw nsw i32 %7, %i.qa
  %9 = add nuw nsw i32 %8, %i.ps
  %10 = add nuw nsw i32 %9, %i.pk
  %11 = add nuw nsw i32 %10, %i.pc
  %12 = add nuw nsw i32 %11, %i.ou
  %13 = add nuw nsw i32 %12, %i.om
  %14 = add nuw nsw i32 %13, %i.nx
  %15 = add nuw nsw i32 %14, %i.oe
  %16 = zext nneg i32 %15 to i64
  br label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.preheader, %bb.en
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i85, %bb.en ], [ 0, %.lr.ph.i82.preheader ] ; 2 uses
  %.6174.i = phi i64 [ %i.ty, %bb.en ], [ %.4.15.i, %.lr.ph.i82.preheader ] ; 2 uses
  %.6134173.i = phi ptr [ %i.tz, %bb.en ], [ %.4132.15.i, %.lr.ph.i82.preheader ]
  %i.tt = icmp eq i64 %.6174.i, 0
  br i1 %i.tt, label %bb.el, label %bb.en

bb.el:                                            ; preds = %.lr.ph.i82
  %i.tu = load ptr, ptr %i.nd, align 8, !tbaa !44
  %i.tv = tail call i32 %i.tu(ptr noundef nonnull %0) #6, !inline_history !91
  %.not147.i = icmp eq i32 %i.tv, 0
  br i1 %.not147.i, label %get_dht.exit.thread, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.tw = load ptr, ptr %i.md, align 8, !tbaa !42
  %i.tx = load i64, ptr %i.me, align 8, !tbaa !43
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %.lr.ph.i82
  %.7135.i = phi ptr [ %i.tw, %bb.em ], [ %.6134173.i, %.lr.ph.i82 ] ; 2 uses
  %.7.i84 = phi i64 [ %i.tx, %bb.em ], [ %.6174.i, %.lr.ph.i82 ]
  %i.ty = add i64 %.7.i84, -1                     ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %.7135.i, i64 1 ; 2 uses
  %i.ua = load i8, ptr %.7135.i, align 1, !tbaa !38
  %i.ub = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i83
  store i8 %i.ua, ptr %i.ub, align 1, !tbaa !38
  %indvars.iv.next.i85 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i85, %16
  br i1 %exitcond.not, label %._crit_edge.i86, label %.lr.ph.i82, !llvm.loop !92

._crit_edge.i86:                                  ; preds = %bb.en, %bb.ek
  %.6134.lcssa.i = phi ptr [ %.4132.15.i, %bb.ek ], [ %i.tz, %bb.en ] ; 2 uses
  %.6.lcssa.i = phi i64 [ %.4.15.i, %bb.ek ], [ %i.ty, %bb.en ] ; 2 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.to
  %i.ud = sub nsw i32 256, %i.sn
  %i.ue = sext i32 %i.ud to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.uc, i8 0, i64 %i.ue, i1 false)
  %i.uf = sub nsw i64 %i.so, %i.to                ; 3 uses
  %i.ug = and i32 %i.nk, 16
  %.not146.i = icmp eq i32 %i.ug, 0
  br i1 %.not146.i, label %bb.er, label %bb.eo

bb.eo:                                            ; preds = %._crit_edge.i86
  %i.uh = add nsw i32 %i.nk, -16                  ; 2 uses
  %i.ui = icmp ugt i8 %i.nj, 19
  br i1 %i.ui, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.uj = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 40
  store i32 30, ptr %i.uk, align 8, !tbaa !37
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uj, i64 44
  store i32 %i.uh, ptr %i.ul, align 4, !tbaa !38
  %i.um = load ptr, ptr %0, align 8, !tbaa !34
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !61
  tail call void %i.un(ptr noundef nonnull %0) #6, !inline_history !91
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.uo = zext nneg i32 %i.uh to i64
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.uo
  br label %bb.eu

bb.er:                                            ; preds = %._crit_edge.i86
  %i.uq = icmp ugt i8 %i.nj, 3
  br i1 %i.uq, label %bb.es, label %bb.et

bb.es:                                            ; preds = %bb.er
  %i.ur = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 40
  store i32 30, ptr %i.us, align 8, !tbaa !37
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 44
  store i32 %i.nk, ptr %i.ut, align 4, !tbaa !38
  %i.uu = load ptr, ptr %0, align 8, !tbaa !34
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !61
  tail call void %i.uv(ptr noundef nonnull %0) #6, !inline_history !91
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.er
  %i.uw = zext i8 %i.nj to i64
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.uw
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.eq
  %.0136.i = phi ptr [ %i.up, %bb.eq ], [ %i.ux, %bb.et ] ; 3 uses
  %i.uy = load ptr, ptr %.0136.i, align 8, !tbaa !53 ; 2 uses
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.va = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #6 ; 2 uses
  store ptr %i.va, ptr %.0136.i, align 8, !tbaa !53
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %i.vb = phi ptr [ %i.va, %bb.ev ], [ %i.uy, %bb.eu ] ; 17 uses
  store i8 0, ptr %i.vb, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 1
  store i8 %i.nw, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 2
  store i8 %i.od, ptr %.sroa.6.0..sroa_idx.i, align 2
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 3
  store i8 %i.ol, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 4
  store i8 %i.ot, ptr %.sroa.10.0..sroa_idx.i, align 4
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 5
  store i8 %i.pb, ptr %.sroa.12.0..sroa_idx.i, align 1
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 6
  store i8 %i.pj, ptr %.sroa.14.0..sroa_idx.i, align 2
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 7
  store i8 %i.pr, ptr %.sroa.16.0..sroa_idx.i, align 1
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 8
  store i8 %i.pz, ptr %.sroa.18.0..sroa_idx.i, align 4
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 9
  store i8 %i.qh, ptr %.sroa.20.0..sroa_idx.i, align 1
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 10
  store i8 %i.qp, ptr %.sroa.22.0..sroa_idx.i, align 2
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 11
  store i8 %i.qx, ptr %.sroa.24.0..sroa_idx.i, align 1
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 12
  store i8 %i.rf, ptr %.sroa.26.0..sroa_idx.i, align 4
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 13
  store i8 %i.rn, ptr %.sroa.28.0..sroa_idx.i, align 1
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 14
  store i8 %i.rv, ptr %.sroa.30.0..sroa_idx.i, align 2
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 15
  store i8 %i.sd, ptr %.sroa.32.0..sroa_idx.i, align 1
  %.sroa.34.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  store i8 %i.sl, ptr %.sroa.34.0..sroa_idx.i, align 4
  %i.vc = load ptr, ptr %.0136.i, align 8, !tbaa !53
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.vd, ptr noundef nonnull align 16 dereferenceable(256) %i.a, i64 256, i1 false)
  %i.ve = icmp sgt i64 %i.uf, 16
  br i1 %i.ve, label %bb.cj, label %._crit_edge181.i, !llvm.loop !93

._crit_edge181.i:                                 ; preds = %bb.ew, %bb.ci
  %.2130.lcssa.i = phi ptr [ %i.mx, %bb.ci ], [ %.6134.lcssa.i, %bb.ew ]
  %.2.lcssa.i74 = phi i64 [ %i.mw, %bb.ci ], [ %.6.lcssa.i, %bb.ew ]
  %.0126.lcssa.i = phi i64 [ %i.nb, %bb.ci ], [ %i.uf, %bb.ew ]
  %.not144.i = icmp eq i64 %.0126.lcssa.i, 0
  br i1 %.not144.i, label %get_dht.exit, label %bb.ex

bb.ex:                                            ; preds = %._crit_edge181.i
  %i.vf = load ptr, ptr %0, align 8, !tbaa !34    ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 40
  store i32 11, ptr %i.vg, align 8, !tbaa !37
  %i.vh = load ptr, ptr %i.vf, align 8, !tbaa !61
  tail call void %i.vh(ptr noundef nonnull %0) #6, !inline_history !91
  br label %get_dht.exit

get_dht.exit.thread:                              ; preds = %bb.cd, %bb.cg, %bb.eg, %bb.ed, %bb.ea, %bb.dx, %bb.du, %bb.dr, %bb.do, %bb.dl, %bb.di, %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %first_marker.exit.thread

get_dht.exit:                                     ; preds = %._crit_edge181.i, %bb.ex
  store ptr %.2130.lcssa.i, ptr %i.md, align 8, !tbaa !42
  store i64 %.2.lcssa.i74, ptr %i.me, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %skip_variable.exit

bb.ey:                                            ; preds = %bb.m
  %i.vi = load ptr, ptr %i.d, align 8, !tbaa !40  ; 11 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8 ; 8 uses
  %i.vk = load i64, ptr %i.vj, align 8, !tbaa !43 ; 2 uses
  %i.vl = icmp eq i64 %i.vk, 0
  br i1 %i.vl, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !44
  %i.vo = tail call i32 %i.vn(ptr noundef nonnull %0) #6, !inline_history !94
  %.not.i103 = icmp eq i32 %i.vo, 0
  br i1 %.not.i103, label %first_marker.exit.thread, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.vp = load i64, ptr %i.vj, align 8, !tbaa !43
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ey
  %.0119.i = phi i64 [ %i.vp, %bb.fa ], [ %i.vk, %bb.ey ]
  %.0120.i = load ptr, ptr %i.vi, align 8, !tbaa !42 ; 2 uses
  %i.vq = add i64 %.0119.i, -1                    ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %.0120.i, i64 1
  %i.vs = load i8, ptr %.0120.i, align 1, !tbaa !38
  %i.vt = zext i8 %i.vs to i64
  %i.vu = shl nuw nsw i64 %i.vt, 8
  %i.vv = icmp eq i64 %i.vq, 0
  br i1 %i.vv, label %bb.fc, label %bb.fe

bb.fc:                                            ; preds = %bb.fb
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  %i.vx = load ptr, ptr %i.vw, align 8, !tbaa !44
  %i.vy = tail call i32 %i.vx(ptr noundef nonnull %0) #6, !inline_history !94
  %.not138.i = icmp eq i32 %i.vy, 0
  br i1 %.not138.i, label %first_marker.exit.thread, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vz = load ptr, ptr %i.vi, align 8, !tbaa !42
  %i.wa = load i64, ptr %i.vj, align 8, !tbaa !43
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fd, %bb.fb
  %.1121.i = phi ptr [ %i.vz, %bb.fd ], [ %i.vr, %bb.fb ] ; 2 uses
  %.1.i88 = phi i64 [ %i.wa, %bb.fd ], [ %i.vq, %bb.fb ]
  %i.wb = add i64 %.1.i88, -1                     ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.1121.i, i64 1 ; 2 uses
  %i.wd = load i8, ptr %.1121.i, align 1, !tbaa !38
  %i.we = zext i8 %i.wd to i64
  %i.wf = or disjoint i64 %i.vu, %i.we            ; 2 uses
  %i.wg = add nsw i64 %i.wf, -2                   ; 2 uses
  %i.wh = icmp samesign ugt i64 %i.wf, 2
  br i1 %i.wh, label %.lr.ph.i92, label %._crit_edge.i89

.lr.ph.i92:                                       ; preds = %bb.fe
  %i.wi = getelementptr inbounds nuw i8, ptr %i.vi, i64 24 ; 4 uses
  br label %bb.ff

bb.ff:                                            ; preds = %.loopexit.i100, %.lr.ph.i92
  %.2167.i = phi i64 [ %i.wb, %.lr.ph.i92 ], [ %.us-phi.i, %.loopexit.i100 ] ; 2 uses
  %.2122166.i = phi ptr [ %i.wc, %.lr.ph.i92 ], [ %.us-phi163.i, %.loopexit.i100 ]
  %.0132165.i = phi i64 [ %i.wg, %.lr.ph.i92 ], [ %spec.select.i, %.loopexit.i100 ]
  %i.wj = icmp eq i64 %.2167.i, 0
  br i1 %i.wj, label %bb.fg, label %bb.fi

bb.fg:                                            ; preds = %bb.ff
  %i.wk = load ptr, ptr %i.wi, align 8, !tbaa !44
  %i.wl = tail call i32 %i.wk(ptr noundef nonnull %0) #6, !inline_history !94
  %.not140.i = icmp eq i32 %i.wl, 0
end_hunk_0
