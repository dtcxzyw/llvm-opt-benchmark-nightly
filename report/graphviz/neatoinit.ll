Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/neatoinit?download=true
inline.NumInlined: 111
inline.NumDeleted: 48
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@neatoLayout:bb.a
  %i.ce = select i1 %i.cd, i32 0, i32 2
  %i.cf = tail call i32 @checkStart(ptr noundef %1, i32 noundef range(i32 2, -2147483648) %i.i, i32 noundef %i.ce)
  %i.cg = tail call ptr @agattr_text(ptr noundef %1, i32 noundef 0, ptr noundef nonnull @.str.74, ptr noundef null) #21
  %i.ch = tail call i32 @late_int(ptr noundef %1, ptr noundef %i.cg, i32 noundef 2, i32 noundef 0) #21 ; 3 uses
  %i.ci = icmp eq i32 %i.ch, 0
  %i.cj = icmp sgt i32 %i.ch, 2
  %or.cond.i.i = or i1 %i.ci, %i.cj
  br i1 %or.cond.i.i, label %bb.t, label %checkExp.exit.i

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.74) #21
  br label %checkExp.exit.i

checkExp.exit.i:                                  ; preds = %bb.t, %bb.s
  %.0.i.i = phi i32 [ 2, %bb.t ], [ %i.ch, %bb.s ] ; 2 uses
  %i.ck = icmp eq i32 %i.cf, 0                    ; 2 uses
  %i.cl = or i32 %.0.i.i, 4
  %spec.select.i = select i1 %i.ck, i32 %i.cl, i32 %.0.i.i ; 3 uses
  %i.cm = zext i16 %i.cb to i64                   ; 2 uses
  %.not.i.i23 = icmp eq i16 %i.cb, 0
  br i1 %.not.i.i23, label %.thread.i110.i, label %bb.u

bb.u:                                             ; preds = %checkExp.exit.i
  %i.cn = tail call noalias ptr @calloc(i64 noundef %i.cm, i64 noundef 8) #22 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cp = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.cq = shl nuw nsw i64 %i.cm, 3
  %i.cr = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cp, ptr noundef nonnull @.str.21, i64 noundef %i.cq) #23 ; 0 uses
  tail call fastcc void @graphviz_exit() #24
  unreachable

.thread.i110.i:                                   ; preds = %checkExp.exit.i
  %i.cs = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  %i.ct = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  br label %gv_calloc.exit111.i

bb.w:                                             ; preds = %bb.u
  %i.cu = mul nuw nsw i32 %i.i, %i.cc
  %i.cv = zext nneg i32 %i.cu to i64              ; 2 uses
  %i.cw = tail call noalias ptr @calloc(i64 noundef %i.cv, i64 noundef 8) #22 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.x, label %gv_calloc.exit111.i

bb.x:                                             ; preds = %bb.w
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.cz = shl nuw nsw i64 %i.cv, 3
  %i.da = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.21, i64 noundef %i.cz) #23 ; 0 uses
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
  %i.fg = call i32 @agnnodes(ptr noundef %1) #21, !noalias !184 ; 4 uses
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
  %i.fl = zext nneg i32 %spec.select.i.i to i64   ; 5 uses
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
  %.sroa.9.1.i = phi i32 [ 0, %.thread.i57.i.i ], [ %spec.select.i.i, %bb.aj ] ; 2 uses
  %.sroa.15.0.i = phi ptr [ %i.fr, %.thread.i57.i.i ], [ %i.fm, %bb.aj ] ; 4 uses
  %.not.i123.i.i = phi i1 [ true, %.thread.i57.i.i ], [ false, %bb.aj ]
  %9 = phi i64 [ 0, %.thread.i57.i.i ], [ %i.fl, %bb.aj ] ; 2 uses
  %i.fy = phi ptr [ %i.fs, %.thread.i57.i.i ], [ %i.ft, %bb.aj ] ; 3 uses
  %i.fz = call ptr @agfstsubg(ptr noundef %0) #21, !noalias !184 ; 2 uses
  %.not5193.i.i = icmp eq ptr %i.fz, null
  br i1 %.not5193.i.i, label %._crit_edge99.i.i, label %.lr.ph98.i.i

.lr.ph98.i.i:                                     ; preds = %gv_calloc.exit58.i.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %.sroa.0.2.i, %.loopexit.i.i ], [ 0, %gv_calloc.exit58.i.i ]
  %.sroa.13.0.i = phi i32 [ %.sroa.13.1.i, %.loopexit.i.i ], [ %i.fg, %gv_calloc.exit58.i.i ] ; 2 uses
  %.sroa.0.1.i.a = phi i32 [ %.sroa.0.2.i.a, %.loopexit.i.i ], [ %i.fg, %gv_calloc.exit58.i.i ] ; 3 uses
  %.sroa.17.0.i = phi i32 [ %.sroa.17.1.i, %.loopexit.i.i ], [ 0, %gv_calloc.exit58.i.i ] ; 2 uses
  %.04497.i.i = phi ptr [ %.145.i.i, %.loopexit.i.i ], [ %i.fy, %gv_calloc.exit58.i.i ] ; 3 uses
  %.04696.i.i = phi ptr [ %.147.i.i, %.loopexit.i.i ], [ %.sroa.15.0.i, %gv_calloc.exit58.i.i ] ; 3 uses
  %.15094.i.i = phi ptr [ %i.hk, %.loopexit.i.i ], [ %i.fz, %gv_calloc.exit58.i.i ] ; 5 uses
  %i.ga = call zeroext i1 @is_a_cluster(ptr noundef nonnull %.15094.i.i) #21, !noalias !184
  br i1 %i.ga, label %bb.al, label %.loopexit.i.i

bb.al:                                            ; preds = %.lr.ph98.i.i
  %i.gb = call i32 @agnnodes(ptr noundef nonnull %.15094.i.i) #21, !noalias !184 ; 5 uses
  store i32 %i.gb, ptr %.04497.i.i, align 4, !tbaa !55, !noalias !184
  %i.gc = add nsw i32 %i.gb, %.sroa.17.0.i        ; 4 uses
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
  %.sroa.17.3.i = phi i32 [ %i.hi, %bitarray_set.exit.i.i ], [ %.sroa.0.1.i.a, %gv_calloc.exit63.i.i ]
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
  %i.hi = add nsw i32 %.sroa.17.3.i, -1           ; 3 uses
  %i.hj = call ptr @agnxtnode(ptr noundef nonnull %.15094.i.i, ptr noundef nonnull %.04890.i.i) #21, !noalias !184 ; 2 uses
  %.not52.i.i = icmp eq ptr %i.hj, null
  br i1 %.not52.i.i, label %.loopexit.i.i, label %.lr.ph92.i.i, !llvm.loop !174

.loopexit.i.i:                                    ; preds = %bitarray_set.exit.i.i, %gv_calloc.exit63.i.i, %.lr.ph98.i.i
  %.sroa.0.2.i = phi i32 [ %i.gc, %gv_calloc.exit63.i.i ], [ %.sroa.0.1.i, %.lr.ph98.i.i ], [ %i.gc, %bitarray_set.exit.i.i ] ; 2 uses
  %.sroa.13.1.i = phi i32 [ %.sroa.13.0.i, %gv_calloc.exit63.i.i ], [ %.sroa.13.0.i, %.lr.ph98.i.i ], [ %i.hi, %bitarray_set.exit.i.i ] ; 2 uses
  %.sroa.0.2.i.a = phi i32 [ %.sroa.0.1.i.a, %gv_calloc.exit63.i.i ], [ %.sroa.0.1.i.a, %.lr.ph98.i.i ], [ %i.hi, %bitarray_set.exit.i.i ] ; 2 uses
  %.sroa.17.1.i = phi i32 [ %i.gc, %gv_calloc.exit63.i.i ], [ %.sroa.17.0.i, %.lr.ph98.i.i ], [ %i.gc, %bitarray_set.exit.i.i ]
  %.147.i.i = phi ptr [ %i.go, %gv_calloc.exit63.i.i ], [ %.04696.i.i, %.lr.ph98.i.i ], [ %i.go, %bitarray_set.exit.i.i ]
  %.145.i.i = phi ptr [ %i.gd, %gv_calloc.exit63.i.i ], [ %.04497.i.i, %.lr.ph98.i.i ], [ %i.gd, %bitarray_set.exit.i.i ]
  %i.hk = call ptr @agnxtsubg(ptr noundef nonnull %.15094.i.i) #21, !noalias !184 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.hk, null
  br i1 %.not51.i.i, label %._crit_edge99.i.i, label %.lr.ph98.i.i, !llvm.loop !175

._crit_edge99.i.i:                                ; preds = %.loopexit.i.i, %gv_calloc.exit58.i.i
  %.sroa.0.3.i = phi i32 [ 0, %gv_calloc.exit58.i.i ], [ %.sroa.0.2.i, %.loopexit.i.i ]
  %.sroa.17.2.i = phi i32 [ %i.fg, %gv_calloc.exit58.i.i ], [ %.sroa.13.1.i, %.loopexit.i.i ]
  %10 = phi i32 [ %i.fg, %gv_calloc.exit58.i.i ], [ %.sroa.0.2.i.a, %.loopexit.i.i ] ; 3 uses
  br i1 %.not.i123.i.i, label %.thread.i67.i.i, label %bb.ar

.thread.i67.i.i:                                  ; preds = %._crit_edge99.i.i
  %i.hl = call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #22, !noalias !184
  br label %gv_calloc.exit68.i.i

bb.ar:                                            ; preds = %._crit_edge99.i.i
  %i.hm = call noalias ptr @calloc(i64 noundef %9, i64 noundef 32) #22, !noalias !184 ; 2 uses
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %bb.as, label %gv_calloc.exit68.i.i

bb.as:                                            ; preds = %bb.ar
  %i.ho = load ptr, ptr @stderr, align 8, !tbaa !37, !noalias !184
  %i.hp = shl nuw nsw i64 %9, 5
  %i.hq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ho, ptr noundef nonnull @.str.21, i64 noundef %i.hp) #23, !noalias !184 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit68.i.i:                             ; preds = %bb.ar, %.thread.i67.i.i
  %i.hr = phi ptr [ %i.hl, %.thread.i67.i.i ], [ %i.hm, %bb.ar ] ; 2 uses
  %i.hs = sext i32 %10 to i64                     ; 3 uses
  %.not.i69.i.i = icmp eq i32 %10, 0
  br i1 %.not.i69.i.i, label %.thread.i72.i.i, label %bb.at

.thread.i72.i.i:                                  ; preds = %gv_calloc.exit68.i.i
  %i.ht = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22, !noalias !184
  br label %gv_calloc.exit73.i.i

bb.at:                                            ; preds = %gv_calloc.exit68.i.i
  %mul.ov.i71.i.i = icmp slt i32 %10, 0
  br i1 %mul.ov.i71.i.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hu = load ptr, ptr @stderr, align 8, !tbaa !37, !noalias !184
  %i.hv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hu, ptr noundef nonnull @.str.20, i64 noundef %i.hs, i64 noundef 4) #23, !noalias !184 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.hw = call noalias ptr @calloc(i64 noundef %i.hs, i64 noundef 4) #22, !noalias !184 ; 2 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %bb.aw, label %gv_calloc.exit73.i.i

bb.aw:                                            ; preds = %bb.av
  %i.hy = load ptr, ptr @stderr, align 8, !tbaa !37, !noalias !184
  %i.hz = shl nuw nsw i64 %i.hs, 2
  %i.ia = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hy, ptr noundef nonnull @.str.21, i64 noundef %i.hz) #23, !noalias !184 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit73.i.i:                             ; preds = %bb.av, %.thread.i72.i.i
  %i.ib = phi ptr [ %i.ht, %.thread.i72.i.i ], [ %i.hw, %bb.av ] ; 3 uses
  %i.ic = call i32 @agnnodes(ptr noundef %1) #21, !noalias !184
  %i.id = icmp sgt i32 %i.ic, 0
  %.pre105.i.i = load i64, ptr %i.ff, align 8, !noalias !184 ; 3 uses
  br i1 %i.id, label %.lr.ph102.i.i, label %._crit_edge103.i.i

.lr.ph102.i.i:                                    ; preds = %gv_calloc.exit73.i.i
  %i.ie = load ptr, ptr %6, align 8, !noalias !184 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ig = icmp ult i64 %.pre105.i.i, 65
  %.0.i74.i.i = select i1 %i.ig, ptr %5, ptr %i.ie
  br label %bb.ax

bb.ax:                                            ; preds = %bb.az, %.lr.ph102.i.i
  %.041101.i.i = phi i32 [ 0, %.lr.ph102.i.i ], [ %.142.i.i, %bb.az ] ; 3 uses
  %.043100.i.i = phi i32 [ 0, %.lr.ph102.i.i ], [ %i.is, %bb.az ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !184
  store ptr %i.ie, ptr %5, align 8, !noalias !184
  store i64 %.pre105.i.i, ptr %i.if, align 8, !noalias !184
  %i.ih = lshr i32 %.043100.i.i, 3
  %i.ii = zext nneg i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i74.i.i, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !45, !noalias !184
  %i.il = trunc i32 %.043100.i.i to i8
  %i.im = and i8 %i.il, 7
  %i.in = lshr i8 %i.ik, %i.im
  %i.io = trunc i8 %i.in to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !184
  br i1 %i.io, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ip = add nsw i32 %.041101.i.i, 1
  %i.iq = sext i32 %.041101.i.i to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.ib, i64 %i.iq
  store i32 %.043100.i.i, ptr %i.ir, align 4, !tbaa !55, !noalias !184
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.142.i.i = phi i32 [ %.041101.i.i, %bb.ax ], [ %i.ip, %bb.ay ]
  %i.is = add nuw nsw i32 %.043100.i.i, 1         ; 2 uses
  %i.it = call i32 @agnnodes(ptr noundef %1) #21, !noalias !184
  %i.iu = icmp slt i32 %i.is, %i.it
  br i1 %i.iu, label %bb.ax, label %._crit_edge103.i.i, !llvm.loop !176

._crit_edge103.i.i:                               ; preds = %bb.az, %gv_calloc.exit73.i.i
  %i.iv = icmp ugt i64 %.pre105.i.i, 64
  br i1 %i.iv, label %bb.ba, label %cluster_map.exit.i

bb.ba:                                            ; preds = %._crit_edge103.i.i
  %i.iw = load ptr, ptr %6, align 8, !tbaa !45, !noalias !184
  call void @free(ptr noundef %i.iw) #21, !noalias !184
  br label %cluster_map.exit.i

cluster_map.exit.i:                               ; preds = %bb.ba, %._crit_edge103.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21, !noalias !184
  %i.ix = zext nneg i32 %i.i to i64               ; 2 uses
  %i.iy = call noalias ptr @calloc(i64 noundef %i.ix, i64 noundef 16) #22 ; 4 uses
  %i.iz = icmp eq ptr %i.iy, null
  br i1 %i.iz, label %bb.bb, label %gv_calloc.exit117.i

bb.bb:                                            ; preds = %cluster_map.exit.i
  %i.ja = load ptr, ptr @stderr, align 8, !tbaa !37
  %i.jb = shl nuw nsw i64 %i.ix, 4
  %i.jc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ja, ptr noundef nonnull @.str.21, i64 noundef %i.jb) #23 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit117.i:                              ; preds = %cluster_map.exit.i
  %i.jd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.en, ptr %i.jd, align 8, !tbaa !190
  %i.je = getelementptr inbounds nuw i8, ptr %7, i64 40
  store ptr %i.iy, ptr %i.je, align 8, !tbaa !191
  %i.jf = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i32 %.sroa.0.3.i, ptr %i.jf, align 8, !tbaa !55
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 52
  store i32 %.sroa.9.1.i, ptr %.sroa.9.0..sroa_idx.i, align 4, !tbaa !55
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  store ptr %i.fy, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !182
  %.sroa.15.0..sroa_idx.i.a = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %.sroa.15.0.i, ptr %.sroa.15.0..sroa_idx.i.a, align 8, !tbaa !192
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i32 %.sroa.17.2.i, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !55
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 76
  store i32 0, ptr %.sroa.21.0..sroa_idx.i, align 4
  %.sroa.21130.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  store ptr %i.ib, ptr %.sroa.21130.0..sroa_idx.i, align 8, !tbaa !182
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 88
  store ptr %i.hr, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !193
  %i.jg = call ptr @agget(ptr noundef %1, ptr noundef nonnull @.str.67) #21 ; 3 uses
  %i.jh = call zeroext i1 @mapbool(ptr noundef %i.jg) #21
  br i1 %i.jh, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %gv_calloc.exit117.i
  store i32 1, ptr %7, align 8, !tbaa !194
  %i.ji = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not98.i = icmp eq i8 %i.ji, 0
  br i1 %.not98.i, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jj = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite99.i = call i64 @fwrite(ptr nonnull @.str.68, i64 31, i64 1, ptr %i.jj) #26 ; 0 uses
  br label %bb.bj

bb.be:                                            ; preds = %gv_calloc.exit117.i
  %.not94.i = icmp eq ptr %i.jg, null
  br i1 %.not94.i, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jk = call i32 @strncasecmp(ptr noundef nonnull %i.jg, ptr noundef nonnull @.str.41, i64 noundef 4) #25
  %.not95.i = icmp eq i32 %i.jk, 0
  br i1 %.not95.i, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  store i32 2, ptr %7, align 8, !tbaa !194
  %i.jl = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not96.i = icmp eq i8 %i.jl, 0
  br i1 %.not96.i, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jm = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite97.i = call i64 @fwrite(ptr nonnull @.str.69, i64 40, i64 1, ptr %i.jm) #26 ; 0 uses
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bf, %bb.be
  store i32 0, ptr %7, align 8, !tbaa !194
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %bb.bg, %bb.bd, %bb.bc
  %i.jn = load i32, ptr %4, align 8, !tbaa !196
  %i.jo = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  switch i32 %i.jn, label %bb.bo [
    i32 15, label %bb.bk
    i32 14, label %bb.bm
  ]

bb.bk:                                            ; preds = %bb.bj
  store i32 1, ptr %i.jo, align 8, !tbaa !197
  %i.jp = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not102.i = icmp eq i8 %i.jp, 0
  br i1 %.not102.i, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jq = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite103.i = call i64 @fwrite(ptr nonnull @.str.70, i64 38, i64 1, ptr %i.jq) #26 ; 0 uses
  br label %bb.bp

bb.bm:                                            ; preds = %bb.bj
  store i32 2, ptr %i.jo, align 8, !tbaa !197
  %i.jr = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not100.i = icmp eq i8 %i.jr, 0
  br i1 %.not100.i, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.js = load ptr, ptr @stderr, align 8, !tbaa !37
  %fwrite101.i = call i64 @fwrite(ptr nonnull @.str.71, i64 36, i64 1, ptr %i.js) #26 ; 0 uses
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj
  store i32 0, ptr %i.jo, align 8, !tbaa !197
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  call void @sepFactor(ptr dead_on_unwind nonnull writable sret(%struct.expand_t) align 8 %8, ptr noundef %1) #21
  %i.jt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ju = load i8, ptr %i.jt, align 16, !tbaa !199, !range !75, !noundef !76
  %i.jv = trunc nuw i8 %i.ju to i1
  %i.jw = load <2 x double>, ptr %8, align 16
  %i.jx = fdiv <2 x double> %i.jw, splat (double 7.200000e+01)
  %i.jy = fmul <2 x double> %i.jx, splat (double 2.000000e+00)
  %i.jz = select i1 %i.jv, <2 x double> %i.jy, <2 x double> splat (double f0x3FBC71C71C71C71C) ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x double> %i.jz, ptr %i.ka, align 8, !tbaa !48
  %i.kb = load i8, ptr @Verbose, align 1, !tbaa !45
  %.not104.i = icmp eq i8 %i.kb, 0
  br i1 %.not104.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kc = load ptr, ptr @stderr, align 8, !tbaa !37
end_hunk_0
