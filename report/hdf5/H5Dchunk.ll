inline.NumInlined: 65
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@H5D__chunk_lock:bb.a
  %i.ia = load i64, ptr @H5E_CANTCONVERT_g, align 8, !tbaa !23
  %i.ib = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4914, i64 noundef %i.hz, i64 noundef %i.ia, ptr noundef nonnull @.str.32) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %bb.ee

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.0214 = phi i1 [ true, %bb.br ], [ true, %bb.bq ], [ false, %bb.bs ]
  %i.ic = load i32, ptr %i.q, align 8, !tbaa !296
  %i.id = add i32 %i.ic, 1
  store i32 %i.id, ptr %i.q, align 8, !tbaa !296
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.be, %bb.ah
  %.0213827 = phi i32 [ %.021382934, %bb.ah ], [ %.021382851158, %bb.be ], [ %.02138285263, %bb.bt ] ; 2 uses
  %.12041325 = phi ptr [ %.1204132336, %bb.ah ], [ %.1204132454153, %bb.be ], [ %.120413245561, %bb.bt ] ; 10 uses
  %.2216 = phi i1 [ false, %bb.ah ], [ false, %bb.be ], [ %.0214, %bb.bt ] ; 5 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.n, i64 3672
  %i.if = load i64, ptr %i.ie, align 8, !tbaa !65
  %.not250 = icmp eq i64 %i.if, 0
  br i1 %.not250, label %.split, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ig = getelementptr inbounds nuw i8, ptr %i.n, i64 3664
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !66
  %.not251 = icmp ugt i64 %i.s, %i.ih
  br i1 %.not251, label %.split, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ii = load ptr, ptr %i.m, align 8, !tbaa !13  ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !222 ; 6 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ii, i64 2836
  %i.im = load i32, ptr %i.il, align 4, !tbaa !24 ; 3 uses
  %i.in = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.io = trunc nuw i8 %i.in to i1                ; 2 uses
  %i.ip = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.iq = trunc nuw i8 %i.ip to i1
  %i.ir = xor i1 %i.iq, true                      ; 2 uses
  %i.is = select i1 %i.io, i1 true, i1 %i.ir
  br i1 %i.is, label %bb.bx, label %H5D__chunk_hash_val.exit, !prof !12

bb.bx:                                            ; preds = %bb.bw
  %i.it = load i64, ptr %i.ik, align 8, !tbaa !23 ; 3 uses
  %i.iu = icmp ugt i32 %i.im, 1
  br i1 %i.iu, label %.lr.ph.i282, label %._crit_edge.i

.lr.ph.i282:                                      ; preds = %bb.bx
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ii, i64 4576 ; 5 uses
  %wide.trip.count.i283 = zext i32 %i.im to i64
  %i.iw = add nsw i64 %wide.trip.count.i283, -1   ; 2 uses
  %xtraiter = and i64 %i.iw, 3                    ; 3 uses
  %i.ix = add i32 %i.im, -2
  %i.iy = icmp ult i32 %i.ix, 3
  br i1 %i.iy, label %.epil.preheader, label %.lr.ph.i282.new

.lr.ph.i282.new:                                  ; preds = %.lr.ph.i282
  %unroll_iter = and i64 %i.iw, -4
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.lr.ph.i282.new
  %indvars.iv.i284 = phi i64 [ 1, %.lr.ph.i282.new ], [ %indvars.iv.next.i285.3, %bb.by ] ; 6 uses
  %.01415.i = phi i64 [ %i.it, %.lr.ph.i282.new ], [ %i.ka, %bb.by ]
  %niter = phi i64 [ 0, %.lr.ph.i282.new ], [ %niter.next.3, %bb.by ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.i284
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !52
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = shl i64 %.01415.i, %i.jb
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.i284
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !23
  %i.jf = xor i64 %i.jc, %i.je
  %indvars.iv.next.i285 = add nuw nsw i64 %indvars.iv.i284, 1 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i285
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !52
  %i.ji = zext nneg i32 %i.jh to i64
  %i.jj = shl i64 %i.jf, %i.ji
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next.i285
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !23
  %i.jm = xor i64 %i.jj, %i.jl
  %indvars.iv.next.i285.1 = add nuw nsw i64 %indvars.iv.i284, 2 ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i285.1
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !52
  %i.jp = zext nneg i32 %i.jo to i64
  %i.jq = shl i64 %i.jm, %i.jp
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next.i285.1
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !23
  %i.jt = xor i64 %i.jq, %i.js
  %indvars.iv.next.i285.2 = add nuw nsw i64 %indvars.iv.i284, 3 ; 2 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.next.i285.2
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !52
  %i.jw = zext nneg i32 %i.jv to i64
  %i.jx = shl i64 %i.jt, %i.jw
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.next.i285.2
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !23
  %i.ka = xor i64 %i.jx, %i.jz                    ; 3 uses
  %indvars.iv.next.i285.3 = add nuw nsw i64 %indvars.iv.i284, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.by, !llvm.loop !245

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.by
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i282
  %indvars.iv.i284.epil.init = phi i64 [ 1, %.lr.ph.i282 ], [ %indvars.iv.next.i285.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01415.i.epil.init = phi i64 [ %i.it, %.lr.ph.i282 ], [ %i.ka, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod161 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod161)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.epil.preheader
  %indvars.iv.i284.epil = phi i64 [ %indvars.iv.i284.epil.init, %.epil.preheader ], [ %indvars.iv.next.i285.epil, %bb.bz ] ; 3 uses
  %.01415.i.epil = phi i64 [ %.01415.i.epil.init, %.epil.preheader ], [ %i.kh, %bb.bz ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bz ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %indvars.iv.i284.epil
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !52
  %i.kd = zext nneg i32 %i.kc to i64
  %i.ke = shl i64 %.01415.i.epil, %i.kd
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ik, i64 %indvars.iv.i284.epil
  %i.kg = load i64, ptr %i.kf, align 8, !tbaa !23
  %i.kh = xor i64 %i.ke, %i.kg                    ; 2 uses
  %indvars.iv.next.i285.epil = add nuw nsw i64 %indvars.iv.i284.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.bz, !llvm.loop !297

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.bz, %bb.bx
  %.014.lcssa.i = phi i64 [ %i.it, %bb.bx ], [ %i.ka, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.kh, %bb.bz ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ii, i64 3672
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !244
  %i.kk = urem i64 %.014.lcssa.i, %i.kj
  %i.kl = trunc i64 %i.kk to i32
  br label %H5D__chunk_hash_val.exit

H5D__chunk_hash_val.exit:                         ; preds = %bb.bw, %._crit_edge.i
  %.013.i = phi i32 [ %i.kl, %._crit_edge.i ], [ 0, %bb.bw ] ; 2 uses
  store i32 %.013.i, ptr %i.t, align 8, !tbaa !211
  %i.km = getelementptr inbounds nuw i8, ptr %i.n, i64 4032 ; 2 uses
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !68
  %i.ko = zext i32 %.013.i to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !214 ; 3 uses
  %.not252 = icmp eq ptr %i.kq, null
  br i1 %.not252, label %.critedge262, label %bb.ca

bb.ca:                                            ; preds = %H5D__chunk_hash_val.exit
  %i.kr = load i8, ptr %i.kq, align 8, !tbaa !215, !range !10, !noundef !11
  %i.ks = trunc nuw i8 %i.kr to i1
  br i1 %i.ks, label %.split, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kt = call fastcc i32 @H5D__chunk_cache_evict(ptr noundef nonnull %i.l, ptr noundef nonnull %i.kq, i1 noundef zeroext true)
  %i.ku = icmp slt i32 %i.kt, 0
  br i1 %i.ku, label %.split102, label %..critedge262_crit_edge

..critedge262_crit_edge:                          ; preds = %bb.cb
  %.pre109 = load ptr, ptr %i.m, align 8, !tbaa !13
  %.pre110 = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10
  %.pre111 = load i8, ptr @H5_libterm_g, align 1, !range !10
  %.pre112 = trunc nuw i8 %.pre110 to i1
  %.pre113 = trunc nuw i8 %.pre111 to i1
  %.pre115 = xor i1 %.pre113, true
  br label %.critedge262

.split102:                                        ; preds = %bb.cb
  %i.kv = load i64, ptr @H5E_IO_g, align 8, !tbaa !23
  %i.kw = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.kx = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4935, i64 noundef %i.kv, i64 noundef %i.kw, ptr noundef nonnull @.str.173) #15 ; 0 uses
  br i1 %.2216, label %bb.ee, label %.thread88

.critedge262:                                     ; preds = %..critedge262_crit_edge, %H5D__chunk_hash_val.exit
  %.pre-phi116 = phi i1 [ %.pre115, %..critedge262_crit_edge ], [ %i.ir, %H5D__chunk_hash_val.exit ]
  %.pre-phi = phi i1 [ %.pre112, %..critedge262_crit_edge ], [ %i.io, %H5D__chunk_hash_val.exit ]
  %i.ky = phi ptr [ %.pre109, %..critedge262_crit_edge ], [ %i.ii, %H5D__chunk_hash_val.exit ] ; 5 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 3664
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !66 ; 2 uses
  %i.lb = select i1 %.pre-phi, i1 true, i1 %.pre-phi116
  br i1 %i.lb, label %bb.cc, label %bb.dx, !prof !12

bb.cc:                                            ; preds = %.critedge262
  %i.lc = getelementptr inbounds nuw i8, ptr %i.ky, i64 3688 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !238 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ky, i64 3712 ; 2 uses
  %.not93.i = icmp eq ptr %i.ld, null
  br i1 %.not93.i, label %bb.dx, label %.lr.ph.preheader.i287

.lr.ph.preheader.i287:                            ; preds = %bb.cc
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ky, i64 3680
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !67
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ky, i64 3720
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !262
  %i.lj = sitofp i32 %i.li to double
  %i.lk = fmul double %i.lg, %i.lj
  %i.ll = fptosi double %i.lk to i32
  br label %.lr.ph.i288

.lr.ph.i288:                                      ; preds = %.critedge4.i, %.lr.ph.preheader.i287
  %.sroa.12.0.i = phi ptr [ null, %.lr.ph.preheader.i287 ], [ %.sroa.8.1.i, %.critedge4.i ]
  %.sroa.0100.0.i = phi ptr [ %i.ld, %.lr.ph.preheader.i287 ], [ %.sroa.0.2.i, %.critedge4.i ] ; 17 uses
  %.06190.i.a = phi i32 [ %i.ll, %.lr.ph.preheader.i287 ], [ %indvars.iv.i289, %.critedge4.i ] ; 2 uses
  %.sroa.0.089.i = phi i32 [ 0, %.lr.ph.preheader.i287 ], [ %.162.lcssa.i, %.critedge4.i ] ; 7 uses
  %indvars.iv.i289 = add i32 %.06190.i.a, -1
  %i.lm = load i64, ptr %i.le, align 8, !tbaa !261
  %i.ln = add i64 %i.lm, %i.s                     ; 6 uses
  %i.lo = icmp ugt i64 %i.ln, %i.la
  br i1 %i.lo, label %.preheader81.i, label %.critedge.i

.preheader81.i:                                   ; preds = %.lr.ph.i288
  %i.lp = icmp eq i32 %.06190.i.a, 0
  br i1 %i.lp, label %.preheader80.split.us.i, label %.preheader80.i

.preheader80.split.us.i:                          ; preds = %.preheader81.i
  %i.lq = load ptr, ptr %i.lc, align 8, !tbaa !238
  br label %.preheader80.i

.preheader80.i:                                   ; preds = %.preheader80.split.us.i, %.preheader81.i
  %.us-phi.i = phi ptr [ %i.lq, %.preheader80.split.us.i ], [ %.sroa.12.0.i, %.preheader81.i ] ; 8 uses
  %.not71.i = icmp eq ptr %.sroa.0100.0.i, null   ; 2 uses
  br i1 %.not71.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.preheader80.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 328
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !239
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.preheader80.i
  %i.lt = phi ptr [ %i.ls, %bb.cd ], [ null, %.preheader80.i ] ; 6 uses
  %.not71.1.i = icmp eq ptr %.us-phi.i, null
  br i1 %.not71.1.i, label %.preheader79.preheader.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lu = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 328
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !239
  br label %.preheader79.preheader.i

.preheader79.preheader.i:                         ; preds = %bb.cf, %bb.ce
  %i.lw = phi ptr [ %i.lv, %bb.cf ], [ null, %bb.ce ] ; 6 uses
  br i1 %.not71.i, label %.thread75.i, label %bb.cg

bb.cg:                                            ; preds = %.preheader79.preheader.i
  %i.lx = load i8, ptr %.sroa.0100.0.i, align 8, !tbaa !215, !range !10, !noundef !11
  %i.ly = trunc nuw i8 %i.lx to i1
  br i1 %i.ly, label %.thread75.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lz = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 272
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !298 ; 2 uses
  %i.mb = icmp eq i64 %i.ma, 0
  br i1 %i.mb, label %bb.ci, label %._crit_edge111.i

._crit_edge111.i:                                 ; preds = %bb.ch
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !13
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 552
  %.pre112.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !22
  br label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.mc = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 280
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !299 ; 2 uses
  %i.me = icmp eq i64 %i.md, 0
  br i1 %i.me, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.mf = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 552
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !22 ; 2 uses
  %i.mi = icmp eq i64 %i.mh, %i.md
  br i1 %i.mi, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge111.i
  %i.mj = phi i64 [ %.pre112.i, %._crit_edge111.i ], [ %i.mh, %bb.cj ]
  %i.mk = icmp eq i64 %i.mj, %i.ma
  br i1 %i.mk, label %bb.cl, label %.thread75.i

bb.cl:                                            ; preds = %bb.ck
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 280
  %i.mm = load i64, ptr %i.ml, align 8, !tbaa !299
  %i.mn = icmp eq i64 %i.mm, 0
  br i1 %i.mn, label %bb.cm, label %.thread75.i

bb.cm:                                            ; preds = %bb.cl, %bb.cj, %bb.ci
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 328 ; 4 uses
  %i.mp = icmp eq ptr %i.lt, %.sroa.0100.0.i
  br i1 %i.mp, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.mq = load ptr, ptr %i.mo, align 8, !tbaa !239
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.sroa.0.0.i = phi ptr [ %i.mq, %bb.cn ], [ %i.lt, %bb.cm ] ; 2 uses
  %i.mr = icmp eq ptr %.us-phi.i, %.sroa.0100.0.i
  %spec.store.select.1.i = select i1 %i.mr, ptr null, ptr %.us-phi.i ; 2 uses
  %i.ms = icmp eq ptr %i.lw, %.sroa.0100.0.i
  br i1 %i.ms, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.mt = load ptr, ptr %i.mo, align 8, !tbaa !239
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.sroa.8.2.i = phi ptr [ %i.mt, %bb.cp ], [ %i.lw, %bb.co ] ; 2 uses
  %i.mu = load ptr, ptr %i.m, align 8, !tbaa !13  ; 5 uses
  %i.mv = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.mw = trunc nuw i8 %i.mv to i1
  %i.mx = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.my = trunc nuw i8 %i.mx to i1
  %i.mz = xor i1 %i.my, true
  %i.na = select i1 %i.mw, i1 true, i1 %i.mz
  br i1 %i.na, label %bb.cr, label %.thread75.i, !prof !12

bb.cr:                                            ; preds = %bb.cq
  %i.nb = call fastcc i32 @H5D__chunk_flush_entry(ptr noundef nonnull %i.l, ptr noundef nonnull %.sroa.0100.0.i, i1 noundef zeroext true) ; 2 uses
  %i.nc = icmp slt i32 %i.nb, 0
  br i1 %i.nc, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.nd = load i64, ptr @H5E_IO_g, align 8, !tbaa !23
  %i.ne = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !23
  %i.nf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_cache_evict, i32 noundef 4421, i64 noundef %i.nd, i64 noundef %i.ne, ptr noundef nonnull @.str.22) #15 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.ng = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 336
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !256 ; 4 uses
  %.not43.i.i = icmp eq ptr %i.nh, null
  %i.ni = load ptr, ptr %i.mo, align 8, !tbaa !239 ; 4 uses
  br i1 %.not43.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 328
  store ptr %i.ni, ptr %i.nj, align 8, !tbaa !239
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mu, i64 3688
  store ptr %i.ni, ptr %i.nk, align 8, !tbaa !238
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.not44.i.i = icmp eq ptr %i.ni, null
  br i1 %.not44.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ni, i64 336
  store ptr %i.nh, ptr %i.nl, align 8, !tbaa !256
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.nm = getelementptr inbounds nuw i8, ptr %i.mu, i64 3696
  store ptr %i.nh, ptr %i.nm, align 8, !tbaa !257
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 352 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mo, i8 0, i64 16, i1 false)
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !258 ; 3 uses
  %.not45.i.i = icmp eq ptr %i.no, null
  br i1 %.not45.i.i, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.np = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 344 ; 2 uses
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !259 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.no, i64 344
  store ptr %i.nq, ptr %i.nr, align 8, !tbaa !259
  %.not46.i.i = icmp eq ptr %i.nq, null
  br i1 %.not46.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nq, i64 352
  store ptr %i.no, ptr %i.ns, align 8, !tbaa !258
  store ptr null, ptr %i.np, align 8, !tbaa !259
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  store ptr null, ptr %i.nn, align 8, !tbaa !258
  br label %H5D__chunk_cache_evict.exit.i

bb.dd:                                            ; preds = %bb.cz
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mu, i64 4032
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !68
  %i.nv = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 320
  %i.nw = load i32, ptr %i.nv, align 8, !tbaa !260
  %i.nx = zext i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.nx
  store ptr null, ptr %i.ny, align 8, !tbaa !214
  br label %H5D__chunk_cache_evict.exit.i

H5D__chunk_cache_evict.exit.i:                    ; preds = %bb.dd, %bb.dc
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 320
  store i32 -1, ptr %i.nz, align 8, !tbaa !260
  %i.oa = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 552
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !22
  %i.od = getelementptr inbounds nuw i8, ptr %i.mu, i64 3712 ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !261
  %i.of = sub i64 %i.oe, %i.oc
  store i64 %i.of, ptr %i.od, align 8, !tbaa !261
  %i.og = getelementptr inbounds nuw i8, ptr %i.mu, i64 3720 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !262
  %i.oi = add nsw i32 %i.oh, -1
  store i32 %i.oi, ptr %i.og, align 8, !tbaa !262
  %i.oj = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5D_rdcc_ent_t_reg_free_list, ptr noundef nonnull %.sroa.0100.0.i) #15 ; 0 uses
  %.lobit.i = lshr i32 %i.nb, 31
  %spec.select.i = add nsw i32 %.lobit.i, %.sroa.0.089.i
  %.pre113.i = load i64, ptr %i.le, align 8, !tbaa !261
  %.pre119.i = add i64 %.pre113.i, %i.s
  br label %.thread75.i

.thread75.i:                                      ; preds = %H5D__chunk_cache_evict.exit.i, %bb.cq, %bb.cl, %bb.ck, %bb.cg, %.preheader79.preheader.i
  %.pre-phi.i = phi i64 [ %i.ln, %bb.cl ], [ %.pre119.i, %H5D__chunk_cache_evict.exit.i ], [ %i.ln, %bb.cq ], [ %i.ln, %bb.cg ], [ %i.ln, %bb.ck ], [ %i.ln, %.preheader79.preheader.i ]
  %.sroa.12.1.i = phi ptr [ %.us-phi.i, %bb.cl ], [ %spec.store.select.1.i, %H5D__chunk_cache_evict.exit.i ], [ %spec.store.select.1.i, %bb.cq ], [ %.us-phi.i, %bb.cg ], [ %.us-phi.i, %bb.ck ], [ %.us-phi.i, %.preheader79.preheader.i ] ; 12 uses
  %.sroa.8.0.i = phi ptr [ %i.lw, %bb.cl ], [ %.sroa.8.2.i, %H5D__chunk_cache_evict.exit.i ], [ %.sroa.8.2.i, %bb.cq ], [ %i.lw, %bb.cg ], [ %i.lw, %bb.ck ], [ %i.lw, %.preheader79.preheader.i ] ; 4 uses
  %.sroa.0.1.i = phi ptr [ %i.lt, %bb.cl ], [ %.sroa.0.0.i, %H5D__chunk_cache_evict.exit.i ], [ %.sroa.0.0.i, %bb.cq ], [ %i.lt, %bb.cg ], [ %i.lt, %bb.ck ], [ %i.lt, %.preheader79.preheader.i ] ; 4 uses
  %.364.i = phi i32 [ %.sroa.0.089.i, %bb.cl ], [ %spec.select.i, %H5D__chunk_cache_evict.exit.i ], [ %.sroa.0.089.i, %bb.cq ], [ %.sroa.0.089.i, %bb.cg ], [ %.sroa.0.089.i, %bb.ck ], [ %.sroa.0.089.i, %.preheader79.preheader.i ] ; 4 uses
  %i.ok = icmp ule i64 %.pre-phi.i, %i.la
  %.not135.i = icmp eq ptr %.sroa.12.1.i, null
  %or.cond137.i = select i1 %i.ok, i1 true, i1 %.not135.i
  br i1 %or.cond137.i, label %.critedge4.i, label %bb.de

bb.de:                                            ; preds = %.thread75.i
  %i.ol = load i8, ptr %.sroa.12.1.i, align 8, !tbaa !215, !range !10, !noundef !11
  %i.om = trunc nuw i8 %i.ol to i1
  br i1 %i.om, label %.critedge4.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 328 ; 4 uses
  %i.oo = icmp eq ptr %.sroa.0.1.i, %.sroa.12.1.i
  br i1 %i.oo, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.op = load ptr, ptr %i.on, align 8, !tbaa !239
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.sroa.0.3.i = phi ptr [ %i.op, %bb.dg ], [ %.sroa.0.1.i, %bb.df ] ; 2 uses
  %i.oq = icmp eq ptr %.sroa.8.0.i, %.sroa.12.1.i
  br i1 %i.oq, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.or = load ptr, ptr %i.on, align 8, !tbaa !239
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.sroa.8.3.i = phi ptr [ %i.or, %bb.di ], [ %.sroa.8.0.i, %bb.dh ] ; 2 uses
  %i.os = load ptr, ptr %i.m, align 8, !tbaa !13  ; 5 uses
  %i.ot = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.ou = trunc nuw i8 %i.ot to i1
  %i.ov = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ow = trunc nuw i8 %i.ov to i1
  %i.ox = xor i1 %i.ow, true
  %i.oy = select i1 %i.ou, i1 true, i1 %i.ox
  br i1 %i.oy, label %bb.dk, label %.critedge4.i, !prof !12

bb.dk:                                            ; preds = %bb.dj
  %i.oz = call fastcc i32 @H5D__chunk_flush_entry(ptr noundef nonnull %i.l, ptr noundef nonnull %.sroa.12.1.i, i1 noundef zeroext true) ; 2 uses
  %i.pa = icmp slt i32 %i.oz, 0
  br i1 %i.pa, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.pb = load i64, ptr @H5E_IO_g, align 8, !tbaa !23
  %i.pc = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !23
  %i.pd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_cache_evict, i32 noundef 4421, i64 noundef %i.pb, i64 noundef %i.pc, ptr noundef nonnull @.str.22) #15 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.pe = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 336
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !256 ; 4 uses
  %.not43.i.1.i = icmp eq ptr %i.pf, null
  %i.pg = load ptr, ptr %i.on, align 8, !tbaa !239 ; 4 uses
  br i1 %.not43.i.1.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pf, i64 328
  store ptr %i.pg, ptr %i.ph, align 8, !tbaa !239
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %i.pi = getelementptr inbounds nuw i8, ptr %i.os, i64 3688
  store ptr %i.pg, ptr %i.pi, align 8, !tbaa !238
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.not44.i.1.i = icmp eq ptr %i.pg, null
  br i1 %.not44.i.1.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pg, i64 336
  store ptr %i.pf, ptr %i.pj, align 8, !tbaa !256
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.pk = getelementptr inbounds nuw i8, ptr %i.os, i64 3696
  store ptr %i.pf, ptr %i.pk, align 8, !tbaa !257
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 352 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.on, i8 0, i64 16, i1 false)
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !258 ; 3 uses
  %.not45.i.1.i = icmp eq ptr %i.pm, null
  br i1 %.not45.i.1.i, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.pn = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 344 ; 2 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !259 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 344
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !259
  %.not46.i.1.i = icmp eq ptr %i.po, null
  br i1 %.not46.i.1.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 352
  store ptr %i.pm, ptr %i.pq, align 8, !tbaa !258
  store ptr null, ptr %i.pn, align 8, !tbaa !259
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  store ptr null, ptr %i.pl, align 8, !tbaa !258
  br label %H5D__chunk_cache_evict.exit.1.i

bb.dw:                                            ; preds = %bb.ds
  %i.pr = getelementptr inbounds nuw i8, ptr %i.os, i64 4032
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !68
  %i.pt = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 320
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !260
  %i.pv = zext i32 %i.pu to i64
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.pv
  store ptr null, ptr %i.pw, align 8, !tbaa !214
  br label %H5D__chunk_cache_evict.exit.1.i

H5D__chunk_cache_evict.exit.1.i:                  ; preds = %bb.dw, %bb.dv
  %i.px = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 320
  store i32 -1, ptr %i.px, align 8, !tbaa !260
  %i.py = load ptr, ptr %i.m, align 8, !tbaa !13
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 552
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !22
  %i.qb = getelementptr inbounds nuw i8, ptr %i.os, i64 3712 ; 2 uses
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !261
  %i.qd = sub i64 %i.qc, %i.qa
  store i64 %i.qd, ptr %i.qb, align 8, !tbaa !261
  %i.qe = getelementptr inbounds nuw i8, ptr %i.os, i64 3720 ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !262
  %i.qg = add nsw i32 %i.qf, -1
  store i32 %i.qg, ptr %i.qe, align 8, !tbaa !262
  %i.qh = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5D_rdcc_ent_t_reg_free_list, ptr noundef nonnull %.sroa.12.1.i) #15 ; 0 uses
  %.lobit.1.i = lshr i32 %i.oz, 31
  %spec.select.1.i = add nsw i32 %.lobit.1.i, %.364.i
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %H5D__chunk_cache_evict.exit.1.i, %bb.dj, %bb.de, %.thread75.i
  %.sroa.8.1.i = phi ptr [ %.sroa.8.0.i, %.thread75.i ], [ %.sroa.8.0.i, %bb.de ], [ %.sroa.8.3.i, %H5D__chunk_cache_evict.exit.1.i ], [ %.sroa.8.3.i, %bb.dj ] ; 2 uses
  %.sroa.0.2.i = phi ptr [ %.sroa.0.1.i, %.thread75.i ], [ %.sroa.0.1.i, %bb.de ], [ %.sroa.0.3.i, %H5D__chunk_cache_evict.exit.1.i ], [ %.sroa.0.3.i, %bb.dj ] ; 2 uses
  %.162.lcssa.i = phi i32 [ %.364.i, %.thread75.i ], [ %.364.i, %bb.de ], [ %spec.select.1.i, %H5D__chunk_cache_evict.exit.1.i ], [ %.364.i, %bb.dj ] ; 2 uses
  %i.qi = icmp ne ptr %.sroa.0.2.i, null
  %i.qj = icmp ne ptr %.sroa.8.1.i, null
  %or.cond.i289 = select i1 %i.qi, i1 true, i1 %i.qj
  br i1 %or.cond.i289, label %.lr.ph.i288, label %.critedge.i, !llvm.loop !300

.critedge.i:                                      ; preds = %.critedge4.i, %.lr.ph.i288
  %.061.lcssa.ph.i = phi i32 [ %.sroa.0.089.i, %.lr.ph.i288 ], [ %.162.lcssa.i, %.critedge4.i ]
  %i.qk = icmp eq i32 %.061.lcssa.ph.i, 0
  br i1 %i.qk, label %bb.dx, label %.split103

.split103:                                        ; preds = %.critedge.i
  %i.ql = load i64, ptr @H5E_IO_g, align 8, !tbaa !23
  %i.qm = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !23
  %i.qn = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_cache_prune, i32 noundef 4569, i64 noundef %i.ql, i64 noundef %i.qm, ptr noundef nonnull @.str.176) #15 ; 0 uses
  %i.qo = load i64, ptr @H5E_IO_g, align 8, !tbaa !23
  %i.qp = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !23
  %i.qq = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4938, i64 noundef %i.qo, i64 noundef %i.qp, ptr noundef nonnull @.str.174) #15 ; 0 uses
  br i1 %.2216, label %bb.ee, label %.thread88

bb.dx:                                            ; preds = %.critedge.i, %.critedge262, %bb.cc
  %i.qr = call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5D_rdcc_ent_t_reg_free_list) #15 ; 17 uses
  %i.qs = icmp eq ptr %i.qr, null
  br i1 %i.qs, label %.thread72, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 4 ; 2 uses
  store i32 %.0213827, ptr %i.qt, align 4, !tbaa !255
  %i.qu = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.qv = load i8, ptr %i.qu, align 4, !tbaa !212, !range !10, !noundef !11
  %i.qw = trunc nuw i8 %i.qv to i1
  br i1 %i.qw, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.qx = or disjoint i32 %.0213827, 2
  store i32 %i.qx, ptr %i.qt, align 4, !tbaa !255
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qr, i64 288
  store i64 %i.ch, ptr %i.qy, align 8, !tbaa !273
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qr, i64 296
  store i64 %i.cj, ptr %i.qz, align 8, !tbaa !301
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !228
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qr, i64 304
  store i64 %i.rb, ptr %i.rc, align 8, !tbaa !249
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qr, i64 8
  %i.re = load ptr, ptr %i.ij, align 8, !tbaa !222
  %i.rf = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !22
  %i.rh = zext i32 %i.rg to i64
  %i.ri = shl nuw nsw i64 %i.rh, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rd, ptr align 8 %i.re, i64 %i.ri, i1 false)
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qr, i64 272
  store i64 %i.s, ptr %i.rj, align 8, !tbaa !298
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qr, i64 280
  store i64 %i.s, ptr %i.rk, align 8, !tbaa !299
  %i.rl = load ptr, ptr %i.a, align 8, !tbaa !191 ; 4 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qr, i64 312
  store ptr %i.rl, ptr %i.rm, align 8, !tbaa !254
  %i.rn = load ptr, ptr %i.km, align 8, !tbaa !68
  %i.ro = load i32, ptr %i.t, align 8, !tbaa !211 ; 2 uses
  %i.rp = zext i32 %i.ro to i64
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %i.rp
  store ptr %i.qr, ptr %i.rq, align 8, !tbaa !214
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qr, i64 320
  store i32 %i.ro, ptr %i.rr, align 8, !tbaa !260
  %i.rs = getelementptr inbounds nuw i8, ptr %i.n, i64 3712 ; 2 uses
  %i.rt = load i64, ptr %i.rs, align 8, !tbaa !261
  %i.ru = add i64 %i.rt, %i.s
  store i64 %i.ru, ptr %i.rs, align 8, !tbaa !261
  %i.rv = getelementptr inbounds nuw i8, ptr %i.n, i64 3720 ; 2 uses
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !262
  %i.rx = add nsw i32 %i.rw, 1
  store i32 %i.rx, ptr %i.rv, align 8, !tbaa !262
  %i.ry = getelementptr inbounds nuw i8, ptr %i.n, i64 3696 ; 2 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !257 ; 3 uses
  %.not253 = icmp eq ptr %i.rz, null
  br i1 %.not253, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 328
  store ptr %i.qr, ptr %i.sa, align 8, !tbaa !239
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qr, i64 336
  store ptr %i.rz, ptr %i.sb, align 8, !tbaa !256
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.sc = getelementptr inbounds nuw i8, ptr %i.n, i64 3688
  store ptr %i.qr, ptr %i.sc, align 8, !tbaa !238
  br label %bb.ed

.thread72:                                        ; preds = %bb.dx
  %i.sd = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.se = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !23
  %i.sf = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4942, i64 noundef %i.sd, i64 noundef %i.se, ptr noundef nonnull @.str.175) #15 ; 0 uses
  br i1 %.2216, label %bb.ee, label %.thread88

.split:                                           ; preds = %bb.bv, %bb.bu, %bb.ca
  store i32 -1, ptr %i.t, align 8, !tbaa !211
  %i.sg = load ptr, ptr %i.a, align 8, !tbaa !191 ; 2 uses
  br i1 %.2216, label %bb.ee, label %.thread88

.thread96:                                        ; preds = %bb.u, %bb.n
  store i8 1, ptr %i.z, align 8, !tbaa !215
  %i.sh = getelementptr inbounds nuw i8, ptr %i.z, i64 312
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !254 ; 2 uses
  store ptr %i.si, ptr %i.a, align 8, !tbaa !191
  br label %.thread88

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  store ptr %i.qr, ptr %i.ry, align 8, !tbaa !257
  %i.sj = getelementptr inbounds nuw i8, ptr %i.qr, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sj, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.qr, align 8, !tbaa !215
  store ptr %i.rl, ptr %i.a, align 8, !tbaa !191
  br i1 %.2216, label %bb.ee, label %.thread88

bb.ee:                                            ; preds = %.thread66, %.split103, %.split102, %.split, %.thread72, %bb.ed
  %.320694 = phi ptr [ %.12041325, %.thread72 ], [ %.12041325, %bb.ed ], [ %.12041325, %.split ], [ %.120413245561, %.thread66 ], [ %.12041325, %.split102 ], [ %.12041325, %.split103 ] ; 2 uses
  %.893 = phi ptr [ null, %.thread72 ], [ %i.rl, %bb.ed ], [ %i.sg, %.split ], [ null, %.thread66 ], [ null, %.split102 ], [ null, %.split103 ]
  %i.sk = call i32 @H5D__fill_term(ptr noundef nonnull %4) #15
  %i.sl = icmp slt i32 %i.sk, 0
  br i1 %i.sl, label %bb.ef, label %.thread88

bb.ef:                                            ; preds = %bb.ee
  %i.sm = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !23
  %i.sn = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !23
  %i.so = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 5004, i64 noundef %i.sm, i64 noundef %i.sn, ptr noundef nonnull @.str.34) #15 ; 0 uses
  br label %.thread88

.thread88:                                        ; preds = %.critedge260, %bb.ag, %.thread44, %.thread66.thread, %bb.k, %bb.e, %.split103, %.split102, %.thread96, %.split, %.thread72, %bb.ef, %bb.ee, %bb.ed
  %.320692 = phi ptr [ %.320694, %bb.ef ], [ %.320694, %bb.ee ], [ %.12041325, %bb.ed ], [ %.12041325, %.split103 ], [ %.12041325, %.thread72 ], [ %.12041325, %.split ], [ %.0203, %.thread96 ], [ null, %bb.e ], [ %.120413245561, %.thread66.thread ], [ %.12041325, %.split102 ], [ %i.p, %bb.k ], [ %.12041419, %.critedge260 ], [ %.1204132336, %bb.ag ], [ %.1204132454153, %.thread44 ] ; 2 uses
  %.9 = phi ptr [ null, %bb.ef ], [ %.893, %bb.ee ], [ %i.rl, %bb.ed ], [ null, %.split103 ], [ null, %.thread72 ], [ %i.sg, %.split ], [ %i.si, %.thread96 ], [ null, %bb.e ], [ null, %.thread66.thread ], [ null, %.split102 ], [ null, %bb.k ], [ null, %.critedge260 ], [ null, %bb.ag ], [ null, %.thread44 ] ; 2 uses
  %i.sp = icmp eq ptr %.9, null
  %i.sq = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.sr = icmp ne ptr %i.sq, null
  %or.cond8 = select i1 %i.sp, i1 %i.sr, i1 false
  br i1 %or.cond8, label %bb.eg, label %H5D__chunk_mem_xfree.exit293

bb.eg:                                            ; preds = %.thread88
  %i.ss = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.st = trunc nuw i8 %i.ss to i1
  %i.su = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.sv = trunc nuw i8 %i.su to i1
  %i.sw = xor i1 %i.sv, true
  %i.sx = select i1 %i.st, i1 true, i1 %i.sw
  br i1 %i.sx, label %bb.eh, label %H5D__chunk_mem_xfree.exit293, !prof !269

bb.eh:                                            ; preds = %bb.eg
  %.not.i291 = icmp eq ptr %.320692, null
  br i1 %.not.i291, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.sy = getelementptr inbounds nuw i8, ptr %.320692, i64 56
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !213
  %.not8.i292 = icmp eq i64 %i.sz, 0
  br i1 %.not8.i292, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ta = call ptr @H5MM_xfree(ptr noundef nonnull %i.sq) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit293

bb.ek:                                            ; preds = %bb.ei, %bb.eh
  %i.tb = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_chunk_blk_free_list, ptr noundef nonnull %i.sq) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit293

H5D__chunk_mem_xfree.exit293:                     ; preds = %bb.ek, %bb.ej, %bb.eg, %bb.a, %.thread88
  %.10 = phi ptr [ null, %bb.a ], [ %.9, %.thread88 ], [ null, %bb.eg ], [ null, %bb.ej ], [ null, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret ptr %.10
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @H5D__chunk_unlock(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i1 noundef zeroext %2, ptr noundef nonnull %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.H5D_rdcc_ent_t, align 8     ; 14 uses
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5D__chunk_mem_xfree.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !86     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !211  ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.n = load i8, ptr %i.m, align 4, !tbaa !212, !range !10, !noundef !11
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  br i1 %i.o, label %H5D__chunk_is_partial_edge_chunk.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 268
  %i.q = load i8, ptr %i.p, align 4, !tbaa !22
  %i.r = and i8 %i.q, 1
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %H5D__chunk_is_partial_edge_chunk.exit, label %bb.e
end_hunk_0
