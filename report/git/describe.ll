Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/describe?download=true
inline.NumInlined: 66
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@describe_commit:bb.a
bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  %.1121.1 = phi i32 [ %i.fx, %bb.ar ], [ %.1121, %bb.aq ], [ %.1121, %bb.ap ] ; 2 uses
  %.1119.1 = phi i32 [ %i.ge, %bb.ar ], [ %i.gc, %bb.aq ], [ %.1119, %bb.ap ] ; 3 uses
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %niter399.next.1 = add i64 %niter399, 2         ; 2 uses
  %niter399.ncmp.1 = icmp eq i64 %niter399.next.1, %unroll_iter398
  br i1 %niter399.ncmp.1, label %._crit_edge245.loopexit.unr-lcssa, label %.lr.ph244, !llvm.loop !121

._crit_edge245.loopexit.unr-lcssa:                ; preds = %bb.as
  %lcmp.mod395.not = icmp eq i64 %xtraiter394, 0
  br i1 %lcmp.mod395.not, label %._crit_edge245, label %.lr.ph244.epil.preheader

.lr.ph244.epil.preheader:                         ; preds = %._crit_edge245.loopexit.unr-lcssa, %.lr.ph244.preheader
  %indvars.iv285.epil.init = phi i64 [ 0, %.lr.ph244.preheader ], [ %indvars.iv.next286.1, %._crit_edge245.loopexit.unr-lcssa ]
  %.0118243.epil.init = phi i32 [ 0, %.lr.ph244.preheader ], [ %.1119.1, %._crit_edge245.loopexit.unr-lcssa ] ; 2 uses
  %.0120242.epil.init = phi i32 [ 2147483647, %.lr.ph244.preheader ], [ %.1121.1, %._crit_edge245.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod397 = trunc i32 %.1141343 to i1
  call void @llvm.assume(i1 %lcmp.mod397)
  %i.gf = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %indvars.iv285.epil.init ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load i32, ptr %i.gg, align 8, !tbaa !86 ; 2 uses
  %i.gi = icmp slt i32 %i.gh, %.0120242.epil.init
  br i1 %i.gi, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.lr.ph244.epil.preheader
  %i.gj = icmp eq i32 %i.gh, %.0120242.epil.init
  br i1 %i.gj, label %bb.au, label %._crit_edge245

bb.au:                                            ; preds = %bb.at
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !143
  %i.gm = or i32 %i.gl, %.0118243.epil.init
  br label %._crit_edge245

bb.av:                                            ; preds = %.lr.ph244.epil.preheader
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !143
  br label %._crit_edge245

._crit_edge245:                                   ; preds = %._crit_edge245.loopexit.unr-lcssa, %bb.av, %bb.au, %bb.at, %.preheader223
  %.0118.lcssa = phi i32 [ 0, %.preheader223 ], [ %.1119.1, %._crit_edge245.loopexit.unr-lcssa ], [ %i.go, %bb.av ], [ %i.gm, %bb.au ], [ %.0118243.epil.init, %bb.at ] ; 2 uses
  %i.gp = load i64, ptr %i.ce, align 8
  %i.gq = lshr i64 %i.gp, 32
  %i.gr = trunc nuw i64 %i.gq to i32
  %i.gs = and i32 %.0118.lcssa, 536870911
  %i.gt = and i32 %i.gs, %i.gr
  %.not165 = icmp eq i32 %i.gt, %.0118.lcssa
  br i1 %.not165, label %bb.aw, label %.preheader

bb.aw:                                            ; preds = %._crit_edge245
  %i.gu = load i32, ptr @debug, align 4, !tbaa !12
  %.not164 = icmp eq i32 %i.gu, 0
  br i1 %.not164, label %.thread216, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gv = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.gw = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i187 = icmp eq i32 %i.gw, 0
  br i1 %.not4.i187, label %_.exit189, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gx = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.80, i32 noundef 5) #15
  br label %_.exit189

_.exit189:                                        ; preds = %bb.ax, %bb.ay
  %.0.i188 = phi ptr [ %i.gx, %bb.ay ], [ @.str.80, %bb.ax ]
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.gz = call ptr @oid_to_hex(ptr noundef nonnull %i.gy) #15
  %i.ha = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gv, ptr noundef %.0.i188, ptr noundef %i.gz) #17 ; 0 uses
  br label %.thread216

bb.az:                                            ; preds = %.preheader, %bb.be
  %.0122 = phi ptr [ %i.hn, %bb.be ], [ %i.cg, %.preheader ] ; 3 uses
  %.not166 = icmp eq ptr %.0122, null
  br i1 %.not166, label %bb.bf, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hb = load ptr, ptr %.0122, align 8, !tbaa !145 ; 6 uses
  %i.hc = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.hd = call i32 @repo_parse_commit_gently(ptr noundef %i.hc, ptr noundef %i.hb, i32 noundef 0) #15 ; 0 uses
  %i.he = load i64, ptr %i.hb, align 8            ; 2 uses
  %i.hf = and i64 %i.he, 4294967296
  %.not167 = icmp eq i64 %i.hf, 0
  br i1 %.not167, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.hg = load i8, ptr %i.bx, align 8, !tbaa !137, !range !138, !noundef !139
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  call void @prio_queue_replace(ptr noundef nonnull %4, ptr noundef nonnull %i.hb) #15
  br label %lazy_queue_put.exit190

bb.bd:                                            ; preds = %bb.bb
  call void @prio_queue_put(ptr noundef nonnull %4, ptr noundef nonnull %i.hb) #15
  br label %lazy_queue_put.exit190

lazy_queue_put.exit190:                           ; preds = %bb.bc, %bb.bd
  store i8 0, ptr %i.bx, align 8, !tbaa !137
  %.pre300 = load i64, ptr %i.hb, align 8
  br label %bb.be

bb.be:                                            ; preds = %lazy_queue_put.exit190, %bb.ba
  %i.hi = phi i64 [ %.pre300, %lazy_queue_put.exit190 ], [ %i.he, %bb.ba ]
  %i.hj = load i64, ptr %i.ce, align 8
  %i.hk = and i64 %i.hj, 2305843004918726656
  %i.hl = or i64 %i.hk, %i.hi
  store i64 %i.hl, ptr %i.hb, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.0122, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !146
  %i.ho = load i32, ptr @first_parent, align 4, !tbaa !12
  %.not168 = icmp eq i32 %i.ho, 0
  br i1 %.not168, label %bb.az, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.az
  %.val181 = load i64, ptr %i.ca, align 8, !tbaa !140
  %.val182 = load i8, ptr %i.bx, align 8, !tbaa !137, !range !138, !noundef !139 ; 2 uses
  %i.hp = zext nneg i8 %.val182 to i64
  %i.hq = icmp eq i64 %.val181, %i.hp
  br i1 %i.hq, label %.thread216, label %.lr.ph253

.thread216:                                       ; preds = %bb.bf, %lazy_queue_get.exit, %hashmap_get_size.exit, %_.exit189, %bb.aw
  %.3143 = phi i32 [ %.1141343, %_.exit189 ], [ %.1141343, %bb.aw ], [ %.0140248, %lazy_queue_get.exit ], [ %.0140248, %hashmap_get_size.exit ], [ %.1141343, %bb.bf ] ; 4 uses
  %.3 = phi i32 [ %.1128347, %_.exit189 ], [ %.1128347, %bb.aw ], [ %.0127251, %lazy_queue_get.exit ], [ %.0127251, %hashmap_get_size.exit ], [ %.1128347, %bb.bf ]
  %.2 = phi ptr [ null, %_.exit189 ], [ null, %bb.aw ], [ %i.ce, %lazy_queue_get.exit ], [ %i.ce, %hashmap_get_size.exit ], [ null, %bb.bf ] ; 4 uses
  switch i32 %.3143, label %bb.bm [
    i32 0, label %bb.bg
    i32 1, label %sane_qsort.exit
  ]

bb.bg:                                            ; preds = %.thread216
  %i.hr = load i32, ptr @always, align 4, !tbaa !12
  %.not171 = icmp eq i32 %i.hr, 0
  br i1 %.not171, label %bb.bk, label %bb.bh

.thread356:                                       ; preds = %lazy_queue_put.exit
  %i.hs = load i32, ptr @always, align 4, !tbaa !12
  %.not171358 = icmp eq i32 %i.hs, 0
  br i1 %.not171358, label %.thread360, label %bb.bh

bb.bh:                                            ; preds = %.thread356, %bb.bg
  %i.ht = load i32, ptr @abbrev, align 4, !tbaa !12
  call void @strbuf_add_unique_abbrev(ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef %i.ht) #15
  %i.hu = load ptr, ptr @suffix, align 8, !tbaa !30 ; 3 uses
  %.not173 = icmp eq ptr %i.hu, null
  br i1 %.not173, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hu) #18
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.hu, i64 noundef %i.hv) #15
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @clear_prio_queue(ptr noundef nonnull %4) #15
  br label %bb.cx

bb.bk:                                            ; preds = %bb.bg
  %.not172 = icmp eq i32 %.3, 0
  br i1 %.not172, label %.thread360, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hw = call fastcc ptr @_(ptr noundef nonnull @.str.81)
  %i.hx = call ptr @oid_to_hex(ptr noundef nonnull %i.a) #15
  call void (ptr, ...) @die(ptr noundef %i.hw, ptr noundef %i.hx) #16
  unreachable

.thread360:                                       ; preds = %.thread356, %bb.bk
  %i.hy = call fastcc ptr @_(ptr noundef nonnull @.str.82)
  %i.hz = call ptr @oid_to_hex(ptr noundef nonnull %i.a) #15
  call void (ptr, ...) @die(ptr noundef %i.hy, ptr noundef %i.hz) #16
  unreachable

bb.bm:                                            ; preds = %.thread216
  %i.ia = zext i32 %.3143 to i64
  call void @qsort(ptr noundef nonnull %5, i64 noundef range(i64 1, 4294967296) %i.ia, i64 noundef 24, ptr noundef nonnull @compare_pt) #15
  br label %sane_qsort.exit

sane_qsort.exit:                                  ; preds = %.thread216, %bb.bm
  %.not174 = icmp eq ptr %.2, null                ; 2 uses
  %.pre301 = load i8, ptr %i.bx, align 8, !tbaa !137, !range !138 ; 2 uses
  br i1 %.not174, label %bb.bq, label %bb.bn

bb.bn:                                            ; preds = %sane_qsort.exit
  %i.ib = trunc nuw i8 %.pre301 to i1
  br i1 %i.ib, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  call void @prio_queue_replace(ptr noundef nonnull %4, ptr noundef nonnull %.2) #15
  br label %lazy_queue_put.exit191

bb.bp:                                            ; preds = %bb.bn
  call void @prio_queue_put(ptr noundef nonnull %4, ptr noundef nonnull %.2) #15
  br label %lazy_queue_put.exit191

lazy_queue_put.exit191:                           ; preds = %bb.bo, %bb.bp
  store i8 0, ptr %i.bx, align 8, !tbaa !137
  br label %bb.bq

bb.bq:                                            ; preds = %lazy_queue_put.exit191, %sane_qsort.exit
  %.2355 = phi ptr [ %.2, %lazy_queue_put.exit191 ], [ null, %sane_qsort.exit ]
  %i.ic = phi i8 [ 0, %lazy_queue_put.exit191 ], [ %.pre301, %sane_qsort.exit ] ; 2 uses
  %.2132 = phi i64 [ %.0130250, %lazy_queue_put.exit191 ], [ %i.ch, %sane_qsort.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  %i.id = zext nneg i8 %i.ic to i64               ; 3 uses
  %i.ie = load i64, ptr %i.ca, align 8, !tbaa !140 ; 3 uses
  %i.if = icmp ugt i64 %i.ie, %i.id
  br i1 %i.if, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.bq
  %i.ig = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ih = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.br

.preheader.loopexit.i:                            ; preds = %bb.bt
  %.val5364.pre.i = load i8, ptr %i.bx, align 8, !tbaa !137, !range !138 ; 2 uses
  %.pre73.i = zext nneg i8 %.val5364.pre.i to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.bq
  %.pre-phi.i = phi i64 [ %.pre73.i, %.preheader.loopexit.i ], [ %i.id, %bb.bq ]
  %.val5364.i = phi i8 [ %.val5364.pre.i, %.preheader.loopexit.i ], [ %i.ic, %bb.bq ]
  %.val63.i = phi i64 [ %i.iz, %.preheader.loopexit.i ], [ %i.ie, %bb.bq ]
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ij = icmp eq i64 %.val63.i, %.pre-phi.i
  br i1 %i.ij, label %finish_depth_computation.exit, label %.lr.ph67.i

.lr.ph67.i:                                       ; preds = %.preheader.i
  %i.ik = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.bu

bb.br:                                            ; preds = %bb.bt, %.lr.ph.i
  %i.im = phi i64 [ %i.ie, %.lr.ph.i ], [ %i.iz, %bb.bt ]
  %.04559.i = phi i64 [ %i.id, %.lr.ph.i ], [ %i.ja, %bb.bt ] ; 2 uses
  %i.in = load ptr, ptr %i.ig, align 8, !tbaa !147
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.in, i64 %.04559.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !149 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8
  %i.is = lshr i64 %i.ir, 32
  %i.it = trunc nuw i64 %i.is to i32
  %i.iu = load i32, ptr %i.ih, align 16, !tbaa !143
  %i.iv = and i32 %i.iu, 536870911
  %i.iw = and i32 %i.iv, %i.it
  %.not52.i = icmp eq i32 %i.iw, 0
  br i1 %.not52.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  %i.iy = call i32 @oidset_insert(ptr noundef nonnull %2, ptr noundef nonnull %i.ix) #15 ; 0 uses
  %.pre.i194 = load i64, ptr %i.ca, align 8, !tbaa !140
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %i.iz = phi i64 [ %.pre.i194, %bb.bs ], [ %i.im, %bb.br ] ; 3 uses
  %i.ja = add nuw i64 %.04559.i, 1                ; 2 uses
  %i.jb = icmp ult i64 %i.ja, %i.iz
  br i1 %i.jb, label %bb.br, label %.preheader.loopexit.i, !llvm.loop !122

.loopexit.i:                                      ; preds = %bb.cg, %bb.bz
  %.val.i193 = load i64, ptr %i.ca, align 8, !tbaa !140
  %.val53.i = load i8, ptr %i.bx, align 8, !tbaa !137, !range !138, !noundef !139 ; 2 uses
  %i.jc = zext nneg i8 %.val53.i to i64
  %i.jd = icmp eq i64 %.val.i193, %i.jc
  br i1 %i.jd, label %finish_depth_computation.exit, label %bb.bu

bb.bu:                                            ; preds = %.loopexit.i, %.lr.ph67.i
  %.val5366.i = phi i8 [ %.val5364.i, %.lr.ph67.i ], [ %.val53.i, %.loopexit.i ]
  %.04665.i = phi i64 [ 0, %.lr.ph67.i ], [ %i.jj, %.loopexit.i ]
  %i.je = trunc nuw i8 %.val5366.i to i1
  br i1 %i.je, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.jf = call ptr @prio_queue_get(ptr noundef nonnull %4) #15 ; 0 uses
  br label %lazy_queue_get.exit.i

bb.bw:                                            ; preds = %bb.bu
  store i8 1, ptr %i.bx, align 8, !tbaa !137
  br label %lazy_queue_get.exit.i

lazy_queue_get.exit.i:                            ; preds = %bb.bw, %bb.bv
  %i.jg = call ptr @prio_queue_peek(ptr noundef nonnull %4) #15 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 56
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !141 ; 2 uses
  %i.jj = add i64 %.04665.i, 1                    ; 3 uses
  %i.jk = load i64, ptr %i.jg, align 8
  %i.jl = lshr i64 %i.jk, 32
  %i.jm = trunc nuw i64 %i.jl to i32
  %i.jn = load i32, ptr %i.ik, align 16, !tbaa !143
  %i.jo = and i32 %i.jn, 536870911
  %i.jp = and i32 %i.jo, %i.jm
  %.not.i192 = icmp eq i32 %i.jp, 0
  br i1 %.not.i192, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %lazy_queue_get.exit.i
  %.val54.i = load i32, ptr %i.ii, align 4, !tbaa !150
  %.not47.i = icmp eq i32 %.val54.i, 0
  br i1 %.not47.i, label %finish_depth_computation.exit, label %bb.bz

bb.by:                                            ; preds = %lazy_queue_get.exit.i
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.jr = call i32 @oidset_remove(ptr noundef nonnull %2, ptr noundef nonnull %i.jq) #15 ; 0 uses
  %i.js = load i32, ptr %i.il, align 8, !tbaa !86
  %i.jt = add nsw i32 %i.js, 1
  store i32 %i.jt, ptr %i.il, align 8, !tbaa !86
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.not4860.i = icmp eq ptr %i.ji, null
  br i1 %.not4860.i, label %.loopexit.i, label %.lr.ph62.i

.lr.ph62.i:                                       ; preds = %bb.bz, %bb.cg
  %.04461.i = phi ptr [ %i.kx, %bb.cg ], [ %i.ji, %bb.bz ] ; 2 uses
  %i.ju = load ptr, ptr %.04461.i, align 8, !tbaa !145 ; 8 uses
  %i.jv = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.jw = call i32 @repo_parse_commit_gently(ptr noundef %i.jv, ptr noundef %i.ju, i32 noundef 0) #15 ; 0 uses
  %i.jx = load i64, ptr %i.ju, align 8            ; 2 uses
  %i.jy = and i64 %i.jx, 4294967296
  %i.jz = icmp ne i64 %i.jy, 0                    ; 3 uses
  br i1 %i.jz, label %bb.cd, label %bb.ca

bb.ca:                                            ; preds = %.lr.ph62.i
  %i.ka = load i8, ptr %i.bx, align 8, !tbaa !137, !range !138, !noundef !139
  %i.kb = trunc nuw i8 %i.ka to i1
  br i1 %i.kb, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @prio_queue_replace(ptr noundef nonnull %4, ptr noundef nonnull %i.ju) #15
  br label %lazy_queue_put.exit.i

bb.cc:                                            ; preds = %bb.ca
  call void @prio_queue_put(ptr noundef nonnull %4, ptr noundef nonnull %i.ju) #15
  br label %lazy_queue_put.exit.i

lazy_queue_put.exit.i:                            ; preds = %bb.cc, %bb.cb
  store i8 0, ptr %i.bx, align 8, !tbaa !137
  %.pre72.i = load i64, ptr %i.ju, align 8
  br label %bb.cd

bb.cd:                                            ; preds = %lazy_queue_put.exit.i, %.lr.ph62.i
  %i.kc = phi i64 [ %.pre72.i, %lazy_queue_put.exit.i ], [ %i.jx, %.lr.ph62.i ] ; 2 uses
  %i.kd = load i32, ptr %i.ik, align 16, !tbaa !143
  %i.ke = load i64, ptr %i.jg, align 8
  %i.kf = and i64 %i.ke, 2305843004918726656
  %i.kg = or i64 %i.kf, %i.kc                     ; 2 uses
  store i64 %i.kg, ptr %i.ju, align 8
  %i.kh = lshr i64 %i.kg, 32
  %i.ki = trunc nuw i64 %i.kh to i32
  %i.kj = load i32, ptr %i.ik, align 16, !tbaa !143
  %i.kk = and i32 %i.kj, 536870911
  %i.kl = and i32 %i.kk, %i.ki
  %i.km = icmp ne i32 %i.kl, 0                    ; 2 uses
  %or.cond.i = select i1 %i.jz, i1 true, i1 %i.km
  br i1 %or.cond.i, label %bb.ce, label %.thread.i

.thread.i:                                        ; preds = %bb.cd
  %i.kn = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.ko = call i32 @oidset_insert(ptr noundef nonnull %2, ptr noundef nonnull %i.kn) #15 ; 0 uses
  br label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %i.kp = lshr i64 %i.kc, 32
  %i.kq = trunc nuw i64 %i.kp to i32
  %i.kr = and i32 %i.kd, 536870911
  %i.ks = and i32 %i.kr, %i.kq
  %i.kt = icmp eq i32 %i.ks, 0
  %or.cond3.not51.i = select i1 %i.jz, i1 %i.kt, i1 false
  %or.cond5.i = select i1 %or.cond3.not51.i, i1 %i.km, i1 false
  br i1 %or.cond5.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.kv = call i32 @oidset_remove(ptr noundef nonnull %2, ptr noundef nonnull %i.ku) #15 ; 0 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %.thread.i
  %i.kw = getelementptr inbounds nuw i8, ptr %.04461.i, i64 8
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !146 ; 2 uses
  %.not48.i = icmp eq ptr %i.kx, null
  br i1 %.not48.i, label %.loopexit.i, label %.lr.ph62.i, !llvm.loop !123

finish_depth_computation.exit:                    ; preds = %.loopexit.i, %bb.bx, %.preheader.i
  %.1.i = phi i64 [ 0, %.preheader.i ], [ %i.jj, %bb.bx ], [ %i.jj, %.loopexit.i ]
  call void @oidset_clear(ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  %i.ky = add i64 %.1.i, %.2132
  call void @clear_prio_queue(ptr noundef nonnull %4) #15
  store i8 0, ptr %i.bx, align 8, !tbaa !137
  %i.kz = load i32, ptr @debug, align 4, !tbaa !12
  %.not175 = icmp eq i32 %i.kz, 0
  br i1 %.not175, label %bb.ct, label %bb.ch

bb.ch:                                            ; preds = %finish_depth_computation.exit
  %i.la = load i32, ptr @describe_commit.label_width, align 4, !tbaa !12 ; 2 uses
  %i.lb = icmp slt i32 %i.la, 0
  br i1 %i.lb, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.ch
  %i.lc = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i196 = icmp eq i32 %i.lc, 0
  br i1 %.not4.i196, label %_.exit198, label %bb.ci

bb.ci:                                            ; preds = %.preheader.preheader
  %i.ld = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.90, i32 noundef 5) #15
  %.pre302 = load i32, ptr @describe_commit.label_width, align 4, !tbaa !12
  br label %_.exit198

_.exit198:                                        ; preds = %.preheader.preheader, %bb.ci
  %i.le = phi i32 [ %.pre302, %bb.ci ], [ %i.la, %.preheader.preheader ] ; 2 uses
  %.0.i197 = phi ptr [ %i.ld, %bb.ci ], [ @.str.90, %.preheader.preheader ]
  %i.lf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i197) #18
  %i.lg = trunc i64 %i.lf to i32                  ; 3 uses
  %i.lh = icmp slt i32 %i.le, %i.lg
  br i1 %i.lh, label %bb.cj, label %.preheader.1

bb.cj:                                            ; preds = %_.exit198
  store i32 %i.lg, ptr @describe_commit.label_width, align 4, !tbaa !12
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.cj, %_.exit198
  %i.li = phi i32 [ %i.le, %_.exit198 ], [ %i.lg, %bb.cj ]
  %i.lj = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i196.1 = icmp eq i32 %i.lj, 0
  br i1 %.not4.i196.1, label %_.exit198.1, label %bb.ck

bb.ck:                                            ; preds = %.preheader.1
  %i.lk = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.91, i32 noundef 5) #15
  %.pre303 = load i32, ptr @describe_commit.label_width, align 4, !tbaa !12
  br label %_.exit198.1

_.exit198.1:                                      ; preds = %bb.ck, %.preheader.1
  %i.ll = phi i32 [ %.pre303, %bb.ck ], [ %i.li, %.preheader.1 ] ; 2 uses
  %.0.i197.1 = phi ptr [ %i.lk, %bb.ck ], [ @.str.91, %.preheader.1 ]
  %i.lm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i197.1) #18
  %i.ln = trunc i64 %i.lm to i32                  ; 3 uses
  %i.lo = icmp slt i32 %i.ll, %i.ln
  br i1 %i.lo, label %bb.cl, label %.preheader.2

bb.cl:                                            ; preds = %_.exit198.1
  store i32 %i.ln, ptr @describe_commit.label_width, align 4, !tbaa !12
  br label %.preheader.2

.preheader.2:                                     ; preds = %_.exit198.1, %bb.cl
  %i.lp = phi i32 [ %i.ln, %bb.cl ], [ %i.ll, %_.exit198.1 ]
  %i.lq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i196.2 = icmp eq i32 %i.lq, 0
  br i1 %.not4.i196.2, label %_.exit198.2, label %bb.cm

bb.cm:                                            ; preds = %.preheader.2
  %i.lr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.92, i32 noundef 5) #15
  %.pre304 = load i32, ptr @describe_commit.label_width, align 4, !tbaa !12
  br label %_.exit198.2

_.exit198.2:                                      ; preds = %bb.cm, %.preheader.2
  %i.ls = phi i32 [ %.pre304, %bb.cm ], [ %i.lp, %.preheader.2 ]
  %.0.i197.2 = phi ptr [ %i.lr, %bb.cm ], [ @.str.92, %.preheader.2 ]
  %i.lt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i197.2) #18
  %i.lu = trunc i64 %i.lt to i32                  ; 2 uses
  %i.lv = icmp slt i32 %i.ls, %i.lu
  br i1 %i.lv, label %bb.cn, label %.loopexit

bb.cn:                                            ; preds = %_.exit198.2
  store i32 %i.lu, ptr @describe_commit.label_width, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %_.exit198.2, %bb.cn, %bb.ch
  %.not276 = icmp eq i32 %.3143, 0
  br i1 %.not276, label %._crit_edge273, label %.lr.ph272.preheader

.lr.ph272.preheader:                              ; preds = %.loopexit
  %wide.trip.count297 = zext i32 %.3143 to i64
  br label %.lr.ph272

.lr.ph272:                                        ; preds = %.lr.ph272.preheader, %_.exit202
  %indvars.iv294 = phi i64 [ 0, %.lr.ph272.preheader ], [ %indvars.iv.next295, %_.exit202 ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %indvars.iv294 ; 3 uses
  %i.lx = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.ly = load i32, ptr @describe_commit.label_width, align 4, !tbaa !12
  %i.lz = load ptr, ptr %i.lw, align 8, !tbaa !142 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 64
  %i.mb = load i8, ptr %i.ma, align 8
  %i.mc = and i8 %i.mb, 3
  %i.md = zext nneg i8 %i.mc to i64
  %i.me = getelementptr inbounds nuw [8 x i8], ptr @prio_names, i64 %i.md
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !30 ; 3 uses
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !55
  %.not.i199 = icmp eq i8 %i.mg, 0
  br i1 %.not.i199, label %_.exit202, label %bb.co

bb.co:                                            ; preds = %.lr.ph272
  %i.mh = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i200 = icmp eq i32 %i.mh, 0
  br i1 %.not4.i200, label %_.exit202, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.mi = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %i.mf, i32 noundef 5) #15
  %.pre305 = load ptr, ptr %i.lw, align 8, !tbaa !142
  br label %_.exit202

_.exit202:                                        ; preds = %.lr.ph272, %bb.co, %bb.cp
  %i.mj = phi ptr [ %.pre305, %bb.cp ], [ %i.lz, %.lr.ph272 ], [ %i.lz, %bb.co ]
  %.0.i201 = phi ptr [ %i.mi, %bb.cp ], [ @.str.62, %.lr.ph272 ], [ %i.mf, %bb.co ]
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !86
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 104
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !68
  %i.mo = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lx, ptr noundef nonnull @.str.83, i32 noundef %i.ly, ptr noundef %.0.i201, i32 noundef %i.ml, ptr noundef %i.mn) #17 ; 0 uses
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %._crit_edge273, label %.lr.ph272, !llvm.loop !124

._crit_edge273:                                   ; preds = %_.exit202, %.loopexit
  %i.mp = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.mq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i203 = icmp eq i32 %i.mq, 0
  br i1 %.not4.i203, label %_.exit205, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge273
  %i.mr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.84, i32 noundef 5) #15
  br label %_.exit205

_.exit205:                                        ; preds = %._crit_edge273, %bb.cq
  %.0.i204 = phi ptr [ %i.mr, %bb.cq ], [ @.str.84, %._crit_edge273 ]
  %i.ms = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mp, ptr noundef %.0.i204, i64 noundef %i.ky) #17 ; 0 uses
  br i1 %.not174, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %_.exit205
  %i.mt = load ptr, ptr @stderr, align 8, !tbaa !70
  %i.mu = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i206 = icmp eq i32 %i.mu, 0
  br i1 %.not4.i206, label %_.exit208, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.mv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.85, i32 noundef 5) #15
  br label %_.exit208

_.exit208:                                        ; preds = %bb.cr, %bb.cs
  %.0.i207 = phi ptr [ %i.mv, %bb.cs ], [ @.str.85, %bb.cr ]
  %i.mw = load i32, ptr @max_candidates, align 4, !tbaa !12
  %i.mx = getelementptr inbounds nuw i8, ptr %.2355, i64 8
  %i.my = call ptr @oid_to_hex(ptr noundef nonnull %i.mx) #15
  %i.mz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mt, ptr noundef %.0.i207, i32 noundef %i.mw, ptr noundef %i.my) #17 ; 0 uses
  br label %bb.ct

bb.ct:                                            ; preds = %_.exit205, %_.exit208, %finish_depth_computation.exit
  %i.na = load ptr, ptr %5, align 16, !tbaa !142
  call fastcc void @append_name(ptr noundef %i.na, ptr noundef %1)
  %i.nb = load ptr, ptr %5, align 16, !tbaa !142
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 64
  %i.nd = load i8, ptr %i.nc, align 8
  %i.ne = and i8 %i.nd, 8
  %i.nf = icmp ne i8 %i.ne, 0
  %i.ng = load i32, ptr @abbrev, align 4          ; 2 uses
  %i.nh = icmp ne i32 %i.ng, 0
  %or.cond7 = select i1 %i.nf, i1 true, i1 %i.nh
  br i1 %or.cond7, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.ni = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.nj = load i32, ptr %i.ni, align 8, !tbaa !86
  %i.nk = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.nl = call ptr @repo_find_unique_abbrev(ptr noundef %i.nk, ptr noundef nonnull %i.a, i32 noundef %i.ng) #15
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef nonnull @.str.89, i32 noundef %i.nj, ptr noundef %i.nl) #15
  br label %bb.cv

bb.cv:                                            ; preds = %bb.ct, %bb.cu
  %i.nm = load ptr, ptr @suffix, align 8, !tbaa !30 ; 3 uses
  %.not176 = icmp eq ptr %i.nm, null
  br i1 %.not176, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nn = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nm) #18
  call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %i.nm, i64 noundef %i.nn) #15
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cv, %bb.cw, %bb.h, %bb.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret void
}

declare i32 @odb_read_object_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

declare void @clear_commit_marks(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

declare i32 @compare_commits_by_commit_date(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @append_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 3
  %i.d = icmp eq i8 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.i = tail call ptr @lookup_tag(ptr noundef %i.g, ptr noundef nonnull %i.h) #15 ; 3 uses
  store ptr %i.i, ptr %i.e, align 8, !tbaa !64
  %.not23 = icmp eq ptr %i.i, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @the_repository, align 8, !tbaa !19
  %i.k = tail call i32 @parse_tag(ptr noundef %i.j, ptr noundef nonnull %i.i) #15
  %.not24 = icmp eq i32 %i.k, 0
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = tail call fastcc ptr @_(ptr noundef nonnull @.str.86)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !68
  tail call void (ptr, ...) @die(ptr noundef %i.l, ptr noundef %i.n) #16
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !64   ; 4 uses
  %.not25 = icmp eq ptr %i.p, null
  br i1 %.not25, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load i8, ptr %i.a, align 8               ; 2 uses
  %i.r = and i8 %i.q, 4
  %.not26 = icmp eq i8 %i.r, 0
  br i1 %.not26, label %bb.h, label %.thread39

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !151  ; 2 uses
  %i.u = load i32, ptr @all, align 4, !tbaa !12
  %.not27 = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !68   ; 2 uses
  %.idx = select i1 %.not27, i64 0, i64 5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(1) %i.x) #18
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %.thread43, label %bb.i

.thread43:                                        ; preds = %bb.h
  %i.z = or disjoint i8 %i.q, 4
  store i8 %i.z, ptr %i.a, align 8
  br label %.thread39

bb.i:                                             ; preds = %bb.h
  %i.aa = load i32, ptr @git_gettext_enabled, align 4, !tbaa !12
  %.not4.i = icmp eq i32 %i.aa, 0
  br i1 %.not4.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.87, i32 noundef 5) #15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !68
  %.pre32 = load ptr, ptr %i.o, align 8, !tbaa !64
  %.phi.trans.insert33 = getelementptr inbounds nuw i8, ptr %.pre32, i64 56
  %.pre34 = load ptr, ptr %.phi.trans.insert33, align 8, !tbaa !151
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ac = phi ptr [ %.pre34, %bb.j ], [ %i.t, %bb.i ]
  %i.ad = phi ptr [ %.pre, %bb.j ], [ %i.w, %bb.i ]
  %.0.i = phi ptr [ %i.ab, %bb.j ], [ @.str.87, %bb.i ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i, ptr noundef %i.ad, ptr noundef %i.ac) #15
  %i.ae = load i8, ptr %i.a, align 8
  %.pr.pre.pre = load ptr, ptr %i.o, align 8, !tbaa !64 ; 2 uses
  %i.af = or i8 %i.ae, 12
  store i8 %i.af, ptr %i.a, align 8
  %.not29 = icmp eq ptr %.pr.pre.pre, null
  br i1 %.not29, label %.thread, label %.thread39

.thread39:                                        ; preds = %bb.g, %.thread43, %bb.k
  %.pr42 = phi ptr [ %i.p, %.thread43 ], [ %.pr.pre.pre, %bb.k ], [ %i.p, %bb.g ]
  %i.ag = load i32, ptr @all, align 4, !tbaa !12
  %.not30 = icmp eq i32 %i.ag, 0
  br i1 %.not30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread39
  tail call void @strbuf_add(ptr noundef %1, ptr noundef nonnull @.str.88, i64 noundef 5) #15
  %.pre36 = load ptr, ptr %i.o, align 8, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread39
  %i.ah = phi ptr [ %.pre36, %bb.l ], [ %.pr42, %.thread39 ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  br label %bb.n

.thread:                                          ; preds = %bb.f, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.n

bb.n:                                             ; preds = %.thread, %bb.m
  %.sink47.in = phi ptr [ %i.aj, %.thread ], [ %i.ai, %bb.m ]
  %.sink47 = load ptr, ptr %.sink47.in, align 8, !tbaa !30 ; 2 uses
  %i.ak = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sink47) #18
  tail call void @strbuf_add(ptr noundef %1, ptr noundef nonnull %.sink47, i64 noundef %i.ak) #15
  ret void
}

declare ptr @get_tagged_oid(ptr noundef) local_unnamed_addr #3

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #3

declare ptr @hashmap_iter_next(ptr noundef) local_unnamed_addr #3

declare void @strbuf_add_unique_abbrev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @compare_pt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !86   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !86   ; 2 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nsw i32 %i.b, %i.d
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !87
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !87
  %i.j = sub nsw i32 %i.g, %i.i
end_hunk_0
