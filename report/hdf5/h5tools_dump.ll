Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5tools_dump?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@h5tools_dump_dset:bb.a

bb.bo:                                            ; preds = %bb.bn
  %i.ki = call i32 @H5Sclose(i64 noundef %i.ff) #12
  %i.kj = icmp slt i32 %i.ki, 0
  br i1 %i.kj, label %bb.bp, label %.thread189.i

bb.bp:                                            ; preds = %bb.bo
  %i.kk = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.kl = icmp sgt i32 %i.kk, 0
  br i1 %i.kl, label %bb.bq, label %.thread189.i

bb.bq:                                            ; preds = %bb.bp
  %i.km = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.kn = icmp sgt i64 %i.km, -1
  %i.ko = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.kp = icmp sgt i64 %i.ko, -1
  %or.cond19.i = select i1 %i.kn, i1 %i.kp, i1 false
  br i1 %or.cond19.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.kq = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.kr = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.ks = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.km, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_dump_simple_dset, i32 noundef 1786, i64 noundef %i.ko, i64 noundef %i.kq, i64 noundef %i.kr, ptr noundef nonnull @.str.62) #12 ; 0 uses
  br label %.thread189.i

bb.bs:                                            ; preds = %bb.bq
  %i.kt = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.ku = call i64 @fwrite(ptr nonnull @.str.62, i64 15, i64 1, ptr %i.kt) #13 ; 0 uses
  %i.kv = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc184.i = call i32 @fputc(i32 10, ptr %i.kv) ; 0 uses
  br label %.thread189.i

.thread189.i:                                     ; preds = %bb.bs, %bb.br, %bb.bp, %bb.bo, %bb.bn, %bb.ah, %.loopexit193.i, %bb.ab, %bb.aa, %bb.y, %bb.w, %bb.v, %bb.t
  %.9.i = phi i32 [ %.7.i, %bb.bn ], [ %.7.i, %bb.bo ], [ -1, %bb.br ], [ -1, %bb.bs ], [ -1, %bb.bp ], [ -1, %bb.aa ], [ -1, %bb.ab ], [ -1, %bb.y ], [ -1, %bb.w ], [ -1, %bb.t ], [ -1, %bb.v ], [ 0, %.loopexit193.i ], [ 0, %bb.ah ] ; 2 uses
  %i.kw = icmp sgt i64 %i.an, -1
  br i1 %i.kw, label %bb.bt, label %h5tools_dump_simple_dset.exit

bb.bt:                                            ; preds = %.thread189.i
  %i.kx = call i32 @H5Sclose(i64 noundef %i.an) #12
  %i.ky = icmp slt i32 %i.kx, 0
  br i1 %i.ky, label %bb.bu, label %h5tools_dump_simple_dset.exit

bb.bu:                                            ; preds = %bb.bt
  %i.kz = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %bb.bv, label %h5tools_dump_simple_dset.exit

bb.bv:                                            ; preds = %bb.bu
  %i.lb = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.lc = icmp sgt i64 %i.lb, -1
  %i.ld = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.le = icmp sgt i64 %i.ld, -1
  %or.cond21.i = select i1 %i.lc, i1 %i.le, i1 false
  br i1 %or.cond21.i, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.lf = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.lg = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.lh = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.lb, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_dump_simple_dset, i32 noundef 1788, i64 noundef %i.ld, i64 noundef %i.lf, i64 noundef %i.lg, ptr noundef nonnull @.str.62) #12 ; 0 uses
  br label %h5tools_dump_simple_dset.exit

bb.bx:                                            ; preds = %bb.bv
  %i.li = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.lj = call i64 @fwrite(ptr nonnull @.str.62, i64 15, i64 1, ptr %i.li) #13 ; 0 uses
  %i.lk = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc185.i = call i32 @fputc(i32 10, ptr %i.lk) ; 0 uses
  br label %h5tools_dump_simple_dset.exit

h5tools_dump_simple_dset.exit:                    ; preds = %bb.o, %bb.q, %bb.r, %.epilog-lcssa, %.thread189.i, %bb.bt, %bb.bu, %bb.bw, %bb.bx
  %.10.i = phi i32 [ 0, %.epilog-lcssa ], [ %.9.i, %bb.bt ], [ %.9.i, %.thread189.i ], [ -1, %bb.bw ], [ -1, %bb.bx ], [ -1, %bb.bu ], [ -1, %bb.r ], [ -1, %bb.o ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #12
  br label %bb.fm

bb.by:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  %i.ll = tail call i64 @H5Dget_space(i64 noundef %3) #12 ; 8 uses
  %i.lm = icmp slt i64 %i.ll, 0
  br i1 %i.lm, label %bb.bz, label %bb.cd

bb.bz:                                            ; preds = %bb.by
  %i.ln = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.lo = icmp sgt i32 %i.ln, 0
  br i1 %i.lo, label %bb.ca, label %h5tools_dump_simple_subset.exit

bb.ca:                                            ; preds = %bb.bz
  %i.lp = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.lq = icmp sgt i64 %i.lp, -1
  %i.lr = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ls = icmp sgt i64 %i.lr, -1
  %or.cond.i51 = select i1 %i.lq, i1 %i.ls, i1 false
  br i1 %or.cond.i51, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.lt = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.lu = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.lv = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.lp, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_dump_simple_subset, i32 noundef 1580, i64 noundef %i.lr, i64 noundef %i.lt, i64 noundef %i.lu, ptr noundef nonnull @.str.307) #12 ; 0 uses
  br label %h5tools_dump_simple_subset.exit

bb.cc:                                            ; preds = %bb.ca
  %i.lw = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.lx = tail call i64 @fwrite(ptr nonnull @.str.307, i64 19, i64 1, ptr %i.lw) #13 ; 0 uses
  %i.ly = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc42.i = tail call i32 @fputc(i32 10, ptr %i.ly) ; 0 uses
  br label %h5tools_dump_simple_subset.exit

bb.cd:                                            ; preds = %bb.by
  %i.lz = tail call i32 @H5Sget_simple_extent_ndims(i64 noundef %i.ll) #12 ; 2 uses
  %i.ma = icmp slt i32 %i.lz, 0
  br i1 %i.ma, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %i.mb = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.mc = icmp sgt i32 %i.mb, 0
  br i1 %i.mc, label %bb.cf, label %.thread.i45

bb.cf:                                            ; preds = %bb.ce
  %i.md = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.me = icmp sgt i64 %i.md, -1
  %i.mf = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.mg = icmp sgt i64 %i.mf, -1
  %or.cond3.i50 = select i1 %i.me, i1 %i.mg, i1 false
  br i1 %or.cond3.i50, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.mh = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.mi = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.mj = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.md, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_dump_simple_subset, i32 noundef 1583, i64 noundef %i.mf, i64 noundef %i.mh, i64 noundef %i.mi, ptr noundef nonnull @.str.64) #12 ; 0 uses
  br label %.thread.i45

bb.ch:                                            ; preds = %bb.cf
  %i.mk = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.ml = tail call i64 @fwrite(ptr nonnull @.str.64, i64 33, i64 1, ptr %i.mk) #13 ; 0 uses
  %i.mm = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc41.i = tail call i32 @fputc(i32 10, ptr %i.mm) ; 0 uses
  br label %.thread.i45

bb.ci:                                            ; preds = %bb.cd
  %i.mn = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 7 uses
  store i32 %i.lz, ptr %i.mn, align 4, !tbaa !58
  %i.mo = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.ll, ptr noundef nonnull %i.o, ptr noundef null) #12
  %i.mp = icmp slt i32 %i.mo, 0
  br i1 %i.mp, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %bb.ci
  %i.mq = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %bb.ck, label %.thread.i45

bb.ck:                                            ; preds = %bb.cj
  %i.ms = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.mt = icmp sgt i64 %i.ms, -1
  %i.mu = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.mv = icmp sgt i64 %i.mu, -1
  %or.cond5.i48 = select i1 %i.mt, i1 %i.mv, i1 false
  br i1 %or.cond5.i48, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.mw = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.mx = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.my = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ms, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_dump_simple_subset, i32 noundef 1588, i64 noundef %i.mu, i64 noundef %i.mw, i64 noundef %i.mx, ptr noundef nonnull @.str.188) #12 ; 0 uses
  br label %.thread.i45

bb.cm:                                            ; preds = %bb.ck
  %i.mz = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.na = call i64 @fwrite(ptr nonnull @.str.188, i64 32, i64 1, ptr %i.mz) #13 ; 0 uses
  %i.nb = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc.i49 = call i32 @fputc(i32 10, ptr %i.nb) ; 0 uses
  br label %.thread.i45

bb.cn:                                            ; preds = %bb.ci
  %i.nc = load i32, ptr %i.mn, align 4, !tbaa !58
  %i.nd = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.nf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  call void @init_acc_pos(i32 noundef %i.nc, ptr noundef nonnull %i.o, ptr noundef nonnull %i.nd, ptr noundef nonnull %i.ne, ptr noundef nonnull %i.nf) #12
  %i.ng = load i32, ptr %i.mn, align 4, !tbaa !58 ; 9 uses
  %i.nh = add i32 %i.ng, -1
  %i.ni = zext i32 %i.nh to i64
  %i.nj = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ni
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !22
  %i.nl = getelementptr inbounds nuw i8, ptr %2, i64 560
  store i64 %i.nk, ptr %i.nl, align 8, !tbaa !65
  %i.nm = load ptr, ptr %.035.sroa.phi, align 8, !tbaa !155
  %i.nn = getelementptr inbounds nuw i8, ptr %2, i64 1096
  store ptr %i.nm, ptr %i.nn, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.no = icmp eq i32 %i.ng, 1
  %i.np = add i32 %i.ng, -2
  %.079.i.i = select i1 %i.no, i32 0, i32 %i.np
  %i.nq = icmp ugt i32 %i.ng, 2                   ; 2 uses
  %i.nr = zext i32 %i.ng to i64                   ; 11 uses
  br i1 %i.nq, label %.lr.ph.i.i, label %.loopexit94.i.i

.lr.ph.i.i:                                       ; preds = %bb.cn
  %i.ns = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 32
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !71 ; 11 uses
  %i.nv = add nsw i64 %i.nr, -2                   ; 2 uses
  %xtraiter = and i64 %i.nv, 7                    ; 3 uses
  %i.nw = add i32 %i.ng, -3
  %i.nx = icmp ult i32 %i.nw, 7
  br i1 %i.nx, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.nv, -8
  br label %bb.co

bb.co:                                            ; preds = %bb.co, %.lr.ph.i.i.new
  %.080105.i.i = phi i64 [ 1, %.lr.ph.i.i.new ], [ %i.pc, %bb.co ]
  %.084104.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.pd, %bb.co ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.7, %bb.co ]
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %.084104.i.i
  %i.nz = load i64, ptr %i.ny, align 8, !tbaa !22
  %i.oa = mul i64 %i.nz, %.080105.i.i
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %.084104.i.i
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !22
  %i.oe = mul i64 %i.od, %i.oa
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %.084104.i.i
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !22
  %i.oi = mul i64 %i.oh, %i.oe
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %.084104.i.i
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !22
  %i.om = mul i64 %i.ol, %i.oi
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %.084104.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 32
  %i.op = load i64, ptr %i.oo, align 8, !tbaa !22
  %i.oq = mul i64 %i.op, %i.om
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %.084104.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 40
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !22
  %i.ou = mul i64 %i.ot, %i.oq
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %.084104.i.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 48
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !22
  %i.oy = mul i64 %i.ox, %i.ou
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %.084104.i.i
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 56
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !22
  %i.pc = mul i64 %i.pb, %i.oy                    ; 3 uses
  %i.pd = add nuw nsw i64 %.084104.i.i, 8         ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph107.i.i.loopexit.unr-lcssa, label %bb.co, !llvm.loop !136

.loopexit94.i.i:                                  ; preds = %bb.cn
  %.not118.i.i = icmp eq i32 %i.ng, 0
  br i1 %.not118.i.i, label %.lr.ph116.i.i, label %.loopexit94.i..lr.ph107.i_crit_edge.i

.loopexit94.i..lr.ph107.i_crit_edge.i:            ; preds = %.loopexit94.i.i
  %.pre.i = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %.phi.trans.insert70.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 32
  %.pre71.i = load ptr, ptr %.phi.trans.insert70.i, align 8, !tbaa !71
  br label %.lr.ph107.i.i

.lr.ph107.i.i.loopexit.unr-lcssa:                 ; preds = %bb.co
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph107.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph107.i.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.080105.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i ], [ %i.pc, %.lr.ph107.i.i.loopexit.unr-lcssa ]
  %.084104.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.pd, %.lr.ph107.i.i.loopexit.unr-lcssa ]
  %lcmp.mod329 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod329)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cp, %.epil.preheader
  %.080105.i.i.epil = phi i64 [ %.080105.i.i.epil.init, %.epil.preheader ], [ %i.pg, %bb.cp ]
  %.084104.i.i.epil = phi i64 [ %.084104.i.i.epil.init, %.epil.preheader ], [ %i.ph, %bb.cp ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.cp ]
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %.084104.i.i.epil
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !22
  %i.pg = mul i64 %i.pf, %.080105.i.i.epil        ; 2 uses
  %i.ph = add nuw nsw i64 %.084104.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph107.i.i, label %bb.cp, !llvm.loop !137

.lr.ph107.i.i:                                    ; preds = %.lr.ph107.i.i.loopexit.unr-lcssa, %bb.cp, %.loopexit94.i..lr.ph107.i_crit_edge.i
  %i.pi = phi ptr [ %.pre71.i, %.loopexit94.i..lr.ph107.i_crit_edge.i ], [ %i.nu, %bb.cp ], [ %i.nu, %.lr.ph107.i.i.loopexit.unr-lcssa ] ; 9 uses
  %i.pj = phi ptr [ %.pre.i, %.loopexit94.i..lr.ph107.i_crit_edge.i ], [ %i.ns, %bb.cp ], [ %i.ns, %.lr.ph107.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.181185.i.i = phi i64 [ 1, %.loopexit94.i..lr.ph107.i_crit_edge.i ], [ %i.pc, %.lr.ph107.i.i.loopexit.unr-lcssa ], [ %i.pg, %bb.cp ] ; 2 uses
  %i.pk = ptrtoaddr ptr %i.pi to i64              ; 5 uses
  %i.pl = load ptr, ptr %i.pj, align 8, !tbaa !72 ; 5 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pj, i64 48
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !73 ; 5 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pj, i64 16
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !74 ; 9 uses
  %i.pq = ptrtoaddr ptr %i.pp to i64              ; 5 uses
  %i.pr = shl nuw nsw i64 %i.nr, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.h, i8 0, i64 %i.pr, i1 false), !tbaa !22
  %min.iters.check = icmp ult i32 %i.ng, 88
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph107.i.i
  %i.ps = ptrtoaddr ptr %i.pn to i64              ; 4 uses
  %i.pt = ptrtoaddr ptr %i.pl to i64              ; 4 uses
  %i.pu = sub i64 %i.g, %i.j
  %diff.check = icmp ugt i64 %i.pu, -32
  %i.pv = sub i64 %i.g, %i.l
  %diff.check204 = icmp ugt i64 %i.pv, -32
  %conflict.rdx = or i1 %diff.check, %diff.check204
  %i.pw = sub i64 %i.g, %i.n
  %diff.check205 = icmp ugt i64 %i.pw, -32
  %conflict.rdx206 = or i1 %conflict.rdx, %diff.check205
  %i.px = sub i64 %i.pt, %i.g
  %diff.check207 = icmp ugt i64 %i.px, -32
  %conflict.rdx208 = or i1 %conflict.rdx206, %diff.check207
  %i.py = sub i64 %i.g, %i.pk
  %diff.check209 = icmp ugt i64 %i.py, -32
  %conflict.rdx210 = or i1 %conflict.rdx208, %diff.check209
  %i.pz = sub i64 %i.g, %i.ps
  %diff.check211 = icmp ugt i64 %i.pz, -32
  %conflict.rdx212 = or i1 %conflict.rdx210, %diff.check211
  %i.qa = sub i64 %i.g, %i.pq
  %diff.check213 = icmp ugt i64 %i.qa, -32
  %conflict.rdx214 = or i1 %conflict.rdx212, %diff.check213
  %i.qb = sub i64 %i.j, %i.l
  %diff.check215 = icmp ugt i64 %i.qb, -32
  %conflict.rdx216 = or i1 %conflict.rdx214, %diff.check215
  %i.qc = sub i64 %i.j, %i.n
  %diff.check217 = icmp ugt i64 %i.qc, -32
  %conflict.rdx218 = or i1 %conflict.rdx216, %diff.check217
  %i.qd = sub i64 %i.pt, %i.j
  %diff.check219 = icmp ugt i64 %i.qd, -32
  %conflict.rdx220 = or i1 %conflict.rdx218, %diff.check219
  %i.qe = sub i64 %i.pk, %i.j
  %diff.check221 = icmp ugt i64 %i.qe, -32
  %conflict.rdx222 = or i1 %conflict.rdx220, %diff.check221
  %i.qf = sub i64 %i.j, %i.ps
  %diff.check223 = icmp ugt i64 %i.qf, -32
  %conflict.rdx224 = or i1 %conflict.rdx222, %diff.check223
  %i.qg = sub i64 %i.j, %i.pq
  %diff.check225 = icmp ugt i64 %i.qg, -32
  %conflict.rdx226 = or i1 %conflict.rdx224, %diff.check225
  %i.qh = sub i64 %i.l, %i.n
  %diff.check227 = icmp ugt i64 %i.qh, -32
  %conflict.rdx228 = or i1 %conflict.rdx226, %diff.check227
  %i.qi = sub i64 %i.pt, %i.l
  %diff.check229 = icmp ugt i64 %i.qi, -32
  %conflict.rdx230 = or i1 %conflict.rdx228, %diff.check229
  %i.qj = sub i64 %i.pk, %i.l
  %diff.check231 = icmp ugt i64 %i.qj, -32
  %conflict.rdx232 = or i1 %conflict.rdx230, %diff.check231
  %i.qk = sub i64 %i.ps, %i.l
  %diff.check233 = icmp ugt i64 %i.qk, -32
  %conflict.rdx234 = or i1 %conflict.rdx232, %diff.check233
  %i.ql = sub i64 %i.l, %i.pq
  %diff.check235 = icmp ugt i64 %i.ql, -32
  %conflict.rdx236 = or i1 %conflict.rdx234, %diff.check235
  %i.qm = sub i64 %i.pt, %i.n
  %diff.check237 = icmp ugt i64 %i.qm, -32
  %conflict.rdx238 = or i1 %conflict.rdx236, %diff.check237
  %i.qn = sub i64 %i.pk, %i.n
  %diff.check239 = icmp ugt i64 %i.qn, -32
  %conflict.rdx240 = or i1 %conflict.rdx238, %diff.check239
  %i.qo = sub i64 %i.ps, %i.n
  %diff.check241 = icmp ugt i64 %i.qo, -32
  %conflict.rdx242 = or i1 %conflict.rdx240, %diff.check241
  %i.qp = sub i64 %i.pq, %i.n
  %diff.check243 = icmp ugt i64 %i.qp, -32
  %conflict.rdx244 = or i1 %conflict.rdx242, %diff.check243
  br i1 %conflict.rdx244, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.nr, 4294967292              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %index ; 2 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 16
  %wide.load = load <2 x i64>, ptr %i.qq, align 8, !tbaa !22
  %wide.load245 = load <2 x i64>, ptr %i.qr, align 8, !tbaa !22
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store <2 x i64> %wide.load, ptr %i.qs, align 16, !tbaa !22
  store <2 x i64> %wide.load245, ptr %i.qt, align 16, !tbaa !22
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %index ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %wide.load246 = load <2 x i64>, ptr %i.qu, align 8, !tbaa !22
  %wide.load247 = load <2 x i64>, ptr %i.qv, align 8, !tbaa !22
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  store <2 x i64> %wide.load246, ptr %i.qw, align 16, !tbaa !22
  store <2 x i64> %wide.load247, ptr %i.qx, align 16, !tbaa !22
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %index ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  %wide.load248 = load <2 x i64>, ptr %i.qy, align 8, !tbaa !22
  %wide.load249 = load <2 x i64>, ptr %i.qz, align 8, !tbaa !22
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store <2 x i64> %wide.load248, ptr %i.ra, align 16, !tbaa !22
  store <2 x i64> %wide.load249, ptr %i.rb, align 16, !tbaa !22
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %index ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 16
  %wide.load250 = load <2 x i64>, ptr %i.rc, align 8, !tbaa !22
  %wide.load251 = load <2 x i64>, ptr %i.rd, align 8, !tbaa !22
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  store <2 x i64> %wide.load250, ptr %i.re, align 16, !tbaa !22
  store <2 x i64> %wide.load251, ptr %i.rf, align 16, !tbaa !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.rg = icmp eq i64 %index.next, %n.vec
  br i1 %i.rg, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.nr
  br i1 %cmp.n, label %._crit_edge.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph107.i.i, %middle.block
  %.185106.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph107.i.i ], [ %n.vec, %middle.block ] ; 11 uses
  %xtraiter330 = and i64 %i.nr, 1
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.rh = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %.185106.i.i.ph
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !22
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.185106.i.i.ph
  store i64 %i.ri, ptr %i.rj, align 16, !tbaa !22
  %i.rk = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %.185106.i.i.ph
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !22
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.185106.i.i.ph
  store i64 %i.rl, ptr %i.rm, align 16, !tbaa !22
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %.185106.i.i.ph
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !22
  %i.rp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.185106.i.i.ph
  store i64 %i.ro, ptr %i.rp, align 16, !tbaa !22
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %.185106.i.i.ph
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !22
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.185106.i.i.ph
  store i64 %i.rr, ptr %i.rs, align 16, !tbaa !22
  %i.rt = or disjoint i64 %.185106.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.185106.i.i.unr = phi i64 [ %.185106.i.i.ph, %scalar.ph.preheader ], [ %i.rt, %scalar.ph.prol ]
  %i.ru = add nsw i64 %i.nr, -1
  %i.rv = icmp eq i64 %.185106.i.i.ph, %i.ru
  br i1 %i.rv, label %._crit_edge.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.185106.i.i = phi i64 [ %i.sv, %scalar.ph ], [ %.185106.i.i.unr, %scalar.ph.prol.loopexit ] ; 10 uses
  %i.rw = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %.185106.i.i
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !22
  %i.ry = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.185106.i.i
  store i64 %i.rx, ptr %i.ry, align 8, !tbaa !22
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %.185106.i.i
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !22
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.185106.i.i
  store i64 %i.sa, ptr %i.sb, align 8, !tbaa !22
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %.185106.i.i
  %i.sd = load i64, ptr %i.sc, align 8, !tbaa !22
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.185106.i.i
  store i64 %i.sd, ptr %i.se, align 8, !tbaa !22
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %.185106.i.i
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !22
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.185106.i.i
  store i64 %i.sg, ptr %i.sh, align 8, !tbaa !22
  %i.si = add nuw nsw i64 %.185106.i.i, 1         ; 8 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.pl, i64 %i.si
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !22
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.si
  store i64 %i.sk, ptr %i.sl, align 8, !tbaa !22
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.si
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !22
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.si
  store i64 %i.sn, ptr %i.so, align 8, !tbaa !22
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.si
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !22
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.si
  store i64 %i.sq, ptr %i.sr, align 8, !tbaa !22
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.si
  %i.st = load i64, ptr %i.ss, align 8, !tbaa !22
  %i.su = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.si
  store i64 %i.st, ptr %i.su, align 8, !tbaa !22
  %i.sv = add nuw nsw i64 %.185106.i.i, 2         ; 2 uses
  %exitcond130.not.i.i.1 = icmp eq i64 %i.sv, %i.nr
  br i1 %exitcond130.not.i.i.1, label %._crit_edge.i.i, label %scalar.ph, !llvm.loop !139

._crit_edge.i.i:                                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  br i1 %i.nq, label %.lr.ph110.i.preheader.i, label %.loopexit.i.i

.lr.ph110.i.preheader.i:                          ; preds = %._crit_edge.i.i
  %i.sw = add nsw i64 %i.nr, -2                   ; 3 uses
  %min.iters.check259 = icmp ult i64 %i.sw, 12
  br i1 %min.iters.check259, label %.lr.ph110.i.i.preheader, label %vector.memcheck252

vector.memcheck252:                               ; preds = %.lr.ph110.i.preheader.i
  %i.sx = sub i64 %i.pk, %i.j
  %diff.check254 = icmp ugt i64 %i.sx, -16
  %i.sy = sub i64 %i.pq, %i.j
  %diff.check256 = icmp ugt i64 %i.sy, -16
  %conflict.rdx257 = or i1 %diff.check254, %diff.check256
  br i1 %conflict.rdx257, label %.lr.ph110.i.i.preheader, label %vector.ph260

vector.ph260:                                     ; preds = %vector.memcheck252
  %n.vec261 = and i64 %i.sw, -2                   ; 3 uses
  br label %vector.body262

vector.body262:                                   ; preds = %vector.body262, %vector.ph260
  %index263 = phi i64 [ 0, %vector.ph260 ], [ %index.next267, %vector.body262 ] ; 6 uses
  %i.sz = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index263
  %wide.load264 = load <2 x i64>, ptr %i.sz, align 16, !tbaa !22
  %i.ta = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %index263
  %wide.load265 = load <2 x i64>, ptr %i.ta, align 8, !tbaa !22
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %index263
  %wide.load266 = load <2 x i64>, ptr %i.tb, align 8, !tbaa !22
  %i.tc = mul <2 x i64> %wide.load266, %wide.load265
  %i.td = add <2 x i64> %i.tc, %wide.load264
  %i.te = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %index263
  store <2 x i64> %i.td, ptr %i.te, align 16, !tbaa !22
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index263
  store <2 x i64> splat (i64 1), ptr %i.tf, align 16, !tbaa !22
  %index.next267 = add nuw i64 %index263, 2       ; 2 uses
  %i.tg = icmp eq i64 %index.next267, %n.vec261
  br i1 %i.tg, label %middle.block268, label %vector.body262, !llvm.loop !140

middle.block268:                                  ; preds = %vector.body262
  %cmp.n269 = icmp eq i64 %i.sw, %n.vec261
  br i1 %cmp.n269, label %.loopexit.i.i, label %.lr.ph110.i.i.preheader

.lr.ph110.i.i.preheader:                          ; preds = %vector.memcheck252, %.lr.ph110.i.preheader.i, %middle.block268
  %.2109.i.i.ph = phi i64 [ 0, %vector.memcheck252 ], [ 0, %.lr.ph110.i.preheader.i ], [ %n.vec261, %middle.block268 ] ; 8 uses
  %5 = add nsw i64 %i.nr, -3
  %xtraiter332 = and i64 %i.nr, 1
  %lcmp.mod333.not = icmp eq i64 %xtraiter332, 0
  br i1 %lcmp.mod333.not, label %.lr.ph110.i.i.prol.loopexit, label %.lr.ph110.i.i.prol

.lr.ph110.i.i.prol:                               ; preds = %.lr.ph110.i.i.preheader
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.2109.i.i.ph
  %i.ti = load i64, ptr %i.th, align 16, !tbaa !22
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %.2109.i.i.ph
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !22
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %.2109.i.i.ph
  %i.tm = load i64, ptr %i.tl, align 8, !tbaa !22
  %i.tn = mul i64 %i.tm, %i.tk
  %i.to = add i64 %i.tn, %i.ti
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2109.i.i.ph
  store i64 %i.to, ptr %i.tp, align 16, !tbaa !22
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.2109.i.i.ph
  store i64 1, ptr %i.tq, align 16, !tbaa !22
  %i.tr = or disjoint i64 %.2109.i.i.ph, 1
  br label %.lr.ph110.i.i.prol.loopexit

.lr.ph110.i.i.prol.loopexit:                      ; preds = %.lr.ph110.i.i.prol, %.lr.ph110.i.i.preheader
  %.2109.i.i.unr = phi i64 [ %.2109.i.i.ph, %.lr.ph110.i.i.preheader ], [ %i.tr, %.lr.ph110.i.i.prol ]
  %i.ts = icmp eq i64 %5, %.2109.i.i.ph
  br i1 %i.ts, label %.loopexit.i.i, label %.lr.ph110.i.i.preheader.new

.lr.ph110.i.i.preheader.new:                      ; preds = %.lr.ph110.i.i.prol.loopexit
  %6 = add nsw i64 %i.nr, -4
  br label %.lr.ph110.i.i

.lr.ph110.i.i:                                    ; preds = %.lr.ph110.i.i, %.lr.ph110.i.i.preheader.new
  %.2109.i.i = phi i64 [ %.2109.i.i.unr, %.lr.ph110.i.i.preheader.new ], [ %i.uo, %.lr.ph110.i.i ] ; 8 uses
  %i.tt = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.2109.i.i
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !22
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %.2109.i.i
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !22
  %i.tx = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %.2109.i.i
  %i.ty = load i64, ptr %i.tx, align 8, !tbaa !22
  %i.tz = mul i64 %i.ty, %i.tw
  %i.ua = add i64 %i.tz, %i.tu
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.2109.i.i
  store i64 %i.ua, ptr %i.ub, align 8, !tbaa !22
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.2109.i.i
  store i64 1, ptr %i.uc, align 8, !tbaa !22
  %i.ud = add nuw nsw i64 %.2109.i.i, 1           ; 5 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.ud
  %i.uf = load i64, ptr %i.ue, align 8, !tbaa !22
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %i.ud
  %i.uh = load i64, ptr %i.ug, align 8, !tbaa !22
  %i.ui = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.ud
  %i.uj = load i64, ptr %i.ui, align 8, !tbaa !22
  %i.uk = mul i64 %i.uj, %i.uh
  %i.ul = add i64 %i.uk, %i.uf
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ud
  store i64 %i.ul, ptr %i.um, align 8, !tbaa !22
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ud
  store i64 1, ptr %i.un, align 8, !tbaa !22
  %i.uo = add nuw nsw i64 %.2109.i.i, 2
  %exitcond131.not.i.i.1 = icmp eq i64 %.2109.i.i, %6
  br i1 %exitcond131.not.i.i.1, label %.loopexit.i.i, label %.lr.ph110.i.i, !llvm.loop !141

.loopexit.i.i:                                    ; preds = %.lr.ph110.i.i.prol.loopexit, %.lr.ph110.i.i, %middle.block268, %._crit_edge.i.i
  %.not120.i.i = icmp eq i64 %.181185.i.i, 0
  br i1 %.not120.i.i, label %.thread49.i, label %.lr.ph116.i.i

.thread49.i:                                      ; preds = %.loopexit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %.thread.i45

.lr.ph116.i.i:                                    ; preds = %.loopexit.i.i, %.loopexit94.i.i
  %.181186189192.i.i = phi i64 [ %.181185.i.i, %.loopexit.i.i ], [ 1, %.loopexit94.i.i ]
  %i.up = zext i32 %.079.i.i to i64               ; 9 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.up
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.up
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.up ; 2 uses
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.up ; 4 uses
  %i.uu = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %2, i64 1088
  %i.uw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ux = getelementptr inbounds nuw i8, ptr %2, i64 552 ; 2 uses
  br label %bb.cq

bb.cq:                                            ; preds = %.thread90.i.i, %.lr.ph116.i.i
  %i.uy = phi i32 [ %i.ng, %.lr.ph116.i.i ], [ %i.agi, %.thread90.i.i ] ; 2 uses
  %.083114.i.i = phi i64 [ 0, %.lr.ph116.i.i ], [ %i.ail, %.thread90.i.i ]
  %i.uz = icmp ugt i32 %i.uy, 1
  br i1 %i.uz, label %bb.cr, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %.pre.i.i = load ptr, ptr %i.ak, align 8, !tbaa !52
  br label %bb.cy

bb.cr:                                            ; preds = %bb.cq
  %i.va = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 3 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 32
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !71
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.up
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !22
  %i.vf = getelementptr inbounds nuw i8, ptr %i.va, i64 48
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !73
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.vg, i64 %i.up ; 2 uses
  %i.vi = load i64, ptr %i.vh, align 8, !tbaa !22
  %i.vj = mul i64 %i.vi, %i.ve
  store i64 1, ptr %i.uq, align 8, !tbaa !22
  store i64 1, ptr %i.ur, align 8, !tbaa !22
  %i.vk = load i64, ptr %i.vh, align 8, !tbaa !22
  %i.vl = icmp ugt i64 %i.vk, 1
  br i1 %i.vl, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i64 1, ptr %i.us, align 8, !tbaa !22
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.vm = icmp ugt i32 %i.uy, 32
  br i1 %i.vm, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.vn = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.vo = icmp sgt i32 %i.vn, 0
  br i1 %i.vo, label %bb.cv, label %h5tools_print_simple_subset.exit.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.vp = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.vq = icmp sgt i64 %i.vp, -1
  %i.vr = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.vs = icmp sgt i64 %i.vr, -1
  %or.cond.i.i.i = select i1 %i.vq, i1 %i.vs, i1 false
  br i1 %or.cond.i.i.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.vt = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.vu = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.vv = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.vp, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_simple_subset, i32 noundef 1287, i64 noundef %i.vr, i64 noundef %i.vt, i64 noundef %i.vu, ptr noundef nonnull @.str.324) #12 ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.vw = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.vx = call i64 @fwrite(ptr nonnull @.str.324, i64 35, i64 1, ptr %i.vw) #13 ; 0 uses
  %i.vy = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc201.i.i.i = call i32 @fputc(i32 10, ptr %i.vy) ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.cy:                                            ; preds = %bb.ct, %.thread.i.i
  %i.vz = phi ptr [ %.pre.i.i, %.thread.i.i ], [ %i.va, %bb.ct ]
  %.08289.i.i = phi i64 [ 1, %.thread.i.i ], [ %i.vj, %bb.ct ] ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 48
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !73
  %i.wc = getelementptr inbounds nuw [8 x i8], ptr %i.wb, i64 %i.up
  %i.wd = load i64, ptr %i.wc, align 8, !tbaa !22 ; 3 uses
  %i.we = call i32 @h5tools_detect_vlen(i64 noundef range(i64 0, -9223372036854775808) %.033) #12
  %.not191.i.i.i = icmp eq i32 %i.we, 1
  %.not236.i.i.i = icmp eq i64 %.08289.i.i, 0
  br i1 %.not236.i.i.i, label %h5tools_print_simple_subset.exit.i.i, label %.lr.ph240.i.i.i

.lr.ph240.i.i.i:                                  ; preds = %bb.cy
  %i.wf = icmp ugt i64 %i.wd, 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.ez, %.lr.ph240.i.i.i
  %.0140238.i.i.i = phi i64 [ %.08289.i.i, %.lr.ph240.i.i.i ], [ %i.afv, %bb.ez ] ; 2 uses
  %.0143237.i.i.i = phi i64 [ 0, %.lr.ph240.i.i.i ], [ %i.wu, %bb.ez ] ; 2 uses
  %i.wg = icmp eq i64 %.0143237.i.i.i, %i.wd
  %or.cond203.i.i.i = select i1 %i.wf, i1 %i.wg, i1 false
  br i1 %or.cond203.i.i.i, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.wh = load ptr, ptr %i.ak, align 8, !tbaa !52 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !74
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %i.up
  %i.wl = load i64, ptr %i.wk, align 8, !tbaa !22 ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wh, i64 48
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !73
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %i.up
  %i.wp = load i64, ptr %i.wo, align 8, !tbaa !22 ; 2 uses
  %i.wq = icmp ugt i64 %i.wl, %i.wp
  br i1 %i.wq, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.wr = sub nuw i64 %i.wl, %i.wp
  %i.ws = load i64, ptr %i.ut, align 8, !tbaa !22
  %i.wt = add i64 %i.wr, %i.ws
  store i64 %i.wt, ptr %i.ut, align 8, !tbaa !22
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %.1144.i.i.i = phi i64 [ 0, %bb.db ], [ %i.wd, %bb.da ], [ %.0143237.i.i.i, %bb.cz ]
  %i.wu = add i64 %.1144.i.i.i, 1
  %i.wv = call i32 @H5Sselect_hyperslab(i64 noundef %i.ll, i32 noundef 0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.m, ptr noundef nonnull %i.i, ptr noundef nonnull %i.k) #12
  %i.ww = icmp slt i32 %i.wv, 0
  br i1 %i.ww, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.wx = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.wy = icmp sgt i32 %i.wx, 0
  br i1 %i.wy, label %bb.de, label %h5tools_print_simple_subset.exit.i.i

bb.de:                                            ; preds = %bb.dd
  %i.wz = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.xa = icmp sgt i64 %i.wz, -1
  %i.xb = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.xc = icmp sgt i64 %i.xb, -1
  %or.cond3.i.i.i = select i1 %i.xa, i1 %i.xc, i1 false
  br i1 %or.cond3.i.i.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.xd = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.xe = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.xf = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.wz, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_simple_subset, i32 noundef 1311, i64 noundef %i.xb, i64 noundef %i.xd, i64 noundef %i.xe, ptr noundef nonnull @.str.315) #12 ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.dg:                                            ; preds = %bb.de
  %i.xg = load ptr, ptr @stderr, align 8, !tbaa !35
  %i.xh = call i64 @fwrite(ptr nonnull @.str.315, i64 26, i64 1, ptr %i.xg) #13 ; 0 uses
  %i.xi = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc200.i.i.i = call i32 @fputc(i32 10, ptr %i.xi) ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.dh:                                            ; preds = %bb.dc
  %i.xj = call i64 @H5Sget_select_npoints(i64 noundef %i.ll) #12 ; 3 uses
  %i.xk = icmp slt i64 %i.xj, 0
  br i1 %i.xk, label %bb.di, label %bb.dm

bb.di:                                            ; preds = %bb.dh
  %i.xl = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.xm = icmp sgt i32 %i.xl, 0
  br i1 %i.xm, label %bb.dj, label %h5tools_print_simple_subset.exit.i.i

bb.dj:                                            ; preds = %bb.di
  %i.xn = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.xo = icmp sgt i64 %i.xn, -1
  %i.xp = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.xq = icmp sgt i64 %i.xp, -1
  %or.cond5.i.i.i = select i1 %i.xo, i1 %i.xq, i1 false
  br i1 %or.cond5.i.i.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.xr = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.xs = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.xt = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.xn, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_simple_subset, i32 noundef 1314, i64 noundef %i.xp, i64 noundef %i.xr, i64 noundef %i.xs, ptr noundef nonnull @.str.325) #12 ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

end_hunk_0
