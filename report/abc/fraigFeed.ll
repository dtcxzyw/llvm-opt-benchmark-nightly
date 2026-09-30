Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/fraigFeed?download=true
inline.NumInlined: 12
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Fraig_FeedBackCompress:bb.a
  %i.fe = getelementptr inbounds nuw i8, ptr %.1117165.i.i, i64 72
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !49 ; 2 uses
  %.not124.i.i = icmp eq ptr %i.ff, null
  br i1 %.not124.i.i, label %bb.o, label %bb.n, !llvm.loop !90

bb.o:                                             ; preds = %bb.n
  %i.fg = load ptr, ptr %i.eu, align 8, !tbaa !22 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !32
  %or.cond253.i.i = icmp sgt i32 %i.fi, 1
  br i1 %or.cond253.i.i, label %.lr.ph172.i.preheader.i, label %.loopexit129.i.i

.loopexit.i.i:                                    ; preds = %._crit_edge169.i.i
  %.pre229.i.i = sext i32 %i.gq to i64            ; 2 uses
  %i.fj = icmp slt i64 %indvars.iv.next214.i83.i, %.pre229.i.i
  %indvars.iv.next214.i.i = add nuw nsw i64 %indvars.iv.next214.i83.i, 1 ; 2 uses
  %i.fk = icmp slt i64 %indvars.iv.next214.i.i, %.pre229.i.i
  %or.cond.i = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond.i, label %.lr.ph172.i.preheader.i, label %.loopexit129.i.i, !llvm.loop !91

.lr.ph172.i.preheader.i:                          ; preds = %bb.o, %.loopexit.i.i
  %indvars.iv.next214.i83.i = phi i64 [ %indvars.iv.next214.i.i, %.loopexit.i.i ], [ 1, %bb.o ] ; 4 uses
  %indvars.iv213.i81.i = phi i64 [ %indvars.iv.next214.i83.i, %.loopexit.i.i ], [ 0, %bb.o ]
  br label %.lr.ph172.i.i

.lr.ph172.i.i:                                    ; preds = %._crit_edge169.i.i, %.lr.ph172.i.preheader.i
  %indvars.iv210.i.i = phi i64 [ %indvars.iv.next211.i.i, %._crit_edge169.i.i ], [ %indvars.iv.next214.i83.i, %.lr.ph172.i.preheader.i ] ; 2 uses
  %i.fl = load ptr, ptr %i.ev, align 8, !tbaa !24
  %i.fm = tail call ptr @Fraig_MemFixedEntryFetch(ptr noundef %i.fl) #12 ; 2 uses
  %i.fn = load ptr, ptr %i.eu, align 8, !tbaa !22
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !33 ; 2 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv213.i81.i
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !34
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 112
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !40
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv210.i.i
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !34
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 112
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !40
  %i.fy = load i32, ptr %i.ew, align 8, !tbaa !38
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %.lr.ph168.i.i, label %._crit_edge169.i.i

.lr.ph168.i.i:                                    ; preds = %.lr.ph172.i.i
  %i.ga = load ptr, ptr %i.ex, align 8, !tbaa !25
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph168.i.i
  %indvars.iv205.i.i = phi i64 [ 0, %.lr.ph168.i.i ], [ %indvars.iv.next206.i.i, %bb.p ] ; 5 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %indvars.iv205.i.i
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !37
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv205.i.i
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !37
  %i.gf = xor i32 %i.ge, %i.gc
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv205.i.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !37
  %i.gi = xor i32 %i.gh, -1
  %i.gj = and i32 %i.gf, %i.gi
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fm, i64 %indvars.iv205.i.i
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !37
  %indvars.iv.next206.i.i = add nuw nsw i64 %indvars.iv205.i.i, 1 ; 2 uses
  %i.gl = load i32, ptr %i.ew, align 8, !tbaa !38
  %i.gm = sext i32 %i.gl to i64
  %i.gn = icmp slt i64 %indvars.iv.next206.i.i, %i.gm
  br i1 %i.gn, label %bb.p, label %._crit_edge169.i.i, !llvm.loop !92

._crit_edge169.i.i:                               ; preds = %bb.p, %.lr.ph172.i.i
  tail call void @Fraig_NodeVecPush(ptr noundef %i.j, ptr noundef %i.fm) #12
  %indvars.iv.next211.i.i = add nuw nsw i64 %indvars.iv210.i.i, 1 ; 2 uses
  %i.go = load ptr, ptr %i.eu, align 8, !tbaa !22 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !32 ; 2 uses
  %i.gr = trunc nuw i64 %indvars.iv.next211.i.i to i32
  %i.gs = icmp sgt i32 %i.gq, %i.gr
  br i1 %i.gs, label %.lr.ph172.i.i, label %.loopexit.i.i, !llvm.loop !93

.loopexit129.i.i:                                 ; preds = %.loopexit.i.i, %bb.o
  %i.gt = phi ptr [ %i.fg, %bb.o ], [ %i.go, %.loopexit.i.i ]
  %i.gu = getelementptr inbounds nuw i8, ptr %.2120177.i.i, i64 64
  %.2120.i.i = load ptr, ptr %i.gu, align 8, !tbaa !34 ; 2 uses
  %.not123.i.i = icmp eq ptr %.2120.i.i, null
  br i1 %.not123.i.i, label %._crit_edge180.loopexit.i.i, label %.lr.ph179.i.i, !llvm.loop !94

._crit_edge180.loopexit.i.i:                      ; preds = %.loopexit129.i.i
  %.pre224.i.i = load i32, ptr %i.ci, align 8, !tbaa !47
  br label %._crit_edge180.i.i

._crit_edge180.i.i:                               ; preds = %._crit_edge180.loopexit.i.i, %bb.m
  %i.gv = phi i32 [ %.pre224.i.i, %._crit_edge180.loopexit.i.i ], [ %i.ey, %bb.m ] ; 2 uses
  %indvars.iv.next217.i.i = add nuw nsw i64 %indvars.iv216.i.i, 1 ; 2 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next217.i.i, %i.gw
  br i1 %i.gx, label %bb.m, label %Fraig_FeedBackCoveringStart.exit.i, !llvm.loop !95

Fraig_FeedBackCoveringStart.exit.i:               ; preds = %._crit_edge180.i.i, %._crit_edge164.i.i, %._crit_edge150.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 5 uses
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !32 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = shl nsw i64 %i.ha, 2
  %i.hc = tail call noalias ptr @malloc(i64 noundef %i.hb) #13 ; 7 uses
  %i.hd = icmp sgt i32 %i.gz, 0
  br i1 %i.hd, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %Fraig_FeedBackCoveringStart.exit.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %i.hg = load ptr, ptr %i.he, align 8, !tbaa !33
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !34
  %i.hj = load i32, ptr %i.hf, align 8, !tbaa !38
  %i.hk = tail call i32 @Fraig_BitStringCountOnes(ptr noundef %i.hi, i32 noundef %i.hj) #12
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i
  store i32 %i.hk, ptr %i.hl, align 4, !tbaa !37
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hm = load i32, ptr %i.gy, align 4, !tbaa !32
  %i.hn = sext i32 %i.hm to i64
  %i.ho = icmp slt i64 %indvars.iv.next.i, %i.hn
  br i1 %i.ho, label %bb.q, label %._crit_edge.i, !llvm.loop !96

._crit_edge.i:                                    ; preds = %bb.q, %Fraig_FeedBackCoveringStart.exit.i
  %i.hp = tail call i32 @Msat_IntVecReadSize(ptr noundef %i.g) #12 ; 0 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 8 uses
  %i.hs = load i32, ptr %i.gy, align 4, !tbaa !32 ; 2 uses
  %i.ht = icmp sgt i32 %i.hs, 0
  br i1 %i.ht, label %.lr.ph.preheader.i.i, label %._crit_edge87.i

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i, %Fraig_CancelCoveredColumns.exit.i
  %i.hu = phi i32 [ %i.km, %Fraig_CancelCoveredColumns.exit.i ], [ %i.hs, %._crit_edge.i ] ; 3 uses
  %wide.trip.count.i53.i = zext nneg i32 %i.hu to i64 ; 3 uses
  br label %.lr.ph.i54.i

.lr.ph.i54.i:                                     ; preds = %bb.s, %.lr.ph.preheader.i.i
  %indvars.iv.i55.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i56.i, %bb.s ] ; 3 uses
  %.023.i.i = phi i32 [ 1000000, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.s ] ; 3 uses
  %.01522.i.i = phi i32 [ -1, %.lr.ph.preheader.i.i ], [ %.116.i.i, %bb.s ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i55.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !37 ; 3 uses
  %i.hx = trunc nuw nsw i64 %indvars.iv.i55.i to i32 ; 2 uses
  switch i32 %i.hw, label %bb.r [
    i32 0, label %bb.s
    i32 1, label %Fraig_GetSmallestColumn.exit.i
  ]

bb.r:                                             ; preds = %.lr.ph.i54.i
  %i.hy = icmp sgt i32 %.023.i.i, %i.hw
  %spec.select.i.i = select i1 %i.hy, i32 %i.hx, i32 %.01522.i.i
  %spec.select20.i.i = tail call i32 @llvm.smin.i32(i32 %.023.i.i, i32 %i.hw)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i54.i
  %.116.i.i = phi i32 [ %.01522.i.i, %.lr.ph.i54.i ], [ %spec.select.i.i, %bb.r ] ; 2 uses
  %.1.i.i = phi i32 [ %.023.i.i, %.lr.ph.i54.i ], [ %spec.select20.i.i, %bb.r ]
  %indvars.iv.next.i56.i = add nuw nsw i64 %indvars.iv.i55.i, 1 ; 2 uses
  %exitcond.not.i57.i = icmp eq i64 %indvars.iv.next.i56.i, %wide.trip.count.i53.i
  br i1 %exitcond.not.i57.i, label %Fraig_GetSmallestColumn.exit.i, label %.lr.ph.i54.i, !llvm.loop !97

Fraig_GetSmallestColumn.exit.i:                   ; preds = %bb.s, %.lr.ph.i54.i
  %.018.i.i = phi i32 [ %i.hx, %.lr.ph.i54.i ], [ %.116.i.i, %bb.s ] ; 2 uses
  %.not.i = icmp eq i32 %.018.i.i, -1
  br i1 %.not.i, label %.preheader.i, label %bb.t

.preheader.i:                                     ; preds = %Fraig_GetSmallestColumn.exit.i
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 224
  br label %bb.aa

bb.t:                                             ; preds = %Fraig_GetSmallestColumn.exit.i
  %i.ia = load ptr, ptr %i.hq, align 8, !tbaa !33 ; 4 uses
  %i.ib = sext i32 %.018.i.i to i64
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.ib
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !34
  %i.ie = load i32, ptr %i.hr, align 8, !tbaa !38 ; 2 uses
  %i.if = icmp sgt i32 %i.ie, 0
  br i1 %i.if, label %.lr.ph.preheader.i58.i, label %Fraig_GetHittingPattern.exit.i

.lr.ph.preheader.i58.i:                           ; preds = %bb.t
  %wide.trip.count.i59.i = zext nneg i32 %i.ie to i64
  br label %.lr.ph.i60.i

.lr.ph.i60.i:                                     ; preds = %.loopexit.i64.i, %.lr.ph.preheader.i58.i
  %indvars.iv.i61.i = phi i64 [ 0, %.lr.ph.preheader.i58.i ], [ %indvars.iv.next.i65.i, %.loopexit.i64.i ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv.i61.i
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !37 ; 32 uses
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %.loopexit.i64.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.lr.ph.i60.i
  %i.ij = and i32 %i.ih, 1
  %.not.i62.i = icmp eq i32 %i.ij, 0
  %i.ik = trunc nuw nsw i64 %indvars.iv.i61.i to i32
  br i1 %.not.i62.i, label %.preheader.1.i.i, label %.preheader.31.i.i

.preheader.31.i.i:                                ; preds = %.preheader.30.i.i, %.preheader.29.i.i, %.preheader.28.i.i, %.preheader.27.i.i, %.preheader.26.i.i, %.preheader.25.i.i, %.preheader.24.i.i, %.preheader.23.i.i, %.preheader.22.i.i, %.preheader.21.i.i, %.preheader.20.i.i, %.preheader.19.i.i, %.preheader.18.i.i, %.preheader.17.i.i, %.preheader.16.i.i, %.preheader.15.i.i, %.preheader.14.i.i, %.preheader.13.i.i, %.preheader.12.i.i, %.preheader.11.i.i, %.preheader.10.i.i, %.preheader.9.i.i, %.preheader.8.i.i, %.preheader.7.i.i, %.preheader.6.i.i, %.preheader.5.i.i, %.preheader.4.i.i, %.preheader.3.i.i, %.preheader.2.i.i, %.preheader.1.i.i, %.preheader.preheader.i.i
  %.017.lcssa.i.i = phi i32 [ 0, %.preheader.preheader.i.i ], [ 1, %.preheader.1.i.i ], [ 2, %.preheader.2.i.i ], [ 3, %.preheader.3.i.i ], [ 4, %.preheader.4.i.i ], [ 5, %.preheader.5.i.i ], [ 6, %.preheader.6.i.i ], [ 7, %.preheader.7.i.i ], [ 8, %.preheader.8.i.i ], [ 9, %.preheader.9.i.i ], [ 10, %.preheader.10.i.i ], [ 11, %.preheader.11.i.i ], [ 12, %.preheader.12.i.i ], [ 13, %.preheader.13.i.i ], [ 14, %.preheader.14.i.i ], [ 15, %.preheader.15.i.i ], [ 16, %.preheader.16.i.i ], [ 17, %.preheader.17.i.i ], [ 18, %.preheader.18.i.i ], [ 19, %.preheader.19.i.i ], [ 20, %.preheader.20.i.i ], [ 21, %.preheader.21.i.i ], [ 22, %.preheader.22.i.i ], [ 23, %.preheader.23.i.i ], [ 24, %.preheader.24.i.i ], [ 25, %.preheader.25.i.i ], [ 26, %.preheader.26.i.i ], [ 27, %.preheader.27.i.i ], [ 28, %.preheader.28.i.i ], [ 29, %.preheader.29.i.i ], [ %spec.select.i63.i, %.preheader.30.i.i ]
  %i.il = shl nuw nsw i32 %i.ik, 5
  %1 = add nuw nsw i32 %.017.lcssa.i.i, %i.il
  br label %Fraig_GetHittingPattern.exit.i

.preheader.1.i.i:                                 ; preds = %.preheader.preheader.i.i
  %i.im = and i32 %i.ih, 2
  %.not.1.i.i = icmp eq i32 %i.im, 0
  br i1 %.not.1.i.i, label %.preheader.2.i.i, label %.preheader.31.i.i

.preheader.2.i.i:                                 ; preds = %.preheader.1.i.i
  %i.in = and i32 %i.ih, 4
  %.not.2.i.i = icmp eq i32 %i.in, 0
  br i1 %.not.2.i.i, label %.preheader.3.i.i, label %.preheader.31.i.i

.preheader.3.i.i:                                 ; preds = %.preheader.2.i.i
  %i.io = and i32 %i.ih, 8
  %.not.3.i.i = icmp eq i32 %i.io, 0
  br i1 %.not.3.i.i, label %.preheader.4.i.i, label %.preheader.31.i.i

.preheader.4.i.i:                                 ; preds = %.preheader.3.i.i
  %i.ip = and i32 %i.ih, 16
  %.not.4.i.i = icmp eq i32 %i.ip, 0
  br i1 %.not.4.i.i, label %.preheader.5.i.i, label %.preheader.31.i.i

.preheader.5.i.i:                                 ; preds = %.preheader.4.i.i
  %i.iq = and i32 %i.ih, 32
  %.not.5.i.i = icmp eq i32 %i.iq, 0
  br i1 %.not.5.i.i, label %.preheader.6.i.i, label %.preheader.31.i.i

.preheader.6.i.i:                                 ; preds = %.preheader.5.i.i
  %i.ir = and i32 %i.ih, 64
  %.not.6.i.i = icmp eq i32 %i.ir, 0
  br i1 %.not.6.i.i, label %.preheader.7.i.i, label %.preheader.31.i.i

.preheader.7.i.i:                                 ; preds = %.preheader.6.i.i
  %i.is = and i32 %i.ih, 128
  %.not.7.i.i = icmp eq i32 %i.is, 0
  br i1 %.not.7.i.i, label %.preheader.8.i.i, label %.preheader.31.i.i

.preheader.8.i.i:                                 ; preds = %.preheader.7.i.i
  %i.it = and i32 %i.ih, 256
  %.not.8.i.i = icmp eq i32 %i.it, 0
  br i1 %.not.8.i.i, label %.preheader.9.i.i, label %.preheader.31.i.i

.preheader.9.i.i:                                 ; preds = %.preheader.8.i.i
  %i.iu = and i32 %i.ih, 512
  %.not.9.i.i = icmp eq i32 %i.iu, 0
  br i1 %.not.9.i.i, label %.preheader.10.i.i, label %.preheader.31.i.i

.preheader.10.i.i:                                ; preds = %.preheader.9.i.i
  %i.iv = and i32 %i.ih, 1024
  %.not.10.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not.10.i.i, label %.preheader.11.i.i, label %.preheader.31.i.i

.preheader.11.i.i:                                ; preds = %.preheader.10.i.i
  %i.iw = and i32 %i.ih, 2048
  %.not.11.i.i = icmp eq i32 %i.iw, 0
  br i1 %.not.11.i.i, label %.preheader.12.i.i, label %.preheader.31.i.i

.preheader.12.i.i:                                ; preds = %.preheader.11.i.i
  %i.ix = and i32 %i.ih, 4096
  %.not.12.i.i = icmp eq i32 %i.ix, 0
  br i1 %.not.12.i.i, label %.preheader.13.i.i, label %.preheader.31.i.i

.preheader.13.i.i:                                ; preds = %.preheader.12.i.i
  %i.iy = and i32 %i.ih, 8192
  %.not.13.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not.13.i.i, label %.preheader.14.i.i, label %.preheader.31.i.i

.preheader.14.i.i:                                ; preds = %.preheader.13.i.i
  %i.iz = and i32 %i.ih, 16384
  %.not.14.i.i = icmp eq i32 %i.iz, 0
  br i1 %.not.14.i.i, label %.preheader.15.i.i, label %.preheader.31.i.i

.preheader.15.i.i:                                ; preds = %.preheader.14.i.i
  %i.ja = and i32 %i.ih, 32768
  %.not.15.i.i = icmp eq i32 %i.ja, 0
  br i1 %.not.15.i.i, label %.preheader.16.i.i, label %.preheader.31.i.i

.preheader.16.i.i:                                ; preds = %.preheader.15.i.i
  %i.jb = and i32 %i.ih, 65536
  %.not.16.i.i = icmp eq i32 %i.jb, 0
  br i1 %.not.16.i.i, label %.preheader.17.i.i, label %.preheader.31.i.i

.preheader.17.i.i:                                ; preds = %.preheader.16.i.i
  %i.jc = and i32 %i.ih, 131072
  %.not.17.i.i = icmp eq i32 %i.jc, 0
  br i1 %.not.17.i.i, label %.preheader.18.i.i, label %.preheader.31.i.i

.preheader.18.i.i:                                ; preds = %.preheader.17.i.i
  %i.jd = and i32 %i.ih, 262144
  %.not.18.i.i = icmp eq i32 %i.jd, 0
  br i1 %.not.18.i.i, label %.preheader.19.i.i, label %.preheader.31.i.i

.preheader.19.i.i:                                ; preds = %.preheader.18.i.i
  %i.je = and i32 %i.ih, 524288
  %.not.19.i.i = icmp eq i32 %i.je, 0
  br i1 %.not.19.i.i, label %.preheader.20.i.i, label %.preheader.31.i.i

.preheader.20.i.i:                                ; preds = %.preheader.19.i.i
  %i.jf = and i32 %i.ih, 1048576
  %.not.20.i.i = icmp eq i32 %i.jf, 0
  br i1 %.not.20.i.i, label %.preheader.21.i.i, label %.preheader.31.i.i

.preheader.21.i.i:                                ; preds = %.preheader.20.i.i
  %i.jg = and i32 %i.ih, 2097152
  %.not.21.i.i = icmp eq i32 %i.jg, 0
  br i1 %.not.21.i.i, label %.preheader.22.i.i, label %.preheader.31.i.i

.preheader.22.i.i:                                ; preds = %.preheader.21.i.i
  %i.jh = and i32 %i.ih, 4194304
  %.not.22.i.i = icmp eq i32 %i.jh, 0
  br i1 %.not.22.i.i, label %.preheader.23.i.i, label %.preheader.31.i.i

.preheader.23.i.i:                                ; preds = %.preheader.22.i.i
  %i.ji = and i32 %i.ih, 8388608
  %.not.23.i.i = icmp eq i32 %i.ji, 0
  br i1 %.not.23.i.i, label %.preheader.24.i.i, label %.preheader.31.i.i

.preheader.24.i.i:                                ; preds = %.preheader.23.i.i
  %i.jj = and i32 %i.ih, 16777216
  %.not.24.i.i = icmp eq i32 %i.jj, 0
  br i1 %.not.24.i.i, label %.preheader.25.i.i, label %.preheader.31.i.i

.preheader.25.i.i:                                ; preds = %.preheader.24.i.i
  %i.jk = and i32 %i.ih, 33554432
  %.not.25.i.i = icmp eq i32 %i.jk, 0
  br i1 %.not.25.i.i, label %.preheader.26.i.i, label %.preheader.31.i.i

.preheader.26.i.i:                                ; preds = %.preheader.25.i.i
  %i.jl = and i32 %i.ih, 67108864
  %.not.26.i.i = icmp eq i32 %i.jl, 0
  br i1 %.not.26.i.i, label %.preheader.27.i.i, label %.preheader.31.i.i

.preheader.27.i.i:                                ; preds = %.preheader.26.i.i
  %i.jm = and i32 %i.ih, 134217728
  %.not.27.i.i = icmp eq i32 %i.jm, 0
  br i1 %.not.27.i.i, label %.preheader.28.i.i, label %.preheader.31.i.i

.preheader.28.i.i:                                ; preds = %.preheader.27.i.i
  %i.jn = and i32 %i.ih, 268435456
  %.not.28.i.i = icmp eq i32 %i.jn, 0
  br i1 %.not.28.i.i, label %.preheader.29.i.i, label %.preheader.31.i.i

.preheader.29.i.i:                                ; preds = %.preheader.28.i.i
  %i.jo = and i32 %i.ih, 536870912
  %.not.29.i.i = icmp eq i32 %i.jo, 0
  br i1 %.not.29.i.i, label %.preheader.30.i.i, label %.preheader.31.i.i

.preheader.30.i.i:                                ; preds = %.preheader.29.i.i
  %2 = lshr exact i32 %i.ih, 30
  %3 = and i32 %2, 1
  %spec.select.i63.i = xor i32 %3, 31
  br label %.preheader.31.i.i

.loopexit.i64.i:                                  ; preds = %.lr.ph.i60.i
  %indvars.iv.next.i65.i = add nuw nsw i64 %indvars.iv.i61.i, 1 ; 2 uses
  %exitcond.not.i66.i = icmp eq i64 %indvars.iv.next.i65.i, %wide.trip.count.i59.i
  br i1 %exitcond.not.i66.i, label %Fraig_GetHittingPattern.exit.i, label %.lr.ph.i60.i, !llvm.loop !98

Fraig_GetHittingPattern.exit.i:                   ; preds = %.loopexit.i64.i, %.preheader.31.i.i, %bb.t
  %.013.i.i = phi i32 [ %1, %.preheader.31.i.i ], [ -1, %bb.t ], [ -1, %.loopexit.i64.i ] ; 3 uses
  %i.jp = ashr i32 %.013.i.i, 5
  %i.jq = sext i32 %i.jp to i64                   ; 3 uses
  %i.jr = and i32 %.013.i.i, 31
  %i.js = shl nuw i32 1, %i.jr                    ; 3 uses
  %xtraiter289 = and i64 %wide.trip.count.i53.i, 1
  %i.jt = icmp eq i32 %i.hu, 1
  br i1 %i.jt, label %.epil.preheader, label %Fraig_GetHittingPattern.exit.i.new

Fraig_GetHittingPattern.exit.i.new:               ; preds = %Fraig_GetHittingPattern.exit.i
  %unroll_iter = and i64 %wide.trip.count.i53.i, 2147483646
  br label %bb.u

bb.u:                                             ; preds = %bb.y, %Fraig_GetHittingPattern.exit.i.new
  %indvars.iv.i69.i = phi i64 [ 0, %Fraig_GetHittingPattern.exit.i.new ], [ %indvars.iv.next.i72.i.1, %bb.y ] ; 4 uses
  %niter = phi i64 [ 0, %Fraig_GetHittingPattern.exit.i.new ], [ %niter.next.1, %bb.y ]
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i69.i
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !34
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.jv, i64 %i.jq
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !37
  %i.jy = and i32 %i.jx, %i.js
  %.not.i70.i = icmp eq i32 %i.jy, 0
  br i1 %.not.i70.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i69.i
  store i32 0, ptr %i.jz, align 4, !tbaa !37
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.next.i72.i = or disjoint i64 %indvars.iv.i69.i, 1 ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.next.i72.i
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !34
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.kb, i64 %i.jq
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !37
  %i.ke = and i32 %i.kd, %i.js
  %.not.i70.i.1 = icmp eq i32 %i.ke, 0
  br i1 %.not.i70.i.1, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.next.i72.i
  store i32 0, ptr %i.kf, align 4, !tbaa !37
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %indvars.iv.next.i72.i.1 = add nuw nsw i64 %indvars.iv.i69.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Fraig_CancelCoveredColumns.exit.i.unr-lcssa, label %bb.u, !llvm.loop !99

Fraig_CancelCoveredColumns.exit.i.unr-lcssa:      ; preds = %bb.y
  %lcmp.mod290.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod290.not, label %Fraig_CancelCoveredColumns.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %Fraig_CancelCoveredColumns.exit.i.unr-lcssa, %Fraig_GetHittingPattern.exit.i
  %indvars.iv.i69.i.epil.init = phi i64 [ 0, %Fraig_GetHittingPattern.exit.i ], [ %indvars.iv.next.i72.i.1, %Fraig_CancelCoveredColumns.exit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod291 = trunc i32 %i.hu to i1
  tail call void @llvm.assume(i1 %lcmp.mod291)
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv.i69.i.epil.init
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !34
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.kh, i64 %i.jq
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !37
  %i.kk = and i32 %i.kj, %i.js
  %.not.i70.i.epil = icmp eq i32 %i.kk, 0
  br i1 %.not.i70.i.epil, label %Fraig_CancelCoveredColumns.exit.i, label %bb.z

bb.z:                                             ; preds = %.epil.preheader
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %indvars.iv.i69.i.epil.init
  store i32 0, ptr %i.kl, align 4, !tbaa !37
  br label %Fraig_CancelCoveredColumns.exit.i

Fraig_CancelCoveredColumns.exit.i:                ; preds = %.epil.preheader, %bb.z, %Fraig_CancelCoveredColumns.exit.i.unr-lcssa
  tail call void @Msat_IntVecPush(ptr noundef %i.g, i32 noundef %.013.i.i) #12
  %i.km = load i32, ptr %i.gy, align 4, !tbaa !32 ; 2 uses
  %i.kn = icmp sgt i32 %i.km, 0
  br i1 %i.kn, label %.lr.ph.preheader.i.i, label %._crit_edge87.i, !llvm.loop !100

bb.aa:                                            ; preds = %bb.aa, %.preheader.i
  %indvars.iv96.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next97.i, %bb.aa ] ; 2 uses
  %i.ko = load ptr, ptr %i.hz, align 8, !tbaa !24
  %i.kp = load ptr, ptr %i.hq, align 8, !tbaa !33
  %i.kq = getelementptr inbounds nuw [8 x i8], ptr %i.kp, i64 %indvars.iv96.i
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !34
  tail call void @Fraig_MemFixedEntryRecycle(ptr noundef %i.ko, ptr noundef %i.kr) #12
  %indvars.iv.next97.i = add nuw nsw i64 %indvars.iv96.i, 1 ; 2 uses
  %i.ks = load i32, ptr %i.gy, align 4, !tbaa !32
  %i.kt = sext i32 %i.ks to i64
  %i.ku = icmp slt i64 %indvars.iv.next97.i, %i.kt
  br i1 %i.ku, label %bb.aa, label %._crit_edge87.i.thread, !llvm.loop !101

._crit_edge87.i.thread:                           ; preds = %bb.aa
  tail call void @Fraig_NodeVecFree(ptr noundef nonnull %i.j) #12
  br label %bb.ab

._crit_edge87.i:                                  ; preds = %Fraig_CancelCoveredColumns.exit.i, %._crit_edge.i
  tail call void @Fraig_NodeVecFree(ptr noundef nonnull %i.j) #12
  %.not51.i = icmp eq ptr %i.hc, null
  br i1 %.not51.i, label %Fraig_FeedBackCovering.exit, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge87.i.thread, %._crit_edge87.i
  tail call void @free(ptr noundef nonnull %i.hc) #12
  br label %Fraig_FeedBackCovering.exit

Fraig_FeedBackCovering.exit:                      ; preds = %._crit_edge87.i, %bb.ab
  %i.kv = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.kw = tail call i32 @Msat_IntVecReadSize(ptr noundef %i.kv) #12 ; 4 uses
  %i.kx = load ptr, ptr %i.f, align 8, !tbaa !23
  %i.ky = tail call ptr @Msat_IntVecReadArray(ptr noundef %i.kx) #12
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.la = load i32, ptr %i.kz, align 8, !tbaa !118
  %i.lb = add nsw i32 %i.la, %i.kw                ; 3 uses
  %i.lc = ashr i32 %i.lb, 5
  %i.ld = and i32 %i.lb, 31
  %i.le = icmp ne i32 %i.ld, 0
  %i.lf = zext i1 %i.le to i32
  %i.lg = add nsw i32 %i.lc, %i.lf                ; 3 uses
  store i32 %i.lg, ptr %i.hr, align 8, !tbaa !38
  %i.lh = load ptr, ptr %0, align 8, !tbaa !29    ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 4 ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !32
  %i.lk = icmp sgt i32 %i.lj, 0
  br i1 %i.lk, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %Fraig_FeedBackCovering.exit
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !33
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.lp = icmp sgt i32 %i.kw, 0
  %wide.trip.count = zext nneg i32 %i.kw to i64
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph141, %._crit_edge138
  %i.lq = phi i32 [ %i.lg, %.lr.ph141 ], [ %i.ng, %._crit_edge138 ] ; 2 uses
  %indvars.iv176 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next177, %._crit_edge138 ] ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv176
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !34 ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 112
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !40 ; 5 uses
  %i.lv = load i32, ptr %i.ln, align 4, !tbaa !119 ; 2 uses
  %i.lw = icmp slt i32 %i.lv, %i.lq
  br i1 %i.lw, label %.lr.ph, label %.preheader118

.lr.ph:                                           ; preds = %bb.ac
  %i.lx = load ptr, ptr %i.lo, align 8, !tbaa !27
  %i.ly = sext i32 %i.lv to i64
  br label %bb.ad

.preheader118:                                    ; preds = %bb.ad, %bb.ac
  %i.lz = phi i32 [ %i.lq, %bb.ac ], [ %i.mb, %bb.ad ]
  br i1 %i.lp, label %.lr.ph131, label %._crit_edge

bb.ad:                                            ; preds = %.lr.ph, %bb.ad
  %indvars.iv = phi i64 [ %i.ly, %.lr.ph ], [ %indvars.iv.next, %bb.ad ] ; 2 uses
  %i.ma = getelementptr inbounds [4 x i8], ptr %i.lx, i64 %indvars.iv
  store i32 0, ptr %i.ma, align 4, !tbaa !37
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.mb = load i32, ptr %i.hr, align 8, !tbaa !38 ; 2 uses
  %i.mc = sext i32 %i.mb to i64
  %i.md = icmp slt i64 %indvars.iv.next, %i.mc
  br i1 %i.md, label %bb.ad, label %.preheader118, !llvm.loop !102

.lr.ph131:                                        ; preds = %.preheader118, %bb.ag
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %bb.ag ], [ 0, %.preheader118 ] ; 3 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv165
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !37 ; 2 uses
  %i.mg = ashr i32 %i.mf, 5
  %i.mh = sext i32 %i.mg to i64
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.lu, i64 %i.mh
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !37
  %i.mk = and i32 %i.mf, 31
  %i.ml = shl nuw i32 1, %i.mk
  %i.mm = and i32 %i.ml, %i.mj
  %.not109 = icmp eq i32 %i.mm, 0
  br i1 %.not109, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph131
  %i.mn = load i32, ptr %i.kz, align 8, !tbaa !118
  %i.mo = trunc nuw nsw i64 %indvars.iv165 to i32
  %i.mp = add nsw i32 %i.mn, %i.mo                ; 3 uses
  %i.mq = load i32, ptr %i.ln, align 4, !tbaa !119
  %i.mr = shl nsw i32 %i.mq, 5
  %i.ms = icmp slt i32 %i.mp, %i.mr
  %i.mt = and i32 %i.mp, 31
  %i.mu = shl nuw i32 1, %i.mt
  br i1 %i.ms, label %.sink.split, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.mv = load ptr, ptr %i.lo, align 8, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ae, %bb.af
end_hunk_0
