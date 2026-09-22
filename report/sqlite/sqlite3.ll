Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 368
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3WalCheckpoint:bb.a
  %i.eh = load atomic volatile i32, ptr %i.eg monotonic, align 4 ; 3 uses
  %i.ei = icmp ugt i32 %.2115.ph.2.i, %i.eh
  br i1 %i.ei, label %bb.y, label %walBusyLock.exit.thread199.3.i

bb.y:                                             ; preds = %walBusyLock.exit.thread199.2.i
  %.not11.i.3.i = icmp eq ptr %.2.ph.2.i, null
  br i1 %.not11.i.3.i, label %.split.us.i.3.i, label %.split.i.3.i

.split.i.3.i:                                     ; preds = %bb.y, %bb.z
  %i.ej = load i8, ptr %i.bn, align 1, !tbaa !1471
  %.not.i.i.3.i = icmp eq i8 %i.ej, 0
  br i1 %.not.i.i.3.i, label %walLockExclusive.exit.i.3.i, label %walBusyLock.exit.thread.3.i

walLockExclusive.exit.i.3.i:                      ; preds = %.split.i.3.i
  %i.ek = load ptr, ptr %i.bo, align 8, !tbaa !1476 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !863
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 112
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1477
  %i.eo = tail call i32 %i.en(ptr noundef nonnull %i.ek, i32 noundef range(i32 -2147483645, 8) 7, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #58, !inline_history !3871 ; 2 uses
  %i.ep = icmp eq i32 %i.eo, 5
  br i1 %i.ep, label %bb.z, label %walBusyLock.exit.3.i

bb.z:                                             ; preds = %walLockExclusive.exit.i.3.i
  %i.eq = tail call i32 %.2.ph.2.i(ptr noundef %4) #58, !inline_history !3872
  %.not.i.3.i = icmp eq i32 %i.eq, 0
  br i1 %.not.i.3.i, label %walBusyLock.exit.thread199.3.i, label %.split.i.3.i, !llvm.loop !3870

.split.us.i.3.i:                                  ; preds = %bb.y
  %i.er = load i8, ptr %i.bn, align 1, !tbaa !1471
  %.not.i.us.i.3.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.us.i.3.i, label %walLockExclusive.exit.us.i.3.i, label %walBusyLock.exit.thread.3.i

walLockExclusive.exit.us.i.3.i:                   ; preds = %.split.us.i.3.i
  %i.es = load ptr, ptr %i.bo, align 8, !tbaa !1476 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !863
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 112
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1477
  %i.ew = tail call i32 %i.ev(ptr noundef nonnull %i.es, i32 noundef range(i32 -2147483645, 8) 7, i32 noundef range(i32 -253, 5) 1, i32 noundef 10) #58, !inline_history !3871
  br label %walBusyLock.exit.3.i

walBusyLock.exit.3.i:                             ; preds = %walLockExclusive.exit.i.3.i, %walLockExclusive.exit.us.i.3.i
  %.us-phi.i.3.i = phi i32 [ %i.ew, %walLockExclusive.exit.us.i.3.i ], [ %i.eo, %walLockExclusive.exit.i.3.i ] ; 3 uses
  switch i32 %.us-phi.i.3.i, label %walCheckpoint.exit [
    i32 0, label %walBusyLock.exit.thread.3.i
    i32 5, label %walBusyLock.exit.thread199.3.i
  ]

walBusyLock.exit.thread.3.i:                      ; preds = %.split.i.3.i, %walBusyLock.exit.3.i, %.split.us.i.3.i
  store atomic volatile i32 -1, ptr %i.eg monotonic, align 4
  %i.ex = load i8, ptr %i.bn, align 1, !tbaa !1471
  %.not.i148.3.i = icmp eq i8 %i.ex, 0
  br i1 %.not.i148.3.i, label %bb.aa, label %walBusyLock.exit.thread199.3.i

bb.aa:                                            ; preds = %walBusyLock.exit.thread.3.i
  %i.ey = load ptr, ptr %i.bo, align 8, !tbaa !1476 ; 2 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !863
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 112
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !1477
  %i.fc = tail call i32 %i.fb(ptr noundef nonnull %i.ey, i32 noundef range(i32 -2147483645, 257) 7, i32 noundef range(i32 -253, 5) 1, i32 noundef 9) #58, !inline_history !3873 ; 0 uses
  br label %walBusyLock.exit.thread199.3.i

walBusyLock.exit.thread199.3.i:                   ; preds = %bb.z, %bb.aa, %walBusyLock.exit.thread.3.i, %walBusyLock.exit.3.i, %walBusyLock.exit.thread199.2.i
  %.2115.ph.3.i = phi i32 [ %.2115.ph.2.i, %bb.aa ], [ %.2115.ph.2.i, %walBusyLock.exit.thread.3.i ], [ %.2115.ph.2.i, %walBusyLock.exit.thread199.2.i ], [ %i.eh, %walBusyLock.exit.3.i ], [ %i.eh, %bb.z ] ; 5 uses
  %.2111.ph.3.i = phi i32 [ 0, %bb.aa ], [ 0, %walBusyLock.exit.thread.3.i ], [ %.2111.ph.2.i, %walBusyLock.exit.thread199.2.i ], [ %.us-phi.i.3.i, %walBusyLock.exit.3.i ], [ 5, %bb.z ]
  %.2.ph.3.i = phi ptr [ %.2.ph.2.i, %bb.aa ], [ %.2.ph.2.i, %walBusyLock.exit.thread.3.i ], [ %.2.ph.2.i, %walBusyLock.exit.thread199.2.i ], [ null, %walBusyLock.exit.3.i ], [ null, %bb.z ] ; 4 uses
  %i.fd = load volatile i32, ptr %i.bi, align 4, !tbaa !1583
  %i.fe = icmp ult i32 %i.fd, %.2115.ph.3.i
  br i1 %i.fe, label %bb.ab, label %walUnlockExclusive.exit173.i

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
  %.not73.i.i = icmp sgt i32 %i.gf, %i.fl
  br i1 %.not73.i.i, label %walIteratorInit.exit.i, label %.lr.ph70.i.i

.lr.ph70.i.i:                                     ; preds = %bb.ac
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %sext.i.i = shl i64 %i.ge, 32
  %i.gk = ashr exact i64 %sext.i.i, 32            ; 2 uses
  %sext84.i.i = shl i64 %i.fk, 32
  %i.gl = ashr exact i64 %sext84.i.i, 32          ; 2 uses
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.gk, i64 %i.gl)
  br label %bb.ad

bb.ad:                                            ; preds = %.loopexit.i.i, %.lr.ph70.i.i
  %indvars.iv76.i.i = phi i64 [ %i.gk, %.lr.ph70.i.i ], [ %indvars.iv.next77.i.i, %.loopexit.i.i ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #58
  %i.gm = load i32, ptr %i.gh, align 8, !tbaa !1563
  %i.gn = sext i32 %i.gm to i64
  %.not.i.i.i.i = icmp slt i64 %indvars.iv76.i.i, %i.gn
  br i1 %.not.i.i.i.i, label %bb.ae, label %walIndexPage.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.go = load ptr, ptr %i.bh, align 8, !tbaa !1480
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.go, i64 %indvars.iv76.i.i
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !786 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, null
  br i1 %i.gr, label %walIndexPage.exit.i.i.i, label %walIndexPage.exit.thread.i.i.thread.i

walIndexPage.exit.thread.i.i.thread.i:            ; preds = %bb.ae
  %i.gs = icmp eq i64 %indvars.iv76.i.i, 0        ; 2 uses
  %.idx.i209.i = select i1 %i.gs, i64 136, i64 0  ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.idx.i209.i
  %.pre291.i = trunc nsw i64 %indvars.iv76.i.i to i32
  br label %bb.af

walIndexPage.exit.i.i.i:                          ; preds = %bb.ae, %bb.ad
  %i.gu = trunc nsw i64 %indvars.iv76.i.i to i32  ; 2 uses
  %i.gv = call fastcc i32 @walIndexPageRealloc(ptr noundef nonnull %0, i32 noundef %i.gu, ptr noundef nonnull %i.gg), !inline_history !3875 ; 3 uses
  %.pr.i.i.i = load ptr, ptr %i.gg, align 8, !tbaa !1565 ; 2 uses
  %.not.i55.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %.not.i55.i.i, label %walHashGet.exit.thread.i.i, label %walIndexPage.exit.thread.i.i.i

walIndexPage.exit.thread.i.i.i:                   ; preds = %walIndexPage.exit.i.i.i
  %i.gw = icmp eq i64 %indvars.iv76.i.i, 0        ; 2 uses
  %.idx.i.i = select i1 %i.gw, i64 136, i64 0     ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.pr.i.i.i, i64 %.idx.i.i
  %i.gy = icmp eq i32 %i.gv, 0
  br i1 %i.gy, label %bb.af, label %._crit_edge71.thread91.i.i

walHashGet.exit.thread.i.i:                       ; preds = %walIndexPage.exit.i.i.i
  %spec.store.select.i.i.i = tail call i32 @llvm.umax.i32(i32 %i.gv, i32 1)
  br label %._crit_edge71.thread91.i.i

bb.af:                                            ; preds = %walIndexPage.exit.thread.i.i.i, %walIndexPage.exit.thread.i.i.thread.i
  %.pre-phi.i = phi i32 [ %.pre291.i, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gu, %walIndexPage.exit.thread.i.i.i ]
  %i.gz = phi ptr [ %i.gt, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gx, %walIndexPage.exit.thread.i.i.i ] ; 9 uses
  %.idx.i210.i = phi i64 [ %.idx.i209.i, %walIndexPage.exit.thread.i.i.thread.i ], [ %.idx.i.i, %walIndexPage.exit.thread.i.i.i ]
  %i.ha = phi i1 [ %i.gs, %walIndexPage.exit.thread.i.i.thread.i ], [ %i.gw, %walIndexPage.exit.thread.i.i.i ]
  %i.hb = shl i32 %.pre-phi.i, 12
  %i.hc = add i32 %i.hb, -34
  %i.hd = select i1 %i.ha, i32 0, i32 %i.hc       ; 3 uses
  %i.he = icmp eq i64 %indvars.iv76.i.i, %i.gl
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
  %min.iters.check233 = icmp ult i32 %storemerge.i.i, 16
  br i1 %min.iters.check233, label %vec.epilog.ph, label %vector.ph

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
  %n.vec234 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  %i.ht = trunc i64 %vec.epilog.resume.val to i16
  %broadcast.splatinsert = insertelement <4 x i16> poison, i16 %i.ht, i64 0
  %broadcast.splat = shufflevector <4 x i16> %broadcast.splatinsert, <4 x i16> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index235 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next237, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind236 = phi <4 x i16> [ %induction, %vec.epilog.ph ], [ %vec.ind.next238, %vec.epilog.vector.body ] ; 2 uses
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %index235
  store <4 x i16> %vec.ind236, ptr %i.hu, align 2, !tbaa !783
  %index.next237 = add nuw i64 %index235, 4       ; 2 uses
  %vec.ind.next238 = add <4 x i16> %vec.ind236, splat (i16 4)
  %i.hv = icmp eq i64 %index.next237, %n.vec234
  br i1 %i.hv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3877

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n239 = icmp eq i64 %n.vec234, %wide.trip.count.i.i
  br i1 %cmp.n239, label %.lr.ph67.preheader.i.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec234, %vec.epilog.middle.block ]
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
  %i.hy = add nuw nsw i32 %.1.lcssa.i.i.i, 1
  %i.hz = icmp ult i32 %.1.lcssa.i.i.i, 12
  br i1 %i.hz, label %.lr.ph75.preheader.i.i.i, label %.loopexit.i.i

.lr.ph75.preheader.i.i.i:                         ; preds = %.preheader.i.i.i, %._crit_edge.i.i
  %.026.lcssa92.i.i.i = phi i32 [ %i.hy, %.preheader.i.i.i ], [ 1, %._crit_edge.i.i ]
  %.052.lcssa91.i.i.i = phi ptr [ %.153.lcssa.i.i.i, %.preheader.i.i.i ], [ null, %._crit_edge.i.i ]
  %.055.lcssa90.i.i.i = phi i32 [ %.156.lcssa.i.i.i, %.preheader.i.i.i ], [ 0, %._crit_edge.i.i ]
  %i.ia = zext nneg i32 %.026.lcssa92.i.i.i to i64
  br label %.lr.ph75.i.i.i

.lr.ph67.i.i.i:                                   ; preds = %._crit_edge.i.i.i, %.lr.ph67.preheader.i.i.i
  %indvars.iv80.i.i.i = phi i64 [ 0, %.lr.ph67.preheader.i.i.i ], [ %indvars.iv.next81.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.hm, i64 %indvars.iv80.i.i.i ; 2 uses
  %i.ic = trunc nuw nsw i64 %indvars.iv80.i.i.i to i32 ; 2 uses
  %i.id = and i32 %i.ic, 1
  %.not2859.i.i.i = icmp eq i32 %i.id, 0
  br i1 %.not2859.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph67.i.i.i, %walMerge.exit.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %walMerge.exit.i.i.i ], [ 0, %.lr.ph67.i.i.i ] ; 3 uses
  %.15361.i.i.i = phi ptr [ %i.ig, %walMerge.exit.i.i.i ], [ %i.ib, %.lr.ph67.i.i.i ] ; 2 uses
  %.15660.i.i.i = phi i32 [ %.038.lcssa.i.i.i.i, %walMerge.exit.i.i.i ], [ 1, %.lr.ph67.i.i.i ] ; 2 uses
  %i.ie = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %indvars.iv.i.i.i ; 2 uses
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
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.jx = trunc nuw i64 %indvars.iv.i.i.i to i32
  %i.jy = shl nuw i32 2, %i.jx
  %i.jz = and i32 %i.jy, %i.ic
  %.not28.i.i.i = icmp eq i32 %i.jz, 0
  br i1 %.not28.i.i.i, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !3880

._crit_edge.loopexit.i.i.i:                       ; preds = %walMerge.exit.i.i.i
  %i.ka = trunc nuw i64 %indvars.iv.next.i.i.i to i32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.lr.ph67.i.i.i
  %.156.lcssa.i.i.i = phi i32 [ 1, %.lr.ph67.i.i.i ], [ %.038.lcssa.i.i.i.i, %._crit_edge.loopexit.i.i.i ] ; 3 uses
  %.153.lcssa.i.i.i = phi ptr [ %i.ib, %.lr.ph67.i.i.i ], [ %i.ig, %._crit_edge.loopexit.i.i.i ] ; 2 uses
  %.1.lcssa.i.i.i = phi i32 [ 0, %.lr.ph67.i.i.i ], [ %i.ka, %._crit_edge.loopexit.i.i.i ] ; 3 uses
  %i.kb = zext i32 %.1.lcssa.i.i.i to i64
  %i.kc = getelementptr inbounds nuw [16 x i8], ptr %10, i64 %i.kb ; 2 uses
end_hunk_0
begin_hunk_1_@btreeMoveto:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74102, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %sqlite3DbFree.exit

bb.h:                                             ; preds = %bb.f
  %i.w = tail call fastcc i32 @sqlite3BtreeIndexMoveto(ptr noundef nonnull %0, ptr noundef %.0.i.i, ptr noundef nonnull %4)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.h, %bb.g
  %.021 = phi i32 [ 11, %bb.g ], [ %i.w, %bb.h ]
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !1732
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1105
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.z, ptr noundef nonnull %.0.i.i)
  br label %.critedge

bb.i:                                             ; preds = %bb.a
  %i.aa = tail call fastcc i32 @sqlite3BtreeTableMoveto(ptr noundef %0, i64 noundef %2, i32 noundef %3, ptr noundef %4)
  br label %.critedge

.critedge:                                        ; preds = %sqlite3DbMallocRaw.exit.i, %sqlite3DbFree.exit, %bb.i
  %.123 = phi i32 [ %i.aa, %bb.i ], [ %.021, %sqlite3DbFree.exit ], [ 7, %sqlite3DbMallocRaw.exit.i ]
  ret i32 %.123
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VdbeMemFromBtree(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef initializes((20, 22)) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 4 uses
  store i16 1, ptr %i.a, align 4, !tbaa !686
  %i.b = icmp ugt i32 %2, 2147483390
  br i1 %i.b, label %sqlite3VdbeMemRelease.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %2 to i64                  ; 2 uses
  %i.d = zext i32 %1 to i64
  %i.e = add nuw nsw i64 %i.c, %i.d
  %i.f = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.f, align 8, !tbaa !1219 ; 2 uses
  %i.g = getelementptr i8, ptr %.val, i64 52
  %.val.val = load i32, ptr %i.g, align 4, !tbaa !657
  %i.h = getelementptr i8, ptr %.val, i64 64
  %.val.val23 = load i32, ptr %i.h, align 8, !tbaa !996
  %i.i = zext i32 %.val.val to i64
  %i.j = zext i32 %.val.val23 to i64
  %i.k = mul nuw nsw i64 %i.j, %i.i
  %i.l = icmp samesign ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 87090, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %sqlite3VdbeMemRelease.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !684
  %.not = icmp sgt i32 %i.n, %2
  br i1 %.not, label %sqlite3VdbeMemClearAndResize.exit.thread, label %sqlite3VdbeMemClearAndResize.exit

sqlite3VdbeMemClearAndResize.exit.thread:         ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !685  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.p, ptr %i.q, align 8, !tbaa !762
  store i16 1, ptr %i.a, align 4, !tbaa !686
  br label %bb.e

sqlite3VdbeMemClearAndResize.exit:                ; preds = %bb.d
  %i.r = add nuw nsw i32 %2, 1
  %i.s = tail call fastcc i32 @sqlite3VdbeMemGrow(ptr noundef nonnull %3, i32 noundef %i.r, i32 noundef 0), !inline_history !1102 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %sqlite3VdbeMemClearAndResize.exit._crit_edge, label %sqlite3VdbeMemRelease.exit

sqlite3VdbeMemClearAndResize.exit._crit_edge:     ; preds = %sqlite3VdbeMemClearAndResize.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !762
  br label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeMemClearAndResize.exit._crit_edge, %sqlite3VdbeMemClearAndResize.exit.thread
  %i.u = phi ptr [ %.pre, %sqlite3VdbeMemClearAndResize.exit._crit_edge ], [ %i.p, %sqlite3VdbeMemClearAndResize.exit.thread ]
  %i.v = tail call fastcc i32 @accessPayload(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, ptr noundef %i.u, i32 noundef 0), !inline_history !196 ; 3 uses
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !762
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.c
  store i8 0, ptr %i.z, align 1, !tbaa !733
  store i16 16, ptr %i.a, align 4, !tbaa !686
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %2, ptr %i.aa, align 8, !tbaa !1093
  br label %sqlite3VdbeMemRelease.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = load i16, ptr %i.a, align 4, !tbaa !686
  %i.ac = and i16 %i.ab, -28672
  %.not.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.m, align 8, !tbaa !684
  %.not3.i = icmp eq i32 %i.ad, 0
  br i1 %.not3.i, label %sqlite3VdbeMemRelease.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %3)
  br label %sqlite3VdbeMemRelease.exit

sqlite3VdbeMemRelease.exit:                       ; preds = %bb.i, %bb.h, %sqlite3VdbeMemClearAndResize.exit, %bb.f, %bb.a, %bb.c
  %.019 = phi i32 [ 7, %bb.a ], [ 11, %bb.c ], [ 0, %bb.f ], [ %i.s, %sqlite3VdbeMemClearAndResize.exit ], [ %i.v, %bb.h ], [ %i.v, %bb.i ]
  ret i32 %.019
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @putVarint64(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1) unnamed_addr #38 {
bb.a:
  %i.a = alloca [10 x i8], align 1                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %.not = icmp ult i64 %1, 72057594037927936
  br i1 %.not, label %.preheader, label %.loopexit.loopexit33

.loopexit.loopexit33:                             ; preds = %bb.a
  %i.b = trunc i64 %1 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.b, ptr %i.c, align 1, !tbaa !733
  %i.d = lshr i64 %1, 8
  %i.e = trunc i64 %i.d to i8
  %i.f = or i8 %i.e, -128
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.f, ptr %i.g, align 1, !tbaa !733
  %i.h = lshr i64 %1, 15
  %i.i = trunc i64 %i.h to i8
  %i.j = or i8 %i.i, -128
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.j, ptr %i.k, align 1, !tbaa !733
  %i.l = lshr i64 %1, 22
  %i.m = trunc i64 %i.l to i8
  %i.n = or i8 %i.m, -128
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.n, ptr %i.o, align 1, !tbaa !733
  %i.p = lshr i64 %1, 29
  %i.q = trunc i64 %i.p to i8
  %i.r = or i8 %i.q, -128
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.r, ptr %i.s, align 1, !tbaa !733
  %i.t = lshr i64 %1, 36
  %i.u = trunc i64 %i.t to i8
  %i.v = or i8 %i.u, -128
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.v, ptr %i.w, align 1, !tbaa !733
  %i.x = lshr i64 %1, 43
  %i.y = trunc i64 %i.x to i8
  %i.z = or i8 %i.y, -128
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !733
  %i.ab = lshr i64 %1, 50
  %i.ac = trunc i64 %i.ab to i8
  %i.ad = or i8 %i.ac, -128
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !733
  %i.af = lshr i64 %1, 57
  %i.ag = trunc nuw nsw i64 %i.af to i8
  %i.ah = or disjoint i8 %i.ag, -128
  store i8 %i.ah, ptr %0, align 1, !tbaa !733
  br label %.loopexit

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv43 = phi i32 [ %indvars.iv.next44, %.preheader ], [ 1, %bb.a ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 7 uses
  %.125 = phi i64 [ %i.al, %.preheader ], [ %1, %bb.a ] ; 2 uses
  %i.ai = trunc i64 %.125 to i8
  %i.aj = or i8 %i.ai, -128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !733
  %i.al = lshr i64 %.125, 7                       ; 2 uses
  %.not27 = icmp eq i64 %i.al, 0
  %indvars.iv.next44 = add nuw nsw i32 %indvars.iv43, 1
  br i1 %.not27, label %iter.check, label %.preheader, !llvm.loop !4239

iter.check:                                       ; preds = %.preheader
  %i.am = load i8, ptr %i.a, align 1, !tbaa !733
  %i.an = and i8 %i.am, 127
  store i8 %i.an, ptr %i.a, align 1, !tbaa !733
  %wide.trip.count = zext nneg i32 %indvars.iv43 to i64 ; 6 uses
  %min.iters.check = icmp samesign ult i32 %indvars.iv43, 8
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp samesign ult i32 %indvars.iv43, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.ap = sub nsw i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = sub i64 %indvars.iv, %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -15
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 -31
  %wide.load = load <16 x i8>, ptr %i.as, align 1, !tbaa !733
  %wide.load46 = load <16 x i8>, ptr %i.at, align 1, !tbaa !733
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse47 = shufflevector <16 x i8> %wide.load46, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store <16 x i8> %reverse, ptr %i.au, align 1, !tbaa !733
  store <16 x i8> %reverse47, ptr %i.av, align 1, !tbaa !733
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !4240

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1824

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec48 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.ax = sub nsw i64 %indvars.iv, %n.vec48
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = sub i64 %indvars.iv, %index49
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ay
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -7
  %wide.load50 = load <8 x i8>, ptr %i.ba, align 1, !tbaa !733
  %reverse51 = shufflevector <8 x i8> %wide.load50, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 %index49
  store <8 x i8> %reverse51, ptr %i.bb, align 1, !tbaa !733
  %index.next52 = add nuw i64 %index49, 8         ; 2 uses
  %i.bc = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4241

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n53 = icmp eq i64 %n.vec48, %wide.trip.count
  br i1 %cmp.n53, label %.loopexit.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv38.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec48, %vec.epilog.middle.block ]
  %indvars.iv36.ph = phi i64 [ %indvars.iv, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.ax, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %vec.epilog.scalar.ph ], [ %indvars.iv38.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %vec.epilog.scalar.ph ], [ %indvars.iv36.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv36
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !733
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv38
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !733
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, -1
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !4242

.loopexit.loopexit:                               ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.bg = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit33, %.loopexit.loopexit
  %.026 = phi i32 [ %i.bg, %.loopexit.loopexit ], [ 9, %.loopexit.loopexit33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @moveToRoot(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 6 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !1613  ; 2 uses
  %i.c = icmp sgt i8 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %.not51 = icmp eq i8 %i.b, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.pre63 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !1114 ; 2 uses
  br i1 %.not51, label %._crit_edge62, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %.pre63, i64 112
  %.val57 = load ptr, ptr %i.d, align 8, !tbaa !1009 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val57, i64 52
  %i.f = load i16, ptr %i.e, align 4, !tbaa !895
  %i.g = and i16 %i.f, 32
  %.not.i.i = icmp eq i16 %i.g, 0
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val57, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !896  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !897
  %i.l = add nsw i32 %i.k, -1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !897
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 168 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !898
  %i.o = getelementptr inbounds nuw i8, ptr %.val57, i64 32
  store ptr %i.n, ptr %i.o, align 8, !tbaa !899
  store ptr %.val57, ptr %i.m, align 8, !tbaa !898
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !900  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val57, i64 48
  %i.s = load i32, ptr %i.r, align 8, !tbaa !901
  %i.t = add i32 %i.s, -1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  %i.w = load i64, ptr %i.v, align 8, !tbaa !630
  %i.x = mul nsw i64 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %.val57, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !894
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !863
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 144
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !903
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %i.q, i64 noundef %i.x, ptr noundef %i.z) #58, !inline_history !195 ; 0 uses
  br label %releasePageNotNull.exit

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val57)
  br label %releasePageNotNull.exit

releasePageNotNull.exit:                          ; preds = %bb.d, %bb.e
  %i.ae = load i8, ptr %i.a, align 4, !tbaa !1613
  %i.af = add i8 %i.ae, -1                        ; 3 uses
  store i8 %i.af, ptr %i.a, align 4, !tbaa !1613
  %.not5361 = icmp eq i8 %i.af, 0
  br i1 %.not5361, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %releasePageNotNull.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %releasePageNotNull.exit59
  %i.ah = phi i8 [ %i.af, %.lr.ph ], [ %i.bn, %releasePageNotNull.exit59 ]
  %i.ai = sext i8 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1514
  %i.al = getelementptr i8, ptr %i.ak, i64 112
  %.val = load ptr, ptr %i.al, align 8, !tbaa !1009 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val, i64 52
  %i.an = load i16, ptr %i.am, align 4, !tbaa !895
  %i.ao = and i16 %i.an, 32
  %.not.i.i58 = icmp eq i16 %i.ao, 0
  br i1 %.not.i.i58, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !896 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 152 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !897
  %i.at = add nsw i32 %i.as, -1
  store i32 %i.at, ptr %i.ar, align 8, !tbaa !897
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 168 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !898
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 32
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !899
  store ptr %.val, ptr %i.au, align 8, !tbaa !898
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !900 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !901
  %i.bb = add i32 %i.ba, -1
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 200
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !630
  %i.bf = mul nsw i64 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !894
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !863
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !903
  %i.bl = tail call i32 %i.bk(ptr noundef nonnull %i.ay, i64 noundef %i.bf, ptr noundef %i.bh) #58, !inline_history !195 ; 0 uses
  br label %releasePageNotNull.exit59

bb.h:                                             ; preds = %bb.f
  tail call fastcc void @sqlite3PcacheRelease(ptr noundef nonnull %.val)
  br label %releasePageNotNull.exit59

releasePageNotNull.exit59:                        ; preds = %bb.g, %bb.h
  %i.bm = load i8, ptr %i.a, align 4, !tbaa !1613
  %i.bn = add i8 %i.bm, -1                        ; 3 uses
  store i8 %i.bn, ptr %i.a, align 4, !tbaa !1613
  %.not53 = icmp eq i8 %i.bn, 0
  br i1 %.not53, label %._crit_edge, label %bb.f, !llvm.loop !4243

._crit_edge:                                      ; preds = %releasePageNotNull.exit59, %releasePageNotNull.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1514 ; 2 uses
  store ptr %i.bp, ptr %.phi.trans.insert, align 8, !tbaa !1114
  br label %bb.y
end_hunk_1
begin_hunk_2_@vtabCallConstructor:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  br label %sqlite3Strlen30.exit

bb.aj:                                            ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.em = load i8, ptr %i.el, align 8
  %i.en = lshr i8 %i.em, 4                        ; 2 uses
  %.not8.i = icmp eq i8 %i.en, 0
  br i1 %.not8.i, label %sqlite3Strlen30.exit, label %sqlite3ColumnType.exit

sqlite3ColumnType.exit:                           ; preds = %bb.aj
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = getelementptr [8 x i8], ptr @sqlite3StdType, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !741 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %.critedge, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %sqlite3ColumnType.exit, %bb.ai, %bb.aj
  %.0.i155166 = phi ptr [ %i.er, %sqlite3ColumnType.exit ], [ @.str.4, %bb.aj ], [ %i.ek, %bb.ai ] ; 18 uses
  %i.et = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i155166) #59 ; 2 uses
  %i.eu = trunc i64 %i.et to i32
  %i.ev = and i32 %i.eu, 1073741823               ; 3 uses
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %sqlite3Strlen30.exit
  %scevgep = getelementptr i8, ptr %.0.i155166, i64 6
  %wide.trip.count = and i64 %i.et, 1073741823    ; 3 uses
  %i.ex = load i8, ptr %.0.i155166, align 1, !tbaa !733
  %i.ey = and i8 %i.ex, -33
  %i.ez = icmp eq i8 %i.ey, 72
  br i1 %i.ez, label %.lr.ph.i158.1.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.1.peel:                               ; preds = %bb.ak
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 1 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !733
  %i.fc = and i8 %i.fb, -33
  %i.fd = icmp eq i8 %i.fc, 73
  br i1 %i.fd, label %.lr.ph.i158.2.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.2.peel:                               ; preds = %.lr.ph.i158.1.peel
  %i.fe = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 2 ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !733
  %i.fg = and i8 %i.ff, -33
  %i.fh = icmp eq i8 %i.fg, 68
  br i1 %i.fh, label %.lr.ph.i158.3.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.3.peel:                               ; preds = %.lr.ph.i158.2.peel
  %i.fi = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 3 ; 2 uses
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !733
  %i.fk = and i8 %i.fj, -33
  %i.fl = icmp eq i8 %i.fk, 68
  br i1 %i.fl, label %.lr.ph.i158.4.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.4.peel:                               ; preds = %.lr.ph.i158.3.peel
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 4 ; 2 uses
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !733
  %i.fo = and i8 %i.fn, -33
  %i.fp = icmp eq i8 %i.fo, 69
  br i1 %i.fp, label %.lr.ph.i158.5.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.5.peel:                               ; preds = %.lr.ph.i158.4.peel
  %i.fq = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 5 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !733
  %i.fs = and i8 %i.fr, -33
  %i.ft = icmp eq i8 %i.fs, 78
  br i1 %i.ft, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.peel

sqlite3_strnicmp.exit.peel:                       ; preds = %bb.ak, %.lr.ph.i158.1.peel, %.lr.ph.i158.2.peel, %.lr.ph.i158.3.peel, %.lr.ph.i158.4.peel, %.lr.ph.i158.5.peel
  %.lcssa.peel = phi i32 [ 104, %bb.ak ], [ 105, %.lr.ph.i158.1.peel ], [ 100, %.lr.ph.i158.2.peel ], [ 100, %.lr.ph.i158.3.peel ], [ 101, %.lr.ph.i158.4.peel ], [ 110, %.lr.ph.i158.5.peel ]
  %.023.i.lcssa193.peel = phi ptr [ %.0.i155166, %bb.ak ], [ %i.fa, %.lr.ph.i158.1.peel ], [ %i.fe, %.lr.ph.i158.2.peel ], [ %i.fi, %.lr.ph.i158.3.peel ], [ %i.fm, %.lr.ph.i158.4.peel ], [ %i.fq, %.lr.ph.i158.5.peel ]
  %i.fu = load i8, ptr %.023.i.lcssa193.peel, align 1, !tbaa !733
  %i.fv = zext i8 %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !733
  %i.fy = zext i8 %i.fx to i32
  %i.fz = icmp eq i32 %.lcssa.peel, %i.fy
  br i1 %i.fz, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.thread169.peel

sqlite3_strnicmp.exit.thread.peel:                ; preds = %sqlite3_strnicmp.exit.peel, %.lr.ph.i158.5.peel
  %i.ga = load i8, ptr %scevgep, align 1, !tbaa !733 ; 3 uses
  switch i8 %i.ga, label %sqlite3_strnicmp.exit.thread169.peel [
    i8 0, label %bb.am
    i8 32, label %bb.am
  ]

sqlite3_strnicmp.exit.thread169.peel:             ; preds = %sqlite3_strnicmp.exit.thread.peel, %sqlite3_strnicmp.exit.peel
  %exitcond.peel.not = icmp eq i32 %i.ev, 1
  br i1 %exitcond.peel.not, label %.critedge, label %.lr.ph.i158.preheader.peel.next

.lr.ph.i158.preheader.peel.next:                  ; preds = %sqlite3_strnicmp.exit.thread169.peel, %sqlite3_strnicmp.exit.thread169
  %indvars.iv202 = phi i64 [ %indvars.iv.next, %sqlite3_strnicmp.exit.thread169 ], [ 1, %sqlite3_strnicmp.exit.thread169.peel ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv202 ; 10 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !733
  %i.gd = and i8 %i.gc, -33
  %i.ge = icmp eq i8 %i.gd, 72
  br i1 %i.ge, label %.lr.ph.i158.1, label %sqlite3_strnicmp.exit

.lr.ph.i158.1:                                    ; preds = %.lr.ph.i158.preheader.peel.next
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !733
  %i.gh = and i8 %i.gg, -33
  %i.gi = icmp eq i8 %i.gh, 73
  br i1 %i.gi, label %.lr.ph.i158.2, label %sqlite3_strnicmp.exit

.lr.ph.i158.2:                                    ; preds = %.lr.ph.i158.1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gb, i64 2 ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !733
  %i.gl = and i8 %i.gk, -33
  %i.gm = icmp eq i8 %i.gl, 68
  br i1 %i.gm, label %.lr.ph.i158.3, label %sqlite3_strnicmp.exit

.lr.ph.i158.3:                                    ; preds = %.lr.ph.i158.2
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gb, i64 3 ; 2 uses
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !733
  %i.gp = and i8 %i.go, -33
  %i.gq = icmp eq i8 %i.gp, 68
  br i1 %i.gq, label %.lr.ph.i158.4, label %sqlite3_strnicmp.exit

.lr.ph.i158.4:                                    ; preds = %.lr.ph.i158.3
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gb, i64 4 ; 2 uses
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !733
  %i.gt = and i8 %i.gs, -33
  %i.gu = icmp eq i8 %i.gt, 69
  br i1 %i.gu, label %.lr.ph.i158.5, label %sqlite3_strnicmp.exit

.lr.ph.i158.5:                                    ; preds = %.lr.ph.i158.4
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gb, i64 5 ; 2 uses
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !733
  %i.gx = and i8 %i.gw, -33
  %i.gy = icmp eq i8 %i.gx, 78
  br i1 %i.gy, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i158.preheader.peel.next, %.lr.ph.i158.1, %.lr.ph.i158.2, %.lr.ph.i158.3, %.lr.ph.i158.4, %.lr.ph.i158.5
  %.lcssa = phi i32 [ 104, %.lr.ph.i158.preheader.peel.next ], [ 105, %.lr.ph.i158.1 ], [ 100, %.lr.ph.i158.2 ], [ 100, %.lr.ph.i158.3 ], [ 101, %.lr.ph.i158.4 ], [ 110, %.lr.ph.i158.5 ]
  %.023.i.lcssa193 = phi ptr [ %i.gb, %.lr.ph.i158.preheader.peel.next ], [ %i.gf, %.lr.ph.i158.1 ], [ %i.gj, %.lr.ph.i158.2 ], [ %i.gn, %.lr.ph.i158.3 ], [ %i.gr, %.lr.ph.i158.4 ], [ %i.gv, %.lr.ph.i158.5 ]
  %i.gz = load i8, ptr %.023.i.lcssa193, align 1, !tbaa !733
  %i.ha = zext i8 %i.gz to i64
  %i.hb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ha
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !733
  %i.hd = zext i8 %i.hc to i32
  %i.he = icmp eq i32 %.lcssa, %i.hd
  br i1 %i.he, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit.thread169

sqlite3_strnicmp.exit.thread:                     ; preds = %sqlite3_strnicmp.exit, %.lr.ph.i158.5
  %i.hf = getelementptr i8, ptr %i.gb, i64 -1
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !733
  %i.hh = icmp eq i8 %i.hg, 32
  br i1 %i.hh, label %bb.al, label %sqlite3_strnicmp.exit.thread169

bb.al:                                            ; preds = %sqlite3_strnicmp.exit.thread
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gb, i64 6
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !733 ; 2 uses
  switch i8 %i.hj, label %sqlite3_strnicmp.exit.thread169 [
    i8 0, label %.loopexit
    i8 32, label %.loopexit
  ]

sqlite3_strnicmp.exit.thread169:                  ; preds = %bb.al, %sqlite3_strnicmp.exit, %sqlite3_strnicmp.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.i158.preheader.peel.next, !llvm.loop !4436

.loopexit:                                        ; preds = %bb.al, %bb.al
  %i.hk = trunc nuw nsw i64 %indvars.iv202 to i32
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %sqlite3_strnicmp.exit.thread.peel, %sqlite3_strnicmp.exit.thread.peel
  %.0112181.lcssa = phi i32 [ 0, %sqlite3_strnicmp.exit.thread.peel ], [ 0, %sqlite3_strnicmp.exit.thread.peel ], [ %i.hk, %.loopexit ] ; 3 uses
  %.lcssa198 = phi ptr [ %.0.i155166, %sqlite3_strnicmp.exit.thread.peel ], [ %.0.i155166, %sqlite3_strnicmp.exit.thread.peel ], [ %i.gb, %.loopexit ] ; 2 uses
  %.lcssa197 = phi i8 [ %i.ga, %sqlite3_strnicmp.exit.thread.peel ], [ %i.ga, %sqlite3_strnicmp.exit.thread.peel ], [ %i.hj, %.loopexit ]
  %.not132.not = icmp eq i8 %.lcssa197, 0
  %i.hl = select i1 %.not132.not, i32 6, i32 7    ; 2 uses
  %i.hm = add nuw nsw i32 %.0112181.lcssa, %i.hl
  %.not133183 = icmp samesign ugt i32 %i.hm, %i.ev
  br i1 %.not133183, label %._crit_edge187, label %iter.check

iter.check:                                       ; preds = %bb.am
  %i.hn = zext nneg i32 %i.hl to i64              ; 2 uses
  %i.ho = zext i32 %.0112181.lcssa to i64         ; 6 uses
  %i.hp = add nuw nsw i64 %i.hn, %i.ho            ; 6 uses
  %i.hq = add nuw nsw i64 %wide.trip.count, 1
  %i.hr = sub nsw i64 %i.hq, %i.hp                ; 7 uses
  %min.iters.check = icmp ult i64 %i.hr, 4
  br i1 %min.iters.check, label %.lr.ph186.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check247 = icmp ult i64 %i.hr, 32
  br i1 %min.iters.check247, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hs = and i64 %i.hr, 28
  %n.vec = and i64 %i.hr, -32                     ; 5 uses
  %i.ht = add nsw i64 %n.vec, %i.ho
  %i.hu = add nsw i64 %i.hp, %n.vec
  %i.hv = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %i.hp
  %invariant.gep = getelementptr i8, ptr %.0.i155166, i64 %i.ho
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %index ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load = load <16 x i8>, ptr %i.hw, align 1, !tbaa !733
  %wide.load248 = load <16 x i8>, ptr %i.hx, align 1, !tbaa !733
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !733
  store <16 x i8> %wide.load248, ptr %i.hy, align 1, !tbaa !733
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hz = icmp eq i64 %index.next, %n.vec
  br i1 %i.hz, label %middle.block, label %vector.body, !llvm.loop !4437

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hr, %n.vec
  br i1 %cmp.n, label %._crit_edge187, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hs, 0
  br i1 %min.epilog.iters.check, label %.lr.ph186.preheader, label %vec.epilog.ph, !prof !4443

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec250 = and i64 %i.hr, -4                   ; 4 uses
  %i.ia = add nsw i64 %n.vec250, %i.ho
  %i.ib = add nsw i64 %i.hp, %n.vec250
  %i.ic = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %i.hp
  %invariant.gep265 = getelementptr i8, ptr %.0.i155166, i64 %i.ho
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index251 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next253, %vec.epilog.vector.body ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 %index251
  %wide.load252 = load <4 x i8>, ptr %i.id, align 1, !tbaa !733
  %gep266 = getelementptr i8, ptr %invariant.gep265, i64 %index251
  store <4 x i8> %wide.load252, ptr %gep266, align 1, !tbaa !733
  %index.next253 = add nuw i64 %index251, 4       ; 2 uses
  %i.ie = icmp eq i64 %index.next253, %n.vec250
  br i1 %i.ie, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4438

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n254 = icmp eq i64 %i.hr, %n.vec250
  br i1 %cmp.n254, label %._crit_edge187, label %.lr.ph186.preheader

.lr.ph186.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv209.ph = phi i64 [ %i.ho, %iter.check ], [ %i.ht, %vec.epilog.iter.check ], [ %i.ia, %vec.epilog.middle.block ]
  %indvars.iv207.ph = phi i64 [ %i.hp, %iter.check ], [ %i.hu, %vec.epilog.iter.check ], [ %i.ib, %vec.epilog.middle.block ]
  br label %.lr.ph186

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %.lr.ph186
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %.lr.ph186 ], [ %indvars.iv209.ph, %.lr.ph186.preheader ] ; 2 uses
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %.lr.ph186 ], [ %indvars.iv207.ph, %.lr.ph186.preheader ] ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv207
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !733
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv209
  store i8 %i.ig, ptr %i.ih, align 1, !tbaa !733
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.ii = add nuw nsw i64 %indvars.iv.next210, %i.hn
  %.not133 = icmp samesign ugt i64 %i.ii, %wide.trip.count
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  br i1 %.not133, label %._crit_edge187, label %.lr.ph186, !llvm.loop !4439

._crit_edge187:                                   ; preds = %.lr.ph186, %middle.block, %vec.epilog.middle.block, %bb.am
  %i.ij = load i8, ptr %.lcssa198, align 1, !tbaa !733
  %i.ik = icmp eq i8 %i.ij, 0
  %i.il = icmp ne i32 %.0112181.lcssa, 0
  %or.cond = and i1 %i.il, %i.ik
  br i1 %or.cond, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge187
  %i.im = getelementptr i8, ptr %.lcssa198, i64 -1
  store i8 0, ptr %i.im, align 1, !tbaa !733
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge187
  %i.in = load ptr, ptr %i.dz, align 8, !tbaa !1149 ; 2 uses
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.in, i64 %indvars.iv214
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 14 ; 2 uses
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !1364
  %i.ir = or i16 %i.iq, 2
  store i16 %i.ir, ptr %i.ip, align 2, !tbaa !1364
  %i.is = load i32, ptr %i.ea, align 8, !tbaa !1083
  %i.it = or i32 %i.is, 2
  store i32 %i.it, ptr %i.ea, align 8, !tbaa !1083
  %.pre218 = load i16, ptr %i.dw, align 2, !tbaa !1150
  br label %bb.ap

.critedge:                                        ; preds = %sqlite3_strnicmp.exit.thread169, %sqlite3ColumnType.exit, %sqlite3_strnicmp.exit.thread169.peel, %sqlite3Strlen30.exit
  %i.iu = zext nneg i16 %.0113189 to i32
  %i.iv = load i32, ptr %i.ea, align 8, !tbaa !1083
  %i.iw = or i32 %i.iv, %i.iu
  store i32 %i.iw, ptr %i.ea, align 8, !tbaa !1083
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge, %bb.ao
  %i.ix = phi i16 [ %.pre218, %bb.ao ], [ %i.eb, %.critedge ] ; 2 uses
  %i.iy = phi ptr [ %i.in, %bb.ao ], [ %i.ec, %.critedge ]
  %.1 = phi i16 [ 1024, %bb.ao ], [ %.0113189, %.critedge ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.iz = sext i16 %i.ix to i64
  %i.ja = icmp slt i64 %indvars.iv.next215, %i.iz
  br i1 %i.ja, label %bb.ah, label %sqlite3DbFree.exit161, !llvm.loop !4440

sqlite3DbFree.exit161:                            ; preds = %bb.ap, %bb.ag, %bb.ad, %bb.af, %sqlite3DbFree.exit153
  %.0117 = phi i32 [ %i.bm, %sqlite3DbFree.exit153 ], [ 1, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.ap ]
  call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef nonnull %.0.i.i)
  br label %sqlite3DbStrDup.exit.thread

sqlite3DbStrDup.exit.thread:                      ; preds = %sqlite3DbMallocRaw.exit.i, %._crit_edge, %sqlite3DbFree.exit161, %sqlite3DbFree.exit, %bb.c
  %.0115 = phi i32 [ 6, %bb.c ], [ %.0117, %sqlite3DbFree.exit161 ], [ 7, %sqlite3DbFree.exit ], [ 7, %._crit_edge ], [ 7, %sqlite3DbMallocRaw.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret i32 %.0115
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @sqlite3VdbeAddOp2(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -1, 511) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !703  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1164
  %.not.i = icmp sgt i32 %i.d, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0), !inline_history !1880
  br label %sqlite3VdbeAddOp3.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !703
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !702
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i ; 6 uses
  %i.k = trunc i32 %1 to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !929
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !930
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !926
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !927
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.p, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.o, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @sqlite3VdbeAddOp3(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !703  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1164
  %.not = icmp sgt i32 %i.d, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !703
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !702
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = trunc i32 %1 to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !929
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !930
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !926
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !927
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %4, ptr %i.o, align 4, !tbaa !928
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @growOp3(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
end_hunk_2
begin_hunk_3_@valueFromExpr:bb.a
  %i.br = icmp ne ptr %i.bq, null
  %or.cond5 = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond5, label %bb.ag, label %sqlite3VdbeChangeEncoding.exit

bb.ag:                                            ; preds = %.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 20 ; 4 uses
  %i.bt = load i16, ptr %i.bs, align 4, !tbaa !686 ; 2 uses
  %i.bu = and i16 %i.bt, 45
  %i.bv = icmp eq i16 %i.bu, 0
  br i1 %i.bv, label %bb.ah, label %sqlite3VdbeMemNumerify.exit

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.bw = tail call fastcc i32 @sqlite3MemRealValueRC(ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bq), !inline_history !227
  %i.bx = and i32 %i.bw, 2
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !762
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !1093
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 22
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !787
  %i.cf = call fastcc i32 @sqlite3Atoi64(ptr noundef %i.ca, ptr noundef nonnull %i.a, i32 noundef %i.cc, i8 noundef zeroext %i.ce), !inline_history !227
  %i.cg = icmp slt i32 %i.cf, 2
  br i1 %i.cg, label %.sqlite3RealSameAsInt.exit.thread_crit_edge.i, label %bb.aj

.sqlite3RealSameAsInt.exit.thread_crit_edge.i:    ; preds = %bb.ai
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !565
  br label %sqlite3RealSameAsInt.exit.thread.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ch = load double, ptr %i.bq, align 8, !tbaa !733 ; 5 uses
  %i.ci = fcmp olt double %i.ch, f0xC3DFFFFFFFFFFFFF
  %i.cj = fcmp ogt double %i.ch, f0x43DFFFFFFFFFFFFF
  %i.ck = fptosi double %i.ch to i64
  %spec.select.i.i = select i1 %i.cj, i64 9223372036854775807, i64 %i.ck ; 2 uses
  %.0.i.i = select i1 %i.ci, i64 -9223372036854775808, i64 %spec.select.i.i ; 3 uses
  %i.cl = fcmp oeq double %i.ch, 0.000000e+00
  br i1 %i.cl, label %sqlite3RealSameAsInt.exit.thread.i, label %sqlite3RealSameAsInt.exit.i

sqlite3RealSameAsInt.exit.i:                      ; preds = %bb.aj
  %i.cm = sitofp i64 %.0.i.i to double
  %i.cn = bitcast double %i.ch to i64
  %i.co = bitcast double %i.cm to i64
  %.not.i.i = icmp ne i64 %i.cn, %i.co
  %i.cp = add i64 %.0.i.i, -2251799813685248
  %i.cq = icmp ult i64 %i.cp, -4503599627370496
  %.not16.i = or i1 %i.cq, %.not.i.i
  br i1 %.not16.i, label %bb.ak, label %sqlite3RealSameAsInt.exit.thread.i

sqlite3RealSameAsInt.exit.thread.i:               ; preds = %sqlite3RealSameAsInt.exit.i, %bb.aj, %.sqlite3RealSameAsInt.exit.thread_crit_edge.i
  %i.cr = phi i64 [ %.pre.i, %.sqlite3RealSameAsInt.exit.thread_crit_edge.i ], [ %.0.i.i, %bb.aj ], [ %spec.select.i.i, %sqlite3RealSameAsInt.exit.i ]
  store i64 %i.cr, ptr %i.bq, align 8, !tbaa !733
  br label %bb.ak

bb.ak:                                            ; preds = %sqlite3RealSameAsInt.exit.thread.i, %sqlite3RealSameAsInt.exit.i
  %.sink17.i = phi i16 [ 4, %sqlite3RealSameAsInt.exit.thread.i ], [ 8, %sqlite3RealSameAsInt.exit.i ]
  %i.cs = load i16, ptr %i.bs, align 4, !tbaa !686
  %i.ct = and i16 %i.cs, -3520
  %i.cu = or disjoint i16 %i.ct, %.sink17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3VdbeMemNumerify.exit

sqlite3VdbeMemNumerify.exit:                      ; preds = %bb.ag, %bb.ak
  %i.cv = phi i16 [ %i.cu, %bb.ak ], [ %i.bt, %bb.ag ] ; 3 uses
  %i.cw = and i16 %i.cv, -1043
  store i16 %i.cw, ptr %i.bs, align 4, !tbaa !686
  %i.cx = and i16 %i.cv, 8
  %.not119 = icmp eq i16 %i.cx, 0
  br i1 %.not119, label %bb.am, label %bb.al

bb.al:                                            ; preds = %sqlite3VdbeMemNumerify.exit
  %i.cy = load double, ptr %i.bq, align 8, !tbaa !733
  %i.cz = fneg double %i.cy
  store double %i.cz, ptr %i.bq, align 8, !tbaa !733
  br label %bb.ap

bb.am:                                            ; preds = %sqlite3VdbeMemNumerify.exit
  %i.da = load i64, ptr %i.bq, align 8, !tbaa !733 ; 2 uses
  %i.db = icmp eq i64 %i.da, -9223372036854775808
  br i1 %i.db, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store double f0x43E0000000000000, ptr %i.bq, align 8, !tbaa !733
  %i.dc = and i16 %i.cv, -3520
  %i.dd = or disjoint i16 %i.dc, 8
  store i16 %i.dd, ptr %i.bs, align 4, !tbaa !686
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.de = sub nsw i64 0, %i.da
  store i64 %i.de, ptr %i.bq, align 8, !tbaa !733
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao, %bb.al
  tail call fastcc void @applyAffinity(ptr noundef nonnull %i.bq, i8 noundef signext %3, i8 noundef zeroext %2), !inline_history !4535
  br label %sqlite3VdbeChangeEncoding.exit

bb.aq:                                            ; preds = %bb.k
  %.not.i.i.i.i129 = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i129, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.df = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 56), !inline_history !4536
  br label %sqlite3DbMallocRaw.exit.i.i.i130

bb.as:                                            ; preds = %bb.aq
  %i.dg = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !4536
  br label %sqlite3DbMallocRaw.exit.i.i.i130

sqlite3DbMallocRaw.exit.i.i.i130:                 ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i131 = phi ptr [ %i.df, %bb.ar ], [ %i.dg, %bb.as ] ; 5 uses
  %.not.i.i.i132 = icmp eq ptr %.0.i.i.i.i131, null
  br i1 %.not.i.i.i132, label %valueNew.exit.thread, label %bb.at

bb.at:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i.i130
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.0.i.i.i.i131, i8 0, i64 56, i1 false)
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i131, i64 20
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i131, i64 24
  store ptr %0, ptr %i.di, align 8, !tbaa !683
  store i16 1, ptr %i.dh, align 4, !tbaa !686
  br label %sqlite3VdbeChangeEncoding.exit

bb.au:                                            ; preds = %bb.k
  %.not.i.i.i.i135 = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i135, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dj = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 56), !inline_history !4536
  br label %sqlite3DbMallocRaw.exit.i.i.i136

bb.aw:                                            ; preds = %bb.au
  %i.dk = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !4536
  br label %sqlite3DbMallocRaw.exit.i.i.i136

sqlite3DbMallocRaw.exit.i.i.i136:                 ; preds = %bb.aw, %bb.av
  %.0.i.i.i.i137 = phi ptr [ %i.dj, %bb.av ], [ %i.dk, %bb.aw ] ; 6 uses
  %.not.i.i.i138 = icmp eq ptr %.0.i.i.i.i137, null
  br i1 %.not.i.i.i138, label %valueNew.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i.i136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.0.i.i.i.i137, i8 0, i64 56, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i137, i64 20
  store i16 1, ptr %i.dl, align 4, !tbaa !686
  %i.dm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i137, i64 24
  store ptr %0, ptr %i.dm, align 8, !tbaa !683
  %i.dn = getelementptr inbounds nuw i8, ptr %.2103, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !733 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2 ; 23 uses
  %i.dq = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.dp) #59
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = and i32 %i.dr, 1073741823               ; 3 uses
  %i.dt = add nsw i32 %i.ds, -1
  %i.du = sdiv i32 %i.dt, 2                       ; 2 uses
  %i.dv = add nuw nsw i32 %i.du, 1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %i.dw), !inline_history !4543 ; 8 uses
  %i.dy = add nsw i32 %i.ds, -2                   ; 3 uses
  %.not.i141 = icmp eq ptr %i.dx, null
  br i1 %.not.i141, label %.thread8, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ax
  %i.dz = icmp samesign ugt i32 %i.ds, 2
  br i1 %i.dz, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %i.ea = zext nneg i32 %i.dy to i64              ; 3 uses
  %umax34 = tail call i64 @llvm.umax.i64(i64 %i.ea, i64 2)
  %i.eb = add nsw i64 %umax34, -1
  %i.ec = lshr i64 %i.eb, 1
  %i.ed = add nuw nsw i64 %i.ec, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.dy, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ee = add nsw i64 %i.ea, -1                   ; 2 uses
  %i.ef = lshr i64 %i.ee, 1
  %i.eg = getelementptr i8, ptr %i.dx, i64 %i.ef
  %scevgep = getelementptr i8, ptr %i.eg, i64 1
  %i.eh = and i64 %i.ee, -2
  %i.ei = getelementptr i8, ptr %i.do, i64 %i.eh
  %scevgep33 = getelementptr i8, ptr %i.ei, i64 4
  %bound0 = icmp ult ptr %i.dx, %scevgep33
  %bound1 = icmp ult ptr %i.dp, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i32 %i.dy, 31
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ej = and i64 %i.ed, 12
  %n.vec = and i64 %i.ed, 9223372036854775792     ; 5 uses
  %i.ek = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.el = shl nuw i64 %index, 1                   ; 16 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 6
  %i.et = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 10
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 14
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 18
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 20
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 22
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 26
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 28
  %i.fp = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.el ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 30
  %i.fr = load i8, ptr %i.em, align 1, !tbaa !733, !alias.scope !4544
  %i.fs = load i8, ptr %i.eo, align 1, !tbaa !733, !alias.scope !4544
  %i.ft = load i8, ptr %i.eq, align 1, !tbaa !733, !alias.scope !4544
  %i.fu = load i8, ptr %i.es, align 1, !tbaa !733, !alias.scope !4544
  %i.fv = load i8, ptr %i.eu, align 1, !tbaa !733, !alias.scope !4544
  %i.fw = load i8, ptr %i.ew, align 1, !tbaa !733, !alias.scope !4544
  %i.fx = load i8, ptr %i.ey, align 1, !tbaa !733, !alias.scope !4544
  %i.fy = load i8, ptr %i.fa, align 1, !tbaa !733, !alias.scope !4544
  %i.fz = load i8, ptr %i.fc, align 1, !tbaa !733, !alias.scope !4544
  %i.ga = load i8, ptr %i.fe, align 1, !tbaa !733, !alias.scope !4544
  %i.gb = load i8, ptr %i.fg, align 1, !tbaa !733, !alias.scope !4544
  %i.gc = load i8, ptr %i.fi, align 1, !tbaa !733, !alias.scope !4544
  %i.gd = load i8, ptr %i.fk, align 1, !tbaa !733, !alias.scope !4544
  %i.ge = load i8, ptr %i.fm, align 1, !tbaa !733, !alias.scope !4544
  %i.gf = load i8, ptr %i.fo, align 1, !tbaa !733, !alias.scope !4544
  %i.gg = load i8, ptr %i.fq, align 1, !tbaa !733, !alias.scope !4544
  %i.gh = insertelement <16 x i8> poison, i8 %i.fr, i64 0
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 1
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 2
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 3
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 4
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 5
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 6
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 7
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 8
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 9
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 10
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 11
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 12
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 13
  %i.gv = insertelement <16 x i8> %i.gu, i8 %i.gf, i64 14
  %i.gw = insertelement <16 x i8> %i.gv, i8 %i.gg, i64 15 ; 2 uses
  %i.gx = and <16 x i8> %i.gw, splat (i8 64)
  %i.gy = icmp eq <16 x i8> %i.gx, zeroinitializer
  %i.gz = select <16 x i1> %i.gy, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.ha = add <16 x i8> %i.gz, %i.gw
  %i.hb = shl <16 x i8> %i.ha, splat (i8 4)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.en, i64 3
  %i.he = getelementptr inbounds nuw i8, ptr %i.ep, i64 5
  %i.hf = getelementptr inbounds nuw i8, ptr %i.er, i64 7
  %i.hg = getelementptr inbounds nuw i8, ptr %i.et, i64 9
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ev, i64 11
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ex, i64 13
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ez, i64 15
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fb, i64 17
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fd, i64 19
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ff, i64 21
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fh, i64 23
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fj, i64 25
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fl, i64 27
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fn, i64 29
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fp, i64 31
  %i.hs = load i8, ptr %i.hc, align 1, !tbaa !733, !alias.scope !4544
  %i.ht = load i8, ptr %i.hd, align 1, !tbaa !733, !alias.scope !4544
  %i.hu = load i8, ptr %i.he, align 1, !tbaa !733, !alias.scope !4544
  %i.hv = load i8, ptr %i.hf, align 1, !tbaa !733, !alias.scope !4544
  %i.hw = load i8, ptr %i.hg, align 1, !tbaa !733, !alias.scope !4544
  %i.hx = load i8, ptr %i.hh, align 1, !tbaa !733, !alias.scope !4544
  %i.hy = load i8, ptr %i.hi, align 1, !tbaa !733, !alias.scope !4544
  %i.hz = load i8, ptr %i.hj, align 1, !tbaa !733, !alias.scope !4544
  %i.ia = load i8, ptr %i.hk, align 1, !tbaa !733, !alias.scope !4544
  %i.ib = load i8, ptr %i.hl, align 1, !tbaa !733, !alias.scope !4544
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !733, !alias.scope !4544
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !733, !alias.scope !4544
  %i.ie = load i8, ptr %i.ho, align 1, !tbaa !733, !alias.scope !4544
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !733, !alias.scope !4544
  %i.ig = load i8, ptr %i.hq, align 1, !tbaa !733, !alias.scope !4544
  %i.ih = load i8, ptr %i.hr, align 1, !tbaa !733, !alias.scope !4544
  %i.ii = insertelement <16 x i8> poison, i8 %i.hs, i64 0
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 1
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 2
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 3
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 4
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 5
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 6
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 7
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 8
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 9
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 10
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 11
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 12
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 13
  %i.iw = insertelement <16 x i8> %i.iv, i8 %i.ig, i64 14
  %i.ix = insertelement <16 x i8> %i.iw, i8 %i.ih, i64 15 ; 2 uses
  %i.iy = and <16 x i8> %i.ix, splat (i8 64)
  %i.iz = icmp eq <16 x i8> %i.iy, zeroinitializer
  %i.ja = select <16 x i1> %i.iz, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.jb = add <16 x i8> %i.ja, %i.ix
  %i.jc = and <16 x i8> %i.jb, splat (i8 15)
  %i.jd = or disjoint <16 x i8> %i.jc, %i.hb
  %i.je = getelementptr inbounds nuw i8, ptr %i.dx, i64 %index
  store <16 x i8> %i.jd, ptr %i.je, align 1, !tbaa !733, !alias.scope !4545, !noalias !4544
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jf = icmp eq i64 %index.next, %n.vec
  br i1 %i.jf, label %middle.block, label %vector.body, !llvm.loop !4540

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ej, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec36 = and i64 %i.ed, 9223372036854775804   ; 4 uses
  %i.jg = shl nuw i64 %n.vec36, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index37 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %i.jh = shl nuw i64 %index37, 1                 ; 4 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.jh ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 2
  %i.jl = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.jh ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.jh ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 6
  %i.jp = load i8, ptr %i.ji, align 1, !tbaa !733, !alias.scope !4544
  %i.jq = load i8, ptr %i.jk, align 1, !tbaa !733, !alias.scope !4544
  %i.jr = load i8, ptr %i.jm, align 1, !tbaa !733, !alias.scope !4544
  %i.js = load i8, ptr %i.jo, align 1, !tbaa !733, !alias.scope !4544
  %i.jt = insertelement <4 x i8> poison, i8 %i.jp, i64 0
  %i.ju = insertelement <4 x i8> %i.jt, i8 %i.jq, i64 1
  %i.jv = insertelement <4 x i8> %i.ju, i8 %i.jr, i64 2
  %i.jw = insertelement <4 x i8> %i.jv, i8 %i.js, i64 3 ; 2 uses
  %i.jx = and <4 x i8> %i.jw, splat (i8 64)
  %i.jy = icmp eq <4 x i8> %i.jx, zeroinitializer
  %i.jz = select <4 x i1> %i.jy, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.ka = add <4 x i8> %i.jz, %i.jw
  %i.kb = shl <4 x i8> %i.ka, splat (i8 4)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jj, i64 3
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jl, i64 5
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jn, i64 7
  %i.kg = load i8, ptr %i.kc, align 1, !tbaa !733, !alias.scope !4544
  %i.kh = load i8, ptr %i.kd, align 1, !tbaa !733, !alias.scope !4544
  %i.ki = load i8, ptr %i.ke, align 1, !tbaa !733, !alias.scope !4544
  %i.kj = load i8, ptr %i.kf, align 1, !tbaa !733, !alias.scope !4544
  %i.kk = insertelement <4 x i8> poison, i8 %i.kg, i64 0
  %i.kl = insertelement <4 x i8> %i.kk, i8 %i.kh, i64 1
  %i.km = insertelement <4 x i8> %i.kl, i8 %i.ki, i64 2
  %i.kn = insertelement <4 x i8> %i.km, i8 %i.kj, i64 3 ; 2 uses
  %i.ko = and <4 x i8> %i.kn, splat (i8 64)
  %i.kp = icmp eq <4 x i8> %i.ko, zeroinitializer
  %i.kq = select <4 x i1> %i.kp, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.kr = add <4 x i8> %i.kq, %i.kn
  %i.ks = and <4 x i8> %i.kr, splat (i8 15)
  %i.kt = or disjoint <4 x i8> %i.ks, %i.kb
  %i.ku = getelementptr inbounds nuw i8, ptr %i.dx, i64 %index37
  store <4 x i8> %i.kt, ptr %i.ku, align 1, !tbaa !733, !alias.scope !4545, !noalias !4544
  %index.next38 = add nuw i64 %index37, 4         ; 2 uses
  %i.kv = icmp eq i64 %index.next38, %n.vec36
  br i1 %i.kv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4541

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %i.ed, %n.vec36
  br i1 %cmp.n39, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ek, %vec.epilog.iter.check ], [ %i.jg, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv.i ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !733 ; 2 uses
  %i.ky = and i8 %i.kx, 64
  %.not.i.i142 = icmp eq i8 %i.ky, 0
  %i.kz = select i1 %.not.i.i142, i8 0, i8 9
  %i.la = add i8 %i.kz, %i.kx
  %i.lb = shl i8 %i.la, 4
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !733 ; 2 uses
  %i.le = and i8 %i.ld, 64
  %.not.i16.i = icmp eq i8 %i.le, 0
  %i.lf = select i1 %.not.i16.i, i8 0, i8 9
  %i.lg = add i8 %i.lf, %i.ld
  %i.lh = and i8 %i.lg, 15
  %i.li = or disjoint i8 %i.lh, %i.lb
  %i.lj = lshr exact i64 %indvars.iv.i, 1
  %i.lk = getelementptr inbounds nuw i8, ptr %i.dx, i64 %i.lj
  store i8 %i.li, ptr %i.lk, align 1, !tbaa !733
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.ll = icmp samesign ult i64 %indvars.iv.next.i, %i.ea
  br i1 %i.ll, label %.lr.ph.i, label %._crit_edge.loopexit.i.loopexit, !llvm.loop !4542

._crit_edge.loopexit.i.loopexit:                  ; preds = %.lr.ph.i
  %i.lm = lshr exact i64 %indvars.iv.next.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %middle.block, %vec.epilog.middle.block, %._crit_edge.loopexit.i.loopexit, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %n.vec36, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %i.lm, %._crit_edge.loopexit.i.loopexit ]
  %i.ln = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.0.lcssa.i
  store i8 0, ptr %i.ln, align 1, !tbaa !733
  br label %.thread8

.thread8:                                         ; preds = %._crit_edge.i, %bb.ax
  %i.lo = zext nneg i32 %i.du to i64
  %i.lp = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %.0.i.i.i.i137, ptr noundef %i.dx, i64 noundef %i.lo, i8 noundef zeroext 0, ptr noundef nonnull @sqlite3RowSetClear) ; 0 uses
  br label %sqlite3VdbeChangeEncoding.exit

bb.ay:                                            ; preds = %bb.k
  %.not.i.i.i.i143 = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i143, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lq = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 56), !inline_history !4536
  br label %sqlite3DbMallocRaw.exit.i.i.i144

bb.ba:                                            ; preds = %bb.ay
  %i.lr = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !4536
  br label %sqlite3DbMallocRaw.exit.i.i.i144

sqlite3DbMallocRaw.exit.i.i.i144:                 ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i145 = phi ptr [ %i.lq, %bb.az ], [ %i.lr, %bb.ba ] ; 7 uses
  %.not.i.i.i146 = icmp eq ptr %.0.i.i.i.i145, null
  br i1 %.not.i.i.i146, label %sqlite3VdbeChangeEncoding.exit, label %bb.bb

bb.bb:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i.i144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.0.i.i.i.i145, i8 0, i64 56, i1 false)
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i145, i64 20
  %i.lt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i145, i64 24
  store ptr %0, ptr %i.lt, align 8, !tbaa !683
  store i16 4, ptr %i.ls, align 4, !tbaa !686
  %i.lu = getelementptr inbounds nuw i8, ptr %.2103, i64 8
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !733
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !733
  %i.ly = icmp eq i8 %i.lx, 0
  %i.lz = zext i1 %i.ly to i64
  store i64 %i.lz, ptr %.0.i.i.i.i145, align 8, !tbaa !733
  tail call fastcc void @applyAffinity(ptr noundef nonnull %.0.i.i.i.i145, i8 noundef signext %3, i8 noundef zeroext %2), !inline_history !4535
  br label %sqlite3VdbeChangeEncoding.exit

sqlite3VdbeChangeEncoding.exit:                   ; preds = %sqlite3DbMallocRaw.exit.i.i.i144, %.thread8, %bb.at, %bb.af, %bb.ae, %bb.ad, %bb.k, %bb.ap, %.thread, %bb.bb, %bb.ab
  %i.ma = phi ptr [ null, %bb.k ], [ %.0.i.i.i.i, %bb.ab ], [ %i.bq, %bb.ap ], [ %i.bq, %.thread ], [ %.0.i.i.i.i, %bb.ae ], [ %.0.i.i.i.i137, %.thread8 ], [ %.0.i.i.i.i145, %bb.bb ], [ %.0.i.i.i.i131, %bb.at ], [ %.0.i.i.i.i, %bb.ad ], [ %.0.i.i.i.i, %bb.af ], [ null, %sqlite3DbMallocRaw.exit.i.i.i144 ]
  %.090 = phi i32 [ 0, %bb.k ], [ 0, %bb.ab ], [ 0, %bb.ap ], [ 0, %.thread ], [ 0, %bb.ae ], [ 0, %.thread8 ], [ 0, %bb.bb ], [ 0, %bb.at ], [ 0, %bb.ad ], [ %i.bn, %bb.af ], [ 0, %sqlite3DbMallocRaw.exit.i.i.i144 ]
  store ptr %i.ma, ptr %4, align 8, !tbaa !761
  br label %sqlite3ValueFree.exit

valueNew.exit.thread:                             ; preds = %sqlite3DbMallocRaw.exit.i.i.i136, %sqlite3DbMallocRaw.exit.i.i.i130, %sqlite3DbMallocRaw.exit.i.i.i, %sqlite3VdbeMemSetInt64.exit126
  %i.mb = phi ptr [ null, %sqlite3DbMallocRaw.exit.i.i.i130 ], [ null, %sqlite3DbMallocRaw.exit.i.i.i ], [ %.0.i.i.i.i, %sqlite3VdbeMemSetInt64.exit126 ], [ null, %sqlite3DbMallocRaw.exit.i.i.i136 ] ; 6 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !918
  %i.me = icmp eq i8 %i.md, 0
  br i1 %i.me, label %bb.bc, label %sqlite3DbFree.exit

bb.bc:                                            ; preds = %valueNew.exit.thread
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.mg = load i8, ptr %i.mf, align 8, !tbaa !919
  %i.mh = icmp eq i8 %i.mg, 0
  br i1 %i.mh, label %bb.bd, label %sqlite3DbFree.exit

bb.bd:                                            ; preds = %bb.bc
  store i8 1, ptr %i.mc, align 1, !tbaa !918
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.mj = load i32, ptr %i.mi, align 4, !tbaa !920
  %i.mk = icmp sgt i32 %i.mj, 0
  br i1 %i.mk, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 400
  store atomic volatile i32 1, ptr %i.ml monotonic, align 8
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.mm = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !921
  %i.mo = add i32 %i.mn, 1
  store i32 %i.mo, ptr %i.mm, align 8, !tbaa !921
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i16 0, ptr %i.mp, align 4, !tbaa !922
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !768 ; 2 uses
  %.not.i148 = icmp eq ptr %i.mr, null
  br i1 %.not.i148, label %sqlite3DbFree.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.mr, ptr noundef nonnull @.str.125), !inline_history !48
  %i.ms = load ptr, ptr %i.mq, align 8, !tbaa !768 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  store i32 7, ptr %i.mt, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.ms, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3DbFree.exit, label %.lr.ph.i149

.lr.ph.i149:                                      ; preds = %bb.bg, %.lr.ph.i149
  %.020.i = phi ptr [ %.0.i150, %.lr.ph.i149 ], [ %.018.i, %bb.bg ] ; 3 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !780
  %i.mw = add nsw i32 %i.mv, 1
  store i32 %i.mw, ptr %i.mu, align 4, !tbaa !780
  %i.mx = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.mx, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i150 = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i151 = icmp eq ptr %.0.i150, null
  br i1 %.not16.i151, label %sqlite3DbFree.exit, label %.lr.ph.i149, !llvm.loop !36

sqlite3DbFree.exit:                               ; preds = %.lr.ph.i149, %bb.bg, %bb.bf, %bb.bc, %valueNew.exit.thread
  %.not.i153 = icmp eq ptr %i.mb, null
  br i1 %.not.i153, label %sqlite3ValueFree.exit, label %bb.bh

bb.bh:                                            ; preds = %sqlite3DbFree.exit
  %i.my = getelementptr inbounds nuw i8, ptr %i.mb, i64 20
  %i.mz = load i16, ptr %i.my, align 4, !tbaa !686
  %i.na = and i16 %i.mz, -28672
  %.not.i.i154 = icmp eq i16 %i.na, 0
  br i1 %.not.i.i154, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.nc = load i32, ptr %i.nb, align 8, !tbaa !684
  %.not3.i.i = icmp eq i32 %i.nc, 0
  br i1 %.not3.i.i, label %sqlite3VdbeMemRelease.exit.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.mb)
  br label %sqlite3VdbeMemRelease.exit.i

sqlite3VdbeMemRelease.exit.i:                     ; preds = %bb.bj, %bb.bi
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mb, i64 24
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !683
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.ne, ptr noundef nonnull %i.mb)
  br label %sqlite3ValueFree.exit

sqlite3ValueFree.exit:                            ; preds = %sqlite3VdbeMemRelease.exit.i, %sqlite3DbFree.exit, %bb.e, %bb.f, %sqlite3VdbeChangeEncoding.exit
  %.0100 = phi i32 [ %i.n, %bb.f ], [ %i.n, %bb.e ], [ %.090, %sqlite3VdbeChangeEncoding.exit ], [ 7, %sqlite3DbFree.exit ], [ 7, %sqlite3VdbeMemRelease.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #58
  ret i32 %.0100
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext range(i8 65, 70) i8 @sqlite3AffinityType(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !733     ; 2 uses
  %.not63 = icmp eq i8 %i.b, 0
  br i1 %.not63, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit86
  %i.c = phi i8 [ %i.ao, %.loopexit86 ], [ %i.b, %bb.a ]
  %.04167 = phi ptr [ %.2, %.loopexit86 ], [ null, %bb.a ] ; 6 uses
  %.04266 = phi i8 [ %.244, %.loopexit86 ], [ 67, %bb.a ] ; 3 uses
  %.04665 = phi i32 [ %i.an, %.loopexit86 ], [ 0, %bb.a ]
  %.04764 = phi ptr [ %i.am, %.loopexit86 ], [ %0, %bb.a ]
  %i.d = shl i32 %.04665, 8
  %i.e = zext i8 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !733
  %i.h = zext i8 %i.g to i32
  %i.i = or disjoint i32 %i.d, %i.h               ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.04764, i64 1 ; 8 uses
  switch i32 %i.i, label %.preheader84 [
    i32 1667785074, label %.loopexit86
    i32 1668050786, label %.loopexit87
    i32 1952807028, label %.loopexit87
    i32 1651273570, label %bb.c
end_hunk_3
begin_hunk_4_@sqlite3AffinityType:bb.a
.preheader84:                                     ; preds = %.lr.ph, %bb.c, %.lr.ph.jt66
  %.ph = phi ptr [ %i.j, %.lr.ph ], [ %i.j, %bb.c ], [ %i.ad, %.lr.ph.jt66 ] ; 3 uses
  %.ph85 = phi i32 [ %i.i, %.lr.ph ], [ 1651273570, %bb.c ], [ %i.ac, %.lr.ph.jt66 ] ; 5 uses
  %.0426683.ph = phi i8 [ %.04266, %.lr.ph ], [ %.04266, %bb.c ], [ %.244.jt66, %.lr.ph.jt66 ] ; 2 uses
  %.0416780.ph = phi ptr [ %.04167, %.lr.ph ], [ %.04167, %bb.c ], [ %.2.jt66, %.lr.ph.jt66 ] ; 5 uses
  %i.k = icmp eq i32 %.ph85, 1919246700
  %i.l = icmp eq i8 %.0426683.ph, 67
  %i.m = icmp eq i32 %.ph85, 1718382433
  %i.n = or i1 %i.k, %i.m
  %i.o = icmp eq i32 %.ph85, 1685026146
  %i.p = or i1 %i.o, %i.n
  %or.cond56.peel = select i1 %i.p, i1 %i.l, i1 false
  br i1 %or.cond56.peel, label %bb.b, label %.loopexit153

bb.b:                                             ; preds = %.preheader84
  %i.q = load i8, ptr %.ph, align 1, !tbaa !733   ; 2 uses
  %.not.jt69.peel = icmp eq i8 %i.q, 0
  br i1 %.not.jt69.peel, label %.thread, label %.lr.ph.jt69.peel

.lr.ph.jt69.peel:                                 ; preds = %bb.b
  %i.r = shl i32 %.ph85, 8
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !733
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.r, %i.v               ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.ph, i64 1 ; 5 uses
  switch i32 %i.w, label %.loopexit153 [
    i32 1667785074, label %.loopexit86
    i32 1668050786, label %.loopexit87.loopexit
    i32 1952807028, label %.loopexit87.loopexit
    i32 1651273570, label %.loopexit88
  ]

.lr.ph.jt66:                                      ; preds = %bb.d
  %i.y = zext i8 %i.ap to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !733
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.ar, %i.ab            ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 5 uses
  switch i32 %i.ac, label %.preheader84 [
    i32 1667785074, label %.loopexit86
    i32 1668050786, label %.loopexit87
    i32 1952807028, label %.loopexit87
  ]

.loopexit87.loopexit:                             ; preds = %.lr.ph.jt69.peel, %.lr.ph.jt69.peel
  br label %.loopexit87

.loopexit87:                                      ; preds = %.loopexit87.loopexit, %.lr.ph.jt66, %.lr.ph.jt66, %.lr.ph, %.lr.ph
  %i.ae = phi ptr [ %i.j, %.lr.ph ], [ %i.j, %.lr.ph ], [ %i.ad, %.lr.ph.jt66 ], [ %i.ad, %.lr.ph.jt66 ], [ %i.x, %.loopexit87.loopexit ] ; 2 uses
  %i.af = phi i32 [ %i.i, %.lr.ph ], [ %i.i, %.lr.ph ], [ %i.ac, %.lr.ph.jt66 ], [ %i.ac, %.lr.ph.jt66 ], [ %i.w, %.loopexit87.loopexit ]
  %.0416781 = phi ptr [ %.04167, %.lr.ph ], [ %.04167, %.lr.ph ], [ %.2.jt66, %.lr.ph.jt66 ], [ %.2.jt66, %.lr.ph.jt66 ], [ %.0416780.ph, %.loopexit87.loopexit ]
  %.pr = load i8, ptr %i.ae, align 1, !tbaa !733
  %i.ag = shl i32 %i.af, 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  switch i8 %.04266, label %.preheader84 [
    i8 69, label %.loopexit88
    i8 67, label %.loopexit88
  ]

.loopexit88:                                      ; preds = %.lr.ph.jt69.peel, %bb.c, %bb.c
  %i.ah = phi ptr [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.x, %.lr.ph.jt69.peel ] ; 3 uses
  %.0416782 = phi ptr [ %.04167, %bb.c ], [ %.04167, %bb.c ], [ %.0416780.ph, %.lr.ph.jt69.peel ]
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733 ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 40
  %spec.select = select i1 %i.aj, ptr %i.ah, ptr %.0416782
  br label %bb.d

.loopexit153:                                     ; preds = %.lr.ph.jt69.peel, %.preheader84
  %.lcssa141 = phi ptr [ %.ph, %.preheader84 ], [ %i.x, %.lr.ph.jt69.peel ]
  %.lcssa = phi i32 [ %.ph85, %.preheader84 ], [ %i.w, %.lr.ph.jt69.peel ] ; 2 uses
  %.0426683.lcssa = phi i8 [ %.0426683.ph, %.preheader84 ], [ 69, %.lr.ph.jt69.peel ]
  %i.ak = and i32 %.lcssa, 16777215
  %i.al = icmp eq i32 %i.ak, 6909556
  br i1 %i.al, label %.thread, label %.loopexit86

.loopexit86:                                      ; preds = %.lr.ph.jt69.peel, %.lr.ph.jt66, %.loopexit153, %.lr.ph
  %i.am = phi ptr [ %i.j, %.lr.ph ], [ %i.ad, %.lr.ph.jt66 ], [ %.lcssa141, %.loopexit153 ], [ %i.x, %.lr.ph.jt69.peel ] ; 2 uses
  %i.an = phi i32 [ %i.i, %.lr.ph ], [ %i.ac, %.lr.ph.jt66 ], [ %.lcssa, %.loopexit153 ], [ %i.w, %.lr.ph.jt69.peel ]
  %.244 = phi i8 [ 66, %.lr.ph ], [ 66, %.lr.ph.jt66 ], [ %.0426683.lcssa, %.loopexit153 ], [ 66, %.lr.ph.jt69.peel ] ; 2 uses
  %.2 = phi ptr [ %i.j, %.lr.ph ], [ %i.ad, %.lr.ph.jt66 ], [ %.0416780.ph, %.loopexit153 ], [ %i.x, %.lr.ph.jt69.peel ] ; 2 uses
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !733 ; 2 uses
  %.not = icmp eq i8 %i.ao, 0
  br i1 %.not, label %.thread, label %.lr.ph

bb.d:                                             ; preds = %.loopexit88, %.loopexit87
  %i.ap = phi i8 [ %i.ai, %.loopexit88 ], [ %.pr, %.loopexit87 ] ; 2 uses
  %i.aq = phi ptr [ %i.ah, %.loopexit88 ], [ %i.ae, %.loopexit87 ]
  %i.ar = phi i32 [ 1819238912, %.loopexit88 ], [ %i.ag, %.loopexit87 ]
  %.244.jt66 = phi i8 [ 65, %.loopexit88 ], [ 66, %.loopexit87 ] ; 2 uses
  %.2.jt66 = phi ptr [ %spec.select, %.loopexit88 ], [ %.0416781, %.loopexit87 ] ; 4 uses
  %.not.jt66 = icmp eq i8 %i.ap, 0
  br i1 %.not.jt66, label %.thread, label %.lr.ph.jt66

.thread:                                          ; preds = %.loopexit86, %.loopexit153, %bb.d, %bb.b, %bb.a
  %.041.lcssa = phi ptr [ null, %bb.a ], [ %.0416780.ph, %bb.b ], [ %.2.jt66, %bb.d ], [ %.0416780.ph, %.loopexit153 ], [ %.2, %.loopexit86 ] ; 3 uses
  %.345 = phi i8 [ 67, %bb.a ], [ 69, %bb.b ], [ %.244.jt66, %bb.d ], [ 68, %.loopexit153 ], [ %.244, %.loopexit86 ] ; 2 uses
  %.not52 = icmp eq ptr %1, null
  br i1 %.not52, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !570
  %i.as = icmp ult i8 %.345, 67
  br i1 %i.as, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not53 = icmp eq ptr %.041.lcssa, null
  br i1 %.not53, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.at = load i8, ptr %.041.lcssa, align 1, !tbaa !733 ; 2 uses
  %.not5472 = icmp eq i8 %i.at, 0
  br i1 %.not5472, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader, %bb.h
  %i.au = phi i8 [ %i.bc, %bb.h ], [ %i.at, %.preheader ]
  %.473 = phi ptr [ %i.bb, %bb.h ], [ %.041.lcssa, %.preheader ] ; 2 uses
  %i.av = add i8 %i.au, -58
  %.not55 = icmp ult i8 %i.av, -10
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph74
  %i.aw = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull %.473, ptr noundef %i.a) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !570
  %i.ax = sdiv i32 %.pre, 4
  %i.ay = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 254)
  %i.az = trunc i32 %i.ay to i8
  %i.ba = add i8 %i.az, 1
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph74
  %i.bb = getelementptr inbounds nuw i8, ptr %.473, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !733 ; 2 uses
  %.not54 = icmp eq i8 %i.bc, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph74, !llvm.loop !4546

.loopexit:                                        ; preds = %bb.h, %bb.f, %.preheader, %bb.g, %bb.e
  %spec.store.select = phi i8 [ 1, %bb.e ], [ 1, %.preheader ], [ 5, %bb.f ], [ %i.ba, %bb.g ], [ 1, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %spec.store.select, ptr %i.bd, align 2, !tbaa !2003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.thread
  ret i8 %.345
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3HexToBlob(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -1, 1073741823) %2) unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = add nuw nsw i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %i.c) ; 8 uses
  %i.e = add nsw i32 %2, -1
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %2, 1
  br i1 %i.f, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.g = zext nneg i32 %i.e to i64                ; 3 uses
  %umax20 = tail call i64 @llvm.umax.i64(i64 %i.g, i64 2)
  %i.h = add nsw i64 %umax20, -1
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw nsw i64 %i.i, 1                  ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 2)
  %i.k = add nsw i64 %umax, -1                    ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr i8, ptr %i.d, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.m, i64 1
  %i.n = and i64 %i.k, -2
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep19 = getelementptr i8, ptr %i.o, i64 2
  %bound0 = icmp ult ptr %i.d, %scevgep19
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i32 %2, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.p = and i64 %i.j, 12
  %n.vec = and i64 %i.j, 9223372036854775792      ; 5 uses
  %i.q = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = shl nuw i64 %index, 1                    ; 16 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 18
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 22
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 26
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 30
  %i.ax = load i8, ptr %i.s, align 1, !tbaa !733, !alias.scope !4553
  %i.ay = load i8, ptr %i.u, align 1, !tbaa !733, !alias.scope !4553
  %i.az = load i8, ptr %i.w, align 1, !tbaa !733, !alias.scope !4553
  %i.ba = load i8, ptr %i.y, align 1, !tbaa !733, !alias.scope !4553
  %i.bb = load i8, ptr %i.aa, align 1, !tbaa !733, !alias.scope !4553
  %i.bc = load i8, ptr %i.ac, align 1, !tbaa !733, !alias.scope !4553
  %i.bd = load i8, ptr %i.ae, align 1, !tbaa !733, !alias.scope !4553
  %i.be = load i8, ptr %i.ag, align 1, !tbaa !733, !alias.scope !4553
  %i.bf = load i8, ptr %i.ai, align 1, !tbaa !733, !alias.scope !4553
  %i.bg = load i8, ptr %i.ak, align 1, !tbaa !733, !alias.scope !4553
  %i.bh = load i8, ptr %i.am, align 1, !tbaa !733, !alias.scope !4553
  %i.bi = load i8, ptr %i.ao, align 1, !tbaa !733, !alias.scope !4553
  %i.bj = load i8, ptr %i.aq, align 1, !tbaa !733, !alias.scope !4553
  %i.bk = load i8, ptr %i.as, align 1, !tbaa !733, !alias.scope !4553
  %i.bl = load i8, ptr %i.au, align 1, !tbaa !733, !alias.scope !4553
  %i.bm = load i8, ptr %i.aw, align 1, !tbaa !733, !alias.scope !4553
  %i.bn = insertelement <16 x i8> poison, i8 %i.ax, i64 0
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 1
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 2
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 3
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 4
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 5
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 6
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 7
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 8
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 9
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 10
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 11
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 12
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 13
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 14
  %i.cc = insertelement <16 x i8> %i.cb, i8 %i.bm, i64 15 ; 2 uses
  %i.cd = and <16 x i8> %i.cc, splat (i8 64)
  %i.ce = icmp eq <16 x i8> %i.cd, zeroinitializer
  %i.cf = select <16 x i1> %i.ce, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.cg = add <16 x i8> %i.cf, %i.cc
  %i.ch = shl <16 x i8> %i.cg, splat (i8 4)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.cl = getelementptr inbounds nuw i8, ptr %i.x, i64 7
  %i.cm = getelementptr inbounds nuw i8, ptr %i.z, i64 9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ab, i64 11
  %i.co = getelementptr inbounds nuw i8, ptr %i.ad, i64 13
  %i.cp = getelementptr inbounds nuw i8, ptr %i.af, i64 15
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ah, i64 17
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aj, i64 19
  %i.cs = getelementptr inbounds nuw i8, ptr %i.al, i64 21
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 23
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ap, i64 25
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ar, i64 27
  %i.cw = getelementptr inbounds nuw i8, ptr %i.at, i64 29
  %i.cx = getelementptr inbounds nuw i8, ptr %i.av, i64 31
  %i.cy = load i8, ptr %i.ci, align 1, !tbaa !733, !alias.scope !4553
  %i.cz = load i8, ptr %i.cj, align 1, !tbaa !733, !alias.scope !4553
  %i.da = load i8, ptr %i.ck, align 1, !tbaa !733, !alias.scope !4553
  %i.db = load i8, ptr %i.cl, align 1, !tbaa !733, !alias.scope !4553
  %i.dc = load i8, ptr %i.cm, align 1, !tbaa !733, !alias.scope !4553
  %i.dd = load i8, ptr %i.cn, align 1, !tbaa !733, !alias.scope !4553
  %i.de = load i8, ptr %i.co, align 1, !tbaa !733, !alias.scope !4553
  %i.df = load i8, ptr %i.cp, align 1, !tbaa !733, !alias.scope !4553
  %i.dg = load i8, ptr %i.cq, align 1, !tbaa !733, !alias.scope !4553
  %i.dh = load i8, ptr %i.cr, align 1, !tbaa !733, !alias.scope !4553
  %i.di = load i8, ptr %i.cs, align 1, !tbaa !733, !alias.scope !4553
  %i.dj = load i8, ptr %i.ct, align 1, !tbaa !733, !alias.scope !4553
  %i.dk = load i8, ptr %i.cu, align 1, !tbaa !733, !alias.scope !4553
  %i.dl = load i8, ptr %i.cv, align 1, !tbaa !733, !alias.scope !4553
  %i.dm = load i8, ptr %i.cw, align 1, !tbaa !733, !alias.scope !4553
  %i.dn = load i8, ptr %i.cx, align 1, !tbaa !733, !alias.scope !4553
  %i.do = insertelement <16 x i8> poison, i8 %i.cy, i64 0
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 1
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 2
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 3
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 4
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 5
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 6
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 7
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 8
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 9
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 10
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 11
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 12
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 13
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 14
  %i.ed = insertelement <16 x i8> %i.ec, i8 %i.dn, i64 15 ; 2 uses
  %i.ee = and <16 x i8> %i.ed, splat (i8 64)
  %i.ef = icmp eq <16 x i8> %i.ee, zeroinitializer
  %i.eg = select <16 x i1> %i.ef, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.eh = add <16 x i8> %i.eg, %i.ed
  %i.ei = and <16 x i8> %i.eh, splat (i8 15)
  %i.ej = or disjoint <16 x i8> %i.ei, %i.ch
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 %index
  store <16 x i8> %i.ej, ptr %i.ek, align 1, !tbaa !733, !alias.scope !4554, !noalias !4553
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %middle.block, label %vector.body, !llvm.loop !4550

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.p, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec22 = and i64 %i.j, 9223372036854775804    ; 4 uses
  %i.em = shl nuw i64 %n.vec22, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index23 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.en = shl nuw i64 %index23, 1                 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %i.en ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 %i.en ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 %i.en ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 %i.en ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 6
  %i.ev = load i8, ptr %i.eo, align 1, !tbaa !733, !alias.scope !4553
  %i.ew = load i8, ptr %i.eq, align 1, !tbaa !733, !alias.scope !4553
  %i.ex = load i8, ptr %i.es, align 1, !tbaa !733, !alias.scope !4553
  %i.ey = load i8, ptr %i.eu, align 1, !tbaa !733, !alias.scope !4553
  %i.ez = insertelement <4 x i8> poison, i8 %i.ev, i64 0
  %i.fa = insertelement <4 x i8> %i.ez, i8 %i.ew, i64 1
  %i.fb = insertelement <4 x i8> %i.fa, i8 %i.ex, i64 2
  %i.fc = insertelement <4 x i8> %i.fb, i8 %i.ey, i64 3 ; 2 uses
  %i.fd = and <4 x i8> %i.fc, splat (i8 64)
  %i.fe = icmp eq <4 x i8> %i.fd, zeroinitializer
  %i.ff = select <4 x i1> %i.fe, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.fg = add <4 x i8> %i.ff, %i.fc
  %i.fh = shl <4 x i8> %i.fg, splat (i8 4)
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ep, i64 3
  %i.fk = getelementptr inbounds nuw i8, ptr %i.er, i64 5
  %i.fl = getelementptr inbounds nuw i8, ptr %i.et, i64 7
  %i.fm = load i8, ptr %i.fi, align 1, !tbaa !733, !alias.scope !4553
  %i.fn = load i8, ptr %i.fj, align 1, !tbaa !733, !alias.scope !4553
  %i.fo = load i8, ptr %i.fk, align 1, !tbaa !733, !alias.scope !4553
  %i.fp = load i8, ptr %i.fl, align 1, !tbaa !733, !alias.scope !4553
  %i.fq = insertelement <4 x i8> poison, i8 %i.fm, i64 0
  %i.fr = insertelement <4 x i8> %i.fq, i8 %i.fn, i64 1
  %i.fs = insertelement <4 x i8> %i.fr, i8 %i.fo, i64 2
  %i.ft = insertelement <4 x i8> %i.fs, i8 %i.fp, i64 3 ; 2 uses
  %i.fu = and <4 x i8> %i.ft, splat (i8 64)
  %i.fv = icmp eq <4 x i8> %i.fu, zeroinitializer
  %i.fw = select <4 x i1> %i.fv, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.fx = add <4 x i8> %i.fw, %i.ft
  %i.fy = and <4 x i8> %i.fx, splat (i8 15)
  %i.fz = or disjoint <4 x i8> %i.fy, %i.fh
  %i.ga = getelementptr inbounds nuw i8, ptr %i.d, i64 %index23
  store <4 x i8> %i.fz, ptr %i.ga, align 1, !tbaa !733, !alias.scope !4554, !noalias !4553
  %index.next24 = add nuw i64 %index23, 4         ; 2 uses
  %i.gb = icmp eq i64 %index.next24, %n.vec22
  br i1 %i.gb, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4551

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %i.j, %n.vec22
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.q, %vec.epilog.iter.check ], [ %i.em, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !733 ; 2 uses
  %i.ge = and i8 %i.gd, 64
  %.not.i = icmp eq i8 %i.ge, 0
  %i.gf = select i1 %.not.i, i8 0, i8 9
  %i.gg = add i8 %i.gf, %i.gd
  %i.gh = shl i8 %i.gg, 4
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gc, i64 1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !733 ; 2 uses
  %i.gk = and i8 %i.gj, 64
  %.not.i16 = icmp eq i8 %i.gk, 0
  %i.gl = select i1 %.not.i16, i8 0, i8 9
  %i.gm = add i8 %i.gl, %i.gj
  %i.gn = and i8 %i.gm, 15
  %i.go = or disjoint i8 %i.gn, %i.gh
  %i.gp = lshr exact i64 %indvars.iv, 1
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.gp
  store i8 %i.go, ptr %i.gq, align 1, !tbaa !733
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.gr = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.gr, label %.lr.ph, label %._crit_edge.loopexit.loopexit, !llvm.loop !4552

._crit_edge.loopexit.loopexit:                    ; preds = %.lr.ph
  %i.gs = lshr exact i64 %indvars.iv.next, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %middle.block, %vec.epilog.middle.block, %._crit_edge.loopexit.loopexit, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %n.vec22, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %i.gs, %._crit_edge.loopexit.loopexit ]
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.lcssa
  store i8 0, ptr %i.gt, align 1, !tbaa !733
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret ptr %i.d
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i64 @keywordCode(ptr nofree noundef readonly captures(none) %0, i64 noundef returned %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #19 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !733     ; 2 uses
  %i.b = zext i8 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !733
  %i.e = zext i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = getelementptr i8, ptr %0, i64 %1
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !733
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !733
  %i.m = zext i8 %i.l to i64
  %i.n = mul nuw nsw i64 %i.m, 3
  %i.o = xor i64 %i.f, %i.n
  %i.p = xor i64 %i.o, %1
  %i.q = srem i64 %i.p, 127
  %i.r = getelementptr inbounds i8, ptr @aKWHash, i64 %i.q
  %.025.in34 = load i8, ptr %i.r, align 1, !tbaa !733 ; 2 uses
  %.not36 = icmp eq i8 %.025.in34, 0
  br i1 %.not36, label %.loopexit, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.a
  %.02535 = zext i8 %.025.in34 to i64             ; 2 uses
  %i.s = and i8 %i.a, -33                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.u = icmp sgt i64 %1, 2
  br i1 %i.u, label %.lr.ph38.split.us, label %.lr.ph38.split

.lr.ph38.split.us:                                ; preds = %.lr.ph38, %.critedge.us
  %.02537.us = phi i64 [ %.025.us, %.critedge.us ], [ %.02535, %.lr.ph38 ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr @aKWLen, i64 %.02537.us
  %i.w = load i8, ptr %i.v, align 1, !tbaa !733
  %i.x = zext i8 %i.w to i64
  %.not27.us = icmp eq i64 %1, %i.x
  br i1 %.not27.us, label %bb.b, label %.critedge.us

bb.b:                                             ; preds = %.lr.ph38.split.us
  %i.y = getelementptr inbounds nuw [2 x i8], ptr @aKWOffset, i64 %.02537.us
  %i.z = load i16, ptr %i.y, align 2, !tbaa !783
  %i.aa = zext i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @zKWText, i64 %i.aa ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !733
  %.not28.us = icmp eq i8 %i.s, %i.ac
  br i1 %.not28.us, label %bb.c, label %.critedge.us

bb.c:                                             ; preds = %bb.b
  %i.ad = load i8, ptr %i.t, align 1, !tbaa !733
  %i.ae = and i8 %i.ad, -33
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !733
  %.not29.us = icmp eq i8 %i.ae, %i.ag
  br i1 %.not29.us, label %.preheader.us, label %.critedge.us

bb.d:                                             ; preds = %.preheader.us
  %i.ah = add nuw nsw i64 %.032.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %1
  br i1 %exitcond.not, label %.critedge30, label %.preheader.us, !llvm.loop !115

.preheader.us:                                    ; preds = %bb.c, %bb.d
  %.032.us = phi i64 [ %i.ah, %bb.d ], [ 2, %bb.c ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.032.us
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !733
  %i.ak = and i8 %i.aj, -33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.032.us
  %i.am = load i8, ptr %i.al, align 1, !tbaa !733
  %i.an = icmp eq i8 %i.ak, %i.am
  br i1 %i.an, label %bb.d, label %.critedge.us

.critedge.us:                                     ; preds = %.preheader.us, %bb.c, %bb.b, %.lr.ph38.split.us
  %i.ao = getelementptr inbounds nuw i8, ptr @aKWNext, i64 %.02537.us
  %.025.in.us = load i8, ptr %i.ao, align 1, !tbaa !733 ; 2 uses
  %.025.us = zext i8 %.025.in.us to i64
  %.not.us = icmp eq i8 %.025.in.us, 0
  br i1 %.not.us, label %.loopexit, label %.lr.ph38.split.us, !llvm.loop !116

.lr.ph38.split:                                   ; preds = %.lr.ph38, %.critedge
  %.02537 = phi i64 [ %.025, %.critedge ], [ %.02535, %.lr.ph38 ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr @aKWLen, i64 %.02537
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !733
  %i.ar = zext i8 %i.aq to i64
  %.not27 = icmp eq i64 %1, %i.ar
  br i1 %.not27, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph38.split
  %i.as = getelementptr inbounds nuw [2 x i8], ptr @aKWOffset, i64 %.02537
  %i.at = load i16, ptr %i.as, align 2, !tbaa !783
  %i.au = zext i16 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr @zKWText, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !733
  %.not28 = icmp eq i8 %i.s, %i.aw
  br i1 %.not28, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ax = load i8, ptr %i.t, align 1, !tbaa !733
  %i.ay = and i8 %i.ax, -33
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !733
  %.not29 = icmp eq i8 %i.ay, %i.ba
  br i1 %.not29, label %.critedge30, label %.critedge

.critedge30:                                      ; preds = %bb.f, %bb.d
  %.025.lcssa31 = phi i64 [ %.02537.us, %bb.d ], [ %.02537, %bb.f ]
  %i.bb = getelementptr inbounds nuw i8, ptr @aKWCode, i64 %.025.lcssa31
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !733
  %i.bd = zext i8 %i.bc to i32
  store i32 %i.bd, ptr %2, align 4, !tbaa !570
  br label %.loopexit

.critedge:                                        ; preds = %bb.f, %bb.e, %.lr.ph38.split
  %i.be = getelementptr inbounds nuw i8, ptr @aKWNext, i64 %.02537
  %.025.in = load i8, ptr %i.be, align 1, !tbaa !733 ; 2 uses
  %.025 = zext i8 %.025.in to i64
  %.not = icmp eq i8 %.025.in, 0
  br i1 %.not, label %.loopexit, label %.lr.ph38.split, !llvm.loop !116

.loopexit:                                        ; preds = %.critedge, %.critedge.us, %bb.a, %.critedge30
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i16 @yy_reduce(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2147482366) %1, ptr %2, i32 %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.Walker, align 8             ; 8 uses
  %6 = alloca %struct.SelectDest, align 8         ; 5 uses
  %7 = alloca %struct.Token, align 8              ; 4 uses
  %8 = alloca %struct.Token, align 8              ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %struct.Token, align 8              ; 5 uses
  %10 = alloca %struct.Token, align 8             ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !1259   ; 687 uses
  switch i32 %1, label %sqlite3SelectDelete.exit [
    i32 0, label %bb.b
    i32 1, label %bb.d
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.i
    i32 7, label %bb.i
    i32 328, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.j
    i32 10, label %bb.k
    i32 11, label %bb.l
    i32 12, label %bb.m
    i32 13, label %bb.n
    i32 14, label %bb.o
    i32 15, label %bb.p
    i32 18, label %bb.p
    i32 47, label %bb.p
    i32 62, label %bb.p
    i32 72, label %bb.p
    i32 81, label %bb.p
    i32 100, label %bb.p
    i32 246, label %bb.p
end_hunk_4
begin_hunk_5_@sqlite3Update:bb.a
  br i1 %i.yw, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 %i.yr, ptr %i.yt, align 8, !tbaa !703
  br label %sqlite3VdbeJumpHereOrPopInst.exit

bb.ew:                                            ; preds = %bb.eu
  %i.yx = load ptr, ptr %.0.i870381, align 8, !tbaa !679
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yx, i64 103
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !918
  %.not.i.i.i897 = icmp eq i8 %i.yz, 0
  br i1 %.not.i.i.i897, label %bb.ex, label %sqlite3VdbeChangeP2.exit.i

bb.ex:                                            ; preds = %bb.ew
  %i.za = getelementptr inbounds nuw i8, ptr %.0.i870381, i64 136
  %i.zb = load ptr, ptr %i.za, align 8, !tbaa !702
  %i.zc = sext i32 %i.yr to i64
  %i.zd = getelementptr inbounds [32 x i8], ptr %i.zb, i64 %i.zc
  br label %sqlite3VdbeChangeP2.exit.i

sqlite3VdbeChangeP2.exit.i:                       ; preds = %bb.ex, %bb.ew
  %.0.i.i.i = phi ptr [ %i.zd, %bb.ex ], [ @sqlite3VdbeGetOp.dummy, %bb.ew ]
  %i.ze = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.yu, ptr %i.ze, align 8, !tbaa !927
  br label %sqlite3VdbeJumpHereOrPopInst.exit

sqlite3VdbeJumpHereOrPopInst.exit:                ; preds = %sqlite3VdbeChangeP2.exit.i, %bb.ev, %.thread99, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #58
  br label %bb.ey

bb.ey:                                            ; preds = %sqlite3VdbeJumpHereOrPopInst.exit, %bb.el
  %.not822 = icmp eq i32 %.2737, 0
  br i1 %.not822, label %bb.fe, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %.not823 = icmp eq i32 %.sroa.0.1, %.465
  %.not824 = icmp eq i32 %.sroa.5.1, %.465
  %or.cond855 = select i1 %.not823, i1 true, i1 %.not824
  br i1 %or.cond855, label %bb.fb, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.zf = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i870381, i32 noundef 28, i32 noundef %.465, i32 noundef %i.ul, i32 noundef %.1716, i32 noundef %.0730) ; 0 uses
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fa, %bb.ez
  %.not825 = icmp eq i32 %.2737, 1
  br i1 %.not825, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.zg = load i32, ptr %i.uj, align 4, !tbaa !1881
  %i.zh = add nsw i32 %i.zg, -1                   ; 2 uses
  store i32 %i.zh, ptr %i.uj, align 4, !tbaa !1881
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb
  %.0733 = phi i32 [ %i.zh, %bb.fc ], [ %i.ul, %bb.fb ]
  %.not826 = icmp eq ptr %i.dg, null
  %i.zi = select i1 %.not826, i32 %.0723, i32 %.1716
  %i.zj = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 51, i32 noundef %i.zi, i32 noundef %i.ul) ; 0 uses
  br label %bb.fl

bb.fe:                                            ; preds = %bb.ey
  %i.zk = icmp ne ptr %i.dg, null                 ; 2 uses
  %or.cond25 = or i1 %i.zk, %i.yd
  br i1 %or.cond25, label %bb.ff, label %bb.fk

bb.ff:                                            ; preds = %bb.fe
  %i.zl = load i32, ptr %i.uj, align 4, !tbaa !1881
  %i.zm = add nsw i32 %i.zl, -1                   ; 8 uses
  store i32 %i.zm, ptr %i.uj, align 4, !tbaa !1881
  %i.zn = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 36, i32 noundef %.073168, i32 noundef %i.ul) ; 0 uses
  %i.zo = getelementptr i8, ptr %.0.i870381, i64 144
  %.val = load i32, ptr %i.zo, align 8, !tbaa !703 ; 4 uses
  br i1 %i.yd, label %bb.fg, label %bb.fj

bb.fg:                                            ; preds = %bb.ff
  br i1 %i.ce, label %bb.fl, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.zk, label %.preheader, label %bb.fi

.preheader:                                       ; preds = %bb.fh
  %i.zp = sext i16 %.072776 to i32                ; 2 uses
  %i.zq = icmp sgt i16 %.072776, 0
  br i1 %i.zq, label %.lr.ph221, label %._crit_edge222

.lr.ph221:                                        ; preds = %.preheader, %.lr.ph221
  %.5220 = phi i32 [ %i.zt, %.lr.ph221 ], [ 0, %.preheader ] ; 3 uses
  %i.zr = add nsw i32 %.5220, %.072872
  %i.zs = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870381, i32 noundef 96, i32 noundef %.073168, i32 noundef %.5220, i32 noundef %i.zr) ; 0 uses
  %i.zt = add nuw nsw i32 %.5220, 1               ; 2 uses
  %exitcond289.not = icmp eq i32 %i.zt, %i.zp
  br i1 %exitcond289.not, label %._crit_edge222, label %.lr.ph221, !llvm.loop !4721

._crit_edge222:                                   ; preds = %.lr.ph221, %.preheader
  %i.zu = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i870381, i32 noundef 28, i32 noundef %.465, i32 noundef %i.zm, i32 noundef %.072872, i32 noundef %i.zp) ; 0 uses
  br label %bb.fl

bb.fi:                                            ; preds = %bb.fh
  %i.zv = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 137, i32 noundef %.073168, i32 noundef %.0723) ; 0 uses
  %i.zw = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870381, i32 noundef 31, i32 noundef %.465, i32 noundef %i.zm, i32 noundef %.0723) ; 0 uses
  br label %bb.fl

bb.fj:                                            ; preds = %bb.ff
  %i.zx = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 136, i32 noundef %.073168, i32 noundef %.1716) ; 0 uses
  %i.zy = call fastcc i32 @sqlite3VdbeAddOp4Int(ptr noundef nonnull %.0.i870381, i32 noundef 28, i32 noundef %.465, i32 noundef %i.zm, i32 noundef %.1716, i32 noundef 0) ; 0 uses
  br label %bb.fl

bb.fk:                                            ; preds = %bb.fe
  %i.zz = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 36, i32 noundef %.073168, i32 noundef %i.ul) ; 0 uses
  %i.aaa = load i32, ptr %i.uj, align 4, !tbaa !1881
  %i.aab = add nsw i32 %i.aaa, -1                 ; 3 uses
  store i32 %i.aab, ptr %i.uj, align 4, !tbaa !1881
  %i.aac = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 137, i32 noundef %.073168, i32 noundef %.0723)
  %i.aad = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870381, i32 noundef 31, i32 noundef %.465, i32 noundef %i.aab, i32 noundef %.0723) ; 0 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fd, %bb.fj, %._crit_edge222, %bb.fi, %bb.fg, %bb.fk, %bb.ei
  %.0762 = phi i32 [ 0, %bb.fd ], [ %.val, %bb.fg ], [ %.val, %._crit_edge222 ], [ %.val, %bb.fi ], [ %.val, %bb.fj ], [ %i.aac, %bb.fk ], [ 0, %bb.ei ]
  %.1734 = phi i32 [ %.0733, %bb.fd ], [ %i.zm, %bb.fg ], [ %i.zm, %._crit_edge222 ], [ %i.zm, %bb.fi ], [ %i.zm, %bb.fj ], [ %i.aab, %bb.fk ], [ %i.ul, %bb.ei ] ; 9 uses
  %.not827 = icmp eq i8 %.0744.lcssa397, 0        ; 2 uses
  br i1 %.not827, label %bb.fq, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  br i1 %i.uh, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef %.0741.lcssa399, i32 noundef %.1722)
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.aae = call fastcc i32 @sqlite3VdbeAddOp3(ptr noundef nonnull %.0.i870381, i32 noundef 96, i32 noundef %.073168, i32 noundef %.0738.lcssa401, i32 noundef %.1722) ; 0 uses
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.aaf = call fastcc i32 @sqlite3VdbeAddOp1(ptr noundef nonnull %.0.i870381, i32 noundef 13, i32 noundef %.1722) ; 0 uses
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fl
  %i.aag = icmp ne i8 %.0747.lcssa395, 0
  %or.cond27 = select i1 %i.aag, i1 true, i1 %i.tg
  %or.cond29 = or i1 %i.tf, %or.cond27
  br i1 %or.cond29, label %bb.fr, label %bb.gd

bb.fr:                                            ; preds = %bb.fq
  br i1 %i.tg, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.aah = call fastcc i32 @sqlite3FkOldmask(ptr noundef nonnull %0, ptr noundef %i.t)
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fr, %bb.fs
  %i.aai = phi i32 [ %i.aah, %bb.fs ], [ 0, %bb.fr ]
  %i.aaj = call fastcc i32 @sqlite3TriggerColmask(ptr noundef nonnull %0, ptr noundef %.0.i865, ptr noundef nonnull %2, i32 noundef 0, i32 noundef 3, ptr noundef %i.t, i32 noundef %4)
  %i.aak = or i32 %i.aaj, %i.aai                  ; 2 uses
  %i.aal = load i16, ptr %i.dn, align 2, !tbaa !1150
  %i.aam = icmp sgt i16 %i.aal, 0
  br i1 %i.aam, label %.lr.ph227, label %._crit_edge228

.lr.ph227:                                        ; preds = %bb.ft
  %i.aan = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.aao = getelementptr inbounds nuw i8, ptr %i.t, i64 56
  %i.aap = icmp eq i32 %i.aak, -1
  br label %bb.fu

bb.fu:                                            ; preds = %.lr.ph227, %bb.gb
  %indvars.iv290 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next291, %bb.gb ] ; 12 uses
  %i.aaq = load ptr, ptr %i.aan, align 8, !tbaa !1149 ; 22 uses
  %i.aar = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %indvars.iv290
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 14
  %i.aat = load i16, ptr %i.aas, align 2, !tbaa !1364 ; 3 uses
  %i.aau = trunc nuw nsw i64 %indvars.iv290 to i32 ; 2 uses
  %i.aav = trunc i64 %indvars.iv290 to i16        ; 4 uses
  %i.aaw = load i32, ptr %i.cs, align 8, !tbaa !1083
  %i.aax = and i32 %i.aaw, 32
  %i.aay = icmp eq i32 %i.aax, 0
  %i.aaz = icmp slt i16 %i.aav, 0
  %or.cond.i = or i1 %i.aaz, %i.aay
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i898

.preheader.i898:                                  ; preds = %bb.fu
  %.not23.i = icmp eq i16 %i.aav, 0
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i898
  %min.iters.check = icmp samesign ult i64 %indvars.iv290, 5
  br i1 %min.iters.check, label %.lr.ph.i899.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check493 = icmp samesign ult i64 %indvars.iv290, 17
  br i1 %min.iters.check493, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aba = and i64 %indvars.iv290, 15             ; 2 uses
  %i.abb = icmp eq i64 %i.aba, 0
  %i.abc = select i1 %i.abb, i64 16, i64 %i.aba   ; 2 uses
  %n.vec = sub nsw i64 %indvars.iv290, %i.abc     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.adv, %vector.body ]
  %vec.phi494 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.adw, %vector.body ]
  %i.abd = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abe = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abf = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abg = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abh = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abi = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abj = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abk = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abl = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abm = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abn = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abo = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abp = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abq = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abr = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abs = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abd, i64 14
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abe, i64 30
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abf, i64 46
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abg, i64 62
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abh, i64 78
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abi, i64 94
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abj, i64 110
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abk, i64 126
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abl, i64 142
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abm, i64 158
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abn, i64 174
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abo, i64 190
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abp, i64 206
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abq, i64 222
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abr, i64 238
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abs, i64 254
  %i.acj = load i16, ptr %i.abt, align 2, !tbaa !1364
  %i.ack = load i16, ptr %i.abu, align 2, !tbaa !1364
  %i.acl = load i16, ptr %i.abv, align 2, !tbaa !1364
  %i.acm = load i16, ptr %i.abw, align 2, !tbaa !1364
  %i.acn = load i16, ptr %i.abx, align 2, !tbaa !1364
  %i.aco = load i16, ptr %i.aby, align 2, !tbaa !1364
  %i.acp = load i16, ptr %i.abz, align 2, !tbaa !1364
  %i.acq = load i16, ptr %i.aca, align 2, !tbaa !1364
  %i.acr = insertelement <8 x i16> poison, i16 %i.acj, i64 0
  %i.acs = insertelement <8 x i16> %i.acr, i16 %i.ack, i64 1
  %i.act = insertelement <8 x i16> %i.acs, i16 %i.acl, i64 2
  %i.acu = insertelement <8 x i16> %i.act, i16 %i.acm, i64 3
  %i.acv = insertelement <8 x i16> %i.acu, i16 %i.acn, i64 4
  %i.acw = insertelement <8 x i16> %i.acv, i16 %i.aco, i64 5
  %i.acx = insertelement <8 x i16> %i.acw, i16 %i.acp, i64 6
  %i.acy = insertelement <8 x i16> %i.acx, i16 %i.acq, i64 7
  %i.acz = load i16, ptr %i.acb, align 2, !tbaa !1364
  %i.ada = load i16, ptr %i.acc, align 2, !tbaa !1364
  %i.adb = load i16, ptr %i.acd, align 2, !tbaa !1364
  %i.adc = load i16, ptr %i.ace, align 2, !tbaa !1364
  %i.add = load i16, ptr %i.acf, align 2, !tbaa !1364
  %i.ade = load i16, ptr %i.acg, align 2, !tbaa !1364
  %i.adf = load i16, ptr %i.ach, align 2, !tbaa !1364
  %i.adg = load i16, ptr %i.aci, align 2, !tbaa !1364
  %i.adh = insertelement <8 x i16> poison, i16 %i.acz, i64 0
  %i.adi = insertelement <8 x i16> %i.adh, i16 %i.ada, i64 1
  %i.adj = insertelement <8 x i16> %i.adi, i16 %i.adb, i64 2
  %i.adk = insertelement <8 x i16> %i.adj, i16 %i.adc, i64 3
  %i.adl = insertelement <8 x i16> %i.adk, i16 %i.add, i64 4
  %i.adm = insertelement <8 x i16> %i.adl, i16 %i.ade, i64 5
  %i.adn = insertelement <8 x i16> %i.adm, i16 %i.adf, i64 6
  %i.ado = insertelement <8 x i16> %i.adn, i16 %i.adg, i64 7
  %i.adp = lshr <8 x i16> %i.acy, splat (i16 5)
  %i.adq = lshr <8 x i16> %i.ado, splat (i16 5)
  %i.adr = and <8 x i16> %i.adp, splat (i16 1)
  %i.ads = and <8 x i16> %i.adq, splat (i16 1)
  %i.adt = xor <8 x i16> %i.adr, splat (i16 1)
  %i.adu = xor <8 x i16> %i.ads, splat (i16 1)
  %i.adv = add <8 x i16> %i.adt, %vec.phi         ; 2 uses
  %i.adw = add <8 x i16> %i.adu, %vec.phi494      ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.adx = icmp eq i64 %index.next, %n.vec
  br i1 %i.adx, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !4722

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.adw, %i.adv
  %i.ady = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.abc, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i899.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.ady, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.adz = and i64 %indvars.iv290, 3              ; 2 uses
  %i.aea = icmp eq i64 %i.adz, 0
  %i.aeb = select i1 %i.aea, i64 4, i64 %i.adz
  %n.vec495 = sub nsw i64 %indvars.iv290, %i.aeb  ; 2 uses
  %i.aec = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index496 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next498, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi497 = phi <4 x i16> [ %i.aec, %vec.epilog.ph ], [ %i.aew, %vec.epilog.vector.body ]
  %i.aed = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %index496
  %i.aee = getelementptr [16 x i8], ptr %i.aaq, i64 %index496
  %i.aef = getelementptr [16 x i8], ptr %i.aaq, i64 %index496
  %i.aeg = getelementptr [16 x i8], ptr %i.aaq, i64 %index496
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aed, i64 14
  %i.aei = getelementptr i8, ptr %i.aee, i64 30
  %i.aej = getelementptr i8, ptr %i.aef, i64 46
  %i.aek = getelementptr i8, ptr %i.aeg, i64 62
  %i.ael = load i16, ptr %i.aeh, align 2, !tbaa !1364
  %i.aem = load i16, ptr %i.aei, align 2, !tbaa !1364
  %i.aen = load i16, ptr %i.aej, align 2, !tbaa !1364
  %i.aeo = load i16, ptr %i.aek, align 2, !tbaa !1364
  %i.aep = insertelement <4 x i16> poison, i16 %i.ael, i64 0
  %i.aeq = insertelement <4 x i16> %i.aep, i16 %i.aem, i64 1
  %i.aer = insertelement <4 x i16> %i.aeq, i16 %i.aen, i64 2
  %i.aes = insertelement <4 x i16> %i.aer, i16 %i.aeo, i64 3
  %i.aet = lshr <4 x i16> %i.aes, splat (i16 5)
  %i.aeu = and <4 x i16> %i.aet, splat (i16 1)
  %i.aev = xor <4 x i16> %i.aeu, splat (i16 1)
  %i.aew = add <4 x i16> %i.aev, %vec.phi497      ; 2 uses
  %index.next498 = add nuw i64 %index496, 4       ; 2 uses
  %i.aex = icmp eq i64 %index.next498, %n.vec495
  br i1 %i.aex, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4723

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aey = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.aew)
  br label %.lr.ph.i899.preheader

.lr.ph.i899.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i901.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec495, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.ady, %vec.epilog.iter.check ], [ %i.aey, %vec.epilog.middle.block ]
  br label %.lr.ph.i899

.lr.ph.i899:                                      ; preds = %.lr.ph.i899.preheader, %.lr.ph.i899
  %indvars.iv.i901 = phi i64 [ %indvars.iv.next.i903, %.lr.ph.i899 ], [ %indvars.iv.i901.ph, %.lr.ph.i899.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i902, %.lr.ph.i899 ], [ %.021.i.ph, %.lr.ph.i899.preheader ]
  %i.aez = getelementptr inbounds nuw [16 x i8], ptr %i.aaq, i64 %indvars.iv.i901
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aez, i64 14
  %i.afb = load i16, ptr %i.afa, align 2, !tbaa !1364
  %i.afc = lshr i16 %i.afb, 5
  %i.afd = and i16 %i.afc, 1
  %i.afe = xor i16 %i.afd, 1
  %spec.select.i902 = add i16 %i.afe, %.021.i     ; 2 uses
  %indvars.iv.next.i903 = add nuw nsw i64 %indvars.iv.i901, 1 ; 2 uses
  %exitcond.not.i904 = icmp eq i64 %indvars.iv.next.i903, %indvars.iv290
  br i1 %exitcond.not.i904, label %._crit_edge.i, label %.lr.ph.i899, !llvm.loop !4724

._crit_edge.i:                                    ; preds = %.lr.ph.i899, %.preheader.i898
  %.0.lcssa.i905 = phi i16 [ 0, %.preheader.i898 ], [ %spec.select.i902, %.lr.ph.i899 ] ; 2 uses
  %i.aff = and i16 %i.aat, 32
  %.not.i906 = icmp eq i16 %i.aff, 0
  br i1 %.not.i906, label %sqlite3TableColumnToStorage.exit, label %bb.fv

bb.fv:                                            ; preds = %._crit_edge.i
  %i.afg = load i16, ptr %i.aao, align 8, !tbaa !1251
  %i.afh = sub i16 %i.aav, %.0.lcssa.i905
  %i.afi = add i16 %i.afh, %i.afg
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.fu, %._crit_edge.i, %bb.fv
  %.018.i = phi i16 [ %i.aav, %bb.fu ], [ %i.afi, %bb.fv ], [ %.0.lcssa.i905, %._crit_edge.i ]
  %i.afj = sext i16 %.018.i to i32
  %i.afk = add nsw i32 %.1719, %i.afj             ; 2 uses
  br i1 %i.aap, label %bb.fz, label %bb.fw

bb.fw:                                            ; preds = %sqlite3TableColumnToStorage.exit
  %i.afl = icmp samesign ult i64 %indvars.iv290, 32
  br i1 %i.afl, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw
  %i.afm = shl nuw i32 1, %i.aau
  %i.afn = and i32 %i.afm, %i.aak
  %.not841 = icmp eq i32 %i.afn, 0
  %i.afo = and i16 %i.aat, 1
  %.not842 = icmp eq i16 %i.afo, 0
  %or.cond856 = select i1 %.not841, i1 %.not842, i1 false
  br i1 %or.cond856, label %bb.ga, label %bb.fz

bb.fy:                                            ; preds = %bb.fw
  %.old = and i16 %i.aat, 1
  %.not842.old = icmp eq i16 %.old, 0
  br i1 %.not842.old, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx, %sqlite3TableColumnToStorage.exit
  call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef nonnull %.0.i870381, ptr noundef nonnull %i.t, i32 noundef %.465, i32 noundef %i.aau, i32 noundef %i.afk)
  br label %bb.gb

bb.ga:                                            ; preds = %bb.fx, %bb.fy
  %i.afp = call fastcc i32 @sqlite3VdbeAddOp2(ptr noundef nonnull %.0.i870381, i32 noundef 77, i32 noundef 0, i32 noundef %i.afk) ; 0 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.afq = load i16, ptr %i.dn, align 2, !tbaa !1150
  %i.afr = sext i16 %i.afq to i64
  %i.afs = icmp slt i64 %indvars.iv.next291, %i.afr
  br i1 %i.afs, label %bb.fu, label %._crit_edge228, !llvm.loop !4725

._crit_edge228:                                   ; preds = %bb.gb, %bb.ft
  %i.aft = icmp eq ptr %i.dg, null
  %or.cond31 = and i1 %i.aft, %.not827
  br i1 %or.cond31, label %bb.gc, label %bb.gd
end_hunk_5
begin_hunk_6_@sqlite3IndexedExprLookup:bb.a

bb.o:                                             ; preds = %bb.m
  %i.ai = add nsw i32 %.val, 1
  store i32 %i.ai, ptr %i.ab, align 8, !tbaa !703
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !702
  %i.al = sext i32 %.val to i64
  %i.am = getelementptr inbounds [32 x i8], ptr %i.ak, i64 %i.al ; 7 uses
  store i8 20, ptr %i.am, align 8, !tbaa !929
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 2
  store i16 0, ptr %i.an, align 2, !tbaa !930
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store i32 %i.ad, ptr %i.ao, align 4, !tbaa !926
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i32 %i.ae, ptr %i.ap, align 8, !tbaa !927
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 %2, ptr %i.aq, align 4, !tbaa !928
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  store i8 0, ptr %i.as, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.n, %bb.o
  %i.at = load i32, ptr %i.ac, align 4, !tbaa !2229 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.05687, i64 16 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !2230 ; 2 uses
  %i.aw = load i32, ptr %i.ab, align 8, !tbaa !703 ; 3 uses
  %i.ax = load i32, ptr %i.af, align 4, !tbaa !1164
  %.not.i70 = icmp sgt i32 %i.ax, %i.aw
  br i1 %.not.i70, label %bb.q, label %bb.p

bb.p:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.ay = call fastcc i32 @growOp3(ptr noundef nonnull %i.y, i32 noundef 96, i32 noundef %i.at, i32 noundef %i.av, i32 noundef %2), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit72

bb.q:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.az = add nsw i32 %i.aw, 1
  store i32 %i.az, ptr %i.ab, align 8, !tbaa !703
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !702
  %i.bc = sext i32 %i.aw to i64
  %i.bd = getelementptr inbounds [32 x i8], ptr %i.bb, i64 %i.bc ; 7 uses
  store i8 96, ptr %i.bd, align 8, !tbaa !929
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 2
  store i16 0, ptr %i.be, align 2, !tbaa !930
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %i.at, ptr %i.bf, align 4, !tbaa !926
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 %i.av, ptr %i.bg, align 8, !tbaa !927
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  store i32 %2, ptr %i.bh, align 4, !tbaa !928
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store i8 0, ptr %i.bj, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit72

sqlite3VdbeAddOp3.exit72:                         ; preds = %bb.p, %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %.05687, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !2231
  %i.bm = load i32, ptr %i.au, align 8, !tbaa !2230
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.688, ptr noundef %i.bl, i32 noundef %i.bm)
  %i.bn = load i32, ptr %i.ab, align 8, !tbaa !703 ; 3 uses
  %i.bo = load i32, ptr %i.af, align 4, !tbaa !1164
  %.not.i.i = icmp sgt i32 %i.bo, %i.bn
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %sqlite3VdbeAddOp3.exit72
  %i.bp = call fastcc i32 @growOp3(ptr noundef nonnull %i.y, i32 noundef 9, i32 noundef 0, i32 noundef 0, i32 noundef 0), !inline_history !288 ; 0 uses
  br label %sqlite3VdbeGoto.exit

bb.s:                                             ; preds = %sqlite3VdbeAddOp3.exit72
  %i.bq = add nsw i32 %i.bn, 1
  store i32 %i.bq, ptr %i.ab, align 8, !tbaa !703
  %i.br = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !702
  %i.bt = sext i32 %i.bn to i64
  %i.bu = getelementptr inbounds [32 x i8], ptr %i.bs, i64 %i.bt ; 2 uses
  store i8 9, ptr %i.bu, align 8, !tbaa !929
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.bv, i8 0, i64 31, i1 false)
  br label %sqlite3VdbeGoto.exit

sqlite3VdbeGoto.exit:                             ; preds = %bb.r, %bb.s
  %i.bw = load ptr, ptr %i.a, align 8, !tbaa !2165
  store ptr null, ptr %i.a, align 8, !tbaa !2165
  call fastcc void @sqlite3ExprCode(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2)
  store ptr %i.bw, ptr %i.a, align 8, !tbaa !2165
  %i.bx = load i32, ptr %i.ab, align 8, !tbaa !703
  %i.by = load ptr, ptr %i.y, align 8, !tbaa !679
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 103
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !918
  %.not.i.i.i = icmp eq i8 %i.ca, 0
  br i1 %.not.i.i.i, label %bb.t, label %sqlite3VdbeJumpHere.exit

bb.t:                                             ; preds = %sqlite3VdbeGoto.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !702
  %i.cd = sext i32 %.val to i64
  %i.ce = getelementptr [32 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 64
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %sqlite3VdbeGoto.exit, %bb.t
  %.0.i.i.i = phi ptr [ %i.cf, %bb.t ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeGoto.exit ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.bx, ptr %i.cg, align 8, !tbaa !927
  br label %.loopexit

bb.u:                                             ; preds = %bb.l
  %i.ch = getelementptr inbounds nuw i8, ptr %.05687, i64 12
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !2229 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05687, i64 16 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !2230 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 144 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !703 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.y, i64 148
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !1164
  %.not.i73 = icmp sgt i32 %i.co, %i.cm
  br i1 %.not.i73, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cp = call fastcc i32 @growOp3(ptr noundef nonnull %i.y, i32 noundef 96, i32 noundef %i.ci, i32 noundef %i.ck, i32 noundef %2), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit75

bb.w:                                             ; preds = %bb.u
  %i.cq = add nsw i32 %i.cm, 1
  store i32 %i.cq, ptr %i.cl, align 8, !tbaa !703
  %i.cr = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !702
  %i.ct = sext i32 %i.cm to i64
  %i.cu = getelementptr inbounds [32 x i8], ptr %i.cs, i64 %i.ct ; 7 uses
  store i8 96, ptr %i.cu, align 8, !tbaa !929
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  store i16 0, ptr %i.cv, align 2, !tbaa !930
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  store i32 %i.ci, ptr %i.cw, align 4, !tbaa !926
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.ck, ptr %i.cx, align 8, !tbaa !927
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  store i32 %2, ptr %i.cy, align 4, !tbaa !928
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  store i8 0, ptr %i.da, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cz, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit75

sqlite3VdbeAddOp3.exit75:                         ; preds = %bb.v, %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %.05687, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !2231
  %i.dd = load i32, ptr %i.cj, align 8, !tbaa !2230
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.688, ptr noundef %i.dc, i32 noundef %i.dd)
  br label %.loopexit

bb.x:                                             ; preds = %bb.k, %bb.b, %bb.d, %bb.e, %bb.g, %bb.j, %bb.i
  %i.de = getelementptr inbounds nuw i8, ptr %.05687, i64 24
  %.056 = load ptr, ptr %i.de, align 8, !tbaa !2223 ; 2 uses
  %.not = icmp eq ptr %.056, null
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !4857

.loopexit:                                        ; preds = %bb.x, %bb.a, %sqlite3VdbeAddOp3.exit75, %sqlite3VdbeJumpHere.exit
  %.2 = phi i32 [ %2, %sqlite3VdbeAddOp3.exit75 ], [ %2, %sqlite3VdbeJumpHere.exit ], [ -1, %bb.a ], [ -1, %bb.x ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext i16 @sqlite3TableColumnToStorage(ptr nofree noundef readonly captures(none) %0, i16 noundef signext %1) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1083
  %i.c = and i32 %i.b, 32
  %i.d = icmp eq i32 %i.c, 0
  %i.e = sext i16 %1 to i32                       ; 2 uses
  %i.f = icmp slt i16 %1, 0
  %or.cond = or i1 %i.f, %i.d
  br i1 %or.cond, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not23 = icmp eq i16 %1, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1149 ; 22 uses
  br i1 %.not23, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 5 uses
  %min.iters.check = icmp ult i16 %1, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check24 = icmp ult i16 %1, 17
  br i1 %min.iters.check24, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %wide.trip.count, 15             ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  %i.k = select i1 %i.j, i64 16, i64 %i.i         ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count, %i.k     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.cd, %vector.body ]
  %vec.phi25 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 30
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 62
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 78
  %i.ag = getelementptr inbounds nuw i8, ptr %i.q, i64 94
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 110
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 126
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 142
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 158
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 174
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 190
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 206
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 222
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 238
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 254
  %i.ar = load i16, ptr %i.ab, align 2, !tbaa !1364
  %i.as = load i16, ptr %i.ac, align 2, !tbaa !1364
  %i.at = load i16, ptr %i.ad, align 2, !tbaa !1364
  %i.au = load i16, ptr %i.ae, align 2, !tbaa !1364
  %i.av = load i16, ptr %i.af, align 2, !tbaa !1364
  %i.aw = load i16, ptr %i.ag, align 2, !tbaa !1364
  %i.ax = load i16, ptr %i.ah, align 2, !tbaa !1364
  %i.ay = load i16, ptr %i.ai, align 2, !tbaa !1364
  %i.az = insertelement <8 x i16> poison, i16 %i.ar, i64 0
  %i.ba = insertelement <8 x i16> %i.az, i16 %i.as, i64 1
  %i.bb = insertelement <8 x i16> %i.ba, i16 %i.at, i64 2
  %i.bc = insertelement <8 x i16> %i.bb, i16 %i.au, i64 3
  %i.bd = insertelement <8 x i16> %i.bc, i16 %i.av, i64 4
  %i.be = insertelement <8 x i16> %i.bd, i16 %i.aw, i64 5
  %i.bf = insertelement <8 x i16> %i.be, i16 %i.ax, i64 6
  %i.bg = insertelement <8 x i16> %i.bf, i16 %i.ay, i64 7
  %i.bh = load i16, ptr %i.aj, align 2, !tbaa !1364
  %i.bi = load i16, ptr %i.ak, align 2, !tbaa !1364
  %i.bj = load i16, ptr %i.al, align 2, !tbaa !1364
  %i.bk = load i16, ptr %i.am, align 2, !tbaa !1364
  %i.bl = load i16, ptr %i.an, align 2, !tbaa !1364
  %i.bm = load i16, ptr %i.ao, align 2, !tbaa !1364
  %i.bn = load i16, ptr %i.ap, align 2, !tbaa !1364
  %i.bo = load i16, ptr %i.aq, align 2, !tbaa !1364
  %i.bp = insertelement <8 x i16> poison, i16 %i.bh, i64 0
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 1
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 2
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 3
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 4
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 5
  %i.bv = insertelement <8 x i16> %i.bu, i16 %i.bn, i64 6
  %i.bw = insertelement <8 x i16> %i.bv, i16 %i.bo, i64 7
  %i.bx = lshr <8 x i16> %i.bg, splat (i16 5)
  %i.by = lshr <8 x i16> %i.bw, splat (i16 5)
  %i.bz = and <8 x i16> %i.bx, splat (i16 1)
  %i.ca = and <8 x i16> %i.by, splat (i16 1)
  %i.cb = xor <8 x i16> %i.bz, splat (i16 1)
  %i.cc = xor <8 x i16> %i.ca, splat (i16 1)
  %i.cd = add <8 x i16> %i.cb, %vec.phi           ; 2 uses
  %i.ce = add <8 x i16> %i.cc, %vec.phi25         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !4858

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ce, %i.cd
  %i.cg = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.k, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.cg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ch = and i64 %wide.trip.count, 3             ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = select i1 %i.ci, i64 4, i64 %i.ch
  %n.vec26 = sub nsw i64 %wide.trip.count, %i.cj  ; 2 uses
  %i.ck = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index27 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next29, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi28 = phi <4 x i16> [ %i.ck, %vec.epilog.ph ], [ %i.de, %vec.epilog.vector.body ]
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %index27
  %i.cm = getelementptr [16 x i8], ptr %i.h, i64 %index27
  %i.cn = getelementptr [16 x i8], ptr %i.h, i64 %index27
  %i.co = getelementptr [16 x i8], ptr %i.h, i64 %index27
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 14
  %i.cq = getelementptr i8, ptr %i.cm, i64 30
  %i.cr = getelementptr i8, ptr %i.cn, i64 46
  %i.cs = getelementptr i8, ptr %i.co, i64 62
  %i.ct = load i16, ptr %i.cp, align 2, !tbaa !1364
  %i.cu = load i16, ptr %i.cq, align 2, !tbaa !1364
  %i.cv = load i16, ptr %i.cr, align 2, !tbaa !1364
  %i.cw = load i16, ptr %i.cs, align 2, !tbaa !1364
  %i.cx = insertelement <4 x i16> poison, i16 %i.ct, i64 0
  %i.cy = insertelement <4 x i16> %i.cx, i16 %i.cu, i64 1
  %i.cz = insertelement <4 x i16> %i.cy, i16 %i.cv, i64 2
  %i.da = insertelement <4 x i16> %i.cz, i16 %i.cw, i64 3
  %i.db = lshr <4 x i16> %i.da, splat (i16 5)
  %i.dc = and <4 x i16> %i.db, splat (i16 1)
  %i.dd = xor <4 x i16> %i.dc, splat (i16 1)
  %i.de = add <4 x i16> %i.dd, %vec.phi28         ; 2 uses
  %index.next29 = add nuw i64 %index27, 4         ; 2 uses
  %i.df = icmp eq i64 %index.next29, %n.vec26
  br i1 %i.df, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4859

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dg = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.de)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec26, %vec.epilog.middle.block ]
  %.021.ph = phi i16 [ 0, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.dg, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.021 = phi i16 [ %spec.select, %vec.epilog.scalar.ph ], [ %.021.ph, %vec.epilog.scalar.ph.preheader ]
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 14
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1364
  %i.dk = lshr i16 %i.dj, 5
  %i.dl = and i16 %i.dk, 1
  %i.dm = xor i16 %i.dl, 1
  %spec.select = add i16 %i.dm, %.021             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !4860

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %.preheader
  %.0.lcssa = phi i16 [ 0, %.preheader ], [ %spec.select, %vec.epilog.scalar.ph ] ; 2 uses
  %i.dn = zext nneg i32 %i.e to i64
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.dn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 14
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !1364
  %i.dr = and i16 %i.dq, 32
  %.not = icmp eq i16 %i.dr, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dt = load i16, ptr %i.ds, align 8, !tbaa !1251
  %i.du = sub i16 %1, %.0.lcssa
  %i.dv = add i16 %i.du, %i.dt
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a, %bb.b
  %.018 = phi i16 [ %1, %bb.a ], [ %i.dv, %bb.b ], [ %.0.lcssa, %._crit_edge ]
  ret i16 %.018
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprCodeGeneratedColumn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1195 ; 21 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !780
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !2197 ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %sqlite3VdbeAddOp3.exit

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !703  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1164
  %.not.i = icmp sgt i32 %i.l, %i.j
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 20, i32 noundef %i.h, i32 noundef 0, i32 noundef %3), !inline_history !1880
  br label %sqlite3VdbeAddOp3.exit

bb.d:                                             ; preds = %bb.b
  %i.n = add nsw i32 %i.j, 1
  store i32 %i.n, ptr %i.i, align 8, !tbaa !703
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !702
  %i.q = sext i32 %i.j to i64
  %i.r = getelementptr inbounds [32 x i8], ptr %i.p, i64 %i.q ; 7 uses
  store i8 20, ptr %i.r, align 8, !tbaa !929
end_hunk_6
begin_hunk_7_@sqlite3SelectPopWith:bb.a
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.b, %.preheader
  %.0.i = phi ptr [ %i.h, %.preheader ], [ %1, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2116 ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %findRightmost.exit, label %.preheader, !llvm.loop !4881

findRightmost.exit:                               ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1849 ; 2 uses
  %.not7 = icmp eq ptr %i.j, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %findRightmost.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2209
  store ptr %i.l, ptr %i.b, align 8, !tbaa !1191
  br label %bb.d

bb.d:                                             ; preds = %findRightmost.exit, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %3, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.c = load i16, ptr %i.b, align 4, !tbaa !1189
  %i.d = sext i16 %i.c to i32
  %i.e = icmp eq i32 %3, %i.d
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !703  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.i = load i32, ptr %i.h, align 4, !tbaa !1164
  %.not.i.i = icmp sgt i32 %i.i, %i.g
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 137, i32 noundef %2, i32 noundef %4, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.e:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.g, 1
  store i32 %i.k, ptr %i.f, align 8, !tbaa !703
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !702
  %i.n = sext i32 %i.g to i64
  %i.o = getelementptr inbounds [32 x i8], ptr %i.m, i64 %i.n ; 6 uses
  store i8 -119, ptr %i.o, align 8, !tbaa !929
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  store i16 0, ptr %i.p, align 2, !tbaa !930
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %2, ptr %i.q, align 4, !tbaa !926
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 %4, ptr %i.r, align 8, !tbaa !927
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 0, ptr %i.t, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.d, %bb.e
  %i.u = load ptr, ptr %1, align 8, !tbaa !1171
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %0, ptr noundef nonnull @.str.676, ptr noundef %i.u)
  br label %bb.s

bb.f:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.w = load i8, ptr %i.v, align 1, !tbaa !1146
  %i.x = icmp eq i8 %i.w, 1
  br i1 %i.x, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1149 ; 23 uses
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.aa ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 14 ; 4 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !1364 ; 3 uses
  %i.ae = and i16 %i.ad, 32
  %.not = icmp eq i16 %i.ae, 0
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.af, align 8, !tbaa !1194 ; 3 uses
  %i.ag = and i16 %i.ad, 256
  %.not44 = icmp eq i16 %i.ag, 0
  br i1 %.not44, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !1153
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %.val, ptr noundef nonnull @.str.677, ptr noundef %i.ah)
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.val, i64 68 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !2197
  %i.ak = or disjoint i16 %i.ad, 256
  store i16 %i.ak, ptr %i.ac, align 2, !tbaa !1364
  %i.al = add nsw i32 %2, 1
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !2197
  tail call fastcc void @sqlite3ExprCodeGeneratedColumn(ptr noundef %.val, ptr noundef nonnull %1, ptr noundef nonnull %i.ab, i32 noundef %4)
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !2197
  %i.am = load i16, ptr %i.ac, align 2, !tbaa !1364
  %i.an = and i16 %i.am, -257
  store i16 %i.an, ptr %i.ac, align 2, !tbaa !1364
  br label %bb.s

bb.k:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !1083 ; 2 uses
  %i.aq = and i32 %i.ap, 128
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.l
  %.08.i.in = phi ptr [ %i.aw, %.lr.ph.i ], [ %i.as, %bb.l ]
  %.08.i = load ptr, ptr %.08.i.in, align 8, !tbaa !1156, !nonnull !1254, !noundef !1254 ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.au = load i16, ptr %i.at, align 1
  %i.av = and i16 %i.au, 3
  %.not5.i = icmp eq i16 %i.av, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i

sqlite3PrimaryKeyIndex.exit:                      ; preds = %.lr.ph.i
  %sext.i = shl i32 %3, 16
  %i.ax = ashr exact i32 %sext.i, 16
  %i.ay = getelementptr inbounds nuw i8, ptr %.08.i, i64 96
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !1778 ; 2 uses
  %.not.i45 = icmp eq i16 %i.az, 0
  br i1 %.not.i45, label %.critedge, label %.lr.ph.i46

.lr.ph.i46:                                       ; preds = %sqlite3PrimaryKeyIndex.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !1160
  %wide.trip.count.i = zext i16 %i.az to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i46
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i46 ], [ %indvars.iv.next.i, %bb.n ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !783
  %i.be = sext i16 %i.bd to i32
  %i.bf = icmp eq i32 %i.ax, %i.be
  br i1 %i.bf, label %._crit_edge.loopexit.split.loop.exit13.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge, label %bb.m, !llvm.loop !307

._crit_edge.loopexit.split.loop.exit13.i:         ; preds = %bb.m
  %i.bg = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %.critedge

bb.o:                                             ; preds = %bb.k
  %i.bh = trunc i32 %3 to i16                     ; 4 uses
  %i.bi = and i32 %i.ap, 32
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = icmp slt i16 %i.bh, 0
  %or.cond.i = or i1 %i.bk, %i.bj
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %sext = and i32 %3, 32767                       ; 3 uses
  %.not23.i = icmp eq i16 %i.bh, 0
  %.pre = zext nneg i32 %sext to i64              ; 6 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i32 %sext, 5
  br i1 %min.iters.check, label %.lr.ph.i48.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check65 = icmp samesign ult i32 %sext, 17
  br i1 %min.iters.check65, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bl = and i64 %.pre, 15                       ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  %i.bn = select i1 %i.bm, i64 16, i64 %i.bl      ; 2 uses
  %n.vec = sub nsw i64 %.pre, %i.bn               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.eg, %vector.body ]
  %vec.phi66 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.eh, %vector.body ]
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 30
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 46
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 62
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 78
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 94
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 110
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 126
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 142
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 158
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 174
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 190
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 206
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 222
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 238
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 254
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !1364
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !1364
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !1364
  %i.cx = load i16, ptr %i.ch, align 2, !tbaa !1364
  %i.cy = load i16, ptr %i.ci, align 2, !tbaa !1364
  %i.cz = load i16, ptr %i.cj, align 2, !tbaa !1364
  %i.da = load i16, ptr %i.ck, align 2, !tbaa !1364
  %i.db = load i16, ptr %i.cl, align 2, !tbaa !1364
  %i.dc = insertelement <8 x i16> poison, i16 %i.cu, i64 0
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 1
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 2
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 3
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 4
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 5
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 6
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 7
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !1364
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !1364
  %i.dm = load i16, ptr %i.co, align 2, !tbaa !1364
  %i.dn = load i16, ptr %i.cp, align 2, !tbaa !1364
  %i.do = load i16, ptr %i.cq, align 2, !tbaa !1364
  %i.dp = load i16, ptr %i.cr, align 2, !tbaa !1364
  %i.dq = load i16, ptr %i.cs, align 2, !tbaa !1364
  %i.dr = load i16, ptr %i.ct, align 2, !tbaa !1364
  %i.ds = insertelement <8 x i16> poison, i16 %i.dk, i64 0
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 1
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 2
  %i.dv = insertelement <8 x i16> %i.du, i16 %i.dn, i64 3
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 4
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 5
  %i.dy = insertelement <8 x i16> %i.dx, i16 %i.dq, i64 6
  %i.dz = insertelement <8 x i16> %i.dy, i16 %i.dr, i64 7
  %i.ea = lshr <8 x i16> %i.dj, splat (i16 5)
  %i.eb = lshr <8 x i16> %i.dz, splat (i16 5)
  %i.ec = and <8 x i16> %i.ea, splat (i16 1)
  %i.ed = and <8 x i16> %i.eb, splat (i16 1)
  %i.ee = xor <8 x i16> %i.ec, splat (i16 1)
  %i.ef = xor <8 x i16> %i.ed, splat (i16 1)
  %i.eg = add <8 x i16> %i.ee, %vec.phi           ; 2 uses
  %i.eh = add <8 x i16> %i.ef, %vec.phi66         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !4882

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.eh, %i.eg
  %i.ej = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.bn, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i48.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.ej, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ek = and i64 %.pre, 3                        ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  %i.em = select i1 %i.el, i64 4, i64 %i.ek
  %n.vec67 = sub nsw i64 %.pre, %i.em             ; 2 uses
  %i.en = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index68 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next70, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi69 = phi <4 x i16> [ %i.en, %vec.epilog.ph ], [ %i.fh, %vec.epilog.vector.body ]
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %index68
  %i.ep = getelementptr [16 x i8], ptr %i.z, i64 %index68
  %i.eq = getelementptr [16 x i8], ptr %i.z, i64 %index68
  %i.er = getelementptr [16 x i8], ptr %i.z, i64 %index68
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 14
  %i.et = getelementptr i8, ptr %i.ep, i64 30
  %i.eu = getelementptr i8, ptr %i.eq, i64 46
  %i.ev = getelementptr i8, ptr %i.er, i64 62
  %i.ew = load i16, ptr %i.es, align 2, !tbaa !1364
  %i.ex = load i16, ptr %i.et, align 2, !tbaa !1364
  %i.ey = load i16, ptr %i.eu, align 2, !tbaa !1364
  %i.ez = load i16, ptr %i.ev, align 2, !tbaa !1364
  %i.fa = insertelement <4 x i16> poison, i16 %i.ew, i64 0
  %i.fb = insertelement <4 x i16> %i.fa, i16 %i.ex, i64 1
  %i.fc = insertelement <4 x i16> %i.fb, i16 %i.ey, i64 2
  %i.fd = insertelement <4 x i16> %i.fc, i16 %i.ez, i64 3
  %i.fe = lshr <4 x i16> %i.fd, splat (i16 5)
  %i.ff = and <4 x i16> %i.fe, splat (i16 1)
  %i.fg = xor <4 x i16> %i.ff, splat (i16 1)
  %i.fh = add <4 x i16> %i.fg, %vec.phi69         ; 2 uses
  %index.next70 = add nuw i64 %index68, 4         ; 2 uses
  %i.fi = icmp eq i64 %index.next70, %n.vec67
  br i1 %i.fi, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4883

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fj = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.fh)
  br label %.lr.ph.i48.preheader

.lr.ph.i48.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i50.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec67, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.ej, %vec.epilog.iter.check ], [ %i.fj, %vec.epilog.middle.block ]
  br label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %.lr.ph.i48.preheader, %.lr.ph.i48
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i51, %.lr.ph.i48 ], [ %indvars.iv.i50.ph, %.lr.ph.i48.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i48 ], [ %.021.i.ph, %.lr.ph.i48.preheader ]
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.i50
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 14
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !1364
  %i.fn = lshr i16 %i.fm, 5
  %i.fo = and i16 %i.fn, 1
  %i.fp = xor i16 %i.fo, 1
  %spec.select.i = add i16 %i.fp, %.021.i         ; 2 uses
  %indvars.iv.next.i51 = add nuw nsw i64 %indvars.iv.i50, 1 ; 2 uses
  %exitcond.not.i52 = icmp eq i64 %indvars.iv.next.i51, %.pre
  br i1 %exitcond.not.i52, label %._crit_edge.i, label %.lr.ph.i48, !llvm.loop !4884

._crit_edge.i:                                    ; preds = %.lr.ph.i48, %.preheader.i
  %.0.lcssa.i53 = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i48 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %.pre
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 14
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !1364
  %i.ft = and i16 %i.fs, 32
  %.not.i54 = icmp eq i16 %i.ft, 0
  br i1 %.not.i54, label %sqlite3TableColumnToStorage.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fv = load i16, ptr %i.fu, align 8, !tbaa !1251
  %i.fw = sub i16 %i.bh, %.0.lcssa.i53
  %i.fx = add i16 %i.fw, %i.fv
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.o, %._crit_edge.i, %bb.p
  %.018.i = phi i16 [ %i.bh, %bb.o ], [ %i.fx, %bb.p ], [ %.0.lcssa.i53, %._crit_edge.i ]
  %i.fy = sext i16 %.018.i to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.n, %._crit_edge.loopexit.split.loop.exit13.i, %sqlite3PrimaryKeyIndex.exit, %bb.f, %sqlite3TableColumnToStorage.exit
  %.042 = phi i32 [ 178, %bb.f ], [ 96, %sqlite3TableColumnToStorage.exit ], [ 96, %sqlite3PrimaryKeyIndex.exit ], [ 96, %._crit_edge.loopexit.split.loop.exit13.i ], [ 96, %bb.n ] ; 2 uses
  %.041 = phi i32 [ %3, %bb.f ], [ %i.fy, %sqlite3TableColumnToStorage.exit ], [ -1, %sqlite3PrimaryKeyIndex.exit ], [ %i.bg, %._crit_edge.loopexit.split.loop.exit13.i ], [ -1, %bb.n ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !703 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !1164
  %.not.i55 = icmp sgt i32 %i.gc, %i.ga
  br i1 %.not.i55, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.gd = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef %.042, i32 noundef %2, i32 noundef %.041, i32 noundef %4), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.r:                                             ; preds = %.critedge
  %i.ge = add nsw i32 %i.ga, 1
  store i32 %i.ge, ptr %i.fz, align 8, !tbaa !703
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !702
  %i.gh = sext i32 %i.ga to i64
  %i.gi = getelementptr inbounds [32 x i8], ptr %i.gg, i64 %i.gh ; 7 uses
  %i.gj = trunc nuw i32 %.042 to i8
  store i8 %i.gj, ptr %i.gi, align 8, !tbaa !929
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store i16 0, ptr %i.gk, align 2, !tbaa !930
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  store i32 %2, ptr %i.gl, align 4, !tbaa !926
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i32 %.041, ptr %i.gm, align 8, !tbaa !927
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 12
  store i32 %4, ptr %i.gn, align 4, !tbaa !928
  %i.go = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store i8 0, ptr %i.gp, align 1, !tbaa !1166
end_hunk_7
begin_hunk_8_@resolveExprStep:bb.a
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 11
  %i.aam = load i8, ptr %i.aal, align 1, !tbaa !1152
  %i.aan = icmp eq i8 %i.aam, %.07.i.i568.i
  br i1 %i.aan, label %bb.ff, label %sqlite3StrICmp.exit30.i572.i

bb.ff:                                            ; preds = %bb.fe
  %i.aao = load ptr, ptr %i.aak, align 8, !tbaa !1153
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fj, %bb.ff
  %.013.i26.i576.i = phi ptr [ %i.aao, %bb.ff ], [ %i.aaz, %bb.fj ] ; 2 uses
  %.012.i27.i577.i = phi ptr [ %i.gy, %bb.ff ], [ %i.aba, %bb.fj ] ; 2 uses
  %i.aap = load i8, ptr %.013.i26.i576.i, align 1, !tbaa !733 ; 3 uses
  %i.aaq = load i8, ptr %.012.i27.i577.i, align 1, !tbaa !733 ; 2 uses
  %i.aar = icmp eq i8 %i.aap, %i.aaq
  br i1 %i.aar, label %bb.fh, label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  %i.aas = icmp eq i8 %i.aap, 0
  br i1 %i.aas, label %sqlite3ColumnIndex.exit583.i, label %bb.fj

bb.fi:                                            ; preds = %bb.fg
  %i.aat = zext i8 %i.aap to i64
  %i.aau = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aat
  %i.aav = load i8, ptr %i.aau, align 1, !tbaa !733
  %i.aaw = zext i8 %i.aaq to i64
  %i.aax = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aaw
  %i.aay = load i8, ptr %i.aax, align 1, !tbaa !733
  %.not.i28.i578.i = icmp eq i8 %i.aav, %i.aay
  br i1 %.not.i28.i578.i, label %bb.fj, label %sqlite3StrICmp.exit30.i572.i

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.aaz = getelementptr inbounds nuw i8, ptr %.013.i26.i576.i, i64 1
  %i.aba = getelementptr inbounds nuw i8, ptr %.012.i27.i577.i, i64 1
  br label %bb.fg

sqlite3StrICmp.exit30.i572.i:                     ; preds = %bb.fi, %bb.fe
  %indvars.iv.next.i573.i = add nuw nsw i64 %indvars.iv.i571.i, 1 ; 2 uses
  %exitcond.not.i574.i = icmp eq i64 %indvars.iv.next.i573.i, %wide.trip.count.i570.i
  br i1 %exitcond.not.i574.i, label %sqlite3ColumnIndex.exit583.thread747.i, label %bb.fe

sqlite3ColumnIndex.exit583.i:                     ; preds = %bb.fh
  %i.abb = trunc nuw nsw i64 %indvars.iv.i571.i to i32
  br label %sqlite3ColumnIndex.exit583.thread.i

sqlite3ColumnIndex.exit583.thread.i:              ; preds = %bb.fb, %sqlite3ColumnIndex.exit583.i
  %.022.i575746.i = phi i32 [ %i.abb, %sqlite3ColumnIndex.exit583.i ], [ %i.zq, %bb.fb ] ; 2 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %.3353.i, i64 52
  %i.abd = load i16, ptr %i.abc, align 4, !tbaa !1189
  %i.abe = sext i16 %i.abd to i32
  %i.abf = icmp eq i32 %.022.i575746.i, %i.abe
  %spec.store.select.i = select i1 %i.abf, i32 -1, i32 %.022.i575746.i
  br label %bb.ft

sqlite3ColumnIndex.exit583.thread747.i:           ; preds = %sqlite3StrICmp.exit30.i572.i, %bb.fm
  %.013.i.i584.i = phi ptr [ %i.abq, %bb.fm ], [ %i.gy, %sqlite3StrICmp.exit30.i572.i ] ; 2 uses
  %.012.i.i585.i = phi ptr [ %i.abr, %bb.fm ], [ @.str.804, %sqlite3StrICmp.exit30.i572.i ] ; 2 uses
  %i.abg = load i8, ptr %.013.i.i584.i, align 1, !tbaa !733 ; 3 uses
  %i.abh = load i8, ptr %.012.i.i585.i, align 1, !tbaa !733 ; 2 uses
  %i.abi = icmp eq i8 %i.abg, %i.abh
  br i1 %i.abi, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %sqlite3ColumnIndex.exit583.thread747.i
  %i.abj = icmp eq i8 %i.abg, 0
  br i1 %i.abj, label %.loopexit923.i, label %bb.fm

bb.fl:                                            ; preds = %sqlite3ColumnIndex.exit583.thread747.i
  %i.abk = zext i8 %i.abg to i64
  %i.abl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.abk
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !733
  %i.abn = zext i8 %i.abh to i64
  %i.abo = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.abn
  %i.abp = load i8, ptr %i.abo, align 1, !tbaa !733
  %.not.i.i586.i = icmp eq i8 %i.abm, %i.abp
  br i1 %.not.i.i586.i, label %bb.fm, label %sqlite3StrICmp.exit.i587.i

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.abq = getelementptr inbounds nuw i8, ptr %.013.i.i584.i, i64 1
  %i.abr = getelementptr inbounds nuw i8, ptr %.012.i.i585.i, i64 1
  br label %sqlite3ColumnIndex.exit583.thread747.i

sqlite3StrICmp.exit.i587.i:                       ; preds = %bb.fl, %bb.fp
  %.013.i3.i.i = phi ptr [ %i.acc, %bb.fp ], [ %i.gy, %bb.fl ] ; 2 uses
  %.012.i4.i.i = phi ptr [ %i.acd, %bb.fp ], [ @.str.769, %bb.fl ] ; 2 uses
  %i.abs = load i8, ptr %.013.i3.i.i, align 1, !tbaa !733 ; 3 uses
  %i.abt = load i8, ptr %.012.i4.i.i, align 1, !tbaa !733 ; 2 uses
  %i.abu = icmp eq i8 %i.abs, %i.abt
  br i1 %i.abu, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %sqlite3StrICmp.exit.i587.i
  %i.abv = icmp eq i8 %i.abs, 0
  br i1 %i.abv, label %.loopexit923.i, label %bb.fp

bb.fo:                                            ; preds = %sqlite3StrICmp.exit.i587.i
  %i.abw = zext i8 %i.abs to i64
  %i.abx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.abw
  %i.aby = load i8, ptr %i.abx, align 1, !tbaa !733
  %i.abz = zext i8 %i.abt to i64
  %i.aca = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.abz
  %i.acb = load i8, ptr %i.aca, align 1, !tbaa !733
  %.not.i5.i.i = icmp eq i8 %i.aby, %i.acb
  br i1 %.not.i5.i.i, label %bb.fp, label %sqlite3StrICmp.exit7.i.i

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.acc = getelementptr inbounds nuw i8, ptr %.013.i3.i.i, i64 1
  %i.acd = getelementptr inbounds nuw i8, ptr %.012.i4.i.i, i64 1
  br label %sqlite3StrICmp.exit.i587.i

sqlite3StrICmp.exit7.i.i:                         ; preds = %bb.fo, %bb.fs
  %.013.i8.i.i = phi ptr [ %i.aco, %bb.fs ], [ %i.gy, %bb.fo ] ; 2 uses
  %.012.i9.i.i = phi ptr [ %i.acp, %bb.fs ], [ @.str.805, %bb.fo ] ; 2 uses
  %i.ace = load i8, ptr %.013.i8.i.i, align 1, !tbaa !733 ; 3 uses
  %i.acf = load i8, ptr %.012.i9.i.i, align 1, !tbaa !733 ; 2 uses
  %i.acg = icmp eq i8 %i.ace, %i.acf
  br i1 %i.acg, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %sqlite3StrICmp.exit7.i.i
  %i.ach = icmp eq i8 %i.ace, 0
  br i1 %i.ach, label %.loopexit923.i, label %bb.fs

bb.fr:                                            ; preds = %sqlite3StrICmp.exit7.i.i
  %i.aci = zext i8 %i.ace to i64
  %i.acj = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aci
  %i.ack = load i8, ptr %i.acj, align 1, !tbaa !733
  %i.acl = zext i8 %i.acf to i64
  %i.acm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.acl
  %i.acn = load i8, ptr %i.acm, align 1, !tbaa !733
  %.not.i10.i.i = icmp eq i8 %i.ack, %i.acn
  br i1 %.not.i10.i.i, label %bb.fs, label %.thread751.i

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.aco = getelementptr inbounds nuw i8, ptr %.013.i8.i.i, i64 1
  %i.acp = getelementptr inbounds nuw i8, ptr %.012.i9.i.i, i64 1
  br label %sqlite3StrICmp.exit7.i.i

.loopexit923.i:                                   ; preds = %bb.fk, %bb.fn, %bb.fq
  %i.acq = getelementptr inbounds nuw i8, ptr %.3353.i, i64 48
  %i.acr = load i32, ptr %i.acq, align 8, !tbaa !1083
  %i.acs = and i32 %i.acr, 512
  %i.act = icmp eq i32 %i.acs, 0
  br i1 %i.act, label %bb.ft, label %.thread751.i

bb.ft:                                            ; preds = %.loopexit923.i, %sqlite3ColumnIndex.exit583.thread.i
  %.0.i395 = phi i32 [ %spec.store.select.i, %sqlite3ColumnIndex.exit583.thread.i ], [ -1, %.loopexit923.i ] ; 18 uses
  %i.acu = sext i16 %i.zk to i32
  %i.acv = icmp slt i32 %.0.i395, %i.acu
  br i1 %i.acv, label %bb.fu, label %.thread751.i

bb.fu:                                            ; preds = %bb.ft
  %i.acw = getelementptr inbounds nuw i8, ptr %.3353.i, i64 8
  %i.acx = getelementptr inbounds nuw i8, ptr %.3353.i, i64 54
  %i.acy = load i32, ptr %i.gx, align 4, !tbaa !2072 ; 3 uses
  %i.acz = icmp eq i32 %i.acy, 2
  br i1 %i.acz, label %bb.fv, label %bb.fz

bb.fv:                                            ; preds = %bb.fu
  %i.ada = load i8, ptr %i.hc, align 4, !tbaa !1248
  %i.adb = icmp ugt i8 %i.ada, 1
  br i1 %i.adb, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %bb.fv
  %i.adc = trunc nsw i32 %.0.i395 to i16
  store i16 %i.adc, ptr %i.ha, align 8, !tbaa !2001
  store ptr %.3353.i, ptr %i.hd, align 8, !tbaa !733
  br label %.thread895.i

bb.fx:                                            ; preds = %bb.fv
  %i.add = getelementptr inbounds nuw i8, ptr %.0410.i, i64 16
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !733
  %i.adf = getelementptr inbounds nuw i8, ptr %i.ade, i64 72
  %i.adg = load i32, ptr %i.adf, align 8, !tbaa !2190
  %i.adh = trunc nsw i32 %.0.i395 to i16          ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %.3353.i, i64 48
  %i.adj = load i32, ptr %i.adi, align 8, !tbaa !1083
  %i.adk = and i32 %i.adj, 32
  %i.adl = icmp eq i32 %i.adk, 0
  %i.adm = icmp slt i32 %.0.i395, 0
  %or.cond.i.i = or i1 %i.adm, %i.adl
  br i1 %or.cond.i.i, label %sqlite3TableColumnToStorage.exit.i, label %.preheader.i589.i

.preheader.i589.i:                                ; preds = %bb.fx
  %.not23.i.i = icmp eq i32 %.0.i395, 0
  br i1 %.not23.i.i, label %._crit_edge.i.i, label %iter.check1276

iter.check1276:                                   ; preds = %.preheader.i589.i
  %wide.trip.count.i591.i = zext nneg i32 %.0.i395 to i64 ; 6 uses
  %min.iters.check1262 = icmp ult i32 %.0.i395, 5
  br i1 %min.iters.check1262, label %vec.epilog.scalar.ph1277.preheader, label %vector.main.loop.iter.check1263

vector.main.loop.iter.check1263:                  ; preds = %iter.check1276
  %min.iters.check1264 = icmp ult i32 %.0.i395, 17
  br i1 %min.iters.check1264, label %vec.epilog.ph1280, label %vector.ph1265

vector.ph1265:                                    ; preds = %vector.main.loop.iter.check1263
  %i.adn = and i64 %wide.trip.count.i591.i, 15    ; 2 uses
  %i.ado = icmp eq i64 %i.adn, 0
  %i.adp = select i1 %i.ado, i64 16, i64 %i.adn   ; 2 uses
  %n.vec1266 = sub nsw i64 %wide.trip.count.i591.i, %i.adp ; 3 uses
  br label %vector.body1267

vector.body1267:                                  ; preds = %vector.body1267, %vector.ph1265
  %index1268 = phi i64 [ 0, %vector.ph1265 ], [ %index.next1271, %vector.body1267 ] ; 17 uses
  %vec.phi1269 = phi <8 x i16> [ zeroinitializer, %vector.ph1265 ], [ %i.agi, %vector.body1267 ]
  %vec.phi1270 = phi <8 x i16> [ zeroinitializer, %vector.ph1265 ], [ %i.agj, %vector.body1267 ]
  %i.adq = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.adr = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.ads = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.adt = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.adu = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.adv = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.adw = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.adx = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.ady = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.adz = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.aea = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.aeb = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.aec = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.aed = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.aee = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.aef = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1268
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adq, i64 14
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adr, i64 30
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ads, i64 46
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adt, i64 62
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adu, i64 78
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adv, i64 94
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adw, i64 110
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adx, i64 126
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ady, i64 142
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adz, i64 158
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aea, i64 174
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeb, i64 190
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aec, i64 206
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aed, i64 222
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.aee, i64 238
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aef, i64 254
  %i.aew = load i16, ptr %i.aeg, align 2, !tbaa !1364
  %i.aex = load i16, ptr %i.aeh, align 2, !tbaa !1364
  %i.aey = load i16, ptr %i.aei, align 2, !tbaa !1364
  %i.aez = load i16, ptr %i.aej, align 2, !tbaa !1364
  %i.afa = load i16, ptr %i.aek, align 2, !tbaa !1364
  %i.afb = load i16, ptr %i.ael, align 2, !tbaa !1364
  %i.afc = load i16, ptr %i.aem, align 2, !tbaa !1364
  %i.afd = load i16, ptr %i.aen, align 2, !tbaa !1364
  %i.afe = insertelement <8 x i16> poison, i16 %i.aew, i64 0
  %i.aff = insertelement <8 x i16> %i.afe, i16 %i.aex, i64 1
  %i.afg = insertelement <8 x i16> %i.aff, i16 %i.aey, i64 2
  %i.afh = insertelement <8 x i16> %i.afg, i16 %i.aez, i64 3
  %i.afi = insertelement <8 x i16> %i.afh, i16 %i.afa, i64 4
  %i.afj = insertelement <8 x i16> %i.afi, i16 %i.afb, i64 5
  %i.afk = insertelement <8 x i16> %i.afj, i16 %i.afc, i64 6
  %i.afl = insertelement <8 x i16> %i.afk, i16 %i.afd, i64 7
  %i.afm = load i16, ptr %i.aeo, align 2, !tbaa !1364
  %i.afn = load i16, ptr %i.aep, align 2, !tbaa !1364
  %i.afo = load i16, ptr %i.aeq, align 2, !tbaa !1364
  %i.afp = load i16, ptr %i.aer, align 2, !tbaa !1364
  %i.afq = load i16, ptr %i.aes, align 2, !tbaa !1364
  %i.afr = load i16, ptr %i.aet, align 2, !tbaa !1364
  %i.afs = load i16, ptr %i.aeu, align 2, !tbaa !1364
  %i.aft = load i16, ptr %i.aev, align 2, !tbaa !1364
  %i.afu = insertelement <8 x i16> poison, i16 %i.afm, i64 0
  %i.afv = insertelement <8 x i16> %i.afu, i16 %i.afn, i64 1
  %i.afw = insertelement <8 x i16> %i.afv, i16 %i.afo, i64 2
  %i.afx = insertelement <8 x i16> %i.afw, i16 %i.afp, i64 3
  %i.afy = insertelement <8 x i16> %i.afx, i16 %i.afq, i64 4
  %i.afz = insertelement <8 x i16> %i.afy, i16 %i.afr, i64 5
  %i.aga = insertelement <8 x i16> %i.afz, i16 %i.afs, i64 6
  %i.agb = insertelement <8 x i16> %i.aga, i16 %i.aft, i64 7
  %i.agc = lshr <8 x i16> %i.afl, splat (i16 5)
  %i.agd = lshr <8 x i16> %i.agb, splat (i16 5)
  %i.age = and <8 x i16> %i.agc, splat (i16 1)
  %i.agf = and <8 x i16> %i.agd, splat (i16 1)
  %i.agg = xor <8 x i16> %i.age, splat (i16 1)
  %i.agh = xor <8 x i16> %i.agf, splat (i16 1)
  %i.agi = add <8 x i16> %i.agg, %vec.phi1269     ; 2 uses
  %i.agj = add <8 x i16> %i.agh, %vec.phi1270     ; 2 uses
  %index.next1271 = add nuw i64 %index1268, 16    ; 2 uses
  %i.agk = icmp eq i64 %index.next1271, %n.vec1266
  br i1 %i.agk, label %vec.epilog.iter.check1278, label %vector.body1267, !llvm.loop !4947

vec.epilog.iter.check1278:                        ; preds = %vector.body1267
  %bin.rdx1273 = add <8 x i16> %i.agj, %i.agi
  %i.agl = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx1273) ; 2 uses
  %min.epilog.iters.check1279 = icmp samesign ult i64 %i.adp, 5
  br i1 %min.epilog.iters.check1279, label %vec.epilog.scalar.ph1277.preheader, label %vec.epilog.ph1280, !prof !1709

vec.epilog.ph1280:                                ; preds = %vector.main.loop.iter.check1263, %vec.epilog.iter.check1278
  %vec.epilog.resume.val1274 = phi i64 [ %n.vec1266, %vec.epilog.iter.check1278 ], [ 0, %vector.main.loop.iter.check1263 ]
  %bc.merge.rdx1275 = phi i16 [ %i.agl, %vec.epilog.iter.check1278 ], [ 0, %vector.main.loop.iter.check1263 ]
  %i.agm = and i64 %wide.trip.count.i591.i, 3     ; 2 uses
  %i.agn = icmp eq i64 %i.agm, 0
  %i.ago = select i1 %i.agn, i64 4, i64 %i.agm
  %n.vec1281 = sub nsw i64 %wide.trip.count.i591.i, %i.ago ; 2 uses
  %i.agp = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx1275, i64 0
  br label %vec.epilog.vector.body1282

vec.epilog.vector.body1282:                       ; preds = %vec.epilog.vector.body1282, %vec.epilog.ph1280
  %index1283 = phi i64 [ %vec.epilog.resume.val1274, %vec.epilog.ph1280 ], [ %index.next1285, %vec.epilog.vector.body1282 ] ; 5 uses
  %vec.phi1284 = phi <4 x i16> [ %i.agp, %vec.epilog.ph1280 ], [ %i.ahj, %vec.epilog.vector.body1282 ]
  %i.agq = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %index1283
  %i.agr = getelementptr [16 x i8], ptr %i.zi, i64 %index1283
  %i.ags = getelementptr [16 x i8], ptr %i.zi, i64 %index1283
  %i.agt = getelementptr [16 x i8], ptr %i.zi, i64 %index1283
  %i.agu = getelementptr inbounds nuw i8, ptr %i.agq, i64 14
  %i.agv = getelementptr i8, ptr %i.agr, i64 30
  %i.agw = getelementptr i8, ptr %i.ags, i64 46
  %i.agx = getelementptr i8, ptr %i.agt, i64 62
  %i.agy = load i16, ptr %i.agu, align 2, !tbaa !1364
  %i.agz = load i16, ptr %i.agv, align 2, !tbaa !1364
  %i.aha = load i16, ptr %i.agw, align 2, !tbaa !1364
  %i.ahb = load i16, ptr %i.agx, align 2, !tbaa !1364
  %i.ahc = insertelement <4 x i16> poison, i16 %i.agy, i64 0
  %i.ahd = insertelement <4 x i16> %i.ahc, i16 %i.agz, i64 1
  %i.ahe = insertelement <4 x i16> %i.ahd, i16 %i.aha, i64 2
  %i.ahf = insertelement <4 x i16> %i.ahe, i16 %i.ahb, i64 3
  %i.ahg = lshr <4 x i16> %i.ahf, splat (i16 5)
  %i.ahh = and <4 x i16> %i.ahg, splat (i16 1)
  %i.ahi = xor <4 x i16> %i.ahh, splat (i16 1)
  %i.ahj = add <4 x i16> %i.ahi, %vec.phi1284     ; 2 uses
  %index.next1285 = add nuw i64 %index1283, 4     ; 2 uses
  %i.ahk = icmp eq i64 %index.next1285, %n.vec1281
  br i1 %i.ahk, label %vec.epilog.middle.block1286, label %vec.epilog.vector.body1282, !llvm.loop !4948

vec.epilog.middle.block1286:                      ; preds = %vec.epilog.vector.body1282
  %i.ahl = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ahj)
  br label %vec.epilog.scalar.ph1277.preheader

vec.epilog.scalar.ph1277.preheader:               ; preds = %iter.check1276, %vec.epilog.iter.check1278, %vec.epilog.middle.block1286
  %indvars.iv.i592.i.ph = phi i64 [ 0, %iter.check1276 ], [ %n.vec1266, %vec.epilog.iter.check1278 ], [ %n.vec1281, %vec.epilog.middle.block1286 ]
  %.021.i.i.ph = phi i16 [ 0, %iter.check1276 ], [ %i.agl, %vec.epilog.iter.check1278 ], [ %i.ahl, %vec.epilog.middle.block1286 ]
  br label %vec.epilog.scalar.ph1277

vec.epilog.scalar.ph1277:                         ; preds = %vec.epilog.scalar.ph1277.preheader, %vec.epilog.scalar.ph1277
  %indvars.iv.i592.i = phi i64 [ %indvars.iv.next.i593.i, %vec.epilog.scalar.ph1277 ], [ %indvars.iv.i592.i.ph, %vec.epilog.scalar.ph1277.preheader ] ; 2 uses
  %.021.i.i = phi i16 [ %spec.select.i.i, %vec.epilog.scalar.ph1277 ], [ %.021.i.i.ph, %vec.epilog.scalar.ph1277.preheader ]
  %i.ahm = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %indvars.iv.i592.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 14
  %i.aho = load i16, ptr %i.ahn, align 2, !tbaa !1364
  %i.ahp = lshr i16 %i.aho, 5
  %i.ahq = and i16 %i.ahp, 1
  %i.ahr = xor i16 %i.ahq, 1
  %spec.select.i.i = add i16 %i.ahr, %.021.i.i    ; 2 uses
  %indvars.iv.next.i593.i = add nuw nsw i64 %indvars.iv.i592.i, 1 ; 2 uses
  %exitcond.not.i594.i = icmp eq i64 %indvars.iv.next.i593.i, %wide.trip.count.i591.i
  br i1 %exitcond.not.i594.i, label %._crit_edge.i.i, label %vec.epilog.scalar.ph1277, !llvm.loop !4949

._crit_edge.i.i:                                  ; preds = %vec.epilog.scalar.ph1277, %.preheader.i589.i
  %.pre-phi.i = phi i64 [ 0, %.preheader.i589.i ], [ %wide.trip.count.i591.i, %vec.epilog.scalar.ph1277 ]
  %.0.lcssa.i.i = phi i16 [ 0, %.preheader.i589.i ], [ %spec.select.i.i, %vec.epilog.scalar.ph1277 ] ; 2 uses
  %i.ahs = getelementptr inbounds nuw [16 x i8], ptr %i.zi, i64 %.pre-phi.i
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 14
  %i.ahu = load i16, ptr %i.aht, align 2, !tbaa !1364
  %i.ahv = and i16 %i.ahu, 32
  %.not.i595.i = icmp eq i16 %i.ahv, 0
  br i1 %.not.i595.i, label %sqlite3TableColumnToStorage.exit.i, label %bb.fy

bb.fy:                                            ; preds = %._crit_edge.i.i
  %i.ahw = getelementptr inbounds nuw i8, ptr %.3353.i, i64 56
  %i.ahx = load i16, ptr %i.ahw, align 8, !tbaa !1251
  %i.ahy = sub i16 %i.adh, %.0.lcssa.i.i
  %i.ahz = add i16 %i.ahy, %i.ahx
  br label %sqlite3TableColumnToStorage.exit.i

sqlite3TableColumnToStorage.exit.i:               ; preds = %bb.fy, %._crit_edge.i.i, %bb.fx
  %.018.i.i = phi i16 [ %i.adh, %bb.fx ], [ %i.ahz, %bb.fy ], [ %.0.lcssa.i.i, %._crit_edge.i.i ]
  %i.aia = sext i16 %.018.i.i to i32
  %i.aib = add nsw i32 %i.adg, %i.aia
  store i32 %i.aib, ptr %i.gx, align 4, !tbaa !2072
  br label %.thread895.i

bb.fz:                                            ; preds = %bb.fu
  store ptr %.3353.i, ptr %i.hd, align 8, !tbaa !733
  %i.aic = load i16, ptr %i.hi, align 1
  %i.aid = and i16 %i.aic, 8
  %.not440.i = icmp eq i16 %i.aid, 0
  br i1 %.not440.i, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.aie = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 -88, ptr %i.aie, align 2, !tbaa !2000
  %i.aif = trunc nsw i32 %.0.i395 to i16          ; 3 uses
  store i16 %i.aif, ptr %i.ha, align 8, !tbaa !2001
  %i.aig = getelementptr inbounds nuw i8, ptr %.0410.i, i64 16
  %i.aih = load i32, ptr %i.aig, align 8, !tbaa !733
  %i.aii = load i16, ptr %i.acx, align 2, !tbaa !1150
  %i.aij = sext i16 %i.aii to i32
  %i.aik = add nsw i32 %i.aij, 1
  %i.ail = mul nsw i32 %i.aik, %i.acy
  %i.aim = getelementptr inbounds nuw i8, ptr %.3353.i, i64 48
  %i.ain = load i32, ptr %i.aim, align 8, !tbaa !1083
  %i.aio = and i32 %i.ain, 32
  %i.aip = icmp eq i32 %i.aio, 0
  %i.aiq = icmp slt i32 %.0.i395, 0
  %or.cond.i596.i = or i1 %i.aiq, %i.aip
  br i1 %or.cond.i596.i, label %sqlite3TableColumnToStorage.exit610.i, label %.preheader.i597.i

.preheader.i597.i:                                ; preds = %bb.ga
  %.not23.i598.i = icmp eq i32 %.0.i395, 0
  %i.air = load ptr, ptr %i.acw, align 8, !tbaa !1149 ; 22 uses
  br i1 %.not23.i598.i, label %._crit_edge.i606.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i597.i
  %wide.trip.count.i600.i = zext nneg i32 %.0.i395 to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %.0.i395, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1255 = icmp ult i32 %.0.i395, 17
  br i1 %min.iters.check1255, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ais = and i64 %wide.trip.count.i600.i, 15    ; 2 uses
  %i.ait = icmp eq i64 %i.ais, 0
  %i.aiu = select i1 %i.ait, i64 16, i64 %i.ais   ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count.i600.i, %i.aiu ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.aln, %vector.body ]
  %vec.phi1256 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.alo, %vector.body ]
  %i.aiv = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aiw = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aix = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aiy = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aiz = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aja = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajb = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajc = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajd = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aje = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajf = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajg = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajh = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.aji = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajj = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajk = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.aiv, i64 14
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aiw, i64 30
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.aix, i64 46
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aiy, i64 62
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.aiz, i64 78
  %i.ajq = getelementptr inbounds nuw i8, ptr %i.aja, i64 94
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.ajb, i64 110
  %i.ajs = getelementptr inbounds nuw i8, ptr %i.ajc, i64 126
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajd, i64 142
  %i.aju = getelementptr inbounds nuw i8, ptr %i.aje, i64 158
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ajf, i64 174
  %i.ajw = getelementptr inbounds nuw i8, ptr %i.ajg, i64 190
  %i.ajx = getelementptr inbounds nuw i8, ptr %i.ajh, i64 206
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.aji, i64 222
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajj, i64 238
  %i.aka = getelementptr inbounds nuw i8, ptr %i.ajk, i64 254
  %i.akb = load i16, ptr %i.ajl, align 2, !tbaa !1364
  %i.akc = load i16, ptr %i.ajm, align 2, !tbaa !1364
  %i.akd = load i16, ptr %i.ajn, align 2, !tbaa !1364
  %i.ake = load i16, ptr %i.ajo, align 2, !tbaa !1364
  %i.akf = load i16, ptr %i.ajp, align 2, !tbaa !1364
  %i.akg = load i16, ptr %i.ajq, align 2, !tbaa !1364
  %i.akh = load i16, ptr %i.ajr, align 2, !tbaa !1364
  %i.aki = load i16, ptr %i.ajs, align 2, !tbaa !1364
  %i.akj = insertelement <8 x i16> poison, i16 %i.akb, i64 0
  %i.akk = insertelement <8 x i16> %i.akj, i16 %i.akc, i64 1
  %i.akl = insertelement <8 x i16> %i.akk, i16 %i.akd, i64 2
  %i.akm = insertelement <8 x i16> %i.akl, i16 %i.ake, i64 3
  %i.akn = insertelement <8 x i16> %i.akm, i16 %i.akf, i64 4
  %i.ako = insertelement <8 x i16> %i.akn, i16 %i.akg, i64 5
  %i.akp = insertelement <8 x i16> %i.ako, i16 %i.akh, i64 6
  %i.akq = insertelement <8 x i16> %i.akp, i16 %i.aki, i64 7
  %i.akr = load i16, ptr %i.ajt, align 2, !tbaa !1364
  %i.aks = load i16, ptr %i.aju, align 2, !tbaa !1364
  %i.akt = load i16, ptr %i.ajv, align 2, !tbaa !1364
  %i.aku = load i16, ptr %i.ajw, align 2, !tbaa !1364
  %i.akv = load i16, ptr %i.ajx, align 2, !tbaa !1364
  %i.akw = load i16, ptr %i.ajy, align 2, !tbaa !1364
  %i.akx = load i16, ptr %i.ajz, align 2, !tbaa !1364
  %i.aky = load i16, ptr %i.aka, align 2, !tbaa !1364
  %i.akz = insertelement <8 x i16> poison, i16 %i.akr, i64 0
  %i.ala = insertelement <8 x i16> %i.akz, i16 %i.aks, i64 1
  %i.alb = insertelement <8 x i16> %i.ala, i16 %i.akt, i64 2
  %i.alc = insertelement <8 x i16> %i.alb, i16 %i.aku, i64 3
  %i.ald = insertelement <8 x i16> %i.alc, i16 %i.akv, i64 4
  %i.ale = insertelement <8 x i16> %i.ald, i16 %i.akw, i64 5
  %i.alf = insertelement <8 x i16> %i.ale, i16 %i.akx, i64 6
  %i.alg = insertelement <8 x i16> %i.alf, i16 %i.aky, i64 7
  %i.alh = lshr <8 x i16> %i.akq, splat (i16 5)
  %i.ali = lshr <8 x i16> %i.alg, splat (i16 5)
  %i.alj = and <8 x i16> %i.alh, splat (i16 1)
  %i.alk = and <8 x i16> %i.ali, splat (i16 1)
  %i.all = xor <8 x i16> %i.alj, splat (i16 1)
  %i.alm = xor <8 x i16> %i.alk, splat (i16 1)
  %i.aln = add <8 x i16> %i.all, %vec.phi         ; 2 uses
  %i.alo = add <8 x i16> %i.alm, %vec.phi1256     ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.alp = icmp eq i64 %index.next, %n.vec
  br i1 %i.alp, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !4950

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.alo, %i.aln
  %i.alq = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.aiu, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.alq, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.alr = and i64 %wide.trip.count.i600.i, 3     ; 2 uses
  %i.als = icmp eq i64 %i.alr, 0
  %i.alt = select i1 %i.als, i64 4, i64 %i.alr
  %n.vec1257 = sub nsw i64 %wide.trip.count.i600.i, %i.alt ; 2 uses
  %i.alu = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1258 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1260, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi1259 = phi <4 x i16> [ %i.alu, %vec.epilog.ph ], [ %i.amo, %vec.epilog.vector.body ]
  %i.alv = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %index1258
  %i.alw = getelementptr [16 x i8], ptr %i.air, i64 %index1258
  %i.alx = getelementptr [16 x i8], ptr %i.air, i64 %index1258
  %i.aly = getelementptr [16 x i8], ptr %i.air, i64 %index1258
  %i.alz = getelementptr inbounds nuw i8, ptr %i.alv, i64 14
  %i.ama = getelementptr i8, ptr %i.alw, i64 30
  %i.amb = getelementptr i8, ptr %i.alx, i64 46
  %i.amc = getelementptr i8, ptr %i.aly, i64 62
  %i.amd = load i16, ptr %i.alz, align 2, !tbaa !1364
  %i.ame = load i16, ptr %i.ama, align 2, !tbaa !1364
  %i.amf = load i16, ptr %i.amb, align 2, !tbaa !1364
  %i.amg = load i16, ptr %i.amc, align 2, !tbaa !1364
  %i.amh = insertelement <4 x i16> poison, i16 %i.amd, i64 0
  %i.ami = insertelement <4 x i16> %i.amh, i16 %i.ame, i64 1
  %i.amj = insertelement <4 x i16> %i.ami, i16 %i.amf, i64 2
  %i.amk = insertelement <4 x i16> %i.amj, i16 %i.amg, i64 3
  %i.aml = lshr <4 x i16> %i.amk, splat (i16 5)
  %i.amm = and <4 x i16> %i.aml, splat (i16 1)
  %i.amn = xor <4 x i16> %i.amm, splat (i16 1)
  %i.amo = add <4 x i16> %i.amn, %vec.phi1259     ; 2 uses
  %index.next1260 = add nuw i64 %index1258, 4     ; 2 uses
  %i.amp = icmp eq i64 %index.next1260, %n.vec1257
  br i1 %i.amp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !4951

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.amq = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.amo)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i601.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1257, %vec.epilog.middle.block ]
  %.021.i602.i.ph = phi i16 [ 0, %iter.check ], [ %i.alq, %vec.epilog.iter.check ], [ %i.amq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i601.i = phi i64 [ %indvars.iv.next.i604.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i601.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.021.i602.i = phi i16 [ %spec.select.i603.i, %vec.epilog.scalar.ph ], [ %.021.i602.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.amr = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %indvars.iv.i601.i
  %i.ams = getelementptr inbounds nuw i8, ptr %i.amr, i64 14
  %i.amt = load i16, ptr %i.ams, align 2, !tbaa !1364
  %i.amu = lshr i16 %i.amt, 5
  %i.amv = and i16 %i.amu, 1
  %i.amw = xor i16 %i.amv, 1
  %spec.select.i603.i = add i16 %i.amw, %.021.i602.i ; 2 uses
  %indvars.iv.next.i604.i = add nuw nsw i64 %indvars.iv.i601.i, 1 ; 2 uses
  %exitcond.not.i605.i = icmp eq i64 %indvars.iv.next.i604.i, %wide.trip.count.i600.i
  br i1 %exitcond.not.i605.i, label %._crit_edge.i606.i, label %vec.epilog.scalar.ph, !llvm.loop !4952

._crit_edge.i606.i:                               ; preds = %vec.epilog.scalar.ph, %.preheader.i597.i
  %.pre-phi1151.i = phi i64 [ 0, %.preheader.i597.i ], [ %wide.trip.count.i600.i, %vec.epilog.scalar.ph ]
  %.0.lcssa.i607.i = phi i16 [ 0, %.preheader.i597.i ], [ %spec.select.i603.i, %vec.epilog.scalar.ph ] ; 2 uses
  %i.amx = getelementptr inbounds nuw [16 x i8], ptr %i.air, i64 %.pre-phi1151.i
  %i.amy = getelementptr inbounds nuw i8, ptr %i.amx, i64 14
  %i.amz = load i16, ptr %i.amy, align 2, !tbaa !1364
  %i.ana = and i16 %i.amz, 32
  %.not.i608.i = icmp eq i16 %i.ana, 0
  br i1 %.not.i608.i, label %sqlite3TableColumnToStorage.exit610.i, label %bb.gb

bb.gb:                                            ; preds = %._crit_edge.i606.i
  %i.anb = getelementptr inbounds nuw i8, ptr %.3353.i, i64 56
  %i.anc = load i16, ptr %i.anb, align 8, !tbaa !1251
  %i.and = sub i16 %i.aif, %.0.lcssa.i607.i
  %i.ane = add i16 %i.and, %i.anc
  br label %sqlite3TableColumnToStorage.exit610.i

sqlite3TableColumnToStorage.exit610.i:            ; preds = %bb.gb, %._crit_edge.i606.i, %bb.ga
  %.018.i609.i = phi i16 [ %i.aif, %bb.ga ], [ %i.ane, %bb.gb ], [ %.0.lcssa.i607.i, %._crit_edge.i606.i ]
  %i.anf = sext i16 %.018.i609.i to i32
  %i.ang = add i32 %i.aih, 1
  %i.anh = add i32 %i.ang, %i.ail
  %i.ani = add i32 %i.anh, %i.anf
  store i32 %i.ani, ptr %i.gx, align 4, !tbaa !2072
  br label %.thread895.i

bb.gc:                                            ; preds = %bb.fz
  %i.anj = trunc nsw i32 %.0.i395 to i16
  store i16 %i.anj, ptr %i.ha, align 8, !tbaa !2001
  %i.ank = icmp slt i32 %.0.i395, 0
  br i1 %i.ank, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  store i8 68, ptr %i.hk, align 1, !tbaa !2002
  br label %.thread895.i

bb.ge:                                            ; preds = %bb.gc
  %i.anl = icmp eq i32 %i.acy, 0
  %i.anm = icmp samesign ugt i32 %.0.i395, 31
  %i.ann = shl nuw i32 1, %.0.i395
  %i.ano = select i1 %i.anm, i32 -1, i32 %i.ann   ; 2 uses
  br i1 %i.anl, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.anp = getelementptr inbounds nuw i8, ptr %i.c, i64 248 ; 2 uses
  %i.anq = load i32, ptr %i.anp, align 8, !tbaa !2241
  %i.anr = or i32 %i.anq, %i.ano
  store i32 %i.anr, ptr %i.anp, align 8, !tbaa !2241
  br label %.thread895.i

bb.gg:                                            ; preds = %bb.ge
  %i.ans = getelementptr inbounds nuw i8, ptr %i.c, i64 252 ; 2 uses
  %i.ant = load i32, ptr %i.ans, align 4, !tbaa !2242
  %i.anu = or i32 %i.ant, %i.ano
  store i32 %i.anu, ptr %i.ans, align 4, !tbaa !2242
end_hunk_8
begin_hunk_9_@updateRangeAffinityStr:bb.a
  br label %sqlite3ExprNeedsNoAffinityChange.exit.thread

sqlite3ExprNeedsNoAffinityChange.exit.thread:     ; preds = %.loopexit.i, %bb.o, %sqlite3CompareAffinity.exit.thread, %sqlite3ExprNeedsNoAffinityChange.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !5390

._crit_edge:                                      ; preds = %sqlite3ExprNeedsNoAffinityChange.exit.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeApplyAffinity(ptr nofree captures(none) %.16.val, i32 noundef %0, i32 noundef range(i32 -1, 131071) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %2, null
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.05 = phi ptr [ %i.g, %bb.b ], [ %2, %bb.a ]   ; 4 uses
  %.0184 = phi i32 [ %i.e, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.0193 = phi i32 [ %i.f, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.c = load i8, ptr %.05, align 1, !tbaa !733
  %i.d = icmp slt i8 %i.c, 66
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.e = add nsw i32 %.0184, -1
  %i.f = add nsw i32 %.0193, 1
  %i.g = getelementptr inbounds nuw i8, ptr %.05, i64 1
  %i.h = icmp sgt i32 %.0184, 1
  br i1 %i.h, label %.lr.ph, label %.critedge2, !llvm.loop !416

.critedge:                                        ; preds = %.lr.ph
  %i.i = icmp samesign ugt i32 %.0184, 1
  br i1 %i.i, label %.lr.ph13, label %.critedge2.thread

.lr.ph13:                                         ; preds = %.critedge, %bb.c
  %.112 = phi i32 [ %i.o, %bb.c ], [ %.0184, %.critedge ] ; 4 uses
  %i.j = zext nneg i32 %.112 to i64
  %i.k = getelementptr i8, ptr %.05, i64 %i.j
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !733
  %i.n = icmp slt i8 %i.m, 66
  br i1 %i.n, label %bb.c, label %.critedge2.thread

bb.c:                                             ; preds = %.lr.ph13
  %i.o = add nsw i32 %.112, -1
  %i.p = icmp sgt i32 %.112, 2
  br i1 %i.p, label %.lr.ph13, label %.critedge2.thread, !llvm.loop !417

.critedge2.thread:                                ; preds = %bb.c, %.lr.ph13, %.critedge
  %.12 = phi i32 [ 1, %.critedge ], [ 1, %bb.c ], [ %.112, %.lr.ph13 ] ; 2 uses
  %i.q = tail call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef %.16.val, i32 noundef 98, i32 noundef %.0193, i32 noundef %.12, i32 noundef 0, ptr noundef nonnull %.05, i32 noundef %.12) ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.b, %.critedge2.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @codeDeferredSeek(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1106   ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1195 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4
  %i.f = or i8 %i.e, 1
  store i8 %i.f, ptr %i.d, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 144 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !703  ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 148
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1164
  %.not.i = icmp sgt i32 %i.j, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.c, i32 noundef 143, i32 noundef %3, i32 noundef 0, i32 noundef %2), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit

bb.c:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.h, 1
  store i32 %i.l, ptr %i.g, align 8, !tbaa !703
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !702
  %i.o = sext i32 %i.h to i64
  %i.p = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.o ; 7 uses
  store i8 -113, ptr %i.p, align 8, !tbaa !929
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 0, ptr %i.q, align 2, !tbaa !930
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %3, ptr %i.r, align 4, !tbaa !926
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !927
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 %2, ptr %i.t, align 4, !tbaa !928
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.v, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.b, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.x = load i16, ptr %i.w, align 4, !tbaa !783
  %i.y = and i16 %i.x, 4128
  %.not = icmp eq i16 %i.y, 0
  br i1 %.not, label %sqlite3VdbeChangeP4.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !2049 ; 2 uses
  %.not30 = icmp eq ptr %i.aa, null
  %. = select i1 %.not30, ptr %i.a, ptr %i.aa
  %i.ab = getelementptr inbounds nuw i8, ptr %., i64 120
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !2030
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.e, label %sqlite3VdbeChangeP4.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1256 ; 4 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !980 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 54 ; 2 uses
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !1150
  %i.aj = sext i16 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 2
  %i.al = add nsw i64 %i.ak, 4                    ; 3 uses
  %.not.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %i.ag, i64 noundef %i.al), !inline_history !88
  br label %sqlite3DbMallocRaw.exit.i

bb.g:                                             ; preds = %bb.e
  %i.an = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.al), !inline_history !88
  br label %sqlite3DbMallocRaw.exit.i

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.am, %bb.f ], [ %i.an, %bb.g ] ; 17 uses
  %.not.i32 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i32, label %sqlite3VdbeChangeP4.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3DbMallocRaw.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.0.i.i, i8 0, i64 %i.al, i1 false)
  %i.ao = load i16, ptr %i.ah, align 2, !tbaa !1150
  %i.ap = sext i16 %i.ao to i32
  store i32 %i.ap, ptr %.0.i.i, align 4, !tbaa !570
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !1778 ; 2 uses
  %i.as = icmp ugt i16 %i.ar, 1
  br i1 %i.as, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.h
  %i.at = zext i16 %i.ar to i64
  %i.au = add nuw nsw i64 %i.at, 4294967295
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1160
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %wide.trip.count = and i64 %i.au, 4294967295
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %bb.k ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !783 ; 10 uses
  %i.bc = load i32, ptr %i.ax, align 8, !tbaa !1083
  %i.bd = and i32 %i.bc, 32
  %i.be = icmp eq i32 %i.bd, 0
  %wide.trip.count.i = sext i16 %i.bb to i64      ; 6 uses
  %i.bf = icmp slt i16 %i.bb, 0
  %or.cond.i = or i1 %i.bf, %i.be
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.not23.i = icmp eq i16 %i.bb, 0
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !1149 ; 22 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp ult i16 %i.bb, 5
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check47 = icmp ult i16 %i.bb, 17
  br i1 %min.iters.check47, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bh = and i64 %wide.trip.count.i, 15
  %i.bi = and i16 %i.bb, 15
  %i.bj = icmp eq i16 %i.bi, 0
  %i.bk = select i1 %i.bj, i64 16, i64 %i.bh      ; 2 uses
  %n.vec = sub nsw i64 %wide.trip.count.i, %i.bk  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ed, %vector.body ]
  %vec.phi48 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 30
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 78
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 94
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 110
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 126
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 142
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 158
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 174
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 190
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 206
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 222
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 238
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 254
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !1364
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !1364
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !1364
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !1364
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !1364
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !1364
  %i.cx = load i16, ptr %i.ch, align 2, !tbaa !1364
  %i.cy = load i16, ptr %i.ci, align 2, !tbaa !1364
  %i.cz = insertelement <8 x i16> poison, i16 %i.cr, i64 0
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 1
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 2
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 3
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 4
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 5
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 6
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 7
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !1364
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !1364
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !1364
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !1364
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !1364
  %i.dm = load i16, ptr %i.co, align 2, !tbaa !1364
  %i.dn = load i16, ptr %i.cp, align 2, !tbaa !1364
  %i.do = load i16, ptr %i.cq, align 2, !tbaa !1364
  %i.dp = insertelement <8 x i16> poison, i16 %i.dh, i64 0
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 1
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 2
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dk, i64 3
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 4
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 5
  %i.dv = insertelement <8 x i16> %i.du, i16 %i.dn, i64 6
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 7
  %i.dx = lshr <8 x i16> %i.dg, splat (i16 5)
  %i.dy = lshr <8 x i16> %i.dw, splat (i16 5)
  %i.dz = and <8 x i16> %i.dx, splat (i16 1)
  %i.ea = and <8 x i16> %i.dy, splat (i16 1)
  %i.eb = xor <8 x i16> %i.dz, splat (i16 1)
  %i.ec = xor <8 x i16> %i.ea, splat (i16 1)
  %i.ed = add <8 x i16> %i.eb, %vec.phi           ; 2 uses
  %i.ee = add <8 x i16> %i.ec, %vec.phi48         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ef = icmp eq i64 %index.next, %n.vec
  br i1 %i.ef, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5391

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ee, %i.ed
  %i.eg = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.bk, 5
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.eg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.eh = and i64 %wide.trip.count.i, 3
  %i.ei = and i16 %i.bb, 3
  %i.ej = icmp eq i16 %i.ei, 0
  %i.ek = select i1 %i.ej, i64 4, i64 %i.eh
  %n.vec49 = sub nsw i64 %wide.trip.count.i, %i.ek ; 2 uses
  %i.el = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next52, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi51 = phi <4 x i16> [ %i.el, %vec.epilog.ph ], [ %i.ff, %vec.epilog.vector.body ]
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %index50
  %i.en = getelementptr [16 x i8], ptr %i.bg, i64 %index50
  %i.eo = getelementptr [16 x i8], ptr %i.bg, i64 %index50
  %i.ep = getelementptr [16 x i8], ptr %i.bg, i64 %index50
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 14
  %i.er = getelementptr i8, ptr %i.en, i64 30
  %i.es = getelementptr i8, ptr %i.eo, i64 46
  %i.et = getelementptr i8, ptr %i.ep, i64 62
  %i.eu = load i16, ptr %i.eq, align 2, !tbaa !1364
  %i.ev = load i16, ptr %i.er, align 2, !tbaa !1364
  %i.ew = load i16, ptr %i.es, align 2, !tbaa !1364
  %i.ex = load i16, ptr %i.et, align 2, !tbaa !1364
  %i.ey = insertelement <4 x i16> poison, i16 %i.eu, i64 0
  %i.ez = insertelement <4 x i16> %i.ey, i16 %i.ev, i64 1
  %i.fa = insertelement <4 x i16> %i.ez, i16 %i.ew, i64 2
  %i.fb = insertelement <4 x i16> %i.fa, i16 %i.ex, i64 3
  %i.fc = lshr <4 x i16> %i.fb, splat (i16 5)
  %i.fd = and <4 x i16> %i.fc, splat (i16 1)
  %i.fe = xor <4 x i16> %i.fd, splat (i16 1)
  %i.ff = add <4 x i16> %i.fe, %vec.phi51         ; 2 uses
  %index.next52 = add nuw i64 %index50, 4         ; 2 uses
  %i.fg = icmp eq i64 %index.next52, %n.vec49
  br i1 %i.fg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5392

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fh = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ff)
  br label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec49, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.eg, %vec.epilog.iter.check ], [ %i.fh, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %vec.epilog.scalar.ph ], [ %.021.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 14
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !1364
  %i.fl = lshr i16 %i.fk, 5
  %i.fm = and i16 %i.fl, 1
  %i.fn = xor i16 %i.fm, 1
  %spec.select.i = add i16 %i.fn, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !5393

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph, %.preheader.i
  %.pre-phi = phi i64 [ 0, %.preheader.i ], [ %wide.trip.count.i, %vec.epilog.scalar.ph ]
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %vec.epilog.scalar.ph ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %.pre-phi
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 14
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !1364
  %i.fr = and i16 %i.fq, 32
  %.not.i33 = icmp eq i16 %i.fr, 0
  br i1 %.not.i33, label %sqlite3TableColumnToStorage.exit.thread, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.fs = load i16, ptr %i.az, align 8, !tbaa !1251
  %i.ft = sub i16 %i.bb, %.0.lcssa.i
  %i.fu = add i16 %i.ft, %i.fs
  br label %sqlite3TableColumnToStorage.exit.thread

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.i
  %i.fv = icmp sgt i16 %i.bb, -1
  br i1 %i.fv, label %sqlite3TableColumnToStorage.exit.thread, label %sqlite3TableColumnToStorage.exit._crit_edge

sqlite3TableColumnToStorage.exit._crit_edge:      ; preds = %sqlite3TableColumnToStorage.exit
  %.pre = add nuw nsw i64 %indvars.iv, 1
  br label %bb.k

sqlite3TableColumnToStorage.exit.thread:          ; preds = %bb.j, %._crit_edge.i, %sqlite3TableColumnToStorage.exit
  %.018.i39 = phi i16 [ %i.bb, %sqlite3TableColumnToStorage.exit ], [ %.0.lcssa.i, %._crit_edge.i ], [ %i.fu, %bb.j ]
  %i.fw = sext i16 %.018.i39 to i64
  %i.fx = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.fy = getelementptr [4 x i8], ptr %.0.i.i, i64 %i.fw
  %i.fz = getelementptr i8, ptr %i.fy, i64 4
  %i.ga = trunc nuw nsw i64 %i.fx to i32
  store i32 %i.ga, ptr %i.fz, align 4, !tbaa !570
  br label %bb.k

bb.k:                                             ; preds = %sqlite3TableColumnToStorage.exit._crit_edge, %sqlite3TableColumnToStorage.exit.thread
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %sqlite3TableColumnToStorage.exit._crit_edge ], [ %i.fx, %sqlite3TableColumnToStorage.exit.thread ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.i, !llvm.loop !5394

._crit_edge:                                      ; preds = %bb.k, %bb.h
  %i.gb = load ptr, ptr %i.c, align 8, !tbaa !679 ; 8 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 103
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !918
  %.not.i34 = icmp eq i8 %i.gd, 0
  br i1 %.not.i34, label %bb.x, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 488
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !641
  %i.gg = icmp ult ptr %.0.i.i, %i.gf
  br i1 %i.gg, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 472
end_hunk_9
begin_hunk_10_@sqlite3GenerateRowDelete:bb.a
  br i1 %.not, label %sqlite3FkRequired.exit, label %.preheader

sqlite3FkRequired.exit:                           ; preds = %sqlite3VdbeAddOp4Int.exit, %bb.e, %bb.o
  %.not174 = icmp eq ptr %2, null
  br i1 %.not174, label %bb.ao, label %bb.p

bb.p:                                             ; preds = %sqlite3FkRequired.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 63
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !tbaa !1146
  %i.bw = icmp eq i8 %.pre, 2
  %i.bx = zext nneg i8 %8 to i32                  ; 2 uses
  br i1 %i.bw, label %sqlite3TriggerColmask.exit, label %.lr.ph188

.preheader:                                       ; preds = %bb.o, %sqlite3FkReferences.exit.i
  %i.by = icmp ne ptr %2, null                    ; 2 uses
  %i.bz = zext nneg i8 %8 to i32                  ; 2 uses
  %.not24.i184 = icmp eq ptr %2, null
  br i1 %.not24.i184, label %sqlite3TriggerColmask.exit, label %.lr.ph188

.lr.ph188:                                        ; preds = %bb.p, %.preheader
  %i.ca = phi i1 [ %i.by, %.preheader ], [ true, %bb.p ]
  %i.cb = phi i32 [ %i.bz, %.preheader ], [ %i.bx, %bb.p ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph188, %bb.v
  %.0.i106186 = phi ptr [ %2, %.lr.ph188 ], [ %i.cy, %bb.v ] ; 6 uses
  %.021.i185 = phi i32 [ 0, %.lr.ph188 ], [ %.2.i, %bb.v ] ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i106186, i64 16
  %i.ce = load i8, ptr %i.cd, align 8, !tbaa !2200
  %i.cf = icmp eq i8 %i.ce, -127
  br i1 %i.cf, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i106186, i64 17
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !2201
  %i.ci = and i8 %i.ch, 3
  %.not25.i = icmp eq i8 %i.ci, 0
  br i1 %.not25.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i106186, i64 18
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !665
  %.not27.i = icmp eq i8 %i.ck, 0
  br i1 %.not27.i, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cl = load ptr, ptr %i.cc, align 8, !tbaa !2049 ; 2 uses
  %.not.i137 = icmp eq ptr %i.cl, null
  %..i = select i1 %.not.i137, ptr %0, ptr %i.cl
  %i.cm = getelementptr inbounds nuw i8, ptr %..i, i64 176
  %.0.i138181 = load ptr, ptr %i.cm, align 8, !tbaa !2437 ; 2 uses
  %.not19.i139182 = icmp eq ptr %.0.i138181, null
  br i1 %.not19.i139182, label %getRowTrigger.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t, %.critedge2.i
  %.0.i138183 = phi ptr [ %.0.i138, %.critedge2.i ], [ %.0.i138181, %bb.t ] ; 4 uses
  %i.cn = load ptr, ptr %.0.i138183, align 8, !tbaa !2438
  %.not20.i = icmp eq ptr %i.cn, %.0.i106186
  br i1 %.not20.i, label %bb.u, label %.critedge2.i

bb.u:                                             ; preds = %.lr.ph
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i138183, i64 24
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !2439
  %.not21.i140 = icmp eq i32 %i.cp, %i.cb
  br i1 %.not21.i140, label %getRowTrigger.exit.thread, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.u, %.lr.ph
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i138183, i64 8
  %.0.i138 = load ptr, ptr %i.cq, align 8, !tbaa !2437 ; 2 uses
  %.not19.i139 = icmp eq ptr %.0.i138, null
  br i1 %.not19.i139, label %getRowTrigger.exit, label %.lr.ph, !llvm.loop !433

getRowTrigger.exit:                               ; preds = %.critedge2.i, %bb.t
  %i.cr = tail call fastcc ptr @codeRowTrigger(ptr noundef nonnull %0, ptr noundef nonnull %.0.i106186, ptr noundef nonnull %1, i32 noundef %i.cb), !inline_history !5450 ; 2 uses
  %i.cs = load ptr, ptr %0, align 8, !tbaa !980
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 84
  store i32 -1, ptr %i.ct, align 4, !tbaa !797
  %.not28.i = icmp eq ptr %i.cr, null
  br i1 %.not28.i, label %bb.v, label %getRowTrigger.exit.thread

getRowTrigger.exit.thread:                        ; preds = %bb.u, %getRowTrigger.exit
  %.1.i169 = phi ptr [ %i.cr, %getRowTrigger.exit ], [ %.0.i138183, %bb.u ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.1.i169, i64 28
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !570
  %i.cw = or i32 %i.cv, %.021.i185
  br label %bb.v

bb.v:                                             ; preds = %getRowTrigger.exit.thread, %getRowTrigger.exit, %bb.s, %bb.r, %bb.q
  %.2.i = phi i32 [ %.021.i185, %bb.q ], [ -1, %bb.s ], [ %.021.i185, %getRowTrigger.exit ], [ %.021.i185, %bb.r ], [ %i.cw, %getRowTrigger.exit.thread ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i106186, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1764 ; 2 uses
  %.not24.i = icmp eq ptr %i.cy, null
  br i1 %.not24.i, label %sqlite3TriggerColmask.exit, label %bb.q, !llvm.loop !434

sqlite3TriggerColmask.exit:                       ; preds = %bb.v, %.preheader, %bb.p
  %i.cz = phi i32 [ %i.bx, %bb.p ], [ %i.bz, %.preheader ], [ %i.cb, %bb.v ]
  %i.da = phi i1 [ true, %bb.p ], [ %i.by, %.preheader ], [ %i.ca, %bb.v ]
  %.022.i = phi i32 [ -1, %bb.p ], [ 0, %.preheader ], [ %.2.i, %bb.v ]
  %i.db = tail call fastcc i32 @sqlite3FkOldmask(ptr noundef nonnull %0, ptr noundef %1)
  %i.dc = or i32 %i.db, %.022.i                   ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !1174 ; 2 uses
  %i.df = add i32 %i.de, 1                        ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 54 ; 3 uses
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !1150
  %i.di = sext i16 %i.dh to i32
  %i.dj = add i32 %i.df, %i.di
  store i32 %i.dj, ptr %i.dd, align 4, !tbaa !1174
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 5 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !703 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !1164
  %.not.i.i = icmp sgt i32 %i.dn, %i.dl
  br i1 %.not.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %sqlite3TriggerColmask.exit
  %i.do = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 82, i32 noundef %5, i32 noundef %i.df, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.x:                                             ; preds = %sqlite3TriggerColmask.exit
  %i.dp = add nsw i32 %i.dl, 1
  store i32 %i.dp, ptr %i.dk, align 8, !tbaa !703
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !702
  %i.ds = sext i32 %i.dl to i64
  %i.dt = getelementptr inbounds [32 x i8], ptr %i.dr, i64 %i.ds ; 6 uses
  store i8 82, ptr %i.dt, align 8, !tbaa !929
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 2
  store i16 0, ptr %i.du, align 2, !tbaa !930
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  store i32 %5, ptr %i.dv, align 4, !tbaa !926
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i32 %i.df, ptr %i.dw, align 8, !tbaa !927
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 1
  store i8 0, ptr %i.dy, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.dx, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.w, %bb.x
  %i.dz = load i16, ptr %i.dg, align 2, !tbaa !1150 ; 2 uses
  %i.ea = icmp sgt i16 %i.dz, 0
  br i1 %i.ea, label %.lr.ph190, label %._crit_edge

.lr.ph190:                                        ; preds = %sqlite3VdbeAddOp2.exit
  %i.eb = icmp eq i32 %i.dc, -1
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ee = add i32 %i.de, 2
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph190, %bb.ad
  %i.ef = phi i16 [ %i.dz, %.lr.ph190 ], [ %i.jd, %bb.ad ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next, %bb.ad ] ; 12 uses
  br i1 %i.eb, label %._crit_edge213, label %bb.z

._crit_edge213:                                   ; preds = %bb.y
  %.pre214 = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.eg = icmp samesign ult i64 %indvars.iv, 32
  br i1 %i.eg, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.eh = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.ei = shl nuw i32 1, %i.eh
  %i.ej = and i32 %i.ei, %i.dc
  %.not101 = icmp eq i32 %i.ej, 0
  br i1 %.not101, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge213, %bb.aa
  %.pre-phi = phi i32 [ %.pre214, %._crit_edge213 ], [ %i.eh, %bb.aa ] ; 3 uses
  %i.ek = trunc nuw nsw i32 %.pre-phi to i16      ; 2 uses
  %i.el = load i32, ptr %i.f, align 8, !tbaa !1083
  %i.em = and i32 %i.el, 32
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ab
  %.not23.i = icmp eq i32 %.pre-phi, 0
  %i.eo = load ptr, ptr %i.ec, align 8, !tbaa !1149 ; 22 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check260 = icmp samesign ult i64 %indvars.iv, 17
  br i1 %min.iters.check260, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ep = and i64 %indvars.iv, 15                 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  %i.er = select i1 %i.eq, i64 16, i64 %i.ep      ; 2 uses
  %n.vec = sub nsw i64 %indvars.iv, %i.er         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.hk, %vector.body ]
  %vec.phi261 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.hl, %vector.body ]
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.ff = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 14
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 30
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 46
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 62
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 78
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 94
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 110
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 126
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 142
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 158
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 174
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fd, i64 190
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fe, i64 206
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ff, i64 222
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fg, i64 238
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fh, i64 254
  %i.fy = load i16, ptr %i.fi, align 2, !tbaa !1364
  %i.fz = load i16, ptr %i.fj, align 2, !tbaa !1364
  %i.ga = load i16, ptr %i.fk, align 2, !tbaa !1364
  %i.gb = load i16, ptr %i.fl, align 2, !tbaa !1364
  %i.gc = load i16, ptr %i.fm, align 2, !tbaa !1364
  %i.gd = load i16, ptr %i.fn, align 2, !tbaa !1364
  %i.ge = load i16, ptr %i.fo, align 2, !tbaa !1364
  %i.gf = load i16, ptr %i.fp, align 2, !tbaa !1364
  %i.gg = insertelement <8 x i16> poison, i16 %i.fy, i64 0
  %i.gh = insertelement <8 x i16> %i.gg, i16 %i.fz, i64 1
  %i.gi = insertelement <8 x i16> %i.gh, i16 %i.ga, i64 2
  %i.gj = insertelement <8 x i16> %i.gi, i16 %i.gb, i64 3
  %i.gk = insertelement <8 x i16> %i.gj, i16 %i.gc, i64 4
  %i.gl = insertelement <8 x i16> %i.gk, i16 %i.gd, i64 5
  %i.gm = insertelement <8 x i16> %i.gl, i16 %i.ge, i64 6
  %i.gn = insertelement <8 x i16> %i.gm, i16 %i.gf, i64 7
  %i.go = load i16, ptr %i.fq, align 2, !tbaa !1364
  %i.gp = load i16, ptr %i.fr, align 2, !tbaa !1364
  %i.gq = load i16, ptr %i.fs, align 2, !tbaa !1364
  %i.gr = load i16, ptr %i.ft, align 2, !tbaa !1364
  %i.gs = load i16, ptr %i.fu, align 2, !tbaa !1364
  %i.gt = load i16, ptr %i.fv, align 2, !tbaa !1364
  %i.gu = load i16, ptr %i.fw, align 2, !tbaa !1364
  %i.gv = load i16, ptr %i.fx, align 2, !tbaa !1364
  %i.gw = insertelement <8 x i16> poison, i16 %i.go, i64 0
  %i.gx = insertelement <8 x i16> %i.gw, i16 %i.gp, i64 1
  %i.gy = insertelement <8 x i16> %i.gx, i16 %i.gq, i64 2
  %i.gz = insertelement <8 x i16> %i.gy, i16 %i.gr, i64 3
  %i.ha = insertelement <8 x i16> %i.gz, i16 %i.gs, i64 4
  %i.hb = insertelement <8 x i16> %i.ha, i16 %i.gt, i64 5
  %i.hc = insertelement <8 x i16> %i.hb, i16 %i.gu, i64 6
  %i.hd = insertelement <8 x i16> %i.hc, i16 %i.gv, i64 7
  %i.he = lshr <8 x i16> %i.gn, splat (i16 5)
  %i.hf = lshr <8 x i16> %i.hd, splat (i16 5)
  %i.hg = and <8 x i16> %i.he, splat (i16 1)
  %i.hh = and <8 x i16> %i.hf, splat (i16 1)
  %i.hi = xor <8 x i16> %i.hg, splat (i16 1)
  %i.hj = xor <8 x i16> %i.hh, splat (i16 1)
  %i.hk = add <8 x i16> %i.hi, %vec.phi           ; 2 uses
  %i.hl = add <8 x i16> %i.hj, %vec.phi261        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.hm = icmp eq i64 %index.next, %n.vec
  br i1 %i.hm, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5451

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.hl, %i.hk
  %i.hn = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.er, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.hn, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ho = and i64 %indvars.iv, 3                  ; 2 uses
  %i.hp = icmp eq i64 %i.ho, 0
  %i.hq = select i1 %i.hp, i64 4, i64 %i.ho
  %n.vec262 = sub nsw i64 %indvars.iv, %i.hq      ; 2 uses
  %i.hr = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index263 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next265, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi264 = phi <4 x i16> [ %i.hr, %vec.epilog.ph ], [ %i.il, %vec.epilog.vector.body ]
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %index263
  %i.ht = getelementptr [16 x i8], ptr %i.eo, i64 %index263
  %i.hu = getelementptr [16 x i8], ptr %i.eo, i64 %index263
  %i.hv = getelementptr [16 x i8], ptr %i.eo, i64 %index263
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hs, i64 14
  %i.hx = getelementptr i8, ptr %i.ht, i64 30
  %i.hy = getelementptr i8, ptr %i.hu, i64 46
  %i.hz = getelementptr i8, ptr %i.hv, i64 62
  %i.ia = load i16, ptr %i.hw, align 2, !tbaa !1364
  %i.ib = load i16, ptr %i.hx, align 2, !tbaa !1364
  %i.ic = load i16, ptr %i.hy, align 2, !tbaa !1364
  %i.id = load i16, ptr %i.hz, align 2, !tbaa !1364
  %i.ie = insertelement <4 x i16> poison, i16 %i.ia, i64 0
  %i.if = insertelement <4 x i16> %i.ie, i16 %i.ib, i64 1
  %i.ig = insertelement <4 x i16> %i.if, i16 %i.ic, i64 2
  %i.ih = insertelement <4 x i16> %i.ig, i16 %i.id, i64 3
  %i.ii = lshr <4 x i16> %i.ih, splat (i16 5)
  %i.ij = and <4 x i16> %i.ii, splat (i16 1)
  %i.ik = xor <4 x i16> %i.ij, splat (i16 1)
  %i.il = add <4 x i16> %i.ik, %vec.phi264        ; 2 uses
  %index.next265 = add nuw i64 %index263, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next265, %n.vec262
  br i1 %i.im, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5452

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.in = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.il)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec262, %vec.epilog.middle.block ]
  %.021.i107.ph = phi i16 [ 0, %iter.check ], [ %i.hn, %vec.epilog.iter.check ], [ %i.in, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i107 = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i107.ph, %.lr.ph.i.preheader ]
  %i.io = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 14
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !1364
  %i.ir = lshr i16 %i.iq, 5
  %i.is = and i16 %i.ir, 1
  %i.it = xor i16 %i.is, 1
  %spec.select.i = add i16 %i.it, %.021.i107      ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5453

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %indvars.iv
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 14
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !1364
  %i.ix = and i16 %i.iw, 32
  %.not.i108 = icmp eq i16 %i.ix, 0
  br i1 %.not.i108, label %sqlite3TableColumnToStorage.exit, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge.i
  %i.iy = load i16, ptr %i.ed, align 8, !tbaa !1251
  %i.iz = sub i16 %i.ek, %.0.lcssa.i
  %i.ja = add i16 %i.iz, %i.iy
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.ab, %._crit_edge.i, %bb.ac
  %.018.i = phi i16 [ %i.ek, %bb.ab ], [ %i.ja, %bb.ac ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.jb = sext i16 %.018.i to i32
  %i.jc = add i32 %i.ee, %i.jb
  tail call fastcc void @sqlite3ExprCodeGetColumnOfTable(ptr noundef %i.b, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %.pre-phi, i32 noundef %i.jc)
  %.pre211 = load i16, ptr %i.dg, align 2, !tbaa !1150
  br label %bb.ad

bb.ad:                                            ; preds = %bb.z, %bb.aa, %sqlite3TableColumnToStorage.exit
  %i.jd = phi i16 [ %i.ef, %bb.z ], [ %i.ef, %bb.aa ], [ %.pre211, %sqlite3TableColumnToStorage.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.je = sext i16 %i.jd to i64
  %i.jf = icmp slt i64 %indvars.iv.next, %i.je
  br i1 %i.jf, label %bb.y, label %._crit_edge, !llvm.loop !5454

._crit_edge:                                      ; preds = %bb.ad, %sqlite3VdbeAddOp2.exit
  %.val103 = load i32, ptr %i.dk, align 8, !tbaa !703
  %.not.i110191 = icmp eq ptr %2, null
  br i1 %.not.i110191, label %sqlite3VdbeAddOp4Int.exit117, label %.lr.ph194

.lr.ph194:                                        ; preds = %._crit_edge
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 160
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph194, %bb.ak
  %.0.i109192 = phi ptr [ %2, %.lr.ph194 ], [ %i.js, %bb.ak ] ; 6 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i109192, i64 16
  %i.ji = load i8, ptr %i.jh, align 8, !tbaa !2200
  %i.jj = icmp eq i8 %i.ji, -127
  br i1 %i.jj, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.jk = getelementptr inbounds nuw i8, ptr %.0.i109192, i64 17
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !2201
  %i.jm = icmp eq i8 %i.jl, 1
  br i1 %i.jm, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.jn = getelementptr inbounds nuw i8, ptr %.0.i109192, i64 18
  %i.jo = load i8, ptr %i.jn, align 2, !tbaa !665
end_hunk_10
begin_hunk_11_@sqlite3FkCheck:bb.a

sqlite3_stricmp.exit:                             ; preds = %bb.e
  br i1 %.not.i189.not, label %fkChildIsModified.exit, label %sqlite3_stricmp.exit.thread216

bb.f:                                             ; preds = %bb.e
  br i1 %.not.i189.not, label %sqlite3_stricmp.exit.thread216, label %.preheader.i188

.preheader.i188:                                  ; preds = %bb.f, %bb.i
  %.013.i.i = phi ptr [ %i.ay, %bb.i ], [ %i.ak, %bb.f ] ; 2 uses
  %.012.i.i = phi ptr [ %i.az, %bb.i ], [ %i.am, %bb.f ] ; 2 uses
  %i.ao = load i8, ptr %.013.i.i, align 1, !tbaa !733 ; 3 uses
  %i.ap = load i8, ptr %.012.i.i, align 1, !tbaa !733 ; 2 uses
  %i.aq = icmp eq i8 %i.ao, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader.i188
  %i.ar = icmp eq i8 %i.ao, 0
  br i1 %i.ar, label %fkChildIsModified.exit, label %bb.i

bb.h:                                             ; preds = %.preheader.i188
  %i.as = zext i8 %i.ao to i64
  %i.at = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !733
  %i.av = zext i8 %i.ap to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !733
  %.not.i.i = icmp eq i8 %i.au, %i.ax
  br i1 %.not.i.i, label %bb.i, label %sqlite3_stricmp.exit.thread216

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  br label %.preheader.i188

sqlite3_stricmp.exit.thread216:                   ; preds = %bb.h, %bb.f, %sqlite3_stricmp.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %.0238, i64 64 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0238, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !570 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i, label %fkChildIsModified.exit.thread

.lr.ph.i:                                         ; preds = %sqlite3_stricmp.exit.thread216
  %wide.trip.count27.i = zext nneg i32 %i.bc to i64 ; 2 uses
  br i1 %i.ac, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.j
  %indvars.iv24.i = phi i64 [ %indvars.iv.next25.i, %bb.j ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %indvars.iv24.i
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !1155
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !570
  %i.bj = icmp sgt i32 %i.bi, -1
  br i1 %i.bj, label %fkChildIsModified.exit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us.i
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 1 ; 2 uses
  %exitcond28.not.i = icmp eq i64 %indvars.iv.next25.i, %wide.trip.count27.i
  br i1 %exitcond28.not.i, label %fkChildIsModified.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !432

bb.k:                                             ; preds = %bb.l
  %indvars.iv.next.i192 = add nuw nsw i64 %indvars.iv.i190, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i192, %wide.trip.count27.i
  br i1 %exitcond.not.i, label %fkChildIsModified.exit.thread, label %.lr.ph.split.i, !llvm.loop !432

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.k
  %indvars.iv.i190 = phi i64 [ %indvars.iv.next.i192, %bb.k ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.ba, i64 %indvars.iv.i190
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !1155 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %4, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !570
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %fkChildIsModified.exit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.i
  %i.bq = load i16, ptr %i.ab, align 4, !tbaa !1189
  %i.br = sext i16 %i.bq to i32
  %.not.i191 = icmp eq i32 %i.bl, %i.br
  br i1 %.not.i191, label %fkChildIsModified.exit, label %bb.k

fkChildIsModified.exit:                           ; preds = %bb.g, %bb.l, %.lr.ph.split.i, %.lr.ph.split.us.i, %sqlite3_stricmp.exit, %bb.d
  %i.bs = load i16, ptr %i.g, align 1
  %i.bt = and i16 %i.bs, 1
  %.not175 = icmp eq i16 %i.bt, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %.0238, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !741 ; 2 uses
  br i1 %.not175, label %bb.n, label %bb.m

bb.m:                                             ; preds = %fkChildIsModified.exit
  %i.bw = call fastcc ptr @sqlite3FindTable(ptr noundef %i.f, ptr noundef %i.bv, ptr noundef %i.z)
  br label %bb.o

bb.n:                                             ; preds = %fkChildIsModified.exit
  %i.bx = call fastcc ptr @sqlite3LocateTable(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.bv, ptr noundef %i.z)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0149 = phi ptr [ %i.bw, %bb.m ], [ %i.bx, %bb.n ] ; 9 uses
  %.not176 = icmp eq ptr %.0149, null             ; 2 uses
  br i1 %.not176, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.by = call fastcc i32 @sqlite3FkLocateIndex(ptr noundef nonnull %0, ptr noundef %.0149, ptr noundef %.0238, ptr noundef %i.a, ptr noundef nonnull %i.b)
  %.not177 = icmp eq i32 %i.by, 0
  br i1 %.not177, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not184, label %sqlite3VdbeAddOp2.exit204, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = load i8, ptr %i.ah, align 1, !tbaa !918
  %.not185 = icmp eq i8 %i.bz, 0
  br i1 %.not185, label %bb.s, label %sqlite3VdbeAddOp2.exit204

bb.s:                                             ; preds = %bb.r
  br i1 %.not176, label %bb.t, label %fkChildIsModified.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ca = load ptr, ptr %i.ai, align 8, !tbaa !1195 ; 2 uses
  %.not.i193 = icmp eq ptr %i.ca, null
  br i1 %.not.i193, label %bb.u, label %sqlite3GetVdbe.exit

bb.u:                                             ; preds = %bb.t
  %i.cb = load ptr, ptr %i.ag, align 8, !tbaa !2049
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %0, align 8, !tbaa !980
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 96
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !1373
  %i.cg = and i32 %i.cf, 8
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = load i16, ptr %i.g, align 1
  %i.cj = or i16 %i.ci, 128
  store i16 %i.cj, ptr %i.g, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.ck = call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0), !inline_history !2050
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.t, %bb.x
  %.0.i194 = phi ptr [ %i.ck, %bb.x ], [ %i.ca, %bb.t ] ; 7 uses
  %i.cl = getelementptr i8, ptr %.0.i194, i64 144 ; 5 uses
  %.val = load i32, ptr %i.cl, align 8, !tbaa !703 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0238, i64 40 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !570 ; 2 uses
  %i.co = add i32 %.val, 1
  %i.cp = add i32 %i.co, %i.cn                    ; 2 uses
  %i.cq = icmp sgt i32 %i.cn, 0
  br i1 %i.cq, label %.lr.ph234, label %._crit_edge235

.lr.ph234:                                        ; preds = %sqlite3GetVdbe.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %.0238, i64 64
  %i.cs = getelementptr inbounds nuw i8, ptr %.0.i194, i64 148
  %i.ct = getelementptr inbounds nuw i8, ptr %.0.i194, i64 136
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph234, %sqlite3VdbeAddOp2.exit
  %indvars.iv254 = phi i64 [ 0, %.lr.ph234 ], [ %indvars.iv.next255, %sqlite3VdbeAddOp2.exit ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %indvars.iv254
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !1155 ; 2 uses
  %i.cw = load ptr, ptr %.0238, align 8, !tbaa !2032 ; 3 uses
  %i.cx = trunc i32 %i.cv to i16                  ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !1083
  %i.da = and i32 %i.cz, 32
  %i.db = icmp eq i32 %i.da, 0
  %i.dc = icmp slt i16 %i.cx, 0
  %or.cond.i = or i1 %i.dc, %i.db
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i195

.preheader.i195:                                  ; preds = %bb.y
  %sext = and i32 %i.cv, 32767                    ; 3 uses
  %.not23.i = icmp eq i16 %i.cx, 0
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !1149 ; 22 uses
  %.pre259 = zext nneg i32 %sext to i64           ; 6 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i195
  %min.iters.check = icmp samesign ult i32 %sext, 5
  br i1 %min.iters.check, label %.lr.ph.i196.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check298 = icmp samesign ult i32 %sext, 17
  br i1 %min.iters.check298, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.df = and i64 %.pre259, 15                    ; 2 uses
  %i.dg = icmp eq i64 %i.df, 0
  %i.dh = select i1 %i.dg, i64 16, i64 %i.df      ; 2 uses
  %n.vec = sub nsw i64 %.pre259, %i.dh            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ga, %vector.body ]
  %vec.phi299 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.gb, %vector.body ]
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dr = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.ds = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index
  %i.dy = getelementptr inbounds nuw i8, ptr %i.di, i64 14
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 30
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 46
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dl, i64 62
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dm, i64 78
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 94
  %i.ee = getelementptr inbounds nuw i8, ptr %i.do, i64 110
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dp, i64 126
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dq, i64 142
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dr, i64 158
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ds, i64 174
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dt, i64 190
  %i.ek = getelementptr inbounds nuw i8, ptr %i.du, i64 206
  %i.el = getelementptr inbounds nuw i8, ptr %i.dv, i64 222
  %i.em = getelementptr inbounds nuw i8, ptr %i.dw, i64 238
  %i.en = getelementptr inbounds nuw i8, ptr %i.dx, i64 254
  %i.eo = load i16, ptr %i.dy, align 2, !tbaa !1364
  %i.ep = load i16, ptr %i.dz, align 2, !tbaa !1364
  %i.eq = load i16, ptr %i.ea, align 2, !tbaa !1364
  %i.er = load i16, ptr %i.eb, align 2, !tbaa !1364
  %i.es = load i16, ptr %i.ec, align 2, !tbaa !1364
  %i.et = load i16, ptr %i.ed, align 2, !tbaa !1364
  %i.eu = load i16, ptr %i.ee, align 2, !tbaa !1364
  %i.ev = load i16, ptr %i.ef, align 2, !tbaa !1364
  %i.ew = insertelement <8 x i16> poison, i16 %i.eo, i64 0
  %i.ex = insertelement <8 x i16> %i.ew, i16 %i.ep, i64 1
  %i.ey = insertelement <8 x i16> %i.ex, i16 %i.eq, i64 2
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.er, i64 3
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.es, i64 4
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 5
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 6
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 7
  %i.fe = load i16, ptr %i.eg, align 2, !tbaa !1364
  %i.ff = load i16, ptr %i.eh, align 2, !tbaa !1364
  %i.fg = load i16, ptr %i.ei, align 2, !tbaa !1364
  %i.fh = load i16, ptr %i.ej, align 2, !tbaa !1364
  %i.fi = load i16, ptr %i.ek, align 2, !tbaa !1364
  %i.fj = load i16, ptr %i.el, align 2, !tbaa !1364
  %i.fk = load i16, ptr %i.em, align 2, !tbaa !1364
  %i.fl = load i16, ptr %i.en, align 2, !tbaa !1364
  %i.fm = insertelement <8 x i16> poison, i16 %i.fe, i64 0
  %i.fn = insertelement <8 x i16> %i.fm, i16 %i.ff, i64 1
  %i.fo = insertelement <8 x i16> %i.fn, i16 %i.fg, i64 2
  %i.fp = insertelement <8 x i16> %i.fo, i16 %i.fh, i64 3
  %i.fq = insertelement <8 x i16> %i.fp, i16 %i.fi, i64 4
  %i.fr = insertelement <8 x i16> %i.fq, i16 %i.fj, i64 5
  %i.fs = insertelement <8 x i16> %i.fr, i16 %i.fk, i64 6
  %i.ft = insertelement <8 x i16> %i.fs, i16 %i.fl, i64 7
  %i.fu = lshr <8 x i16> %i.fd, splat (i16 5)
  %i.fv = lshr <8 x i16> %i.ft, splat (i16 5)
  %i.fw = and <8 x i16> %i.fu, splat (i16 1)
  %i.fx = and <8 x i16> %i.fv, splat (i16 1)
  %i.fy = xor <8 x i16> %i.fw, splat (i16 1)
  %i.fz = xor <8 x i16> %i.fx, splat (i16 1)
  %i.ga = add <8 x i16> %i.fy, %vec.phi           ; 2 uses
  %i.gb = add <8 x i16> %i.fz, %vec.phi299        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gc = icmp eq i64 %index.next, %n.vec
  br i1 %i.gc, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5466

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.gb, %i.ga
  %i.gd = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.dh, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i196.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.gd, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ge = and i64 %.pre259, 3                     ; 2 uses
  %i.gf = icmp eq i64 %i.ge, 0
  %i.gg = select i1 %i.gf, i64 4, i64 %i.ge
  %n.vec300 = sub nsw i64 %.pre259, %i.gg         ; 2 uses
  %i.gh = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index301 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next303, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi302 = phi <4 x i16> [ %i.gh, %vec.epilog.ph ], [ %i.hb, %vec.epilog.vector.body ]
  %i.gi = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %index301
  %i.gj = getelementptr [16 x i8], ptr %i.de, i64 %index301
  %i.gk = getelementptr [16 x i8], ptr %i.de, i64 %index301
  %i.gl = getelementptr [16 x i8], ptr %i.de, i64 %index301
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gi, i64 14
  %i.gn = getelementptr i8, ptr %i.gj, i64 30
  %i.go = getelementptr i8, ptr %i.gk, i64 46
  %i.gp = getelementptr i8, ptr %i.gl, i64 62
  %i.gq = load i16, ptr %i.gm, align 2, !tbaa !1364
  %i.gr = load i16, ptr %i.gn, align 2, !tbaa !1364
  %i.gs = load i16, ptr %i.go, align 2, !tbaa !1364
  %i.gt = load i16, ptr %i.gp, align 2, !tbaa !1364
  %i.gu = insertelement <4 x i16> poison, i16 %i.gq, i64 0
  %i.gv = insertelement <4 x i16> %i.gu, i16 %i.gr, i64 1
  %i.gw = insertelement <4 x i16> %i.gv, i16 %i.gs, i64 2
  %i.gx = insertelement <4 x i16> %i.gw, i16 %i.gt, i64 3
  %i.gy = lshr <4 x i16> %i.gx, splat (i16 5)
  %i.gz = and <4 x i16> %i.gy, splat (i16 1)
  %i.ha = xor <4 x i16> %i.gz, splat (i16 1)
  %i.hb = add <4 x i16> %i.ha, %vec.phi302        ; 2 uses
  %index.next303 = add nuw i64 %index301, 4       ; 2 uses
  %i.hc = icmp eq i64 %index.next303, %n.vec300
  br i1 %i.hc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5467

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hd = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.hb)
  br label %.lr.ph.i196.preheader

.lr.ph.i196.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i197.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec300, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.gd, %vec.epilog.iter.check ], [ %i.hd, %vec.epilog.middle.block ]
  br label %.lr.ph.i196

.lr.ph.i196:                                      ; preds = %.lr.ph.i196.preheader, %.lr.ph.i196
  %indvars.iv.i197 = phi i64 [ %indvars.iv.next.i198, %.lr.ph.i196 ], [ %indvars.iv.i197.ph, %.lr.ph.i196.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i196 ], [ %.021.i.ph, %.lr.ph.i196.preheader ]
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %indvars.iv.i197
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 14
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !1364
  %i.hh = lshr i16 %i.hg, 5
  %i.hi = and i16 %i.hh, 1
  %i.hj = xor i16 %i.hi, 1
  %spec.select.i = add i16 %i.hj, %.021.i         ; 2 uses
  %indvars.iv.next.i198 = add nuw nsw i64 %indvars.iv.i197, 1 ; 2 uses
  %exitcond.not.i199 = icmp eq i64 %indvars.iv.next.i198, %.pre259
  br i1 %exitcond.not.i199, label %._crit_edge.i, label %.lr.ph.i196, !llvm.loop !5468

._crit_edge.i:                                    ; preds = %.lr.ph.i196, %.preheader.i195
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i195 ], [ %spec.select.i, %.lr.ph.i196 ] ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.de, i64 %.pre259
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 14
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !1364
  %i.hn = and i16 %i.hm, 32
  %.not.i200 = icmp eq i16 %i.hn, 0
  br i1 %.not.i200, label %sqlite3TableColumnToStorage.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge.i
  %i.ho = getelementptr inbounds nuw i8, ptr %i.cw, i64 56
  %i.hp = load i16, ptr %i.ho, align 8, !tbaa !1251
  %i.hq = sub i16 %i.cx, %.0.lcssa.i
  %i.hr = add i16 %i.hq, %i.hp
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.y, %._crit_edge.i, %bb.z
  %.018.i = phi i16 [ %i.cx, %bb.y ], [ %i.hr, %bb.z ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.hs = sext i16 %.018.i to i32
  %i.ht = add i32 %i.aj, %i.hs                    ; 2 uses
  %i.hu = load i32, ptr %i.cl, align 8, !tbaa !703 ; 3 uses
  %i.hv = load i32, ptr %i.cs, align 4, !tbaa !1164
  %.not.i.i201 = icmp sgt i32 %i.hv, %i.hu
  br i1 %.not.i.i201, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %sqlite3TableColumnToStorage.exit
  %i.hw = call fastcc i32 @growOp3(ptr noundef nonnull %.0.i194, i32 noundef 51, i32 noundef %i.ht, i32 noundef %i.cp, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.ab:                                            ; preds = %sqlite3TableColumnToStorage.exit
  %i.hx = add nsw i32 %i.hu, 1
  store i32 %i.hx, ptr %i.cl, align 8, !tbaa !703
  %i.hy = load ptr, ptr %i.ct, align 8, !tbaa !702
  %i.hz = sext i32 %i.hu to i64
  %i.ia = getelementptr inbounds [32 x i8], ptr %i.hy, i64 %i.hz ; 6 uses
  store i8 51, ptr %i.ia, align 8, !tbaa !929
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 2
  store i16 0, ptr %i.ib, align 2, !tbaa !930
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  store i32 %i.ht, ptr %i.ic, align 4, !tbaa !926
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i32 %i.cp, ptr %i.id, align 8, !tbaa !927
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  %i.if = getelementptr inbounds nuw i8, ptr %i.ia, i64 1
  store i8 0, ptr %i.if, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ie, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.aa, %bb.ab
  %indvars.iv.next255 = add nuw nsw i64 %indvars.iv254, 1 ; 2 uses
  %i.ig = load i32, ptr %i.cm, align 8, !tbaa !570
  %i.ih = sext i32 %i.ig to i64
  %i.ii = icmp slt i64 %indvars.iv.next255, %i.ih
  br i1 %i.ii, label %bb.y, label %._crit_edge235.loopexit, !llvm.loop !5469

end_hunk_11
begin_hunk_12_@sqlite3ProcessReturningSubqueries:bb.a
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @sqlite3ReturningSubqueryCorrelated(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1843 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !570  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !733
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !5502

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw [72 x i8], ptr %i.b, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1825
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !813
  %i.m = or i32 %i.l, 536870912
  store i32 %i.m, ptr %i.k, align 4, !tbaa !813
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i16 1, ptr %i.n, align 4, !tbaa !2017
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.d
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @sqlite3ReturningSubqueryVarSelect(ptr nofree readnone captures(none) %0, ptr nofree noundef captures(none) %1) #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !795  ; 2 uses
  %i.c = and i32 %i.b, 4096
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !733
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !813
  %i.h = and i32 %i.g, 536870912
  %.not3 = icmp eq i32 %i.h, 0
  br i1 %.not3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = or i32 %i.b, 64
  store i32 %i.i, ptr %i.a, align 4, !tbaa !795
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @fkLookupParent(ptr noundef %0, i32 noundef %1, ptr nofree noundef nonnull readonly captures(address) %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull readonly captures(none) %5, i32 noundef %6, i32 noundef range(i32 -1, 2) %7, i32 noundef range(i32 0, 2) %8) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1195 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.b, label %sqlite3GetVdbe.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2049
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !980
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1373
  %i.i = and i32 %i.h, 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.l = load i16, ptr %i.k, align 1
  %i.m = or i16 %i.l, 128
  store i16 %i.m, ptr %i.k, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.n = tail call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0), !inline_history !2050
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.a, %bb.e
  %.0.i = phi ptr [ %i.n, %bb.e ], [ %i.b, %bb.a ] ; 48 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load i32, ptr %i.o, align 8, !tbaa !1175
  %i.q = add nsw i32 %i.p, -1                     ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1881 ; 2 uses
  %i.t = add nsw i32 %i.s, -1                     ; 13 uses
  store i32 %i.t, ptr %i.r, align 4, !tbaa !1881
  %i.u = icmp slt i32 %7, 0
  br i1 %i.u, label %bb.f, label %sqlite3VdbeAddOp2.exit

bb.f:                                             ; preds = %sqlite3GetVdbe.exit
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.w = load i8, ptr %i.v, align 4, !tbaa !733
  %i.x = zext i8 %i.w to i32                      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !703  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !1164
  %.not.i.i = icmp sgt i32 %i.ab, %i.z
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 60, i32 noundef %i.x, i32 noundef %i.t, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit

bb.h:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.z, 1
  store i32 %i.ad, ptr %i.y, align 8, !tbaa !703
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !702
  %i.ag = sext i32 %i.z to i64
  %i.ah = getelementptr inbounds [32 x i8], ptr %i.af, i64 %i.ag ; 6 uses
  store i8 60, ptr %i.ah, align 8, !tbaa !929
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  store i16 0, ptr %i.ai, align 2, !tbaa !930
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.x, ptr %i.aj, align 4, !tbaa !926
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i32 %i.t, ptr %i.ak, align 8, !tbaa !927
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 0, ptr %i.am, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.al, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.h, %bb.g, %sqlite3GetVdbe.exit
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !570 ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sqlite3VdbeAddOp2.exit
  %i.aq = add i32 %6, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %sqlite3VdbeAddOp2.exit139
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sqlite3VdbeAddOp2.exit139 ] ; 2 uses
  %i.au = load ptr, ptr %4, align 8, !tbaa !2032  ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !570 ; 2 uses
  %i.ax = trunc i32 %i.aw to i16                  ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 48
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !1083
  %i.ba = and i32 %i.az, 32
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = icmp slt i16 %i.ax, 0
  %or.cond.i = or i1 %i.bc, %i.bb
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %sext254 = and i32 %i.aw, 32767                 ; 3 uses
  %.not23.i = icmp eq i16 %i.ax, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1149 ; 22 uses
  %.pre282 = zext nneg i32 %sext254 to i64        ; 6 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i32 %sext254, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check323 = icmp samesign ult i32 %sext254, 17
  br i1 %min.iters.check323, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bf = and i64 %.pre282, 15                    ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  %i.bh = select i1 %i.bg, i64 16, i64 %i.bf      ; 2 uses
  %n.vec = sub nsw i64 %.pre282, %i.bh            ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ea, %vector.body ]
  %vec.phi324 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.eb, %vector.body ]
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bl = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bk, i64 46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 62
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 78
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 94
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 110
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 126
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 142
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 158
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 174
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 190
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 206
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 222
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 238
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 254
  %i.co = load i16, ptr %i.by, align 2, !tbaa !1364
  %i.cp = load i16, ptr %i.bz, align 2, !tbaa !1364
  %i.cq = load i16, ptr %i.ca, align 2, !tbaa !1364
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !1364
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !1364
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !1364
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !1364
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !1364
  %i.cw = insertelement <8 x i16> poison, i16 %i.co, i64 0
  %i.cx = insertelement <8 x i16> %i.cw, i16 %i.cp, i64 1
  %i.cy = insertelement <8 x i16> %i.cx, i16 %i.cq, i64 2
  %i.cz = insertelement <8 x i16> %i.cy, i16 %i.cr, i64 3
  %i.da = insertelement <8 x i16> %i.cz, i16 %i.cs, i64 4
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 5
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 6
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 7
  %i.de = load i16, ptr %i.cg, align 2, !tbaa !1364
  %i.df = load i16, ptr %i.ch, align 2, !tbaa !1364
  %i.dg = load i16, ptr %i.ci, align 2, !tbaa !1364
  %i.dh = load i16, ptr %i.cj, align 2, !tbaa !1364
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !1364
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !1364
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !1364
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !1364
  %i.dm = insertelement <8 x i16> poison, i16 %i.de, i64 0
  %i.dn = insertelement <8 x i16> %i.dm, i16 %i.df, i64 1
  %i.do = insertelement <8 x i16> %i.dn, i16 %i.dg, i64 2
  %i.dp = insertelement <8 x i16> %i.do, i16 %i.dh, i64 3
  %i.dq = insertelement <8 x i16> %i.dp, i16 %i.di, i64 4
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 5
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dk, i64 6
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 7
  %i.du = lshr <8 x i16> %i.dd, splat (i16 5)
  %i.dv = lshr <8 x i16> %i.dt, splat (i16 5)
  %i.dw = and <8 x i16> %i.du, splat (i16 1)
  %i.dx = and <8 x i16> %i.dv, splat (i16 1)
  %i.dy = xor <8 x i16> %i.dw, splat (i16 1)
  %i.dz = xor <8 x i16> %i.dx, splat (i16 1)
  %i.ea = add <8 x i16> %i.dy, %vec.phi           ; 2 uses
  %i.eb = add <8 x i16> %i.dz, %vec.phi324        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ec = icmp eq i64 %index.next, %n.vec
  br i1 %i.ec, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5503

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.eb, %i.ea
  %i.ed = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.bh, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.ed, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ee = and i64 %.pre282, 3                     ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  %i.eg = select i1 %i.ef, i64 4, i64 %i.ee
  %n.vec325 = sub nsw i64 %.pre282, %i.eg         ; 2 uses
  %i.eh = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index326 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next328, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi327 = phi <4 x i16> [ %i.eh, %vec.epilog.ph ], [ %i.fb, %vec.epilog.vector.body ]
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %index326
  %i.ej = getelementptr [16 x i8], ptr %i.be, i64 %index326
  %i.ek = getelementptr [16 x i8], ptr %i.be, i64 %index326
  %i.el = getelementptr [16 x i8], ptr %i.be, i64 %index326
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 14
  %i.en = getelementptr i8, ptr %i.ej, i64 30
  %i.eo = getelementptr i8, ptr %i.ek, i64 46
  %i.ep = getelementptr i8, ptr %i.el, i64 62
  %i.eq = load i16, ptr %i.em, align 2, !tbaa !1364
  %i.er = load i16, ptr %i.en, align 2, !tbaa !1364
  %i.es = load i16, ptr %i.eo, align 2, !tbaa !1364
  %i.et = load i16, ptr %i.ep, align 2, !tbaa !1364
  %i.eu = insertelement <4 x i16> poison, i16 %i.eq, i64 0
  %i.ev = insertelement <4 x i16> %i.eu, i16 %i.er, i64 1
  %i.ew = insertelement <4 x i16> %i.ev, i16 %i.es, i64 2
  %i.ex = insertelement <4 x i16> %i.ew, i16 %i.et, i64 3
  %i.ey = lshr <4 x i16> %i.ex, splat (i16 5)
  %i.ez = and <4 x i16> %i.ey, splat (i16 1)
  %i.fa = xor <4 x i16> %i.ez, splat (i16 1)
  %i.fb = add <4 x i16> %i.fa, %vec.phi327        ; 2 uses
  %index.next328 = add nuw i64 %index326, 4       ; 2 uses
  %i.fc = icmp eq i64 %index.next328, %n.vec325
  br i1 %i.fc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5504

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fd = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.fb)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec325, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.ed, %vec.epilog.iter.check ], [ %i.fd, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i.ph, %.lr.ph.i.preheader ]
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 14
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !1364
  %i.fh = lshr i16 %i.fg, 5
  %i.fi = and i16 %i.fh, 1
  %i.fj = xor i16 %i.fi, 1
  %spec.select.i = add i16 %i.fj, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %.pre282
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5505

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %.pre282
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 14
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !1364
  %i.fn = and i16 %i.fm, 32
  %.not.i136 = icmp eq i16 %i.fn, 0
  br i1 %.not.i136, label %sqlite3TableColumnToStorage.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.fo = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.fp = load i16, ptr %i.fo, align 8, !tbaa !1251
  %i.fq = sub i16 %i.ax, %.0.lcssa.i
  %i.fr = add i16 %i.fq, %i.fp
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.i, %._crit_edge.i, %bb.j
  %.018.i = phi i16 [ %i.ax, %bb.i ], [ %i.fr, %bb.j ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.fs = sext i16 %.018.i to i32
  %i.ft = add i32 %i.aq, %i.fs                    ; 2 uses
  %i.fu = load i32, ptr %i.ar, align 8, !tbaa !703 ; 3 uses
  %i.fv = load i32, ptr %i.as, align 4, !tbaa !1164
  %.not.i.i137 = icmp sgt i32 %i.fv, %i.fu
  br i1 %.not.i.i137, label %bb.l, label %bb.k

bb.k:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.fw = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 51, i32 noundef %i.ft, i32 noundef %i.t, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit139

bb.l:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.fx = add nsw i32 %i.fu, 1
  store i32 %i.fx, ptr %i.ar, align 8, !tbaa !703
  %i.fy = load ptr, ptr %i.at, align 8, !tbaa !702
  %i.fz = sext i32 %i.fu to i64
  %i.ga = getelementptr inbounds [32 x i8], ptr %i.fy, i64 %i.fz ; 6 uses
  store i8 51, ptr %i.ga, align 8, !tbaa !929
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  store i16 0, ptr %i.gb, align 2, !tbaa !930
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 %i.ft, ptr %i.gc, align 4, !tbaa !926
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  store i32 %i.t, ptr %i.gd, align 8, !tbaa !927
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store i8 0, ptr %i.gf, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ge, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit139

sqlite3VdbeAddOp2.exit139:                        ; preds = %bb.k, %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gg = load i32, ptr %i.an, align 8, !tbaa !570 ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp slt i64 %indvars.iv.next, %i.gh
  br i1 %i.gi, label %bb.i, label %._crit_edge, !llvm.loop !5506

._crit_edge:                                      ; preds = %sqlite3VdbeAddOp2.exit139, %sqlite3VdbeAddOp2.exit
  %.lcssa = phi i32 [ %i.ao, %sqlite3VdbeAddOp2.exit ], [ %i.gg, %sqlite3VdbeAddOp2.exit139 ] ; 15 uses
  %i.gj = icmp eq i32 %8, 0
  br i1 %i.gj, label %bb.m, label %sqlite3ReleaseTempReg.exit

bb.m:                                             ; preds = %._crit_edge
  %i.gk = icmp eq ptr %3, null
  br i1 %i.gk, label %bb.n, label %bb.ag

bb.n:                                             ; preds = %bb.m
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 4 uses
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !2137 ; 2 uses
  %i.gn = icmp eq i8 %i.gm, 0
  br i1 %i.gn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !1174
  %i.gq = add nsw i32 %i.gp, 1                    ; 2 uses
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !1174
  br label %sqlite3GetTempReg.exit

bb.p:                                             ; preds = %bb.n
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gs = add i8 %i.gm, -1                        ; 2 uses
  store i8 %i.gs, ptr %i.gl, align 1, !tbaa !2137
  %i.gt = zext i8 %i.gs to i64
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gt
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !570
  br label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.o, %bb.p
  %.0.i140 = phi i32 [ %i.gq, %bb.o ], [ %i.gv, %bb.p ] ; 10 uses
  %i.gw = load ptr, ptr %4, align 8, !tbaa !2032  ; 3 uses
  %i.gx = load i32, ptr %5, align 4, !tbaa !570   ; 2 uses
  %i.gy = trunc i32 %i.gx to i16                  ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 48
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !1083
  %i.hb = and i32 %i.ha, 32
  %i.hc = icmp eq i32 %i.hb, 0
  %i.hd = icmp slt i16 %i.gy, 0
  %or.cond.i141 = or i1 %i.hd, %i.hc
  br i1 %or.cond.i141, label %sqlite3TableColumnToStorage.exit155, label %.preheader.i142

.preheader.i142:                                  ; preds = %sqlite3GetTempReg.exit
  %sext253 = and i32 %i.gx, 32767                 ; 3 uses
  %.not23.i143 = icmp eq i16 %i.gy, 0
  %i.he = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1149 ; 22 uses
  %.pre275 = zext nneg i32 %sext253 to i64        ; 6 uses
  br i1 %.not23.i143, label %._crit_edge.i151, label %iter.check425

iter.check425:                                    ; preds = %.preheader.i142
  %min.iters.check411 = icmp samesign ult i32 %sext253, 5
  br i1 %min.iters.check411, label %.lr.ph.i144.preheader, label %vector.main.loop.iter.check412

vector.main.loop.iter.check412:                   ; preds = %iter.check425
  %min.iters.check413 = icmp samesign ult i32 %sext253, 17
  br i1 %min.iters.check413, label %vec.epilog.ph429, label %vector.ph414

vector.ph414:                                     ; preds = %vector.main.loop.iter.check412
  %i.hg = and i64 %.pre275, 15                    ; 2 uses
  %i.hh = icmp eq i64 %i.hg, 0
  %i.hi = select i1 %i.hh, i64 16, i64 %i.hg      ; 2 uses
  %n.vec415 = sub nsw i64 %.pre275, %i.hi         ; 3 uses
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph414
  %index417 = phi i64 [ 0, %vector.ph414 ], [ %index.next420, %vector.body416 ] ; 17 uses
  %vec.phi418 = phi <8 x i16> [ zeroinitializer, %vector.ph414 ], [ %i.kb, %vector.body416 ]
  %vec.phi419 = phi <8 x i16> [ zeroinitializer, %vector.ph414 ], [ %i.kc, %vector.body416 ]
  %i.hj = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.ho = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hp = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hs = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.ht = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hv = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hw = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hy = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index417
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hj, i64 14
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 30
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hl, i64 46
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hm, i64 62
  %i.id = getelementptr inbounds nuw i8, ptr %i.hn, i64 78
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ho, i64 94
  %i.if = getelementptr inbounds nuw i8, ptr %i.hp, i64 110
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 126
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hr, i64 142
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hs, i64 158
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ht, i64 174
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hu, i64 190
  %i.il = getelementptr inbounds nuw i8, ptr %i.hv, i64 206
  %i.im = getelementptr inbounds nuw i8, ptr %i.hw, i64 222
  %i.in = getelementptr inbounds nuw i8, ptr %i.hx, i64 238
  %i.io = getelementptr inbounds nuw i8, ptr %i.hy, i64 254
  %i.ip = load i16, ptr %i.hz, align 2, !tbaa !1364
  %i.iq = load i16, ptr %i.ia, align 2, !tbaa !1364
  %i.ir = load i16, ptr %i.ib, align 2, !tbaa !1364
  %i.is = load i16, ptr %i.ic, align 2, !tbaa !1364
  %i.it = load i16, ptr %i.id, align 2, !tbaa !1364
  %i.iu = load i16, ptr %i.ie, align 2, !tbaa !1364
  %i.iv = load i16, ptr %i.if, align 2, !tbaa !1364
  %i.iw = load i16, ptr %i.ig, align 2, !tbaa !1364
  %i.ix = insertelement <8 x i16> poison, i16 %i.ip, i64 0
  %i.iy = insertelement <8 x i16> %i.ix, i16 %i.iq, i64 1
  %i.iz = insertelement <8 x i16> %i.iy, i16 %i.ir, i64 2
  %i.ja = insertelement <8 x i16> %i.iz, i16 %i.is, i64 3
  %i.jb = insertelement <8 x i16> %i.ja, i16 %i.it, i64 4
  %i.jc = insertelement <8 x i16> %i.jb, i16 %i.iu, i64 5
  %i.jd = insertelement <8 x i16> %i.jc, i16 %i.iv, i64 6
  %i.je = insertelement <8 x i16> %i.jd, i16 %i.iw, i64 7
  %i.jf = load i16, ptr %i.ih, align 2, !tbaa !1364
  %i.jg = load i16, ptr %i.ii, align 2, !tbaa !1364
  %i.jh = load i16, ptr %i.ij, align 2, !tbaa !1364
  %i.ji = load i16, ptr %i.ik, align 2, !tbaa !1364
  %i.jj = load i16, ptr %i.il, align 2, !tbaa !1364
  %i.jk = load i16, ptr %i.im, align 2, !tbaa !1364
  %i.jl = load i16, ptr %i.in, align 2, !tbaa !1364
  %i.jm = load i16, ptr %i.io, align 2, !tbaa !1364
  %i.jn = insertelement <8 x i16> poison, i16 %i.jf, i64 0
  %i.jo = insertelement <8 x i16> %i.jn, i16 %i.jg, i64 1
  %i.jp = insertelement <8 x i16> %i.jo, i16 %i.jh, i64 2
  %i.jq = insertelement <8 x i16> %i.jp, i16 %i.ji, i64 3
  %i.jr = insertelement <8 x i16> %i.jq, i16 %i.jj, i64 4
  %i.js = insertelement <8 x i16> %i.jr, i16 %i.jk, i64 5
  %i.jt = insertelement <8 x i16> %i.js, i16 %i.jl, i64 6
  %i.ju = insertelement <8 x i16> %i.jt, i16 %i.jm, i64 7
  %i.jv = lshr <8 x i16> %i.je, splat (i16 5)
  %i.jw = lshr <8 x i16> %i.ju, splat (i16 5)
  %i.jx = and <8 x i16> %i.jv, splat (i16 1)
  %i.jy = and <8 x i16> %i.jw, splat (i16 1)
  %i.jz = xor <8 x i16> %i.jx, splat (i16 1)
  %i.ka = xor <8 x i16> %i.jy, splat (i16 1)
  %i.kb = add <8 x i16> %i.jz, %vec.phi418        ; 2 uses
  %i.kc = add <8 x i16> %i.ka, %vec.phi419        ; 2 uses
  %index.next420 = add nuw i64 %index417, 16      ; 2 uses
  %i.kd = icmp eq i64 %index.next420, %n.vec415
  br i1 %i.kd, label %vec.epilog.iter.check427, label %vector.body416, !llvm.loop !5507

vec.epilog.iter.check427:                         ; preds = %vector.body416
  %bin.rdx422 = add <8 x i16> %i.kc, %i.kb
  %i.ke = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx422) ; 2 uses
  %min.epilog.iters.check428 = icmp samesign ult i64 %i.hi, 5
  br i1 %min.epilog.iters.check428, label %.lr.ph.i144.preheader, label %vec.epilog.ph429, !prof !1709

vec.epilog.ph429:                                 ; preds = %vector.main.loop.iter.check412, %vec.epilog.iter.check427
  %vec.epilog.resume.val423 = phi i64 [ %n.vec415, %vec.epilog.iter.check427 ], [ 0, %vector.main.loop.iter.check412 ]
  %bc.merge.rdx424 = phi i16 [ %i.ke, %vec.epilog.iter.check427 ], [ 0, %vector.main.loop.iter.check412 ]
  %i.kf = and i64 %.pre275, 3                     ; 2 uses
  %i.kg = icmp eq i64 %i.kf, 0
  %i.kh = select i1 %i.kg, i64 4, i64 %i.kf
  %n.vec430 = sub nsw i64 %.pre275, %i.kh         ; 2 uses
  %i.ki = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx424, i64 0
  br label %vec.epilog.vector.body431

vec.epilog.vector.body431:                        ; preds = %vec.epilog.vector.body431, %vec.epilog.ph429
  %index432 = phi i64 [ %vec.epilog.resume.val423, %vec.epilog.ph429 ], [ %index.next434, %vec.epilog.vector.body431 ] ; 5 uses
  %vec.phi433 = phi <4 x i16> [ %i.ki, %vec.epilog.ph429 ], [ %i.lc, %vec.epilog.vector.body431 ]
  %i.kj = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %index432
  %i.kk = getelementptr [16 x i8], ptr %i.hf, i64 %index432
  %i.kl = getelementptr [16 x i8], ptr %i.hf, i64 %index432
  %i.km = getelementptr [16 x i8], ptr %i.hf, i64 %index432
  %i.kn = getelementptr inbounds nuw i8, ptr %i.kj, i64 14
  %i.ko = getelementptr i8, ptr %i.kk, i64 30
  %i.kp = getelementptr i8, ptr %i.kl, i64 46
  %i.kq = getelementptr i8, ptr %i.km, i64 62
  %i.kr = load i16, ptr %i.kn, align 2, !tbaa !1364
  %i.ks = load i16, ptr %i.ko, align 2, !tbaa !1364
  %i.kt = load i16, ptr %i.kp, align 2, !tbaa !1364
  %i.ku = load i16, ptr %i.kq, align 2, !tbaa !1364
  %i.kv = insertelement <4 x i16> poison, i16 %i.kr, i64 0
  %i.kw = insertelement <4 x i16> %i.kv, i16 %i.ks, i64 1
  %i.kx = insertelement <4 x i16> %i.kw, i16 %i.kt, i64 2
  %i.ky = insertelement <4 x i16> %i.kx, i16 %i.ku, i64 3
  %i.kz = lshr <4 x i16> %i.ky, splat (i16 5)
  %i.la = and <4 x i16> %i.kz, splat (i16 1)
  %i.lb = xor <4 x i16> %i.la, splat (i16 1)
  %i.lc = add <4 x i16> %i.lb, %vec.phi433        ; 2 uses
  %index.next434 = add nuw i64 %index432, 4       ; 2 uses
  %i.ld = icmp eq i64 %index.next434, %n.vec430
  br i1 %i.ld, label %vec.epilog.middle.block435, label %vec.epilog.vector.body431, !llvm.loop !5508

vec.epilog.middle.block435:                       ; preds = %vec.epilog.vector.body431
  %i.le = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.lc)
  br label %.lr.ph.i144.preheader

.lr.ph.i144.preheader:                            ; preds = %iter.check425, %vec.epilog.iter.check427, %vec.epilog.middle.block435
  %indvars.iv.i146.ph = phi i64 [ 0, %iter.check425 ], [ %n.vec415, %vec.epilog.iter.check427 ], [ %n.vec430, %vec.epilog.middle.block435 ]
  %.021.i147.ph = phi i16 [ 0, %iter.check425 ], [ %i.ke, %vec.epilog.iter.check427 ], [ %i.le, %vec.epilog.middle.block435 ]
  br label %.lr.ph.i144

.lr.ph.i144:                                      ; preds = %.lr.ph.i144.preheader, %.lr.ph.i144
  %indvars.iv.i146 = phi i64 [ %indvars.iv.next.i149, %.lr.ph.i144 ], [ %indvars.iv.i146.ph, %.lr.ph.i144.preheader ] ; 2 uses
  %.021.i147 = phi i16 [ %spec.select.i148, %.lr.ph.i144 ], [ %.021.i147.ph, %.lr.ph.i144.preheader ]
  %i.lf = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %indvars.iv.i146
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 14
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !1364
  %i.li = lshr i16 %i.lh, 5
  %i.lj = and i16 %i.li, 1
  %i.lk = xor i16 %i.lj, 1
  %spec.select.i148 = add i16 %i.lk, %.021.i147   ; 2 uses
  %indvars.iv.next.i149 = add nuw nsw i64 %indvars.iv.i146, 1 ; 2 uses
  %exitcond.not.i150 = icmp eq i64 %indvars.iv.next.i149, %.pre275
  br i1 %exitcond.not.i150, label %._crit_edge.i151, label %.lr.ph.i144, !llvm.loop !5509

._crit_edge.i151:                                 ; preds = %.lr.ph.i144, %.preheader.i142
  %.0.lcssa.i152 = phi i16 [ 0, %.preheader.i142 ], [ %spec.select.i148, %.lr.ph.i144 ] ; 2 uses
  %i.ll = getelementptr inbounds nuw [16 x i8], ptr %i.hf, i64 %.pre275
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 14
  %i.ln = load i16, ptr %i.lm, align 2, !tbaa !1364
  %i.lo = and i16 %i.ln, 32
  %.not.i153 = icmp eq i16 %i.lo, 0
  br i1 %.not.i153, label %sqlite3TableColumnToStorage.exit155, label %bb.q

bb.q:                                             ; preds = %._crit_edge.i151
  %i.lp = getelementptr inbounds nuw i8, ptr %i.gw, i64 56
  %i.lq = load i16, ptr %i.lp, align 8, !tbaa !1251
  %i.lr = sub i16 %i.gy, %.0.lcssa.i152
  %i.ls = add i16 %i.lr, %i.lq
  br label %sqlite3TableColumnToStorage.exit155

sqlite3TableColumnToStorage.exit155:              ; preds = %sqlite3GetTempReg.exit, %._crit_edge.i151, %bb.q
  %.018.i154 = phi i16 [ %i.gy, %sqlite3GetTempReg.exit ], [ %i.ls, %bb.q ], [ %.0.lcssa.i152, %._crit_edge.i151 ]
  %i.lt = sext i16 %.018.i154 to i32
  %i.lu = add i32 %6, 1
  %i.lv = add i32 %i.lu, %i.lt                    ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 12 uses
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !703 ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %.0.i, i64 148 ; 5 uses
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !1164
  %.not.i.i156 = icmp sgt i32 %i.lz, %i.lx
  br i1 %.not.i.i156, label %bb.s, label %bb.r

bb.r:                                             ; preds = %sqlite3TableColumnToStorage.exit155
  %i.ma = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 83, i32 noundef %i.lv, i32 noundef %.0.i140, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit158

bb.s:                                             ; preds = %sqlite3TableColumnToStorage.exit155
  %i.mb = add nsw i32 %i.lx, 1
  store i32 %i.mb, ptr %i.lw, align 8, !tbaa !703
  %i.mc = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !702
  %i.me = sext i32 %i.lx to i64
  %i.mf = getelementptr inbounds [32 x i8], ptr %i.md, i64 %i.me ; 6 uses
  store i8 83, ptr %i.mf, align 8, !tbaa !929
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  store i16 0, ptr %i.mg, align 2, !tbaa !930
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  store i32 %i.lv, ptr %i.mh, align 4, !tbaa !926
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  store i32 %.0.i140, ptr %i.mi, align 8, !tbaa !927
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mf, i64 12
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  store i8 0, ptr %i.mk, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.mj, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit158

sqlite3VdbeAddOp2.exit158:                        ; preds = %bb.r, %bb.s
  %i.ml = load i32, ptr %i.lw, align 8, !tbaa !703 ; 4 uses
  %i.mm = load i32, ptr %i.ly, align 4, !tbaa !1164
end_hunk_12
begin_hunk_13_@fkLookupParent:bb.a
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !702 ; 2 uses
  %i.pb = sext i32 %.val135 to i64
  %i.pc = getelementptr [32 x i8], ptr %i.pa, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 -56
  store i32 %.val135, ptr %i.pd, align 8, !tbaa !927
  %i.pe = sext i32 %.0.i.i160 to i64
  %i.pf = getelementptr inbounds [32 x i8], ptr %i.pa, i64 %i.pe
  br label %sqlite3VdbeJumpHere.exit171

sqlite3VdbeJumpHere.exit171:                      ; preds = %sqlite3VdbeJumpHere.exit, %bb.ad
  %.0.i.i.i170 = phi ptr [ %i.pf, %bb.ad ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeJumpHere.exit ]
  %i.pg = getelementptr inbounds nuw i8, ptr %.0.i.i.i170, i64 8
  store i32 %.val135, ptr %i.pg, align 8, !tbaa !927
  %.not.i172 = icmp eq i32 %.0.i140, 0
  br i1 %.not.i172, label %sqlite3ReleaseTempReg.exit, label %bb.ae

bb.ae:                                            ; preds = %sqlite3VdbeJumpHere.exit171
  %i.ph = load i8, ptr %i.gl, align 1, !tbaa !2137 ; 3 uses
  %i.pi = icmp ult i8 %i.ph, 8
  br i1 %i.pi, label %bb.af, label %sqlite3ReleaseTempReg.exit

bb.af:                                            ; preds = %bb.ae
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.pk = add nuw nsw i8 %i.ph, 1
  store i8 %i.pk, ptr %i.gl, align 1, !tbaa !2137
  %i.pl = zext nneg i8 %i.ph to i64
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %i.pl
  store i32 %.0.i140, ptr %i.pm, align 4, !tbaa !570
  br label %sqlite3ReleaseTempReg.exit

bb.ag:                                            ; preds = %bb.m
  %i.pn = icmp eq i32 %.lcssa, 1                  ; 2 uses
  br i1 %i.pn, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 31 ; 2 uses
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !2137 ; 2 uses
  %i.pq = icmp eq i8 %i.pp, 0
  br i1 %i.pq, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !1174
  %i.pt = add nsw i32 %i.ps, 1                    ; 2 uses
  store i32 %i.pt, ptr %i.pr, align 4, !tbaa !1174
  br label %sqlite3GetTempRange.exit

bb.aj:                                            ; preds = %bb.ah
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.pv = add i8 %i.pp, -1                        ; 2 uses
  store i8 %i.pv, ptr %i.po, align 1, !tbaa !2137
  %i.pw = zext i8 %i.pv to i64
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %i.pu, i64 %i.pw
  %i.py = load i32, ptr %i.px, align 4, !tbaa !570
  br label %sqlite3GetTempRange.exit

bb.ak:                                            ; preds = %bb.ag
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !2138 ; 2 uses
  %.not.i173 = icmp sgt i32 %.lcssa, %i.qa
  br i1 %.not.i173, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !2172 ; 2 uses
  %i.qd = add nsw i32 %i.qc, %.lcssa
  store i32 %i.qd, ptr %i.qb, align 8, !tbaa !2172
  %i.qe = sub nsw i32 %i.qa, %.lcssa
  store i32 %i.qe, ptr %i.pz, align 4, !tbaa !2138
  br label %sqlite3GetTempRange.exit

bb.am:                                            ; preds = %bb.ak
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !1174 ; 2 uses
  %i.qh = add nsw i32 %i.qg, 1
  %i.qi = add nsw i32 %i.qg, %.lcssa
  store i32 %i.qi, ptr %i.qf, align 4, !tbaa !1174
  br label %sqlite3GetTempRange.exit

sqlite3GetTempRange.exit:                         ; preds = %bb.ai, %bb.aj, %bb.al, %bb.am
  %.014.i = phi i32 [ %i.qh, %bb.am ], [ %i.qc, %bb.al ], [ %i.pt, %bb.ai ], [ %i.py, %bb.aj ] ; 7 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !1802 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 10 uses
  %i.qm = load i32, ptr %i.ql, align 8, !tbaa !703 ; 3 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %.0.i, i64 148 ; 5 uses
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !1164
  %.not.i174 = icmp sgt i32 %i.qo, %i.qm
  br i1 %.not.i174, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %sqlite3GetTempRange.exit
  %i.qp = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 114, i32 noundef %i.q, i32 noundef %i.qk, i32 noundef %1), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit176

bb.ao:                                            ; preds = %sqlite3GetTempRange.exit
  %i.qq = add nsw i32 %i.qm, 1
  store i32 %i.qq, ptr %i.ql, align 8, !tbaa !703
  %i.qr = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !702
  %i.qt = sext i32 %i.qm to i64
  %i.qu = getelementptr inbounds [32 x i8], ptr %i.qs, i64 %i.qt ; 7 uses
  store i8 114, ptr %i.qu, align 8, !tbaa !929
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 2
  store i16 0, ptr %i.qv, align 2, !tbaa !930
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qu, i64 4
  store i32 %i.q, ptr %i.qw, align 4, !tbaa !926
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  store i32 %i.qk, ptr %i.qx, align 8, !tbaa !927
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qu, i64 12
  store i32 %1, ptr %i.qy, align 4, !tbaa !928
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qu, i64 1
  store i8 0, ptr %i.ra, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qz, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit176

sqlite3VdbeAddOp3.exit176:                        ; preds = %bb.an, %bb.ao
  %i.rb = load ptr, ptr %i.a, align 8, !tbaa !1195 ; 3 uses
  %i.rc = tail call fastcc ptr @sqlite3KeyInfoOfIndex(ptr noundef nonnull %0, ptr noundef nonnull %3), !inline_history !2217 ; 3 uses
  %.not.i177 = icmp eq ptr %i.rc, null
  br i1 %.not.i177, label %sqlite3VdbeSetP4KeyInfo.exit, label %bb.ap

bb.ap:                                            ; preds = %sqlite3VdbeAddOp3.exit176
  %i.rd = load ptr, ptr %i.rb, align 8, !tbaa !679 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 103
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !918
  %.not.i.i178 = icmp eq i8 %i.rf, 0
  br i1 %.not.i.i178, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rd, i64 768
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !639
  %i.ri = icmp eq ptr %i.rh, null
  br i1 %i.ri, label %bb.ar, label %sqlite3VdbeSetP4KeyInfo.exit

bb.ar:                                            ; preds = %bb.aq
  tail call fastcc void @sqlite3KeyInfoUnref(ptr noundef nonnull %i.rc), !inline_history !2217
  br label %sqlite3VdbeSetP4KeyInfo.exit

bb.as:                                            ; preds = %bb.ap
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rb, i64 136
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !702
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rb, i64 144
  %i.rm = load i32, ptr %i.rl, align 8, !tbaa !703
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr [32 x i8], ptr %i.rk, i64 %i.rn ; 2 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 -31
  store i8 -9, ptr %i.rp, align 1, !tbaa !1166
  %i.rq = getelementptr i8, ptr %i.ro, i64 -16
  store ptr %i.rc, ptr %i.rq, align 8, !tbaa !733
  br label %sqlite3VdbeSetP4KeyInfo.exit

sqlite3VdbeSetP4KeyInfo.exit:                     ; preds = %sqlite3VdbeAddOp3.exit176, %bb.aq, %bb.ar, %bb.as
  %i.rr = icmp sgt i32 %.lcssa, 0                 ; 2 uses
  br i1 %i.rr, label %.lr.ph257, label %._crit_edge258

.lr.ph257:                                        ; preds = %sqlite3VdbeSetP4KeyInfo.exit
  %i.rs = add i32 %6, 1
  %i.rt = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.ru = zext i32 %.014.i to i64
  %wide.trip.count = zext nneg i32 %.lcssa to i64
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph257, %sqlite3VdbeAddOp2.exit196
  %indvars.iv265 = phi i64 [ 0, %.lr.ph257 ], [ %indvars.iv.next266, %sqlite3VdbeAddOp2.exit196 ] ; 3 uses
  %i.rv = load ptr, ptr %4, align 8, !tbaa !2032  ; 3 uses
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv265
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !570 ; 2 uses
  %i.ry = trunc i32 %i.rx to i16                  ; 4 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rv, i64 48
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !1083
  %i.sb = and i32 %i.sa, 32
  %i.sc = icmp eq i32 %i.sb, 0
  %i.sd = icmp slt i16 %i.ry, 0
  %or.cond.i179 = or i1 %i.sd, %i.sc
  br i1 %or.cond.i179, label %sqlite3TableColumnToStorage.exit193, label %.preheader.i180

.preheader.i180:                                  ; preds = %bb.at
  %sext252 = and i32 %i.rx, 32767                 ; 3 uses
  %.not23.i181 = icmp eq i16 %i.ry, 0
  %i.se = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !1149 ; 22 uses
  %.pre280 = zext nneg i32 %sext252 to i64        ; 6 uses
  br i1 %.not23.i181, label %._crit_edge.i189, label %iter.check344

iter.check344:                                    ; preds = %.preheader.i180
  %min.iters.check330 = icmp samesign ult i32 %sext252, 5
  br i1 %min.iters.check330, label %.lr.ph.i182.preheader, label %vector.main.loop.iter.check331

vector.main.loop.iter.check331:                   ; preds = %iter.check344
  %min.iters.check332 = icmp samesign ult i32 %sext252, 17
  br i1 %min.iters.check332, label %vec.epilog.ph348, label %vector.ph333

vector.ph333:                                     ; preds = %vector.main.loop.iter.check331
  %i.sg = and i64 %.pre280, 15                    ; 2 uses
  %i.sh = icmp eq i64 %i.sg, 0
  %i.si = select i1 %i.sh, i64 16, i64 %i.sg      ; 2 uses
  %n.vec334 = sub nsw i64 %.pre280, %i.si         ; 3 uses
  br label %vector.body335

vector.body335:                                   ; preds = %vector.body335, %vector.ph333
  %index336 = phi i64 [ 0, %vector.ph333 ], [ %index.next339, %vector.body335 ] ; 17 uses
  %vec.phi337 = phi <8 x i16> [ zeroinitializer, %vector.ph333 ], [ %i.vb, %vector.body335 ]
  %vec.phi338 = phi <8 x i16> [ zeroinitializer, %vector.ph333 ], [ %i.vc, %vector.body335 ]
  %i.sj = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sk = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sl = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sm = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sn = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.so = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sp = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sq = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sr = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.ss = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.st = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.su = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sv = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sw = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sx = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sy = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index336
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sj, i64 14
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sk, i64 30
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sl, i64 46
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sm, i64 62
  %i.td = getelementptr inbounds nuw i8, ptr %i.sn, i64 78
  %i.te = getelementptr inbounds nuw i8, ptr %i.so, i64 94
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sp, i64 110
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sq, i64 126
  %i.th = getelementptr inbounds nuw i8, ptr %i.sr, i64 142
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ss, i64 158
  %i.tj = getelementptr inbounds nuw i8, ptr %i.st, i64 174
  %i.tk = getelementptr inbounds nuw i8, ptr %i.su, i64 190
  %i.tl = getelementptr inbounds nuw i8, ptr %i.sv, i64 206
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sw, i64 222
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sx, i64 238
  %i.to = getelementptr inbounds nuw i8, ptr %i.sy, i64 254
  %i.tp = load i16, ptr %i.sz, align 2, !tbaa !1364
  %i.tq = load i16, ptr %i.ta, align 2, !tbaa !1364
  %i.tr = load i16, ptr %i.tb, align 2, !tbaa !1364
  %i.ts = load i16, ptr %i.tc, align 2, !tbaa !1364
  %i.tt = load i16, ptr %i.td, align 2, !tbaa !1364
  %i.tu = load i16, ptr %i.te, align 2, !tbaa !1364
  %i.tv = load i16, ptr %i.tf, align 2, !tbaa !1364
  %i.tw = load i16, ptr %i.tg, align 2, !tbaa !1364
  %i.tx = insertelement <8 x i16> poison, i16 %i.tp, i64 0
  %i.ty = insertelement <8 x i16> %i.tx, i16 %i.tq, i64 1
  %i.tz = insertelement <8 x i16> %i.ty, i16 %i.tr, i64 2
  %i.ua = insertelement <8 x i16> %i.tz, i16 %i.ts, i64 3
  %i.ub = insertelement <8 x i16> %i.ua, i16 %i.tt, i64 4
  %i.uc = insertelement <8 x i16> %i.ub, i16 %i.tu, i64 5
  %i.ud = insertelement <8 x i16> %i.uc, i16 %i.tv, i64 6
  %i.ue = insertelement <8 x i16> %i.ud, i16 %i.tw, i64 7
  %i.uf = load i16, ptr %i.th, align 2, !tbaa !1364
  %i.ug = load i16, ptr %i.ti, align 2, !tbaa !1364
  %i.uh = load i16, ptr %i.tj, align 2, !tbaa !1364
  %i.ui = load i16, ptr %i.tk, align 2, !tbaa !1364
  %i.uj = load i16, ptr %i.tl, align 2, !tbaa !1364
  %i.uk = load i16, ptr %i.tm, align 2, !tbaa !1364
  %i.ul = load i16, ptr %i.tn, align 2, !tbaa !1364
  %i.um = load i16, ptr %i.to, align 2, !tbaa !1364
  %i.un = insertelement <8 x i16> poison, i16 %i.uf, i64 0
  %i.uo = insertelement <8 x i16> %i.un, i16 %i.ug, i64 1
  %i.up = insertelement <8 x i16> %i.uo, i16 %i.uh, i64 2
  %i.uq = insertelement <8 x i16> %i.up, i16 %i.ui, i64 3
  %i.ur = insertelement <8 x i16> %i.uq, i16 %i.uj, i64 4
  %i.us = insertelement <8 x i16> %i.ur, i16 %i.uk, i64 5
  %i.ut = insertelement <8 x i16> %i.us, i16 %i.ul, i64 6
  %i.uu = insertelement <8 x i16> %i.ut, i16 %i.um, i64 7
  %i.uv = lshr <8 x i16> %i.ue, splat (i16 5)
  %i.uw = lshr <8 x i16> %i.uu, splat (i16 5)
  %i.ux = and <8 x i16> %i.uv, splat (i16 1)
  %i.uy = and <8 x i16> %i.uw, splat (i16 1)
  %i.uz = xor <8 x i16> %i.ux, splat (i16 1)
  %i.va = xor <8 x i16> %i.uy, splat (i16 1)
  %i.vb = add <8 x i16> %i.uz, %vec.phi337        ; 2 uses
  %i.vc = add <8 x i16> %i.va, %vec.phi338        ; 2 uses
  %index.next339 = add nuw i64 %index336, 16      ; 2 uses
  %i.vd = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.vd, label %vec.epilog.iter.check346, label %vector.body335, !llvm.loop !5510

vec.epilog.iter.check346:                         ; preds = %vector.body335
  %bin.rdx341 = add <8 x i16> %i.vc, %i.vb
  %i.ve = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx341) ; 2 uses
  %min.epilog.iters.check347 = icmp samesign ult i64 %i.si, 5
  br i1 %min.epilog.iters.check347, label %.lr.ph.i182.preheader, label %vec.epilog.ph348, !prof !1709

vec.epilog.ph348:                                 ; preds = %vector.main.loop.iter.check331, %vec.epilog.iter.check346
  %vec.epilog.resume.val342 = phi i64 [ %n.vec334, %vec.epilog.iter.check346 ], [ 0, %vector.main.loop.iter.check331 ]
  %bc.merge.rdx343 = phi i16 [ %i.ve, %vec.epilog.iter.check346 ], [ 0, %vector.main.loop.iter.check331 ]
  %i.vf = and i64 %.pre280, 3                     ; 2 uses
  %i.vg = icmp eq i64 %i.vf, 0
  %i.vh = select i1 %i.vg, i64 4, i64 %i.vf
  %n.vec349 = sub nsw i64 %.pre280, %i.vh         ; 2 uses
  %i.vi = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx343, i64 0
  br label %vec.epilog.vector.body350

vec.epilog.vector.body350:                        ; preds = %vec.epilog.vector.body350, %vec.epilog.ph348
  %index351 = phi i64 [ %vec.epilog.resume.val342, %vec.epilog.ph348 ], [ %index.next353, %vec.epilog.vector.body350 ] ; 5 uses
  %vec.phi352 = phi <4 x i16> [ %i.vi, %vec.epilog.ph348 ], [ %i.wc, %vec.epilog.vector.body350 ]
  %i.vj = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %index351
  %i.vk = getelementptr [16 x i8], ptr %i.sf, i64 %index351
  %i.vl = getelementptr [16 x i8], ptr %i.sf, i64 %index351
  %i.vm = getelementptr [16 x i8], ptr %i.sf, i64 %index351
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vj, i64 14
  %i.vo = getelementptr i8, ptr %i.vk, i64 30
  %i.vp = getelementptr i8, ptr %i.vl, i64 46
  %i.vq = getelementptr i8, ptr %i.vm, i64 62
  %i.vr = load i16, ptr %i.vn, align 2, !tbaa !1364
  %i.vs = load i16, ptr %i.vo, align 2, !tbaa !1364
  %i.vt = load i16, ptr %i.vp, align 2, !tbaa !1364
  %i.vu = load i16, ptr %i.vq, align 2, !tbaa !1364
  %i.vv = insertelement <4 x i16> poison, i16 %i.vr, i64 0
  %i.vw = insertelement <4 x i16> %i.vv, i16 %i.vs, i64 1
  %i.vx = insertelement <4 x i16> %i.vw, i16 %i.vt, i64 2
  %i.vy = insertelement <4 x i16> %i.vx, i16 %i.vu, i64 3
  %i.vz = lshr <4 x i16> %i.vy, splat (i16 5)
  %i.wa = and <4 x i16> %i.vz, splat (i16 1)
  %i.wb = xor <4 x i16> %i.wa, splat (i16 1)
  %i.wc = add <4 x i16> %i.wb, %vec.phi352        ; 2 uses
  %index.next353 = add nuw i64 %index351, 4       ; 2 uses
  %i.wd = icmp eq i64 %index.next353, %n.vec349
  br i1 %i.wd, label %vec.epilog.middle.block354, label %vec.epilog.vector.body350, !llvm.loop !5511

vec.epilog.middle.block354:                       ; preds = %vec.epilog.vector.body350
  %i.we = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.wc)
  br label %.lr.ph.i182.preheader

.lr.ph.i182.preheader:                            ; preds = %iter.check344, %vec.epilog.iter.check346, %vec.epilog.middle.block354
  %indvars.iv.i184.ph = phi i64 [ 0, %iter.check344 ], [ %n.vec334, %vec.epilog.iter.check346 ], [ %n.vec349, %vec.epilog.middle.block354 ]
  %.021.i185.ph = phi i16 [ 0, %iter.check344 ], [ %i.ve, %vec.epilog.iter.check346 ], [ %i.we, %vec.epilog.middle.block354 ]
  br label %.lr.ph.i182

.lr.ph.i182:                                      ; preds = %.lr.ph.i182.preheader, %.lr.ph.i182
  %indvars.iv.i184 = phi i64 [ %indvars.iv.next.i187, %.lr.ph.i182 ], [ %indvars.iv.i184.ph, %.lr.ph.i182.preheader ] ; 2 uses
  %.021.i185 = phi i16 [ %spec.select.i186, %.lr.ph.i182 ], [ %.021.i185.ph, %.lr.ph.i182.preheader ]
  %i.wf = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %indvars.iv.i184
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 14
  %i.wh = load i16, ptr %i.wg, align 2, !tbaa !1364
  %i.wi = lshr i16 %i.wh, 5
  %i.wj = and i16 %i.wi, 1
  %i.wk = xor i16 %i.wj, 1
  %spec.select.i186 = add i16 %i.wk, %.021.i185   ; 2 uses
  %indvars.iv.next.i187 = add nuw nsw i64 %indvars.iv.i184, 1 ; 2 uses
  %exitcond.not.i188 = icmp eq i64 %indvars.iv.next.i187, %.pre280
  br i1 %exitcond.not.i188, label %._crit_edge.i189, label %.lr.ph.i182, !llvm.loop !5512

._crit_edge.i189:                                 ; preds = %.lr.ph.i182, %.preheader.i180
  %.0.lcssa.i190 = phi i16 [ 0, %.preheader.i180 ], [ %spec.select.i186, %.lr.ph.i182 ] ; 2 uses
  %i.wl = getelementptr inbounds nuw [16 x i8], ptr %i.sf, i64 %.pre280
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 14
  %i.wn = load i16, ptr %i.wm, align 2, !tbaa !1364
  %i.wo = and i16 %i.wn, 32
  %.not.i191 = icmp eq i16 %i.wo, 0
  br i1 %.not.i191, label %sqlite3TableColumnToStorage.exit193, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i189
  %i.wp = getelementptr inbounds nuw i8, ptr %i.rv, i64 56
  %i.wq = load i16, ptr %i.wp, align 8, !tbaa !1251
  %i.wr = sub i16 %i.ry, %.0.lcssa.i190
  %i.ws = add i16 %i.wr, %i.wq
  br label %sqlite3TableColumnToStorage.exit193

sqlite3TableColumnToStorage.exit193:              ; preds = %bb.at, %._crit_edge.i189, %bb.au
  %.018.i192 = phi i16 [ %i.ry, %bb.at ], [ %i.ws, %bb.au ], [ %.0.lcssa.i190, %._crit_edge.i189 ]
  %i.wt = sext i16 %.018.i192 to i32
  %i.wu = add i32 %i.rs, %i.wt                    ; 2 uses
  %i.wv = add nuw i64 %indvars.iv265, %i.ru       ; 2 uses
  %i.ww = load i32, ptr %i.ql, align 8, !tbaa !703 ; 3 uses
  %i.wx = load i32, ptr %i.qn, align 4, !tbaa !1164
  %.not.i.i194 = icmp sgt i32 %i.wx, %i.ww
  br i1 %.not.i.i194, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %sqlite3TableColumnToStorage.exit193
  %i.wy = trunc i64 %i.wv to i32
  %i.wz = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 82, i32 noundef %i.wu, i32 noundef %i.wy, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit196

bb.aw:                                            ; preds = %sqlite3TableColumnToStorage.exit193
  %i.xa = add nsw i32 %i.ww, 1
  store i32 %i.xa, ptr %i.ql, align 8, !tbaa !703
  %i.xb = load ptr, ptr %i.rt, align 8, !tbaa !702
  %i.xc = sext i32 %i.ww to i64
  %i.xd = getelementptr inbounds [32 x i8], ptr %i.xb, i64 %i.xc ; 6 uses
  store i8 82, ptr %i.xd, align 8, !tbaa !929
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 2
  store i16 0, ptr %i.xe, align 2, !tbaa !930
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xd, i64 4
  store i32 %i.wu, ptr %i.xf, align 4, !tbaa !926
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xd, i64 8
  %i.xh = trunc i64 %i.wv to i32
  store i32 %i.xh, ptr %i.xg, align 8, !tbaa !927
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xd, i64 12
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xd, i64 1
  store i8 0, ptr %i.xj, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.xi, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit196

sqlite3VdbeAddOp2.exit196:                        ; preds = %bb.av, %bb.aw
  %indvars.iv.next266 = add nuw nsw i64 %indvars.iv265, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next266, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge258, label %bb.at, !llvm.loop !5513

._crit_edge258:                                   ; preds = %sqlite3VdbeAddOp2.exit196, %sqlite3VdbeSetP4KeyInfo.exit
  %i.xk = load ptr, ptr %4, align 8, !tbaa !2032
  %i.xl = icmp eq ptr %2, %i.xk
  %i.xm = icmp eq i32 %7, 1
  %or.cond3 = and i1 %i.xm, %i.xl
  br i1 %or.cond3, label %bb.ax, label %sqlite3VdbeGoto.exit233

bb.ax:                                            ; preds = %._crit_edge258
  %.val = load i32, ptr %i.ql, align 8, !tbaa !703 ; 3 uses
  %i.xn = add i32 %.lcssa, 1
  %i.xo = add i32 %i.xn, %.val                    ; 2 uses
  br i1 %i.rr, label %.lr.ph261, label %._crit_edge262

.lr.ph261:                                        ; preds = %bb.ax
  %i.xp = add i32 %6, 1                           ; 2 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.xr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.xs = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.xt = getelementptr inbounds nuw i8, ptr %.0.i, i64 136 ; 2 uses
  %wide.trip.count271 = zext nneg i32 %.lcssa to i64
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph261, %sqlite3VdbeChangeP5.exit230
  %i.xu = phi i32 [ %.val, %.lr.ph261 ], [ %i.ail, %sqlite3VdbeChangeP5.exit230 ] ; 3 uses
  %indvars.iv268 = phi i64 [ 0, %.lr.ph261 ], [ %indvars.iv.next269, %sqlite3VdbeChangeP5.exit230 ] ; 3 uses
  %i.xv = load ptr, ptr %4, align 8, !tbaa !2032  ; 3 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv268
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !570 ; 2 uses
  %i.xy = trunc i32 %i.xx to i16                  ; 4 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xv, i64 48
  %i.ya = load i32, ptr %i.xz, align 8, !tbaa !1083
  %i.yb = and i32 %i.ya, 32
  %i.yc = icmp eq i32 %i.yb, 0
  %i.yd = icmp slt i16 %i.xy, 0
  %or.cond.i197 = or i1 %i.yd, %i.yc
  br i1 %or.cond.i197, label %sqlite3TableColumnToStorage.exit211, label %.preheader.i198

.preheader.i198:                                  ; preds = %bb.ay
  %sext = and i32 %i.xx, 32767                    ; 3 uses
  %.not23.i199 = icmp eq i16 %i.xy, 0
  %i.ye = getelementptr inbounds nuw i8, ptr %i.xv, i64 8
  %i.yf = load ptr, ptr %i.ye, align 8, !tbaa !1149 ; 22 uses
  %.pre278 = zext nneg i32 %sext to i64           ; 6 uses
  br i1 %.not23.i199, label %._crit_edge.i207, label %iter.check398

iter.check398:                                    ; preds = %.preheader.i198
  %min.iters.check384 = icmp samesign ult i32 %sext, 5
  br i1 %min.iters.check384, label %.lr.ph.i200.preheader, label %vector.main.loop.iter.check385

vector.main.loop.iter.check385:                   ; preds = %iter.check398
  %min.iters.check386 = icmp samesign ult i32 %sext, 17
  br i1 %min.iters.check386, label %vec.epilog.ph402, label %vector.ph387

vector.ph387:                                     ; preds = %vector.main.loop.iter.check385
  %i.yg = and i64 %.pre278, 15                    ; 2 uses
  %i.yh = icmp eq i64 %i.yg, 0
  %i.yi = select i1 %i.yh, i64 16, i64 %i.yg      ; 2 uses
  %n.vec388 = sub nsw i64 %.pre278, %i.yi         ; 3 uses
  br label %vector.body389

vector.body389:                                   ; preds = %vector.body389, %vector.ph387
  %index390 = phi i64 [ 0, %vector.ph387 ], [ %index.next393, %vector.body389 ] ; 17 uses
  %vec.phi391 = phi <8 x i16> [ zeroinitializer, %vector.ph387 ], [ %i.abb, %vector.body389 ]
  %vec.phi392 = phi <8 x i16> [ zeroinitializer, %vector.ph387 ], [ %i.abc, %vector.body389 ]
  %i.yj = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yk = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yl = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.ym = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yn = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yo = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yp = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yq = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yr = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.ys = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yt = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yu = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yv = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yw = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yx = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yy = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index390
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yj, i64 14
  %i.za = getelementptr inbounds nuw i8, ptr %i.yk, i64 30
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yl, i64 46
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ym, i64 62
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yn, i64 78
  %i.ze = getelementptr inbounds nuw i8, ptr %i.yo, i64 94
  %i.zf = getelementptr inbounds nuw i8, ptr %i.yp, i64 110
  %i.zg = getelementptr inbounds nuw i8, ptr %i.yq, i64 126
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yr, i64 142
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ys, i64 158
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yt, i64 174
  %i.zk = getelementptr inbounds nuw i8, ptr %i.yu, i64 190
  %i.zl = getelementptr inbounds nuw i8, ptr %i.yv, i64 206
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yw, i64 222
  %i.zn = getelementptr inbounds nuw i8, ptr %i.yx, i64 238
  %i.zo = getelementptr inbounds nuw i8, ptr %i.yy, i64 254
  %i.zp = load i16, ptr %i.yz, align 2, !tbaa !1364
  %i.zq = load i16, ptr %i.za, align 2, !tbaa !1364
  %i.zr = load i16, ptr %i.zb, align 2, !tbaa !1364
  %i.zs = load i16, ptr %i.zc, align 2, !tbaa !1364
  %i.zt = load i16, ptr %i.zd, align 2, !tbaa !1364
  %i.zu = load i16, ptr %i.ze, align 2, !tbaa !1364
  %i.zv = load i16, ptr %i.zf, align 2, !tbaa !1364
  %i.zw = load i16, ptr %i.zg, align 2, !tbaa !1364
  %i.zx = insertelement <8 x i16> poison, i16 %i.zp, i64 0
  %i.zy = insertelement <8 x i16> %i.zx, i16 %i.zq, i64 1
  %i.zz = insertelement <8 x i16> %i.zy, i16 %i.zr, i64 2
  %i.aaa = insertelement <8 x i16> %i.zz, i16 %i.zs, i64 3
  %i.aab = insertelement <8 x i16> %i.aaa, i16 %i.zt, i64 4
  %i.aac = insertelement <8 x i16> %i.aab, i16 %i.zu, i64 5
  %i.aad = insertelement <8 x i16> %i.aac, i16 %i.zv, i64 6
  %i.aae = insertelement <8 x i16> %i.aad, i16 %i.zw, i64 7
  %i.aaf = load i16, ptr %i.zh, align 2, !tbaa !1364
  %i.aag = load i16, ptr %i.zi, align 2, !tbaa !1364
  %i.aah = load i16, ptr %i.zj, align 2, !tbaa !1364
  %i.aai = load i16, ptr %i.zk, align 2, !tbaa !1364
  %i.aaj = load i16, ptr %i.zl, align 2, !tbaa !1364
  %i.aak = load i16, ptr %i.zm, align 2, !tbaa !1364
  %i.aal = load i16, ptr %i.zn, align 2, !tbaa !1364
  %i.aam = load i16, ptr %i.zo, align 2, !tbaa !1364
  %i.aan = insertelement <8 x i16> poison, i16 %i.aaf, i64 0
  %i.aao = insertelement <8 x i16> %i.aan, i16 %i.aag, i64 1
  %i.aap = insertelement <8 x i16> %i.aao, i16 %i.aah, i64 2
  %i.aaq = insertelement <8 x i16> %i.aap, i16 %i.aai, i64 3
  %i.aar = insertelement <8 x i16> %i.aaq, i16 %i.aaj, i64 4
  %i.aas = insertelement <8 x i16> %i.aar, i16 %i.aak, i64 5
  %i.aat = insertelement <8 x i16> %i.aas, i16 %i.aal, i64 6
  %i.aau = insertelement <8 x i16> %i.aat, i16 %i.aam, i64 7
  %i.aav = lshr <8 x i16> %i.aae, splat (i16 5)
  %i.aaw = lshr <8 x i16> %i.aau, splat (i16 5)
  %i.aax = and <8 x i16> %i.aav, splat (i16 1)
  %i.aay = and <8 x i16> %i.aaw, splat (i16 1)
  %i.aaz = xor <8 x i16> %i.aax, splat (i16 1)
  %i.aba = xor <8 x i16> %i.aay, splat (i16 1)
  %i.abb = add <8 x i16> %i.aaz, %vec.phi391      ; 2 uses
  %i.abc = add <8 x i16> %i.aba, %vec.phi392      ; 2 uses
  %index.next393 = add nuw i64 %index390, 16      ; 2 uses
  %i.abd = icmp eq i64 %index.next393, %n.vec388
  br i1 %i.abd, label %vec.epilog.iter.check400, label %vector.body389, !llvm.loop !5514

vec.epilog.iter.check400:                         ; preds = %vector.body389
  %bin.rdx395 = add <8 x i16> %i.abc, %i.abb
  %i.abe = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx395) ; 2 uses
  %min.epilog.iters.check401 = icmp samesign ult i64 %i.yi, 5
  br i1 %min.epilog.iters.check401, label %.lr.ph.i200.preheader, label %vec.epilog.ph402, !prof !1709

vec.epilog.ph402:                                 ; preds = %vector.main.loop.iter.check385, %vec.epilog.iter.check400
  %vec.epilog.resume.val396 = phi i64 [ %n.vec388, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check385 ]
  %bc.merge.rdx397 = phi i16 [ %i.abe, %vec.epilog.iter.check400 ], [ 0, %vector.main.loop.iter.check385 ]
  %i.abf = and i64 %.pre278, 3                    ; 2 uses
  %i.abg = icmp eq i64 %i.abf, 0
  %i.abh = select i1 %i.abg, i64 4, i64 %i.abf
  %n.vec403 = sub nsw i64 %.pre278, %i.abh        ; 2 uses
  %i.abi = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx397, i64 0
  br label %vec.epilog.vector.body404

vec.epilog.vector.body404:                        ; preds = %vec.epilog.vector.body404, %vec.epilog.ph402
  %index405 = phi i64 [ %vec.epilog.resume.val396, %vec.epilog.ph402 ], [ %index.next407, %vec.epilog.vector.body404 ] ; 5 uses
  %vec.phi406 = phi <4 x i16> [ %i.abi, %vec.epilog.ph402 ], [ %i.acc, %vec.epilog.vector.body404 ]
  %i.abj = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %index405
  %i.abk = getelementptr [16 x i8], ptr %i.yf, i64 %index405
  %i.abl = getelementptr [16 x i8], ptr %i.yf, i64 %index405
  %i.abm = getelementptr [16 x i8], ptr %i.yf, i64 %index405
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 14
  %i.abo = getelementptr i8, ptr %i.abk, i64 30
  %i.abp = getelementptr i8, ptr %i.abl, i64 46
  %i.abq = getelementptr i8, ptr %i.abm, i64 62
  %i.abr = load i16, ptr %i.abn, align 2, !tbaa !1364
  %i.abs = load i16, ptr %i.abo, align 2, !tbaa !1364
  %i.abt = load i16, ptr %i.abp, align 2, !tbaa !1364
  %i.abu = load i16, ptr %i.abq, align 2, !tbaa !1364
  %i.abv = insertelement <4 x i16> poison, i16 %i.abr, i64 0
  %i.abw = insertelement <4 x i16> %i.abv, i16 %i.abs, i64 1
  %i.abx = insertelement <4 x i16> %i.abw, i16 %i.abt, i64 2
  %i.aby = insertelement <4 x i16> %i.abx, i16 %i.abu, i64 3
  %i.abz = lshr <4 x i16> %i.aby, splat (i16 5)
  %i.aca = and <4 x i16> %i.abz, splat (i16 1)
  %i.acb = xor <4 x i16> %i.aca, splat (i16 1)
  %i.acc = add <4 x i16> %i.acb, %vec.phi406      ; 2 uses
  %index.next407 = add nuw i64 %index405, 4       ; 2 uses
  %i.acd = icmp eq i64 %index.next407, %n.vec403
  br i1 %i.acd, label %vec.epilog.middle.block408, label %vec.epilog.vector.body404, !llvm.loop !5515

vec.epilog.middle.block408:                       ; preds = %vec.epilog.vector.body404
  %i.ace = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.acc)
  br label %.lr.ph.i200.preheader

.lr.ph.i200.preheader:                            ; preds = %iter.check398, %vec.epilog.iter.check400, %vec.epilog.middle.block408
  %indvars.iv.i202.ph = phi i64 [ 0, %iter.check398 ], [ %n.vec388, %vec.epilog.iter.check400 ], [ %n.vec403, %vec.epilog.middle.block408 ]
  %.021.i203.ph = phi i16 [ 0, %iter.check398 ], [ %i.abe, %vec.epilog.iter.check400 ], [ %i.ace, %vec.epilog.middle.block408 ]
  br label %.lr.ph.i200

.lr.ph.i200:                                      ; preds = %.lr.ph.i200.preheader, %.lr.ph.i200
  %indvars.iv.i202 = phi i64 [ %indvars.iv.next.i205, %.lr.ph.i200 ], [ %indvars.iv.i202.ph, %.lr.ph.i200.preheader ] ; 2 uses
  %.021.i203 = phi i16 [ %spec.select.i204, %.lr.ph.i200 ], [ %.021.i203.ph, %.lr.ph.i200.preheader ]
  %i.acf = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %indvars.iv.i202
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 14
  %i.ach = load i16, ptr %i.acg, align 2, !tbaa !1364
  %i.aci = lshr i16 %i.ach, 5
  %i.acj = and i16 %i.aci, 1
  %i.ack = xor i16 %i.acj, 1
  %spec.select.i204 = add i16 %i.ack, %.021.i203  ; 2 uses
  %indvars.iv.next.i205 = add nuw nsw i64 %indvars.iv.i202, 1 ; 2 uses
  %exitcond.not.i206 = icmp eq i64 %indvars.iv.next.i205, %.pre278
  br i1 %exitcond.not.i206, label %._crit_edge.i207, label %.lr.ph.i200, !llvm.loop !5516

._crit_edge.i207:                                 ; preds = %.lr.ph.i200, %.preheader.i198
  %.0.lcssa.i208 = phi i16 [ 0, %.preheader.i198 ], [ %spec.select.i204, %.lr.ph.i200 ] ; 2 uses
  %i.acl = getelementptr inbounds nuw [16 x i8], ptr %i.yf, i64 %.pre278
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 14
  %i.acn = load i16, ptr %i.acm, align 2, !tbaa !1364
  %i.aco = and i16 %i.acn, 32
  %.not.i209 = icmp eq i16 %i.aco, 0
  br i1 %.not.i209, label %sqlite3TableColumnToStorage.exit211, label %bb.az

bb.az:                                            ; preds = %._crit_edge.i207
  %i.acp = getelementptr inbounds nuw i8, ptr %i.xv, i64 56
  %i.acq = load i16, ptr %i.acp, align 8, !tbaa !1251
  %i.acr = sub i16 %i.xy, %.0.lcssa.i208
  %i.acs = add i16 %i.acr, %i.acq
  br label %sqlite3TableColumnToStorage.exit211

sqlite3TableColumnToStorage.exit211:              ; preds = %bb.ay, %._crit_edge.i207, %bb.az
  %.018.i210 = phi i16 [ %i.xy, %bb.ay ], [ %i.acs, %bb.az ], [ %.0.lcssa.i208, %._crit_edge.i207 ]
  %i.act = sext i16 %.018.i210 to i32
  %i.acu = add i32 %i.xp, %i.act                  ; 2 uses
  %i.acv = load ptr, ptr %i.xq, align 8, !tbaa !1256 ; 3 uses
  %i.acw = load ptr, ptr %i.xr, align 8, !tbaa !1160
  %i.acx = getelementptr inbounds nuw [2 x i8], ptr %i.acw, i64 %indvars.iv268
  %i.acy = load i16, ptr %i.acx, align 2, !tbaa !783 ; 10 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acv, i64 48
  %i.ada = load i32, ptr %i.acz, align 8, !tbaa !1083
  %i.adb = and i32 %i.ada, 32
  %i.adc = icmp eq i32 %i.adb, 0
  %wide.trip.count.i216 = sext i16 %i.acy to i64  ; 6 uses
  %i.add = icmp slt i16 %i.acy, 0
  %or.cond.i212 = or i1 %i.add, %i.adc
  br i1 %or.cond.i212, label %sqlite3TableColumnToStorage.exit226, label %.preheader.i213

.preheader.i213:                                  ; preds = %sqlite3TableColumnToStorage.exit211
  %.not23.i214 = icmp eq i16 %i.acy, 0
  %i.ade = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !1149 ; 22 uses
  br i1 %.not23.i214, label %._crit_edge.i222, label %iter.check371

iter.check371:                                    ; preds = %.preheader.i213
  %min.iters.check357 = icmp ult i16 %i.acy, 5
  br i1 %min.iters.check357, label %vec.epilog.scalar.ph372.preheader, label %vector.main.loop.iter.check358

vector.main.loop.iter.check358:                   ; preds = %iter.check371
  %min.iters.check359 = icmp ult i16 %i.acy, 17
  br i1 %min.iters.check359, label %vec.epilog.ph375, label %vector.ph360

vector.ph360:                                     ; preds = %vector.main.loop.iter.check358
  %i.adg = and i64 %wide.trip.count.i216, 15
  %i.adh = and i16 %i.acy, 15
  %i.adi = icmp eq i16 %i.adh, 0
  %i.adj = select i1 %i.adi, i64 16, i64 %i.adg   ; 2 uses
  %n.vec361 = sub nsw i64 %wide.trip.count.i216, %i.adj ; 3 uses
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph360
  %index363 = phi i64 [ 0, %vector.ph360 ], [ %index.next366, %vector.body362 ] ; 17 uses
  %vec.phi364 = phi <8 x i16> [ zeroinitializer, %vector.ph360 ], [ %i.agc, %vector.body362 ]
  %vec.phi365 = phi <8 x i16> [ zeroinitializer, %vector.ph360 ], [ %i.agd, %vector.body362 ]
  %i.adk = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adl = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adm = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adn = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.ado = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adp = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adq = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adr = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.ads = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adt = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adu = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adv = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adw = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adx = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.ady = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.adz = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index363
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adk, i64 14
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adl, i64 30
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adm, i64 46
  %i.aed = getelementptr inbounds nuw i8, ptr %i.adn, i64 62
  %i.aee = getelementptr inbounds nuw i8, ptr %i.ado, i64 78
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adp, i64 94
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adq, i64 110
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.adr, i64 126
  %i.aei = getelementptr inbounds nuw i8, ptr %i.ads, i64 142
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adt, i64 158
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adu, i64 174
  %i.ael = getelementptr inbounds nuw i8, ptr %i.adv, i64 190
  %i.aem = getelementptr inbounds nuw i8, ptr %i.adw, i64 206
  %i.aen = getelementptr inbounds nuw i8, ptr %i.adx, i64 222
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ady, i64 238
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adz, i64 254
  %i.aeq = load i16, ptr %i.aea, align 2, !tbaa !1364
  %i.aer = load i16, ptr %i.aeb, align 2, !tbaa !1364
  %i.aes = load i16, ptr %i.aec, align 2, !tbaa !1364
  %i.aet = load i16, ptr %i.aed, align 2, !tbaa !1364
  %i.aeu = load i16, ptr %i.aee, align 2, !tbaa !1364
  %i.aev = load i16, ptr %i.aef, align 2, !tbaa !1364
  %i.aew = load i16, ptr %i.aeg, align 2, !tbaa !1364
  %i.aex = load i16, ptr %i.aeh, align 2, !tbaa !1364
  %i.aey = insertelement <8 x i16> poison, i16 %i.aeq, i64 0
  %i.aez = insertelement <8 x i16> %i.aey, i16 %i.aer, i64 1
  %i.afa = insertelement <8 x i16> %i.aez, i16 %i.aes, i64 2
  %i.afb = insertelement <8 x i16> %i.afa, i16 %i.aet, i64 3
  %i.afc = insertelement <8 x i16> %i.afb, i16 %i.aeu, i64 4
  %i.afd = insertelement <8 x i16> %i.afc, i16 %i.aev, i64 5
  %i.afe = insertelement <8 x i16> %i.afd, i16 %i.aew, i64 6
  %i.aff = insertelement <8 x i16> %i.afe, i16 %i.aex, i64 7
  %i.afg = load i16, ptr %i.aei, align 2, !tbaa !1364
  %i.afh = load i16, ptr %i.aej, align 2, !tbaa !1364
  %i.afi = load i16, ptr %i.aek, align 2, !tbaa !1364
  %i.afj = load i16, ptr %i.ael, align 2, !tbaa !1364
  %i.afk = load i16, ptr %i.aem, align 2, !tbaa !1364
  %i.afl = load i16, ptr %i.aen, align 2, !tbaa !1364
  %i.afm = load i16, ptr %i.aeo, align 2, !tbaa !1364
  %i.afn = load i16, ptr %i.aep, align 2, !tbaa !1364
  %i.afo = insertelement <8 x i16> poison, i16 %i.afg, i64 0
  %i.afp = insertelement <8 x i16> %i.afo, i16 %i.afh, i64 1
  %i.afq = insertelement <8 x i16> %i.afp, i16 %i.afi, i64 2
  %i.afr = insertelement <8 x i16> %i.afq, i16 %i.afj, i64 3
  %i.afs = insertelement <8 x i16> %i.afr, i16 %i.afk, i64 4
  %i.aft = insertelement <8 x i16> %i.afs, i16 %i.afl, i64 5
  %i.afu = insertelement <8 x i16> %i.aft, i16 %i.afm, i64 6
  %i.afv = insertelement <8 x i16> %i.afu, i16 %i.afn, i64 7
  %i.afw = lshr <8 x i16> %i.aff, splat (i16 5)
  %i.afx = lshr <8 x i16> %i.afv, splat (i16 5)
  %i.afy = and <8 x i16> %i.afw, splat (i16 1)
  %i.afz = and <8 x i16> %i.afx, splat (i16 1)
  %i.aga = xor <8 x i16> %i.afy, splat (i16 1)
  %i.agb = xor <8 x i16> %i.afz, splat (i16 1)
  %i.agc = add <8 x i16> %i.aga, %vec.phi364      ; 2 uses
  %i.agd = add <8 x i16> %i.agb, %vec.phi365      ; 2 uses
  %index.next366 = add nuw i64 %index363, 16      ; 2 uses
  %i.age = icmp eq i64 %index.next366, %n.vec361
  br i1 %i.age, label %vec.epilog.iter.check373, label %vector.body362, !llvm.loop !5517

vec.epilog.iter.check373:                         ; preds = %vector.body362
  %bin.rdx368 = add <8 x i16> %i.agd, %i.agc
  %i.agf = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx368) ; 2 uses
  %min.epilog.iters.check374 = icmp samesign ult i64 %i.adj, 5
  br i1 %min.epilog.iters.check374, label %vec.epilog.scalar.ph372.preheader, label %vec.epilog.ph375, !prof !1709

vec.epilog.ph375:                                 ; preds = %vector.main.loop.iter.check358, %vec.epilog.iter.check373
  %vec.epilog.resume.val369 = phi i64 [ %n.vec361, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check358 ]
  %bc.merge.rdx370 = phi i16 [ %i.agf, %vec.epilog.iter.check373 ], [ 0, %vector.main.loop.iter.check358 ]
  %i.agg = and i64 %wide.trip.count.i216, 3
  %i.agh = and i16 %i.acy, 3
  %i.agi = icmp eq i16 %i.agh, 0
  %i.agj = select i1 %i.agi, i64 4, i64 %i.agg
  %n.vec376 = sub nsw i64 %wide.trip.count.i216, %i.agj ; 2 uses
  %i.agk = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx370, i64 0
  br label %vec.epilog.vector.body377

vec.epilog.vector.body377:                        ; preds = %vec.epilog.vector.body377, %vec.epilog.ph375
  %index378 = phi i64 [ %vec.epilog.resume.val369, %vec.epilog.ph375 ], [ %index.next380, %vec.epilog.vector.body377 ] ; 5 uses
  %vec.phi379 = phi <4 x i16> [ %i.agk, %vec.epilog.ph375 ], [ %i.ahe, %vec.epilog.vector.body377 ]
  %i.agl = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %index378
  %i.agm = getelementptr [16 x i8], ptr %i.adf, i64 %index378
  %i.agn = getelementptr [16 x i8], ptr %i.adf, i64 %index378
  %i.ago = getelementptr [16 x i8], ptr %i.adf, i64 %index378
  %i.agp = getelementptr inbounds nuw i8, ptr %i.agl, i64 14
  %i.agq = getelementptr i8, ptr %i.agm, i64 30
  %i.agr = getelementptr i8, ptr %i.agn, i64 46
  %i.ags = getelementptr i8, ptr %i.ago, i64 62
  %i.agt = load i16, ptr %i.agp, align 2, !tbaa !1364
  %i.agu = load i16, ptr %i.agq, align 2, !tbaa !1364
  %i.agv = load i16, ptr %i.agr, align 2, !tbaa !1364
  %i.agw = load i16, ptr %i.ags, align 2, !tbaa !1364
  %i.agx = insertelement <4 x i16> poison, i16 %i.agt, i64 0
  %i.agy = insertelement <4 x i16> %i.agx, i16 %i.agu, i64 1
  %i.agz = insertelement <4 x i16> %i.agy, i16 %i.agv, i64 2
  %i.aha = insertelement <4 x i16> %i.agz, i16 %i.agw, i64 3
  %i.ahb = lshr <4 x i16> %i.aha, splat (i16 5)
  %i.ahc = and <4 x i16> %i.ahb, splat (i16 1)
  %i.ahd = xor <4 x i16> %i.ahc, splat (i16 1)
  %i.ahe = add <4 x i16> %i.ahd, %vec.phi379      ; 2 uses
  %index.next380 = add nuw i64 %index378, 4       ; 2 uses
  %i.ahf = icmp eq i64 %index.next380, %n.vec376
  br i1 %i.ahf, label %vec.epilog.middle.block381, label %vec.epilog.vector.body377, !llvm.loop !5518

vec.epilog.middle.block381:                       ; preds = %vec.epilog.vector.body377
  %i.ahg = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ahe)
  br label %vec.epilog.scalar.ph372.preheader

vec.epilog.scalar.ph372.preheader:                ; preds = %iter.check371, %vec.epilog.iter.check373, %vec.epilog.middle.block381
  %indvars.iv.i217.ph = phi i64 [ 0, %iter.check371 ], [ %n.vec361, %vec.epilog.iter.check373 ], [ %n.vec376, %vec.epilog.middle.block381 ]
  %.021.i218.ph = phi i16 [ 0, %iter.check371 ], [ %i.agf, %vec.epilog.iter.check373 ], [ %i.ahg, %vec.epilog.middle.block381 ]
  br label %vec.epilog.scalar.ph372

vec.epilog.scalar.ph372:                          ; preds = %vec.epilog.scalar.ph372.preheader, %vec.epilog.scalar.ph372
  %indvars.iv.i217 = phi i64 [ %indvars.iv.next.i220, %vec.epilog.scalar.ph372 ], [ %indvars.iv.i217.ph, %vec.epilog.scalar.ph372.preheader ] ; 2 uses
  %.021.i218 = phi i16 [ %spec.select.i219, %vec.epilog.scalar.ph372 ], [ %.021.i218.ph, %vec.epilog.scalar.ph372.preheader ]
  %i.ahh = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %indvars.iv.i217
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahh, i64 14
  %i.ahj = load i16, ptr %i.ahi, align 2, !tbaa !1364
  %i.ahk = lshr i16 %i.ahj, 5
  %i.ahl = and i16 %i.ahk, 1
  %i.ahm = xor i16 %i.ahl, 1
  %spec.select.i219 = add i16 %i.ahm, %.021.i218  ; 2 uses
  %indvars.iv.next.i220 = add nuw nsw i64 %indvars.iv.i217, 1 ; 2 uses
  %exitcond.not.i221 = icmp eq i64 %indvars.iv.next.i220, %wide.trip.count.i216
  br i1 %exitcond.not.i221, label %._crit_edge.i222, label %vec.epilog.scalar.ph372, !llvm.loop !5519

._crit_edge.i222:                                 ; preds = %vec.epilog.scalar.ph372, %.preheader.i213
  %.pre-phi277 = phi i64 [ 0, %.preheader.i213 ], [ %wide.trip.count.i216, %vec.epilog.scalar.ph372 ]
  %.0.lcssa.i223 = phi i16 [ 0, %.preheader.i213 ], [ %spec.select.i219, %vec.epilog.scalar.ph372 ] ; 2 uses
  %i.ahn = getelementptr inbounds nuw [16 x i8], ptr %i.adf, i64 %.pre-phi277
  %i.aho = getelementptr inbounds nuw i8, ptr %i.ahn, i64 14
  %i.ahp = load i16, ptr %i.aho, align 2, !tbaa !1364
  %i.ahq = and i16 %i.ahp, 32
  %.not.i224 = icmp eq i16 %i.ahq, 0
  br i1 %.not.i224, label %sqlite3TableColumnToStorage.exit226, label %bb.ba

bb.ba:                                            ; preds = %._crit_edge.i222
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.acv, i64 56
  %i.ahs = load i16, ptr %i.ahr, align 8, !tbaa !1251
  %i.aht = sub i16 %i.acy, %.0.lcssa.i223
  %i.ahu = add i16 %i.aht, %i.ahs
  br label %sqlite3TableColumnToStorage.exit226

sqlite3TableColumnToStorage.exit226:              ; preds = %sqlite3TableColumnToStorage.exit211, %._crit_edge.i222, %bb.ba
  %.018.i225 = phi i16 [ %i.acy, %sqlite3TableColumnToStorage.exit211 ], [ %i.ahu, %bb.ba ], [ %.0.lcssa.i223, %._crit_edge.i222 ]
  %i.ahv = sext i16 %.018.i225 to i32
  %i.ahw = add nsw i32 %i.xp, %i.ahv
  %i.ahx = load i16, ptr %i.xs, align 4, !tbaa !1189
  %i.ahy = icmp eq i16 %i.acy, %i.ahx
  %spec.select = select i1 %i.ahy, i32 %6, i32 %i.ahw ; 2 uses
  %i.ahz = load i32, ptr %i.qn, align 4, !tbaa !1164
  %.not.i227 = icmp sgt i32 %i.ahz, %i.xu
  br i1 %.not.i227, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %sqlite3TableColumnToStorage.exit226
  %i.aia = tail call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 53, i32 noundef %i.acu, i32 noundef %i.xo, i32 noundef %spec.select), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit229

bb.bc:                                            ; preds = %sqlite3TableColumnToStorage.exit226
  %i.aib = add nsw i32 %i.xu, 1
  store i32 %i.aib, ptr %i.ql, align 8, !tbaa !703
  %i.aic = load ptr, ptr %i.xt, align 8, !tbaa !702
  %i.aid = sext i32 %i.xu to i64
  %i.aie = getelementptr inbounds [32 x i8], ptr %i.aic, i64 %i.aid ; 7 uses
  store i8 53, ptr %i.aie, align 8, !tbaa !929
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 2
  store i16 0, ptr %i.aif, align 2, !tbaa !930
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aie, i64 4
  store i32 %i.acu, ptr %i.aig, align 4, !tbaa !926
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  store i32 %i.xo, ptr %i.aih, align 8, !tbaa !927
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aie, i64 12
  store i32 %spec.select, ptr %i.aii, align 4, !tbaa !928
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aie, i64 16
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aie, i64 1
  store i8 0, ptr %i.aik, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aij, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit229

sqlite3VdbeAddOp3.exit229:                        ; preds = %bb.bb, %bb.bc
end_hunk_13
begin_hunk_14_@fkScanChildren:bb.a
  %i.hd = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr null, ptr %i.hd, align 8, !tbaa !2109
  %i.he = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %9, ptr %i.he, align 8, !tbaa !733
  %i.hf = getelementptr inbounds nuw i8, ptr %.1119, i64 40 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !2008
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !2133
  %i.hj = add nsw i32 %i.hi, %i.hg                ; 2 uses
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !2133
  %i.hk = load ptr, ptr %0, align 8, !tbaa !980
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 148
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !570 ; 2 uses
  %i.hn = icmp sgt i32 %i.hj, %i.hm
  br i1 %i.hn, label %sqlite3ExprCheckHeight.exit.i, label %bb.av

sqlite3ExprCheckHeight.exit.i:                    ; preds = %bb.au
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.819, i32 noundef %i.hm), !inline_history !326
  br label %sqlite3ResolveExprNames.exit

bb.av:                                            ; preds = %bb.au
  %i.ho = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %8, ptr noundef nonnull %.1119), !inline_history !2182 ; 0 uses
  %i.hp = load i32, ptr %i.hf, align 8, !tbaa !2008
  %i.hq = load ptr, ptr %8, align 8, !tbaa !2018
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 316 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !2133
  %i.ht = sub nsw i32 %i.hs, %i.hp
  store i32 %i.ht, ptr %i.hr, align 4, !tbaa !2133
  %i.hu = load i32, ptr %i.ha, align 8, !tbaa !2061 ; 2 uses
  %i.hv = and i32 %i.hu, 32784
  %i.hw = getelementptr inbounds nuw i8, ptr %.1119, i64 4 ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !795
  %i.hy = or i32 %i.hx, %i.hv
  store i32 %i.hy, ptr %i.hw, align 4, !tbaa !795
  store i32 %i.hu, ptr %i.ha, align 8, !tbaa !2061
  br label %sqlite3ResolveExprNames.exit

sqlite3ResolveExprNames.exit:                     ; preds = %bb.av, %sqlite3ExprAnd.exit111.thread121, %sqlite3ExprAnd.exit111, %sqlite3ExprCheckHeight.exit.i
  %i.hz = phi i1 [ true, %sqlite3ExprAnd.exit111 ], [ false, %sqlite3ExprCheckHeight.exit.i ], [ false, %bb.av ], [ true, %sqlite3ExprAnd.exit111.thread121 ]
  %.1120 = phi ptr [ null, %sqlite3ExprAnd.exit111 ], [ %.1119, %sqlite3ExprCheckHeight.exit.i ], [ %.1119, %bb.av ], [ null, %sqlite3ExprAnd.exit111.thread121 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #58
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !780
  %i.ic = icmp eq i32 %i.ib, 0
  br i1 %i.ic, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %sqlite3ResolveExprNames.exit
  %i.id = call fastcc ptr @sqlite3WhereBegin(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %.1120, ptr noundef null, ptr noundef null, ptr noundef null, i16 noundef zeroext 0, i32 noundef 0) ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.if = load i8, ptr %i.ie, align 4, !tbaa !733
  %i.ig = zext i8 %i.if to i32                    ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !703 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i, i64 148
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !1164
  %.not.i.i114 = icmp sgt i32 %i.ik, %i.ii
  br i1 %.not.i.i114, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.il = call fastcc i32 @growOp3(ptr noundef nonnull %.0.i, i32 noundef 160, i32 noundef %i.ig, i32 noundef %7, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit116

bb.ay:                                            ; preds = %bb.aw
  %i.im = add nsw i32 %i.ii, 1
  store i32 %i.im, ptr %i.ih, align 8, !tbaa !703
  %i.in = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !702
  %i.ip = sext i32 %i.ii to i64
  %i.iq = getelementptr inbounds [32 x i8], ptr %i.io, i64 %i.ip ; 6 uses
  store i8 -96, ptr %i.iq, align 8, !tbaa !929
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 2
  store i16 0, ptr %i.ir, align 2, !tbaa !930
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store i32 %i.ig, ptr %i.is, align 4, !tbaa !926
  %i.it = getelementptr inbounds nuw i8, ptr %i.iq, i64 8
  store i32 %7, ptr %i.it, align 8, !tbaa !927
  %i.iu = getelementptr inbounds nuw i8, ptr %i.iq, i64 12
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iq, i64 1
  store i8 0, ptr %i.iv, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.iu, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit116

sqlite3VdbeAddOp2.exit116:                        ; preds = %bb.ax, %bb.ay
  %.not = icmp eq ptr %i.id, null
  br i1 %.not, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %sqlite3VdbeAddOp2.exit116
  call fastcc void @sqlite3WhereEnd(ptr noundef nonnull %i.id)
  br label %bb.ba

bb.ba:                                            ; preds = %sqlite3VdbeAddOp2.exit116, %bb.az, %sqlite3ResolveExprNames.exit
  br i1 %i.hz, label %sqlite3ExprDelete.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.a, ptr noundef %.1120), !inline_history !3
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %bb.ba, %bb.bb
  %.not91 = icmp eq i32 %.083, 0
  br i1 %.not91, label %sqlite3VdbeJumpHereOrPopInst.exit, label %bb.bc

bb.bc:                                            ; preds = %sqlite3ExprDelete.exit
  %i.iw = getelementptr inbounds nuw i8, ptr %.0.i, i64 144 ; 2 uses
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !703 ; 2 uses
  %i.iy = add nsw i32 %i.ix, -1
  %i.iz = icmp eq i32 %.083, %i.iy
  br i1 %i.iz, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 %.083, ptr %i.iw, align 8, !tbaa !703
  br label %sqlite3VdbeJumpHereOrPopInst.exit

bb.be:                                            ; preds = %bb.bc
  %i.ja = load ptr, ptr %.0.i, align 8, !tbaa !679
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 103
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !918
  %.not.i.i.i = icmp eq i8 %i.jc, 0
  br i1 %.not.i.i.i, label %bb.bf, label %sqlite3VdbeChangeP2.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.i, i64 136
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !702
  %i.jf = sext i32 %.083 to i64
  %i.jg = getelementptr inbounds [32 x i8], ptr %i.je, i64 %i.jf
  br label %sqlite3VdbeChangeP2.exit.i

sqlite3VdbeChangeP2.exit.i:                       ; preds = %bb.bf, %bb.be
  %.0.i.i.i = phi ptr [ %i.jg, %bb.bf ], [ @sqlite3VdbeGetOp.dummy, %bb.be ]
  %i.jh = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.ix, ptr %i.jh, align 8, !tbaa !927
  br label %sqlite3VdbeJumpHereOrPopInst.exit

sqlite3VdbeJumpHereOrPopInst.exit:                ; preds = %sqlite3VdbeChangeP2.exit.i, %bb.bd, %sqlite3ExprDelete.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @exprTableRegister(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i16 noundef signext %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !980    ; 2 uses
  %i.b = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef 73), !inline_history !2006 ; 16 uses
  %.not24.i.i = icmp eq ptr %i.b, null
  br i1 %.not24.i.i, label %sqlite3ExprAddCollateString.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  store i8 -80, ptr %i.b, align 8, !tbaa !1828
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  store i16 -1, ptr %i.c, align 2, !tbaa !2007
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.e, align 8, !tbaa !733
  store i8 0, ptr %i.d, align 8, !tbaa !733
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 1, ptr %i.f, align 8, !tbaa !2008
  %i.g = icmp sgt i16 %3, -1
  br i1 %i.g, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.i = load i16, ptr %i.h, align 4, !tbaa !1189
  %.not27 = icmp eq i16 %3, %i.i
  br i1 %.not27, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1149 ; 22 uses
  %i.l = zext nneg i16 %3 to i64                  ; 6 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1083
  %i.p = and i32 %i.o, 32
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %.sqlite3TableColumnToStorage.exit_crit_edge, label %.preheader.i

.sqlite3TableColumnToStorage.exit_crit_edge:      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !tbaa !1364
  br label %sqlite3TableColumnToStorage.exit

.preheader.i:                                     ; preds = %bb.d
  %.not23.i = icmp eq i16 %3, 0
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp ult i16 %3, 5
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check35 = icmp ult i16 %3, 17
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.r = and i64 %i.l, 15                         ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = select i1 %i.s, i64 16, i64 %i.r         ; 2 uses
  %n.vec = sub nsw i64 %i.l, %i.t                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi36 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 14
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 30
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 46
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 62
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 78
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 94
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 110
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 126
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 142
  %i.at = getelementptr inbounds nuw i8, ptr %i.ad, i64 158
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 174
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 190
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 206
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 222
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ai, i64 238
  %i.az = getelementptr inbounds nuw i8, ptr %i.aj, i64 254
  %i.ba = load i16, ptr %i.ak, align 2, !tbaa !1364
  %i.bb = load i16, ptr %i.al, align 2, !tbaa !1364
  %i.bc = load i16, ptr %i.am, align 2, !tbaa !1364
  %i.bd = load i16, ptr %i.an, align 2, !tbaa !1364
  %i.be = load i16, ptr %i.ao, align 2, !tbaa !1364
  %i.bf = load i16, ptr %i.ap, align 2, !tbaa !1364
  %i.bg = load i16, ptr %i.aq, align 2, !tbaa !1364
  %i.bh = load i16, ptr %i.ar, align 2, !tbaa !1364
  %i.bi = insertelement <8 x i16> poison, i16 %i.ba, i64 0
  %i.bj = insertelement <8 x i16> %i.bi, i16 %i.bb, i64 1
  %i.bk = insertelement <8 x i16> %i.bj, i16 %i.bc, i64 2
  %i.bl = insertelement <8 x i16> %i.bk, i16 %i.bd, i64 3
  %i.bm = insertelement <8 x i16> %i.bl, i16 %i.be, i64 4
  %i.bn = insertelement <8 x i16> %i.bm, i16 %i.bf, i64 5
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 6
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 7
  %i.bq = load i16, ptr %i.as, align 2, !tbaa !1364
  %i.br = load i16, ptr %i.at, align 2, !tbaa !1364
  %i.bs = load i16, ptr %i.au, align 2, !tbaa !1364
  %i.bt = load i16, ptr %i.av, align 2, !tbaa !1364
  %i.bu = load i16, ptr %i.aw, align 2, !tbaa !1364
  %i.bv = load i16, ptr %i.ax, align 2, !tbaa !1364
  %i.bw = load i16, ptr %i.ay, align 2, !tbaa !1364
  %i.bx = load i16, ptr %i.az, align 2, !tbaa !1364
  %i.by = insertelement <8 x i16> poison, i16 %i.bq, i64 0
  %i.bz = insertelement <8 x i16> %i.by, i16 %i.br, i64 1
  %i.ca = insertelement <8 x i16> %i.bz, i16 %i.bs, i64 2
  %i.cb = insertelement <8 x i16> %i.ca, i16 %i.bt, i64 3
  %i.cc = insertelement <8 x i16> %i.cb, i16 %i.bu, i64 4
  %i.cd = insertelement <8 x i16> %i.cc, i16 %i.bv, i64 5
  %i.ce = insertelement <8 x i16> %i.cd, i16 %i.bw, i64 6
  %i.cf = insertelement <8 x i16> %i.ce, i16 %i.bx, i64 7
  %i.cg = lshr <8 x i16> %i.bp, splat (i16 5)
  %i.ch = lshr <8 x i16> %i.cf, splat (i16 5)
  %i.ci = and <8 x i16> %i.cg, splat (i16 1)
  %i.cj = and <8 x i16> %i.ch, splat (i16 1)
  %i.ck = xor <8 x i16> %i.ci, splat (i16 1)
  %i.cl = xor <8 x i16> %i.cj, splat (i16 1)
  %i.cm = add <8 x i16> %i.ck, %vec.phi           ; 2 uses
  %i.cn = add <8 x i16> %i.cl, %vec.phi36         ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5525

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.cn, %i.cm
  %i.cp = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.t, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.cp, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.cq = and i64 %i.l, 3                         ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = select i1 %i.cr, i64 4, i64 %i.cq
  %n.vec37 = sub nsw i64 %i.l, %i.cs              ; 2 uses
  %i.ct = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi39 = phi <4 x i16> [ %i.ct, %vec.epilog.ph ], [ %i.dn, %vec.epilog.vector.body ]
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %index38
  %i.cv = getelementptr [16 x i8], ptr %i.k, i64 %index38
  %i.cw = getelementptr [16 x i8], ptr %i.k, i64 %index38
  %i.cx = getelementptr [16 x i8], ptr %i.k, i64 %index38
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 14
  %i.cz = getelementptr i8, ptr %i.cv, i64 30
  %i.da = getelementptr i8, ptr %i.cw, i64 46
  %i.db = getelementptr i8, ptr %i.cx, i64 62
  %i.dc = load i16, ptr %i.cy, align 2, !tbaa !1364
  %i.dd = load i16, ptr %i.cz, align 2, !tbaa !1364
  %i.de = load i16, ptr %i.da, align 2, !tbaa !1364
  %i.df = load i16, ptr %i.db, align 2, !tbaa !1364
  %i.dg = insertelement <4 x i16> poison, i16 %i.dc, i64 0
  %i.dh = insertelement <4 x i16> %i.dg, i16 %i.dd, i64 1
  %i.di = insertelement <4 x i16> %i.dh, i16 %i.de, i64 2
  %i.dj = insertelement <4 x i16> %i.di, i16 %i.df, i64 3
  %i.dk = lshr <4 x i16> %i.dj, splat (i16 5)
  %i.dl = and <4 x i16> %i.dk, splat (i16 1)
  %i.dm = xor <4 x i16> %i.dl, splat (i16 1)
  %i.dn = add <4 x i16> %i.dm, %vec.phi39         ; 2 uses
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.do, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5526

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.dp = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.dn)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.cp, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i.ph, %.lr.ph.i.preheader ]
  %i.dq = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 14
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !1364
  %i.dt = lshr i16 %i.ds, 5
  %i.du = and i16 %i.dt, 1
  %i.dv = xor i16 %i.du, 1
  %spec.select.i = add i16 %i.dv, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.l
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5527

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.m, i64 14
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !1364 ; 3 uses
  %i.dy = and i16 %i.dx, 32
  %.not.i = icmp eq i16 %i.dy, 0
  br i1 %.not.i, label %sqlite3TableColumnToStorage.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ea = load i16, ptr %i.dz, align 8, !tbaa !1251
  %i.eb = sub i16 %3, %.0.lcssa.i
  %i.ec = add i16 %i.eb, %i.ea
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %.sqlite3TableColumnToStorage.exit_crit_edge, %._crit_edge.i, %bb.e
  %i.ed = phi i16 [ %.pre, %.sqlite3TableColumnToStorage.exit_crit_edge ], [ %i.dx, %bb.e ], [ %i.dx, %._crit_edge.i ] ; 2 uses
  %.018.i = phi i16 [ %3, %.sqlite3TableColumnToStorage.exit_crit_edge ], [ %i.ec, %bb.e ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.ee = sext i16 %.018.i to i32
  %i.ef = add i32 %2, 1
  %i.eg = add i32 %i.ef, %i.ee
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !2072
  %i.ei = getelementptr inbounds nuw i8, ptr %i.m, i64 9
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !1716
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !2002
  %i.el = and i16 %i.ed, 512
  %i.em = icmp eq i16 %i.el, 0
  br i1 %i.em, label %bb.g, label %bb.f

bb.f:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.en = load ptr, ptr %i.m, align 8, !tbaa !1153 ; 3 uses
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %i.en) ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.en, i64 %strlen.i ; 2 uses
  %i.eo = and i16 %i.ed, 4
  %.not10.i = icmp eq i16 %i.eo, 0
  br i1 %.not10.i, label %.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.f
  %scevgep12.i = getelementptr i8, ptr %scevgep.i, i64 1
  %strlen13.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep12.i)
  %i.ep = getelementptr i8, ptr %i.en, i64 %strlen13.i
  %i.eq = getelementptr i8, ptr %i.ep, i64 %strlen.i
  %scevgep14.i = getelementptr i8, ptr %i.eq, i64 1
  br label %.thread

.thread:                                          ; preds = %.preheader.preheader.i, %bb.f
  %.2.i = phi ptr [ %scevgep.i, %bb.f ], [ %scevgep14.i, %.preheader.preheader.i ]
  %i.er = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  br label %sqlite3TokenInit.exit.i

bb.g:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !1357
end_hunk_14
begin_hunk_15_@sqlite3ComputeGeneratedColumns:bb.a
  br i1 %i.ca, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue
  %i.cb = or i16 %i.bh, 128
  store i16 %i.cb, ptr %i.az, align 2, !tbaa !1364
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue
  %i.cc = extractelement <8 x i1> %i.bx, i64 2
  br i1 %i.cc, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %i.cd = or i16 %i.bi, 128
  store i16 %i.cd, ptr %i.ba, align 2, !tbaa !1364
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.ce = extractelement <8 x i1> %i.bx, i64 3
  br i1 %i.ce, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.cf = or i16 %i.bj, 128
  store i16 %i.cf, ptr %i.bb, align 2, !tbaa !1364
  br label %pred.store.continue111

pred.store.continue111:                           ; preds = %pred.store.if110, %pred.store.continue109
  %i.cg = extractelement <8 x i1> %i.bx, i64 4
  br i1 %i.cg, label %pred.store.if112, label %pred.store.continue113

pred.store.if112:                                 ; preds = %pred.store.continue111
  %i.ch = or i16 %i.bk, 128
  store i16 %i.ch, ptr %i.bc, align 2, !tbaa !1364
  br label %pred.store.continue113

pred.store.continue113:                           ; preds = %pred.store.if112, %pred.store.continue111
  %i.ci = extractelement <8 x i1> %i.bx, i64 5
  br i1 %i.ci, label %pred.store.if114, label %pred.store.continue115

pred.store.if114:                                 ; preds = %pred.store.continue113
  %i.cj = or i16 %i.bl, 128
  store i16 %i.cj, ptr %i.bd, align 2, !tbaa !1364
  br label %pred.store.continue115

pred.store.continue115:                           ; preds = %pred.store.if114, %pred.store.continue113
  %i.ck = extractelement <8 x i1> %i.bx, i64 6
  br i1 %i.ck, label %pred.store.if116, label %pred.store.continue117

pred.store.if116:                                 ; preds = %pred.store.continue115
  %i.cl = or i16 %i.bm, 128
  store i16 %i.cl, ptr %i.be, align 2, !tbaa !1364
  br label %pred.store.continue117

pred.store.continue117:                           ; preds = %pred.store.if116, %pred.store.continue115
  %i.cm = extractelement <8 x i1> %i.bx, i64 7
  br i1 %i.cm, label %pred.store.if118, label %pred.store.continue119

pred.store.if118:                                 ; preds = %pred.store.continue117
  %i.cn = or i16 %i.bn, 128
  store i16 %i.cn, ptr %i.bf, align 2, !tbaa !1364
  br label %pred.store.continue119

pred.store.continue119:                           ; preds = %pred.store.if118, %pred.store.continue117
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %scalar.ph.preheader, label %vector.body, !llvm.loop !5538

scalar.ph.preheader:                              ; preds = %pred.store.continue119, %.lr.ph79
  %indvars.iv88.ph = phi i64 [ 0, %.lr.ph79 ], [ %n.vec, %pred.store.continue119 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.l
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.l ], [ %indvars.iv88.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %indvars.iv88
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 14 ; 2 uses
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !1364 ; 2 uses
  %i.cs = and i16 %i.cr, 96
  %.not68 = icmp eq i16 %i.cs, 0
  br i1 %.not68, label %bb.l, label %bb.k

bb.k:                                             ; preds = %scalar.ph
  %i.ct = or i16 %i.cr, 128
  store i16 %i.ct, ptr %i.cq, align 2, !tbaa !1364
  br label %bb.l

bb.l:                                             ; preds = %scalar.ph, %bb.k
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !5539

._crit_edge:                                      ; preds = %bb.l, %.loopexit
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %2, ptr %i.cu, align 8, !tbaa !733
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @exprColumnFlagUnion, ptr %i.cv, align 8, !tbaa !2019
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cx = sub nsw i32 0, %1
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cw, i8 0, i64 16, i1 false)
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !2197
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 63
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge85, %._crit_edge
  %i.de = phi i16 [ %i.ja, %._crit_edge85 ], [ %i.aj, %._crit_edge ]
  %i.df = icmp sgt i16 %i.de, 0
  br i1 %i.df, label %.lr.ph84, label %.thread

.lr.ph84:                                         ; preds = %bb.m, %bb.t
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %bb.t ], [ 0, %bb.m ] ; 11 uses
  %.05682 = phi i32 [ %.3, %bb.t ], [ 0, %bb.m ]  ; 2 uses
  %.05881 = phi ptr [ %.361, %bb.t ], [ null, %bb.m ] ; 2 uses
  %i.dg = load ptr, ptr %i.cz, align 8, !tbaa !1149
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %indvars.iv91 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 14 ; 7 uses
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !1364 ; 3 uses
  %i.dk = and i16 %i.dj, 128
  %.not66 = icmp eq i16 %i.dk, 0
  br i1 %.not66, label %bb.t, label %bb.n

bb.n:                                             ; preds = %.lr.ph84
  %i.dl = or i16 %i.dj, 256
  store i16 %i.dl, ptr %i.di, align 2, !tbaa !1364
  store i16 0, ptr %i.da, align 4, !tbaa !2017
  %i.dm = getelementptr i8, ptr %i.dh, i64 12
  %.val = load i16, ptr %i.dm, align 4, !tbaa !2062 ; 3 uses
  %i.dn = zext i16 %.val to i32
  %i.do = icmp eq i16 %.val, 0
  br i1 %i.do, label %sqlite3WalkExpr.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dp = load i8, ptr %i.db, align 1, !tbaa !1146
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %bb.p, label %sqlite3WalkExpr.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.dr = load ptr, ptr %i.dc, align 8, !tbaa !733 ; 3 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %sqlite3WalkExpr.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = load i32, ptr %i.dr, align 8, !tbaa !570
  %i.du = icmp slt i32 %i.dt, %i.dn
  br i1 %i.du, label %sqlite3WalkExpr.exit.thread, label %sqlite3ColumnExpr.exit

sqlite3ColumnExpr.exit:                           ; preds = %bb.q
  %i.dv = zext i16 %.val to i64
  %i.dw = getelementptr [24 x i8], ptr %i.dr, i64 %i.dv
  %i.dx = getelementptr i8, ptr %i.dw, i64 -16
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !1998 ; 2 uses
  %.not.i = icmp eq ptr %i.dy, null
  br i1 %.not.i, label %sqlite3WalkExpr.exit.thread, label %sqlite3WalkExpr.exit

sqlite3WalkExpr.exit.thread:                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %sqlite3ColumnExpr.exit
  %i.dz = and i16 %i.dj, -257
  store i16 %i.dz, ptr %i.di, align 2, !tbaa !1364
  br label %bb.r

sqlite3WalkExpr.exit:                             ; preds = %sqlite3ColumnExpr.exit
  %i.ea = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %3, ptr noundef nonnull %i.dy) #61, !inline_history !2188 ; 0 uses
  %.pre = load i16, ptr %i.di, align 2, !tbaa !1364
  %.pre95 = load i16, ptr %i.da, align 4, !tbaa !2017
  %i.eb = and i16 %.pre95, 128
  %i.ec = icmp eq i16 %i.eb, 0
  %i.ed = and i16 %.pre, -257
  store i16 %i.ed, ptr %i.di, align 2, !tbaa !1364
  br i1 %i.ec, label %bb.r, label %bb.t

bb.r:                                             ; preds = %sqlite3WalkExpr.exit.thread, %sqlite3WalkExpr.exit
  %i.ee = trunc i64 %indvars.iv91 to i16          ; 4 uses
  %i.ef = load i32, ptr %i.c, align 8, !tbaa !1083
  %i.eg = and i32 %i.ef, 32
  %i.eh = icmp eq i32 %i.eg, 0
  %i.ei = icmp slt i16 %i.ee, 0
  %or.cond.i = or i1 %i.ei, %i.eh
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.r
  %.not23.i = icmp eq i16 %i.ee, 0
  %i.ej = load ptr, ptr %i.cz, align 8, !tbaa !1149 ; 22 uses
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check121 = icmp samesign ult i64 %indvars.iv91, 5
  br i1 %min.iters.check121, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check122 = icmp samesign ult i64 %indvars.iv91, 17
  br i1 %min.iters.check122, label %vec.epilog.ph, label %vector.ph123

vector.ph123:                                     ; preds = %vector.main.loop.iter.check
  %i.ek = and i64 %indvars.iv91, 15               ; 2 uses
  %i.el = icmp eq i64 %i.ek, 0
  %i.em = select i1 %i.el, i64 16, i64 %i.ek      ; 2 uses
  %n.vec124 = sub nsw i64 %indvars.iv91, %i.em    ; 3 uses
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph123
  %index126 = phi i64 [ 0, %vector.ph123 ], [ %index.next128, %vector.body125 ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph123 ], [ %i.hf, %vector.body125 ]
  %vec.phi127 = phi <8 x i16> [ zeroinitializer, %vector.ph123 ], [ %i.hg, %vector.body125 ]
  %i.en = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.es = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ex = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fc = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index126
  %i.fd = getelementptr inbounds nuw i8, ptr %i.en, i64 14
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eo, i64 30
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 46
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 62
  %i.fh = getelementptr inbounds nuw i8, ptr %i.er, i64 78
  %i.fi = getelementptr inbounds nuw i8, ptr %i.es, i64 94
  %i.fj = getelementptr inbounds nuw i8, ptr %i.et, i64 110
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 126
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ev, i64 142
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ew, i64 158
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ex, i64 174
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 190
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 206
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fa, i64 222
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 238
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fc, i64 254
  %i.ft = load i16, ptr %i.fd, align 2, !tbaa !1364
  %i.fu = load i16, ptr %i.fe, align 2, !tbaa !1364
  %i.fv = load i16, ptr %i.ff, align 2, !tbaa !1364
  %i.fw = load i16, ptr %i.fg, align 2, !tbaa !1364
  %i.fx = load i16, ptr %i.fh, align 2, !tbaa !1364
  %i.fy = load i16, ptr %i.fi, align 2, !tbaa !1364
  %i.fz = load i16, ptr %i.fj, align 2, !tbaa !1364
  %i.ga = load i16, ptr %i.fk, align 2, !tbaa !1364
  %i.gb = insertelement <8 x i16> poison, i16 %i.ft, i64 0
  %i.gc = insertelement <8 x i16> %i.gb, i16 %i.fu, i64 1
  %i.gd = insertelement <8 x i16> %i.gc, i16 %i.fv, i64 2
  %i.ge = insertelement <8 x i16> %i.gd, i16 %i.fw, i64 3
  %i.gf = insertelement <8 x i16> %i.ge, i16 %i.fx, i64 4
  %i.gg = insertelement <8 x i16> %i.gf, i16 %i.fy, i64 5
  %i.gh = insertelement <8 x i16> %i.gg, i16 %i.fz, i64 6
  %i.gi = insertelement <8 x i16> %i.gh, i16 %i.ga, i64 7
  %i.gj = load i16, ptr %i.fl, align 2, !tbaa !1364
  %i.gk = load i16, ptr %i.fm, align 2, !tbaa !1364
  %i.gl = load i16, ptr %i.fn, align 2, !tbaa !1364
  %i.gm = load i16, ptr %i.fo, align 2, !tbaa !1364
  %i.gn = load i16, ptr %i.fp, align 2, !tbaa !1364
  %i.go = load i16, ptr %i.fq, align 2, !tbaa !1364
  %i.gp = load i16, ptr %i.fr, align 2, !tbaa !1364
  %i.gq = load i16, ptr %i.fs, align 2, !tbaa !1364
  %i.gr = insertelement <8 x i16> poison, i16 %i.gj, i64 0
  %i.gs = insertelement <8 x i16> %i.gr, i16 %i.gk, i64 1
  %i.gt = insertelement <8 x i16> %i.gs, i16 %i.gl, i64 2
  %i.gu = insertelement <8 x i16> %i.gt, i16 %i.gm, i64 3
  %i.gv = insertelement <8 x i16> %i.gu, i16 %i.gn, i64 4
  %i.gw = insertelement <8 x i16> %i.gv, i16 %i.go, i64 5
  %i.gx = insertelement <8 x i16> %i.gw, i16 %i.gp, i64 6
  %i.gy = insertelement <8 x i16> %i.gx, i16 %i.gq, i64 7
  %i.gz = lshr <8 x i16> %i.gi, splat (i16 5)
  %i.ha = lshr <8 x i16> %i.gy, splat (i16 5)
  %i.hb = and <8 x i16> %i.gz, splat (i16 1)
  %i.hc = and <8 x i16> %i.ha, splat (i16 1)
  %i.hd = xor <8 x i16> %i.hb, splat (i16 1)
  %i.he = xor <8 x i16> %i.hc, splat (i16 1)
  %i.hf = add <8 x i16> %i.hd, %vec.phi           ; 2 uses
  %i.hg = add <8 x i16> %i.he, %vec.phi127        ; 2 uses
  %index.next128 = add nuw i64 %index126, 16      ; 2 uses
  %i.hh = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.hh, label %vec.epilog.iter.check, label %vector.body125, !llvm.loop !5540

vec.epilog.iter.check:                            ; preds = %vector.body125
  %bin.rdx = add <8 x i16> %i.hg, %i.hf
  %i.hi = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.em, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec124, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.hi, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.hj = and i64 %indvars.iv91, 3                ; 2 uses
  %i.hk = icmp eq i64 %i.hj, 0
  %i.hl = select i1 %i.hk, i64 4, i64 %i.hj
  %n.vec130 = sub nsw i64 %indvars.iv91, %i.hl    ; 2 uses
  %i.hm = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next133, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi132 = phi <4 x i16> [ %i.hm, %vec.epilog.ph ], [ %i.ig, %vec.epilog.vector.body ]
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %index131
  %i.ho = getelementptr [16 x i8], ptr %i.ej, i64 %index131
  %i.hp = getelementptr [16 x i8], ptr %i.ej, i64 %index131
  %i.hq = getelementptr [16 x i8], ptr %i.ej, i64 %index131
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 14
  %i.hs = getelementptr i8, ptr %i.ho, i64 30
  %i.ht = getelementptr i8, ptr %i.hp, i64 46
  %i.hu = getelementptr i8, ptr %i.hq, i64 62
  %i.hv = load i16, ptr %i.hr, align 2, !tbaa !1364
  %i.hw = load i16, ptr %i.hs, align 2, !tbaa !1364
  %i.hx = load i16, ptr %i.ht, align 2, !tbaa !1364
  %i.hy = load i16, ptr %i.hu, align 2, !tbaa !1364
  %i.hz = insertelement <4 x i16> poison, i16 %i.hv, i64 0
  %i.ia = insertelement <4 x i16> %i.hz, i16 %i.hw, i64 1
  %i.ib = insertelement <4 x i16> %i.ia, i16 %i.hx, i64 2
  %i.ic = insertelement <4 x i16> %i.ib, i16 %i.hy, i64 3
  %i.id = lshr <4 x i16> %i.ic, splat (i16 5)
  %i.ie = and <4 x i16> %i.id, splat (i16 1)
  %i.if = xor <4 x i16> %i.ie, splat (i16 1)
  %i.ig = add <4 x i16> %i.if, %vec.phi132        ; 2 uses
  %index.next133 = add nuw i64 %index131, 4       ; 2 uses
  %i.ih = icmp eq i64 %index.next133, %n.vec130
  br i1 %i.ih, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5541

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.ii = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ig)
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec124, %vec.epilog.iter.check ], [ %n.vec130, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.hi, %vec.epilog.iter.check ], [ %i.ii, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i ], [ %.021.i.ph, %.lr.ph.i.preheader ]
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 14
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !1364
  %i.im = lshr i16 %i.il, 5
  %i.in = and i16 %i.im, 1
  %i.io = xor i16 %i.in, 1
  %spec.select.i = add i16 %i.io, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv91
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5542

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.ej, i64 %indvars.iv91
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 14
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !1364
  %i.is = and i16 %i.ir, 32
  %.not.i71 = icmp eq i16 %i.is, 0
  br i1 %.not.i71, label %sqlite3TableColumnToStorage.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.it = load i16, ptr %i.dd, align 8, !tbaa !1251
  %i.iu = sub i16 %i.ee, %.0.lcssa.i
  %i.iv = add i16 %i.iu, %i.it
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.r, %._crit_edge.i, %bb.s
  %.018.i = phi i16 [ %i.ee, %bb.r ], [ %i.iv, %bb.s ], [ %.0.lcssa.i, %._crit_edge.i ]
  %i.iw = sext i16 %.018.i to i32
  %i.ix = add nsw i32 %1, %i.iw
  call fastcc void @sqlite3ExprCodeGeneratedColumn(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull %i.dh, i32 noundef %i.ix)
  %i.iy = load i16, ptr %i.di, align 2, !tbaa !1364
  %i.iz = and i16 %i.iy, -129
  store i16 %i.iz, ptr %i.di, align 2, !tbaa !1364
  br label %bb.t

bb.t:                                             ; preds = %sqlite3TableColumnToStorage.exit, %sqlite3WalkExpr.exit, %.lr.ph84
  %.361 = phi ptr [ %.05881, %.lr.ph84 ], [ %.05881, %sqlite3TableColumnToStorage.exit ], [ %i.dh, %sqlite3WalkExpr.exit ] ; 3 uses
  %.3 = phi i32 [ %.05682, %.lr.ph84 ], [ 1, %sqlite3TableColumnToStorage.exit ], [ %.05682, %sqlite3WalkExpr.exit ] ; 2 uses
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.ja = load i16, ptr %i.ai, align 2, !tbaa !1150 ; 2 uses
  %i.jb = sext i16 %i.ja to i64
  %i.jc = icmp slt i64 %indvars.iv.next92, %i.jb
  br i1 %i.jc, label %.lr.ph84, label %._crit_edge85, !llvm.loop !5543

._crit_edge85:                                    ; preds = %bb.t
  %i.jd = icmp ne i32 %.3, 0
  %i.je = icmp ne ptr %.361, null                 ; 2 uses
  %i.jf = select i1 %i.je, i1 %i.jd, i1 false
  br i1 %i.jf, label %bb.m, label %bb.u, !llvm.loop !5544

bb.u:                                             ; preds = %._crit_edge85
  br i1 %i.je, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.jg = load ptr, ptr %.361, align 8, !tbaa !1153
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.677, ptr noundef %i.jg)
  br label %.thread

.thread:                                          ; preds = %bb.m, %bb.v, %bb.u
  store i32 0, ptr %i.cy, align 4, !tbaa !2197
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #58
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3GenerateConstraintChecks(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 -2147483647, -2147483648) %6, i8 noundef zeroext range(i8 0, 3) %7, i8 noundef zeroext %8, i32 noundef range(i32 -2147483648, 2147483647) %9, ptr nofree noundef nonnull writeonly captures(none) %10, ptr noundef %11, ptr noundef %12) unnamed_addr #0 {
bb.a:
  %13 = alloca %struct.Walker, align 8            ; 7 uses
  %.sroa.9 = alloca ptr, align 8                  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.a = icmp ne i32 %6, 0                        ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !980    ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1195 ; 114 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.f = load i16, ptr %i.e, align 2, !tbaa !1150 ; 2 uses
  %wide.trip.count = sext i16 %i.f to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 7 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1083 ; 2 uses
  %i.i = and i32 %i.h, 128
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.b
  %.08.i.in = phi ptr [ %i.o, %.lr.ph.i ], [ %i.k, %bb.b ]
  %.08.i = load ptr, ptr %.08.i.in, align 8, !tbaa !1156, !nonnull !1254, !noundef !1254 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.m = load i16, ptr %i.l, align 1
  %i.n = and i16 %i.m, 3
  %.not5.i = icmp eq i16 %i.n, 2
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i

sqlite3PrimaryKeyIndex.exit:                      ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i, i64 94
  %i.q = load i16, ptr %i.p, align 2, !tbaa !1159
  %i.r = zext i16 %i.q to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %sqlite3PrimaryKeyIndex.exit
  %.0629 = phi ptr [ %.08.i, %sqlite3PrimaryKeyIndex.exit ], [ null, %bb.a ] ; 5 uses
  %.0607 = phi i32 [ %i.r, %sqlite3PrimaryKeyIndex.exit ], [ 1, %bb.a ] ; 8 uses
  %i.s = and i32 %i.h, 2048
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit1051, label %.preheader1050

.preheader1050:                                   ; preds = %bb.c
  %i.t = icmp sgt i16 %i.f, 0
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 52
  %.not701 = icmp eq ptr %11, null
  %.not702 = icmp eq i8 %8, 11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = add i32 %5, 1                            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 144 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 148 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 63
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %.preheader1050
  %i.ae = phi i1 [ false, %.preheader1050 ], [ true, %.backedge ] ; 3 uses
  %i.af = phi i1 [ true, %.preheader1050 ], [ false, %.backedge ]
  %.0566 = phi i32 [ 0, %.preheader1050 ], [ %.1567.lcssa, %.backedge ] ; 2 uses
  %.0564 = phi i32 [ 0, %.preheader1050 ], [ %.1565.lcssa, %.backedge ] ; 2 uses
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %sqlite3VdbeChangeP5.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3VdbeChangeP5.exit ], [ 0, %bb.d ] ; 12 uses
  %.15651066 = phi i32 [ %.2, %sqlite3VdbeChangeP5.exit ], [ %.0564, %bb.d ] ; 10 uses
  %.15671065 = phi i32 [ %.3, %sqlite3VdbeChangeP5.exit ], [ %.0566, %bb.d ] ; 10 uses
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !1149 ; 22 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i8, ptr %i.ai, align 8
  %i.ak = and i8 %i.aj, 15                        ; 3 uses
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %sqlite3VdbeChangeP5.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.am = load i16, ptr %i.v, align 4, !tbaa !1189
  %i.an = sext i16 %i.am to i64
  %i.ao = icmp eq i64 %indvars.iv, %i.an
  br i1 %i.ao, label %sqlite3VdbeChangeP5.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !1364 ; 2 uses
  %i.ar = and i16 %i.aq, 96                       ; 3 uses
  %i.as = icmp eq i16 %i.ar, 0
  %or.cond = or i1 %i.ae, %i.as
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = add nsw i32 %.15651066, 1
  br label %sqlite3VdbeChangeP5.exit

bb.h:                                             ; preds = %bb.f
  br i1 %.not701, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv
  %i.av = load i32, ptr %i.au, align 4, !tbaa !570
  %i.aw = icmp sgt i32 %i.av, -1
  %i.ax = icmp ne i16 %i.ar, 0
  %or.cond3 = or i1 %i.ax, %i.aw
  br i1 %or.cond3, label %bb.j, label %sqlite3VdbeChangeP5.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ay = icmp eq i8 %i.ak, 11
  %narrow703 = select i1 %i.ay, i8 2, i8 %i.ak
  %.0613.in = select i1 %.not702, i8 %narrow703, i8 %8 ; 2 uses
  %i.az = icmp eq i8 %.0613.in, 5
  br i1 %i.az, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.bb = load i16, ptr %i.ba, align 4, !tbaa !2062
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %.0613 = zext i8 %.0613.in to i32
  %i.bd = icmp ne i16 %i.ar, 0
  %or.cond5 = or i1 %i.af, %i.bd
  br i1 %or.cond5, label %bb.o, label %sqlite3VdbeChangeP5.exit

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.1614 = phi i32 [ 2, %bb.m ], [ 5, %bb.l ], [ %.0613, %bb.n ] ; 3 uses
  %i.be = trunc i64 %indvars.iv to i16            ; 4 uses
  %i.bf = load i32, ptr %i.g, align 8, !tbaa !1083
  %i.bg = and i32 %i.bf, 32
  %i.bh = icmp eq i32 %i.bg, 0
  %i.bi = icmp slt i16 %i.be, 0
  %or.cond.i = or i1 %i.bi, %i.bh
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.o
  %.not23.i = icmp eq i16 %i.be, 0
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 5
  br i1 %min.iters.check, label %.lr.ph.i722.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1318 = icmp samesign ult i64 %indvars.iv, 17
  br i1 %min.iters.check1318, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %indvars.iv, 15                 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = select i1 %i.bk, i64 16, i64 %i.bj      ; 2 uses
  %n.vec = sub nsw i64 %indvars.iv, %i.bl         ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ee, %vector.body ]
  %vec.phi1319 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ef, %vector.body ]
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bn, i64 30
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 46
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 62
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 78
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 94
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 110
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 126
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 142
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 158
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bw, i64 174
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bx, i64 190
  %i.co = getelementptr inbounds nuw i8, ptr %i.by, i64 206
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 222
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 238
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 254
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !1364
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !1364
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !1364
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !1364
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !1364
  %i.cx = load i16, ptr %i.ch, align 2, !tbaa !1364
  %i.cy = load i16, ptr %i.ci, align 2, !tbaa !1364
  %i.cz = load i16, ptr %i.cj, align 2, !tbaa !1364
  %i.da = insertelement <8 x i16> poison, i16 %i.cs, i64 0
  %i.db = insertelement <8 x i16> %i.da, i16 %i.ct, i64 1
  %i.dc = insertelement <8 x i16> %i.db, i16 %i.cu, i64 2
  %i.dd = insertelement <8 x i16> %i.dc, i16 %i.cv, i64 3
  %i.de = insertelement <8 x i16> %i.dd, i16 %i.cw, i64 4
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 5
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 6
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 7
  %i.di = load i16, ptr %i.ck, align 2, !tbaa !1364
  %i.dj = load i16, ptr %i.cl, align 2, !tbaa !1364
  %i.dk = load i16, ptr %i.cm, align 2, !tbaa !1364
  %i.dl = load i16, ptr %i.cn, align 2, !tbaa !1364
  %i.dm = load i16, ptr %i.co, align 2, !tbaa !1364
  %i.dn = load i16, ptr %i.cp, align 2, !tbaa !1364
  %i.do = load i16, ptr %i.cq, align 2, !tbaa !1364
  %i.dp = load i16, ptr %i.cr, align 2, !tbaa !1364
  %i.dq = insertelement <8 x i16> poison, i16 %i.di, i64 0
  %i.dr = insertelement <8 x i16> %i.dq, i16 %i.dj, i64 1
  %i.ds = insertelement <8 x i16> %i.dr, i16 %i.dk, i64 2
  %i.dt = insertelement <8 x i16> %i.ds, i16 %i.dl, i64 3
  %i.du = insertelement <8 x i16> %i.dt, i16 %i.dm, i64 4
  %i.dv = insertelement <8 x i16> %i.du, i16 %i.dn, i64 5
  %i.dw = insertelement <8 x i16> %i.dv, i16 %i.do, i64 6
  %i.dx = insertelement <8 x i16> %i.dw, i16 %i.dp, i64 7
  %i.dy = lshr <8 x i16> %i.dh, splat (i16 5)
  %i.dz = lshr <8 x i16> %i.dx, splat (i16 5)
  %i.ea = and <8 x i16> %i.dy, splat (i16 1)
  %i.eb = and <8 x i16> %i.dz, splat (i16 1)
  %i.ec = xor <8 x i16> %i.ea, splat (i16 1)
  %i.ed = xor <8 x i16> %i.eb, splat (i16 1)
  %i.ee = add <8 x i16> %i.ec, %vec.phi           ; 2 uses
  %i.ef = add <8 x i16> %i.ed, %vec.phi1319       ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.eg = icmp eq i64 %index.next, %n.vec
  br i1 %i.eg, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5545

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ef, %i.ee
  %i.eh = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.bl, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i722.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.eh, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.ei = and i64 %indvars.iv, 3                  ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 0
  %i.ek = select i1 %i.ej, i64 4, i64 %i.ei
  %n.vec1320 = sub nsw i64 %indvars.iv, %i.ek     ; 2 uses
  %i.el = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1321 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1323, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi1322 = phi <4 x i16> [ %i.el, %vec.epilog.ph ], [ %i.ff, %vec.epilog.vector.body ]
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %index1321
  %i.en = getelementptr [16 x i8], ptr %i.ag, i64 %index1321
  %i.eo = getelementptr [16 x i8], ptr %i.ag, i64 %index1321
  %i.ep = getelementptr [16 x i8], ptr %i.ag, i64 %index1321
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 14
  %i.er = getelementptr i8, ptr %i.en, i64 30
  %i.es = getelementptr i8, ptr %i.eo, i64 46
  %i.et = getelementptr i8, ptr %i.ep, i64 62
  %i.eu = load i16, ptr %i.eq, align 2, !tbaa !1364
  %i.ev = load i16, ptr %i.er, align 2, !tbaa !1364
  %i.ew = load i16, ptr %i.es, align 2, !tbaa !1364
  %i.ex = load i16, ptr %i.et, align 2, !tbaa !1364
  %i.ey = insertelement <4 x i16> poison, i16 %i.eu, i64 0
  %i.ez = insertelement <4 x i16> %i.ey, i16 %i.ev, i64 1
  %i.fa = insertelement <4 x i16> %i.ez, i16 %i.ew, i64 2
  %i.fb = insertelement <4 x i16> %i.fa, i16 %i.ex, i64 3
  %i.fc = lshr <4 x i16> %i.fb, splat (i16 5)
  %i.fd = and <4 x i16> %i.fc, splat (i16 1)
  %i.fe = xor <4 x i16> %i.fd, splat (i16 1)
  %i.ff = add <4 x i16> %i.fe, %vec.phi1322       ; 2 uses
  %index.next1323 = add nuw i64 %index1321, 4     ; 2 uses
  %i.fg = icmp eq i64 %index.next1323, %n.vec1320
  br i1 %i.fg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5546

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.fh = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ff)
  br label %.lr.ph.i722.preheader

.lr.ph.i722.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1320, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.eh, %vec.epilog.iter.check ], [ %i.fh, %vec.epilog.middle.block ]
  br label %.lr.ph.i722

.lr.ph.i722:                                      ; preds = %.lr.ph.i722.preheader, %.lr.ph.i722
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i722 ], [ %indvars.iv.i.ph, %.lr.ph.i722.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i722 ], [ %.021.i.ph, %.lr.ph.i722.preheader ]
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 14
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !1364
  %i.fl = lshr i16 %i.fk, 5
  %i.fm = and i16 %i.fl, 1
  %i.fn = xor i16 %i.fm, 1
  %spec.select.i = add i16 %i.fn, %.021.i         ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i722, !llvm.loop !5547

._crit_edge.i:                                    ; preds = %.lr.ph.i722, %.preheader.i
  %.0.lcssa.i723 = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i722 ] ; 2 uses
  %i.fo = and i16 %i.aq, 32
  %.not.i724 = icmp eq i16 %i.fo, 0
  br i1 %.not.i724, label %sqlite3TableColumnToStorage.exit, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.fp = load i16, ptr %i.w, align 8, !tbaa !1251
  %i.fq = sub i16 %i.be, %.0.lcssa.i723
  %i.fr = add i16 %i.fq, %i.fp
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.o, %._crit_edge.i, %bb.p
  %.018.i = phi i16 [ %i.be, %bb.o ], [ %i.fr, %bb.p ], [ %.0.lcssa.i723, %._crit_edge.i ]
  %i.fs = sext i16 %.018.i to i32
  %i.ft = add i32 %i.x, %i.fs                     ; 7 uses
  %trunc704 = trunc nuw i32 %.1614 to i8
  switch i8 %trunc704, label %bb.ai [
    i8 5, label %bb.q
    i8 2, label %bb.ab
    i8 1, label %bb.ac
    i8 3, label %bb.ac
  ]

bb.q:                                             ; preds = %sqlite3TableColumnToStorage.exit
  %i.fu = load i32, ptr %i.z, align 8, !tbaa !703 ; 4 uses
  %i.fv = load i32, ptr %i.aa, align 4, !tbaa !1164
  %.not.i.i = icmp sgt i32 %i.fv, %i.fu
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fw = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 52, i32 noundef %i.ft, i32 noundef 0, i32 noundef 0), !inline_history !2027
  br label %sqlite3VdbeAddOp1.exit

bb.s:                                             ; preds = %bb.q
  %i.fx = add nsw i32 %i.fu, 1
  store i32 %i.fx, ptr %i.z, align 8, !tbaa !703
  %i.fy = load ptr, ptr %i.ab, align 8, !tbaa !702
  %i.fz = sext i32 %i.fu to i64
  %i.ga = getelementptr inbounds [32 x i8], ptr %i.fy, i64 %i.fz ; 5 uses
  store i8 52, ptr %i.ga, align 8, !tbaa !929
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 2
  store i16 0, ptr %i.gb, align 2, !tbaa !930
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 4
  store i32 %i.ft, ptr %i.gc, align 4, !tbaa !926
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 1
  store i8 0, ptr %i.ge, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gd, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %bb.r, %bb.s
  %.0.i.i = phi i32 [ %i.fw, %bb.r ], [ %i.fu, %bb.s ]
  %i.gf = add nsw i32 %.15671065, 1
  %i.gg = getelementptr i8, ptr %i.ah, i64 12
end_hunk_15
begin_hunk_16_@sqlite3GenerateConstraintChecks:bb.a
  %i.adq = load ptr, ptr %i.adp, align 8, !tbaa !1998 ; 2 uses
  %i.adr = load ptr, ptr %0, align 8, !tbaa !980  ; 3 uses
  %.not.i.i840 = icmp eq ptr %i.adq, null
  br i1 %.not.i.i840, label %sqlite3ExprDup.exit.i841, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.ads = call fastcc ptr @exprDup(ptr noundef %i.adr, ptr noundef readonly %i.adq, i32 noundef 0, ptr noundef null), !inline_history !5548
  br label %sqlite3ExprDup.exit.i841

sqlite3ExprDup.exit.i841:                         ; preds = %bb.fs, %bb.fr
  %i.adt = phi ptr [ %i.ads, %bb.fs ], [ null, %bb.fr ] ; 5 uses
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adr, i64 103
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !918
  %.not.i842 = icmp eq i8 %i.adv, 0
  br i1 %.not.i842, label %bb.ft, label %sqlite3ExprCode.exit

bb.ft:                                            ; preds = %sqlite3ExprDup.exit.i841
  %i.adw = load ptr, ptr %i.c, align 8, !tbaa !1195
  %i.adx = icmp eq ptr %i.adw, null
  br i1 %i.adx, label %sqlite3ExprCode.exit, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ady = trunc nuw nsw i64 %indvars.iv1158 to i32
  %i.adz = add i32 %i.ade, %i.ady                 ; 4 uses
  %i.aea = call fastcc i32 @sqlite3ExprCodeTarget(ptr noundef nonnull %0, ptr noundef %i.adt, i32 noundef %i.adz) #61, !inline_history !5556 ; 3 uses
  %.not.i990 = icmp eq i32 %i.aea, %i.adz
  br i1 %.not.i990, label %sqlite3ExprCode.exit, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %.not9.i.i = icmp eq ptr %i.adt, null
  br i1 %.not9.i.i, label %sqlite3ExprSkipCollateAndLikely.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.fv, %bb.ga
  %.010.i.i = phi ptr [ %.1.i.i, %bb.ga ], [ %i.adt, %bb.fv ] ; 5 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 4
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !795 ; 3 uses
  %i.aed = and i32 %i.aec, 532480
  %.not7.i.i = icmp eq i32 %i.aed, 0
  br i1 %.not7.i.i, label %sqlite3ExprSkipCollateAndLikely.exit.i, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph.i.i
  %i.aee = and i32 %i.aec, 524288
  %.not8.i.i = icmp eq i32 %i.aee, 0
  br i1 %.not8.i.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %i.aef = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 32
  %i.aeg = load ptr, ptr %i.aef, align 8, !tbaa !733
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.aeg, i64 8
  br label %bb.ga

bb.fy:                                            ; preds = %bb.fw
  %i.aei = load i8, ptr %.010.i.i, align 8, !tbaa !1828
  %i.aej = icmp eq i8 %i.aei, 114
  br i1 %i.aej, label %bb.fz, label %sqlite3ExprSkipCollateAndLikely.exit.i

bb.fz:                                            ; preds = %bb.fy
  %i.aek = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fx
  %.1.in.i.i = phi ptr [ %i.aeh, %bb.fx ], [ %i.aek, %bb.fz ]
  %.1.i.i = load ptr, ptr %.1.in.i.i, align 8, !tbaa !792 ; 2 uses
  %.not.i.i991 = icmp eq ptr %.1.i.i, null
  br i1 %.not.i.i991, label %sqlite3ExprSkipCollateAndLikely.exit.thread.i, label %.lr.ph.i.i, !llvm.loop !348

sqlite3ExprSkipCollateAndLikely.exit.i:           ; preds = %bb.fy, %.lr.ph.i.i
  %i.ael = and i32 %i.aec, 4194304
  %.not17.i994 = icmp eq i32 %i.ael, 0
  br i1 %.not17.i994, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %sqlite3ExprSkipCollateAndLikely.exit.i
  %i.aem = load i8, ptr %.010.i.i, align 8, !tbaa !1828
  %i.aen = icmp eq i8 %i.aem, -80
  br i1 %i.aen, label %bb.gc, label %sqlite3ExprSkipCollateAndLikely.exit.thread.i

sqlite3ExprSkipCollateAndLikely.exit.thread.i:    ; preds = %bb.ga, %bb.gb, %bb.fv
  br label %bb.gc

bb.gc:                                            ; preds = %sqlite3ExprSkipCollateAndLikely.exit.thread.i, %bb.gb, %sqlite3ExprSkipCollateAndLikely.exit.i
  %.0.i992 = phi i32 [ 83, %sqlite3ExprSkipCollateAndLikely.exit.thread.i ], [ 82, %bb.gb ], [ 82, %sqlite3ExprSkipCollateAndLikely.exit.i ] ; 2 uses
  %i.aeo = load ptr, ptr %i.c, align 8, !tbaa !1195 ; 4 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aeo, i64 144 ; 2 uses
  %i.aeq = load i32, ptr %i.aep, align 8, !tbaa !703 ; 3 uses
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aeo, i64 148
  %i.aes = load i32, ptr %i.aer, align 4, !tbaa !1164
  %.not.i.i.i993 = icmp sgt i32 %i.aes, %i.aeq
  br i1 %.not.i.i.i993, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.aet = call fastcc i32 @growOp3(ptr noundef nonnull %i.aeo, i32 noundef range(i32 -1, 511) %.0.i992, i32 noundef %i.aea, i32 noundef %i.adz, i32 noundef 0), !inline_history !5557 ; 0 uses
  br label %sqlite3ExprCode.exit

bb.ge:                                            ; preds = %bb.gc
  %i.aeu = add nsw i32 %i.aeq, 1
  store i32 %i.aeu, ptr %i.aep, align 8, !tbaa !703
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeo, i64 136
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !702
  %i.aex = sext i32 %i.aeq to i64
  %i.aey = getelementptr inbounds [32 x i8], ptr %i.aew, i64 %i.aex ; 6 uses
  %i.aez = trunc nuw nsw i32 %.0.i992 to i8
  store i8 %i.aez, ptr %i.aey, align 8, !tbaa !929
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aey, i64 2
  store i16 0, ptr %i.afa, align 2, !tbaa !930
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aey, i64 4
  store i32 %i.aea, ptr %i.afb, align 4, !tbaa !926
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aey, i64 8
  store i32 %i.adz, ptr %i.afc, align 8, !tbaa !927
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aey, i64 12
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aey, i64 1
  store i8 0, ptr %i.afe, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.afd, i8 0, i64 20, i1 false)
  br label %sqlite3ExprCode.exit

sqlite3ExprCode.exit:                             ; preds = %bb.ge, %bb.gd, %bb.fu, %bb.ft, %sqlite3ExprDup.exit.i841
  %.not.i8.i843 = icmp eq ptr %i.adt, null
  br i1 %.not.i8.i843, label %sqlite3ExprCodeCopy.exit844, label %bb.gf

bb.gf:                                            ; preds = %sqlite3ExprCode.exit
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef nonnull %i.adr, ptr noundef %i.adt), !inline_history !5549
  br label %sqlite3ExprCodeCopy.exit844

sqlite3ExprCodeCopy.exit844:                      ; preds = %sqlite3ExprCode.exit, %bb.gf
  store i32 0, ptr %i.aan, align 4, !tbaa !2197
  %i.aff = load ptr, ptr %.36331114, align 8, !tbaa !1979
  %i.afg = trunc nuw nsw i64 %indvars.iv1158 to i32
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef %i.d, ptr noundef nonnull @.str.1046, ptr noundef %i.aff, i32 noundef %i.afg)
  br label %bb.go

bb.gg:                                            ; preds = %bb.fq
  %i.afh = load i16, ptr %i.aao, align 4, !tbaa !1189
  %i.afi = icmp eq i16 %i.adm, %i.afh
  br i1 %i.afi, label %bb.gh, label %bb.gk

bb.gh:                                            ; preds = %bb.fq, %bb.gg
  %i.afj = add nuw i64 %indvars.iv1158, %i.adj    ; 2 uses
  %i.afk = load i32, ptr %i.aag, align 8, !tbaa !703 ; 3 uses
  %i.afl = load i32, ptr %i.aal, align 4, !tbaa !1164
  %.not.i.i845 = icmp sgt i32 %i.afl, %i.afk
  br i1 %.not.i.i845, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.afm = trunc i64 %i.afj to i32
  %i.afn = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 84, i32 noundef %5, i32 noundef %i.afm, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit847

bb.gj:                                            ; preds = %bb.gh
  %i.afo = add nsw i32 %i.afk, 1
  store i32 %i.afo, ptr %i.aag, align 8, !tbaa !703
  %i.afp = load ptr, ptr %i.aah, align 8, !tbaa !702
  %i.afq = sext i32 %i.afk to i64
  %i.afr = getelementptr inbounds [32 x i8], ptr %i.afp, i64 %i.afq ; 6 uses
  store i8 84, ptr %i.afr, align 8, !tbaa !929
  %i.afs = getelementptr inbounds nuw i8, ptr %i.afr, i64 2
  store i16 0, ptr %i.afs, align 2, !tbaa !930
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afr, i64 4
  store i32 %5, ptr %i.aft, align 4, !tbaa !926
  %i.afu = getelementptr inbounds nuw i8, ptr %i.afr, i64 8
  %i.afv = trunc i64 %i.afj to i32
  store i32 %i.afv, ptr %i.afu, align 8, !tbaa !927
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afr, i64 12
  %i.afx = getelementptr inbounds nuw i8, ptr %i.afr, i64 1
  store i8 0, ptr %i.afx, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.afw, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit847

sqlite3VdbeAddOp2.exit847:                        ; preds = %bb.gi, %bb.gj
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.600)
  br label %bb.go

bb.gk:                                            ; preds = %bb.gg
  %i.afy = load i32, ptr %i.g, align 8, !tbaa !1083
  %i.afz = and i32 %i.afy, 32
  %i.aga = icmp eq i32 %i.afz, 0
  %wide.trip.count.i852 = sext i16 %i.adm to i64  ; 6 uses
  %i.agb = icmp slt i16 %i.adm, 0
  %or.cond.i848 = or i1 %i.agb, %i.aga
  br i1 %or.cond.i848, label %sqlite3TableColumnToStorage.exit862, label %.preheader.i849

.preheader.i849:                                  ; preds = %bb.gk
  %.not23.i850 = icmp eq i16 %i.adm, 0
  %i.agc = load ptr, ptr %i.aap, align 8, !tbaa !1149 ; 22 uses
  br i1 %.not23.i850, label %._crit_edge.i858, label %iter.check1366

iter.check1366:                                   ; preds = %.preheader.i849
  %min.iters.check1352 = icmp ult i16 %i.adm, 5
  br i1 %min.iters.check1352, label %vec.epilog.scalar.ph1367.preheader, label %vector.main.loop.iter.check1353

vector.main.loop.iter.check1353:                  ; preds = %iter.check1366
  %min.iters.check1354 = icmp ult i16 %i.adm, 17
  br i1 %min.iters.check1354, label %vec.epilog.ph1370, label %vector.ph1355

vector.ph1355:                                    ; preds = %vector.main.loop.iter.check1353
  %i.agd = and i64 %wide.trip.count.i852, 15
  %i.age = and i16 %i.adm, 15
  %i.agf = icmp eq i16 %i.age, 0
  %i.agg = select i1 %i.agf, i64 16, i64 %i.agd   ; 2 uses
  %n.vec1356 = sub nsw i64 %wide.trip.count.i852, %i.agg ; 3 uses
  br label %vector.body1357

vector.body1357:                                  ; preds = %vector.body1357, %vector.ph1355
  %index1358 = phi i64 [ 0, %vector.ph1355 ], [ %index.next1361, %vector.body1357 ] ; 17 uses
  %vec.phi1359 = phi <8 x i16> [ zeroinitializer, %vector.ph1355 ], [ %i.aiz, %vector.body1357 ]
  %vec.phi1360 = phi <8 x i16> [ zeroinitializer, %vector.ph1355 ], [ %i.aja, %vector.body1357 ]
  %i.agh = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agi = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agj = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agk = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agl = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agm = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agn = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.ago = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agp = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agq = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agr = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.ags = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agt = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agu = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agv = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agw = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1358
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agh, i64 14
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agi, i64 30
  %i.agz = getelementptr inbounds nuw i8, ptr %i.agj, i64 46
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agk, i64 62
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agl, i64 78
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agm, i64 94
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agn, i64 110
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ago, i64 126
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agp, i64 142
  %i.ahg = getelementptr inbounds nuw i8, ptr %i.agq, i64 158
  %i.ahh = getelementptr inbounds nuw i8, ptr %i.agr, i64 174
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ags, i64 190
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.agt, i64 206
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agu, i64 222
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.agv, i64 238
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agw, i64 254
  %i.ahn = load i16, ptr %i.agx, align 2, !tbaa !1364
  %i.aho = load i16, ptr %i.agy, align 2, !tbaa !1364
  %i.ahp = load i16, ptr %i.agz, align 2, !tbaa !1364
  %i.ahq = load i16, ptr %i.aha, align 2, !tbaa !1364
  %i.ahr = load i16, ptr %i.ahb, align 2, !tbaa !1364
  %i.ahs = load i16, ptr %i.ahc, align 2, !tbaa !1364
  %i.aht = load i16, ptr %i.ahd, align 2, !tbaa !1364
  %i.ahu = load i16, ptr %i.ahe, align 2, !tbaa !1364
  %i.ahv = insertelement <8 x i16> poison, i16 %i.ahn, i64 0
  %i.ahw = insertelement <8 x i16> %i.ahv, i16 %i.aho, i64 1
  %i.ahx = insertelement <8 x i16> %i.ahw, i16 %i.ahp, i64 2
  %i.ahy = insertelement <8 x i16> %i.ahx, i16 %i.ahq, i64 3
  %i.ahz = insertelement <8 x i16> %i.ahy, i16 %i.ahr, i64 4
  %i.aia = insertelement <8 x i16> %i.ahz, i16 %i.ahs, i64 5
  %i.aib = insertelement <8 x i16> %i.aia, i16 %i.aht, i64 6
  %i.aic = insertelement <8 x i16> %i.aib, i16 %i.ahu, i64 7
  %i.aid = load i16, ptr %i.ahf, align 2, !tbaa !1364
  %i.aie = load i16, ptr %i.ahg, align 2, !tbaa !1364
  %i.aif = load i16, ptr %i.ahh, align 2, !tbaa !1364
  %i.aig = load i16, ptr %i.ahi, align 2, !tbaa !1364
  %i.aih = load i16, ptr %i.ahj, align 2, !tbaa !1364
  %i.aii = load i16, ptr %i.ahk, align 2, !tbaa !1364
  %i.aij = load i16, ptr %i.ahl, align 2, !tbaa !1364
  %i.aik = load i16, ptr %i.ahm, align 2, !tbaa !1364
  %i.ail = insertelement <8 x i16> poison, i16 %i.aid, i64 0
  %i.aim = insertelement <8 x i16> %i.ail, i16 %i.aie, i64 1
  %i.ain = insertelement <8 x i16> %i.aim, i16 %i.aif, i64 2
  %i.aio = insertelement <8 x i16> %i.ain, i16 %i.aig, i64 3
  %i.aip = insertelement <8 x i16> %i.aio, i16 %i.aih, i64 4
  %i.aiq = insertelement <8 x i16> %i.aip, i16 %i.aii, i64 5
  %i.air = insertelement <8 x i16> %i.aiq, i16 %i.aij, i64 6
  %i.ais = insertelement <8 x i16> %i.air, i16 %i.aik, i64 7
  %i.ait = lshr <8 x i16> %i.aic, splat (i16 5)
  %i.aiu = lshr <8 x i16> %i.ais, splat (i16 5)
  %i.aiv = and <8 x i16> %i.ait, splat (i16 1)
  %i.aiw = and <8 x i16> %i.aiu, splat (i16 1)
  %i.aix = xor <8 x i16> %i.aiv, splat (i16 1)
  %i.aiy = xor <8 x i16> %i.aiw, splat (i16 1)
  %i.aiz = add <8 x i16> %i.aix, %vec.phi1359     ; 2 uses
  %i.aja = add <8 x i16> %i.aiy, %vec.phi1360     ; 2 uses
  %index.next1361 = add nuw i64 %index1358, 16    ; 2 uses
  %i.ajb = icmp eq i64 %index.next1361, %n.vec1356
  br i1 %i.ajb, label %vec.epilog.iter.check1368, label %vector.body1357, !llvm.loop !5558

vec.epilog.iter.check1368:                        ; preds = %vector.body1357
  %bin.rdx1363 = add <8 x i16> %i.aja, %i.aiz
  %i.ajc = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx1363) ; 2 uses
  %min.epilog.iters.check1369 = icmp samesign ult i64 %i.agg, 5
  br i1 %min.epilog.iters.check1369, label %vec.epilog.scalar.ph1367.preheader, label %vec.epilog.ph1370, !prof !1709

vec.epilog.ph1370:                                ; preds = %vector.main.loop.iter.check1353, %vec.epilog.iter.check1368
  %vec.epilog.resume.val1364 = phi i64 [ %n.vec1356, %vec.epilog.iter.check1368 ], [ 0, %vector.main.loop.iter.check1353 ]
  %bc.merge.rdx1365 = phi i16 [ %i.ajc, %vec.epilog.iter.check1368 ], [ 0, %vector.main.loop.iter.check1353 ]
  %i.ajd = and i64 %wide.trip.count.i852, 3
  %i.aje = and i16 %i.adm, 3
  %i.ajf = icmp eq i16 %i.aje, 0
  %i.ajg = select i1 %i.ajf, i64 4, i64 %i.ajd
  %n.vec1371 = sub nsw i64 %wide.trip.count.i852, %i.ajg ; 2 uses
  %i.ajh = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx1365, i64 0
  br label %vec.epilog.vector.body1372

vec.epilog.vector.body1372:                       ; preds = %vec.epilog.vector.body1372, %vec.epilog.ph1370
  %index1373 = phi i64 [ %vec.epilog.resume.val1364, %vec.epilog.ph1370 ], [ %index.next1375, %vec.epilog.vector.body1372 ] ; 5 uses
  %vec.phi1374 = phi <4 x i16> [ %i.ajh, %vec.epilog.ph1370 ], [ %i.akb, %vec.epilog.vector.body1372 ]
  %i.aji = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %index1373
  %i.ajj = getelementptr [16 x i8], ptr %i.agc, i64 %index1373
  %i.ajk = getelementptr [16 x i8], ptr %i.agc, i64 %index1373
  %i.ajl = getelementptr [16 x i8], ptr %i.agc, i64 %index1373
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.aji, i64 14
  %i.ajn = getelementptr i8, ptr %i.ajj, i64 30
  %i.ajo = getelementptr i8, ptr %i.ajk, i64 46
  %i.ajp = getelementptr i8, ptr %i.ajl, i64 62
  %i.ajq = load i16, ptr %i.ajm, align 2, !tbaa !1364
  %i.ajr = load i16, ptr %i.ajn, align 2, !tbaa !1364
  %i.ajs = load i16, ptr %i.ajo, align 2, !tbaa !1364
  %i.ajt = load i16, ptr %i.ajp, align 2, !tbaa !1364
  %i.aju = insertelement <4 x i16> poison, i16 %i.ajq, i64 0
  %i.ajv = insertelement <4 x i16> %i.aju, i16 %i.ajr, i64 1
  %i.ajw = insertelement <4 x i16> %i.ajv, i16 %i.ajs, i64 2
  %i.ajx = insertelement <4 x i16> %i.ajw, i16 %i.ajt, i64 3
  %i.ajy = lshr <4 x i16> %i.ajx, splat (i16 5)
  %i.ajz = and <4 x i16> %i.ajy, splat (i16 1)
  %i.aka = xor <4 x i16> %i.ajz, splat (i16 1)
  %i.akb = add <4 x i16> %i.aka, %vec.phi1374     ; 2 uses
  %index.next1375 = add nuw i64 %index1373, 4     ; 2 uses
  %i.akc = icmp eq i64 %index.next1375, %n.vec1371
  br i1 %i.akc, label %vec.epilog.middle.block1376, label %vec.epilog.vector.body1372, !llvm.loop !5559

vec.epilog.middle.block1376:                      ; preds = %vec.epilog.vector.body1372
  %i.akd = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.akb)
  br label %vec.epilog.scalar.ph1367.preheader

vec.epilog.scalar.ph1367.preheader:               ; preds = %iter.check1366, %vec.epilog.iter.check1368, %vec.epilog.middle.block1376
  %indvars.iv.i853.ph = phi i64 [ 0, %iter.check1366 ], [ %n.vec1356, %vec.epilog.iter.check1368 ], [ %n.vec1371, %vec.epilog.middle.block1376 ]
  %.021.i854.ph = phi i16 [ 0, %iter.check1366 ], [ %i.ajc, %vec.epilog.iter.check1368 ], [ %i.akd, %vec.epilog.middle.block1376 ]
  br label %vec.epilog.scalar.ph1367

vec.epilog.scalar.ph1367:                         ; preds = %vec.epilog.scalar.ph1367.preheader, %vec.epilog.scalar.ph1367
  %indvars.iv.i853 = phi i64 [ %indvars.iv.next.i856, %vec.epilog.scalar.ph1367 ], [ %indvars.iv.i853.ph, %vec.epilog.scalar.ph1367.preheader ] ; 2 uses
  %.021.i854 = phi i16 [ %spec.select.i855, %vec.epilog.scalar.ph1367 ], [ %.021.i854.ph, %vec.epilog.scalar.ph1367.preheader ]
  %i.ake = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %indvars.iv.i853
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 14
  %i.akg = load i16, ptr %i.akf, align 2, !tbaa !1364
  %i.akh = lshr i16 %i.akg, 5
  %i.aki = and i16 %i.akh, 1
  %i.akj = xor i16 %i.aki, 1
  %spec.select.i855 = add i16 %i.akj, %.021.i854  ; 2 uses
  %indvars.iv.next.i856 = add nuw nsw i64 %indvars.iv.i853, 1 ; 2 uses
  %exitcond.not.i857 = icmp eq i64 %indvars.iv.next.i856, %wide.trip.count.i852
  br i1 %exitcond.not.i857, label %._crit_edge.i858, label %vec.epilog.scalar.ph1367, !llvm.loop !5560

._crit_edge.i858:                                 ; preds = %vec.epilog.scalar.ph1367, %.preheader.i849
  %.pre-phi1176 = phi i64 [ 0, %.preheader.i849 ], [ %wide.trip.count.i852, %vec.epilog.scalar.ph1367 ]
  %.0.lcssa.i859 = phi i16 [ 0, %.preheader.i849 ], [ %spec.select.i855, %vec.epilog.scalar.ph1367 ] ; 2 uses
  %i.akk = getelementptr inbounds nuw [16 x i8], ptr %i.agc, i64 %.pre-phi1176
  %i.akl = getelementptr inbounds nuw i8, ptr %i.akk, i64 14
  %i.akm = load i16, ptr %i.akl, align 2, !tbaa !1364
  %i.akn = and i16 %i.akm, 32
  %.not.i860 = icmp eq i16 %i.akn, 0
  br i1 %.not.i860, label %sqlite3TableColumnToStorage.exit862, label %bb.gl

bb.gl:                                            ; preds = %._crit_edge.i858
  %i.ako = load i16, ptr %i.aaq, align 8, !tbaa !1251
  %i.akp = sub i16 %i.adm, %.0.lcssa.i859
  %i.akq = add i16 %i.akp, %i.ako
  br label %sqlite3TableColumnToStorage.exit862

sqlite3TableColumnToStorage.exit862:              ; preds = %bb.gk, %._crit_edge.i858, %bb.gl
  %.018.i861 = phi i16 [ %i.adm, %bb.gk ], [ %i.akq, %bb.gl ], [ %.0.lcssa.i859, %._crit_edge.i858 ]
  %i.akr = sext i16 %.018.i861 to i32
  %i.aks = add i32 %i.aak, %i.akr                 ; 2 uses
  %i.akt = add nuw i64 %indvars.iv1158, %i.adj    ; 2 uses
  %i.aku = load i32, ptr %i.aag, align 8, !tbaa !703 ; 3 uses
  %i.akv = load i32, ptr %i.aal, align 4, !tbaa !1164
  %.not.i.i863 = icmp sgt i32 %i.akv, %i.aku
  br i1 %.not.i.i863, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %sqlite3TableColumnToStorage.exit862
  %i.akw = trunc i64 %i.akt to i32
  %i.akx = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 83, i32 noundef %i.aks, i32 noundef %i.akw, i32 noundef 0), !inline_history !1196 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit865

bb.gn:                                            ; preds = %sqlite3TableColumnToStorage.exit862
  %i.aky = add nsw i32 %i.aku, 1
  store i32 %i.aky, ptr %i.aag, align 8, !tbaa !703
  %i.akz = load ptr, ptr %i.aah, align 8, !tbaa !702
  %i.ala = sext i32 %i.aku to i64
  %i.alb = getelementptr inbounds [32 x i8], ptr %i.akz, i64 %i.ala ; 6 uses
  store i8 83, ptr %i.alb, align 8, !tbaa !929
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 2
  store i16 0, ptr %i.alc, align 2, !tbaa !930
  %i.ald = getelementptr inbounds nuw i8, ptr %i.alb, i64 4
  store i32 %i.aks, ptr %i.ald, align 4, !tbaa !926
  %i.ale = getelementptr inbounds nuw i8, ptr %i.alb, i64 8
  %i.alf = trunc i64 %i.akt to i32
  store i32 %i.alf, ptr %i.ale, align 8, !tbaa !927
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alb, i64 12
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alb, i64 1
  store i8 0, ptr %i.alh, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.alg, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp2.exit865

sqlite3VdbeAddOp2.exit865:                        ; preds = %bb.gm, %bb.gn
  %i.ali = load ptr, ptr %i.aap, align 8, !tbaa !1149
  %i.alj = sext i16 %i.adm to i64
end_hunk_16
begin_hunk_17_@sqlite3GenerateConstraintChecks:bb.a
  br label %sqlite3VdbeAddOp3.exit892

sqlite3VdbeAddOp3.exit892:                        ; preds = %bb.ii, %bb.ij
  %i.asv = load i32, ptr %i.aag, align 8, !tbaa !703 ; 2 uses
  %i.asw = icmp sgt i32 %i.asv, 0
  br i1 %i.asw, label %bb.ik, label %sqlite3VdbeChangeP5.exit893

bb.ik:                                            ; preds = %sqlite3VdbeAddOp3.exit892
  %i.asx = load ptr, ptr %i.aah, align 8, !tbaa !702
  %i.asy = zext nneg i32 %i.asv to i64
  %i.asz = getelementptr [32 x i8], ptr %i.asx, i64 %i.asy
  %i.ata = getelementptr i8, ptr %i.asz, i64 -30
  store i16 144, ptr %i.ata, align 2, !tbaa !930
  br label %sqlite3VdbeChangeP5.exit893

bb.il:                                            ; preds = %bb.id
  br i1 %i.amf, label %.loopexit, label %.preheader1043

.preheader1043:                                   ; preds = %bb.il
  %i.atb = load i16, ptr %i.abc, align 2, !tbaa !1159
  %.not1132 = icmp eq i16 %i.atb, 0
  br i1 %.not1132, label %.loopexit, label %.lr.ph1101

.lr.ph1101:                                       ; preds = %.preheader1043
  %i.atc = getelementptr inbounds nuw i8, ptr %.36331114, i64 8
  %i.atd = zext i32 %i.arr to i64
  br label %bb.im

bb.im:                                            ; preds = %.lr.ph1101, %sqlite3VdbeAddOp3.exit904
  %indvars.iv1161 = phi i64 [ 0, %.lr.ph1101 ], [ %indvars.iv.next1162, %sqlite3VdbeAddOp3.exit904 ] ; 4 uses
  %i.ate = load ptr, ptr %i.abd, align 8, !tbaa !1160
  %i.atf = getelementptr inbounds nuw [2 x i8], ptr %i.ate, i64 %indvars.iv1161
  %i.atg = load i16, ptr %i.atf, align 2, !tbaa !783
  %i.ath = load i16, ptr %i.adf, align 8, !tbaa !1778 ; 2 uses
  %.not.i894 = icmp eq i16 %i.ath, 0
  br i1 %.not.i894, label %sqlite3TableColumnToIndex.exit, label %.lr.ph.i895

.lr.ph.i895:                                      ; preds = %bb.im
  %i.ati = load ptr, ptr %i.atc, align 8, !tbaa !1160
  %wide.trip.count.i896 = zext i16 %i.ath to i64
  br label %bb.in

bb.in:                                            ; preds = %bb.io, %.lr.ph.i895
  %indvars.iv.i897 = phi i64 [ 0, %.lr.ph.i895 ], [ %indvars.iv.next.i898, %bb.io ] ; 3 uses
  %i.atj = getelementptr inbounds nuw [2 x i8], ptr %i.ati, i64 %indvars.iv.i897
  %i.atk = load i16, ptr %i.atj, align 2, !tbaa !783
  %i.atl = icmp eq i16 %i.atg, %i.atk
  br i1 %i.atl, label %._crit_edge.loopexit.split.loop.exit13.i, label %bb.io

bb.io:                                            ; preds = %bb.in
  %indvars.iv.next.i898 = add nuw nsw i64 %indvars.iv.i897, 1 ; 2 uses
  %exitcond.not.i899 = icmp eq i64 %indvars.iv.next.i898, %wide.trip.count.i896
  br i1 %exitcond.not.i899, label %sqlite3TableColumnToIndex.exit, label %bb.in, !llvm.loop !307

._crit_edge.loopexit.split.loop.exit13.i:         ; preds = %bb.in
  %i.atm = trunc nuw nsw i64 %indvars.iv.i897 to i32
  br label %sqlite3TableColumnToIndex.exit

sqlite3TableColumnToIndex.exit:                   ; preds = %bb.io, %bb.im, %._crit_edge.loopexit.split.loop.exit13.i
  %.08.i901 = phi i32 [ -1, %bb.im ], [ %i.atm, %._crit_edge.loopexit.split.loop.exit13.i ], [ -1, %bb.io ] ; 2 uses
  %i.atn = add nuw i64 %indvars.iv1161, %i.atd    ; 2 uses
  %i.ato = load i32, ptr %i.aag, align 8, !tbaa !703 ; 3 uses
  %i.atp = load i32, ptr %i.aal, align 4, !tbaa !1164
  %.not.i902 = icmp sgt i32 %i.atp, %i.ato
  br i1 %.not.i902, label %bb.iq, label %bb.ip

bb.ip:                                            ; preds = %sqlite3TableColumnToIndex.exit
  %i.atq = trunc i64 %i.atn to i32
  %i.atr = call fastcc i32 @growOp3(ptr noundef nonnull %i.d, i32 noundef 96, i32 noundef %i.acg, i32 noundef %.08.i901, i32 noundef %i.atq), !inline_history !1880 ; 0 uses
  br label %sqlite3VdbeAddOp3.exit904

bb.iq:                                            ; preds = %sqlite3TableColumnToIndex.exit
  %i.ats = add nsw i32 %i.ato, 1
  store i32 %i.ats, ptr %i.aag, align 8, !tbaa !703
  %i.att = load ptr, ptr %i.aah, align 8, !tbaa !702
  %i.atu = sext i32 %i.ato to i64
  %i.atv = getelementptr inbounds [32 x i8], ptr %i.att, i64 %i.atu ; 7 uses
  store i8 96, ptr %i.atv, align 8, !tbaa !929
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atv, i64 2
  store i16 0, ptr %i.atw, align 2, !tbaa !930
  %i.atx = getelementptr inbounds nuw i8, ptr %i.atv, i64 4
  store i32 %i.acg, ptr %i.atx, align 4, !tbaa !926
  %i.aty = getelementptr inbounds nuw i8, ptr %i.atv, i64 8
  store i32 %.08.i901, ptr %i.aty, align 8, !tbaa !927
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atv, i64 12
  %i.aua = trunc i64 %i.atn to i32
  store i32 %i.aua, ptr %i.atz, align 4, !tbaa !928
  %i.aub = getelementptr inbounds nuw i8, ptr %i.atv, i64 16
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atv, i64 1
  store i8 0, ptr %i.auc, align 1, !tbaa !1166
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aub, i8 0, i64 16, i1 false)
  br label %sqlite3VdbeAddOp3.exit904

sqlite3VdbeAddOp3.exit904:                        ; preds = %bb.ip, %bb.iq
  %i.aud = load ptr, ptr %1, align 8, !tbaa !1171
  %i.aue = load ptr, ptr %i.aap, align 8, !tbaa !1149
  %i.auf = load ptr, ptr %i.abd, align 8, !tbaa !1160
  %i.aug = getelementptr inbounds nuw [2 x i8], ptr %i.auf, i64 %indvars.iv1161
  %i.auh = load i16, ptr %i.aug, align 2, !tbaa !783
  %i.aui = sext i16 %i.auh to i64
  %i.auj = getelementptr inbounds [16 x i8], ptr %i.aue, i64 %i.aui
  %i.auk = load ptr, ptr %i.auj, align 8, !tbaa !1153
  call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.656, ptr noundef %i.aud, ptr noundef %i.auk)
  %indvars.iv.next1162 = add nuw nsw i64 %indvars.iv1161, 1 ; 2 uses
  %i.aul = load i16, ptr %i.abc, align 2, !tbaa !1159
  %i.aum = zext i16 %i.aul to i64
  %i.aun = icmp samesign ult i64 %indvars.iv.next1162, %i.aum
  br i1 %i.aun, label %bb.im, label %.loopexit, !llvm.loop !5562

.loopexit:                                        ; preds = %sqlite3VdbeAddOp3.exit904, %.preheader1043, %bb.il
  br i1 %i.a, label %bb.ir, label %sqlite3VdbeChangeP5.exit893

bb.ir:                                            ; preds = %.loopexit
  %i.auo = load i16, ptr %i.abc, align 2, !tbaa !1159 ; 2 uses
  %.not1133 = icmp eq i16 %i.auo, 0
  br i1 %.not1133, label %sqlite3VdbeChangeP5.exit893, label %.lr.ph1106.preheader

.lr.ph1106.preheader:                             ; preds = %bb.ir
  %i.aup = getelementptr inbounds nuw i8, ptr %.36331114, i64 99
  %i.auq = load i16, ptr %i.aup, align 1
  %i.aur = and i16 %i.auq, 3
  %i.aus = icmp eq i16 %i.aur, 2
  %i.aut = select i1 %i.aus, i32 %i.ade, i32 %i.arr
  %.val716 = load i32, ptr %i.aag, align 8, !tbaa !703
  %i.auu = zext i16 %i.auo to i32
  %i.auv = add nsw i32 %.val716, %i.auu
  br label %.lr.ph1106

.lr.ph1106:                                       ; preds = %.lr.ph1106.preheader, %sqlite3VdbeChangeP5.exit923
  %indvars.iv1164 = phi i64 [ 0, %.lr.ph1106.preheader ], [ %indvars.iv.next1165, %sqlite3VdbeChangeP5.exit923 ] ; 5 uses
  %.05531104 = phi i32 [ 53, %.lr.ph1106.preheader ], [ %spec.select713, %sqlite3VdbeChangeP5.exit923 ]
  %.05541103 = phi i32 [ %i.auv, %.lr.ph1106.preheader ], [ %spec.select, %sqlite3VdbeChangeP5.exit923 ]
  %i.auw = load ptr, ptr %i.abe, align 8, !tbaa !1760
  %i.aux = getelementptr inbounds nuw [8 x i8], ptr %i.auw, i64 %indvars.iv1164
  %i.auy = load ptr, ptr %i.aux, align 8, !tbaa !741 ; 2 uses
  %i.auz = load ptr, ptr %0, align 8, !tbaa !980  ; 3 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %i.auz, i64 100
  %i.avb = load i8, ptr %i.ava, align 4, !tbaa !1126 ; 2 uses
  %i.avc = getelementptr inbounds nuw i8, ptr %i.auz, i64 197
  %i.avd = load i8, ptr %i.avc, align 1, !tbaa !908 ; 2 uses
  %i.ave = zext i8 %i.avd to i32
  %i.avf = call fastcc ptr @sqlite3FindCollSeq(ptr noundef %i.auz, i8 noundef zeroext %i.avb, ptr noundef %i.auy, i32 noundef %i.ave), !inline_history !2092 ; 5 uses
  %.not.i905 = icmp eq i8 %i.avd, 0
  br i1 %.not.i905, label %bb.is, label %sqlite3LocateCollSeq.exit

bb.is:                                            ; preds = %.lr.ph1106
  %.not16.i = icmp eq ptr %i.avf, null
  br i1 %.not16.i, label %.sink.split.i, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 24
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !1358
  %.not17.i = icmp eq ptr %i.avh, null
  br i1 %.not17.i, label %.sink.split.i, label %sqlite3LocateCollSeq.exit

.sink.split.i:                                    ; preds = %bb.it, %bb.is
  %i.avi = call fastcc ptr @sqlite3GetCollSeq(ptr noundef nonnull %0, i8 noundef zeroext %i.avb, ptr noundef %i.avf, ptr noundef %i.auy), !inline_history !2092
  br label %sqlite3LocateCollSeq.exit

sqlite3LocateCollSeq.exit:                        ; preds = %.lr.ph1106, %bb.it, %.sink.split.i
  %.0.i906 = phi ptr [ %i.avf, %.lr.ph1106 ], [ %i.avf, %bb.it ], [ %i.avi, %.sink.split.i ]
  %i.avj = load ptr, ptr %i.abd, align 8, !tbaa !1160
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %i.avj, i64 %indvars.iv1164
  %i.avl = load i16, ptr %i.avk, align 2, !tbaa !783 ; 9 uses
  %i.avm = load i16, ptr %i.abc, align 2, !tbaa !1159
  %i.avn = zext i16 %i.avm to i64
  %i.avo = add nuw nsw i64 %i.avn, 4294967295
  %i.avp = and i64 %i.avo, 4294967295
  %i.avq = icmp eq i64 %indvars.iv1164, %i.avp    ; 2 uses
  %spec.select = select i1 %i.avq, i32 %i.acd, i32 %.05541103 ; 2 uses
  %spec.select713 = select i1 %i.avq, i32 54, i32 %.05531104 ; 2 uses
  %i.avr = load i32, ptr %i.g, align 8, !tbaa !1083
  %i.avs = and i32 %i.avr, 32
  %i.avt = icmp eq i32 %i.avs, 0
  %wide.trip.count.i912 = sext i16 %i.avl to i64  ; 6 uses
  %i.avu = icmp slt i16 %i.avl, 0
  %or.cond.i908 = or i1 %i.avu, %i.avt
  br i1 %or.cond.i908, label %sqlite3TableColumnToStorage.exit922, label %.preheader.i909

.preheader.i909:                                  ; preds = %sqlite3LocateCollSeq.exit
  %.not23.i910 = icmp eq i16 %i.avl, 0
  %i.avv = load ptr, ptr %i.aap, align 8, !tbaa !1149 ; 22 uses
  br i1 %.not23.i910, label %._crit_edge.i918, label %iter.check1339

iter.check1339:                                   ; preds = %.preheader.i909
  %min.iters.check1325 = icmp ult i16 %i.avl, 5
  br i1 %min.iters.check1325, label %vec.epilog.scalar.ph1340.preheader, label %vector.main.loop.iter.check1326

vector.main.loop.iter.check1326:                  ; preds = %iter.check1339
  %min.iters.check1327 = icmp ult i16 %i.avl, 17
  br i1 %min.iters.check1327, label %vec.epilog.ph1343, label %vector.ph1328

vector.ph1328:                                    ; preds = %vector.main.loop.iter.check1326
  %i.avw = and i64 %wide.trip.count.i912, 15
  %i.avx = and i16 %i.avl, 15
  %i.avy = icmp eq i16 %i.avx, 0
  %i.avz = select i1 %i.avy, i64 16, i64 %i.avw   ; 2 uses
  %n.vec1329 = sub nsw i64 %wide.trip.count.i912, %i.avz ; 3 uses
  br label %vector.body1330

vector.body1330:                                  ; preds = %vector.body1330, %vector.ph1328
  %index1331 = phi i64 [ 0, %vector.ph1328 ], [ %index.next1334, %vector.body1330 ] ; 17 uses
  %vec.phi1332 = phi <8 x i16> [ zeroinitializer, %vector.ph1328 ], [ %i.ays, %vector.body1330 ]
  %vec.phi1333 = phi <8 x i16> [ zeroinitializer, %vector.ph1328 ], [ %i.ayt, %vector.body1330 ]
  %i.awa = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awb = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awc = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awd = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awe = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awf = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awg = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awh = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awi = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awj = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awk = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awl = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awm = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awn = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awo = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awp = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1331
  %i.awq = getelementptr inbounds nuw i8, ptr %i.awa, i64 14
  %i.awr = getelementptr inbounds nuw i8, ptr %i.awb, i64 30
  %i.aws = getelementptr inbounds nuw i8, ptr %i.awc, i64 46
  %i.awt = getelementptr inbounds nuw i8, ptr %i.awd, i64 62
  %i.awu = getelementptr inbounds nuw i8, ptr %i.awe, i64 78
  %i.awv = getelementptr inbounds nuw i8, ptr %i.awf, i64 94
  %i.aww = getelementptr inbounds nuw i8, ptr %i.awg, i64 110
  %i.awx = getelementptr inbounds nuw i8, ptr %i.awh, i64 126
  %i.awy = getelementptr inbounds nuw i8, ptr %i.awi, i64 142
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awj, i64 158
  %i.axa = getelementptr inbounds nuw i8, ptr %i.awk, i64 174
  %i.axb = getelementptr inbounds nuw i8, ptr %i.awl, i64 190
  %i.axc = getelementptr inbounds nuw i8, ptr %i.awm, i64 206
  %i.axd = getelementptr inbounds nuw i8, ptr %i.awn, i64 222
  %i.axe = getelementptr inbounds nuw i8, ptr %i.awo, i64 238
  %i.axf = getelementptr inbounds nuw i8, ptr %i.awp, i64 254
  %i.axg = load i16, ptr %i.awq, align 2, !tbaa !1364
  %i.axh = load i16, ptr %i.awr, align 2, !tbaa !1364
  %i.axi = load i16, ptr %i.aws, align 2, !tbaa !1364
  %i.axj = load i16, ptr %i.awt, align 2, !tbaa !1364
  %i.axk = load i16, ptr %i.awu, align 2, !tbaa !1364
  %i.axl = load i16, ptr %i.awv, align 2, !tbaa !1364
  %i.axm = load i16, ptr %i.aww, align 2, !tbaa !1364
  %i.axn = load i16, ptr %i.awx, align 2, !tbaa !1364
  %i.axo = insertelement <8 x i16> poison, i16 %i.axg, i64 0
  %i.axp = insertelement <8 x i16> %i.axo, i16 %i.axh, i64 1
  %i.axq = insertelement <8 x i16> %i.axp, i16 %i.axi, i64 2
  %i.axr = insertelement <8 x i16> %i.axq, i16 %i.axj, i64 3
  %i.axs = insertelement <8 x i16> %i.axr, i16 %i.axk, i64 4
  %i.axt = insertelement <8 x i16> %i.axs, i16 %i.axl, i64 5
  %i.axu = insertelement <8 x i16> %i.axt, i16 %i.axm, i64 6
  %i.axv = insertelement <8 x i16> %i.axu, i16 %i.axn, i64 7
  %i.axw = load i16, ptr %i.awy, align 2, !tbaa !1364
  %i.axx = load i16, ptr %i.awz, align 2, !tbaa !1364
  %i.axy = load i16, ptr %i.axa, align 2, !tbaa !1364
  %i.axz = load i16, ptr %i.axb, align 2, !tbaa !1364
  %i.aya = load i16, ptr %i.axc, align 2, !tbaa !1364
  %i.ayb = load i16, ptr %i.axd, align 2, !tbaa !1364
  %i.ayc = load i16, ptr %i.axe, align 2, !tbaa !1364
  %i.ayd = load i16, ptr %i.axf, align 2, !tbaa !1364
  %i.aye = insertelement <8 x i16> poison, i16 %i.axw, i64 0
  %i.ayf = insertelement <8 x i16> %i.aye, i16 %i.axx, i64 1
  %i.ayg = insertelement <8 x i16> %i.ayf, i16 %i.axy, i64 2
  %i.ayh = insertelement <8 x i16> %i.ayg, i16 %i.axz, i64 3
  %i.ayi = insertelement <8 x i16> %i.ayh, i16 %i.aya, i64 4
  %i.ayj = insertelement <8 x i16> %i.ayi, i16 %i.ayb, i64 5
  %i.ayk = insertelement <8 x i16> %i.ayj, i16 %i.ayc, i64 6
  %i.ayl = insertelement <8 x i16> %i.ayk, i16 %i.ayd, i64 7
  %i.aym = lshr <8 x i16> %i.axv, splat (i16 5)
  %i.ayn = lshr <8 x i16> %i.ayl, splat (i16 5)
  %i.ayo = and <8 x i16> %i.aym, splat (i16 1)
  %i.ayp = and <8 x i16> %i.ayn, splat (i16 1)
  %i.ayq = xor <8 x i16> %i.ayo, splat (i16 1)
  %i.ayr = xor <8 x i16> %i.ayp, splat (i16 1)
  %i.ays = add <8 x i16> %i.ayq, %vec.phi1332     ; 2 uses
  %i.ayt = add <8 x i16> %i.ayr, %vec.phi1333     ; 2 uses
  %index.next1334 = add nuw i64 %index1331, 16    ; 2 uses
  %i.ayu = icmp eq i64 %index.next1334, %n.vec1329
  br i1 %i.ayu, label %vec.epilog.iter.check1341, label %vector.body1330, !llvm.loop !5563

vec.epilog.iter.check1341:                        ; preds = %vector.body1330
  %bin.rdx1336 = add <8 x i16> %i.ayt, %i.ays
  %i.ayv = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx1336) ; 2 uses
  %min.epilog.iters.check1342 = icmp samesign ult i64 %i.avz, 5
  br i1 %min.epilog.iters.check1342, label %vec.epilog.scalar.ph1340.preheader, label %vec.epilog.ph1343, !prof !1709

vec.epilog.ph1343:                                ; preds = %vector.main.loop.iter.check1326, %vec.epilog.iter.check1341
  %vec.epilog.resume.val1337 = phi i64 [ %n.vec1329, %vec.epilog.iter.check1341 ], [ 0, %vector.main.loop.iter.check1326 ]
  %bc.merge.rdx1338 = phi i16 [ %i.ayv, %vec.epilog.iter.check1341 ], [ 0, %vector.main.loop.iter.check1326 ]
  %i.ayw = and i64 %wide.trip.count.i912, 3
  %i.ayx = and i16 %i.avl, 3
  %i.ayy = icmp eq i16 %i.ayx, 0
  %i.ayz = select i1 %i.ayy, i64 4, i64 %i.ayw
  %n.vec1344 = sub nsw i64 %wide.trip.count.i912, %i.ayz ; 2 uses
  %i.aza = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx1338, i64 0
  br label %vec.epilog.vector.body1345

vec.epilog.vector.body1345:                       ; preds = %vec.epilog.vector.body1345, %vec.epilog.ph1343
  %index1346 = phi i64 [ %vec.epilog.resume.val1337, %vec.epilog.ph1343 ], [ %index.next1348, %vec.epilog.vector.body1345 ] ; 5 uses
  %vec.phi1347 = phi <4 x i16> [ %i.aza, %vec.epilog.ph1343 ], [ %i.azu, %vec.epilog.vector.body1345 ]
  %i.azb = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %index1346
  %i.azc = getelementptr [16 x i8], ptr %i.avv, i64 %index1346
  %i.azd = getelementptr [16 x i8], ptr %i.avv, i64 %index1346
  %i.aze = getelementptr [16 x i8], ptr %i.avv, i64 %index1346
  %i.azf = getelementptr inbounds nuw i8, ptr %i.azb, i64 14
  %i.azg = getelementptr i8, ptr %i.azc, i64 30
  %i.azh = getelementptr i8, ptr %i.azd, i64 46
  %i.azi = getelementptr i8, ptr %i.aze, i64 62
  %i.azj = load i16, ptr %i.azf, align 2, !tbaa !1364
  %i.azk = load i16, ptr %i.azg, align 2, !tbaa !1364
  %i.azl = load i16, ptr %i.azh, align 2, !tbaa !1364
  %i.azm = load i16, ptr %i.azi, align 2, !tbaa !1364
  %i.azn = insertelement <4 x i16> poison, i16 %i.azj, i64 0
  %i.azo = insertelement <4 x i16> %i.azn, i16 %i.azk, i64 1
  %i.azp = insertelement <4 x i16> %i.azo, i16 %i.azl, i64 2
  %i.azq = insertelement <4 x i16> %i.azp, i16 %i.azm, i64 3
  %i.azr = lshr <4 x i16> %i.azq, splat (i16 5)
  %i.azs = and <4 x i16> %i.azr, splat (i16 1)
  %i.azt = xor <4 x i16> %i.azs, splat (i16 1)
  %i.azu = add <4 x i16> %i.azt, %vec.phi1347     ; 2 uses
  %index.next1348 = add nuw i64 %index1346, 4     ; 2 uses
  %i.azv = icmp eq i64 %index.next1348, %n.vec1344
  br i1 %i.azv, label %vec.epilog.middle.block1349, label %vec.epilog.vector.body1345, !llvm.loop !5564

vec.epilog.middle.block1349:                      ; preds = %vec.epilog.vector.body1345
  %i.azw = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.azu)
  br label %vec.epilog.scalar.ph1340.preheader

vec.epilog.scalar.ph1340.preheader:               ; preds = %iter.check1339, %vec.epilog.iter.check1341, %vec.epilog.middle.block1349
  %indvars.iv.i913.ph = phi i64 [ 0, %iter.check1339 ], [ %n.vec1329, %vec.epilog.iter.check1341 ], [ %n.vec1344, %vec.epilog.middle.block1349 ]
  %.021.i914.ph = phi i16 [ 0, %iter.check1339 ], [ %i.ayv, %vec.epilog.iter.check1341 ], [ %i.azw, %vec.epilog.middle.block1349 ]
  br label %vec.epilog.scalar.ph1340

vec.epilog.scalar.ph1340:                         ; preds = %vec.epilog.scalar.ph1340.preheader, %vec.epilog.scalar.ph1340
  %indvars.iv.i913 = phi i64 [ %indvars.iv.next.i916, %vec.epilog.scalar.ph1340 ], [ %indvars.iv.i913.ph, %vec.epilog.scalar.ph1340.preheader ] ; 2 uses
  %.021.i914 = phi i16 [ %spec.select.i915, %vec.epilog.scalar.ph1340 ], [ %.021.i914.ph, %vec.epilog.scalar.ph1340.preheader ]
  %i.azx = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %indvars.iv.i913
  %i.azy = getelementptr inbounds nuw i8, ptr %i.azx, i64 14
  %i.azz = load i16, ptr %i.azy, align 2, !tbaa !1364
  %i.baa = lshr i16 %i.azz, 5
  %i.bab = and i16 %i.baa, 1
  %i.bac = xor i16 %i.bab, 1
  %spec.select.i915 = add i16 %i.bac, %.021.i914  ; 2 uses
  %indvars.iv.next.i916 = add nuw nsw i64 %indvars.iv.i913, 1 ; 2 uses
  %exitcond.not.i917 = icmp eq i64 %indvars.iv.next.i916, %wide.trip.count.i912
  br i1 %exitcond.not.i917, label %._crit_edge.i918, label %vec.epilog.scalar.ph1340, !llvm.loop !5565

._crit_edge.i918:                                 ; preds = %vec.epilog.scalar.ph1340, %.preheader.i909
  %.pre-phi1174 = phi i64 [ 0, %.preheader.i909 ], [ %wide.trip.count.i912, %vec.epilog.scalar.ph1340 ]
  %.0.lcssa.i919 = phi i16 [ 0, %.preheader.i909 ], [ %spec.select.i915, %vec.epilog.scalar.ph1340 ] ; 2 uses
  %i.bad = getelementptr inbounds nuw [16 x i8], ptr %i.avv, i64 %.pre-phi1174
  %i.bae = getelementptr inbounds nuw i8, ptr %i.bad, i64 14
  %i.baf = load i16, ptr %i.bae, align 2, !tbaa !1364
  %i.bag = and i16 %i.baf, 32
  %.not.i920 = icmp eq i16 %i.bag, 0
  br i1 %.not.i920, label %sqlite3TableColumnToStorage.exit922, label %bb.iu

bb.iu:                                            ; preds = %._crit_edge.i918
  %i.bah = load i16, ptr %i.aaq, align 8, !tbaa !1251
  %i.bai = sub i16 %i.avl, %.0.lcssa.i919
  %i.baj = add i16 %i.bai, %i.bah
  br label %sqlite3TableColumnToStorage.exit922

sqlite3TableColumnToStorage.exit922:              ; preds = %sqlite3LocateCollSeq.exit, %._crit_edge.i918, %bb.iu
  %.018.i921 = phi i16 [ %i.avl, %sqlite3LocateCollSeq.exit ], [ %i.baj, %bb.iu ], [ %.0.lcssa.i919, %._crit_edge.i918 ]
  %i.bak = sext i16 %.018.i921 to i32
  %i.bal = add nsw i32 %i.abf, %i.bak
  %i.bam = trunc nuw nsw i64 %indvars.iv1164 to i32
  %i.ban = add i32 %i.aut, %i.bam
  %i.bao = call fastcc i32 @sqlite3VdbeAddOp4(ptr noundef nonnull %i.d, i32 noundef %spec.select713, i32 noundef %i.bal, i32 noundef %spec.select, i32 noundef %i.ban, ptr noundef %.0.i906, i32 noundef -2) ; 0 uses
  %i.bap = load i32, ptr %i.aag, align 8, !tbaa !703 ; 2 uses
  %i.baq = icmp sgt i32 %i.bap, 0
  br i1 %i.baq, label %bb.iv, label %sqlite3VdbeChangeP5.exit923

bb.iv:                                            ; preds = %sqlite3TableColumnToStorage.exit922
  %i.bar = load ptr, ptr %i.aah, align 8, !tbaa !702
  %i.bas = zext nneg i32 %i.bap to i64
  %i.bat = getelementptr [32 x i8], ptr %i.bar, i64 %i.bas
  %i.bau = getelementptr i8, ptr %i.bat, i64 -30
  store i16 144, ptr %i.bau, align 2, !tbaa !930
  br label %sqlite3VdbeChangeP5.exit923

sqlite3VdbeChangeP5.exit923:                      ; preds = %sqlite3TableColumnToStorage.exit922, %bb.iv
  %indvars.iv.next1165 = add nuw nsw i64 %indvars.iv1164, 1 ; 2 uses
  %i.bav = load i16, ptr %i.abc, align 2, !tbaa !1159
  %i.baw = zext i16 %i.bav to i64
  %i.bax = icmp samesign ult i64 %indvars.iv.next1165, %i.baw
  br i1 %i.bax, label %.lr.ph1106, label %sqlite3VdbeChangeP5.exit893, !llvm.loop !5566

sqlite3VdbeChangeP5.exit893:                      ; preds = %sqlite3VdbeChangeP5.exit923, %bb.ir, %bb.ik, %sqlite3VdbeAddOp3.exit892, %.loopexit, %sqlite3VdbeAddOp2.exit889, %sqlite3GetTempRange.exit
  %trunc = trunc nuw i32 %.10 to i8
  switch i8 %trunc, label %bb.jb [
    i8 1, label %bb.iw
    i8 2, label %bb.iw
    i8 3, label %bb.iw
    i8 6, label %bb.ix
    i8 4, label %bb.iy
  ]

bb.iw:                                            ; preds = %sqlite3VdbeChangeP5.exit893, %sqlite3VdbeChangeP5.exit893, %sqlite3VdbeChangeP5.exit893
  call fastcc void @sqlite3UniqueConstraint(ptr noundef nonnull %0, i32 noundef %.10, ptr noundef nonnull %.36331114)
end_hunk_17
begin_hunk_18_@sqlite3UpsertDoUpdate:bb.a
  %i.df = load i16, ptr %i.de, align 2, !tbaa !783
  %i.dg = sext i16 %i.df to i64
  %i.dh = getelementptr inbounds [16 x i8], ptr %i.dc, i64 %i.dg
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !1153
  tail call void (ptr, ptr, ...) @sqlite3VdbeComment(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.656, ptr noundef %i.db, ptr noundef %i.di)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.o, !llvm.loop !5573

._crit_edge:                                      ; preds = %sqlite3VdbeAddOp3.exit86, %sqlite3PrimaryKeyIndex.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 6 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !703 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 148 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !1164
  %.not.i87 = icmp sgt i32 %i.dm, %i.dk
  br i1 %.not.i87, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.dn = tail call fastcc i32 @addOp4IntSlow(ptr noundef nonnull %i.b, i32 noundef 29, i32 noundef %i.e, i32 noundef 0, i32 noundef %i.bs, i32 noundef %i.bp), !inline_history !1165
  br label %sqlite3VdbeAddOp4Int.exit

bb.u:                                             ; preds = %._crit_edge
  %i.do = add nsw i32 %i.dk, 1
  store i32 %i.do, ptr %i.dj, align 8, !tbaa !703
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !702
  %i.dr = sext i32 %i.dk to i64
  %i.ds = getelementptr inbounds [32 x i8], ptr %i.dq, i64 %i.dr ; 8 uses
  store i8 29, ptr %i.ds, align 8, !tbaa !929
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i16 0, ptr %i.dt, align 2, !tbaa !930
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.e, ptr %i.du, align 4, !tbaa !926
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 0, ptr %i.dv, align 8, !tbaa !927
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 %i.bs, ptr %i.dw, align 4, !tbaa !928
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store i32 %i.bp, ptr %i.dx, align 8, !tbaa !733
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ds, i64 1
  store i8 -3, ptr %i.dy, align 1, !tbaa !1166
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr null, ptr %i.dz, align 8, !tbaa !1167
  br label %sqlite3VdbeAddOp4Int.exit

sqlite3VdbeAddOp4Int.exit:                        ; preds = %bb.t, %bb.u
  %.0.i88 = phi i32 [ %i.dn, %bb.t ], [ %i.dk, %bb.u ]
  %i.ea = load i32, ptr %i.dj, align 8, !tbaa !703 ; 4 uses
  %i.eb = load i32, ptr %i.dl, align 4, !tbaa !1164
  %.not.i.i89 = icmp sgt i32 %i.eb, %i.ea
  br i1 %.not.i.i89, label %bb.w, label %bb.v

bb.v:                                             ; preds = %sqlite3VdbeAddOp4Int.exit
  %i.ec = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 72, i32 noundef 11, i32 noundef 2, i32 noundef 0), !inline_history !2033
  br label %sqlite3VdbeAddOp3.exit.i

bb.w:                                             ; preds = %sqlite3VdbeAddOp4Int.exit
  %i.ed = add nsw i32 %i.ea, 1
  store i32 %i.ed, ptr %i.dj, align 8, !tbaa !703
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !702
  %i.eg = sext i32 %i.ea to i64
  %i.eh = getelementptr inbounds [32 x i8], ptr %i.ef, i64 %i.eg ; 6 uses
  store i8 72, ptr %i.eh, align 8, !tbaa !929
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2
  store i16 0, ptr %i.ei, align 2, !tbaa !930
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 4
  store i32 11, ptr %i.ej, align 4, !tbaa !926
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 2, ptr %i.ek, align 8, !tbaa !927
  %i.el = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store i8 0, ptr %i.em, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.el, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp3.exit.i

sqlite3VdbeAddOp3.exit.i:                         ; preds = %bb.w, %bb.v
  %.0.i.i90 = phi i32 [ %i.ec, %bb.v ], [ %i.ea, %bb.w ] ; 2 uses
  %i.en = load ptr, ptr %i.b, align 8, !tbaa !679
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 103
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !918
  %.not.i9.i = icmp eq i8 %i.ep, 0
  br i1 %.not.i9.i, label %bb.x, label %sqlite3VdbeAddOp4.exit

bb.x:                                             ; preds = %sqlite3VdbeAddOp3.exit.i
  %i.eq = icmp slt i32 %.0.i.i90, 0
  br i1 %i.eq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.er = load i32, ptr %i.dj, align 8, !tbaa !703
  %i.es = add nsw i32 %i.er, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0.i10.i = phi i32 [ %i.es, %bb.y ], [ %.0.i.i90, %bb.x ]
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !702
  %i.ev = sext i32 %.0.i10.i to i64
  %i.ew = getelementptr inbounds [32 x i8], ptr %i.eu, i64 %i.ev ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !1166
  %.not29.i.i = icmp eq i8 %i.ey, 0
  br i1 %.not29.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %i.b, ptr noundef nonnull %i.ew, ptr noundef nonnull @.str.722, i32 noundef -1), !inline_history !2034
  br label %sqlite3VdbeAddOp4.exit

bb.ab:                                            ; preds = %bb.z
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store ptr @.str.722, ptr %i.ez, align 8, !tbaa !733
  store i8 -1, ptr %i.ex, align 1, !tbaa !1166
  br label %sqlite3VdbeAddOp4.exit

sqlite3VdbeAddOp4.exit:                           ; preds = %sqlite3VdbeAddOp3.exit.i, %bb.aa, %bb.ab
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !2049 ; 2 uses
  %.not.i91 = icmp eq ptr %i.fb, null
  %..i = select i1 %.not.i91, ptr %0, ptr %i.fb
  %i.fc = getelementptr inbounds nuw i8, ptr %..i, i64 39 ; 2 uses
  %i.fd = load i16, ptr %i.fc, align 1
  %i.fe = or i16 %i.fd, 2
  store i16 %i.fe, ptr %i.fc, align 1
  %i.ff = load i32, ptr %i.dj, align 8, !tbaa !703
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !679
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 103
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !918
  %.not.i.i.i = icmp eq i8 %i.fi, 0
  br i1 %.not.i.i.i, label %bb.ac, label %sqlite3VdbeJumpHere.exit

bb.ac:                                            ; preds = %sqlite3VdbeAddOp4.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !702
  %i.fl = sext i32 %.0.i88 to i64
  %i.fm = getelementptr inbounds [32 x i8], ptr %i.fk, i64 %i.fl
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %sqlite3VdbeAddOp4.exit, %bb.ac
  %.0.i.i.i = phi ptr [ %i.fm, %bb.ac ], [ @sqlite3VdbeGetOp.dummy, %sqlite3VdbeAddOp4.exit ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i32 %i.ff, ptr %i.fn, align 8, !tbaa !927
  br label %sqlite3ReleaseTempReg.exit

sqlite3ReleaseTempReg.exit:                       ; preds = %bb.m, %bb.l, %sqlite3VdbeAddOp3.exit, %sqlite3VdbeJumpHere.exit, %sqlite3UpsertOfIndex.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !2189
  %i.fq = tail call fastcc ptr @sqlite3SrcListDup(ptr noundef %i.c, ptr noundef %i.fp, i32 noundef 0)
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 54 ; 2 uses
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !1150
  %i.ft = icmp sgt i16 %i.fs, 0
  br i1 %i.ft, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %sqlite3ReleaseTempReg.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph106, %sqlite3VdbeAddOp1.exit
  %indvars.iv111 = phi i64 [ 0, %.lr.ph106 ], [ %indvars.iv.next112, %sqlite3VdbeAddOp1.exit ] ; 10 uses
  %i.gb = load ptr, ptr %i.fu, align 8, !tbaa !1149 ; 22 uses
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %indvars.iv111 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 9
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !1716
  %i.gf = icmp eq i8 %i.ge, 69
  br i1 %i.gf, label %bb.ae, label %sqlite3VdbeAddOp1.exit

bb.ae:                                            ; preds = %bb.ad
  %i.gg = load i32, ptr %i.fv, align 8, !tbaa !2190
  %i.gh = trunc i64 %indvars.iv111 to i16         ; 4 uses
  %i.gi = load i32, ptr %i.fw, align 8, !tbaa !1083
  %i.gj = and i32 %i.gi, 32
  %i.gk = icmp eq i32 %i.gj, 0
  %i.gl = icmp slt i16 %i.gh, 0
  %or.cond.i = or i1 %i.gl, %i.gk
  br i1 %or.cond.i, label %sqlite3TableColumnToStorage.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ae
  %.not23.i = icmp eq i16 %i.gh, 0
  br i1 %.not23.i, label %._crit_edge.i, label %iter.check

iter.check:                                       ; preds = %.preheader.i
  %min.iters.check = icmp samesign ult i64 %indvars.iv111, 5
  br i1 %min.iters.check, label %.lr.ph.i92.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check131 = icmp samesign ult i64 %indvars.iv111, 17
  br i1 %min.iters.check131, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.gm = and i64 %indvars.iv111, 15              ; 2 uses
  %i.gn = icmp eq i64 %i.gm, 0
  %i.go = select i1 %i.gn, i64 16, i64 %i.gm      ; 2 uses
  %n.vec = sub nsw i64 %indvars.iv111, %i.go      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 17 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.jh, %vector.body ]
  %vec.phi132 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ji, %vector.body ]
  %i.gp = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.gu = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.gv = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.gy = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.ha = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.hb = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.he = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 14
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gq, i64 30
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gr, i64 46
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gs, i64 62
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gt, i64 78
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gu, i64 94
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gv, i64 110
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gw, i64 126
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 142
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gy, i64 158
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gz, i64 174
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ha, i64 190
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hb, i64 206
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hc, i64 222
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hd, i64 238
  %i.hu = getelementptr inbounds nuw i8, ptr %i.he, i64 254
  %i.hv = load i16, ptr %i.hf, align 2, !tbaa !1364
  %i.hw = load i16, ptr %i.hg, align 2, !tbaa !1364
  %i.hx = load i16, ptr %i.hh, align 2, !tbaa !1364
  %i.hy = load i16, ptr %i.hi, align 2, !tbaa !1364
  %i.hz = load i16, ptr %i.hj, align 2, !tbaa !1364
  %i.ia = load i16, ptr %i.hk, align 2, !tbaa !1364
  %i.ib = load i16, ptr %i.hl, align 2, !tbaa !1364
  %i.ic = load i16, ptr %i.hm, align 2, !tbaa !1364
  %i.id = insertelement <8 x i16> poison, i16 %i.hv, i64 0
  %i.ie = insertelement <8 x i16> %i.id, i16 %i.hw, i64 1
  %i.if = insertelement <8 x i16> %i.ie, i16 %i.hx, i64 2
  %i.ig = insertelement <8 x i16> %i.if, i16 %i.hy, i64 3
  %i.ih = insertelement <8 x i16> %i.ig, i16 %i.hz, i64 4
  %i.ii = insertelement <8 x i16> %i.ih, i16 %i.ia, i64 5
  %i.ij = insertelement <8 x i16> %i.ii, i16 %i.ib, i64 6
  %i.ik = insertelement <8 x i16> %i.ij, i16 %i.ic, i64 7
  %i.il = load i16, ptr %i.hn, align 2, !tbaa !1364
  %i.im = load i16, ptr %i.ho, align 2, !tbaa !1364
  %i.in = load i16, ptr %i.hp, align 2, !tbaa !1364
  %i.io = load i16, ptr %i.hq, align 2, !tbaa !1364
  %i.ip = load i16, ptr %i.hr, align 2, !tbaa !1364
  %i.iq = load i16, ptr %i.hs, align 2, !tbaa !1364
  %i.ir = load i16, ptr %i.ht, align 2, !tbaa !1364
  %i.is = load i16, ptr %i.hu, align 2, !tbaa !1364
  %i.it = insertelement <8 x i16> poison, i16 %i.il, i64 0
  %i.iu = insertelement <8 x i16> %i.it, i16 %i.im, i64 1
  %i.iv = insertelement <8 x i16> %i.iu, i16 %i.in, i64 2
  %i.iw = insertelement <8 x i16> %i.iv, i16 %i.io, i64 3
  %i.ix = insertelement <8 x i16> %i.iw, i16 %i.ip, i64 4
  %i.iy = insertelement <8 x i16> %i.ix, i16 %i.iq, i64 5
  %i.iz = insertelement <8 x i16> %i.iy, i16 %i.ir, i64 6
  %i.ja = insertelement <8 x i16> %i.iz, i16 %i.is, i64 7
  %i.jb = lshr <8 x i16> %i.ik, splat (i16 5)
  %i.jc = lshr <8 x i16> %i.ja, splat (i16 5)
  %i.jd = and <8 x i16> %i.jb, splat (i16 1)
  %i.je = and <8 x i16> %i.jc, splat (i16 1)
  %i.jf = xor <8 x i16> %i.jd, splat (i16 1)
  %i.jg = xor <8 x i16> %i.je, splat (i16 1)
  %i.jh = add <8 x i16> %i.jf, %vec.phi           ; 2 uses
  %i.ji = add <8 x i16> %i.jg, %vec.phi132        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jj = icmp eq i64 %index.next, %n.vec
  br i1 %i.jj, label %vec.epilog.iter.check, label %vector.body, !llvm.loop !5574

vec.epilog.iter.check:                            ; preds = %vector.body
  %bin.rdx = add <8 x i16> %i.ji, %i.jh
  %i.jk = tail call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx) ; 2 uses
  %min.epilog.iters.check = icmp samesign ult i64 %i.go, 5
  br i1 %min.epilog.iters.check, label %.lr.ph.i92.preheader, label %vec.epilog.ph, !prof !1709

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.jk, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.jl = and i64 %indvars.iv111, 3               ; 2 uses
  %i.jm = icmp eq i64 %i.jl, 0
  %i.jn = select i1 %i.jm, i64 4, i64 %i.jl
  %n.vec133 = sub nsw i64 %indvars.iv111, %i.jn   ; 2 uses
  %i.jo = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index134 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next136, %vec.epilog.vector.body ] ; 5 uses
  %vec.phi135 = phi <4 x i16> [ %i.jo, %vec.epilog.ph ], [ %i.ki, %vec.epilog.vector.body ]
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %index134
  %i.jq = getelementptr [16 x i8], ptr %i.gb, i64 %index134
  %i.jr = getelementptr [16 x i8], ptr %i.gb, i64 %index134
  %i.js = getelementptr [16 x i8], ptr %i.gb, i64 %index134
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 14
  %i.ju = getelementptr i8, ptr %i.jq, i64 30
  %i.jv = getelementptr i8, ptr %i.jr, i64 46
  %i.jw = getelementptr i8, ptr %i.js, i64 62
  %i.jx = load i16, ptr %i.jt, align 2, !tbaa !1364
  %i.jy = load i16, ptr %i.ju, align 2, !tbaa !1364
  %i.jz = load i16, ptr %i.jv, align 2, !tbaa !1364
  %i.ka = load i16, ptr %i.jw, align 2, !tbaa !1364
  %i.kb = insertelement <4 x i16> poison, i16 %i.jx, i64 0
  %i.kc = insertelement <4 x i16> %i.kb, i16 %i.jy, i64 1
  %i.kd = insertelement <4 x i16> %i.kc, i16 %i.jz, i64 2
  %i.ke = insertelement <4 x i16> %i.kd, i16 %i.ka, i64 3
  %i.kf = lshr <4 x i16> %i.ke, splat (i16 5)
  %i.kg = and <4 x i16> %i.kf, splat (i16 1)
  %i.kh = xor <4 x i16> %i.kg, splat (i16 1)
  %i.ki = add <4 x i16> %i.kh, %vec.phi135        ; 2 uses
  %index.next136 = add nuw i64 %index134, 4       ; 2 uses
  %i.kj = icmp eq i64 %index.next136, %n.vec133
  br i1 %i.kj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5575

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.kk = tail call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ki)
  br label %.lr.ph.i92.preheader

.lr.ph.i92.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i94.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec133, %vec.epilog.middle.block ]
  %.021.i.ph = phi i16 [ 0, %iter.check ], [ %i.jk, %vec.epilog.iter.check ], [ %i.kk, %vec.epilog.middle.block ]
  br label %.lr.ph.i92

.lr.ph.i92:                                       ; preds = %.lr.ph.i92.preheader, %.lr.ph.i92
  %indvars.iv.i94 = phi i64 [ %indvars.iv.next.i95, %.lr.ph.i92 ], [ %indvars.iv.i94.ph, %.lr.ph.i92.preheader ] ; 2 uses
  %.021.i = phi i16 [ %spec.select.i, %.lr.ph.i92 ], [ %.021.i.ph, %.lr.ph.i92.preheader ]
  %i.kl = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %indvars.iv.i94
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 14
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !1364
  %i.ko = lshr i16 %i.kn, 5
  %i.kp = and i16 %i.ko, 1
  %i.kq = xor i16 %i.kp, 1
  %spec.select.i = add i16 %i.kq, %.021.i         ; 2 uses
  %indvars.iv.next.i95 = add nuw nsw i64 %indvars.iv.i94, 1 ; 2 uses
  %exitcond.not.i96 = icmp eq i64 %indvars.iv.next.i95, %indvars.iv111
  br i1 %exitcond.not.i96, label %._crit_edge.i, label %.lr.ph.i92, !llvm.loop !5576

._crit_edge.i:                                    ; preds = %.lr.ph.i92, %.preheader.i
  %.0.lcssa.i97 = phi i16 [ 0, %.preheader.i ], [ %spec.select.i, %.lr.ph.i92 ] ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.gc, i64 14
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !1364
  %i.kt = and i16 %i.ks, 32
  %.not.i98 = icmp eq i16 %i.kt, 0
  br i1 %.not.i98, label %sqlite3TableColumnToStorage.exit, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i
  %i.ku = load i16, ptr %i.fx, align 8, !tbaa !1251
  %i.kv = sub i16 %i.gh, %.0.lcssa.i97
  %i.kw = add i16 %i.kv, %i.ku
  br label %sqlite3TableColumnToStorage.exit

sqlite3TableColumnToStorage.exit:                 ; preds = %bb.ae, %._crit_edge.i, %bb.af
  %.018.i = phi i16 [ %i.gh, %bb.ae ], [ %i.kw, %bb.af ], [ %.0.lcssa.i97, %._crit_edge.i ]
  %i.kx = sext i16 %.018.i to i32
  %i.ky = add nsw i32 %i.gg, %i.kx                ; 2 uses
  %i.kz = load i32, ptr %i.fy, align 8, !tbaa !703 ; 3 uses
  %i.la = load i32, ptr %i.fz, align 4, !tbaa !1164
  %.not.i.i99 = icmp sgt i32 %i.la, %i.kz
  br i1 %.not.i.i99, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %sqlite3TableColumnToStorage.exit
  %i.lb = tail call fastcc i32 @growOp3(ptr noundef nonnull %i.b, i32 noundef 89, i32 noundef %i.ky, i32 noundef 0, i32 noundef 0), !inline_history !2027 ; 0 uses
  br label %sqlite3VdbeAddOp1.exit

bb.ah:                                            ; preds = %sqlite3TableColumnToStorage.exit
  %i.lc = add nsw i32 %i.kz, 1
  store i32 %i.lc, ptr %i.fy, align 8, !tbaa !703
  %i.ld = load ptr, ptr %i.ga, align 8, !tbaa !702
  %i.le = sext i32 %i.kz to i64
  %i.lf = getelementptr inbounds [32 x i8], ptr %i.ld, i64 %i.le ; 5 uses
  store i8 89, ptr %i.lf, align 8, !tbaa !929
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  store i16 0, ptr %i.lg, align 2, !tbaa !930
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  store i32 %i.ky, ptr %i.lh, align 4, !tbaa !926
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  store i8 0, ptr %i.lj, align 1, !tbaa !1166
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.li, i8 0, i64 24, i1 false)
  br label %sqlite3VdbeAddOp1.exit

sqlite3VdbeAddOp1.exit:                           ; preds = %bb.ah, %bb.ag, %bb.ad
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.lk = load i16, ptr %i.fr, align 2, !tbaa !1150
  %i.ll = sext i16 %i.lk to i64
  %i.lm = icmp slt i64 %indvars.iv.next112, %i.ll
  br i1 %i.lm, label %bb.ad, label %._crit_edge107, !llvm.loop !5577

._crit_edge107:                                   ; preds = %sqlite3VdbeAddOp1.exit, %sqlite3ReleaseTempReg.exit
  %i.ln = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !1993
  %i.lp = tail call fastcc ptr @sqlite3ExprListDup(ptr noundef %i.c, ptr noundef %i.lo, i32 noundef 0)
end_hunk_18
begin_hunk_19_@unistrFunc:bb.a
  %i.hf = and i8 %i.fz, 64
  %.not.i.i102.3 = icmp eq i8 %i.hf, 0
  %i.hg = select i1 %.not.i.i102.3, i8 0, i8 9
  %i.hh = add i8 %i.hg, %i.fz
  %i.hi = and i8 %i.hh, 15
  %i.hj = or disjoint i8 %i.he, %i.hi
  %i.hk = zext i8 %i.hj to i32
  %i.hl = or disjoint i32 %i.ha, %i.hk            ; 3 uses
  %i.hm = and i8 %i.gf, 64
  %.not.i.i102.4 = icmp eq i8 %i.hm, 0
  %i.hn = select i1 %.not.i.i102.4, i8 0, i8 9
  %i.ho = add i8 %i.hn, %i.gf
  %i.hp = shl nuw nsw i32 %i.hl, 8
  %i.hq = shl i8 %i.ho, 4
  %i.hr = zext i8 %i.hq to i32
  %i.hs = or disjoint i32 %i.hp, %i.hr            ; 5 uses
  %i.ht = and i8 %i.gl, 64
  %.not.i.i102.5 = icmp eq i8 %i.ht, 0
  %i.hu = select i1 %.not.i.i102.5, i8 0, i8 9
  %i.hv = add i8 %i.hu, %i.gl
  %i.hw = and i8 %i.hv, 15
  %i.hx = zext nneg i8 %i.hw to i32
  %i.hy = or disjoint i32 %i.hs, %i.hx            ; 4 uses
  %i.hz = add nuw nsw i32 %.179, 8                ; 4 uses
  %i.ia = zext nneg i32 %.1 to i64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ia ; 7 uses
  %i.ic = icmp samesign ult i32 %i.hs, 128
  br i1 %i.ic, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %isNHex.exit106
  %i.id = trunc nuw nsw i32 %i.hy to i8
  store i8 %i.id, ptr %i.ib, align 1, !tbaa !733
  br label %sqlite3AppendOneUtf8Character.exit

bb.al:                                            ; preds = %isNHex.exit106
  %i.ie = icmp samesign ult i32 %i.hl, 8
  br i1 %i.ie, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.if = lshr i32 %i.hs, 6
  %i.ig = trunc nuw nsw i32 %i.if to i8
  %i.ih = or disjoint i8 %i.ig, -64
  store i8 %i.ih, ptr %i.ib, align 1, !tbaa !733
  %i.ii = trunc i32 %i.hy to i8
  %i.ij = and i8 %i.ii, 63
  %i.ik = or disjoint i8 %i.ij, -128
  %i.il = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  store i8 %i.ik, ptr %i.il, align 1, !tbaa !733
  br label %sqlite3AppendOneUtf8Character.exit

bb.an:                                            ; preds = %bb.al
  %i.im = icmp eq i8 %i.gy, 0
  br i1 %i.im, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.in = and i8 %i.hd, 15
  %i.io = or disjoint i8 %i.in, -32
  store i8 %i.io, ptr %i.ib, align 1, !tbaa !733
  %i.ip = lshr i32 %i.hs, 6
  %i.iq = trunc i32 %i.ip to i8
  %i.ir = and i8 %i.iq, 63
  %i.is = or disjoint i8 %i.ir, -128
  %i.it = getelementptr inbounds nuw i8, ptr %i.ib, i64 1
  store i8 %i.is, ptr %i.it, align 1, !tbaa !733
  %i.iu = trunc i32 %i.hy to i8
  %i.iv = and i8 %i.iu, 63
  %i.iw = or disjoint i8 %i.iv, -128
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ib, i64 2
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !733
  br label %sqlite3AppendOneUtf8Character.exit

bb.ap:                                            ; preds = %bb.an
  %i.iy = lshr i8 %i.gy, 2
  %i.iz = lshr i32 %i.hl, 4
  %i.ja = trunc i32 %i.iz to i8
  %i.jb = lshr i32 %i.hs, 6
  %i.jc = trunc i32 %i.jb to i8
  %i.jd = trunc i32 %i.hy to i8
  %i.je = insertelement <4 x i8> poison, i8 %i.iy, i64 0
  %i.jf = insertelement <4 x i8> %i.je, i8 %i.ja, i64 1
  %i.jg = insertelement <4 x i8> %i.jf, i8 %i.jc, i64 2
  %i.jh = insertelement <4 x i8> %i.jg, i8 %i.jd, i64 3
  %i.ji = and <4 x i8> %i.jh, <i8 7, i8 63, i8 63, i8 63>
  %i.jj = or disjoint <4 x i8> %i.ji, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.jj, ptr %i.ib, align 1, !tbaa !733
  br label %sqlite3AppendOneUtf8Character.exit

bb.aq:                                            ; preds = %bb.ad
  %i.jk = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !733 ; 3 uses
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !733
  %i.jp = and i8 %i.jo, 8
  %.not.i111 = icmp eq i8 %i.jp, 0
  br i1 %.not.i111, label %isNHex.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jq = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !733 ; 3 uses
  %i.js = zext i8 %i.jr to i64
  %i.jt = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.js
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !733
  %i.jv = and i8 %i.ju, 8
  %.not.i111.1 = icmp eq i8 %i.jv, 0
  br i1 %.not.i111.1, label %isNHex.exit.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jw = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !733 ; 3 uses
  %i.jy = zext i8 %i.jx to i64
  %i.jz = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.jy
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !733
  %i.kb = and i8 %i.ka, 8
  %.not.i111.2 = icmp eq i8 %i.kb, 0
  br i1 %.not.i111.2, label %isNHex.exit.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kc = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !733 ; 3 uses
  %i.ke = zext i8 %i.kd to i64
  %i.kf = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !733
  %i.kh = and i8 %i.kg, 8
  %.not.i111.3 = icmp eq i8 %i.kh, 0
  br i1 %.not.i111.3, label %isNHex.exit.thread, label %isNHex.exit116

isNHex.exit116:                                   ; preds = %bb.at
  %i.ki = and i8 %i.jl, 64
  %.not.i.i112 = icmp eq i8 %i.ki, 0
  %i.kj = select i1 %.not.i.i112, i8 0, i8 9
  %i.kk = add i8 %i.kj, %i.jl                     ; 2 uses
  %i.kl = shl i8 %i.kk, 4
  %i.km = and i8 %i.jr, 64
  %.not.i.i112.1 = icmp eq i8 %i.km, 0
  %i.kn = select i1 %.not.i.i112.1, i8 0, i8 9
  %i.ko = add i8 %i.kn, %i.jr
  %i.kp = and i8 %i.ko, 15
  %i.kq = or disjoint i8 %i.kl, %i.kp             ; 2 uses
  %i.kr = zext i8 %i.kq to i32
  %i.ks = and i8 %i.jx, 64
  %.not.i.i112.2 = icmp eq i8 %i.ks, 0
  %i.kt = select i1 %.not.i.i112.2, i8 0, i8 9
  %i.ku = add i8 %i.kt, %i.jx
  %i.kv = shl nuw nsw i32 %i.kr, 8
  %i.kw = shl i8 %i.ku, 4
  %i.kx = zext i8 %i.kw to i32
  %i.ky = or disjoint i32 %i.kv, %i.kx            ; 4 uses
  %i.kz = and i8 %i.kd, 64
  %.not.i.i112.3 = icmp eq i8 %i.kz, 0
  %i.la = select i1 %.not.i.i112.3, i8 0, i8 9
  %i.lb = add i8 %i.la, %i.kd
  %i.lc = and i8 %i.lb, 15
  %i.ld = zext nneg i8 %i.lc to i32
  %i.le = or disjoint i32 %i.ky, %i.ld            ; 3 uses
  %i.lf = add nuw nsw i32 %.179, 6                ; 3 uses
  %i.lg = zext nneg i32 %.1 to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.lg ; 5 uses
  %i.li = icmp samesign ult i32 %i.ky, 128
  br i1 %i.li, label %bb.au, label %bb.av

bb.au:                                            ; preds = %isNHex.exit116
  %i.lj = trunc nuw nsw i32 %i.le to i8
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !733
  br label %sqlite3AppendOneUtf8Character.exit

bb.av:                                            ; preds = %isNHex.exit116
  %i.lk = icmp ult i8 %i.kq, 8
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lh, i64 1 ; 2 uses
  br i1 %i.lk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.lm = lshr i32 %i.ky, 6
  %i.ln = trunc nuw nsw i32 %i.lm to i8
  %i.lo = or disjoint i8 %i.ln, -64
  store i8 %i.lo, ptr %i.lh, align 1, !tbaa !733
  %i.lp = trunc i32 %i.le to i8
  %i.lq = and i8 %i.lp, 63
  %i.lr = or disjoint i8 %i.lq, -128
  store i8 %i.lr, ptr %i.ll, align 1, !tbaa !733
  br label %sqlite3AppendOneUtf8Character.exit

bb.ax:                                            ; preds = %bb.av
  %i.ls = and i8 %i.kk, 15
  %i.lt = or disjoint i8 %i.ls, -32
  store i8 %i.lt, ptr %i.lh, align 1, !tbaa !733
  %i.lu = lshr i32 %i.ky, 6
  %i.lv = trunc i32 %i.lu to i8
  %i.lw = and i8 %i.lv, 63
  %i.lx = or disjoint i8 %i.lw, -128
  store i8 %i.lx, ptr %i.ll, align 1, !tbaa !733
  %i.ly = trunc i32 %i.le to i8
  %i.lz = and i8 %i.ly, 63
  %i.ma = or disjoint i8 %i.lz, -128
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lh, i64 2
  store i8 %i.ma, ptr %i.mb, align 1, !tbaa !733
  br label %sqlite3AppendOneUtf8Character.exit

bb.ay:                                            ; preds = %bb.ad
  %i.mc = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !733 ; 3 uses
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !733
  %i.mh = and i8 %i.mg, 8
  %.not.i121 = icmp eq i8 %i.mh, 0
  br i1 %.not.i121, label %isNHex.exit.thread, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.mi = getelementptr inbounds nuw i8, ptr %i.cj, i64 3
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !733 ; 3 uses
  %i.mk = zext i8 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !733
  %i.mn = and i8 %i.mm, 8
  %.not.i121.1 = icmp eq i8 %i.mn, 0
  br i1 %.not.i121.1, label %isNHex.exit.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.mo = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !733 ; 3 uses
  %i.mq = zext i8 %i.mp to i64
  %i.mr = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !733
  %i.mt = and i8 %i.ms, 8
  %.not.i121.2 = icmp eq i8 %i.mt, 0
  br i1 %.not.i121.2, label %isNHex.exit.thread, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mu = getelementptr inbounds nuw i8, ptr %i.cj, i64 5
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !733 ; 3 uses
  %i.mw = zext i8 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !733
  %i.mz = and i8 %i.my, 8
  %.not.i121.3 = icmp eq i8 %i.mz, 0
  br i1 %.not.i121.3, label %isNHex.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.na = getelementptr inbounds nuw i8, ptr %i.cj, i64 6
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !733 ; 3 uses
  %i.nc = zext i8 %i.nb to i64
  %i.nd = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.nc
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !733
  %i.nf = and i8 %i.ne, 8
  %.not.i121.4 = icmp eq i8 %i.nf, 0
  br i1 %.not.i121.4, label %isNHex.exit.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ng = getelementptr inbounds nuw i8, ptr %i.cj, i64 7
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !733 ; 3 uses
  %i.ni = zext i8 %i.nh to i64
  %i.nj = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.ni
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !733
  %i.nl = and i8 %i.nk, 8
  %.not.i121.5 = icmp eq i8 %i.nl, 0
  br i1 %.not.i121.5, label %isNHex.exit.thread, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.nm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !733 ; 3 uses
  %i.no = zext i8 %i.nn to i64
  %i.np = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.no
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !733
  %i.nr = and i8 %i.nq, 8
  %.not.i121.6 = icmp eq i8 %i.nr, 0
  br i1 %.not.i121.6, label %isNHex.exit.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ns = getelementptr inbounds nuw i8, ptr %i.cj, i64 9
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !733 ; 3 uses
  %i.nu = zext i8 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !733
  %i.nx = and i8 %i.nw, 8
  %.not.i121.7 = icmp eq i8 %i.nx, 0
  br i1 %.not.i121.7, label %isNHex.exit.thread, label %isNHex.exit126

isNHex.exit126:                                   ; preds = %bb.bf
  %3 = and i8 %i.md, 64
  %.not.i.i122 = icmp eq i8 %3, 0
  %4 = select i1 %.not.i.i122, i8 0, i8 9
  %5 = add i8 %4, %i.md
  %6 = shl i8 %5, 4
  %7 = and i8 %i.mj, 64
  %.not.i.i122.1 = icmp eq i8 %7, 0
  %8 = select i1 %.not.i.i122.1, i8 0, i8 9
  %9 = add i8 %8, %i.mj
  %10 = and i8 %9, 15
  %11 = or disjoint i8 %6, %10
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = and i8 %i.mp, 64
  %.not.i.i122.2 = icmp eq i8 %14, 0
  %15 = select i1 %.not.i.i122.2, i8 0, i8 9
  %16 = add i8 %15, %i.mp
  %17 = shl i8 %16, 4
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %13, %18
  %20 = and i8 %i.mv, 64
  %.not.i.i122.3 = icmp eq i8 %20, 0
  %21 = select i1 %.not.i.i122.3, i8 0, i8 9
  %22 = add i8 %21, %i.mv
  %23 = and i8 %22, 15
  %24 = zext nneg i8 %23 to i32
  %25 = or disjoint i32 %19, %24                  ; 3 uses
  %i.ny = shl nuw nsw i32 %25, 8
  %i.nz = and i8 %i.nb, 64
  %.not.i.i122.4 = icmp eq i8 %i.nz, 0
  %i.oa = select i1 %.not.i.i122.4, i8 0, i8 9
  %i.ob = add i8 %i.oa, %i.nb                     ; 2 uses
  %i.oc = shl i8 %i.ob, 4
  %i.od = and i8 %i.nh, 64
  %.not.i.i122.5 = icmp eq i8 %i.od, 0
  %i.oe = select i1 %.not.i.i122.5, i8 0, i8 9
  %i.of = add i8 %i.oe, %i.nh
  %i.og = and i8 %i.of, 15
  %i.oh = or disjoint i8 %i.oc, %i.og
  %i.oi = zext i8 %i.oh to i32
  %i.oj = or disjoint i32 %i.ny, %i.oi            ; 3 uses
  %i.ok = and i8 %i.nn, 64
  %.not.i.i122.6 = icmp eq i8 %i.ok, 0
  %i.ol = select i1 %.not.i.i122.6, i8 0, i8 9
  %i.om = add i8 %i.ol, %i.nn
  %i.on = shl nuw i32 %i.oj, 8
  %i.oo = shl i8 %i.om, 4
  %i.op = zext i8 %i.oo to i32
  %i.oq = or disjoint i32 %i.on, %i.op            ; 5 uses
  %i.or = and i8 %i.nt, 64
  %.not.i.i122.7 = icmp eq i8 %i.or, 0
  %i.os = select i1 %.not.i.i122.7, i8 0, i8 9
  %i.ot = add i8 %i.os, %i.nt
  %i.ou = and i8 %i.ot, 15
  %i.ov = zext nneg i8 %i.ou to i32
  %i.ow = or disjoint i32 %i.oq, %i.ov            ; 4 uses
  %i.ox = add nuw nsw i32 %.179, 10               ; 4 uses
  %i.oy = zext nneg i32 %.1 to i64
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.oy ; 7 uses
  %i.pa = icmp ult i32 %i.oq, 128
  br i1 %i.pa, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %isNHex.exit126
  %i.pb = trunc nuw nsw i32 %i.ow to i8
  store i8 %i.pb, ptr %i.oz, align 1, !tbaa !733
  br label %sqlite3AppendOneUtf8Character.exit

bb.bh:                                            ; preds = %isNHex.exit126
  %i.pc = icmp samesign ult i32 %i.oj, 8
  br i1 %i.pc, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.pd = lshr i32 %i.oq, 6
  %i.pe = trunc nuw nsw i32 %i.pd to i8
  %i.pf = or disjoint i8 %i.pe, -64
  store i8 %i.pf, ptr %i.oz, align 1, !tbaa !733
  %i.pg = trunc i32 %i.ow to i8
  %i.ph = and i8 %i.pg, 63
  %i.pi = or disjoint i8 %i.ph, -128
  %i.pj = getelementptr inbounds nuw i8, ptr %i.oz, i64 1
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !733
  br label %sqlite3AppendOneUtf8Character.exit

bb.bj:                                            ; preds = %bb.bh
  %i.pk = icmp eq i32 %25, 0
  br i1 %i.pk, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.pl = and i8 %i.ob, 15
  %i.pm = or disjoint i8 %i.pl, -32
  store i8 %i.pm, ptr %i.oz, align 1, !tbaa !733
  %i.pn = lshr i32 %i.oq, 6
  %i.po = trunc i32 %i.pn to i8
  %i.pp = and i8 %i.po, 63
  %i.pq = or disjoint i8 %i.pp, -128
  %i.pr = getelementptr inbounds nuw i8, ptr %i.oz, i64 1
  store i8 %i.pq, ptr %i.pr, align 1, !tbaa !733
  %i.ps = trunc i32 %i.ow to i8
  %i.pt = and i8 %i.ps, 63
  %i.pu = or disjoint i8 %i.pt, -128
  %i.pv = getelementptr inbounds nuw i8, ptr %i.oz, i64 2
  store i8 %i.pu, ptr %i.pv, align 1, !tbaa !733
  br label %sqlite3AppendOneUtf8Character.exit

bb.bl:                                            ; preds = %bb.bj
  %i.pw = lshr i32 %i.oq, 6
  %i.px = lshr i32 %i.oj, 4
  %i.py = trunc i32 %i.ow to i8
  %i.pz = trunc i32 %i.pw to i8
  %i.qa = trunc i32 %i.px to i8
  %i.qb = trunc i32 %25 to i8
  %i.qc = lshr i8 %i.qb, 2
  %i.qd = insertelement <4 x i8> poison, i8 %i.qc, i64 0
  %i.qe = insertelement <4 x i8> %i.qd, i8 %i.qa, i64 1
  %i.qf = insertelement <4 x i8> %i.qe, i8 %i.pz, i64 2
  %i.qg = insertelement <4 x i8> %i.qf, i8 %i.py, i64 3
  %i.qh = and <4 x i8> %i.qg, <i8 7, i8 63, i8 63, i8 63>
  %i.qi = or disjoint <4 x i8> %i.qh, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.qi, ptr %i.oz, align 1, !tbaa !733
  br label %sqlite3AppendOneUtf8Character.exit

sqlite3AppendOneUtf8Character.exit:               ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bg, %bb.ax, %bb.aw, %bb.au, %bb.ap, %bb.ao, %bb.am, %bb.ak, %bb.ac, %bb.ab, %bb.z, %bb.x
  %.381 = phi i32 [ %i.ox, %bb.bk ], [ %i.cn, %bb.x ], [ %i.hz, %bb.ap ], [ %i.ox, %bb.bl ], [ %i.ej, %bb.z ], [ %i.ej, %bb.ab ], [ %i.ej, %bb.ac ], [ %i.hz, %bb.ak ], [ %i.hz, %bb.am ], [ %i.hz, %bb.ao ], [ %i.lf, %bb.au ], [ %i.lf, %bb.aw ], [ %i.lf, %bb.ax ], [ %i.ox, %bb.bg ], [ %i.ox, %bb.bi ] ; 2 uses
  %.0.i127.pn = phi i32 [ 3, %bb.bk ], [ 1, %bb.x ], [ 4, %bb.ap ], [ 4, %bb.bl ], [ 1, %bb.z ], [ 2, %bb.ab ], [ 3, %bb.ac ], [ 1, %bb.ak ], [ 2, %bb.am ], [ 3, %bb.ao ], [ 1, %bb.au ], [ 2, %bb.aw ], [ 3, %bb.ax ], [ 1, %bb.bg ], [ 2, %bb.bi ]
  %.3 = add nuw nsw i32 %.0.i127.pn, %.1          ; 2 uses
  %i.qj = icmp slt i32 %.381, %.0.i.i93
  br i1 %i.qj, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %sqlite3AppendOneUtf8Character.exit, %.preheader164, %.thread156
  %.4 = phi i32 [ %i.bx, %.thread156 ], [ 0, %.preheader164 ], [ %.3, %sqlite3AppendOneUtf8Character.exit ]
  %i.qk = sext i32 %.4 to i64                     ; 2 uses
  %i.ql = getelementptr inbounds i8, ptr %i.ai, i64 %i.qk
  store i8 0, ptr %i.ql, align 1, !tbaa !733
  tail call void @sqlite3_result_text64(ptr noundef %0, ptr noundef nonnull %i.ai, i64 noundef %i.qk, ptr noundef nonnull @sqlite3_free, i8 noundef zeroext 16)
  br label %sqlite3_result_error_nomem.exit

isNHex.exit.thread:                               ; preds = %bb.ad, %.preheader.1, %.preheader.2, %.preheader.3, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ai, %bb.aj
  %i.qm = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i129 = icmp eq i32 %i.qm, 0
  br i1 %.not.i129, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %isNHex.exit.thread
  %i.qn = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i130, label %sqlite3_mutex_enter.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.qo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.qo(ptr noundef nonnull %i.qn) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.bn, %bb.bm
  %i.qp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.qq = tail call i32 %i.qp(ptr noundef nonnull %i.ai) #58, !inline_history !13
  %i.qr = sext i32 %i.qq to i64
  %i.qs = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.qt = sub nsw i64 %i.qs, %i.qr
  store i64 %i.qt, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.qu = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.qv = add nsw i64 %i.qu, -1
  store i64 %i.qv, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.qw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.qw(ptr noundef nonnull %i.ai) #58, !inline_history !749
  %i.qx = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.qx, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.bo

bb.bo:                                            ; preds = %sqlite3_mutex_enter.exit.i
  %i.qy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.qy(ptr noundef nonnull %i.qx) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.bp:                                            ; preds = %isNHex.exit.thread
  %i.qz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.qz(ptr noundef nonnull %i.ai) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.bo, %bb.bp
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.ra, align 4, !tbaa !570
  %i.rb = load ptr, ptr %0, align 8, !tbaa !761
  %i.rc = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.rb, ptr noundef nonnull @.str.1338, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1104 ; 0 uses
  br label %sqlite3_result_error_nomem.exit

sqlite3_result_error_nomem.exit:                  ; preds = %.lr.ph.i.i, %bb.e, %bb.a, %bb.t, %bb.s, %bb.p, %sqlite3VdbeMemSetNull.exit.i, %sqlite3_value_text.exit, %sqlite3_free.exit, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @quoteFunc(ptr nofree noundef captures(none) %0, i32 %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.sqlite3_str, align 8        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
  %i.a = load ptr, ptr %0, align 8, !tbaa !761
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !683  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.e = load i32, ptr %i.d, align 8, !tbaa !570
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr null, ptr %i.f, align 8, !tbaa !756
  store ptr %i.c, ptr %3, align 8, !tbaa !767
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.g, align 8, !tbaa !754
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  store i32 %i.e, ptr %i.h, align 4, !tbaa !766
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store i32 0, ptr %i.i, align 8, !tbaa !753
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  store i8 0, ptr %i.j, align 4, !tbaa !765
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 29 ; 2 uses
  store i8 0, ptr %i.k, align 1, !tbaa !752
  %i.l = load ptr, ptr %2, align 8, !tbaa !761    ; 17 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !735
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1111
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 20 ; 2 uses
  %i.s = load i16, ptr %i.r, align 4, !tbaa !686  ; 5 uses
  %i.t = and i16 %i.s, 63
  %i.u = zext nneg i16 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @sqlite3_value_type.aType, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !733
  switch i8 %i.w, label %bb.ab [
    i8 2, label %bb.b
    i8 1, label %bb.h
    i8 4, label %bb.o
    i8 3, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  %i.x = zext i16 %i.s to i32                     ; 3 uses
  %i.y = and i32 %i.x, 8
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load double, ptr %i.l, align 8, !tbaa !733
  br label %sqlite3_value_double.exit.i

bb.d:                                             ; preds = %bb.b
  %i.aa = and i32 %i.x, 36
  %.not7.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not7.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !733
  %i.ac = sitofp i64 %i.ab to double
  br label %sqlite3_value_double.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ad = and i32 %i.x, 18
  %.not8.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not8.i.i.i, label %sqlite3_value_double.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call fastcc double @sqlite3MemRealValueNoRC(ptr noundef nonnull %i.l), !inline_history !5644
  br label %sqlite3_value_double.exit.i

sqlite3_value_double.exit.i:                      ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.0.i.i.i = phi double [ %i.z, %bb.c ], [ %i.ac, %bb.e ], [ %i.ae, %bb.g ], [ 0.000000e+00, %bb.f ]
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %3, ptr noundef nonnull @.str.1339, double noundef %.0.i.i.i), !inline_history !5645
  br label %sqlite3QuoteValue.exit

bb.h:                                             ; preds = %bb.a
  %i.af = zext i16 %i.s to i32                    ; 3 uses
  %i.ag = and i32 %i.af, 36
  %.not.i.i35.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i.i35.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.l, align 8, !tbaa !733
  br label %sqlite3_value_int64.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ai = and i32 %i.af, 8
  %.not8.i.i37.i = icmp eq i32 %i.ai, 0
  br i1 %.not8.i.i37.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = load double, ptr %i.l, align 8, !tbaa !733 ; 3 uses
  %i.ak = fcmp olt double %i.aj, f0xC3DFFFFFFFFFFFFF
  %i.al = fcmp ogt double %i.aj, f0x43DFFFFFFFFFFFFF
  %i.am = fptosi double %i.aj to i64
  %spec.select.i.i.i.i = select i1 %i.al, i64 9223372036854775807, i64 %i.am
  %.0.i.i.i.i = select i1 %i.ak, i64 -9223372036854775808, i64 %spec.select.i.i.i.i
  br label %sqlite3_value_int64.exit.i

bb.l:                                             ; preds = %bb.j
  %i.an = and i32 %i.af, 18
  %.not9.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not9.i.i.i, label %sqlite3_value_int64.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !762
  %.not10.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not10.i.i.i, label %sqlite3_value_int64.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = tail call fastcc i64 @memIntValue(ptr noundef nonnull readonly %i.l), !inline_history !5645
  br label %sqlite3_value_int64.exit.i

sqlite3_value_int64.exit.i:                       ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.i
  %.0.i.i36.i = phi i64 [ %i.ah, %bb.i ], [ %.0.i.i.i.i, %bb.k ], [ %i.aq, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ]
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %3, ptr noundef nonnull @.str.140, i64 noundef %.0.i.i36.i), !inline_history !5645
  br label %sqlite3QuoteValue.exit

bb.o:                                             ; preds = %bb.a
  %i.ar = tail call ptr @sqlite3_value_blob(ptr noundef nonnull %i.l), !inline_history !5645 ; 3 uses
  %i.as = load i16, ptr %i.r, align 4, !tbaa !686 ; 2 uses
end_hunk_19
begin_hunk_20_@porterNext:bb.a
  %i.ap = trunc i64 %indvars.iv.next654 to i32    ; 2 uses
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !2696
  %exitcond657.not = icmp eq i32 %i.o, %i.ap
  br i1 %exitcond657.not, label %.critedge5, label %.lr.ph559, !llvm.loop !5882

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
  %i.av = add nuw nsw i32 %i.as, 20               ; 2 uses
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
  %i.bc = add nsw i32 %i.as, -21
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
  br i1 %i.bx, label %middle.block995, label %vector.body988, !llvm.loop !5883

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
  br i1 %exitcond.not.i.i.1, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !5884

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
  br i1 %i.dm, label %middle.block1015, label %vector.body1010, !llvm.loop !5885

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
  br i1 %i.dp, label %vec.epilog.middle.block1030, label %vec.epilog.vector.body1026, !llvm.loop !5886

vec.epilog.middle.block1030:                      ; preds = %vec.epilog.vector.body1026
  %cmp.n1031 = icmp eq i64 %i.df, %n.vec1025
  br i1 %cmp.n1031, label %.loopexit.loopexit.i.i, label %.lr.ph50.i.i.preheader

.lr.ph50.i.i.preheader:                           ; preds = %iter.check1020, %vec.epilog.iter.check1022, %vec.epilog.middle.block1030
  %indvars.iv57.i.i.ph = phi i64 [ %i.dd, %iter.check1020 ], [ %i.di, %vec.epilog.iter.check1022 ], [ %i.dn, %vec.epilog.middle.block1030 ]
  %indvars.iv55.i.i.ph = phi i64 [ %i.dc, %iter.check1020 ], [ %i.dj, %vec.epilog.iter.check1022 ], [ %i.do, %vec.epilog.middle.block1030 ]
  br label %.lr.ph50.i.i

.lr.ph50.i.i:                                     ; preds = %.lr.ph50.i.i.preheader, %.lr.ph50.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %.lr.ph50.i.i ], [ %indvars.iv57.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %indvars.iv55.i.i = phi i64 [ %indvars.iv.next56.i.i, %.lr.ph50.i.i ], [ %indvars.iv55.i.i.ph, %.lr.ph50.i.i.preheader ] ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv57.i.i
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !733
  %i.ds = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv55.i.i
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !733
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %indvars.iv.next56.i.i = add nuw nsw i64 %indvars.iv55.i.i, 1 ; 2 uses
  %i.dt = icmp samesign ult i64 %indvars.iv.next58.i.i, %wide.trip.count.i.i
  br i1 %i.dt, label %.lr.ph50.i.i, label %.loopexit.loopexit.i.i, !llvm.loop !5887

.loopexit.loopexit.i.i:                           ; preds = %.lr.ph50.i.i, %vec.epilog.middle.block1030, %middle.block1015
  %indvars.iv.next56.i.i.lcssa = phi i64 [ %i.do, %vec.epilog.middle.block1030 ], [ %i.dj, %middle.block1015 ], [ %indvars.iv.next56.i.i, %.lr.ph50.i.i ]
  %i.du = trunc nuw nsw i64 %indvars.iv.next56.i.i.lcssa to i32
  br label %.loopexit.sink.split.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.k
  %indvars.iv786.i = phi i64 [ %indvars.iv.next787.i, %bb.k ], [ 0, %bb.h ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 22, %bb.h ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv786.i
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !733 ; 4 uses
  %i.dx = add i8 %i.dw, -65
  %or.cond4.i = icmp ult i8 %i.dx, 26
  br i1 %or.cond4.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.dy = or disjoint i8 %i.dw, 32
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i
  %i.dz = add i8 %i.dw, -97
  %or.cond7.i = icmp ult i8 %i.dz, 26
  br i1 %or.cond7.i, label %bb.k, label %.lr.ph.i111.i.preheader

.lr.ph.i111.i.preheader:                          ; preds = %bb.j
  %min.iters.check = icmp ult i32 %i.as, 8
  br i1 %min.iters.check, label %.lr.ph.i111.i.preheader1094, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i111.i.preheader
  %i.ea = add i64 %indvars.iv.lcssa, %i.e
  %i.eb = sub i64 %i.ea, %i.ba
  %diff.check = icmp ugt i64 %i.eb, -8
  br i1 %diff.check, label %.lr.ph.i111.i.preheader1094, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 24       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.eq, %vector.body ]
  %vec.phi957 = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %i.er, %vector.body ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %wide.load = load <4 x i8>, ptr %i.ec, align 1, !tbaa !733 ; 4 uses
  %wide.load958 = load <4 x i8>, ptr %i.ed, align 1, !tbaa !733 ; 4 uses
  %i.ee = add <4 x i8> %wide.load, splat (i8 -65)
  %i.ef = add <4 x i8> %wide.load958, splat (i8 -65)
  %i.eg = icmp ult <4 x i8> %i.ee, splat (i8 26)
  %i.eh = icmp ult <4 x i8> %i.ef, splat (i8 26)
  %i.ei = or disjoint <4 x i8> %wide.load, splat (i8 32)
  %i.ej = or disjoint <4 x i8> %wide.load958, splat (i8 32)
  %i.ek = select <4 x i1> %i.eg, <4 x i8> %i.ei, <4 x i8> %wide.load
  %i.el = select <4 x i1> %i.eh, <4 x i8> %i.ej, <4 x i8> %wide.load958
  %i.em = add <4 x i8> %wide.load, splat (i8 -48)
  %i.en = icmp ult <4 x i8> %i.em, splat (i8 10)
  %i.eo = add <4 x i8> %wide.load958, splat (i8 -48)
  %i.ep = icmp ult <4 x i8> %i.eo, splat (i8 10)
  %i.eq = or <4 x i1> %vec.phi, %i.en             ; 2 uses
  %i.er = or <4 x i1> %vec.phi957, %i.ep          ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 4
  store <4 x i8> %i.ek, ptr %i.es, align 1, !tbaa !733
  store <4 x i8> %i.el, ptr %i.et, align 1, !tbaa !733
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !5888

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i1> %i.er, %i.eq
  %bin.rdx.fr = freeze <4 x i1> %bin.rdx
  %i.ev = bitcast <4 x i1> %bin.rdx.fr to i4
  %.not1034 = icmp ne i4 %i.ev, 0
  %rdx.select = zext i1 %.not1034 to i32          ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i.preheader1094

.lr.ph.i111.i.preheader1094:                      ; preds = %vector.memcheck, %.lr.ph.i111.i.preheader, %middle.block
  %indvars.iv.i112.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %.045.i113.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i111.i.preheader ], [ %rdx.select, %middle.block ] ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i111.i.prol.loopexit, label %.lr.ph.i111.i.prol

.lr.ph.i111.i.prol:                               ; preds = %.lr.ph.i111.i.preheader1094
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i112.i.ph
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !733 ; 4 uses
  %i.ey = add i8 %i.ex, -65
  %or.cond.i114.i.prol = icmp ult i8 %i.ey, 26
  %i.ez = or disjoint i8 %i.ex, 32
  %.sink.i115.i.prol = select i1 %or.cond.i114.i.prol, i8 %i.ez, i8 %i.ex
  %i.fa = add i8 %i.ex, -58
  %i.fb = icmp ult i8 %i.fa, -10
  %.2.i116.i.prol = select i1 %i.fb, i32 %.045.i113.i.ph, i32 1 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i.ph
  store i8 %.sink.i115.i.prol, ptr %i.fc, align 1, !tbaa !733
  %indvars.iv.next.i117.i.prol = or disjoint i64 %indvars.iv.i112.i.ph, 1
  br label %.lr.ph.i111.i.prol.loopexit

.lr.ph.i111.i.prol.loopexit:                      ; preds = %.lr.ph.i111.i.prol, %.lr.ph.i111.i.preheader1094
  %.2.i116.i.lcssa1095.unr = phi i32 [ poison, %.lr.ph.i111.i.preheader1094 ], [ %.2.i116.i.prol, %.lr.ph.i111.i.prol ]
  %indvars.iv.i112.i.unr = phi i64 [ %indvars.iv.i112.i.ph, %.lr.ph.i111.i.preheader1094 ], [ %indvars.iv.next.i117.i.prol, %.lr.ph.i111.i.prol ]
  %.045.i113.i.unr = phi i32 [ %.045.i113.i.ph, %.lr.ph.i111.i.preheader1094 ], [ %.2.i116.i.prol, %.lr.ph.i111.i.prol ]
  %i.fd = add nsw i64 %wide.trip.count.i.i, -1
  %i.fe = icmp eq i64 %indvars.iv.i112.i.ph, %i.fd
  br i1 %i.fe, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i

.lr.ph.i111.i:                                    ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i
  %indvars.iv.i112.i = phi i64 [ %indvars.iv.next.i117.i.1, %.lr.ph.i111.i ], [ %indvars.iv.i112.i.unr, %.lr.ph.i111.i.prol.loopexit ] ; 4 uses
  %.045.i113.i = phi i32 [ %.2.i116.i.1, %.lr.ph.i111.i ], [ %.045.i113.i.unr, %.lr.ph.i111.i.prol.loopexit ]
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.i112.i
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !733 ; 4 uses
  %i.fh = add i8 %i.fg, -65
  %or.cond.i114.i = icmp ult i8 %i.fh, 26
  %i.fi = or disjoint i8 %i.fg, 32
  %.sink.i115.i = select i1 %or.cond.i114.i, i8 %i.fi, i8 %i.fg
  %i.fj = add i8 %i.fg, -58
  %i.fk = icmp ult i8 %i.fj, -10
  %i.fl = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i112.i
  store i8 %.sink.i115.i, ptr %i.fl, align 1, !tbaa !733
  %indvars.iv.next.i117.i = add nuw nsw i64 %indvars.iv.i112.i, 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.next.i117.i
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !733 ; 4 uses
  %i.fo = add i8 %i.fn, -65
  %or.cond.i114.i.1 = icmp ult i8 %i.fo, 26
  %i.fp = or disjoint i8 %i.fn, 32
  %.sink.i115.i.1 = select i1 %or.cond.i114.i.1, i8 %i.fp, i8 %i.fn
  %i.fq = add i8 %i.fn, -58
  %i.fr = icmp ult i8 %i.fq, -10
  %i.fs = select i1 %i.fr, i1 %i.fk, i1 false
  %.2.i116.i.1 = select i1 %i.fs, i32 %.045.i113.i, i32 1 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i117.i
  store i8 %.sink.i115.i.1, ptr %i.ft, align 1, !tbaa !733
  %indvars.iv.next.i117.i.1 = add nuw nsw i64 %indvars.iv.i112.i, 2 ; 2 uses
  %exitcond.not.i118.i.1 = icmp eq i64 %indvars.iv.next.i117.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i118.i.1, label %._crit_edge.loopexit.i119.i, label %.lr.ph.i111.i, !llvm.loop !5889

._crit_edge.loopexit.i119.i:                      ; preds = %.lr.ph.i111.i.prol.loopexit, %.lr.ph.i111.i, %middle.block
  %.2.i116.i.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %.2.i116.i.lcssa1095.unr, %.lr.ph.i111.i.prol.loopexit ], [ %.2.i116.i.1, %.lr.ph.i111.i ]
  %i.fu = icmp eq i32 %.2.i116.i.lcssa, 0
  %i.fv = select i1 %i.fu, i32 10, i32 3          ; 3 uses
  %i.fw = shl nuw nsw i32 %i.fv, 1
  %i.fx = icmp sgt i32 %i.as, %i.fw
  br i1 %i.fx, label %iter.check, label %.loopexit.sink.split.i

iter.check:                                       ; preds = %._crit_edge.loopexit.i119.i
  %i.fy = sub nsw i32 %i.as, %i.fv
  %i.fz = zext nneg i32 %i.fv to i64              ; 6 uses
  %i.ga = zext i32 %i.fy to i64                   ; 8 uses
  %i.gb = add nuw nsw i64 %i.ga, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.gb, i64 %wide.trip.count.i.i)
  %i.gc = sub nsw i64 %umax, %i.ga                ; 7 uses
  %min.iters.check962 = icmp ult i64 %i.gc, 8
  %i.gd = sub nsw i64 %i.ga, %i.fz
  %diff.check960 = icmp ugt i64 %i.gd, -32
  %or.cond1037 = select i1 %min.iters.check962, i1 true, i1 %diff.check960
  br i1 %or.cond1037, label %.lr.ph50.i103.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check963 = icmp ult i64 %i.gc, 32
  br i1 %min.iters.check963, label %vec.epilog.ph, label %vector.ph964

vector.ph964:                                     ; preds = %vector.main.loop.iter.check
  %i.ge = and i64 %i.gc, 24
  %n.vec965 = and i64 %i.gc, -32                  ; 5 uses
  %i.gf = add nsw i64 %n.vec965, %i.ga
  %i.gg = or disjoint i64 %n.vec965, %i.fz        ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.az, i64 %i.ga
  %invariant.gep1140 = getelementptr i8, ptr %i.az, i64 %i.fz
  br label %vector.body966

vector.body966:                                   ; preds = %vector.body966, %vector.ph964
  %index967 = phi i64 [ 0, %vector.ph964 ], [ %index.next970, %vector.body966 ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index967 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load968 = load <16 x i8>, ptr %gep, align 1, !tbaa !733
  %wide.load969 = load <16 x i8>, ptr %i.gh, align 1, !tbaa !733
  %gep1141 = getelementptr i8, ptr %invariant.gep1140, i64 %index967 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %gep1141, i64 16
  store <16 x i8> %wide.load968, ptr %gep1141, align 1, !tbaa !733
  store <16 x i8> %wide.load969, ptr %i.gi, align 1, !tbaa !733
  %index.next970 = add nuw i64 %index967, 32      ; 2 uses
  %i.gj = icmp eq i64 %index.next970, %n.vec965
  br i1 %i.gj, label %middle.block971, label %vector.body966, !llvm.loop !5890

middle.block971:                                  ; preds = %vector.body966
  %cmp.n972 = icmp eq i64 %i.gc, %n.vec965
  br i1 %cmp.n972, label %.loopexit.loopexit.i108.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block971
  %min.epilog.iters.check = icmp eq i64 %i.ge, 0
  br i1 %min.epilog.iters.check, label %.lr.ph50.i103.i.preheader, label %vec.epilog.ph, !prof !1824

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec965, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec975 = and i64 %i.gc, -8                   ; 4 uses
  %i.gk = add nsw i64 %n.vec975, %i.ga
  %i.gl = add nsw i64 %n.vec975, %i.fz            ; 2 uses
  %invariant.gep1142 = getelementptr i8, ptr %i.az, i64 %i.ga
  %invariant.gep1144 = getelementptr i8, ptr %i.az, i64 %i.fz
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index976 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next978, %vec.epilog.vector.body ] ; 3 uses
  %gep1143 = getelementptr i8, ptr %invariant.gep1142, i64 %index976
  %wide.load977 = load <8 x i8>, ptr %gep1143, align 1, !tbaa !733
  %gep1145 = getelementptr i8, ptr %invariant.gep1144, i64 %index976
  store <8 x i8> %wide.load977, ptr %gep1145, align 1, !tbaa !733
  %index.next978 = add nuw i64 %index976, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next978, %n.vec975
  br i1 %i.gm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !5891

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n979 = icmp eq i64 %i.gc, %n.vec975
  br i1 %cmp.n979, label %.loopexit.loopexit.i108.i, label %.lr.ph50.i103.i.preheader

.lr.ph50.i103.i.preheader:                        ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv57.i104.i.ph = phi i64 [ %i.ga, %iter.check ], [ %i.gf, %vec.epilog.iter.check ], [ %i.gk, %vec.epilog.middle.block ]
  %indvars.iv55.i105.i.ph = phi i64 [ %i.fz, %iter.check ], [ %i.gg, %vec.epilog.iter.check ], [ %i.gl, %vec.epilog.middle.block ]
  br label %.lr.ph50.i103.i

.lr.ph50.i103.i:                                  ; preds = %.lr.ph50.i103.i.preheader, %.lr.ph50.i103.i
  %indvars.iv57.i104.i = phi i64 [ %indvars.iv.next58.i106.i, %.lr.ph50.i103.i ], [ %indvars.iv57.i104.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %indvars.iv55.i105.i = phi i64 [ %indvars.iv.next56.i107.i, %.lr.ph50.i103.i ], [ %indvars.iv55.i105.i.ph, %.lr.ph50.i103.i.preheader ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv57.i104.i
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !733
  %i.gp = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv55.i105.i
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !733
  %indvars.iv.next58.i106.i = add nuw nsw i64 %indvars.iv57.i104.i, 1 ; 2 uses
  %indvars.iv.next56.i107.i = add nuw nsw i64 %indvars.iv55.i105.i, 1 ; 2 uses
  %i.gq = icmp samesign ult i64 %indvars.iv.next58.i106.i, %wide.trip.count.i.i
  br i1 %i.gq, label %.lr.ph50.i103.i, label %.loopexit.loopexit.i108.i, !llvm.loop !5892

.loopexit.loopexit.i108.i:                        ; preds = %.lr.ph50.i103.i, %vec.epilog.middle.block, %middle.block971
  %indvars.iv.next56.i107.i.lcssa = phi i64 [ %i.gl, %vec.epilog.middle.block ], [ %i.gg, %middle.block971 ], [ %indvars.iv.next56.i107.i, %.lr.ph50.i103.i ]
  %i.gr = trunc nuw nsw i64 %indvars.iv.next56.i107.i.lcssa to i32
  br label %.loopexit.sink.split.i

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink.i = phi i8 [ %i.dy, %bb.i ], [ %i.dw, %bb.j ]
  %i.gs = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %.sink.i, ptr %i.gs, align 1, !tbaa !733
  %indvars.iv.next787.i = add nuw nsw i64 %indvars.iv786.i, 1 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next787.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !5893

._crit_edge.i:                                    ; preds = %bb.k
  %i.gt = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.i ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.j, i8 0, i64 5, i1 false)
  %i.gu = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i ; 3 uses
  store ptr %i.gt, ptr %i.b, align 8, !tbaa !741
  %i.gv = load i8, ptr %i.gt, align 1, !tbaa !733 ; 2 uses
  %i.gw = icmp eq i8 %i.gv, 115
  br i1 %i.gw, label %.lr.ph.i121.1.i, label %.lr.ph.i150.i

.lr.ph.i121.1.i:                                  ; preds = %._crit_edge.i
  %i.gx = getelementptr i8, ptr %i.gu, i64 2      ; 4 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !733 ; 2 uses
  switch i8 %i.gy, label %.lr.ph.i137.1.i.thread [
    i8 101, label %.lr.ph.i121.2.i
    i8 115, label %.lr.ph33.i144.preheader.i
  ]

.lr.ph.i121.2.i:                                  ; preds = %.lr.ph.i121.1.i
  %i.gz = getelementptr i8, ptr %i.gu, i64 3      ; 5 uses
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !733
  switch i8 %i.ha, label %.lr.ph.i137.1.i.thread [
    i8 115, label %.lr.ph.i121.3.i
    i8 105, label %.lr.ph33.i131.preheader.i
  ]

.lr.ph.i121.3.i:                                  ; preds = %.lr.ph.i121.2.i
  %i.hb = getelementptr i8, ptr %i.gu, i64 4
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !733
  %i.hd = icmp eq i8 %i.hc, 115
  br i1 %i.hd, label %.lr.ph33.i.preheader.i, label %.lr.ph.i137.1.i.thread

.lr.ph33.i.preheader.i:                           ; preds = %.lr.ph.i121.3.i
  store ptr %i.gz, ptr %i.b, align 8, !tbaa !741
  br label %stem.exit162.thread.i.thread

.lr.ph33.i131.preheader.i:                        ; preds = %.lr.ph.i121.2.i
  store ptr %i.gz, ptr %i.b, align 8, !tbaa !741
  br label %stem.exit162.thread.i.thread

.lr.ph33.i144.preheader.i:                        ; preds = %.lr.ph.i121.1.i
  store i8 115, ptr %i.gx, align 1, !tbaa !733
  br label %stem.exit162.thread.i.thread

.lr.ph.i137.1.i.thread:                           ; preds = %.lr.ph.i121.2.i, %.lr.ph.i121.3.i, %.lr.ph.i121.1.i
  store ptr %i.gx, ptr %i.b, align 8, !tbaa !741
  br label %.lr.ph.i150.i

.lr.ph.i150.i:                                    ; preds = %.lr.ph.i137.1.i.thread, %._crit_edge.i
  %i.he = phi i8 [ %i.gv, %._crit_edge.i ], [ %i.gy, %.lr.ph.i137.1.i.thread ]
  %i.hf = phi ptr [ %i.gt, %._crit_edge.i ], [ %i.gx, %.lr.ph.i137.1.i.thread ] ; 14 uses
  %scevgep799.i = getelementptr i8, ptr %i.hf, i64 3 ; 5 uses
  switch i8 %i.he, label %stem.exit162.thread.ithread-pre-split [
    i8 100, label %.lr.ph.i150.1.i
    i8 103, label %.lr.ph.i163.1.i
  ]

.lr.ph.i150.1.i:                                  ; preds = %.lr.ph.i150.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 1 ; 3 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !733
  %i.hi = icmp eq i8 %i.hh, 101
  br i1 %i.hi, label %.lr.ph.i150.2.i, label %stem.exit162.thread.ithread-pre-split

.lr.ph.i150.2.i:                                  ; preds = %.lr.ph.i150.1.i
  %i.hj = getelementptr i8, ptr %i.hf, i64 2      ; 3 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !733 ; 2 uses
  %i.hl = icmp eq i8 %i.hk, 101
  br i1 %i.hl, label %._crit_edge.i155.i, label %._crit_edge.i178.i

._crit_edge.i155.i:                               ; preds = %.lr.ph.i150.2.i
  %i.hm = load i8, ptr %scevgep799.i, align 1, !tbaa !733 ; 2 uses
  %i.hn = icmp eq i8 %i.hm, 0
  br i1 %i.hn, label %stem.exit162.thread.ithread-pre-split, label %.lr.ph.i419.i

.lr.ph.i419.i:                                    ; preds = %._crit_edge.i155.i, %bb.n
  %i.ho = phi i8 [ %i.hz, %bb.n ], [ %i.hm, %._crit_edge.i155.i ]
  %.011.i.i = phi ptr [ %i.hy, %bb.n ], [ %scevgep799.i, %._crit_edge.i155.i ] ; 3 uses
  %i.hp = sext i8 %i.ho to i64
  %i.hq = getelementptr i8, ptr @cType, i64 %i.hp
  %i.hr = getelementptr i8, ptr %i.hq, i64 -97
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !733 ; 2 uses
  %i.ht = icmp slt i8 %i.hs, 2
  br i1 %i.ht, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i419.i
  %i.hu = sext i8 %i.hs to i32
  %i.hv = sub nsw i32 1, %i.hu
  br label %isVowel.exit.i420.i

bb.m:                                             ; preds = %.lr.ph.i419.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1
  %i.hx = call fastcc i32 @isConsonant(ptr noundef nonnull readonly %i.hw), !inline_history !492
  br label %isVowel.exit.i420.i

isVowel.exit.i420.i:                              ; preds = %bb.m, %bb.l
  %.0.i.i421.i = phi i32 [ %i.hx, %bb.m ], [ %i.hv, %bb.l ]
  %.not.i422.i = icmp eq i32 %.0.i.i421.i, 0
  br i1 %.not.i422.i, label %.preheader.i.i, label %bb.n

bb.n:                                             ; preds = %isVowel.exit.i420.i
  %i.hy = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 1 ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !733 ; 2 uses
  %i.ia = icmp eq i8 %i.hz, 0
  br i1 %i.ia, label %stem.exit162.thread.ithread-pre-split, label %.lr.ph.i419.i, !llvm.loop !493

.preheader.i.i:                                   ; preds = %isVowel.exit.i420.i, %.preheader.i.i
  %.1.i.i = phi ptr [ %i.ic, %.preheader.i.i ], [ %.011.i.i, %isVowel.exit.i420.i ] ; 3 uses
  %i.ib = call fastcc i32 @isConsonant(ptr noundef nonnull %.1.i.i)
  %.not7.i.i = icmp eq i32 %i.ib, 0
  %i.ic = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1
  br i1 %.not7.i.i, label %m_gt_0.exit.i, label %.preheader.i.i, !llvm.loop !494

m_gt_0.exit.i:                                    ; preds = %.preheader.i.i
  %i.id = load i8, ptr %.1.i.i, align 1, !tbaa !733
  %.not619.i = icmp eq i8 %i.id, 0
  br i1 %.not619.i, label %stem.exit162.thread.ithread-pre-split, label %stem.exit162.thread.thread.i

stem.exit162.thread.thread.i:                     ; preds = %m_gt_0.exit.i
  store ptr %i.hg, ptr %i.b, align 8, !tbaa !741
  br label %stem.exit162.thread.i.thread

.lr.ph.i163.1.i:                                  ; preds = %.lr.ph.i150.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hf, i64 1
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !733
  %i.ig = icmp eq i8 %i.if, 110
  br i1 %i.ig, label %.lr.ph.i163.2.i, label %stem.exit162.thread.ithread-pre-split
end_hunk_20
begin_hunk_21_@rtreeMatchArgFree:bb.a
  %i.k = and i16 %i.j, -28672
  %.not.i.i.i = icmp eq i16 %i.k, 0
  br i1 %.not.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = load i32, ptr %i.l, align 8, !tbaa !684
  %.not3.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i.i.i, label %sqlite3VdbeMemRelease.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.h)
  br label %sqlite3VdbeMemRelease.exit.i.i

sqlite3VdbeMemRelease.exit.i.i:                   ; preds = %bb.e, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !683
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.o, ptr noundef nonnull %i.h)
  %.pre = load i32, ptr %i.a, align 8, !tbaa !570
  br label %sqlite3_value_free.exit

sqlite3_value_free.exit:                          ; preds = %bb.b, %sqlite3VdbeMemRelease.exit.i.i
  %i.p = phi i32 [ %i.e, %bb.b ], [ %.pre, %sqlite3VdbeMemRelease.exit.i.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !6750

._crit_edge:                                      ; preds = %sqlite3_value_free.exit, %bb.a
  %i.s = load i32, ptr @sqlite3Config, align 8, !tbaa !697
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i.i6 = icmp eq ptr %i.t, null
  br i1 %.not.i.i6, label %sqlite3_mutex_enter.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !563
  tail call void %i.u(ptr noundef nonnull %i.t) #58, !inline_history !748
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.g, %bb.f
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !637
  %i.w = tail call i32 %i.v(ptr noundef nonnull %0) #58, !inline_history !13
  %i.x = sext i32 %i.w to i64
  %i.y = load i64, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.z = sub nsw i64 %i.y, %i.x
  store i64 %i.z, ptr @sqlite3Stat, align 8, !tbaa !565
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ab = add nsw i64 %i.aa, -1
  store i64 %i.ab, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !565
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.ac(ptr noundef nonnull %0) #58, !inline_history !749
  %i.ad = load ptr, ptr @mem0, align 8, !tbaa !699 ; 2 uses
  %.not.i4.i = icmp eq ptr %i.ad, null
  br i1 %.not.i4.i, label %sqlite3_free.exit, label %bb.h

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !566
  tail call void %i.ae(ptr noundef nonnull %i.ad) #58, !inline_history !750
  br label %sqlite3_free.exit

bb.i:                                             ; preds = %._crit_edge
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !700
  tail call void %i.af(ptr noundef nonnull %0) #58, !inline_history !749
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %sqlite3_mutex_enter.exit.i, %bb.h, %bb.i
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #56

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log2.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64, i64) #47

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ssub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #47

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v2i16(<2 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v4i16(<4 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i16> @llvm.smin.v2i16(<2 x i16>, <2 x i16>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #47

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { norecurse nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { norecurse nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nofree noinline norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree noinline norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { nofree noinline nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #44 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { nofree nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { nofree norecurse nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { nofree nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #56 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #58 = { nounwind }
attributes #59 = { nounwind willreturn memory(read) }
attributes #60 = { nounwind willreturn memory(none) }
attributes #61 = { "function-inline-cost-multiplier"="2" }
attributes #62 = { nounwind allocsize(0) }
attributes #63 = { nounwind allocsize(1) }

!llvm.module.flags = !{!545, !546, !547, !548, !549}
!llvm.ident = !{!550}
!llvm.errno.tbaa = !{!555}

!0 = distinct !{null, null}
!1 = distinct !{!1, !598}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !598}
!5 = distinct !{!5, !598}
!6 = distinct !{ptr @sqlite3DbNNFreeNN, ptr @sqlite3_free, null}
!7 = distinct !{null}
!8 = distinct !{!8, !598}
!9 = distinct !{null}
!10 = distinct !{!10, !598}
!11 = distinct !{!11, !598}
!12 = distinct !{null}
!13 = distinct !{ptr @sqlite3_free, null}
!14 = distinct !{!14, !598}
!15 = distinct !{null}
!16 = distinct !{!16, !598}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{ptr @sqlite3_vmprintf, null}
!20 = distinct !{ptr @sqlite3_vfs_find, null}
!21 = distinct !{!21, !598}
!22 = distinct !{ptr @sqlite3_randomness, null}
!23 = distinct !{!23, !598}
!24 = distinct !{null, null}
!25 = distinct !{null}
!26 = distinct !{null, ptr @unixLogErrorAtLine}
!27 = distinct !{null, ptr @sqlite3_mutex_enter}
!28 = distinct !{null, ptr @sqlite3_mutex_leave}
!29 = distinct !{null}
!30 = distinct !{null, null, ptr @sqlite3_mutex_enter}
!31 = distinct !{null, null, ptr @sqlite3_mutex_leave}
!32 = distinct !{!32, !598}
!33 = distinct !{null}
!34 = distinct !{ptr @sqlite3PagerUnref, null, null, null}
!35 = distinct !{null}
!36 = distinct !{!36, !598}
!37 = distinct !{ptr @sqlite3DbFreeNN, ptr @sqlite3_free, null}
!38 = distinct !{ptr @sqlite3DbStrDup, null}
!39 = distinct !{null, ptr @sqlite3_mutex_enter}
!40 = distinct !{null, ptr @sqlite3_mutex_leave}
!41 = distinct !{null}
!42 = distinct !{null}
!43 = distinct !{null}
!44 = distinct !{ptr @sqlite3_column_text, null, ptr @sqlite3_mutex_enter}
!45 = distinct !{ptr @sqlite3_column_text, null, ptr @sqlite3_mutex_leave}
!46 = distinct !{ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_enter}
!47 = distinct !{ptr @sqlite3_column_type, null, ptr @sqlite3_mutex_leave}
!48 = distinct !{null}
!49 = distinct !{null, null}
!50 = distinct !{null}
!51 = distinct !{null, null, null}
!52 = distinct !{null, null}
!53 = distinct !{null, ptr @sqlite3DbMallocZero, null}
!54 = distinct !{null}
!55 = distinct !{null}
!56 = distinct !{null}
!57 = distinct !{null, ptr @sqlite3VtabUnlock}
!58 = distinct !{null, ptr @sqlite3VtabUnlock, null}
!59 = distinct !{!59, !598}
!60 = distinct !{!60, !598}
!61 = distinct !{null}
!62 = distinct !{!62, !598}
!63 = distinct !{!63, !598}
!64 = distinct !{null}
!65 = distinct !{null}
!66 = distinct !{!66, !598}
!67 = distinct !{!67, !598}
!68 = distinct !{null}
!69 = distinct !{ptr @btreeGetPage, null}
!70 = distinct !{!70, !598}
!71 = distinct !{!71, !598}
!72 = distinct !{null}
!73 = distinct !{null}
!74 = distinct !{null}
!75 = distinct !{ptr @sqlite3_result_error_nomem, null}
!76 = distinct !{null}
!77 = distinct !{null}
!78 = distinct !{null, ptr @sqlite3_result_error_toobig, ptr @sqlite3VdbeMemSetStr}
!79 = distinct !{null, ptr @sqlite3_msize}
!80 = distinct !{null, ptr @sqlite3_mutex_enter}
!81 = distinct !{!81, !598}
!82 = distinct !{null, ptr @sqlite3_mutex_leave}
!83 = distinct !{null}
!84 = distinct !{null, null}
!85 = distinct !{!85, !598}
!86 = distinct !{!86, !598}
!87 = distinct !{!87, !598}
!88 = distinct !{ptr @sqlite3DbMallocZero, null}
!89 = distinct !{ptr @sqlite3_value_bytes, null}
!90 = distinct !{ptr @sqlite3_value_bytes16, null}
!91 = distinct !{ptr @sqlite3_value_double, null}
!92 = distinct !{!92, !598}
!93 = distinct !{!93, !598}
!94 = distinct !{!94, !598}
!95 = distinct !{!95, !598}
!96 = distinct !{!96, !598}
!97 = distinct !{!97, !598}
!98 = distinct !{!98, !598}
!99 = distinct !{null}
!100 = distinct !{!100, !598}
!101 = distinct !{!101, !598}
!102 = distinct !{!102, !598}
!103 = distinct !{null, null}
!104 = distinct !{!104, !598}
!105 = distinct !{null}
!106 = distinct !{null, null}
!107 = distinct !{!107, !598}
!108 = distinct !{!108, !598}
!109 = distinct !{null, ptr @sqlite3_mutex_enter}
!110 = distinct !{null}
!111 = distinct !{null, ptr @sqlite3_mutex_leave}
!112 = distinct !{null, null}
!113 = distinct !{null}
!114 = distinct !{null}
!115 = distinct !{!115, !598}
!116 = distinct !{!116, !598}
!117 = distinct !{null}
!118 = distinct !{null}
!119 = distinct !{null}
!120 = distinct !{null}
!121 = distinct !{!121, !598}
!122 = distinct !{ptr @sqlite3_free_filename, ptr @sqlite3_free, null}
!123 = distinct !{!123, !598}
!124 = distinct !{!124, !598}
!125 = distinct !{!125, !598}
end_hunk_21
