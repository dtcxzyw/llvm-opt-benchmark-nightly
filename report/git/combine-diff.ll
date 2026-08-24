Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/combine-diff?download=true
inline.NumInlined: 73
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 10
begin_hunk_0_@diff_tree_combined:bb.a
  %indvars.iv.next112.i.i = add nuw nsw i64 %indvars.iv111.i.i, 1 ; 2 uses
  %i.ee = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !237
  %i.ef = sext i32 %i.ee to i64
  %i.eg = icmp slt i64 %indvars.iv.next112.i.i, %i.ef
  br i1 %i.eg, label %.lr.ph107.split.i.i, label %intersect_paths.exit.i, !llvm.loop !255

thread-pre-split.i.i:                             ; preds = %bb.ag, %bb.ac, %._crit_edge.i.loopexit.i
  %.2.ph.i.i = phi ptr [ %.2102.i.i, %bb.ac ], [ %.2102.i.i, %._crit_edge.i.loopexit.i ], [ %i.eh, %bb.ag ] ; 2 uses
  %.1.ph.i.i = phi i32 [ %i.fm, %bb.ac ], [ %.1103.i.i, %._crit_edge.i.loopexit.i ], [ %i.gl, %bb.ag ]
  %.pr.i.i = load ptr, ptr %.2.ph.i.i, align 8, !tbaa !235 ; 2 uses
  %.not87.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not87.i.i, label %intersect_paths.exit.i, label %.lr.ph104.i.i

.lr.ph104.i.i:                                    ; preds = %.preheader98.i.i, %thread-pre-split.i.i
  %.1103.i.i = phi i32 [ %.1.ph.i.i, %thread-pre-split.i.i ], [ 0, %.preheader98.i.i ] ; 5 uses
  %.2102.i.i = phi ptr [ %.2.ph.i.i, %thread-pre-split.i.i ], [ %i.a, %.preheader98.i.i ] ; 3 uses
  %i.eh = phi ptr [ %.pr.i.i, %thread-pre-split.i.i ], [ %.03440.i, %.preheader98.i.i ] ; 7 uses
  %i.ei = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !237
  %.not88.i.i = icmp slt i32 %.1103.i.i, %i.ei
  br i1 %.not88.i.i, label %bb.z, label %compare_paths.exit.thread.i.i

bb.z:                                             ; preds = %.lr.ph104.i.i
  %i.ej = load ptr, ptr @diff_queued_diff, align 8, !tbaa !240
  %i.ek = sext i32 %.1103.i.i to i64              ; 3 uses
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.ek
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !241
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !243 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !76 ; 2 uses
  %i.er = and i32 %i.eq, 61440
  %i.es = icmp eq i32 %i.er, 16384
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.eo, i64 80
  %.pre.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !251 ; 2 uses
  %i.et = and i16 %.pre.i.i.i, -4096
  %i.eu = icmp eq i16 %i.et, 16384
  %or.cond.i.i.i = select i1 %i.es, i1 true, i1 %i.eu
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !82 ; 3 uses
  br i1 %or.cond.i.i.i, label %._crit_edge.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !248
  %i.ez = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ew, ptr noundef nonnull dereferenceable(1) %i.ey) #18
  br label %compare_paths.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.z
  %i.fa = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ew) #18
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !248 ; 2 uses
  %i.fd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fc) #18
  %i.fe = zext i16 %.pre.i.i.i to i32
  %i.ff = call i32 @base_name_compare(ptr noundef nonnull %i.ew, i64 noundef %i.fa, i32 noundef %i.eq, ptr noundef nonnull %i.fc, i64 noundef %i.fd, i32 noundef %i.fe) #16
  br label %compare_paths.exit.i.i

compare_paths.exit.i.i:                           ; preds = %._crit_edge.i.i.i, %bb.aa
  %i.fg = phi i32 [ %i.ez, %bb.aa ], [ %i.ff, %._crit_edge.i.i.i ] ; 2 uses
  %i.fh = icmp slt i32 %i.fg, 0
  br i1 %i.fh, label %compare_paths.exit.thread.i.i, label %bb.ab

compare_paths.exit.thread.i.i:                    ; preds = %compare_paths.exit.i.i, %.lr.ph104.i.i
  %i.fi = load ptr, ptr %i.eh, align 8, !tbaa !235
  store ptr %i.fi, ptr %.2102.i.i, align 8, !tbaa !235
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %compare_paths.exit.thread.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %compare_paths.exit.thread.i.i ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [56 x i8], ptr %i.eh, i64 %indvars.iv.i.i
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 104
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !81
  call void @free(ptr noundef %i.fl) #16
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.loopexit.i, label %.lr.ph.i.i, !llvm.loop !256

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i
  call void @free(ptr noundef nonnull %i.eh) #16
  br label %thread-pre-split.i.i, !llvm.loop !257

bb.ab:                                            ; preds = %compare_paths.exit.i.i
  %.not89.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not89.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fm = add nsw i32 %.1103.i.i, 1
  br label %thread-pre-split.i.i, !llvm.loop !257

bb.ad:                                            ; preds = %bb.ab
  %i.fn = getelementptr inbounds nuw i8, ptr %i.eh, i64 56
  %i.fo = getelementptr inbounds nuw [56 x i8], ptr %i.fn, i64 %indvars.iv.i ; 5 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr @diff_queued_diff, align 8, !tbaa !240
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.ek
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !241
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !252 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.fp, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ft, i64 32, i1 false)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !253
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !253
  %i.fx = load ptr, ptr @diff_queued_diff, align 8, !tbaa !240
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.ek
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !241 ; 2 uses
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !252 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 80
  %i.gc = load i16, ptr %i.gb, align 8, !tbaa !251
  %i.gd = zext i16 %i.gc to i32
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !72
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 26
  %i.gg = load i8, ptr %i.gf, align 2, !tbaa !254 ; 2 uses
  store i8 %i.gg, ptr %i.fo, align 8, !tbaa !79
  br i1 %.not90.i.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  switch i8 %i.gg, label %bb.ag [
    i8 82, label %bb.af
    i8 67, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 40
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !248
  %i.gj = call ptr @xstrdup(ptr noundef %i.gi) #16
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fo, i64 48
  store ptr %i.gj, ptr %i.gk, align 8, !tbaa !81
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.gl = add nsw i32 %.1103.i.i, 1
  br label %thread-pre-split.i.i, !llvm.loop !257

intersect_paths.exit.i:                           ; preds = %thread-pre-split.i.i, %bb.y, %bb.u, %.preheader.i.i, %.preheader98.i.i
  %.0..0..0..0..0..0..0..078.i.i = load ptr, ptr %i.a, align 8, !tbaa !235 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gm = load i32, ptr %i.aw, align 8, !tbaa !12
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
  br i1 %exitcond.not.i, label %find_paths_generic.exit, label %bb.s, !llvm.loop !258

find_paths_generic.exit:                          ; preds = %bb.ai, %.critedge146
  %.034.lcssa.i = phi ptr [ null, %.critedge146 ], [ %.0..0..0..0..0..0..0..078.i.i, %bb.ai ]
  store i32 %i.ax, ptr %i.aw, align 8, !tbaa !12
  store ptr %i.ay, ptr %4, align 8, !tbaa !233
  br label %bb.ap

bb.aj:                                            ; preds = %bb.r
  %i.go = call fastcc ptr @find_paths_multitree(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %4) ; 2 uses
  %i.gp = load i32, ptr %i.an, align 8, !tbaa !231
  %i.gq = and i32 %i.gp, 16
  %.not132 = icmp eq i32 %i.gq, 0
  br i1 %.not132, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gr = call fastcc ptr @combined_objfind(ptr noundef nonnull %i.b, ptr noundef %i.go, i32 noundef %i.e)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0106 = phi ptr [ %i.gr, %bb.ak ], [ %i.go, %bb.aj ] ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 1800
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !12
  %i.gu = and i32 %i.gt, 110                      ; 2 uses
  %.not133 = icmp eq i32 %i.gu, 0
  br i1 %.not133, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gv = getelementptr inbounds nuw i8, ptr %4, i64 280
  store i32 %i.gu, ptr %i.gv, align 8, !tbaa !12
  %i.gw = load ptr, ptr %1, align 8, !tbaa !234
  call void @diff_tree_oid(ptr noundef %i.gw, ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %4) #16
  call void @diffcore_std(ptr noundef nonnull %4) #16
  %i.gx = load ptr, ptr %i.b, align 8, !tbaa !233 ; 2 uses
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
  %i.gz = load ptr, ptr %.0109160, align 8, !tbaa !235 ; 2 uses
  %.not135 = icmp eq ptr %i.gz, null
  br i1 %.not135, label %._crit_edge, label %.lr.ph, !llvm.loop !259

._crit_edge:                                      ; preds = %.lr.ph
  %i.ha = load ptr, ptr %i.b, align 8, !tbaa !233
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
  store ptr %.1110163, ptr %i.he, align 8, !tbaa !260
  %i.hf = load ptr, ptr %.1110163, align 8, !tbaa !235 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not136 = icmp eq ptr %i.hf, null
  br i1 %.not136, label %._crit_edge166, label %.lr.ph165, !llvm.loop !262

._crit_edge166:                                   ; preds = %.lr.ph165
  %i.hg = load ptr, ptr %i.b, align 8, !tbaa !233
  call void @order_objects(ptr noundef %i.hg, ptr noundef nonnull @path_path, ptr noundef nonnull %i.hd, i32 noundef %i.gy) #16
  %.not227 = icmp eq i32 %.0104161, 0
  %.pre201 = load ptr, ptr %i.hd, align 8, !tbaa !260 ; 3 uses
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
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !260 ; 2 uses
  store ptr %i.hl, ptr %i.hi, align 8, !tbaa !235
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv193
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !260 ; 2 uses
  store ptr %i.ho, ptr %i.hl, align 8, !tbaa !235
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv193
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !260 ; 2 uses
  store ptr %i.hr, ptr %i.ho, align 8, !tbaa !235
  %indvars.iv.next194.3 = add nuw nsw i64 %indvars.iv193, 4 ; 3 uses
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %indvars.iv.next194.3
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !260 ; 3 uses
  store ptr %i.ht, ptr %i.hr, align 8, !tbaa !235
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge170.loopexit.unr-lcssa, label %.lr.ph169, !llvm.loop !263

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
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !260 ; 2 uses
  store ptr %i.hw, ptr %i.hu, align 8, !tbaa !235
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge170, label %.lr.ph169.epil, !llvm.loop !264

._crit_edge170:                                   ; preds = %._crit_edge170.loopexit.unr-lcssa, %.lr.ph169.epil, %._crit_edge166
  %5 = zext nneg i32 %.0104161 to i64
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hd, i64 %5
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !260
  store ptr null, ptr %i.hy, align 8, !tbaa !235
  call void @free(ptr noundef nonnull %i.hd) #16
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge, %._crit_edge170
  %.2108215 = phi ptr [ %.pre201, %._crit_edge170 ], [ %.1107, %._crit_edge ] ; 10 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 1800 ; 2 uses
  %i.ia = load i32, ptr %i.hz, align 8, !tbaa !12 ; 3 uses
  %i.ib = and i32 %i.ia, 769
  %.not137 = icmp eq i32 %i.ib, 0
  br i1 %.not137, label %bb.ar, label %.preheader

.preheader:                                       ; preds = %bb.aq
  %.not140172 = icmp eq ptr %.2108215, null
  br i1 %.not140172, label %.loopexit156, label %.lr.ph174

.lr.ph174:                                        ; preds = %.preheader, %.lr.ph174
  %.2111173 = phi ptr [ %i.ic, %.lr.ph174 ], [ %.2108215, %.preheader ] ; 2 uses
  call fastcc void @show_raw_diff(ptr noundef nonnull %.2111173, i32 noundef %i.e, ptr noundef nonnull %2)
  %i.ic = load ptr, ptr %.2111173, align 8, !tbaa !235 ; 2 uses
  %.not140 = icmp eq ptr %i.ic, null
  br i1 %.not140, label %.loopexit156, label %.lr.ph174, !llvm.loop !265

bb.ar:                                            ; preds = %bb.aq
  %i.id = and i32 %i.ia, 110
  %.not138 = icmp eq i32 %i.id, 0
  br i1 %.not138, label %bb.as, label %.loopexit156

bb.as:                                            ; preds = %bb.ar
  %i.ie = and i32 %i.ia, 4096
  %.not139 = icmp eq i32 %i.ie, 0
  br i1 %.not139, label %.loopexit156, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.if = zext nneg i32 %i.gy to i64              ; 2 uses
  %i.ig = call ptr @xcalloc(i64 noundef %i.if, i64 noundef 8) #16 ; 3 uses
  store ptr %i.ig, ptr %3, align 8, !tbaa !240
  %i.ih = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.gy, ptr %i.ih, align 8, !tbaa !266
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.gy, ptr %i.ii, align 4, !tbaa !237
  %.not16.i = icmp eq ptr %.2108215, null
  br i1 %.not16.i, label %.lr.ph23.preheader.i, label %.lr.ph.i147

.lr.ph.i147:                                      ; preds = %bb.at
  %sext = shl i64 %i.d, 32
  %i.ij = ashr exact i64 %sext, 32                ; 4 uses
  %i.ik = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ij, i64 1) ; 2 uses
  %i.il = extractvalue { i64, i1 } %i.ik, 1
  %i.im = extractvalue { i64, i1 } %i.ik, 0       ; 2 uses
  %wide.trip.count.i.i148 = and i64 %i.d, 4294967295
  br i1 %i.il, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i147
  %i.in = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16 ; 0 uses
  call void (ptr, ...) @die(ptr noundef nonnull @.str.49, i64 noundef %i.ij, i64 noundef 1) #17
  unreachable

.lr.ph.split.i:                                   ; preds = %.lr.ph.i147
  %i.io = icmp sgt i32 %i.e, 0
  br i1 %i.io, label %st_add.exit.i.us.i, label %st_add.exit.i.i

st_add.exit.i.us.i:                               ; preds = %.lr.ph.split.i, %._crit_edge.loopexit.i.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %._crit_edge.loopexit.i.us.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.01517.us20.i = phi ptr [ %i.le, %._crit_edge.loopexit.i.us.i ], [ %.2108215, %.lr.ph.split.i ] ; 6 uses
  %i.ip = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16 ; 7 uses
  %i.iq = call ptr @xcalloc(i64 noundef %i.im, i64 noundef 96) #16 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 96
  store ptr %i.ir, ptr %i.ip, align 8, !tbaa !252
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 3 uses
  store ptr %i.iq, ptr %i.is, align 8, !tbaa !243
  %i.it = getelementptr inbounds nuw i8, ptr %.01517.us20.i, i64 8 ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.01517.us20.i, i64 56
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %st_add.exit.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %st_add.exit.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.au ] ; 5 uses
  %i.iv = load ptr, ptr %i.it, align 8, !tbaa !82
  %i.iw = load ptr, ptr %i.ip, align 8, !tbaa !252
  %i.ix = getelementptr inbounds nuw [96 x i8], ptr %i.iw, i64 %indvars.iv.i.us.i ; 4 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  store ptr %i.iv, ptr %i.iy, align 8, !tbaa !248
  %i.iz = getelementptr inbounds nuw [56 x i8], ptr %i.iu, i64 %indvars.iv.i.us.i ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 4
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !72
  %i.jc = trunc i32 %i.jb to i16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 80
  store i16 %i.jc, ptr %i.jd, align 8, !tbaa !251
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.je, i64 32, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !253
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  store i32 %i.jg, ptr %i.jh, align 8, !tbaa !253
  %i.ji = load i128, ptr %i.je, align 1
  %i.jj = getelementptr i8, ptr %i.je, i64 16
  %i.jk = load i128, ptr %i.jj, align 1
  %i.jl = or i128 %i.ji, %i.jk
  %i.jm = icmp ne i128 %i.jl, 0
  %i.jn = zext i1 %i.jm to i32
  %.not.i.i.us.i = icmp eq i32 %i.jn, 0
  %i.jo = load ptr, ptr %i.ip, align 8, !tbaa !252
  %i.jp = getelementptr inbounds nuw [96 x i8], ptr %i.jo, i64 %indvars.iv.i.us.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 82 ; 2 uses
  %i.jr = zext i1 %.not.i.i.us.i to i16
  %i.js = load i16, ptr %i.jq, align 2
  %i.jt = and i16 %i.js, -2
  %i.ju = or disjoint i16 %i.jt, %i.jr
  %i.jv = xor i16 %i.ju, 1
  store i16 %i.jv, ptr %i.jq, align 2
  %i.jw = load ptr, ptr %i.ip, align 8, !tbaa !252
  %i.jx = getelementptr inbounds nuw [96 x i8], ptr %i.jw, i64 %indvars.iv.i.us.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 82 ; 2 uses
  %i.jz = load i16, ptr %i.jy, align 2
  %i.ka = or i16 %i.jz, 64
  store i16 %i.ka, ptr %i.jy, align 2
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i148
  br i1 %exitcond.not.i.us.i, label %._crit_edge.loopexit.i.us.i, label %bb.au, !llvm.loop !267

._crit_edge.loopexit.i.us.i:                      ; preds = %bb.au
  %.pre.i.us.i = load ptr, ptr %i.ip, align 8, !tbaa !252
  %i.kb = getelementptr [96 x i8], ptr %.pre.i.us.i, i64 %i.ij
  %i.kc = getelementptr i8, ptr %i.kb, i64 -14    ; 2 uses
  %i.kd = load i16, ptr %i.kc, align 2
  %i.ke = and i16 %i.kd, -65
  store i16 %i.ke, ptr %i.kc, align 2
  %i.kf = load ptr, ptr %i.it, align 8, !tbaa !82
  %i.kg = load ptr, ptr %i.is, align 8, !tbaa !243 ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  store ptr %i.kf, ptr %i.kh, align 8, !tbaa !248
  %i.ki = getelementptr inbounds nuw i8, ptr %.01517.us20.i, i64 16
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !76
  %i.kk = trunc i32 %i.kj to i16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kg, i64 80
  store i16 %i.kk, ptr %i.kl, align 8, !tbaa !251
  %i.km = getelementptr inbounds nuw i8, ptr %.01517.us20.i, i64 20 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kg, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.km, i64 32, i1 false)
  %i.kn = getelementptr inbounds nuw i8, ptr %.01517.us20.i, i64 52
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !253
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kg, i64 32
  store i32 %i.ko, ptr %i.kp, align 8, !tbaa !253
  %i.kq = load i128, ptr %i.km, align 1
  %i.kr = getelementptr i8, ptr %i.km, i64 16
  %i.ks = load i128, ptr %i.kr, align 1
  %i.kt = or i128 %i.kq, %i.ks
  %i.ku = icmp ne i128 %i.kt, 0
  %i.kv = zext i1 %i.ku to i32
  %.not.i37.i.us.i = icmp eq i32 %i.kv, 0
  %i.kw = load ptr, ptr %i.is, align 8, !tbaa !243
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 82 ; 2 uses
  %i.ky = zext i1 %.not.i37.i.us.i to i16
  %i.kz = load i16, ptr %i.kx, align 2
  %i.la = and i16 %i.kz, -2
  %i.lb = or disjoint i16 %i.la, %i.ky
  %i.lc = xor i16 %i.lb, 1
  store i16 %i.lc, ptr %i.kx, align 2
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %indvars.iv27.i
  store ptr %i.ip, ptr %i.ld, align 8, !tbaa !241
  %i.le = load ptr, ptr %.01517.us20.i, align 8, !tbaa !235 ; 2 uses
  %.not.us.i = icmp eq ptr %i.le, null
  br i1 %.not.us.i, label %.lr.ph23.preheader.i, label %st_add.exit.i.us.i, !llvm.loop !268

st_add.exit.i.i:                                  ; preds = %.lr.ph.split.i, %st_add.exit.i.i
  %indvars.iv.i149 = phi i64 [ %indvars.iv.next.i150, %st_add.exit.i.i ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %.01517.i = phi ptr [ %i.mn, %st_add.exit.i.i ], [ %.2108215, %.lr.ph.split.i ] ; 5 uses
  %i.lf = call ptr @xcalloc(i64 noundef 1, i64 noundef 32) #16 ; 3 uses
  %i.lg = call ptr @xcalloc(i64 noundef %i.im, i64 noundef 96) #16 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 96 ; 2 uses
  store ptr %i.lh, ptr %i.lf, align 8, !tbaa !252
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 8 ; 3 uses
  store ptr %i.lg, ptr %i.li, align 8, !tbaa !243
  %i.lj = getelementptr [96 x i8], ptr %i.lh, i64 %i.ij
  %i.lk = getelementptr i8, ptr %i.lj, i64 -14    ; 2 uses
  %i.ll = load i16, ptr %i.lk, align 2
  %i.lm = and i16 %i.ll, -65
  store i16 %i.lm, ptr %i.lk, align 2
  %i.ln = getelementptr inbounds nuw i8, ptr %.01517.i, i64 8
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !82
  %i.lp = load ptr, ptr %i.li, align 8, !tbaa !243 ; 4 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  store ptr %i.lo, ptr %i.lq, align 8, !tbaa !248
  %i.lr = getelementptr inbounds nuw i8, ptr %.01517.i, i64 16
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !76
  %i.lt = trunc i32 %i.ls to i16
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lp, i64 80
  store i16 %i.lt, ptr %i.lu, align 8, !tbaa !251
  %i.lv = getelementptr inbounds nuw i8, ptr %.01517.i, i64 20 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.lp, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.lv, i64 32, i1 false)
  %i.lw = getelementptr inbounds nuw i8, ptr %.01517.i, i64 52
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !253
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lp, i64 32
  store i32 %i.lx, ptr %i.ly, align 8, !tbaa !253
  %i.lz = load i128, ptr %i.lv, align 1
  %i.ma = getelementptr i8, ptr %i.lv, i64 16
  %i.mb = load i128, ptr %i.ma, align 1
  %i.mc = or i128 %i.lz, %i.mb
end_hunk_0
