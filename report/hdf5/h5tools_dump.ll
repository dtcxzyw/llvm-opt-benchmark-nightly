Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5tools_dump?download=true
inline.NumInlined: 12
inline.NumDeleted: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@h5tools_dump_dset:bb.a
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.at = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.au = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ao, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_dump_simple_dset, i32 noundef 1657, i64 noundef %i.aq, i64 noundef %i.as, i64 noundef %i.at, ptr noundef nonnull @.str.307) #12 ; 0 uses
  br label %h5tools_dump_simple_dset.exit

bb.r:                                             ; preds = %bb.p
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite196.i = tail call i64 @fwrite(ptr nonnull @.str.307, i64 19, i64 1, ptr %i.av) #13 ; 0 uses
  %i.aw = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc198.i = tail call i32 @fputc(i32 10, ptr %i.aw) ; 0 uses
  br label %h5tools_dump_simple_dset.exit

bb.s:                                             ; preds = %bb.n
  %i.ax = tail call i32 @H5Sget_simple_extent_ndims(i64 noundef %i.ak) #12 ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.az = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.u, label %.thread208.i

bb.u:                                             ; preds = %bb.t
  %i.bb = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, -1
  %i.bd = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.be = icmp sgt i64 %i.bd, -1
  %or.cond3.i = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond3.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bf = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.bg = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.bh = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.bb, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_dump_simple_dset, i32 noundef 1661, i64 noundef %i.bd, i64 noundef %i.bf, i64 noundef %i.bg, ptr noundef nonnull @.str.317) #12 ; 0 uses
  br label %.thread208.i

bb.w:                                             ; preds = %bb.u
  %i.bi = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite193.i = tail call i64 @fwrite(ptr nonnull @.str.317, i64 33, i64 1, ptr %i.bi) #13 ; 0 uses
  %i.bj = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc195.i = tail call i32 @fputc(i32 10, ptr %i.bj) ; 0 uses
  br label %.thread208.i

bb.x:                                             ; preds = %bb.s
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 6 uses
  store i32 %i.ax, ptr %i.bk, align 4, !tbaa !58
  %i.bl = icmp samesign ugt i32 %i.ax, 32
  br i1 %i.bl, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.bm = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %bb.z, label %.thread208.i

bb.z:                                             ; preds = %bb.y
  %i.bo = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.bp = icmp sgt i64 %i.bo, -1
  %i.bq = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.br = icmp sgt i64 %i.bq, -1
  %or.cond5.i = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond5.i, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bs = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.bt = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.bu = tail call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.bo, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_dump_simple_dset, i32 noundef 1666, i64 noundef %i.bq, i64 noundef %i.bs, i64 noundef %i.bt, ptr noundef nonnull @.str.318) #12 ; 0 uses
  br label %.thread208.i

bb.ab:                                            ; preds = %bb.z
  %i.bv = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite190.i = tail call i64 @fwrite(ptr nonnull @.str.318, i64 35, i64 1, ptr %i.bv) #13 ; 0 uses
  %i.bw = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc192.i = tail call i32 @fputc(i32 10, ptr %i.bw) ; 0 uses
  br label %.thread208.i

bb.ac:                                            ; preds = %bb.x
  %i.bx = call i32 @H5Sget_simple_extent_dims(i64 noundef %i.ak, ptr noundef nonnull %i.n, ptr noundef null) #12 ; 0 uses
  %i.by = load i32, ptr %i.bk, align 4, !tbaa !58
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  call void @init_acc_pos(i32 noundef %i.by, ptr noundef nonnull %i.n, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.ca, ptr noundef nonnull %i.cb) #12
  %i.cc = load i32, ptr %i.bk, align 4, !tbaa !58 ; 4 uses
  %.not.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i, label %.thread.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ac
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %xtraiter294 = and i64 %i.cd, 7                 ; 3 uses
  %i.ce = icmp ult i32 %i.cc, 8
  br i1 %i.ce, label %.epil.preheader293, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter299 = and i64 %i.cd, 4294967288
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.preheader.i.new
  %.0131214.i = phi i64 [ 1, %.preheader.i.new ], [ %i.dj, %bb.ad ]
  %.0135213.i = phi i64 [ 0, %.preheader.i.new ], [ %i.dk, %bb.ad ] ; 9 uses
  %niter300 = phi i64 [ 0, %.preheader.i.new ], [ %niter300.next.7, %bb.ad ]
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0135213.i
  %i.cg = load i64, ptr %i.cf, align 16, !tbaa !22
  %i.ch = mul i64 %i.cg, %.0131214.i
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0135213.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !22
  %i.cl = mul i64 %i.ck, %i.ch
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0135213.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.co = load i64, ptr %i.cn, align 16, !tbaa !22
  %i.cp = mul i64 %i.co, %i.cl
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0135213.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !22
  %i.ct = mul i64 %i.cs, %i.cp
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0135213.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  %i.cw = load i64, ptr %i.cv, align 16, !tbaa !22
  %i.cx = mul i64 %i.cw, %i.ct
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0135213.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 40
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !22
  %i.db = mul i64 %i.da, %i.cx
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0135213.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 48
  %i.de = load i64, ptr %i.dd, align 16, !tbaa !22
  %i.df = mul i64 %i.de, %i.db
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0135213.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 56
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !22
  %i.dj = mul i64 %i.di, %i.df                    ; 3 uses
  %i.dk = add nuw nsw i64 %.0135213.i, 8          ; 2 uses
  %niter300.next.7 = add i64 %niter300, 8         ; 2 uses
  %niter300.ncmp.7 = icmp eq i64 %niter300.next.7, %unroll_iter299
  br i1 %niter300.ncmp.7, label %.unr-lcssa, label %bb.ad, !llvm.loop !129

.thread.i:                                        ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 560
  store i64 0, ptr %i.dl, align 8, !tbaa !65
  br label %bb.af

.unr-lcssa:                                       ; preds = %bb.ad
  %lcmp.mod296.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod296.not, label %.epilog-lcssa, label %.epil.preheader293

.epil.preheader293:                               ; preds = %.unr-lcssa, %.preheader.i
  %.0131214.i.epil.init = phi i64 [ 1, %.preheader.i ], [ %i.dj, %.unr-lcssa ]
  %.0135213.i.epil.init = phi i64 [ 0, %.preheader.i ], [ %i.dk, %.unr-lcssa ]
  %lcmp.mod298 = icmp ne i64 %xtraiter294, 0
  call void @llvm.assume(i1 %lcmp.mod298)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %.epil.preheader293
  %.0131214.i.epil = phi i64 [ %.0131214.i.epil.init, %.epil.preheader293 ], [ %i.do, %bb.ae ]
  %.0135213.i.epil = phi i64 [ %.0135213.i.epil.init, %.epil.preheader293 ], [ %i.dp, %bb.ae ] ; 2 uses
  %epil.iter295 = phi i64 [ 0, %.epil.preheader293 ], [ %epil.iter295.next, %bb.ae ]
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0135213.i.epil
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !22
  %i.do = mul i64 %i.dn, %.0131214.i.epil         ; 2 uses
  %i.dp = add nuw nsw i64 %.0135213.i.epil, 1
  %epil.iter295.next = add i64 %epil.iter295, 1   ; 2 uses
  %epil.iter295.cmp.not = icmp eq i64 %epil.iter295.next, %xtraiter294
  br i1 %epil.iter295.cmp.not, label %.epilog-lcssa, label %bb.ae, !llvm.loop !130

.epilog-lcssa:                                    ; preds = %bb.ae, %.unr-lcssa
  %.lcssa269 = phi i64 [ %i.dj, %.unr-lcssa ], [ %i.do, %bb.ae ] ; 2 uses
  %i.dq = add i32 %i.cc, -1
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !22
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 560
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !65
  %i.dv = icmp eq i64 %.lcssa269, 0
  br i1 %i.dv, label %h5tools_dump_simple_dset.exit, label %bb.af

bb.af:                                            ; preds = %.epilog-lcssa, %.thread.i
  %.1132207.i = phi i64 [ 1, %.thread.i ], [ %.lcssa269, %.epilog-lcssa ] ; 2 uses
  %i.dw = call i32 @h5tools_detect_vlen(i64 noundef range(i64 0, -9223372036854775808) %.033) #12
  %.not189.i = icmp eq i32 %i.dw, 1
  %i.dx = call i64 @H5Tget_size(i64 noundef range(i64 0, -9223372036854775808) %.033) #12 ; 6 uses
  %i.dy = load i32, ptr %i.bk, align 4, !tbaa !58 ; 3 uses
  %.not169.i = icmp eq i32 %i.dy, 0
  br i1 %.not169.i, label %.loopexit212.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dz = zext i32 %i.dy to i64                   ; 3 uses
  %i.ea = load i64, ptr @H5TOOLS_BUFSIZE, align 8, !tbaa !22 ; 6 uses
  %xtraiter304 = and i64 %i.dz, 1
  %lcmp.mod305.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %.prol.loopexit302, label %.prol.loopexit302.unr-lcssa

.prol.loopexit302.unr-lcssa:                      ; preds = %bb.ag
  %i.eb = udiv i64 %i.ea, %i.dx
  %i.ec = icmp ugt i64 %i.dx, %i.ea
  %spec.store.select.i.prol = select i1 %i.ec, i64 1, i64 %i.eb
  %i.ed = add nsw i64 %i.dz, -1                   ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 16, !tbaa !22
  %.spec.store.select.i.prol = call i64 @llvm.umin.i64(i64 %i.ef, i64 %spec.store.select.i.prol) ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ed
  store i64 %.spec.store.select.i.prol, ptr %i.eg, align 16, !tbaa !22
  %i.eh = mul i64 %.spec.store.select.i.prol, %i.dx ; 2 uses
  br label %.prol.loopexit302

.prol.loopexit302:                                ; preds = %.prol.loopexit302.unr-lcssa, %bb.ag
  %.lcssa268.unr = phi i64 [ poison, %bb.ag ], [ %i.eh, %.prol.loopexit302.unr-lcssa ]
  %.0129216.i.unr = phi i64 [ %i.dx, %bb.ag ], [ %i.eh, %.prol.loopexit302.unr-lcssa ]
  %.1136215.i.unr = phi i64 [ %i.dz, %bb.ag ], [ %i.ed, %.prol.loopexit302.unr-lcssa ]
  %i.ei = icmp eq i32 %i.dy, 1
  br i1 %i.ei, label %.loopexit212.i, label %.new303

.new303:                                          ; preds = %.prol.loopexit302, %.new303
  %.0129216.i = phi i64 [ %i.ew, %.new303 ], [ %.0129216.i.unr, %.prol.loopexit302 ] ; 3 uses
  %.1136215.i = phi i64 [ %i.es, %.new303 ], [ %.1136215.i.unr, %.prol.loopexit302 ] ; 2 uses
  %i.ej = udiv i64 %i.ea, %.0129216.i
  %i.ek = icmp ugt i64 %.0129216.i, %i.ea
  %spec.store.select.i = select i1 %i.ek, i64 1, i64 %i.ej
  %i.el = add nsw i64 %.1136215.i, -1             ; 2 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.el
  %i.en = load i64, ptr %i.em, align 8, !tbaa !22
  %.spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.en, i64 %spec.store.select.i) ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.el
  store i64 %.spec.store.select.i, ptr %i.eo, align 8, !tbaa !22
  %i.ep = mul i64 %.spec.store.select.i, %.0129216.i ; 3 uses
  %i.eq = udiv i64 %i.ea, %i.ep
  %i.er = icmp ugt i64 %i.ep, %i.ea
  %spec.store.select.i.1 = select i1 %i.er, i64 1, i64 %i.eq
  %i.es = add nsw i64 %.1136215.i, -2             ; 4 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.es
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !22
  %.spec.store.select.i.1 = call i64 @llvm.umin.i64(i64 %i.eu, i64 %spec.store.select.i.1) ; 2 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.es
  store i64 %.spec.store.select.i.1, ptr %i.ev, align 8, !tbaa !22
  %i.ew = mul i64 %.spec.store.select.i.1, %i.ep  ; 2 uses
  %.not170.i.1 = icmp eq i64 %i.es, 0
  br i1 %.not170.i.1, label %.loopexit212.i, label %.new303, !llvm.loop !131

.loopexit212.i:                                   ; preds = %.prol.loopexit302, %.new303, %bb.af
  %.1130.i = phi i64 [ %i.dx, %bb.af ], [ %.lcssa268.unr, %.prol.loopexit302 ], [ %i.ew, %.new303 ] ; 3 uses
  %.not171.i = icmp eq i64 %.1130.i, 0
  br i1 %.not171.i, label %.thread208.i, label %bb.ah

bb.ah:                                            ; preds = %.loopexit212.i
  %i.ex = call noalias ptr @malloc(i64 noundef %.1130.i) #15 ; 5 uses
  %.not172.i = icmp eq ptr %i.ex, null
  br i1 %.not172.i, label %.thread208.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ey = udiv i64 %.1130.i, %i.dx
  store i64 %i.ey, ptr %i.p, align 8, !tbaa !22
  %i.ez = call i64 @H5Screate_simple(i32 noundef 1, ptr noundef nonnull %i.p, ptr noundef null) #12 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.q, i8 0, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  %i.fa = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 1088
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 552 ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.i, %bb.ai
  %.1220.i = phi i32 [ 0, %bb.ai ], [ %.7.i, %.loopexit.i ] ; 2 uses
  %.0139219.i = phi i64 [ 0, %bb.ai ], [ %i.ju, %.loopexit.i ] ; 4 uses
  %i.fd = load i32, ptr %i.bk, align 4, !tbaa !58 ; 3 uses
  %.not173.i = icmp eq i32 %i.fd, 0
  br i1 %.not173.i, label %bb.au, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fe = zext i32 %i.fd to i64                   ; 3 uses
  %min.iters.check251 = icmp eq i32 %i.fd, 1
  br i1 %min.iters.check251, label %scalar.ph250.preheader, label %vector.ph252

vector.ph252:                                     ; preds = %bb.ak
  %n.vec253 = and i64 %i.fe, 4294967294           ; 3 uses
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next260, %vector.body254 ] ; 7 uses
  %vec.phi = phi <2 x i64> [ splat (i64 1), %vector.ph252 ], [ %i.fo, %vector.body254 ]
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index255
  %wide.load256 = load <2 x i64>, ptr %i.ff, align 16, !tbaa !22
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index255
  %wide.load257 = load <2 x i64>, ptr %i.fg, align 16, !tbaa !22
  %i.fh = sub <2 x i64> %wide.load256, %wide.load257
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %index255
  %wide.load258 = load <2 x i64>, ptr %i.fi, align 16, !tbaa !22
  %i.fj = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %i.fh, <2 x i64> %wide.load258) ; 3 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index255
  store <2 x i64> %i.fj, ptr %i.fk, align 16, !tbaa !22
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index255
  %wide.load259 = load <2 x i64>, ptr %i.fl, align 8, !tbaa !22
  %i.fm = add <2 x i64> %wide.load259, %i.fj
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %index255
  store <2 x i64> %i.fm, ptr %i.fn, align 8, !tbaa !22
  %i.fo = mul <2 x i64> %i.fj, %vec.phi           ; 2 uses
  %index.next260 = add nuw i64 %index255, 2       ; 2 uses
  %i.fp = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.fp, label %middle.block261, label %vector.body254, !llvm.loop !132

middle.block261:                                  ; preds = %vector.body254
  %i.fq = call i64 @llvm.vector.reduce.mul.v2i64(<2 x i64> %i.fo) ; 2 uses
  %cmp.n262 = icmp eq i64 %n.vec253, %i.fe
  br i1 %cmp.n262, label %.loopexit, label %scalar.ph250.preheader

scalar.ph250.preheader:                           ; preds = %bb.ak, %middle.block261
  %.2137217.i.ph = phi i64 [ 0, %bb.ak ], [ %n.vec253, %middle.block261 ]
  %.ph = phi i64 [ 1, %bb.ak ], [ %i.fq, %middle.block261 ]
  br label %scalar.ph250

scalar.ph250:                                     ; preds = %scalar.ph250.preheader, %scalar.ph250
  %.2137217.i = phi i64 [ %i.gf, %scalar.ph250 ], [ %.2137217.i.ph, %scalar.ph250.preheader ] ; 7 uses
  %i.fr = phi i64 [ %i.ge, %scalar.ph250 ], [ %.ph, %scalar.ph250.preheader ]
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.2137217.i
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !22
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.2137217.i
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !22
  %i.fw = sub i64 %i.ft, %i.fv
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.2137217.i
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !22
  %..i = call i64 @llvm.umin.i64(i64 %i.fw, i64 %i.fy) ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %.2137217.i
  store i64 %..i, ptr %i.fz, align 8, !tbaa !22
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.2137217.i
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !22
  %i.gc = add i64 %i.gb, %..i
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %.2137217.i
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !22
  %i.ge = mul i64 %..i, %i.fr                     ; 2 uses
  %i.gf = add nuw nsw i64 %.2137217.i, 1          ; 2 uses
  %exitcond224.not.i = icmp eq i64 %i.gf, %i.fe
  br i1 %exitcond224.not.i, label %.loopexit, label %scalar.ph250, !llvm.loop !133

.loopexit:                                        ; preds = %scalar.ph250, %middle.block261
  %.lcssa = phi i64 [ %i.fq, %middle.block261 ], [ %i.ge, %scalar.ph250 ]
  store i64 %.lcssa, ptr %i.s, align 8, !tbaa !22
  %i.gg = call i32 @H5Sselect_hyperslab(i64 noundef %i.ak, i32 noundef 0, ptr noundef nonnull %i.q, ptr noundef null, ptr noundef nonnull %i.r, ptr noundef null) #12
  %i.gh = icmp slt i32 %i.gg, 0
  br i1 %i.gh, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %.loopexit
  %i.gi = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.gj = icmp sgt i32 %i.gi, 0
  br i1 %i.gj, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.gk = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.gl = icmp sgt i64 %i.gk, -1
  %i.gm = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.gn = icmp sgt i64 %i.gm, -1
  %or.cond7.i = select i1 %i.gl, i1 %i.gn, i1 false
  br i1 %or.cond7.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.go = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.gp = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.gq = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.gk, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_dump_simple_dset, i32 noundef 1733, i64 noundef %i.gm, i64 noundef %i.go, i64 noundef %i.gp, ptr noundef nonnull @.str.319) #12 ; 0 uses
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.gr = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite178.i = call i64 @fwrite(ptr nonnull @.str.319, i64 36, i64 1, ptr %i.gr) #13 ; 0 uses
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc180.i = call i32 @fputc(i32 10, ptr %i.gs) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.al, %.loopexit
  %.2.i = phi i32 [ %.1220.i, %.loopexit ], [ -1, %bb.an ], [ -1, %bb.ao ], [ -1, %bb.al ]
  %i.gt = call i32 @H5Sselect_hyperslab(i64 noundef %i.ez, i32 noundef 0, ptr noundef nonnull %i.m, ptr noundef null, ptr noundef nonnull %i.s, ptr noundef null) #12
  %i.gu = icmp slt i32 %i.gt, 0
  br i1 %i.gu, label %bb.aq, label %bb.bf

bb.aq:                                            ; preds = %bb.ap
  %i.gv = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.gw = icmp sgt i32 %i.gv, 0
  br i1 %i.gw, label %bb.ar, label %bb.bf

bb.ar:                                            ; preds = %bb.aq
  %i.gx = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.gy = icmp sgt i64 %i.gx, -1
  %i.gz = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ha = icmp sgt i64 %i.gz, -1
  %or.cond9.i = select i1 %i.gy, i1 %i.ha, i1 false
  br i1 %or.cond9.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hb = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.hc = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.hd = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.gx, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_dump_simple_dset, i32 noundef 1735, i64 noundef %i.gz, i64 noundef %i.hb, i64 noundef %i.hc, ptr noundef nonnull @.str.320) #12 ; 0 uses
  br label %bb.bf

bb.at:                                            ; preds = %bb.ar
  %i.he = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite181.i = call i64 @fwrite(ptr nonnull @.str.320, i64 31, i64 1, ptr %i.he) #13 ; 0 uses
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc183.i = call i32 @fputc(i32 10, ptr %i.hf) ; 0 uses
  br label %bb.bf

bb.au:                                            ; preds = %bb.aj
  %i.hg = call i32 @H5Sselect_all(i64 noundef %i.ak) #12
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %bb.av, label %bb.az

bb.av:                                            ; preds = %bb.au
end_hunk_0
begin_hunk_1_@h5tools_dump_dset:bb.a
  store i64 1, ptr %i.rc, align 8, !tbaa !22
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 0, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.rw = icmp ugt i32 %i.ri, 32
  br i1 %i.rw, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.rx = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.ry = icmp sgt i32 %i.rx, 0
  br i1 %i.ry, label %bb.cv, label %h5tools_print_simple_subset.exit.i.i

bb.cv:                                            ; preds = %bb.cu
  %i.rz = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.sa = icmp sgt i64 %i.rz, -1
  %i.sb = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.sc = icmp sgt i64 %i.sb, -1
  %or.cond.i.i.i = select i1 %i.sa, i1 %i.sc, i1 false
  br i1 %or.cond.i.i.i, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.sd = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.se = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.sf = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.rz, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_simple_subset, i32 noundef 1287, i64 noundef %i.sb, i64 noundef %i.sd, i64 noundef %i.se, ptr noundef nonnull @.str.324) #12 ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.cx:                                            ; preds = %bb.cv
  %i.sg = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite220.i.i.i = call i64 @fwrite(ptr nonnull @.str.324, i64 35, i64 1, ptr %i.sg) #13 ; 0 uses
  %i.sh = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc222.i.i.i = call i32 @fputc(i32 10, ptr %i.sh) ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.cy:                                            ; preds = %bb.ct, %.thread.i.i
  %i.si = phi ptr [ %.pre.i.i, %.thread.i.i ], [ %i.rk, %bb.ct ]
  %.08289.i.i = phi i64 [ 1, %.thread.i.i ], [ %i.rt, %bb.ct ] ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 48
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !73
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %i.qz
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !22 ; 3 uses
  %i.sn = call i32 @h5tools_detect_vlen(i64 noundef range(i64 0, -9223372036854775808) %.033) #12
  %.not192.i.i.i = icmp eq i32 %i.sn, 1
  %.not257.i.i.i = icmp eq i64 %.08289.i.i, 0
  br i1 %.not257.i.i.i, label %h5tools_print_simple_subset.exit.i.i, label %.lr.ph261.i.i.i

.lr.ph261.i.i.i:                                  ; preds = %bb.cy
  %i.so = icmp ugt i64 %i.sm, 1
  br label %bb.cz

bb.cz:                                            ; preds = %bb.ez, %.lr.ph261.i.i.i
  %.0140259.i.i.i = phi i64 [ %.08289.i.i, %.lr.ph261.i.i.i ], [ %i.abv, %bb.ez ] ; 2 uses
  %.0143258.i.i.i = phi i64 [ 0, %.lr.ph261.i.i.i ], [ %i.td, %bb.ez ] ; 2 uses
  %i.sp = icmp eq i64 %.0143258.i.i.i, %i.sm
  %or.cond224.i.i.i = select i1 %i.so, i1 %i.sp, i1 false
  br i1 %or.cond224.i.i.i, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.sq = load ptr, ptr %i.ah, align 8, !tbaa !52 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !74
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %i.qz
  %i.su = load i64, ptr %i.st, align 8, !tbaa !22 ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sq, i64 48
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !73
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.sw, i64 %i.qz
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !22 ; 2 uses
  %i.sz = icmp ugt i64 %i.su, %i.sy
  br i1 %i.sz, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.ta = sub nuw i64 %i.su, %i.sy
  %i.tb = load i64, ptr %i.rd, align 8, !tbaa !22
  %i.tc = add i64 %i.ta, %i.tb
  store i64 %i.tc, ptr %i.rd, align 8, !tbaa !22
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  %.1144.i.i.i = phi i64 [ 0, %bb.db ], [ %i.sm, %bb.da ], [ %.0143258.i.i.i, %bb.cz ]
  %i.td = add i64 %.1144.i.i.i, 1
  %i.te = call i32 @H5Sselect_hyperslab(i64 noundef %i.ky, i32 noundef 0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #12
  %i.tf = icmp slt i32 %i.te, 0
  br i1 %i.tf, label %bb.dd, label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.tg = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.th = icmp sgt i32 %i.tg, 0
  br i1 %i.th, label %bb.de, label %h5tools_print_simple_subset.exit.i.i

bb.de:                                            ; preds = %bb.dd
  %i.ti = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.tj = icmp sgt i64 %i.ti, -1
  %i.tk = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.tl = icmp sgt i64 %i.tk, -1
  %or.cond3.i.i.i = select i1 %i.tj, i1 %i.tl, i1 false
  br i1 %or.cond3.i.i.i, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.tm = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.tn = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.to = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ti, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_simple_subset, i32 noundef 1311, i64 noundef %i.tk, i64 noundef %i.tm, i64 noundef %i.tn, ptr noundef nonnull @.str.315) #12 ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.dg:                                            ; preds = %bb.de
  %i.tp = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite217.i.i.i = call i64 @fwrite(ptr nonnull @.str.315, i64 26, i64 1, ptr %i.tp) #13 ; 0 uses
  %i.tq = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc219.i.i.i = call i32 @fputc(i32 10, ptr %i.tq) ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.dh:                                            ; preds = %bb.dc
  %i.tr = call i64 @H5Sget_select_npoints(i64 noundef %i.ky) #12 ; 3 uses
  %i.ts = icmp slt i64 %i.tr, 0
  br i1 %i.ts, label %bb.di, label %bb.dm

bb.di:                                            ; preds = %bb.dh
  %i.tt = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.tu = icmp sgt i32 %i.tt, 0
  br i1 %i.tu, label %bb.dj, label %h5tools_print_simple_subset.exit.i.i

bb.dj:                                            ; preds = %bb.di
  %i.tv = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.tw = icmp sgt i64 %i.tv, -1
  %i.tx = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ty = icmp sgt i64 %i.tx, -1
  %or.cond5.i.i.i = select i1 %i.tw, i1 %i.ty, i1 false
  br i1 %or.cond5.i.i.i, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.tz = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.ua = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.ub = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.tv, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_simple_subset, i32 noundef 1314, i64 noundef %i.tx, i64 noundef %i.tz, i64 noundef %i.ua, ptr noundef nonnull @.str.325) #12 ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.dl:                                            ; preds = %bb.dj
  %i.uc = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite214.i.i.i = call i64 @fwrite(ptr nonnull @.str.325, i64 28, i64 1, ptr %i.uc) #13 ; 0 uses
  %i.ud = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc216.i.i.i = call i32 @fputc(i32 10, ptr %i.ud) ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.dm:                                            ; preds = %bb.dh
  store i64 %i.tr, ptr %i.e, align 8, !tbaa !22
  %.not187.i.i.i = icmp eq i64 %i.tr, 0
  br i1 %.not187.i.i.i, label %bb.fa, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ue = call i64 @H5Tget_size(i64 noundef range(i64 0, -9223372036854775808) %.033) #12 ; 6 uses
  %i.uf = icmp eq i64 %i.ue, 0
  br i1 %i.uf, label %bb.do, label %bb.ds

bb.do:                                            ; preds = %bb.dn
  %i.ug = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.uh = icmp sgt i32 %i.ug, 0
  br i1 %i.uh, label %bb.dp, label %h5tools_print_simple_subset.exit.i.i

bb.dp:                                            ; preds = %bb.do
  %i.ui = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.uj = icmp sgt i64 %i.ui, -1
  %i.uk = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.ul = icmp sgt i64 %i.uk, -1
  %or.cond7.i.i.i = select i1 %i.uj, i1 %i.ul, i1 false
  br i1 %or.cond7.i.i.i, label %bb.dq, label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.um = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.un = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.uo = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ui, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_simple_subset, i32 noundef 1323, i64 noundef %i.uk, i64 noundef %i.um, i64 noundef %i.un, ptr noundef nonnull @.str.306) #12 ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.dr:                                            ; preds = %bb.dp
  %i.up = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite211.i.i.i = call i64 @fwrite(ptr nonnull @.str.306, i64 18, i64 1, ptr %i.up) #13 ; 0 uses
  %i.uq = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc213.i.i.i = call i32 @fputc(i32 10, ptr %i.uq) ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.ds:                                            ; preds = %bb.dn
  %i.ur = load i32, ptr %i.ly, align 4, !tbaa !58 ; 3 uses
  %.not189.i.i.i = icmp eq i32 %i.ur, 0
  br i1 %.not189.i.i.i, label %.loopexit.i.i.i, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.us = zext i32 %i.ur to i64                   ; 3 uses
  %i.ut = load i64, ptr @H5TOOLS_BUFSIZE, align 8, !tbaa !22 ; 6 uses
  %xtraiter282 = and i64 %i.us, 1
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.dt
  %i.uu = udiv i64 %i.ut, %i.ue
  %i.uv = icmp ugt i64 %i.ue, %i.ut
  %spec.store.select.i.i.i.prol = select i1 %i.uv, i64 1, i64 %i.uu
  %i.uw = add nsw i64 %i.us, -1                   ; 3 uses
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.uw
  %i.uy = load i64, ptr %i.ux, align 16, !tbaa !22
  %.spec.store.select.i.i.i.prol = call i64 @llvm.umin.i64(i64 %i.uy, i64 %spec.store.select.i.i.i.prol) ; 2 uses
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.uw
  store i64 %.spec.store.select.i.i.i.prol, ptr %i.uz, align 16, !tbaa !22
  %i.va = mul i64 %.spec.store.select.i.i.i.prol, %i.ue
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.dt
  %.0148243.i.i.i.unr = phi i64 [ %i.ue, %bb.dt ], [ %i.va, %.prol.loopexit.unr-lcssa ]
  %.0151242.i.i.i.unr = phi i64 [ %i.us, %bb.dt ], [ %i.uw, %.prol.loopexit.unr-lcssa ]
  %i.vb = icmp eq i32 %i.ur, 1
  br i1 %i.vb, label %.loopexit.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.0148243.i.i.i = phi i64 [ %i.vp, %.new ], [ %.0148243.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.0151242.i.i.i = phi i64 [ %i.vl, %.new ], [ %.0151242.i.i.i.unr, %.prol.loopexit ] ; 2 uses
  %i.vc = udiv i64 %i.ut, %.0148243.i.i.i
  %i.vd = icmp ugt i64 %.0148243.i.i.i, %i.ut
  %spec.store.select.i.i.i = select i1 %i.vd, i64 1, i64 %i.vc
  %i.ve = add nsw i64 %.0151242.i.i.i, -1         ; 2 uses
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ve
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !22
  %.spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.vg, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ve
  store i64 %.spec.store.select.i.i.i, ptr %i.vh, align 8, !tbaa !22
  %i.vi = mul i64 %.spec.store.select.i.i.i, %.0148243.i.i.i ; 3 uses
  %i.vj = udiv i64 %i.ut, %i.vi
  %i.vk = icmp ugt i64 %i.vi, %i.ut
  %spec.store.select.i.i.i.1 = select i1 %i.vk, i64 1, i64 %i.vj
  %i.vl = add nsw i64 %.0151242.i.i.i, -2         ; 4 uses
  %i.vm = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.vl
  %i.vn = load i64, ptr %i.vm, align 8, !tbaa !22
  %.spec.store.select.i.i.i.1 = call i64 @llvm.umin.i64(i64 %i.vn, i64 %spec.store.select.i.i.i.1) ; 2 uses
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.vl
  store i64 %.spec.store.select.i.i.i.1, ptr %i.vo, align 8, !tbaa !22
  %i.vp = mul i64 %.spec.store.select.i.i.i.1, %i.vi
  %.not190.i.i.i.1 = icmp eq i64 %i.vl, 0
  br i1 %.not190.i.i.i.1, label %.loopexit.i.i.i, label %.new, !llvm.loop !142

.loopexit.i.i.i:                                  ; preds = %.prol.loopexit, %.new, %bb.ds
  %i.vq = load i64, ptr %i.e, align 8, !tbaa !22
  %i.vr = mul i64 %i.vq, %i.ue
  %i.vs = call noalias ptr @malloc(i64 noundef %i.vr) #15 ; 6 uses
  %i.vt = icmp eq ptr %i.vs, null
  br i1 %i.vt, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %.loopexit.i.i.i
  %i.vu = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.vv = icmp sgt i32 %i.vu, 0
  br i1 %i.vv, label %bb.dv, label %h5tools_print_simple_subset.exit.i.i

bb.dv:                                            ; preds = %bb.du
  %i.vw = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.vx = icmp sgt i64 %i.vw, -1
  %i.vy = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.vz = icmp sgt i64 %i.vy, -1
  %or.cond9.i.i.i = select i1 %i.vx, i1 %i.vz, i1 false
  br i1 %or.cond9.i.i.i, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.wa = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.wb = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.wc = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.vw, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_simple_subset, i32 noundef 1337, i64 noundef %i.vy, i64 noundef %i.wa, i64 noundef %i.wb, ptr noundef nonnull @.str.326) #12 ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.wd = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite208.i.i.i = call i64 @fwrite(ptr nonnull @.str.326, i64 40, i64 1, ptr %i.wd) #13 ; 0 uses
  %i.we = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc210.i.i.i = call i32 @fputc(i32 10, ptr %i.we) ; 0 uses
  br label %h5tools_print_simple_subset.exit.i.i

bb.dy:                                            ; preds = %.loopexit.i.i.i
  %i.wf = call i64 @H5Screate_simple(i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef null) #12 ; 5 uses
  %i.wg = icmp slt i64 %i.wf, 0
  br i1 %i.wg, label %bb.dz, label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  %i.wh = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.wi = icmp sgt i32 %i.wh, 0
  br i1 %i.wi, label %bb.ea, label %.thread230.i.i.i

bb.ea:                                            ; preds = %bb.dz
  %i.wj = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.wk = icmp sgt i64 %i.wj, -1
  %i.wl = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.wm = icmp sgt i64 %i.wl, -1
  %or.cond11.i.i.i = select i1 %i.wk, i1 %i.wm, i1 false
  br i1 %or.cond11.i.i.i, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.wn = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.wo = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.wp = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.wj, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_simple_subset, i32 noundef 1340, i64 noundef %i.wl, i64 noundef %i.wn, i64 noundef %i.wo, ptr noundef nonnull @.str.309) #12 ; 0 uses
  br label %.thread230.i.i.i

bb.ec:                                            ; preds = %bb.ea
  %i.wq = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite205.i.i.i = call i64 @fwrite(ptr nonnull @.str.309, i64 23, i64 1, ptr %i.wq) #13 ; 0 uses
  %i.wr = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc207.i.i.i = call i32 @fputc(i32 10, ptr %i.wr) ; 0 uses
  br label %.thread230.i.i.i

bb.ed:                                            ; preds = %bb.dy
  %i.ws = call i32 @H5Sselect_hyperslab(i64 noundef %i.wf, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %i.e, ptr noundef null) #12
  %i.wt = icmp slt i32 %i.ws, 0
  br i1 %i.wt, label %bb.ee, label %bb.ei

bb.ee:                                            ; preds = %bb.ed
  %i.wu = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.wv = icmp sgt i32 %i.wu, 0
  br i1 %i.wv, label %bb.ef, label %.thread230.i.i.i

bb.ef:                                            ; preds = %bb.ee
  %i.ww = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.wx = icmp sgt i64 %i.ww, -1
  %i.wy = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.wz = icmp sgt i64 %i.wy, -1
  %or.cond13.i.i.i = select i1 %i.wx, i1 %i.wz, i1 false
  br i1 %or.cond13.i.i.i, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.xa = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.xb = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.xc = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.ww, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_simple_subset, i32 noundef 1343, i64 noundef %i.wy, i64 noundef %i.xa, i64 noundef %i.xb, ptr noundef nonnull @.str.315) #12 ; 0 uses
  br label %.thread230.i.i.i

bb.eh:                                            ; preds = %bb.ef
  %i.xd = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite202.i.i.i = call i64 @fwrite(ptr nonnull @.str.315, i64 26, i64 1, ptr %i.xd) #13 ; 0 uses
  %i.xe = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc204.i.i.i = call i32 @fputc(i32 10, ptr %i.xe) ; 0 uses
  br label %.thread230.i.i.i

bb.ei:                                            ; preds = %bb.ed
  %i.xf = call i32 @H5Dread(i64 noundef %3, i64 noundef range(i64 0, -9223372036854775808) %.033, i64 noundef %i.wf, i64 noundef %i.ky, i64 noundef 0, ptr noundef nonnull %i.vs) #12
  %i.xg = icmp slt i32 %i.xf, 0
  br i1 %i.xg, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %bb.ei
  %i.xh = load i32, ptr @enable_error_stack, align 4, !tbaa !11
  %i.xi = icmp sgt i32 %i.xh, 0
  br i1 %i.xi, label %bb.ek, label %.thread230.i.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.xj = load i64, ptr @H5tools_ERR_STACK_g, align 8, !tbaa !22 ; 2 uses
  %i.xk = icmp sgt i64 %i.xj, -1
  %i.xl = load i64, ptr @H5tools_ERR_CLS_g, align 8 ; 2 uses
  %i.xm = icmp sgt i64 %i.xl, -1
  %or.cond15.i.i.i = select i1 %i.xk, i1 %i.xm, i1 false
  br i1 %or.cond15.i.i.i, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.xn = load i64, ptr @H5E_tools_g, align 8, !tbaa !22
  %i.xo = load i64, ptr @H5E_tools_min_id_g, align 8, !tbaa !22
  %i.xp = call i32 (i64, ptr, ptr, i32, i64, i64, i64, ptr, ...) @H5Epush2(i64 noundef %i.xj, ptr noundef nonnull @.str.55, ptr noundef nonnull @__func__.h5tools_print_simple_subset, i32 noundef 1347, i64 noundef %i.xl, i64 noundef %i.xn, i64 noundef %i.xo, ptr noundef nonnull @.str.314) #12 ; 0 uses
  br label %.thread230.i.i.i

bb.em:                                            ; preds = %bb.ek
  %i.xq = load ptr, ptr @stderr, align 8, !tbaa !35
  %fwrite199.i.i.i = call i64 @fwrite(ptr nonnull @.str.314, i64 14, i64 1, ptr %i.xq) #13 ; 0 uses
  %i.xr = load ptr, ptr @stderr, align 8, !tbaa !35
  %fputc201.i.i.i = call i32 @fputc(i32 10, ptr %i.xr) ; 0 uses
  br label %.thread230.i.i.i

bb.en:                                            ; preds = %bb.ei
  %i.xs = icmp eq i64 %.0140259.i.i.i, 1
  %spec.select.i.i.i = select i1 %i.xs, i32 3, i32 1
  %i.xt = load i32, ptr %i.ly, align 4, !tbaa !58 ; 2 uses
  %i.xu = zext i32 %i.xt to i64                   ; 3 uses
  switch i32 %i.xt, label %vector.ph239 [
    i32 0, label %._crit_edge.i.i.i
    i32 1, label %.lr.ph.i.i.i.preheader
  ]

vector.ph239:                                     ; preds = %bb.en
  %n.vec240 = and i64 %i.xu, 4294967294           ; 3 uses
  br label %vector.body241

vector.body241:                                   ; preds = %vector.body241, %vector.ph239
  %index242 = phi i64 [ 0, %vector.ph239 ], [ %index.next246, %vector.body241 ] ; 5 uses
  %i.xv = getelementptr inbounds nuw [8 x i8], ptr %i.mp, i64 %index242
  %wide.load243 = load <2 x i64>, ptr %i.xv, align 8, !tbaa !22
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index242
  %wide.load244 = load <2 x i64>, ptr %i.xw, align 16, !tbaa !22
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index242
  %wide.load245 = load <2 x i64>, ptr %i.xx, align 16, !tbaa !22
  %i.xy = call <2 x i64> @llvm.umin.v2i64(<2 x i64> %wide.load244, <2 x i64> %wide.load245)
  %i.xz = add <2 x i64> %i.xy, %wide.load243
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %index242
  store <2 x i64> %i.xz, ptr %i.ya, align 8, !tbaa !22
  %index.next246 = add nuw i64 %index242, 2       ; 2 uses
  %i.yb = icmp eq i64 %index.next246, %n.vec240
  br i1 %i.yb, label %middle.block247, label %vector.body241, !llvm.loop !143

middle.block247:                                  ; preds = %vector.body241
  %cmp.n248 = icmp eq i64 %n.vec240, %i.xu
  br i1 %cmp.n248, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.en, %middle.block247
  %.1152244.i.i.i.ph = phi i64 [ 0, %bb.en ], [ %n.vec240, %middle.block247 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
end_hunk_1
