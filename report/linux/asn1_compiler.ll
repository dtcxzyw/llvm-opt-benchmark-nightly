Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/asn1_compiler?download=true
inline.NumInlined: 12
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@main:bb.a
  %.2183.i189.a = getelementptr inbounds nuw i8, ptr %.3250.i, i64 1 ; 3 uses
  %i.eo = icmp ult ptr %.2183.i189.a, %.1188.i
  br i1 %i.eo, label %.lr.ph, label %.critedge6.i

.preheader.i:                                     ; preds = %.lr.ph
  %.2183.i = getelementptr inbounds nuw i8, ptr %.2183.i190, i64 1 ; 3 uses
  %i.ep = icmp ult ptr %.2183.i, %.1188.i
  br i1 %i.ep, label %.lr.ph, label %.critedge6.i, !llvm.loop !38

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %.2183.i190 = phi ptr [ %.2183.i, %.preheader.i ], [ %.2183.i189.a, %.preheader.i.preheader ] ; 3 uses
  %i.eq = load i8, ptr %.2183.i190, align 1, !tbaa !20
  %i.er = sext i8 %i.eq to i64
  %i.es = getelementptr inbounds [2 x i8], ptr %i.ci, i64 %i.er
  %i.et = load i16, ptr %i.es, align 2, !tbaa !27
  %i.eu = and i16 %i.et, 2048
  %.not209.i = icmp eq i16 %i.eu, 0
  br i1 %.not209.i, label %..critedge6.i_crit_edge, label %.preheader.i, !llvm.loop !38

..critedge6.i_crit_edge:                          ; preds = %.lr.ph
  br label %.critedge6.i, !llvm.loop !38

.critedge6.i:                                     ; preds = %.preheader.i, %..critedge6.i_crit_edge, %.preheader.i.preheader
  %.2183.i.lcssa = phi ptr [ %.2183.i190, %..critedge6.i_crit_edge ], [ %.2183.i189.a, %.preheader.i.preheader ], [ %.2183.i, %.preheader.i ] ; 2 uses
  %i.ev = ptrtoint ptr %.2183.i.lcssa to i64
  %i.ew = ptrtoint ptr %.3250.i to i64
  %i.ex = sub i64 %i.ev, %i.ew                    ; 2 uses
  %i.ey = trunc i64 %i.ex to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !34
  %i.fa = and i64 %i.ex, 255                      ; 3 uses
  %i.fb = add nuw nsw i64 %i.fa, 1
  %i.fc = tail call noalias ptr @malloc(i64 noundef %i.fb) #27 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr %i.fc, ptr %i.fd, align 8, !tbaa !35
  %.not210.i = icmp eq ptr %i.fc, null
  br i1 %.not210.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge6.i
  tail call void @perror(ptr noundef null) #26
  tail call void @exit(i32 noundef 1) #25
  unreachable

bb.at:                                            ; preds = %.critedge6.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fc, ptr nonnull align 1 %.3250.i, i64 %i.fa, i1 false)
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.fa
  store i8 0, ptr %i.fe, align 1, !tbaa !20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 90, ptr %i.ff, align 2
  br label %.backedge.i

bb.au:                                            ; preds = %bb.ar
  %i.fg = ptrtoint ptr %.3250.i to i64
  %i.fh = sub i64 %i.ch, %i.fg                    ; 3 uses
  %i.fi = icmp sgt i64 %i.fh, 2
  br i1 %i.fi, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.fj = load i16, ptr %.3250.i, align 1
  %i.fk = xor i16 %i.fj, 14906
  %i.fl = getelementptr i8, ptr %.3250.i, i64 2
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = zext i8 %i.fm to i16
  %i.fo = xor i16 %i.fn, 61
  %i.fp = or i16 %i.fk, %i.fo
  %i.fq = icmp ne i16 %i.fp, 0
  %i.fr = zext i1 %i.fq to i32
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.aw, label %.thread225.i

bb.aw:                                            ; preds = %bb.av
  %i.ft = getelementptr inbounds nuw i8, ptr %.3250.i, i64 3
  %i.fu = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  store i8 3, ptr %i.fu, align 1, !tbaa !34
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr @.str.6, ptr %i.fv, align 8, !tbaa !35
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 82, ptr %i.fw, align 2
  br label %.backedge.i

bb.ax:                                            ; preds = %bb.au
  %i.fx = icmp eq i64 %i.fh, 2
  br i1 %i.fx, label %.thread225.i, label %bb.bb

.thread225.i:                                     ; preds = %bb.ax, %bb.av
  %i.fy = load i16, ptr %.3250.i, align 1
  %i.fz = icmp ne i16 %i.fy, 31528
  %i.ga = zext i1 %i.fz to i32
  %i.gb = icmp eq i32 %i.ga, 0
  br i1 %i.gb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %.thread225.i
  %i.gc = getelementptr inbounds nuw i8, ptr %.3250.i, i64 2
  %i.gd = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  store i8 2, ptr %i.gd, align 1, !tbaa !34
  %i.ge = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr @.str.7, ptr %i.ge, align 8, !tbaa !35
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 87, ptr %i.gf, align 2
  br label %.backedge.i

bb.az:                                            ; preds = %.thread225.i
  %i.gg = load i16, ptr %.3250.i, align 1
  %i.gh = icmp ne i16 %i.gg, 10621
  %i.gi = zext i1 %i.gh to i32
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %bb.ba, label %.thread226.i

bb.ba:                                            ; preds = %bb.az
  %i.gk = getelementptr inbounds nuw i8, ptr %.3250.i, i64 2
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  store i8 2, ptr %i.gl, align 1, !tbaa !34
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr @.str.8, ptr %i.gm, align 8, !tbaa !35
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 88, ptr %i.gn, align 2
  br label %.backedge.i

bb.bb:                                            ; preds = %bb.ax
  %i.go = icmp sgt i64 %i.fh, 0
  br i1 %i.go, label %.thread226.i, label %bb.bh

.thread226.i:                                     ; preds = %bb.bb, %bb.az
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cr, i64 3
  store i8 1, ptr %i.gp, align 1, !tbaa !34
  %i.gq = load i8, ptr %.3250.i, align 1, !tbaa !20 ; 2 uses
  switch i8 %i.gq, label %bb.bh [
    i8 123, label %bb.bc
    i8 125, label %bb.bd
    i8 91, label %bb.be
    i8 93, label %bb.bf
    i8 44, label %bb.bg
  ]

bb.bc:                                            ; preds = %.thread226.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.3250.i, i64 1
  %i.gs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr @.str.9, ptr %i.gs, align 8, !tbaa !35
  %i.gt = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 83, ptr %i.gt, align 2
  br label %.backedge.i

bb.bd:                                            ; preds = %.thread226.i
  %i.gu = getelementptr inbounds nuw i8, ptr %.3250.i, i64 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr @.str.10, ptr %i.gv, align 8, !tbaa !35
  %i.gw = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 84, ptr %i.gw, align 2
  br label %.backedge.i

bb.be:                                            ; preds = %.thread226.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.3250.i, i64 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr @.str.11, ptr %i.gy, align 8, !tbaa !35
  %i.gz = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 85, ptr %i.gz, align 2
  br label %.backedge.i

bb.bf:                                            ; preds = %.thread226.i
  %i.ha = getelementptr inbounds nuw i8, ptr %.3250.i, i64 1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr @.str.12, ptr %i.hb, align 8, !tbaa !35
  %i.hc = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 86, ptr %i.hc, align 2
  br label %.backedge.i

bb.bg:                                            ; preds = %.thread226.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.3250.i, i64 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store ptr @.str.13, ptr %i.he, align 8, !tbaa !35
  %i.hf = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 89, ptr %i.hf, align 2
  br label %.backedge.i

bb.bh:                                            ; preds = %.thread226.i, %bb.bb
  %i.hg = phi i8 [ %i.gq, %.thread226.i ], [ %i.cs, %bb.bb ]
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.hi = load ptr, ptr @filename, align 8, !tbaa !9
  %i.hj = sext i8 %i.hg to i32
  %i.hk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hh, ptr noundef nonnull @.str.14, ptr noundef %i.hi, i32 noundef %i.bj, i32 noundef %i.hj) #24 ; 0 uses
  tail call void @exit(i32 noundef 1) #25
  unreachable

.critedge.i:                                      ; preds = %.backedge.i, %bb.ah, %.loopexit.i
  %.1243.i = phi i32 [ %.1255.i, %bb.ah ], [ %.0180258.i, %.loopexit.i ], [ %.1.be.i, %.backedge.i ] ; 2 uses
  %i.hl = icmp ult ptr %.1190.i, %i.bf
  br i1 %i.hl, label %.lr.ph260.i, label %._crit_edge.i, !llvm.loop !39

._crit_edge.i:                                    ; preds = %.critedge.i, %.preheader230.i
  %.0180.lcssa.i = phi i32 [ 0, %.preheader230.i ], [ %.1243.i, %.critedge.i ] ; 3 uses
  store i32 %.0180.lcssa.i, ptr @nr_tokens, align 4, !tbaa !40
  %.b.i = load i1, ptr @verbose_opt, align 1
  br i1 %.b.i, label %bb.bi, label %tokenise.exit

bb.bi:                                            ; preds = %._crit_edge.i
  %i.hm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %.0180.lcssa.i) ; 0 uses
  %.pre = load i32, ptr @nr_tokens, align 4, !tbaa !40
  br label %tokenise.exit

tokenise.exit:                                    ; preds = %._crit_edge.i, %bb.bi
  %i.hn = phi i32 [ %.0180.lcssa.i, %._crit_edge.i ], [ %.pre, %bb.bi ] ; 2 uses
  %i.ho = add i32 %i.hn, -1                       ; 4 uses
  %.not42.i = icmp eq i32 %i.ho, 0
  br i1 %.not42.i, label %._crit_edge.thread.i, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %tokenise.exit
  %i.hp = load ptr, ptr @token_list, align 8, !tbaa !21 ; 9 uses
  %wide.trip.count.i = zext i32 %i.ho to i64      ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.hq = icmp eq i32 %i.ho, 1
  br i1 %i.hq, label %.epil.preheader, label %.lr.ph.i55.new

.lr.ph.i55.new:                                   ; preds = %.lr.ph.i55
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.bj

bb.bj:                                            ; preds = %._crit_edge53.i.1, %.lr.ph.i55.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i55.new ], [ %i.if, %._crit_edge53.i.1 ] ; 3 uses
  %.02933.i = phi i32 [ 0, %.lr.ph.i55.new ], [ %.130.i.1, %._crit_edge53.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i55.new ], [ %niter.next.1, %._crit_edge53.i.1 ]
  %i.hr = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %indvars.iv.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 2
  %i.ht = load i8, ptr %i.hs, align 2
  %i.hu = icmp eq i8 %i.ht, 91
  %i.hv = or disjoint i64 %indvars.iv.i, 1        ; 2 uses
  br i1 %i.hu, label %bb.bk, label %._crit_edge53.i

bb.bk:                                            ; preds = %bb.bj
  %i.hw = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %i.hv
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 2
  %i.hy = load i8, ptr %i.hx, align 2
  %i.hz = icmp eq i8 %i.hy, 82
  %i.ia = zext i1 %i.hz to i32
  %spec.select.i = add i32 %.02933.i, %i.ia
  br label %._crit_edge53.i

._crit_edge53.i:                                  ; preds = %bb.bk, %bb.bj
  %.130.i = phi i32 [ %spec.select.i, %bb.bk ], [ %.02933.i, %bb.bj ] ; 2 uses
  %i.ib = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %i.hv
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  %i.id = load i8, ptr %i.ic, align 2
  %i.ie = icmp eq i8 %i.id, 91
  %i.if = add nuw nsw i64 %indvars.iv.i, 2        ; 3 uses
  br i1 %i.ie, label %bb.bl, label %._crit_edge53.i.1

bb.bl:                                            ; preds = %._crit_edge53.i
  %i.ig = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %i.if
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 2
  %i.ii = load i8, ptr %i.ih, align 2
  %i.ij = icmp eq i8 %i.ii, 82
  %i.ik = zext i1 %i.ij to i32
  %spec.select.i.1 = add i32 %.130.i, %i.ik
  br label %._crit_edge53.i.1

._crit_edge53.i.1:                                ; preds = %bb.bl, %._crit_edge53.i
  %.130.i.1 = phi i32 [ %spec.select.i.1, %bb.bl ], [ %.130.i, %._crit_edge53.i ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i57.unr-lcssa, label %bb.bj, !llvm.loop !41

._crit_edge.i57.unr-lcssa:                        ; preds = %._crit_edge53.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i57, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i57.unr-lcssa, %.lr.ph.i55
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i55 ], [ %i.if, %._crit_edge.i57.unr-lcssa ] ; 2 uses
  %.02933.i.epil.init = phi i32 [ 0, %.lr.ph.i55 ], [ %.130.i.1, %._crit_edge.i57.unr-lcssa ] ; 2 uses
  %lcmp.mod214 = trunc i32 %i.ho to i1
  tail call void @llvm.assume(i1 %lcmp.mod214)
  %i.il = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %indvars.iv.i.epil.init
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 2
  %i.in = load i8, ptr %i.im, align 2
  %i.io = icmp eq i8 %i.in, 91
  br i1 %i.io, label %bb.bm, label %._crit_edge.i57

bb.bm:                                            ; preds = %.epil.preheader
  %i.ip = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %indvars.iv.i.epil.init
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 34
  %i.ir = load i8, ptr %i.iq, align 2
  %i.is = icmp eq i8 %i.ir, 82
  %i.it = zext i1 %i.is to i32
  %spec.select.i.epil = add i32 %.02933.i.epil.init, %i.it
  br label %._crit_edge.i57

._crit_edge.i57:                                  ; preds = %.epil.preheader, %bb.bm, %._crit_edge.i57.unr-lcssa
  %.130.i.lcssa = phi i32 [ %.130.i.1, %._crit_edge.i57.unr-lcssa ], [ %spec.select.i.epil, %bb.bm ], [ %.02933.i.epil.init, %.epil.preheader ] ; 4 uses
  %i.iu = icmp eq i32 %.130.i.lcssa, 0
  br i1 %i.iu, label %._crit_edge.thread.i, label %bb.bn

._crit_edge.thread.i:                             ; preds = %._crit_edge.i57, %tokenise.exit
  %i.iv = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.iw = load ptr, ptr @filename, align 8, !tbaa !9
  %i.ix = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iv, ptr noundef nonnull @.str.98, ptr noundef %i.iw) #24 ; 0 uses
  tail call void @exit(i32 noundef 1) #25
  unreachable

bb.bn:                                            ; preds = %._crit_edge.i57
  store i32 %.130.i.lcssa, ptr @nr_types, align 4, !tbaa !40
  %i.iy = add i32 %.130.i.lcssa, 1
  %i.iz = zext i32 %i.iy to i64
  %i.ja = tail call noalias ptr @calloc(i64 noundef %i.iz, i64 noundef 32) #28 ; 5 uses
  store ptr %i.ja, ptr @type_list, align 8, !tbaa !42
  %.not.i58 = icmp eq ptr %i.ja, null
  br i1 %.not.i58, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  tail call void @perror(ptr noundef null) #26
  tail call void @exit(i32 noundef 1) #25
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.jb = zext i32 %.130.i.lcssa to i64           ; 2 uses
  %i.jc = tail call noalias ptr @calloc(i64 noundef %i.jb, i64 noundef 8) #28 ; 4 uses
  store ptr %i.jc, ptr @type_index, align 8, !tbaa !43
  %.not32.i = icmp eq ptr %i.jc, null
  br i1 %.not32.i, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  tail call void @perror(ptr noundef null) #26
  tail call void @exit(i32 noundef 1) #25
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 28
  store i32 2, ptr %i.jd, align 4, !tbaa !46
  br label %bb.bs

bb.bs:                                            ; preds = %._crit_edge54.i, %bb.br
  %indvars.iv45.i = phi i64 [ 0, %bb.br ], [ %i.ji, %._crit_edge54.i ] ; 2 uses
  %.02735.i = phi i32 [ 0, %bb.br ], [ %.128.i, %._crit_edge54.i ] ; 4 uses
  %i.je = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %indvars.iv45.i ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.jg = load i8, ptr %i.jf, align 2
  %i.jh = icmp eq i8 %i.jg, 91
  %i.ji = add nuw nsw i64 %indvars.iv45.i, 1      ; 3 uses
  br i1 %i.jh, label %bb.bt, label %._crit_edge54.i

bb.bt:                                            ; preds = %bb.bs
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jl = load i8, ptr %i.jk, align 2
  %i.jm = icmp eq i8 %i.jl, 82
  br i1 %i.jm, label %bb.bu, label %._crit_edge54.i

bb.bu:                                            ; preds = %bb.bt
  %i.jn = zext i32 %.02735.i to i64               ; 2 uses
  %i.jo = getelementptr inbounds nuw [32 x i8], ptr %i.ja, i64 %i.jn ; 2 uses
  store ptr %i.je, ptr %i.jo, align 8, !tbaa !49
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.jn
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !42
  %i.jq = add i32 %.02735.i, 1
  br label %._crit_edge54.i

._crit_edge54.i:                                  ; preds = %bb.bu, %bb.bt, %bb.bs
  %.128.i = phi i32 [ %i.jq, %bb.bu ], [ %.02735.i, %bb.bt ], [ %.02735.i, %bb.bs ] ; 2 uses
  %exitcond49.not.i = icmp eq i64 %i.ji, %wide.trip.count.i
  br i1 %exitcond49.not.i, label %._crit_edge39.i, label %bb.bs, !llvm.loop !50

._crit_edge39.i:                                  ; preds = %._crit_edge54.i
  %.phi.trans.insert.i = zext i32 %.128.i to i64
  %.phi.trans.insert51.i = getelementptr inbounds nuw [32 x i8], ptr %i.ja, i64 %.phi.trans.insert.i ; 2 uses
  %.phi.trans.insert52.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert51.i, i64 28 ; 2 uses
  %.pre53.i = load i32, ptr %.phi.trans.insert52.i, align 4, !tbaa !46
  %3 = zext i32 %i.hn to i64
  %4 = or i32 %.pre53.i, 1
  %5 = getelementptr inbounds nuw [32 x i8], ptr %i.hp, i64 %3
  store ptr %5, ptr %.phi.trans.insert51.i, align 8, !tbaa !49
  store i32 %4, ptr %.phi.trans.insert52.i, align 4, !tbaa !46
  tail call void @qsort(ptr noundef nonnull %i.jc, i64 noundef %i.jb, i64 noundef 8, ptr noundef nonnull @type_index_compare) #22
  %.b.i60 = load i1, ptr @verbose_opt, align 1
  br i1 %.b.i60, label %bb.bv, label %build_type_list.exit

bb.bv:                                            ; preds = %._crit_edge39.i
  %i.jr = load i32, ptr @nr_types, align 4, !tbaa !40
  %i.js = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, i32 noundef %i.jr) ; 0 uses
  br label %build_type_list.exit

build_type_list.exit:                             ; preds = %._crit_edge39.i, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.jt = load ptr, ptr @type_list, align 8, !tbaa !42 ; 2 uses
  %.pre.i61 = load ptr, ptr %i.jt, align 8, !tbaa !49
  br label %bb.bw

bb.bw:                                            ; preds = %bb.cb, %build_type_list.exit
  %i.ju = phi ptr [ %.pre.i61, %build_type_list.exit ], [ %i.kf, %bb.cb ] ; 3 uses
  %.0.i = phi ptr [ %i.jt, %build_type_list.exit ], [ %i.ka, %bb.cb ] ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  %i.jw = load i8, ptr %i.jv, align 2
  %.not.i62 = icmp eq i8 %i.jw, 91
  br i1 %.not.i62, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 34
  %i.jy = load i8, ptr %i.jx, align 2
  %.not9.i = icmp eq i8 %i.jy, 82
  br i1 %.not9.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  tail call void @abort() #30
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 64
  store ptr %i.jz, ptr %i.a, align 8, !tbaa !21
  %i.ka = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 3 uses
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !49
  %i.kc = call fastcc ptr @parse_type(ptr noundef %i.a, ptr noundef %i.kb, ptr noundef null) ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.kc, ptr %i.kd, align 8, !tbaa !51
  store ptr %.0.i, ptr %i.kc, align 8, !tbaa !52
  %i.ke = load ptr, ptr %i.a, align 8, !tbaa !21  ; 3 uses
  %i.kf = load ptr, ptr %i.ka, align 8, !tbaa !49 ; 2 uses
  %.not10.i = icmp eq ptr %i.ke, %i.kf
  br i1 %.not10.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.kg = load ptr, ptr @stderr, align 8, !tbaa !14
  %i.kh = load ptr, ptr @filename, align 8, !tbaa !9
  %i.ki = load i16, ptr %i.ke, align 8, !tbaa !30
  %i.kj = zext i16 %i.ki to i32
  %i.kk = getelementptr inbounds nuw i8, ptr %i.ke, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !35
  %i.km = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kg, ptr noundef nonnull @.str.100, ptr noundef %i.kh, i32 noundef %i.kj, ptr noundef %i.kl) #24 ; 0 uses
  tail call void @exit(i32 noundef 1) #25
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.kn = getelementptr inbounds nuw i8, ptr %.0.i, i64 60
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !46
  %i.kp = and i32 %i.ko, 1
  %.not11.i = icmp eq i32 %i.kp, 0
  br i1 %.not11.i, label %bb.bw, label %bb.cc, !llvm.loop !54

bb.cc:                                            ; preds = %bb.cb
  %.b.i63 = load i1, ptr @verbose_opt, align 1
  br i1 %.b.i63, label %bb.cd, label %parse.exit

bb.cd:                                            ; preds = %bb.cc
  %i.kq = load i32, ptr @nr_actions, align 4, !tbaa !40
  %i.kr = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.101, i32 noundef %i.kq) ; 0 uses
  br label %parse.exit

parse.exit:                                       ; preds = %bb.cc, %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.b.i64 = load i1, ptr @debug_opt, align 1
  br i1 %.b.i64, label %bb.ce, label %dump_elements.exit

bb.ce:                                            ; preds = %parse.exit
  %i.ks = load ptr, ptr @type_list, align 8, !tbaa !42
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !51
  tail call fastcc void @dump_element(ptr noundef %i.ku, i32 noundef 0)
  br label %dump_elements.exit

dump_elements.exit:                               ; preds = %parse.exit, %bb.ce
  %i.kv = load ptr, ptr @outputname, align 8, !tbaa !9
  %i.kw = tail call noalias ptr @fopen(ptr noundef %i.kv, ptr noundef nonnull @.str.5) ; 32 uses
  %.not53 = icmp eq ptr %i.kw, null
  br i1 %.not53, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %dump_elements.exit
  %i.kx = load ptr, ptr @outputname, align 8, !tbaa !9
  tail call void @perror(ptr noundef %i.kx) #26
  tail call void @exit(i32 noundef 1) #25
  unreachable

bb.cg:                                            ; preds = %dump_elements.exit
  %i.ky = load ptr, ptr @headername, align 8, !tbaa !9
  %i.kz = tail call noalias ptr @fopen(ptr noundef %i.ky, ptr noundef nonnull @.str.5) ; 14 uses
  %.not54 = icmp eq ptr %i.kz, null
  br i1 %.not54, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.la = load ptr, ptr @headername, align 8, !tbaa !9
  tail call void @perror(ptr noundef %i.la) #26
  tail call void @exit(i32 noundef 1) #25
  unreachable

bb.ci:                                            ; preds = %bb.cg
  %i.lb = tail call i64 @fwrite(ptr nonnull @.str.148, i64 3, i64 1, ptr nonnull %i.kz) ; 0 uses
  %i.lc = tail call i64 @fwrite(ptr nonnull @.str.149, i64 58, i64 1, ptr nonnull %i.kz) ; 0 uses
  %i.ld = tail call i64 @fwrite(ptr nonnull @.str.150, i64 3, i64 1, ptr nonnull %i.kz) ; 0 uses
  %i.le = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %i.lf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kz, ptr noundef nonnull @.str.151, ptr noundef %i.le) #22 ; 0 uses
  %i.lg = tail call i64 @fwrite(ptr nonnull @.str.152, i64 4, i64 1, ptr nonnull %i.kz) ; 0 uses
  %i.lh = tail call i64 @fwrite(ptr nonnull @.str.153, i64 32, i64 1, ptr nonnull %i.kz) ; 0 uses
  %fputc.i = tail call i32 @fputc(i32 10, ptr nonnull %i.kz) ; 0 uses
  %i.li = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %i.lj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kz, ptr noundef nonnull @.str.155, ptr noundef %i.li) #22 ; 0 uses
  %i.lk = tail call i32 @ferror(ptr noundef nonnull %i.kz) #22
  %.not.i65 = icmp eq i32 %i.lk, 0
  br i1 %.not.i65, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ll = load ptr, ptr @headername, align 8, !tbaa !9
  tail call void @perror(ptr noundef %i.ll) #26
  tail call void @exit(i32 noundef 1) #25
  unreachable

bb.ck:                                            ; preds = %bb.ci
  %i.lm = tail call i64 @fwrite(ptr nonnull @.str.148, i64 3, i64 1, ptr nonnull %i.kw) ; 0 uses
  %i.ln = tail call i64 @fwrite(ptr nonnull @.str.149, i64 58, i64 1, ptr nonnull %i.kw) ; 0 uses
  %i.lo = tail call i64 @fwrite(ptr nonnull @.str.150, i64 3, i64 1, ptr nonnull %i.kw) ; 0 uses
  %i.lp = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %i.lq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kw, ptr noundef nonnull @.str.151, ptr noundef %i.lp) #22 ; 0 uses
  %i.lr = tail call i64 @fwrite(ptr nonnull @.str.152, i64 4, i64 1, ptr nonnull %i.kw) ; 0 uses
  %i.ls = tail call i64 @fwrite(ptr nonnull @.str.156, i64 37, i64 1, ptr nonnull %i.kw) ; 0 uses
  %i.lt = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %i.lu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kw, ptr noundef nonnull @.str.157, ptr noundef %i.lt) #22 ; 0 uses
  %fputc62.i = tail call i32 @fputc(i32 10, ptr nonnull %i.kw) ; 0 uses
  %i.lv = tail call i32 @ferror(ptr noundef nonnull %i.kw) #22
  %.not63.i = icmp eq i32 %i.lv, 0
  br i1 %.not63.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lw = load ptr, ptr @outputname, align 8, !tbaa !9
  tail call void @perror(ptr noundef %i.lw) #26
  tail call void @exit(i32 noundef 1) #25
  unreachable

bb.cm:                                            ; preds = %bb.ck
  %fputc64.i = tail call i32 @fputc(i32 10, ptr nonnull %i.kz) ; 0 uses
  %.05975.i = load ptr, ptr @action_list, align 8, !tbaa !55 ; 2 uses
  %.not6576.i = icmp eq ptr %.05975.i, null
  br i1 %.not6576.i, label %._crit_edge.i67, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.cm, %.lr.ph.i66
  %.05978.i = phi ptr [ %.059.i, %.lr.ph.i66 ], [ %.05975.i, %bb.cm ] ; 3 uses
  %.077.i = phi i8 [ %i.lx, %.lr.ph.i66 ], [ 0, %bb.cm ] ; 2 uses
  %i.lx = add i8 %.077.i, 1
  %i.ly = getelementptr inbounds nuw i8, ptr %.05978.i, i64 16
  store i8 %.077.i, ptr %i.ly, align 8, !tbaa !56
  %i.lz = getelementptr inbounds nuw i8, ptr %.05978.i, i64 8
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !58
  %i.mb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kz, ptr noundef nonnull @.str.158, ptr noundef %i.ma) #22 ; 0 uses
  %.059.i = load ptr, ptr %.05978.i, align 8, !tbaa !55 ; 2 uses
  %.not65.i = icmp eq ptr %.059.i, null
  br i1 %.not65.i, label %._crit_edge.i67, label %.lr.ph.i66, !llvm.loop !59

._crit_edge.i67:                                  ; preds = %.lr.ph.i66, %bb.cm
  %fputc66.i = tail call i32 @fputc(i32 10, ptr nonnull %i.kz) ; 0 uses
  %i.mc = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %i.md = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kw, ptr noundef nonnull @.str.159, ptr noundef %i.mc) #22 ; 0 uses
  %.179.i = load ptr, ptr @action_list, align 8, !tbaa !55 ; 2 uses
  %.not6780.i = icmp eq ptr %.179.i, null
  br i1 %.not6780.i, label %._crit_edge84.i, label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %._crit_edge.i67, %.lr.ph83.i
  %.181.i = phi ptr [ %.1.i, %.lr.ph83.i ], [ %.179.i, %._crit_edge.i67 ] ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.181.i, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !58
  %i.mg = getelementptr inbounds nuw i8, ptr %.181.i, i64 16
  %i.mh = load i8, ptr %i.mg, align 8, !tbaa !56
  %i.mi = zext i8 %i.mh to i32
  %i.mj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kw, ptr noundef nonnull @.str.160, ptr noundef %i.mf, i32 noundef %i.mi) #22 ; 0 uses
  %.1.i = load ptr, ptr %.181.i, align 8, !tbaa !55 ; 2 uses
  %.not67.i = icmp eq ptr %.1.i, null
  br i1 %.not67.i, label %._crit_edge84.i, label %.lr.ph83.i, !llvm.loop !60

._crit_edge84.i:                                  ; preds = %.lr.ph83.i, %._crit_edge.i67
  %i.mk = load ptr, ptr @grammar_name, align 8, !tbaa !9
  %i.ml = load i32, ptr @nr_actions, align 4, !tbaa !40
  %i.mm = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kw, ptr noundef nonnull @.str.161, ptr noundef %i.mk, i32 noundef %i.ml) #22 ; 0 uses
  %i.mn = tail call i64 @fwrite(ptr nonnull @.str.162, i64 3, i64 1, ptr nonnull %i.kw) ; 0 uses
  %fputc68.i = tail call i32 @fputc(i32 10, ptr nonnull %i.kw) ; 0 uses
  %i.mo = load ptr, ptr @grammar_name, align 8, !tbaa !9 ; 2 uses
  %i.mp = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.kw, ptr noundef nonnull @.str.163, ptr noundef %i.mo, ptr noundef %i.mo) #22 ; 0 uses
  %.285.i = load ptr, ptr @action_list, align 8, !tbaa !55 ; 2 uses
end_hunk_0
