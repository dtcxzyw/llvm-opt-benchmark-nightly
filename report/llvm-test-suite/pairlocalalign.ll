Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pairlocalalign?download=true
inline.NumInlined: 26
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.au
  %.sink.i.i.i = phi i8 [ 97, %bb.au ], [ 97, %bb.au ], [ 117, %bb.av ], [ 103, %bb.aw ], [ 99, %bb.ax ], [ 110, %bb.ay ]
  store i8 %.sink.i.i.i, ptr %.0.i.i.i, align 1, !tbaa !125
  %i.gg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1
  br label %bb.au, !llvm.loop !154

t2u.exit.i.i:                                     ; preds = %bb.au
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !128
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bf, %t2u.exit.i.i
  %.0.i.i.i.1 = phi ptr [ %i.gj, %t2u.exit.i.i ], [ %i.gl, %bb.bf ] ; 3 uses
  %i.gk = load i8, ptr %.0.i.i.i.1, align 1, !tbaa !125
  switch i8 %i.gk, label %bb.be [
    i8 0, label %t2u.exit.i.i.1
    i8 65, label %bb.bf
    i8 97, label %bb.bf
    i8 84, label %bb.bd
    i8 116, label %bb.bd
    i8 85, label %bb.bd
    i8 117, label %bb.bd
    i8 71, label %bb.bc
    i8 103, label %bb.bc
    i8 67, label %bb.bb
    i8 99, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  br label %bb.bf

bb.bc:                                            ; preds = %bb.ba, %bb.ba
  br label %bb.bf

bb.bd:                                            ; preds = %bb.ba, %bb.ba, %bb.ba, %bb.ba
  br label %bb.bf

t2u.exit.i.i.1:                                   ; preds = %bb.ba
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter166.next.1 = add i64 %niter166, 2         ; 2 uses
  %niter166.ncmp.1 = icmp eq i64 %niter166.next.1, %unroll_iter165
  br i1 %niter166.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !155

bb.be:                                            ; preds = %bb.ba
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ba
  %.sink.i.i.i.1 = phi i8 [ 97, %bb.ba ], [ 97, %bb.ba ], [ 117, %bb.bd ], [ 103, %bb.bc ], [ 99, %bb.bb ], [ 110, %bb.be ]
  store i8 %.sink.i.i.i.1, ptr %.0.i.i.i.1, align 1, !tbaa !125
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.1, i64 1
  br label %bb.ba, !llvm.loop !154

._crit_edge.i.i.unr-lcssa:                        ; preds = %t2u.exit.i.i.1
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod164 = trunc i32 %i.ga to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i.i.epil.init
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !128
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bl, %.lr.ph.i.i.epil.preheader
  %.0.i.i.i.epil = phi ptr [ %i.gn, %.lr.ph.i.i.epil.preheader ], [ %i.gp, %bb.bl ] ; 3 uses
  %i.go = load i8, ptr %.0.i.i.i.epil, align 1, !tbaa !125
  switch i8 %i.go, label %bb.bk [
    i8 0, label %._crit_edge.i.i
    i8 65, label %bb.bl
    i8 97, label %bb.bl
    i8 84, label %bb.bj
    i8 116, label %bb.bj
    i8 85, label %bb.bj
    i8 117, label %bb.bj
    i8 71, label %bb.bi
    i8 103, label %bb.bi
    i8 67, label %bb.bh
    i8 99, label %bb.bh
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  br label %bb.bl

bb.bi:                                            ; preds = %bb.bg, %bb.bg
  br label %bb.bl

bb.bj:                                            ; preds = %bb.bg, %bb.bg, %bb.bg, %bb.bg
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bg
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bg
  %.sink.i.i.i.epil = phi i8 [ 97, %bb.bg ], [ 97, %bb.bg ], [ 117, %bb.bj ], [ 103, %bb.bi ], [ 99, %bb.bh ], [ 110, %bb.bk ]
  store i8 %.sink.i.i.i.epil, ptr %.0.i.i.i.epil, align 1, !tbaa !125
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.epil, i64 1
  br label %bb.bg, !llvm.loop !154

._crit_edge.i.i:                                  ; preds = %bb.bg, %._crit_edge.i.i.unr-lcssa
  %i.gq = tail call noalias ptr @fopen(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58) ; 4 uses
  %.not.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i, label %bb.bm, label %.lr.ph19.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.at
  %i.gr = tail call noalias ptr @fopen(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58) ; 2 uses
  %.not28.i.i = icmp eq ptr %i.gr, null
  br i1 %.not28.i.i, label %bb.bm, label %._crit_edge20.i.i

bb.bm:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !133
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.63, i64 25, i64 1, ptr %i.gs) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

.lr.ph19.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph19.i.i
  %indvars.iv22.i.i = phi i64 [ %indvars.iv.next23.i.i, %.lr.ph19.i.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %indvars.iv.next23.i.i = add nuw nsw i64 %indvars.iv22.i.i, 1 ; 3 uses
  %i.gt = trunc nuw nsw i64 %indvars.iv.next23.i.i to i32
  %i.gu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.64, i32 noundef %i.gt) #20 ; 0 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv22.i.i
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !128
  %i.gx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.65, ptr noundef %i.gw) #20 ; 0 uses
  %exitcond26.not.i.i = icmp eq i64 %indvars.iv.next23.i.i, %wide.trip.count.i.i
  br i1 %exitcond26.not.i.i, label %._crit_edge20.i.i, label %.lr.ph19.i.i, !llvm.loop !156

._crit_edge20.i.i:                                ; preds = %.lr.ph19.i.i, %._crit_edge.thread.i.i
  %i.gy = phi ptr [ %i.gr, %._crit_edge.thread.i.i ], [ %i.gq, %.lr.ph19.i.i ]
  %i.gz = tail call i32 @fclose(ptr noundef nonnull %i.gy) ; 0 uses
  %i.ha = load ptr, ptr @whereispairalign, align 8, !tbaa !128
  %i.hb = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @callfoldalign.com, ptr noundef nonnull dereferenceable(1) @.str.66, ptr noundef %i.ha, ptr noundef nonnull @foldalignopt) #20 ; 0 uses
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !133
  %fwrite16.i.i = tail call i64 @fwrite(ptr nonnull @.str.67, i64 29, i64 1, ptr %i.hc) #21 ; 0 uses
  tail call void @abort() #24
  unreachable

bb.bn:                                            ; preds = %._crit_edge33.i
  %i.hd = load ptr, ptr @stderr, align 8, !tbaa !133
  %fwrite258.i = tail call i64 @fwrite(ptr nonnull @.str.49, i64 56, i64 1, ptr %i.hd) #21 ; 0 uses
  %i.he = load i32, ptr @njob, align 4, !tbaa !7
  tail call fastcc void @calllara(i32 noundef %i.he, ptr noundef readonly %i.du, ptr noundef nonnull @.str.50)
  unreachable

bb.bo:                                            ; preds = %._crit_edge33.i
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !133
  %fwrite260.i = tail call i64 @fwrite(ptr nonnull @.str.51, i64 57, i64 1, ptr %i.hf) #21 ; 0 uses
  %i.hg = load i32, ptr @njob, align 4, !tbaa !7
  tail call fastcc void @calllara(i32 noundef %i.hg, ptr noundef readonly %i.du, ptr noundef nonnull @.str.52)
  unreachable

bb.bp:                                            ; preds = %._crit_edge33.i
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !133
  %fwrite262.i = tail call i64 @fwrite(ptr nonnull @.str.53, i64 14, i64 1, ptr %i.hh) #21 ; 0 uses
  %i.hi = load i32, ptr @njob, align 4, !tbaa !7  ; 3 uses
  %i.hj = sext i32 %i.hi to i64
  %i.hk = tail call noalias ptr @calloc(i64 noundef %i.hj, i64 noundef 8) #23 ; 2 uses
  %i.hl = tail call noalias ptr @fopen(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.11) ; 8 uses
  %.not.i274.i = icmp eq ptr %i.hl, null
  br i1 %.not.i274.i, label %bb.bq, label %.preheader.i275.i

.preheader.i275.i:                                ; preds = %bb.bp
  %i.hm = icmp sgt i32 %i.hi, 0
  br i1 %i.hm, label %.lr.ph.preheader.i277.i, label %preparebpp.exit.i

.lr.ph.preheader.i277.i:                          ; preds = %.preheader.i275.i
  %wide.trip.count.i278.i = zext nneg i32 %i.hi to i64
  br label %.lr.ph.i279.i

bb.bq:                                            ; preds = %bb.bp
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !133
  %fwrite.i283.i = tail call i64 @fwrite(ptr nonnull @.str.72, i64 17, i64 1, ptr %i.hn) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

.lr.ph.i279.i:                                    ; preds = %readhat4.exit.i.i, %.lr.ph.preheader.i277.i
  %indvars.iv.i280.i = phi i64 [ 0, %.lr.ph.preheader.i277.i ], [ %indvars.iv.next.i281.i, %readhat4.exit.i.i ] ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.i280.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.hp = call i32 @getc(ptr noundef nonnull %i.hl)
  %.not.i.i.i = icmp eq i32 %i.hp, 62
  br i1 %.not.i.i.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %.lr.ph.i279.i
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !133
  %fwrite.i.i.i = call i64 @fwrite(ptr nonnull @.str.73, i64 13, i64 1, ptr %i.hq) #21 ; 0 uses
  call void @exit(i32 noundef 1) #22
  unreachable

bb.bs:                                            ; preds = %.lr.ph.i279.i
  %i.hr = call i32 @ungetc(i32 noundef 62, ptr noundef nonnull %i.hl) ; 0 uses
  %i.hs = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 999, ptr noundef nonnull %i.hl) ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bu, %bb.bs
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.bu ], [ 0, %bb.bs ] ; 5 uses
  %i.ht = call i32 @getc(ptr noundef nonnull %i.hl) ; 2 uses
  %i.hu = call i32 @ungetc(i32 noundef %i.ht, ptr noundef nonnull %i.hl) ; 0 uses
  switch i32 %i.ht, label %bb.bu [
    i32 -1, label %readhat4.exit.i.i
    i32 62, label %readhat4.exit.i.i
  ]

bb.bu:                                            ; preds = %bb.bt
  %i.hv = call ptr @fgets(ptr noundef nonnull %i.c, i32 noundef 999, ptr noundef nonnull %i.hl) ; 0 uses
  %i.hw = load ptr, ptr %i.ho, align 8, !tbaa !173
  %2 = shl i64 %indvars.iv.i.i.i, 3
  %3 = add i64 %2, 16
  %i.hx = call ptr @realloc(ptr noundef %i.hw, i64 noundef %3) #25 ; 2 uses
  store ptr %i.hx, ptr %i.ho, align 8, !tbaa !173
  %i.hy = call noalias dereferenceable_or_null(100) ptr @calloc(i64 noundef 100, i64 noundef 1) #23 ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %indvars.iv.i.i.i
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !128
  %i.ia = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.hy, ptr noundef nonnull dereferenceable(1) %i.c) #20 ; 0 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br label %bb.bt

readhat4.exit.i.i:                                ; preds = %bb.bt, %bb.bt
  %i.ib = load ptr, ptr %i.ho, align 8, !tbaa !173
  %4 = shl i64 %indvars.iv.i.i.i, 3
  %5 = add i64 %4, 16
  %6 = and i64 %5, 34359738360
  %i.ic = call ptr @realloc(ptr noundef %i.ib, i64 noundef %6) #25 ; 2 uses
  store ptr %i.ic, ptr %i.ho, align 8, !tbaa !173
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv.i.i.i
  store ptr null, ptr %i.id, align 8, !tbaa !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %indvars.iv.next.i281.i = add nuw nsw i64 %indvars.iv.i280.i, 1 ; 2 uses
  %exitcond.not.i282.i = icmp eq i64 %indvars.iv.next.i281.i, %wide.trip.count.i278.i
  br i1 %exitcond.not.i282.i, label %preparebpp.exit.i, label %.lr.ph.i279.i, !llvm.loop !157

preparebpp.exit.i:                                ; preds = %readhat4.exit.i.i, %.preheader.i275.i
  %i.ie = call i32 @fclose(ptr noundef nonnull %i.hl) ; 0 uses
  %i.if = load ptr, ptr @stderr, align 8, !tbaa !133
  %fwrite263.i = call i64 @fwrite(ptr nonnull @.str.17, i64 6, i64 1, ptr %i.if) #21 ; 0 uses
  %i.ig = load ptr, ptr @stderr, align 8, !tbaa !133
  %fwrite264.i = call i64 @fwrite(ptr nonnull @.str.54, i64 71, i64 1, ptr %i.ig) #21 ; 0 uses
  %.pre140.i = load i32, ptr @njob, align 4, !tbaa !7
  br label %bb.bv

bb.bv:                                            ; preds = %preparebpp.exit.i, %._crit_edge33.i
  %i.ih = phi i32 [ %.pre140.i, %preparebpp.exit.i ], [ %i.fw, %._crit_edge33.i ] ; 4 uses
  %.0230.i = phi ptr [ %i.hk, %preparebpp.exit.i ], [ undef, %._crit_edge33.i ] ; 4 uses
  %i.ii = icmp sgt i32 %i.ih, 1
  br i1 %i.ii, label %.lr.ph45.i, label %.preheader5.i

.lr.ph45.i:                                       ; preds = %bb.bv
  %i.ij = add nsw i32 %i.ih, -1
  %i.ik = sext i32 %i.dt to i64                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.ij to i64
  br label %bb.bw

.loopexit6.i:                                     ; preds = %bb.el, %bb.bw
  %i.il = phi i32 [ %i.it, %bb.bw ], [ %i.ra, %bb.el ] ; 2 uses
  %.1.lcssa.i = phi float [ %.023343.i, %bb.bw ], [ %.3.i, %bb.el ]
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader5.i, label %bb.bw, !llvm.loop !158

.preheader5.i:                                    ; preds = %.loopexit6.i, %bb.bv
  %i.im = phi i32 [ %i.ih, %bb.bv ], [ %i.il, %.loopexit6.i ] ; 4 uses
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %.lr.ph54.i, label %._crit_edge63.i

.lr.ph54.i:                                       ; preds = %.preheader5.i
  %i.io = load ptr, ptr @pairalign.distancemtx, align 8, !tbaa !183 ; 3 uses
  %wide.trip.count113.i = zext nneg i32 %i.im to i64 ; 2 uses
  br label %bb.em

bb.bw:                                            ; preds = %.loopexit6.i, %.lr.ph45.i
  %i.ip = phi i32 [ %i.ih, %.lr.ph45.i ], [ %i.il, %.loopexit6.i ]
  %indvars.iv107.i = phi i64 [ 0, %.lr.ph45.i ], [ %indvars.iv.next108.i, %.loopexit6.i ] ; 10 uses
  %indvars.iv102.i = phi i64 [ 1, %.lr.ph45.i ], [ %indvars.iv.next103.i, %.loopexit6.i ] ; 2 uses
  %.023343.i = phi float [ 0.000000e+00, %.lr.ph45.i ], [ %.1.lcssa.i, %.loopexit6.i ] ; 2 uses
  %i.iq = load ptr, ptr @stderr, align 8, !tbaa !133
  %i.ir = trunc nuw nsw i64 %indvars.iv107.i to i32 ; 3 uses
  %i.is = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iq, ptr noundef nonnull @.str.55, i32 noundef %i.ir, i32 noundef %i.ip) #19 ; 0 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 4 uses
  %i.it = load i32, ptr @njob, align 4, !tbaa !7  ; 2 uses
  %i.iu = sext i32 %i.it to i64
  %i.iv = icmp slt i64 %indvars.iv.next108.i, %i.iu
  br i1 %i.iv, label %.lr.ph40.i, label %.loopexit6.i

.lr.ph40.i:                                       ; preds = %bb.bw
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv107.i
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv107.i
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv107.i ; 2 uses
  %i.iz = getelementptr inbounds nuw [256 x i8], ptr @main.name, i64 %indvars.iv107.i
  %i.ja = trunc nuw nsw i64 %indvars.iv.next108.i to i32 ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.el, %.lr.ph40.i
  %indvars.iv104.i = phi i64 [ %indvars.iv102.i, %.lr.ph40.i ], [ %indvars.iv.next105.i, %bb.el ] ; 11 uses
  %.138.i = phi float [ %.023343.i, %.lr.ph40.i ], [ %.3.i, %bb.el ] ; 2 uses
  %i.jb = load ptr, ptr %i.iw, align 8, !tbaa !128 ; 2 uses
  %char0.i = load i8, ptr %i.jb, align 1
  %i.jc = icmp eq i8 %char0.i, 0
  br i1 %i.jc, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv104.i ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !128
  %char0269.i = load i8, ptr %i.je, align 1
  %i.jf = icmp eq i8 %char0269.i, 0
  br i1 %i.jf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.jg = load ptr, ptr @pairalign.distancemtx, align 8, !tbaa !183
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv107.i
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !175
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.ji, i64 %indvars.iv104.i
  store double -9.999000e+03, ptr %i.jj, align 8, !tbaa !130
  br label %bb.el

bb.ca:                                            ; preds = %bb.by
  %i.jk = load ptr, ptr %i.ix, align 8, !tbaa !128
  %i.jl = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.jk, ptr noundef nonnull dereferenceable(1) %i.jb) #20 ; 0 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv104.i
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !128
  %i.jo = load ptr, ptr %i.jd, align 8, !tbaa !128
  %i.jp = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.jn, ptr noundef nonnull dereferenceable(1) %i.jo) #20 ; 0 uses
  %i.jq = load ptr, ptr @pairalign.pair, align 8, !tbaa !173
  %i.jr = load ptr, ptr @pairalign.effarr1, align 8, !tbaa !175
  %i.js = load ptr, ptr @pairalign.indication1, align 8, !tbaa !128
  %i.jt = call i32 @conjuctionfortbfast(ptr noundef %i.jq, i32 noundef %i.ir, ptr noundef %i.dv, ptr noundef %i.dw, ptr noundef %i.jr, ptr noundef %i.dy, ptr noundef %i.js) #20 ; 2 uses
  %i.ju = load ptr, ptr @pairalign.pair, align 8, !tbaa !173
  %i.jv = load ptr, ptr @pairalign.effarr2, align 8, !tbaa !175
  %i.jw = load ptr, ptr @pairalign.indication2, align 8, !tbaa !128
  %i.jx = trunc nuw nsw i64 %indvars.iv104.i to i32 ; 4 uses
  %i.jy = call i32 @conjuctionfortbfast(ptr noundef %i.ju, i32 noundef %i.jx, ptr noundef %i.dv, ptr noundef %i.dx, ptr noundef %i.jv, ptr noundef %i.dy, ptr noundef %i.jw) #20 ; 2 uses
  %i.jz = load i8, ptr @use_fft, align 1, !tbaa !125
  %.not270.i = icmp eq i8 %i.jz, 0
  br i1 %.not270.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.ka = load ptr, ptr @pairalign.effarr1, align 8, !tbaa !175
  %i.kb = load ptr, ptr @pairalign.effarr2, align 8, !tbaa !175
  %i.kc = call float @Falign(ptr noundef %i.dw, ptr noundef %i.dx, ptr noundef %i.ka, ptr noundef %i.kb, i32 noundef %i.jt, i32 noundef %i.jy, i32 noundef %i.dt, ptr noundef nonnull %i.f) #20
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  br label %thread-pre-split.i

bb.cc:                                            ; preds = %bb.ca
  %i.kd = load i8, ptr @alg, align 1, !tbaa !125  ; 2 uses
  switch i8 %i.kd, label %bb.eb [
    i8 97, label %bb.cd
    i8 116, label %bb.ce
    i8 65, label %bb.cf
    i8 78, label %bb.cg
    i8 75, label %bb.ch
    i8 76, label %bb.ci
    i8 72, label %bb.cj
    i8 66, label %bb.cs
    i8 84, label %bb.cs
    i8 115, label %bb.dx
    i8 77, label %bb.ea
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.ke = load ptr, ptr @pairalign.effarr1, align 8, !tbaa !175
  %i.kf = load ptr, ptr @pairalign.effarr2, align 8, !tbaa !175
  %i.kg = call float (ptr, ptr, ptr, ptr, i32, i32, i32, ...) @Aalign(ptr noundef %i.dw, ptr noundef %i.dx, ptr noundef %i.ke, ptr noundef %i.kf, i32 noundef %i.jt, i32 noundef %i.jy, i32 noundef %i.dt) #20
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  br label %thread-pre-split.i

bb.ce:                                            ; preds = %bb.cc
  %i.kh = load i32, ptr @penalty, align 4, !tbaa !7
  %i.ki = load i32, ptr @penalty_ex, align 4, !tbaa !7
  %i.kj = call float @G__align11_noalign(ptr noundef nonnull @amino_dis, i32 noundef %i.kh, i32 noundef %i.ki, ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt) #20
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  br label %thread-pre-split.i

bb.cf:                                            ; preds = %bb.cc
  %i.kk = call float @G__align11(ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt) #20
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  br label %thread-pre-split.i

bb.cg:                                            ; preds = %bb.cc
  %i.kl = load i32, ptr @penalty, align 4, !tbaa !7
  %i.km = load i32, ptr @penalty_ex, align 4, !tbaa !7
  %i.kn = call float @G__align11_noalign(ptr noundef nonnull @amino_dis, i32 noundef %i.kl, i32 noundef %i.km, ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt) #20
  %i.ko = call float @genL__align11(ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #20 ; 0 uses
  br label %thread-pre-split.i

bb.ch:                                            ; preds = %bb.cc
  %i.kp = call float @genG__align11(ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt) #20
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  br label %thread-pre-split.i

bb.ci:                                            ; preds = %bb.cc
  %i.kq = load i32, ptr @penalty, align 4, !tbaa !7
  %i.kr = load i32, ptr @penalty_ex, align 4, !tbaa !7
  %i.ks = call float @G__align11_noalign(ptr noundef nonnull @amino_dis, i32 noundef %i.kq, i32 noundef %i.kr, ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt) #20
  %i.kt = call float @L__align11(ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #20 ; 0 uses
  br label %thread-pre-split.i

bb.cj:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ku = load ptr, ptr @recallpairfoldalign.fp, align 8, !tbaa !133 ; 2 uses
  %i.kv = icmp eq ptr %i.ku, null
  br i1 %i.kv, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
  %i.kw = call noalias ptr @fopen(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.11) ; 3 uses
  store ptr %i.kw, ptr @recallpairfoldalign.fp, align 8, !tbaa !133
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ky = load ptr, ptr @stderr, align 8, !tbaa !133
  %fwrite31.i.i = call i64 @fwrite(ptr nonnull @.str.75, i64 26, i64 1, ptr %i.ky) #21 ; 0 uses
  call void @exit(i32 noundef 1) #22
  unreachable

bb.cm:                                            ; preds = %bb.ck, %bb.cj
  %i.kz = phi ptr [ %i.kw, %bb.ck ], [ %i.ku, %bb.cj ]
  %i.la = call noalias ptr @calloc(i64 noundef %i.ik, i64 noundef 1) #23 ; 4 uses
  %i.lb = call noalias ptr @calloc(i64 noundef %i.ik, i64 noundef 1) #23 ; 3 uses
  %i.lc = load ptr, ptr %i.dw, align 8, !tbaa !128
  %i.ld = load ptr, ptr %i.dx, align 8, !tbaa !128
end_hunk_0
