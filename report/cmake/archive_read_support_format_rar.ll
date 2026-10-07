Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_rar?download=true
inline.NumInlined: 106
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@expand:bb.a
bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.fa = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3) ; 2 uses
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fc = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 936 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !91 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not5.i.i.i, label %delete_filter.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ae, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.ff, %.lr.ph.i.i.i ], [ %i.fd, %bb.ae ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 80
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !93 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 40
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.fh) #20
  tail call void @free(ptr noundef nonnull %.06.i.i.i) #20
  %.not.i.i.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i, label %delete_filter.exit.loopexit.i.i, label %.lr.ph.i.i.i, !llvm.loop !0

delete_filter.exit.loopexit.i.i:                  ; preds = %.lr.ph.i.i.i
  %.pre.i60.i = load ptr, ptr %i.ew, align 8, !tbaa !95
  br label %delete_filter.exit.i.i

delete_filter.exit.i.i:                           ; preds = %delete_filter.exit.loopexit.i.i, %bb.ae
  %i.fi = phi ptr [ %.pre.i60.i, %delete_filter.exit.loopexit.i.i ], [ %.011342.i.i, %bb.ae ] ; 2 uses
  store ptr null, ptr %i.fc, align 8, !tbaa !91
  %.not6.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not6.i.i.i, label %.thread.i.i, label %.lr.ph.i145.i.i

.lr.ph.i145.i.i:                                  ; preds = %delete_filter.exit.i.i, %.lr.ph.i145.i.i
  %.07.i.i.i = phi ptr [ %i.fk, %.lr.ph.i145.i.i ], [ %i.fi, %delete_filter.exit.i.i ] ; 4 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 48
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !97 ; 2 uses
  %i.fl = load ptr, ptr %.07.i.i.i, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.fl) #20
  %i.fm = getelementptr inbounds nuw i8, ptr %.07.i.i.i, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !99
  tail call void @free(ptr noundef %i.fn) #20
  tail call void @free(ptr noundef nonnull %.07.i.i.i) #20
  %.not.i146.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i146.i.i, label %.thread.i.i, label %.lr.ph.i145.i.i, !llvm.loop !1

.thread.i.i:                                      ; preds = %.lr.ph.i145.i.i, %delete_filter.exit.i.i
  store ptr null, ptr %i.ew, align 8, !tbaa !95
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.fo = add i32 %i.fa, -1                       ; 2 uses
  %i.fp = icmp ugt i32 %i.fo, %.0111.lcssa.i.i
  br i1 %i.fp, label %.loopexit253, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread.i.i
  %.111446180.i.i = phi ptr [ null, %.thread.i.i ], [ %.011342.i.i, %bb.af ]
  %.01092.i.i = phi i32 [ 0, %.thread.i.i ], [ %i.fo, %bb.af ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 952
  store i32 %.01092.i.i, ptr %i.fq, align 8, !tbaa !258
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 952
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !258
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.111446.i.i = phi ptr [ %.111446180.i.i, %bb.ag ], [ %.011342.i.i, %bb.ah ] ; 3 uses
  %.1110.i.i = phi i32 [ %.01092.i.i, %bb.ag ], [ %i.fs, %bb.ah ] ; 4 uses
  %.not125.i.i = icmp eq i32 %.1110.i.i, 0
  br i1 %.not125.i.i, label %._crit_edge51.i.i, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %bb.ai
  %xtraiter = and i32 %.1110.i.i, 7               ; 3 uses
  %i.ft = icmp ult i32 %.1110.i.i, 8
  br i1 %i.ft, label %.lr.ph50.i.i.epil.preheader, label %.lr.ph50.i.i.preheader.new

.lr.ph50.i.i.preheader.new:                       ; preds = %.lr.ph50.i.i.preheader
  %unroll_iter = and i32 %.1110.i.i, -8
  br label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i, %.lr.ph50.i.i.preheader.new
  %.111448.i.i = phi ptr [ %.111446.i.i, %.lr.ph50.i.i.preheader.new ], [ %.1114.i.i.7, %.lr.ph50.i.i ]
  %niter = phi i32 [ 0, %.lr.ph50.i.i.preheader.new ], [ %niter.next.7, %.lr.ph50.i.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.111448.i.i, i64 48
  %.1114.i.i = load ptr, ptr %i.fu, align 8, !tbaa !257
  %i.fv = getelementptr inbounds nuw i8, ptr %.1114.i.i, i64 48
  %.1114.i.i.1 = load ptr, ptr %i.fv, align 8, !tbaa !257
  %i.fw = getelementptr inbounds nuw i8, ptr %.1114.i.i.1, i64 48
  %.1114.i.i.2 = load ptr, ptr %i.fw, align 8, !tbaa !257
  %i.fx = getelementptr inbounds nuw i8, ptr %.1114.i.i.2, i64 48
  %.1114.i.i.3 = load ptr, ptr %i.fx, align 8, !tbaa !257
  %i.fy = getelementptr inbounds nuw i8, ptr %.1114.i.i.3, i64 48
  %.1114.i.i.4 = load ptr, ptr %i.fy, align 8, !tbaa !257
  %i.fz = getelementptr inbounds nuw i8, ptr %.1114.i.i.4, i64 48
  %.1114.i.i.5 = load ptr, ptr %i.fz, align 8, !tbaa !257
  %i.ga = getelementptr inbounds nuw i8, ptr %.1114.i.i.5, i64 48
  %.1114.i.i.6 = load ptr, ptr %i.ga, align 8, !tbaa !257
  %i.gb = getelementptr inbounds nuw i8, ptr %.1114.i.i.6, i64 48
  %.1114.i.i.7 = load ptr, ptr %i.gb, align 8, !tbaa !257 ; 3 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge51.i.i.loopexit.unr-lcssa, label %.lr.ph50.i.i, !llvm.loop !243

._crit_edge51.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph50.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge51.i.i, label %.lr.ph50.i.i.epil.preheader

.lr.ph50.i.i.epil.preheader:                      ; preds = %._crit_edge51.i.i.loopexit.unr-lcssa, %.lr.ph50.i.i.preheader
  %.111448.i.i.epil.init = phi ptr [ %.111446.i.i, %.lr.ph50.i.i.preheader ], [ %.1114.i.i.7, %._crit_edge51.i.i.loopexit.unr-lcssa ]
  %lcmp.mod638 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod638)
  br label %.lr.ph50.i.i.epil

.lr.ph50.i.i.epil:                                ; preds = %.lr.ph50.i.i.epil, %.lr.ph50.i.i.epil.preheader
  %.111448.i.i.epil = phi ptr [ %.1114.i.i.epil, %.lr.ph50.i.i.epil ], [ %.111448.i.i.epil.init, %.lr.ph50.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph50.i.i.epil ], [ 0, %.lr.ph50.i.i.epil.preheader ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.111448.i.i.epil, i64 48
  %.1114.i.i.epil = load ptr, ptr %i.gc, align 8, !tbaa !257 ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge51.i.i, label %.lr.ph50.i.i.epil, !llvm.loop !244

._crit_edge51.i.i:                                ; preds = %._crit_edge51.i.i.loopexit.unr-lcssa, %.lr.ph50.i.i.epil, %bb.ai
  %.1114.lcssa.i.i = phi ptr [ %.111446.i.i, %bb.ai ], [ %.1114.i.i.7, %._crit_edge51.i.i.loopexit.unr-lcssa ], [ %.1114.i.i.epil, %.lr.ph50.i.i.epil ] ; 5 uses
  %.not131.i.i = icmp eq ptr %.1114.lcssa.i.i, null ; 4 uses
  br i1 %.not131.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge51.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.1114.lcssa.i.i, i64 40 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !259
  %i.gf = add i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 8, !tbaa !259
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge51.i.i
  %i.gg = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3)
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr i8, ptr %.val.val.i, i64 872
  %.val.i.i236 = load i64, ptr %i.gi, align 8, !tbaa !141
  %i.gj = add i64 %.val.i.i236, %i.gh             ; 2 uses
  %i.gk = and i32 %i.ez, 64
  %.not132.i.i = icmp eq i32 %i.gk, 0
  %i.gl = add i64 %i.gj, 258
  %spec.select.i.i = select i1 %.not132.i.i, i64 %i.gj, i64 %i.gl ; 2 uses
  %i.gm = and i32 %i.ez, 32
  %.not133.i.i = icmp eq i32 %i.gm, 0
  br i1 %.not133.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  br i1 %.not131.i.i, label %.thread6.i.i, label %.thread9.i.i

bb.am:                                            ; preds = %bb.ak
  %i.gn = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3) ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 232
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !119
  %i.gq = icmp ugt i32 %i.gn, %i.gp
  br i1 %i.gq, label %.loopexit253, label %bb.an

.thread9.i.i:                                     ; preds = %bb.al
  %i.gr = getelementptr inbounds nuw i8, ptr %.1114.lcssa.i.i, i64 44
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !260 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 232
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !119
  %i.gv = icmp ugt i32 %i.gs, %i.gu
  br i1 %i.gv, label %.loopexit253, label %.thread11.i.i

bb.an:                                            ; preds = %bb.am
  br i1 %.not131.i.i, label %.thread6.i.i, label %.thread11.i.i

.thread11.i.i:                                    ; preds = %bb.an, %.thread9.i.i
  %.sroa.15.0.i.i = phi i32 [ %i.gn, %bb.an ], [ %i.gs, %.thread9.i.i ]
  %i.gw = getelementptr inbounds nuw i8, ptr %.1114.lcssa.i.i, i64 40
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !259
  br label %.thread6.i.i

.thread6.i.i:                                     ; preds = %.thread11.i.i, %bb.an, %bb.al
  %.sroa.15.1.i.i = phi i32 [ %i.gn, %bb.an ], [ %.sroa.15.0.i.i, %.thread11.i.i ], [ 0, %bb.al ] ; 7 uses
  %i.gy = phi i32 [ 0, %bb.an ], [ %i.gx, %.thread11.i.i ], [ 0, %bb.al ] ; 4 uses
  %i.gz = and i32 %i.ez, 16
  %.not134.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not134.i.i, label %.loopexit27.i.i, label %bb.ao

bb.ao:                                            ; preds = %.thread6.i.i
  %i.ha = load i32, ptr %i.r, align 8, !tbaa !152 ; 4 uses
  %i.hb = icmp slt i32 %i.ha, 7
  br i1 %i.hb, label %bb.ap, label %.membr_fill.exit_crit_edge.i.i.i

.membr_fill.exit_crit_edge.i.i.i:                 ; preds = %bb.ao
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !153
  br label %membr_bits.exit.i.i

bb.ap:                                            ; preds = %bb.ao
  %i.hc = load i32, ptr %i.s, align 4, !tbaa !154
  %.not.i147.i.i = icmp eq i32 %i.hc, 0
  br i1 %.not.i147.i.i, label %.lr.ph.i.i.i.i, label %.loopexit27.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap
  %i.hd = load i64, ptr %i.q, align 8, !tbaa !151 ; 2 uses
  %.promoted13.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !155 ; 4 uses
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i.i.i, i64 %i.hd) ; 2 uses
  %.promoted.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8 ; 2 uses
  %exitcond.not.i.i61.not.i.i = icmp ult i64 %.promoted13.i.i.i.i, %i.hd
  br i1 %exitcond.not.i.i61.not.i.i, label %.lr.ph62.i.i, label %membr_fill.exit.thread.i.i.i

.lr.ph62.i.i:                                     ; preds = %.lr.ph.i.i.i.i
  %i.he = load ptr, ptr %3, align 8, !tbaa !150
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar
  %exitcond.not.i.i.i.i = icmp eq i64 %i.hj, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %membr_fill.exit.thread.i.i.i, label %bb.ar, !llvm.loop !3

bb.ar:                                            ; preds = %bb.aq, %.lr.ph62.i.i
  %i.hf = phi i32 [ %i.ha, %.lr.ph62.i.i ], [ %i.ho, %bb.aq ] ; 2 uses
  %i.hg = phi i64 [ %.promoted13.i.i.i.i, %.lr.ph62.i.i ], [ %i.hj, %bb.aq ] ; 2 uses
  %i.hh = phi i64 [ %.promoted.i.i, %.lr.ph62.i.i ], [ %i.hn, %bb.aq ]
  %i.hi = shl i64 %i.hh, 8
  %i.hj = add i64 %i.hg, 1                        ; 3 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.hg
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !37
  %i.hm = zext i8 %i.hl to i64
  %i.hn = or disjoint i64 %i.hi, %i.hm            ; 4 uses
  %i.ho = add nsw i32 %i.hf, 8                    ; 3 uses
  %i.hp = icmp slt i32 %i.hf, -1
  br i1 %i.hp, label %bb.aq, label %membr_fill.exit.i.loopexit.i.i, !llvm.loop !3

membr_fill.exit.thread.i.i.i:                     ; preds = %bb.aq, %.lr.ph.i.i.i.i
  %.lcssa59.i.i = phi i32 [ %i.ha, %.lr.ph.i.i.i.i ], [ %i.ho, %bb.aq ]
  %.lcssa56.i.i = phi i64 [ %.promoted13.i.i.i.i, %.lr.ph.i.i.i.i ], [ %umax.i.i.i.i, %bb.aq ]
  %.lcssa53.i.i = phi i64 [ %.promoted.i.i, %.lr.ph.i.i.i.i ], [ %i.hn, %bb.aq ]
  store i64 %.lcssa53.i.i, ptr %.phi.trans.insert.i.i.i, align 8
  store i64 %.lcssa56.i.i, ptr %i.p, align 8
  store i32 %.lcssa59.i.i, ptr %i.r, align 8
  store i32 1, ptr %i.s, align 4, !tbaa !154
  br label %.loopexit27.i.i

membr_fill.exit.i.loopexit.i.i:                   ; preds = %bb.ar
  store i64 %i.hn, ptr %.phi.trans.insert.i.i.i, align 8
  store i64 %i.hj, ptr %i.p, align 8
  br label %membr_bits.exit.i.i

membr_bits.exit.i.i:                              ; preds = %membr_fill.exit.i.loopexit.i.i, %.membr_fill.exit_crit_edge.i.i.i
  %i.hq = phi i32 [ %i.ha, %.membr_fill.exit_crit_edge.i.i.i ], [ %i.ho, %membr_fill.exit.i.loopexit.i.i ]
  %i.hr = phi i64 [ %.pre.i.i.i, %.membr_fill.exit_crit_edge.i.i.i ], [ %i.hn, %membr_fill.exit.i.loopexit.i.i ]
  %i.hs = add nsw i32 %i.hq, -7                   ; 2 uses
  store i32 %i.hs, ptr %i.r, align 8, !tbaa !152
  %i.ht = zext nneg i32 %i.hs to i64
  %i.hu = lshr i64 %i.hr, %i.ht
  %i.hv = trunc i64 %i.hu to i32                  ; 7 uses
  %i.hw = and i32 %i.hv, 64
  %i.hx = and i32 %i.hv, 1
  %.not144.i.i = icmp eq i32 %i.hx, 0
  br i1 %.not144.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %membr_bits.exit.i.i
  %i.hy = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3)
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %membr_bits.exit.i.i
  %.sroa.0.0.i.i = phi i32 [ 0, %membr_bits.exit.i.i ], [ %i.hy, %bb.as ] ; 2 uses
  %i.hz = and i32 %i.hv, 2
  %.not144.1.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not144.1.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ia = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sroa.6.1.i.i = phi i32 [ 0, %bb.at ], [ %i.ia, %bb.au ] ; 2 uses
  %i.ib = and i32 %i.hv, 4
  %.not144.2.i.i = icmp eq i32 %i.ib, 0
  br i1 %.not144.2.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ic = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sroa.8.1.i.i = phi i32 [ 0, %bb.av ], [ %i.ic, %bb.aw ] ; 2 uses
  %i.id = and i32 %i.hv, 8
  %.not144.3.i.i = icmp eq i32 %i.id, 0
  br i1 %.not144.3.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ie = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.sroa.10.3.i.i = phi i32 [ 245760, %bb.ax ], [ %i.ie, %bb.ay ] ; 2 uses
  %i.if = and i32 %i.hv, 16
  %.not144.4.i.i = icmp eq i32 %i.if, 0
  br i1 %.not144.4.i.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ig = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.15.3.i.i = phi i32 [ %.sroa.15.1.i.i, %bb.az ], [ %i.ig, %bb.ba ] ; 2 uses
  %i.ih = and i32 %i.hv, 32
  %.not144.5.i.i = icmp eq i32 %i.ih, 0
  br i1 %.not144.5.i.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ii = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3)
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.sroa.20.1.i.i = phi i32 [ %i.gy, %bb.bb ], [ %i.ii, %bb.bc ] ; 2 uses
  %.not144.6.not.not.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not144.6.not.not.i.i, label %.loopexit27.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ij = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3)
  br label %.loopexit27.i.i

.loopexit27.i.i:                                  ; preds = %bb.be, %bb.bd, %membr_fill.exit.thread.i.i.i, %bb.ap, %.thread6.i.i
  %.sroa.0.1.i.i = phi i32 [ 0, %.thread6.i.i ], [ %.sroa.0.0.i.i, %bb.bd ], [ %.sroa.0.0.i.i, %bb.be ], [ 0, %membr_fill.exit.thread.i.i.i ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.6.0.i.i = phi i32 [ 0, %.thread6.i.i ], [ %.sroa.6.1.i.i, %bb.bd ], [ %.sroa.6.1.i.i, %bb.be ], [ 0, %membr_fill.exit.thread.i.i.i ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.8.0.i.i = phi i32 [ 0, %.thread6.i.i ], [ %.sroa.8.1.i.i, %bb.bd ], [ %.sroa.8.1.i.i, %bb.be ], [ 0, %membr_fill.exit.thread.i.i.i ], [ 0, %bb.ap ] ; 2 uses
  %.sroa.10.2.i.i = phi i32 [ 245760, %.thread6.i.i ], [ %.sroa.10.3.i.i, %bb.bd ], [ %.sroa.10.3.i.i, %bb.be ], [ 245760, %membr_fill.exit.thread.i.i.i ], [ 245760, %bb.ap ] ; 2 uses
  %.sroa.15.2.i.i = phi i32 [ %.sroa.15.1.i.i, %.thread6.i.i ], [ %.sroa.15.3.i.i, %bb.bd ], [ %.sroa.15.3.i.i, %bb.be ], [ %.sroa.15.1.i.i, %membr_fill.exit.thread.i.i.i ], [ %.sroa.15.1.i.i, %bb.ap ] ; 2 uses
  %.sroa.20.0.i.i = phi i32 [ %i.gy, %.thread6.i.i ], [ %.sroa.20.1.i.i, %bb.bd ], [ %.sroa.20.1.i.i, %bb.be ], [ %i.gy, %membr_fill.exit.thread.i.i.i ], [ %i.gy, %bb.ap ] ; 2 uses
  %.sroa.23.0.i.i = phi i32 [ 0, %.thread6.i.i ], [ 0, %bb.bd ], [ %i.ij, %bb.be ], [ 0, %membr_fill.exit.thread.i.i.i ], [ 0, %bb.ap ] ; 2 uses
  br i1 %.not131.i.i, label %bb.bf, label %bb.bs

bb.bf:                                            ; preds = %.loopexit27.i.i
  %i.ik = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3) ; 6 uses
  %i.il = add i32 %i.ik, -65537
  %or.cond.i58.i = icmp ult i32 %i.il, -65536
  br i1 %or.cond.i58.i, label %.loopexit253, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.im = zext nneg i32 %i.ik to i64              ; 6 uses
  %i.in = tail call noalias ptr @malloc(i64 noundef %i.im) #25 ; 10 uses
  %.not135.i.i = icmp eq ptr %i.in, null
  br i1 %.not135.i.i, label %.loopexit253, label %.lr.ph82.i.i

.lr.ph82.i.i:                                     ; preds = %bb.bg
  %i.io = load i64, ptr %i.q, align 8             ; 2 uses
  %i.ip = load ptr, ptr %3, align 8
  %.promoted84.i.i = load i32, ptr %i.r, align 8
  %.phi.trans.insert.i149.promoted.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8
  %.promoted90.i.i = load i32, ptr %i.s, align 4
  %.promoted92.i.i = load i64, ptr %i.p, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %membr_bits.exit159.i.i, %.lr.ph82.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph82.i.i ], [ %indvars.iv.next.i.i, %membr_bits.exit159.i.i ] ; 2 uses
  %.lcssa7295.i.i = phi i64 [ %.promoted92.i.i, %.lr.ph82.i.i ], [ %.lcssa7293.i.i, %membr_bits.exit159.i.i ] ; 6 uses
  %i.iq = phi i32 [ %.promoted90.i.i, %.lr.ph82.i.i ], [ %i.ji, %membr_bits.exit159.i.i ] ; 3 uses
  %.pre.i15089.i.i = phi i64 [ %.phi.trans.insert.i149.promoted.i.i, %.lr.ph82.i.i ], [ %.pre.i15087.i.i, %membr_bits.exit159.i.i ] ; 4 uses
  %.lcssa7586.i.i = phi i32 [ %.promoted84.i.i, %.lr.ph82.i.i ], [ %.lcssa7585.i.i, %membr_bits.exit159.i.i ] ; 5 uses
  %i.ir = icmp slt i32 %.lcssa7586.i.i, 8
  br i1 %i.ir, label %bb.bi, label %.membr_fill.exit_crit_edge.i148.i.i

.membr_fill.exit_crit_edge.i148.i.i:              ; preds = %bb.bh
  %i.is = add nsw i32 %.lcssa7586.i.i, -8
  br label %membr_fill.exit.i151.i.i

bb.bi:                                            ; preds = %bb.bh
  %.not.i153.i.i = icmp eq i32 %i.iq, 0
  br i1 %.not.i153.i.i, label %.lr.ph.i.i154.i.i, label %membr_bits.exit159.i.i

.lr.ph.i.i154.i.i:                                ; preds = %bb.bi
  %umax.i.i156.i.i = tail call i64 @llvm.umax.i64(i64 %.lcssa7295.i.i, i64 %i.io) ; 2 uses
  %exitcond.not.i.i15776.not.i.i = icmp ult i64 %.lcssa7295.i.i, %i.io
  br i1 %exitcond.not.i.i15776.not.i.i, label %.lr.ph77.i.i, label %membr_bits.exit159.i.i

bb.bj:                                            ; preds = %.lr.ph77.i.i
  %i.it = add nsw i32 %i.iu, 8                    ; 2 uses
  %exitcond.not.i.i157.i.i = icmp eq i64 %i.iy, %umax.i.i156.i.i
  br i1 %exitcond.not.i.i157.i.i, label %membr_bits.exit159.i.i, label %.lr.ph77.i.i, !llvm.loop !3

.lr.ph77.i.i:                                     ; preds = %.lr.ph.i.i154.i.i, %bb.bj
  %i.iu = phi i32 [ %i.it, %bb.bj ], [ %.lcssa7586.i.i, %.lr.ph.i.i154.i.i ] ; 3 uses
  %i.iv = phi i64 [ %i.iy, %bb.bj ], [ %.lcssa7295.i.i, %.lr.ph.i.i154.i.i ] ; 2 uses
  %i.iw = phi i64 [ %i.jc, %bb.bj ], [ %.pre.i15089.i.i, %.lr.ph.i.i154.i.i ]
  %i.ix = shl i64 %i.iw, 8
  %i.iy = add i64 %i.iv, 1                        ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.iv
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !37
  %i.jb = zext i8 %i.ja to i64
  %i.jc = or disjoint i64 %i.ix, %i.jb            ; 3 uses
  %i.jd = icmp slt i32 %i.iu, 0
  br i1 %i.jd, label %bb.bj, label %membr_fill.exit.i151.i.i, !llvm.loop !3

membr_fill.exit.i151.i.i:                         ; preds = %.lr.ph77.i.i, %.membr_fill.exit_crit_edge.i148.i.i
  %.lcssa7294.i.i = phi i64 [ %.lcssa7295.i.i, %.membr_fill.exit_crit_edge.i148.i.i ], [ %i.iy, %.lr.ph77.i.i ]
  %.pre.i15088.i.i = phi i64 [ %.pre.i15089.i.i, %.membr_fill.exit_crit_edge.i148.i.i ], [ %i.jc, %.lr.ph77.i.i ] ; 2 uses
  %i.je = phi i32 [ %i.is, %.membr_fill.exit_crit_edge.i148.i.i ], [ %i.iu, %.lr.ph77.i.i ] ; 2 uses
  %i.jf = zext nneg i32 %i.je to i64
  %i.jg = lshr i64 %.pre.i15088.i.i, %i.jf
  %i.jh = trunc i64 %i.jg to i8
  br label %membr_bits.exit159.i.i

membr_bits.exit159.i.i:                           ; preds = %bb.bj, %membr_fill.exit.i151.i.i, %.lr.ph.i.i154.i.i, %bb.bi
  %.lcssa7293.i.i = phi i64 [ %.lcssa7294.i.i, %membr_fill.exit.i151.i.i ], [ %.lcssa7295.i.i, %bb.bi ], [ %.lcssa7295.i.i, %.lr.ph.i.i154.i.i ], [ %umax.i.i156.i.i, %bb.bj ] ; 2 uses
  %i.ji = phi i32 [ %i.iq, %membr_fill.exit.i151.i.i ], [ %i.iq, %bb.bi ], [ 1, %.lr.ph.i.i154.i.i ], [ 1, %bb.bj ] ; 2 uses
  %.pre.i15087.i.i = phi i64 [ %.pre.i15088.i.i, %membr_fill.exit.i151.i.i ], [ %.pre.i15089.i.i, %bb.bi ], [ %.pre.i15089.i.i, %.lr.ph.i.i154.i.i ], [ %i.jc, %bb.bj ] ; 2 uses
  %.lcssa7585.i.i = phi i32 [ %i.je, %membr_fill.exit.i151.i.i ], [ %.lcssa7586.i.i, %bb.bi ], [ %.lcssa7586.i.i, %.lr.ph.i.i154.i.i ], [ %i.it, %bb.bj ] ; 2 uses
  %.0.i152.i.i = phi i8 [ %i.jh, %membr_fill.exit.i151.i.i ], [ 0, %bb.bi ], [ 0, %.lr.ph.i.i154.i.i ], [ 0, %bb.bj ]
  %i.jj = getelementptr inbounds nuw i8, ptr %i.in, i64 %indvars.iv.i.i
  store i8 %.0.i152.i.i, ptr %i.jj, align 1, !tbaa !37
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond162.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.im
  br i1 %exitcond162.not.i.i, label %bb.bk, label %bb.bh, !llvm.loop !245

bb.bk:                                            ; preds = %membr_bits.exit159.i.i
  store i32 %.lcssa7585.i.i, ptr %i.r, align 8
  store i64 %.pre.i15087.i.i, ptr %.phi.trans.insert.i.i.i, align 8
  store i32 %i.ji, ptr %i.s, align 4
  store i64 %.lcssa7293.i.i, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store i64 7, ptr %i.t, align 8
  %i.jk = icmp ugt i32 %i.ik, 1
  br i1 %i.jk, label %.lr.ph.i162.i.i.preheader, label %._crit_edge.thread.i.i.i

.lr.ph.i162.i.i.preheader:                        ; preds = %bb.bk
  %i.jl = add nsw i64 %i.im, -1                   ; 2 uses
  %min.iters.check575 = icmp ult i32 %i.ik, 9
  br i1 %min.iters.check575, label %.lr.ph.i162.i.i.preheader588, label %vector.ph576

vector.ph576:                                     ; preds = %.lr.ph.i162.i.i.preheader
  %n.vec577 = and i64 %i.jl, -8                   ; 3 uses
  %i.jm = or disjoint i64 %n.vec577, 1
  br label %vector.body578

vector.body578:                                   ; preds = %vector.body578, %vector.ph576
  %index579 = phi i64 [ 0, %vector.ph576 ], [ %index.next583, %vector.body578 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph576 ], [ %i.js, %vector.body578 ]
  %vec.phi580 = phi <4 x i32> [ zeroinitializer, %vector.ph576 ], [ %i.jt, %vector.body578 ]
  %i.jn = getelementptr inbounds nuw i8, ptr %i.in, i64 %index579 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 1
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 5
  %wide.load581 = load <4 x i8>, ptr %i.jo, align 1, !tbaa !37
  %wide.load582 = load <4 x i8>, ptr %i.jp, align 1, !tbaa !37
  %i.jq = zext <4 x i8> %wide.load581 to <4 x i32>
  %i.jr = zext <4 x i8> %wide.load582 to <4 x i32>
  %i.js = xor <4 x i32> %vec.phi, %i.jq           ; 2 uses
  %i.jt = xor <4 x i32> %vec.phi580, %i.jr        ; 2 uses
  %index.next583 = add nuw i64 %index579, 8       ; 2 uses
  %i.ju = icmp eq i64 %index.next583, %n.vec577
  br i1 %i.ju, label %middle.block584, label %vector.body578, !llvm.loop !246

middle.block584:                                  ; preds = %vector.body578
  %bin.rdx = xor <4 x i32> %i.jt, %i.js
  %i.jv = tail call i32 @llvm.vector.reduce.xor.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n585 = icmp eq i64 %i.jl, %n.vec577
  br i1 %cmp.n585, label %._crit_edge.thread.i.i.i, label %.lr.ph.i162.i.i.preheader588

.lr.ph.i162.i.i.preheader588:                     ; preds = %.lr.ph.i162.i.i.preheader, %middle.block584
  %.055.i.i.i.ph = phi i64 [ 1, %.lr.ph.i162.i.i.preheader ], [ %i.jm, %middle.block584 ]
  %.02754.i.i.i.ph = phi i32 [ 0, %.lr.ph.i162.i.i.preheader ], [ %i.jv, %middle.block584 ]
  br label %.lr.ph.i162.i.i

.lr.ph.i162.i.i:                                  ; preds = %.lr.ph.i162.i.i.preheader588, %.lr.ph.i162.i.i
  %.055.i.i.i = phi i64 [ %i.ka, %.lr.ph.i162.i.i ], [ %.055.i.i.i.ph, %.lr.ph.i162.i.i.preheader588 ] ; 2 uses
  %.02754.i.i.i = phi i32 [ %i.jz, %.lr.ph.i162.i.i ], [ %.02754.i.i.i.ph, %.lr.ph.i162.i.i.preheader588 ]
  %i.jw = getelementptr inbounds nuw i8, ptr %i.in, i64 %.055.i.i.i
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !37
  %i.jy = zext i8 %i.jx to i32
  %i.jz = xor i32 %.02754.i.i.i, %i.jy            ; 2 uses
  %i.ka = add nuw nsw i64 %.055.i.i.i, 1          ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ka, %i.im
  br i1 %exitcond.not.i.i.i, label %._crit_edge.thread.i.i.i, label %.lr.ph.i162.i.i, !llvm.loop !247

._crit_edge.thread.i.i.i:                         ; preds = %.lr.ph.i162.i.i, %middle.block584, %bb.bk
  %.027.lcssa127.i.i.i = phi i32 [ 0, %bb.bk ], [ %i.jv, %middle.block584 ], [ %i.jz, %.lr.ph.i162.i.i ]
  %i.kb = load i8, ptr %i.in, align 1, !tbaa !37
  %i.kc = zext i8 %i.kb to i32
  %.not31.i.i.i = icmp eq i32 %.027.lcssa127.i.i.i, %i.kc
  br i1 %.not31.i.i.i, label %bb.bl, label %compile_program.exit.thread.i.i

bb.bl:                                            ; preds = %._crit_edge.thread.i.i.i
  store ptr %i.in, ptr %2, align 8, !tbaa !150
  store i64 %i.im, ptr %i.u, align 8, !tbaa !151
  %i.kd = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #21 ; 7 uses
  %.not32.i.i.i = icmp eq ptr %i.kd, null
  br i1 %.not32.i.i.i, label %compile_program.exit.thread.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bl
  %i.ke = tail call i64 @cm_zlib_crc32(i64 noundef 0, ptr noundef nonnull %i.in, i32 noundef %i.ik) #20
  %i.kf = shl nuw nsw i64 %i.im, 32
  %i.kg = or i64 %i.ke, %i.kf
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kd, i64 32
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !156
  %exitcond.not.i.i64.i.i.i = icmp eq i32 %i.ik, 1
  br i1 %exitcond.not.i.i64.i.i.i, label %compile_program.exit.thread17.i.i, label %membr_bits.exit.i.i.i

membr_bits.exit.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.in, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !37  ; 2 uses
  %i.kk = zext i8 %i.kj to i64
  store i64 %i.kk, ptr %i.w, align 8
  store i64 2, ptr %i.v, align 8
  %.not33.i.i.i = icmp sgt i8 %i.kj, -1
  br i1 %.not33.i.i.i, label %compile_program.exit.thread17.i.i, label %bb.bm

bb.bm:                                            ; preds = %membr_bits.exit.i.i.i
  %i.kl = call fastcc i32 @membr_next_rarvm_number(ptr noundef %2)
  %i.km = add i32 %i.kl, 1                        ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  store i32 %i.km, ptr %i.kn, align 8, !tbaa !261
  %i.ko = zext i32 %i.km to i64                   ; 2 uses
  %i.kp = tail call noalias ptr @malloc(i64 noundef %i.ko) #25 ; 3 uses
  store ptr %i.kp, ptr %i.kd, align 8, !tbaa !98
  %.not34.i.i.i = icmp eq ptr %i.kp, null
  br i1 %.not34.i.i.i, label %.lr.ph.i.i161.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bm
  %.not101.i.i.i = icmp eq i32 %i.km, 0
  br i1 %.not101.i.i.i, label %compile_program.exit.thread17.i.i, label %.lr.ph93.i.i.i

.lr.ph93.i.i.i:                                   ; preds = %.preheader.i.i.i
  %.promoted86.i.i.i = load i64, ptr %i.v, align 8
  %.promoted83.i.i.i = load i32, ptr %i.t, align 8
  %i.kq = load i64, ptr %i.u, align 8             ; 2 uses
  %i.kr = load ptr, ptr %2, align 8
  %.phi.trans.insert.i37.promoted.i.i.i = load i64, ptr %i.w, align 8
  %.promoted99.i.i.i = load i32, ptr %i.x, align 4
  br label %bb.bn

.lr.ph.i.i161.i.i:                                ; preds = %bb.bm, %.lr.ph.i.i161.i.i
  %.07.i.i.i.i = phi ptr [ %i.kt, %.lr.ph.i.i161.i.i ], [ %i.kd, %bb.bm ] ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 48
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !97 ; 2 uses
  %i.ku = load ptr, ptr %.07.i.i.i.i, align 8, !tbaa !98
  tail call void @free(ptr noundef %i.ku) #20
  %i.kv = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !99
  tail call void @free(ptr noundef %i.kw) #20
  tail call void @free(ptr noundef nonnull %.07.i.i.i.i) #20
  %.not.i35.i.i.i = icmp eq ptr %i.kt, null
  br i1 %.not.i35.i.i.i, label %compile_program.exit.thread.i.i, label %.lr.ph.i.i161.i.i, !llvm.loop !1

bb.bn:                                            ; preds = %membr_bits.exit47.i.i.i, %.lr.ph93.i.i.i
  %i.kx = phi i32 [ %.promoted99.i.i.i, %.lr.ph93.i.i.i ], [ %i.lp, %membr_bits.exit47.i.i.i ] ; 3 uses
  %.pre.i3898.i.i.i = phi i64 [ %.phi.trans.insert.i37.promoted.i.i.i, %.lr.ph93.i.i.i ], [ %.pre.i3896.i.i.i, %membr_bits.exit47.i.i.i ] ; 4 uses
  %.192.i.i.i = phi i64 [ 0, %.lr.ph93.i.i.i ], [ %i.lr, %membr_bits.exit47.i.i.i ] ; 2 uses
  %.lcssa778591.i.i.i = phi i32 [ %.promoted83.i.i.i, %.lr.ph93.i.i.i ], [ %.lcssa7784.i.i.i, %membr_bits.exit47.i.i.i ] ; 5 uses
  %.lcssa748990.i.i.i = phi i64 [ %.promoted86.i.i.i, %.lr.ph93.i.i.i ], [ %.lcssa7487.i.i.i, %membr_bits.exit47.i.i.i ] ; 6 uses
  %i.ky = icmp slt i32 %.lcssa778591.i.i.i, 8
  br i1 %i.ky, label %bb.bo, label %.membr_fill.exit_crit_edge.i36.i.i.i

.membr_fill.exit_crit_edge.i36.i.i.i:             ; preds = %bb.bn
  %i.kz = add nsw i32 %.lcssa778591.i.i.i, -8
  br label %membr_fill.exit.i39.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %.not.i41.i.i.i = icmp eq i32 %i.kx, 0
  br i1 %.not.i41.i.i.i, label %.lr.ph.i.i42.i.i.i, label %membr_bits.exit47.i.i.i

.lr.ph.i.i42.i.i.i:                               ; preds = %bb.bo
  %umax.i.i44.i.i.i = tail call i64 @llvm.umax.i64(i64 %.lcssa748990.i.i.i, i64 %i.kq) ; 2 uses
  %exitcond.not.i.i4578.not.i.i.i = icmp ult i64 %.lcssa748990.i.i.i, %i.kq
  br i1 %exitcond.not.i.i4578.not.i.i.i, label %.lr.ph79.i.i.i, label %membr_bits.exit47.i.i.i

bb.bp:                                            ; preds = %.lr.ph79.i.i.i
  %i.la = add nsw i32 %i.lb, 8                    ; 2 uses
  %exitcond.not.i.i45.i.i.i = icmp eq i64 %i.lf, %umax.i.i44.i.i.i
  br i1 %exitcond.not.i.i45.i.i.i, label %membr_bits.exit47.i.i.i, label %.lr.ph79.i.i.i, !llvm.loop !3

.lr.ph79.i.i.i:                                   ; preds = %.lr.ph.i.i42.i.i.i, %bb.bp
  %i.lb = phi i32 [ %i.la, %bb.bp ], [ %.lcssa778591.i.i.i, %.lr.ph.i.i42.i.i.i ] ; 3 uses
  %i.lc = phi i64 [ %i.lf, %bb.bp ], [ %.lcssa748990.i.i.i, %.lr.ph.i.i42.i.i.i ] ; 2 uses
  %i.ld = phi i64 [ %i.lj, %bb.bp ], [ %.pre.i3898.i.i.i, %.lr.ph.i.i42.i.i.i ]
  %i.le = shl i64 %i.ld, 8
  %i.lf = add i64 %i.lc, 1                        ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.lc
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !37
  %i.li = zext i8 %i.lh to i64
  %i.lj = or disjoint i64 %i.le, %i.li            ; 3 uses
  %i.lk = icmp slt i32 %i.lb, 0
  br i1 %i.lk, label %bb.bp, label %membr_fill.exit.i39.i.i.i, !llvm.loop !3

membr_fill.exit.i39.i.i.i:                        ; preds = %.lr.ph79.i.i.i, %.membr_fill.exit_crit_edge.i36.i.i.i
  %.pre.i3897.i.i.i = phi i64 [ %.pre.i3898.i.i.i, %.membr_fill.exit_crit_edge.i36.i.i.i ], [ %i.lj, %.lr.ph79.i.i.i ] ; 2 uses
  %.lcssa7488.i.i.i = phi i64 [ %.lcssa748990.i.i.i, %.membr_fill.exit_crit_edge.i36.i.i.i ], [ %i.lf, %.lr.ph79.i.i.i ]
  %i.ll = phi i32 [ %i.kz, %.membr_fill.exit_crit_edge.i36.i.i.i ], [ %i.lb, %.lr.ph79.i.i.i ] ; 2 uses
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = lshr i64 %.pre.i3897.i.i.i, %i.lm
  %i.lo = trunc i64 %i.ln to i8
  br label %membr_bits.exit47.i.i.i

membr_bits.exit47.i.i.i:                          ; preds = %bb.bp, %membr_fill.exit.i39.i.i.i, %.lr.ph.i.i42.i.i.i, %bb.bo
  %i.lp = phi i32 [ %i.kx, %membr_fill.exit.i39.i.i.i ], [ %i.kx, %bb.bo ], [ 1, %.lr.ph.i.i42.i.i.i ], [ 1, %bb.bp ]
  %.pre.i3896.i.i.i = phi i64 [ %.pre.i3897.i.i.i, %membr_fill.exit.i39.i.i.i ], [ %.pre.i3898.i.i.i, %bb.bo ], [ %.pre.i3898.i.i.i, %.lr.ph.i.i42.i.i.i ], [ %i.lj, %bb.bp ]
  %.lcssa7487.i.i.i = phi i64 [ %.lcssa7488.i.i.i, %membr_fill.exit.i39.i.i.i ], [ %.lcssa748990.i.i.i, %bb.bo ], [ %.lcssa748990.i.i.i, %.lr.ph.i.i42.i.i.i ], [ %umax.i.i44.i.i.i, %bb.bp ]
  %.lcssa7784.i.i.i = phi i32 [ %i.ll, %membr_fill.exit.i39.i.i.i ], [ %.lcssa778591.i.i.i, %bb.bo ], [ %.lcssa778591.i.i.i, %.lr.ph.i.i42.i.i.i ], [ %i.la, %bb.bp ]
  %.0.i40.i.i.i = phi i8 [ %i.lo, %membr_fill.exit.i39.i.i.i ], [ 0, %bb.bo ], [ 0, %.lr.ph.i.i42.i.i.i ], [ 0, %bb.bp ]
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %.192.i.i.i
  store i8 %.0.i40.i.i.i, ptr %i.lq, align 1, !tbaa !37
  %i.lr = add nuw nsw i64 %.192.i.i.i, 1          ; 2 uses
  %exitcond116.not.i.i.i = icmp eq i64 %i.lr, %i.ko
  br i1 %exitcond116.not.i.i.i, label %compile_program.exit.thread17.i.i, label %bb.bn, !llvm.loop !248

compile_program.exit.thread.i.i:                  ; preds = %bb.bl, %._crit_edge.thread.i.i.i, %.lr.ph.i.i161.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.sink.split.i

compile_program.exit.thread17.i.i:                ; preds = %membr_bits.exit47.i.i.i, %.preheader.i.i.i, %membr_bits.exit.i.i.i, %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  tail call void @free(ptr noundef %i.in) #20
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %compile_program.exit.thread17.i.i
  %.0.i59.i = phi ptr [ %i.ew, %compile_program.exit.thread17.i.i ], [ %i.lt, %bb.bq ] ; 2 uses
  %i.ls = load ptr, ptr %.0.i59.i, align 8, !tbaa !257 ; 2 uses
  %.not137.i.i = icmp eq ptr %i.ls, null
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 48
  br i1 %.not137.i.i, label %bb.br, label %bb.bq, !llvm.loop !249

bb.br:                                            ; preds = %bb.bq
  store ptr %i.kd, ptr %.0.i59.i, align 8, !tbaa !257
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.loopexit27.i.i
  %.3116.i.i = phi ptr [ %.1114.lcssa.i.i, %.loopexit27.i.i ], [ %i.kd, %bb.br ] ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.3116.i.i, i64 44
  store i32 %.sroa.15.1.i.i, ptr %i.lu, align 4, !tbaa !260
  %i.lv = and i32 %i.ez, 8
  %.not138.i.i = icmp eq i32 %i.lv, 0
  br i1 %.not138.i.i, label %..loopexit.i.i_crit_edge, label %bb.bt

..loopexit.i.i_crit_edge:                         ; preds = %bb.bs
  %.pre = load i32, ptr %i.s, align 4, !tbaa !154
  br label %.loopexit.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.lw = call fastcc i32 @membr_next_rarvm_number(ptr noundef %3) ; 5 uses
  %i.lx = icmp ugt i32 %i.lw, 8128
  br i1 %i.lx, label %.loopexit253, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ly = add nuw nsw i32 %i.lw, 64
  %i.lz = zext nneg i32 %i.ly to i64
  %i.ma = tail call noalias ptr @malloc(i64 noundef %i.lz) #25 ; 4 uses
  %.not139.i.i = icmp eq ptr %i.ma, null
  br i1 %.not139.i.i, label %.loopexit253, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bu
  %.not127.i.i = icmp eq i32 %i.lw, 0
  %.pre388 = load i32, ptr %i.s, align 4          ; 2 uses
  br i1 %.not127.i.i, label %.loopexit.i.i, label %.lr.ph111.i.i

.lr.ph111.i.i:                                    ; preds = %.preheader.i.i
  %i.mb = load i64, ptr %i.q, align 8             ; 2 uses
  %i.mc = load ptr, ptr %3, align 8
  %.promoted112.i.i = load i32, ptr %i.r, align 8
  %.phi.trans.insert.i164.promoted.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8
  %.promoted120.i.i = load i64, ptr %i.p, align 8
  %wide.trip.count166.i.i = zext nneg i32 %i.lw to i64
  br label %bb.bv

bb.bv:                                            ; preds = %membr_bits.exit174.i.i, %.lr.ph111.i.i
  %indvars.iv163.i.i = phi i64 [ 0, %.lr.ph111.i.i ], [ %indvars.iv.next164.i.i, %membr_bits.exit174.i.i ] ; 2 uses
  %.lcssa101123.i.i = phi i64 [ %.promoted120.i.i, %.lr.ph111.i.i ], [ %.lcssa101121.i.i, %membr_bits.exit174.i.i ] ; 6 uses
  %i.md = phi i32 [ %.pre388, %.lr.ph111.i.i ], [ %i.mv, %membr_bits.exit174.i.i ] ; 3 uses
  %.pre.i165117.i.i = phi i64 [ %.phi.trans.insert.i164.promoted.i.i, %.lr.ph111.i.i ], [ %.pre.i165115.i.i, %membr_bits.exit174.i.i ] ; 4 uses
  %.lcssa104114.i.i = phi i32 [ %.promoted112.i.i, %.lr.ph111.i.i ], [ %.lcssa104113.i.i, %membr_bits.exit174.i.i ] ; 5 uses
  %i.me = icmp slt i32 %.lcssa104114.i.i, 8
  br i1 %i.me, label %bb.bw, label %.membr_fill.exit_crit_edge.i163.i.i

.membr_fill.exit_crit_edge.i163.i.i:              ; preds = %bb.bv
  %i.mf = add nsw i32 %.lcssa104114.i.i, -8
  br label %membr_fill.exit.i166.i.i

bb.bw:                                            ; preds = %bb.bv
  %.not.i168.i.i = icmp eq i32 %i.md, 0
  br i1 %.not.i168.i.i, label %.lr.ph.i.i169.i.i, label %membr_bits.exit174.i.i

.lr.ph.i.i169.i.i:                                ; preds = %bb.bw
  %umax.i.i171.i.i = tail call i64 @llvm.umax.i64(i64 %.lcssa101123.i.i, i64 %i.mb) ; 2 uses
  %exitcond.not.i.i172105.not.i.i = icmp ult i64 %.lcssa101123.i.i, %i.mb
  br i1 %exitcond.not.i.i172105.not.i.i, label %.lr.ph106.i.i, label %membr_bits.exit174.i.i

bb.bx:                                            ; preds = %.lr.ph106.i.i
  %i.mg = add nsw i32 %i.mh, 8                    ; 2 uses
  %exitcond.not.i.i172.i.i = icmp eq i64 %i.ml, %umax.i.i171.i.i
  br i1 %exitcond.not.i.i172.i.i, label %membr_bits.exit174.i.i, label %.lr.ph106.i.i, !llvm.loop !3

.lr.ph106.i.i:                                    ; preds = %.lr.ph.i.i169.i.i, %bb.bx
  %i.mh = phi i32 [ %i.mg, %bb.bx ], [ %.lcssa104114.i.i, %.lr.ph.i.i169.i.i ] ; 3 uses
  %i.mi = phi i64 [ %i.ml, %bb.bx ], [ %.lcssa101123.i.i, %.lr.ph.i.i169.i.i ] ; 2 uses
  %i.mj = phi i64 [ %i.mp, %bb.bx ], [ %.pre.i165117.i.i, %.lr.ph.i.i169.i.i ]
  %i.mk = shl i64 %i.mj, 8
  %i.ml = add i64 %i.mi, 1                        ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mi
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !37
  %i.mo = zext i8 %i.mn to i64
  %i.mp = or disjoint i64 %i.mk, %i.mo            ; 3 uses
  %i.mq = icmp slt i32 %i.mh, 0
  br i1 %i.mq, label %bb.bx, label %membr_fill.exit.i166.i.i, !llvm.loop !3

membr_fill.exit.i166.i.i:                         ; preds = %.lr.ph106.i.i, %.membr_fill.exit_crit_edge.i163.i.i
  %.lcssa101122.i.i = phi i64 [ %.lcssa101123.i.i, %.membr_fill.exit_crit_edge.i163.i.i ], [ %i.ml, %.lr.ph106.i.i ]
  %.pre.i165116.i.i = phi i64 [ %.pre.i165117.i.i, %.membr_fill.exit_crit_edge.i163.i.i ], [ %i.mp, %.lr.ph106.i.i ] ; 2 uses
  %i.mr = phi i32 [ %i.mf, %.membr_fill.exit_crit_edge.i163.i.i ], [ %i.mh, %.lr.ph106.i.i ] ; 2 uses
  %i.ms = zext nneg i32 %i.mr to i64
  %i.mt = lshr i64 %.pre.i165116.i.i, %i.ms
  %i.mu = trunc i64 %i.mt to i8
  br label %membr_bits.exit174.i.i

membr_bits.exit174.i.i:                           ; preds = %bb.bx, %membr_fill.exit.i166.i.i, %.lr.ph.i.i169.i.i, %bb.bw
  %.lcssa101121.i.i = phi i64 [ %.lcssa101122.i.i, %membr_fill.exit.i166.i.i ], [ %.lcssa101123.i.i, %bb.bw ], [ %.lcssa101123.i.i, %.lr.ph.i.i169.i.i ], [ %umax.i.i171.i.i, %bb.bx ]
  %i.mv = phi i32 [ %i.md, %membr_fill.exit.i166.i.i ], [ %i.md, %bb.bw ], [ 1, %.lr.ph.i.i169.i.i ], [ 1, %bb.bx ] ; 3 uses
  %.pre.i165115.i.i = phi i64 [ %.pre.i165116.i.i, %membr_fill.exit.i166.i.i ], [ %.pre.i165117.i.i, %bb.bw ], [ %.pre.i165117.i.i, %.lr.ph.i.i169.i.i ], [ %i.mp, %bb.bx ]
  %.lcssa104113.i.i = phi i32 [ %i.mr, %membr_fill.exit.i166.i.i ], [ %.lcssa104114.i.i, %bb.bw ], [ %.lcssa104114.i.i, %.lr.ph.i.i169.i.i ], [ %i.mg, %bb.bx ]
  %.0.i167.i.i = phi i8 [ %i.mu, %membr_fill.exit.i166.i.i ], [ 0, %bb.bw ], [ 0, %.lr.ph.i.i169.i.i ], [ 0, %bb.bx ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ma, i64 %indvars.iv163.i.i
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 64
  store i8 %.0.i167.i.i, ptr %i.mx, align 1, !tbaa !37
  %indvars.iv.next164.i.i = add nuw nsw i64 %indvars.iv163.i.i, 1 ; 2 uses
  %exitcond167.not.i.i = icmp eq i64 %indvars.iv.next164.i.i, %wide.trip.count166.i.i
  br i1 %exitcond167.not.i.i, label %..loopexit_crit_edge.i.i, label %bb.bv, !llvm.loop !250

..loopexit_crit_edge.i.i:                         ; preds = %membr_bits.exit174.i.i
  store i32 %i.mv, ptr %i.s, align 4
  br label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %..loopexit.i.i_crit_edge, %..loopexit_crit_edge.i.i, %.preheader.i.i
  %i.my = phi i32 [ %.pre, %..loopexit.i.i_crit_edge ], [ %i.mv, %..loopexit_crit_edge.i.i ], [ %.pre388, %.preheader.i.i ]
  %.0107.i.i = phi i32 [ 0, %..loopexit.i.i_crit_edge ], [ %i.lw, %..loopexit_crit_edge.i.i ], [ 0, %.preheader.i.i ] ; 2 uses
  %.0106.i.i = phi ptr [ null, %..loopexit.i.i_crit_edge ], [ %i.ma, %..loopexit_crit_edge.i.i ], [ %i.ma, %.preheader.i.i ] ; 6 uses
  %.not140.i.i = icmp eq i32 %i.my, 0
  br i1 %.not140.i.i, label %bb.by, label %.sink.split.i

bb.by:                                            ; preds = %.loopexit.i.i
  %i.mz = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #21 ; 16 uses
  %.not.i175.i.i = icmp eq ptr %i.mz, null
  br i1 %.not.i175.i.i, label %.sink.split.i, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store ptr %.3116.i.i, ptr %i.mz, align 8, !tbaa !157
  %i.na = tail call i32 @llvm.umax.i32(i32 range(i32 0, 8129) %.0107.i.i, i32 64) ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mz, i64 48
  store i32 %i.na, ptr %i.nb, align 8, !tbaa !262
  %i.nc = zext nneg i32 %i.na to i64
  %i.nd = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %i.nc) #21 ; 13 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 40
  store ptr %i.nd, ptr %i.ne, align 8, !tbaa !94
  %.not26.i.i.i = icmp eq ptr %i.nd, null
  br i1 %.not26.i.i.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  tail call void @free(ptr noundef nonnull %i.mz) #20
  br label %.sink.split.i

bb.cb:                                            ; preds = %bb.bz
  %.not27.i.i.i = icmp eq ptr %.0106.i.i, null
  br i1 %.not27.i.i.i, label %create_filter.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.nf = zext nneg i32 %.0107.i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nd, ptr nonnull readonly align 1 %.0106.i.i, i64 %i.nf, i1 false)
  br label %create_filter.exit.i.i

create_filter.exit.i.i:                           ; preds = %bb.cc, %bb.cb
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i32 %.sroa.0.1.i.i, ptr %i.ng, align 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 12
  store i32 %.sroa.6.0.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 4
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store i32 %.sroa.8.0.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 20
  store i32 %.sroa.10.2.i.i, ptr %.sroa.10.0..sroa_idx.i.i, align 4
  %.sroa.15.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 24
  store i32 %.sroa.15.2.i.i, ptr %.sroa.15.0..sroa_idx.i.i, align 8
  %.sroa.20.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 28
  store i32 %.sroa.20.0.i.i, ptr %.sroa.20.0..sroa_idx.i.i, align 4
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 32
  store i32 %.sroa.23.0.i.i, ptr %.sroa.23.0..sroa_idx.i.i, align 8
  %.sroa.25.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.mz, i64 36
  store i32 262144, ptr %.sroa.25.0..sroa_idx.i.i, align 4
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mz, i64 56
  store i64 %spec.select.i.i, ptr %i.nh, align 8, !tbaa !137
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mz, i64 64
  store i32 %.sroa.15.1.i.i, ptr %i.ni, align 8, !tbaa !133
  tail call void @free(ptr noundef %.0106.i.i) #20
  store i32 %.sroa.0.1.i.i, ptr %i.nd, align 1
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nd, i64 4
  store i32 %.sroa.6.0.i.i, ptr %i.nj, align 1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store i32 %.sroa.8.0.i.i, ptr %i.nk, align 1
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  store i32 %.sroa.10.2.i.i, ptr %i.nl, align 1
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store i32 %.sroa.15.2.i.i, ptr %i.nm, align 1
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nd, i64 20
  store i32 %.sroa.20.0.i.i, ptr %i.nn, align 1
  %i.no = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  store i32 %.sroa.23.0.i.i, ptr %i.no, align 1
  %i.np = getelementptr inbounds nuw i8, ptr %i.nd, i64 28
  store i32 %.sroa.15.1.i.i, ptr %i.np, align 1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  store i32 0, ptr %i.nq, align 1
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nd, i64 44
  %i.ns = getelementptr inbounds nuw i8, ptr %.3116.i.i, i64 40
  %i.nt = load i32, ptr %i.ns, align 8, !tbaa !259
  store i32 %i.nt, ptr %i.nr, align 1
  %i.nu = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 936 ; 2 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %create_filter.exit.i.i
  %.0112.i.i = phi ptr [ %i.nu, %create_filter.exit.i.i ], [ %i.nw, %bb.cd ] ; 2 uses
  %i.nv = load ptr, ptr %.0112.i.i, align 8, !tbaa !134 ; 2 uses
  %.not142.i.i = icmp eq ptr %i.nv, null
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 80
  br i1 %.not142.i.i, label %bb.ce, label %bb.cd, !llvm.loop !251

bb.ce:                                            ; preds = %bb.cd
  store ptr %i.mz, ptr %.0112.i.i, align 8, !tbaa !134
  %i.nx = load ptr, ptr %i.nu, align 8, !tbaa !91
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 80
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !93
  %.not143.i.i = icmp eq ptr %i.nz, null
  br i1 %.not143.i.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.oa = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 944
  store i64 %spec.select.i.i, ptr %i.oa, align 8, !tbaa !132
  br label %bb.cg

.sink.split.i:                                    ; preds = %bb.by, %.loopexit.i.i, %bb.ca, %compile_program.exit.thread.i.i
  %.0106.i.sink.i = phi ptr [ %i.in, %compile_program.exit.thread.i.i ], [ %.0106.i.i, %bb.ca ], [ %.0106.i.i, %.loopexit.i.i ], [ %.0106.i.i, %bb.by ]
  tail call void @free(ptr noundef %.0106.i.sink.i) #20
  br label %.loopexit253

.loopexit253:                                     ; preds = %bb.bu, %bb.bt, %bb.bg, %bb.bf, %.thread9.i.i, %bb.am, %bb.af, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %read_filter.exit.thread.sink.split

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  tail call void @free(ptr noundef %i.ee) #20
  %i.ob = getelementptr inbounds nuw i8, ptr %i.bs, i64 944
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !125 ; 2 uses
  %i.od = load i64, ptr %1, align 8, !tbaa !38
  %i.oe = icmp slt i64 %i.oc, %i.od
  br i1 %i.oe, label %bb.ch, label %.backedge

bb.ch:                                            ; preds = %bb.cg
  store i64 %i.oc, ptr %1, align 8, !tbaa !38
  br label %.backedge

bb.ci:                                            ; preds = %bb.g
  %i.of = load i32, ptr %i.n, align 8, !tbaa !263 ; 2 uses
  %i.og = icmp eq i32 %i.of, 0
  br i1 %i.og, label %.backedge, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.oh = load i32, ptr %i.o, align 4, !tbaa !264
  br label %bb.dq

bb.ck:                                            ; preds = %bb.g
  %i.oi = icmp samesign ult i32 %i.ai, 263
  br i1 %i.oi, label %bb.cl, label %bb.cr

bb.cl:                                            ; preds = %bb.ck
  %i.oj = add nsw i32 %i.ai, -259
  %i.ok = zext nneg i32 %i.oj to i64              ; 2 uses
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !131 ; 2 uses
  %i.on = tail call fastcc i32 @read_next_symbol(ptr noundef %0, ptr noundef nonnull %i.ae) ; 3 uses
  %or.cond = icmp ugt i32 %i.on, 27
  br i1 %or.cond, label %read_filter.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.oo = zext nneg i32 %i.on to i64              ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr @expand.lengthbases, i64 %i.oo
  %i.oq = load i8, ptr %i.op, align 1, !tbaa !37
  %i.or = zext i8 %i.oq to i32
  %i.os = add nuw nsw i32 %i.or, 2                ; 2 uses
end_hunk_0
begin_hunk_1_@make_table_recurse:bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !147    ; 2 uses
  %.not75 = icmp eq ptr %i.a, null
  br i1 %.not75, label %tailrecurse._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = icmp slt i32 %2, 0
  br i1 %i.c, label %._crit_edge, label %.lr.ph141

tailrecurse._crit_edge:                           ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.56) #20
  br label %.loopexit

.lr.ph141:                                        ; preds = %.lr.ph, %tailrecurse
  %accumulator.tr76140 = phi i32 [ %i.ay, %tailrecurse ], [ 0, %.lr.ph ] ; 7 uses
  %.tr5577139 = phi i32 [ %i.au, %tailrecurse ], [ %2, %.lr.ph ] ; 3 uses
  %.tr5678138 = phi ptr [ %i.ax, %tailrecurse ], [ %3, %.lr.ph ] ; 13 uses
  %.tr5779137 = phi i32 [ %i.ap, %tailrecurse ], [ %4, %.lr.ph ] ; 9 uses
  %i.d = phi ptr [ %i.ar, %tailrecurse ], [ %i.a, %.lr.ph ]
  %i.e = load i32, ptr %i.b, align 8, !tbaa !158
  %.not53 = icmp slt i32 %.tr5577139, %i.e
  br i1 %.not53, label %bb.b, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph141, %tailrecurse
  %accumulator.tr76.lcssa.ph = phi i32 [ %i.ay, %tailrecurse ], [ %accumulator.tr76140, %.lr.ph141 ]
  %i.f = or i32 %accumulator.tr76.lcssa.ph, -30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph
  %accumulator.tr76.lcssa = phi i32 [ -30, %.lr.ph ], [ %i.f, %._crit_edge.loopexit ]
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.57) #20
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph141
  %i.g = sub nsw i32 %5, %.tr5779137              ; 2 uses
  %i.h = shl nuw i32 1, %i.g                      ; 4 uses
  %i.i = zext nneg i32 %.tr5577139 to i64         ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.i ; 10 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !131  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !131
  %i.n = icmp eq i32 %i.k, %i.m
  br i1 %i.n, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.not82 = icmp eq i32 %i.g, 31
  br i1 %.not82, label %.loopexit, label %.lr.ph81.preheader

.lr.ph81.preheader:                               ; preds = %.preheader
  %smax = tail call i32 @llvm.smax.i32(i32 %i.h, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 4 uses
  %min.iters.check = icmp slt i32 %i.h, 10
  br i1 %min.iters.check, label %.lr.ph81.preheader149, label %vector.memcheck

.lr.ph81.preheader149:                            ; preds = %vector.memcheck, %.lr.ph81.preheader
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.p = icmp slt i32 %i.h, 4
  br i1 %i.p, label %.lr.ph81.epil.preheader, label %.lr.ph81.preheader149.new

.lr.ph81.preheader149.new:                        ; preds = %.lr.ph81.preheader149
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph81

vector.memcheck:                                  ; preds = %.lr.ph81.preheader
  %i.q = shl nuw nsw i64 %wide.trip.count, 3
  %i.r = getelementptr i8, ptr %.tr5678138, i64 %i.q
  %bound0 = icmp ult ptr %.tr5678138, %i.o
  %bound1 = icmp ult ptr %i.j, %i.r
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph81.preheader149, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644
  %i.s = load i32, ptr %i.j, align 4, !tbaa !131, !alias.scope !293
  %broadcast.splatinsert146 = insertelement <2 x i32> poison, i32 %i.s, i64 0
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %.tr5779137, i64 0
  %interleaved.vec = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> %broadcast.splatinsert146, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %index
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %index
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %interleaved.vec, ptr %i.t, align 4, !tbaa !131, !alias.scope !294, !noalias !293
  store <4 x i32> %interleaved.vec, ptr %i.v, align 4, !tbaa !131, !alias.scope !294, !noalias !293
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %.loopexit, label %vector.body, !llvm.loop !290

.lr.ph81:                                         ; preds = %.lr.ph81, %.lr.ph81.preheader149.new
  %indvars.iv = phi i64 [ 0, %.lr.ph81.preheader149.new ], [ %indvars.iv.next.3, %.lr.ph81 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph81.preheader149.new ], [ %niter.next.3, %.lr.ph81 ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %indvars.iv ; 2 uses
  store i32 %.tr5779137, ptr %i.x, align 4, !tbaa !162
  %i.y = load i32, ptr %i.j, align 4, !tbaa !131
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %i.y, ptr %i.z, align 4, !tbaa !163
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %indvars.iv ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %.tr5779137, ptr %i.ab, align 4, !tbaa !162
  %i.ac = load i32, ptr %i.j, align 4, !tbaa !131
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !163
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %indvars.iv ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i32 %.tr5779137, ptr %i.af, align 4, !tbaa !162
  %i.ag = load i32, ptr %i.j, align 4, !tbaa !131
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !163
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store i32 %.tr5779137, ptr %i.aj, align 4, !tbaa !162
  %i.ak = load i32, ptr %i.j, align 4, !tbaa !131
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 28
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !163
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph81, !llvm.loop !291

bb.c:                                             ; preds = %bb.b
  %i.am = icmp eq i32 %.tr5779137, %5
  br i1 %i.am, label %bb.d, label %tailrecurse

bb.d:                                             ; preds = %bb.c
  %i.an = add nsw i32 %5, 1
  store i32 %i.an, ptr %.tr5678138, align 4, !tbaa !162
  %i.ao = getelementptr inbounds nuw i8, ptr %.tr5678138, i64 4
  store i32 %.tr5577139, ptr %i.ao, align 4, !tbaa !163
  br label %.loopexit

tailrecurse:                                      ; preds = %bb.c
  %i.ap = add nsw i32 %.tr5779137, 1              ; 2 uses
  %i.aq = tail call fastcc i32 @make_table_recurse(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.k, ptr noundef %.tr5678138, i32 noundef %i.ap, i32 noundef %5)
  %i.ar = load ptr, ptr %1, align 8, !tbaa !147   ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !131 ; 2 uses
  %i.av = sdiv i32 %i.h, 2
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %.tr5678138, i64 %i.aw
  %i.ay = or i32 %i.aq, %accumulator.tr76140      ; 2 uses
  %i.az = icmp slt i32 %i.au, 0
  br i1 %i.az, label %._crit_edge.loopexit, label %.lr.ph141

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph81
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph81.epil.preheader

.lr.ph81.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph81.preheader149
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph81.preheader149 ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod166 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod166)
  br label %.lr.ph81.epil

.lr.ph81.epil:                                    ; preds = %.lr.ph81.epil, %.lr.ph81.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph81.epil ], [ %indvars.iv.epil.init, %.lr.ph81.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph81.epil ], [ 0, %.lr.ph81.epil.preheader ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.tr5678138, i64 %indvars.iv.epil ; 2 uses
  store i32 %.tr5779137, ptr %i.ba, align 4, !tbaa !162
  %i.bb = load i32, ptr %i.j, align 4, !tbaa !131
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !163
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph81.epil, !llvm.loop !292

.loopexit:                                        ; preds = %vector.body, %.loopexit.loopexit.unr-lcssa, %.lr.ph81.epil, %.preheader, %bb.d, %._crit_edge, %tailrecurse._crit_edge
  %.047 = phi i32 [ %accumulator.tr76.lcssa, %._crit_edge ], [ -30, %tailrecurse._crit_edge ], [ %accumulator.tr76140, %bb.d ], [ %accumulator.tr76140, %.preheader ], [ %accumulator.tr76140, %.loopexit.loopexit.unr-lcssa ], [ %accumulator.tr76140, %.lr.ph81.epil ], [ %accumulator.tr76140, %vector.body ]
  ret i32 %.047
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @membr_next_rarvm_number(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !152  ; 4 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %.membr_fill.exit_crit_edge.i

.membr_fill.exit_crit_edge.i:                     ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !153
  br label %membr_bits.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !154
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %.lr.ph.i.i, label %membr_bits.exit.thread.thread

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !151
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted13.i.i = load i64, ptr %i.f, align 8, !tbaa !155 ; 2 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i, i64 %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted13.i.i, %.lr.ph.i.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.k = phi i32 [ %i.b, %.lr.ph.i.i ], [ %i.t, %bb.d ] ; 3 uses
  %exitcond.not.i.i = icmp eq i64 %i.j, %umax.i.i
  br i1 %exitcond.not.i.i, label %membr_fill.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.i, align 8, !tbaa !153
  %i.m = shl i64 %i.l, 8
  %i.n = load ptr, ptr %0, align 8, !tbaa !150
  %i.o = add i64 %i.j, 1                          ; 2 uses
  store i64 %i.o, ptr %i.f, align 8, !tbaa !155
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.j
  %i.q = load i8, ptr %i.p, align 1, !tbaa !37
  %i.r = zext i8 %i.q to i64
  %i.s = or disjoint i64 %i.m, %i.r               ; 2 uses
  store i64 %i.s, ptr %i.i, align 8, !tbaa !153
  %i.t = add nsw i32 %i.k, 8                      ; 3 uses
  store i32 %i.t, ptr %i.a, align 8, !tbaa !152
  %i.u = icmp slt i32 %i.k, -6
  br i1 %i.u, label %bb.c, label %membr_bits.exit, !llvm.loop !3

membr_fill.exit.thread.i:                         ; preds = %bb.c
  store i32 1, ptr %i.d, align 4, !tbaa !154
  br label %membr_bits.exit.thread.thread

membr_bits.exit:                                  ; preds = %bb.d, %.membr_fill.exit_crit_edge.i
  %i.v = phi i32 [ %i.b, %.membr_fill.exit_crit_edge.i ], [ %i.t, %bb.d ] ; 6 uses
  %.pre.i24 = phi i64 [ %.pre.i, %.membr_fill.exit_crit_edge.i ], [ %i.s, %bb.d ] ; 8 uses
  %i.w = add nsw i32 %i.v, -2                     ; 10 uses
  store i32 %i.w, ptr %i.a, align 8, !tbaa !152
  %i.x = zext nneg i32 %i.w to i64
  %i.y = lshr i64 %.pre.i24, %i.x
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.z, 3
  switch i32 %i.aa, label %default.unreachable [
    i32 0, label %membr_bits.exit.thread
    i32 1, label %bb.g
    i32 2, label %bb.n
    i32 3, label %bb.r
  ]

membr_bits.exit.thread:                           ; preds = %membr_bits.exit
  %i.ab = icmp slt i32 %i.v, 6
  br i1 %i.ab, label %membr_bits.exit.thread.thread, label %.membr_fill.exit_crit_edge.i10

.membr_fill.exit_crit_edge.i10:                   ; preds = %membr_bits.exit.thread
  %.phi.trans.insert.i11 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i12 = load i64, ptr %.phi.trans.insert.i11, align 8, !tbaa !153
  br label %membr_fill.exit.i13

membr_bits.exit.thread.thread:                    ; preds = %membr_fill.exit.thread.i, %bb.b, %membr_bits.exit.thread
  %i.ac = phi i32 [ %i.w, %membr_bits.exit.thread ], [ %i.k, %membr_fill.exit.thread.i ], [ %i.b, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !154
  %.not.i15 = icmp eq i32 %i.ae, 0
  br i1 %.not.i15, label %.lr.ph.i.i16, label %membr_bits.exit21

.lr.ph.i.i16:                                     ; preds = %membr_bits.exit.thread.thread
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !151
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted13.i.i17 = load i64, ptr %i.af, align 8, !tbaa !155 ; 2 uses
  %umax.i.i18 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i17, i64 %i.ah)
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i16
  %i.aj = phi i64 [ %.promoted13.i.i17, %.lr.ph.i.i16 ], [ %i.ao, %bb.f ] ; 3 uses
  %i.ak = phi i32 [ %i.ac, %.lr.ph.i.i16 ], [ %i.at, %bb.f ] ; 2 uses
  %exitcond.not.i.i19 = icmp eq i64 %i.aj, %umax.i.i18
  br i1 %exitcond.not.i.i19, label %membr_fill.exit.thread.i20, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i64, ptr %i.ai, align 8, !tbaa !153
  %i.am = shl i64 %i.al, 8
  %i.an = load ptr, ptr %0, align 8, !tbaa !150
  %i.ao = add i64 %i.aj, 1                        ; 2 uses
  store i64 %i.ao, ptr %i.af, align 8, !tbaa !155
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.aj
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.am, %i.ar            ; 2 uses
  store i64 %i.as, ptr %i.ai, align 8, !tbaa !153
  %i.at = add nsw i32 %i.ak, 8                    ; 3 uses
  store i32 %i.at, ptr %i.a, align 8, !tbaa !152
  %i.au = icmp slt i32 %i.ak, -4
  br i1 %i.au, label %bb.e, label %membr_fill.exit.i13, !llvm.loop !3

membr_fill.exit.thread.i20:                       ; preds = %bb.e
  store i32 1, ptr %i.ad, align 4, !tbaa !154
  br label %membr_bits.exit21

membr_fill.exit.i13:                              ; preds = %bb.f, %.membr_fill.exit_crit_edge.i10
  %i.av = phi i32 [ %i.w, %.membr_fill.exit_crit_edge.i10 ], [ %i.at, %bb.f ]
  %i.aw = phi i64 [ %.pre.i12, %.membr_fill.exit_crit_edge.i10 ], [ %i.as, %bb.f ]
  %i.ax = add nsw i32 %i.av, -4                   ; 2 uses
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !152
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = lshr i64 %i.aw, %i.ay
  %i.ba = trunc i64 %i.az to i32
  %i.bb = and i32 %i.ba, 15
  br label %membr_bits.exit21

bb.g:                                             ; preds = %membr_bits.exit
  %i.bc = icmp samesign ult i32 %i.v, 10
  br i1 %i.bc, label %bb.h, label %.membr_fill.exit_crit_edge.i22

.membr_fill.exit_crit_edge.i22:                   ; preds = %bb.g
  %i.bd = add nsw i32 %i.v, -10
  br label %membr_bits.exit33

bb.h:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !154
  %.not.i27 = icmp eq i32 %i.bf, 0
  br i1 %.not.i27, label %.lr.ph.i.i28, label %membr_bits.exit33.thread

.lr.ph.i.i28:                                     ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !151
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted13.i.i29 = load i64, ptr %i.bg, align 8, !tbaa !155 ; 2 uses
  %umax.i.i30 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i29, i64 %i.bi)
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i28
  %i.bk = phi i64 [ %.pre.i24, %.lr.ph.i.i28 ], [ %i.bt, %bb.j ] ; 2 uses
  %i.bl = phi i64 [ %.promoted13.i.i29, %.lr.ph.i.i28 ], [ %i.bp, %bb.j ] ; 3 uses
  %i.bm = phi i32 [ %i.w, %.lr.ph.i.i28 ], [ %i.bu, %bb.j ] ; 4 uses
  %exitcond.not.i.i31 = icmp eq i64 %i.bl, %umax.i.i30
  br i1 %exitcond.not.i.i31, label %membr_fill.exit.thread.i32, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = shl i64 %i.bk, 8
  %i.bo = load ptr, ptr %0, align 8, !tbaa !150
  %i.bp = add i64 %i.bl, 1                        ; 2 uses
  store i64 %i.bp, ptr %i.bg, align 8, !tbaa !155
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !37
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bn, %i.bs            ; 3 uses
  store i64 %i.bt, ptr %i.bj, align 8, !tbaa !153
  %i.bu = add nsw i32 %i.bm, 8                    ; 2 uses
  store i32 %i.bu, ptr %i.a, align 8, !tbaa !152
  %i.bv = icmp slt i32 %i.bm, 0
  br i1 %i.bv, label %bb.i, label %membr_bits.exit33, !llvm.loop !3

membr_fill.exit.thread.i32:                       ; preds = %bb.i
  store i32 1, ptr %i.be, align 4, !tbaa !154
  br label %membr_bits.exit33.thread

membr_bits.exit33:                                ; preds = %bb.j, %.membr_fill.exit_crit_edge.i22
  %i.bw = phi i32 [ %i.bd, %.membr_fill.exit_crit_edge.i22 ], [ %i.bm, %bb.j ] ; 3 uses
  %i.bx = phi i64 [ %.pre.i24, %.membr_fill.exit_crit_edge.i22 ], [ %i.bt, %bb.j ] ; 2 uses
  store i32 %i.bw, ptr %i.a, align 8, !tbaa !152
  %i.by = zext nneg i32 %i.bw to i64
  %i.bz = lshr i64 %i.bx, %i.by
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = and i32 %i.ca, 255                      ; 3 uses
  %i.cc = icmp samesign ugt i32 %i.cb, 15
  br i1 %i.cc, label %membr_bits.exit21, label %membr_bits.exit33.thread

membr_bits.exit33.thread:                         ; preds = %bb.h, %membr_fill.exit.thread.i32, %membr_bits.exit33
  %.pre.i36 = phi i64 [ %i.bx, %membr_bits.exit33 ], [ %i.bk, %membr_fill.exit.thread.i32 ], [ %.pre.i24, %bb.h ] ; 2 uses
  %i.cd = phi i32 [ %i.bw, %membr_bits.exit33 ], [ %i.bm, %membr_fill.exit.thread.i32 ], [ %i.w, %bb.h ] ; 3 uses
  %.0.i2672 = phi i32 [ %i.cb, %membr_bits.exit33 ], [ 0, %membr_fill.exit.thread.i32 ], [ 0, %bb.h ]
  %i.ce = shl nuw nsw i32 %.0.i2672, 4            ; 3 uses
  %i.cf = icmp slt i32 %i.cd, 4
  br i1 %i.cf, label %bb.k, label %membr_fill.exit.i37

bb.k:                                             ; preds = %membr_bits.exit33.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !154
  %.not.i39 = icmp eq i32 %i.ch, 0
  br i1 %.not.i39, label %.lr.ph.i.i40, label %membr_bits.exit45

.lr.ph.i.i40:                                     ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !151
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted13.i.i41 = load i64, ptr %i.ci, align 8, !tbaa !155 ; 2 uses
  %umax.i.i42 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i41, i64 %i.ck)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i40
  %i.cm = phi i64 [ %.pre.i36, %.lr.ph.i.i40 ], [ %i.cv, %bb.m ]
  %i.cn = phi i64 [ %.promoted13.i.i41, %.lr.ph.i.i40 ], [ %i.cr, %bb.m ] ; 3 uses
  %i.co = phi i32 [ %i.cd, %.lr.ph.i.i40 ], [ %i.cw, %bb.m ] ; 2 uses
  %exitcond.not.i.i43 = icmp eq i64 %i.cn, %umax.i.i42
  br i1 %exitcond.not.i.i43, label %membr_fill.exit.thread.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = shl i64 %i.cm, 8
  %i.cq = load ptr, ptr %0, align 8, !tbaa !150
  %i.cr = add i64 %i.cn, 1                        ; 2 uses
  store i64 %i.cr, ptr %i.ci, align 8, !tbaa !155
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !37
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cp, %i.cu            ; 3 uses
  store i64 %i.cv, ptr %i.cl, align 8, !tbaa !153
  %i.cw = add nsw i32 %i.co, 8                    ; 3 uses
  store i32 %i.cw, ptr %i.a, align 8, !tbaa !152
  %i.cx = icmp slt i32 %i.co, -4
  br i1 %i.cx, label %bb.l, label %membr_fill.exit.i37, !llvm.loop !3

membr_fill.exit.thread.i44:                       ; preds = %bb.l
  store i32 1, ptr %i.cg, align 4, !tbaa !154
  br label %membr_bits.exit45

membr_fill.exit.i37:                              ; preds = %bb.m, %membr_bits.exit33.thread
  %i.cy = phi i32 [ %i.cd, %membr_bits.exit33.thread ], [ %i.cw, %bb.m ]
  %i.cz = phi i64 [ %.pre.i36, %membr_bits.exit33.thread ], [ %i.cv, %bb.m ]
  %i.da = add nsw i32 %i.cy, -4                   ; 2 uses
  store i32 %i.da, ptr %i.a, align 8, !tbaa !152
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = lshr i64 %i.cz, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = and i32 %i.dd, 15
  %i.df = or disjoint i32 %i.de, %i.ce
  br label %membr_bits.exit45

membr_bits.exit45:                                ; preds = %bb.k, %membr_fill.exit.thread.i44, %membr_fill.exit.i37
  %.0.i38 = phi i32 [ %i.df, %membr_fill.exit.i37 ], [ %i.ce, %membr_fill.exit.thread.i44 ], [ %i.ce, %bb.k ]
  %i.dg = or i32 %.0.i38, -256
  br label %membr_bits.exit21

bb.n:                                             ; preds = %membr_bits.exit
  %i.dh = icmp samesign ult i32 %i.v, 18
  br i1 %i.dh, label %bb.o, label %membr_fill.exit.i49

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !154
  %.not.i51 = icmp eq i32 %i.dj, 0
  br i1 %.not.i51, label %.lr.ph.i.i52, label %membr_bits.exit21

.lr.ph.i.i52:                                     ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !151
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted13.i.i53 = load i64, ptr %i.dk, align 8, !tbaa !155 ; 2 uses
  %umax.i.i54 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i53, i64 %i.dm)
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i52
  %i.do = phi i64 [ %.pre.i24, %.lr.ph.i.i52 ], [ %i.dx, %bb.q ]
  %i.dp = phi i64 [ %.promoted13.i.i53, %.lr.ph.i.i52 ], [ %i.dt, %bb.q ] ; 3 uses
  %i.dq = phi i32 [ %i.w, %.lr.ph.i.i52 ], [ %i.dy, %bb.q ] ; 2 uses
  %exitcond.not.i.i55 = icmp eq i64 %i.dp, %umax.i.i54
  br i1 %exitcond.not.i.i55, label %membr_fill.exit.thread.i56, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = shl i64 %i.do, 8
  %i.ds = load ptr, ptr %0, align 8, !tbaa !150
  %i.dt = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dt, ptr %i.dk, align 8, !tbaa !155
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dp
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !37
  %i.dw = zext i8 %i.dv to i64
  %i.dx = or disjoint i64 %i.dr, %i.dw            ; 3 uses
  store i64 %i.dx, ptr %i.dn, align 8, !tbaa !153
  %i.dy = add nsw i32 %i.dq, 8                    ; 3 uses
  store i32 %i.dy, ptr %i.a, align 8, !tbaa !152
  %i.dz = icmp slt i32 %i.dq, 8
  br i1 %i.dz, label %bb.p, label %membr_fill.exit.i49, !llvm.loop !3

membr_fill.exit.thread.i56:                       ; preds = %bb.p
  store i32 1, ptr %i.di, align 4, !tbaa !154
  br label %membr_bits.exit21

membr_fill.exit.i49:                              ; preds = %bb.q, %bb.n
  %i.ea = phi i32 [ %i.w, %bb.n ], [ %i.dy, %bb.q ]
  %i.eb = phi i64 [ %.pre.i24, %bb.n ], [ %i.dx, %bb.q ]
  %i.ec = add nsw i32 %i.ea, -16                  ; 2 uses
  store i32 %i.ec, ptr %i.a, align 8, !tbaa !152
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = lshr i64 %i.eb, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = and i32 %i.ef, 65535
  br label %membr_bits.exit21

default.unreachable:                              ; preds = %membr_bits.exit
  unreachable

bb.r:                                             ; preds = %membr_bits.exit
  %i.eh = icmp samesign ult i32 %i.v, 34
  br i1 %i.eh, label %bb.s, label %membr_fill.exit.i61

bb.s:                                             ; preds = %bb.r
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !154
  %.not.i63 = icmp eq i32 %i.ej, 0
  br i1 %.not.i63, label %.lr.ph.i.i64, label %membr_bits.exit21

.lr.ph.i.i64:                                     ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !151
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted13.i.i65 = load i64, ptr %i.ek, align 8, !tbaa !155 ; 2 uses
  %umax.i.i66 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i65, i64 %i.em)
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i64
  %i.eo = phi i64 [ %.pre.i24, %.lr.ph.i.i64 ], [ %i.ex, %bb.u ]
  %i.ep = phi i64 [ %.promoted13.i.i65, %.lr.ph.i.i64 ], [ %i.et, %bb.u ] ; 3 uses
  %i.eq = phi i32 [ %i.w, %.lr.ph.i.i64 ], [ %i.ey, %bb.u ] ; 2 uses
  %exitcond.not.i.i67 = icmp eq i64 %i.ep, %umax.i.i66
  br i1 %exitcond.not.i.i67, label %membr_fill.exit.thread.i68, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.er = shl i64 %i.eo, 8
  %i.es = load ptr, ptr %0, align 8, !tbaa !150
  %i.et = add i64 %i.ep, 1                        ; 2 uses
  store i64 %i.et, ptr %i.ek, align 8, !tbaa !155
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ep
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !37
  %i.ew = zext i8 %i.ev to i64
  %i.ex = or disjoint i64 %i.er, %i.ew            ; 3 uses
  store i64 %i.ex, ptr %i.en, align 8, !tbaa !153
  %i.ey = add nsw i32 %i.eq, 8                    ; 3 uses
  store i32 %i.ey, ptr %i.a, align 8, !tbaa !152
  %i.ez = icmp slt i32 %i.eq, 24
  br i1 %i.ez, label %bb.t, label %membr_fill.exit.i61, !llvm.loop !3

membr_fill.exit.thread.i68:                       ; preds = %bb.t
  store i32 1, ptr %i.ei, align 4, !tbaa !154
  br label %membr_bits.exit21

membr_fill.exit.i61:                              ; preds = %bb.u, %bb.r
  %i.fa = phi i32 [ %i.w, %bb.r ], [ %i.ey, %bb.u ]
  %i.fb = phi i64 [ %.pre.i24, %bb.r ], [ %i.ex, %bb.u ]
  %i.fc = add nsw i32 %i.fa, -32                  ; 2 uses
  store i32 %i.fc, ptr %i.a, align 8, !tbaa !152
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = lshr i64 %i.fb, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  br label %membr_bits.exit21

membr_bits.exit21:                                ; preds = %membr_fill.exit.i61, %membr_fill.exit.thread.i68, %bb.s, %membr_fill.exit.i49, %membr_fill.exit.thread.i56, %bb.o, %membr_fill.exit.i13, %membr_fill.exit.thread.i20, %membr_bits.exit.thread.thread, %membr_bits.exit33, %membr_bits.exit45
  %.0 = phi i32 [ 0, %bb.o ], [ %i.cb, %membr_bits.exit33 ], [ 0, %membr_bits.exit.thread.thread ], [ %i.dg, %membr_bits.exit45 ], [ %i.bb, %membr_fill.exit.i13 ], [ 0, %membr_fill.exit.thread.i20 ], [ %i.eg, %membr_fill.exit.i49 ], [ 0, %membr_fill.exit.thread.i56 ], [ %i.ff, %membr_fill.exit.i61 ], [ 0, %membr_fill.exit.thread.i68 ], [ 0, %bb.s ]
  ret i32 %.0
}

declare i64 @__archive_read_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @__archive_reset_read_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(1) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"p1 _ZTS18data_block_offsets", !14, i64 0}
!17 = !{!"p1 _ZTS17huffman_tree_node", !14, i64 0}
!18 = !{!"p1 _ZTS19huffman_table_entry", !14, i64 0}
!19 = !{!"huffman_code", !17, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !18, i64 32}
!20 = !{!"lzss", !15, i64 0, !10, i64 8, !13, i64 16}
!21 = !{!"p1 _ZTS19rar_virtual_machine", !14, i64 0}
!22 = !{!"p1 _ZTS16rar_program_code", !14, i64 0}
!23 = !{!"p1 _ZTS10rar_filter", !14, i64 0}
!24 = !{!"rar_filters", !21, i64 0, !22, i64 8, !23, i64 16, !13, i64 24, !10, i64 32, !13, i64 40, !15, i64 48, !13, i64 56}
!25 = !{!"p1 _ZTS15CPpmd7_Context_", !14, i64 0}
!26 = !{!"short", !9, i64 0}
!27 = !{!"", !26, i64 0, !9, i64 2, !9, i64 3}
!28 = !{!"", !25, i64 0, !25, i64 8, !14, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !10, i64 104, !9, i64 108, !9, i64 146, !9, i64 276, !9, i64 428, !9, i64 684, !9, i64 940, !27, i64 1196, !9, i64 1200, !9, i64 2800}
!29 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!30 = !{!"", !29, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !14, i64 40}
!31 = !{!"p1 _ZTS12archive_read", !14, i64 0}
!32 = !{!"", !31, i64 0, !14, i64 8}
!33 = !{!"p1 _ZTS19archive_string_conv", !14, i64 0}
!34 = !{!"rar_br", !13, i64 0, !10, i64 8, !13, i64 16, !15, i64 24}
!35 = !{!"rar", !10, i64 0, !13, i64 8, !9, i64 16, !9, i64 18, !9, i64 22, !9, i64 23, !10, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !10, i64 64, !15, i64 72, !15, i64 80, !13, i64 88, !13, i64 96, !9, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !9, i64 208, !10, i64 212, !10, i64 216, !15, i64 224, !10, i64 232, !9, i64 236, !9, i64 237, !13, i64 240, !10, i64 248, !9, i64 252, !16, i64 256, !13, i64 264, !13, i64 272, !9, i64 280, !19, i64 288, !19, i64 328, !19, i64 368, !19, i64 408, !9, i64 448, !20, i64 856, !10, i64 880, !10, i64 884, !9, i64 888, !10, i64 904, !10, i64 908, !9, i64 912, !24, i64 920, !9, i64 984, !9, i64 985, !9, i64 986, !10, i64 988, !28, i64 992, !30, i64 20176, !32, i64 20224, !10, i64 20240, !33, i64 20248, !33, i64 20256, !33, i64 20264, !33, i64 20272, !34, i64 20280, !10, i64 20312}
!36 = !{!35, !10, i64 20312}
!37 = !{!9, !9, i64 0}
!38 = !{!13, !13, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"p1 _ZTS14archive_vtable", !14, i64 0}
!41 = !{!"archive_string", !15, i64 0, !13, i64 8, !13, i64 16}
!42 = !{!"archive", !10, i64 0, !10, i64 4, !40, i64 8, !10, i64 16, !15, i64 24, !10, i64 32, !10, i64 36, !15, i64 40, !41, i64 48, !15, i64 72, !10, i64 80, !10, i64 84, !33, i64 88, !15, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !9, i64 128, !13, i64 136}
!43 = !{!"p1 _ZTS13archive_entry", !14, i64 0}
!44 = !{!"p1 _ZTS22archive_read_data_node", !14, i64 0}
!45 = !{!"archive_read_client", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !10, i64 48, !10, i64 52, !13, i64 56, !44, i64 64}
!46 = !{!"p1 _ZTS19archive_read_filter", !14, i64 0}
!47 = !{!"p1 _ZTS25archive_format_descriptor", !14, i64 0}
!48 = !{!"p1 _ZTS20archive_read_extract", !14, i64 0}
!49 = !{!"p1 _ZTS23archive_read_passphrase", !14, i64 0}
!50 = !{!"any p2 pointer", !14, i64 0}
!51 = !{!"p2 _ZTS23archive_read_passphrase", !50, i64 0}
!52 = !{!"", !49, i64 0, !51, i64 8, !10, i64 16, !14, i64 24, !14, i64 32}
!53 = !{!"archive_read", !42, i64 0, !43, i64 144, !10, i64 152, !13, i64 160, !13, i64 168, !45, i64 176, !9, i64 248, !46, i64 632, !10, i64 640, !13, i64 648, !10, i64 656, !10, i64 660, !9, i64 664, !47, i64 2072, !48, i64 2080, !14, i64 2088, !52, i64 2096}
!54 = !{!53, !47, i64 2072}
!55 = !{!"archive_format_descriptor", !14, i64 0, !15, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!56 = !{!55, !14, i64 0}
!57 = !{!35, !33, i64 20256}
!58 = !{!35, !10, i64 0}
!59 = !{!35, !13, i64 160}
!60 = !{!14, !14, i64 0}
!61 = !{!35, !9, i64 237}
!62 = !{!35, !13, i64 200}
!63 = !{!35, !13, i64 40}
!64 = !{!35, !13, i64 184}
!65 = !{!35, !9, i64 23}
!66 = !{!35, !13, i64 168}
!67 = !{!35, !10, i64 24}
!68 = !{!35, !13, i64 8}
!69 = !{!35, !13, i64 240}
!70 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88}
!71 = !{!70, !14, i64 16}
!72 = !{!35, !9, i64 912}
!73 = !{!35, !9, i64 984}
!74 = !{!53, !43, i64 144}
!75 = !{!35, !16, i64 256}
!76 = !{!"data_block_offsets", !13, i64 0, !13, i64 8, !13, i64 16}
!77 = !{!76, !13, i64 8}
!78 = !{!35, !13, i64 264}
!79 = !{!76, !13, i64 16}
!80 = !{!76, !13, i64 0}
!81 = !{!35, !13, i64 272}
!82 = !{!35, !9, i64 252}
!83 = !{!35, !17, i64 288}
!84 = !{!35, !17, i64 328}
!85 = !{!35, !17, i64 368}
!86 = !{!35, !17, i64 408}
!87 = !{!35, !18, i64 320}
!88 = !{!35, !18, i64 360}
!89 = !{!35, !18, i64 400}
!90 = !{!35, !18, i64 440}
!91 = !{!24, !23, i64 16}
end_hunk_1
