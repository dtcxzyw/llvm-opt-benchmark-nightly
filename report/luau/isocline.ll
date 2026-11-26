Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@edit_generate_completions:bb.a
  br label %completions_apply_longest_prefix.exit.i

completions_get.exit.i.i:                         ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bb, i64 40 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !189 ; 6 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %completions_apply_longest_prefix.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %completions_get.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !263 ; 4 uses
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !193 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr %i.c, align 16, !tbaa !48
  br label %completions_get.exit58.lr.ph.i.i

bb.t:                                             ; preds = %bb.r
  %i.br = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull readonly dereferenceable(1) %i.bp, i64 noundef 256) #28 ; 0 uses
  br label %completions_get.exit58.lr.ph.i.i

completions_get.exit58.lr.ph.i.i:                 ; preds = %bb.t, %bb.s
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store i8 0, ptr %i.bs, align 16, !tbaa !48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 64
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !263
  %.not.i14.i = icmp eq i64 %i.bu, %i.bo
  br i1 %.not.i14.i, label %.lr.ph.preheader.i, label %completions_get.exit58.i._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %completions_get.exit58.lr.ph.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %.pre17.i = load i8, ptr %i.c, align 16, !tbaa !48
  br label %.lr.ph.i

completions_get.exit58.i._crit_edge.i:            ; preds = %completions_get.exit58.i.backedge.i, %completions_get.exit58.lr.ph.i.i
  store i8 0, ptr %i.c, align 16, !tbaa !48
  br label %.loopexit63.i.i

.lr.ph.i:                                         ; preds = %completions_get.exit58.i.backedge.i, %.lr.ph.preheader.i
  %i.bw = phi i8 [ %i.cf, %completions_get.exit58.i.backedge.i ], [ %.pre17.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.bx = phi ptr [ %i.cg, %completions_get.exit58.i.backedge.i ], [ %i.bv, %.lr.ph.preheader.i ]
  %.04371.i15.i = phi i64 [ %.04371.i.be.i, %completions_get.exit58.i.backedge.i ], [ 1, %.lr.ph.preheader.i ] ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !193
  %.not5165.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not5165.i.i, label %.loopexit63.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %bb.u
  %i.bz = phi i8 [ %i.ce, %bb.u ], [ %i.bw, %.lr.ph.i ]
  %.04266.i.i = phi i64 [ %i.cc, %bb.u ], [ 0, %.lr.ph.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %.04266.i.i
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !48
  %.not53.i.i = icmp eq i8 %i.bz, %i.cb
  br i1 %.not53.i.i, label %bb.u, label %.critedge.i.i

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.cc = add nuw nsw i64 %.04266.i.i, 1          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !48  ; 2 uses
  %.not51.i.i = icmp eq i8 %i.ce, 0
  br i1 %.not51.i.i, label %.critedge.thread85.i.i, label %.lr.ph.i.i, !llvm.loop !416

.critedge.thread85.i.i:                           ; preds = %bb.u
  %.old.i.i = add nuw nsw i64 %.04371.i15.i, 1    ; 2 uses
  %exitcond.not.old.i.i = icmp eq i64 %.old.i.i, %i.bf
  br i1 %exitcond.not.old.i.i, label %.loopexit63.i.i, label %completions_get.exit58.i.backedge.i

completions_get.exit58.i.backedge.i:              ; preds = %.critedge.i.i, %.critedge.thread85.i.i
  %i.cf = phi i8 [ %i.bw, %.critedge.thread85.i.i ], [ %.pre.i, %.critedge.i.i ]
  %.04371.i.be.i = phi i64 [ %.old.i.i, %.critedge.thread85.i.i ], [ %i.ck, %.critedge.i.i ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [40 x i8], ptr %i.bl, i64 %.04371.i.be.i ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !263
  %.not.i.i = icmp eq i64 %i.ci, %i.bo
  br i1 %.not.i.i, label %.lr.ph.i, label %completions_get.exit58.i._crit_edge.i, !llvm.loop !417

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 %.04266.i.i
  store i8 0, ptr %i.cj, align 1, !tbaa !48
  %.not54.i.i = icmp eq i64 %.04266.i.i, 0
  %i.ck = add nuw nsw i64 %.04371.i15.i, 1        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ck, %i.bf
  %or.cond.i.i = select i1 %.not54.i.i, i1 true, i1 %exitcond.not.i.i
  %.pre.i = load i8, ptr %i.c, align 16, !tbaa !48
  br i1 %or.cond.i.i, label %.loopexit63.i.i, label %completions_get.exit58.i.backedge.i

.loopexit63.i.i:                                  ; preds = %.critedge.i.i, %.critedge.thread85.i.i, %.lr.ph.i, %completions_get.exit58.i._crit_edge.i
  %i.cl = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #29 ; 2 uses
  %i.cm = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.cl, i64 0) ; 10 uses
  %i.cn = icmp slt i64 %i.cl, 1
  %i.co = icmp slt i64 %i.cm, %i.bo
  %or.cond55.i.i = select i1 %i.cn, i1 true, i1 %i.co
  br i1 %or.cond55.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit63.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, i8 0, i64 32, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.bo, ptr %i.cq, align 8, !tbaa !263
  store ptr %i.c, ptr %4, align 8, !tbaa !193
  %i.cr = call fastcc i64 @completion_apply(ptr noundef nonnull %4, ptr noundef %i.bc, i64 noundef %i.bd) ; 2 uses
  %i.cs = icmp slt i64 %i.cr, 0
  br i1 %i.cs, label %.loopexit.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.v
  %i.ct = load i64, ptr %i.be, align 8, !tbaa !126 ; 4 uses
  %i.cu = icmp sgt i64 %i.ct, 0
  br i1 %i.cu, label %completions_get.exit62.lr.ph.i.i, label %.loopexit.i.i

completions_get.exit62.lr.ph.i.i:                 ; preds = %.preheader.i.i
  %i.cv = load ptr, ptr %i.bk, align 8, !tbaa !189 ; 9 uses
  %xtraiter = and i64 %i.ct, 7                    ; 3 uses
  %i.cw = icmp ult i64 %i.ct, 8
  br i1 %i.cw, label %completions_get.exit62.i.i.epil.preheader, label %completions_get.exit62.lr.ph.i.i.new

completions_get.exit62.lr.ph.i.i.new:             ; preds = %completions_get.exit62.lr.ph.i.i
  %unroll_iter = and i64 %i.ct, 9223372036854775800
  br label %completions_get.exit62.i.i

completions_get.exit62.i.i:                       ; preds = %completions_get.exit62.i.i, %completions_get.exit62.lr.ph.i.i.new
  %.072.i.i = phi i64 [ 0, %completions_get.exit62.lr.ph.i.i.new ], [ %i.dn, %completions_get.exit62.i.i ] ; 9 uses
  %niter = phi i64 [ 0, %completions_get.exit62.lr.ph.i.i.new ], [ %niter.next.7, %completions_get.exit62.i.i ]
  %i.cx = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %.072.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  store i64 %i.cm, ptr %i.cy, align 8, !tbaa !263
  %i.cz = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %.072.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 64
  store i64 %i.cm, ptr %i.da, align 8, !tbaa !263
  %i.db = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %.072.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 104
  store i64 %i.cm, ptr %i.dc, align 8, !tbaa !263
  %i.dd = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %.072.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  store i64 %i.cm, ptr %i.de, align 8, !tbaa !263
  %i.df = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %.072.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 184
  store i64 %i.cm, ptr %i.dg, align 8, !tbaa !263
  %i.dh = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %.072.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 224
  store i64 %i.cm, ptr %i.di, align 8, !tbaa !263
  %i.dj = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %.072.i.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 264
  store i64 %i.cm, ptr %i.dk, align 8, !tbaa !263
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %.072.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 304
  store i64 %i.cm, ptr %i.dm, align 8, !tbaa !263
  %i.dn = add nuw nsw i64 %.072.i.i, 8            ; 2 uses
  %niter.next.7 = add nuw nsw i64 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.loopexit.i.i.loopexit.unr-lcssa, label %completions_get.exit62.i.i, !llvm.loop !418

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %completions_get.exit62.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i.i, label %completions_get.exit62.i.i.epil.preheader

completions_get.exit62.i.i.epil.preheader:        ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %completions_get.exit62.lr.ph.i.i
  %.072.i.i.epil.init = phi i64 [ 0, %completions_get.exit62.lr.ph.i.i ], [ %i.dn, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod393 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod393)
  br label %completions_get.exit62.i.i.epil

completions_get.exit62.i.i.epil:                  ; preds = %completions_get.exit62.i.i.epil, %completions_get.exit62.i.i.epil.preheader
  %.072.i.i.epil = phi i64 [ %.072.i.i.epil.init, %completions_get.exit62.i.i.epil.preheader ], [ %i.dq, %completions_get.exit62.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %completions_get.exit62.i.i.epil.preheader ], [ %epil.iter.next, %completions_get.exit62.i.i.epil ]
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.cv, i64 %.072.i.i.epil
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  store i64 %i.cm, ptr %i.dp, align 8, !tbaa !263
  %i.dq = add nuw nsw i64 %.072.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i.i, label %completions_get.exit62.i.i.epil, !llvm.loop !419

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %completions_get.exit62.i.i.epil, %.preheader.i.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.i.i, %.loopexit63.i.i
  %.1.i.i = phi i64 [ %i.cr, %.loopexit.i.i ], [ -1, %.loopexit63.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %completions_apply_longest_prefix.exit.i

completions_apply_longest_prefix.exit.i:          ; preds = %bb.w, %completions_apply.exit.i.i
  %.3.i.i = phi i64 [ %i.bj, %completions_apply.exit.i.i ], [ %.1.i.i, %bb.w ] ; 2 uses
  %i.dr = icmp sgt i64 %.3.i.i, -1
  br i1 %i.dr, label %bb.x, label %completions_apply_longest_prefix.exit.thread.i

completions_apply_longest_prefix.exit.thread.i:   ; preds = %completions_apply_longest_prefix.exit.i, %completions_get.exit.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 80
  call fastcc void @editor_restore(ptr noundef nonnull %1, ptr noundef %i.ds, ptr noundef null)
  br label %edit_complete_longest_prefix.exit

bb.x:                                             ; preds = %completions_apply_longest_prefix.exit.i
  store i64 %.3.i.i, ptr %i.d, align 8, !tbaa !222
  call fastcc void @edit_refresh(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br label %edit_complete_longest_prefix.exit

edit_complete_longest_prefix.exit:                ; preds = %bb.x, %completions_apply_longest_prefix.exit.thread.i, %bb.n
  %i.dt = load ptr, ptr %i.n, align 8, !tbaa !122 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !126 ; 2 uses
  %i.dw = icmp slt i64 %i.dv, 1
  br i1 %i.dw, label %completions_sort.exit, label %bb.y

bb.y:                                             ; preds = %edit_complete_longest_prefix.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !189
  call void @qsort(ptr noundef %i.dy, i64 noundef %i.dv, i64 noundef 40, ptr noundef nonnull @completion_compare) #28
  %.pre = load ptr, ptr %i.n, align 8, !tbaa !122
  br label %completions_sort.exit

completions_sort.exit:                            ; preds = %edit_complete_longest_prefix.exit, %bb.y
  %5 = phi ptr [ %i.dt, %edit_complete_longest_prefix.exit ], [ %.pre, %bb.y ]
  %6 = getelementptr i8, ptr %5, i64 24
  %.val197.i = load i64, ptr %6, align 8, !tbaa !126 ; 12 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 3 uses
  %i.ea = load i8, ptr %i.dz, align 4, !tbaa !172, !range !136, !noundef !137
  %i.eb = xor i8 %i.ea, 1
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = sub nsw i64 0, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 10 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.eg = icmp sgt i64 %.val197.i, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 14 uses
  %.not691.i = icmp eq i64 %.val197.i, 4
  %i.ei = call i64 @llvm.smin.i64(i64 %.val197.i, i64 8)
  %i.ej = icmp slt i64 %.val197.i, 7
  %i.ek = select i1 %i.ej, i64 3, i64 4           ; 4 uses
  %i.el = call i64 @llvm.smin.i64(i64 %.val197.i, i64 9) ; 5 uses
  %i.em = icmp sgt i64 %.val197.i, 0
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %exitcond803.peel.not.i = icmp eq i64 %.val197.i, 1
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %completions_sort.exit
  %.0173.i = phi i64 [ %i.ed, %completions_sort.exit ], [ %.0173.i.be, %.backedge.i.backedge ] ; 15 uses
  %i.ep = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 5 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %.sbuf_len.exit_crit_edge.i.i, label %bb.z

.sbuf_len.exit_crit_edge.i.i:                     ; preds = %.backedge.i
  %.pre.i.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %i.er = call i64 @llvm.smin.i64(i64 %.pre.i.i, i64 0)
  br label %sbuf_len.exit.i.i

bb.z:                                             ; preds = %.backedge.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.et = load i64, ptr %i.es, align 8, !tbaa !79 ; 2 uses
  br label %sbuf_len.exit.i.i

sbuf_len.exit.i.i:                                ; preds = %bb.z, %.sbuf_len.exit_crit_edge.i.i
  %i.eu = phi i64 [ %i.et, %bb.z ], [ %.pre.i.i, %.sbuf_len.exit_crit_edge.i.i ] ; 2 uses
  %.0.i.i.i25 = phi i64 [ %i.et, %bb.z ], [ %i.er, %.sbuf_len.exit_crit_edge.i.i ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %.not.i.i.i26 = icmp sgt i64 %i.eu, 0
  br i1 %.not.i.i.i26, label %bb.aa, label %sbuf_clear.exit.i

bb.aa:                                            ; preds = %sbuf_len.exit.i.i
  %i.ew = sub i64 %i.eu, %.0.i.i.i25              ; 3 uses
  %i.ex = icmp slt i64 %i.ew, 1
  br i1 %i.ex, label %ic_memmove.exit.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !81 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %i.ey, i64 %.0.i.i.i25
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ey, ptr readonly align 1 %i.ez, i64 %i.ew, i1 false)
  %.pre.i.i.i = load i64, ptr %i.ev, align 8, !tbaa !79
  %.pre2.i.i = sub nsw i64 %.pre.i.i.i, %.0.i.i.i25
  br label %ic_memmove.exit.i.i.i

ic_memmove.exit.i.i.i:                            ; preds = %bb.ab, %bb.aa
  %.pre-phi.i.i = phi i64 [ %.pre2.i.i, %bb.ab ], [ %i.ew, %bb.aa ] ; 2 uses
  store i64 %.pre-phi.i.i, ptr %i.ev, align 8, !tbaa !79
  %i.fa = load ptr, ptr %i.ep, align 8, !tbaa !81
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %.pre-phi.i.i
  store i8 0, ptr %i.fb, align 1, !tbaa !48
  br label %sbuf_clear.exit.i

sbuf_clear.exit.i:                                ; preds = %ic_memmove.exit.i.i.i, %sbuf_len.exit.i.i
  %i.fc = load ptr, ptr %i.ef, align 8, !tbaa !143
  %i.fd = getelementptr i8, ptr %i.fc, i64 8
  %.val.i = load i64, ptr %i.fd, align 8, !tbaa !203
  %i.fe = add nsw i64 %.val.i, -1                 ; 2 uses
  br i1 %i.eg, label %.preheader775.i, label %.thread.i

.preheader775.i:                                  ; preds = %sbuf_clear.exit.i, %completions_get_display.exit.thread.i.i
  %.01119.i.i = phi i64 [ %i.mq, %completions_get_display.exit.thread.i.i ], [ 0, %sbuf_clear.exit.i ] ; 3 uses
  %.01218.i.i = phi i64 [ %spec.select.i.i32, %completions_get_display.exit.thread.i.i ], [ 0, %sbuf_clear.exit.i ]
  %i.ff = load ptr, ptr %i.eh, align 8, !tbaa !148 ; 2 uses
  %i.fg = load ptr, ptr %i.n, align 8, !tbaa !122 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !126
  %.not.i.i.i.i30 = icmp slt i64 %.01119.i.i, %i.fi
  br i1 %.not.i.i.i.i30, label %completions_get.exit.i.i.i, label %completions_get_display.exit.thread.i.i

completions_get.exit.i.i.i:                       ; preds = %.preheader775.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !189 ; 2 uses
  %i.fl = getelementptr inbounds nuw [40 x i8], ptr %i.fk, i64 %.01119.i.i ; 3 uses
  %i.fm = icmp eq ptr %i.fk, null
  br i1 %i.fm, label %completions_get_display.exit.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %completions_get.exit.i.i.i
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !194 ; 7 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !192 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not14.i.i.i, label %completions_get_display.exit.i.i, label %completions_get_display.exit.i.thread.i

completions_get_display.exit.i.i:                 ; preds = %bb.ac
  %i.fr = load ptr, ptr %i.fl, align 8, !tbaa !193 ; 2 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bbcode_column_width.exit284.i, label %completions_get_display.exit.i.thread.i

completions_get_display.exit.i.thread.i:          ; preds = %completions_get_display.exit.i.i, %bb.ac
  %.0.i.i198625.i = phi ptr [ %i.fr, %completions_get_display.exit.i.i ], [ %i.fq, %bb.ac ] ; 6 uses
  %i.ft = load i8, ptr %.0.i.i198625.i, align 1, !tbaa !48
  %i.fu = icmp eq i8 %i.ft, 0
  br i1 %i.fu, label %bbcode_column_width.exit284.i, label %bb.ad

bb.ad:                                            ; preds = %completions_get_display.exit.i.thread.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ff, i64 80 ; 2 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !149 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %ic_strlen.exit.i.i277.i, label %bb.am

ic_strlen.exit.i.i277.i:                          ; preds = %bb.ad
  %i.fy = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i198625.i) #29 ; 2 uses
  %i.fz = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.fy, i64 0) ; 3 uses
  %i.ga = icmp slt i64 %i.fy, 1
  br i1 %i.ga, label %bbcode_column_width.exit284.i, label %.lr.ph.i.i.i278.i

.lr.ph.i.i.i278.i:                                ; preds = %ic_strlen.exit.i.i277.i, %bb.al
  %.019.i.i.i279.i = phi i64 [ %i.hg, %bb.al ], [ 0, %ic_strlen.exit.i.i277.i ] ; 3 uses
  %.01218.i.i.i280.i = phi i64 [ %i.hh, %bb.al ], [ 0, %ic_strlen.exit.i.i277.i ] ; 6 uses
  %i.gb = icmp sgt i64 %i.fz, %.01218.i.i.i280.i
  br i1 %i.gb, label %bb.ae, label %bbcode_column_width.exit284.i

bb.ae:                                            ; preds = %.lr.ph.i.i.i278.i
  %i.gc = getelementptr inbounds i8, ptr %.0.i.i198625.i, i64 %.01218.i.i.i280.i ; 7 uses
  %i.gd = sub nsw i64 %i.fz, %.01218.i.i.i280.i   ; 7 uses
  %7 = icmp slt i64 %i.gd, 2
  br i1 %7, label %skip_esc.exit.i491.i, label %8

8:                                                ; preds = %bb.ae
  %9 = load i8, ptr %i.gc, align 1, !tbaa !48
  %.not66.i.i490.i = icmp eq i8 %9, 27
  br i1 %.not66.i.i490.i, label %bb.af, label %skip_esc.exit.i491.i

bb.af:                                            ; preds = %8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !48
  %.fr89.i.i496.i = freeze i8 %i.gf               ; 2 uses
  %i.gg = sext i8 %.fr89.i.i496.i to i32
  %memchr.i.i497.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.gg, i64 7)
  %.not67.i.i498.i = icmp eq ptr %memchr.i.i497.i, null
  %.not87.i.i499.i = icmp eq i64 %i.gd, 2
  %or.cond.i.i500.i = or i1 %.not87.i.i499.i, %.not67.i.i498.i
  br i1 %or.cond.i.i500.i, label %str_next_ofs.exit512.thread.i, label %.lr.ph.i.i501.i

.lr.ph.i.i501.i:                                  ; preds = %bb.af
  %.not.i.i502.i = icmp eq i8 %.fr89.i.i496.i, 91
  br i1 %.not.i.i502.i, label %.lr.ph.split.us.split.i.i508.i, label %.lr.ph.split.split.us.i.i503.i

.lr.ph.split.us.split.i.i508.i:                   ; preds = %.lr.ph.i.i501.i, %bb.ag
  %.05475.us.i.i509.i = phi i64 [ %i.gh, %bb.ag ], [ 2, %.lr.ph.i.i501.i ] ; 2 uses
  %i.gh = add nuw nsw i64 %.05475.us.i.i509.i, 1  ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.05475.us.i.i509.i
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !48  ; 2 uses
  %i.gk = icmp sgt i8 %i.gj, 63
  %i.gl = icmp eq i8 %i.gj, 2
  %or.cond116.i.i510.i = or i1 %i.gk, %i.gl
  br i1 %or.cond116.i.i510.i, label %str_next_ofs.exit512.thread.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.split.us.split.i.i508.i
  %exitcond.not.i.i511.i = icmp eq i64 %i.gh, %i.gd
  br i1 %exitcond.not.i.i511.i, label %str_next_ofs.exit512.thread.i, label %.lr.ph.split.us.split.i.i508.i, !llvm.loop !11

.lr.ph.split.split.us.i.i503.i:                   ; preds = %.lr.ph.i.i501.i, %bb.aj
  %.05475.us76.i.i504.i = phi i64 [ %i.gm, %bb.aj ], [ 2, %.lr.ph.i.i501.i ] ; 3 uses
  %i.gm = add nuw nsw i64 %.05475.us76.i.i504.i, 1 ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gc, i64 %.05475.us76.i.i504.i
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !48  ; 2 uses
  switch i8 %i.go, label %bb.ah [
    i8 7, label %str_next_ofs.exit512.thread.i
    i8 2, label %str_next_ofs.exit512.thread.i
  ]

bb.ah:                                            ; preds = %.lr.ph.split.split.us.i.i503.i
  %i.gp = icmp eq i8 %i.go, 27
  %i.gq = icmp sgt i64 %i.gd, %i.gm
  %or.cond.us.i.i505.i = select i1 %i.gp, i1 %i.gq, i1 false
  br i1 %or.cond.us.i.i505.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gm
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !48
  %i.gt = icmp eq i8 %i.gs, 92
  br i1 %i.gt, label %.split83.us.i.i507.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %exitcond103.not.i.i506.i = icmp eq i64 %i.gm, %i.gd
  br i1 %exitcond103.not.i.i506.i, label %str_next_ofs.exit512.thread.i, label %.lr.ph.split.split.us.i.i503.i, !llvm.loop !11

.split83.us.i.i507.i:                             ; preds = %bb.ai
  %i.gu = add nuw nsw i64 %.05475.us76.i.i504.i, 2
  br label %str_next_ofs.exit512.thread.i

skip_esc.exit.i491.i:                             ; preds = %8, %bb.ae
  %i.gv = add nsw i64 %.01218.i.i.i280.i, 1       ; 2 uses
  %i.gw = icmp sgt i64 %i.fz, %i.gv
  br i1 %i.gw, label %.lr.ph.i492.i, label %str_next_ofs.exit512.thread.i

.lr.ph.i492.i:                                    ; preds = %skip_esc.exit.i491.i, %bb.ak
  %i.gx = phi i64 [ %i.hb, %bb.ak ], [ %i.gv, %skip_esc.exit.i491.i ]
  %.02837.i493.i = phi i64 [ %i.ha, %bb.ak ], [ 1, %skip_esc.exit.i491.i ] ; 2 uses
  %i.gy = getelementptr inbounds i8, ptr %.0.i.i198625.i, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !48
  %or.cond.i494.i = icmp sgt i8 %i.gz, -65
  br i1 %or.cond.i494.i, label %str_next_ofs.exit512.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i492.i
  %i.ha = add nuw i64 %.02837.i493.i, 1           ; 3 uses
  %i.hb = add nsw i64 %i.ha, %.01218.i.i.i280.i
  %exitcond.not.i495.i = icmp eq i64 %i.ha, %i.gd
  br i1 %exitcond.not.i495.i, label %str_next_ofs.exit512.i, label %.lr.ph.i492.i

str_next_ofs.exit512.thread.i:                    ; preds = %bb.aj, %.lr.ph.split.split.us.i.i503.i, %.lr.ph.split.split.us.i.i503.i, %bb.ag, %.lr.ph.split.us.split.i.i508.i, %skip_esc.exit.i491.i, %.split83.us.i.i507.i, %bb.af
  %.2.i489.ph.i = phi i64 [ 1, %skip_esc.exit.i491.i ], [ %i.gu, %.split83.us.i.i507.i ], [ %i.gh, %.lr.ph.split.us.split.i.i508.i ], [ 2, %bb.af ], [ 2, %bb.ag ], [ 2, %bb.aj ], [ %i.gm, %.lr.ph.split.split.us.i.i503.i ], [ %i.gm, %.lr.ph.split.split.us.i.i503.i ] ; 2 uses
  %i.hc = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.gc, i64 noundef %.2.i489.ph.i)
  br label %bb.al

str_next_ofs.exit512.i:                           ; preds = %bb.ak, %.lr.ph.i492.i
  %.2.i489.i = phi i64 [ %.02837.i493.i, %.lr.ph.i492.i ], [ %i.gd, %bb.ak ] ; 3 uses
  %i.hd = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.gc, i64 noundef %.2.i489.i)
  %i.he = icmp sgt i64 %.2.i489.i, 0
  br i1 %i.he, label %bb.al, label %bbcode_column_width.exit284.i

bb.al:                                            ; preds = %str_next_ofs.exit512.i, %str_next_ofs.exit512.thread.i
  %i.hf = phi i64 [ %i.hc, %str_next_ofs.exit512.thread.i ], [ %i.hd, %str_next_ofs.exit512.i ]
  %.2.i489627.i = phi i64 [ %.2.i489.ph.i, %str_next_ofs.exit512.thread.i ], [ %.2.i489.i, %str_next_ofs.exit512.i ]
  %i.hg = add nsw i64 %i.hf, %.019.i.i.i279.i     ; 2 uses
  %i.hh = add nuw nsw i64 %.2.i489627.i, %.01218.i.i.i280.i ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0.i.i198625.i, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !48
  %.not.i.i.i283.i = icmp eq i8 %i.hj, 0
  br i1 %.not.i.i.i283.i, label %bbcode_column_width.exit284.i, label %.lr.ph.i.i.i278.i, !llvm.loop !7

bb.am:                                            ; preds = %bb.ad
  call fastcc void @bbcode_append(ptr noundef nonnull %i.ff, ptr noundef nonnull %.0.i.i198625.i, ptr noundef %i.fw, ptr noundef null)
  %i.hk = load ptr, ptr %i.fv, align 8, !tbaa !149 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !79 ; 2 uses
  %i.hn = icmp slt i64 %i.hm, 0
  br i1 %i.hn, label %bbcode_column_width.exit284.i, label %ic_strlen.exit.i12.i263.i

ic_strlen.exit.i12.i263.i:                        ; preds = %bb.am
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !81 ; 3 uses
  %i.hp = icmp eq ptr %i.ho, null
  %spec.select.i264.i = select i1 %i.hp, ptr @.str.3, ptr %i.ho ; 5 uses
  %i.hq = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select.i264.i) #29 ; 2 uses
  %i.hr = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.hq, i64 0) ; 3 uses
  %i.hs = icmp slt i64 %i.hq, 1
  br i1 %i.hs, label %sbuf_len.exit.i.i271.i, label %bb.an

bb.an:                                            ; preds = %ic_strlen.exit.i12.i263.i
  %i.ht = load i8, ptr %spec.select.i264.i, align 1, !tbaa !48
  %.not17.i.i13.i265.i = icmp eq i8 %i.ht, 0
  br i1 %.not17.i.i13.i265.i, label %sbuf_len.exit.i.i271.i, label %.lr.ph.i.i14.i266.i

.lr.ph.i.i14.i266.i:                              ; preds = %bb.an, %bb.av
  %.019.i.i15.i267.i = phi i64 [ %i.iz, %bb.av ], [ 0, %bb.an ] ; 3 uses
  %.01218.i.i16.i268.i = phi i64 [ %i.ja, %bb.av ], [ 0, %bb.an ] ; 6 uses
  %i.hu = icmp sgt i64 %i.hr, %.01218.i.i16.i268.i
  br i1 %i.hu, label %bb.ao, label %sbuf_len.exit.i.i271.i

bb.ao:                                            ; preds = %.lr.ph.i.i14.i266.i
  %i.hv = getelementptr inbounds i8, ptr %spec.select.i264.i, i64 %.01218.i.i16.i268.i ; 7 uses
  %i.hw = sub nsw i64 %i.hr, %.01218.i.i16.i268.i ; 7 uses
  %10 = icmp slt i64 %i.hw, 2
  br i1 %10, label %skip_esc.exit.i465.i, label %11

11:                                               ; preds = %bb.ao
  %12 = load i8, ptr %i.hv, align 1, !tbaa !48
  %.not66.i.i464.i = icmp eq i8 %12, 27
  br i1 %.not66.i.i464.i, label %bb.ap, label %skip_esc.exit.i465.i

bb.ap:                                            ; preds = %11
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !48
  %.fr89.i.i470.i = freeze i8 %i.hy               ; 2 uses
  %i.hz = sext i8 %.fr89.i.i470.i to i32
  %memchr.i.i471.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.hz, i64 7)
  %.not67.i.i472.i = icmp eq ptr %memchr.i.i471.i, null
  %.not87.i.i473.i = icmp eq i64 %i.hw, 2
  %or.cond.i.i474.i = or i1 %.not87.i.i473.i, %.not67.i.i472.i
  br i1 %or.cond.i.i474.i, label %str_next_ofs.exit486.thread.i, label %.lr.ph.i.i475.i

.lr.ph.i.i475.i:                                  ; preds = %bb.ap
  %.not.i.i476.i = icmp eq i8 %.fr89.i.i470.i, 91
  br i1 %.not.i.i476.i, label %.lr.ph.split.us.split.i.i482.i, label %.lr.ph.split.split.us.i.i477.i

.lr.ph.split.us.split.i.i482.i:                   ; preds = %.lr.ph.i.i475.i, %bb.aq
  %.05475.us.i.i483.i = phi i64 [ %i.ia, %bb.aq ], [ 2, %.lr.ph.i.i475.i ] ; 2 uses
  %i.ia = add nuw nsw i64 %.05475.us.i.i483.i, 1  ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.05475.us.i.i483.i
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !48  ; 2 uses
  %i.id = icmp sgt i8 %i.ic, 63
  %i.ie = icmp eq i8 %i.ic, 2
  %or.cond116.i.i484.i = or i1 %i.id, %i.ie
  br i1 %or.cond116.i.i484.i, label %str_next_ofs.exit486.thread.i, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.us.split.i.i482.i
  %exitcond.not.i.i485.i = icmp eq i64 %i.ia, %i.hw
  br i1 %exitcond.not.i.i485.i, label %str_next_ofs.exit486.thread.i, label %.lr.ph.split.us.split.i.i482.i, !llvm.loop !11

.lr.ph.split.split.us.i.i477.i:                   ; preds = %.lr.ph.i.i475.i, %bb.at
  %.05475.us76.i.i478.i = phi i64 [ %i.if, %bb.at ], [ 2, %.lr.ph.i.i475.i ] ; 3 uses
  %i.if = add nuw nsw i64 %.05475.us76.i.i478.i, 1 ; 6 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hv, i64 %.05475.us76.i.i478.i
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !48  ; 2 uses
  switch i8 %i.ih, label %bb.ar [
    i8 7, label %str_next_ofs.exit486.thread.i
    i8 2, label %str_next_ofs.exit486.thread.i
  ]

bb.ar:                                            ; preds = %.lr.ph.split.split.us.i.i477.i
  %i.ii = icmp eq i8 %i.ih, 27
  %i.ij = icmp sgt i64 %i.hw, %i.if
  %or.cond.us.i.i479.i = select i1 %i.ii, i1 %i.ij, i1 false
  br i1 %or.cond.us.i.i479.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.if
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !48
  %i.im = icmp eq i8 %i.il, 92
  br i1 %i.im, label %.split83.us.i.i481.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %exitcond103.not.i.i480.i = icmp eq i64 %i.if, %i.hw
  br i1 %exitcond103.not.i.i480.i, label %str_next_ofs.exit486.thread.i, label %.lr.ph.split.split.us.i.i477.i, !llvm.loop !11

.split83.us.i.i481.i:                             ; preds = %bb.as
  %i.in = add nuw nsw i64 %.05475.us76.i.i478.i, 2
  br label %str_next_ofs.exit486.thread.i

skip_esc.exit.i465.i:                             ; preds = %11, %bb.ao
  %i.io = add nsw i64 %.01218.i.i16.i268.i, 1     ; 2 uses
  %i.ip = icmp sgt i64 %i.hr, %i.io
  br i1 %i.ip, label %.lr.ph.i466.i, label %str_next_ofs.exit486.thread.i

.lr.ph.i466.i:                                    ; preds = %skip_esc.exit.i465.i, %bb.au
  %i.iq = phi i64 [ %i.iu, %bb.au ], [ %i.io, %skip_esc.exit.i465.i ]
  %.02837.i467.i = phi i64 [ %i.it, %bb.au ], [ 1, %skip_esc.exit.i465.i ] ; 2 uses
  %i.ir = getelementptr inbounds i8, ptr %spec.select.i264.i, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !48
  %or.cond.i468.i = icmp sgt i8 %i.is, -65
  br i1 %or.cond.i468.i, label %str_next_ofs.exit486.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i466.i
  %i.it = add nuw i64 %.02837.i467.i, 1           ; 3 uses
  %i.iu = add nsw i64 %i.it, %.01218.i.i16.i268.i
  %exitcond.not.i469.i = icmp eq i64 %i.it, %i.hw
  br i1 %exitcond.not.i469.i, label %str_next_ofs.exit486.i, label %.lr.ph.i466.i

str_next_ofs.exit486.thread.i:                    ; preds = %bb.at, %.lr.ph.split.split.us.i.i477.i, %.lr.ph.split.split.us.i.i477.i, %bb.aq, %.lr.ph.split.us.split.i.i482.i, %skip_esc.exit.i465.i, %.split83.us.i.i481.i, %bb.ap
  %.2.i463.ph.i = phi i64 [ 1, %skip_esc.exit.i465.i ], [ %i.in, %.split83.us.i.i481.i ], [ %i.ia, %.lr.ph.split.us.split.i.i482.i ], [ 2, %bb.ap ], [ 2, %bb.aq ], [ 2, %bb.at ], [ %i.if, %.lr.ph.split.split.us.i.i477.i ], [ %i.if, %.lr.ph.split.split.us.i.i477.i ] ; 2 uses
  %i.iv = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.hv, i64 noundef %.2.i463.ph.i)
  br label %bb.av

str_next_ofs.exit486.i:                           ; preds = %bb.au, %.lr.ph.i466.i
  %.2.i463.i = phi i64 [ %.02837.i467.i, %.lr.ph.i466.i ], [ %i.hw, %bb.au ] ; 3 uses
  %i.iw = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.hv, i64 noundef %.2.i463.i)
  %i.ix = icmp sgt i64 %.2.i463.i, 0
  br i1 %i.ix, label %bb.av, label %sbuf_len.exit.i.i271.i

bb.av:                                            ; preds = %str_next_ofs.exit486.i, %str_next_ofs.exit486.thread.i
  %i.iy = phi i64 [ %i.iv, %str_next_ofs.exit486.thread.i ], [ %i.iw, %str_next_ofs.exit486.i ]
  %.2.i463631.i = phi i64 [ %.2.i463.ph.i, %str_next_ofs.exit486.thread.i ], [ %.2.i463.i, %str_next_ofs.exit486.i ]
  %i.iz = add nsw i64 %i.iy, %.019.i.i15.i267.i   ; 2 uses
  %i.ja = add nuw nsw i64 %.2.i463631.i, %.01218.i.i16.i268.i ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %spec.select.i264.i, i64 %i.ja
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !48
  %.not.i.i20.i276.i = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i20.i276.i, label %sbuf_len.exit.i.i271.i, label %.lr.ph.i.i14.i266.i, !llvm.loop !7

sbuf_len.exit.i.i271.i:                           ; preds = %.lr.ph.i.i14.i266.i, %bb.av, %str_next_ofs.exit486.i, %bb.an, %ic_strlen.exit.i12.i263.i
  %.013.i.i1927.i272.i = phi i64 [ 0, %ic_strlen.exit.i12.i263.i ], [ 0, %bb.an ], [ %.019.i.i15.i267.i, %.lr.ph.i.i14.i266.i ], [ %.019.i.i15.i267.i, %str_next_ofs.exit486.i ], [ %i.iz, %bb.av ] ; 2 uses
  %.not.i.i23.not.i273.i = icmp eq i64 %i.hm, 0
  br i1 %.not.i.i23.not.i273.i, label %bbcode_column_width.exit284.i, label %ic_memmove.exit.i.i.i274.i

ic_memmove.exit.i.i.i274.i:                       ; preds = %sbuf_len.exit.i.i271.i
  store i64 0, ptr %i.hl, align 8, !tbaa !79
  store i8 0, ptr %i.ho, align 1, !tbaa !48
  br label %bbcode_column_width.exit284.i

bbcode_column_width.exit284.i:                    ; preds = %.lr.ph.i.i.i278.i, %bb.al, %str_next_ofs.exit512.i, %ic_memmove.exit.i.i.i274.i, %sbuf_len.exit.i.i271.i, %bb.am, %ic_strlen.exit.i.i277.i, %completions_get_display.exit.i.thread.i, %completions_get_display.exit.i.i
  %.0.i275.i = phi i64 [ 0, %ic_strlen.exit.i.i277.i ], [ 0, %completions_get_display.exit.i.i ], [ 0, %completions_get_display.exit.i.thread.i ], [ 0, %bb.am ], [ %.013.i.i1927.i272.i, %sbuf_len.exit.i.i271.i ], [ %.013.i.i1927.i272.i, %ic_memmove.exit.i.i.i274.i ], [ %.019.i.i.i279.i, %.lr.ph.i.i.i278.i ], [ %.019.i.i.i279.i, %str_next_ofs.exit512.i ], [ %i.hg, %bb.al ] ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i35, label %completions_get_display.exit.thread.i.i, label %bb.aw

bb.aw:                                            ; preds = %bbcode_column_width.exit284.i
  %i.jd = load ptr, ptr %i.eh, align 8, !tbaa !148 ; 2 uses
  %i.je = load i8, ptr %i.fo, align 1, !tbaa !48
  %i.jf = icmp eq i8 %i.je, 0
  br i1 %i.jf, label %bbcode_column_width.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jd, i64 80 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !149 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, null
  br i1 %i.ji, label %ic_strlen.exit.i.i.i, label %bb.bg

ic_strlen.exit.i.i.i:                             ; preds = %bb.ax
  %i.jj = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.fo) #29 ; 2 uses
  %i.jk = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.jj, i64 0) ; 3 uses
  %i.jl = icmp slt i64 %i.jj, 1
  br i1 %i.jl, label %bbcode_column_width.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %ic_strlen.exit.i.i.i, %bb.bf
  %.019.i.i.i.i = phi i64 [ %i.kr, %bb.bf ], [ 0, %ic_strlen.exit.i.i.i ] ; 3 uses
  %.01218.i.i.i.i = phi i64 [ %i.ks, %bb.bf ], [ 0, %ic_strlen.exit.i.i.i ] ; 6 uses
  %i.jm = icmp sgt i64 %i.jk, %.01218.i.i.i.i
  br i1 %i.jm, label %bb.ay, label %bbcode_column_width.exit.i

bb.ay:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jn = getelementptr inbounds i8, ptr %i.fo, i64 %.01218.i.i.i.i ; 7 uses
  %i.jo = sub nsw i64 %i.jk, %.01218.i.i.i.i      ; 7 uses
  %13 = icmp slt i64 %i.jo, 2
  br i1 %13, label %skip_esc.exit.i439.i, label %14

14:                                               ; preds = %bb.ay
  %15 = load i8, ptr %i.jn, align 1, !tbaa !48
  %.not66.i.i438.i = icmp eq i8 %15, 27
  br i1 %.not66.i.i438.i, label %bb.az, label %skip_esc.exit.i439.i

bb.az:                                            ; preds = %14
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !48
  %.fr89.i.i444.i = freeze i8 %i.jq               ; 2 uses
  %i.jr = sext i8 %.fr89.i.i444.i to i32
  %memchr.i.i445.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.jr, i64 7)
  %.not67.i.i446.i = icmp eq ptr %memchr.i.i445.i, null
  %.not87.i.i447.i = icmp eq i64 %i.jo, 2
  %or.cond.i.i448.i = or i1 %.not87.i.i447.i, %.not67.i.i446.i
  br i1 %or.cond.i.i448.i, label %str_next_ofs.exit460.thread.i, label %.lr.ph.i.i449.i

.lr.ph.i.i449.i:                                  ; preds = %bb.az
  %.not.i.i450.i = icmp eq i8 %.fr89.i.i444.i, 91
  br i1 %.not.i.i450.i, label %.lr.ph.split.us.split.i.i456.i, label %.lr.ph.split.split.us.i.i451.i

.lr.ph.split.us.split.i.i456.i:                   ; preds = %.lr.ph.i.i449.i, %bb.ba
  %.05475.us.i.i457.i = phi i64 [ %i.js, %bb.ba ], [ 2, %.lr.ph.i.i449.i ] ; 2 uses
  %i.js = add nuw nsw i64 %.05475.us.i.i457.i, 1  ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.05475.us.i.i457.i
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !48  ; 2 uses
  %i.jv = icmp sgt i8 %i.ju, 63
  %i.jw = icmp eq i8 %i.ju, 2
  %or.cond116.i.i458.i = or i1 %i.jv, %i.jw
  br i1 %or.cond116.i.i458.i, label %str_next_ofs.exit460.thread.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.split.us.split.i.i456.i
  %exitcond.not.i.i459.i = icmp eq i64 %i.js, %i.jo
  br i1 %exitcond.not.i.i459.i, label %str_next_ofs.exit460.thread.i, label %.lr.ph.split.us.split.i.i456.i, !llvm.loop !11

.lr.ph.split.split.us.i.i451.i:                   ; preds = %.lr.ph.i.i449.i, %bb.bd
  %.05475.us76.i.i452.i = phi i64 [ %i.jx, %bb.bd ], [ 2, %.lr.ph.i.i449.i ] ; 3 uses
  %i.jx = add nuw nsw i64 %.05475.us76.i.i452.i, 1 ; 6 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jn, i64 %.05475.us76.i.i452.i
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !48  ; 2 uses
  switch i8 %i.jz, label %bb.bb [
    i8 7, label %str_next_ofs.exit460.thread.i
    i8 2, label %str_next_ofs.exit460.thread.i
  ]

bb.bb:                                            ; preds = %.lr.ph.split.split.us.i.i451.i
  %i.ka = icmp eq i8 %i.jz, 27
  %i.kb = icmp sgt i64 %i.jo, %i.jx
  %or.cond.us.i.i453.i = select i1 %i.ka, i1 %i.kb, i1 false
  br i1 %or.cond.us.i.i453.i, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jx
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !48
  %i.ke = icmp eq i8 %i.kd, 92
  br i1 %i.ke, label %.split83.us.i.i455.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %exitcond103.not.i.i454.i = icmp eq i64 %i.jx, %i.jo
  br i1 %exitcond103.not.i.i454.i, label %str_next_ofs.exit460.thread.i, label %.lr.ph.split.split.us.i.i451.i, !llvm.loop !11

.split83.us.i.i455.i:                             ; preds = %bb.bc
  %i.kf = add nuw nsw i64 %.05475.us76.i.i452.i, 2
  br label %str_next_ofs.exit460.thread.i

skip_esc.exit.i439.i:                             ; preds = %14, %bb.ay
  %i.kg = add nsw i64 %.01218.i.i.i.i, 1          ; 2 uses
  %i.kh = icmp sgt i64 %i.jk, %i.kg
  br i1 %i.kh, label %.lr.ph.i440.i, label %str_next_ofs.exit460.thread.i

.lr.ph.i440.i:                                    ; preds = %skip_esc.exit.i439.i, %bb.be
  %i.ki = phi i64 [ %i.km, %bb.be ], [ %i.kg, %skip_esc.exit.i439.i ]
  %.02837.i441.i = phi i64 [ %i.kl, %bb.be ], [ 1, %skip_esc.exit.i439.i ] ; 2 uses
  %i.kj = getelementptr inbounds i8, ptr %i.fo, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !48
  %or.cond.i442.i = icmp sgt i8 %i.kk, -65
  br i1 %or.cond.i442.i, label %str_next_ofs.exit460.i, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i440.i
  %i.kl = add nuw i64 %.02837.i441.i, 1           ; 3 uses
  %i.km = add nsw i64 %i.kl, %.01218.i.i.i.i
  %exitcond.not.i443.i = icmp eq i64 %i.kl, %i.jo
  br i1 %exitcond.not.i443.i, label %str_next_ofs.exit460.i, label %.lr.ph.i440.i

str_next_ofs.exit460.thread.i:                    ; preds = %bb.bd, %.lr.ph.split.split.us.i.i451.i, %.lr.ph.split.split.us.i.i451.i, %bb.ba, %.lr.ph.split.us.split.i.i456.i, %skip_esc.exit.i439.i, %.split83.us.i.i455.i, %bb.az
  %.2.i437.ph.i = phi i64 [ 1, %skip_esc.exit.i439.i ], [ %i.kf, %.split83.us.i.i455.i ], [ %i.js, %.lr.ph.split.us.split.i.i456.i ], [ 2, %bb.az ], [ 2, %bb.ba ], [ 2, %bb.bd ], [ %i.jx, %.lr.ph.split.split.us.i.i451.i ], [ %i.jx, %.lr.ph.split.split.us.i.i451.i ] ; 2 uses
  %i.kn = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.jn, i64 noundef %.2.i437.ph.i)
  br label %bb.bf

str_next_ofs.exit460.i:                           ; preds = %bb.be, %.lr.ph.i440.i
  %.2.i437.i = phi i64 [ %.02837.i441.i, %.lr.ph.i440.i ], [ %i.jo, %bb.be ] ; 3 uses
  %i.ko = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.jn, i64 noundef %.2.i437.i)
  %i.kp = icmp sgt i64 %.2.i437.i, 0
  br i1 %i.kp, label %bb.bf, label %bbcode_column_width.exit.i

bb.bf:                                            ; preds = %str_next_ofs.exit460.i, %str_next_ofs.exit460.thread.i
  %i.kq = phi i64 [ %i.kn, %str_next_ofs.exit460.thread.i ], [ %i.ko, %str_next_ofs.exit460.i ]
  %.2.i437635.i = phi i64 [ %.2.i437.ph.i, %str_next_ofs.exit460.thread.i ], [ %.2.i437.i, %str_next_ofs.exit460.i ]
  %i.kr = add nsw i64 %i.kq, %.019.i.i.i.i        ; 2 uses
  %i.ks = add nuw nsw i64 %.2.i437635.i, %.01218.i.i.i.i ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !48
  %.not.i.i.i262.i = icmp eq i8 %i.ku, 0
  br i1 %.not.i.i.i262.i, label %bbcode_column_width.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !7

bb.bg:                                            ; preds = %bb.ax
  call fastcc void @bbcode_append(ptr noundef nonnull %i.jd, ptr noundef nonnull %i.fo, ptr noundef %i.jh, ptr noundef null)
  %i.kv = load ptr, ptr %i.jg, align 8, !tbaa !149 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16 ; 2 uses
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !79 ; 2 uses
  %i.ky = icmp slt i64 %i.kx, 0
  br i1 %i.ky, label %bbcode_column_width.exit.i, label %ic_strlen.exit.i12.i.i

ic_strlen.exit.i12.i.i:                           ; preds = %bb.bg
  %i.kz = load ptr, ptr %i.kv, align 8, !tbaa !81 ; 3 uses
  %i.la = icmp eq ptr %i.kz, null
  %spec.select.i260.i = select i1 %i.la, ptr @.str.3, ptr %i.kz ; 5 uses
  %i.lb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select.i260.i) #29 ; 2 uses
  %i.lc = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.lb, i64 0) ; 3 uses
  %i.ld = icmp slt i64 %i.lb, 1
  br i1 %i.ld, label %sbuf_len.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %ic_strlen.exit.i12.i.i
  %i.le = load i8, ptr %spec.select.i260.i, align 1, !tbaa !48
  %.not17.i.i13.i.i = icmp eq i8 %i.le, 0
  br i1 %.not17.i.i13.i.i, label %sbuf_len.exit.i.i.i, label %.lr.ph.i.i14.i.i

.lr.ph.i.i14.i.i:                                 ; preds = %bb.bh, %bb.bp
  %.019.i.i15.i.i = phi i64 [ %i.mk, %bb.bp ], [ 0, %bb.bh ] ; 3 uses
  %.01218.i.i16.i.i = phi i64 [ %i.ml, %bb.bp ], [ 0, %bb.bh ] ; 6 uses
  %i.lf = icmp sgt i64 %i.lc, %.01218.i.i16.i.i
  br i1 %i.lf, label %bb.bi, label %sbuf_len.exit.i.i.i

bb.bi:                                            ; preds = %.lr.ph.i.i14.i.i
  %i.lg = getelementptr inbounds i8, ptr %spec.select.i260.i, i64 %.01218.i.i16.i.i ; 7 uses
  %i.lh = sub nsw i64 %i.lc, %.01218.i.i16.i.i    ; 7 uses
  %16 = icmp slt i64 %i.lh, 2
  br i1 %16, label %skip_esc.exit.i.i, label %17

17:                                               ; preds = %bb.bi
  %18 = load i8, ptr %i.lg, align 1, !tbaa !48
  %.not66.i.i.i = icmp eq i8 %18, 27
  br i1 %.not66.i.i.i, label %bb.bj, label %skip_esc.exit.i.i

bb.bj:                                            ; preds = %17
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !48
  %.fr89.i.i.i = freeze i8 %i.lj                  ; 2 uses
  %i.lk = sext i8 %.fr89.i.i.i to i32
  %memchr.i.i.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.lk, i64 7)
  %.not67.i.i.i = icmp eq ptr %memchr.i.i.i, null
  %.not87.i.i.i = icmp eq i64 %i.lh, 2
  %or.cond.i.i.i = or i1 %.not87.i.i.i, %.not67.i.i.i
  br i1 %or.cond.i.i.i, label %str_next_ofs.exit.thread.i, label %.lr.ph.i.i433.i

.lr.ph.i.i433.i:                                  ; preds = %bb.bj
  %.not.i.i434.i = icmp eq i8 %.fr89.i.i.i, 91
  br i1 %.not.i.i434.i, label %.lr.ph.split.us.split.i.i.i, label %.lr.ph.split.split.us.i.i.i

.lr.ph.split.us.split.i.i.i:                      ; preds = %.lr.ph.i.i433.i, %bb.bk
  %.05475.us.i.i.i = phi i64 [ %i.ll, %bb.bk ], [ 2, %.lr.ph.i.i433.i ] ; 2 uses
  %i.ll = add nuw nsw i64 %.05475.us.i.i.i, 1     ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.05475.us.i.i.i
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !48  ; 2 uses
  %i.lo = icmp sgt i8 %i.ln, 63
  %i.lp = icmp eq i8 %i.ln, 2
  %or.cond116.i.i.i = or i1 %i.lo, %i.lp
  br i1 %or.cond116.i.i.i, label %str_next_ofs.exit.thread.i, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.split.us.split.i.i.i
  %exitcond.not.i.i435.i = icmp eq i64 %i.ll, %i.lh
  br i1 %exitcond.not.i.i435.i, label %str_next_ofs.exit.thread.i, label %.lr.ph.split.us.split.i.i.i, !llvm.loop !11

.lr.ph.split.split.us.i.i.i:                      ; preds = %.lr.ph.i.i433.i, %bb.bn
  %.05475.us76.i.i.i = phi i64 [ %i.lq, %bb.bn ], [ 2, %.lr.ph.i.i433.i ] ; 3 uses
  %i.lq = add nuw nsw i64 %.05475.us76.i.i.i, 1   ; 6 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lg, i64 %.05475.us76.i.i.i
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !48  ; 2 uses
  switch i8 %i.ls, label %bb.bl [
    i8 7, label %str_next_ofs.exit.thread.i
    i8 2, label %str_next_ofs.exit.thread.i
  ]

bb.bl:                                            ; preds = %.lr.ph.split.split.us.i.i.i
  %i.lt = icmp eq i8 %i.ls, 27
  %i.lu = icmp sgt i64 %i.lh, %i.lq
  %or.cond.us.i.i.i = select i1 %i.lt, i1 %i.lu, i1 false
  br i1 %or.cond.us.i.i.i, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.lq
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !48
  %i.lx = icmp eq i8 %i.lw, 92
  br i1 %i.lx, label %.split83.us.i.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %exitcond103.not.i.i.i = icmp eq i64 %i.lq, %i.lh
  br i1 %exitcond103.not.i.i.i, label %str_next_ofs.exit.thread.i, label %.lr.ph.split.split.us.i.i.i, !llvm.loop !11

.split83.us.i.i.i:                                ; preds = %bb.bm
  %i.ly = add nuw nsw i64 %.05475.us76.i.i.i, 2
  br label %str_next_ofs.exit.thread.i

skip_esc.exit.i.i:                                ; preds = %17, %bb.bi
  %i.lz = add nsw i64 %.01218.i.i16.i.i, 1        ; 2 uses
  %i.ma = icmp sgt i64 %i.lc, %i.lz
  br i1 %i.ma, label %.lr.ph.i431.i, label %str_next_ofs.exit.thread.i

.lr.ph.i431.i:                                    ; preds = %skip_esc.exit.i.i, %bb.bo
  %i.mb = phi i64 [ %i.mf, %bb.bo ], [ %i.lz, %skip_esc.exit.i.i ]
  %.02837.i.i = phi i64 [ %i.me, %bb.bo ], [ 1, %skip_esc.exit.i.i ] ; 2 uses
  %i.mc = getelementptr inbounds i8, ptr %spec.select.i260.i, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !48
  %or.cond.i.i36 = icmp sgt i8 %i.md, -65
  br i1 %or.cond.i.i36, label %str_next_ofs.exit.i, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph.i431.i
  %i.me = add nuw i64 %.02837.i.i, 1              ; 3 uses
  %i.mf = add nsw i64 %i.me, %.01218.i.i16.i.i
  %exitcond.not.i432.i = icmp eq i64 %i.me, %i.lh
  br i1 %exitcond.not.i432.i, label %str_next_ofs.exit.i, label %.lr.ph.i431.i

str_next_ofs.exit.thread.i:                       ; preds = %bb.bn, %.lr.ph.split.split.us.i.i.i, %.lr.ph.split.split.us.i.i.i, %bb.bk, %.lr.ph.split.us.split.i.i.i, %skip_esc.exit.i.i, %.split83.us.i.i.i, %bb.bj
  %.2.i.ph.i = phi i64 [ 1, %skip_esc.exit.i.i ], [ %i.ly, %.split83.us.i.i.i ], [ %i.ll, %.lr.ph.split.us.split.i.i.i ], [ 2, %bb.bj ], [ 2, %bb.bk ], [ 2, %bb.bn ], [ %i.lq, %.lr.ph.split.split.us.i.i.i ], [ %i.lq, %.lr.ph.split.split.us.i.i.i ] ; 2 uses
  %i.mg = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.lg, i64 noundef %.2.i.ph.i)
  br label %bb.bp

str_next_ofs.exit.i:                              ; preds = %bb.bo, %.lr.ph.i431.i
  %.2.i.i = phi i64 [ %.02837.i.i, %.lr.ph.i431.i ], [ %i.lh, %bb.bo ] ; 3 uses
  %i.mh = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.lg, i64 noundef %.2.i.i)
  %i.mi = icmp sgt i64 %.2.i.i, 0
  br i1 %i.mi, label %bb.bp, label %sbuf_len.exit.i.i.i

bb.bp:                                            ; preds = %str_next_ofs.exit.i, %str_next_ofs.exit.thread.i
  %i.mj = phi i64 [ %i.mg, %str_next_ofs.exit.thread.i ], [ %i.mh, %str_next_ofs.exit.i ]
  %.2.i639.i = phi i64 [ %.2.i.ph.i, %str_next_ofs.exit.thread.i ], [ %.2.i.i, %str_next_ofs.exit.i ]
  %i.mk = add nsw i64 %i.mj, %.019.i.i15.i.i      ; 2 uses
  %i.ml = add nuw nsw i64 %.2.i639.i, %.01218.i.i16.i.i ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %spec.select.i260.i, i64 %i.ml
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !48
  %.not.i.i20.i.i = icmp eq i8 %i.mn, 0
  br i1 %.not.i.i20.i.i, label %sbuf_len.exit.i.i.i, label %.lr.ph.i.i14.i.i, !llvm.loop !7

sbuf_len.exit.i.i.i:                              ; preds = %.lr.ph.i.i14.i.i, %bb.bp, %str_next_ofs.exit.i, %bb.bh, %ic_strlen.exit.i12.i.i
  %.013.i.i1927.i.i = phi i64 [ 0, %ic_strlen.exit.i12.i.i ], [ 0, %bb.bh ], [ %.019.i.i15.i.i, %.lr.ph.i.i14.i.i ], [ %.019.i.i15.i.i, %str_next_ofs.exit.i ], [ %i.mk, %bb.bp ] ; 2 uses
  %.not.i.i23.not.i.i = icmp eq i64 %i.kx, 0
  br i1 %.not.i.i23.not.i.i, label %bbcode_column_width.exit.i, label %ic_memmove.exit.i.i.i.i

ic_memmove.exit.i.i.i.i:                          ; preds = %sbuf_len.exit.i.i.i
  store i64 0, ptr %i.kw, align 8, !tbaa !79
  store i8 0, ptr %i.kz, align 1, !tbaa !48
  br label %bbcode_column_width.exit.i

bbcode_column_width.exit.i:                       ; preds = %.lr.ph.i.i.i.i, %bb.bf, %str_next_ofs.exit460.i, %ic_memmove.exit.i.i.i.i, %sbuf_len.exit.i.i.i, %bb.bg, %ic_strlen.exit.i.i.i, %bb.aw
  %.0.i261.i = phi i64 [ 0, %ic_strlen.exit.i.i.i ], [ 0, %bb.bg ], [ 0, %bb.aw ], [ %.013.i.i1927.i.i, %ic_memmove.exit.i.i.i.i ], [ %.013.i.i1927.i.i, %sbuf_len.exit.i.i.i ], [ %.019.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.019.i.i.i.i, %str_next_ofs.exit460.i ], [ %i.kr, %bb.bf ]
  %i.mo = add i64 %.0.i275.i, 2
  %i.mp = add i64 %i.mo, %.0.i261.i
  br label %completions_get_display.exit.thread.i.i

completions_get_display.exit.thread.i.i:          ; preds = %bbcode_column_width.exit.i, %bbcode_column_width.exit284.i, %completions_get.exit.i.i.i, %.preheader775.i
  %.0.i.i31 = phi i64 [ %i.mp, %bbcode_column_width.exit.i ], [ %.0.i275.i, %bbcode_column_width.exit284.i ], [ 0, %completions_get.exit.i.i.i ], [ 0, %.preheader775.i ]
  %spec.select.i.i32 = call i64 @llvm.smax.i64(i64 %.0.i.i31, i64 %.01218.i.i) ; 2 uses
  %i.mq = add nuw nsw i64 %.01119.i.i, 1          ; 2 uses
  %exitcond.not.i.i33 = icmp eq i64 %i.mq, 9
  br i1 %exitcond.not.i.i33, label %edit_completions_max_width.exit.i, label %.preheader775.i, !llvm.loop !420

edit_completions_max_width.exit.i:                ; preds = %completions_get_display.exit.thread.i.i
  %i.mr = add nuw nsw i64 %spec.select.i.i32, 3   ; 4 uses
  %i.ms = mul nuw nsw i64 %i.mr, 3
  %i.mt = add nuw nsw i64 %i.ms, 4
  %i.mu = icmp slt i64 %i.mt, %i.fe
  br i1 %i.mu, label %.preheader.i, label %bb.cm

.preheader.i:                                     ; preds = %edit_completions_max_width.exit.i, %sbuf_insert_at_n.exit308.i
  %.0171747.i = phi i64 [ %i.rh, %sbuf_insert_at_n.exit308.i ], [ 0, %edit_completions_max_width.exit.i ] ; 6 uses
  %.not194.i = icmp eq i64 %.0171747.i, 0
  br i1 %.not194.i, label %sbuf_insert_at_n.exit.i, label %bb.bq

bb.bq:                                            ; preds = %.preheader.i
  %i.mv = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %sbuf_append.exit.thread.i, label %sbuf_append.exit.i

sbuf_append.exit.i:                               ; preds = %bb.bq
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !79 ; 3 uses
  %i.mz = icmp slt i64 %i.my, 0
  br i1 %i.mz, label %sbuf_insert_at_n.exit.i, label %.lr.ph.i.i.i

sbuf_append.exit.thread.i:                        ; preds = %bb.bq
  %.pre814.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not695.i = icmp slt i64 %.pre814.i, 0
  br i1 %.not695.i, label %sbuf_insert_at_n.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %sbuf_append.exit.i, %sbuf_append.exit.thread.i
  %.0.i.i2006431000.i = phi i64 [ 0, %sbuf_append.exit.thread.i ], [ %i.my, %sbuf_append.exit.i ] ; 3 uses
  %i.na = phi i64 [ %.pre814.i, %sbuf_append.exit.thread.i ], [ %i.my, %sbuf_append.exit.i ] ; 3 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mv, i64 16 ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 2 uses
  %i.nd = load i64, ptr %i.nc, align 8, !tbaa !213 ; 6 uses
  %i.ne = add nuw nsw i64 %i.na, 1                ; 2 uses
  %.not.i32.i.not.i = icmp sgt i64 %i.nd, %i.na
  br i1 %.not.i32.i.not.i, label %bb.bw, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i.i.i
  %i.nf = icmp slt i64 %i.nd, 1
  br i1 %i.nf, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ng = icmp samesign ugt i64 %i.nd, 1000
  %i.nh = shl nuw nsw i64 %i.nd, 1
  %i.ni = add nuw nsw i64 %i.nd, 1000
  %.ph.i.i.i = select i1 %i.ng, i64 %i.ni, i64 %i.nh
  %i.nj = call i64 @llvm.umax.i64(i64 %.ph.i.i.i, i64 %i.ne) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.nd, i64 noundef %i.nj)
  br label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.nk = call i64 @llvm.umax.i64(i64 %i.ne, i64 120)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %spec.select34.i.i.i = phi i64 [ %i.nj, %bb.bs ], [ %i.nk, %bb.bt ] ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !78
  %i.nn = load ptr, ptr %i.mv, align 8, !tbaa !81
  %i.no = add nuw nsw i64 %spec.select34.i.i.i, 1
  %i.np = getelementptr i8, ptr %i.nm, i64 8
  %.val.i.i.i = load ptr, ptr %i.np, align 8, !tbaa !74
  %i.nq = call ptr %.val.i.i.i(ptr noundef %i.nn, i64 noundef %i.no) #28, !inline_history !421 ; 3 uses
  %.not36.i.i.i = icmp eq ptr %i.nq, null
  br i1 %.not36.i.i.i, label %sbuf_insert_at_n.exit.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store ptr %i.nq, ptr %i.mv, align 8, !tbaa !81
  store i64 %spec.select34.i.i.i, ptr %i.nc, align 8, !tbaa !213
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %spec.select34.i.i.i
  store i8 0, ptr %i.nr, align 1, !tbaa !48
  %i.ns = load ptr, ptr %i.mv, align 8, !tbaa !81
  %i.nt = load i64, ptr %i.nb, align 8, !tbaa !79
  %i.nu = getelementptr inbounds i8, ptr %i.ns, i64 %i.nt
  store i8 0, ptr %i.nu, align 1, !tbaa !48
  %.pre.i288.i = load i64, ptr %i.nb, align 8, !tbaa !79
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph.i.i.i
  %i.nv = phi i64 [ %i.na, %.lr.ph.i.i.i ], [ %.pre.i288.i, %bb.bv ]
  %i.nw = sub nsw i64 %i.nv, %.0.i.i2006431000.i  ; 2 uses
  %i.nx = icmp slt i64 %i.nw, 1
  br i1 %i.nx, label %ic_memmove.exit.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ny = load ptr, ptr %i.mv, align 8, !tbaa !81
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 %.0.i.i2006431000.i ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.oa, ptr readonly align 1 %i.nz, i64 %i.nw, i1 false)
  br label %ic_memmove.exit.i.i

ic_memmove.exit.i.i:                              ; preds = %bb.bx, %bb.bw
  %i.ob = load ptr, ptr %i.mv, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %.0.i.i2006431000.i
  store i8 10, ptr %i.oc, align 1
  %.pre38.i.i = load ptr, ptr %i.mv, align 8, !tbaa !81
  %i.od = load i64, ptr %i.nb, align 8, !tbaa !79
  %i.oe = add nsw i64 %i.od, 1                    ; 2 uses
  store i64 %i.oe, ptr %i.nb, align 8, !tbaa !79
  %i.of = getelementptr inbounds i8, ptr %.pre38.i.i, i64 %i.oe
  store i8 0, ptr %i.of, align 1, !tbaa !48
  br label %sbuf_insert_at_n.exit.i

sbuf_insert_at_n.exit.i:                          ; preds = %ic_memmove.exit.i.i, %bb.bu, %sbuf_append.exit.thread.i, %sbuf_append.exit.i, %.preheader.i
  %i.og = add nuw nsw i64 %.0171747.i, 3          ; 2 uses
  %i.oh = add nuw nsw i64 %.0171747.i, 6          ; 2 uses
  %i.oi = icmp eq i64 %.0171747.i, %.0173.i
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775808, 3) %.0171747.i, i64 noundef range(i64 3, -9223372036854775808) %i.mr, i1 noundef zeroext %i.oi)
  %i.oj = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %sbuf_append.exit.i.thread.i, label %sbuf_append.exit.i.i

sbuf_append.exit.i.i:                             ; preds = %sbuf_insert_at_n.exit.i
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oj, i64 16
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !79 ; 3 uses
  %i.on = icmp slt i64 %i.om, 0
  br i1 %i.on, label %sbuf_insert_at_n.exit327.i, label %.lr.ph.i.i311.preheader.i

sbuf_append.exit.i.thread.i:                      ; preds = %sbuf_insert_at_n.exit.i
  %.pre816.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not696.i = icmp slt i64 %.pre816.i, 0
  br i1 %.not696.i, label %sbuf_insert_at_n.exit327.i, label %.lr.ph.i.i311.preheader.i

.lr.ph.i.i311.preheader.i:                        ; preds = %sbuf_append.exit.i.i, %sbuf_append.exit.i.thread.i
  %.0.i.i.i6471003.i = phi i64 [ 0, %sbuf_append.exit.i.thread.i ], [ %i.om, %sbuf_append.exit.i.i ] ; 3 uses
  %i.oo = phi i64 [ %.pre816.i, %sbuf_append.exit.i.thread.i ], [ %i.om, %sbuf_append.exit.i.i ] ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oj, i64 16 ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oj, i64 8 ; 2 uses
  %i.or = load i64, ptr %i.oq, align 8, !tbaa !213 ; 6 uses
  %i.os = add nuw nsw i64 %i.oo, 2                ; 3 uses
  %.not.i32.i317.i = icmp slt i64 %i.or, %i.os
  br i1 %.not.i32.i317.i, label %bb.by, label %bb.cd

bb.by:                                            ; preds = %.lr.ph.i.i311.preheader.i
  %i.ot = icmp slt i64 %i.or, 1
  br i1 %i.ot, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ou = icmp samesign ugt i64 %i.or, 1000
  %i.ov = shl nuw nsw i64 %i.or, 1
  %i.ow = add nuw nsw i64 %i.or, 1000
  %.ph.i.i320.i = select i1 %i.ou, i64 %i.ow, i64 %i.ov
  %i.ox = call i64 @llvm.umax.i64(i64 %.ph.i.i320.i, i64 %i.os) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.or, i64 noundef %i.ox)
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %i.oy = call i64 @llvm.umax.i64(i64 %i.os, i64 120)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %spec.select34.i.i322.i = phi i64 [ %i.ox, %bb.bz ], [ %i.oy, %bb.ca ] ; 3 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oj, i64 24
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !78
  %i.pb = load ptr, ptr %i.oj, align 8, !tbaa !81
  %i.pc = add nuw nsw i64 %spec.select34.i.i322.i, 1
  %i.pd = getelementptr i8, ptr %i.pa, i64 8
  %.val.i.i323.i = load ptr, ptr %i.pd, align 8, !tbaa !74
  %i.pe = call ptr %.val.i.i323.i(ptr noundef %i.pb, i64 noundef %i.pc) #28, !inline_history !421 ; 3 uses
  %.not36.i.i324.i = icmp eq ptr %i.pe, null
  br i1 %.not36.i.i324.i, label %sbuf_insert_at_n.exit327.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store ptr %i.pe, ptr %i.oj, align 8, !tbaa !81
  store i64 %spec.select34.i.i322.i, ptr %i.oq, align 8, !tbaa !213
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 %spec.select34.i.i322.i
  store i8 0, ptr %i.pf, align 1, !tbaa !48
  %i.pg = load ptr, ptr %i.oj, align 8, !tbaa !81
  %i.ph = load i64, ptr %i.op, align 8, !tbaa !79
  %i.pi = getelementptr inbounds i8, ptr %i.pg, i64 %i.ph
  store i8 0, ptr %i.pi, align 1, !tbaa !48
  %.pre.i325.i = load i64, ptr %i.op, align 8, !tbaa !79
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.lr.ph.i.i311.preheader.i
  %i.pj = phi i64 [ %i.oo, %.lr.ph.i.i311.preheader.i ], [ %.pre.i325.i, %bb.cc ]
  %i.pk = sub nsw i64 %i.pj, %.0.i.i.i6471003.i   ; 2 uses
  %i.pl = icmp slt i64 %i.pk, 1
  br i1 %i.pl, label %ic_memmove.exit.i318.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.pm = load ptr, ptr %i.oj, align 8, !tbaa !81
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 %.0.i.i.i6471003.i ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.po, ptr readonly align 1 %i.pn, i64 %i.pk, i1 false)
  br label %ic_memmove.exit.i318.i

ic_memmove.exit.i318.i:                           ; preds = %bb.ce, %bb.cd
  %i.pp = load ptr, ptr %i.oj, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.0.i.i.i6471003.i
  store i16 8224, ptr %i.pq, align 1
  %.pre38.i319.i = load ptr, ptr %i.oj, align 8, !tbaa !81
  %i.pr = load i64, ptr %i.op, align 8, !tbaa !79
  %i.ps = add nsw i64 %i.pr, 2                    ; 2 uses
  store i64 %i.ps, ptr %i.op, align 8, !tbaa !79
  %i.pt = getelementptr inbounds i8, ptr %.pre38.i319.i, i64 %i.ps
  store i8 0, ptr %i.pt, align 1, !tbaa !48
  br label %sbuf_insert_at_n.exit327.i

sbuf_insert_at_n.exit327.i:                       ; preds = %ic_memmove.exit.i318.i, %bb.cb, %sbuf_append.exit.i.thread.i, %sbuf_append.exit.i.i
  %i.pu = icmp eq i64 %i.og, %.0173.i
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775805, 6) %i.og, i64 noundef range(i64 3, -9223372036854775808) %i.mr, i1 noundef zeroext %i.pu)
  %i.pv = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.pw = icmp eq ptr %i.pv, null
  br i1 %i.pw, label %editor_append_completion3.exit.thread.i, label %editor_append_completion3.exit.i

editor_append_completion3.exit.i:                 ; preds = %sbuf_insert_at_n.exit327.i
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.py = load i64, ptr %i.px, align 8, !tbaa !79 ; 3 uses
  %i.pz = icmp slt i64 %i.py, 0
  br i1 %i.pz, label %sbuf_insert_at_n.exit308.i, label %.lr.ph.i.i292.preheader.i

editor_append_completion3.exit.thread.i:          ; preds = %sbuf_insert_at_n.exit327.i
  %.pre818.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not697.i = icmp slt i64 %.pre818.i, 0
  br i1 %.not697.i, label %sbuf_insert_at_n.exit308.i, label %.lr.ph.i.i292.preheader.i

.lr.ph.i.i292.preheader.i:                        ; preds = %editor_append_completion3.exit.i, %editor_append_completion3.exit.thread.i
  %.0.i.i19.i6511006.i = phi i64 [ 0, %editor_append_completion3.exit.thread.i ], [ %i.py, %editor_append_completion3.exit.i ] ; 3 uses
  %i.qa = phi i64 [ %.pre818.i, %editor_append_completion3.exit.thread.i ], [ %i.py, %editor_append_completion3.exit.i ] ; 2 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 4 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !213 ; 6 uses
  %i.qe = add nuw nsw i64 %i.qa, 2                ; 3 uses
  %.not.i32.i298.i = icmp slt i64 %i.qd, %i.qe
  br i1 %.not.i32.i298.i, label %bb.cf, label %bb.ck

bb.cf:                                            ; preds = %.lr.ph.i.i292.preheader.i
  %i.qf = icmp slt i64 %i.qd, 1
  br i1 %i.qf, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.qg = icmp samesign ugt i64 %i.qd, 1000
  %i.qh = shl nuw nsw i64 %i.qd, 1
  %i.qi = add nuw nsw i64 %i.qd, 1000
  %.ph.i.i301.i = select i1 %i.qg, i64 %i.qi, i64 %i.qh
  %i.qj = call i64 @llvm.umax.i64(i64 %.ph.i.i301.i, i64 %i.qe) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.qd, i64 noundef %i.qj)
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.qk = call i64 @llvm.umax.i64(i64 %i.qe, i64 120)
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %spec.select34.i.i303.i = phi i64 [ %i.qj, %bb.cg ], [ %i.qk, %bb.ch ] ; 3 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !78
  %i.qn = load ptr, ptr %i.pv, align 8, !tbaa !81
  %i.qo = add nuw nsw i64 %spec.select34.i.i303.i, 1
  %i.qp = getelementptr i8, ptr %i.qm, i64 8
  %.val.i.i304.i = load ptr, ptr %i.qp, align 8, !tbaa !74
  %i.qq = call ptr %.val.i.i304.i(ptr noundef %i.qn, i64 noundef %i.qo) #28, !inline_history !421 ; 3 uses
  %.not36.i.i305.i = icmp eq ptr %i.qq, null
  br i1 %.not36.i.i305.i, label %sbuf_insert_at_n.exit308.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store ptr %i.qq, ptr %i.pv, align 8, !tbaa !81
  store i64 %spec.select34.i.i303.i, ptr %i.qc, align 8, !tbaa !213
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 %spec.select34.i.i303.i
  store i8 0, ptr %i.qr, align 1, !tbaa !48
  %i.qs = load ptr, ptr %i.pv, align 8, !tbaa !81
  %i.qt = load i64, ptr %i.qb, align 8, !tbaa !79
  %i.qu = getelementptr inbounds i8, ptr %i.qs, i64 %i.qt
  store i8 0, ptr %i.qu, align 1, !tbaa !48
  %.pre.i306.i = load i64, ptr %i.qb, align 8, !tbaa !79
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %.lr.ph.i.i292.preheader.i
  %i.qv = phi i64 [ %i.qa, %.lr.ph.i.i292.preheader.i ], [ %.pre.i306.i, %bb.cj ]
  %i.qw = sub nsw i64 %i.qv, %.0.i.i19.i6511006.i ; 2 uses
  %i.qx = icmp slt i64 %i.qw, 1
  br i1 %i.qx, label %ic_memmove.exit.i299.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qy = load ptr, ptr %i.pv, align 8, !tbaa !81
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.0.i.i19.i6511006.i ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ra, ptr readonly align 1 %i.qz, i64 %i.qw, i1 false)
  br label %ic_memmove.exit.i299.i

ic_memmove.exit.i299.i:                           ; preds = %bb.cl, %bb.ck
  %i.rb = load ptr, ptr %i.pv, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 %.0.i.i19.i6511006.i
  store i16 8224, ptr %i.rc, align 1
  %.pre38.i300.i = load ptr, ptr %i.pv, align 8, !tbaa !81
  %i.rd = load i64, ptr %i.qb, align 8, !tbaa !79
  %i.re = add nsw i64 %i.rd, 2                    ; 2 uses
  store i64 %i.re, ptr %i.qb, align 8, !tbaa !79
  %i.rf = getelementptr inbounds i8, ptr %.pre38.i300.i, i64 %i.re
  store i8 0, ptr %i.rf, align 1, !tbaa !48
  br label %sbuf_insert_at_n.exit308.i

sbuf_insert_at_n.exit308.i:                       ; preds = %ic_memmove.exit.i299.i, %bb.ci, %editor_append_completion3.exit.thread.i, %editor_append_completion3.exit.i
  %i.rg = icmp eq i64 %i.oh, %.0173.i
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775802, 9) %i.oh, i64 noundef range(i64 3, -9223372036854775808) %i.mr, i1 noundef zeroext %i.rg)
  %i.rh = add nuw nsw i64 %.0171747.i, 1          ; 2 uses
  %exitcond805.not.i = icmp eq i64 %i.rh, 3
  br i1 %exitcond805.not.i, label %.loopexit.i, label %.preheader.i, !llvm.loop !422

bb.cm:                                            ; preds = %edit_completions_max_width.exit.i
  br i1 %.not691.i, label %sbuf_insert_at_n.exit429.peel.thread.i, label %.preheader774.i

sbuf_insert_at_n.exit429.peel.thread.i:           ; preds = %bb.cm
  %i.ri = icmp eq i64 %.0173.i, 0
  call fastcc void @editor_append_completion(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef 0, i64 noundef -1, i1 noundef zeroext %i.ri)
  br label %.lr.ph.peel.next.i.preheader

.preheader774.i:                                  ; preds = %bb.cm, %completions_get_display.exit.thread.i204.i
  %.01119.i201.i = phi i64 [ %i.yu, %completions_get_display.exit.thread.i204.i ], [ 0, %bb.cm ] ; 3 uses
  %.01218.i202.i = phi i64 [ %spec.select.i206.i, %completions_get_display.exit.thread.i204.i ], [ 0, %bb.cm ]
  %i.rj = load ptr, ptr %i.eh, align 8, !tbaa !148 ; 2 uses
  %i.rk = load ptr, ptr %i.n, align 8, !tbaa !122 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !126
  %.not.i.i.i203.i = icmp slt i64 %.01119.i201.i, %i.rm
  br i1 %.not.i.i.i203.i, label %completions_get.exit.i.i208.i, label %completions_get_display.exit.thread.i204.i

completions_get.exit.i.i208.i:                    ; preds = %.preheader774.i
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 40
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !189 ; 2 uses
  %i.rp = getelementptr inbounds nuw [40 x i8], ptr %i.ro, i64 %.01119.i201.i ; 3 uses
  %i.rq = icmp eq ptr %i.ro, null
  br i1 %i.rq, label %completions_get_display.exit.thread.i204.i, label %bb.cn

bb.cn:                                            ; preds = %completions_get.exit.i.i208.i
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !194 ; 7 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rp, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !192 ; 2 uses
  %.not14.i.i209.i = icmp eq ptr %i.ru, null
  br i1 %.not14.i.i209.i, label %completions_get_display.exit.i210.i, label %completions_get_display.exit.i210.thread.i

completions_get_display.exit.i210.i:              ; preds = %bb.cn
  %i.rv = load ptr, ptr %i.rp, align 8, !tbaa !193 ; 2 uses
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %bbcode_column_width.exit371.i, label %completions_get_display.exit.i210.thread.i

completions_get_display.exit.i210.thread.i:       ; preds = %completions_get_display.exit.i210.i, %bb.cn
  %.0.i.i211655.i = phi ptr [ %i.rv, %completions_get_display.exit.i210.i ], [ %i.ru, %bb.cn ] ; 6 uses
  %i.rx = load i8, ptr %.0.i.i211655.i, align 1, !tbaa !48
  %i.ry = icmp eq i8 %i.rx, 0
  br i1 %i.ry, label %bbcode_column_width.exit371.i, label %bb.co

bb.co:                                            ; preds = %completions_get_display.exit.i210.thread.i
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rj, i64 80 ; 2 uses
  %i.sa = load ptr, ptr %i.rz, align 8, !tbaa !149 ; 2 uses
  %i.sb = icmp eq ptr %i.sa, null
  br i1 %i.sb, label %ic_strlen.exit.i.i364.i, label %bb.cx

ic_strlen.exit.i.i364.i:                          ; preds = %bb.co
  %i.sc = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i.i211655.i) #29 ; 2 uses
  %i.sd = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.sc, i64 0) ; 3 uses
  %i.se = icmp slt i64 %i.sc, 1
  br i1 %i.se, label %bbcode_column_width.exit371.i, label %.lr.ph.i.i.i365.i

.lr.ph.i.i.i365.i:                                ; preds = %ic_strlen.exit.i.i364.i, %bb.cw
  %.019.i.i.i366.i = phi i64 [ %i.tk, %bb.cw ], [ 0, %ic_strlen.exit.i.i364.i ] ; 3 uses
  %.01218.i.i.i367.i = phi i64 [ %i.tl, %bb.cw ], [ 0, %ic_strlen.exit.i.i364.i ] ; 6 uses
  %i.sf = icmp sgt i64 %i.sd, %.01218.i.i.i367.i
  br i1 %i.sf, label %bb.cp, label %bbcode_column_width.exit371.i

bb.cp:                                            ; preds = %.lr.ph.i.i.i365.i
  %i.sg = getelementptr inbounds i8, ptr %.0.i.i211655.i, i64 %.01218.i.i.i367.i ; 7 uses
  %i.sh = sub nsw i64 %i.sd, %.01218.i.i.i367.i   ; 7 uses
  %19 = icmp slt i64 %i.sh, 2
  br i1 %19, label %skip_esc.exit.i595.i, label %20

20:                                               ; preds = %bb.cp
  %21 = load i8, ptr %i.sg, align 1, !tbaa !48
  %.not66.i.i594.i = icmp eq i8 %21, 27
  br i1 %.not66.i.i594.i, label %bb.cq, label %skip_esc.exit.i595.i

bb.cq:                                            ; preds = %20
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 1
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !48
  %.fr89.i.i600.i = freeze i8 %i.sj               ; 2 uses
  %i.sk = sext i8 %.fr89.i.i600.i to i32
  %memchr.i.i601.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.sk, i64 7)
  %.not67.i.i602.i = icmp eq ptr %memchr.i.i601.i, null
  %.not87.i.i603.i = icmp eq i64 %i.sh, 2
  %or.cond.i.i604.i = or i1 %.not87.i.i603.i, %.not67.i.i602.i
  br i1 %or.cond.i.i604.i, label %str_next_ofs.exit616.thread.i, label %.lr.ph.i.i605.i

.lr.ph.i.i605.i:                                  ; preds = %bb.cq
  %.not.i.i606.i = icmp eq i8 %.fr89.i.i600.i, 91
  br i1 %.not.i.i606.i, label %.lr.ph.split.us.split.i.i612.i, label %.lr.ph.split.split.us.i.i607.i

.lr.ph.split.us.split.i.i612.i:                   ; preds = %.lr.ph.i.i605.i, %bb.cr
  %.05475.us.i.i613.i = phi i64 [ %i.sl, %bb.cr ], [ 2, %.lr.ph.i.i605.i ] ; 2 uses
  %i.sl = add nuw nsw i64 %.05475.us.i.i613.i, 1  ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sg, i64 %.05475.us.i.i613.i
  %i.sn = load i8, ptr %i.sm, align 1, !tbaa !48  ; 2 uses
  %i.so = icmp sgt i8 %i.sn, 63
  %i.sp = icmp eq i8 %i.sn, 2
  %or.cond116.i.i614.i = or i1 %i.so, %i.sp
  br i1 %or.cond116.i.i614.i, label %str_next_ofs.exit616.thread.i, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.split.us.split.i.i612.i
  %exitcond.not.i.i615.i = icmp eq i64 %i.sl, %i.sh
  br i1 %exitcond.not.i.i615.i, label %str_next_ofs.exit616.thread.i, label %.lr.ph.split.us.split.i.i612.i, !llvm.loop !11

.lr.ph.split.split.us.i.i607.i:                   ; preds = %.lr.ph.i.i605.i, %bb.cu
  %.05475.us76.i.i608.i = phi i64 [ %i.sq, %bb.cu ], [ 2, %.lr.ph.i.i605.i ] ; 3 uses
  %i.sq = add nuw nsw i64 %.05475.us76.i.i608.i, 1 ; 6 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sg, i64 %.05475.us76.i.i608.i
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !48  ; 2 uses
  switch i8 %i.ss, label %bb.cs [
    i8 7, label %str_next_ofs.exit616.thread.i
    i8 2, label %str_next_ofs.exit616.thread.i
  ]

bb.cs:                                            ; preds = %.lr.ph.split.split.us.i.i607.i
  %i.st = icmp eq i8 %i.ss, 27
  %i.su = icmp sgt i64 %i.sh, %i.sq
  %or.cond.us.i.i609.i = select i1 %i.st, i1 %i.su, i1 false
  br i1 %or.cond.us.i.i609.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sg, i64 %i.sq
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !48
  %i.sx = icmp eq i8 %i.sw, 92
  br i1 %i.sx, label %.split83.us.i.i611.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %exitcond103.not.i.i610.i = icmp eq i64 %i.sq, %i.sh
  br i1 %exitcond103.not.i.i610.i, label %str_next_ofs.exit616.thread.i, label %.lr.ph.split.split.us.i.i607.i, !llvm.loop !11

.split83.us.i.i611.i:                             ; preds = %bb.ct
  %i.sy = add nuw nsw i64 %.05475.us76.i.i608.i, 2
  br label %str_next_ofs.exit616.thread.i

skip_esc.exit.i595.i:                             ; preds = %20, %bb.cp
  %i.sz = add nsw i64 %.01218.i.i.i367.i, 1       ; 2 uses
  %i.ta = icmp sgt i64 %i.sd, %i.sz
  br i1 %i.ta, label %.lr.ph.i596.i, label %str_next_ofs.exit616.thread.i

.lr.ph.i596.i:                                    ; preds = %skip_esc.exit.i595.i, %bb.cv
  %i.tb = phi i64 [ %i.tf, %bb.cv ], [ %i.sz, %skip_esc.exit.i595.i ]
  %.02837.i597.i = phi i64 [ %i.te, %bb.cv ], [ 1, %skip_esc.exit.i595.i ] ; 2 uses
  %i.tc = getelementptr inbounds i8, ptr %.0.i.i211655.i, i64 %i.tb
  %i.td = load i8, ptr %i.tc, align 1, !tbaa !48
  %or.cond.i598.i = icmp sgt i8 %i.td, -65
  br i1 %or.cond.i598.i, label %str_next_ofs.exit616.i, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i596.i
  %i.te = add nuw i64 %.02837.i597.i, 1           ; 3 uses
  %i.tf = add nsw i64 %i.te, %.01218.i.i.i367.i
  %exitcond.not.i599.i = icmp eq i64 %i.te, %i.sh
  br i1 %exitcond.not.i599.i, label %str_next_ofs.exit616.i, label %.lr.ph.i596.i

str_next_ofs.exit616.thread.i:                    ; preds = %bb.cu, %.lr.ph.split.split.us.i.i607.i, %.lr.ph.split.split.us.i.i607.i, %bb.cr, %.lr.ph.split.us.split.i.i612.i, %skip_esc.exit.i595.i, %.split83.us.i.i611.i, %bb.cq
  %.2.i593.ph.i = phi i64 [ 1, %skip_esc.exit.i595.i ], [ %i.sy, %.split83.us.i.i611.i ], [ %i.sl, %.lr.ph.split.us.split.i.i612.i ], [ 2, %bb.cq ], [ 2, %bb.cr ], [ 2, %bb.cu ], [ %i.sq, %.lr.ph.split.split.us.i.i607.i ], [ %i.sq, %.lr.ph.split.split.us.i.i607.i ] ; 2 uses
  %i.tg = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.sg, i64 noundef %.2.i593.ph.i)
  br label %bb.cw

str_next_ofs.exit616.i:                           ; preds = %bb.cv, %.lr.ph.i596.i
  %.2.i593.i = phi i64 [ %.02837.i597.i, %.lr.ph.i596.i ], [ %i.sh, %bb.cv ] ; 3 uses
  %i.th = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.sg, i64 noundef %.2.i593.i)
  %i.ti = icmp sgt i64 %.2.i593.i, 0
  br i1 %i.ti, label %bb.cw, label %bbcode_column_width.exit371.i

bb.cw:                                            ; preds = %str_next_ofs.exit616.i, %str_next_ofs.exit616.thread.i
  %i.tj = phi i64 [ %i.tg, %str_next_ofs.exit616.thread.i ], [ %i.th, %str_next_ofs.exit616.i ]
  %.2.i593657.i = phi i64 [ %.2.i593.ph.i, %str_next_ofs.exit616.thread.i ], [ %.2.i593.i, %str_next_ofs.exit616.i ]
  %i.tk = add nsw i64 %i.tj, %.019.i.i.i366.i     ; 2 uses
  %i.tl = add nuw nsw i64 %.2.i593657.i, %.01218.i.i.i367.i ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.i.i211655.i, i64 %i.tl
  %i.tn = load i8, ptr %i.tm, align 1, !tbaa !48
  %.not.i.i.i370.i = icmp eq i8 %i.tn, 0
  br i1 %.not.i.i.i370.i, label %bbcode_column_width.exit371.i, label %.lr.ph.i.i.i365.i, !llvm.loop !7

bb.cx:                                            ; preds = %bb.co
  call fastcc void @bbcode_append(ptr noundef nonnull %i.rj, ptr noundef nonnull %.0.i.i211655.i, ptr noundef %i.sa, ptr noundef null)
  %i.to = load ptr, ptr %i.rz, align 8, !tbaa !149 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16 ; 2 uses
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !79 ; 2 uses
  %i.tr = icmp slt i64 %i.tq, 0
  br i1 %i.tr, label %bbcode_column_width.exit371.i, label %ic_strlen.exit.i12.i350.i

ic_strlen.exit.i12.i350.i:                        ; preds = %bb.cx
  %i.ts = load ptr, ptr %i.to, align 8, !tbaa !81 ; 3 uses
  %i.tt = icmp eq ptr %i.ts, null
  %spec.select.i351.i = select i1 %i.tt, ptr @.str.3, ptr %i.ts ; 5 uses
  %i.tu = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select.i351.i) #29 ; 2 uses
  %i.tv = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.tu, i64 0) ; 3 uses
  %i.tw = icmp slt i64 %i.tu, 1
  br i1 %i.tw, label %sbuf_len.exit.i.i358.i, label %bb.cy

bb.cy:                                            ; preds = %ic_strlen.exit.i12.i350.i
  %i.tx = load i8, ptr %spec.select.i351.i, align 1, !tbaa !48
  %.not17.i.i13.i352.i = icmp eq i8 %i.tx, 0
  br i1 %.not17.i.i13.i352.i, label %sbuf_len.exit.i.i358.i, label %.lr.ph.i.i14.i353.i

.lr.ph.i.i14.i353.i:                              ; preds = %bb.cy, %bb.dg
  %.019.i.i15.i354.i = phi i64 [ %i.vd, %bb.dg ], [ 0, %bb.cy ] ; 3 uses
  %.01218.i.i16.i355.i = phi i64 [ %i.ve, %bb.dg ], [ 0, %bb.cy ] ; 6 uses
  %i.ty = icmp sgt i64 %i.tv, %.01218.i.i16.i355.i
  br i1 %i.ty, label %bb.cz, label %sbuf_len.exit.i.i358.i

bb.cz:                                            ; preds = %.lr.ph.i.i14.i353.i
  %i.tz = getelementptr inbounds i8, ptr %spec.select.i351.i, i64 %.01218.i.i16.i355.i ; 7 uses
  %i.ua = sub nsw i64 %i.tv, %.01218.i.i16.i355.i ; 7 uses
  %22 = icmp slt i64 %i.ua, 2
  br i1 %22, label %skip_esc.exit.i569.i, label %23

23:                                               ; preds = %bb.cz
  %24 = load i8, ptr %i.tz, align 1, !tbaa !48
  %.not66.i.i568.i = icmp eq i8 %24, 27
  br i1 %.not66.i.i568.i, label %bb.da, label %skip_esc.exit.i569.i

bb.da:                                            ; preds = %23
  %i.ub = getelementptr inbounds nuw i8, ptr %i.tz, i64 1
  %i.uc = load i8, ptr %i.ub, align 1, !tbaa !48
  %.fr89.i.i574.i = freeze i8 %i.uc               ; 2 uses
  %i.ud = sext i8 %.fr89.i.i574.i to i32
  %memchr.i.i575.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.ud, i64 7)
  %.not67.i.i576.i = icmp eq ptr %memchr.i.i575.i, null
  %.not87.i.i577.i = icmp eq i64 %i.ua, 2
  %or.cond.i.i578.i = or i1 %.not87.i.i577.i, %.not67.i.i576.i
  br i1 %or.cond.i.i578.i, label %str_next_ofs.exit590.thread.i, label %.lr.ph.i.i579.i

.lr.ph.i.i579.i:                                  ; preds = %bb.da
  %.not.i.i580.i = icmp eq i8 %.fr89.i.i574.i, 91
  br i1 %.not.i.i580.i, label %.lr.ph.split.us.split.i.i586.i, label %.lr.ph.split.split.us.i.i581.i

.lr.ph.split.us.split.i.i586.i:                   ; preds = %.lr.ph.i.i579.i, %bb.db
  %.05475.us.i.i587.i = phi i64 [ %i.ue, %bb.db ], [ 2, %.lr.ph.i.i579.i ] ; 2 uses
  %i.ue = add nuw nsw i64 %.05475.us.i.i587.i, 1  ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tz, i64 %.05475.us.i.i587.i
  %i.ug = load i8, ptr %i.uf, align 1, !tbaa !48  ; 2 uses
  %i.uh = icmp sgt i8 %i.ug, 63
  %i.ui = icmp eq i8 %i.ug, 2
  %or.cond116.i.i588.i = or i1 %i.uh, %i.ui
  br i1 %or.cond116.i.i588.i, label %str_next_ofs.exit590.thread.i, label %bb.db

bb.db:                                            ; preds = %.lr.ph.split.us.split.i.i586.i
  %exitcond.not.i.i589.i = icmp eq i64 %i.ue, %i.ua
  br i1 %exitcond.not.i.i589.i, label %str_next_ofs.exit590.thread.i, label %.lr.ph.split.us.split.i.i586.i, !llvm.loop !11

.lr.ph.split.split.us.i.i581.i:                   ; preds = %.lr.ph.i.i579.i, %bb.de
  %.05475.us76.i.i582.i = phi i64 [ %i.uj, %bb.de ], [ 2, %.lr.ph.i.i579.i ] ; 3 uses
  %i.uj = add nuw nsw i64 %.05475.us76.i.i582.i, 1 ; 6 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.tz, i64 %.05475.us76.i.i582.i
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !48  ; 2 uses
  switch i8 %i.ul, label %bb.dc [
    i8 7, label %str_next_ofs.exit590.thread.i
    i8 2, label %str_next_ofs.exit590.thread.i
  ]

bb.dc:                                            ; preds = %.lr.ph.split.split.us.i.i581.i
  %i.um = icmp eq i8 %i.ul, 27
  %i.un = icmp sgt i64 %i.ua, %i.uj
  %or.cond.us.i.i583.i = select i1 %i.um, i1 %i.un, i1 false
  br i1 %or.cond.us.i.i583.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.uj
  %i.up = load i8, ptr %i.uo, align 1, !tbaa !48
  %i.uq = icmp eq i8 %i.up, 92
  br i1 %i.uq, label %.split83.us.i.i585.i, label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %exitcond103.not.i.i584.i = icmp eq i64 %i.uj, %i.ua
  br i1 %exitcond103.not.i.i584.i, label %str_next_ofs.exit590.thread.i, label %.lr.ph.split.split.us.i.i581.i, !llvm.loop !11

.split83.us.i.i585.i:                             ; preds = %bb.dd
  %i.ur = add nuw nsw i64 %.05475.us76.i.i582.i, 2
  br label %str_next_ofs.exit590.thread.i

skip_esc.exit.i569.i:                             ; preds = %23, %bb.cz
  %i.us = add nsw i64 %.01218.i.i16.i355.i, 1     ; 2 uses
  %i.ut = icmp sgt i64 %i.tv, %i.us
  br i1 %i.ut, label %.lr.ph.i570.i, label %str_next_ofs.exit590.thread.i

.lr.ph.i570.i:                                    ; preds = %skip_esc.exit.i569.i, %bb.df
  %i.uu = phi i64 [ %i.uy, %bb.df ], [ %i.us, %skip_esc.exit.i569.i ]
  %.02837.i571.i = phi i64 [ %i.ux, %bb.df ], [ 1, %skip_esc.exit.i569.i ] ; 2 uses
  %i.uv = getelementptr inbounds i8, ptr %spec.select.i351.i, i64 %i.uu
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !48
  %or.cond.i572.i = icmp sgt i8 %i.uw, -65
  br i1 %or.cond.i572.i, label %str_next_ofs.exit590.i, label %bb.df

bb.df:                                            ; preds = %.lr.ph.i570.i
  %i.ux = add nuw i64 %.02837.i571.i, 1           ; 3 uses
  %i.uy = add nsw i64 %i.ux, %.01218.i.i16.i355.i
  %exitcond.not.i573.i = icmp eq i64 %i.ux, %i.ua
  br i1 %exitcond.not.i573.i, label %str_next_ofs.exit590.i, label %.lr.ph.i570.i

str_next_ofs.exit590.thread.i:                    ; preds = %bb.de, %.lr.ph.split.split.us.i.i581.i, %.lr.ph.split.split.us.i.i581.i, %bb.db, %.lr.ph.split.us.split.i.i586.i, %skip_esc.exit.i569.i, %.split83.us.i.i585.i, %bb.da
  %.2.i567.ph.i = phi i64 [ 1, %skip_esc.exit.i569.i ], [ %i.ur, %.split83.us.i.i585.i ], [ %i.ue, %.lr.ph.split.us.split.i.i586.i ], [ 2, %bb.da ], [ 2, %bb.db ], [ 2, %bb.de ], [ %i.uj, %.lr.ph.split.split.us.i.i581.i ], [ %i.uj, %.lr.ph.split.split.us.i.i581.i ] ; 2 uses
  %i.uz = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.tz, i64 noundef %.2.i567.ph.i)
  br label %bb.dg

str_next_ofs.exit590.i:                           ; preds = %bb.df, %.lr.ph.i570.i
  %.2.i567.i = phi i64 [ %.02837.i571.i, %.lr.ph.i570.i ], [ %i.ua, %bb.df ] ; 3 uses
  %i.va = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.tz, i64 noundef %.2.i567.i)
  %i.vb = icmp sgt i64 %.2.i567.i, 0
  br i1 %i.vb, label %bb.dg, label %sbuf_len.exit.i.i358.i

bb.dg:                                            ; preds = %str_next_ofs.exit590.i, %str_next_ofs.exit590.thread.i
  %i.vc = phi i64 [ %i.uz, %str_next_ofs.exit590.thread.i ], [ %i.va, %str_next_ofs.exit590.i ]
  %.2.i567661.i = phi i64 [ %.2.i567.ph.i, %str_next_ofs.exit590.thread.i ], [ %.2.i567.i, %str_next_ofs.exit590.i ]
  %i.vd = add nsw i64 %i.vc, %.019.i.i15.i354.i   ; 2 uses
  %i.ve = add nuw nsw i64 %.2.i567661.i, %.01218.i.i16.i355.i ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %spec.select.i351.i, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !48
  %.not.i.i20.i363.i = icmp eq i8 %i.vg, 0
  br i1 %.not.i.i20.i363.i, label %sbuf_len.exit.i.i358.i, label %.lr.ph.i.i14.i353.i, !llvm.loop !7

sbuf_len.exit.i.i358.i:                           ; preds = %.lr.ph.i.i14.i353.i, %bb.dg, %str_next_ofs.exit590.i, %bb.cy, %ic_strlen.exit.i12.i350.i
  %.013.i.i1927.i359.i = phi i64 [ 0, %ic_strlen.exit.i12.i350.i ], [ 0, %bb.cy ], [ %.019.i.i15.i354.i, %.lr.ph.i.i14.i353.i ], [ %.019.i.i15.i354.i, %str_next_ofs.exit590.i ], [ %i.vd, %bb.dg ] ; 2 uses
  %.not.i.i23.not.i360.i = icmp eq i64 %i.tq, 0
  br i1 %.not.i.i23.not.i360.i, label %bbcode_column_width.exit371.i, label %ic_memmove.exit.i.i.i361.i

ic_memmove.exit.i.i.i361.i:                       ; preds = %sbuf_len.exit.i.i358.i
  store i64 0, ptr %i.tp, align 8, !tbaa !79
  store i8 0, ptr %i.ts, align 1, !tbaa !48
  br label %bbcode_column_width.exit371.i

bbcode_column_width.exit371.i:                    ; preds = %.lr.ph.i.i.i365.i, %bb.cw, %str_next_ofs.exit616.i, %ic_memmove.exit.i.i.i361.i, %sbuf_len.exit.i.i358.i, %bb.cx, %ic_strlen.exit.i.i364.i, %completions_get_display.exit.i210.thread.i, %completions_get_display.exit.i210.i
  %.0.i362.i = phi i64 [ 0, %ic_strlen.exit.i.i364.i ], [ 0, %completions_get_display.exit.i210.i ], [ 0, %completions_get_display.exit.i210.thread.i ], [ 0, %bb.cx ], [ %.013.i.i1927.i359.i, %sbuf_len.exit.i.i358.i ], [ %.013.i.i1927.i359.i, %ic_memmove.exit.i.i.i361.i ], [ %.019.i.i.i366.i, %.lr.ph.i.i.i365.i ], [ %.019.i.i.i366.i, %str_next_ofs.exit616.i ], [ %i.tk, %bb.cw ] ; 2 uses
  %.not.i212.i = icmp eq ptr %i.rs, null
  br i1 %.not.i212.i, label %completions_get_display.exit.thread.i204.i, label %bb.dh

bb.dh:                                            ; preds = %bbcode_column_width.exit371.i
  %i.vh = load ptr, ptr %i.eh, align 8, !tbaa !148 ; 2 uses
  %i.vi = load i8, ptr %i.rs, align 1, !tbaa !48
  %i.vj = icmp eq i8 %i.vi, 0
  br i1 %i.vj, label %bbcode_column_width.exit349.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vh, i64 80 ; 2 uses
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !149 ; 2 uses
  %i.vm = icmp eq ptr %i.vl, null
  br i1 %i.vm, label %ic_strlen.exit.i.i342.i, label %bb.dr

ic_strlen.exit.i.i342.i:                          ; preds = %bb.di
  %i.vn = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.rs) #29 ; 2 uses
  %i.vo = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.vn, i64 0) ; 3 uses
  %i.vp = icmp slt i64 %i.vn, 1
  br i1 %i.vp, label %bbcode_column_width.exit349.i, label %.lr.ph.i.i.i343.i

.lr.ph.i.i.i343.i:                                ; preds = %ic_strlen.exit.i.i342.i, %bb.dq
  %.019.i.i.i344.i = phi i64 [ %i.wv, %bb.dq ], [ 0, %ic_strlen.exit.i.i342.i ] ; 3 uses
  %.01218.i.i.i345.i = phi i64 [ %i.ww, %bb.dq ], [ 0, %ic_strlen.exit.i.i342.i ] ; 6 uses
  %i.vq = icmp sgt i64 %i.vo, %.01218.i.i.i345.i
  br i1 %i.vq, label %bb.dj, label %bbcode_column_width.exit349.i

bb.dj:                                            ; preds = %.lr.ph.i.i.i343.i
  %i.vr = getelementptr inbounds i8, ptr %i.rs, i64 %.01218.i.i.i345.i ; 7 uses
  %i.vs = sub nsw i64 %i.vo, %.01218.i.i.i345.i   ; 7 uses
  %25 = icmp slt i64 %i.vs, 2
  br i1 %25, label %skip_esc.exit.i543.i, label %26

26:                                               ; preds = %bb.dj
  %27 = load i8, ptr %i.vr, align 1, !tbaa !48
  %.not66.i.i542.i = icmp eq i8 %27, 27
  br i1 %.not66.i.i542.i, label %bb.dk, label %skip_esc.exit.i543.i

bb.dk:                                            ; preds = %26
  %i.vt = getelementptr inbounds nuw i8, ptr %i.vr, i64 1
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !48
  %.fr89.i.i548.i = freeze i8 %i.vu               ; 2 uses
  %i.vv = sext i8 %.fr89.i.i548.i to i32
  %memchr.i.i549.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.vv, i64 7)
  %.not67.i.i550.i = icmp eq ptr %memchr.i.i549.i, null
  %.not87.i.i551.i = icmp eq i64 %i.vs, 2
  %or.cond.i.i552.i = or i1 %.not87.i.i551.i, %.not67.i.i550.i
  br i1 %or.cond.i.i552.i, label %str_next_ofs.exit564.thread.i, label %.lr.ph.i.i553.i

.lr.ph.i.i553.i:                                  ; preds = %bb.dk
  %.not.i.i554.i = icmp eq i8 %.fr89.i.i548.i, 91
  br i1 %.not.i.i554.i, label %.lr.ph.split.us.split.i.i560.i, label %.lr.ph.split.split.us.i.i555.i

.lr.ph.split.us.split.i.i560.i:                   ; preds = %.lr.ph.i.i553.i, %bb.dl
  %.05475.us.i.i561.i = phi i64 [ %i.vw, %bb.dl ], [ 2, %.lr.ph.i.i553.i ] ; 2 uses
  %i.vw = add nuw nsw i64 %.05475.us.i.i561.i, 1  ; 3 uses
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vr, i64 %.05475.us.i.i561.i
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !48  ; 2 uses
  %i.vz = icmp sgt i8 %i.vy, 63
  %i.wa = icmp eq i8 %i.vy, 2
  %or.cond116.i.i562.i = or i1 %i.vz, %i.wa
  br i1 %or.cond116.i.i562.i, label %str_next_ofs.exit564.thread.i, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.split.us.split.i.i560.i
  %exitcond.not.i.i563.i = icmp eq i64 %i.vw, %i.vs
  br i1 %exitcond.not.i.i563.i, label %str_next_ofs.exit564.thread.i, label %.lr.ph.split.us.split.i.i560.i, !llvm.loop !11

.lr.ph.split.split.us.i.i555.i:                   ; preds = %.lr.ph.i.i553.i, %bb.do
  %.05475.us76.i.i556.i = phi i64 [ %i.wb, %bb.do ], [ 2, %.lr.ph.i.i553.i ] ; 3 uses
  %i.wb = add nuw nsw i64 %.05475.us76.i.i556.i, 1 ; 6 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vr, i64 %.05475.us76.i.i556.i
  %i.wd = load i8, ptr %i.wc, align 1, !tbaa !48  ; 2 uses
  switch i8 %i.wd, label %bb.dm [
    i8 7, label %str_next_ofs.exit564.thread.i
    i8 2, label %str_next_ofs.exit564.thread.i
  ]

bb.dm:                                            ; preds = %.lr.ph.split.split.us.i.i555.i
  %i.we = icmp eq i8 %i.wd, 27
  %i.wf = icmp sgt i64 %i.vs, %i.wb
  %or.cond.us.i.i557.i = select i1 %i.we, i1 %i.wf, i1 false
  br i1 %or.cond.us.i.i557.i, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.wg = getelementptr inbounds nuw i8, ptr %i.vr, i64 %i.wb
  %i.wh = load i8, ptr %i.wg, align 1, !tbaa !48
  %i.wi = icmp eq i8 %i.wh, 92
  br i1 %i.wi, label %.split83.us.i.i559.i, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %exitcond103.not.i.i558.i = icmp eq i64 %i.wb, %i.vs
  br i1 %exitcond103.not.i.i558.i, label %str_next_ofs.exit564.thread.i, label %.lr.ph.split.split.us.i.i555.i, !llvm.loop !11

.split83.us.i.i559.i:                             ; preds = %bb.dn
  %i.wj = add nuw nsw i64 %.05475.us76.i.i556.i, 2
  br label %str_next_ofs.exit564.thread.i

skip_esc.exit.i543.i:                             ; preds = %26, %bb.dj
  %i.wk = add nsw i64 %.01218.i.i.i345.i, 1       ; 2 uses
  %i.wl = icmp sgt i64 %i.vo, %i.wk
  br i1 %i.wl, label %.lr.ph.i544.i, label %str_next_ofs.exit564.thread.i

.lr.ph.i544.i:                                    ; preds = %skip_esc.exit.i543.i, %bb.dp
  %i.wm = phi i64 [ %i.wq, %bb.dp ], [ %i.wk, %skip_esc.exit.i543.i ]
  %.02837.i545.i = phi i64 [ %i.wp, %bb.dp ], [ 1, %skip_esc.exit.i543.i ] ; 2 uses
  %i.wn = getelementptr inbounds i8, ptr %i.rs, i64 %i.wm
  %i.wo = load i8, ptr %i.wn, align 1, !tbaa !48
  %or.cond.i546.i = icmp sgt i8 %i.wo, -65
  br i1 %or.cond.i546.i, label %str_next_ofs.exit564.i, label %bb.dp

bb.dp:                                            ; preds = %.lr.ph.i544.i
  %i.wp = add nuw i64 %.02837.i545.i, 1           ; 3 uses
  %i.wq = add nsw i64 %i.wp, %.01218.i.i.i345.i
  %exitcond.not.i547.i = icmp eq i64 %i.wp, %i.vs
  br i1 %exitcond.not.i547.i, label %str_next_ofs.exit564.i, label %.lr.ph.i544.i

str_next_ofs.exit564.thread.i:                    ; preds = %bb.do, %.lr.ph.split.split.us.i.i555.i, %.lr.ph.split.split.us.i.i555.i, %bb.dl, %.lr.ph.split.us.split.i.i560.i, %skip_esc.exit.i543.i, %.split83.us.i.i559.i, %bb.dk
  %.2.i541.ph.i = phi i64 [ 1, %skip_esc.exit.i543.i ], [ %i.wj, %.split83.us.i.i559.i ], [ %i.vw, %.lr.ph.split.us.split.i.i560.i ], [ 2, %bb.dk ], [ 2, %bb.dl ], [ 2, %bb.do ], [ %i.wb, %.lr.ph.split.split.us.i.i555.i ], [ %i.wb, %.lr.ph.split.split.us.i.i555.i ] ; 2 uses
  %i.wr = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.vr, i64 noundef %.2.i541.ph.i)
  br label %bb.dq

str_next_ofs.exit564.i:                           ; preds = %bb.dp, %.lr.ph.i544.i
  %.2.i541.i = phi i64 [ %.02837.i545.i, %.lr.ph.i544.i ], [ %i.vs, %bb.dp ] ; 3 uses
  %i.ws = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.vr, i64 noundef %.2.i541.i)
  %i.wt = icmp sgt i64 %.2.i541.i, 0
  br i1 %i.wt, label %bb.dq, label %bbcode_column_width.exit349.i

bb.dq:                                            ; preds = %str_next_ofs.exit564.i, %str_next_ofs.exit564.thread.i
  %i.wu = phi i64 [ %i.wr, %str_next_ofs.exit564.thread.i ], [ %i.ws, %str_next_ofs.exit564.i ]
  %.2.i541665.i = phi i64 [ %.2.i541.ph.i, %str_next_ofs.exit564.thread.i ], [ %.2.i541.i, %str_next_ofs.exit564.i ]
  %i.wv = add nsw i64 %i.wu, %.019.i.i.i344.i     ; 2 uses
  %i.ww = add nuw nsw i64 %.2.i541665.i, %.01218.i.i.i345.i ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.rs, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !48
  %.not.i.i.i348.i = icmp eq i8 %i.wy, 0
  br i1 %.not.i.i.i348.i, label %bbcode_column_width.exit349.i, label %.lr.ph.i.i.i343.i, !llvm.loop !7

bb.dr:                                            ; preds = %bb.di
  call fastcc void @bbcode_append(ptr noundef nonnull %i.vh, ptr noundef nonnull %i.rs, ptr noundef %i.vl, ptr noundef null)
  %i.wz = load ptr, ptr %i.vk, align 8, !tbaa !149 ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 16 ; 2 uses
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !79 ; 2 uses
  %i.xc = icmp slt i64 %i.xb, 0
  br i1 %i.xc, label %bbcode_column_width.exit349.i, label %ic_strlen.exit.i12.i328.i

ic_strlen.exit.i12.i328.i:                        ; preds = %bb.dr
  %i.xd = load ptr, ptr %i.wz, align 8, !tbaa !81 ; 3 uses
  %i.xe = icmp eq ptr %i.xd, null
  %spec.select.i329.i = select i1 %i.xe, ptr @.str.3, ptr %i.xd ; 5 uses
  %i.xf = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %spec.select.i329.i) #29 ; 2 uses
  %i.xg = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.xf, i64 0) ; 3 uses
  %i.xh = icmp slt i64 %i.xf, 1
  br i1 %i.xh, label %sbuf_len.exit.i.i336.i, label %bb.ds

bb.ds:                                            ; preds = %ic_strlen.exit.i12.i328.i
  %i.xi = load i8, ptr %spec.select.i329.i, align 1, !tbaa !48
  %.not17.i.i13.i330.i = icmp eq i8 %i.xi, 0
  br i1 %.not17.i.i13.i330.i, label %sbuf_len.exit.i.i336.i, label %.lr.ph.i.i14.i331.i

.lr.ph.i.i14.i331.i:                              ; preds = %bb.ds, %bb.ea
  %.019.i.i15.i332.i = phi i64 [ %i.yo, %bb.ea ], [ 0, %bb.ds ] ; 3 uses
  %.01218.i.i16.i333.i = phi i64 [ %i.yp, %bb.ea ], [ 0, %bb.ds ] ; 6 uses
  %i.xj = icmp sgt i64 %i.xg, %.01218.i.i16.i333.i
  br i1 %i.xj, label %bb.dt, label %sbuf_len.exit.i.i336.i

bb.dt:                                            ; preds = %.lr.ph.i.i14.i331.i
  %i.xk = getelementptr inbounds i8, ptr %spec.select.i329.i, i64 %.01218.i.i16.i333.i ; 7 uses
  %i.xl = sub nsw i64 %i.xg, %.01218.i.i16.i333.i ; 7 uses
  %28 = icmp slt i64 %i.xl, 2
  br i1 %28, label %skip_esc.exit.i517.i, label %29

29:                                               ; preds = %bb.dt
  %30 = load i8, ptr %i.xk, align 1, !tbaa !48
  %.not66.i.i516.i = icmp eq i8 %30, 27
  br i1 %.not66.i.i516.i, label %bb.du, label %skip_esc.exit.i517.i

bb.du:                                            ; preds = %29
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xk, i64 1
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !48
  %.fr89.i.i522.i = freeze i8 %i.xn               ; 2 uses
  %i.xo = sext i8 %.fr89.i.i522.i to i32
  %memchr.i.i523.i = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.246, i32 %i.xo, i64 7)
  %.not67.i.i524.i = icmp eq ptr %memchr.i.i523.i, null
  %.not87.i.i525.i = icmp eq i64 %i.xl, 2
  %or.cond.i.i526.i = or i1 %.not87.i.i525.i, %.not67.i.i524.i
  br i1 %or.cond.i.i526.i, label %str_next_ofs.exit538.thread.i, label %.lr.ph.i.i527.i

.lr.ph.i.i527.i:                                  ; preds = %bb.du
  %.not.i.i528.i = icmp eq i8 %.fr89.i.i522.i, 91
  br i1 %.not.i.i528.i, label %.lr.ph.split.us.split.i.i534.i, label %.lr.ph.split.split.us.i.i529.i

.lr.ph.split.us.split.i.i534.i:                   ; preds = %.lr.ph.i.i527.i, %bb.dv
  %.05475.us.i.i535.i = phi i64 [ %i.xp, %bb.dv ], [ 2, %.lr.ph.i.i527.i ] ; 2 uses
  %i.xp = add nuw nsw i64 %.05475.us.i.i535.i, 1  ; 3 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xk, i64 %.05475.us.i.i535.i
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !48  ; 2 uses
  %i.xs = icmp sgt i8 %i.xr, 63
  %i.xt = icmp eq i8 %i.xr, 2
  %or.cond116.i.i536.i = or i1 %i.xs, %i.xt
  br i1 %or.cond116.i.i536.i, label %str_next_ofs.exit538.thread.i, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.split.us.split.i.i534.i
  %exitcond.not.i.i537.i = icmp eq i64 %i.xp, %i.xl
  br i1 %exitcond.not.i.i537.i, label %str_next_ofs.exit538.thread.i, label %.lr.ph.split.us.split.i.i534.i, !llvm.loop !11

.lr.ph.split.split.us.i.i529.i:                   ; preds = %.lr.ph.i.i527.i, %bb.dy
  %.05475.us76.i.i530.i = phi i64 [ %i.xu, %bb.dy ], [ 2, %.lr.ph.i.i527.i ] ; 3 uses
  %i.xu = add nuw nsw i64 %.05475.us76.i.i530.i, 1 ; 6 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xk, i64 %.05475.us76.i.i530.i
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !48  ; 2 uses
  switch i8 %i.xw, label %bb.dw [
    i8 7, label %str_next_ofs.exit538.thread.i
    i8 2, label %str_next_ofs.exit538.thread.i
  ]

bb.dw:                                            ; preds = %.lr.ph.split.split.us.i.i529.i
  %i.xx = icmp eq i8 %i.xw, 27
  %i.xy = icmp sgt i64 %i.xl, %i.xu
  %or.cond.us.i.i531.i = select i1 %i.xx, i1 %i.xy, i1 false
  br i1 %or.cond.us.i.i531.i, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xk, i64 %i.xu
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !48
  %i.yb = icmp eq i8 %i.ya, 92
  br i1 %i.yb, label %.split83.us.i.i533.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %exitcond103.not.i.i532.i = icmp eq i64 %i.xu, %i.xl
  br i1 %exitcond103.not.i.i532.i, label %str_next_ofs.exit538.thread.i, label %.lr.ph.split.split.us.i.i529.i, !llvm.loop !11

.split83.us.i.i533.i:                             ; preds = %bb.dx
  %i.yc = add nuw nsw i64 %.05475.us76.i.i530.i, 2
  br label %str_next_ofs.exit538.thread.i

skip_esc.exit.i517.i:                             ; preds = %29, %bb.dt
  %i.yd = add nsw i64 %.01218.i.i16.i333.i, 1     ; 2 uses
  %i.ye = icmp sgt i64 %i.xg, %i.yd
  br i1 %i.ye, label %.lr.ph.i518.i, label %str_next_ofs.exit538.thread.i

.lr.ph.i518.i:                                    ; preds = %skip_esc.exit.i517.i, %bb.dz
  %i.yf = phi i64 [ %i.yj, %bb.dz ], [ %i.yd, %skip_esc.exit.i517.i ]
  %.02837.i519.i = phi i64 [ %i.yi, %bb.dz ], [ 1, %skip_esc.exit.i517.i ] ; 2 uses
  %i.yg = getelementptr inbounds i8, ptr %spec.select.i329.i, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !48
  %or.cond.i520.i = icmp sgt i8 %i.yh, -65
  br i1 %or.cond.i520.i, label %str_next_ofs.exit538.i, label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.i518.i
  %i.yi = add nuw i64 %.02837.i519.i, 1           ; 3 uses
  %i.yj = add nsw i64 %i.yi, %.01218.i.i16.i333.i
  %exitcond.not.i521.i = icmp eq i64 %i.yi, %i.xl
  br i1 %exitcond.not.i521.i, label %str_next_ofs.exit538.i, label %.lr.ph.i518.i

str_next_ofs.exit538.thread.i:                    ; preds = %bb.dy, %.lr.ph.split.split.us.i.i529.i, %.lr.ph.split.split.us.i.i529.i, %bb.dv, %.lr.ph.split.us.split.i.i534.i, %skip_esc.exit.i517.i, %.split83.us.i.i533.i, %bb.du
  %.2.i515.ph.i = phi i64 [ 1, %skip_esc.exit.i517.i ], [ %i.yc, %.split83.us.i.i533.i ], [ %i.xp, %.lr.ph.split.us.split.i.i534.i ], [ 2, %bb.du ], [ 2, %bb.dv ], [ 2, %bb.dy ], [ %i.xu, %.lr.ph.split.split.us.i.i529.i ], [ %i.xu, %.lr.ph.split.split.us.i.i529.i ] ; 2 uses
  %i.yk = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.xk, i64 noundef %.2.i515.ph.i)
  br label %bb.ea

str_next_ofs.exit538.i:                           ; preds = %bb.dz, %.lr.ph.i518.i
  %.2.i515.i = phi i64 [ %.02837.i519.i, %.lr.ph.i518.i ], [ %i.xl, %bb.dz ] ; 3 uses
  %i.yl = call fastcc i64 @char_column_width(ptr noundef nonnull readonly %i.xk, i64 noundef %.2.i515.i)
  %i.ym = icmp sgt i64 %.2.i515.i, 0
  br i1 %i.ym, label %bb.ea, label %sbuf_len.exit.i.i336.i

bb.ea:                                            ; preds = %str_next_ofs.exit538.i, %str_next_ofs.exit538.thread.i
  %i.yn = phi i64 [ %i.yk, %str_next_ofs.exit538.thread.i ], [ %i.yl, %str_next_ofs.exit538.i ]
  %.2.i515669.i = phi i64 [ %.2.i515.ph.i, %str_next_ofs.exit538.thread.i ], [ %.2.i515.i, %str_next_ofs.exit538.i ]
  %i.yo = add nsw i64 %i.yn, %.019.i.i15.i332.i   ; 2 uses
  %i.yp = add nuw nsw i64 %.2.i515669.i, %.01218.i.i16.i333.i ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %spec.select.i329.i, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !48
  %.not.i.i20.i341.i = icmp eq i8 %i.yr, 0
  br i1 %.not.i.i20.i341.i, label %sbuf_len.exit.i.i336.i, label %.lr.ph.i.i14.i331.i, !llvm.loop !7

sbuf_len.exit.i.i336.i:                           ; preds = %.lr.ph.i.i14.i331.i, %bb.ea, %str_next_ofs.exit538.i, %bb.ds, %ic_strlen.exit.i12.i328.i
  %.013.i.i1927.i337.i = phi i64 [ 0, %ic_strlen.exit.i12.i328.i ], [ 0, %bb.ds ], [ %.019.i.i15.i332.i, %.lr.ph.i.i14.i331.i ], [ %.019.i.i15.i332.i, %str_next_ofs.exit538.i ], [ %i.yo, %bb.ea ] ; 2 uses
  %.not.i.i23.not.i338.i = icmp eq i64 %i.xb, 0
  br i1 %.not.i.i23.not.i338.i, label %bbcode_column_width.exit349.i, label %ic_memmove.exit.i.i.i339.i

ic_memmove.exit.i.i.i339.i:                       ; preds = %sbuf_len.exit.i.i336.i
  store i64 0, ptr %i.xa, align 8, !tbaa !79
  store i8 0, ptr %i.xd, align 1, !tbaa !48
  br label %bbcode_column_width.exit349.i

bbcode_column_width.exit349.i:                    ; preds = %.lr.ph.i.i.i343.i, %bb.dq, %str_next_ofs.exit564.i, %ic_memmove.exit.i.i.i339.i, %sbuf_len.exit.i.i336.i, %bb.dr, %ic_strlen.exit.i.i342.i, %bb.dh
  %.0.i340.i = phi i64 [ 0, %ic_strlen.exit.i.i342.i ], [ 0, %bb.dr ], [ 0, %bb.dh ], [ %.013.i.i1927.i337.i, %ic_memmove.exit.i.i.i339.i ], [ %.013.i.i1927.i337.i, %sbuf_len.exit.i.i336.i ], [ %.019.i.i.i344.i, %.lr.ph.i.i.i343.i ], [ %.019.i.i.i344.i, %str_next_ofs.exit564.i ], [ %i.wv, %bb.dq ]
  %i.ys = add i64 %.0.i362.i, 2
  %i.yt = add i64 %i.ys, %.0.i340.i
  br label %completions_get_display.exit.thread.i204.i

completions_get_display.exit.thread.i204.i:       ; preds = %bbcode_column_width.exit349.i, %bbcode_column_width.exit371.i, %completions_get.exit.i.i208.i, %.preheader774.i
  %.0.i205.i = phi i64 [ %i.yt, %bbcode_column_width.exit349.i ], [ %.0.i362.i, %bbcode_column_width.exit371.i ], [ 0, %completions_get.exit.i.i208.i ], [ 0, %.preheader774.i ]
  %spec.select.i206.i = call i64 @llvm.smax.i64(i64 %.0.i205.i, i64 %.01218.i202.i) ; 2 uses
  %i.yu = add nuw nsw i64 %.01119.i201.i, 1       ; 2 uses
  %exitcond.not.i207.i = icmp eq i64 %i.yu, 8
  br i1 %exitcond.not.i207.i, label %edit_completions_max_width.exit213.i, label %.preheader774.i, !llvm.loop !420

edit_completions_max_width.exit213.i:             ; preds = %completions_get_display.exit.thread.i204.i
  %i.yv = add nuw nsw i64 %spec.select.i206.i, 3  ; 5 uses
  %i.yw = shl nuw nsw i64 %i.yv, 1
  %i.yx = add nuw nsw i64 %i.yw, 2
  %i.yy = icmp slt i64 %i.yx, %i.fe
  br i1 %i.yy, label %sbuf_insert_at_n.exit391.peel.i, label %.thread.i

sbuf_insert_at_n.exit391.peel.i:                  ; preds = %edit_completions_max_width.exit213.i
  %i.yz = icmp eq i64 %.0173.i, 0
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775808, 4) 0, i64 noundef range(i64 3, -9223372036854775808) %i.yv, i1 noundef zeroext %i.yz)
  %i.za = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.zb = icmp eq ptr %i.za, null
  br i1 %i.zb, label %editor_append_completion2.exit.thread.peel.i, label %editor_append_completion2.exit.peel.i

editor_append_completion2.exit.peel.i:            ; preds = %sbuf_insert_at_n.exit391.peel.i
  %i.zc = getelementptr inbounds nuw i8, ptr %i.za, i64 16
  %i.zd = load i64, ptr %i.zc, align 8, !tbaa !79 ; 3 uses
  %i.ze = icmp slt i64 %i.zd, 0
  br i1 %i.ze, label %.peel.next.i, label %.lr.ph.i.i394.preheader.peel.i

editor_append_completion2.exit.thread.peel.i:     ; preds = %sbuf_insert_at_n.exit391.peel.i
  %.pre.i34 = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not694.peel.i = icmp slt i64 %.pre.i34, 0
  br i1 %.not694.peel.i, label %.peel.next.i, label %.lr.ph.i.i394.preheader.peel.i

.lr.ph.i.i394.preheader.peel.i:                   ; preds = %editor_append_completion2.exit.peel.i, %editor_append_completion2.exit.thread.peel.i
  %.0.i.i.i219677.peel1009.i = phi i64 [ 0, %editor_append_completion2.exit.thread.peel.i ], [ %i.zd, %editor_append_completion2.exit.peel.i ] ; 3 uses
  %i.zf = phi i64 [ %.pre.i34, %editor_append_completion2.exit.thread.peel.i ], [ %i.zd, %editor_append_completion2.exit.peel.i ] ; 2 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.za, i64 16 ; 4 uses
  %i.zh = getelementptr inbounds nuw i8, ptr %i.za, i64 8 ; 2 uses
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !213 ; 6 uses
  %i.zj = add nuw nsw i64 %i.zf, 2                ; 3 uses
  %.not.i32.i400.peel.i = icmp slt i64 %i.zi, %i.zj
  br i1 %.not.i32.i400.peel.i, label %bb.eb, label %bb.eg

bb.eb:                                            ; preds = %.lr.ph.i.i394.preheader.peel.i
  %i.zk = icmp slt i64 %i.zi, 1
  br i1 %i.zk, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.zl = icmp samesign ugt i64 %i.zi, 1000
  %i.zm = shl nuw nsw i64 %i.zi, 1
  %i.zn = add nuw nsw i64 %i.zi, 1000
  %.ph.i.i403.peel.i = select i1 %i.zl, i64 %i.zn, i64 %i.zm
  %i.zo = call i64 @llvm.umax.i64(i64 %.ph.i.i403.peel.i, i64 %i.zj) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.zi, i64 noundef %i.zo)
  br label %bb.ee

bb.ed:                                            ; preds = %bb.eb
  %i.zp = call i64 @llvm.umax.i64(i64 %i.zj, i64 120)
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %bb.ec
  %spec.select34.i.i405.peel.i = phi i64 [ %i.zo, %bb.ec ], [ %i.zp, %bb.ed ] ; 3 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.za, i64 24
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !78
  %i.zs = load ptr, ptr %i.za, align 8, !tbaa !81
  %i.zt = add nuw nsw i64 %spec.select34.i.i405.peel.i, 1
  %i.zu = getelementptr i8, ptr %i.zr, i64 8
  %.val.i.i406.peel.i = load ptr, ptr %i.zu, align 8, !tbaa !74
  %i.zv = call ptr %.val.i.i406.peel.i(ptr noundef %i.zs, i64 noundef %i.zt) #28, !inline_history !421 ; 3 uses
  %.not36.i.i407.peel.i = icmp eq ptr %i.zv, null
  br i1 %.not36.i.i407.peel.i, label %.peel.next.i, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  store ptr %i.zv, ptr %i.za, align 8, !tbaa !81
  store i64 %spec.select34.i.i405.peel.i, ptr %i.zh, align 8, !tbaa !213
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 %spec.select34.i.i405.peel.i
  store i8 0, ptr %i.zw, align 1, !tbaa !48
  %i.zx = load ptr, ptr %i.za, align 8, !tbaa !81
  %i.zy = load i64, ptr %i.zg, align 8, !tbaa !79
  %i.zz = getelementptr inbounds i8, ptr %i.zx, i64 %i.zy
  store i8 0, ptr %i.zz, align 1, !tbaa !48
  %.pre.i408.peel.i = load i64, ptr %i.zg, align 8, !tbaa !79
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %.lr.ph.i.i394.preheader.peel.i
  %i.aaa = phi i64 [ %i.zf, %.lr.ph.i.i394.preheader.peel.i ], [ %.pre.i408.peel.i, %bb.ef ]
  %i.aab = sub nsw i64 %i.aaa, %.0.i.i.i219677.peel1009.i ; 2 uses
  %i.aac = icmp slt i64 %i.aab, 1
  br i1 %i.aac, label %ic_memmove.exit.i401.peel.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aad = load ptr, ptr %i.za, align 8, !tbaa !81
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 %.0.i.i.i219677.peel1009.i ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aaf, ptr readonly align 1 %i.aae, i64 %i.aab, i1 false)
  br label %ic_memmove.exit.i401.peel.i

ic_memmove.exit.i401.peel.i:                      ; preds = %bb.eh, %bb.eg
  %i.aag = load ptr, ptr %i.za, align 8, !tbaa !81, !nonnull !137, !noundef !137
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 %.0.i.i.i219677.peel1009.i
  store i16 8224, ptr %i.aah, align 1
  %.pre38.i402.peel.i = load ptr, ptr %i.za, align 8, !tbaa !81
  %i.aai = load i64, ptr %i.zg, align 8, !tbaa !79
  %i.aaj = add nsw i64 %i.aai, 2                  ; 2 uses
  store i64 %i.aaj, ptr %i.zg, align 8, !tbaa !79
  %i.aak = getelementptr inbounds i8, ptr %.pre38.i402.peel.i, i64 %i.aaj
  store i8 0, ptr %i.aak, align 1, !tbaa !48
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %ic_memmove.exit.i401.peel.i, %bb.ee, %editor_append_completion2.exit.thread.peel.i, %editor_append_completion2.exit.peel.i
  %i.aal = icmp eq i64 %i.ek, %.0173.i
  call fastcc void @editor_append_completion(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i64 noundef range(i64 -9223372036854775805, 8) %i.ek, i64 noundef range(i64 3, -9223372036854775808) %i.yv, i1 noundef zeroext %i.aal)
  br label %bb.ei

bb.ei:                                            ; preds = %sbuf_insert_at_n.exit410.i, %.peel.next.i
  %.0170745.i = phi i64 [ %i.adl, %sbuf_insert_at_n.exit410.i ], [ 1, %.peel.next.i ] ; 4 uses
  %i.aam = load ptr, ptr %i.ee, align 8, !tbaa !218 ; 11 uses
  %i.aan = icmp eq ptr %i.aam, null
  br i1 %i.aan, label %sbuf_append.exit217.thread.i, label %sbuf_append.exit217.i

sbuf_append.exit217.i:                            ; preds = %bb.ei
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aap = load i64, ptr %i.aao, align 8, !tbaa !79 ; 3 uses
  %i.aaq = icmp slt i64 %i.aap, 0
  br i1 %i.aaq, label %sbuf_insert_at_n.exit391.i, label %.lr.ph.i.i375.i

sbuf_append.exit217.thread.i:                     ; preds = %bb.ei
  %.pre808.i = load i64, ptr inttoptr (i64 16 to ptr), align 16, !tbaa !79 ; 2 uses
  %.not693.i = icmp slt i64 %.pre808.i, 0
  br i1 %.not693.i, label %sbuf_insert_at_n.exit391.i, label %.lr.ph.i.i375.i

.lr.ph.i.i375.i:                                  ; preds = %sbuf_append.exit217.i, %sbuf_append.exit217.thread.i
  %.0.i.i2156731012.i = phi i64 [ 0, %sbuf_append.exit217.thread.i ], [ %i.aap, %sbuf_append.exit217.i ] ; 3 uses
  %i.aar = phi i64 [ %.pre808.i, %sbuf_append.exit217.thread.i ], [ %i.aap, %sbuf_append.exit217.i ] ; 3 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aam, i64 16 ; 4 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aam, i64 8 ; 2 uses
  %i.aau = load i64, ptr %i.aat, align 8, !tbaa !213 ; 6 uses
  %i.aav = add nuw nsw i64 %i.aar, 1              ; 2 uses
  %.not.i32.i381.not.i = icmp sgt i64 %i.aau, %i.aar
  br i1 %.not.i32.i381.not.i, label %bb.eo, label %bb.ej

bb.ej:                                            ; preds = %.lr.ph.i.i375.i
  %i.aaw = icmp slt i64 %i.aau, 1
  br i1 %i.aaw, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.aax = icmp samesign ugt i64 %i.aau, 1000
  %i.aay = shl nuw nsw i64 %i.aau, 1
  %i.aaz = add nuw nsw i64 %i.aau, 1000
  %.ph.i.i384.i = select i1 %i.aax, i64 %i.aaz, i64 %i.aay
  %i.aba = call i64 @llvm.umax.i64(i64 %.ph.i.i384.i, i64 %i.aav) ; 2 uses
  call void (ptr, ...) @debug_msg(ptr noundef nonnull @.str.216, i64 noundef %i.aau, i64 noundef %i.aba)
  br label %bb.em

bb.el:                                            ; preds = %bb.ej
  %i.abb = call i64 @llvm.umax.i64(i64 %i.aav, i64 120)
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %spec.select34.i.i386.i = phi i64 [ %i.aba, %bb.ek ], [ %i.abb, %bb.el ] ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aam, i64 24
  %i.abd = load ptr, ptr %i.abc, align 8, !tbaa !78
  %i.abe = load ptr, ptr %i.aam, align 8, !tbaa !81
  %i.abf = add nuw nsw i64 %spec.select34.i.i386.i, 1
  %i.abg = getelementptr i8, ptr %i.abd, i64 8
  %.val.i.i387.i = load ptr, ptr %i.abg, align 8, !tbaa !74
  %i.abh = call ptr %.val.i.i387.i(ptr noundef %i.abe, i64 noundef %i.abf) #28, !inline_history !421 ; 3 uses
  %.not36.i.i388.i = icmp eq ptr %i.abh, null
  br i1 %.not36.i.i388.i, label %sbuf_insert_at_n.exit391.i, label %bb.en

bb.en:                                            ; preds = %bb.em
  store ptr %i.abh, ptr %i.aam, align 8, !tbaa !81
  store i64 %spec.select34.i.i386.i, ptr %i.aat, align 8, !tbaa !213
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 %spec.select34.i.i386.i
  store i8 0, ptr %i.abi, align 1, !tbaa !48
  %i.abj = load ptr, ptr %i.aam, align 8, !tbaa !81
  %i.abk = load i64, ptr %i.aas, align 8, !tbaa !79
  %i.abl = getelementptr inbounds i8, ptr %i.abj, i64 %i.abk
  store i8 0, ptr %i.abl, align 1, !tbaa !48
  %.pre.i389.i = load i64, ptr %i.aas, align 8, !tbaa !79
  br label %bb.eo

end_hunk_0
