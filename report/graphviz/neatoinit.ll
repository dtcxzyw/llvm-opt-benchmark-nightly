Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/neatoinit?download=true
inline.NumInlined: 111
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@neatoLayout:bb.a
  tail call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit111.i:                              ; preds = %bb.w, %.thread.i110.i
  %i.db = phi ptr [ %i.cs, %.thread.i110.i ], [ %i.cn, %bb.w ] ; 16 uses
  %i.dc = phi ptr [ %i.ct, %.thread.i110.i ], [ %i.cw, %bb.w ] ; 6 uses
  store ptr %i.dc, ptr %i.db, align 8, !tbaa !183
  %i.dd = load i16, ptr @Ndim, align 2, !tbaa !46 ; 3 uses
  %i.de = icmp ugt i16 %i.dd, 1
  br i1 %i.de, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %gv_calloc.exit111.i
  %i.df = zext nneg i32 %i.i to i64               ; 5 uses
  %wide.trip.count.i = zext i16 %i.dd to i64
  %i.dg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter = and i64 %i.dg, 3                    ; 3 uses
  %i.dh = add i16 %i.dd, -2
  %i.di = icmp ult i16 %i.dh, 3
  br i1 %i.di, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.dg, -4
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.epil ]
  %i.dj = mul nuw nsw i64 %indvars.iv.i.epil, %i.df
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dj
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i.epil
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !183
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !168

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %gv_calloc.exit111.i
  %i.dm = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not.i24 = icmp eq i8 %i.dm, 0
  br i1 %.not.i24, label %bb.z, label %bb.y

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.dn = mul nuw nsw i64 %indvars.iv.i, %i.df
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dn
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.i
  store ptr %i.do, ptr %i.dp, align 8, !tbaa !183
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dq = mul nuw nsw i64 %indvars.iv.next.i, %i.df
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dq
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next.i
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !183
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.dt = mul nuw nsw i64 %indvars.iv.next.i.1, %i.df
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dt
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next.i.1
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !183
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.dw = mul nuw nsw i64 %indvars.iv.next.i.2, %i.df
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next.i.2
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !183
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !169

bb.y:                                             ; preds = %._crit_edge.i
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ea = zext i1 %i.ck to i32
  %i.eb = and i32 %spec.select.i, 3
  %i.ec = load i32, ptr @MaxIter, align 4, !tbaa !55
  %i.ed = load double, ptr @Epsilon, align 8, !tbaa !48
  %i.ee = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.62, i32 noundef range(i32 0, 4) %3, i32 noundef %i.ea, i32 noundef %i.eb, i32 noundef %i.ec, double noundef %i.ed) #23 ; 0 uses
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.63, i64 15, i64 1, ptr %i.ef) #26 ; 0 uses
  tail call void @start_timer() #21
  %i.eg = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite91.i = tail call i64 @fwrite(ptr nonnull @.str.64, i64 13, i64 1, ptr %i.eg) #26 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %i.eh = call fastcc ptr @makeGraphData(ptr noundef %1, i32 noundef range(i32 2, -2147483648) %i.i, ptr noundef %i.a, i32 noundef range(i32 1, 0) %2, i32 noundef range(i32 0, 4) %3, ptr noundef nonnull %i.b) ; 4 uses
  %i.ei = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not92.i = icmp eq i8 %i.ei, 0
  br i1 %.not92.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ej = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ek = call double @elapsed_sec() #21
  %i.el = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ej, ptr noundef nonnull @.str.65, i32 noundef range(i32 2, -2147483648) %i.i, double noundef %i.ek) #23 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not93.i = icmp eq i32 %2, 1
  br i1 %.not93.i, label %bb.bt, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.em = call ptr @agattr_text(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.66, ptr noundef null) #21
  %i.en = call double @late_double(ptr noundef %1, ptr noundef %i.em, double noundef 0.000000e+00, double noundef f0xFFEFFFFFFFFFFFFF) #21 ; 2 uses
  br i1 %i.cd, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.ep = load i16, ptr @Ndim, align 2, !tbaa !46
  %i.eq = zext i16 %i.ep to i32
  %i.er = load i32, ptr @MaxIter, align 4, !tbaa !55
  %i.es = call i32 @stress_majorization_with_hierarchy(ptr noundef nonnull %i.eh, i32 noundef range(i32 2, -2147483648) %i.i, ptr noundef nonnull %i.db, ptr noundef %i.eo, i32 noundef %i.eq, i32 noundef %spec.select.i, i32 noundef range(i32 0, 4) %3, i32 noundef %i.er, double noundef %i.en) #21
  br label %bb.bu

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21, !noalias !184
  %i.et = call i32 @agnnodes(ptr noundef %1) #21, !noalias !184 ; 3 uses
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = icmp ult i32 %i.et, 65
  br i1 %i.ev, label %bitarray_new.exit.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ew = lshr i64 %i.eu, 3
  %i.ex = and i32 %i.et, 7
  %i.ey = icmp ne i32 %i.ex, 0
  %i.ez = zext i1 %i.ey to i64
  %i.fa = add nuw nsw i64 %i.ew, %i.ez            ; 2 uses
  %i.fb = call noalias ptr @calloc(i64 noundef %i.fa, i64 noundef 1) #22, !noalias !184 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %bb.ag, label %bitarray_new.exit.i.i

bb.ag:                                            ; preds = %bb.af
  %i.fd = load ptr, ptr @stderr, align 8, !tbaa !37, !noalias !184
  %i.fe = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fd, ptr noundef nonnull @.str.21, i64 noundef %i.fa) #23, !noalias !184 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

bitarray_new.exit.i.i:                            ; preds = %bb.af, %bb.ae
  %.sroa.0.0.i.i.i = phi ptr [ null, %bb.ae ], [ %i.fb, %bb.af ]
  store ptr %.sroa.0.0.i.i.i, ptr %6, align 8, !noalias !184
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i64 %i.eu, ptr %i.ff, align 8, !noalias !184
  %i.fg = call i32 @agnnodes(ptr noundef %1) #21, !noalias !184 ; 2 uses
  %i.fh = call ptr @agfstsubg(ptr noundef %0) #21, !noalias !184 ; 2 uses
  %.not78.i.i = icmp eq ptr %i.fh, null
  br i1 %.not78.i.i, label %.thread.i57.i.i, label %.lr.ph.i.i25

.lr.ph.i.i25:                                     ; preds = %bitarray_new.exit.i.i, %.lr.ph.i.i25
  %.04080.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i25 ], [ 0, %bitarray_new.exit.i.i ]
  %.04979.i.i = phi ptr [ %i.fk, %.lr.ph.i.i25 ], [ %i.fh, %bitarray_new.exit.i.i ] ; 2 uses
  %i.fi = call zeroext i1 @is_a_cluster(ptr noundef nonnull %.04979.i.i) #21, !noalias !184
  %i.fj = zext i1 %i.fi to i32
  %spec.select.i.i = add nuw nsw i32 %.04080.i.i, %i.fj ; 4 uses
  %i.fk = call ptr @agnxtsubg(ptr noundef nonnull %.04979.i.i) #21, !noalias !184 ; 2 uses
  %.not.i112.i = icmp eq ptr %i.fk, null
  br i1 %.not.i112.i, label %._crit_edge.i.i26, label %.lr.ph.i.i25, !llvm.loop !172

._crit_edge.i.i26:                                ; preds = %.lr.ph.i.i25
  %i.fl = zext nneg i32 %spec.select.i.i to i64   ; 4 uses
  %.not.i.i.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %.not.i.i.i, label %.thread.i57.i.i, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge.i.i26
  %i.fm = call noalias ptr @calloc(i64 noundef %i.fl, i64 noundef 8) #22, !noalias !184 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fo = load ptr, ptr @stderr, align 8, !tbaa !37, !noalias !184
  %i.fp = shl nuw nsw i64 %i.fl, 3
  %i.fq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fo, ptr noundef nonnull @.str.21, i64 noundef %i.fp) #23, !noalias !184 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

.thread.i57.i.i:                                  ; preds = %._crit_edge.i.i26, %bitarray_new.exit.i.i
  %i.fr = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22, !noalias !184
  %i.fs = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22, !noalias !184
  br label %gv_calloc.exit58.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.ft = call noalias ptr @calloc(i64 noundef %i.fl, i64 noundef 4) #22, !noalias !184 ; 2 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.ak, label %gv_calloc.exit58.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.fv = load ptr, ptr @stderr, align 8, !tbaa !37, !noalias !184
  %i.fw = shl nuw nsw i64 %i.fl, 2
  %i.fx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fv, ptr noundef nonnull @.str.21, i64 noundef %i.fw) #23, !noalias !184 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit58.i.i:                             ; preds = %bb.aj, %.thread.i57.i.i
  %.sroa.9.1.i = phi i32 [ 0, %.thread.i57.i.i ], [ %spec.select.i.i, %bb.aj ] ; 3 uses
  %.sroa.15.0.i = phi ptr [ %i.fr, %.thread.i57.i.i ], [ %i.fm, %bb.aj ] ; 4 uses
  %i.fy = phi ptr [ %i.fs, %.thread.i57.i.i ], [ %i.ft, %bb.aj ] ; 3 uses
  %i.fz = call ptr @agfstsubg(ptr noundef %0) #21, !noalias !184 ; 2 uses
  %.not5193.i.i = icmp eq ptr %i.fz, null
  br i1 %.not5193.i.i, label %._crit_edge99.i.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %gv_calloc.exit58.i.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.2.i, %.loopexit.i.i ], [ 0, %gv_calloc.exit58.i.i ] ; 2 uses
  %.sroa.17.0.i = phi i32 [ %.sroa.17.1.i, %.loopexit.i.i ], [ %i.fg, %gv_calloc.exit58.i.i ] ; 3 uses
  %.04497.i.i = phi ptr [ %.145.i.i, %.loopexit.i.i ], [ %i.fy, %gv_calloc.exit58.i.i ] ; 3 uses
  %.04696.i.i = phi ptr [ %.147.i.i, %.loopexit.i.i ], [ %.sroa.15.0.i, %gv_calloc.exit58.i.i ] ; 3 uses
  %.15094.i.i = phi ptr [ %i.hk, %.loopexit.i.i ], [ %i.fz, %gv_calloc.exit58.i.i ] ; 5 uses
  %i.ga = call zeroext i1 @is_a_cluster(ptr noundef nonnull %.15094.i.i) #21, !noalias !184
  br i1 %i.ga, label %bb.al, label %.loopexit.i.i

bb.al:                                            ; preds = %.lr.ph98.i.i
  %i.gb = call i32 @agnnodes(ptr noundef nonnull %.15094.i.i) #21, !noalias !184 ; 5 uses
  store i32 %i.gb, ptr %.04497.i.i, align 4, !tbaa !55, !noalias !184
  %i.gc = add nsw i32 %i.gb, %.sroa.0.1.i         ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.04497.i.i, i64 4 ; 2 uses
  %i.ge = sext i32 %i.gb to i64                   ; 3 uses
  %.not.i59.i.i = icmp eq i32 %i.gb, 0
  br i1 %.not.i59.i.i, label %.thread.i62.i.i, label %bb.am

.thread.i62.i.i:                                  ; preds = %bb.al
  %i.gf = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22, !noalias !184
  br label %gv_calloc.exit63.i.i

bb.am:                                            ; preds = %bb.al
  %mul.ov.i61.i.i = icmp slt i32 %i.gb, 0
  br i1 %mul.ov.i61.i.i, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gg = load ptr, ptr @stderr, align 8, !tbaa !37, !noalias !184
  %i.gh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gg, ptr noundef nonnull @.str.20, i64 noundef %i.ge, i64 noundef 4) #23, !noalias !184 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.gi = call noalias ptr @calloc(i64 noundef %i.ge, i64 noundef 4) #22, !noalias !184 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %bb.ap, label %gv_calloc.exit63.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.gk = load ptr, ptr @stderr, align 8, !tbaa !37, !noalias !184
  %i.gl = shl nuw nsw i64 %i.ge, 2
  %i.gm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gk, ptr noundef nonnull @.str.21, i64 noundef %i.gl) #23, !noalias !184 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit63.i.i:                             ; preds = %bb.ao, %.thread.i62.i.i
  %i.gn = phi ptr [ %i.gf, %.thread.i62.i.i ], [ %i.gi, %bb.ao ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.04696.i.i, i64 8 ; 2 uses
  store ptr %i.gn, ptr %.04696.i.i, align 8, !tbaa !182, !noalias !184
  %i.gp = call ptr @agfstnode(ptr noundef nonnull %.15094.i.i) #21, !noalias !184 ; 2 uses
  %.not5289.i.i = icmp eq ptr %i.gp, null
  br i1 %.not5289.i.i, label %.loopexit.i.i, label %.lr.ph92.i.i

.lr.ph92.i.i:                                     ; preds = %gv_calloc.exit63.i.i, %bitarray_set.exit.i.i
  %.sroa.17.3.i = phi i32 [ %i.hi, %bitarray_set.exit.i.i ], [ %.sroa.17.0.i, %gv_calloc.exit63.i.i ]
  %.03991.i.i = phi ptr [ %i.gw, %bitarray_set.exit.i.i ], [ %i.gn, %gv_calloc.exit63.i.i ] ; 2 uses
  %.04890.i.i = phi ptr [ %i.hj, %bitarray_set.exit.i.i ], [ %i.gp, %gv_calloc.exit63.i.i ] ; 2 uses
  %i.gq = call ptr @agfstnode(ptr noundef %1) #21, !noalias !184 ; 2 uses
  %.not5381.i.i = icmp eq ptr %i.gq, null
  br i1 %.not5381.i.i, label %bitarray_set.exit.i.i, label %.lr.ph85.i.i

.lr.ph85.i.i:                                     ; preds = %.lr.ph92.i.i, %bb.aq
  %.083.i.i = phi i32 [ %i.gu, %bb.aq ], [ 0, %.lr.ph92.i.i ] ; 2 uses
  %.03882.i.i = phi ptr [ %i.gv, %bb.aq ], [ %i.gq, %.lr.ph92.i.i ] ; 2 uses
  %i.gr = load i32, ptr %.03882.i.i, align 8, !noalias !184
  %i.gs = load i32, ptr %.04890.i.i, align 8, !noalias !184
  %.unshifted.i.i = xor i32 %i.gs, %i.gr
  %i.gt = icmp ult i32 %.unshifted.i.i, 16
  br i1 %i.gt, label %bitarray_set.exit.i.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph85.i.i
  %i.gu = add nuw nsw i32 %.083.i.i, 1            ; 2 uses
  %i.gv = call ptr @agnxtnode(ptr noundef %1, ptr noundef nonnull %.03882.i.i) #21, !noalias !184 ; 2 uses
  %.not53.i.i = icmp eq ptr %i.gv, null
  br i1 %.not53.i.i, label %bitarray_set.exit.i.i, label %.lr.ph85.i.i, !llvm.loop !173

bitarray_set.exit.i.i:                            ; preds = %bb.aq, %.lr.ph85.i.i, %.lr.ph92.i.i
  %.0.lcssa.i.i = phi i32 [ 0, %.lr.ph92.i.i ], [ %.083.i.i, %.lr.ph85.i.i ], [ %i.gu, %bb.aq ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.03991.i.i, i64 4
  store i32 %.0.lcssa.i.i, ptr %.03991.i.i, align 4, !tbaa !55, !noalias !184
  %i.gx = load i64, ptr %i.ff, align 8, !tbaa !186, !noalias !184
  %i.gy = icmp ult i64 %i.gx, 65
  %i.gz = load ptr, ptr %6, align 8, !noalias !184
  %spec.select76.i.i = select i1 %i.gy, ptr %6, ptr %i.gz
  %i.ha = trunc i32 %.0.lcssa.i.i to i8
  %i.hb = and i8 %i.ha, 7
  %i.hc = shl nuw i8 1, %i.hb
  %i.hd = lshr i32 %.0.lcssa.i.i, 3
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %spec.select76.i.i, i64 %i.he ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !45, !noalias !184
  %i.hh = or i8 %i.hg, %i.hc
  store i8 %i.hh, ptr %i.hf, align 1, !tbaa !45, !noalias !184
  %i.hi = add nsw i32 %.sroa.17.3.i, -1           ; 2 uses
  %i.hj = call ptr @agnxtnode(ptr noundef nonnull %.15094.i.i, ptr noundef nonnull %.04890.i.i) #21, !noalias !184 ; 2 uses
  %.not52.i.i = icmp eq ptr %i.hj, null
  br i1 %.not52.i.i, label %.loopexit.i.i, label %.lr.ph92.i.i, !llvm.loop !174

.loopexit.i.i:                                    ; preds = %bitarray_set.exit.i.i, %gv_calloc.exit63.i.i, %.lr.ph98.i.i
  %.sroa.0.2.i = phi i32 [ %i.gc, %gv_calloc.exit63.i.i ], [ %.sroa.0.1.i, %.lr.ph98.i.i ], [ %i.gc, %bitarray_set.exit.i.i ] ; 2 uses
  %.sroa.17.1.i = phi i32 [ %.sroa.17.0.i, %gv_calloc.exit63.i.i ], [ %.sroa.17.0.i, %.lr.ph98.i.i ], [ %i.hi, %bitarray_set.exit.i.i ] ; 2 uses
  %.147.i.i = phi ptr [ %i.go, %gv_calloc.exit63.i.i ], [ %.04696.i.i, %.lr.ph98.i.i ], [ %i.go, %bitarray_set.exit.i.i ]
  %.145.i.i = phi ptr [ %i.gd, %gv_calloc.exit63.i.i ], [ %.04497.i.i, %.lr.ph98.i.i ], [ %i.gd, %bitarray_set.exit.i.i ]
  %i.hk = call ptr @agnxtsubg(ptr noundef nonnull %.15094.i.i) #21, !noalias !184 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.hk, null
  br i1 %.not51.i.i, label %._crit_edge99.i.i, label %.lr.ph98.i.i, !llvm.loop !175

._crit_edge99.i.i:                                ; preds = %.loopexit.i.i, %gv_calloc.exit58.i.i
  %.sroa.0.3.i = phi i32 [ 0, %gv_calloc.exit58.i.i ], [ %.sroa.0.2.i, %.loopexit.i.i ]
  %.sroa.17.2.i = phi i32 [ %i.fg, %gv_calloc.exit58.i.i ], [ %.sroa.17.1.i, %.loopexit.i.i ] ; 4 uses
  %i.hl = sext i32 %.sroa.9.1.i to i64            ; 2 uses
  %.not.i64.i.i = icmp eq i32 %.sroa.9.1.i, 0     ; 2 uses
  br i1 %.not.i64.i.i, label %.thread.i67.i.i, label %bb.ar

.thread.i67.i.i:                                  ; preds = %._crit_edge99.i.i
  %i.hm = call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #22, !noalias !184
  br label %gv_calloc.exit68.i.i

bb.ar:                                            ; preds = %._crit_edge99.i.i
  %i.hn = call noalias ptr @calloc(i64 noundef %i.hl, i64 noundef 32) #22, !noalias !184 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %bb.as, label %gv_calloc.exit68.i.i

bb.as:                                            ; preds = %bb.ar
  %i.hp = load ptr, ptr @stderr, align 8, !tbaa !37, !noalias !184
  %i.hq = shl nuw nsw i64 %i.hl, 5
  %i.hr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hp, ptr noundef nonnull @.str.21, i64 noundef %i.hq) #23, !noalias !184 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit68.i.i:                             ; preds = %bb.ar, %.thread.i67.i.i
  %i.hs = phi ptr [ %i.hm, %.thread.i67.i.i ], [ %i.hn, %bb.ar ] ; 2 uses
  %i.ht = sext i32 %.sroa.17.2.i to i64           ; 3 uses
  %.not.i69.i.i = icmp eq i32 %.sroa.17.2.i, 0
  br i1 %.not.i69.i.i, label %.thread.i72.i.i, label %bb.at

.thread.i72.i.i:                                  ; preds = %gv_calloc.exit68.i.i
  %i.hu = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22, !noalias !184
  br label %gv_calloc.exit73.i.i

bb.at:                                            ; preds = %gv_calloc.exit68.i.i
  %mul.ov.i71.i.i = icmp slt i32 %.sroa.17.2.i, 0
  br i1 %mul.ov.i71.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hv = load ptr, ptr @stderr, align 8, !tbaa !37, !noalias !184
  %i.hw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hv, ptr noundef nonnull @.str.20, i64 noundef %i.ht, i64 noundef 4) #23, !noalias !184 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.hx = call noalias ptr @calloc(i64 noundef %i.ht, i64 noundef 4) #22, !noalias !184 ; 2 uses
  %i.hy = icmp eq ptr %i.hx, null
  br i1 %i.hy, label %bb.aw, label %gv_calloc.exit73.i.i

bb.aw:                                            ; preds = %bb.av
  %i.hz = load ptr, ptr @stderr, align 8, !tbaa !37, !noalias !184
  %i.ia = shl nuw nsw i64 %i.ht, 2
  %i.ib = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hz, ptr noundef nonnull @.str.21, i64 noundef %i.ia) #23, !noalias !184 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit73.i.i:                             ; preds = %bb.av, %.thread.i72.i.i
  %i.ic = phi ptr [ %i.hu, %.thread.i72.i.i ], [ %i.hx, %bb.av ] ; 3 uses
  %i.id = call i32 @agnnodes(ptr noundef %1) #21, !noalias !184
  %i.ie = icmp sgt i32 %i.id, 0
  %.pre105.i.i = load i64, ptr %i.ff, align 8, !noalias !184 ; 3 uses
  br i1 %i.ie, label %.lr.ph102.i.i, label %._crit_edge103.i.i

.lr.ph102.i.i:                                    ; preds = %gv_calloc.exit73.i.i
  %i.if = load ptr, ptr %6, align 8, !noalias !184 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ih = icmp ult i64 %.pre105.i.i, 65
  %.0.i74.i.i = select i1 %i.ih, ptr %5, ptr %i.if
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %.lr.ph102.i.i
  %.041101.i.i = phi i32 [ 0, %.lr.ph102.i.i ], [ %.142.i.i, %bb.az ] ; 3 uses
  %.043100.i.i = phi i32 [ 0, %.lr.ph102.i.i ], [ %i.it, %bb.az ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !184
  store ptr %i.if, ptr %5, align 8, !noalias !184
  store i64 %.pre105.i.i, ptr %i.ig, align 8, !noalias !184
  %i.ii = lshr i32 %.043100.i.i, 3
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i74.i.i, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !45, !noalias !184
  %i.im = trunc i32 %.043100.i.i to i8
  %i.in = and i8 %i.im, 7
  %i.io = lshr i8 %i.il, %i.in
  %i.ip = trunc i8 %i.io to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !184
  br i1 %i.ip, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.iq = add nsw i32 %.041101.i.i, 1
  %i.ir = sext i32 %.041101.i.i to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.ir
  store i32 %.043100.i.i, ptr %i.is, align 4, !tbaa !55, !noalias !184
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.142.i.i = phi i32 [ %.041101.i.i, %bb.ax ], [ %i.iq, %bb.ay ]
  %i.it = add nuw nsw i32 %.043100.i.i, 1         ; 2 uses
  %i.iu = call i32 @agnnodes(ptr noundef %1) #21, !noalias !184
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %bb.ax, label %._crit_edge103.i.i, !llvm.loop !176

._crit_edge103.i.i:                               ; preds = %bb.az, %gv_calloc.exit73.i.i
  %i.iw = icmp ugt i64 %.pre105.i.i, 64
  br i1 %i.iw, label %bb.ba, label %cluster_map.exit.i

bb.ba:                                            ; preds = %._crit_edge103.i.i
  %i.ix = load ptr, ptr %6, align 8, !tbaa !45, !noalias !184
  call void @free(ptr noundef %i.ix) #21, !noalias !184
  br label %cluster_map.exit.i

cluster_map.exit.i:                               ; preds = %bb.ba, %._crit_edge103.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !184
  %i.iy = zext nneg i32 %i.i to i64               ; 2 uses
  %i.iz = call noalias ptr @calloc(i64 noundef %i.iy, i64 noundef 16) #22 ; 4 uses
  %i.ja = icmp eq ptr %i.iz, null
  br i1 %i.ja, label %bb.bb, label %gv_calloc.exit117.i

bb.bb:                                            ; preds = %cluster_map.exit.i
  %i.jb = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.jc = shl nuw nsw i64 %i.iy, 4
  %i.jd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.jb, ptr noundef nonnull @.str.21, i64 noundef %i.jc) #23 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit117.i:                              ; preds = %cluster_map.exit.i
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.en, ptr %i.je, align 8, !tbaa !190
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.iz, ptr %i.jf, align 8, !tbaa !191
  %i.jg = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 %.sroa.0.3.i, ptr %i.jg, align 8, !tbaa !55
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 %.sroa.9.1.i, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !55
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.fy, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !182
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %.sroa.15.0.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !192
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 %.sroa.17.2.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !55
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i32 0, ptr %.sroa.21.0..sroa_idx.i, align 4
  %.sroa.21130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.ic, ptr %.sroa.21130.0..sroa_idx.i, align 8, !tbaa !182
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.hs, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !193
  %i.jh = call ptr @agget(ptr noundef %1, ptr noundef nonnull @.str.67) #21 ; 3 uses
  %i.ji = call zeroext i1 @mapbool(ptr noundef %i.jh) #21
  br i1 %i.ji, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %gv_calloc.exit117.i
  store i32 1, ptr %7, align 8, !tbaa !194
  %i.jj = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not98.i = icmp eq i8 %i.jj, 0
  br i1 %.not98.i, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jk = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite99.i = call i64 @fwrite(ptr nonnull @.str.68, i64 31, i64 1, ptr %i.jk) #26 ; 0 uses
  br label %bb.bj

bb.be:                                            ; preds = %gv_calloc.exit117.i
  %.not94.i = icmp eq ptr %i.jh, null
  br i1 %.not94.i, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jl = call i32 @strncasecmp(ptr noundef nonnull %i.jh, ptr noundef nonnull @.str.41, i64 noundef 4) #25
  %.not95.i = icmp eq i32 %i.jl, 0
  br i1 %.not95.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  store i32 2, ptr %7, align 8, !tbaa !194
  %i.jm = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not96.i = icmp eq i8 %i.jm, 0
  br i1 %.not96.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jn = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite97.i = call i64 @fwrite(ptr nonnull @.str.69, i64 40, i64 1, ptr %i.jn) #26 ; 0 uses
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf, %bb.be
  store i32 0, ptr %7, align 8, !tbaa !194
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bd, %bb.bc
  %i.jo = load i32, ptr %4, align 8, !tbaa !196
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  switch i32 %i.jo, label %bb.bo [
    i32 15, label %bb.bk
    i32 14, label %bb.bm
  ]

bb.bk:                                            ; preds = %bb.bj
  store i32 1, ptr %i.jp, align 8, !tbaa !197
  %i.jq = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not102.i = icmp eq i8 %i.jq, 0
  br i1 %.not102.i, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jr = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite103.i = call i64 @fwrite(ptr nonnull @.str.70, i64 38, i64 1, ptr %i.jr) #26 ; 0 uses
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bj
  store i32 2, ptr %i.jp, align 8, !tbaa !197
  %i.js = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not100.i = icmp eq i8 %i.js, 0
  br i1 %.not100.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jt = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite101.i = call i64 @fwrite(ptr nonnull @.str.71, i64 36, i64 1, ptr %i.jt) #26 ; 0 uses
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj
  store i32 0, ptr %i.jp, align 8, !tbaa !197
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @sepFactor(ptr dead_on_unwind nonnull writable sret(%struct.expand_t) align 8 %8, ptr noundef %1) #21
  %i.ju = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jv = load i8, ptr %i.ju, align 16, !tbaa !199, !range !75, !noundef !76
  %i.jw = trunc nuw i8 %i.jv to i1
  %i.jx = load <2 x double>, ptr %8, align 16
  %i.jy = fdiv <2 x double> %i.jx, splat (double 7.200000e+01)
  %i.jz = fmul <2 x double> %i.jy, splat (double 2.000000e+00)
  %i.ka = select i1 %i.jw, <2 x double> %i.jz, <2 x double> splat (double f0x3FBC71C71C71C71C) ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x double> %i.ka, ptr %i.kb, align 8, !tbaa !48
  %i.kc = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not104.i = icmp eq i8 %i.kc, 0
  br i1 %.not104.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kd = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.ke = extractelement <2 x double> %i.ka, i64 0
  %i.kf = extractelement <2 x double> %i.ka, i64 1
  %i.kg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kd, ptr noundef nonnull @.str.72, double noundef %i.ke, double noundef %i.kf) #23 ; 0 uses
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.kh = call ptr @agfstnode(ptr noundef %1) #21 ; 2 uses
  %.not105149.i = icmp eq ptr %i.kh, null
  br i1 %.not105149.i, label %._crit_edge154.i, label %.lr.ph153.i

.lr.ph153.i:                                      ; preds = %bb.br, %.lr.ph153.i
  %.083151.i = phi i64 [ %i.ko, %.lr.ph153.i ], [ 0, %bb.br ] ; 2 uses
  %.086150.i = phi ptr [ %i.kn, %.lr.ph153.i ], [ %i.kh, %bb.br ] ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.086150.i, i64 16
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 48
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.iz, i64 %.083151.i
  %i.km = load <2 x double>, ptr %i.kk, align 8, !tbaa !48
  store <2 x double> %i.km, ptr %i.kl, align 8, !tbaa !48
  %i.kn = call ptr @agnxtnode(ptr noundef %1, ptr noundef nonnull %.086150.i) #21 ; 2 uses
  %i.ko = add i64 %.083151.i, 1
  %.not105.i = icmp eq ptr %i.kn, null
  br i1 %.not105.i, label %._crit_edge154.i, label %.lr.ph153.i, !llvm.loop !177

._crit_edge154.i:                                 ; preds = %.lr.ph153.i, %bb.br
  %i.kp = load ptr, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.kq = load i16, ptr @Ndim, align 2, !tbaa !46
  %i.kr = zext i16 %i.kq to i32
  %i.ks = load i32, ptr @MaxIter, align 4, !tbaa !55
  %i.kt = call i32 @stress_majorization_cola(ptr noundef nonnull %i.eh, i32 noundef range(i32 2, -2147483648) %i.i, ptr noundef nonnull %i.db, ptr noundef %i.kp, i32 noundef %i.kr, i32 noundef range(i32 0, 4) %3, i32 noundef %i.ks, ptr noundef nonnull %7) #21
  br i1 %.not.i64.i.i, label %freeClusterData.exit.i, label %bb.bs

bb.bs:                                            ; preds = %._crit_edge154.i
  %i.ku = load ptr, ptr %.sroa.15.0.i, align 8, !tbaa !182
  call void @free(ptr noundef %i.ku) #21
  call void @free(ptr noundef %.sroa.15.0.i) #21
  call void @free(ptr noundef %i.fy) #21
  call void @free(ptr noundef %i.ic) #21
  call void @free(ptr noundef %i.hs) #21
  br label %freeClusterData.exit.i

freeClusterData.exit.i:                           ; preds = %bb.bs, %._crit_edge154.i
  call void @free(ptr noundef nonnull %i.iz) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.bu

bb.bt:                                            ; preds = %bb.ab
  %i.kv = load ptr, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.kw = load i16, ptr @Ndim, align 2, !tbaa !46
  %i.kx = zext i16 %i.kw to i32
  %i.ky = load i32, ptr @MaxIter, align 4, !tbaa !55
  %i.kz = call i32 @stress_majorization_kD_mkernel(ptr noundef nonnull %i.eh, i32 noundef range(i32 2, -2147483648) %i.i, ptr noundef nonnull %i.db, ptr noundef %i.kv, i32 noundef %i.kx, i32 noundef %spec.select.i, i32 noundef range(i32 0, 4) %3, i32 noundef %i.ky) #21
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %freeClusterData.exit.i, %bb.ad
  %i.la = phi ptr [ %i.kv, %bb.bt ], [ %i.eo, %bb.ad ], [ %i.kp, %freeClusterData.exit.i ]
  %.188.i = phi i32 [ %i.kz, %bb.bt ], [ %i.es, %bb.ad ], [ %i.kt, %freeClusterData.exit.i ]
  %i.lb = icmp slt i32 %.188.i, 0
  br i1 %i.lb, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.lc = call i32 (i32, ptr, ...) @agerr(i32 noundef 3, ptr noundef nonnull @.str.73) #21 ; 0 uses
  br label %majorization.exit

bb.bw:                                            ; preds = %bb.bu
  %i.ld = call ptr @agfstnode(ptr noundef %1) #21 ; 2 uses
  %.not106159.i = icmp eq ptr %i.ld, null
  br i1 %.not106159.i, label %majorization.exit, label %.lr.ph162.i

.lr.ph162.i:                                      ; preds = %bb.bw, %._crit_edge158.i
  %.1160.i = phi ptr [ %i.ls, %._crit_edge158.i ], [ %i.ld, %bb.bw ] ; 2 uses
  %i.le = load i16, ptr @Ndim, align 2, !tbaa !46 ; 3 uses
  %.not163.i = icmp eq i16 %i.le, 0
  br i1 %.not163.i, label %._crit_edge158.i, label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %.lr.ph162.i
  %i.lf = getelementptr inbounds nuw i8, ptr %.1160.i, i64 16
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !13 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 164
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !80
  %i.lj = sext i32 %i.li to i64                   ; 5 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lg, i64 176
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !44 ; 5 uses
  %wide.trip.count170.i = zext i16 %i.le to i64   ; 2 uses
  %xtraiter72 = and i64 %wide.trip.count170.i, 3  ; 3 uses
  %i.lm = icmp ult i16 %i.le, 4
  br i1 %i.lm, label %.epil.preheader, label %.lr.ph157.i.new

.lr.ph157.i.new:                                  ; preds = %.lr.ph157.i
  %unroll_iter76 = and i64 %wide.trip.count170.i, 65532
  br label %bb.by

._crit_edge158.i.loopexit.unr-lcssa:              ; preds = %bb.by
  %lcmp.mod74.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %._crit_edge158.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge158.i.loopexit.unr-lcssa, %.lr.ph157.i
  %indvars.iv167.i.epil.init = phi i64 [ 0, %.lr.ph157.i ], [ %indvars.iv.next168.i.3, %._crit_edge158.i.loopexit.unr-lcssa ]
  %lcmp.mod75 = icmp ne i64 %xtraiter72, 0
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bx, %.epil.preheader
  %indvars.iv167.i.epil = phi i64 [ %indvars.iv167.i.epil.init, %.epil.preheader ], [ %indvars.iv.next168.i.epil, %bb.bx ] ; 3 uses
  %epil.iter73 = phi i64 [ 0, %.epil.preheader ], [ %epil.iter73.next, %bb.bx ]
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv167.i.epil
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !183
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.lo, i64 %i.lj
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !48
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv167.i.epil
  store double %i.lq, ptr %i.lr, align 8, !tbaa !48
  %indvars.iv.next168.i.epil = add nuw nsw i64 %indvars.iv167.i.epil, 1
  %epil.iter73.next = add i64 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i64 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %._crit_edge158.i, label %bb.bx, !llvm.loop !178

._crit_edge158.i:                                 ; preds = %._crit_edge158.i.loopexit.unr-lcssa, %bb.bx, %.lr.ph162.i
  %i.ls = call ptr @agnxtnode(ptr noundef %1, ptr noundef nonnull %.1160.i) #21 ; 2 uses
  %.not106.i = icmp eq ptr %i.ls, null
  br i1 %.not106.i, label %majorization.exit, label %.lr.ph162.i, !llvm.loop !179

bb.by:                                            ; preds = %bb.by, %.lr.ph157.i.new
  %indvars.iv167.i = phi i64 [ 0, %.lr.ph157.i.new ], [ %indvars.iv.next168.i.3, %bb.by ] ; 6 uses
  %niter77 = phi i64 [ 0, %.lr.ph157.i.new ], [ %niter77.next.3, %bb.by ]
  %i.lt = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv167.i
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !183
  %i.lv = getelementptr inbounds [8 x i8], ptr %i.lu, i64 %i.lj
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !48
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv167.i
  store double %i.lw, ptr %i.lx, align 8, !tbaa !48
  %indvars.iv.next168.i = or disjoint i64 %indvars.iv167.i, 1 ; 2 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next168.i
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !183
  %i.ma = getelementptr inbounds [8 x i8], ptr %i.lz, i64 %i.lj
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !48
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv.next168.i
  store double %i.mb, ptr %i.mc, align 8, !tbaa !48
  %indvars.iv.next168.i.1 = or disjoint i64 %indvars.iv167.i, 2 ; 2 uses
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next168.i.1
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !183
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.me, i64 %i.lj
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !48
  %i.mh = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv.next168.i.1
  store double %i.mg, ptr %i.mh, align 8, !tbaa !48
  %indvars.iv.next168.i.2 = or disjoint i64 %indvars.iv167.i, 3 ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv.next168.i.2
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !183
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.mj, i64 %i.lj
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !48
  %i.mm = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %indvars.iv.next168.i.2
  store double %i.ml, ptr %i.mm, align 8, !tbaa !48
  %indvars.iv.next168.i.3 = add nuw nsw i64 %indvars.iv167.i, 4 ; 2 uses
  %niter77.next.3 = add i64 %niter77, 4           ; 2 uses
  %niter77.ncmp.3 = icmp eq i64 %niter77.next.3, %unroll_iter76
  br i1 %niter77.ncmp.3, label %._crit_edge158.i.loopexit.unr-lcssa, label %bb.by, !llvm.loop !180

majorization.exit:                                ; preds = %._crit_edge158.i, %bb.bv, %bb.bw
  call void @freeGraphData(ptr noundef nonnull %i.eh) #21
  %i.mn = load ptr, ptr %i.db, align 8, !tbaa !183
  call void @free(ptr noundef %i.mn) #21
  call void @free(ptr noundef %i.db) #21
  call void @free(ptr noundef %i.la) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %bb.bz

bb.bz:                                            ; preds = %kkNeato.exit, %majorization.exit, %bb.r, %bb.f
  ret void
}

declare hidden i32 @removeOverlapWith(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @setEdgeType(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @spline_edges(ptr noundef) local_unnamed_addr #1

declare i32 @packGraphs(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @free_scan_graph(ptr noundef) local_unnamed_addr #1

declare i32 @agdelrec(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @agdelete(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #6 {
bb.a:
  tail call void @exit(i32 noundef 1) #27
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #9

declare ptr @agfstsubg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @dfs(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.boxf, align 8               ; 8 uses
  %5 = alloca %struct.boxf, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.a = tail call zeroext i1 @is_a_cluster(ptr noundef nonnull %0) #21
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = tail call ptr @agxget(ptr noundef nonnull %0, ptr noundef nonnull %3) #21
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  %i.f = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.b, ptr noundef nonnull @.str.23, ptr noundef nonnull %4, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #21
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.c, label %chkBB.exit.thread

chkBB.exit.thread:                                ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.f
end_hunk_0
