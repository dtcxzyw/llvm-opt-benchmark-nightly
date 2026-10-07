Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/jdmarker?download=true
inline.NumInlined: 9
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@read_markers:bb.a
  br i1 %i.jh, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.ji = load ptr, ptr %i.ix, align 8, !tbaa !42
  %i.jj = tail call i32 %i.ji(ptr noundef nonnull %0) #5, !inline_history !75
  %.not88.i = icmp eq i32 %i.jj, 0
  br i1 %.not88.i, label %first_marker.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jk = load ptr, ptr %i.ia, align 8, !tbaa !40
  %i.jl = load i64, ptr %i.ib, align 8, !tbaa !41
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %.477.i = phi ptr [ %i.jk, %bb.bm ], [ %i.je, %bb.bk ] ; 2 uses
  %.4.i66 = phi i64 [ %i.jl, %bb.bm ], [ %i.jd, %bb.bk ]
  %i.jm = load i8, ptr %.477.i, align 1, !tbaa !36 ; 4 uses
  %i.jn = zext i8 %i.jm to i32                    ; 2 uses
  %i.jo = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 40
  store i32 78, ptr %i.jp, align 8, !tbaa !35
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 44
  store i32 %i.jg, ptr %i.jq, align 4, !tbaa !36
  %i.jr = load ptr, ptr %0, align 8, !tbaa !32
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  store i32 %i.jn, ptr %i.js, align 4, !tbaa !36
  %i.jt = load ptr, ptr %0, align 8, !tbaa !32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 8
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !37
  tail call void %i.jv(ptr noundef nonnull %0, i32 noundef 1) #5, !inline_history !75
  %i.jw = icmp ugt i8 %i.jf, 31
  br i1 %i.jw, label %.thread.i, label %bb.bo

.thread.i:                                        ; preds = %bb.bn
  %i.jx = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  store i32 26, ptr %i.jy, align 8, !tbaa !35
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 44
  store i32 %i.jg, ptr %i.jz, align 4, !tbaa !36
  %i.ka = load ptr, ptr %0, align 8, !tbaa !32
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !56
  tail call void %i.kb(ptr noundef nonnull %0) #5, !inline_history !75
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.kc = icmp samesign ugt i8 %i.jf, 15
  br i1 %i.kc, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %.thread.i
  %i.kd = zext i8 %i.jf to i64
  %i.ke = getelementptr i8, ptr %0, i64 %i.kd
  %i.kf = getelementptr i8, ptr %i.ke, i64 328
  store i8 %i.jm, ptr %i.kf, align 1, !tbaa !36
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo
  %i.kg = and i8 %i.jm, 15                        ; 2 uses
  %i.kh = zext nneg i8 %i.jf to i64               ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.kh
  store i8 %i.kg, ptr %i.ki, align 1, !tbaa !36
  %i.kj = lshr i8 %i.jm, 4                        ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.kh
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !36
  %i.kl = icmp samesign ugt i8 %i.kg, %i.kj
  br i1 %i.kl, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.km = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 40
  store i32 27, ptr %i.kn, align 8, !tbaa !35
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 44
  store i32 %i.jn, ptr %i.ko, align 4, !tbaa !36
  %i.kp = load ptr, ptr %0, align 8, !tbaa !32
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !56
  tail call void %i.kq(ptr noundef nonnull %0) #5, !inline_history !75
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %.275.i = getelementptr inbounds nuw i8, ptr %.477.i, i64 1 ; 2 uses
  %.2.i67 = add i64 %.4.i66, -1                   ; 2 uses
  %i.kr = icmp samesign ugt i64 %.07894.in.i, 4
  br i1 %i.kr, label %bb.bh, label %get_dac.exit, !llvm.loop !76

get_dac.exit:                                     ; preds = %bb.bs, %bb.bg
  %.275.lcssa.i = phi ptr [ %.27592.i, %bb.bg ], [ %.275.i, %bb.bs ]
  %.2.lcssa.i = phi i64 [ %.293.i, %bb.bg ], [ %.2.i67, %bb.bs ]
  store ptr %.275.lcssa.i, ptr %i.ia, align 8, !tbaa !40
  store i64 %.2.lcssa.i, ptr %i.ib, align 8, !tbaa !41
  br label %bb.gf

bb.bt:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.ks = load ptr, ptr %i.d, align 8, !tbaa !38  ; 25 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8 ; 22 uses
  %i.ku = load i64, ptr %i.kt, align 8, !tbaa !41 ; 2 uses
  %i.kv = icmp eq i64 %i.ku, 0
  br i1 %i.kv, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !42
  %i.ky = tail call i32 %i.kx(ptr noundef nonnull %0) #5, !inline_history !77
  %.not.i83 = icmp eq i32 %i.ky, 0
  br i1 %.not.i83, label %get_dht.exit.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kz = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bt
  %.0112.i = phi i64 [ %i.kz, %bb.bv ], [ %i.ku, %bb.bt ]
  %.0113.i = load ptr, ptr %i.ks, align 8, !tbaa !40 ; 2 uses
  %i.la = add i64 %.0112.i, -1                    ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.0113.i, i64 1
  %i.lc = load i8, ptr %.0113.i, align 1, !tbaa !36
  %i.ld = zext i8 %i.lc to i64
  %i.le = shl nuw nsw i64 %i.ld, 8
  %i.lf = icmp eq i64 %i.la, 0
  br i1 %i.lf, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ks, i64 24
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !42
  %i.li = tail call i32 %i.lh(ptr noundef nonnull %0) #5, !inline_history !77
  %.not128.i = icmp eq i32 %i.li, 0
  br i1 %.not128.i, label %get_dht.exit.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.lj = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.lk = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %.1114.i = phi ptr [ %i.lj, %bb.by ], [ %i.lb, %bb.bw ] ; 2 uses
  %.1.i69 = phi i64 [ %i.lk, %bb.by ], [ %i.la, %bb.bw ]
  %i.ll = add i64 %.1.i69, -1                     ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.1114.i, i64 1 ; 2 uses
  %i.ln = load i8, ptr %.1114.i, align 1, !tbaa !36
  %i.lo = zext i8 %i.ln to i64
  %i.lp = or disjoint i64 %i.le, %i.lo            ; 2 uses
  %i.lq = icmp samesign ugt i64 %i.lp, 2
  br i1 %i.lq, label %.lr.ph161.i, label %get_dht.exit

.lr.ph161.i:                                      ; preds = %bb.bz
  %i.lr = add nsw i64 %i.lp, -2
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ks, i64 24 ; 18 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ei, %.lr.ph161.i
  %.0111159.i = phi i64 [ %i.lr, %.lr.ph161.i ], [ %i.sr, %bb.ei ]
  %.2158.i = phi i64 [ %i.ll, %.lr.ph161.i ], [ %.6.lcssa.i, %bb.ei ] ; 2 uses
  %.2115157.i = phi ptr [ %i.lm, %.lr.ph161.i ], [ %.6119.lcssa.i, %bb.ei ]
  %i.lt = icmp eq i64 %.2158.i, 0
  br i1 %i.lt, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.lu = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.lv = tail call i32 %i.lu(ptr noundef %0) #5, !inline_history !77
  %.not129.i = icmp eq i32 %i.lv, 0
  br i1 %.not129.i, label %get_dht.exit.thread, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.lw = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.lx = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  %.3116.i = phi ptr [ %i.lw, %bb.cc ], [ %.2115157.i, %bb.ca ] ; 2 uses
  %.3.i73 = phi i64 [ %i.lx, %bb.cc ], [ %.2158.i, %bb.ca ]
  %i.ly = load i8, ptr %.3116.i, align 1, !tbaa !36 ; 2 uses
  %i.lz = zext i8 %i.ly to i32                    ; 4 uses
  %i.ma = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 40
  store i32 79, ptr %i.mb, align 8, !tbaa !35
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 44
  store i32 %i.lz, ptr %i.mc, align 4, !tbaa !36
  %i.md = load ptr, ptr %0, align 8, !tbaa !32
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !37
  tail call void %i.mf(ptr noundef nonnull %0, i32 noundef 1) #5, !inline_history !77
  %.4117147.i = getelementptr inbounds nuw i8, ptr %.3116.i, i64 1
  %.4148.i = add i64 %.3.i73, -1                  ; 2 uses
  %i.mg = icmp eq i64 %.4148.i, 0
  br i1 %i.mg, label %bb.ce, label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.mh = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.mi = tail call i32 %i.mh(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.i = icmp eq i32 %i.mi, 0
  br i1 %.not132.i, label %get_dht.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mj = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.mk = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.cd
  %.5118.i = phi ptr [ %i.mj, %bb.cf ], [ %.4117147.i, %bb.cd ] ; 2 uses
  %.5.i74 = phi i64 [ %i.mk, %bb.cf ], [ %.4148.i, %bb.cd ]
  %i.ml = load i8, ptr %.5118.i, align 1, !tbaa !36 ; 2 uses
  %i.mm = zext i8 %i.ml to i32                    ; 2 uses
  %.4117.i = getelementptr inbounds nuw i8, ptr %.5118.i, i64 1
  %.4.i75 = add i64 %.5.i74, -1                   ; 2 uses
  %i.mn = icmp eq i64 %.4.i75, 0
  br i1 %i.mn, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg
  %i.mo = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.mp = tail call i32 %i.mo(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.1.i = icmp eq i32 %i.mp, 0
  br i1 %.not132.1.i, label %get_dht.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mq = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.mr = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.cg
  %.5118.1.i = phi ptr [ %i.mq, %bb.ci ], [ %.4117.i, %bb.cg ] ; 2 uses
  %.5.1.i = phi i64 [ %i.mr, %bb.ci ], [ %.4.i75, %bb.cg ]
  %i.ms = load i8, ptr %.5118.1.i, align 1, !tbaa !36 ; 2 uses
  %i.mt = zext i8 %i.ms to i32                    ; 2 uses
  %i.mu = add nuw nsw i32 %i.mt, %i.mm
  %.4117.1.i = getelementptr inbounds nuw i8, ptr %.5118.1.i, i64 1
  %.4.1.i = add i64 %.5.1.i, -1                   ; 2 uses
  %i.mv = icmp eq i64 %.4.1.i, 0
  br i1 %i.mv, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.mw = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.mx = tail call i32 %i.mw(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.2.i = icmp eq i32 %i.mx, 0
  br i1 %.not132.2.i, label %get_dht.exit.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.my = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.mz = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %.5118.2.i = phi ptr [ %i.my, %bb.cl ], [ %.4117.1.i, %bb.cj ] ; 2 uses
  %.5.2.i = phi i64 [ %i.mz, %bb.cl ], [ %.4.1.i, %bb.cj ]
  %i.na = load i8, ptr %.5118.2.i, align 1, !tbaa !36 ; 2 uses
  %i.nb = zext i8 %i.na to i32                    ; 2 uses
  %i.nc = add nuw nsw i32 %i.mu, %i.nb
  %.4117.2.i = getelementptr inbounds nuw i8, ptr %.5118.2.i, i64 1
  %.4.2.i = add i64 %.5.2.i, -1                   ; 2 uses
  %i.nd = icmp eq i64 %.4.2.i, 0
  br i1 %i.nd, label %bb.cn, label %bb.cp

bb.cn:                                            ; preds = %bb.cm
  %i.ne = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.nf = tail call i32 %i.ne(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.3.i = icmp eq i32 %i.nf, 0
  br i1 %.not132.3.i, label %get_dht.exit.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ng = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.nh = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cm
  %.5118.3.i = phi ptr [ %i.ng, %bb.co ], [ %.4117.2.i, %bb.cm ] ; 2 uses
  %.5.3.i = phi i64 [ %i.nh, %bb.co ], [ %.4.2.i, %bb.cm ]
  %i.ni = load i8, ptr %.5118.3.i, align 1, !tbaa !36 ; 2 uses
  %i.nj = zext i8 %i.ni to i32                    ; 2 uses
  %i.nk = add nuw nsw i32 %i.nc, %i.nj
  %.4117.3.i = getelementptr inbounds nuw i8, ptr %.5118.3.i, i64 1
  %.4.3.i = add i64 %.5.3.i, -1                   ; 2 uses
  %i.nl = icmp eq i64 %.4.3.i, 0
  br i1 %i.nl, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.nm = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.nn = tail call i32 %i.nm(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.4.i = icmp eq i32 %i.nn, 0
  br i1 %.not132.4.i, label %get_dht.exit.thread, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.no = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.np = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cp
  %.5118.4.i = phi ptr [ %i.no, %bb.cr ], [ %.4117.3.i, %bb.cp ] ; 2 uses
  %.5.4.i = phi i64 [ %i.np, %bb.cr ], [ %.4.3.i, %bb.cp ]
  %i.nq = load i8, ptr %.5118.4.i, align 1, !tbaa !36 ; 2 uses
  %i.nr = zext i8 %i.nq to i32                    ; 2 uses
  %i.ns = add nuw nsw i32 %i.nk, %i.nr
  %.4117.4.i = getelementptr inbounds nuw i8, ptr %.5118.4.i, i64 1
  %.4.4.i = add i64 %.5.4.i, -1                   ; 2 uses
  %i.nt = icmp eq i64 %.4.4.i, 0
  br i1 %i.nt, label %bb.ct, label %bb.cv

bb.ct:                                            ; preds = %bb.cs
  %i.nu = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.nv = tail call i32 %i.nu(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.5.i = icmp eq i32 %i.nv, 0
  br i1 %.not132.5.i, label %get_dht.exit.thread, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nw = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.nx = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %.5118.5.i = phi ptr [ %i.nw, %bb.cu ], [ %.4117.4.i, %bb.cs ] ; 2 uses
  %.5.5.i = phi i64 [ %i.nx, %bb.cu ], [ %.4.4.i, %bb.cs ]
  %i.ny = load i8, ptr %.5118.5.i, align 1, !tbaa !36 ; 2 uses
  %i.nz = zext i8 %i.ny to i32                    ; 2 uses
  %i.oa = add nuw nsw i32 %i.ns, %i.nz
  %.4117.5.i = getelementptr inbounds nuw i8, ptr %.5118.5.i, i64 1
  %.4.5.i = add i64 %.5.5.i, -1                   ; 2 uses
  %i.ob = icmp eq i64 %.4.5.i, 0
  br i1 %i.ob, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  %i.oc = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.od = tail call i32 %i.oc(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.6.i = icmp eq i32 %i.od, 0
  br i1 %.not132.6.i, label %get_dht.exit.thread, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.oe = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.of = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cv
  %.5118.6.i = phi ptr [ %i.oe, %bb.cx ], [ %.4117.5.i, %bb.cv ] ; 2 uses
  %.5.6.i = phi i64 [ %i.of, %bb.cx ], [ %.4.5.i, %bb.cv ]
  %i.og = load i8, ptr %.5118.6.i, align 1, !tbaa !36 ; 2 uses
  %i.oh = zext i8 %i.og to i32                    ; 2 uses
  %i.oi = add nuw nsw i32 %i.oa, %i.oh
  %.4117.6.i = getelementptr inbounds nuw i8, ptr %.5118.6.i, i64 1
  %.4.6.i = add i64 %.5.6.i, -1                   ; 2 uses
  %i.oj = icmp eq i64 %.4.6.i, 0
  br i1 %i.oj, label %bb.cz, label %bb.db

bb.cz:                                            ; preds = %bb.cy
  %i.ok = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.ol = tail call i32 %i.ok(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.7.i = icmp eq i32 %i.ol, 0
  br i1 %.not132.7.i, label %get_dht.exit.thread, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.om = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.on = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cy
  %.5118.7.i = phi ptr [ %i.om, %bb.da ], [ %.4117.6.i, %bb.cy ] ; 2 uses
  %.5.7.i = phi i64 [ %i.on, %bb.da ], [ %.4.6.i, %bb.cy ]
  %i.oo = load i8, ptr %.5118.7.i, align 1, !tbaa !36 ; 2 uses
  %i.op = zext i8 %i.oo to i32                    ; 2 uses
  %i.oq = add nuw nsw i32 %i.oi, %i.op
  %.4117.7.i = getelementptr inbounds nuw i8, ptr %.5118.7.i, i64 1
  %.4.7.i = add i64 %.5.7.i, -1                   ; 2 uses
  %i.or = icmp eq i64 %.4.7.i, 0
  br i1 %i.or, label %bb.dc, label %bb.de

bb.dc:                                            ; preds = %bb.db
  %i.os = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.ot = tail call i32 %i.os(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.8.i = icmp eq i32 %i.ot, 0
  br i1 %.not132.8.i, label %get_dht.exit.thread, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ou = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.ov = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.db
  %.5118.8.i = phi ptr [ %i.ou, %bb.dd ], [ %.4117.7.i, %bb.db ] ; 2 uses
  %.5.8.i = phi i64 [ %i.ov, %bb.dd ], [ %.4.7.i, %bb.db ]
  %i.ow = load i8, ptr %.5118.8.i, align 1, !tbaa !36 ; 2 uses
  %i.ox = zext i8 %i.ow to i32                    ; 2 uses
  %i.oy = add nuw nsw i32 %i.oq, %i.ox
  %.4117.8.i = getelementptr inbounds nuw i8, ptr %.5118.8.i, i64 1
  %.4.8.i = add i64 %.5.8.i, -1                   ; 2 uses
  %i.oz = icmp eq i64 %.4.8.i, 0
  br i1 %i.oz, label %bb.df, label %bb.dh

bb.df:                                            ; preds = %bb.de
  %i.pa = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.pb = tail call i32 %i.pa(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.9.i = icmp eq i32 %i.pb, 0
  br i1 %.not132.9.i, label %get_dht.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.pc = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.pd = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.de
  %.5118.9.i = phi ptr [ %i.pc, %bb.dg ], [ %.4117.8.i, %bb.de ] ; 2 uses
  %.5.9.i = phi i64 [ %i.pd, %bb.dg ], [ %.4.8.i, %bb.de ]
  %i.pe = load i8, ptr %.5118.9.i, align 1, !tbaa !36 ; 2 uses
  %i.pf = zext i8 %i.pe to i32                    ; 2 uses
  %i.pg = add nuw nsw i32 %i.oy, %i.pf
  %.4117.9.i = getelementptr inbounds nuw i8, ptr %.5118.9.i, i64 1
  %.4.9.i = add i64 %.5.9.i, -1                   ; 2 uses
  %i.ph = icmp eq i64 %.4.9.i, 0
  br i1 %i.ph, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %bb.dh
  %i.pi = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.pj = tail call i32 %i.pi(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.10.i = icmp eq i32 %i.pj, 0
  br i1 %.not132.10.i, label %get_dht.exit.thread, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pk = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.pl = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.dh
  %.5118.10.i = phi ptr [ %i.pk, %bb.dj ], [ %.4117.9.i, %bb.dh ] ; 2 uses
  %.5.10.i = phi i64 [ %i.pl, %bb.dj ], [ %.4.9.i, %bb.dh ]
  %i.pm = load i8, ptr %.5118.10.i, align 1, !tbaa !36 ; 2 uses
  %i.pn = zext i8 %i.pm to i32                    ; 2 uses
  %i.po = add nuw nsw i32 %i.pg, %i.pn
  %.4117.10.i = getelementptr inbounds nuw i8, ptr %.5118.10.i, i64 1
  %.4.10.i = add i64 %.5.10.i, -1                 ; 2 uses
  %i.pp = icmp eq i64 %.4.10.i, 0
  br i1 %i.pp, label %bb.dl, label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  %i.pq = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.pr = tail call i32 %i.pq(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.11.i = icmp eq i32 %i.pr, 0
  br i1 %.not132.11.i, label %get_dht.exit.thread, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ps = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.pt = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dk
  %.5118.11.i = phi ptr [ %i.ps, %bb.dm ], [ %.4117.10.i, %bb.dk ] ; 2 uses
  %.5.11.i = phi i64 [ %i.pt, %bb.dm ], [ %.4.10.i, %bb.dk ]
  %i.pu = load i8, ptr %.5118.11.i, align 1, !tbaa !36 ; 2 uses
  %i.pv = zext i8 %i.pu to i32                    ; 2 uses
  %i.pw = add nuw nsw i32 %i.po, %i.pv
  %.4117.11.i = getelementptr inbounds nuw i8, ptr %.5118.11.i, i64 1
  %.4.11.i = add i64 %.5.11.i, -1                 ; 2 uses
  %i.px = icmp eq i64 %.4.11.i, 0
  br i1 %i.px, label %bb.do, label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.py = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.pz = tail call i32 %i.py(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.12.i = icmp eq i32 %i.pz, 0
  br i1 %.not132.12.i, label %get_dht.exit.thread, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.qa = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.qb = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.dn
  %.5118.12.i = phi ptr [ %i.qa, %bb.dp ], [ %.4117.11.i, %bb.dn ] ; 2 uses
  %.5.12.i = phi i64 [ %i.qb, %bb.dp ], [ %.4.11.i, %bb.dn ]
  %i.qc = load i8, ptr %.5118.12.i, align 1, !tbaa !36 ; 2 uses
  %i.qd = zext i8 %i.qc to i32                    ; 2 uses
  %i.qe = add nuw nsw i32 %i.pw, %i.qd
  %.4117.12.i = getelementptr inbounds nuw i8, ptr %.5118.12.i, i64 1
  %.4.12.i = add i64 %.5.12.i, -1                 ; 2 uses
  %i.qf = icmp eq i64 %.4.12.i, 0
  br i1 %i.qf, label %bb.dr, label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  %i.qg = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.qh = tail call i32 %i.qg(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.13.i = icmp eq i32 %i.qh, 0
  br i1 %.not132.13.i, label %get_dht.exit.thread, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.qi = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.qj = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dq
  %.5118.13.i = phi ptr [ %i.qi, %bb.ds ], [ %.4117.12.i, %bb.dq ] ; 2 uses
  %.5.13.i = phi i64 [ %i.qj, %bb.ds ], [ %.4.12.i, %bb.dq ]
  %i.qk = load i8, ptr %.5118.13.i, align 1, !tbaa !36 ; 2 uses
  %i.ql = zext i8 %i.qk to i32                    ; 2 uses
  %i.qm = add nuw nsw i32 %i.qe, %i.ql
  %.4117.13.i = getelementptr inbounds nuw i8, ptr %.5118.13.i, i64 1
  %.4.13.i = add i64 %.5.13.i, -1                 ; 2 uses
  %i.qn = icmp eq i64 %.4.13.i, 0
  br i1 %i.qn, label %bb.du, label %bb.dw

bb.du:                                            ; preds = %bb.dt
  %i.qo = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.qp = tail call i32 %i.qo(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.14.i = icmp eq i32 %i.qp, 0
  br i1 %.not132.14.i, label %get_dht.exit.thread, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.qq = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.qr = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dt
  %.5118.14.i = phi ptr [ %i.qq, %bb.dv ], [ %.4117.13.i, %bb.dt ] ; 2 uses
  %.5.14.i = phi i64 [ %i.qr, %bb.dv ], [ %.4.13.i, %bb.dt ]
  %i.qs = load i8, ptr %.5118.14.i, align 1, !tbaa !36 ; 2 uses
  %i.qt = zext i8 %i.qs to i32                    ; 2 uses
  %i.qu = add nuw nsw i32 %i.qm, %i.qt
  %.4117.14.i = getelementptr inbounds nuw i8, ptr %.5118.14.i, i64 1
  %.4.14.i = add i64 %.5.14.i, -1                 ; 2 uses
  %i.qv = icmp eq i64 %.4.14.i, 0
  br i1 %i.qv, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.qw = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.qx = tail call i32 %i.qw(ptr noundef nonnull %0) #5, !inline_history !77
  %.not132.15.i = icmp eq i32 %i.qx, 0
  br i1 %.not132.15.i, label %get_dht.exit.thread, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.qy = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.qz = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dw
  %.5118.15.i = phi ptr [ %i.qy, %bb.dy ], [ %.4117.14.i, %bb.dw ] ; 2 uses
  %.5.15.i = phi i64 [ %i.qz, %bb.dy ], [ %.4.14.i, %bb.dw ]
  %i.ra = load i8, ptr %.5118.15.i, align 1, !tbaa !36 ; 2 uses
  %i.rb = zext i8 %i.ra to i32                    ; 2 uses
  %i.rc = add nuw nsw i32 %i.qu, %i.rb            ; 3 uses
  %.4117.15.i = getelementptr inbounds nuw i8, ptr %.5118.15.i, i64 1 ; 2 uses
  %.4.15.i = add i64 %.5.15.i, -1                 ; 2 uses
  %i.rd = add nsw i64 %.0111159.i, -17            ; 2 uses
  %i.re = load ptr, ptr %0, align 8, !tbaa !32    ; 10 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 44
  store i32 %i.mm, ptr %i.rf, align 4, !tbaa !7
  %i.rg = getelementptr inbounds nuw i8, ptr %i.re, i64 48
  store i32 %i.mt, ptr %i.rg, align 4, !tbaa !7
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 52
  store i32 %i.nb, ptr %i.rh, align 4, !tbaa !7
  %i.ri = getelementptr inbounds nuw i8, ptr %i.re, i64 56
  store i32 %i.nj, ptr %i.ri, align 4, !tbaa !7
  %i.rj = getelementptr inbounds nuw i8, ptr %i.re, i64 60
  store i32 %i.nr, ptr %i.rj, align 4, !tbaa !7
  %i.rk = getelementptr inbounds nuw i8, ptr %i.re, i64 64
  store i32 %i.nz, ptr %i.rk, align 4, !tbaa !7
  %i.rl = getelementptr inbounds nuw i8, ptr %i.re, i64 68
  store i32 %i.oh, ptr %i.rl, align 4, !tbaa !7
  %i.rm = getelementptr inbounds nuw i8, ptr %i.re, i64 72
  store i32 %i.op, ptr %i.rm, align 4, !tbaa !7
  %i.rn = getelementptr inbounds nuw i8, ptr %i.re, i64 40
  store i32 85, ptr %i.rn, align 8, !tbaa !35
  %i.ro = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !37
  tail call void %i.rp(ptr noundef nonnull %0, i32 noundef 2) #5, !inline_history !77
  %i.rq = load ptr, ptr %0, align 8, !tbaa !32    ; 10 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 44
  store i32 %i.ox, ptr %i.rr, align 4, !tbaa !7
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rq, i64 48
  store i32 %i.pf, ptr %i.rs, align 4, !tbaa !7
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rq, i64 52
  store i32 %i.pn, ptr %i.rt, align 4, !tbaa !7
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 56
  store i32 %i.pv, ptr %i.ru, align 4, !tbaa !7
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rq, i64 60
  store i32 %i.qd, ptr %i.rv, align 4, !tbaa !7
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rq, i64 64
  store i32 %i.ql, ptr %i.rw, align 4, !tbaa !7
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rq, i64 68
  store i32 %i.qt, ptr %i.rx, align 4, !tbaa !7
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rq, i64 72
  store i32 %i.rb, ptr %i.ry, align 4, !tbaa !7
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rq, i64 40
  store i32 85, ptr %i.rz, align 8, !tbaa !35
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !37
  tail call void %i.sb(ptr noundef nonnull %0, i32 noundef 2) #5, !inline_history !77
  %i.sc = icmp samesign ugt i32 %i.rc, 256
  %i.sd = zext nneg i32 %i.rc to i64              ; 3 uses
  %i.se = icmp slt i64 %i.rd, %i.sd
  %or.cond.i76 = select i1 %i.sc, i1 true, i1 %i.se
  br i1 %or.cond.i76, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.sf = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 40
  store i32 28, ptr %i.sg, align 8, !tbaa !35
  %i.sh = load ptr, ptr %i.sf, align 8, !tbaa !56
  tail call void %i.sh(ptr noundef nonnull %0) #5, !inline_history !77
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  %.not165.i77 = icmp eq i32 %i.rc, 0
  br i1 %.not165.i77, label %._crit_edge.i82, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %bb.eb, %bb.ee
  %indvars.iv.i79 = phi i64 [ %indvars.iv.next.i81, %bb.ee ], [ 0, %bb.eb ] ; 2 uses
  %.6155.i = phi i64 [ %i.sn, %bb.ee ], [ %.4.15.i, %bb.eb ] ; 2 uses
  %.6119154.i = phi ptr [ %i.so, %bb.ee ], [ %.4117.15.i, %bb.eb ]
  %i.si = icmp eq i64 %.6155.i, 0
  br i1 %i.si, label %bb.ec, label %bb.ee

bb.ec:                                            ; preds = %.lr.ph.i78
  %i.sj = load ptr, ptr %i.ls, align 8, !tbaa !42
  %i.sk = tail call i32 %i.sj(ptr noundef nonnull %0) #5, !inline_history !77
  %.not131.i = icmp eq i32 %i.sk, 0
  br i1 %.not131.i, label %get_dht.exit.thread, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.sl = load ptr, ptr %i.ks, align 8, !tbaa !40
  %i.sm = load i64, ptr %i.kt, align 8, !tbaa !41
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %.lr.ph.i78
  %.7120.i = phi ptr [ %i.sl, %bb.ed ], [ %.6119154.i, %.lr.ph.i78 ] ; 2 uses
  %.7.i80 = phi i64 [ %i.sm, %bb.ed ], [ %.6155.i, %.lr.ph.i78 ]
  %i.sn = add i64 %.7.i80, -1                     ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %.7120.i, i64 1 ; 2 uses
  %i.sp = load i8, ptr %.7120.i, align 1, !tbaa !36
  %i.sq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i79
  store i8 %i.sp, ptr %i.sq, align 1, !tbaa !36
  %indvars.iv.next.i81 = add nuw nsw i64 %indvars.iv.i79, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i81, %i.sd
  br i1 %exitcond.not, label %._crit_edge.i82, label %.lr.ph.i78, !llvm.loop !78

._crit_edge.i82:                                  ; preds = %bb.ee, %bb.eb
  %.6119.lcssa.i = phi ptr [ %.4117.15.i, %bb.eb ], [ %i.so, %bb.ee ] ; 2 uses
  %.6.lcssa.i = phi i64 [ %.4.15.i, %bb.eb ], [ %i.sn, %bb.ee ] ; 2 uses
  %i.sr = sub nsw i64 %i.rd, %i.sd                ; 2 uses
  %i.ss = and i32 %i.lz, 16
  %.not130.i = icmp eq i32 %i.ss, 0               ; 2 uses
  %i.st = add nsw i32 %i.lz, -16                  ; 2 uses
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.su
  %i.sw = zext i8 %i.ly to i64
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.sw
  %.0123.i = select i1 %.not130.i, i32 %i.lz, i32 %i.st ; 2 uses
  %.0121.i = select i1 %.not130.i, ptr %i.sx, ptr %i.sv ; 3 uses
  %i.sy = icmp sgt i32 %.0123.i, 3
  br i1 %i.sy, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %._crit_edge.i82
  %i.sz = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 40
  store i32 29, ptr %i.ta, align 8, !tbaa !35
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 44
  store i32 %.0123.i, ptr %i.tb, align 4, !tbaa !36
  %i.tc = load ptr, ptr %0, align 8, !tbaa !32
  %i.td = load ptr, ptr %i.tc, align 8, !tbaa !56
  tail call void %i.td(ptr noundef nonnull %0) #5, !inline_history !77
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %._crit_edge.i82
  %i.te = load ptr, ptr %.0121.i, align 8, !tbaa !51 ; 2 uses
  %i.tf = icmp eq ptr %i.te, null
  br i1 %i.tf, label %bb.eh, label %bb.ei

bb.eh:                                            ; preds = %bb.eg
  %i.tg = tail call ptr @jpeg_alloc_huff_table(ptr noundef nonnull %0) #5 ; 2 uses
  store ptr %i.tg, ptr %.0121.i, align 8, !tbaa !51
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.th = phi ptr [ %i.tg, %bb.eh ], [ %i.te, %bb.eg ] ; 17 uses
  store i8 0, ptr %i.th, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 1
  store i8 %i.ml, ptr %.sroa.4.0..sroa_idx.i, align 1
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 2
  store i8 %i.ms, ptr %.sroa.6.0..sroa_idx.i, align 2
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 3
  store i8 %i.na, ptr %.sroa.8.0..sroa_idx.i, align 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 4
  store i8 %i.ni, ptr %.sroa.10.0..sroa_idx.i, align 4
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 5
  store i8 %i.nq, ptr %.sroa.12.0..sroa_idx.i, align 1
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 6
  store i8 %i.ny, ptr %.sroa.14.0..sroa_idx.i, align 2
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 7
  store i8 %i.og, ptr %.sroa.16.0..sroa_idx.i, align 1
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 8
  store i8 %i.oo, ptr %.sroa.18.0..sroa_idx.i, align 4
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 9
  store i8 %i.ow, ptr %.sroa.20.0..sroa_idx.i, align 1
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 10
  store i8 %i.pe, ptr %.sroa.22.0..sroa_idx.i, align 2
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 11
  store i8 %i.pm, ptr %.sroa.24.0..sroa_idx.i, align 1
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 12
  store i8 %i.pu, ptr %.sroa.26.0..sroa_idx.i, align 4
  %.sroa.28.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 13
  store i8 %i.qc, ptr %.sroa.28.0..sroa_idx.i, align 1
  %.sroa.30.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 14
  store i8 %i.qk, ptr %.sroa.30.0..sroa_idx.i, align 2
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 15
  store i8 %i.qs, ptr %.sroa.32.0..sroa_idx.i, align 1
  %.sroa.34.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.th, i64 16
  store i8 %i.ra, ptr %.sroa.34.0..sroa_idx.i, align 4
  %i.ti = load ptr, ptr %.0121.i, align 8, !tbaa !51
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.tj, ptr noundef nonnull align 16 dereferenceable(256) %i.a, i64 256, i1 false)
  %i.tk = icmp sgt i64 %i.sr, 0
  br i1 %i.tk, label %bb.ca, label %get_dht.exit, !llvm.loop !79

get_dht.exit.thread:                              ; preds = %bb.bu, %bb.bx, %bb.dx, %bb.du, %bb.dr, %bb.do, %bb.dl, %bb.di, %bb.df, %bb.dc, %bb.cz, %bb.cw, %bb.ct, %bb.cq, %bb.cn, %bb.ck, %bb.ch, %bb.ce, %bb.cb, %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %first_marker.exit.thread

get_dht.exit:                                     ; preds = %bb.ei, %bb.bz
  %.2115.lcssa.i = phi ptr [ %i.lm, %bb.bz ], [ %.6119.lcssa.i, %bb.ei ]
  %.2.lcssa.i70 = phi i64 [ %i.ll, %bb.bz ], [ %.6.lcssa.i, %bb.ei ]
  store ptr %.2115.lcssa.i, ptr %i.ks, align 8, !tbaa !40
  store i64 %.2.lcssa.i70, ptr %i.kt, align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.gf

bb.ej:                                            ; preds = %bb.m
  %i.tl = load ptr, ptr %i.d, align 8, !tbaa !38  ; 11 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8 ; 8 uses
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !41 ; 2 uses
  %i.to = icmp eq i64 %i.tn, 0
  br i1 %i.to, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !42
  %i.tr = tail call i32 %i.tq(ptr noundef nonnull %0) #5, !inline_history !80
  %.not.i97 = icmp eq i32 %i.tr, 0
  br i1 %.not.i97, label %first_marker.exit.thread, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.ts = load i64, ptr %i.tm, align 8, !tbaa !41
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ej
  %.0115.i = phi i64 [ %i.ts, %bb.el ], [ %i.tn, %bb.ej ]
  %.0116.i = load ptr, ptr %i.tl, align 8, !tbaa !40 ; 2 uses
  %i.tt = add i64 %.0115.i, -1                    ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0116.i, i64 1
  %i.tv = load i8, ptr %.0116.i, align 1, !tbaa !36
  %i.tw = zext i8 %i.tv to i64
  %i.tx = shl nuw nsw i64 %i.tw, 8
  %i.ty = icmp eq i64 %i.tt, 0
  br i1 %i.ty, label %bb.en, label %bb.ep

bb.en:                                            ; preds = %bb.em
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tl, i64 24
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !42
  %i.ub = tail call i32 %i.ua(ptr noundef nonnull %0) #5, !inline_history !80
  %.not134.i = icmp eq i32 %i.ub, 0
  br i1 %.not134.i, label %first_marker.exit.thread, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.uc = load ptr, ptr %i.tl, align 8, !tbaa !40
  %i.ud = load i64, ptr %i.tm, align 8, !tbaa !41
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.em
  %.1117.i = phi ptr [ %i.uc, %bb.eo ], [ %i.tu, %bb.em ] ; 2 uses
  %.1.i84 = phi i64 [ %i.ud, %bb.eo ], [ %i.tt, %bb.em ]
  %i.ue = add i64 %.1.i84, -1                     ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.1117.i, i64 1 ; 2 uses
  %i.ug = load i8, ptr %.1117.i, align 1, !tbaa !36
  %i.uh = zext i8 %i.ug to i64
  %i.ui = or disjoint i64 %i.tx, %i.uh            ; 2 uses
  %i.uj = icmp samesign ugt i64 %i.ui, 2
  br i1 %i.uj, label %.lr.ph.i88, label %get_dqt.exit

.lr.ph.i88:                                       ; preds = %bb.ep
  %i.uk = add nsw i64 %i.ui, -2
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tl, i64 24 ; 4 uses
  br label %bb.eq

bb.eq:                                            ; preds = %.loopexit.i96, %.lr.ph.i88
  %.2160.i = phi i64 [ %i.ue, %.lr.ph.i88 ], [ %.us-phi.i, %.loopexit.i96 ] ; 2 uses
  %.2118159.i = phi ptr [ %i.uf, %.lr.ph.i88 ], [ %.us-phi156.i, %.loopexit.i96 ]
  %.0128158.i = phi i64 [ %i.uk, %.lr.ph.i88 ], [ %spec.select.i, %.loopexit.i96 ]
  %i.um = icmp eq i64 %.2160.i, 0
  br i1 %i.um, label %bb.er, label %bb.et

bb.er:                                            ; preds = %bb.eq
  %i.un = load ptr, ptr %i.ul, align 8, !tbaa !42
  %i.uo = tail call i32 %i.un(ptr noundef nonnull %0) #5, !inline_history !80
  %.not135.i = icmp eq i32 %i.uo, 0
  br i1 %.not135.i, label %first_marker.exit.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.up = load ptr, ptr %i.tl, align 8, !tbaa !40
  %i.uq = load i64, ptr %i.tm, align 8, !tbaa !41
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.eq
  %.3119.i = phi ptr [ %i.up, %bb.es ], [ %.2118159.i, %bb.eq ] ; 2 uses
  %.3.i89 = phi i64 [ %i.uq, %bb.es ], [ %.2160.i, %bb.eq ]
  %i.ur = load i8, ptr %.3119.i, align 1, !tbaa !36
  %i.us = zext i8 %i.ur to i32                    ; 2 uses
  %i.ut = lshr i32 %i.us, 4                       ; 2 uses
  %i.uu = and i32 %i.us, 15                       ; 4 uses
  %i.uv = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 40
  store i32 80, ptr %i.uw, align 8, !tbaa !35
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uv, i64 44
  store i32 %i.uu, ptr %i.ux, align 4, !tbaa !36
  %i.uy = load ptr, ptr %0, align 8, !tbaa !32
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 48
  store i32 %i.ut, ptr %i.uz, align 4, !tbaa !36
  %i.va = load ptr, ptr %0, align 8, !tbaa !32
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 8
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !37
  tail call void %i.vc(ptr noundef nonnull %0, i32 noundef 1) #5, !inline_history !80
  %i.vd = icmp samesign ugt i32 %i.uu, 3
  br i1 %i.vd, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.ve = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 40
  store i32 30, ptr %i.vf, align 8, !tbaa !35
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 44
  store i32 %i.uu, ptr %i.vg, align 4, !tbaa !36
  %i.vh = load ptr, ptr %0, align 8, !tbaa !32
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !56
  tail call void %i.vi(ptr noundef nonnull %0) #5, !inline_history !80
  br label %bb.ev

end_hunk_0
