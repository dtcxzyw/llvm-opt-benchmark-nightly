Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/combine-diff?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@diff_tree_combined:bb.a
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.ek
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !260 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !270 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 80
  %i.gc = load i16, ptr %i.gb, align 8, !tbaa !269
  %i.gd = zext i16 %i.gc to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !73
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 26
  %i.gg = load i8, ptr %i.gf, align 2, !tbaa !271 ; 2 uses
  store i8 %i.gg, ptr %i.fo, align 8, !tbaa !75
  br i1 %.not90.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  switch i8 %i.gg, label %bb.ag [
    i8 82, label %bb.af
    i8 67, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !268
  %i.gj = call ptr @xstrdup(ptr noundef %i.gi) #16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !76
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.gl = add nsw i32 %.1103.i.i, 1
  br label %thread-pre-split.i.i, !llvm.loop !221

intersect_paths.exit.i:                           ; preds = %thread-pre-split.i.i, %bb.y, %bb.u, %.preheader.i.i, %.preheader98.i.i
  %.0..0..0..0..0..0..0..078.i.i = load ptr, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gm = load i32, ptr %i.aw, align 8, !tbaa !28
  %i.gn = icmp ne i32 %i.gm, 2048
  %or.cond3.i = select i1 %i.gn, i1 %i.bd, i1 false
  br i1 %or.cond3.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %intersect_paths.exit.i
  call void @diffcore_order(ptr noundef nonnull %i.ay) #16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %intersect_paths.exit.i
  call void @diff_flush(ptr noundef nonnull %4) #16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i, label %find_paths_generic.exit, label %bb.s, !llvm.loop !222

find_paths_generic.exit:                          ; preds = %bb.ai, %.critedge146
  %.034.lcssa.i = phi ptr [ null, %.critedge146 ], [ %.0..0..0..0..0..0..0..078.i.i, %bb.ai ]
  store i32 %i.ax, ptr %i.aw, align 8, !tbaa !28
  store ptr %i.ay, ptr %4, align 8, !tbaa !254
  br label %bb.ap

bb.aj:                                            ; preds = %bb.r
  %i.go = call fastcc ptr @find_paths_multitree(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %4) ; 2 uses
  %i.gp = load i32, ptr %i.an, align 8, !tbaa !252
  %i.gq = and i32 %i.gp, 16
  %.not132 = icmp eq i32 %i.gq, 0
  br i1 %.not132, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gr = call fastcc ptr @combined_objfind(ptr noundef nonnull %i.b, ptr noundef %i.go, i32 noundef %i.e)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0106 = phi ptr [ %i.gr, %bb.ak ], [ %i.go, %bb.aj ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 1800
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !28
  %i.gu = and i32 %i.gt, 110                      ; 2 uses
  %.not133 = icmp eq i32 %i.gu, 0
  br i1 %.not133, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 280
  store i32 %i.gu, ptr %i.gv, align 8, !tbaa !28
  %i.gw = load ptr, ptr %1, align 8, !tbaa !125
  call void @diff_tree_oid(ptr noundef %i.gw, ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #16
  call void @diffcore_std(ptr noundef nonnull %4) #16
  %i.gx = load ptr, ptr %i.b, align 8, !tbaa !254 ; 2 uses
  %.not134 = icmp eq ptr %i.gx, null
  br i1 %.not134, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @diffcore_order(ptr noundef nonnull %i.gx) #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  call void @diff_flush(ptr noundef nonnull %4) #16
  br label %bb.ap

bb.ap:                                            ; preds = %bb.al, %bb.ao, %find_paths_generic.exit
  %.1107 = phi ptr [ %.034.lcssa.i, %find_paths_generic.exit ], [ %.0106, %bb.ao ], [ %.0106, %bb.al ] ; 4 uses
  %.not135159 = icmp eq ptr %.1107, null
  br i1 %.not135159, label %._crit_edge187, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ap, %.lr.ph
  %.0104161 = phi i32 [ %i.gy, %.lr.ph ], [ 0, %bb.ap ] ; 5 uses
  %.0109160 = phi ptr [ %i.gz, %.lr.ph ], [ %.1107, %bb.ap ]
  %i.gy = add nuw nsw i32 %.0104161, 1            ; 6 uses
  %i.gz = load ptr, ptr %.0109160, align 8, !tbaa !127 ; 2 uses
  %.not135 = icmp eq ptr %i.gz, null
  br i1 %.not135, label %._crit_edge, label %.lr.ph, !llvm.loop !223

._crit_edge:                                      ; preds = %.lr.ph
  %i.ha = load ptr, ptr %i.b, align 8, !tbaa !254
  %.not226 = icmp eq ptr %i.ha, null
  br i1 %.not226, label %bb.aq, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %._crit_edge
  %i.hb = zext nneg i32 %i.gy to i64
  %i.hc = shl nuw nsw i64 %i.hb, 4
  %i.hd = call ptr @xmalloc(i64 noundef %i.hc) #16 ; 10 uses
  br label %.lr.ph165

.lr.ph165:                                        ; preds = %.lr.ph165.preheader, %.lr.ph165
  %indvars.iv = phi i64 [ 0, %.lr.ph165.preheader ], [ %indvars.iv.next, %.lr.ph165 ] ; 2 uses
  %.1110163 = phi ptr [ %.1107, %.lr.ph165.preheader ], [ %i.hf, %.lr.ph165 ] ; 2 uses
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv
  store ptr %.1110163, ptr %i.he, align 8, !tbaa !273
  %i.hf = load ptr, ptr %.1110163, align 8, !tbaa !127 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not136 = icmp eq ptr %i.hf, null
  br i1 %.not136, label %._crit_edge166, label %.lr.ph165, !llvm.loop !224

._crit_edge166:                                   ; preds = %.lr.ph165
  %i.hg = load ptr, ptr %i.b, align 8, !tbaa !254
  call void @order_objects(ptr noundef %i.hg, ptr noundef nonnull @path_path, ptr noundef nonnull %i.hd, i32 noundef %i.gy) #16
  %.not227 = icmp eq i32 %.0104161, 0
  %.pre201 = load ptr, ptr %i.hd, align 8, !tbaa !273 ; 3 uses
  br i1 %.not227, label %._crit_edge170, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %._crit_edge166
  %wide.trip.count = zext nneg i32 %.0104161 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.hh = icmp samesign ult i32 %.0104161, 4
  br i1 %i.hh, label %.lr.ph169.epil.preheader, label %.lr.ph169.preheader.new

.lr.ph169.preheader.new:                          ; preds = %.lr.ph169.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph169

.lr.ph169:                                        ; preds = %.lr.ph169, %.lr.ph169.preheader.new
  %i.hi = phi ptr [ %.pre201, %.lr.ph169.preheader.new ], [ %i.ht, %.lr.ph169 ]
  %indvars.iv193 = phi i64 [ 0, %.lr.ph169.preheader.new ], [ %indvars.iv.next194.3, %.lr.ph169 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph169.preheader.new ], [ %niter.next.3, %.lr.ph169 ]
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv193
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !273 ; 2 uses
  store ptr %i.hl, ptr %i.hi, align 8, !tbaa !127
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv193
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !273 ; 2 uses
  store ptr %i.ho, ptr %i.hl, align 8, !tbaa !127
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv193
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !273 ; 2 uses
  store ptr %i.hr, ptr %i.ho, align 8, !tbaa !127
  %indvars.iv.next194.3 = add nuw nsw i64 %indvars.iv193, 4 ; 3 uses
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv.next194.3
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !273 ; 3 uses
  store ptr %i.ht, ptr %i.hr, align 8, !tbaa !127
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge170.loopexit.unr-lcssa, label %.lr.ph169, !llvm.loop !225

._crit_edge170.loopexit.unr-lcssa:                ; preds = %.lr.ph169
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge170, label %.lr.ph169.epil.preheader

.lr.ph169.epil.preheader:                         ; preds = %._crit_edge170.loopexit.unr-lcssa, %.lr.ph169.preheader
  %.epil.init = phi ptr [ %.pre201, %.lr.ph169.preheader ], [ %i.ht, %._crit_edge170.loopexit.unr-lcssa ]
  %indvars.iv193.epil.init = phi i64 [ 0, %.lr.ph169.preheader ], [ %indvars.iv.next194.3, %._crit_edge170.loopexit.unr-lcssa ]
  %lcmp.mod236 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod236)
  br label %.lr.ph169.epil

.lr.ph169.epil:                                   ; preds = %.lr.ph169.epil, %.lr.ph169.epil.preheader
  %i.hu = phi ptr [ %.epil.init, %.lr.ph169.epil.preheader ], [ %i.hw, %.lr.ph169.epil ]
  %indvars.iv193.epil = phi i64 [ %indvars.iv193.epil.init, %.lr.ph169.epil.preheader ], [ %indvars.iv.next194.epil, %.lr.ph169.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph169.epil.preheader ], [ %epil.iter.next, %.lr.ph169.epil ]
  %indvars.iv.next194.epil = add nuw nsw i64 %indvars.iv193.epil, 1 ; 2 uses
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv.next194.epil
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !273 ; 2 uses
  store ptr %i.hw, ptr %i.hu, align 8, !tbaa !127
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge170, label %.lr.ph169.epil, !llvm.loop !226

._crit_edge170:                                   ; preds = %._crit_edge170.loopexit.unr-lcssa, %.lr.ph169.epil, %._crit_edge166
  %i.hx = zext nneg i32 %.0104161 to i64
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %i.hx
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !273
  store ptr null, ptr %i.hz, align 8, !tbaa !127
  call void @free(ptr noundef nonnull %i.hd) #16
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge, %._crit_edge170
  %.2108215 = phi ptr [ %.pre201, %._crit_edge170 ], [ %.1107, %._crit_edge ] ; 10 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %2, i64 1800 ; 3 uses
  %i.ib = load i32, ptr %i.ia, align 8, !tbaa !28 ; 3 uses
  %i.ic = and i32 %i.ib, 769
  %.not137 = icmp eq i32 %i.ic, 0
  br i1 %.not137, label %bb.ar, label %.preheader

.preheader:                                       ; preds = %bb.aq
  %.not140172 = icmp eq ptr %.2108215, null
  br i1 %.not140172, label %.loopexit156.thread, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader, %.lr.ph174
  %.2111173 = phi ptr [ %i.id, %.lr.ph174 ], [ %.2108215, %.preheader ] ; 2 uses
  call fastcc void @show_raw_diff(ptr noundef nonnull %.2111173, i32 noundef %i.e, ptr noundef nonnull %2)
  %i.id = load ptr, ptr %.2111173, align 8, !tbaa !127 ; 2 uses
  %.not140 = icmp eq ptr %i.id, null
  br i1 %.not140, label %.loopexit156, label %.lr.ph174, !llvm.loop !227

bb.ar:                                            ; preds = %bb.aq
  %i.ie = and i32 %i.ib, 110
  %.not138 = icmp eq i32 %i.ie, 0
  br i1 %.not138, label %bb.as, label %.loopexit156

bb.as:                                            ; preds = %bb.ar
  %i.if = and i32 %i.ib, 4096
  %.not139 = icmp eq i32 %i.if, 0
  br i1 %.not139, label %.loopexit156, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.ig = zext nneg i32 %i.gy to i64              ; 2 uses
  %i.ih = call ptr @xcalloc(i64 noundef %i.ig, i64 noundef 8) #16 ; 3 uses
  store ptr %i.ih, ptr %3, align 8, !tbaa !258
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.gy, ptr %i.ii, align 8, !tbaa !274
  %i.ij = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.gy, ptr %i.ij, align 4, !tbaa !257
  %.not16.i = icmp eq ptr %.2108215, null
  br i1 %.not16.i, label %.lr.ph23.preheader.i, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %bb.at
  %sext = shl i64 %i.d, 32
  %i.ik = ashr exact i64 %sext, 32                ; 4 uses
  %i.il = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ik, i64 1) ; 2 uses
  %i.im = extractvalue { i64, i1 } %i.il, 1
  %i.in = extractvalue { i64, i1 } %i.il, 0       ; 2 uses
  %wide.trip.count.i.i148 = and i64 %i.d, 4294967295
  br i1 %i.im, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i147
  %i.io = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16 ; 0 uses
  call void (ptr, ...) @die(ptr noundef nonnull @.str.49, i64 noundef %i.ik, i64 noundef 1) #17
  unreachable

.lr.ph.split.i:                                   ; preds = %.lr.ph.i147
  %i.ip = icmp sgt i32 %i.e, 0
  br i1 %i.ip, label %st_add.exit.i.us.i, label %st_add.exit.i.i

st_add.exit.i.us.i:                               ; preds = %.lr.ph.split.i, %._crit_edge.loopexit.i.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %._crit_edge.loopexit.i.us.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.01517.us20.i = phi ptr [ %i.lf, %._crit_edge.loopexit.i.us.i ], [ %.2108215, %.lr.ph.split.i ] ; 6 uses
  %i.iq = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16 ; 7 uses
  %i.ir = call ptr @xcalloc(i64 noundef %i.in, i64 noundef 96) #16 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 96
  store ptr %i.is, ptr %i.iq, align 8, !tbaa !270
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 8 ; 3 uses
  store ptr %i.ir, ptr %i.it, align 8, !tbaa !265
  %i.iu = getelementptr inbounds nuw i8, ptr %.01517.us20.i, i64 8 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %.01517.us20.i, i64 56
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %st_add.exit.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %st_add.exit.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.au ] ; 5 uses
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !77
  %i.ix = load ptr, ptr %i.iq, align 8, !tbaa !270
  %i.iy = getelementptr inbounds nuw [96 x i8], ptr %i.ix, i64 %indvars.iv.i.us.i ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 40
  store ptr %i.iw, ptr %i.iz, align 8, !tbaa !268
  %i.ja = getelementptr inbounds nuw [56 x i8], ptr %i.iv, i64 %indvars.iv.i.us.i ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !73
  %i.jd = trunc i32 %i.jc to i16
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 80
  store i16 %i.jd, ptr %i.je, align 8, !tbaa !269
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.iy, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.jf, i64 32, i1 false)
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ja, i64 40
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !128
  %i.ji = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  store i32 %i.jh, ptr %i.ji, align 8, !tbaa !128
  %i.jj = load i128, ptr %i.jf, align 1
  %i.jk = getelementptr i8, ptr %i.jf, i64 16
  %i.jl = load i128, ptr %i.jk, align 1
  %i.jm = or i128 %i.jj, %i.jl
  %i.jn = icmp ne i128 %i.jm, 0
  %i.jo = zext i1 %i.jn to i32
  %.not.i.i.us.i = icmp eq i32 %i.jo, 0
  %i.jp = load ptr, ptr %i.iq, align 8, !tbaa !270
  %i.jq = getelementptr inbounds nuw [96 x i8], ptr %i.jp, i64 %indvars.iv.i.us.i
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 82 ; 2 uses
  %i.js = zext i1 %.not.i.i.us.i to i16
  %i.jt = load i16, ptr %i.jr, align 2
  %i.ju = and i16 %i.jt, -2
  %i.jv = or disjoint i16 %i.ju, %i.js
  %i.jw = xor i16 %i.jv, 1
  store i16 %i.jw, ptr %i.jr, align 2
  %i.jx = load ptr, ptr %i.iq, align 8, !tbaa !270
  %i.jy = getelementptr inbounds nuw [96 x i8], ptr %i.jx, i64 %indvars.iv.i.us.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 82 ; 2 uses
  %i.ka = load i16, ptr %i.jz, align 2
  %i.kb = or i16 %i.ka, 64
  store i16 %i.kb, ptr %i.jz, align 2
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i148
  br i1 %exitcond.not.i.us.i, label %._crit_edge.loopexit.i.us.i, label %bb.au, !llvm.loop !228

._crit_edge.loopexit.i.us.i:                      ; preds = %bb.au
  %.pre.i.us.i = load ptr, ptr %i.iq, align 8, !tbaa !270
  %i.kc = getelementptr [96 x i8], ptr %.pre.i.us.i, i64 %i.ik
  %i.kd = getelementptr i8, ptr %i.kc, i64 -14    ; 2 uses
  %i.ke = load i16, ptr %i.kd, align 2
  %i.kf = and i16 %i.ke, -65
  store i16 %i.kf, ptr %i.kd, align 2
  %i.kg = load ptr, ptr %i.iu, align 8, !tbaa !77
  %i.kh = load ptr, ptr %i.it, align 8, !tbaa !265 ; 4 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 40
  store ptr %i.kg, ptr %i.ki, align 8, !tbaa !268
  %i.kj = getelementptr inbounds nuw i8, ptr %.01517.us20.i, i64 16
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !74
  %i.kl = trunc i32 %i.kk to i16
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 80
  store i16 %i.kl, ptr %i.km, align 8, !tbaa !269
  %i.kn = getelementptr inbounds nuw i8, ptr %.01517.us20.i, i64 20 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kh, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.kn, i64 32, i1 false)
  %i.ko = getelementptr inbounds nuw i8, ptr %.01517.us20.i, i64 52
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !128
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  store i32 %i.kp, ptr %i.kq, align 8, !tbaa !128
  %i.kr = load i128, ptr %i.kn, align 1
  %i.ks = getelementptr i8, ptr %i.kn, i64 16
  %i.kt = load i128, ptr %i.ks, align 1
  %i.ku = or i128 %i.kr, %i.kt
  %i.kv = icmp ne i128 %i.ku, 0
  %i.kw = zext i1 %i.kv to i32
  %.not.i37.i.us.i = icmp eq i32 %i.kw, 0
  %i.kx = load ptr, ptr %i.it, align 8, !tbaa !265
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 82 ; 2 uses
  %i.kz = zext i1 %.not.i37.i.us.i to i16
  %i.la = load i16, ptr %i.ky, align 2
  %i.lb = and i16 %i.la, -2
  %i.lc = or disjoint i16 %i.lb, %i.kz
  %i.ld = xor i16 %i.lc, 1
  store i16 %i.ld, ptr %i.ky, align 2
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv27.i
  store ptr %i.iq, ptr %i.le, align 8, !tbaa !260
  %i.lf = load ptr, ptr %.01517.us20.i, align 8, !tbaa !127 ; 2 uses
  %.not.us.i = icmp eq ptr %i.lf, null
  br i1 %.not.us.i, label %.lr.ph23.preheader.i, label %st_add.exit.i.us.i, !llvm.loop !229

st_add.exit.i.i:                                  ; preds = %.lr.ph.split.i, %st_add.exit.i.i
  %indvars.iv.i149 = phi i64 [ %indvars.iv.next.i150, %st_add.exit.i.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.01517.i = phi ptr [ %i.mo, %st_add.exit.i.i ], [ %.2108215, %.lr.ph.split.i ] ; 5 uses
  %i.lg = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16 ; 3 uses
  %i.lh = call ptr @xcalloc(i64 noundef %i.in, i64 noundef 96) #16 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 96 ; 2 uses
  store ptr %i.li, ptr %i.lg, align 8, !tbaa !270
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 3 uses
  store ptr %i.lh, ptr %i.lj, align 8, !tbaa !265
  %i.lk = getelementptr [96 x i8], ptr %i.li, i64 %i.ik
  %i.ll = getelementptr i8, ptr %i.lk, i64 -14    ; 2 uses
  %i.lm = load i16, ptr %i.ll, align 2
  %i.ln = and i16 %i.lm, -65
  store i16 %i.ln, ptr %i.ll, align 2
  %i.lo = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !77
  %i.lq = load ptr, ptr %i.lj, align 8, !tbaa !265 ; 4 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 40
  store ptr %i.lp, ptr %i.lr, align 8, !tbaa !268
  %i.ls = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !74
  %i.lu = trunc i32 %i.lt to i16
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lq, i64 80
  store i16 %i.lu, ptr %i.lv, align 8, !tbaa !269
  %i.lw = getelementptr inbounds nuw i8, ptr %.01517.i, i64 20 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lq, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.lw, i64 32, i1 false)
  %i.lx = getelementptr inbounds nuw i8, ptr %.01517.i, i64 52
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !128
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  store i32 %i.ly, ptr %i.lz, align 8, !tbaa !128
  %i.ma = load i128, ptr %i.lw, align 1
  %i.mb = getelementptr i8, ptr %i.lw, i64 16
  %i.mc = load i128, ptr %i.mb, align 1
  %i.md = or i128 %i.ma, %i.mc
  %i.me = icmp ne i128 %i.md, 0
  %i.mf = zext i1 %i.me to i32
  %.not.i37.i.i = icmp eq i32 %i.mf, 0
  %i.mg = load ptr, ptr %i.lj, align 8, !tbaa !265
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 82 ; 2 uses
  %i.mi = zext i1 %.not.i37.i.i to i16
  %i.mj = load i16, ptr %i.mh, align 2
  %i.mk = and i16 %i.mj, -2
  %i.ml = or disjoint i16 %i.mk, %i.mi
  %i.mm = xor i16 %i.ml, 1
  store i16 %i.mm, ptr %i.mh, align 2
  %indvars.iv.next.i150 = add nuw nsw i64 %indvars.iv.i149, 1
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.i149
  store ptr %i.lg, ptr %i.mn, align 8, !tbaa !260
  %i.mo = load ptr, ptr %.01517.i, align 8, !tbaa !127 ; 2 uses
  %.not.i = icmp eq ptr %i.mo, null
  br i1 %.not.i, label %.lr.ph23.preheader.i, label %st_add.exit.i.i, !llvm.loop !229

.lr.ph23.preheader.i:                             ; preds = %st_add.exit.i.i, %._crit_edge.loopexit.i.us.i, %bb.at
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 2040
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !275
  %i.mr = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !276
  call void %i.mq(ptr noundef nonnull %3, ptr noundef nonnull %i.b, ptr noundef %i.ms) #16, !inline_history !230
  br label %.lr.ph23.i

.lr.ph23.i:                                       ; preds = %.lr.ph23.i, %.lr.ph23.preheader.i
  %indvars.iv30.i = phi i64 [ 0, %.lr.ph23.preheader.i ], [ %indvars.iv.next31.i, %.lr.ph23.i ] ; 2 uses
  %i.mt = load ptr, ptr %3, align 8, !tbaa !258
  %i.mu = getelementptr inbounds nuw [8 x i8], ptr %i.mt, i64 %indvars.iv30.i
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !260 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !265
  call void @free(ptr noundef %i.mx) #16
  call void @free(ptr noundef %i.mv) #16
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond.not.i152 = icmp eq i64 %indvars.iv.next31.i, %i.ig
  br i1 %exitcond.not.i152, label %handle_combined_callback.exit, label %.lr.ph23.i, !llvm.loop !231

handle_combined_callback.exit:                    ; preds = %.lr.ph23.i
  %i.my = load ptr, ptr %3, align 8, !tbaa !258
  call void @free(ptr noundef %i.my) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  br label %.loopexit156

.loopexit156:                                     ; preds = %.lr.ph174, %bb.ar, %handle_combined_callback.exit, %bb.as
  %.not142 = phi i1 [ true, %bb.as ], [ false, %bb.ar ], [ true, %handle_combined_callback.exit ], [ false, %.lr.ph174 ]
  %i.mz = load i32, ptr %i.ia, align 8, !tbaa !28
  %i.na = and i32 %i.mz, 16
  %.not141 = icmp eq i32 %i.na, 0
  br i1 %.not141, label %.loopexit, label %bb.av

.loopexit156.thread:                              ; preds = %.preheader
  %5 = load i32, ptr %i.ia, align 8, !tbaa !28
  %6 = and i32 %5, 16
  %.not141223 = icmp eq i32 %6, 0
  br i1 %.not141223, label %._crit_edge187, label %bb.aw

bb.av:                                            ; preds = %.loopexit156
  br i1 %.not142, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.loopexit156.thread, %bb.av
  %i.nb = call ptr @diff_line_prefix(ptr noundef nonnull %i.b) #16
  %i.nc = getelementptr inbounds nuw i8, ptr %2, i64 1796
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !29
  %i.ne = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.nb, i32 noundef %i.nd) ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %cond = icmp eq ptr %.2108215, null
  br i1 %cond, label %._crit_edge187, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.ax, %.lr.ph178
  %.3112176 = phi ptr [ %i.nf, %.lr.ph178 ], [ %.2108215, %bb.ax ] ; 2 uses
  call fastcc void @show_patch_diff(ptr noundef nonnull %.3112176, i32 noundef %i.e, i32 noundef 0, ptr noundef nonnull %2)
  %i.nf = load ptr, ptr %.3112176, align 8, !tbaa !127 ; 2 uses
  %.not143 = icmp eq ptr %i.nf, null
  br i1 %.not143, label %.lr.ph186, label %.lr.ph178, !llvm.loop !232

.loopexit:                                        ; preds = %.loopexit156
  %.not144183 = icmp eq ptr %.2108215, null
  br i1 %.not144183, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %.lr.ph178, %.loopexit
  %i.ng = icmp sgt i32 %i.e, 0
  br i1 %i.ng, label %.lr.ph181.us.preheader, label %.lr.ph186.split

.lr.ph181.us.preheader:                           ; preds = %.lr.ph186
  %wide.trip.count199 = and i64 %i.d, 2147483647
  br label %.lr.ph181.us

.lr.ph181.us:                                     ; preds = %.lr.ph181.us.preheader, %._crit_edge182.us
  %.3184.us = phi ptr [ %i.nh, %._crit_edge182.us ], [ %.2108215, %.lr.ph181.us.preheader ] ; 3 uses
  %i.nh = load ptr, ptr %.3184.us, align 8, !tbaa !127 ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph181.us, %bb.ay
  %indvars.iv196 = phi i64 [ 0, %.lr.ph181.us ], [ %indvars.iv.next197, %bb.ay ] ; 2 uses
  %i.ni = getelementptr inbounds nuw [56 x i8], ptr %.3184.us, i64 %indvars.iv196
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 104
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !76
  call void @free(ptr noundef %i.nk) #16
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %._crit_edge182.us, label %bb.ay, !llvm.loop !233

._crit_edge182.us:                                ; preds = %bb.ay
  call void @free(ptr noundef nonnull %.3184.us) #16
  %.not144.us = icmp eq ptr %i.nh, null
  br i1 %.not144.us, label %._crit_edge187, label %.lr.ph181.us, !llvm.loop !234

.lr.ph186.split:                                  ; preds = %.lr.ph186, %.lr.ph186.split
  %.3184 = phi ptr [ %i.nl, %.lr.ph186.split ], [ %.2108215, %.lr.ph186 ] ; 2 uses
  %i.nl = load ptr, ptr %.3184, align 8, !tbaa !127 ; 2 uses
  call void @free(ptr noundef nonnull %.3184) #16
  %.not144 = icmp eq ptr %i.nl, null
  br i1 %.not144, label %._crit_edge187, label %.lr.ph186.split, !llvm.loop !234

._crit_edge187:                                   ; preds = %.lr.ph186.split, %._crit_edge182.us, %.loopexit156.thread, %bb.ap, %bb.ax, %.loopexit
  call void @clear_pathspec(ptr noundef nonnull %i.z) #16
  br label %bb.az

bb.az:                                            ; preds = %bb.e, %._crit_edge187
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #2

declare void @show_log(ptr noundef) local_unnamed_addr #3

declare i32 @commit_format_is_empty(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @diff_line_prefix(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @copy_pathspec(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_paths_multitree(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !124  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.d = ashr exact i64 %sext, 32                 ; 2 uses
  %mul.ov.i = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %mul.ov.i, label %bb.b, label %st_mult.exit

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.48, i64 noundef 8, i64 noundef %i.d) #17
  unreachable

st_mult.exit:                                     ; preds = %bb.a
  %i.e = ashr exact i64 %sext, 29
  %i.f = tail call ptr @xmalloc(i64 noundef %i.e) #16 ; 10 uses
  %i.g = icmp sgt i32 %i.c, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %st_mult.exit
  %wide.trip.count = and i64 %i.b, 2147483647     ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 10
  br i1 %min.iters.check, label %.lr.ph.preheader19, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.h = shl nuw nsw i64 %wide.trip.count, 3
  %scevgep = getelementptr i8, ptr %i.f, i64 %i.h
  %bound0 = icmp ult ptr %i.f, %i.a
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader19, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483644               ; 3 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !125, !alias.scope !283 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %wide.gep = getelementptr inbounds nuw [36 x i8], ptr %i.i, <2 x i64> %vec.ind
  %wide.gep18 = getelementptr inbounds nuw [36 x i8], ptr %i.i, <2 x i64> %step.add
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <2 x ptr> %wide.gep, ptr %i.j, align 8, !tbaa !284, !alias.scope !285, !noalias !283
  store <2 x ptr> %wide.gep18, ptr %i.k, align 8, !tbaa !284, !alias.scope !285, !noalias !283
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !280

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader19

.lr.ph.preheader19:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader19, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader19 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader19 ]
  %i.m = load ptr, ptr %1, align 8, !tbaa !125
  %i.n = getelementptr inbounds nuw [36 x i8], ptr %i.m, i64 %indvars.iv.prol
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.prol
  store ptr %i.n, ptr %i.o, align 8, !tbaa !284
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !281

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader19
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader19 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.p = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.q = icmp ugt i64 %i.p, -4
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !125
  %i.s = getelementptr inbounds nuw [36 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  store ptr %i.s, ptr %i.t, align 8, !tbaa !284
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load ptr, ptr %1, align 8, !tbaa !125
  %i.v = getelementptr inbounds nuw [36 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  store ptr %i.v, ptr %i.w, align 8, !tbaa !284
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.x = load ptr, ptr %1, align 8, !tbaa !125
  %i.y = getelementptr inbounds nuw [36 x i8], ptr %i.x, i64 %indvars.iv.next.1
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.1
  store ptr %i.y, ptr %i.z, align 8, !tbaa !284
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aa = load ptr, ptr %1, align 8, !tbaa !125
  %i.ab = getelementptr inbounds nuw [36 x i8], ptr %i.aa, i64 %indvars.iv.next.2
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.2
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !284
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !282

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %st_mult.exit
  call void @strbuf_init(ptr noundef nonnull %3, i64 noundef 4096) #16
  %i.ad = call ptr @diff_tree_paths(ptr noundef %0, ptr noundef %i.f, i32 noundef %i.c, ptr noundef nonnull %3, ptr noundef nonnull %2) #16
  call void @strbuf_release(ptr noundef nonnull %3) #16
  call void @free(ptr noundef %i.f) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret ptr %i.ad
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @combined_objfind(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef range(i32 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr null, ptr %i.a, align 8, !tbaa !127
  %.not15 = icmp eq ptr %1, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.c = icmp sgt i32 %2, 0
  %wide.trip.count.i = zext nneg i32 %2 to i64
  br i1 %i.c, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.017.us = phi ptr [ %i.d, %bb.c ], [ %1, %.lr.ph ] ; 7 uses
  %.01116.us = phi ptr [ %.1.us, %bb.c ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.d = load ptr, ptr %.017.us, align 8, !tbaa !127 ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !288  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.017.us, i64 20
  %i.g = tail call i32 @oidset_contains(ptr noundef %i.e, ptr noundef nonnull %i.f) #16
  %.not.i.us = icmp eq i32 %i.g, 0
  br i1 %.not.i.us, label %.lr.ph.i.us, label %match_objfind.exit.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %bb.b ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %.017.us, i64 %indvars.iv.i.us
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.j = tail call i32 @oidset_contains(ptr noundef %i.e, ptr noundef nonnull %i.i) #16
  %.not9.i.us = icmp eq i32 %i.j, 0
  br i1 %.not9.i.us, label %bb.b, label %match_objfind.exit.us

bb.b:                                             ; preds = %.lr.ph.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %.loopexit.us, label %.lr.ph.i.us, !llvm.loop !286

match_objfind.exit.us:                            ; preds = %.lr.ph.i.us, %.lr.ph.split.us
  store ptr null, ptr %.017.us, align 8, !tbaa !127
  store ptr %.017.us, ptr %.01116.us, align 8, !tbaa !127
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.us, %match_objfind.exit.us
  %.1.us = phi ptr [ %.017.us, %match_objfind.exit.us ], [ %.01116.us, %.loopexit.us ]
  %.not.us = icmp eq ptr %i.d, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !287

.loopexit.us:                                     ; preds = %bb.b
  tail call void @free(ptr noundef %.017.us) #16
  br label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.d
  %.017 = phi ptr [ %i.k, %bb.d ], [ %1, %.lr.ph ] ; 6 uses
  %.01116 = phi ptr [ %.1, %bb.d ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.k = load ptr, ptr %.017, align 8, !tbaa !127 ; 2 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !288
end_hunk_0
