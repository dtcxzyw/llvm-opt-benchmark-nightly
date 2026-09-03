Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_connected_components?download=true
inline.NumInlined: 13
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@stbcc__build_all_connections_for_cluster:bb.a
bb.z:                                             ; preds = %bb.y
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.eq = or disjoint i64 %i.o, 31                ; 2 uses
  %i.er = getelementptr inbounds [128 x i8], ptr %i.m, i64 %i.eq
  %i.es = add nsw i64 %i.o, 32                    ; 2 uses
  %i.et = getelementptr inbounds [128 x i8], ptr %i.m, i64 %i.es
  %i.eu = getelementptr inbounds [2048 x i8], ptr %i.n, i64 %i.eq
  %i.ev = getelementptr inbounds [2048 x i8], ptr %i.n, i64 %i.es
  br label %bb.aa

bb.aa:                                            ; preds = %bb.ae, %bb.z
  %indvars.iv135.3 = phi i64 [ 0, %bb.z ], [ %indvars.iv.next136.3, %bb.ae ] ; 3 uses
  %.1129.3 = phi i32 [ %.4.2163, %bb.z ], [ %.3.3, %bb.ae ] ; 4 uses
  %.0106128.3 = phi i32 [ 0, %bb.z ], [ %i.gm, %bb.ae ]
  %i.ew = add nuw nsw i64 %indvars.iv135.3, %i.p  ; 4 uses
  %i.ex = trunc nsw i64 %i.ew to i32
  %i.ey = ashr i32 %i.ex, 3
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds i8, ptr %i.er, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !11
  %i.fc = zext i8 %i.fb to i32
  %i.fd = trunc nuw nsw i64 %indvars.iv135.3 to i32
  %i.fe = and i32 %i.fd, 7
  %i.ff = shl nuw nsw i32 1, %i.fe
  %i.fg = and i32 %i.ff, %i.fc
  %.not123.3 = icmp eq i32 %i.fg, 0
  br i1 %.not123.3, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fh = trunc nsw i64 %i.ew to i32              ; 2 uses
  %i.fi = ashr i32 %i.fh, 3
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds i8, ptr %i.et, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !11
  %i.fm = zext i8 %i.fl to i32
  %i.fn = and i32 %i.fh, 7
  %i.fo = shl nuw nsw i32 1, %i.fn
  %i.fp = and i32 %i.fo, %i.fm
  %.not124.3 = icmp eq i32 %i.fp, 0
  br i1 %.not124.3, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.eu, i64 %i.ew
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !10
  %i.fs = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.ew
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !10
  %i.fu = zext i16 %i.fr to i64                   ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.fu
  %i.fw = zext i16 %i.ft to i32                   ; 2 uses
  %i.fx = lshr i32 %i.fw, 3
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 %i.fy ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !11  ; 2 uses
  %i.gb = zext i8 %i.ga to i32
  %i.gc = and i32 %i.fw, 7
  %i.gd = shl nuw nsw i32 1, %i.gc                ; 2 uses
  %i.ge = and i32 %i.gd, %i.gb
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gg = trunc nuw i32 %i.gd to i8
  %i.gh = or i8 %i.ga, %i.gg
  store i8 %i.gh, ptr %i.fz, align 1, !tbaa !11
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fu ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !11
  %i.gk = add i8 %i.gj, 1
  store i8 %i.gk, ptr %i.gi, align 1, !tbaa !11
  %i.gl = add nsw i32 %.1129.3, 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.3.3 = phi i32 [ %.1129.3, %bb.aa ], [ %.1129.3, %bb.ab ], [ %i.gl, %bb.ad ], [ %.1129.3, %bb.ac ] ; 2 uses
  %indvars.iv.next136.3 = add nuw nsw i64 %indvars.iv135.3, 1
  %i.gm = add nuw nsw i32 %.0106128.3, 1          ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.gm, 32
  br i1 %exitcond.3.not, label %.loopexit.3, label %bb.aa, !llvm.loop !39

.loopexit.3:                                      ; preds = %bb.ae, %bb.a, %.loopexit.1, %bb.y, %.loopexit.2.thread, %.loopexit.2
  %.4.3 = phi i32 [ %.3.2, %.loopexit.2 ], [ %.4.2163, %.loopexit.2.thread ], [ %.4.1, %.loopexit.1 ], [ %.4.2163, %bb.y ], [ 0, %bb.a ], [ %.3.3, %bb.ae ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.go = load i8, ptr %i.gn, align 2, !tbaa !13  ; 5 uses
  %i.gp = zext i8 %i.go to i32                    ; 3 uses
  %i.gq = shl nuw nsw i32 %i.gp, 2
  %i.gr = add nsw i32 %i.gq, %.4.3
  %i.gs = icmp slt i32 %i.gr, 129
  br i1 %i.gs, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.loopexit.3
  %i.gt = shl nuw nsw i32 %i.gp, 1
  %i.gu = add nsw i32 %i.gt, %.4.3
  %i.gv = icmp slt i32 %i.gu, 129
  br i1 %i.gv, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gw = add nsw i32 %.4.3, %i.gp
  %i.gx = icmp slt i32 %i.gw, 129
  %. = zext i1 %i.gx to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.loopexit.3
  %.0 = phi i32 [ 2, %bb.af ], [ 4, %.loopexit.3 ], [ %., %bb.ag ] ; 3 uses
  %.not134 = icmp eq i8 %i.go, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ah
  %i.gy = getelementptr inbounds nuw i8, ptr %i.g, i64 4 ; 3 uses
  %wide.trip.count = zext i8 %i.go to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gz = icmp eq i8 %i.go, 1
  br i1 %i.gz, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.new
  %indvars.iv141 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next142.1, %bb.ai ] ; 4 uses
  %.5133 = phi i32 [ 0, %.lr.ph.new ], [ %i.hv, %bb.ai ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.ai ]
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv141
  %i.hb = load i8, ptr %i.ha, align 2, !tbaa !11
  %i.hc = zext i8 %i.hb to i32
  %i.hd = add nuw nsw i32 %.0, %i.hc
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %i.hd, i32 64) ; 2 uses
  %i.he = trunc i32 %.5133 to i8
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv141 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 6
  store i8 %i.he, ptr %i.hg, align 2, !tbaa !17
  %i.hh = trunc nuw nsw i32 %spec.store.select to i8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 5
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !23
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  store i8 0, ptr %i.hj, align 4, !tbaa !18
  %i.hk = add nuw nsw i32 %spec.store.select, %.5133 ; 2 uses
  %indvars.iv.next142 = or disjoint i64 %indvars.iv141, 1 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next142
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !11
  %i.hn = zext i8 %i.hm to i32
  %i.ho = add nuw nsw i32 %.0, %i.hn
  %spec.store.select.1 = tail call i32 @llvm.umin.i32(i32 %i.ho, i32 64) ; 2 uses
  %i.hp = trunc i32 %i.hk to i8
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next142 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 6
  store i8 %i.hp, ptr %i.hr, align 2, !tbaa !17
  %i.hs = trunc nuw nsw i32 %spec.store.select.1 to i8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 5
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !23
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store i8 0, ptr %i.hu, align 4, !tbaa !18
  %i.hv = add nuw nsw i32 %spec.store.select.1, %i.hk ; 2 uses
  %indvars.iv.next142.1 = add nuw nsw i64 %indvars.iv141, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ai, !llvm.loop !40

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv141.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next142.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.5133.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.hv, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod184 = trunc i8 %i.go to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv141.epil.init
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !11
  %i.hy = zext i8 %i.hx to i32
  %i.hz = add nuw nsw i32 %.0, %i.hy
  %spec.store.select.epil = tail call i32 @llvm.umin.i32(i32 %i.hz, i32 64)
  %i.ia = trunc i32 %.5133.epil.init to i8
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv141.epil.init ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 6
  store i8 %i.ia, ptr %i.ic, align 2, !tbaa !17
  %i.id = trunc nuw nsw i32 %spec.store.select.epil to i8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 5
  store i8 %i.id, ptr %i.ie, align 1, !tbaa !23
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  store i8 0, ptr %i.if, align 4, !tbaa !18
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.ah
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef -1, i32 noundef 0)
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 0)
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef -1)
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef 0, i32 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__add_connections_to_adjacent_cluster(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x [8 x i8]], align 16         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.b = shl nuw nsw i32 %1, 5
  %i.c = shl nuw nsw i32 %2, 5
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21   ; 2 uses
  %i.g = icmp sge i32 %1, %i.f
  %i.h = icmp slt i32 %2, 0
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22   ; 2 uses
  %.not = icmp slt i32 %2, %i.j
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %3, %1                       ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  %.not97 = icmp slt i32 %i.k, %i.f
  %or.cond103 = and i1 %i.l, %.not97
  br i1 %or.cond103, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %4, %2                       ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  %.not98 = icmp slt i32 %i.m, %i.j
  %or.cond104 = and i1 %i.n, %.not98
  br i1 %or.cond104, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.o = zext nneg i32 %2 to i64
  %i.p = getelementptr inbounds nuw [139392 x i8], ptr %0, i64 %i.o
  %i.q = zext nneg i32 %1 to i64
  %i.r = getelementptr inbounds nuw [4356 x i8], ptr %i.p, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2228247 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !19
  %.not99 = icmp eq i8 %i.t, 0
  br i1 %.not99, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  switch i32 %3, label %bb.i [
    i32 1, label %bb.k
    i32 -1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  switch i32 %4, label %.loopexit [
    i32 -1, label %bb.k
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.g, %bb.h, %bb.j
  %.088 = phi i64 [ 1, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ], [ 1, %bb.i ]
  %.087 = phi i64 [ 0, %bb.j ], [ 1, %bb.h ], [ 1, %bb.g ], [ 0, %bb.i ]
  %.085 = phi i64 [ 0, %bb.j ], [ 0, %bb.h ], [ 31, %bb.g ], [ 0, %bb.i ]
  %.084 = phi i64 [ 31, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 131092 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2228244
  %i.x = trunc i32 %3 to i16
  %i.y = shl i16 %i.x, 12
  %i.z = and i16 %i.y, 12288
  %i.aa = trunc i32 %4 to i16
  %i.ab = shl i16 %i.aa, 14
  %i.ac = zext nneg i32 %i.c to i64
  %i.ad = sext i32 %4 to i64
  %i.ae = zext nneg i32 %i.b to i64
  %i.af = sext i32 %3 to i64
  %invariant.op = or disjoint i16 %i.z, %i.ab
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %indvars.iv109 = phi i64 [ %.085, %bb.k ], [ %indvars.iv.next110, %.thread ] ; 3 uses
  %indvars.iv = phi i64 [ %.084, %bb.k ], [ %indvars.iv.next, %.thread ] ; 2 uses
  %.083108 = phi i32 [ 0, %bb.k ], [ %i.cw, %.thread ]
  %i.ag = add nuw nsw i64 %indvars.iv, %i.ac      ; 4 uses
  %i.ah = getelementptr inbounds nuw [128 x i8], ptr %i.u, i64 %i.ag
  %i.ai = add nuw nsw i64 %indvars.iv109, %i.ae   ; 4 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = and i64 %i.aj, 536870911
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = zext i8 %i.am to i32
  %i.ao = trunc nuw nsw i64 %indvars.iv109 to i32
  %i.ap = and i32 %i.ao, 7
  %i.aq = shl nuw nsw i32 1, %i.ap
  %i.ar = and i32 %i.aq, %i.an
  %.not100 = icmp eq i32 %i.ar, 0
  br i1 %.not100, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = add nsw i64 %i.ag, %i.ad                ; 2 uses
  %i.at = getelementptr inbounds [128 x i8], ptr %i.u, i64 %i.as
  %i.au = add nsw i64 %i.ai, %i.af                ; 2 uses
  %i.av = trunc nsw i64 %i.au to i32              ; 2 uses
  %i.aw = ashr i32 %i.av, 3
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = zext i8 %i.az to i32
  %i.bb = and i32 %i.av, 7
  %i.bc = shl nuw nsw i32 1, %i.bb
  %i.bd = and i32 %i.bc, %i.ba
  %.not101 = icmp eq i32 %i.bd, 0
  br i1 %.not101, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [2048 x i8], ptr %i.v, i64 %i.ag
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.ai
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !10
  %i.bh = getelementptr inbounds [2048 x i8], ptr %i.v, i64 %i.as
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.au
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !10 ; 2 uses
  %i.bk = zext i16 %i.bg to i64                   ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bk
  %i.bm = zext i16 %i.bj to i32                   ; 2 uses
  %i.bn = lshr i32 %i.bm, 3
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bo ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11  ; 2 uses
  %i.br = zext i8 %i.bq to i32
  %i.bs = and i32 %i.bm, 7
  %i.bt = shl nuw nsw i32 1, %i.bs                ; 2 uses
  %i.bu = and i32 %i.bt, %i.br
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.bw = trunc nuw i32 %i.bt to i8
  %i.bx = or i8 %i.bq, %i.bw
  store i8 %i.bx, ptr %i.bp, align 1, !tbaa !11
  %i.by = lshr i64 %i.ai, 5
  %i.bz = lshr i64 %i.ag, 5
  %i.ca = and i64 %i.bz, 134217727
  %i.cb = getelementptr inbounds nuw [139392 x i8], ptr %i.w, i64 %i.ca
  %i.cc = and i64 %i.by, 134217727
  %i.cd = getelementptr inbounds nuw [4356 x i8], ptr %i.cb, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.bk ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 4, !tbaa !18  ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 5
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !23
  %i.ck = icmp eq i8 %i.ch, %i.cj
  br i1 %i.ck, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 1, ptr %i.cl, align 1, !tbaa !19
  br label %stbcc__add_clump_connection.exit

bb.q:                                             ; preds = %bb.o
  %i.cm = and i16 %i.bj, 4095
  %.reass = or disjoint i16 %i.cm, %invariant.op
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 4100
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 6
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !17
  %i.cq = zext i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = add i8 %i.ch, 1
  store i8 %i.cs, ptr %i.cg, align 4, !tbaa !18
  %i.ct = zext i8 %i.ch to i64
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cr, i64 %i.ct
  store i16 %.reass, ptr %i.cu, align 2, !tbaa !11
  br label %stbcc__add_clump_connection.exit

stbcc__add_clump_connection.exit:                 ; preds = %bb.p, %bb.q
  %i.cv = load i8, ptr %i.s, align 1, !tbaa !19
  %.not102 = icmp eq i8 %i.cv, 0
  br i1 %.not102, label %.thread, label %.loopexit

.thread:                                          ; preds = %stbcc__add_clump_connection.exit, %bb.n, %bb.m, %bb.l
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, %.088
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %.087
  %i.cw = add nuw nsw i32 %.083108, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cw, 32
  br i1 %exitcond.not, label %.loopexit, label %bb.l, !llvm.loop !41

.loopexit:                                        ; preds = %stbcc__add_clump_connection.exit, %.thread, %bb.i, %bb.f, %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__add_connections_to_adjacent_cluster_with_rebuild(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21
end_hunk_0
begin_hunk_1_@stbcc__add_connections_to_adjacent_cluster_with_rebuild:bb.a
bb.e:                                             ; preds = %bb.d
  tail call void @stbcc__build_all_connections_for_cluster(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc_update_grid(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %3, 0                       ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = sext i32 %2 to i64
  %i.c = getelementptr inbounds [128 x i8], ptr %i.a, i64 %i.b
  %i.d = ashr i32 %1, 3
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !11
  %i.h = zext i8 %i.g to i32
  %i.i = and i32 %1, 7
  %i.j = shl nuw nsw i32 1, %i.i
  %i.k = and i32 %i.j, %i.h
  %.not51 = icmp eq i32 %i.k, 0
  %i.l = xor i1 %.not, %.not51
  br i1 %i.l, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = ashr i32 %1, 5                           ; 18 uses
  %i.n = ashr i32 %2, 5                           ; 19 uses
  %i.o = add nsw i32 %i.m, -1                     ; 4 uses
  tail call void @stbcc__remove_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.n, i32 noundef 1, i32 noundef 0)
  %i.p = add nsw i32 %i.m, 1                      ; 5 uses
  tail call void @stbcc__remove_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %i.n, i32 noundef -1, i32 noundef 0)
  %i.q = add nsw i32 %i.n, -1                     ; 4 uses
  tail call void @stbcc__remove_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.q, i32 noundef 0, i32 noundef 1)
  %i.r = add nsw i32 %i.n, 1                      ; 5 uses
  tail call void @stbcc__remove_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.r, i32 noundef 0, i32 noundef -1)
  %i.s = and i32 %1, 7
  %i.t = shl nuw nsw i32 1, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.v = sext i32 %2 to i64
  %i.w = getelementptr inbounds [128 x i8], ptr %i.u, i64 %i.v
  %i.x = ashr i32 %1, 3
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !11   ; 2 uses
  %i.ab = trunc nuw i32 %i.t to i8                ; 2 uses
  %i.ac = xor i8 %i.ab, -1
  %i.ad = and i8 %i.aa, %i.ac
  %i.ae = or i8 %i.aa, %i.ab
  %.sink = select i1 %.not, i8 %i.ae, i8 %i.ad
  store i8 %.sink, ptr %i.z, align 1, !tbaa !11
  tail call void @stbcc__build_clumps_for_cluster(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.n)
  tail call void @stbcc__build_all_connections_for_cluster(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.n)
  %i.af = icmp sgt i32 %i.m, 0
  br i1 %i.af, label %bb.c, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !21
  %i.ai = icmp sle i32 %i.m, %i.ah
  %i.aj = icmp sgt i32 %i.n, -1
  %or.cond.i = and i1 %i.aj, %i.ai
  br i1 %or.cond.i, label %bb.d, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !22
  %i.am = icmp slt i32 %i.n, %i.al
  br i1 %i.am, label %bb.e, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.n, i32 noundef 1, i32 noundef 0)
  %i.an = zext nneg i32 %i.n to i64
  %i.ao = getelementptr inbounds nuw [139392 x i8], ptr %0, i64 %i.an
  %i.ap = zext nneg i32 %i.o to i64
  %i.aq = getelementptr inbounds nuw [4356 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2228247
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %.not.i = icmp eq i8 %i.as, 0
  br i1 %.not.i, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @stbcc__build_all_connections_for_cluster(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.n)
  br label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit.thread

stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit: ; preds = %bb.b
  %i.at = icmp sgt i32 %i.m, -2
  br i1 %i.at, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit.thread, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit62

stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit.thread: ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !21
  %i.aw = icmp slt i32 %i.p, %i.av
  %i.ax = icmp sgt i32 %i.n, -1
  %or.cond.i54 = and i1 %i.ax, %i.aw
  br i1 %or.cond.i54, label %bb.g, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit56

bb.g:                                             ; preds = %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit.thread
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !22
  %i.ba = icmp slt i32 %i.n, %i.az
  br i1 %i.ba, label %bb.h, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit56

bb.h:                                             ; preds = %bb.g
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %i.n, i32 noundef -1, i32 noundef 0)
  %i.bb = zext nneg i32 %i.n to i64
  %i.bc = getelementptr inbounds nuw [139392 x i8], ptr %0, i64 %i.bb
  %i.bd = zext nneg i32 %i.p to i64
  %i.be = getelementptr inbounds nuw [4356 x i8], ptr %i.bc, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2228247
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !19
  %.not.i55 = icmp eq i8 %i.bg, 0
  br i1 %.not.i55, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit56, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @stbcc__build_all_connections_for_cluster(ptr noundef nonnull %0, i32 noundef %i.p, i32 noundef %i.n)
  br label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit56

stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit56: ; preds = %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit.thread, %bb.g, %bb.h, %bb.i
  %i.bh = icmp sgt i32 %i.m, -1
  br i1 %i.bh, label %bb.j, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit62

bb.j:                                             ; preds = %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit56
  %i.bi = load i32, ptr %i.au, align 4, !tbaa !21
  %i.bj = icmp slt i32 %i.m, %i.bi
  %i.bk = icmp sgt i32 %i.n, 0
  %or.cond.i57 = and i1 %i.bk, %i.bj
  br i1 %or.cond.i57, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !22
  %.not64 = icmp sgt i32 %i.n, %i.bm
  br i1 %.not64, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.q, i32 noundef 0, i32 noundef 1)
  %i.bn = zext nneg i32 %i.q to i64
  %i.bo = getelementptr inbounds nuw [139392 x i8], ptr %0, i64 %i.bn
  %i.bp = zext nneg i32 %i.m to i64
  %i.bq = getelementptr inbounds nuw [4356 x i8], ptr %i.bo, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 2228247
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !19
  %.not.i58 = icmp eq i8 %i.bs, 0
  br i1 %.not.i58, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @stbcc__build_all_connections_for_cluster(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.q)
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.bt = load i32, ptr %i.au, align 4, !tbaa !21
  %i.bu = icmp slt i32 %i.m, %i.bt
  %i.bv = icmp sgt i32 %i.n, -2
  %or.cond.i60 = and i1 %i.bv, %i.bu
  br i1 %or.cond.i60, label %bb.o, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit62

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !22
  %i.by = icmp slt i32 %i.r, %i.bx
  br i1 %i.by, label %bb.p, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit62

bb.p:                                             ; preds = %bb.o
  tail call void @stbcc__add_connections_to_adjacent_cluster(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.r, i32 noundef 0, i32 noundef -1)
  %i.bz = zext nneg i32 %i.r to i64
  %i.ca = getelementptr inbounds nuw [139392 x i8], ptr %0, i64 %i.bz
  %i.cb = zext nneg i32 %i.m to i64
  %i.cc = getelementptr inbounds nuw [4356 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 2228247
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !19
  %.not.i61 = icmp eq i8 %i.ce, 0
  br i1 %.not.i61, label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit62, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @stbcc__build_all_connections_for_cluster(ptr noundef nonnull %0, i32 noundef %i.m, i32 noundef %i.r)
  br label %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit62

stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit62: ; preds = %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit56, %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit, %bb.n, %bb.o, %bb.p, %bb.q
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !24
  %.not53 = icmp eq i32 %i.cg, 0
  br i1 %.not53, label %bb.r, label %bb.s

bb.r:                                             ; preds = %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit62
  tail call void @stbcc__build_connected_components_for_clumps(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %stbcc__add_connections_to_adjacent_cluster_with_rebuild.exit62, %bb.r
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__remove_connections_to_adjacent_cluster(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [64 x [8 x i8]], align 16         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.b = shl nuw nsw i32 %1, 5
  %i.c = shl nuw nsw i32 %2, 5
  %i.d = icmp slt i32 %1, 0
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21   ; 2 uses
  %i.g = icmp sge i32 %1, %i.f
  %i.h = icmp slt i32 %2, 0
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22   ; 2 uses
  %.not = icmp slt i32 %2, %i.j
  br i1 %.not, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = add nsw i32 %3, %1                       ; 2 uses
  %i.l = icmp sgt i32 %i.k, -1
  %.not88 = icmp slt i32 %i.k, %i.f
  %or.cond92 = and i1 %i.l, %.not88
  br i1 %or.cond92, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %4, %2                       ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  %.not89 = icmp slt i32 %i.m, %i.j
  %or.cond93 = and i1 %i.n, %.not89
  br i1 %or.cond93, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  switch i32 %3, label %bb.h [
    i32 1, label %bb.j
    i32 -1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  switch i32 %4, label %.loopexit [
    i32 -1, label %bb.j
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.i
  %.080 = phi i64 [ 1, %bb.i ], [ 0, %bb.g ], [ 0, %bb.f ], [ 1, %bb.h ]
  %.079 = phi i64 [ 0, %bb.i ], [ 1, %bb.g ], [ 1, %bb.f ], [ 0, %bb.h ]
  %.077 = phi i64 [ 0, %bb.i ], [ 0, %bb.g ], [ 31, %bb.f ], [ 0, %bb.h ]
  %.076 = phi i64 [ 31, %bb.i ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.h ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 131092 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2228244
  %i.r = shl i32 %3, 30
  %i.s = ashr exact i32 %i.r, 30
  %i.t = shl i32 %4, 30
  %i.u = ashr exact i32 %i.t, 30
  %i.v = zext nneg i32 %i.c to i64
  %i.w = sext i32 %4 to i64
  %i.x = zext nneg i32 %i.b to i64
  %i.y = sext i32 %3 to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %stbcc__remove_clump_connection.exit
  %indvars.iv99 = phi i64 [ %.077, %bb.j ], [ %indvars.iv.next100, %stbcc__remove_clump_connection.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %.076, %bb.j ], [ %indvars.iv.next, %stbcc__remove_clump_connection.exit ] ; 2 uses
  %.07597 = phi i32 [ 0, %bb.j ], [ %i.cx, %stbcc__remove_clump_connection.exit ]
  %i.z = add nuw nsw i64 %indvars.iv, %i.v        ; 4 uses
  %i.aa = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %i.z
  %i.ab = add nuw nsw i64 %indvars.iv99, %i.x     ; 4 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 536870911
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i32
  %i.ah = trunc nuw nsw i64 %indvars.iv99 to i32
  %i.ai = and i32 %i.ah, 7
  %i.aj = shl nuw nsw i32 1, %i.ai
  %i.ak = and i32 %i.aj, %i.ag
  %.not90 = icmp eq i32 %i.ak, 0
  br i1 %.not90, label %stbcc__remove_clump_connection.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i64 %i.z, %i.w                  ; 2 uses
  %i.am = getelementptr inbounds [128 x i8], ptr %i.o, i64 %i.al
  %i.an = add nsw i64 %i.ab, %i.y                 ; 2 uses
  %i.ao = trunc nsw i64 %i.an to i32              ; 2 uses
  %i.ap = ashr i32 %i.ao, 3
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.at = zext i8 %i.as to i32
  %i.au = and i32 %i.ao, 7
  %i.av = shl nuw nsw i32 1, %i.au
  %i.aw = and i32 %i.av, %i.at
  %.not91 = icmp eq i32 %i.aw, 0
  br i1 %.not91, label %stbcc__remove_clump_connection.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw [2048 x i8], ptr %i.p, i64 %i.z
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.ab
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !10
  %i.ba = getelementptr inbounds [2048 x i8], ptr %i.p, i64 %i.al
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.ba, i64 %i.an
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !10 ; 2 uses
  %i.bd = zext i16 %i.az to i64                   ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bd
  %i.bf = zext i16 %i.bc to i32                   ; 2 uses
  %i.bg = lshr i32 %i.bf, 3
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bh ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !11  ; 2 uses
  %i.bk = zext i8 %i.bj to i32
  %i.bl = and i32 %i.bf, 7
  %i.bm = shl nuw nsw i32 1, %i.bl                ; 2 uses
  %i.bn = and i32 %i.bm, %i.bk
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %stbcc__remove_clump_connection.exit

bb.n:                                             ; preds = %bb.m
  %i.bp = trunc nuw i32 %i.bm to i8
  %i.bq = or i8 %i.bj, %i.bp
  store i8 %i.bq, ptr %i.bi, align 1, !tbaa !11
  %i.br = lshr i64 %i.ab, 5
  %i.bs = lshr i64 %i.z, 5
  %i.bt = and i64 %i.bs, 134217727
  %i.bu = getelementptr inbounds nuw [139392 x i8], ptr %i.q, i64 %i.bt
  %i.bv = and i64 %i.br, 134217727
  %i.bw = getelementptr inbounds nuw [4356 x i8], ptr %i.bu, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.bd ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 4100
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 6
  %i.cb = load i8, ptr %i.ca, align 2, !tbaa !17
  %i.cc = zext i8 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.cc ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !18  ; 3 uses
  %.not.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i, label %stbcc__remove_clump_connection.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %wide.trip.count.i = zext i8 %i.cf to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.r ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.ch = load i16, ptr %i.cg, align 2            ; 3 uses
  %i.ci = xor i16 %i.ch, %i.bc
  %i.cj = and i16 %i.ci, 4095
  %i.ck = icmp eq i16 %i.cj, 0
  br i1 %i.ck, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.cl = shl i16 %i.ch, 2
  %i.cm = ashr i16 %i.cl, 14
  %i.cn = sext i16 %i.cm to i32
  %i.co = icmp eq i32 %i.s, %i.cn
  br i1 %i.co, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cp = ashr i16 %i.ch, 14
  %i.cq = sext i16 %i.cp to i32
  %i.cr = icmp eq i32 %i.u, %i.cq
  br i1 %i.cr, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %stbcc__remove_clump_connection.exit, label %bb.o, !llvm.loop !0

bb.s:                                             ; preds = %bb.q
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %indvars.iv.i
  %i.ct = add i8 %i.cf, -1                        ; 2 uses
  store i8 %i.ct, ptr %i.ce, align 4, !tbaa !18
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !11
  store i16 %i.cw, ptr %i.cs, align 2, !tbaa !11
  br label %stbcc__remove_clump_connection.exit

stbcc__remove_clump_connection.exit:              ; preds = %bb.r, %bb.s, %bb.n, %bb.m, %bb.l, %bb.k
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, %.080
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, %.079
  %i.cx = add nuw nsw i32 %.07597, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cx, 32
  br i1 %exitcond.not, label %.loopexit, label %bb.k, !llvm.loop !42

.loopexit:                                        ; preds = %stbcc__remove_clump_connection.exit, %bb.h, %bb.d, %bb.e, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

; Function Attrs: nofree nosync nounwind memory(argmem: readwrite) uwtable
define void @stbcc__build_clumps_for_cluster(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
end_hunk_1
