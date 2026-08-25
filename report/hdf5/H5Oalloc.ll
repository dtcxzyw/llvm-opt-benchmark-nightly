Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Oalloc?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@H5O__alloc:bb.a
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !54
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = sub i64 %i.np, %i.kd
  %i.nr = getelementptr inbounds i8, ptr %i.nm, i64 %i.nq
  store ptr %i.nr, ptr %i.nn, align 8, !tbaa !54
  br label %._crit_edge284.i

._crit_edge284.i:                                 ; preds = %bb.bq, %._crit_edge284.i.loopexit.unr-lcssa, %bb.br, %.epil.preheader, %bb.bd
  %i.ns = tail call i32 @H5O__chunk_resize(ptr noundef nonnull %1, ptr noundef nonnull %i.ew) #7
  %i.nt = icmp slt i32 %i.ns, 0
  br i1 %i.nt, label %bb.bs, label %.thread265.i

bb.bs:                                            ; preds = %._crit_edge284.i
  %i.nu = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.nv = load i64, ptr @H5E_CANTRESIZE_g, align 8, !tbaa !29
  %i.nw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_extend_chunk, i32 noundef 661, i64 noundef %i.nu, i64 noundef %i.nv, ptr noundef nonnull @.str.27) #7 ; 0 uses
  br label %.thread265.i

.thread265.i:                                     ; preds = %._crit_edge284.i, %bb.bs, %bb.bp, %bb.bn, %bb.ay, %bb.au, %bb.an, %bb.ak, %bb.aj
  %.1216.i95 = phi i64 [ %.1216.i9698, %bb.aj ], [ %.1216.i9698, %bb.ak ], [ %.1216.i9698, %bb.bp ], [ %.1216.i9698, %bb.bs ], [ %.1216.i9698, %bb.ay ], [ %.1216.i9698, %bb.an ], [ %.1216.i9698, %bb.au ], [ %.1216.i9698, %bb.bn ], [ %.1216.i, %._crit_edge284.i ] ; 3 uses
  %i.nx = phi i1 [ true, %bb.aj ], [ false, %bb.ak ], [ true, %bb.bp ], [ true, %bb.bs ], [ true, %bb.ay ], [ true, %bb.an ], [ true, %bb.au ], [ true, %bb.bn ], [ false, %._crit_edge284.i ]
  %i.ny = phi i1 [ false, %bb.aj ], [ false, %bb.ak ], [ false, %bb.bp ], [ false, %bb.bs ], [ false, %bb.ay ], [ false, %bb.an ], [ false, %bb.au ], [ false, %bb.bn ], [ true, %._crit_edge284.i ]
  %.0218268.i = phi i1 [ false, %bb.aj ], [ false, %bb.ak ], [ true, %bb.bp ], [ true, %bb.bs ], [ true, %bb.ay ], [ false, %bb.an ], [ false, %bb.au ], [ true, %bb.bn ], [ true, %._crit_edge284.i ]
  %i.nz = tail call i32 @H5O__chunk_unprotect(ptr noundef %0, ptr noundef nonnull %i.ew, i1 noundef zeroext %.0218268.i) #7
  %i.oa = icmp slt i32 %i.nz, 0
  br i1 %i.oa, label %bb.bt, label %H5O__alloc_extend_chunk.exit

bb.bt:                                            ; preds = %.thread265.i
  %i.ob = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.oc = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !29
  %i.od = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_extend_chunk, i32 noundef 669, i64 noundef %i.ob, i64 noundef %i.oc, ptr noundef nonnull @.str.9) #7 ; 0 uses
  br label %.thread60

H5O__alloc_extend_chunk.exit:                     ; preds = %.thread265.i
  br i1 %i.nx, label %.thread60, label %bb.bu

.thread60:                                        ; preds = %H5O__alloc_extend_chunk.exit, %bb.bt, %.thread270.i
  %i.oe = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.of = load i64, ptr @H5E_CANTEXTEND_g, align 8, !tbaa !29
  %i.og = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc, i32 noundef 1277, i64 noundef %i.oe, i64 noundef %i.of, ptr noundef nonnull @.str.15) #7 ; 0 uses
  br label %bb.dd

bb.bu:                                            ; preds = %H5O__alloc_extend_chunk.exit
  br i1 %i.ny, label %.thread.loopexit, label %bb.r

.thread.loopexit:                                 ; preds = %bb.s, %bb.bu, %bb.r
  %.1216.i94.ph = phi i64 [ %.1216.i95, %bb.r ], [ %.1216.i95, %bb.bu ], [ %.1216.i9698, %bb.s ]
  %.pre = load i64, ptr %i.y, align 8, !tbaa !43
  br label %.thread

.thread:                                          ; preds = %.thread.loopexit, %.preheader
  %i.oh = phi i64 [ %i.z, %.preheader ], [ %.pre, %.thread.loopexit ] ; 6 uses
  %.1216.i94 = phi i64 [ %.promoted164, %.preheader ], [ %.1216.i94.ph, %.thread.loopexit ] ; 4 uses
  store i64 %.1216.i94, ptr %i.a, align 8
  %.not46 = icmp ult i64 %.1216.i94, %i.oh
  br i1 %.not46, label %.thread68, label %bb.bv

bb.bv:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  %i.oi = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.oj = trunc nuw i8 %i.oi to i1
  %i.ok = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.ol = trunc nuw i8 %i.ok to i1
  %i.om = xor i1 %i.ol, true
  %i.on = select i1 %i.oj, i1 true, i1 %i.om
  br i1 %i.on, label %bb.bw, label %H5O__alloc_new_chunk.exit.thread, !prof !12

bb.bw:                                            ; preds = %bb.bv
  %i.oo = load i8, ptr %i.s, align 8, !tbaa !30
  %i.op = icmp eq i8 %i.oo, 1                     ; 2 uses
  %i.oq = select i1 %i.op, i64 %i.w, i64 %i.j     ; 5 uses
  %i.or = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #7
  %i.os = zext i8 %i.or to i64
  %i.ot = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #7
  %i.ou = zext i8 %i.ot to i64
  %i.ov = add nuw nsw i64 %i.ou, %i.os            ; 2 uses
  %i.ow = add nuw nsw i64 %i.ov, 7
  %i.ox = and i64 %i.ow, 1016
  %i.oy = select i1 %i.op, i64 %i.ox, i64 %i.ov   ; 2 uses
  %i.oz = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.pa = trunc nuw i8 %i.oz to i1
  %i.pb = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.pc = trunc nuw i8 %i.pb to i1
  %i.pd = xor i1 %i.pc, true
  %i.pe = select i1 %i.pa, i1 true, i1 %i.pd
  %i.pf = load i64, ptr %i.y, align 8, !tbaa !43  ; 4 uses
  br i1 %i.pe, label %.preheader.i.i, label %H5O__alloc_find_best_null.exit.thread.i, !prof !12

.preheader.i.i:                                   ; preds = %bb.bw
  %.not.i.i = icmp eq i64 %i.pf, 0
  br i1 %.not.i.i, label %.thread41.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !28 ; 3 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.ch, %.lr.ph.i.i
  %.044.i.i = phi i64 [ -1, %.lr.ph.i.i ], [ %.1.i.i, %bb.ch ] ; 9 uses
  %.03843.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.qj, %bb.ch ] ; 8 uses
  %i.pi = getelementptr inbounds nuw [48 x i8], ptr %i.ph, i64 %.03843.i.i ; 4 uses
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !49
  %i.pk = load i32, ptr %i.pj, align 8, !tbaa !50
  %i.pl = icmp eq i32 %i.pk, 0
  br i1 %i.pl, label %bb.by, label %bb.ch

bb.by:                                            ; preds = %bb.bx
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 40
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !53 ; 4 uses
  %i.po = icmp eq i64 %i.pn, %i.oy
  br i1 %i.po, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.pp = icmp slt i64 %.044.i.i, 0
  br i1 %i.pp, label %bb.ch, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.pr = load i32, ptr %i.pq, align 8, !tbaa !46 ; 2 uses
  %i.ps = getelementptr inbounds nuw [48 x i8], ptr %i.ph, i64 %.044.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 16
  %i.pu = load i32, ptr %i.pt, align 8, !tbaa !46
  %i.pv = icmp ult i32 %i.pr, %i.pu
  br i1 %i.pv, label %bb.cb, label %bb.ch

bb.cb:                                            ; preds = %bb.ca
  %i.pw = icmp eq i32 %i.pr, 0
  br i1 %i.pw, label %._crit_edge.i.i, label %bb.ch

bb.cc:                                            ; preds = %bb.by
  %i.px = icmp ugt i64 %i.pn, %i.oy
  br i1 %i.px, label %bb.cd, label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  %i.py = icmp slt i64 %.044.i.i, 0
  br i1 %i.py, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pz = getelementptr inbounds nuw [48 x i8], ptr %i.ph, i64 %.044.i.i ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 40
  %i.qb = load i64, ptr %i.qa, align 8, !tbaa !53 ; 2 uses
  %i.qc = icmp ult i64 %i.pn, %i.qb
  br i1 %i.qc, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.qd = icmp eq i64 %i.pn, %i.qb
  br i1 %i.qd, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pi, i64 16
  %i.qf = load i32, ptr %i.qe, align 8, !tbaa !46
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  %i.qh = load i32, ptr %i.qg, align 8, !tbaa !46
  %i.qi = icmp ult i32 %i.qf, %i.qh
  %spec.select.i.i = select i1 %i.qi, i64 %.03843.i.i, i64 %.044.i.i
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.bx
  %.1.i.i = phi i64 [ %.044.i.i, %bb.bx ], [ %.03843.i.i, %bb.cb ], [ %.044.i.i, %bb.ca ], [ %.03843.i.i, %bb.bz ], [ %.03843.i.i, %bb.cd ], [ %.03843.i.i, %bb.ce ], [ %spec.select.i.i, %bb.cg ], [ %.044.i.i, %bb.cf ], [ %.044.i.i, %bb.cc ] ; 2 uses
  %i.qj = add nuw i64 %.03843.i.i, 1              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.qj, %i.pf
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.bx, !llvm.loop !66

._crit_edge.i.i:                                  ; preds = %bb.ch, %bb.cb
  %.2.i.i = phi i64 [ %.03843.i.i, %bb.cb ], [ %.1.i.i, %bb.ch ] ; 2 uses
  %i.qk = icmp slt i64 %.2.i.i, 0
  %spec.select.i52 = select i1 %i.qk, i64 %i.oh, i64 %.2.i.i ; 3 uses
  %.not.i53 = icmp ult i64 %spec.select.i52, %i.pf
  br i1 %.not.i53, label %H5O__alloc_find_best_nonnull.exit.i, label %.thread41.i

H5O__alloc_find_best_null.exit.thread.i:          ; preds = %bb.bw
  %.not33.i = icmp ult i64 %i.oh, %i.pf
  br i1 %.not33.i, label %H5O__alloc_find_best_nonnull.exit.i, label %.thread.i

.thread.i:                                        ; preds = %H5O__alloc_find_best_null.exit.thread.i
  store i32 -1, ptr %5, align 8, !tbaa !44
  br label %H5O__alloc_find_best_nonnull.exit.i

.thread41.i:                                      ; preds = %._crit_edge.i.i, %.preheader.i.i
  %.0303443.i = phi i64 [ %i.oh, %.preheader.i.i ], [ %spec.select.i52, %._crit_edge.i.i ] ; 2 uses
  store i32 -1, ptr %5, align 8, !tbaa !44
  %i.ql = load i8, ptr %i.s, align 8, !tbaa !30
  %i.qm = icmp eq i8 %i.ql, 1
  %i.qn = tail call zeroext i8 @H5F_sizeof_addr(ptr noundef %0) #7
  %i.qo = zext i8 %i.qn to i64
  %i.qp = tail call zeroext i8 @H5F_sizeof_size(ptr noundef %0) #7
  %i.qq = zext i8 %i.qp to i64
  %i.qr = add nuw nsw i64 %i.qq, %i.qo            ; 2 uses
  %i.qs = add nuw nsw i64 %i.qr, 7
  %i.qt = and i64 %i.qs, 1016
  %i.qu = select i1 %i.qm, i64 %i.qt, i64 %i.qr
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !28 ; 4 uses
  %i.qx = load i64, ptr %i.y, align 8, !tbaa !43  ; 4 uses
  %.not117.i.i = icmp eq i64 %i.qx, 0
  br i1 %.not117.i.i, label %._crit_edge.i23.thread.i, label %.lr.ph.i18.i

.lr.ph.i18.i:                                     ; preds = %.thread41.i
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 289 ; 3 uses
  br label %bb.ci

bb.ci:                                            ; preds = %.critedge.i.i, %.lr.ph.i18.i
  %.1.i2171.i = phi i32 [ undef, %.lr.ph.i18.i ], [ %.1.i2172.i, %.critedge.i.i ] ; 5 uses
  %i.ra = phi i64 [ undef, %.lr.ph.i18.i ], [ %i.uc, %.critedge.i.i ] ; 5 uses
  %.186.i66.i = phi i64 [ undef, %.lr.ph.i18.i ], [ %.186.i67.i, %.critedge.i.i ] ; 5 uses
  %.087.i63.i = phi i64 [ undef, %.lr.ph.i18.i ], [ %.087.i64.i, %.critedge.i.i ] ; 5 uses
  %i.rb = phi i32 [ undef, %.lr.ph.i18.i ], [ %i.ud, %.critedge.i.i ] ; 5 uses
  %i.rc = phi i32 [ undef, %.lr.ph.i18.i ], [ %i.ue, %.critedge.i.i ] ; 5 uses
  %.088116.i56.i = phi i32 [ -1, %.lr.ph.i18.i ], [ %.088116.i57.i, %.critedge.i.i ] ; 5 uses
  %i.rd = phi i64 [ undef, %.lr.ph.i18.i ], [ %i.uf, %.critedge.i.i ] ; 7 uses
  %i.re = phi i32 [ undef, %.lr.ph.i18.i ], [ %i.ug, %.critedge.i.i ] ; 6 uses
  %i.rf = phi i32 [ undef, %.lr.ph.i18.i ], [ %i.uh, %.critedge.i.i ] ; 6 uses
  %i.rg = phi i32 [ -1, %.lr.ph.i18.i ], [ %i.ui, %.critedge.i.i ] ; 6 uses
  %.088116.i.i = phi i32 [ 0, %.lr.ph.i18.i ], [ %i.uj, %.critedge.i.i ] ; 3 uses
  %.089115.i.i = phi i64 [ 0, %.lr.ph.i18.i ], [ %.2.i22.i, %.critedge.i.i ] ; 6 uses
  %.091114.i.i = phi ptr [ %i.qw, %.lr.ph.i18.i ], [ %i.uk, %.critedge.i.i ] ; 5 uses
  %i.rh = load ptr, ptr %.091114.i.i, align 8, !tbaa !49
  %i.ri = load i32, ptr %i.rh, align 8, !tbaa !50 ; 4 uses
  %.not.i19.i = icmp eq i32 %i.ri, 16
  br i1 %.not.i19.i, label %.critedge.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.rj = getelementptr inbounds nuw i8, ptr %.091114.i.i, i64 16
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !46 ; 4 uses
  %i.rl = load ptr, ptr %i.qy, align 8, !tbaa !34
  %i.rm = zext i32 %i.rk to i64                   ; 2 uses
  %i.rn = getelementptr inbounds nuw [40 x i8], ptr %i.rl, i64 %i.rm ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !41
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !39
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rr
  %i.rt = load i8, ptr %i.s, align 8, !tbaa !30
  %.fr118.i.i = freeze i8 %i.rt
  %i.ru = icmp eq i8 %.fr118.i.i, 1               ; 3 uses
  %.neg.i.i = select i1 %i.ru, i64 0, i64 -4
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rn, i64 16
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !40 ; 2 uses
  %.neg95.i.i = sub i64 %.neg.i.i, %i.rw
  %i.rx = getelementptr inbounds i8, ptr %i.rs, i64 %.neg95.i.i
  %i.ry = getelementptr inbounds nuw i8, ptr %.091114.i.i, i64 32
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !54
  %i.sa = getelementptr inbounds nuw i8, ptr %.091114.i.i, i64 40
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !53 ; 3 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.rz, i64 %i.sb ; 3 uses
  %i.sd = icmp eq ptr %i.sc, %i.rx
  br i1 %i.sd, label %.loopexit.i.i, label %.preheader.i20.i

.preheader.i20.i:                                 ; preds = %bb.cj
  br i1 %i.ru, label %.preheader.split.us.i.i, label %.preheader.split.i.i

.preheader.split.us.i.i:                          ; preds = %.preheader.i20.i, %bb.cl
  %.082112.us.i.i = phi i32 [ %i.sl, %bb.cl ], [ 0, %.preheader.i20.i ] ; 2 uses
  %.083111.us.i.i = phi ptr [ %i.sm, %bb.cl ], [ %i.qw, %.preheader.i20.i ] ; 4 uses
  %i.se = load ptr, ptr %.083111.us.i.i, align 8, !tbaa !49
  %i.sf = load i32, ptr %i.se, align 8, !tbaa !50
  %i.sg = icmp eq i32 %i.sf, 0
  br i1 %i.sg, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.preheader.split.us.i.i
  %i.sh = getelementptr inbounds nuw i8, ptr %.083111.us.i.i, i64 32
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !54
  %i.sj = getelementptr inbounds i8, ptr %i.si, i64 -8
  %i.sk = icmp eq ptr %i.sj, %i.sc
  br i1 %i.sk, label %.loopexit104.split.us.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.preheader.split.us.i.i
  %i.sl = add i32 %.082112.us.i.i, 1              ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.083111.us.i.i, i64 48
  %i.sn = zext i32 %i.sl to i64
  %i.so = icmp ugt i64 %i.qx, %i.sn
  br i1 %i.so, label %.preheader.split.us.i.i, label %.loopexit.i.i, !llvm.loop !71

.preheader.split.i.i:                             ; preds = %.preheader.i20.i, %bb.cm
  %.082112.i.i = phi i32 [ %i.tg, %bb.cm ], [ 0, %.preheader.i20.i ] ; 2 uses
  %.083111.i.i = phi ptr [ %i.th, %bb.cm ], [ %i.qw, %.preheader.i20.i ] ; 4 uses
  %i.sp = load ptr, ptr %.083111.i.i, align 8, !tbaa !49
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !50
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %.thread.i.i, label %bb.cm

.thread.i.i:                                      ; preds = %.preheader.split.i.i
  %i.ss = getelementptr inbounds nuw i8, ptr %.083111.i.i, i64 32
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !54
  %i.su = load i8, ptr %i.qz, align 1, !tbaa !31
  %i.sv = lshr i8 %i.su, 1
  %i.sw = and i8 %i.sv, 2
  %i.sx = or disjoint i8 %i.sw, 4
  %i.sy = zext nneg i8 %i.sx to i64               ; 2 uses
  %i.sz = sub nsw i64 0, %i.sy
  %i.ta = getelementptr inbounds i8, ptr %i.st, i64 %i.sz
  %i.tb = icmp eq ptr %i.ta, %i.sc
  br i1 %i.tb, label %.loopexit104.split.us.i.i, label %bb.cm

.loopexit104.split.us.i.i:                        ; preds = %.thread.i.i, %bb.ck
  %.083110.i.i = phi ptr [ %.083111.us.i.i, %bb.ck ], [ %.083111.i.i, %.thread.i.i ]
  %.082107.i.i = phi i32 [ %.082112.us.i.i, %bb.ck ], [ %.082112.i.i, %.thread.i.i ]
  %i.tc = phi i64 [ 8, %bb.ck ], [ %i.sy, %.thread.i.i ]
  %i.td = getelementptr inbounds nuw i8, ptr %.083110.i.i, i64 40
  %i.te = load i64, ptr %i.td, align 8, !tbaa !53
  %i.tf = add i64 %i.te, %i.tc
  br label %.loopexit.i.i

bb.cm:                                            ; preds = %.thread.i.i, %.preheader.split.i.i
  %i.tg = add i32 %.082112.i.i, 1                 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.083111.i.i, i64 48
  %i.ti = zext i32 %i.tg to i64
  %i.tj = icmp ugt i64 %i.qx, %i.ti
  br i1 %i.tj, label %.preheader.split.i.i, label %.loopexit.i.i, !llvm.loop !71

.loopexit.i.i:                                    ; preds = %bb.cm, %bb.cl, %.loopexit104.split.us.i.i, %bb.cj
  %.087.i.i = phi i64 [ %i.rw, %bb.cj ], [ 0, %.loopexit104.split.us.i.i ], [ 0, %bb.cl ], [ 0, %bb.cm ] ; 2 uses
  %.186.i.i = phi i64 [ 0, %bb.cj ], [ %i.tf, %.loopexit104.split.us.i.i ], [ 0, %bb.cl ], [ 0, %bb.cm ] ; 2 uses
  %.1.i21.i = phi i32 [ 0, %bb.cj ], [ %.082107.i.i, %.loopexit104.split.us.i.i ], [ 0, %bb.cl ], [ 0, %bb.cm ]
  %i.tk = add i64 %.087.i.i, %i.sb
  %i.tl = add i64 %i.tk, %.186.i.i                ; 5 uses
  %.not98.i.i = icmp ult i64 %i.tl, %i.qu
  %i.tm = icmp slt i32 %i.rg, 0                   ; 2 uses
  br i1 %.not98.i.i, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %.loopexit.i.i
  br i1 %i.tm, label %.critedge102.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.tn = icmp eq i32 %i.rf, 12
  %.not100.i.i = icmp ne i32 %i.ri, 12
  %or.cond.i.not48.i = and i1 %i.tn, %.not100.i.i
  %i.to = icmp ult i64 %i.tl, %i.rd
  %or.cond.i54 = select i1 %or.cond.i.not48.i, i1 true, i1 %i.to
  br i1 %or.cond.i54, label %.critedge102.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.tp = icmp eq i64 %i.tl, %i.rd
  %i.tq = icmp ult i32 %i.rk, %i.re
  %or.cond46.i = select i1 %i.tp, i1 %i.tq, i1 false
  br i1 %or.cond46.i, label %.critedge102.i.i, label %.critedge.i.i

.critedge102.i.i:                                 ; preds = %bb.cp, %bb.co, %bb.cn
  br label %.critedge.i.i

bb.cq:                                            ; preds = %.loopexit.i.i
  br i1 %i.tm, label %bb.cr, label %.critedge.i.i

bb.cr:                                            ; preds = %bb.cq
  %i.tr = load i64, ptr %i.bj, align 8, !tbaa !32
  %i.ts = add i64 %i.tr, -1
  %i.tt = icmp eq i64 %i.ts, %i.rm
  br i1 %i.tt, label %bb.cs, label %.critedge.i.i

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.ru, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.tu = load i8, ptr %i.qz, align 1, !tbaa !31
  %i.tv = lshr i8 %i.tu, 1
  %i.tw = and i8 %i.tv, 2
  %i.tx = or disjoint i8 %i.tw, 4
  %i.ty = zext nneg i8 %i.tx to i64
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.tz = phi i64 [ %i.ty, %bb.ct ], [ 8, %bb.cs ]
  %i.ua = add i64 %i.sb, %.089115.i.i
  %i.ub = add i64 %i.ua, %i.tz
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.cu, %bb.cr, %bb.cq, %.critedge102.i.i, %bb.cp, %bb.ci
  %.1.i2172.i = phi i32 [ %.1.i2171.i, %bb.ci ], [ %.1.i2171.i, %bb.cq ], [ %.1.i2171.i, %bb.cu ], [ %.1.i2171.i, %bb.cr ], [ %.1.i2171.i, %bb.cp ], [ %.1.i21.i, %.critedge102.i.i ] ; 2 uses
  %i.uc = phi i64 [ %i.ra, %bb.ci ], [ %i.ra, %bb.cq ], [ %i.ra, %bb.cu ], [ %i.ra, %bb.cr ], [ %i.ra, %bb.cp ], [ %i.tl, %.critedge102.i.i ] ; 2 uses
  %.186.i67.i = phi i64 [ %.186.i66.i, %bb.ci ], [ %.186.i66.i, %bb.cq ], [ %.186.i66.i, %bb.cu ], [ %.186.i66.i, %bb.cr ], [ %.186.i66.i, %bb.cp ], [ %.186.i.i, %.critedge102.i.i ] ; 2 uses
  %.087.i64.i = phi i64 [ %.087.i63.i, %bb.ci ], [ %.087.i63.i, %bb.cq ], [ %.087.i63.i, %bb.cu ], [ %.087.i63.i, %bb.cr ], [ %.087.i63.i, %bb.cp ], [ %.087.i.i, %.critedge102.i.i ] ; 2 uses
  %i.ud = phi i32 [ %i.rb, %bb.ci ], [ %i.rb, %bb.cq ], [ %i.rb, %bb.cu ], [ %i.rb, %bb.cr ], [ %i.rb, %bb.cp ], [ %i.rk, %.critedge102.i.i ] ; 2 uses
  %i.ue = phi i32 [ %i.rc, %bb.ci ], [ %i.rc, %bb.cq ], [ %i.rc, %bb.cu ], [ %i.rc, %bb.cr ], [ %i.rc, %bb.cp ], [ %i.ri, %.critedge102.i.i ] ; 2 uses
  %.088116.i57.i = phi i32 [ %.088116.i56.i, %bb.ci ], [ %.088116.i56.i, %bb.cq ], [ %.088116.i56.i, %bb.cu ], [ %.088116.i56.i, %bb.cr ], [ %.088116.i56.i, %bb.cp ], [ %.088116.i.i, %.critedge102.i.i ] ; 2 uses
  %i.uf = phi i64 [ %i.rd, %bb.ci ], [ %i.rd, %bb.cq ], [ %i.rd, %bb.cu ], [ %i.rd, %bb.cr ], [ %i.rd, %bb.cp ], [ %i.tl, %.critedge102.i.i ]
  %i.ug = phi i32 [ %i.re, %bb.ci ], [ %i.re, %bb.cq ], [ %i.re, %bb.cu ], [ %i.re, %bb.cr ], [ %i.re, %bb.cp ], [ %i.rk, %.critedge102.i.i ]
  %i.uh = phi i32 [ %i.rf, %bb.ci ], [ %i.rf, %bb.cq ], [ %i.rf, %bb.cu ], [ %i.rf, %bb.cr ], [ %i.rf, %bb.cp ], [ %i.ri, %.critedge102.i.i ]
  %i.ui = phi i32 [ %i.rg, %bb.ci ], [ %i.rg, %bb.cq ], [ %i.rg, %bb.cu ], [ %i.rg, %bb.cr ], [ %i.rg, %bb.cp ], [ %.088116.i.i, %.critedge102.i.i ] ; 3 uses
  %.2.i22.i = phi i64 [ %.089115.i.i, %bb.ci ], [ %.089115.i.i, %bb.cq ], [ %i.ub, %bb.cu ], [ %.089115.i.i, %bb.cr ], [ %.089115.i.i, %bb.cp ], [ %.089115.i.i, %.critedge102.i.i ] ; 2 uses
  %i.uj = add i32 %.088116.i.i, 1                 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.091114.i.i, i64 48
  %i.ul = zext i32 %i.uj to i64
  %i.um = icmp ugt i64 %i.qx, %i.ul
  br i1 %i.um, label %bb.ci, label %._crit_edge.i23.i, !llvm.loop !72

._crit_edge.i23.i:                                ; preds = %.critedge.i.i
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.un = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.uo = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.up = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.uq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ur = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %.088116.i57.i, ptr %5, align 8
  store i32 %i.ue, ptr %6, align 4
  store i32 %i.ud, ptr %i.uo, align 8
  store i64 %.087.i64.i, ptr %i.up, align 8
  store i64 %.186.i67.i, ptr %i.uq, align 8
  store i64 %i.uc, ptr %i.un, align 8
  store i32 %.1.i2172.i, ptr %i.ur, align 8
  %i.us = icmp slt i32 %i.ui, 0
  br i1 %i.us, label %._crit_edge.i23.thread.i, label %bb.cv

._crit_edge.i23.thread.i:                         ; preds = %._crit_edge.i23.i, %.thread41.i
  %.089.lcssa.i45.i = phi i64 [ %.2.i22.i, %._crit_edge.i23.i ], [ 0, %.thread41.i ]
  %i.ut = add i64 %.089.lcssa.i45.i, %i.oq
  br label %H5O__alloc_find_best_nonnull.exit.i

bb.cv:                                            ; preds = %._crit_edge.i23.i
  %i.uu = load i8, ptr %i.s, align 8, !tbaa !30
  %i.uv = icmp eq i8 %i.uu, 1
  br i1 %i.uv, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.uw = load i8, ptr %i.qz, align 1, !tbaa !31
  %i.ux = lshr i8 %i.uw, 1
  %i.uy = and i8 %i.ux, 2
  %i.uz = or disjoint i8 %i.uy, 4
  %i.va = zext nneg i8 %i.uz to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.vb = phi i64 [ %i.va, %bb.cw ], [ 8, %bb.cv ]
  %i.vc = zext nneg i32 %i.ui to i64
  %i.vd = getelementptr inbounds nuw [48 x i8], ptr %i.qw, i64 %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 40
  %i.vf = load i64, ptr %i.ve, align 8, !tbaa !53
  %i.vg = add nuw nsw i64 %i.vb, %i.oq
  %i.vh = add i64 %i.vg, %i.vf
  br label %H5O__alloc_find_best_nonnull.exit.i

H5O__alloc_find_best_nonnull.exit.i:              ; preds = %bb.cx, %._crit_edge.i23.thread.i, %.thread.i, %H5O__alloc_find_best_null.exit.thread.i, %._crit_edge.i.i
  %.03035.i = phi i64 [ %spec.select.i52, %._crit_edge.i.i ], [ %.0303443.i, %bb.cx ], [ %i.oh, %H5O__alloc_find_best_null.exit.thread.i ], [ %i.oh, %.thread.i ], [ %.0303443.i, %._crit_edge.i23.thread.i ]
  %.031.i = phi i64 [ %i.oq, %._crit_edge.i.i ], [ %i.vh, %bb.cx ], [ %i.oq, %H5O__alloc_find_best_null.exit.thread.i ], [ %i.oq, %.thread.i ], [ %i.ut, %._crit_edge.i23.thread.i ]
  %i.vi = call i32 @H5O__alloc_chunk(ptr noundef %0, ptr noundef %1, i64 noundef %.031.i, i64 noundef %.03035.i, ptr noundef nonnull %5, ptr noundef nonnull %i.a)
  %i.vj = icmp slt i32 %i.vi, 0
  br i1 %i.vj, label %bb.cy, label %H5O__alloc_find_best_nonnull.exit.i.H5O__alloc_new_chunk.exit.thread_crit_edge

H5O__alloc_find_best_nonnull.exit.i.H5O__alloc_new_chunk.exit.thread_crit_edge: ; preds = %H5O__alloc_find_best_nonnull.exit.i
  %.pre124.pre = load i64, ptr %i.a, align 8, !tbaa !29
  br label %H5O__alloc_new_chunk.exit.thread

H5O__alloc_new_chunk.exit.thread:                 ; preds = %H5O__alloc_find_best_nonnull.exit.i.H5O__alloc_new_chunk.exit.thread_crit_edge, %bb.bv
  %.pre124 = phi i64 [ %.pre124.pre, %H5O__alloc_find_best_nonnull.exit.i.H5O__alloc_new_chunk.exit.thread_crit_edge ], [ %.1216.i94, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %.thread68

bb.cy:                                            ; preds = %H5O__alloc_find_best_nonnull.exit.i
  %i.vk = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.vl = load i64, ptr @H5E_CANTALLOC_g, align 8, !tbaa !29
  %i.vm = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc_new_chunk, i32 noundef 1148, i64 noundef %i.vk, i64 noundef %i.vl, ptr noundef nonnull @.str.29) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  %i.vn = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.vo = load i64, ptr @H5E_NOSPACE_g, align 8, !tbaa !29
  %i.vp = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc, i32 noundef 1285, i64 noundef %i.vn, i64 noundef %i.vo, ptr noundef nonnull @.str.16) #7 ; 0 uses
  br label %bb.dd

.thread68:                                        ; preds = %.thread, %H5O__alloc_new_chunk.exit.thread, %H5O__alloc_find_best_null.exit
  %i.vq = phi i64 [ %.1216.i94, %.thread ], [ %.pre124, %H5O__alloc_new_chunk.exit.thread ], [ %.2.i, %H5O__alloc_find_best_null.exit ] ; 2 uses
  %i.vr = tail call fastcc i32 @H5O__alloc_null(ptr noundef %0, ptr noundef %1, i64 noundef %i.vq, ptr noundef %2, ptr noundef null, i64 noundef %i.x)
  %i.vs = icmp slt i32 %i.vr, 0
  br i1 %i.vs, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %.thread68
  %i.vt = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.vu = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !29
  %i.vv = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc, i32 noundef 1291, i64 noundef %i.vt, i64 noundef %i.vu, ptr noundef nonnull @.str.11) #7 ; 0 uses
  br label %bb.dd

bb.da:                                            ; preds = %.thread68
  %i.vw = tail call i32 @H5AC_mark_entry_dirty(ptr noundef %1) #7
  %i.vx = icmp slt i32 %i.vw, 0
  br i1 %i.vx, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.vy = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.vz = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !29
  %i.wa = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc, i32 noundef 1295, i64 noundef %i.vy, i64 noundef %i.vz, ptr noundef nonnull @.str.17) #7 ; 0 uses
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  store i64 %i.vq, ptr %4, align 8, !tbaa !29
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cy, %.thread60, %bb.a, %bb.dc, %bb.db, %bb.cz, %bb.e, %bb.c
  %.043 = phi i32 [ 0, %bb.dc ], [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %bb.a ], [ -1, %bb.cz ], [ -1, %bb.db ], [ -1, %.thread60 ], [ -1, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.043
}

declare i32 @H5AC_mark_entry_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O__release_mesg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @H5O__delete_mesg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.k = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !29
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__release_mesg, i32 noundef 1333, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.18) #7 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !46
  %i.o = tail call ptr @H5O__chunk_protect(ptr noundef %0, ptr noundef %1, i32 noundef %i.n) #7 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.r = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !29
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__release_mesg, i32 noundef 1337, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.19) #7 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.t = tail call i32 @H5O__msg_free_mesg(ptr noundef nonnull %2) #7 ; 0 uses
  store ptr @H5O_MSG_NULL, ptr %2, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 0, ptr %i.y, align 1, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 1, ptr %i.z, align 8, !tbaa !57
  store i8 1, ptr %i.a, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !46
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !40 ; 3 uses
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.an = load i8, ptr %i.am, align 8, !tbaa !30
  %i.ao = icmp eq i8 %i.an, 1
  %.neg = select i1 %i.ao, i64 0, i64 -4
  %.neg37 = sub i64 %.neg, %i.ag
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %.neg37
  call fastcc void @H5O__eliminate_gap(ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %i.ap, i64 noundef %i.ag)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !8, !range !10
  %i.aq = trunc nuw i8 %.pre to i1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ar = phi i1 [ true, %bb.g ], [ %i.aq, %bb.h ]
  %i.as = tail call i32 @H5O__chunk_unprotect(ptr noundef %0, ptr noundef nonnull %i.o, i1 noundef zeroext %i.ar) #7
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.au = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.av = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !29
  %i.aw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__release_mesg, i32 noundef 1368, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.9) #7 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.i, %bb.j, %bb.a
  %.1 = phi i32 [ -1, %bb.j ], [ 0, %bb.i ], [ 0, %bb.a ], [ -1, %bb.d ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.1
}

declare i32 @H5O__delete_mesg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @H5O__eliminate_gap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
end_hunk_0
