Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Dchunk?download=true
inline.NumInlined: 65
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@H5D__chunk_lock:bb.a
.thread66:                                        ; preds = %bb.br
  %i.hu = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.hv = load i64, ptr @H5E_CANTCONVERT_g, align 8, !tbaa !25
  %i.hw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4914, i64 noundef %i.hu, i64 noundef %i.hv, ptr noundef nonnull @.str.32) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %bb.ee

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq
  %.0211 = phi i1 [ true, %bb.br ], [ true, %bb.bq ], [ false, %bb.bs ]
  %i.hx = load i32, ptr %i.q, align 8, !tbaa !355
  %i.hy = add i32 %i.hx, 1
  store i32 %i.hy, ptr %i.q, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.be, %bb.ah
  %.1219929 = phi ptr [ %.121992734, %bb.ah ], [ %.121992851158, %bb.be ], [ %.12199285263, %bb.bt ] ; 10 uses
  %.02071323 = phi i32 [ %.0207132536, %bb.ah ], [ %.0207132455154, %bb.be ], [ %.020713245661, %bb.bt ] ; 2 uses
  %.2213 = phi i1 [ false, %bb.ah ], [ false, %bb.be ], [ %.0211, %bb.bt ] ; 5 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.n, i64 3672
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !63
  %.not250 = icmp eq i64 %i.ia, 0
  br i1 %.not250, label %.split, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ib = getelementptr inbounds nuw i8, ptr %i.n, i64 3664
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !64
  %.not251 = icmp ugt i64 %i.s, %i.ic
  br i1 %.not251, label %.split, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.id = load ptr, ptr %i.m, align 8, !tbaa !23  ; 4 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !176 ; 6 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 2836
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !52 ; 3 uses
  %i.ii = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.ij = trunc nuw i8 %i.ii to i1                ; 2 uses
  %i.ik = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.il = trunc nuw i8 %i.ik to i1
  %i.im = xor i1 %i.il, true                      ; 2 uses
  %i.in = select i1 %i.ij, i1 true, i1 %i.im
  br i1 %i.in, label %bb.bx, label %H5D__chunk_hash_val.exit, !prof !14

bb.bx:                                            ; preds = %bb.bw
  %i.io = load i64, ptr %i.if, align 8, !tbaa !25 ; 3 uses
  %i.ip = icmp ugt i32 %i.ih, 1
  br i1 %i.ip, label %.lr.ph.i282, label %._crit_edge.i

.lr.ph.i282:                                      ; preds = %bb.bx
  %i.iq = getelementptr inbounds nuw i8, ptr %i.id, i64 4576 ; 5 uses
  %wide.trip.count.i283 = zext i32 %i.ih to i64
  %i.ir = add nsw i64 %wide.trip.count.i283, -1   ; 2 uses
  %xtraiter = and i64 %i.ir, 3                    ; 3 uses
  %i.is = add i32 %i.ih, -2
  %i.it = icmp ult i32 %i.is, 3
  br i1 %i.it, label %.epil.preheader, label %.lr.ph.i282.new

.lr.ph.i282.new:                                  ; preds = %.lr.ph.i282
  %unroll_iter = and i64 %i.ir, -4
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %.lr.ph.i282.new
  %indvars.iv.i284 = phi i64 [ 1, %.lr.ph.i282.new ], [ %indvars.iv.next.i285.3, %bb.by ] ; 6 uses
  %.01415.i = phi i64 [ %i.io, %.lr.ph.i282.new ], [ %i.jv, %bb.by ]
  %niter = phi i64 [ 0, %.lr.ph.i282.new ], [ %niter.next.3, %bb.by ]
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.i284
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !54
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = shl i64 %.01415.i, %i.iw
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i284
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !25
  %i.ja = xor i64 %i.ix, %i.iz
  %indvars.iv.next.i285 = add nuw nsw i64 %indvars.iv.i284, 1 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next.i285
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !54
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = shl i64 %i.ja, %i.jd
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next.i285
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !25
  %i.jh = xor i64 %i.je, %i.jg
  %indvars.iv.next.i285.1 = add nuw nsw i64 %indvars.iv.i284, 2 ; 2 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next.i285.1
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !54
  %i.jk = zext nneg i32 %i.jj to i64
  %i.jl = shl i64 %i.jh, %i.jk
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next.i285.1
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !25
  %i.jo = xor i64 %i.jl, %i.jn
  %indvars.iv.next.i285.2 = add nuw nsw i64 %indvars.iv.i284, 3 ; 2 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.next.i285.2
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !54
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = shl i64 %i.jo, %i.jr
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.next.i285.2
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !25
  %i.jv = xor i64 %i.js, %i.ju                    ; 3 uses
  %indvars.iv.next.i285.3 = add nuw nsw i64 %indvars.iv.i284, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.by, !llvm.loop !1

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.by
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i282
  %indvars.iv.i284.epil.init = phi i64 [ 1, %.lr.ph.i282 ], [ %indvars.iv.next.i285.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.01415.i.epil.init = phi i64 [ %i.io, %.lr.ph.i282 ], [ %i.jv, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod162 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod162)
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bz, %.epil.preheader
  %indvars.iv.i284.epil = phi i64 [ %indvars.iv.i284.epil.init, %.epil.preheader ], [ %indvars.iv.next.i285.epil, %bb.bz ] ; 3 uses
  %.01415.i.epil = phi i64 [ %.01415.i.epil.init, %.epil.preheader ], [ %i.kc, %bb.bz ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bz ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %indvars.iv.i284.epil
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !54
  %i.jy = zext nneg i32 %i.jx to i64
  %i.jz = shl i64 %.01415.i.epil, %i.jy
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %indvars.iv.i284.epil
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !25
  %i.kc = xor i64 %i.jz, %i.kb                    ; 2 uses
  %indvars.iv.next.i285.epil = add nuw nsw i64 %indvars.iv.i284.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.bz, !llvm.loop !351

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.bz, %bb.bx
  %.014.lcssa.i = phi i64 [ %i.io, %bb.bx ], [ %i.jv, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.kc, %bb.bz ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.id, i64 3672
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !192
  %i.kf = urem i64 %.014.lcssa.i, %i.ke
  %i.kg = trunc i64 %i.kf to i32
  br label %H5D__chunk_hash_val.exit

H5D__chunk_hash_val.exit:                         ; preds = %bb.bw, %._crit_edge.i
  %.013.i = phi i32 [ %i.kg, %._crit_edge.i ], [ 0, %bb.bw ] ; 2 uses
  store i32 %.013.i, ptr %i.t, align 8, !tbaa !168
  %i.kh = getelementptr inbounds nuw i8, ptr %i.n, i64 4032 ; 2 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !66
  %i.kj = zext i32 %.013.i to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.ki, i64 %i.kj
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !171 ; 3 uses
  %.not252 = icmp eq ptr %i.kl, null
  br i1 %.not252, label %.critedge262, label %bb.ca

bb.ca:                                            ; preds = %H5D__chunk_hash_val.exit
  %i.km = load i8, ptr %i.kl, align 8, !tbaa !173, !range !12, !noundef !13
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %.split, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ko = call fastcc i32 @H5D__chunk_cache_evict(ptr noundef nonnull %i.l, ptr noundef nonnull %i.kl, i1 noundef zeroext true)
  %i.kp = icmp slt i32 %i.ko, 0
  br i1 %i.kp, label %.split102, label %..critedge262_crit_edge

..critedge262_crit_edge:                          ; preds = %bb.cb
  %.pre109 = load ptr, ptr %i.m, align 8, !tbaa !23
  %.pre110 = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12
  %.pre111 = load i8, ptr @H5_libterm_g, align 1, !range !12
  %.pre112 = trunc nuw i8 %.pre110 to i1
  %.pre113 = trunc nuw i8 %.pre111 to i1
  %.pre115 = xor i1 %.pre113, true
  br label %.critedge262

.split102:                                        ; preds = %bb.cb
  %i.kq = load i64, ptr @H5E_IO_g, align 8, !tbaa !25
  %i.kr = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !25
  %i.ks = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4935, i64 noundef %i.kq, i64 noundef %i.kr, ptr noundef nonnull @.str.173) #15 ; 0 uses
  br i1 %.2213, label %bb.ee, label %.thread88

.critedge262:                                     ; preds = %..critedge262_crit_edge, %H5D__chunk_hash_val.exit
  %.pre-phi116 = phi i1 [ %.pre115, %..critedge262_crit_edge ], [ %i.im, %H5D__chunk_hash_val.exit ]
  %.pre-phi = phi i1 [ %.pre112, %..critedge262_crit_edge ], [ %i.ij, %H5D__chunk_hash_val.exit ]
  %i.kt = phi ptr [ %.pre109, %..critedge262_crit_edge ], [ %i.id, %H5D__chunk_hash_val.exit ] ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 3664
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !64 ; 2 uses
  %i.kw = select i1 %.pre-phi, i1 true, i1 %.pre-phi116
  br i1 %i.kw, label %bb.cc, label %bb.dx, !prof !14

bb.cc:                                            ; preds = %.critedge262
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kt, i64 3688 ; 2 uses
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !188 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kt, i64 3712 ; 2 uses
  %.not93.i = icmp eq ptr %i.ky, null
  br i1 %.not93.i, label %bb.dx, label %.lr.ph.preheader.i287

.lr.ph.preheader.i287:                            ; preds = %bb.cc
  %i.la = getelementptr inbounds nuw i8, ptr %i.kt, i64 3680
  %i.lb = load double, ptr %i.la, align 8, !tbaa !65
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kt, i64 3720
  %i.ld = load i32, ptr %i.lc, align 8, !tbaa !204
  %i.le = sitofp i32 %i.ld to double
  %i.lf = fmul double %i.lb, %i.le
  %i.lg = fptosi double %i.lf to i32
  br label %.lr.ph.i288

.lr.ph.i288:                                      ; preds = %.critedge4.i, %.lr.ph.preheader.i287
  %.sroa.12.0.i = phi ptr [ null, %.lr.ph.preheader.i287 ], [ %.sroa.8.1.i, %.critedge4.i ]
  %.sroa.0100.0.i = phi ptr [ %i.ky, %.lr.ph.preheader.i287 ], [ %.sroa.0.2.i, %.critedge4.i ] ; 17 uses
  %.06190.i = phi i32 [ 0, %.lr.ph.preheader.i287 ], [ %.162.lcssa.i, %.critedge4.i ] ; 7 uses
  %.sroa.0.089.i = phi i32 [ %i.lg, %.lr.ph.preheader.i287 ], [ %i.qd, %.critedge4.i ] ; 2 uses
  %i.lh = load i64, ptr %i.kz, align 8, !tbaa !203
  %i.li = add i64 %i.lh, %i.s                     ; 6 uses
  %i.lj = icmp ugt i64 %i.li, %i.kv
  br i1 %i.lj, label %.preheader81.i, label %.critedge.i

.preheader81.i:                                   ; preds = %.lr.ph.i288
  %i.lk = icmp eq i32 %.sroa.0.089.i, 0
  br i1 %i.lk, label %.preheader80.split.us.i, label %.preheader80.i

.preheader80.split.us.i:                          ; preds = %.preheader81.i
  %i.ll = load ptr, ptr %i.kx, align 8, !tbaa !188
  br label %.preheader80.i

.preheader80.i:                                   ; preds = %.preheader80.split.us.i, %.preheader81.i
  %.us-phi.i = phi ptr [ %i.ll, %.preheader80.split.us.i ], [ %.sroa.12.0.i, %.preheader81.i ] ; 8 uses
  %.not71.not.i = icmp eq ptr %.sroa.0100.0.i, null ; 2 uses
  br i1 %.not71.not.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %.preheader80.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 328
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !189
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.preheader80.i
  %i.lo = phi ptr [ %i.ln, %bb.cd ], [ null, %.preheader80.i ] ; 6 uses
  %.not71.1.i = icmp eq ptr %.us-phi.i, null
  br i1 %.not71.1.i, label %.preheader79.preheader.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lp = getelementptr inbounds nuw i8, ptr %.us-phi.i, i64 328
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !189
  br label %.preheader79.preheader.i

.preheader79.preheader.i:                         ; preds = %bb.cf, %bb.ce
  %i.lr = phi ptr [ %i.lq, %bb.cf ], [ null, %bb.ce ] ; 6 uses
  br i1 %.not71.not.i, label %.thread75.i, label %bb.cg

bb.cg:                                            ; preds = %.preheader79.preheader.i
  %i.ls = load i8, ptr %.sroa.0100.0.i, align 8, !tbaa !173, !range !12, !noundef !13
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %.thread75.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 272
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !356 ; 2 uses
  %i.lw = icmp eq i64 %i.lv, 0
  br i1 %i.lw, label %bb.ci, label %._crit_edge111.i

._crit_edge111.i:                                 ; preds = %bb.ch
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !23
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 552
  %.pre112.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 280
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !357 ; 2 uses
  %i.lz = icmp eq i64 %i.ly, 0
  br i1 %i.lz, label %bb.cm, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ma = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 552
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !24 ; 2 uses
  %i.md = icmp eq i64 %i.mc, %i.ly
  br i1 %i.md, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %._crit_edge111.i
  %i.me = phi i64 [ %.pre112.i, %._crit_edge111.i ], [ %i.mc, %bb.cj ]
  %i.mf = icmp eq i64 %i.me, %i.lv
  br i1 %i.mf, label %bb.cl, label %.thread75.i

bb.cl:                                            ; preds = %bb.ck
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 280
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !357
  %i.mi = icmp eq i64 %i.mh, 0
  br i1 %i.mi, label %bb.cm, label %.thread75.i

bb.cm:                                            ; preds = %bb.cl, %bb.cj, %bb.ci
  %i.mj = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 328 ; 4 uses
  %i.mk = icmp eq ptr %i.lo, %.sroa.0100.0.i
  br i1 %i.mk, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.ml = load ptr, ptr %i.mj, align 8, !tbaa !189
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %.sroa.0.0.i = phi ptr [ %i.ml, %bb.cn ], [ %i.lo, %bb.cm ] ; 2 uses
  %i.mm = icmp eq ptr %.us-phi.i, %.sroa.0100.0.i
  %spec.store.select.1.i = select i1 %i.mm, ptr null, ptr %.us-phi.i ; 2 uses
  %i.mn = icmp eq ptr %i.lr, %.sroa.0100.0.i
  br i1 %i.mn, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.mo = load ptr, ptr %i.mj, align 8, !tbaa !189
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.sroa.8.2.i = phi ptr [ %i.mo, %bb.cp ], [ %i.lr, %bb.co ] ; 2 uses
  %i.mp = load ptr, ptr %i.m, align 8, !tbaa !23  ; 5 uses
  %i.mq = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.mr = trunc nuw i8 %i.mq to i1
  %i.ms = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.mt = trunc nuw i8 %i.ms to i1
  %i.mu = xor i1 %i.mt, true
  %i.mv = select i1 %i.mr, i1 true, i1 %i.mu
  br i1 %i.mv, label %bb.cr, label %.thread75.i, !prof !14

bb.cr:                                            ; preds = %bb.cq
  %i.mw = call fastcc i32 @H5D__chunk_flush_entry(ptr noundef nonnull %i.l, ptr noundef nonnull %.sroa.0100.0.i, i1 noundef zeroext true) ; 2 uses
  %i.mx = icmp slt i32 %i.mw, 0
  br i1 %i.mx, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.my = load i64, ptr @H5E_IO_g, align 8, !tbaa !25
  %i.mz = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !25
  %i.na = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_cache_evict, i32 noundef 4421, i64 noundef %i.my, i64 noundef %i.mz, ptr noundef nonnull @.str.22) #15 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.nb = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 336
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !198 ; 4 uses
  %.not43.i.i = icmp eq ptr %i.nc, null
  %i.nd = load ptr, ptr %i.mj, align 8, !tbaa !189 ; 4 uses
  br i1 %.not43.i.i, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 328
  store ptr %i.nd, ptr %i.ne, align 8, !tbaa !189
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mp, i64 3688
  store ptr %i.nd, ptr %i.nf, align 8, !tbaa !188
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.not44.i.i = icmp eq ptr %i.nd, null
  br i1 %.not44.i.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 336
  store ptr %i.nc, ptr %i.ng, align 8, !tbaa !198
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mp, i64 3696
  store ptr %i.nc, ptr %i.nh, align 8, !tbaa !199
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 352 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.mj, i8 0, i64 16, i1 false)
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !200 ; 3 uses
  %.not45.i.i = icmp eq ptr %i.nj, null
  br i1 %.not45.i.i, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.nk = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 344 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !201 ; 3 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nj, i64 344
  store ptr %i.nl, ptr %i.nm, align 8, !tbaa !201
  %.not46.i.i = icmp eq ptr %i.nl, null
  br i1 %.not46.i.i, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 352
  store ptr %i.nj, ptr %i.nn, align 8, !tbaa !200
  store ptr null, ptr %i.nk, align 8, !tbaa !201
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  store ptr null, ptr %i.ni, align 8, !tbaa !200
  br label %H5D__chunk_cache_evict.exit.i

bb.dd:                                            ; preds = %bb.cz
  %i.no = getelementptr inbounds nuw i8, ptr %i.mp, i64 4032
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !66
  %i.nq = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 320
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !202
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %i.ns
  store ptr null, ptr %i.nt, align 8, !tbaa !171
  br label %H5D__chunk_cache_evict.exit.i

H5D__chunk_cache_evict.exit.i:                    ; preds = %bb.dd, %bb.dc
  %i.nu = getelementptr inbounds nuw i8, ptr %.sroa.0100.0.i, i64 320
  store i32 -1, ptr %i.nu, align 8, !tbaa !202
  %i.nv = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 552
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !24
  %i.ny = getelementptr inbounds nuw i8, ptr %i.mp, i64 3712 ; 2 uses
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !203
  %i.oa = sub i64 %i.nz, %i.nx
  store i64 %i.oa, ptr %i.ny, align 8, !tbaa !203
  %i.ob = getelementptr inbounds nuw i8, ptr %i.mp, i64 3720 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !204
  %i.od = add nsw i32 %i.oc, -1
  store i32 %i.od, ptr %i.ob, align 8, !tbaa !204
  %i.oe = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5D_rdcc_ent_t_reg_free_list, ptr noundef nonnull %.sroa.0100.0.i) #15 ; 0 uses
  %.lobit.i = lshr i32 %i.mw, 31
  %spec.select.i = add nsw i32 %.lobit.i, %.06190.i
  %.pre113.i = load i64, ptr %i.kz, align 8, !tbaa !203
  %.pre119.i = add i64 %.pre113.i, %i.s
  br label %.thread75.i

.thread75.i:                                      ; preds = %H5D__chunk_cache_evict.exit.i, %bb.cq, %bb.cl, %bb.ck, %bb.cg, %.preheader79.preheader.i
  %.pre-phi.i = phi i64 [ %i.li, %bb.cl ], [ %.pre119.i, %H5D__chunk_cache_evict.exit.i ], [ %i.li, %bb.cq ], [ %i.li, %bb.cg ], [ %i.li, %bb.ck ], [ %i.li, %.preheader79.preheader.i ]
  %.sroa.12.1.i = phi ptr [ %.us-phi.i, %bb.cl ], [ %spec.store.select.1.i, %H5D__chunk_cache_evict.exit.i ], [ %spec.store.select.1.i, %bb.cq ], [ %.us-phi.i, %bb.cg ], [ %.us-phi.i, %bb.ck ], [ %.us-phi.i, %.preheader79.preheader.i ] ; 12 uses
  %.sroa.8.0.i = phi ptr [ %i.lr, %bb.cl ], [ %.sroa.8.2.i, %H5D__chunk_cache_evict.exit.i ], [ %.sroa.8.2.i, %bb.cq ], [ %i.lr, %bb.cg ], [ %i.lr, %bb.ck ], [ %i.lr, %.preheader79.preheader.i ] ; 4 uses
  %.sroa.0.1.i = phi ptr [ %i.lo, %bb.cl ], [ %.sroa.0.0.i, %H5D__chunk_cache_evict.exit.i ], [ %.sroa.0.0.i, %bb.cq ], [ %i.lo, %bb.cg ], [ %i.lo, %bb.ck ], [ %i.lo, %.preheader79.preheader.i ] ; 4 uses
  %.364.i = phi i32 [ %.06190.i, %bb.cl ], [ %spec.select.i, %H5D__chunk_cache_evict.exit.i ], [ %.06190.i, %bb.cq ], [ %.06190.i, %bb.cg ], [ %.06190.i, %bb.ck ], [ %.06190.i, %.preheader79.preheader.i ] ; 4 uses
  %i.of = icmp ule i64 %.pre-phi.i, %i.kv
  %.not134.i = icmp eq ptr %.sroa.12.1.i, null
  %or.cond136.i = select i1 %i.of, i1 true, i1 %.not134.i
  br i1 %or.cond136.i, label %.critedge4.i, label %bb.de

bb.de:                                            ; preds = %.thread75.i
  %i.og = load i8, ptr %.sroa.12.1.i, align 8, !tbaa !173, !range !12, !noundef !13
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %.critedge4.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.oi = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 328 ; 4 uses
  %i.oj = icmp eq ptr %.sroa.0.1.i, %.sroa.12.1.i
  br i1 %i.oj, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.ok = load ptr, ptr %i.oi, align 8, !tbaa !189
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.sroa.0.3.i = phi ptr [ %i.ok, %bb.dg ], [ %.sroa.0.1.i, %bb.df ] ; 2 uses
  %i.ol = icmp eq ptr %.sroa.8.0.i, %.sroa.12.1.i
  br i1 %i.ol, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.om = load ptr, ptr %i.oi, align 8, !tbaa !189
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %.sroa.8.3.i = phi ptr [ %i.om, %bb.di ], [ %.sroa.8.0.i, %bb.dh ] ; 2 uses
  %i.on = load ptr, ptr %i.m, align 8, !tbaa !23  ; 5 uses
  %i.oo = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.op = trunc nuw i8 %i.oo to i1
  %i.oq = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.or = trunc nuw i8 %i.oq to i1
  %i.os = xor i1 %i.or, true
  %i.ot = select i1 %i.op, i1 true, i1 %i.os
  br i1 %i.ot, label %bb.dk, label %.critedge4.i, !prof !14

bb.dk:                                            ; preds = %bb.dj
  %i.ou = call fastcc i32 @H5D__chunk_flush_entry(ptr noundef nonnull %i.l, ptr noundef nonnull %.sroa.12.1.i, i1 noundef zeroext true) ; 2 uses
  %i.ov = icmp slt i32 %i.ou, 0
  br i1 %i.ov, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ow = load i64, ptr @H5E_IO_g, align 8, !tbaa !25
  %i.ox = load i64, ptr @H5E_WRITEERROR_g, align 8, !tbaa !25
  %i.oy = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_cache_evict, i32 noundef 4421, i64 noundef %i.ow, i64 noundef %i.ox, ptr noundef nonnull @.str.22) #15 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.oz = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 336
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !198 ; 4 uses
  %.not43.i.1.i = icmp eq ptr %i.pa, null
  %i.pb = load ptr, ptr %i.oi, align 8, !tbaa !189 ; 4 uses
  br i1 %.not43.i.1.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 328
  store ptr %i.pb, ptr %i.pc, align 8, !tbaa !189
  br label %bb.dp

bb.do:                                            ; preds = %bb.dm
  %i.pd = getelementptr inbounds nuw i8, ptr %i.on, i64 3688
  store ptr %i.pb, ptr %i.pd, align 8, !tbaa !188
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.not44.i.1.i = icmp eq ptr %i.pb, null
  br i1 %.not44.i.1.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 336
  store ptr %i.pa, ptr %i.pe, align 8, !tbaa !198
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dp
  %i.pf = getelementptr inbounds nuw i8, ptr %i.on, i64 3696
  store ptr %i.pa, ptr %i.pf, align 8, !tbaa !199
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.pg = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 352 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.oi, i8 0, i64 16, i1 false)
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !200 ; 3 uses
  %.not45.i.1.i = icmp eq ptr %i.ph, null
  br i1 %.not45.i.1.i, label %bb.dw, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.pi = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 344 ; 2 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !201 ; 3 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 344
  store ptr %i.pj, ptr %i.pk, align 8, !tbaa !201
  %.not46.i.1.i = icmp eq ptr %i.pj, null
  br i1 %.not46.i.1.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pj, i64 352
  store ptr %i.ph, ptr %i.pl, align 8, !tbaa !200
  store ptr null, ptr %i.pi, align 8, !tbaa !201
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  store ptr null, ptr %i.pg, align 8, !tbaa !200
  br label %H5D__chunk_cache_evict.exit.1.i

bb.dw:                                            ; preds = %bb.ds
  %i.pm = getelementptr inbounds nuw i8, ptr %i.on, i64 4032
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !66
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 320
  %i.pp = load i32, ptr %i.po, align 8, !tbaa !202
  %i.pq = zext i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.pq
  store ptr null, ptr %i.pr, align 8, !tbaa !171
  br label %H5D__chunk_cache_evict.exit.1.i

H5D__chunk_cache_evict.exit.1.i:                  ; preds = %bb.dw, %bb.dv
  %i.ps = getelementptr inbounds nuw i8, ptr %.sroa.12.1.i, i64 320
  store i32 -1, ptr %i.ps, align 8, !tbaa !202
  %i.pt = load ptr, ptr %i.m, align 8, !tbaa !23
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 552
  %i.pv = load i64, ptr %i.pu, align 8, !tbaa !24
  %i.pw = getelementptr inbounds nuw i8, ptr %i.on, i64 3712 ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !203
  %i.py = sub i64 %i.px, %i.pv
  store i64 %i.py, ptr %i.pw, align 8, !tbaa !203
  %i.pz = getelementptr inbounds nuw i8, ptr %i.on, i64 3720 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 8, !tbaa !204
  %i.qb = add nsw i32 %i.qa, -1
  store i32 %i.qb, ptr %i.pz, align 8, !tbaa !204
  %i.qc = call ptr @H5FL_reg_free(ptr noundef nonnull @H5_H5D_rdcc_ent_t_reg_free_list, ptr noundef nonnull %.sroa.12.1.i) #15 ; 0 uses
  %.lobit.1.i = lshr i32 %i.ou, 31
  %spec.select.1.i = add nsw i32 %.lobit.1.i, %.364.i
  br label %.critedge4.i

.critedge4.i:                                     ; preds = %H5D__chunk_cache_evict.exit.1.i, %bb.dj, %bb.de, %.thread75.i
  %.sroa.8.1.i = phi ptr [ %.sroa.8.0.i, %.thread75.i ], [ %.sroa.8.0.i, %bb.de ], [ %.sroa.8.3.i, %H5D__chunk_cache_evict.exit.1.i ], [ %.sroa.8.3.i, %bb.dj ] ; 2 uses
  %.sroa.0.2.i = phi ptr [ %.sroa.0.1.i, %.thread75.i ], [ %.sroa.0.1.i, %bb.de ], [ %.sroa.0.3.i, %H5D__chunk_cache_evict.exit.1.i ], [ %.sroa.0.3.i, %bb.dj ] ; 2 uses
  %.162.lcssa.i = phi i32 [ %.364.i, %.thread75.i ], [ %.364.i, %bb.de ], [ %spec.select.1.i, %H5D__chunk_cache_evict.exit.1.i ], [ %.364.i, %bb.dj ] ; 2 uses
  %i.qd = add i32 %.sroa.0.089.i, -1
  %i.qe = icmp ne ptr %.sroa.0.2.i, null
  %i.qf = icmp ne ptr %.sroa.8.1.i, null
  %or.cond.i289 = select i1 %i.qe, i1 true, i1 %i.qf
  br i1 %or.cond.i289, label %.lr.ph.i288, label %.critedge.i, !llvm.loop !352

.critedge.i:                                      ; preds = %.critedge4.i, %.lr.ph.i288
  %.061.lcssa.ph.i = phi i32 [ %.06190.i, %.lr.ph.i288 ], [ %.162.lcssa.i, %.critedge4.i ]
  %i.qg = icmp eq i32 %.061.lcssa.ph.i, 0
  br i1 %i.qg, label %bb.dx, label %.split103

.split103:                                        ; preds = %.critedge.i
  %i.qh = load i64, ptr @H5E_IO_g, align 8, !tbaa !25
  %i.qi = load i64, ptr @H5E_CANTFLUSH_g, align 8, !tbaa !25
  %i.qj = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_cache_prune, i32 noundef 4569, i64 noundef %i.qh, i64 noundef %i.qi, ptr noundef nonnull @.str.176) #15 ; 0 uses
  %i.qk = load i64, ptr @H5E_IO_g, align 8, !tbaa !25
  %i.ql = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !25
  %i.qm = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4938, i64 noundef %i.qk, i64 noundef %i.ql, ptr noundef nonnull @.str.174) #15 ; 0 uses
  br i1 %.2213, label %bb.ee, label %.thread88

bb.dx:                                            ; preds = %.critedge.i, %.critedge262, %bb.cc
  %i.qn = call noalias ptr @H5FL_reg_calloc(ptr noundef nonnull @H5_H5D_rdcc_ent_t_reg_free_list) #15 ; 17 uses
  %i.qo = icmp eq ptr %i.qn, null
  br i1 %i.qo, label %.thread72, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 4 ; 2 uses
  store i32 %.02071323, ptr %i.qp, align 4, !tbaa !197
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.qr = load i8, ptr %i.qq, align 4, !tbaa !169, !range !12, !noundef !13
  %i.qs = trunc nuw i8 %i.qr to i1
  br i1 %i.qs, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.qt = or disjoint i32 %.02071323, 2
  store i32 %i.qt, ptr %i.qp, align 4, !tbaa !197
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qn, i64 288
  store i64 %i.cc, ptr %i.qu, align 8, !tbaa !208
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qn, i64 296
  store i64 %i.ce, ptr %i.qv, align 8, !tbaa !358
  %i.qw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !182
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qn, i64 304
  store i64 %i.qx, ptr %i.qy, align 8, !tbaa !194
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.ra = load ptr, ptr %i.ie, align 8, !tbaa !176
  %i.rb = getelementptr inbounds nuw i8, ptr %i.n, i64 272
  %i.rc = load i32, ptr %i.rb, align 8, !tbaa !24
  %i.rd = zext i32 %i.rc to i64
  %i.re = shl nuw nsw i64 %i.rd, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qz, ptr align 8 %i.ra, i64 %i.re, i1 false)
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qn, i64 272
  store i64 %i.s, ptr %i.rf, align 8, !tbaa !356
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qn, i64 280
  store i64 %i.s, ptr %i.rg, align 8, !tbaa !357
  %i.rh = load ptr, ptr %i.a, align 8, !tbaa !153 ; 4 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qn, i64 312
  store ptr %i.rh, ptr %i.ri, align 8, !tbaa !196
  %i.rj = load ptr, ptr %i.kh, align 8, !tbaa !66
  %i.rk = load i32, ptr %i.t, align 8, !tbaa !168 ; 2 uses
  %i.rl = zext i32 %i.rk to i64
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.rj, i64 %i.rl
  store ptr %i.qn, ptr %i.rm, align 8, !tbaa !171
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qn, i64 320
  store i32 %i.rk, ptr %i.rn, align 8, !tbaa !202
  %i.ro = getelementptr inbounds nuw i8, ptr %i.n, i64 3712 ; 2 uses
  %i.rp = load i64, ptr %i.ro, align 8, !tbaa !203
  %i.rq = add i64 %i.rp, %i.s
  store i64 %i.rq, ptr %i.ro, align 8, !tbaa !203
  %i.rr = getelementptr inbounds nuw i8, ptr %i.n, i64 3720 ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !204
  %i.rt = add nsw i32 %i.rs, 1
  store i32 %i.rt, ptr %i.rr, align 8, !tbaa !204
  %i.ru = getelementptr inbounds nuw i8, ptr %i.n, i64 3696 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !199 ; 3 uses
  %.not253 = icmp eq ptr %i.rv, null
  br i1 %.not253, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 328
  store ptr %i.qn, ptr %i.rw, align 8, !tbaa !189
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qn, i64 336
  store ptr %i.rv, ptr %i.rx, align 8, !tbaa !198
  br label %bb.ed

bb.ec:                                            ; preds = %bb.ea
  %i.ry = getelementptr inbounds nuw i8, ptr %i.n, i64 3688
  store ptr %i.qn, ptr %i.ry, align 8, !tbaa !188
  br label %bb.ed

.thread72:                                        ; preds = %bb.dx
  %i.rz = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.sa = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !25
  %i.sb = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 4942, i64 noundef %i.rz, i64 noundef %i.sa, ptr noundef nonnull @.str.175) #15 ; 0 uses
  br i1 %.2213, label %bb.ee, label %.thread88

.split:                                           ; preds = %bb.bv, %bb.bu, %bb.ca
  store i32 -1, ptr %i.t, align 8, !tbaa !168
  %i.sc = load ptr, ptr %i.a, align 8, !tbaa !153 ; 2 uses
  br i1 %.2213, label %bb.ee, label %.thread88

.thread96:                                        ; preds = %bb.u, %bb.n
  store i8 1, ptr %i.z, align 8, !tbaa !173
  %i.sd = getelementptr inbounds nuw i8, ptr %i.z, i64 312
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !196 ; 2 uses
  store ptr %i.se, ptr %i.a, align 8, !tbaa !153
  br label %.thread88

bb.ed:                                            ; preds = %bb.eb, %bb.ec
  store ptr %i.qn, ptr %i.ru, align 8, !tbaa !199
  %i.sf = getelementptr inbounds nuw i8, ptr %i.qn, i64 344
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.sf, i8 0, i64 16, i1 false)
  store i8 1, ptr %i.qn, align 8, !tbaa !173
  store ptr %i.rh, ptr %i.a, align 8, !tbaa !153
  br i1 %.2213, label %bb.ee, label %.thread88

bb.ee:                                            ; preds = %.thread66, %.split103, %.split102, %.split, %.thread72, %bb.ed
  %.894 = phi ptr [ null, %.thread72 ], [ %i.rh, %bb.ed ], [ %i.sc, %.split ], [ null, %.thread66 ], [ null, %.split102 ], [ null, %.split103 ]
  %.322193 = phi ptr [ %.1219929, %.thread72 ], [ %.1219929, %bb.ed ], [ %.1219929, %.split ], [ %.12199285263, %.thread66 ], [ %.1219929, %.split102 ], [ %.1219929, %.split103 ] ; 2 uses
  %i.sg = call i32 @H5D__fill_term(ptr noundef nonnull %4) #15
  %i.sh = icmp slt i32 %i.sg, 0
  br i1 %i.sh, label %bb.ef, label %.thread88

bb.ef:                                            ; preds = %bb.ee
  %i.si = load i64, ptr @H5E_DATASET_g, align 8, !tbaa !25
  %i.sj = load i64, ptr @H5E_CANTFREE_g, align 8, !tbaa !25
  %i.sk = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.H5D__chunk_lock, i32 noundef 5004, i64 noundef %i.si, i64 noundef %i.sj, ptr noundef nonnull @.str.34) #15 ; 0 uses
  br label %.thread88

.thread88:                                        ; preds = %.critedge260, %bb.ag, %.thread44, %.thread66.thread, %bb.k, %bb.e, %.split103, %.split102, %.thread96, %.split, %.thread72, %bb.ef, %bb.ee, %bb.ed
  %.322192 = phi ptr [ %.322193, %bb.ef ], [ %.322193, %bb.ee ], [ %.1219929, %bb.ed ], [ %.1219929, %.split103 ], [ %.1219929, %.thread72 ], [ %.1219929, %.split ], [ %.0218, %.thread96 ], [ null, %bb.e ], [ %.12199285263, %.thread66.thread ], [ %.1219929, %.split102 ], [ %i.p, %bb.k ], [ %.12191019, %.critedge260 ], [ %.121992734, %bb.ag ], [ %.121992851158, %.thread44 ] ; 2 uses
  %.9 = phi ptr [ null, %bb.ef ], [ %.894, %bb.ee ], [ %i.rh, %bb.ed ], [ null, %.split103 ], [ null, %.thread72 ], [ %i.sc, %.split ], [ %i.se, %.thread96 ], [ null, %bb.e ], [ null, %.thread66.thread ], [ null, %.split102 ], [ null, %bb.k ], [ null, %.critedge260 ], [ null, %bb.ag ], [ null, %.thread44 ] ; 2 uses
  %i.sl = icmp eq ptr %.9, null
  %i.sm = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.sn = icmp ne ptr %i.sm, null
  %or.cond8 = select i1 %i.sl, i1 %i.sn, i1 false
  br i1 %or.cond8, label %bb.eg, label %H5D__chunk_mem_xfree.exit293

bb.eg:                                            ; preds = %.thread88
  %i.so = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.sp = trunc nuw i8 %i.so to i1
  %i.sq = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.sr = trunc nuw i8 %i.sq to i1
  %i.ss = xor i1 %i.sr, true
  %i.st = select i1 %i.sp, i1 true, i1 %i.ss
  br i1 %i.st, label %bb.eh, label %H5D__chunk_mem_xfree.exit293, !prof !206

bb.eh:                                            ; preds = %bb.eg
  %.not.i291 = icmp eq ptr %.322192, null
  br i1 %.not.i291, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.su = getelementptr inbounds nuw i8, ptr %.322192, i64 56
  %i.sv = load i64, ptr %i.su, align 8, !tbaa !170
  %.not8.i292 = icmp eq i64 %i.sv, 0
  br i1 %.not8.i292, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.sw = call ptr @H5MM_xfree(ptr noundef nonnull %i.sm) #15 ; 0 uses
  br label %H5D__chunk_mem_xfree.exit293

bb.ek:                                            ; preds = %bb.ei, %bb.eh
  %i.sx = call ptr @H5FL_blk_free(ptr noundef nonnull @H5_chunk_blk_free_list, ptr noundef nonnull %i.sm) #15 ; 0 uses
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
  %i.a = load i8, ptr @H5D_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %H5D__chunk_mem_xfree.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !88     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !168  ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.n = load i8, ptr %i.m, align 4, !tbaa !169, !range !12, !noundef !13
  %i.o = trunc nuw i8 %i.n to i1                  ; 2 uses
  br i1 %i.o, label %H5D__chunk_is_partial_edge_chunk.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 268
  %i.q = load i8, ptr %i.p, align 4, !tbaa !24
  %i.r = and i8 %i.q, 1
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %H5D__chunk_is_partial_edge_chunk.exit, label %bb.e
end_hunk_0
