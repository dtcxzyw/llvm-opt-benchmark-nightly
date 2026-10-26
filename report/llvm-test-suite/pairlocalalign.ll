Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/pairlocalalign?download=true
inline.NumInlined: 26
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
t2u.exit.i.i:                                     ; preds = %bb.au
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !11
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bf, %t2u.exit.i.i
  %.0.i.i.i.1 = phi ptr [ %i.gj, %t2u.exit.i.i ], [ %i.gl, %bb.bf ] ; 3 uses
  %i.gk = load i8, ptr %.0.i.i.i.1, align 1, !tbaa !8
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
  br i1 %niter166.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !36

bb.be:                                            ; preds = %bb.ba
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ba
  %.sink.i.i.i.1 = phi i8 [ 97, %bb.ba ], [ 97, %bb.ba ], [ 117, %bb.bd ], [ 103, %bb.bc ], [ 99, %bb.bb ], [ 110, %bb.be ]
  store i8 %.sink.i.i.i.1, ptr %.0.i.i.i.1, align 1, !tbaa !8
  %i.gl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.1, i64 1
  br label %bb.ba, !llvm.loop !35

._crit_edge.i.i.unr-lcssa:                        ; preds = %t2u.exit.i.i.1
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %._crit_edge.i.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod164 = trunc i32 %i.ga to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i.i.epil.init
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !11
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bl, %.lr.ph.i.i.epil.preheader
  %.0.i.i.i.epil = phi ptr [ %i.gn, %.lr.ph.i.i.epil.preheader ], [ %i.gp, %bb.bl ] ; 3 uses
  %i.go = load i8, ptr %.0.i.i.i.epil, align 1, !tbaa !8
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
  store i8 %.sink.i.i.i.epil, ptr %.0.i.i.i.epil, align 1, !tbaa !8
  %i.gp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.epil, i64 1
  br label %bb.bg, !llvm.loop !35

._crit_edge.i.i:                                  ; preds = %bb.bg, %._crit_edge.i.i.unr-lcssa
  %i.gq = tail call noalias ptr @fopen(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58) ; 4 uses
  %.not.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i.i, label %bb.bm, label %.lr.ph19.i.i

._crit_edge.thread.i.i:                           ; preds = %bb.at
  %i.gr = tail call noalias ptr @fopen(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.58) ; 2 uses
  %.not28.i.i = icmp eq ptr %i.gr, null
  br i1 %.not28.i.i, label %bb.bm, label %._crit_edge20.i.i

bb.bm:                                            ; preds = %._crit_edge.thread.i.i, %._crit_edge.i.i
  %i.gs = load ptr, ptr @stderr, align 8, !tbaa !16
  %fwrite.i.i = tail call i64 @fwrite(ptr nonnull @.str.63, i64 25, i64 1, ptr %i.gs) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

.lr.ph19.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph19.i.i
  %indvars.iv22.i.i = phi i64 [ %indvars.iv.next23.i.i, %.lr.ph19.i.i ], [ 0, %._crit_edge.i.i ] ; 2 uses
  %indvars.iv.next23.i.i = add nuw nsw i64 %indvars.iv22.i.i, 1 ; 3 uses
  %i.gt = trunc nuw nsw i64 %indvars.iv.next23.i.i to i32
  %i.gu = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.64, i32 noundef %i.gt) #20 ; 0 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv22.i.i
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !11
  %i.gx = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.gq, ptr noundef nonnull @.str.65, ptr noundef %i.gw) #20 ; 0 uses
  %exitcond26.not.i.i = icmp eq i64 %indvars.iv.next23.i.i, %wide.trip.count.i.i
  br i1 %exitcond26.not.i.i, label %._crit_edge20.i.i, label %.lr.ph19.i.i, !llvm.loop !37

._crit_edge20.i.i:                                ; preds = %.lr.ph19.i.i, %._crit_edge.thread.i.i
  %i.gy = phi ptr [ %i.gr, %._crit_edge.thread.i.i ], [ %i.gq, %.lr.ph19.i.i ]
  %i.gz = tail call i32 @fclose(ptr noundef nonnull %i.gy) ; 0 uses
  %i.ha = load ptr, ptr @whereispairalign, align 8, !tbaa !11
  %i.hb = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @callfoldalign.com, ptr noundef nonnull dereferenceable(1) @.str.66, ptr noundef %i.ha, ptr noundef nonnull @foldalignopt) #20 ; 0 uses
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !16
  %fwrite16.i.i = tail call i64 @fwrite(ptr nonnull @.str.67, i64 29, i64 1, ptr %i.hc) #21 ; 0 uses
  tail call void @abort() #24
  unreachable

bb.bn:                                            ; preds = %._crit_edge33.i
  %i.hd = load ptr, ptr @stderr, align 8, !tbaa !16
  %fwrite258.i = tail call i64 @fwrite(ptr nonnull @.str.49, i64 56, i64 1, ptr %i.hd) #21 ; 0 uses
  %i.he = load i32, ptr @njob, align 4, !tbaa !7
  tail call fastcc void @calllara(i32 noundef %i.he, ptr noundef readonly %i.du, ptr noundef nonnull @.str.50)
  unreachable

bb.bo:                                            ; preds = %._crit_edge33.i
  %i.hf = load ptr, ptr @stderr, align 8, !tbaa !16
  %fwrite260.i = tail call i64 @fwrite(ptr nonnull @.str.51, i64 57, i64 1, ptr %i.hf) #21 ; 0 uses
  %i.hg = load i32, ptr @njob, align 4, !tbaa !7
  tail call fastcc void @calllara(i32 noundef %i.hg, ptr noundef readonly %i.du, ptr noundef nonnull @.str.52)
  unreachable

bb.bp:                                            ; preds = %._crit_edge33.i
  %i.hh = load ptr, ptr @stderr, align 8, !tbaa !16
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
  %i.hn = load ptr, ptr @stderr, align 8, !tbaa !16
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
  %i.hq = load ptr, ptr @stderr, align 8, !tbaa !16
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
  %i.hw = load ptr, ptr %i.ho, align 8, !tbaa !53
  %i.hx = shl nuw nsw i64 %indvars.iv.i.i.i, 3
  %i.hy = add nuw i64 %i.hx, 16
  %i.hz = call ptr @realloc(ptr noundef %i.hw, i64 noundef %i.hy) #25 ; 2 uses
  store ptr %i.hz, ptr %i.ho, align 8, !tbaa !53
  %i.ia = call noalias dereferenceable_or_null(100) ptr @calloc(i64 noundef 100, i64 noundef 1) #23 ; 2 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %indvars.iv.i.i.i
  store ptr %i.ia, ptr %i.ib, align 8, !tbaa !11
  %i.ic = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ia, ptr noundef nonnull dereferenceable(1) %i.c) #20 ; 0 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  br label %bb.bt

readhat4.exit.i.i:                                ; preds = %bb.bt, %bb.bt
  %i.id = load ptr, ptr %i.ho, align 8, !tbaa !53
  %i.ie = shl i64 %indvars.iv.i.i.i, 3
  %i.if = add i64 %i.ie, 16
  %i.ig = and i64 %i.if, 34359738360
  %i.ih = call ptr @realloc(ptr noundef %i.id, i64 noundef %i.ig) #25 ; 2 uses
  store ptr %i.ih, ptr %i.ho, align 8, !tbaa !53
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.ih, i64 %indvars.iv.i.i.i
  store ptr null, ptr %i.ii, align 8, !tbaa !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %indvars.iv.next.i281.i = add nuw nsw i64 %indvars.iv.i280.i, 1 ; 2 uses
  %exitcond.not.i282.i = icmp eq i64 %indvars.iv.next.i281.i, %wide.trip.count.i278.i
  br i1 %exitcond.not.i282.i, label %preparebpp.exit.i, label %.lr.ph.i279.i, !llvm.loop !38

preparebpp.exit.i:                                ; preds = %readhat4.exit.i.i, %.preheader.i275.i
  %i.ij = call i32 @fclose(ptr noundef nonnull %i.hl) ; 0 uses
  %i.ik = load ptr, ptr @stderr, align 8, !tbaa !16
  %fwrite263.i = call i64 @fwrite(ptr nonnull @.str.17, i64 6, i64 1, ptr %i.ik) #21 ; 0 uses
  %i.il = load ptr, ptr @stderr, align 8, !tbaa !16
  %fwrite264.i = call i64 @fwrite(ptr nonnull @.str.54, i64 71, i64 1, ptr %i.il) #21 ; 0 uses
  %.pre140.i = load i32, ptr @njob, align 4, !tbaa !7
  br label %bb.bv

bb.bv:                                            ; preds = %preparebpp.exit.i, %._crit_edge33.i
  %i.im = phi i32 [ %.pre140.i, %preparebpp.exit.i ], [ %i.fw, %._crit_edge33.i ] ; 4 uses
  %.0230.i = phi ptr [ %i.hk, %preparebpp.exit.i ], [ undef, %._crit_edge33.i ] ; 4 uses
  %i.in = icmp sgt i32 %i.im, 1
  br i1 %i.in, label %.lr.ph45.i, label %.preheader5.i

.lr.ph45.i:                                       ; preds = %bb.bv
  %i.io = add nsw i32 %i.im, -1
  %i.ip = sext i32 %i.dt to i64                   ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.io to i64
  br label %bb.bw

.loopexit6.i:                                     ; preds = %bb.el, %bb.bw
  %i.iq = phi i32 [ %i.iy, %bb.bw ], [ %i.rf, %bb.el ] ; 2 uses
  %.1.lcssa.i = phi float [ %.023343.i, %bb.bw ], [ %.3.i, %bb.el ]
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next108.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader5.i, label %bb.bw, !llvm.loop !39

.preheader5.i:                                    ; preds = %.loopexit6.i, %bb.bv
  %i.ir = phi i32 [ %i.im, %bb.bv ], [ %i.iq, %.loopexit6.i ] ; 4 uses
  %i.is = icmp sgt i32 %i.ir, 0
  br i1 %i.is, label %.lr.ph54.i, label %._crit_edge63.i

.lr.ph54.i:                                       ; preds = %.preheader5.i
  %i.it = load ptr, ptr @pairalign.distancemtx, align 8, !tbaa !63 ; 3 uses
  %wide.trip.count113.i = zext nneg i32 %i.ir to i64 ; 2 uses
  br label %bb.em

bb.bw:                                            ; preds = %.loopexit6.i, %.lr.ph45.i
  %i.iu = phi i32 [ %i.im, %.lr.ph45.i ], [ %i.iq, %.loopexit6.i ]
  %indvars.iv107.i = phi i64 [ 0, %.lr.ph45.i ], [ %indvars.iv.next108.i, %.loopexit6.i ] ; 10 uses
  %indvars.iv102.i = phi i64 [ 1, %.lr.ph45.i ], [ %indvars.iv.next103.i, %.loopexit6.i ] ; 2 uses
  %.023343.i = phi float [ 0.000000e+00, %.lr.ph45.i ], [ %.1.lcssa.i, %.loopexit6.i ] ; 2 uses
  %i.iv = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.iw = trunc nuw nsw i64 %indvars.iv107.i to i32 ; 3 uses
  %i.ix = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.iv, ptr noundef nonnull @.str.55, i32 noundef %i.iw, i32 noundef %i.iu) #19 ; 0 uses
  %indvars.iv.next108.i = add nuw nsw i64 %indvars.iv107.i, 1 ; 4 uses
  %i.iy = load i32, ptr @njob, align 4, !tbaa !7  ; 2 uses
  %i.iz = sext i32 %i.iy to i64
  %i.ja = icmp slt i64 %indvars.iv.next108.i, %i.iz
  br i1 %i.ja, label %.lr.ph40.i, label %.loopexit6.i

.lr.ph40.i:                                       ; preds = %bb.bw
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv107.i
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv107.i
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv107.i ; 2 uses
  %i.je = getelementptr inbounds nuw [256 x i8], ptr @main.name, i64 %indvars.iv107.i
  %i.jf = trunc nuw nsw i64 %indvars.iv.next108.i to i32 ; 2 uses
  br label %bb.bx

bb.bx:                                            ; preds = %bb.el, %.lr.ph40.i
  %indvars.iv104.i = phi i64 [ %indvars.iv102.i, %.lr.ph40.i ], [ %indvars.iv.next105.i, %bb.el ] ; 11 uses
  %.138.i = phi float [ %.023343.i, %.lr.ph40.i ], [ %.3.i, %bb.el ] ; 2 uses
  %i.jg = load ptr, ptr %i.jb, align 8, !tbaa !11 ; 2 uses
  %char0.i = load i8, ptr %i.jg, align 1
  %i.jh = icmp eq i8 %char0.i, 0
  br i1 %i.jh, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv104.i ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !11
  %char0269.i = load i8, ptr %i.jj, align 1
  %i.jk = icmp eq i8 %char0269.i, 0
  br i1 %i.jk, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.jl = load ptr, ptr @pairalign.distancemtx, align 8, !tbaa !63
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %indvars.iv107.i
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !55
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %indvars.iv104.i
  store double -9.999000e+03, ptr %i.jo, align 8, !tbaa !13
  br label %bb.el

bb.ca:                                            ; preds = %bb.by
  %i.jp = load ptr, ptr %i.jc, align 8, !tbaa !11
  %i.jq = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.jp, ptr noundef nonnull dereferenceable(1) %i.jg) #20 ; 0 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv104.i
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !11
  %i.jt = load ptr, ptr %i.ji, align 8, !tbaa !11
  %i.ju = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.js, ptr noundef nonnull dereferenceable(1) %i.jt) #20 ; 0 uses
  %i.jv = load ptr, ptr @pairalign.pair, align 8, !tbaa !53
  %i.jw = load ptr, ptr @pairalign.effarr1, align 8, !tbaa !55
  %i.jx = load ptr, ptr @pairalign.indication1, align 8, !tbaa !11
  %i.jy = call i32 @conjuctionfortbfast(ptr noundef %i.jv, i32 noundef %i.iw, ptr noundef %i.dv, ptr noundef %i.dw, ptr noundef %i.jw, ptr noundef %i.dy, ptr noundef %i.jx) #20 ; 2 uses
  %i.jz = load ptr, ptr @pairalign.pair, align 8, !tbaa !53
  %i.ka = load ptr, ptr @pairalign.effarr2, align 8, !tbaa !55
  %i.kb = load ptr, ptr @pairalign.indication2, align 8, !tbaa !11
  %i.kc = trunc nuw nsw i64 %indvars.iv104.i to i32 ; 4 uses
  %i.kd = call i32 @conjuctionfortbfast(ptr noundef %i.jz, i32 noundef %i.kc, ptr noundef %i.dv, ptr noundef %i.dx, ptr noundef %i.ka, ptr noundef %i.dy, ptr noundef %i.kb) #20 ; 2 uses
  %i.ke = load i8, ptr @use_fft, align 1, !tbaa !8
  %.not270.i = icmp eq i8 %i.ke, 0
  br i1 %.not270.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kf = load ptr, ptr @pairalign.effarr1, align 8, !tbaa !55
  %i.kg = load ptr, ptr @pairalign.effarr2, align 8, !tbaa !55
  %i.kh = call float @Falign(ptr noundef %i.dw, ptr noundef %i.dx, ptr noundef %i.kf, ptr noundef %i.kg, i32 noundef %i.jy, i32 noundef %i.kd, i32 noundef %i.dt, ptr noundef nonnull %i.f) #20
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  br label %thread-pre-split.i

bb.cc:                                            ; preds = %bb.ca
  %i.ki = load i8, ptr @alg, align 1, !tbaa !8    ; 2 uses
  switch i8 %i.ki, label %bb.eb [
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
  %i.kj = load ptr, ptr @pairalign.effarr1, align 8, !tbaa !55
  %i.kk = load ptr, ptr @pairalign.effarr2, align 8, !tbaa !55
  %i.kl = call float (ptr, ptr, ptr, ptr, i32, i32, i32, ...) @Aalign(ptr noundef %i.dw, ptr noundef %i.dx, ptr noundef %i.kj, ptr noundef %i.kk, i32 noundef %i.jy, i32 noundef %i.kd, i32 noundef %i.dt) #20
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  br label %thread-pre-split.i

bb.ce:                                            ; preds = %bb.cc
  %i.km = load i32, ptr @penalty, align 4, !tbaa !7
  %i.kn = load i32, ptr @penalty_ex, align 4, !tbaa !7
  %i.ko = call float @G__align11_noalign(ptr noundef nonnull @amino_dis, i32 noundef %i.km, i32 noundef %i.kn, ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt) #20
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  br label %thread-pre-split.i

bb.cf:                                            ; preds = %bb.cc
  %i.kp = call float @G__align11(ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt) #20
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  br label %thread-pre-split.i

bb.cg:                                            ; preds = %bb.cc
  %i.kq = load i32, ptr @penalty, align 4, !tbaa !7
  %i.kr = load i32, ptr @penalty_ex, align 4, !tbaa !7
  %i.ks = call float @G__align11_noalign(ptr noundef nonnull @amino_dis, i32 noundef %i.kq, i32 noundef %i.kr, ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt) #20
  %i.kt = call float @genL__align11(ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #20 ; 0 uses
  br label %thread-pre-split.i

bb.ch:                                            ; preds = %bb.cc
  %i.ku = call float @genG__align11(ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt) #20
  store i32 0, ptr %i.e, align 4, !tbaa !7
  store i32 0, ptr %i.d, align 4, !tbaa !7
  br label %thread-pre-split.i

bb.ci:                                            ; preds = %bb.cc
  %i.kv = load i32, ptr @penalty, align 4, !tbaa !7
  %i.kw = load i32, ptr @penalty_ex, align 4, !tbaa !7
  %i.kx = call float @G__align11_noalign(ptr noundef nonnull @amino_dis, i32 noundef %i.kv, i32 noundef %i.kw, ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt) #20
  %i.ky = call float @L__align11(ptr noundef %i.dw, ptr noundef %i.dx, i32 noundef %i.dt, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #20 ; 0 uses
  br label %thread-pre-split.i

bb.cj:                                            ; preds = %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.kz = load ptr, ptr @recallpairfoldalign.fp, align 8, !tbaa !16 ; 2 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %bb.ck, label %bb.cm

bb.ck:                                            ; preds = %bb.cj
end_hunk_0
