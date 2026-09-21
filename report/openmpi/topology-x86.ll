Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/topology-x86?download=true
inline.NumInlined: 78
inline.NumDeleted: 23
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@summarize:bb.a
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !12 ; 2 uses
  %i.ez = icmp eq i32 %i.ey, -1
  br i1 %i.ez, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph72
  %i.fa = trunc nuw i64 %indvars.iv153 to i32
  br label %.sink.split254

bb.ac:                                            ; preds = %.lr.ph72
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !12
  %i.fd = icmp eq i32 %i.fc, %i.ep
  %i.fe = icmp eq i32 %i.ey, %i.er
  %or.cond434 = and i1 %i.fe, %i.fd
  br i1 %or.cond434, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ff = trunc nuw i64 %indvars.iv153 to i32     ; 2 uses
  %i.fg = call i32 @hwloc_bitmap_set(ptr noundef %i.eu, i32 noundef %i.ff) #21 ; 0 uses
  br label %.sink.split254

.sink.split254:                                   ; preds = %bb.ab, %bb.ad
  %.sink255 = phi i32 [ %i.ff, %bb.ad ], [ %i.fa, %bb.ab ]
  %i.fh = call i32 @hwloc_bitmap_clr(ptr noundef %i.l, i32 noundef %.sink255) #21 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.sink.split254, %bb.ac
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %lftr.wideiv156 = trunc i64 %indvars.iv.next154 to i32
  %exitcond157.not = icmp eq i32 %.56.val.0.val, %lftr.wideiv156
  br i1 %exitcond157.not, label %._crit_edge73, label %.lr.ph72, !llvm.loop !141

._crit_edge73:                                    ; preds = %bb.ae, %bb.aa
  %i.fi = call ptr @hwloc_alloc_setup_object(ptr noundef %.8.val, i32 noundef 19, i32 noundef %i.er) #21 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 184
  store ptr %i.eu, ptr %i.fj, align 8, !tbaa !61
  %i.fk = call ptr @hwloc__insert_object_by_cpuset(ptr noundef %.8.val, ptr noundef null, ptr noundef %i.fi, ptr noundef nonnull @.str.51) #21 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge73, %bb.z
  %i.fl = call i32 @hwloc_bitmap_first(ptr noundef %i.l) #24 ; 2 uses
  %.not417 = icmp eq i32 %i.fl, -1
  br i1 %.not417, label %.loopexit18, label %.lr.ph76

.loopexit18:                                      ; preds = %bb.af, %bb.y, %hwloc_filter_check_keep_object_type.exit439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i32 1, ptr %i.b, align 4, !tbaa !12
  %i.fm = call i32 @hwloc_topology_get_type_filter(ptr noundef %.8.val, i32 noundef 2, ptr noundef nonnull %i.b) #21 ; 0 uses
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !12  ; 2 uses
  %.not.i440 = icmp eq i32 %i.fn, 3
  br i1 %.not.i440, label %bb.ag, label %hwloc_filter_check_keep_object_type.exit441

bb.ag:                                            ; preds = %.loopexit18
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 529, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_filter_check_keep_object_type) #26
  unreachable

hwloc_filter_check_keep_object_type.exit441:      ; preds = %.loopexit18
  %i.fo = icmp ne i32 %i.fn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %or.cond5 = and i1 %i.fo, %i.bc
  br i1 %or.cond5, label %bb.ah, label %.loopexit17

bb.ah:                                            ; preds = %hwloc_filter_check_keep_object_type.exit441
  %i.fp = call i32 @hwloc_bitmap_copy(ptr noundef %i.l, ptr noundef %i.f) #21 ; 0 uses
  %i.fq = call i32 @hwloc_bitmap_first(ptr noundef %i.l) #24 ; 2 uses
  %.not41881 = icmp eq i32 %i.fq, -1
  br i1 %.not41881, label %.loopexit17, label %.lr.ph83

.lr.ph83:                                         ; preds = %bb.ah, %bb.ap
  %i.fr = phi i32 [ %i.gw, %bb.ap ], [ %i.fq, %bb.ah ] ; 3 uses
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %i.fs ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !12
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !12
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !12 ; 3 uses
  %i.ga = icmp eq i32 %i.fz, -1
  br i1 %i.ga, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph83
  %i.gb = call i32 @hwloc_bitmap_clr(ptr noundef %i.l, i32 noundef %i.fr) #21 ; 0 uses
  br label %bb.ap, !llvm.loop !142

bb.aj:                                            ; preds = %.lr.ph83
  %i.gc = call noalias ptr @hwloc_bitmap_alloc() #21 ; 2 uses
  %i.gd = icmp ult i32 %i.fr, %.56.val.0.val
  br i1 %i.gd, label %.lr.ph79, label %._crit_edge80

.lr.ph79:                                         ; preds = %bb.aj, %bb.ao
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %bb.ao ], [ %i.fs, %bb.aj ] ; 4 uses
  %i.ge = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %indvars.iv158 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !12 ; 2 uses
  %i.gh = icmp eq i32 %i.gg, -1
  br i1 %i.gh, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph79
  %i.gi = trunc nuw i64 %indvars.iv158 to i32
  br label %.sink.split256

bb.al:                                            ; preds = %.lr.ph79
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !12
  %i.gl = icmp eq i32 %i.gk, %i.fv
  br i1 %i.gl, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !12
  %i.go = icmp eq i32 %i.gn, %i.fx
  %i.gp = icmp eq i32 %i.gg, %i.fz
  %or.cond435 = and i1 %i.gp, %i.go
  br i1 %or.cond435, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gq = trunc nuw i64 %indvars.iv158 to i32     ; 2 uses
  %i.gr = call i32 @hwloc_bitmap_set(ptr noundef %i.gc, i32 noundef %i.gq) #21 ; 0 uses
  br label %.sink.split256

.sink.split256:                                   ; preds = %bb.ak, %bb.an
  %.sink257 = phi i32 [ %i.gq, %bb.an ], [ %i.gi, %bb.ak ]
  %i.gs = call i32 @hwloc_bitmap_clr(ptr noundef %i.l, i32 noundef %.sink257) #21 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split256, %bb.al, %bb.am
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %lftr.wideiv161 = trunc i64 %indvars.iv.next159 to i32
  %exitcond162.not = icmp eq i32 %.56.val.0.val, %lftr.wideiv161
  br i1 %exitcond162.not, label %._crit_edge80, label %.lr.ph79, !llvm.loop !143

._crit_edge80:                                    ; preds = %bb.ao, %bb.aj
  %i.gt = call ptr @hwloc_alloc_setup_object(ptr noundef %.8.val, i32 noundef 2, i32 noundef %i.fz) #21 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 184
  store ptr %i.gc, ptr %i.gu, align 8, !tbaa !61
  %i.gv = call ptr @hwloc__insert_object_by_cpuset(ptr noundef %.8.val, ptr noundef null, ptr noundef %i.gt, ptr noundef nonnull @.str.52) #21 ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge80, %bb.ai
  %i.gw = call i32 @hwloc_bitmap_first(ptr noundef %i.l) #24 ; 2 uses
  %.not418 = icmp eq i32 %i.gw, -1
  br i1 %.not418, label %.loopexit17, label %.lr.ph83

.loopexit17:                                      ; preds = %bb.ap, %bb.ah, %hwloc_filter_check_keep_object_type.exit441
  br i1 %i.bc, label %.lr.ph85.preheader, label %.preheader14.preheader

.lr.ph85.preheader:                               ; preds = %.loopexit17
  %wide.trip.count166 = zext i32 %.56.val.0.val to i64
  br label %.lr.ph85

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %bb.ar
  %indvars.iv163 = phi i64 [ 0, %.lr.ph85.preheader ], [ %indvars.iv.next164, %bb.ar ] ; 3 uses
  %i.gx = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %indvars.iv163
  %i.gy = load i32, ptr %i.gx, align 8, !tbaa !86
  %.not427 = icmp eq i32 %i.gy, 0
  br i1 %.not427, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph85
  %i.gz = trunc nuw i64 %indvars.iv163 to i32     ; 2 uses
  %i.ha = call ptr @hwloc_alloc_setup_object(ptr noundef %.8.val, i32 noundef 3, i32 noundef %i.gz) #21 ; 2 uses
  %i.hb = call noalias ptr @hwloc_bitmap_alloc() #21 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 184
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !61
  %i.hd = call i32 @hwloc_bitmap_only(ptr noundef %i.hb, i32 noundef %i.gz) #21 ; 0 uses
  %i.he = call ptr @hwloc__insert_object_by_cpuset(ptr noundef %.8.val, ptr noundef null, ptr noundef %i.ha, ptr noundef nonnull @.str.55) #21 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph85, %bb.aq
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next164, %wide.trip.count166
  br i1 %exitcond167.not, label %.preheader14.preheader, label %.lr.ph85, !llvm.loop !144

.preheader14.preheader:                           ; preds = %bb.ar, %.loopexit17
  %wide.trip.count176 = zext i32 %.56.val.0.val to i64
  br label %.preheader14

.preheader14:                                     ; preds = %.preheader14.preheader, %._crit_edge89
  %indvars.iv173 = phi i64 [ 0, %.preheader14.preheader ], [ %indvars.iv.next174, %._crit_edge89 ] ; 2 uses
  %.138292 = phi i32 [ 0, %.preheader14.preheader ], [ %.2383.lcssa, %._crit_edge89 ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %indvars.iv173 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 52
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !91 ; 3 uses
  %.not124 = icmp eq i32 %i.hh, 0
  br i1 %.not124, label %._crit_edge89, label %.lr.ph88

.lr.ph88:                                         ; preds = %.preheader14
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !84 ; 5 uses
  %wide.trip.count171 = zext i32 %i.hh to i64     ; 2 uses
  %xtraiter = and i64 %wide.trip.count171, 3      ; 3 uses
  %i.hk = icmp ult i32 %i.hh, 4
  br i1 %i.hk, label %.epil.preheader, label %.lr.ph88.new

.lr.ph88.new:                                     ; preds = %.lr.ph88
  %unroll_iter = and i64 %wide.trip.count171, 4294967292
  br label %bb.as

.preheader13:                                     ; preds = %._crit_edge89
  %.not419118 = icmp eq i32 %.2383.lcssa, 0
  br i1 %.not419118, label %._crit_edge120, label %.preheader12.preheader

.preheader12.preheader:                           ; preds = %.preheader13
  %wide.trip.count191 = zext i32 %.56.val.0.val to i64
  br label %.preheader12

bb.as:                                            ; preds = %bb.as, %.lr.ph88.new
  %indvars.iv168 = phi i64 [ 0, %.lr.ph88.new ], [ %indvars.iv.next169.3, %bb.as ] ; 5 uses
  %.238387 = phi i32 [ %.138292, %.lr.ph88.new ], [ %spec.select.3, %bb.as ]
  %niter = phi i64 [ 0, %.lr.ph88.new ], [ %niter.next.3, %bb.as ]
  %i.hl = getelementptr inbounds nuw [48 x i8], ptr %i.hj, i64 %indvars.iv168
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !94
  %spec.select = call i32 @llvm.umax.i32(i32 %i.hn, i32 %.238387)
  %i.ho = getelementptr inbounds nuw [48 x i8], ptr %i.hj, i64 %indvars.iv168
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 52
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !94
  %spec.select.1 = call i32 @llvm.umax.i32(i32 %i.hq, i32 %spec.select)
  %i.hr = getelementptr inbounds nuw [48 x i8], ptr %i.hj, i64 %indvars.iv168
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 100
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !94
  %spec.select.2 = call i32 @llvm.umax.i32(i32 %i.ht, i32 %spec.select.1)
  %i.hu = getelementptr inbounds nuw [48 x i8], ptr %i.hj, i64 %indvars.iv168
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 148
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !94
  %spec.select.3 = call i32 @llvm.umax.i32(i32 %i.hw, i32 %spec.select.2) ; 3 uses
  %indvars.iv.next169.3 = add nuw nsw i64 %indvars.iv168, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge89.loopexit.unr-lcssa, label %bb.as, !llvm.loop !145

._crit_edge89.loopexit.unr-lcssa:                 ; preds = %bb.as
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge89, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge89.loopexit.unr-lcssa, %.lr.ph88
  %indvars.iv168.epil.init = phi i64 [ 0, %.lr.ph88 ], [ %indvars.iv.next169.3, %._crit_edge89.loopexit.unr-lcssa ]
  %.238387.epil.init = phi i32 [ %.138292, %.lr.ph88 ], [ %spec.select.3, %._crit_edge89.loopexit.unr-lcssa ]
  %lcmp.mod287 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod287)
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.epil.preheader
  %indvars.iv168.epil = phi i64 [ %indvars.iv168.epil.init, %.epil.preheader ], [ %indvars.iv.next169.epil, %bb.at ] ; 2 uses
  %.238387.epil = phi i32 [ %.238387.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.at ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.at ]
  %i.hx = getelementptr inbounds nuw [48 x i8], ptr %i.hj, i64 %indvars.iv168.epil
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !94
  %spec.select.epil = call i32 @llvm.umax.i32(i32 %i.hz, i32 %.238387.epil) ; 2 uses
  %indvars.iv.next169.epil = add nuw nsw i64 %indvars.iv168.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge89, label %bb.at, !llvm.loop !146

._crit_edge89:                                    ; preds = %._crit_edge89.loopexit.unr-lcssa, %bb.at, %.preheader14
  %.2383.lcssa = phi i32 [ %.138292, %.preheader14 ], [ %spec.select.3, %._crit_edge89.loopexit.unr-lcssa ], [ %spec.select.epil, %bb.at ] ; 3 uses
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %exitcond177.not = icmp eq i64 %indvars.iv.next174, %wide.trip.count176
  br i1 %exitcond177.not, label %.preheader13, label %.preheader14, !llvm.loop !147

.preheader12:                                     ; preds = %.preheader12.preheader, %hwloc_cache_type_by_depth_type.exit.thread.thread
  %.4119 = phi i32 [ %i.mx, %hwloc_cache_type_by_depth_type.exit.thread.thread ], [ %.2383.lcssa, %.preheader12.preheader ] ; 8 uses
  %i.ia = icmp ult i32 %.4119, 6
  %i.ib = add nuw nsw i32 %.4119, 3
  %i.ic = icmp ult i32 %.4119, 4
  %i.id = or disjoint i32 %.4119, 8
  br label %bb.au

bb.au:                                            ; preds = %.preheader12, %hwloc_cache_type_by_depth_type.exit.thread
  %.0376117 = phi i32 [ 0, %.preheader12 ], [ %i.mw, %hwloc_cache_type_by_depth_type.exit.thread ] ; 4 uses
  %i.ie = icmp eq i32 %.0376117, 2
  br i1 %i.ie, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  br i1 %i.ic, label %hwloc_cache_type_by_depth_type.exit, label %hwloc_cache_type_by_depth_type.exit.thread.thread

bb.aw:                                            ; preds = %bb.au
  br i1 %i.ia, label %hwloc_cache_type_by_depth_type.exit, label %hwloc_cache_type_by_depth_type.exit.thread

hwloc_cache_type_by_depth_type.exit:              ; preds = %bb.aw, %bb.av
  %.0.i442 = phi i32 [ %i.id, %bb.av ], [ %i.ib, %bb.aw ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 1, ptr %i.a, align 4, !tbaa !12
  %i.if = call i32 @hwloc_topology_get_type_filter(ptr noundef %.8.val, i32 noundef range(i32 0, -1) %.0.i442, ptr noundef nonnull %i.a) #21 ; 0 uses
  %i.ig = load i32, ptr %i.a, align 4, !tbaa !12  ; 2 uses
  %.not.i443 = icmp eq i32 %i.ig, 3
  br i1 %.not.i443, label %bb.ax, label %hwloc_filter_check_keep_object_type.exit444

bb.ax:                                            ; preds = %hwloc_cache_type_by_depth_type.exit
  call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i32 noundef 529, ptr noundef nonnull @__PRETTY_FUNCTION__.hwloc_filter_check_keep_object_type) #26
  unreachable

hwloc_filter_check_keep_object_type.exit444:      ; preds = %hwloc_cache_type_by_depth_type.exit
  %.not = icmp eq i32 %i.ig, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not, label %hwloc_cache_type_by_depth_type.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %hwloc_filter_check_keep_object_type.exit444
  %i.ih = call i32 @hwloc_bitmap_copy(ptr noundef %i.l, ptr noundef %i.f) #21 ; 0 uses
  %i.ii = call i32 @hwloc_bitmap_first(ptr noundef %i.l) #24 ; 2 uses
  %.not422116 = icmp eq i32 %i.ii, -1
  br i1 %.not422116, label %hwloc_cache_type_by_depth_type.exit.thread, label %.preheader11

.preheader11:                                     ; preds = %bb.ay, %bb.bq
  %i.ij = phi i32 [ %i.mv, %bb.bq ], [ %i.ii, %bb.ay ] ; 4 uses
  %i.ik = zext i32 %i.ij to i64                   ; 2 uses
  %i.il = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %i.ik ; 5 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 52
  %i.in = load i32, ptr %i.im, align 4, !tbaa !91 ; 3 uses
  %.not125 = icmp eq i32 %i.in, 0
  br i1 %.not125, label %._crit_edge96, label %.lr.ph95

.lr.ph95:                                         ; preds = %.preheader11
  %i.io = getelementptr inbounds nuw i8, ptr %i.il, i64 56
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !84
  %wide.trip.count181 = zext i32 %i.in to i64
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph95, %bb.bb
  %indvars.iv178 = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next179, %bb.bb ] ; 3 uses
  %i.iq = getelementptr inbounds nuw [48 x i8], ptr %i.ip, i64 %indvars.iv178 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !94
  %i.it = icmp eq i32 %i.is, %.4119
  br i1 %i.it, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.iu = load i32, ptr %i.iq, align 8, !tbaa !93
  %i.iv = icmp eq i32 %i.iu, %.0376117
  br i1 %i.iv, label %._crit_edge96.loopexit, label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge96.thread, label %bb.az, !llvm.loop !148

._crit_edge96.loopexit:                           ; preds = %bb.ba
  %i.iw = trunc nuw i64 %indvars.iv178 to i32
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit, %.preheader11
  %.0384.lcssa = phi i32 [ 0, %.preheader11 ], [ %i.iw, %._crit_edge96.loopexit ] ; 3 uses
  %i.ix = icmp eq i32 %.0384.lcssa, %i.in
  br i1 %i.ix, label %._crit_edge96.thread, label %bb.bc

._crit_edge96.thread:                             ; preds = %bb.bb, %._crit_edge96
  %i.iy = call i32 @hwloc_bitmap_clr(ptr noundef %i.l, i32 noundef %i.ij) #21 ; 0 uses
  br label %bb.bq, !llvm.loop !149

bb.bc:                                            ; preds = %._crit_edge96
  %i.iz = call noalias ptr @hwloc_bitmap_alloc() #21 ; 4 uses
  %i.ja = call i32 @hwloc_bitmap_set(ptr noundef %i.iz, i32 noundef %i.ij) #21 ; 0 uses
  %i.jb = call i32 @hwloc_get_type_depth(ptr noundef %.8.val, i32 noundef range(i32 0, -1) %.0.i442) #21 ; 2 uses
  %or.cond.i445 = icmp ugt i32 %i.jb, -3
  br i1 %or.cond.i445, label %.loopexit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jc = call ptr @hwloc_get_obj_by_depth(ptr noundef readonly %.8.val, i32 noundef range(i32 0, -2) %i.jb, i32 noundef 0) #24 ; 2 uses
  %.not.i.i446 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i446, label %.loopexit, label %.preheader.i.i447

.preheader.i.i447:                                ; preds = %bb.bd, %bb.be
  %.01.i.i448 = phi ptr [ %i.jh, %bb.be ], [ %i.jc, %bb.bd ] ; 6 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.01.i.i448, i64 184
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !61
  %i.jf = call i32 @hwloc_bitmap_intersects(ptr noundef readonly %i.iz, ptr noundef %i.je) #24
  %.not12.i.i449 = icmp eq i32 %i.jf, 0
  br i1 %.not12.i.i449, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.preheader.i.i447
  %i.jg = getelementptr inbounds nuw i8, ptr %.01.i.i448, i64 56
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !155 ; 2 uses
  %.not11.i.i451 = icmp eq ptr %i.jh, null
  br i1 %.not11.i.i451, label %.loopexit, label %.preheader.i.i447, !llvm.loop !132

bb.bf:                                            ; preds = %.preheader.i.i447
  %i.ji = getelementptr inbounds nuw i8, ptr %.01.i.i448, i64 184
  call void @hwloc_bitmap_free(ptr noundef %i.iz) #21
  %i.jj = getelementptr inbounds nuw i8, ptr %.01.i.i448, i64 224
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !157 ; 2 uses
  %.not.i453 = icmp eq i32 %i.jk, 0
  br i1 %.not.i453, label %hwloc_obj_get_info_by_name.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bf
  %i.jl = getelementptr inbounds nuw i8, ptr %.01.i.i448, i64 216
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !158
  %wide.trip.count.i = zext i32 %i.jk to i64
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bh
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %hwloc_obj_get_info_by_name.exit.thread, label %bb.bh, !llvm.loop !150

bb.bh:                                            ; preds = %bb.bg, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.bg ] ; 2 uses
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.jm, i64 %indvars.iv.i ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !82
  %i.jp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.jo, ptr noundef nonnull dereferenceable(10) @.str.56) #24
  %.not.not.i = icmp eq i32 %i.jp, 0
  br i1 %.not.not.i, label %hwloc_obj_get_info_by_name.exit, label %bb.bg

hwloc_obj_get_info_by_name.exit:                  ; preds = %bb.bh
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !83
  %.not425 = icmp eq ptr %i.jr, null
  br i1 %.not425, label %hwloc_obj_get_info_by_name.exit.thread, label %bb.bi

hwloc_obj_get_info_by_name.exit.thread:           ; preds = %bb.bg, %bb.bf, %hwloc_obj_get_info_by_name.exit
  %i.js = getelementptr inbounds nuw i8, ptr %i.il, i64 56
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !84
  %i.ju = zext i32 %.0384.lcssa to i64
  %i.jv = getelementptr inbounds nuw [48 x i8], ptr %i.jt, i64 %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 24
  %i.jx = load i32, ptr %i.jw, align 8, !tbaa !98
  %.not426 = icmp eq i32 %i.jx, 0
  %i.jy = select i1 %.not426, ptr @.str.58, ptr @.str.57
  %i.jz = call i32 @hwloc_obj_add_info(ptr noundef nonnull %.01.i.i448, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.jy) #21 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %hwloc_obj_get_info_by_name.exit.thread, %hwloc_obj_get_info_by_name.exit
  %i.ka = load ptr, ptr %i.ji, align 8, !tbaa !61
  %i.kb = call i32 @hwloc_bitmap_andnot(ptr noundef %i.l, ptr noundef %i.l, ptr noundef %i.ka) #21 ; 0 uses
  br label %bb.bq

.loopexit:                                        ; preds = %bb.be, %bb.bc, %bb.bd
  call void @hwloc_bitmap_free(ptr noundef %i.iz) #21
  %i.kc = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.kd = load i32, ptr %i.kc, align 8, !tbaa !12
  %i.ke = getelementptr inbounds nuw i8, ptr %i.il, i64 56 ; 6 uses
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !84
  %i.kg = zext i32 %.0384.lcssa to i64            ; 6 uses
  %i.kh = getelementptr inbounds nuw [48 x i8], ptr %i.kf, i64 %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 12
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !99
  %i.kk = call noalias ptr @hwloc_bitmap_alloc() #21 ; 2 uses
  %i.kl = icmp ult i32 %i.ij, %.56.val.0.val
  br i1 %i.kl, label %.preheader, label %._crit_edge115

.preheader:                                       ; preds = %.loopexit, %bb.bp
  %indvars.iv188 = phi i64 [ %indvars.iv.next189, %bb.bp ], [ %i.ik, %.loopexit ] ; 4 uses
  %i.km = getelementptr inbounds nuw [152 x i8], ptr %0, i64 %indvars.iv188 ; 4 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 52
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !91 ; 3 uses
  %.not126 = icmp eq i32 %i.ko, 0
  br i1 %.not126, label %._crit_edge106, label %.lr.ph105

.lr.ph105:                                        ; preds = %.preheader
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !84
  %wide.trip.count186 = zext i32 %i.ko to i64
  br label %bb.bj

bb.bj:                                            ; preds = %.lr.ph105, %bb.bl
  %indvars.iv183 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next184, %bb.bl ] ; 3 uses
  %i.kr = getelementptr inbounds nuw [48 x i8], ptr %i.kq, i64 %indvars.iv183 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !94
  %i.ku = icmp eq i32 %i.kt, %.4119
  br i1 %i.ku, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.kv = load i32, ptr %i.kr, align 8, !tbaa !93
  %i.kw = icmp eq i32 %i.kv, %.0376117
  br i1 %i.kw, label %._crit_edge106.loopexit, label %bb.bl

bb.bl:                                            ; preds = %bb.bj, %bb.bk
  %indvars.iv.next184 = add nuw nsw i64 %indvars.iv183, 1 ; 2 uses
  %exitcond187.not = icmp eq i64 %indvars.iv.next184, %wide.trip.count186
  br i1 %exitcond187.not, label %._crit_edge106.thread, label %bb.bj, !llvm.loop !151

._crit_edge106.loopexit:                          ; preds = %bb.bk
  %i.kx = trunc nuw i64 %indvars.iv183 to i32
  br label %._crit_edge106

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.kx, %._crit_edge106.loopexit ] ; 2 uses
  %i.ky = icmp eq i32 %.0.lcssa, %i.ko
  br i1 %i.ky, label %._crit_edge106.thread, label %bb.bm

._crit_edge106.thread:                            ; preds = %bb.bl, %._crit_edge106
  %i.kz = trunc nuw i64 %indvars.iv188 to i32
  br label %.sink.split258

bb.bm:                                            ; preds = %._crit_edge106
  %i.la = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.lb = load i32, ptr %i.la, align 8, !tbaa !12
  %i.lc = icmp eq i32 %i.lb, %i.kd
  br i1 %i.lc, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.ld = getelementptr inbounds nuw i8, ptr %i.km, i64 56
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !84
  %i.lf = zext i32 %.0.lcssa to i64
  %i.lg = getelementptr inbounds nuw [48 x i8], ptr %i.le, i64 %i.lf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !99
  %i.lj = icmp eq i32 %i.li, %i.kj
  br i1 %i.lj, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.lk = trunc nuw i64 %indvars.iv188 to i32     ; 2 uses
  %i.ll = call i32 @hwloc_bitmap_set(ptr noundef %i.kk, i32 noundef %i.lk) #21 ; 0 uses
  br label %.sink.split258

.sink.split258:                                   ; preds = %._crit_edge106.thread, %bb.bo
  %.sink259 = phi i32 [ %i.lk, %bb.bo ], [ %i.kz, %._crit_edge106.thread ]
  %i.lm = call i32 @hwloc_bitmap_clr(ptr noundef %i.l, i32 noundef %.sink259) #21 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %.sink.split258, %bb.bm, %bb.bn
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next189, %wide.trip.count191
  br i1 %exitcond192.not, label %._crit_edge115, label %.preheader, !llvm.loop !152

._crit_edge115:                                   ; preds = %bb.bp, %.loopexit
  %i.ln = call ptr @hwloc_alloc_setup_object(ptr noundef %.8.val, i32 noundef %.0.i442, i32 noundef -1) #21 ; 4 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 40 ; 5 uses
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !101
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 8
  store i32 %.4119, ptr %i.lq, align 8, !tbaa !29
  %i.lr = load ptr, ptr %i.ke, align 8, !tbaa !84
  %i.ls = getelementptr inbounds nuw [48 x i8], ptr %i.lr, i64 %i.kg
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 40
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !97
  %i.lv = load ptr, ptr %i.lo, align 8, !tbaa !101
  store i64 %i.lu, ptr %i.lv, align 8, !tbaa !29
  %i.lw = load ptr, ptr %i.ke, align 8, !tbaa !84
  %i.lx = getelementptr inbounds nuw [48 x i8], ptr %i.lw, i64 %i.kg
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  %i.lz = load i32, ptr %i.ly, align 8, !tbaa !95
  %i.ma = load ptr, ptr %i.lo, align 8, !tbaa !101
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  store i32 %i.lz, ptr %i.mb, align 4, !tbaa !29
  %i.mc = load ptr, ptr %i.ke, align 8, !tbaa !84
  %i.md = getelementptr inbounds nuw [48 x i8], ptr %i.mc, i64 %i.kg
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 28
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !96
  %i.mg = load ptr, ptr %i.lo, align 8, !tbaa !101
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  store i32 %i.mf, ptr %i.mh, align 8, !tbaa !29
  %i.mi = load ptr, ptr %i.ke, align 8, !tbaa !84
  %i.mj = getelementptr inbounds nuw [48 x i8], ptr %i.mi, i64 %i.kg
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !93
  %i.ml = load ptr, ptr %i.lo, align 8, !tbaa !101
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 20
  store i32 %i.mk, ptr %i.mm, align 4, !tbaa !29
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ln, i64 184
  store ptr %i.kk, ptr %i.mn, align 8, !tbaa !61
  %i.mo = load ptr, ptr %i.ke, align 8, !tbaa !84
  %i.mp = getelementptr inbounds nuw [48 x i8], ptr %i.mo, i64 %i.kg
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 24
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !98
  %.not424 = icmp eq i32 %i.mr, 0
  %i.ms = select i1 %.not424, ptr @.str.58, ptr @.str.57
  %i.mt = call i32 @hwloc_obj_add_info(ptr noundef %i.ln, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.ms) #21 ; 0 uses
  %i.mu = call ptr @hwloc__insert_object_by_cpuset(ptr noundef %.8.val, ptr noundef null, ptr noundef %i.ln, ptr noundef nonnull @.str.59) #21 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bi, %._crit_edge115, %._crit_edge96.thread
  %i.mv = call i32 @hwloc_bitmap_first(ptr noundef %i.l) #24 ; 2 uses
  %.not422 = icmp eq i32 %i.mv, -1
  br i1 %.not422, label %hwloc_cache_type_by_depth_type.exit.thread, label %.preheader11

hwloc_cache_type_by_depth_type.exit.thread:       ; preds = %bb.bq, %bb.ay, %bb.aw, %hwloc_filter_check_keep_object_type.exit444
  %i.mw = add nuw nsw i32 %.0376117, 1            ; 2 uses
  %exitcond193.not = icmp eq i32 %i.mw, 3
  br i1 %exitcond193.not, label %hwloc_cache_type_by_depth_type.exit.thread.thread, label %bb.au, !llvm.loop !153

hwloc_cache_type_by_depth_type.exit.thread.thread: ; preds = %bb.av, %hwloc_cache_type_by_depth_type.exit.thread
  %i.mx = add i32 %.4119, -1                      ; 2 uses
  %.not419 = icmp eq i32 %i.mx, 0
  br i1 %.not419, label %._crit_edge120, label %.preheader12, !llvm.loop !154

._crit_edge120:                                   ; preds = %hwloc_cache_type_by_depth_type.exit.thread.thread, %.preheader13
  call void @hwloc_bitmap_free(ptr noundef %i.l) #21
  call void @hwloc_bitmap_free(ptr noundef %i.f) #21
  br i1 %.2, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %._crit_edge120
  %i.my = getelementptr inbounds nuw i8, ptr %.8.val, i64 648
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !54
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  store i8 1, ptr %i.na, align 1, !tbaa !159
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge120, %bb.br, %._crit_edge.thread
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isset(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @hwloc_bitmap_only(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #15

declare i32 @hwloc_bitmap_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @hwloc_internal_cpukinds_register(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @read_intel_cores_exttopoenum(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 11, 32) %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %.not.i = icmp eq ptr %2, null                  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  br i1 %.not.i, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.c = call { i32, i64, i32, i32 } asm "mov %rbx,$2\0A\09cpuid\0A\09xchg $2,%rbx\0A\09movl ${2:k},$1\0A\09", "={ax},=*m,=&r,={cx},=&{dx},0,3,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.a, i32 %1, i32 0) #21, !srcloc !76 ; 2 uses
  %i.d = extractvalue { i32, i64, i32, i32 } %i.c, 0 ; 2 uses
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load i32, ptr %i.a, align 4
  %i.g = icmp ne i32 %i.f, 0
  %or.cond.us113 = select i1 %i.e, i1 true, i1 %i.g
  br i1 %or.cond.us113, label %cpuid_or_from_dump.exit.us, label %.split108.us

cpuid_or_from_dump.exit.us:                       ; preds = %.split.us, %cpuid_or_from_dump.exit.us
  %i.h = phi i32 [ %i.k, %cpuid_or_from_dump.exit.us ], [ %i.d, %.split.us ]
  %.058.us114 = phi i32 [ %i.i, %cpuid_or_from_dump.exit.us ], [ 0, %.split.us ]
  %i.i = add i32 %.058.us114, 1                   ; 3 uses
  %i.j = call { i32, i64, i32, i32 } asm "mov %rbx,$2\0A\09cpuid\0A\09xchg $2,%rbx\0A\09movl ${2:k},$1\0A\09", "={ax},=*m,=&r,={cx},=&{dx},0,3,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.a, i32 %1, i32 %i.i) #21, !srcloc !76 ; 2 uses
  %i.k = extractvalue { i32, i64, i32, i32 } %i.j, 0 ; 2 uses
  %i.l = icmp ne i32 %i.k, 0
  %i.m = load i32, ptr %i.a, align 4
  %i.n = icmp ne i32 %i.m, 0
  %or.cond.us = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond.us, label %cpuid_or_from_dump.exit.us, label %cpuid_or_from_dump.exit.us..split108.us_crit_edge

cpuid_or_from_dump.exit.us..split108.us_crit_edge: ; preds = %cpuid_or_from_dump.exit.us
  %i.o = and i32 %i.h, 31
  br label %.split108.us

.split108.us:                                     ; preds = %cpuid_or_from_dump.exit.us..split108.us_crit_edge, %.split.us
  %.lcssa112 = phi { i32, i64, i32, i32 } [ %i.j, %cpuid_or_from_dump.exit.us..split108.us_crit_edge ], [ %i.c, %.split.us ]
  %.058.lcssa.us = phi i32 [ %i.i, %cpuid_or_from_dump.exit.us..split108.us_crit_edge ], [ 0, %.split.us ]
  %.0.lcssa.us = phi i32 [ %i.o, %cpuid_or_from_dump.exit.us..split108.us_crit_edge ], [ 0, %.split.us ]
  %i.p = extractvalue { i32, i64, i32, i32 } %.lcssa112, 3
  br label %.split108

.split:                                           ; preds = %bb.a, %bb.k
  %i.q = phi i32 [ %i.ap, %bb.k ], [ undef, %bb.a ] ; 2 uses
  %.099 = phi i32 [ %storemerge.i, %bb.k ], [ undef, %bb.a ] ; 2 uses
  %.058 = phi i32 [ %i.at, %bb.k ], [ 0, %bb.a ]  ; 4 uses
  %.0 = phi i32 [ %i.as, %bb.k ], [ 0, %bb.a ]
  %i.r = load i32, ptr %2, align 8, !tbaa !65     ; 2 uses
  %.not42.i.i = icmp eq i32 %i.r, 0
  br i1 %.not42.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !66
  %wide.trip.count.i.i = zext i32 %i.r to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.j ] ; 2 uses
  %i.t = getelementptr inbounds nuw [36 x i8], ptr %i.s, i64 %indvars.iv.i.i ; 8 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !68   ; 4 uses
  %i.v = and i32 %i.u, 1
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !69
  %.not34.i.i = icmp eq i32 %1, %i.x
  br i1 %.not34.i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = and i32 %i.u, 2
  %.not35.i.i = icmp eq i32 %i.y, 0
  br i1 %.not35.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !70
  %.not36.i.i = icmp eq i32 %i.q, %i.aa
  br i1 %.not36.i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = and i32 %i.u, 4
  %.not37.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not37.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 12
end_hunk_0
