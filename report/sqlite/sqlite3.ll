Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 92
loop-unroll.NumUnrolled: 369
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3WalCheckpoint:bb.a

bb.ab:                                            ; preds = %walBusyLock.exit.thread199.3.i
  %i.ff = load volatile i32, ptr %i.bi, align 4, !tbaa !1583
  %i.fg = load i32, ptr %i.at, align 8, !tbaa !1560 ; 4 uses
  %i.fh = add i32 %i.fg, 4096
  %i.fi = zext i32 %i.fh to i64
  %i.fj = add nuw nsw i64 %i.fi, 17592186040353
  %i.fk = lshr i64 %i.fj, 12                      ; 2 uses
  %i.fl = trunc i64 %i.fk to i32                  ; 2 uses
  %i.fm = add nsw i32 %i.fl, 1                    ; 2 uses
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = shl nuw nsw i64 %i.fn, 5
  %i.fp = zext i32 %i.fg to i64
  %i.fq = shl nuw nsw i64 %i.fp, 1
  %i.fr = add nuw nsw i64 %i.fq, 8
  %i.fs = add nuw nsw i64 %i.fr, %i.fo            ; 3 uses
  %i.ft = tail call i32 @sqlite3_initialize(), !inline_history !3874
  %.not.i.i149.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i149.i, label %sqlite3_malloc64.exit.i.i, label %.thread98

sqlite3_malloc64.exit.i.i:                        ; preds = %bb.ab
  %i.fu = tail call i32 @llvm.umin.i32(i32 %i.fg, i32 4096)
  %i.fv = shl nuw nsw i32 %i.fu, 1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = add nuw nsw i64 %i.fs, %i.fw
  %i.fy = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.fx), !inline_history !3874 ; 16 uses
  %.not.i150.i = icmp eq ptr %i.fy, null
  br i1 %.not.i150.i, label %.thread98, label %bb.ac

bb.ac:                                            ; preds = %sqlite3_malloc64.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fy, i8 0, i64 %i.fs, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 4 ; 4 uses
  store i32 %i.fm, ptr %i.fz, align 4, !tbaa !570
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 %i.fs ; 4 uses
  %i.gb = add i32 %i.ff, 4097
  %i.gc = zext i32 %i.gb to i64
  %i.gd = add nuw nsw i64 %i.gc, 17592186040353
  %i.ge = lshr i64 %i.gd, 12                      ; 2 uses
  %i.gf = trunc i64 %i.ge to i32
  %.not74.i.i = icmp sgt i32 %i.gf, %i.fl
  br i1 %.not74.i.i, label %walIteratorInit.exit.i, label %.lr.ph71.i.i

.lr.ph71.i.i:                                     ; preds = %bb.ac
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %sext.i.i = shl i64 %i.ge, 32
  %i.gk = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %sext87.i.i = shl i64 %i.fk, 32
  %i.gl = ashr exact i64 %sext87.i.i, 32          ; 2 uses
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.gk, i64 %i.gl)
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i.i, %.lr.ph71.i.i
  %indvars.iv78.i.i = phi i64 [ %i.gk, %.lr.ph71.i.i ], [ %indvars.iv.next79.i.i, %.loopexit.i.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #58
  %i.gm = load i32, ptr %i.gh, align 8, !tbaa !1563
  %i.gn = sext i32 %i.gm to i64
  %.not.i.i.i.i = icmp slt i64 %indvars.iv78.i.i, %i.gn
  br i1 %.not.i.i.i.i, label %bb.ae, label %walIndexPage.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.go = load ptr, ptr %i.bh, align 8, !tbaa !1480
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.go, i64 %indvars.iv78.i.i
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !786 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %walIndexPage.exit.i.i.i, label %walIndexPage.exit.thread.i.i.thread.i

walIndexPage.exit.thread.i.i.thread.i:            ; preds = %bb.ae
  %i.gs = icmp eq i64 %indvars.iv78.i.i, 0        ; 2 uses
  %.idx.i209.i = select i1 %i.gs, i64 136, i64 0  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx.i209.i
  %.pre293.i = trunc nsw i64 %indvars.iv78.i.i to i32
  br label %bb.af

walIndexPage.exit.i.i.i:                          ; preds = %bb.ae, %bb.ad
  %i.gu = trunc nsw i64 %indvars.iv78.i.i to i32  ; 2 uses
  %i.gv = call fastcc i32 @walIndexPageRealloc(ptr noundef nonnull %0, i32 noundef %i.gu, ptr noundef nonnull %i.gg), !inline_history !3875 ; 3 uses
  %.pr.i.i.i = load ptr, ptr %i.gg, align 8, !tbaa !1565 ; 2 uses
  %.not.i55.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i55.i.i, label %walHashGet.exit.thread.i.i, label %walIndexPage.exit.thread.i.i.i

walIndexPage.exit.thread.i.i.i:                   ; preds = %walIndexPage.exit.i.i.i
  %i.gw = icmp eq i64 %indvars.iv78.i.i, 0        ; 2 uses
  %.idx.i.i = select i1 %i.gw, i64 136, i64 0     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 %.idx.i.i
  %i.gy = icmp eq i32 %i.gv, 0
  br i1 %i.gy, label %bb.af, label %._crit_edge72.thread94.i.i

walHashGet.exit.thread.i.i:                       ; preds = %walIndexPage.exit.i.i.i
  %spec.store.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.gv, i32 1)
  br label %._crit_edge72.thread94.i.i

bb.af:                                            ; preds = %walIndexPage.exit.thread.i.i.i, %walIndexPage.exit.thread.i.i.thread.i
  %.pre-phi.i = phi i32 [ %.pre293.i, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gu, %walIndexPage.exit.thread.i.i.i ]
  %i.gz = phi ptr [ %i.gt, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gx, %walIndexPage.exit.thread.i.i.i ] ; 9 uses
  %.idx.i210.i = phi i64 [ %.idx.i209.i, %walIndexPage.exit.thread.i.i.thread.i ], [ %.idx.i.i, %walIndexPage.exit.thread.i.i.i ]
  %i.ha = phi i1 [ %i.gs, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gw, %walIndexPage.exit.thread.i.i.i ]
  %i.hb = shl i32 %.pre-phi.i, 12
  %i.hc = add i32 %i.hb, -34
  %i.hd = select i1 %i.ha, i32 0, i32 %i.hc       ; 3 uses
  %i.he = icmp eq i64 %indvars.iv78.i.i, %i.gl
  %gepdiff.i.i = sub nuw nsw i64 16384, %.idx.i210.i
  %i.hf = lshr exact i64 %gepdiff.i.i, 2
  %i.hg = trunc nuw nsw i64 %i.hf to i32
  %i.hh = sub i32 %i.fg, %i.hd
  %storemerge.i.i = select i1 %i.he, i32 %i.hh, i32 %i.hg ; 5 uses
  %i.hi = load i32, ptr %i.fz, align 4, !tbaa !570
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds [32 x i8], ptr %i.gj, i64 %i.hj
  %i.hl = zext i32 %i.hd to i64
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.hl ; 5 uses
  %i.hn = or disjoint i32 %i.hd, 1                ; 2 uses
  store i32 %i.hn, ptr %i.gi, align 8, !tbaa !1566
  %i.ho = icmp sgt i32 %storemerge.i.i, 0
  br i1 %i.ho, label %iter.check, label %._crit_edge.i.i

iter.check:                                       ; preds = %bb.af
  %wide.trip.count.i.i = zext nneg i32 %storemerge.i.i to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %storemerge.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check238 = icmp ult i32 %storemerge.i.i, 16
  br i1 %min.iters.check238, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hp = and i64 %wide.trip.count.i.i, 12
  %n.vec = and i64 %wide.trip.count.i.i, 2147483632 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, splat (i16 8)
  %i.hq = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %index ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store <8 x i16> %vec.ind, ptr %i.hq, align 2, !tbaa !783
  store <8 x i16> %step.add, ptr %i.hr, align 2, !tbaa !783
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i16> %vec.ind, splat (i16 16)
  %i.hs = icmp eq i64 %index.next, %n.vec
  br i1 %i.hs, label %middle.block, label %vector.body, !llvm.loop !3876

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %.lr.ph67.preheader.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hp, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec239 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %i.ht = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.ht, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next242, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind241 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next243, %vec.epilog.vector.body ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %index240
  store <4 x i16> %vec.ind241, ptr %i.hu, align 2, !tbaa !783
  %index.next242 = add nuw i64 %index240, 4       ; 2 uses
  %vec.ind.next243 = add <4 x i16> %vec.ind241, splat (i16 4)
  %i.hv = icmp eq i64 %index.next242, %n.vec239
  br i1 %i.hv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3877

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n244 = icmp eq i64 %n.vec239, %wide.trip.count.i.i
  br i1 %cmp.n244, label %.lr.ph67.preheader.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec239, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.hw = trunc i64 %indvars.iv.i.i to i16
  %i.hx = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv.i.i
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !783
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph67.preheader.i.i.i, label %.lr.ph.i.i, !llvm.loop !3878

._crit_edge.i.i:                                  ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %10, i8 0, i64 208, i1 false)
  br label %.lr.ph75.preheader.i.i.i

.lr.ph67.preheader.i.i.i:                         ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %10, i8 0, i64 208, i1 false)
  br label %.lr.ph67.i.i.i

.preheader.i.i.i:                                 ; preds = %._crit_edge.i.i.i
  %i.hy = add i32 %.1.lcssa.i.i.i, 1              ; 2 uses
  %i.hz = icmp ult i32 %i.hy, 13
  br i1 %i.hz, label %.lr.ph75.preheader.i.i.i, label %.loopexit.i.i

.lr.ph75.preheader.i.i.i:                         ; preds = %.preheader.i.i.i, %._crit_edge.i.i
  %.026.lcssa89.i.i.i = phi i32 [ %i.hy, %.preheader.i.i.i ], [ 1, %._crit_edge.i.i ]
  %.052.lcssa88.i.i.i = phi ptr [ %.153.lcssa.i.i.i, %.preheader.i.i.i ], [ null, %._crit_edge.i.i ]
  %.055.lcssa87.i.i.i = phi i32 [ %.156.lcssa.i.i.i, %.preheader.i.i.i ], [ 0, %._crit_edge.i.i ]
  %i.ia = zext nneg i32 %.026.lcssa89.i.i.i to i64
  br label %.lr.ph75.i.i.i

.lr.ph67.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph67.preheader.i.i.i
  %indvars.iv.i.i.i.a = phi i64 [ 0, %.lr.ph67.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.a, %._crit_edge.i.i.i ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv.i.i.i.a ; 2 uses
  %i.ic = trunc nuw nsw i64 %indvars.iv.i.i.i.a to i32 ; 2 uses
  %i.id = and i32 %i.ic, 1
  %.not2859.i.i.i = icmp eq i32 %i.id, 0
  br i1 %.not2859.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph67.i.i.i, %walMerge.exit.i.i.i
  %.162.i.i.i = phi i32 [ %13, %walMerge.exit.i.i.i ], [ 0, %.lr.ph67.i.i.i ] ; 2 uses
  %.15361.i.i.i = phi ptr [ %i.ig, %walMerge.exit.i.i.i ], [ %i.ib, %.lr.ph67.i.i.i ] ; 2 uses
  %.15660.i.i.i = phi i32 [ %.038.lcssa.i.i.i.i, %walMerge.exit.i.i.i ], [ 1, %.lr.ph67.i.i.i ] ; 2 uses
  %12 = zext i32 %.162.i.i.i to i64
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %12 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !3904 ; 6 uses
  %i.ih = load i32, ptr %i.ie, align 16, !tbaa !3905 ; 3 uses
  %i.ii = icmp sgt i32 %.15660.i.i.i, 0           ; 2 uses
  %i.ij = icmp sgt i32 %i.ih, 0                   ; 2 uses
  %i.ik = or i1 %i.ii, %i.ij
  br i1 %i.ik, label %.lr.ph.i.i.i.i, label %walMerge.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i, %bb.al
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.al ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.il = phi i1 [ %i.js, %bb.al ], [ %i.ij, %.lr.ph.i.i.i ]
  %i.im = phi i1 [ %i.jr, %bb.al ], [ %i.ii, %.lr.ph.i.i.i ]
  %.03943.i.i.i.i = phi i32 [ %.1.i.i.i.i, %bb.al ], [ 0, %.lr.ph.i.i.i ] ; 4 uses
  %.04042.i.i.i.i = phi i32 [ %.2.i.i.i.i, %bb.al ], [ 0, %.lr.ph.i.i.i ] ; 3 uses
  br i1 %i.il, label %bb.ag, label %.lr.ph._crit_edge.i.i.i.i

.lr.ph._crit_edge.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i
  %.pre46.i.i.i.i = sext i32 %.03943.i.i.i.i to i64
  br label %bb.ai

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i
  %i.in = sext i32 %.04042.i.i.i.i to i64         ; 2 uses
  br i1 %i.im, label %bb.ah, label %._crit_edge45.i.i.i.i

bb.ah:                                            ; preds = %bb.ag
  %i.io = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.in
  %i.ip = load i16, ptr %i.io, align 2, !tbaa !783
  %i.iq = zext i16 %i.ip to i64
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.iq
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !570
  %i.it = sext i32 %.03943.i.i.i.i to i64         ; 2 uses
  %i.iu = getelementptr inbounds [2 x i8], ptr %.15361.i.i.i, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !783
  %i.iw = zext i16 %i.iv to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !570
  %i.iz = icmp ult i32 %i.is, %i.iy
  br i1 %i.iz, label %._crit_edge45.i.i.i.i, label %bb.ai

._crit_edge45.i.i.i.i:                            ; preds = %bb.ah, %bb.ag
  %i.ja = add nsw i32 %.04042.i.i.i.i, 1
  %i.jb = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.in
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ah, %.lr.ph._crit_edge.i.i.i.i
  %.pre-phi47.i.i.i.i = phi i64 [ %.pre46.i.i.i.i, %.lr.ph._crit_edge.i.i.i.i ], [ %i.it, %bb.ah ]
  %i.jc = add nsw i32 %.03943.i.i.i.i, 1
  %i.jd = getelementptr inbounds [2 x i8], ptr %.15361.i.i.i, i64 %.pre-phi47.i.i.i.i
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge45.i.i.i.i
  %.141.i.i.i.i = phi i32 [ %i.ja, %._crit_edge45.i.i.i.i ], [ %.04042.i.i.i.i, %bb.ai ] ; 4 uses
  %.1.i.i.i.i = phi i32 [ %.03943.i.i.i.i, %._crit_edge45.i.i.i.i ], [ %i.jc, %bb.ai ] ; 2 uses
  %.0.in.i.i.i.i = phi ptr [ %i.jb, %._crit_edge45.i.i.i.i ], [ %i.jd, %bb.ai ]
  %.0.i.i.i.i = load i16, ptr %.0.in.i.i.i.i, align 2, !tbaa !783 ; 2 uses
  %i.je = zext i16 %.0.i.i.i.i to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !570
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.i.i.i.i
  store i16 %.0.i.i.i.i, ptr %i.jh, align 2, !tbaa !783
  %i.ji = icmp slt i32 %.141.i.i.i.i, %i.ih
  br i1 %i.ji, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.jj = sext i32 %.141.i.i.i.i to i64
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.ig, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !783
  %i.jm = zext i16 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !570
  %i.jp = icmp eq i32 %i.jo, %i.jg
  %i.jq = zext i1 %i.jp to i32
  %spec.select.i.i.i.i = add nsw i32 %.141.i.i.i.i, %i.jq
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.2.i.i.i.i = phi i32 [ %.141.i.i.i.i, %bb.aj ], [ %spec.select.i.i.i.i, %bb.ak ] ; 2 uses
  %i.jr = icmp slt i32 %.1.i.i.i.i, %.15660.i.i.i ; 2 uses
  %i.js = icmp slt i32 %.2.i.i.i.i, %i.ih         ; 2 uses
  %i.jt = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %i.jt, label %.lr.ph.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !3879

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.al
  %i.ju = trunc nuw i64 %indvars.iv.next.i.i.i.i to i32
  br label %walMerge.exit.i.i.i

walMerge.exit.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %.lr.ph.i.i.i
  %.038.lcssa.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.ju, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.jv = shl nuw i32 %.038.lcssa.i.i.i.i, 1
  %i.jw = zext i32 %i.jv to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.ig, ptr nonnull align 2 %i.ga, i64 %i.jw, i1 false)
  %13 = add i32 %.162.i.i.i, 1                    ; 3 uses
  %i.jx = shl nuw i32 1, %13
  %i.jy = and i32 %i.jx, %i.ic
  %.not28.i.i.i = icmp eq i32 %i.jy, 0
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3880

._crit_edge.i.i.i:                                ; preds = %walMerge.exit.i.i.i, %.lr.ph67.i.i.i
  %.156.lcssa.i.i.i = phi i32 [ 1, %.lr.ph67.i.i.i ], [ %.038.lcssa.i.i.i.i, %walMerge.exit.i.i.i ] ; 3 uses
  %.153.lcssa.i.i.i = phi ptr [ %i.ib, %.lr.ph67.i.i.i ], [ %i.ig, %walMerge.exit.i.i.i ] ; 2 uses
  %.1.lcssa.i.i.i = phi i32 [ 0, %.lr.ph67.i.i.i ], [ %13, %walMerge.exit.i.i.i ] ; 2 uses
  %i.jz = zext i32 %.1.lcssa.i.i.i to i64
  %i.ka = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  store ptr %.153.lcssa.i.i.i, ptr %i.kb, align 8, !tbaa !3904
  store i32 %.156.lcssa.i.i.i, ptr %i.ka, align 16, !tbaa !3905
  %indvars.iv.next.i.i.i.a = add nuw nsw i64 %indvars.iv.i.i.i.a, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.a, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph67.i.i.i, !llvm.loop !3881

.lr.ph75.i.i.i:                                   ; preds = %bb.at, %.lr.ph75.preheader.i.i.i
  %indvars.iv80.i.i.i = phi i64 [ %i.ia, %.lr.ph75.preheader.i.i.i ], [ %indvars.iv.next81.i.i.i, %bb.at ] ; 3 uses
  %.25473.i.i.i = phi ptr [ %.052.lcssa88.i.i.i, %.lr.ph75.preheader.i.i.i ], [ %.3.i.i.i, %bb.at ] ; 3 uses
  %.25772.i.i.i = phi i32 [ %.055.lcssa87.i.i.i, %.lr.ph75.preheader.i.i.i ], [ %.358.i.i.i, %bb.at ] ; 3 uses
  %i.kc = trunc nuw nsw i64 %indvars.iv80.i.i.i to i32
  %i.kd = shl nuw nsw i32 1, %i.kc
  %i.ke = and i32 %i.kd, %storemerge.i.i
  %.not.i57.i.i = icmp eq i32 %i.ke, 0
  br i1 %.not.i57.i.i, label %bb.at, label %bb.am

bb.am:                                            ; preds = %.lr.ph75.i.i.i
  %i.kf = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %indvars.iv80.i.i.i ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !3904 ; 5 uses
  %i.ki = load i32, ptr %i.kf, align 16, !tbaa !3905 ; 3 uses
  %i.kj = icmp sgt i32 %.25772.i.i.i, 0           ; 2 uses
  %i.kk = icmp sgt i32 %i.ki, 0                   ; 2 uses
  %i.kl = or i1 %i.kj, %i.kk
  br i1 %i.kl, label %.lr.ph.i30.i.i.i, label %walMerge.exit46.i.i.i

.lr.ph.i30.i.i.i:                                 ; preds = %bb.am, %bb.as
  %indvars.iv.i31.i.i.i = phi i64 [ %indvars.iv.next.i41.i.i.i, %bb.as ], [ 0, %bb.am ] ; 2 uses
  %i.km = phi i1 [ %i.lt, %bb.as ], [ %i.kk, %bb.am ]
  %i.kn = phi i1 [ %i.ls, %bb.as ], [ %i.kj, %bb.am ]
  %.03943.i32.i.i.i = phi i32 [ %.1.i38.i.i.i, %bb.as ], [ 0, %bb.am ] ; 4 uses
  %.04042.i33.i.i.i = phi i32 [ %.2.i42.i.i.i, %bb.as ], [ 0, %bb.am ] ; 3 uses
  br i1 %i.km, label %bb.an, label %.lr.ph._crit_edge.i34.i.i.i

.lr.ph._crit_edge.i34.i.i.i:                      ; preds = %.lr.ph.i30.i.i.i
  %.pre46.i35.i.i.i = sext i32 %.03943.i32.i.i.i to i64
  br label %bb.ap

bb.an:                                            ; preds = %.lr.ph.i30.i.i.i
  %i.ko = sext i32 %.04042.i33.i.i.i to i64       ; 2 uses
  br i1 %i.kn, label %bb.ao, label %._crit_edge45.i45.i.i.i

bb.ao:                                            ; preds = %bb.an
  %i.kp = getelementptr inbounds [2 x i8], ptr %i.kh, i64 %i.ko
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !783
  %i.kr = zext i16 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !570
  %i.ku = sext i32 %.03943.i32.i.i.i to i64       ; 2 uses
  %i.kv = getelementptr inbounds [2 x i8], ptr %.25473.i.i.i, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !783
  %i.kx = zext i16 %i.kw to i64
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.kx
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !570
  %i.la = icmp ult i32 %i.kt, %i.kz
  br i1 %i.la, label %._crit_edge45.i45.i.i.i, label %bb.ap

._crit_edge45.i45.i.i.i:                          ; preds = %bb.ao, %bb.an
  %i.lb = add nsw i32 %.04042.i33.i.i.i, 1
  %i.lc = getelementptr inbounds [2 x i8], ptr %i.kh, i64 %i.ko
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %.lr.ph._crit_edge.i34.i.i.i
  %.pre-phi47.i36.i.i.i = phi i64 [ %.pre46.i35.i.i.i, %.lr.ph._crit_edge.i34.i.i.i ], [ %i.ku, %bb.ao ]
  %i.ld = add nsw i32 %.03943.i32.i.i.i, 1
  %i.le = getelementptr inbounds [2 x i8], ptr %.25473.i.i.i, i64 %.pre-phi47.i36.i.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge45.i45.i.i.i
  %.141.i37.i.i.i = phi i32 [ %i.lb, %._crit_edge45.i45.i.i.i ], [ %.04042.i33.i.i.i, %bb.ap ] ; 4 uses
  %.1.i38.i.i.i = phi i32 [ %.03943.i32.i.i.i, %._crit_edge45.i45.i.i.i ], [ %i.ld, %bb.ap ] ; 2 uses
  %.0.in.i39.i.i.i = phi ptr [ %i.lc, %._crit_edge45.i45.i.i.i ], [ %i.le, %bb.ap ]
  %.0.i40.i.i.i = load i16, ptr %.0.in.i39.i.i.i, align 2, !tbaa !783 ; 2 uses
  %i.lf = zext i16 %.0.i40.i.i.i to i64
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !570
  %indvars.iv.next.i41.i.i.i = add nuw nsw i64 %indvars.iv.i31.i.i.i, 1 ; 2 uses
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv.i31.i.i.i
  store i16 %.0.i40.i.i.i, ptr %i.li, align 2, !tbaa !783
  %i.lj = icmp slt i32 %.141.i37.i.i.i, %i.ki
  br i1 %i.lj, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.lk = sext i32 %.141.i37.i.i.i to i64
  %i.ll = getelementptr inbounds [2 x i8], ptr %i.kh, i64 %i.lk
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !783
  %i.ln = zext i16 %i.lm to i64
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.ln
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !570
  %i.lq = icmp eq i32 %i.lp, %i.lh
  %i.lr = zext i1 %i.lq to i32
  %spec.select.i44.i.i.i = add nsw i32 %.141.i37.i.i.i, %i.lr
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.2.i42.i.i.i = phi i32 [ %.141.i37.i.i.i, %bb.aq ], [ %spec.select.i44.i.i.i, %bb.ar ] ; 2 uses
  %i.ls = icmp slt i32 %.1.i38.i.i.i, %.25772.i.i.i ; 2 uses
  %i.lt = icmp slt i32 %.2.i42.i.i.i, %i.ki       ; 2 uses
  %i.lu = select i1 %i.ls, i1 true, i1 %i.lt
  br i1 %i.lu, label %.lr.ph.i30.i.i.i, label %._crit_edge.loopexit.i43.i.i.i, !llvm.loop !3879

._crit_edge.loopexit.i43.i.i.i:                   ; preds = %bb.as
  %i.lv = trunc nuw i64 %indvars.iv.next.i41.i.i.i to i32
  br label %walMerge.exit46.i.i.i

walMerge.exit46.i.i.i:                            ; preds = %._crit_edge.loopexit.i43.i.i.i, %bb.am
  %.038.lcssa.i29.i.i.i = phi i32 [ 0, %bb.am ], [ %i.lv, %._crit_edge.loopexit.i43.i.i.i ] ; 2 uses
  %i.lw = shl nuw i32 %.038.lcssa.i29.i.i.i, 1
  %i.lx = zext i32 %i.lw to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.kh, ptr nonnull align 2 %i.ga, i64 %i.lx, i1 false)
  br label %bb.at

bb.at:                                            ; preds = %walMerge.exit46.i.i.i, %.lr.ph75.i.i.i
  %.358.i.i.i = phi i32 [ %.25772.i.i.i, %.lr.ph75.i.i.i ], [ %.038.lcssa.i29.i.i.i, %walMerge.exit46.i.i.i ] ; 2 uses
  %.3.i.i.i = phi ptr [ %.25473.i.i.i, %.lr.ph75.i.i.i ], [ %i.kh, %walMerge.exit46.i.i.i ]
  %indvars.iv.next81.i.i.i = add nuw nsw i64 %indvars.iv80.i.i.i, 1 ; 2 uses
  %i.ly = and i64 %indvars.iv.next81.i.i.i, 4294967295
  %exitcond83.not.i.i.i = icmp eq i64 %i.ly, 13
  br i1 %exitcond83.not.i.i.i, label %.loopexit.i.i, label %.lr.ph75.i.i.i, !llvm.loop !3882

._crit_edge72.thread94.i.i:                       ; preds = %walIndexPage.exit.thread.i.i.i, %walHashGet.exit.thread.i.i
  %.0.i5664.ph.i.i = phi i32 [ %spec.store.select.i.i.i, %walHashGet.exit.thread.i.i ], [ %i.gv, %walIndexPage.exit.thread.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #58
  %i.lz = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i58.i.i = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i58.i.i, label %bb.ax, label %bb.au

.loopexit.i.i:                                    ; preds = %bb.at, %.preheader.i.i.i
  %.257.lcssa.i.i.i = phi i32 [ %.156.lcssa.i.i.i, %.preheader.i.i.i ], [ %.358.i.i.i, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #58
  %i.ma = getelementptr inbounds [32 x i8], ptr %i.gj, i64 %indvars.iv78.i.i ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 28
  store i32 %i.hn, ptr %i.mb, align 4, !tbaa !3907
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 24
  store i32 %.257.lcssa.i.i.i, ptr %i.mc, align 8, !tbaa !3908
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  store ptr %i.hm, ptr %i.md, align 8, !tbaa !3909
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  store ptr %i.gz, ptr %i.me, align 8, !tbaa !3910
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #58
  %indvars.iv.next79.i.i = add nsw i64 %indvars.iv78.i.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv78.i.i, %smax.i
  br i1 %exitcond.not.i, label %walIteratorInit.exit.i, label %bb.ad, !llvm.loop !3883

bb.au:                                            ; preds = %._crit_edge72.thread94.i.i
  %i.mf = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i.i.i, label %sqlite3_mutex_enter.exit.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.mg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.mg(ptr noundef nonnull %i.mf) #58, !inline_history !3884
  br label %sqlite3_mutex_enter.exit.i.i.i.i

sqlite3_mutex_enter.exit.i.i.i.i:                 ; preds = %bb.av, %bb.au
  %i.mh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.mi = tail call i32 %i.mh(ptr noundef nonnull %i.fy) #58, !inline_history !3885
  %i.mj = sext i32 %i.mi to i64
  %i.mk = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ml = sub nsw i64 %i.mk, %i.mj
  store i64 %i.ml, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.mm = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.mn = add nsw i64 %i.mm, -1
  store i64 %i.mn, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.mo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.mo(ptr noundef nonnull %i.fy) #58, !inline_history !3886
  %i.mp = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i.i = icmp eq ptr %i.mp, null
  br i1 %.not.i4.i.i.i.i, label %walUnlockExclusive.exit173.i, label %bb.aw

bb.aw:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i.i
  %i.mq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.mq(ptr noundef nonnull %i.mp) #58, !inline_history !3887
  br label %walUnlockExclusive.exit173.i

bb.ax:                                            ; preds = %._crit_edge72.thread94.i.i
  %i.mr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.mr(ptr noundef nonnull %i.fy) #58, !inline_history !3886
  br label %walUnlockExclusive.exit173.i

walIteratorInit.exit.i:                           ; preds = %.loopexit.i.i, %bb.ac
  %.not11.i151.i = icmp eq ptr %.2.ph.3.i, null
  br i1 %.not11.i151.i, label %.split.us.i157.i, label %.split.i152.i

.split.us.i157.i:                                 ; preds = %walIteratorInit.exit.i
  %i.ms = load i8, ptr %i.bn, align 1, !tbaa !1471
  %.not.i.us.i158.i = icmp eq i8 %i.ms, 0
  br i1 %.not.i.us.i158.i, label %walLockExclusive.exit.us.i159.i, label %walBusyLock.exit160.thread.i

walLockExclusive.exit.us.i159.i:                  ; preds = %.split.us.i157.i
  %i.mt = load ptr, ptr %i.bo, align 8, !tbaa !1476 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !863
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 112
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !1477
  %i.mx = tail call i32 %i.mw(ptr noundef nonnull %i.mt, i32 noundef range(i32 -2147483645, 257) 3, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #58, !inline_history !3871
  br label %walBusyLock.exit160.i

end_hunk_0
begin_hunk_1_@balance:bb.a
  %i.azi = load ptr, ptr %i.azh, align 8, !tbaa !1514 ; 5 uses
  %i.azj = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv1016.i
  %i.azk = load i32, ptr %i.azj, align 4, !tbaa !570 ; 5 uses
  %i.azl = sext i32 %i.azk to i64                 ; 2 uses
  %i.azm = getelementptr inbounds [8 x i8], ptr %i.azf, i64 %i.azl
  %i.azn = load ptr, ptr %i.azm, align 8, !tbaa !741 ; 3 uses
  %i.azo = getelementptr inbounds [2 x i8], ptr %i.azg, i64 %i.azl
  %i.azp = load i16, ptr %i.azo, align 2, !tbaa !783 ; 2 uses
  %i.azq = zext i16 %i.azp to i32
  %i.azr = add nuw nsw i32 %i.azq, %i.ahd         ; 2 uses
  %i.azs = sext i32 %.0529846.i to i64
  %i.azt = getelementptr inbounds i8, ptr %i.ue, i64 %i.azs ; 6 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azi, i64 8
  %i.azv = load i8, ptr %i.azu, align 8, !tbaa !1115
  %.not596.i = icmp eq i8 %i.azv, 0
  br i1 %.not596.i, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azi, i64 80
  %i.azx = load ptr, ptr %i.azw, align 8, !tbaa !988
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 8
  %i.azz = load i32, ptr %i.azn, align 1
  store i32 %i.azz, ptr %i.azy, align 1
  br label %bb.gg

bb.fy:                                            ; preds = %bb.fw
  br i1 %.not619.i, label %bb.ge, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.baa = add nsw i32 %i.azk, -1                 ; 2 uses
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azi, i64 128
  %i.bac = load ptr, ptr %i.bab, align 8, !tbaa !1496
  %i.bad = sext i32 %i.baa to i64
  %i.bae = getelementptr inbounds [8 x i8], ptr %i.azf, i64 %i.bad
  %i.baf = load ptr, ptr %i.bae, align 8, !tbaa !741
  call void %i.bac(ptr noundef nonnull %i.azi, ptr noundef %i.baf, ptr noundef nonnull %3) #58, !inline_history !4288
  %i.bag = getelementptr inbounds nuw i8, ptr %i.azt, i64 4 ; 3 uses
  %i.bah = load i64, ptr %3, align 8, !tbaa !1592 ; 6 uses
  %i.bai = icmp ult i64 %i.bah, 128
  br i1 %i.bai, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.baj = trunc nuw nsw i64 %i.bah to i8
  store i8 %i.baj, ptr %i.bag, align 1, !tbaa !733
  br label %sqlite3PutVarint.exit.i

bb.gb:                                            ; preds = %bb.fz
  %i.bak = icmp ult i64 %i.bah, 16384
  br i1 %i.bak, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb
  %i.bal = lshr i64 %i.bah, 7
  %i.bam = trunc nuw nsw i64 %i.bal to i8
  %i.ban = or disjoint i8 %i.bam, -128
  store i8 %i.ban, ptr %i.bag, align 1, !tbaa !733
  %i.bao = trunc i64 %i.bah to i8
  %i.bap = and i8 %i.bao, 127
  %i.baq = getelementptr inbounds nuw i8, ptr %i.azt, i64 5
  store i8 %i.bap, ptr %i.baq, align 1, !tbaa !733
  br label %sqlite3PutVarint.exit.i

bb.gd:                                            ; preds = %bb.gb
  %i.bar = call fastcc i32 @putVarint64(ptr noundef nonnull %i.bag, i64 noundef %i.bah), !inline_history !4288
  %i.bas = add nsw i32 %i.bar, 4
  br label %sqlite3PutVarint.exit.i

sqlite3PutVarint.exit.i:                          ; preds = %bb.gd, %bb.gc, %bb.ga
  %.0.i657.i = phi i32 [ 5, %bb.ga ], [ 6, %bb.gc ], [ %i.bas, %bb.gd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  br label %bb.gg

bb.ge:                                            ; preds = %bb.fy
  %i.bat = getelementptr inbounds i8, ptr %i.azn, i64 -4 ; 3 uses
  %i.bau = icmp eq i16 %i.azp, 4
  br i1 %i.bau, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.bav = load ptr, ptr %i.wh, align 8, !tbaa !1495
  %i.baw = call zeroext i16 %i.bav(ptr noundef %i.jm, ptr noundef nonnull %i.bat) #58, !inline_history !4288
  %i.bax = zext i16 %i.baw to i32
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %sqlite3PutVarint.exit.i, %bb.fx
  %.3550.i = phi i32 [ %i.baa, %sqlite3PutVarint.exit.i ], [ %i.azk, %bb.gf ], [ %i.azk, %bb.ge ], [ %i.azk, %bb.fx ]
  %.0483.i = phi ptr [ %i.azt, %sqlite3PutVarint.exit.i ], [ %i.bat, %bb.gf ], [ %i.bat, %bb.ge ], [ %i.azn, %bb.fx ] ; 3 uses
  %.0482.i = phi ptr [ null, %sqlite3PutVarint.exit.i ], [ %i.azt, %bb.gf ], [ %i.azt, %bb.ge ], [ %i.azt, %bb.fx ]
  %.0481.i = phi i32 [ %.0.i657.i, %sqlite3PutVarint.exit.i ], [ %i.bax, %bb.gf ], [ %i.azr, %bb.ge ], [ %i.azr, %bb.fx ] ; 3 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gh, %bb.gg
  %indvars.iv1012.i = phi i64 [ %indvars.iv.next1013.i, %bb.gh ], [ 0, %bb.gg ] ; 3 uses
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv1012.i
  %i.baz = load i32, ptr %i.bay, align 4, !tbaa !570
  %.not598.i = icmp sgt i32 %i.baz, %.3550.i
  %indvars.iv.next1013.i = add nuw nsw i64 %indvars.iv1012.i, 1
  br i1 %.not598.i, label %bb.gi, label %bb.gh, !llvm.loop !4317

bb.gi:                                            ; preds = %bb.gh
  %i.bba = add nsw i32 %.0481.i, %.0529846.i
  %i.bbb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv1012.i
  %i.bbc = load ptr, ptr %i.bbb, align 8, !tbaa !741 ; 2 uses
  %i.bbd = icmp ult ptr %.0483.i, %i.bbc
  %i.bbe = sext i32 %.0481.i to i64
  %i.bbf = getelementptr inbounds i8, ptr %.0483.i, i64 %i.bbe
  %i.bbg = icmp ugt ptr %i.bbf, %i.bbc
  %or.cond632.i = select i1 %i.bbd, i1 %i.bbg, i1 false
  br i1 %or.cond632.i, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %bb.gi
  call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 82107, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !4290
  br label %.thread705.i

bb.gk:                                            ; preds = %bb.gi
  %i.bbh = getelementptr inbounds nuw i8, ptr %i.azi, i64 4
  %i.bbi = load i32, ptr %i.bbh, align 4, !tbaa !1064
  %i.bbj = trunc i64 %indvars.iv1016.i to i32
  %i.bbk = add i32 %.1536.i, %i.bbj
  %i.bbl = call fastcc i32 @insertCell(ptr noundef %i.jm, i32 noundef %i.bbk, ptr noundef nonnull %.0483.i, i32 noundef %.0481.i, ptr noundef %.0482.i, i32 noundef %i.bbi), !inline_history !4288 ; 2 uses
  %.not599.i = icmp eq i32 %i.bbl, 0
  br i1 %.not599.i, label %bb.fv, label %.thread705.i

._crit_edge849.i:                                 ; preds = %bb.fv, %.thread702.i
  %i.bbm = sub nsw i32 1, %.0496.lcssa11251127.i  ; 2 uses
  %i.bbn = icmp slt i32 %i.bbm, %.0496.lcssa11251127.i
  br i1 %i.bbn, label %.lr.ph858.i, label %._crit_edge859.i

.lr.ph858.i:                                      ; preds = %._crit_edge849.i
  %i.bbo = zext i1 %.not619.i to i32              ; 2 uses
  %i.bbp = load i32, ptr %i.e, align 16
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gs, %.lr.ph858.i
  %.11854.i = phi i32 [ %i.bbm, %.lr.ph858.i ], [ %i.bcu, %bb.gs ] ; 4 uses
  %i.bbq = call i32 @llvm.abs.i32(i32 %.11854.i, i1 true) ; 3 uses
  %i.bbr = zext nneg i32 %i.bbq to i64            ; 5 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bbr ; 2 uses
  %i.bbt = load i8, ptr %i.bbs, align 1, !tbaa !733
  %.not590.i = icmp eq i8 %i.bbt, 0
  br i1 %.not590.i, label %bb.gm, label %bb.gs

bb.gm:                                            ; preds = %bb.gl
  %i.bbu = icmp sgt i32 %.11854.i, -1
  br i1 %i.bbu, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.bbv = add nsw i32 %i.bbq, -1
  %i.bbw = sext i32 %i.bbv to i64                 ; 2 uses
  %i.bbx = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bbw
  %i.bby = load i32, ptr %i.bbx, align 4, !tbaa !570
  %i.bbz = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bbw
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !570
  %.not591.i = icmp slt i32 %i.bby, %i.bca
  br i1 %.not591.i, label %bb.gs, label %.thread707.i

bb.go:                                            ; preds = %bb.gm
  %i.bcb = icmp eq i32 %.11854.i, 0
  br i1 %i.bcb, label %bb.gr, label %.thread707.i

.thread707.i:                                     ; preds = %bb.go, %bb.gn
  %.not592.i = icmp samesign ugt i32 %i.bbq, %.0499.i
  br i1 %.not592.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %.thread707.i
  %i.bcc = getelementptr [4 x i8], ptr %i.f, i64 %i.bbr
  %i.bcd = getelementptr i8, ptr %i.bcc, i64 -4
  %i.bce = load i32, ptr %i.bcd, align 4, !tbaa !570
  %i.bcf = add nsw i32 %i.bce, %i.bbo
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %.thread707.i
  %i.bcg = phi i32 [ %i.bcf, %bb.gp ], [ %i.aze, %.thread707.i ]
  %i.bch = getelementptr [4 x i8], ptr %i.e, i64 %i.bbr ; 2 uses
  %i.bci = getelementptr i8, ptr %i.bch, i64 -4
  %i.bcj = load i32, ptr %i.bci, align 4, !tbaa !570
  %i.bck = add nsw i32 %i.bcj, %i.bbo             ; 2 uses
  %i.bcl = load i32, ptr %i.bch, align 4, !tbaa !570
  %i.bcm = sub nsw i32 %i.bcl, %i.bck
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.go
  %.0480.i = phi i32 [ %i.bck, %bb.gq ], [ 0, %bb.go ]
  %.0479.i = phi i32 [ %i.bcg, %bb.gq ], [ 0, %bb.go ]
  %.0478.i = phi i32 [ %i.bcm, %bb.gq ], [ %i.bbp, %bb.go ]
  %i.bcn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bbr
  %i.bco = load ptr, ptr %i.bcn, align 8, !tbaa !1514 ; 2 uses
  %i.bcp = call fastcc i32 @editPage(ptr noundef %i.bco, i32 noundef %.0479.i, i32 noundef %.0480.i, i32 noundef %.0478.i, ptr noundef %2), !inline_history !4288 ; 2 uses
  %.not595.i = icmp eq i32 %i.bcp, 0
  br i1 %.not595.i, label %.thread708.i, label %.thread705.i

.thread708.i:                                     ; preds = %bb.gr
  store i8 1, ptr %i.bbs, align 1, !tbaa !733
  %i.bcq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.bbr
  %i.bcr = load i32, ptr %i.bcq, align 4, !tbaa !570
  %i.bcs = sub nsw i32 %i.ahf, %i.bcr
  %i.bct = getelementptr inbounds nuw i8, ptr %i.bco, i64 20
  store i32 %i.bcs, ptr %i.bct, align 4, !tbaa !1491
  br label %bb.gs

bb.gs:                                            ; preds = %.thread708.i, %bb.gn, %bb.gl
  %i.bcu = add i32 %.11854.i, 1                   ; 2 uses
  %exitcond1022.not.i = icmp eq i32 %i.bcu, %.0496.lcssa11251127.i
  br i1 %exitcond1022.not.i, label %._crit_edge859.i, label %bb.gl, !llvm.loop !4318

._crit_edge859.i:                                 ; preds = %bb.gs, %._crit_edge849.i
  store i32 0, ptr %i.a, align 4
  br i1 %.not125, label %bb.gt, label %bb.gx

bb.gt:                                            ; preds = %._crit_edge859.i
  %i.bcv = load i16, ptr %i.un, align 8, !tbaa !1501
  %i.bcw = icmp eq i16 %i.bcv, 0
  br i1 %i.bcw, label %bb.gu, label %bb.gx

bb.gu:                                            ; preds = %bb.gt
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.jm, i64 9
  %i.bcy = load i8, ptr %i.bcx, align 1, !tbaa !1066
  %i.bcz = zext i8 %i.bcy to i32
  %i.bda = load ptr, ptr %i.c, align 16, !tbaa !1514 ; 6 uses
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 20
  %i.bdc = load i32, ptr %i.bdb, align 4, !tbaa !1491
  %.not588.i = icmp slt i32 %i.bdc, %i.bcz
  br i1 %.not588.i, label %bb.gx, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.bdd = call fastcc i32 @defragmentPage(ptr noundef nonnull %i.bda, i32 noundef -1), !inline_history !4288
  store i32 %i.bdd, ptr %i.a, align 4, !tbaa !570
  call fastcc void @copyNodeContent(ptr noundef nonnull %i.bda, ptr noundef nonnull %i.jm, ptr noundef %i.a), !inline_history !4288
  %i.bde = load i32, ptr %i.a, align 4, !tbaa !570 ; 2 uses
  %i.bdf = icmp eq i32 %i.bde, 0
  br i1 %i.bdf, label %bb.gw, label %freePage.exit.i

bb.gw:                                            ; preds = %bb.gv
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bda, i64 72
  %i.bdh = load ptr, ptr %i.bdg, align 8, !tbaa !1065
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bda, i64 4
  %i.bdj = load i32, ptr %i.bdi, align 4, !tbaa !1064
  %i.bdk = call fastcc i32 @freePage2(ptr noundef %i.bdh, ptr noundef nonnull %i.bda, i32 noundef %i.bdj), !inline_history !4319
  br label %freePage.exit.i

bb.gx:                                            ; preds = %bb.gu, %bb.gt, %._crit_edge859.i
  %i.bdl = load i8, ptr %i.avr, align 1, !tbaa !1054
  %i.bdm = icmp ne i8 %i.bdl, 0
  %i.bdn = icmp eq i8 %i.aau, 0
  %or.cond5.not878.i = select i1 %i.bdm, i1 %i.bdn, i1 false
  %or.cond873.i = and i1 %i.ans, %or.cond5.not878.i
  br i1 %or.cond873.i, label %.lr.ph862.preheader.i, label %freePage.exit.i

.lr.ph862.preheader.i:                            ; preds = %bb.gx
  %wide.trip.count1027.i = zext nneg i32 %.0496.lcssa11251127.i to i64
  br label %.lr.ph862.i

.lr.ph862.i:                                      ; preds = %.lr.ph862.i, %.lr.ph862.preheader.i
  %indvars.iv1023.i = phi i64 [ 0, %.lr.ph862.preheader.i ], [ %indvars.iv.next1024.i, %.lr.ph862.i ] ; 2 uses
  %i.bdo = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv1023.i
  %i.bdp = load ptr, ptr %i.bdo, align 8, !tbaa !1514 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 80
  %i.bdr = load ptr, ptr %i.bdq, align 8, !tbaa !988
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 8
  %i.bdt = load i32, ptr %i.bds, align 1
  %i.bdu = call i32 @llvm.bswap.i32(i32 %i.bdt)
  %i.bdv = getelementptr inbounds nuw i8, ptr %i.bdp, i64 4
  %i.bdw = load i32, ptr %i.bdv, align 4, !tbaa !1064
  call fastcc void @ptrmapPut(ptr noundef nonnull %i.uj, i32 noundef %i.bdu, i8 noundef zeroext 5, i32 noundef %i.bdw, ptr noundef %i.a), !inline_history !4288
  %indvars.iv.next1024.i = add nuw nsw i64 %indvars.iv1023.i, 1 ; 2 uses
  %exitcond1028.not.i = icmp eq i64 %indvars.iv.next1024.i, %wide.trip.count1027.i
  br i1 %exitcond1028.not.i, label %freePage.exit.loopexit.i, label %.lr.ph862.i, !llvm.loop !4320

freePage.exit.loopexit.i:                         ; preds = %.lr.ph862.i
  %.promoted863.pre.i = load i32, ptr %i.a, align 4
  br label %freePage.exit.i

freePage.exit.i:                                  ; preds = %freePage.exit.loopexit.i, %bb.gx, %bb.gw, %bb.gv
  %.promoted863.i = phi i32 [ %.promoted863.pre.i, %freePage.exit.loopexit.i ], [ %i.bdk, %bb.gw ], [ %i.bde, %bb.gv ], [ 0, %bb.gx ] ; 2 uses
  %.not589865.i = icmp sgt i32 %.0496.lcssa11251127.i, %.0499.i
  br i1 %.not589865.i, label %.thread705.i, label %.lr.ph867.preheader.i

.lr.ph867.preheader.i:                            ; preds = %freePage.exit.i
  %i.bdx = zext nneg i32 %.0496.lcssa11251127.i to i64
  %smax.i = call i32 @llvm.smax.i32(i32 %.8545.ph.i, i32 %.0499.i)
  %i.bdy = add nuw i32 %smax.i, 1
  %wide.trip.count1034.i = zext i32 %i.bdy to i64
  br label %.lr.ph867.i

.lr.ph867.i:                                      ; preds = %freePage.exit658.i, %.lr.ph867.preheader.i
  %indvars.iv1029.i = phi i64 [ %i.bdx, %.lr.ph867.preheader.i ], [ %indvars.iv.next1030.i, %freePage.exit658.i ] ; 2 uses
  %i.bdz = phi i32 [ %.promoted863.i, %.lr.ph867.preheader.i ], [ %i.bei, %freePage.exit658.i ] ; 2 uses
  %i.bea = icmp eq i32 %i.bdz, 0
  br i1 %i.bea, label %bb.gy, label %freePage.exit658.i

bb.gy:                                            ; preds = %.lr.ph867.i
  %i.beb = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv1029.i
  %i.bec = load ptr, ptr %i.beb, align 8, !tbaa !1514 ; 3 uses
  %i.bed = getelementptr inbounds nuw i8, ptr %i.bec, i64 72
  %i.bee = load ptr, ptr %i.bed, align 8, !tbaa !1065
  %i.bef = getelementptr inbounds nuw i8, ptr %i.bec, i64 4
  %i.beg = load i32, ptr %i.bef, align 4, !tbaa !1064
  %i.beh = call fastcc i32 @freePage2(ptr noundef %i.bee, ptr noundef %i.bec, i32 noundef %i.beg), !inline_history !4319
  br label %freePage.exit658.i

freePage.exit658.i:                               ; preds = %bb.gy, %.lr.ph867.i
  %i.bei = phi i32 [ %i.bdz, %.lr.ph867.i ], [ %i.beh, %bb.gy ] ; 2 uses
  %indvars.iv.next1030.i = add nuw nsw i64 %indvars.iv1029.i, 1 ; 2 uses
  %exitcond1035.not.i = icmp eq i64 %indvars.iv.next1030.i, %wide.trip.count1034.i
  br i1 %exitcond1035.not.i, label %.thread705.i, label %.lr.ph867.i, !llvm.loop !4321

.thread705.i:                                     ; preds = %bb.ft, %bb.gk, %bb.gr, %freePage.exit658.i, %freePage.exit.i, %bb.gj, %.thread692.i, %bb.el, %bb.dz, %bb.dn, %bb.cs, %bb.cp, %bb.cc, %.thread.i87
  %.ph = phi i32 [ %i.bei, %freePage.exit658.i ], [ %.promoted863.i, %freePage.exit.i ], [ 11, %bb.gj ], [ 11, %bb.dz ], [ 11, %bb.cs ], [ %i.bbl, %bb.gk ], [ %i.wq, %.thread.i87 ], [ %i.arw, %.thread692.i ], [ 11, %bb.el ], [ 11, %bb.cp ], [ 11, %bb.dn ], [ %i.bcp, %bb.gr ], [ %i.wx, %bb.cc ], [ %i.aza, %bb.ft ] ; 4 uses
  %.3.i.ph = phi i32 [ %.0496.lcssa11251127.i, %freePage.exit658.i ], [ %.0496.lcssa11251127.i, %freePage.exit.i ], [ %.0496.lcssa11251127.i, %bb.gj ], [ 0, %bb.dz ], [ 0, %bb.cs ], [ %.0496.lcssa11251127.i, %bb.gk ], [ 0, %.thread.i87 ], [ %.2498.ph.i, %.thread692.i ], [ 0, %bb.el ], [ 0, %bb.cp ], [ 0, %bb.dn ], [ %.0496.lcssa11251127.i, %bb.gr ], [ 0, %bb.cc ], [ %.0496.lcssa11251127.i, %bb.ft ] ; 4 uses
  %.pr = load ptr, ptr %i.ap, align 8, !tbaa !1859 ; 4 uses
  %.not.i659.i = icmp eq ptr %.pr, null
  br i1 %.not.i659.i, label %sqlite3DbFree.exit.i, label %bb.gz

bb.gz:                                            ; preds = %.thread705.i
  %i.bej = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i.i.i = icmp eq i32 %i.bej, 0
  br i1 %.not.i.i.i, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bek = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i.i665.i = icmp eq ptr %i.bek, null
  br i1 %.not.i.i.i665.i, label %sqlite3_mutex_enter.exit.i.i.i, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.bel = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  call void %i.bel(ptr noundef nonnull %i.bek) #58, !inline_history !4322
  br label %sqlite3_mutex_enter.exit.i.i.i

sqlite3_mutex_enter.exit.i.i.i:                   ; preds = %bb.hb, %bb.ha
  %i.bem = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.ben = call i32 %i.bem(ptr noundef nonnull %.pr) #58, !inline_history !4323
  %i.beo = sext i32 %i.ben to i64
  %i.bep = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.beq = sub nsw i64 %i.bep, %i.beo
  store i64 %i.beq, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.ber = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.bes = add nsw i64 %i.ber, -1
  store i64 %i.bes, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.bet = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.bet(ptr noundef nonnull %.pr) #58, !inline_history !4324
  %i.beu = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i.i.i = icmp eq ptr %i.beu, null
  br i1 %.not.i4.i.i.i, label %sqlite3DbFree.exit.i, label %bb.hc

bb.hc:                                            ; preds = %sqlite3_mutex_enter.exit.i.i.i
  %i.bev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  call void %i.bev(ptr noundef nonnull %i.beu) #58, !inline_history !4325
  br label %sqlite3DbFree.exit.i

bb.hd:                                            ; preds = %bb.gz
  %i.bew = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  call void %i.bew(ptr noundef nonnull %.pr) #58, !inline_history !4324
  br label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %bb.cm, %bb.hd, %bb.hc, %sqlite3_mutex_enter.exit.i.i.i, %.thread705.i
  %.3.i305 = phi i32 [ %.3.i.ph, %.thread705.i ], [ %.3.i.ph, %bb.hd ], [ %.3.i.ph, %bb.hc ], [ %.3.i.ph, %sqlite3_mutex_enter.exit.i.i.i ], [ 0, %bb.cm ] ; 2 uses
  %i.bex = phi i32 [ %.ph, %.thread705.i ], [ %.ph, %bb.hd ], [ %.ph, %bb.hc ], [ %.ph, %sqlite3_mutex_enter.exit.i.i.i ], [ 7, %bb.cm ] ; 2 uses
  %wide.trip.count1040.i = zext nneg i32 %i.uy to i64
  br label %bb.he

.preheader.i:                                     ; preds = %releasePage.exit.i90
  %i.bey = icmp sgt i32 %.3.i305, 0
  br i1 %i.bey, label %.lr.ph871.preheader.i, label %balance_nonroot.exit

.lr.ph871.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count1046.i = zext nneg i32 %.3.i305 to i64
  br label %.lr.ph871.i

bb.he:                                            ; preds = %releasePage.exit.i90, %sqlite3DbFree.exit.i
  %indvars.iv1036.i = phi i64 [ 0, %sqlite3DbFree.exit.i ], [ %indvars.iv.next1037.i, %releasePage.exit.i90 ] ; 2 uses
  %i.bez = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv1036.i
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !1514 ; 2 uses
  %.not.i660.i = icmp eq ptr %i.bfa, null
  br i1 %.not.i660.i, label %releasePage.exit.i90, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.bfb = getelementptr i8, ptr %i.bfa, i64 112
  %.val.i.i88 = load ptr, ptr %i.bfb, align 8, !tbaa !1009 ; 7 uses
  %i.bfc = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 52
  %i.bfd = load i16, ptr %i.bfc, align 4, !tbaa !895
  %i.bfe = and i16 %i.bfd, 32
  %.not.i.i.i.i89 = icmp eq i16 %i.bfe, 0
  br i1 %.not.i.i.i.i89, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bff = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 40
  %i.bfg = load ptr, ptr %i.bff, align 8, !tbaa !896 ; 4 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.bfg, i64 152 ; 2 uses
  %i.bfi = load i32, ptr %i.bfh, align 8, !tbaa !897
  %i.bfj = add nsw i32 %i.bfi, -1
  store i32 %i.bfj, ptr %i.bfh, align 8, !tbaa !897
  %i.bfk = getelementptr inbounds nuw i8, ptr %i.bfg, i64 168 ; 2 uses
  %i.bfl = load ptr, ptr %i.bfk, align 8, !tbaa !898
  %i.bfm = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 32
  store ptr %i.bfl, ptr %i.bfm, align 8, !tbaa !899
  store ptr %.val.i.i88, ptr %i.bfk, align 8, !tbaa !898
  %i.bfn = getelementptr inbounds nuw i8, ptr %i.bfg, i64 72
  %i.bfo = load ptr, ptr %i.bfn, align 8, !tbaa !900 ; 2 uses
  %i.bfp = getelementptr inbounds nuw i8, ptr %.val.i.i88, i64 48
  %i.bfq = load i32, ptr %i.bfp, align 8, !tbaa !901
  %i.bfr = add i32 %i.bfq, -1
  %i.bfs = zext i32 %i.bfr to i64
end_hunk_1
begin_hunk_2_@checkTreePage:bb.a
  %i.lw = or disjoint i32 %i.ls, %i.lv            ; 2 uses
  %.not = icmp eq i32 %i.lw, 0
  br i1 %.not, label %.preheader, label %.lr.ph297, !llvm.loop !4428

bb.bf:                                            ; preds = %.lr.ph300, %bb.bg
  %i.lx = phi i32 [ %i.kj, %.lr.ph300 ], [ %i.nc, %bb.bg ] ; 3 uses
  %.0167299 = phi i32 [ %i.cm, %.lr.ph300 ], [ %i.ly, %bb.bg ] ; 2 uses
  %.0177298 = phi i32 [ 0, %.lr.ph300 ], [ %i.nh, %bb.bg ] ; 2 uses
  %i.ly = load i32, ptr %i.kl, align 4, !tbaa !570 ; 3 uses
  %i.lz = zext i32 %i.lx to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.lz ; 2 uses
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !570
  store i32 %i.mb, ptr %i.kl, align 4, !tbaa !570
  store i32 -1, ptr %i.ma, align 4, !tbaa !570
  %i.mc = add i32 %i.lx, -1                       ; 3 uses
  store i32 %i.mc, ptr %.1169, align 4, !tbaa !570
  %.not36.i = icmp ult i32 %i.lx, 3
  br i1 %.not36.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bf
  %.pre.i = load i32, ptr %i.kl, align 4, !tbaa !570 ; 3 uses
  %i.md = load i32, ptr %i.km, align 4, !tbaa !570
  %i.me = load i32, ptr %i.kn, align 4, !tbaa !570
  %i.mf = icmp ugt i32 %i.md, %i.me
  %spec.select.i366 = select i1 %i.mf, i32 3, i32 2 ; 2 uses
  %i.mg = zext nneg i32 %spec.select.i366 to i64
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.mg ; 2 uses
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !570 ; 2 uses
  %i.mj = icmp ult i32 %.pre.i, %i.mi
  br i1 %i.mj, label %.loopexit, label %.lr.ph369

.lr.ph.i232:                                      ; preds = %.lr.ph369
  %i.mk = zext i32 %i.na to i64
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !570
  %i.mn = or disjoint i32 %i.na, 1                ; 2 uses
  %i.mo = zext i32 %i.mn to i64
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.mo
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !570
  %i.mr = icmp ugt i32 %i.mm, %i.mq
  %spec.select.i = select i1 %i.mr, i32 %i.mn, i32 %i.na ; 2 uses
  %i.ms = zext i32 %spec.select.i to i64
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.ms ; 2 uses
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !570 ; 2 uses
  %i.mv = icmp ult i32 %.pre.i, %i.mu
  br i1 %i.mv, label %.loopexit, label %.lr.ph369, !llvm.loop !4429

.lr.ph369:                                        ; preds = %.lr.ph.preheader.i, %.lr.ph.i232
  %i.mw = phi i32 [ %i.mu, %.lr.ph.i232 ], [ %i.mi, %.lr.ph.preheader.i ]
  %i.mx = phi ptr [ %i.mt, %.lr.ph.i232 ], [ %i.mh, %.lr.ph.preheader.i ]
  %spec.select.i368 = phi i32 [ %spec.select.i, %.lr.ph.i232 ], [ %spec.select.i366, %.lr.ph.preheader.i ] ; 2 uses
  %.037.i367 = phi i32 [ %spec.select.i368, %.lr.ph.i232 ], [ 1, %.lr.ph.preheader.i ]
  %i.my = zext i32 %.037.i367 to i64
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.my
  store i32 %i.mw, ptr %i.mz, align 4, !tbaa !570
  store i32 %.pre.i, ptr %i.mx, align 4, !tbaa !570
  %i.na = shl i32 %spec.select.i368, 1            ; 4 uses
  %i.nb = load i32, ptr %.1169, align 4, !tbaa !570 ; 3 uses
  %.not.i233 = icmp ugt i32 %i.na, %i.nb
  br i1 %.not.i233, label %..loopexit.loopexit_crit_edge, label %.lr.ph.i232, !llvm.loop !4429

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph369
  br label %.loopexit, !llvm.loop !4429

.loopexit:                                        ; preds = %.lr.ph.i232, %.lr.ph.preheader.i, %..loopexit.loopexit_crit_edge, %bb.bf
  %i.nc = phi i32 [ %i.mc, %bb.bf ], [ %i.mc, %.lr.ph.preheader.i ], [ %i.nb, %..loopexit.loopexit_crit_edge ], [ %i.nb, %.lr.ph.i232 ] ; 2 uses
  %i.nd = and i32 %.0167299, 65535                ; 2 uses
  %i.ne = lshr i32 %i.ly, 16                      ; 3 uses
  %.not208 = icmp samesign ult i32 %i.nd, %i.ne
  br i1 %.not208, label %bb.bg, label %btreeHeapPull.exit

bb.bg:                                            ; preds = %.loopexit
  %i.nf = xor i32 %i.nd, -1
  %i.ng = add i32 %.0177298, %i.nf
  %i.nh = add i32 %i.ng, %i.ne                    ; 2 uses
  %i.ni = icmp eq i32 %i.nc, 0
  br i1 %i.ni, label %btreeHeapPull.exit.thread259, label %bb.bf, !llvm.loop !4430

btreeHeapPull.exit:                               ; preds = %.loopexit
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.436, i32 noundef %i.ne, i32 noundef %1)
  %.pr = load i32, ptr %.1169, align 4, !tbaa !570
  %i.nj = icmp eq i32 %.pr, 0
  br i1 %i.nj, label %btreeHeapPull.exit.thread259, label %.thread.thread271

btreeHeapPull.exit.thread259:                     ; preds = %bb.bg, %.preheader, %btreeHeapPull.exit
  %.0177283 = phi i32 [ %.0177298, %btreeHeapPull.exit ], [ 0, %.preheader ], [ %i.nh, %bb.bg ]
  %.0167281 = phi i32 [ %.0167299, %btreeHeapPull.exit ], [ %i.cm, %.preheader ], [ %i.ly, %bb.bg ]
  %.pn277.in = and i32 %.0167281, 65535
  %.pn277 = xor i32 %.pn277.in, -1
  %.pn = add i32 %.0177283, %i.am
  %i.nk = add i32 %.pn, %.pn277                   ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.cc, i64 7
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !733
  %i.nn = zext i8 %i.nm to i32                    ; 2 uses
  %.not209 = icmp eq i32 %i.nk, %i.nn
  br i1 %.not209, label %.thread.thread271, label %bb.bh

bb.bh:                                            ; preds = %btreeHeapPull.exit.thread259
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.437, i32 noundef %i.nk, i32 noundef %i.nn, i32 noundef %1)
  br label %.thread.thread271

bb.bi:                                            ; preds = %.critedge
  store i8 %i.bt, ptr %.val13.i.i, align 8, !tbaa !1502
  br label %.thread.thread271

.thread.thread271:                                ; preds = %bb.bi, %bb.bh, %btreeHeapPull.exit.thread259, %btreeHeapPull.exit, %bb.az, %bb.t, %bb.r
  %.4182265275 = phi i32 [ -1, %bb.t ], [ -1, %bb.r ], [ %.1179.lcssa353, %bb.az ], [ %.1179.lcssa353, %btreeHeapPull.exit ], [ %.1179.lcssa353, %btreeHeapPull.exit.thread259 ], [ %.1179.lcssa353, %bb.bh ], [ %.1179.lcssa.ph, %bb.bi ] ; 2 uses
  %i.no = getelementptr i8, ptr %.val13.i.i, i64 112
  %.val.i = load ptr, ptr %i.no, align 8, !tbaa !1009 ; 7 uses
  %i.np = getelementptr inbounds nuw i8, ptr %.val.i, i64 52
  %i.nq = load i16, ptr %i.np, align 4, !tbaa !895
  %i.nr = and i16 %i.nq, 32
  %.not.i.i.i = icmp eq i16 %i.nr, 0
  br i1 %.not.i.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.thread.thread271
  %i.ns = getelementptr inbounds nuw i8, ptr %.val.i, i64 40
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !896 ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 152 ; 2 uses
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !897
  %i.nw = add nsw i32 %i.nv, -1
  store i32 %i.nw, ptr %i.nu, align 8, !tbaa !897
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nt, i64 168 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !898
  %i.nz = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  store ptr %i.ny, ptr %i.nz, align 8, !tbaa !899
  store ptr %.val.i, ptr %i.nx, align 8, !tbaa !898
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nt, i64 72
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !900 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.val.i, i64 48
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !901
  %i.oe = add i32 %i.od, -1
  %i.of = zext i32 %i.oe to i64
  %i.og = getelementptr inbounds nuw i8, ptr %i.nt, i64 200
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !630
  %i.oi = mul nsw i64 %i.oh, %i.of
  %i.oj = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !894
  %i.ol = load ptr, ptr %i.ob, align 8, !tbaa !863
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 144
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !903
  %i.oo = call i32 %i.on(ptr noundef nonnull %i.ob, i64 noundef %i.oi, ptr noundef %i.ok) #58, !inline_history !193 ; 0 uses
  br label %releasePage.exit

bb.bk:                                            ; preds = %.thread.thread271
  call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val.i)
  br label %releasePage.exit

releasePage.exit:                                 ; preds = %checkProgress.exit, %bb.p, %bb.o, %bb.bj, %bb.bk
  %.4182265269 = phi i32 [ %.4182265275, %bb.bk ], [ -1, %checkProgress.exit ], [ %.4182265275, %bb.bj ], [ -1, %bb.o ], [ -1, %bb.p ]
  store ptr %i.d, ptr %i.c, align 8, !tbaa !1775
  store <2 x i32> %i.g, ptr %i.e, align 4, !tbaa !570
  %i.op = add nsw i32 %.4182265269, 1
  br label %checkRef.exit.thread

checkRef.exit.thread:                             ; preds = %bb.k, %bb.i, %bb.g, %releasePage.exit
  %.0 = phi i32 [ %i.op, %releasePage.exit ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3RowSetDelete(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1452   ; 2 uses
  %.not13.i = icmp eq ptr %i.a, null
  br i1 %.not13.i, label %sqlite3DbFree.exit, label %sqlite3DbFree.exit.lr.ph.i

sqlite3DbFree.exit.lr.ph.i:                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %sqlite3DbFree.exit.i, %sqlite3DbFree.exit.lr.ph.i
  %.014.i = phi ptr [ %i.a, %sqlite3DbFree.exit.lr.ph.i ], [ %i.c, %sqlite3DbFree.exit.i ] ; 2 uses
  %i.c = load ptr, ptr %.014.i, align 8, !tbaa !1454 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !1455
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.d, ptr noundef nonnull %.014.i)
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %sqlite3DbFree.exit, label %sqlite3DbFree.exit.i, !llvm.loop !139

sqlite3DbFree.exit:                               ; preds = %sqlite3DbFree.exit.i, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1452
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i16 0, ptr %i.e, align 8, !tbaa !1456
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.g, align 8, !tbaa !1457
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 50
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store i16 1, ptr %i.h, align 2, !tbaa !1458
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1455
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.j, ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @rowSetEntrySort(ptr noundef %0) unnamed_addr #16 {
bb.a:
  %1 = alloca %struct.RowSetEntry, align 8        ; 4 uses
  %2 = alloca %struct.RowSetEntry, align 8        ; 4 uses
  %i.a = alloca [40 x ptr], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %i.a, i8 0, i64 320, i1 false)
  %.not40 = icmp eq ptr %0, null
  br i1 %.not40, label %._crit_edge44, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %._crit_edge, %.lr.ph43
  %i.c = phi ptr [ null, %.lr.ph43 ], [ %.pre, %._crit_edge ] ; 2 uses
  %.01841 = phi ptr [ %0, %.lr.ph43 ], [ %i.e, %._crit_edge ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01841, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1820 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !1820
  %.not2436 = icmp eq ptr %i.c, null
  br i1 %.not2436, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %thread-pre-split, %rowSetEntryMerge.exit
  %3 = phi ptr [ %i.u, %rowSetEntryMerge.exit ], [ %i.c, %thread-pre-split ]
  %i.f = phi ptr [ %i.t, %rowSetEntryMerge.exit ], [ %i.a, %thread-pre-split ]
  %.038 = phi i32 [ %4, %rowSetEntryMerge.exit ], [ 0, %thread-pre-split ]
  %.11937 = phi ptr [ %i.s, %rowSetEntryMerge.exit ], [ %.01841, %thread-pre-split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #58
  br label %.outer74

.outer74:                                         ; preds = %bb.e, %.lr.ph
  %.018.i.ph = phi ptr [ %i.l, %bb.e ], [ %3, %.lr.ph ] ; 5 uses
  %.016.i.ph = phi ptr [ %.016.i, %bb.e ], [ %.11937, %.lr.ph ]
  %.0.i.ph = phi ptr [ %.1.i, %bb.e ], [ %2, %.lr.ph ]
  %i.g = load i64, ptr %.018.i.ph, align 8, !tbaa !1819 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer74, %bb.f
  %.016.i = phi ptr [ %i.p, %bb.f ], [ %.016.i.ph, %.outer74 ] ; 7 uses
  %.0.i = phi ptr [ %.016.i, %bb.f ], [ %.0.i.ph, %.outer74 ] ; 3 uses
  %i.h = load i64, ptr %.016.i, align 8, !tbaa !1819 ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.h
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp slt i64 %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %.018.i.ph, ptr %i.j, align 8, !tbaa !1820
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i = phi ptr [ %.018.i.ph, %bb.d ], [ %.0.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.018.i.ph, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1820 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %rowSetEntryMerge.exit, label %.outer74

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %.016.i, ptr %i.n, align 8, !tbaa !1820
  %i.o = getelementptr inbounds nuw i8, ptr %.016.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1820 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %rowSetEntryMerge.exit, label %bb.b

rowSetEntryMerge.exit:                            ; preds = %bb.e, %bb.f
  %.016.lcssa35.sink.i = phi ptr [ %.016.i, %bb.f ], [ %.1.i, %bb.e ]
  %.018.lcssa34.sink.i = phi ptr [ %.018.i.ph, %bb.f ], [ %.016.i, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.016.lcssa35.sink.i, i64 8
  store ptr %.018.lcssa34.sink.i, ptr %i.r, align 8, !tbaa !1820
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !1820 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #58
  store ptr null, ptr %i.f, align 8, !tbaa !1822
  %4 = add i32 %.038, 1                           ; 2 uses
  %5 = zext i32 %4 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %5 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1822 ; 2 uses
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %._crit_edge, label %.lr.ph, !llvm.loop !4431

._crit_edge:                                      ; preds = %rowSetEntryMerge.exit, %thread-pre-split
  %.119.lcssa = phi ptr [ %.01841, %thread-pre-split ], [ %i.s, %rowSetEntryMerge.exit ]
  %.lcssa = phi ptr [ %i.a, %thread-pre-split ], [ %i.t, %rowSetEntryMerge.exit ]
  store ptr %.119.lcssa, ptr %.lcssa, align 8, !tbaa !1822
  %.not = icmp eq ptr %i.e, null
  %.pre = load ptr, ptr %i.a, align 16, !tbaa !1822 ; 2 uses
  br i1 %.not, label %._crit_edge44, label %thread-pre-split, !llvm.loop !4432

._crit_edge44:                                    ; preds = %._crit_edge, %bb.a
  %i.v = phi ptr [ null, %bb.a ], [ %.pre, %._crit_edge ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge44, %bb.o
  %indvars.iv.a = phi i64 [ 1, %._crit_edge44 ], [ %indvars.iv.next.a, %bb.o ] ; 2 uses
  %.245 = phi ptr [ %i.v, %._crit_edge44 ], [ %.3, %bb.o ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.a
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1822 ; 3 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not23 = icmp eq ptr %.245, null
  br i1 %.not23, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #58
  br label %.outer

.outer:                                           ; preds = %bb.m, %bb.i
  %.018.i25.ph = phi ptr [ %i.af, %bb.m ], [ %.245, %bb.i ] ; 5 uses
  %.016.i26.ph = phi ptr [ %.016.i26, %bb.m ], [ %i.y, %bb.i ]
  %.0.i27.ph = phi ptr [ %.1.i29, %bb.m ], [ %1, %bb.i ]
  %i.aa = load i64, ptr %.018.i25.ph, align 8, !tbaa !1819 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.outer, %bb.n
  %.016.i26 = phi ptr [ %i.aj, %bb.n ], [ %.016.i26.ph, %.outer ] ; 7 uses
  %.0.i27 = phi ptr [ %.016.i26, %bb.n ], [ %.0.i27.ph, %.outer ] ; 3 uses
  %i.ab = load i64, ptr %.016.i26, align 8, !tbaa !1819 ; 2 uses
  %.not.i28 = icmp sgt i64 %i.aa, %i.ab
  br i1 %.not.i28, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp slt i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  store ptr %.018.i25.ph, ptr %i.ad, align 8, !tbaa !1820
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i29 = phi ptr [ %.018.i25.ph, %bb.l ], [ %.0.i27, %bb.k ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.018.i25.ph, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1820 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %rowSetEntryMerge.exit35, label %.outer

bb.n:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i27, i64 8
  store ptr %.016.i26, ptr %i.ah, align 8, !tbaa !1820
  %i.ai = getelementptr inbounds nuw i8, ptr %.016.i26, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1820 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %rowSetEntryMerge.exit35, label %bb.j

rowSetEntryMerge.exit35:                          ; preds = %bb.m, %bb.n
  %.016.lcssa35.sink.i33 = phi ptr [ %.016.i26, %bb.n ], [ %.1.i29, %bb.m ]
  %.018.lcssa34.sink.i34 = phi ptr [ %.018.i25.ph, %bb.n ], [ %.016.i26, %bb.m ]
  %i.al = getelementptr inbounds nuw i8, ptr %.016.lcssa35.sink.i33, i64 8
  store ptr %.018.lcssa34.sink.i34, ptr %i.al, align 8, !tbaa !1820
  %i.am = load ptr, ptr %i.w, align 8, !tbaa !1820
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #58
  br label %bb.o

bb.o:                                             ; preds = %rowSetEntryMerge.exit35, %bb.h, %bb.g
  %.3 = phi ptr [ %.245, %bb.g ], [ %i.am, %rowSetEntryMerge.exit35 ], [ %i.y, %bb.h ] ; 2 uses
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, 40
  br i1 %exitcond.not, label %bb.p, label %bb.g, !llvm.loop !4433

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret ptr %.3
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @rowSetTreeToList(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #39 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.g, %bb.d ]   ; 5 uses
  %.tr13 = phi ptr [ %1, %bb.a ], [ %i.f, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1823 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call fastcc void @rowSetTreeToList(ptr noundef nonnull %i.c, ptr noundef %.tr13, ptr noundef %i.a)
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !1822
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.tr, ptr %i.e, align 8, !tbaa !1820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.d

bb.c:                                             ; preds = %tailrecurse
  store ptr %.tr, ptr %.tr13, align 8, !tbaa !1822
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1820 ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.e, label %tailrecurse

bb.e:                                             ; preds = %bb.d
  store ptr %.tr, ptr %2, align 8, !tbaa !1822
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @rowSetNDeepTree(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #39 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1822   ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %common.ret26, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %1, 1
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %1, -1                       ; 2 uses
  %i.e = tail call fastcc ptr @rowSetNDeepTree(ptr noundef %0, i32 noundef %i.d) ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !1822   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %common.ret26, label %bb.d

common.ret26:                                     ; preds = %bb.e, %bb.c, %bb.a, %bb.d
  %common.ret26.op = phi ptr [ %i.f, %bb.d ], [ %i.a, %bb.e ], [ %i.e, %bb.c ], [ null, %bb.a ]
  ret ptr %common.ret26.op

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !1823
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1820
  store ptr %i.j, ptr %0, align 8, !tbaa !1822
  %i.k = tail call fastcc ptr @rowSetNDeepTree(ptr noundef %0, i32 noundef %i.d)
  store ptr %i.k, ptr %i.i, align 8, !tbaa !1820
  br label %common.ret26

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1820
  store ptr %i.m, ptr %0, align 8, !tbaa !1822
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  br label %common.ret26
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 8) i32 @memdbOpen(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4) #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %sqlite3Strlen30.exit.thread, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #59
  %i.c = trunc i64 %i.b to i32
  %i.d = and i32 %i.c, 1073741823                 ; 3 uses
  %i.e = icmp samesign ugt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %sqlite3Strlen30.exit.thread

bb.b:                                             ; preds = %sqlite3Strlen30.exit
  %i.f = load i8, ptr %1, align 1, !tbaa !733
  switch i8 %i.f, label %sqlite3Strlen30.exit.thread [
    i8 47, label %bb.c
    i8 92, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !710
  %.not.i = icmp eq i8 %i.g, 0
  br i1 %.not.i, label %sqlite3_mutex_enter.exit, label %sqlite3MutexAlloc.exit

sqlite3MutexAlloc.exit:                           ; preds = %bb.c
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !711
  %i.i = tail call ptr %i.h(i32 noundef 11) #58, !inline_history !7 ; 3 uses
  %.not.i68 = icmp eq ptr %i.i, null
  br i1 %.not.i68, label %sqlite3_mutex_enter.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3MutexAlloc.exit
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.j(ptr noundef nonnull %i.i) #58, !inline_history !564
  br label %sqlite3_mutex_enter.exit

sqlite3_mutex_enter.exit:                         ; preds = %bb.c, %sqlite3MutexAlloc.exit, %bb.d
end_hunk_2
begin_hunk_3_@porterClose:bb.a
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.m = add nsw i64 %i.l, -1
  store i64 %i.m, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.n(ptr noundef nonnull %i.b) #58, !inline_history !749
  %i.o = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.o, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.p(ptr noundef nonnull %i.o) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.f:                                             ; preds = %bb.b
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.q(ptr noundef nonnull %i.b) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %bb.f, %bb.e, %sqlite3_mutex_enter.exit.i, %bb.a
  %i.r = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i3 = icmp eq i32 %i.r, 0
  br i1 %.not.i3, label %bb.j, label %bb.g

bb.g:                                             ; preds = %sqlite3_free.exit
  %i.s = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4, label %sqlite3_mutex_enter.exit.i5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.t(ptr noundef nonnull %i.s) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i5

sqlite3_mutex_enter.exit.i5:                      ; preds = %bb.h, %bb.g
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.v = tail call i32 %i.u(ptr noundef nonnull %0) #58, !inline_history !13
  %i.w = sext i32 %i.v to i64
  %i.x = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.y = sub nsw i64 %i.x, %i.w
  store i64 %i.y, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.z = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.aa = add nsw i64 %i.z, -1
  store i64 %i.aa, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ab(ptr noundef nonnull %0) #58, !inline_history !749
  %i.ac = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i6 = icmp eq ptr %i.ac, null
  br i1 %.not.i4.i6, label %sqlite3_free.exit7, label %bb.i

bb.i:                                             ; preds = %sqlite3_mutex_enter.exit.i5
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ad(ptr noundef nonnull %i.ac) #58, !inline_history !750
  br label %sqlite3_free.exit7

bb.j:                                             ; preds = %sqlite3_free.exit
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ae(ptr noundef nonnull %0) #58, !inline_history !749
  br label %sqlite3_free.exit7

sqlite3_free.exit7:                               ; preds = %sqlite3_mutex_enter.exit.i5, %bb.i, %bb.j
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 102) i32 @porterNext(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) #0 {
bb.a:
  %i.a = alloca [28 x i8], align 16               ; 6 uses
  %i.b = alloca ptr, align 8                      ; 56 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2694 ; 5 uses
  %i.e = ptrtoaddr ptr %i.d to i64                ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.l = load i32, ptr %i.f, align 4, !tbaa !2696 ; 2 uses
  %i.m = load i32, ptr %i.g, align 8, !tbaa !2695 ; 2 uses
  %i.n = icmp slt i32 %i.l, %i.m
  br i1 %i.n, label %.lr.ph.preheader, label %.thread449

.lr.ph.preheader:                                 ; preds = %bb.a, %.backedge
  %i.o = phi i32 [ %i.asv, %.backedge ], [ %i.m, %bb.a ] ; 4 uses
  %i.p = phi i32 [ %i.asu, %.backedge ], [ %i.l, %bb.a ] ; 3 uses
  %i.q = sext i32 %i.p to i64                     ; 3 uses
  %i.r = getelementptr inbounds i8, ptr %i.d, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !733   ; 2 uses
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %.lr.ph953, label %.critedge

.lr.ph:                                           ; preds = %.critedge3
  %i.u = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.next
  %i.v = load i8, ptr %i.u, align 1, !tbaa !733   ; 2 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %.lr.ph953, label %.critedge, !llvm.loop !5883

.lr.ph953:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.x = phi i8 [ %i.v, %.lr.ph ], [ %i.s, %.lr.ph.preheader ] ; 2 uses
  %indvars.iv952 = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %i.q, %.lr.ph.preheader ] ; 2 uses
  %.promoted558705951 = phi i32 [ %i.ad, %.lr.ph ], [ %i.p, %.lr.ph.preheader ]
  %i.y = icmp samesign ult i8 %i.x, 48
  br i1 %i.y, label %.critedge3, label %bb.b

bb.b:                                             ; preds = %.lr.ph953
  %i.z = zext nneg i8 %i.x to i64
  %i.aa = getelementptr i8, ptr @porterIdChar, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -48
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !733
  %.not = icmp eq i8 %i.ac, 0
  br i1 %.not, label %.critedge3, label %.critedge

.critedge3:                                       ; preds = %.lr.ph953, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv952, 1 ; 4 uses
  %i.ad = trunc i64 %indvars.iv.next to i32       ; 4 uses
  store i32 %i.ad, ptr %i.f, align 4, !tbaa !2696
  %exitcond.not = icmp eq i32 %i.o, %i.ad
  br i1 %exitcond.not, label %.backedge, label %.lr.ph, !llvm.loop !5883

.critedge:                                        ; preds = %.lr.ph, %bb.b, %.lr.ph.preheader
  %.promoted558705.lcssa = phi i32 [ %i.p, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ], [ %.promoted558705951, %bb.b ] ; 3 uses
  %indvars.iv.lcssa = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv952, %bb.b ] ; 4 uses
  %i.ae = trunc nsw i64 %indvars.iv.lcssa to i32  ; 3 uses
  %i.af = icmp slt i32 %.promoted558705.lcssa, %i.o
  br i1 %i.af, label %.lr.ph559.preheader, label %.critedge5

.lr.ph559.preheader:                              ; preds = %.critedge
  %i.ag = sext i32 %.promoted558705.lcssa to i64
  br label %.lr.ph559

.lr.ph559:                                        ; preds = %.lr.ph559.preheader, %.critedge67
  %indvars.iv653 = phi i64 [ %i.ag, %.lr.ph559.preheader ], [ %indvars.iv.next654, %.critedge67 ] ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv653
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733 ; 3 uses
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.c, label %.critedge67

bb.c:                                             ; preds = %.lr.ph559
  %i.ak = icmp samesign ult i8 %i.ai, 48
  br i1 %i.ak, label %.critedge5.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = zext nneg i8 %i.ai to i64
  %i.am = getelementptr i8, ptr @porterIdChar, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 -48
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !733
  %.not63.not = icmp eq i8 %i.ao, 0
  br i1 %.not63.not, label %.critedge5.loopexit.split.loop.exit890, label %.critedge67

.critedge67:                                      ; preds = %.lr.ph559, %bb.d
  %indvars.iv.next654 = add nsw i64 %indvars.iv653, 1 ; 2 uses
  %i.ap = trunc i64 %indvars.iv.next654 to i32    ; 2 uses
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !2696
  %exitcond657.not = icmp eq i32 %i.o, %i.ap
  br i1 %exitcond657.not, label %.critedge5, label %.lr.ph559, !llvm.loop !5884

.critedge5.loopexit.split.loop.exit:              ; preds = %bb.c
  %i.aq = trunc nsw i64 %indvars.iv653 to i32
  br label %.critedge5

.critedge5.loopexit.split.loop.exit890:           ; preds = %bb.d
  %i.ar = trunc nsw i64 %indvars.iv653 to i32
  br label %.critedge5

.critedge5:                                       ; preds = %.critedge67, %.critedge5.loopexit.split.loop.exit, %.critedge5.loopexit.split.loop.exit890, %.critedge
  %.lcssa496 = phi i32 [ %.promoted558705.lcssa, %.critedge ], [ %i.aq, %.critedge5.loopexit.split.loop.exit ], [ %i.ar, %.critedge5.loopexit.split.loop.exit890 ], [ %i.o, %.critedge67 ] ; 2 uses
  %.not65 = icmp sgt i32 %.lcssa496, %i.ae
  br i1 %.not65, label %bb.e, label %.backedge

bb.e:                                             ; preds = %.critedge5
  %i.as = sub nsw i32 %.lcssa496, %i.ae           ; 12 uses
  %i.at = load i32, ptr %i.h, align 8, !tbaa !2699
  %i.au = icmp sgt i32 %i.as, %i.at
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !2698 ; 2 uses
  br i1 %i.au, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.av = add nsw i32 %i.as, 20                   ; 2 uses
  store i32 %i.av, ptr %i.h, align 8, !tbaa !2699
  %i.aw = tail call i32 @sqlite3_initialize(), !inline_history !1233
  %.not.i = icmp eq i32 %i.aw, 0
  br i1 %.not.i, label %sqlite3_realloc64.exit, label %.thread449

sqlite3_realloc64.exit:                           ; preds = %bb.f
  %i.ax = sext i32 %i.av to i64
  %i.ay = tail call fastcc ptr @sqlite3Realloc(ptr noundef %.pre, i64 noundef %i.ax), !inline_history !1233 ; 3 uses
  %.not64.not = icmp eq ptr %i.ay, null
  br i1 %.not64.not, label %.thread449, label %bb.g

bb.g:                                             ; preds = %sqlite3_realloc64.exit
  store ptr %i.ay, ptr %i.i, align 8, !tbaa !2698
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.az = phi ptr [ %i.ay, %bb.g ], [ %.pre, %bb.e ] ; 24 uses
  %i.ba = ptrtoaddr ptr %i.az to i64              ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv.lcssa ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #58
  %i.bc = add i32 %i.as, -21
  %or.cond.i = icmp ult i32 %i.bc, -18
  %wide.trip.count.i.i = zext i32 %i.as to i64    ; 15 uses
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %.lr.ph.i

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %min.iters.check985 = icmp ult i32 %i.as, 8
  br i1 %min.iters.check985, label %.lr.ph.i.i.preheader1039, label %vector.memcheck982

vector.memcheck982:                               ; preds = %.lr.ph.i.i.preheader
  %i.bd = add i64 %indvars.iv.lcssa, %i.e
  %i.be = sub i64 %i.bd, %i.ba
  %diff.check983 = icmp ugt i64 %i.be, -8
  br i1 %diff.check983, label %.lr.ph.i.i.preheader1039, label %vector.ph986

vector.ph986:                                     ; preds = %vector.memcheck982
  %n.vec987 = and i64 %wide.trip.count.i.i, 4294967288 ; 3 uses
  br label %vector.body988

vector.body988:                                   ; preds = %vector.body988, %vector.ph986
  %index989 = phi i64 [ 0, %vector.ph986 ], [ %index.next994, %vector.body988 ] ; 3 uses
  %vec.phi990 = phi <4 x i1> [ zeroinitializer, %vector.ph986 ], [ %i.bt, %vector.body988 ]
  %vec.phi991 = phi <4 x i1> [ zeroinitializer, %vector.ph986 ], [ %i.bu, %vector.body988 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index989 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %wide.load992 = load <4 x i8>, ptr %i.bf, align 1, !tbaa !733 ; 4 uses
  %wide.load993 = load <4 x i8>, ptr %i.bg, align 1, !tbaa !733 ; 4 uses
  %i.bh = add <4 x i8> %wide.load992, splat (i8 -65)
  %i.bi = add <4 x i8> %wide.load993, splat (i8 -65)
  %i.bj = icmp ult <4 x i8> %i.bh, splat (i8 26)
  %i.bk = icmp ult <4 x i8> %i.bi, splat (i8 26)
  %i.bl = or disjoint <4 x i8> %wide.load992, splat (i8 32)
  %i.bm = or disjoint <4 x i8> %wide.load993, splat (i8 32)
  %i.bn = select <4 x i1> %i.bj, <4 x i8> %i.bl, <4 x i8> %wide.load992
  %i.bo = select <4 x i1> %i.bk, <4 x i8> %i.bm, <4 x i8> %wide.load993
  %i.bp = add <4 x i8> %wide.load992, splat (i8 -48)
  %i.bq = icmp ult <4 x i8> %i.bp, splat (i8 10)
  %i.br = add <4 x i8> %wide.load993, splat (i8 -48)
  %i.bs = icmp ult <4 x i8> %i.br, splat (i8 10)
  %i.bt = or <4 x i1> %vec.phi990, %i.bq          ; 2 uses
  %i.bu = or <4 x i1> %vec.phi991, %i.bs          ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.az, i64 %index989 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store <4 x i8> %i.bn, ptr %i.bv, align 1, !tbaa !733
  store <4 x i8> %i.bo, ptr %i.bw, align 1, !tbaa !733
  %index.next994 = add nuw i64 %index989, 8       ; 2 uses
  %i.bx = icmp eq i64 %index.next994, %n.vec987
  br i1 %i.bx, label %middle.block995, label %vector.body988, !llvm.loop !5885

middle.block995:                                  ; preds = %vector.body988
  %bin.rdx996 = or <4 x i1> %i.bu, %i.bt
  %bin.rdx996.fr = freeze <4 x i1> %bin.rdx996
  %i.by = bitcast <4 x i1> %bin.rdx996.fr to i4
  %.not1035 = icmp ne i4 %i.by, 0
  %rdx.select997 = zext i1 %.not1035 to i32       ; 2 uses
  %cmp.n998 = icmp eq i64 %n.vec987, %wide.trip.count.i.i
  br i1 %cmp.n998, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader1039

.lr.ph.i.i.preheader1039:                         ; preds = %vector.memcheck982, %.lr.ph.i.i.preheader, %middle.block995
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck982 ], [ 0, %.lr.ph.i.i.preheader ], [ %n.vec987, %middle.block995 ] ; 5 uses
  %.045.i.i.ph = phi i32 [ 0, %vector.memcheck982 ], [ 0, %.lr.ph.i.i.preheader ], [ %rdx.select997, %middle.block995 ] ; 2 uses
  %xtraiter1102 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod1103.not = icmp eq i64 %xtraiter1102, 0
  br i1 %lcmp.mod1103.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader1039
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i.ph
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !733 ; 4 uses
  %i.cb = add i8 %i.ca, -65
  %or.cond.i.i.prol = icmp ult i8 %i.cb, 26
  %i.cc = or disjoint i8 %i.ca, 32
  %.sink.i.i.prol = select i1 %or.cond.i.i.prol, i8 %i.cc, i8 %i.ca
  %i.cd = add i8 %i.ca, -58
  %i.ce = icmp ult i8 %i.cd, -10
  %.2.i.i.prol = select i1 %i.ce, i32 %.045.i.i.ph, i32 1 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i.ph
  store i8 %.sink.i.i.prol, ptr %i.cf, align 1, !tbaa !733
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader1039
  %.2.i.i.lcssa1040.unr = phi i32 [ poison, %.lr.ph.i.i.preheader1039 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader1039 ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.045.i.i.unr = phi i32 [ %.045.i.i.ph, %.lr.ph.i.i.preheader1039 ], [ %.2.i.i.prol, %.lr.ph.i.i.prol ]
  %i.cg = add nsw i64 %wide.trip.count.i.i, -1
  %i.ch = icmp eq i64 %indvars.iv.i.i.ph, %i.cg
  br i1 %i.ch, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.045.i.i = phi i32 [ %.2.i.i.1, %.lr.ph.i.i ], [ %.045.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i.i
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !733 ; 4 uses
  %i.ck = add i8 %i.cj, -65
  %or.cond.i.i = icmp ult i8 %i.ck, 26
  %i.cl = or disjoint i8 %i.cj, 32
  %.sink.i.i = select i1 %or.cond.i.i, i8 %i.cl, i8 %i.cj
  %i.cm = add i8 %i.cj, -58
  %i.cn = icmp ult i8 %i.cm, -10
  %i.co = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i
  store i8 %.sink.i.i, ptr %i.co, align 1, !tbaa !733
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i.i
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !733 ; 4 uses
  %i.cr = add i8 %i.cq, -65
  %or.cond.i.i.1 = icmp ult i8 %i.cr, 26
  %i.cs = or disjoint i8 %i.cq, 32
  %.sink.i.i.1 = select i1 %or.cond.i.i.1, i8 %i.cs, i8 %i.cq
  %i.ct = add i8 %i.cq, -58
  %i.cu = icmp ult i8 %i.ct, -10
  %i.cv = select i1 %i.cu, i1 %i.cn, i1 false
  %.2.i.i.1 = select i1 %i.cv, i32 %.045.i.i, i32 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i.i
  store i8 %.sink.i.i.1, ptr %i.cw, align 1, !tbaa !733
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5886

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block995
  %.2.i.i.lcssa = phi i32 [ %rdx.select997, %middle.block995 ], [ %.2.i.i.lcssa1040.unr, %.lr.ph.i.i.prol.loopexit ], [ %.2.i.i.1, %.lr.ph.i.i ]
  %i.cx = icmp eq i32 %.2.i.i.lcssa, 0
  %i.cy = select i1 %i.cx, i32 10, i32 3          ; 3 uses
  %i.cz = shl nuw nsw i32 %i.cy, 1
  %i.da = icmp sgt i32 %i.as, %i.cz
  br i1 %i.da, label %iter.check1020, label %.loopexit.sink.split.i

iter.check1020:                                   ; preds = %._crit_edge.loopexit.i.i
  %i.db = sub i32 %i.as, %i.cy
  %i.dc = zext nneg i32 %i.cy to i64              ; 6 uses
  %i.dd = zext i32 %i.db to i64                   ; 8 uses
  %i.de = add nuw nsw i64 %i.dd, 1
  %umax1003 = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %wide.trip.count.i.i)
  %i.df = sub nsw i64 %umax1003, %i.dd            ; 7 uses
  %min.iters.check1005 = icmp ult i64 %i.df, 8
  %i.dg = sub nsw i64 %i.dd, %i.dc
  %diff.check1002 = icmp ugt i64 %i.dg, -32
  %or.cond1036 = select i1 %min.iters.check1005, i1 true, i1 %diff.check1002
  br i1 %or.cond1036, label %.lr.ph50.i.i.preheader, label %vector.main.loop.iter.check1006

vector.main.loop.iter.check1006:                  ; preds = %iter.check1020
  %min.iters.check1007 = icmp ult i64 %i.df, 32
  br i1 %min.iters.check1007, label %vec.epilog.ph1024, label %vector.ph1008

vector.ph1008:                                    ; preds = %vector.main.loop.iter.check1006
  %i.dh = and i64 %i.df, 24
  %n.vec1009 = and i64 %i.df, -32                 ; 5 uses
  %i.di = add nsw i64 %n.vec1009, %i.dd
  %i.dj = or disjoint i64 %n.vec1009, %i.dc       ; 2 uses
  %invariant.gep1146 = getelementptr i8, ptr %i.az, i64 %i.dd
  %invariant.gep1148 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vector.body1010

vector.body1010:                                  ; preds = %vector.body1010, %vector.ph1008
  %index1011 = phi i64 [ 0, %vector.ph1008 ], [ %index.next1014, %vector.body1010 ] ; 3 uses
  %gep1147 = getelementptr i8, ptr %invariant.gep1146, i64 %index1011 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %gep1147, i64 16
  %wide.load1012 = load <16 x i8>, ptr %gep1147, align 1, !tbaa !733
  %wide.load1013 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !733
  %gep1149 = getelementptr i8, ptr %invariant.gep1148, i64 %index1011 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %gep1149, i64 16
  store <16 x i8> %wide.load1012, ptr %gep1149, align 1, !tbaa !733
  store <16 x i8> %wide.load1013, ptr %i.dl, align 1, !tbaa !733
  %index.next1014 = add nuw i64 %index1011, 32    ; 2 uses
  %i.dm = icmp eq i64 %index.next1014, %n.vec1009
  br i1 %i.dm, label %middle.block1015, label %vector.body1010, !llvm.loop !5887

middle.block1015:                                 ; preds = %vector.body1010
  %cmp.n1016 = icmp eq i64 %i.df, %n.vec1009
  br i1 %cmp.n1016, label %.loopexit.loopexit.i.i, label %vec.epilog.iter.check1022

vec.epilog.iter.check1022:                        ; preds = %middle.block1015
  %min.epilog.iters.check1023 = icmp eq i64 %i.dh, 0
  br i1 %min.epilog.iters.check1023, label %.lr.ph50.i.i.preheader, label %vec.epilog.ph1024, !prof !1824

vec.epilog.ph1024:                                ; preds = %vector.main.loop.iter.check1006, %vec.epilog.iter.check1022
  %vec.epilog.resume.val1017 = phi i64 [ %n.vec1009, %vec.epilog.iter.check1022 ], [ 0, %vector.main.loop.iter.check1006 ]
  %n.vec1025 = and i64 %i.df, -8                  ; 4 uses
  %i.dn = add nsw i64 %n.vec1025, %i.dd
  %i.do = add nsw i64 %n.vec1025, %i.dc           ; 2 uses
  %invariant.gep1150 = getelementptr i8, ptr %i.az, i64 %i.dd
  %invariant.gep1152 = getelementptr i8, ptr %i.az, i64 %i.dc
  br label %vec.epilog.vector.body1026

vec.epilog.vector.body1026:                       ; preds = %vec.epilog.vector.body1026, %vec.epilog.ph1024
  %index1027 = phi i64 [ %vec.epilog.resume.val1017, %vec.epilog.ph1024 ], [ %index.next1029, %vec.epilog.vector.body1026 ] ; 3 uses
  %gep1151 = getelementptr i8, ptr %invariant.gep1150, i64 %index1027
  %wide.load1028 = load <8 x i8>, ptr %gep1151, align 1, !tbaa !733
  %gep1153 = getelementptr i8, ptr %invariant.gep1152, i64 %index1027
  store <8 x i8> %wide.load1028, ptr %gep1153, align 1, !tbaa !733
  %index.next1029 = add nuw i64 %index1027, 8     ; 2 uses
  %i.dp = icmp eq i64 %index.next1029, %n.vec1025
  br i1 %i.dp, label %vec.epilog.middle.block1030, label %vec.epilog.vector.body1026, !llvm.loop !5888

vec.epilog.middle.block1030:                      ; preds = %vec.epilog.vector.body1026
  %cmp.n1031 = icmp eq i64 %i.df, %n.vec1025
  br i1 %cmp.n1031, label %.loopexit.loopexit.i.i, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %iter.check1020, %vec.epilog.iter.check1022, %vec.epilog.middle.block1030
  %indvars.iv57.i.i.ph = phi i64 [ %i.dd, %iter.check1020 ], [ %i.di, %vec.epilog.iter.check1022 ], [ %i.dn, %vec.epilog.middle.block1030 ]
  %indvars.iv55.i.i.ph = phi i64 [ %i.dc, %iter.check1020 ], [ %i.dj, %vec.epilog.iter.check1022 ], [ %i.do, %vec.epilog.middle.block1030 ]
  br label %.lr.ph50.i.i
end_hunk_3
