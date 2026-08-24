Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/dpm?download=true
inline.NumInlined: 424
inline.NumDeleted: 38
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ompi_dpm_connect_accept:bb.a
  %i.ke = load volatile i64, ptr %i.hc, align 8, !tbaa !87
  %i.kf = icmp eq i64 %i.ke, 0
  br i1 %i.kf, label %opal_list_remove_first.exit419.thread, label %.lr.ph785

.lr.ph785:                                        ; preds = %.preheader741
  %i.kg = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  br label %bb.bn

bb.bn:                                            ; preds = %.lr.ph785, %bb.br
  %i.kh = load volatile i64, ptr %i.hc, align 8, !tbaa !87
  %i.ki = add i64 %i.kh, -1
  store volatile i64 %i.ki, ptr %i.hc, align 8, !tbaa !87
  %i.kj = load volatile ptr, ptr %i.kg, align 8, !tbaa !90 ; 6 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load volatile ptr, ptr %i.kk, align 8, !tbaa !83
  %i.km = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %i.kn = load volatile ptr, ptr %i.km, align 8, !tbaa !86
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  store volatile ptr %i.kl, ptr %i.ko, align 8, !tbaa !83
  %i.kp = load volatile ptr, ptr %i.km, align 8, !tbaa !86
  store volatile ptr %i.kp, ptr %i.kg, align 8, !tbaa !90
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kj, i64 8 ; 4 uses
  %i.kr = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %bb.bo, label %bb.bp, !prof !59

bb.bo:                                            ; preds = %bb.bn
  %i.kt = atomicrmw volatile add ptr %i.kq, i32 -1 monotonic, align 4
  %i.ku = add i32 %i.kt, -1
  br label %opal_thread_add_fetch_32.exit421

bb.bp:                                            ; preds = %bb.bn
  %i.kv = load volatile i32, ptr %i.kq, align 8, !tbaa !8
  %i.kw = add nsw i32 %i.kv, -1
  store volatile i32 %i.kw, ptr %i.kq, align 8, !tbaa !8
  %i.kx = load volatile i32, ptr %i.kq, align 8, !tbaa !8
  br label %opal_thread_add_fetch_32.exit421

opal_thread_add_fetch_32.exit421:                 ; preds = %bb.bo, %bb.bp
  %.0.i420 = phi i32 [ %i.ku, %bb.bo ], [ %i.kx, %bb.bp ]
  %i.ky = icmp eq i32 %.0.i420, 0
  br i1 %i.ky, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %opal_thread_add_fetch_32.exit421
  %i.kz = load ptr, ptr %i.kj, align 8, !tbaa !75
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !91 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !78 ; 2 uses
  %.not6.i422 = icmp eq ptr %i.lc, null
  br i1 %.not6.i422, label %opal_obj_run_destructors.exit426, label %.lr.ph.i423

.lr.ph.i423:                                      ; preds = %bb.bq, %.lr.ph.i423
  %i.ld = phi ptr [ %i.lf, %.lr.ph.i423 ], [ %i.lc, %bb.bq ]
  %.07.i424 = phi ptr [ %i.le, %.lr.ph.i423 ], [ %i.lb, %bb.bq ]
  call void %i.ld(ptr noundef nonnull %i.kj) #22, !inline_history !92
  %i.le = getelementptr inbounds nuw i8, ptr %.07.i424, i64 8 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !78 ; 2 uses
  %.not.i425 = icmp eq ptr %i.lf, null
  br i1 %.not.i425, label %opal_obj_run_destructors.exit426, label %.lr.ph.i423, !llvm.loop !93

opal_obj_run_destructors.exit426:                 ; preds = %.lr.ph.i423, %bb.bq
  call void @free(ptr noundef nonnull %i.kj) #22
  br label %bb.br

bb.br:                                            ; preds = %opal_obj_run_destructors.exit426, %opal_thread_add_fetch_32.exit421
  %i.lg = load volatile i64, ptr %i.hc, align 8, !tbaa !87
  %i.lh = icmp eq i64 %i.lg, 0
  br i1 %i.lh, label %opal_list_remove_first.exit419.thread, label %bb.bn, !llvm.loop !95

opal_list_remove_first.exit419.thread:            ; preds = %bb.br, %.preheader741, %opal_obj_run_destructors.exit417
  %i.li = load ptr, ptr %8, align 8, !tbaa !75
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 48
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !91 ; 2 uses
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !78 ; 2 uses
  %.not6.i427 = icmp eq ptr %i.ll, null
  br i1 %.not6.i427, label %opal_obj_run_destructors.exit431, label %.lr.ph.i428

.lr.ph.i428:                                      ; preds = %opal_list_remove_first.exit419.thread, %.lr.ph.i428
  %i.lm = phi ptr [ %i.lo, %.lr.ph.i428 ], [ %i.ll, %opal_list_remove_first.exit419.thread ]
  %.07.i429 = phi ptr [ %i.ln, %.lr.ph.i428 ], [ %i.lk, %opal_list_remove_first.exit419.thread ]
  call void %i.lm(ptr noundef nonnull %8) #22, !inline_history !92
  %i.ln = getelementptr inbounds nuw i8, ptr %.07.i429, i64 8 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !78 ; 2 uses
  %.not.i430 = icmp eq ptr %i.lo, null
  br i1 %.not.i430, label %opal_obj_run_destructors.exit431, label %.lr.ph.i428, !llvm.loop !93

opal_obj_run_destructors.exit431:                 ; preds = %.lr.ph.i428, %opal_list_remove_first.exit419.thread
  %i.lp = load volatile i32, ptr %i.ed, align 8, !tbaa !76
  %i.lq = icmp eq i32 %i.lp, 1
  br i1 %i.lq, label %.preheader740, label %opal_list_remove_first.exit433.thread

.preheader740:                                    ; preds = %opal_obj_run_destructors.exit431
  %i.lr = load volatile i64, ptr %i.gv, align 8, !tbaa !87
  %i.ls = icmp eq i64 %i.lr, 0
  br i1 %i.ls, label %opal_list_remove_first.exit433.thread, label %.lr.ph786

.lr.ph786:                                        ; preds = %.preheader740
  %i.lt = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph786, %bb.bw
  %i.lu = load volatile i64, ptr %i.gv, align 8, !tbaa !87
  %i.lv = add i64 %i.lu, -1
  store volatile i64 %i.lv, ptr %i.gv, align 8, !tbaa !87
  %i.lw = load volatile ptr, ptr %i.lt, align 8, !tbaa !90 ; 6 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load volatile ptr, ptr %i.lx, align 8, !tbaa !83
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  %i.ma = load volatile ptr, ptr %i.lz, align 8, !tbaa !86
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  store volatile ptr %i.ly, ptr %i.mb, align 8, !tbaa !83
  %i.mc = load volatile ptr, ptr %i.lz, align 8, !tbaa !86
  store volatile ptr %i.mc, ptr %i.lt, align 8, !tbaa !90
  %i.md = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 4 uses
  %i.me = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.mf = trunc nuw i8 %i.me to i1
  br i1 %i.mf, label %bb.bt, label %bb.bu, !prof !59

bb.bt:                                            ; preds = %bb.bs
  %i.mg = atomicrmw volatile add ptr %i.md, i32 -1 monotonic, align 4
  %i.mh = add i32 %i.mg, -1
  br label %opal_thread_add_fetch_32.exit435

bb.bu:                                            ; preds = %bb.bs
  %i.mi = load volatile i32, ptr %i.md, align 8, !tbaa !8
  %i.mj = add nsw i32 %i.mi, -1
  store volatile i32 %i.mj, ptr %i.md, align 8, !tbaa !8
  %i.mk = load volatile i32, ptr %i.md, align 8, !tbaa !8
  br label %opal_thread_add_fetch_32.exit435

opal_thread_add_fetch_32.exit435:                 ; preds = %bb.bt, %bb.bu
  %.0.i434 = phi i32 [ %i.mh, %bb.bt ], [ %i.mk, %bb.bu ]
  %i.ml = icmp eq i32 %.0.i434, 0
  br i1 %i.ml, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %opal_thread_add_fetch_32.exit435
  %i.mm = load ptr, ptr %i.lw, align 8, !tbaa !75
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 48
  %i.mo = load ptr, ptr %i.mn, align 8, !tbaa !91 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !78 ; 2 uses
  %.not6.i436 = icmp eq ptr %i.mp, null
  br i1 %.not6.i436, label %opal_obj_run_destructors.exit440, label %.lr.ph.i437

.lr.ph.i437:                                      ; preds = %bb.bv, %.lr.ph.i437
  %i.mq = phi ptr [ %i.ms, %.lr.ph.i437 ], [ %i.mp, %bb.bv ]
  %.07.i438 = phi ptr [ %i.mr, %.lr.ph.i437 ], [ %i.mo, %bb.bv ]
  call void %i.mq(ptr noundef nonnull %i.lw) #22, !inline_history !92
  %i.mr = getelementptr inbounds nuw i8, ptr %.07.i438, i64 8 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !78 ; 2 uses
  %.not.i439 = icmp eq ptr %i.ms, null
  br i1 %.not.i439, label %opal_obj_run_destructors.exit440, label %.lr.ph.i437, !llvm.loop !93

opal_obj_run_destructors.exit440:                 ; preds = %.lr.ph.i437, %bb.bv
  call void @free(ptr noundef nonnull %i.lw) #22
  br label %bb.bw

bb.bw:                                            ; preds = %opal_obj_run_destructors.exit440, %opal_thread_add_fetch_32.exit435
  %i.mt = load volatile i64, ptr %i.gv, align 8, !tbaa !87
  %i.mu = icmp eq i64 %i.mt, 0
  br i1 %i.mu, label %opal_list_remove_first.exit433.thread, label %bb.bs, !llvm.loop !96

opal_list_remove_first.exit433.thread:            ; preds = %bb.bw, %.preheader740, %opal_obj_run_destructors.exit431
  %i.mv = load ptr, ptr %7, align 8, !tbaa !75
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 48
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !91 ; 2 uses
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !78 ; 2 uses
  %.not6.i441 = icmp eq ptr %i.my, null
  br i1 %.not6.i441, label %opal_obj_run_destructors.exit445.thread, label %.lr.ph.i442

.lr.ph.i442:                                      ; preds = %opal_list_remove_first.exit433.thread, %.lr.ph.i442
  %i.mz = phi ptr [ %i.nb, %.lr.ph.i442 ], [ %i.my, %opal_list_remove_first.exit433.thread ]
  %.07.i443 = phi ptr [ %i.na, %.lr.ph.i442 ], [ %i.mx, %opal_list_remove_first.exit433.thread ]
  call void %i.mz(ptr noundef nonnull %7) #22, !inline_history !92
  %i.na = getelementptr inbounds nuw i8, ptr %.07.i443, i64 8 ; 2 uses
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !78 ; 2 uses
  %.not.i444 = icmp eq ptr %i.nb, null
  br i1 %.not.i444, label %opal_obj_run_destructors.exit445.thread, label %.lr.ph.i442, !llvm.loop !93

bb.bx:                                            ; preds = %bb.bg
  %i.nc = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.il, ptr noundef null, i32 noundef 10) #22
  %i.nd = trunc i64 %i.nc to i32                  ; 2 uses
  %i.ne = icmp sgt i32 %i.nd, 0
  br i1 %i.ne, label %.lr.ph772, label %.loopexit751

.lr.ph772:                                        ; preds = %bb.bx, %opal_obj_new.exit501
  %.0286770 = phi i32 [ %i.tf, %opal_obj_new.exit501 ], [ 0, %bb.bx ] ; 2 uses
  store i32 %.0286770, ptr %i.gs, align 4, !tbaa !53
  %i.nf = call i32 @opal_pmix_convert_nspace(ptr noundef nonnull %5, ptr noundef nonnull %13) #22 ; 4 uses
  %cond = icmp eq i32 %i.nf, 0
  br i1 %cond, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph772
  %i.ng = load i32, ptr %i.gs, align 4, !tbaa !53 ; 2 uses
  %cond981 = icmp eq i32 %i.ng, -4
  %spec.select982 = select i1 %cond981, i32 -1, i32 %i.ng
  store i32 %spec.select982, ptr %i.gw, align 4, !tbaa !52
  %i.nh = call ptr @ompi_proc_find_and_add(ptr noundef nonnull %5, ptr noundef nonnull %i.g) #22 ; 2 uses
  %i.ni = load i8, ptr %i.g, align 1, !tbaa !60, !range !61, !noundef !62
  %i.nj = trunc nuw i8 %i.ni to i1
  %.pre849.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 56), align 8, !tbaa !81 ; 2 uses
  %.pre853 = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8 ; 2 uses
  %.pre851 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 32), align 8, !tbaa !73 ; 2 uses
  br i1 %i.nj, label %bb.cp, label %bb.ct

bb.bz:                                            ; preds = %.lr.ph772
  %i.nk = call ptr @opal_strerror(i32 noundef %i.nf) #22
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef %i.nk, ptr noundef nonnull @.str.6, i32 noundef 337) #22
  %i.nl = load ptr, ptr %i.c, align 8, !tbaa !9
  call void @opal_argv_free(ptr noundef %i.nl) #22
  %i.nm = load volatile i32, ptr %i.gc, align 8, !tbaa !76
  %i.nn = icmp eq i32 %i.nm, 1
  br i1 %i.nn, label %.preheader746, label %opal_list_remove_first.exit447.thread

.preheader746:                                    ; preds = %bb.bz
  %i.no = load volatile i64, ptr %i.gz, align 8, !tbaa !87
  %i.np = icmp eq i64 %i.no, 0
  br i1 %i.np, label %opal_list_remove_first.exit447.thread, label %.lr.ph781

.lr.ph781:                                        ; preds = %.preheader746
  %i.nq = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph781, %bb.ce
  %i.nr = load volatile i64, ptr %i.gz, align 8, !tbaa !87
  %i.ns = add i64 %i.nr, -1
  store volatile i64 %i.ns, ptr %i.gz, align 8, !tbaa !87
  %i.nt = load volatile ptr, ptr %i.nq, align 8, !tbaa !90 ; 6 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nv = load volatile ptr, ptr %i.nu, align 8, !tbaa !83
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 16 ; 2 uses
  %i.nx = load volatile ptr, ptr %i.nw, align 8, !tbaa !86
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  store volatile ptr %i.nv, ptr %i.ny, align 8, !tbaa !83
  %i.nz = load volatile ptr, ptr %i.nw, align 8, !tbaa !86
  store volatile ptr %i.nz, ptr %i.nq, align 8, !tbaa !90
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nt, i64 8 ; 4 uses
  %i.ob = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.oc = trunc nuw i8 %i.ob to i1
  br i1 %i.oc, label %bb.cb, label %bb.cc, !prof !59

bb.cb:                                            ; preds = %bb.ca
  %i.od = atomicrmw volatile add ptr %i.oa, i32 -1 monotonic, align 4
  %i.oe = add i32 %i.od, -1
  br label %opal_thread_add_fetch_32.exit449

bb.cc:                                            ; preds = %bb.ca
  %i.of = load volatile i32, ptr %i.oa, align 8, !tbaa !8
  %i.og = add nsw i32 %i.of, -1
  store volatile i32 %i.og, ptr %i.oa, align 8, !tbaa !8
  %i.oh = load volatile i32, ptr %i.oa, align 8, !tbaa !8
  br label %opal_thread_add_fetch_32.exit449

opal_thread_add_fetch_32.exit449:                 ; preds = %bb.cb, %bb.cc
  %.0.i448 = phi i32 [ %i.oe, %bb.cb ], [ %i.oh, %bb.cc ]
  %i.oi = icmp eq i32 %.0.i448, 0
  br i1 %i.oi, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %opal_thread_add_fetch_32.exit449
  %i.oj = load ptr, ptr %i.nt, align 8, !tbaa !75
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 48
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !91 ; 2 uses
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !78 ; 2 uses
  %.not6.i450 = icmp eq ptr %i.om, null
  br i1 %.not6.i450, label %opal_obj_run_destructors.exit454, label %.lr.ph.i451

.lr.ph.i451:                                      ; preds = %bb.cd, %.lr.ph.i451
  %i.on = phi ptr [ %i.op, %.lr.ph.i451 ], [ %i.om, %bb.cd ]
  %.07.i452 = phi ptr [ %i.oo, %.lr.ph.i451 ], [ %i.ol, %bb.cd ]
  call void %i.on(ptr noundef nonnull %i.nt) #22, !inline_history !92
  %i.oo = getelementptr inbounds nuw i8, ptr %.07.i452, i64 8 ; 2 uses
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !78 ; 2 uses
  %.not.i453 = icmp eq ptr %i.op, null
  br i1 %.not.i453, label %opal_obj_run_destructors.exit454, label %.lr.ph.i451, !llvm.loop !93

opal_obj_run_destructors.exit454:                 ; preds = %.lr.ph.i451, %bb.cd
  call void @free(ptr noundef nonnull %i.nt) #22
  br label %bb.ce

bb.ce:                                            ; preds = %opal_obj_run_destructors.exit454, %opal_thread_add_fetch_32.exit449
  %i.oq = load volatile i64, ptr %i.gz, align 8, !tbaa !87
  %i.or = icmp eq i64 %i.oq, 0
  br i1 %i.or, label %opal_list_remove_first.exit447.thread, label %bb.ca, !llvm.loop !97

opal_list_remove_first.exit447.thread:            ; preds = %bb.ce, %.preheader746, %bb.bz
  %i.os = load ptr, ptr %6, align 8, !tbaa !75
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 48
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !91 ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !78 ; 2 uses
  %.not6.i455 = icmp eq ptr %i.ov, null
  br i1 %.not6.i455, label %opal_obj_run_destructors.exit459, label %.lr.ph.i456

.lr.ph.i456:                                      ; preds = %opal_list_remove_first.exit447.thread, %.lr.ph.i456
  %i.ow = phi ptr [ %i.oy, %.lr.ph.i456 ], [ %i.ov, %opal_list_remove_first.exit447.thread ]
  %.07.i457 = phi ptr [ %i.ox, %.lr.ph.i456 ], [ %i.ou, %opal_list_remove_first.exit447.thread ]
  call void %i.ow(ptr noundef nonnull %6) #22, !inline_history !92
  %i.ox = getelementptr inbounds nuw i8, ptr %.07.i457, i64 8 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !78 ; 2 uses
  %.not.i458 = icmp eq ptr %i.oy, null
  br i1 %.not.i458, label %opal_obj_run_destructors.exit459, label %.lr.ph.i456, !llvm.loop !93

opal_obj_run_destructors.exit459:                 ; preds = %.lr.ph.i456, %opal_list_remove_first.exit447.thread
  %i.oz = load volatile i32, ptr %i.gk, align 8, !tbaa !76
  %i.pa = icmp eq i32 %i.oz, 1
  br i1 %i.pa, label %.preheader745, label %opal_list_remove_first.exit461.thread

.preheader745:                                    ; preds = %opal_obj_run_destructors.exit459
  %i.pb = load volatile i64, ptr %i.hc, align 8, !tbaa !87
  %i.pc = icmp eq i64 %i.pb, 0
  br i1 %i.pc, label %opal_list_remove_first.exit461.thread, label %.lr.ph782

.lr.ph782:                                        ; preds = %.preheader745
  %i.pd = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %.lr.ph782, %bb.cj
  %i.pe = load volatile i64, ptr %i.hc, align 8, !tbaa !87
  %i.pf = add i64 %i.pe, -1
  store volatile i64 %i.pf, ptr %i.hc, align 8, !tbaa !87
  %i.pg = load volatile ptr, ptr %i.pd, align 8, !tbaa !90 ; 6 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  %i.pi = load volatile ptr, ptr %i.ph, align 8, !tbaa !83
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 16 ; 2 uses
  %i.pk = load volatile ptr, ptr %i.pj, align 8, !tbaa !86
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  store volatile ptr %i.pi, ptr %i.pl, align 8, !tbaa !83
  %i.pm = load volatile ptr, ptr %i.pj, align 8, !tbaa !86
  store volatile ptr %i.pm, ptr %i.pd, align 8, !tbaa !90
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pg, i64 8 ; 4 uses
  %i.po = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.pp = trunc nuw i8 %i.po to i1
  br i1 %i.pp, label %bb.cg, label %bb.ch, !prof !59

bb.cg:                                            ; preds = %bb.cf
  %i.pq = atomicrmw volatile add ptr %i.pn, i32 -1 monotonic, align 4
  %i.pr = add i32 %i.pq, -1
  br label %opal_thread_add_fetch_32.exit463

bb.ch:                                            ; preds = %bb.cf
  %i.ps = load volatile i32, ptr %i.pn, align 8, !tbaa !8
  %i.pt = add nsw i32 %i.ps, -1
  store volatile i32 %i.pt, ptr %i.pn, align 8, !tbaa !8
  %i.pu = load volatile i32, ptr %i.pn, align 8, !tbaa !8
  br label %opal_thread_add_fetch_32.exit463

opal_thread_add_fetch_32.exit463:                 ; preds = %bb.cg, %bb.ch
  %.0.i462 = phi i32 [ %i.pr, %bb.cg ], [ %i.pu, %bb.ch ]
  %i.pv = icmp eq i32 %.0.i462, 0
  br i1 %i.pv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %opal_thread_add_fetch_32.exit463
  %i.pw = load ptr, ptr %i.pg, align 8, !tbaa !75
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 48
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !91 ; 2 uses
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !78 ; 2 uses
  %.not6.i464 = icmp eq ptr %i.pz, null
  br i1 %.not6.i464, label %opal_obj_run_destructors.exit468, label %.lr.ph.i465

.lr.ph.i465:                                      ; preds = %bb.ci, %.lr.ph.i465
  %i.qa = phi ptr [ %i.qc, %.lr.ph.i465 ], [ %i.pz, %bb.ci ]
  %.07.i466 = phi ptr [ %i.qb, %.lr.ph.i465 ], [ %i.py, %bb.ci ]
  call void %i.qa(ptr noundef nonnull %i.pg) #22, !inline_history !92
  %i.qb = getelementptr inbounds nuw i8, ptr %.07.i466, i64 8 ; 2 uses
  %i.qc = load ptr, ptr %i.qb, align 8, !tbaa !78 ; 2 uses
  %.not.i467 = icmp eq ptr %i.qc, null
  br i1 %.not.i467, label %opal_obj_run_destructors.exit468, label %.lr.ph.i465, !llvm.loop !93

opal_obj_run_destructors.exit468:                 ; preds = %.lr.ph.i465, %bb.ci
  call void @free(ptr noundef nonnull %i.pg) #22
  br label %bb.cj

bb.cj:                                            ; preds = %opal_obj_run_destructors.exit468, %opal_thread_add_fetch_32.exit463
  %i.qd = load volatile i64, ptr %i.hc, align 8, !tbaa !87
  %i.qe = icmp eq i64 %i.qd, 0
  br i1 %i.qe, label %opal_list_remove_first.exit461.thread, label %bb.cf, !llvm.loop !98

opal_list_remove_first.exit461.thread:            ; preds = %bb.cj, %.preheader745, %opal_obj_run_destructors.exit459
  %i.qf = load ptr, ptr %8, align 8, !tbaa !75
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 48
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !91 ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !78 ; 2 uses
  %.not6.i469 = icmp eq ptr %i.qi, null
  br i1 %.not6.i469, label %opal_obj_run_destructors.exit473, label %.lr.ph.i470

.lr.ph.i470:                                      ; preds = %opal_list_remove_first.exit461.thread, %.lr.ph.i470
  %i.qj = phi ptr [ %i.ql, %.lr.ph.i470 ], [ %i.qi, %opal_list_remove_first.exit461.thread ]
  %.07.i471 = phi ptr [ %i.qk, %.lr.ph.i470 ], [ %i.qh, %opal_list_remove_first.exit461.thread ]
  call void %i.qj(ptr noundef nonnull %8) #22, !inline_history !92
  %i.qk = getelementptr inbounds nuw i8, ptr %.07.i471, i64 8 ; 2 uses
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !78 ; 2 uses
  %.not.i472 = icmp eq ptr %i.ql, null
  br i1 %.not.i472, label %opal_obj_run_destructors.exit473, label %.lr.ph.i470, !llvm.loop !93

opal_obj_run_destructors.exit473:                 ; preds = %.lr.ph.i470, %opal_list_remove_first.exit461.thread
  %i.qm = load volatile i32, ptr %i.ed, align 8, !tbaa !76
  %i.qn = icmp eq i32 %i.qm, 1
  br i1 %i.qn, label %.preheader744, label %opal_list_remove_first.exit475.thread

.preheader744:                                    ; preds = %opal_obj_run_destructors.exit473
  %i.qo = load volatile i64, ptr %i.gv, align 8, !tbaa !87
  %i.qp = icmp eq i64 %i.qo, 0
  br i1 %i.qp, label %opal_list_remove_first.exit475.thread, label %.lr.ph783

.lr.ph783:                                        ; preds = %.preheader744
  %i.qq = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph783, %bb.co
  %i.qr = load volatile i64, ptr %i.gv, align 8, !tbaa !87
  %i.qs = add i64 %i.qr, -1
  store volatile i64 %i.qs, ptr %i.gv, align 8, !tbaa !87
  %i.qt = load volatile ptr, ptr %i.qq, align 8, !tbaa !90 ; 6 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 24
  %i.qv = load volatile ptr, ptr %i.qu, align 8, !tbaa !83
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qt, i64 16 ; 2 uses
  %i.qx = load volatile ptr, ptr %i.qw, align 8, !tbaa !86
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  store volatile ptr %i.qv, ptr %i.qy, align 8, !tbaa !83
  %i.qz = load volatile ptr, ptr %i.qw, align 8, !tbaa !86
  store volatile ptr %i.qz, ptr %i.qq, align 8, !tbaa !90
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 4 uses
  %i.rb = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.rc = trunc nuw i8 %i.rb to i1
  br i1 %i.rc, label %bb.cl, label %bb.cm, !prof !59

bb.cl:                                            ; preds = %bb.ck
  %i.rd = atomicrmw volatile add ptr %i.ra, i32 -1 monotonic, align 4
  %i.re = add i32 %i.rd, -1
  br label %opal_thread_add_fetch_32.exit477

bb.cm:                                            ; preds = %bb.ck
  %i.rf = load volatile i32, ptr %i.ra, align 8, !tbaa !8
  %i.rg = add nsw i32 %i.rf, -1
  store volatile i32 %i.rg, ptr %i.ra, align 8, !tbaa !8
  %i.rh = load volatile i32, ptr %i.ra, align 8, !tbaa !8
  br label %opal_thread_add_fetch_32.exit477

opal_thread_add_fetch_32.exit477:                 ; preds = %bb.cl, %bb.cm
  %.0.i476 = phi i32 [ %i.re, %bb.cl ], [ %i.rh, %bb.cm ]
  %i.ri = icmp eq i32 %.0.i476, 0
  br i1 %i.ri, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %opal_thread_add_fetch_32.exit477
  %i.rj = load ptr, ptr %i.qt, align 8, !tbaa !75
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 48
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !91 ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !78 ; 2 uses
  %.not6.i478 = icmp eq ptr %i.rm, null
  br i1 %.not6.i478, label %opal_obj_run_destructors.exit482, label %.lr.ph.i479

.lr.ph.i479:                                      ; preds = %bb.cn, %.lr.ph.i479
  %i.rn = phi ptr [ %i.rp, %.lr.ph.i479 ], [ %i.rm, %bb.cn ]
  %.07.i480 = phi ptr [ %i.ro, %.lr.ph.i479 ], [ %i.rl, %bb.cn ]
  call void %i.rn(ptr noundef nonnull %i.qt) #22, !inline_history !92
  %i.ro = getelementptr inbounds nuw i8, ptr %.07.i480, i64 8 ; 2 uses
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !78 ; 2 uses
  %.not.i481 = icmp eq ptr %i.rp, null
  br i1 %.not.i481, label %opal_obj_run_destructors.exit482, label %.lr.ph.i479, !llvm.loop !93

opal_obj_run_destructors.exit482:                 ; preds = %.lr.ph.i479, %bb.cn
  call void @free(ptr noundef nonnull %i.qt) #22
  br label %bb.co

bb.co:                                            ; preds = %opal_obj_run_destructors.exit482, %opal_thread_add_fetch_32.exit477
  %i.rq = load volatile i64, ptr %i.gv, align 8, !tbaa !87
  %i.rr = icmp eq i64 %i.rq, 0
  br i1 %i.rr, label %opal_list_remove_first.exit475.thread, label %bb.ck, !llvm.loop !99

opal_list_remove_first.exit475.thread:            ; preds = %bb.co, %.preheader744, %opal_obj_run_destructors.exit473
  %i.rs = load ptr, ptr %7, align 8, !tbaa !75
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 48
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !91 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !78 ; 2 uses
  %.not6.i483 = icmp eq ptr %i.rv, null
  br i1 %.not6.i483, label %opal_obj_run_destructors.exit445, label %.lr.ph.i484

.lr.ph.i484:                                      ; preds = %opal_list_remove_first.exit475.thread, %.lr.ph.i484
  %i.rw = phi ptr [ %i.ry, %.lr.ph.i484 ], [ %i.rv, %opal_list_remove_first.exit475.thread ]
  %.07.i485 = phi ptr [ %i.rx, %.lr.ph.i484 ], [ %i.ru, %opal_list_remove_first.exit475.thread ]
  call void %i.rw(ptr noundef nonnull %7) #22, !inline_history !92
  %i.rx = getelementptr inbounds nuw i8, ptr %.07.i485, i64 8 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !78 ; 2 uses
  %.not.i486 = icmp eq ptr %i.ry, null
  br i1 %.not.i486, label %opal_obj_run_destructors.exit445, label %.lr.ph.i484, !llvm.loop !93

bb.cp:                                            ; preds = %bb.by
  %i.rz = call noalias ptr @malloc(i64 noundef %.pre849.a) #25 ; 9 uses
  %.not.i488 = icmp eq i32 %.pre853, %.pre851
  br i1 %.not.i488, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @opal_class_initialize(ptr noundef nonnull @ompi_dpm_proct_caddy_t_class) #22
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.not9.i489 = icmp eq ptr %i.rz, null
  br i1 %.not9.i489, label %opal_obj_new.exit494, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  store ptr @ompi_dpm_proct_caddy_t_class, ptr %i.rz, align 8, !tbaa !75
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 8
  store volatile i32 1, ptr %i.sa, align 8, !tbaa !76
  %i.sb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 40), align 8, !tbaa !77 ; 2 uses
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !78 ; 2 uses
  %.not6.i.i490 = icmp eq ptr %i.sc, null
  br i1 %.not6.i.i490, label %opal_obj_new.exit494, label %.lr.ph.i.i491

.lr.ph.i.i491:                                    ; preds = %bb.cs, %.lr.ph.i.i491
  %i.sd = phi ptr [ %i.sf, %.lr.ph.i.i491 ], [ %i.sc, %bb.cs ]
  %.07.i.i492 = phi ptr [ %i.se, %.lr.ph.i.i491 ], [ %i.sb, %bb.cs ]
  call void %i.sd(ptr noundef nonnull %i.rz) #22, !inline_history !82
  %i.se = getelementptr inbounds nuw i8, ptr %.07.i.i492, i64 8 ; 2 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !78 ; 2 uses
  %.not.i.i493 = icmp eq ptr %i.sf, null
  br i1 %.not.i.i493, label %opal_obj_new.exit494, label %.lr.ph.i.i491, !llvm.loop !80

opal_obj_new.exit494:                             ; preds = %.lr.ph.i.i491, %bb.cr, %bb.cs
  %i.sg = getelementptr inbounds nuw i8, ptr %i.rz, i64 40
  store ptr %i.nh, ptr %i.sg, align 8, !tbaa !100
  %i.sh = load volatile ptr, ptr %i.gy, align 8, !tbaa !83
  %i.si = getelementptr inbounds nuw i8, ptr %i.rz, i64 24
  store volatile ptr %i.sh, ptr %i.si, align 8, !tbaa !83
  %i.sj = load volatile ptr, ptr %i.gy, align 8, !tbaa !83
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  store volatile ptr %i.rz, ptr %i.sk, align 8, !tbaa !86
  %i.sl = getelementptr inbounds nuw i8, ptr %i.rz, i64 16
  store volatile ptr %i.gx, ptr %i.sl, align 8, !tbaa !86
  store volatile ptr %i.rz, ptr %i.gy, align 8, !tbaa !83
  %i.sm = load volatile i64, ptr %i.gz, align 8, !tbaa !87
  %i.sn = add i64 %i.sm, 1
  store volatile i64 %i.sn, ptr %i.gz, align 8, !tbaa !87
  %.pre848.a = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 56), align 8, !tbaa !81
  %.pre852 = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8
  %.pre850 = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 32), align 8, !tbaa !73
  br label %bb.ct

bb.ct:                                            ; preds = %opal_obj_new.exit494, %bb.by
  %i.so = phi i32 [ %.pre850, %opal_obj_new.exit494 ], [ %.pre851, %bb.by ]
  %18 = phi i32 [ %.pre852, %opal_obj_new.exit494 ], [ %.pre853, %bb.by ]
  %i.sp = phi i64 [ %.pre848.a, %opal_obj_new.exit494 ], [ %.pre849.a, %bb.by ]
  %i.sq = call noalias ptr @malloc(i64 noundef %i.sp) #25 ; 9 uses
  %.not.i495 = icmp eq i32 %18, %i.so
  br i1 %.not.i495, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @opal_class_initialize(ptr noundef nonnull @ompi_dpm_proct_caddy_t_class) #22
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %.not9.i496 = icmp eq ptr %i.sq, null
  br i1 %.not9.i496, label %opal_obj_new.exit501, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  store ptr @ompi_dpm_proct_caddy_t_class, ptr %i.sq, align 8, !tbaa !75
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 8
  store volatile i32 1, ptr %i.sr, align 8, !tbaa !76
  %i.ss = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 40), align 8, !tbaa !77 ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !78 ; 2 uses
  %.not6.i.i497 = icmp eq ptr %i.st, null
  br i1 %.not6.i.i497, label %opal_obj_new.exit501, label %.lr.ph.i.i498

.lr.ph.i.i498:                                    ; preds = %bb.cw, %.lr.ph.i.i498
  %i.su = phi ptr [ %i.sw, %.lr.ph.i.i498 ], [ %i.st, %bb.cw ]
  %.07.i.i499 = phi ptr [ %i.sv, %.lr.ph.i.i498 ], [ %i.ss, %bb.cw ]
  call void %i.su(ptr noundef nonnull %i.sq) #22, !inline_history !82
  %i.sv = getelementptr inbounds nuw i8, ptr %.07.i.i499, i64 8 ; 2 uses
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !78 ; 2 uses
  %.not.i.i500 = icmp eq ptr %i.sw, null
  br i1 %.not.i.i500, label %opal_obj_new.exit501, label %.lr.ph.i.i498, !llvm.loop !80

opal_obj_new.exit501:                             ; preds = %.lr.ph.i.i498, %bb.cv, %bb.cw
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sq, i64 40
  store ptr %i.nh, ptr %i.sx, align 8, !tbaa !100
  %i.sy = load volatile ptr, ptr %i.hb, align 8, !tbaa !83
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sq, i64 24
  store volatile ptr %i.sy, ptr %i.sz, align 8, !tbaa !83
  %i.ta = load volatile ptr, ptr %i.hb, align 8, !tbaa !83
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  store volatile ptr %i.sq, ptr %i.tb, align 8, !tbaa !86
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  store volatile ptr %i.ha, ptr %i.tc, align 8, !tbaa !86
  store volatile ptr %i.sq, ptr %i.hb, align 8, !tbaa !83
  %i.td = load volatile i64, ptr %i.hc, align 8, !tbaa !87
  %i.te = add i64 %i.td, 1
  store volatile i64 %i.te, ptr %i.hc, align 8, !tbaa !87
  %i.tf = add nuw nsw i32 %.0286770, 1            ; 2 uses
  %exitcond833.not = icmp eq i32 %i.tf, %i.nd
  br i1 %exitcond833.not, label %.loopexit751, label %.lr.ph772, !llvm.loop !102

bb.cx:                                            ; preds = %opal_obj_new.exit407
  %i.tg = call i32 @opal_pmix_convert_nspace(ptr noundef nonnull %5, ptr noundef nonnull %13) #22 ; 4 uses
  %cond388 = icmp eq i32 %i.tg, 0
  br i1 %cond388, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.th = load i32, ptr %i.gs, align 4, !tbaa !53 ; 2 uses
  %cond983 = icmp eq i32 %i.th, -4
  %spec.select984 = select i1 %cond983, i32 -1, i32 %i.th
  store i32 %spec.select984, ptr %i.gw, align 4, !tbaa !52
  %i.ti = call ptr @ompi_proc_find_and_add(ptr noundef nonnull %5, ptr noundef nonnull %i.g) #22 ; 2 uses
  %i.tj = load i8, ptr %i.g, align 1, !tbaa !60, !range !61, !noundef !62
  %i.tk = trunc nuw i8 %i.tj to i1
  %.pre845 = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 56), align 8, !tbaa !81 ; 2 uses
  %.pre847 = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8 ; 2 uses
  %.pre847.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 32), align 8, !tbaa !73 ; 2 uses
  br i1 %i.tk, label %bb.dp, label %bb.dt

bb.cz:                                            ; preds = %bb.cx
  %i.tl = call ptr @opal_strerror(i32 noundef %i.tg) #22
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef %i.tl, ptr noundef nonnull @.str.6, i32 noundef 359) #22
  %i.tm = load ptr, ptr %i.c, align 8, !tbaa !9
  call void @opal_argv_free(ptr noundef %i.tm) #22
  %i.tn = load volatile i32, ptr %i.gc, align 8, !tbaa !76
  %i.to = icmp eq i32 %i.tn, 1
  br i1 %i.to, label %.preheader750, label %opal_list_remove_first.exit503.thread

.preheader750:                                    ; preds = %bb.cz
  %i.tp = load volatile i64, ptr %i.gz, align 8, !tbaa !87
  %i.tq = icmp eq i64 %i.tp, 0
  br i1 %i.tq, label %opal_list_remove_first.exit503.thread, label %.lr.ph778

.lr.ph778:                                        ; preds = %.preheader750
  %i.tr = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  br label %bb.da

bb.da:                                            ; preds = %.lr.ph778, %bb.de
  %i.ts = load volatile i64, ptr %i.gz, align 8, !tbaa !87
  %i.tt = add i64 %i.ts, -1
  store volatile i64 %i.tt, ptr %i.gz, align 8, !tbaa !87
  %i.tu = load volatile ptr, ptr %i.tr, align 8, !tbaa !90 ; 6 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 24
  %i.tw = load volatile ptr, ptr %i.tv, align 8, !tbaa !83
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 16 ; 2 uses
  %i.ty = load volatile ptr, ptr %i.tx, align 8, !tbaa !86
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 24
  store volatile ptr %i.tw, ptr %i.tz, align 8, !tbaa !83
  %i.ua = load volatile ptr, ptr %i.tx, align 8, !tbaa !86
  store volatile ptr %i.ua, ptr %i.tr, align 8, !tbaa !90
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tu, i64 8 ; 4 uses
  %i.uc = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.ud = trunc nuw i8 %i.uc to i1
  br i1 %i.ud, label %bb.db, label %bb.dc, !prof !59

bb.db:                                            ; preds = %bb.da
  %i.ue = atomicrmw volatile add ptr %i.ub, i32 -1 monotonic, align 4
  %i.uf = add i32 %i.ue, -1
  br label %opal_thread_add_fetch_32.exit505

bb.dc:                                            ; preds = %bb.da
  %i.ug = load volatile i32, ptr %i.ub, align 8, !tbaa !8
  %i.uh = add nsw i32 %i.ug, -1
  store volatile i32 %i.uh, ptr %i.ub, align 8, !tbaa !8
  %i.ui = load volatile i32, ptr %i.ub, align 8, !tbaa !8
  br label %opal_thread_add_fetch_32.exit505

opal_thread_add_fetch_32.exit505:                 ; preds = %bb.db, %bb.dc
  %.0.i504 = phi i32 [ %i.uf, %bb.db ], [ %i.ui, %bb.dc ]
  %i.uj = icmp eq i32 %.0.i504, 0
  br i1 %i.uj, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %opal_thread_add_fetch_32.exit505
  %i.uk = load ptr, ptr %i.tu, align 8, !tbaa !75
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uk, i64 48
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !91 ; 2 uses
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !78 ; 2 uses
  %.not6.i506 = icmp eq ptr %i.un, null
  br i1 %.not6.i506, label %opal_obj_run_destructors.exit510, label %.lr.ph.i507

.lr.ph.i507:                                      ; preds = %bb.dd, %.lr.ph.i507
  %i.uo = phi ptr [ %i.uq, %.lr.ph.i507 ], [ %i.un, %bb.dd ]
  %.07.i508 = phi ptr [ %i.up, %.lr.ph.i507 ], [ %i.um, %bb.dd ]
  call void %i.uo(ptr noundef nonnull %i.tu) #22, !inline_history !92
  %i.up = getelementptr inbounds nuw i8, ptr %.07.i508, i64 8 ; 2 uses
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !78 ; 2 uses
  %.not.i509 = icmp eq ptr %i.uq, null
  br i1 %.not.i509, label %opal_obj_run_destructors.exit510, label %.lr.ph.i507, !llvm.loop !93

opal_obj_run_destructors.exit510:                 ; preds = %.lr.ph.i507, %bb.dd
  call void @free(ptr noundef nonnull %i.tu) #22
  br label %bb.de

bb.de:                                            ; preds = %opal_obj_run_destructors.exit510, %opal_thread_add_fetch_32.exit505
  %i.ur = load volatile i64, ptr %i.gz, align 8, !tbaa !87
  %i.us = icmp eq i64 %i.ur, 0
  br i1 %i.us, label %opal_list_remove_first.exit503.thread, label %bb.da, !llvm.loop !103

opal_list_remove_first.exit503.thread:            ; preds = %bb.de, %.preheader750, %bb.cz
  %i.ut = load ptr, ptr %6, align 8, !tbaa !75
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 48
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !91 ; 2 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !78 ; 2 uses
  %.not6.i511 = icmp eq ptr %i.uw, null
  br i1 %.not6.i511, label %opal_obj_run_destructors.exit515, label %.lr.ph.i512

.lr.ph.i512:                                      ; preds = %opal_list_remove_first.exit503.thread, %.lr.ph.i512
  %i.ux = phi ptr [ %i.uz, %.lr.ph.i512 ], [ %i.uw, %opal_list_remove_first.exit503.thread ]
  %.07.i513 = phi ptr [ %i.uy, %.lr.ph.i512 ], [ %i.uv, %opal_list_remove_first.exit503.thread ]
  call void %i.ux(ptr noundef nonnull %6) #22, !inline_history !92
  %i.uy = getelementptr inbounds nuw i8, ptr %.07.i513, i64 8 ; 2 uses
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !78 ; 2 uses
  %.not.i514 = icmp eq ptr %i.uz, null
  br i1 %.not.i514, label %opal_obj_run_destructors.exit515, label %.lr.ph.i512, !llvm.loop !93

opal_obj_run_destructors.exit515:                 ; preds = %.lr.ph.i512, %opal_list_remove_first.exit503.thread
  %i.va = load volatile i32, ptr %i.gk, align 8, !tbaa !76
  %i.vb = icmp eq i32 %i.va, 1
  br i1 %i.vb, label %.preheader749, label %opal_list_remove_first.exit517.thread

.preheader749:                                    ; preds = %opal_obj_run_destructors.exit515
  %i.vc = load volatile i64, ptr %i.hc, align 8, !tbaa !87
  %i.vd = icmp eq i64 %i.vc, 0
  br i1 %i.vd, label %opal_list_remove_first.exit517.thread, label %.lr.ph779

.lr.ph779:                                        ; preds = %.preheader749
  %i.ve = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  br label %bb.df

bb.df:                                            ; preds = %.lr.ph779, %bb.dj
  %i.vf = load volatile i64, ptr %i.hc, align 8, !tbaa !87
  %i.vg = add i64 %i.vf, -1
  store volatile i64 %i.vg, ptr %i.hc, align 8, !tbaa !87
  %i.vh = load volatile ptr, ptr %i.ve, align 8, !tbaa !90 ; 6 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.vh, i64 24
  %i.vj = load volatile ptr, ptr %i.vi, align 8, !tbaa !83
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 16 ; 2 uses
  %i.vl = load volatile ptr, ptr %i.vk, align 8, !tbaa !86
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 24
  store volatile ptr %i.vj, ptr %i.vm, align 8, !tbaa !83
  %i.vn = load volatile ptr, ptr %i.vk, align 8, !tbaa !86
  store volatile ptr %i.vn, ptr %i.ve, align 8, !tbaa !90
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vh, i64 8 ; 4 uses
  %i.vp = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.vq = trunc nuw i8 %i.vp to i1
  br i1 %i.vq, label %bb.dg, label %bb.dh, !prof !59

bb.dg:                                            ; preds = %bb.df
  %i.vr = atomicrmw volatile add ptr %i.vo, i32 -1 monotonic, align 4
  %i.vs = add i32 %i.vr, -1
  br label %opal_thread_add_fetch_32.exit519

bb.dh:                                            ; preds = %bb.df
  %i.vt = load volatile i32, ptr %i.vo, align 8, !tbaa !8
  %i.vu = add nsw i32 %i.vt, -1
  store volatile i32 %i.vu, ptr %i.vo, align 8, !tbaa !8
  %i.vv = load volatile i32, ptr %i.vo, align 8, !tbaa !8
  br label %opal_thread_add_fetch_32.exit519

opal_thread_add_fetch_32.exit519:                 ; preds = %bb.dg, %bb.dh
  %.0.i518 = phi i32 [ %i.vs, %bb.dg ], [ %i.vv, %bb.dh ]
  %i.vw = icmp eq i32 %.0.i518, 0
  br i1 %i.vw, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %opal_thread_add_fetch_32.exit519
  %i.vx = load ptr, ptr %i.vh, align 8, !tbaa !75
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 48
  %i.vz = load ptr, ptr %i.vy, align 8, !tbaa !91 ; 2 uses
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !78 ; 2 uses
  %.not6.i520 = icmp eq ptr %i.wa, null
  br i1 %.not6.i520, label %opal_obj_run_destructors.exit524, label %.lr.ph.i521

.lr.ph.i521:                                      ; preds = %bb.di, %.lr.ph.i521
  %i.wb = phi ptr [ %i.wd, %.lr.ph.i521 ], [ %i.wa, %bb.di ]
  %.07.i522 = phi ptr [ %i.wc, %.lr.ph.i521 ], [ %i.vz, %bb.di ]
  call void %i.wb(ptr noundef nonnull %i.vh) #22, !inline_history !92
  %i.wc = getelementptr inbounds nuw i8, ptr %.07.i522, i64 8 ; 2 uses
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !78 ; 2 uses
  %.not.i523 = icmp eq ptr %i.wd, null
  br i1 %.not.i523, label %opal_obj_run_destructors.exit524, label %.lr.ph.i521, !llvm.loop !93

opal_obj_run_destructors.exit524:                 ; preds = %.lr.ph.i521, %bb.di
  call void @free(ptr noundef nonnull %i.vh) #22
  br label %bb.dj

bb.dj:                                            ; preds = %opal_obj_run_destructors.exit524, %opal_thread_add_fetch_32.exit519
  %i.we = load volatile i64, ptr %i.hc, align 8, !tbaa !87
  %i.wf = icmp eq i64 %i.we, 0
  br i1 %i.wf, label %opal_list_remove_first.exit517.thread, label %bb.df, !llvm.loop !104

opal_list_remove_first.exit517.thread:            ; preds = %bb.dj, %.preheader749, %opal_obj_run_destructors.exit515
  %i.wg = load ptr, ptr %8, align 8, !tbaa !75
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 48
  %i.wi = load ptr, ptr %i.wh, align 8, !tbaa !91 ; 2 uses
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !78 ; 2 uses
  %.not6.i525 = icmp eq ptr %i.wj, null
  br i1 %.not6.i525, label %opal_obj_run_destructors.exit529, label %.lr.ph.i526

.lr.ph.i526:                                      ; preds = %opal_list_remove_first.exit517.thread, %.lr.ph.i526
  %i.wk = phi ptr [ %i.wm, %.lr.ph.i526 ], [ %i.wj, %opal_list_remove_first.exit517.thread ]
  %.07.i527 = phi ptr [ %i.wl, %.lr.ph.i526 ], [ %i.wi, %opal_list_remove_first.exit517.thread ]
  call void %i.wk(ptr noundef nonnull %8) #22, !inline_history !92
  %i.wl = getelementptr inbounds nuw i8, ptr %.07.i527, i64 8 ; 2 uses
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !78 ; 2 uses
  %.not.i528 = icmp eq ptr %i.wm, null
  br i1 %.not.i528, label %opal_obj_run_destructors.exit529, label %.lr.ph.i526, !llvm.loop !93

opal_obj_run_destructors.exit529:                 ; preds = %.lr.ph.i526, %opal_list_remove_first.exit517.thread
  %i.wn = load volatile i32, ptr %i.ed, align 8, !tbaa !76
  %i.wo = icmp eq i32 %i.wn, 1
  br i1 %i.wo, label %.preheader748, label %opal_list_remove_first.exit531.thread

.preheader748:                                    ; preds = %opal_obj_run_destructors.exit529
  %i.wp = load volatile i64, ptr %i.gv, align 8, !tbaa !87
  %i.wq = icmp eq i64 %i.wp, 0
  br i1 %i.wq, label %opal_list_remove_first.exit531.thread, label %.lr.ph780

.lr.ph780:                                        ; preds = %.preheader748
  %i.wr = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph780, %bb.do
  %i.ws = load volatile i64, ptr %i.gv, align 8, !tbaa !87
  %i.wt = add i64 %i.ws, -1
  store volatile i64 %i.wt, ptr %i.gv, align 8, !tbaa !87
  %i.wu = load volatile ptr, ptr %i.wr, align 8, !tbaa !90 ; 6 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 24
  %i.ww = load volatile ptr, ptr %i.wv, align 8, !tbaa !83
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 16 ; 2 uses
  %i.wy = load volatile ptr, ptr %i.wx, align 8, !tbaa !86
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 24
  store volatile ptr %i.ww, ptr %i.wz, align 8, !tbaa !83
  %i.xa = load volatile ptr, ptr %i.wx, align 8, !tbaa !86
  store volatile ptr %i.xa, ptr %i.wr, align 8, !tbaa !90
  %i.xb = getelementptr inbounds nuw i8, ptr %i.wu, i64 8 ; 4 uses
  %i.xc = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.xd = trunc nuw i8 %i.xc to i1
  br i1 %i.xd, label %bb.dl, label %bb.dm, !prof !59

bb.dl:                                            ; preds = %bb.dk
  %i.xe = atomicrmw volatile add ptr %i.xb, i32 -1 monotonic, align 4
  %i.xf = add i32 %i.xe, -1
  br label %opal_thread_add_fetch_32.exit533

bb.dm:                                            ; preds = %bb.dk
  %i.xg = load volatile i32, ptr %i.xb, align 8, !tbaa !8
  %i.xh = add nsw i32 %i.xg, -1
  store volatile i32 %i.xh, ptr %i.xb, align 8, !tbaa !8
  %i.xi = load volatile i32, ptr %i.xb, align 8, !tbaa !8
  br label %opal_thread_add_fetch_32.exit533

opal_thread_add_fetch_32.exit533:                 ; preds = %bb.dl, %bb.dm
  %.0.i532 = phi i32 [ %i.xf, %bb.dl ], [ %i.xi, %bb.dm ]
  %i.xj = icmp eq i32 %.0.i532, 0
  br i1 %i.xj, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %opal_thread_add_fetch_32.exit533
  %i.xk = load ptr, ptr %i.wu, align 8, !tbaa !75
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 48
  %i.xm = load ptr, ptr %i.xl, align 8, !tbaa !91 ; 2 uses
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !78 ; 2 uses
  %.not6.i534 = icmp eq ptr %i.xn, null
  br i1 %.not6.i534, label %opal_obj_run_destructors.exit538, label %.lr.ph.i535

.lr.ph.i535:                                      ; preds = %bb.dn, %.lr.ph.i535
  %i.xo = phi ptr [ %i.xq, %.lr.ph.i535 ], [ %i.xn, %bb.dn ]
  %.07.i536 = phi ptr [ %i.xp, %.lr.ph.i535 ], [ %i.xm, %bb.dn ]
  call void %i.xo(ptr noundef nonnull %i.wu) #22, !inline_history !92
  %i.xp = getelementptr inbounds nuw i8, ptr %.07.i536, i64 8 ; 2 uses
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !78 ; 2 uses
  %.not.i537 = icmp eq ptr %i.xq, null
  br i1 %.not.i537, label %opal_obj_run_destructors.exit538, label %.lr.ph.i535, !llvm.loop !93

opal_obj_run_destructors.exit538:                 ; preds = %.lr.ph.i535, %bb.dn
  call void @free(ptr noundef nonnull %i.wu) #22
  br label %bb.do

bb.do:                                            ; preds = %opal_obj_run_destructors.exit538, %opal_thread_add_fetch_32.exit533
  %i.xr = load volatile i64, ptr %i.gv, align 8, !tbaa !87
  %i.xs = icmp eq i64 %i.xr, 0
  br i1 %i.xs, label %opal_list_remove_first.exit531.thread, label %bb.dk, !llvm.loop !105

opal_list_remove_first.exit531.thread:            ; preds = %bb.do, %.preheader748, %opal_obj_run_destructors.exit529
  %i.xt = load ptr, ptr %7, align 8, !tbaa !75
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 48
  %i.xv = load ptr, ptr %i.xu, align 8, !tbaa !91 ; 2 uses
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !78 ; 2 uses
  %.not6.i539 = icmp eq ptr %i.xw, null
  br i1 %.not6.i539, label %opal_obj_run_destructors.exit445, label %.lr.ph.i540

.lr.ph.i540:                                      ; preds = %opal_list_remove_first.exit531.thread, %.lr.ph.i540
  %i.xx = phi ptr [ %i.xz, %.lr.ph.i540 ], [ %i.xw, %opal_list_remove_first.exit531.thread ]
  %.07.i541 = phi ptr [ %i.xy, %.lr.ph.i540 ], [ %i.xv, %opal_list_remove_first.exit531.thread ]
  call void %i.xx(ptr noundef nonnull %7) #22, !inline_history !92
  %i.xy = getelementptr inbounds nuw i8, ptr %.07.i541, i64 8 ; 2 uses
  %i.xz = load ptr, ptr %i.xy, align 8, !tbaa !78 ; 2 uses
  %.not.i542 = icmp eq ptr %i.xz, null
  br i1 %.not.i542, label %opal_obj_run_destructors.exit445, label %.lr.ph.i540, !llvm.loop !93

bb.dp:                                            ; preds = %bb.cy
  %i.ya = call noalias ptr @malloc(i64 noundef %.pre845) #25 ; 9 uses
  %.not.i544 = icmp eq i32 %.pre847, %.pre847.a
  br i1 %.not.i544, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  call void @opal_class_initialize(ptr noundef nonnull @ompi_dpm_proct_caddy_t_class) #22
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.not9.i545 = icmp eq ptr %i.ya, null
  br i1 %.not9.i545, label %opal_obj_new.exit550, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  store ptr @ompi_dpm_proct_caddy_t_class, ptr %i.ya, align 8, !tbaa !75
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  store volatile i32 1, ptr %i.yb, align 8, !tbaa !76
  %i.yc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 40), align 8, !tbaa !77 ; 2 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !78 ; 2 uses
  %.not6.i.i546 = icmp eq ptr %i.yd, null
  br i1 %.not6.i.i546, label %opal_obj_new.exit550, label %.lr.ph.i.i547

.lr.ph.i.i547:                                    ; preds = %bb.ds, %.lr.ph.i.i547
  %i.ye = phi ptr [ %i.yg, %.lr.ph.i.i547 ], [ %i.yd, %bb.ds ]
  %.07.i.i548 = phi ptr [ %i.yf, %.lr.ph.i.i547 ], [ %i.yc, %bb.ds ]
  call void %i.ye(ptr noundef nonnull %i.ya) #22, !inline_history !82
  %i.yf = getelementptr inbounds nuw i8, ptr %.07.i.i548, i64 8 ; 2 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !78 ; 2 uses
  %.not.i.i549 = icmp eq ptr %i.yg, null
  br i1 %.not.i.i549, label %opal_obj_new.exit550, label %.lr.ph.i.i547, !llvm.loop !80

opal_obj_new.exit550:                             ; preds = %.lr.ph.i.i547, %bb.dr, %bb.ds
  %i.yh = getelementptr inbounds nuw i8, ptr %i.ya, i64 40
  store ptr %i.ti, ptr %i.yh, align 8, !tbaa !100
  %i.yi = load volatile ptr, ptr %i.gy, align 8, !tbaa !83
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ya, i64 24
  store volatile ptr %i.yi, ptr %i.yj, align 8, !tbaa !83
  %i.yk = load volatile ptr, ptr %i.gy, align 8, !tbaa !83
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 16
  store volatile ptr %i.ya, ptr %i.yl, align 8, !tbaa !86
  %i.ym = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  store volatile ptr %i.gx, ptr %i.ym, align 8, !tbaa !86
  store volatile ptr %i.ya, ptr %i.gy, align 8, !tbaa !83
  %i.yn = load volatile i64, ptr %i.gz, align 8, !tbaa !87
  %i.yo = add i64 %i.yn, 1
  store volatile i64 %i.yo, ptr %i.gz, align 8, !tbaa !87
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 56), align 8, !tbaa !81
  %.pre846 = load i32, ptr @opal_class_init_epoch, align 4, !tbaa !8
  %.pre846.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 32), align 8, !tbaa !73
  br label %bb.dt

bb.dt:                                            ; preds = %opal_obj_new.exit550, %bb.cy
  %i.yp = phi i32 [ %.pre846.a, %opal_obj_new.exit550 ], [ %.pre847.a, %bb.cy ]
  %19 = phi i32 [ %.pre846, %opal_obj_new.exit550 ], [ %.pre847, %bb.cy ]
  %i.yq = phi i64 [ %.pre, %opal_obj_new.exit550 ], [ %.pre845, %bb.cy ]
  %i.yr = call noalias ptr @malloc(i64 noundef %i.yq) #25 ; 9 uses
  %.not.i551 = icmp eq i32 %19, %i.yp
  br i1 %.not.i551, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  call void @opal_class_initialize(ptr noundef nonnull @ompi_dpm_proct_caddy_t_class) #22
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %.not9.i552 = icmp eq ptr %i.yr, null
  br i1 %.not9.i552, label %opal_obj_new.exit557, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store ptr @ompi_dpm_proct_caddy_t_class, ptr %i.yr, align 8, !tbaa !75
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 8
  store volatile i32 1, ptr %i.ys, align 8, !tbaa !76
  %i.yt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_dpm_proct_caddy_t_class, i64 40), align 8, !tbaa !77 ; 2 uses
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !78 ; 2 uses
  %.not6.i.i553 = icmp eq ptr %i.yu, null
  br i1 %.not6.i.i553, label %opal_obj_new.exit557, label %.lr.ph.i.i554

.lr.ph.i.i554:                                    ; preds = %bb.dw, %.lr.ph.i.i554
  %i.yv = phi ptr [ %i.yx, %.lr.ph.i.i554 ], [ %i.yu, %bb.dw ]
  %.07.i.i555 = phi ptr [ %i.yw, %.lr.ph.i.i554 ], [ %i.yt, %bb.dw ]
  call void %i.yv(ptr noundef nonnull %i.yr) #22, !inline_history !82
  %i.yw = getelementptr inbounds nuw i8, ptr %.07.i.i555, i64 8 ; 2 uses
  %i.yx = load ptr, ptr %i.yw, align 8, !tbaa !78 ; 2 uses
  %.not.i.i556 = icmp eq ptr %i.yx, null
  br i1 %.not.i.i556, label %opal_obj_new.exit557, label %.lr.ph.i.i554, !llvm.loop !80

opal_obj_new.exit557:                             ; preds = %.lr.ph.i.i554, %bb.dv, %bb.dw
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yr, i64 40
  store ptr %i.ti, ptr %i.yy, align 8, !tbaa !100
  %i.yz = load volatile ptr, ptr %i.hb, align 8, !tbaa !83
  %i.za = getelementptr inbounds nuw i8, ptr %i.yr, i64 24
  store volatile ptr %i.yz, ptr %i.za, align 8, !tbaa !83
  %i.zb = load volatile ptr, ptr %i.hb, align 8, !tbaa !83
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 16
  store volatile ptr %i.yr, ptr %i.zc, align 8, !tbaa !86
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  store volatile ptr %i.ha, ptr %i.zd, align 8, !tbaa !86
  store volatile ptr %i.yr, ptr %i.hb, align 8, !tbaa !83
  %i.ze = load volatile i64, ptr %i.hc, align 8, !tbaa !87
  %i.zf = add i64 %i.ze, 1
  store volatile i64 %i.zf, ptr %i.hc, align 8, !tbaa !87
  br label %.loopexit751

.loopexit751:                                     ; preds = %opal_obj_new.exit501, %bb.bx, %opal_obj_new.exit557
  %.5 = phi i32 [ %.4774, %opal_obj_new.exit557 ], [ %i.ii, %bb.bx ], [ %i.ii, %opal_obj_new.exit501 ]
  %i.zg = add nsw i32 %.5, 1                      ; 2 uses
  %i.zh = load ptr, ptr %i.c, align 8, !tbaa !9   ; 2 uses
  %i.zi = sext i32 %i.zg to i64                   ; 2 uses
  %i.zj = getelementptr inbounds [8 x i8], ptr %i.zh, i64 %i.zi
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !54 ; 2 uses
  %.not350 = icmp eq ptr %i.zk, null
  br i1 %.not350, label %._crit_edge776, label %bb.az, !llvm.loop !106

._crit_edge776:                                   ; preds = %.loopexit751, %opal_obj_run_constructors.exit400
  %.lcssa755 = phi ptr [ %i.gq, %opal_obj_run_constructors.exit400 ], [ %i.zh, %.loopexit751 ]
  call void @opal_argv_free(ptr noundef nonnull %.lcssa755) #22
  %i.zl = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 5 uses
  %i.zm = load volatile i64, ptr %i.zl, align 8, !tbaa !87 ; 4 uses
  %i.zn = call ptr @PMIx_Proc_create(i64 noundef %i.zm) #22 ; 4 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  %i.zq = load volatile ptr, ptr %i.zp, align 8, !tbaa !90 ; 2 uses
  %.not351787 = icmp eq ptr %i.zq, %i.zo
  br i1 %.not351787, label %._crit_edge792, label %.lr.ph791

.lr.ph791:                                        ; preds = %._crit_edge776, %.lr.ph791
  %.0278789 = phi ptr [ %i.zv, %.lr.ph791 ], [ %i.zq, %._crit_edge776 ] ; 2 uses
  %.0279788 = phi i64 [ %i.zt, %.lr.ph791 ], [ 0, %._crit_edge776 ] ; 2 uses
  %i.zr = getelementptr inbounds nuw [260 x i8], ptr %i.zn, i64 %.0279788
  %i.zs = getelementptr inbounds nuw i8, ptr %.0278789, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(260) %i.zr, ptr noundef nonnull align 8 dereferenceable(260) %i.zs, i64 260, i1 false)
  %i.zt = add i64 %.0279788, 1
  %i.zu = getelementptr inbounds nuw i8, ptr %.0278789, i64 16
  %i.zv = load volatile ptr, ptr %i.zu, align 8, !tbaa !86 ; 2 uses
  %.not351 = icmp eq ptr %i.zv, %i.zo
  br i1 %.not351, label %._crit_edge792, label %.lr.ph791, !llvm.loop !107

._crit_edge792:                                   ; preds = %.lr.ph791, %._crit_edge776
  %i.zw = load volatile i32, ptr %i.ed, align 8, !tbaa !76
  %i.zx = icmp eq i32 %i.zw, 1
  br i1 %i.zx, label %.preheader738, label %opal_list_remove_first.exit559.thread

.preheader738:                                    ; preds = %._crit_edge792
  %i.zy = load volatile i64, ptr %i.zl, align 8, !tbaa !87
  %i.zz = icmp eq i64 %i.zy, 0
  br i1 %i.zz, label %opal_list_remove_first.exit559.thread, label %.lr.ph793

.lr.ph793:                                        ; preds = %.preheader738, %bb.ea
  %i.aaa = load volatile i64, ptr %i.zl, align 8, !tbaa !87
  %i.aab = add i64 %i.aaa, -1
  store volatile i64 %i.aab, ptr %i.zl, align 8, !tbaa !87
  %i.aac = load volatile ptr, ptr %i.zp, align 8, !tbaa !90 ; 6 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 24
  %i.aae = load volatile ptr, ptr %i.aad, align 8, !tbaa !83
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aac, i64 16 ; 2 uses
  %i.aag = load volatile ptr, ptr %i.aaf, align 8, !tbaa !86
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 24
  store volatile ptr %i.aae, ptr %i.aah, align 8, !tbaa !83
  %i.aai = load volatile ptr, ptr %i.aaf, align 8, !tbaa !86
  store volatile ptr %i.aai, ptr %i.zp, align 8, !tbaa !90
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aac, i64 8 ; 4 uses
  %i.aak = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.aal = trunc nuw i8 %i.aak to i1
  br i1 %i.aal, label %bb.dx, label %bb.dy, !prof !59

bb.dx:                                            ; preds = %.lr.ph793
  %i.aam = atomicrmw volatile add ptr %i.aaj, i32 -1 monotonic, align 4
  %i.aan = add i32 %i.aam, -1
  br label %opal_thread_add_fetch_32.exit561

bb.dy:                                            ; preds = %.lr.ph793
  %i.aao = load volatile i32, ptr %i.aaj, align 8, !tbaa !8
  %i.aap = add nsw i32 %i.aao, -1
  store volatile i32 %i.aap, ptr %i.aaj, align 8, !tbaa !8
  %i.aaq = load volatile i32, ptr %i.aaj, align 8, !tbaa !8
  br label %opal_thread_add_fetch_32.exit561

opal_thread_add_fetch_32.exit561:                 ; preds = %bb.dx, %bb.dy
  %.0.i560 = phi i32 [ %i.aan, %bb.dx ], [ %i.aaq, %bb.dy ]
  %i.aar = icmp eq i32 %.0.i560, 0
  br i1 %i.aar, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %opal_thread_add_fetch_32.exit561
  %i.aas = load ptr, ptr %i.aac, align 8, !tbaa !75
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 48
  %i.aau = load ptr, ptr %i.aat, align 8, !tbaa !91 ; 2 uses
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !78 ; 2 uses
  %.not6.i562 = icmp eq ptr %i.aav, null
  br i1 %.not6.i562, label %opal_obj_run_destructors.exit566, label %.lr.ph.i563

.lr.ph.i563:                                      ; preds = %bb.dz, %.lr.ph.i563
  %i.aaw = phi ptr [ %i.aay, %.lr.ph.i563 ], [ %i.aav, %bb.dz ]
  %.07.i564 = phi ptr [ %i.aax, %.lr.ph.i563 ], [ %i.aau, %bb.dz ]
  call void %i.aaw(ptr noundef nonnull %i.aac) #22, !inline_history !92
  %i.aax = getelementptr inbounds nuw i8, ptr %.07.i564, i64 8 ; 2 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !78 ; 2 uses
  %.not.i565 = icmp eq ptr %i.aay, null
  br i1 %.not.i565, label %opal_obj_run_destructors.exit566, label %.lr.ph.i563, !llvm.loop !93

opal_obj_run_destructors.exit566:                 ; preds = %.lr.ph.i563, %bb.dz
  call void @free(ptr noundef nonnull %i.aac) #22
  br label %bb.ea

bb.ea:                                            ; preds = %opal_obj_run_destructors.exit566, %opal_thread_add_fetch_32.exit561
  %i.aaz = load volatile i64, ptr %i.zl, align 8, !tbaa !87
  %i.aba = icmp eq i64 %i.aaz, 0
  br i1 %i.aba, label %opal_list_remove_first.exit559.thread, label %.lr.ph793, !llvm.loop !108

opal_list_remove_first.exit559.thread:            ; preds = %bb.ea, %.preheader738, %._crit_edge792
  %i.abb = load ptr, ptr %7, align 8, !tbaa !75
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 48
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !91 ; 2 uses
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !78 ; 2 uses
  %.not6.i567 = icmp eq ptr %i.abe, null
  br i1 %.not6.i567, label %opal_obj_run_destructors.exit571, label %.lr.ph.i568

.lr.ph.i568:                                      ; preds = %opal_list_remove_first.exit559.thread, %.lr.ph.i568
  %i.abf = phi ptr [ %i.abh, %.lr.ph.i568 ], [ %i.abe, %opal_list_remove_first.exit559.thread ]
  %.07.i569 = phi ptr [ %i.abg, %.lr.ph.i568 ], [ %i.abd, %opal_list_remove_first.exit559.thread ]
  call void %i.abf(ptr noundef nonnull %7) #22, !inline_history !92
  %i.abg = getelementptr inbounds nuw i8, ptr %.07.i569, i64 8 ; 2 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !78 ; 2 uses
  %.not.i570 = icmp eq ptr %i.abh, null
  br i1 %.not.i570, label %opal_obj_run_destructors.exit571, label %.lr.ph.i568, !llvm.loop !93

opal_obj_run_destructors.exit571:                 ; preds = %.lr.ph.i568, %opal_list_remove_first.exit559.thread
  call void @PMIx_Info_construct(ptr noundef nonnull %10) #22
  %i.abi = call i32 @PMIx_Info_load(ptr noundef nonnull %10, ptr noundef nonnull @.str.9, ptr noundef nonnull @ompi_pmix_connect_timeout, i16 noundef zeroext 14) #22 ; 0 uses
  call void @qsort(ptr noundef %i.zn, i64 noundef %i.zm, i64 noundef 260, ptr noundef nonnull @compare_pmix_proc) #22
  %i.abj = call i32 @PMIx_Connect(ptr noundef %i.zn, i64 noundef %i.zm, ptr noundef nonnull %10, i64 noundef 1) #22
  call void @PMIx_Info_destruct(ptr noundef nonnull %10) #22
  call void @PMIx_Proc_free(ptr noundef %i.zn, i64 noundef %i.zm) #22
  %i.abk = call i32 @opal_pmix_convert_status(i32 noundef %i.abj) #22 ; 4 uses
  %.not353 = icmp eq i32 %i.abk, 0
  br i1 %.not353, label %bb.em, label %bb.eb

bb.eb:                                            ; preds = %opal_obj_run_destructors.exit571
  %i.abl = call ptr @opal_strerror(i32 noundef %i.abk) #22
  call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef %i.abl, ptr noundef nonnull @.str.6, i32 noundef 406) #22
  %i.abm = load volatile i32, ptr %i.gc, align 8, !tbaa !76
  %i.abn = icmp eq i32 %i.abm, 1
  br i1 %i.abn, label %.preheader737, label %opal_list_remove_first.exit573.thread

.preheader737:                                    ; preds = %bb.eb
  %i.abo = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.abp = load volatile i64, ptr %i.abo, align 8, !tbaa !87
  %i.abq = icmp eq i64 %i.abp, 0
  br i1 %i.abq, label %opal_list_remove_first.exit573.thread, label %.lr.ph794

.lr.ph794:                                        ; preds = %.preheader737
  %i.abr = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  br label %bb.ec

bb.ec:                                            ; preds = %.lr.ph794, %bb.eg
  %i.abs = load volatile i64, ptr %i.abo, align 8, !tbaa !87
  %i.abt = add i64 %i.abs, -1
  store volatile i64 %i.abt, ptr %i.abo, align 8, !tbaa !87
  %i.abu = load volatile ptr, ptr %i.abr, align 8, !tbaa !90 ; 6 uses
end_hunk_0
begin_hunk_1_@ompi_dpm_dyn_init:bb.a
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.g, label %bb.h, !prof !59

bb.g:                                             ; preds = %bb.f
  %i.s = atomicrmw volatile add ptr %i.p, i32 -1 monotonic, align 4
  %i.t = add i32 %i.s, -1
  br label %opal_thread_add_fetch_32.exit

bb.h:                                             ; preds = %bb.f
  %i.u = load volatile i32, ptr %i.p, align 4, !tbaa !8
  %i.v = add nsw i32 %i.u, -1
  store volatile i32 %i.v, ptr %i.p, align 4, !tbaa !8
  %i.w = load volatile i32, ptr %i.p, align 4, !tbaa !8
  br label %opal_thread_add_fetch_32.exit

opal_thread_add_fetch_32.exit:                    ; preds = %bb.g, %bb.h
  %.0.i = phi i32 [ %i.t, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i, 0
  br i1 %i.x, label %bb.i, label %bb.j

bb.i:                                             ; preds = %opal_thread_add_fetch_32.exit
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !15   ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !75
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !78 ; 2 uses
  %.not6.i = icmp eq ptr %i.ac, null
  br i1 %.not6.i, label %opal_obj_run_destructors.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i ], [ %i.ac, %bb.i ]
  %.07.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.ab, %bb.i ]
  tail call void %i.ad(ptr noundef nonnull %i.y) #22, !inline_history !92
  %i.ae = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !78 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %opal_obj_run_destructors.exit.loopexit, label %.lr.ph.i, !llvm.loop !93

opal_obj_run_destructors.exit.loopexit:           ; preds = %.lr.ph.i
  %.pre = load ptr, ptr @ompi_mpi_comm_parent, align 8, !tbaa !13
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 264
  %.pre32 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %opal_obj_run_destructors.exit

opal_obj_run_destructors.exit:                    ; preds = %opal_obj_run_destructors.exit.loopexit, %bb.i
  %i.ag = phi ptr [ %.pre32, %opal_obj_run_destructors.exit.loopexit ], [ %i.y, %bb.i ]
  tail call void @free(ptr noundef %i.ag) #22
  %i.ah = load ptr, ptr @ompi_mpi_comm_parent, align 8, !tbaa !13 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  store ptr null, ptr %i.ai, align 8, !tbaa !15
  %.pre33 = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61
  br label %bb.j

bb.j:                                             ; preds = %opal_thread_add_fetch_32.exit, %opal_obj_run_destructors.exit
  %i.aj = phi i8 [ %i.q, %opal_thread_add_fetch_32.exit ], [ %.pre33, %opal_obj_run_destructors.exit ] ; 2 uses
  %i.ak = phi ptr [ %i.m, %opal_thread_add_fetch_32.exit ], [ %i.ah, %opal_obj_run_destructors.exit ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 312 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !132
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 4 uses
  %i.ao = trunc nuw i8 %i.aj to i1
  br i1 %i.ao, label %bb.k, label %bb.l, !prof !59

bb.k:                                             ; preds = %bb.j
  %i.ap = atomicrmw volatile add ptr %i.an, i32 -1 monotonic, align 4
  %i.aq = add i32 %i.ap, -1
  br label %opal_thread_add_fetch_32.exit19

bb.l:                                             ; preds = %bb.j
  %i.ar = load volatile i32, ptr %i.an, align 4, !tbaa !8
  %i.as = add nsw i32 %i.ar, -1
  store volatile i32 %i.as, ptr %i.an, align 4, !tbaa !8
  %i.at = load volatile i32, ptr %i.an, align 4, !tbaa !8
  br label %opal_thread_add_fetch_32.exit19

opal_thread_add_fetch_32.exit19:                  ; preds = %bb.k, %bb.l
  %.0.i18 = phi i32 [ %i.aq, %bb.k ], [ %i.at, %bb.l ]
  %i.au = icmp eq i32 %.0.i18, 0
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %opal_thread_add_fetch_32.exit19
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !132 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !75
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !91 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78 ; 2 uses
  %.not6.i20 = icmp eq ptr %i.az, null
  br i1 %.not6.i20, label %opal_obj_run_destructors.exit24, label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %bb.m, %.lr.ph.i21
  %i.ba = phi ptr [ %i.bc, %.lr.ph.i21 ], [ %i.az, %bb.m ]
  %.07.i22 = phi ptr [ %i.bb, %.lr.ph.i21 ], [ %i.ay, %bb.m ]
  tail call void %i.ba(ptr noundef nonnull %i.av) #22, !inline_history !92
  %i.bb = getelementptr inbounds nuw i8, ptr %.07.i22, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !78 ; 2 uses
  %.not.i23 = icmp eq ptr %i.bc, null
  br i1 %.not.i23, label %opal_obj_run_destructors.exit24.loopexit, label %.lr.ph.i21, !llvm.loop !93

opal_obj_run_destructors.exit24.loopexit:         ; preds = %.lr.ph.i21
  %.pre34 = load ptr, ptr @ompi_mpi_comm_parent, align 8, !tbaa !13
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %.pre34, i64 312
  %.pre36 = load ptr, ptr %.phi.trans.insert35, align 8, !tbaa !132
  br label %opal_obj_run_destructors.exit24

opal_obj_run_destructors.exit24:                  ; preds = %opal_obj_run_destructors.exit24.loopexit, %bb.m
  %i.bd = phi ptr [ %.pre36, %opal_obj_run_destructors.exit24.loopexit ], [ %i.av, %bb.m ]
  tail call void @free(ptr noundef %i.bd) #22
  %i.be = load ptr, ptr @ompi_mpi_comm_parent, align 8, !tbaa !13 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 312
  store ptr null, ptr %i.bf, align 8, !tbaa !132
  %.pre37 = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61
  br label %bb.n

bb.n:                                             ; preds = %opal_thread_add_fetch_32.exit19, %opal_obj_run_destructors.exit24
  %i.bg = phi i8 [ %i.aj, %opal_thread_add_fetch_32.exit19 ], [ %.pre37, %opal_obj_run_destructors.exit24 ]
  %i.bh = phi ptr [ %i.ak, %opal_thread_add_fetch_32.exit19 ], [ %i.be, %opal_obj_run_destructors.exit24 ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = trunc nuw i8 %i.bg to i1
  br i1 %i.bj, label %bb.o, label %bb.p, !prof !59

bb.o:                                             ; preds = %bb.n
  %i.bk = atomicrmw volatile add ptr %i.bi, i32 -1 monotonic, align 4
  %i.bl = add i32 %i.bk, -1
  br label %opal_thread_add_fetch_32.exit26

bb.p:                                             ; preds = %bb.n
  %i.bm = load volatile i32, ptr %i.bi, align 4, !tbaa !8
  %i.bn = add nsw i32 %i.bm, -1
  store volatile i32 %i.bn, ptr %i.bi, align 4, !tbaa !8
  %i.bo = load volatile i32, ptr %i.bi, align 4, !tbaa !8
  br label %opal_thread_add_fetch_32.exit26

opal_thread_add_fetch_32.exit26:                  ; preds = %bb.o, %bb.p
  %.0.i25 = phi i32 [ %i.bl, %bb.o ], [ %i.bo, %bb.p ]
  %i.bp = icmp eq i32 %.0.i25, 0
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %opal_thread_add_fetch_32.exit26
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !75
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !91 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !78 ; 2 uses
  %.not6.i27 = icmp eq ptr %i.bt, null
  br i1 %.not6.i27, label %opal_obj_run_destructors.exit31, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.q, %.lr.ph.i28
  %i.bu = phi ptr [ %i.bw, %.lr.ph.i28 ], [ %i.bt, %bb.q ]
  %.07.i29 = phi ptr [ %i.bv, %.lr.ph.i28 ], [ %i.bs, %bb.q ]
  tail call void %i.bu(ptr noundef nonnull %i.bh) #22, !inline_history !92
  %i.bv = getelementptr inbounds nuw i8, ptr %.07.i29, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !78 ; 2 uses
  %.not.i30 = icmp eq ptr %i.bw, null
  br i1 %.not.i30, label %opal_obj_run_destructors.exit31.loopexit, label %.lr.ph.i28, !llvm.loop !93

opal_obj_run_destructors.exit31.loopexit:         ; preds = %.lr.ph.i28
  %.pre38 = load ptr, ptr @ompi_mpi_comm_parent, align 8, !tbaa !13
  br label %opal_obj_run_destructors.exit31

opal_obj_run_destructors.exit31:                  ; preds = %opal_obj_run_destructors.exit31.loopexit, %bb.q
  %i.bx = phi ptr [ %.pre38, %opal_obj_run_destructors.exit31.loopexit ], [ %i.bh, %bb.q ]
  tail call void @free(ptr noundef %i.bx) #22
  br label %bb.r

bb.r:                                             ; preds = %opal_obj_run_destructors.exit31, %opal_thread_add_fetch_32.exit26
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !13  ; 3 uses
  store ptr %i.by, ptr @ompi_mpi_comm_parent, align 8, !tbaa !13
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 160
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !183
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ca, ptr noundef nonnull align 1 dereferenceable(16) @.str.86, i64 16, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 224 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !184
  %i.cd = or i32 %i.cc, 2
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !184
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %bb.d, %bb.a, %bb.r
  %.014 = phi i32 [ 0, %bb.r ], [ 0, %bb.a ], [ -2, %bb.d ], [ %i.l, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.014
}

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define range(i32 -2, 1) i32 @ompi_dpm_dyn_finalize() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @ompi_comm_num_dyncomm, align 4, !tbaa !8 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %i.a to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #25 ; 9 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.y, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_communicators, i64 88), align 8, !tbaa !185 ; 2 uses
  %i.h = icmp sgt i32 %i.g, 3
  br i1 %i.h, label %.lr.ph.preheader, label %.sink.split

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %ompi_comm_lookup.exit.thread
  %indvars.iv = phi i64 [ 3, %.lr.ph.preheader ], [ %indvars.iv.next, %ompi_comm_lookup.exit.thread ] ; 4 uses
  %.057 = phi i32 [ 0, %.lr.ph.preheader ], [ %.1, %ompi_comm_lookup.exit.thread ] ; 5 uses
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_communicators, i64 88), align 8
  %i.j = sext i32 %i.i to i64
  %.not46 = icmp slt i64 %indvars.iv, %i.j
  br i1 %.not46, label %bb.d, label %ompi_comm_lookup.exit.thread, !prof !188

bb.d:                                             ; preds = %.lr.ph
  %i.k = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61, !noundef !62
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %.thread.i.i, !prof !59

.thread.i.i:                                      ; preds = %bb.d
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_communicators, i64 112), align 8, !tbaa !189
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !78
  br label %opal_pointer_array_get_item.exit.i

bb.e:                                             ; preds = %bb.d
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_mpi_communicators, i64 32)) #22 ; 0 uses
  %.pre.i.i = load i8, ptr @opal_uses_threads, align 1, !tbaa !60, !range !61
  %i.q = trunc nuw i8 %.pre.i.i to i1
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_mpi_communicators, i64 112), align 8, !tbaa !189
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 2 uses
  br i1 %i.q, label %bb.f, label %opal_pointer_array_get_item.exit.i, !prof !190

bb.f:                                             ; preds = %bb.e
  %i.u = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @ompi_mpi_communicators, i64 32)) #22 ; 0 uses
  br label %opal_pointer_array_get_item.exit.i

opal_pointer_array_get_item.exit.i:               ; preds = %bb.f, %bb.e, %.thread.i.i
  %.0.i.i = phi ptr [ %i.o, %.thread.i.i ], [ %i.t, %bb.f ], [ %i.t, %bb.e ] ; 6 uses
  %i.v = icmp ult ptr %.0.i.i, inttoptr (i64 2 to ptr)
  br i1 %i.v, label %ompi_comm_lookup.exit.thread, label %bb.g

bb.g:                                             ; preds = %opal_pointer_array_get_item.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 224
  %i.x = load i32, ptr %i.w, align 8, !tbaa !184  ; 2 uses
  %i.y = and i32 %i.x, 4104
  %or.cond.not = icmp eq i32 %i.y, 4104
  br i1 %or.cond.not, label %bb.h, label %ompi_comm_lookup.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.z = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #24 ; 10 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.99) #22
  br label %disconnect_init.exit

bb.j:                                             ; preds = %bb.h
  %i.ab = and i32 %i.x, 1
  %.not.i = icmp eq i32 %i.ab, 0
  %..i = select i1 %.not.i, i64 264, i64 272
  %i.ac = getelementptr i8, ptr %.0.i.i, i64 %..i
  %.val.pn.i = load ptr, ptr %i.ac, align 8, !tbaa !191
  %.in.i = getelementptr i8, ptr %.val.pn.i, i64 16
  %i.ad = load i32, ptr %.in.i, align 8, !tbaa !41 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !192
  store ptr %.0.i.i, ptr %i.z, align 8, !tbaa !195
  %i.af = shl nsw i32 %i.ad, 1
  %i.ag = sext i32 %i.af to i64
  %i.ah = shl nsw i64 %i.ag, 3
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #25 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 5 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !196
  %i.ak = icmp eq ptr %i.ai, null
  br i1 %i.ak, label %bb.k, label %.preheader.i

.preheader.i:                                     ; preds = %bb.j
  %i.al = icmp sgt i32 %i.ad, 0
  br i1 %i.al, label %.lr.ph.i, label %disconnect_init.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.z, i64 24 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.100) #22
  tail call void @free(ptr noundef nonnull %i.z) #22
  br label %disconnect_init.exit

bb.l:                                             ; preds = %bb.p, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.p ] ; 3 uses
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 64), align 8, !tbaa !197
  %i.ao = load ptr, ptr %i.aj, align 8, !tbaa !196
  %i.ap = shl nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  %i.as = tail call i32 %i.an(ptr noundef nonnull %i.am, i64 noundef 0, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.ar, i32 noundef -8, ptr noundef nonnull %.0.i.i, ptr noundef %i.aq) #22, !inline_history !198 ; 2 uses
  %.not40.i = icmp eq i32 %i.as, 0
  br i1 %.not40.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.101, i32 noundef %i.as, i32 noundef %i.ar) #22
  %i.at = load ptr, ptr %i.aj, align 8, !tbaa !196
  tail call void @free(ptr noundef %i.at) #22
  tail call void @free(ptr noundef nonnull %i.z) #22
  br label %disconnect_init.exit

bb.n:                                             ; preds = %bb.l
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @mca_pml, i64 88), align 8, !tbaa !199
  %i.av = load ptr, ptr %i.aj, align 8, !tbaa !196
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ap
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = tail call i32 %i.au(ptr noundef nonnull %i.am, i64 noundef 0, ptr noundef nonnull @ompi_mpi_int, i32 noundef %i.ar, i32 noundef -8, i32 noundef 0, ptr noundef nonnull %.0.i.i, ptr noundef nonnull %i.ax) #22, !inline_history !198 ; 2 uses
  %.not41.i = icmp eq i32 %i.ay, 0
  br i1 %.not41.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.102, i32 noundef %i.ay, i32 noundef %i.ar) #22
  %i.az = load ptr, ptr %i.aj, align 8, !tbaa !196
  tail call void @free(ptr noundef %i.az) #22
  tail call void @free(ptr noundef nonnull %i.z) #22
  br label %disconnect_init.exit

bb.p:                                             ; preds = %bb.n
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ba = load i32, ptr %i.ae, align 8, !tbaa !192
  %i.bb = sext i32 %i.ba to i64
  %i.bc = icmp slt i64 %indvars.iv.next.i, %i.bb
  br i1 %i.bc, label %bb.l, label %disconnect_init.exit, !llvm.loop !200

disconnect_init.exit:                             ; preds = %bb.p, %bb.i, %.preheader.i, %bb.k, %bb.m, %bb.o
  %.036.i = phi ptr [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.m ], [ null, %bb.o ], [ %i.z, %.preheader.i ], [ %i.z, %bb.p ]
  %i.bd = add nsw i32 %.057, 1
  %i.be = sext i32 %.057 to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.be
  store ptr %.036.i, ptr %i.bf, align 8, !tbaa !78
  br label %ompi_comm_lookup.exit.thread

ompi_comm_lookup.exit.thread:                     ; preds = %bb.g, %.lr.ph, %opal_pointer_array_get_item.exit.i, %disconnect_init.exit
  %.1 = phi i32 [ %i.bd, %disconnect_init.exit ], [ %.057, %bb.g ], [ %.057, %opal_pointer_array_get_item.exit.i ], [ %.057, %.lr.ph ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %ompi_comm_lookup.exit.thread
  %i.bg = load i32, ptr @ompi_comm_num_dyncomm, align 4, !tbaa !8 ; 5 uses
  %.not = icmp eq i32 %.1, %i.bg
  br i1 %.not, label %bb.s, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge
  %0 = icmp sgt i32 %.1, 0
  br i1 %0, label %.lr.ph.preheader.i, label %.sink.split

.lr.ph.preheader.i:                               ; preds = %._crit_edge.thread
  %wide.trip.count.i = zext nneg i32 %.1 to i64
  br label %.lr.ph.i23

.lr.ph.i23:                                       ; preds = %bb.r, %.lr.ph.preheader.i
  %indvars.iv.i24 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i26, %bb.r ] ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !78 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !196 ; 2 uses
  %.not.i25 = icmp eq ptr %i.bk, null
  br i1 %.not.i25, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i23
  tail call void @free(ptr noundef nonnull %i.bk) #22
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i23
  tail call void @free(ptr noundef nonnull %i.bi) #22
  %indvars.iv.next.i26 = add nuw nsw i64 %indvars.iv.i24, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i26, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.sink.split, label %.lr.ph.i23, !llvm.loop !202

bb.s:                                             ; preds = %._crit_edge
  %1 = icmp sgt i32 %i.bg, 0
  br i1 %1, label %.lr.ph.preheader.i27, label %._crit_edge.thread.i

.lr.ph.preheader.i27:                             ; preds = %bb.s
  %wide.trip.count.i28 = zext nneg i32 %i.bg to i64 ; 3 uses
  br label %.lr.ph.i29

.lr.ph.i29:                                       ; preds = %bb.u, %.lr.ph.preheader.i27
  %indvars.iv.i30 = phi i64 [ 0, %.lr.ph.preheader.i27 ], [ %indvars.iv.next.i31, %bb.u ] ; 2 uses
  %.02633.i = phi i32 [ 0, %.lr.ph.preheader.i27 ], [ %i.bq, %bb.u ]
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i30
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !78 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph.i29
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.103) #22
  br label %disconnect_waitall.exit

bb.u:                                             ; preds = %.lr.ph.i29
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !192
  %i.bq = add nsw i32 %i.bp, %.02633.i            ; 2 uses
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, %wide.trip.count.i28
  br i1 %exitcond.not.i32, label %._crit_edge.i, label %.lr.ph.i29, !llvm.loop !203

._crit_edge.i:                                    ; preds = %bb.u
  %i.br = shl nsw i32 %i.bq, 1
  %i.bs = sext i32 %i.br to i64                   ; 3 uses
  %i.bt = shl nsw i64 %i.bs, 3
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bt) #25 ; 5 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.v, label %.lr.ph37.i.preheader

.lr.ph37.i.preheader:                             ; preds = %._crit_edge.i
  %xtraiter = and i64 %wide.trip.count.i28, 1
  %i.bw = icmp eq i32 %i.bg, 1
  br i1 %i.bw, label %.lr.ph37.i.epil.preheader, label %.lr.ph37.i.preheader.new

.lr.ph37.i.preheader.new:                         ; preds = %.lr.ph37.i.preheader
  %unroll_iter = and i64 %wide.trip.count.i28, 2147483646
  br label %.lr.ph37.i

._crit_edge.thread.i:                             ; preds = %bb.s
  %i.bx = tail call noalias ptr @malloc(i64 noundef 0) #25 ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.v, label %._crit_edge38.i

bb.v:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  tail call void (i32, ptr, ...) @opal_output(i32 noundef 0, ptr noundef nonnull @.str.104) #22
  br label %disconnect_waitall.exit

.lr.ph37.i:                                       ; preds = %.lr.ph37.i, %.lr.ph37.i.preheader.new
  %indvars.iv40.i = phi i64 [ 0, %.lr.ph37.i.preheader.new ], [ %indvars.iv.next41.i.1, %.lr.ph37.i ] ; 3 uses
  %.02735.i = phi ptr [ %i.bu, %.lr.ph37.i.preheader.new ], [ %i.ct, %.lr.ph37.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph37.i.preheader.new ], [ %niter.next.1, %.lr.ph37.i ]
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv40.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !78 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !196
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !192
  %i.cf = shl nsw i32 %i.ce, 1
  %i.cg = sext i32 %i.cf to i64
  %i.ch = shl nsw i64 %i.cg, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02735.i, ptr align 8 %i.cc, i64 %i.ch, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.02735.i, i64 %i.ch ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv40.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !78 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !196
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !192
  %i.cq = shl nsw i32 %i.cp, 1
  %i.cr = sext i32 %i.cq to i64
  %i.cs = shl nsw i64 %i.cr, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ci, ptr align 8 %i.cn, i64 %i.cs, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cs ; 2 uses
  %indvars.iv.next41.i.1 = add nuw nsw i64 %indvars.iv40.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge38.i.loopexit.unr-lcssa, label %.lr.ph37.i, !llvm.loop !204

._crit_edge38.i.loopexit.unr-lcssa:               ; preds = %.lr.ph37.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge38.i, label %.lr.ph37.i.epil.preheader

.lr.ph37.i.epil.preheader:                        ; preds = %._crit_edge38.i.loopexit.unr-lcssa, %.lr.ph37.i.preheader
  %indvars.iv40.i.epil.init = phi i64 [ 0, %.lr.ph37.i.preheader ], [ %indvars.iv.next41.i.1, %._crit_edge38.i.loopexit.unr-lcssa ]
  %.02735.i.epil.init = phi ptr [ %i.bu, %.lr.ph37.i.preheader ], [ %i.ct, %._crit_edge38.i.loopexit.unr-lcssa ]
  %lcmp.mod111 = trunc i32 %i.bg to i1
  tail call void @llvm.assume(i1 %lcmp.mod111)
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv40.i.epil.init
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !78 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !196
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !192
  %i.da = shl nsw i32 %i.cz, 1
  %i.db = sext i32 %i.da to i64
  %i.dc = shl nsw i64 %i.db, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02735.i.epil.init, ptr align 8 %i.cx, i64 %i.dc, i1 false)
  br label %._crit_edge38.i

._crit_edge38.i:                                  ; preds = %.lr.ph37.i.epil.preheader, %._crit_edge38.i.loopexit.unr-lcssa, %._crit_edge.thread.i
  %.026.lcssa4850.i = phi i64 [ 0, %._crit_edge.thread.i ], [ %i.bs, %._crit_edge38.i.loopexit.unr-lcssa ], [ %i.bs, %.lr.ph37.i.epil.preheader ]
  %i.dd = phi ptr [ %i.bx, %._crit_edge.thread.i ], [ %i.bu, %._crit_edge38.i.loopexit.unr-lcssa ], [ %i.bu, %.lr.ph37.i.epil.preheader ] ; 2 uses
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ompi_request_functions, i64 48), align 8, !tbaa !205
  %i.df = tail call i32 %i.de(i64 noundef %.026.lcssa4850.i, ptr noundef nonnull %i.dd, ptr noundef null) #22, !inline_history !207 ; 0 uses
  tail call void @free(ptr noundef nonnull %i.dd) #22
  br label %disconnect_waitall.exit

disconnect_waitall.exit:                          ; preds = %bb.t, %bb.v, %._crit_edge38.i
  %i.dg = load i32, ptr @ompi_comm_num_dyncomm, align 4, !tbaa !8 ; 2 uses
  %i.dh = icmp sgt i32 %i.dg, 0
  br i1 %i.dh, label %.lr.ph.preheader.i35, label %.sink.split

.lr.ph.preheader.i35:                             ; preds = %disconnect_waitall.exit
  %wide.trip.count.i36 = zext nneg i32 %i.dg to i64
  br label %.lr.ph.i37

.lr.ph.i37:                                       ; preds = %bb.x, %.lr.ph.preheader.i35
  %indvars.iv.i38 = phi i64 [ 0, %.lr.ph.preheader.i35 ], [ %indvars.iv.next.i41, %bb.x ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i38
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !78 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !196 ; 2 uses
  %.not.i39 = icmp eq ptr %i.dl, null
  br i1 %.not.i39, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i37
  tail call void @free(ptr noundef nonnull %i.dl) #22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph.i37
  tail call void @free(ptr noundef nonnull %i.dj) #22
  %indvars.iv.next.i41 = add nuw nsw i64 %indvars.iv.i38, 1 ; 2 uses
  %exitcond.not.i42 = icmp eq i64 %indvars.iv.next.i41, %wide.trip.count.i36
  br i1 %exitcond.not.i42, label %.sink.split, label %.lr.ph.i37, !llvm.loop !202

.sink.split:                                      ; preds = %bb.r, %bb.x, %disconnect_waitall.exit, %._crit_edge.thread, %bb.c
  %.016.ph = phi i32 [ -1, %._crit_edge.thread ], [ 0, %bb.x ], [ -1, %bb.c ], [ 0, %disconnect_waitall.exit ], [ -1, %bb.r ]
  tail call void @free(ptr noundef nonnull %i.e) #22
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.016 = phi i32 [ -2, %bb.b ], [ 0, %bb.a ], [ %.016.ph, %.sink.split ]
  ret i32 %.016
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @ompi_dpm_mark_dyncomm(ptr nofree noundef captures(address) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = icmp eq ptr %0, @ompi_mpi_comm_null
  br i1 %i.a, label %ompi_dpm_group_is_dyn.exit.thread28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32
  %.val = load ptr, ptr %i.d, align 8, !tbaa !56  ; 2 uses
  %i.e = load ptr, ptr %.val, align 8, !tbaa !57  ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.g = trunc i64 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %i.f, 1
  %i.i = and i64 %i.h, 32767
  %i.j = and i64 %i.f, -65536
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %i.i, %i.j
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.insert.insert.i.i, %bb.c ], [ %.sroa.0.0.copyload.i, %bb.d ]
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.i to i32 ; 2 uses
  %i.l = getelementptr i8, ptr %i.c, i64 16
  %.val17.i = load i32, ptr %i.l, align 8, !tbaa !41 ; 2 uses
  %.not1618.i = icmp sgt i32 %.val17.i, 0
  br i1 %.not1618.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.e
  %wide.trip.count.i = zext nneg i32 %.val17.i to i64
  br label %bb.g

bb.f:                                             ; preds = %ompi_group_get_proc_name.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.g, !llvm.loop !208

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64                 ; 3 uses
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.q = lshr i64 %i.o, 1
  %i.r = and i64 %i.q, 32767
  %i.s = and i64 %i.o, -65536
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %i.r, %i.s
  br label %ompi_group_get_proc_name.exit.i

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.t, align 8
  br label %ompi_group_get_proc_name.exit.i

ompi_group_get_proc_name.exit.i:                  ; preds = %bb.i, %bb.h
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.insert.insert.i.i.i, %bb.h ], [ %.sroa.0.0.copyload.i.i, %bb.i ]
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.i.i to i32
  %.not15.not.i = icmp eq i32 %.sroa.0.0.extract.trunc, %.sroa.0.0.extract.trunc.i
  br i1 %.not15.not.i, label %bb.f, label %ompi_dpm_group_is_dyn.exit

.loopexit:                                        ; preds = %bb.f, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !134  ; 3 uses
  %.not.i9 = icmp eq ptr %i.v, null
  br i1 %.not.i9, label %ompi_dpm_group_is_dyn.exit.thread28, label %bb.j

bb.j:                                             ; preds = %.loopexit
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %.val17.i10 = load i32, ptr %i.w, align 8, !tbaa !41 ; 2 uses
  %.not1618.i11 = icmp sgt i32 %.val17.i10, 0
  br i1 %.not1618.i11, label %.lr.ph.i13, label %ompi_dpm_group_is_dyn.exit.thread28

.lr.ph.i13:                                       ; preds = %bb.j
  %i.x = getelementptr i8, ptr %i.v, i64 32
  %.val.i14 = load ptr, ptr %i.x, align 8, !tbaa !56
  %wide.trip.count.i15 = zext nneg i32 %.val17.i10 to i64
  br label %bb.l

bb.k:                                             ; preds = %ompi_group_get_proc_name.exit.i18
  %indvars.iv.next.i22 = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %exitcond.not.i23 = icmp eq i64 %indvars.iv.next.i22, %wide.trip.count.i15
  br i1 %exitcond.not.i23, label %ompi_dpm_group_is_dyn.exit.thread28, label %bb.l, !llvm.loop !208

bb.l:                                             ; preds = %bb.k, %.lr.ph.i13
  %indvars.iv.i16 = phi i64 [ 0, %.lr.ph.i13 ], [ %indvars.iv.next.i22, %bb.k ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.val.i14, i64 %indvars.iv.i16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !57   ; 2 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 3 uses
  %i.ab = trunc i64 %i.aa to i1
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ac = lshr i64 %i.aa, 1
  %i.ad = and i64 %i.ac, 32767
  %i.ae = and i64 %i.aa, -65536
  %.sroa.0.0.insert.insert.i.i.i24 = or disjoint i64 %i.ad, %i.ae
  br label %ompi_group_get_proc_name.exit.i18

bb.n:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.0.0.copyload.i.i17 = load i64, ptr %i.af, align 8
  br label %ompi_group_get_proc_name.exit.i18

ompi_group_get_proc_name.exit.i18:                ; preds = %bb.n, %bb.m
  %.sroa.0.0.i.i19 = phi i64 [ %.sroa.0.0.insert.insert.i.i.i24, %bb.m ], [ %.sroa.0.0.copyload.i.i17, %bb.n ]
  %.sroa.0.0.extract.trunc.i20 = trunc i64 %.sroa.0.0.i.i19 to i32
  %.not15.not.i21 = icmp eq i32 %.sroa.0.0.extract.trunc, %.sroa.0.0.extract.trunc.i20
  br i1 %.not15.not.i21, label %bb.k, label %ompi_dpm_group_is_dyn.exit

ompi_dpm_group_is_dyn.exit:                       ; preds = %ompi_group_get_proc_name.exit.i, %ompi_group_get_proc_name.exit.i18
  %i.ag = load i32, ptr @ompi_comm_num_dyncomm, align 4, !tbaa !8
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr @ompi_comm_num_dyncomm, align 4, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !184
  %i.ak = or i32 %i.aj, 8
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !184
  br label %ompi_dpm_group_is_dyn.exit.thread28

ompi_dpm_group_is_dyn.exit.thread28:              ; preds = %bb.k, %.loopexit, %bb.j, %ompi_dpm_group_is_dyn.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ompi_proc_for_name(i64) local_unnamed_addr #3

declare zeroext i1 @PMIx_Check_key(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare ptr @opal_find_absolute_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare ptr @ompi_pmix_print_id(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @set_handler_default(i32 noundef range(i32 1, 18) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.sigaction, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  store ptr null, ptr %1, align 8, !tbaa !66
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136
  store i32 0, ptr %i.a, align 8, !tbaa !209
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = call i32 @sigemptyset(ptr noundef nonnull %i.b) #22 ; 0 uses
  %i.d = call i32 @sigaction(i32 noundef %0, ptr noundef nonnull %1, ptr noundef null) #22 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: nounwind
declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @execv(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #16

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #17

end_hunk_1
