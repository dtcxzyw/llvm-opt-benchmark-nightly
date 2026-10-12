Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@pagerOpenSavepoint:bb.a
  %i.m = icmp slt i32 %i.b, %1
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.t = load i32, ptr %i.n, align 8, !tbaa !1002 ; 2 uses
  %i.u = getelementptr inbounds [56 x i8], ptr %i.g, i64 %indvars.iv ; 11 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i32 %i.t, ptr %i.v, align 8, !tbaa !1567
  %i.w = load ptr, ptr %i.o, align 8, !tbaa !1503
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !863
  %.not46 = icmp eq ptr %i.x, null
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.p, align 8, !tbaa !1485 ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = load i32, ptr %i.q, align 8, !tbaa !1005
  %i.ab = zext i32 %i.aa to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %storemerge = phi i64 [ %i.ab, %bb.e ], [ %i.y, %bb.d ]
  store i64 %storemerge, ptr %i.u, align 8, !tbaa !1573
  %i.ac = load i32, ptr %i.r, align 4, !tbaa !1550
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 28
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !1571
  %i.ae = tail call fastcc ptr @sqlite3Malloc(i64 noundef 512) ; 4 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %sqlite3BitvecCreate.exit.thread, label %bb.g

sqlite3BitvecCreate.exit.thread:                  ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %i.af, align 8, !tbaa !1548
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 1, ptr %i.ag, align 8, !tbaa !1570
  br label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(508) %i.ah, i8 0, i64 508, i1 false)
  store i32 %i.t, ptr %i.ae, align 8, !tbaa !1371
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.ae, ptr %i.ai, align 8, !tbaa !1548
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i32 1, ptr %i.aj, align 8, !tbaa !1570
  %i.ak = load ptr, ptr %i.s, align 8, !tbaa !938 ; 5 uses
  %.not48 = icmp eq ptr %i.ak, null
  br i1 %.not48, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  %i.an = load i32, ptr %i.am, align 8, !tbaa !1560
  store i32 %i.an, ptr %i.al, align 4, !tbaa !570
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 96
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !570
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !570
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 100
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !570
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 44
  store i32 %i.as, ptr %i.at, align 4, !tbaa !570
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.av = load i32, ptr %i.au, align 8, !tbaa !1574
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store i32 %i.av, ptr %i.aw, align 8, !tbaa !570
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ax = trunc i64 %indvars.iv.next to i32       ; 2 uses
  store i32 %i.ax, ptr %i.a, align 8, !tbaa !992
  %exitcond.not = icmp eq i32 %1, %i.ax
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !3687

.loopexit:                                        ; preds = %bb.i, %bb.b, %sqlite3BitvecCreate.exit.thread, %bb.a
  %.042 = phi i32 [ 7, %bb.a ], [ 7, %sqlite3BitvecCreate.exit.thread ], [ 0, %bb.b ], [ 0, %bb.i ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @subjournalPageIfRequired(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.b, align 8, !tbaa !896 ; 10 uses
  %i.c = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %.val2 = load i32, ptr %i.c, align 8, !tbaa !901 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !992  ; 7 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %subjournalPage.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 120 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1546 ; 10 uses
  %i.i = add i32 %.val2, -1                       ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %sqlite3BitvecTestNotNull.exit.thread.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %sqlite3BitvecTestNotNull.exit.thread.i ] ; 4 uses
  %i.j = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !1567
  %.not.i = icmp ult i32 %i.l, %.val2
  br i1 %.not.i, label %sqlite3BitvecTestNotNull.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1548 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !1371
  %.not.i.i = icmp ult i32 %i.i, %i.o
  br i1 %.not.i.i, label %.preheader.i.i, label %.preheader.i

.preheader.i.i:                                   ; preds = %bb.c, %bb.d
  %.025.i.i = phi ptr [ %i.w, %bb.d ], [ %i.n, %bb.c ] ; 5 uses
  %.024.i.i = phi i32 [ %i.s, %bb.d ], [ %i.i, %bb.c ]
  %.024.fr.i.i = freeze i32 %.024.i.i             ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1372 ; 3 uses
  %.not30.i.i = icmp eq i32 %i.q, 0
  br i1 %.not30.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.r = udiv i32 %.024.fr.i.i, %i.q
  %i.s = urem i32 %.024.fr.i.i, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16
  %i.u = zext i32 %i.r to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !733  ; 2 uses
  %.not32.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not32.not.i.i, label %.preheader.i, label %.preheader.i.i

bb.e:                                             ; preds = %.preheader.i.i
  %i.x = load i32, ptr %.025.i.i, align 8, !tbaa !1371
  %i.y = icmp ult i32 %i.x, 3969
  br i1 %i.y, label %sqlite3BitvecTestNotNull.exit.i, label %bb.f

sqlite3BitvecTestNotNull.exit.i:                  ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16
  %i.aa = lshr i32 %.024.fr.i.i, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !733
  %i.ae = zext i8 %i.ad to i32
  %i.af = and i32 %.024.fr.i.i, 7
  %i.ag = shl nuw nsw i32 1, %i.af
  %i.ah = and i32 %i.ag, %i.ae
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.preheader.i, label %sqlite3BitvecTestNotNull.exit.thread.i

bb.f:                                             ; preds = %bb.e
  %i.aj = add i32 %.024.fr.i.i, 1
  %i.ak = urem i32 %.024.fr.i.i, 124              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 16 ; 2 uses
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !733 ; 2 uses
  %.not3136.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not3136.i.i, label %.preheader.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.g
  %i.ap = phi i32 [ %i.aw, %bb.g ], [ %i.ao, %bb.f ]
  %.037.i.i = phi i32 [ %i.at, %bb.g ], [ %i.ak, %bb.f ]
  %i.aq = icmp eq i32 %i.ap, %i.aj
  br i1 %i.aq, label %sqlite3BitvecTestNotNull.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ar = add i32 %.037.i.i, 1                    ; 2 uses
  %i.as = icmp eq i32 %i.ar, 124
  %i.at = select i1 %i.as, i32 0, i32 %i.ar       ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !733 ; 2 uses
  %.not31.i.i = icmp eq i32 %i.aw, 0
  br i1 %.not31.i.i, label %.preheader.i, label %.lr.ph.i.i, !llvm.loop !125

.preheader.i:                                     ; preds = %bb.f, %sqlite3BitvecTestNotNull.exit.i, %bb.c, %bb.d, %bb.g
  %i.ax = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %.122.i = add nuw nsw i32 %i.ax, 1
  %i.ay = icmp slt i32 %.122.i, %i.e
  br i1 %i.ay, label %.lr.ph24.preheader.i, label %subjRequiresPage.exit

.lr.ph24.preheader.i:                             ; preds = %.preheader.i
  %i.az = add nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.ba = xor i32 %i.ax, -1
  %i.bb = add nsw i32 %i.e, %i.ba
  %i.bc = add nsw i32 %i.e, -2
  %i.bd = sub i32 %i.bc, %i.ax
  %xtraiter = and i32 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol

.lr.ph24.i.prol:                                  ; preds = %.lr.ph24.preheader.i, %.lr.ph24.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph24.i.prol ], [ %i.az, %.lr.ph24.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph24.i.prol ], [ 0, %.lr.ph24.preheader.i ]
  %i.be = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i.prol
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i32 0, ptr %i.bf, align 8, !tbaa !1570
  %indvars.iv.next36.i.prol = add nuw nsw i64 %indvars.iv35.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph24.i.prol.loopexit, label %.lr.ph24.i.prol, !llvm.loop !3688

.lr.ph24.i.prol.loopexit:                         ; preds = %.lr.ph24.i.prol, %.lr.ph24.preheader.i
  %indvars.iv35.i.unr = phi i64 [ %i.az, %.lr.ph24.preheader.i ], [ %indvars.iv.next36.i.prol, %.lr.ph24.i.prol ]
  %i.bg = icmp ult i32 %i.bd, 7
  br i1 %i.bg, label %subjRequiresPage.exit, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.7, %.lr.ph24.i ], [ %indvars.iv35.i.unr, %.lr.ph24.i.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store i32 0, ptr %i.bi, align 8, !tbaa !1570
  %i.bj = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 88
  store i32 0, ptr %i.bk, align 8, !tbaa !1570
  %i.bl = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  store i32 0, ptr %i.bm, align 8, !tbaa !1570
  %i.bn = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 200
  store i32 0, ptr %i.bo, align 8, !tbaa !1570
  %i.bp = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 256
  store i32 0, ptr %i.bq, align 8, !tbaa !1570
  %i.br = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 312
  store i32 0, ptr %i.bs, align 8, !tbaa !1570
  %i.bt = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 368
  store i32 0, ptr %i.bu, align 8, !tbaa !1570
  %i.bv = getelementptr inbounds nuw [56 x i8], ptr %i.h, i64 %indvars.iv35.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 424
  store i32 0, ptr %i.bw, align 8, !tbaa !1570
  %indvars.iv.next36.i.7 = add nuw nsw i64 %indvars.iv35.i, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next36.i.7 to i32
  %exitcond.not.7 = icmp eq i32 %i.e, %lftr.wideiv.7
  br i1 %exitcond.not.7, label %subjRequiresPage.exit, label %.lr.ph24.i, !llvm.loop !3689

sqlite3BitvecTestNotNull.exit.thread.i:           ; preds = %.lr.ph.i.i, %sqlite3BitvecTestNotNull.exit.i, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %subjournalPage.exit, label %bb.b, !llvm.loop !3690

subjRequiresPage.exit:                            ; preds = %.lr.ph24.i.prol.loopexit, %.lr.ph24.i, %.preheader.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 9
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !994 ; 2 uses
  %.not.i3 = icmp eq i8 %i.by, 2
  br i1 %.not.i3, label %.thread25.i, label %bb.h

bb.h:                                             ; preds = %subjRequiresPage.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %.val, i64 88 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !1549 ; 10 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !863
  %.not.i.i4 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i4, label %bb.i, label %openSubJournal.exit.thread.i

bb.i:                                             ; preds = %bb.h
  %i.cc = icmp eq i8 %i.by, 4
  br i1 %i.cc, label %.thread10.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 28), align 4, !tbaa !1314
  %.fr.i.i = freeze i32 %i.cd                     ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 26
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !1470
  %.not7.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not7.i.i, label %bb.k, label %.thread10.i.i

.thread10.i.i:                                    ; preds = %bb.j, %bb.i
  %i.cg = load ptr, ptr %.val, align 8, !tbaa !1367
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ch, i8 0, i64 48, i1 false)
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ci = load ptr, ptr %.val, align 8, !tbaa !1367 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, i8 0, i64 80, i1 false)
  %i.cj = icmp eq i32 %.fr.i.i, 0
  br i1 %i.cj, label %openSubJournal.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ck = icmp sgt i32 %.fr.i.i, 0
  %spec.select.i.i = select i1 %i.ck, i32 %.fr.i.i, i32 1016
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.thread10.i.i
  %.0913.i.i = phi i32 [ -1, %.thread10.i.i ], [ %.fr.i.i, %bb.l ]
  %i.cl = phi ptr [ %i.cg, %.thread10.i.i ], [ %i.ci, %bb.l ]
  %i.cm = phi i32 [ 1016, %.thread10.i.i ], [ %spec.select.i.i, %bb.l ]
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !1553
  store ptr @MemJournalMethods, ptr %i.ca, align 8, !tbaa !863
  %i.co = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 %.0913.i.i, ptr %i.co, align 4, !tbaa !1554
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 56
  store i32 8222, ptr %i.cp, align 8, !tbaa !1597
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  store ptr null, ptr %i.cq, align 8, !tbaa !1598
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  store ptr %i.cl, ptr %i.cr, align 8, !tbaa !1599
  br label %openSubJournal.exit.thread.i

openSubJournal.exit.i:                            ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1509
  %i.cu = tail call i32 %i.ct(ptr noundef %i.ci, ptr noundef null, ptr noundef nonnull %i.ca, i32 noundef 8222, ptr noundef null) #57, !inline_history !3691 ; 2 uses
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %openSubJournal.exit.thread.i, label %subjournalPage.exit

openSubJournal.exit.thread.i:                     ; preds = %openSubJournal.exit.i, %bb.m, %bb.h
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !894
  %i.cy = getelementptr inbounds nuw i8, ptr %.val, i64 60
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !1550
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %.val, i64 200 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !630
  %i.dd = add nsw i64 %i.dc, 4
  %i.de = mul nsw i64 %i.dd, %i.da                ; 2 uses
  %i.df = load ptr, ptr %i.bz, align 8, !tbaa !1549 ; 2 uses
  %i.dg = load i32, ptr %i.c, align 8, !tbaa !901 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.dh = lshr i32 %i.dg, 24
  %i.di = trunc nuw i32 %i.dh to i8
  store i8 %i.di, ptr %i.a, align 1, !tbaa !733
  %i.dj = lshr i32 %i.dg, 16
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !733
  %i.dm = lshr i32 %i.dg, 8
  %i.dn = trunc i32 %i.dm to i8
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.dn, ptr %i.do, align 1, !tbaa !733
  %i.dp = trunc i32 %i.dg to i8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !733
  %i.dr = load ptr, ptr %i.df, align 8, !tbaa !863
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !1006
  %i.du = call i32 %i.dt(ptr noundef nonnull %i.df, ptr noundef nonnull %i.a, i32 noundef 4, i64 noundef %i.de) #57, !inline_history !3692 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  %i.dv = icmp eq i32 %i.du, 0
  br i1 %i.dv, label %bb.n, label %subjournalPage.exit

bb.n:                                             ; preds = %openSubJournal.exit.thread.i
  %i.dw = load ptr, ptr %i.bz, align 8, !tbaa !1549 ; 2 uses
  %i.dx = load i64, ptr %i.db, align 8, !tbaa !630
  %i.dy = trunc i64 %i.dx to i32
  %i.dz = add nsw i64 %i.de, 4
  %i.ea = load ptr, ptr %i.dw, align 8, !tbaa !863
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1006
  %i.ed = call i32 %i.ec(ptr noundef nonnull %i.dw, ptr noundef %i.cx, i32 noundef %i.dy, i64 noundef %i.dz) #57, !inline_history !3693 ; 2 uses
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %..thread25.i_crit_edge, label %subjournalPage.exit

..thread25.i_crit_edge:                           ; preds = %bb.n
  %.pre = load i32, ptr %i.c, align 8, !tbaa !901
  %.pre26 = load i32, ptr %i.d, align 8, !tbaa !992
  br label %.thread25.i

.thread25.i:                                      ; preds = %..thread25.i_crit_edge, %subjRequiresPage.exit
  %i.ef = phi i32 [ %.pre26, %..thread25.i_crit_edge ], [ %i.e, %subjRequiresPage.exit ] ; 2 uses
  %i.eg = phi i32 [ %.pre, %..thread25.i_crit_edge ], [ %.val2, %subjRequiresPage.exit ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val, i64 60 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !1550
  %i.ej = add i32 %i.ei, 1
  store i32 %i.ej, ptr %i.eh, align 4, !tbaa !1550
  %i.ek = icmp sgt i32 %i.ef, 0
  br i1 %i.ek, label %.lr.ph.i.i5, label %subjournalPage.exit

.lr.ph.i.i5:                                      ; preds = %.thread25.i, %bb.p
  %i.el = phi i32 [ %i.eu, %bb.p ], [ %i.ef, %.thread25.i ]
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.p ], [ 0, %.thread25.i ] ; 2 uses
  %.013.i.i = phi i32 [ %.1.i.i, %bb.p ], [ 0, %.thread25.i ] ; 2 uses
  %i.em = load ptr, ptr %i.g, align 8, !tbaa !1546
  %i.en = getelementptr inbounds nuw [56 x i8], ptr %i.em, i64 %indvars.iv.i.i ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !1567
  %.not.i22.i = icmp ugt i32 %i.eg, %i.ep
  br i1 %.not.i22.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i5
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !1548
end_hunk_0
begin_hunk_1_@defragmentPage:bb.a
bb.aa:                                            ; preds = %bb.y
  %i.eq = lshr i32 %i.em, 8
  %i.er = trunc i32 %i.eq to i8
  store i8 %i.er, ptr %gep, align 1, !tbaa !733
  %i.es = trunc i32 %i.em to i8
  store i8 %i.es, ptr %i.ec, align 1, !tbaa !733
  %i.et = zext nneg i32 %i.em to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.et
  %i.ev = zext i16 %i.ek to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eu, ptr align 1 %i.ej, i64 %i.ev, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.w, !llvm.loop !4335

.loopexit:                                        ; preds = %bb.aa, %.thread200
  %.6 = phi i32 [ %i.q, %.thread200 ], [ %i.em, %bb.aa ]
  store i8 0, ptr %i.s, align 1, !tbaa !733
  br label %.loopexit218

.loopexit218:                                     ; preds = %bb.u, %bb.s, %.loopexit
  %.7 = phi i32 [ %.6, %.loopexit ], [ %i.cm, %bb.s ], [ %i.cm, %bb.u ] ; 3 uses
  %i.ew = load i8, ptr %i.s, align 1, !tbaa !733
  %i.ex = zext i8 %i.ew to i32
  %i.ey = sub i32 %.7, %i.m                       ; 2 uses
  %i.ez = add i32 %i.ey, %i.ex
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !1491
  %.not195 = icmp eq i32 %i.ez, %i.fb
  br i1 %.not195, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.loopexit218
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 74947, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread204

bb.ac:                                            ; preds = %.loopexit218
  %i.fc = lshr i32 %.7, 8
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !733
  %i.ff = trunc i32 %.7 to i8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  store i8 %i.ff, ptr %i.fg, align 1, !tbaa !733
  %i.fh = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store i8 0, ptr %i.fh, align 1, !tbaa !733
  %i.fi = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 0, ptr %i.fi, align 1, !tbaa !733
  %i.fj = zext nneg i32 %i.m to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.fj
  %i.fl = sext i32 %i.ey to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.fk, i8 0, i64 %i.fl, i1 false)
  br label %.thread204

.thread204:                                       ; preds = %bb.z, %bb.x, %bb.r, %bb.o, %bb.m, %bb.j, %bb.e, %.thread, %bb.ac, %bb.ab
  %.7180 = phi i32 [ 11, %.thread ], [ 11, %bb.r ], [ 11, %bb.ab ], [ 0, %bb.ac ], [ 11, %bb.e ], [ 11, %bb.j ], [ 11, %bb.m ], [ 11, %bb.o ], [ 11, %bb.x ], [ 11, %bb.z ]
  ret i32 %.7180
}

; Function Attrs: nounwind uwtable
define internal fastcc void @copyNodeContent(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !570
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1066 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !989  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !989  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.j = load i8, ptr %i.i, align 1, !tbaa !1067
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !1065
  %i.m = icmp eq i32 %i.l, 1
  %i.n = select i1 %i.m, i64 100, i64 0
  %i.o = zext i8 %i.j to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.r = load i8, ptr %i.q, align 1, !tbaa !733
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 6
  %i.v = load i8, ptr %i.u, align 1, !tbaa !733
  %i.w = zext i8 %i.v to i32
  %i.x = or disjoint i32 %i.t, %i.w               ; 2 uses
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1061
  %i.ad = sub i32 %i.ac, %i.x
  %i.ae = zext i32 %i.ad to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.aa, i64 %i.ae, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.n
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !1498
  %i.ai = zext i16 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !1501
  %i.al = zext i16 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 1
  %i.an = add nuw nsw i64 %i.am, %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.p, i64 %i.an, i1 false)
  store i8 0, ptr %1, align 8, !tbaa !1502
  %i.ao = tail call fastcc i32 @btreeInitPage(ptr noundef nonnull %1) ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.aq = tail call fastcc i32 @btreeComputeFreeSpace(ptr noundef nonnull %1) ; 2 uses
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !1055
  %.not32 = icmp eq i8 %i.as, 0
  br i1 %.not32, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = tail call fastcc i32 @setChildPtrmaps(ptr noundef nonnull %1)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b, %bb.e
  %.035.sink = phi i32 [ %i.at, %bb.e ], [ %i.aq, %bb.c ], [ %i.ao, %bb.b ]
  store i32 %.035.sink, ptr %2, align 4, !tbaa !570
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 12) i32 @rebuildPage(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1, i32 noundef range(i32 1, -2147483648) %2, ptr nofree noundef captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !1067
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !989  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1066 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1061 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1118
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !622
  %i.m = getelementptr i8, ptr %i.l, i64 280
  %.val = load ptr, ptr %i.m, align 8, !tbaa !1520 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 5 ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !733
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 %i.q, 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 6 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.r, %i.u               ; 2 uses
  %i.w = icmp ugt i32 %i.v, %i.i
  %spec.store.select = select i1 %i.w, i32 0, i32 %i.v ; 2 uses
  %i.x = zext nneg i32 %spec.store.select to i64  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.x ; 2 uses
  %i.aa = sub i32 %i.i, %spec.store.select
  %i.ab = zext i32 %i.aa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.z, i64 %i.ab, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !570
  %.not = icmp sgt i32 %i.ae, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !4336

bb.c:                                             ; preds = %bb.b
  %i.af = sext i32 %i.i to i64
  %i.ag = getelementptr inbounds i8, ptr %i.e, i64 %i.af ; 3 uses
  %i.ah = add nsw i32 %2, %1
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = ptrtoint ptr %i.e to i64                ; 2 uses
  %i.an = sext i32 %1 to i64
  %i.ao = sext i32 %i.ah to i64
  br label %.outer

.outer:                                           ; preds = %bb.n, %bb.c
  %indvars.iv144.ph = phi i64 [ %indvars.iv.next145, %bb.n ], [ %i.an, %bb.c ]
  %.0103.ph = phi ptr [ %i.bn, %bb.n ], [ %i.k, %bb.c ]
  %.0101.ph = phi ptr [ %i.bg, %bb.n ], [ %i.ag, %bb.c ]
  %.199.ph = phi i32 [ %i.br, %bb.n ], [ %i.ai, %bb.c ] ; 2 uses
  %.pn = phi i64 [ %5, %bb.n ], [ %indvars.iv, %bb.c ]
  %.097.ph.in = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.pn
  %.097.ph = load ptr, ptr %.097.ph.in, align 8, !tbaa !741 ; 2 uses
  %4 = zext nneg i32 %.199.ph to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %4
  br label %bb.d

bb.d:                                             ; preds = %.outer, %bb.m
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %bb.m ], [ %indvars.iv144.ph, %.outer ] ; 3 uses
  %.0103 = phi ptr [ %i.bn, %bb.m ], [ %.0103.ph, %.outer ] ; 3 uses
  %.0101 = phi ptr [ %i.bg, %bb.m ], [ %.0101.ph, %.outer ]
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !1859
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %indvars.iv144
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !741 ; 6 uses
  %i.at = load ptr, ptr %i.al, align 8, !tbaa !1860
  %i.au = getelementptr inbounds [2 x i8], ptr %i.at, i64 %indvars.iv144
  %i.av = load i16, ptr %i.au, align 2, !tbaa !783
  %i.aw = ptrtoint ptr %i.as to i64
  %.not120 = icmp uge ptr %i.as, %i.z
  %i.ax = icmp ult ptr %i.as, %i.ag
  %or.cond = select i1 %.not120, i1 %i.ax, i1 false
  %i.ay = zext i16 %i.av to i64                   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.ay ; 2 uses
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ba = icmp ugt ptr %i.az, %i.ag
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 80904, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.bb = sub i64 %i.aw, %i.am
  %i.bc = getelementptr inbounds i8, ptr %.val, i64 %i.bb
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.bd = icmp ugt ptr %i.az, %.097.ph
  %i.be = icmp ult ptr %i.as, %.097.ph
  %or.cond123 = and i1 %i.be, %i.bd
  br i1 %or.cond123, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 80909, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.j:                                             ; preds = %bb.h, %bb.g
  %.096 = phi ptr [ %i.as, %bb.h ], [ %i.bc, %bb.g ]
  %i.bf = sub nsw i64 0, %i.ay
  %i.bg = getelementptr inbounds i8, ptr %.0101, i64 %i.bf ; 5 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.am                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 8
  %i.bk = trunc i64 %i.bj to i8                   ; 2 uses
  store i8 %i.bk, ptr %.0103, align 1, !tbaa !733
  %i.bl = trunc i64 %i.bi to i8                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.0103, i64 1
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !733
  %i.bn = getelementptr inbounds nuw i8, ptr %.0103, i64 2 ; 3 uses
  %i.bo = icmp ult ptr %i.bg, %i.bn
  br i1 %i.bo, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @sqlite3_log(i32 noundef 11, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.114, i32 noundef 80915, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str.44, i64 20)), !inline_history !177
  br label %.thread

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %.096, i64 %i.ay, i1 false)
  %indvars.iv.next145 = add nsw i64 %indvars.iv144, 1 ; 4 uses
  %.not121 = icmp slt i64 %indvars.iv.next145, %i.ao
  br i1 %.not121, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bp = load i32, ptr %i.ap, align 4, !tbaa !570
  %i.bq = sext i32 %i.bp to i64
  %.not122 = icmp slt i64 %indvars.iv.next145, %i.bq
  br i1 %.not122, label %bb.d, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.br = add nuw nsw i32 %.199.ph, 1             ; 2 uses
  %5 = zext nneg i32 %i.br to i64
  br label %.outer

bb.o:                                             ; preds = %bb.l
  %i.bs = trunc i32 %2 to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i16 %i.bs, ptr %i.bt, align 8, !tbaa !1501
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i8 0, ptr %i.bu, align 4, !tbaa !1500
  %i.bv = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.bv, align 1, !tbaa !733
  %i.bw = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i8 0, ptr %i.bw, align 1, !tbaa !733
  %i.bx = load i16, ptr %i.bt, align 8, !tbaa !1501
  %i.by = lshr i16 %i.bx, 8
  %i.bz = trunc nuw i16 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !733
  %i.cb = load i16, ptr %i.bt, align 8, !tbaa !1501
  %i.cc = trunc i16 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !733
  store i8 %i.bk, ptr %i.o, align 1, !tbaa !733
  store i8 %i.bl, ptr %i.s, align 1, !tbaa !733
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 7
  store i8 0, ptr %i.ce, align 1, !tbaa !733
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.k, %bb.f, %bb.o
  %.2109 = phi i32 [ 0, %bb.o ], [ 11, %bb.f ], [ 11, %bb.k ], [ 11, %bb.i ]
  ret i32 %.2109
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @insertCell(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !1500
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = add i32 %3, 2                            ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1491
  %i.h = icmp sgt i32 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not63 = icmp eq ptr %4, null
  br i1 %.not63, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %2, i64 %i.i, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.054 = phi ptr [ %4, %bb.d ], [ %2, %bb.c ]    ; 5 uses
  %i.j = lshr i32 %5, 24
  %i.k = trunc nuw i32 %i.j to i8
  store i8 %i.k, ptr %.054, align 1, !tbaa !733
  %i.l = lshr i32 %5, 16
  %i.m = trunc i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %.054, i64 1
  store i8 %i.m, ptr %i.n, align 1, !tbaa !733
  %i.o = lshr i32 %5, 8
  %i.p = trunc i32 %i.o to i8
  %i.q = getelementptr inbounds nuw i8, ptr %.054, i64 2
  store i8 %i.p, ptr %i.q, align 1, !tbaa !733
  %i.r = trunc i32 %5 to i8
  %i.s = getelementptr inbounds nuw i8, ptr %.054, i64 3
  store i8 %i.r, ptr %i.s, align 1, !tbaa !733
  %i.t = load i8, ptr %i.c, align 4, !tbaa !1500  ; 2 uses
  %i.u = add i8 %i.t, 1
  store i8 %i.u, ptr %i.c, align 4, !tbaa !1500
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.w = zext i8 %i.t to i64                      ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.054, ptr %i.x, align 8, !tbaa !741
  %i.y = trunc i32 %1 to i16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.w
  store i16 %i.y, ptr %i.aa, align 2, !tbaa !783
  br label %.thread92

bb.f:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1010 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !896 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 52
  %i.ag = load i16, ptr %i.af, align 4, !tbaa !895
  %i.ah = and i16 %i.ag, 4
  %.not.i64 = icmp eq i16 %i.ah, 0
  br i1 %.not.i64, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1002
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !901
  %.not13.i = icmp ult i32 %i.aj, %i.al
  br i1 %.not13.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 128
  %i.an = load i32, ptr %i.am, align 8, !tbaa !992
  %.not15.i = icmp eq i32 %i.an, 0
  br i1 %.not15.i, label %sqlite3PagerWrite.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call fastcc i32 @subjournalPageIfRequired(ptr noundef nonnull %i.ac), !inline_history !1003
  br label %sqlite3PagerWrite.exit

bb.j:                                             ; preds = %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !1004 ; 2 uses
  %.not14.i = icmp eq i32 %i.aq, 0
  br i1 %.not14.i, label %bb.k, label %.thread89

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !1005
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 200
  %i.au = load i64, ptr %i.at, align 8, !tbaa !630
  %i.av = trunc i64 %i.au to i32
  %i.aw = icmp ugt i32 %i.as, %i.av
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call fastcc i32 @pagerWriteLargeSector(ptr noundef nonnull %i.ac), !inline_history !1003
  br label %sqlite3PagerWrite.exit

bb.m:                                             ; preds = %bb.k
  %i.ay = tail call fastcc i32 @pager_write(ptr noundef nonnull %i.ac), !inline_history !1003
  br label %sqlite3PagerWrite.exit

sqlite3PagerWrite.exit:                           ; preds = %bb.i, %bb.l, %bb.m
  %.0.i = phi i32 [ %i.ao, %bb.i ], [ %i.ay, %bb.m ], [ %i.ax, %bb.l ] ; 2 uses
  %.not59 = icmp eq i32 %.0.i, 0
  br i1 %.not59, label %sqlite3PagerWrite.exit.thread, label %.thread89

sqlite3PagerWrite.exit.thread:                    ; preds = %bb.h, %sqlite3PagerWrite.exit
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !989 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !1067
  %i.bd = zext i8 %i.bc to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  store i32 0, ptr %i.a, align 4, !tbaa !570
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !1498
  %i.bg = zext i16 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bi = load i16, ptr %i.bh, align 8, !tbaa !1501
  %i.bj = zext i16 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 1
  %i.bl = add nuw nsw i32 %i.bk, %i.bg            ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bd ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 5 ; 3 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !733
  %i.bp = zext i8 %i.bo to i32
  %i.bq = shl nuw nsw i32 %i.bp, 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 6 ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !733
  %i.bt = zext i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.bq, %i.bt            ; 4 uses
  %i.bv = icmp samesign ugt i32 %i.bl, %i.bu
  br i1 %i.bv, label %bb.n, label %bb.p

bb.n:                                             ; preds = %sqlite3PagerWrite.exit.thread
  %i.bw = icmp eq i32 %i.bu, 0
  br i1 %i.bw, label %bb.o, label %allocateSpace.exit.thread.sink.split

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !1066
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 56
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !1061
  %i.cb = icmp eq i32 %i.ca, 65536
  br i1 %i.cb, label %bb.q, label %allocateSpace.exit.thread.sink.split

bb.p:                                             ; preds = %sqlite3PagerWrite.exit.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !1066
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !1061
  %i.cg = icmp sgt i32 %i.bu, %i.cf
  br i1 %i.cg, label %allocateSpace.exit.thread.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.051.i = phi i32 [ %i.bu, %bb.p ], [ 65536, %bb.o ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !733
  %.not.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
end_hunk_1
begin_hunk_2_@sqlite3AddPrimaryKey:bb.a

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.837), !inline_history !304
  br label %makeColumnPartOfPrimaryKey.exit

bb.g:                                             ; preds = %bb.d
  %i.v = load i32, ptr %1, align 8, !tbaa !570    ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph, label %makeColumnPartOfPrimaryKey.exit.thread

.lr.ph:                                           ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 54
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %wide.trip.count = zext nneg i32 %i.v to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %makeColumnPartOfPrimaryKey.exit78
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %makeColumnPartOfPrimaryKey.exit78 ] ; 2 uses
  %.062111 = phi i32 [ -1, %.lr.ph ], [ %.1, %makeColumnPartOfPrimaryKey.exit78 ] ; 2 uses
  %.063110 = phi ptr [ null, %.lr.ph ], [ %.164, %makeColumnPartOfPrimaryKey.exit78 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %indvars.iv
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.h
  %.06.i.in = phi ptr [ %i.af, %.lr.ph.i ], [ %i.ab, %bb.h ]
  %.06.i = load ptr, ptr %.06.i.in, align 8, !tbaa !792, !nonnull !1255, !noundef !1255 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !795
  %i.ae = and i32 %i.ad, 8192
  %.not4.i = icmp eq i32 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %.06.i, i64 16 ; 2 uses
  br i1 %.not4.i, label %sqlite3ExprSkipCollate.exit, label %.lr.ph.i

sqlite3ExprSkipCollate.exit:                      ; preds = %.lr.ph.i
  %i.ag = load i8, ptr %.06.i, align 8, !tbaa !1828 ; 2 uses
  switch i8 %i.ag, label %sqlite3StringToId.exit [
    i8 118, label %.sink.split.i
    i8 114, label %bb.i
  ]

bb.i:                                             ; preds = %sqlite3ExprSkipCollate.exit
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !796 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !1828
  %i.aj = icmp eq i8 %i.ai, 118
  br i1 %i.aj, label %.sink.split.i, label %makeColumnPartOfPrimaryKey.exit78

.sink.split.i:                                    ; preds = %bb.i, %sqlite3ExprSkipCollate.exit
  %.sink.i = phi ptr [ %.06.i, %sqlite3ExprSkipCollate.exit ], [ %i.ah, %bb.i ]
  store i8 60, ptr %.sink.i, align 8, !tbaa !1828
  %.pr.pre = load i8, ptr %.06.i, align 8, !tbaa !1828
  br label %sqlite3StringToId.exit

sqlite3StringToId.exit:                           ; preds = %.sink.split.i, %sqlite3ExprSkipCollate.exit
  %i.ak = phi i8 [ %i.ag, %sqlite3ExprSkipCollate.exit ], [ %.pr.pre, %.sink.split.i ]
  %i.al = icmp eq i8 %i.ak, 60
  br i1 %i.al, label %bb.j, label %makeColumnPartOfPrimaryKey.exit78

bb.j:                                             ; preds = %sqlite3StringToId.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !733 ; 5 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %sqlite3StrIHash.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.j
  %i.ap = load i8, ptr %i.an, align 1, !tbaa !733 ; 2 uses
  %.not10.i.i = icmp eq i8 %i.ap, 0
  br i1 %.not10.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.aq = phi i8 [ %i.aw, %.lr.ph.i.i ], [ %i.ap, %.preheader.i.i ]
  %.012.i.i = phi i8 [ %i.au, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.0611.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %i.an, %.preheader.i.i ]
  %i.ar = zext i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !733
  %i.au = add i8 %i.at, %.012.i.i                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0611.i.i, i64 1 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !733 ; 2 uses
  %.not.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i, !llvm.loop !94

sqlite3StrIHash.exit.i:                           ; preds = %.lr.ph.i.i, %.preheader.i.i, %bb.j
  %.07.i.i = phi i8 [ 0, %bb.j ], [ 0, %.preheader.i.i ], [ %i.au, %.lr.ph.i.i ] ; 3 uses
  %i.ax = load ptr, ptr %i.y, align 8, !tbaa !1150 ; 3 uses
  %i.ay = load i16, ptr %i.z, align 2, !tbaa !1151
  %i.az = and i8 %.07.i.i, 15
  %i.ba = zext nneg i8 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !733 ; 2 uses
  %i.bd = zext i8 %i.bc to i32
  %i.be = zext i8 %i.bc to i64
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 11
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !1153
  %i.bi = icmp eq i8 %i.bh, %.07.i.i
  br i1 %i.bi, label %bb.k, label %sqlite3StrICmp.exit.i

bb.k:                                             ; preds = %sqlite3StrIHash.exit.i
  %i.bj = load ptr, ptr %i.bf, align 8, !tbaa !1154
  br label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.k
  %.013.i.i = phi ptr [ %i.bj, %bb.k ], [ %i.bu, %bb.o ] ; 2 uses
  %.012.i24.i = phi ptr [ %i.an, %bb.k ], [ %i.bv, %bb.o ] ; 2 uses
  %i.bk = load i8, ptr %.013.i.i, align 1, !tbaa !733 ; 3 uses
  %i.bl = load i8, ptr %.012.i24.i, align 1, !tbaa !733 ; 2 uses
  %i.bm = icmp eq i8 %i.bk, %i.bl
  br i1 %i.bm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bn = icmp eq i8 %i.bk, 0
  br i1 %i.bn, label %sqlite3ColumnIndex.exit.thread, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bo = zext i8 %i.bk to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !733
  %i.br = zext i8 %i.bl to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !733
  %.not.i25.i = icmp eq i8 %i.bq, %i.bt
  br i1 %.not.i25.i, label %bb.o, label %sqlite3StrICmp.exit.i

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %.012.i24.i, i64 1
  br label %bb.l

sqlite3StrICmp.exit.i:                            ; preds = %bb.n, %sqlite3StrIHash.exit.i
  %i.bw = tail call i16 @llvm.smax.i16(i16 %i.ay, i16 1)
  %wide.trip.count.i = zext nneg i16 %i.bw to i64
  br label %bb.p

bb.p:                                             ; preds = %sqlite3StrICmp.exit30.i, %sqlite3StrICmp.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sqlite3StrICmp.exit30.i ], [ 0, %sqlite3StrICmp.exit.i ] ; 3 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %indvars.iv.i ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 11
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !1153
  %i.ca = icmp eq i8 %i.bz, %.07.i.i
  br i1 %i.ca, label %bb.q, label %sqlite3StrICmp.exit30.i

bb.q:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !1154
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.q
  %.013.i26.i = phi ptr [ %i.cb, %bb.q ], [ %i.cm, %bb.u ] ; 2 uses
  %.012.i27.i = phi ptr [ %i.an, %bb.q ], [ %i.cn, %bb.u ] ; 2 uses
  %i.cc = load i8, ptr %.013.i26.i, align 1, !tbaa !733 ; 3 uses
  %i.cd = load i8, ptr %.012.i27.i, align 1, !tbaa !733 ; 2 uses
  %i.ce = icmp eq i8 %i.cc, %i.cd
  br i1 %i.ce, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cf = icmp eq i8 %i.cc, 0
  br i1 %i.cf, label %sqlite3ColumnIndex.exit.a, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cg = zext i8 %i.cc to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !733
  %i.cj = zext i8 %i.cd to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !733
  %.not.i28.i = icmp eq i8 %i.ci, %i.cl
  br i1 %.not.i28.i, label %bb.u, label %sqlite3StrICmp.exit30.i

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %.013.i26.i, i64 1
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i27.i, i64 1
  br label %bb.r

sqlite3StrICmp.exit30.i:                          ; preds = %bb.t, %bb.p
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %makeColumnPartOfPrimaryKey.exit78, label %bb.p

sqlite3ColumnIndex.exit.a:                        ; preds = %bb.s
  %i.co = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3ColumnIndex.exit.thread

sqlite3ColumnIndex.exit.thread:                   ; preds = %bb.m, %sqlite3ColumnIndex.exit.a
  %.022.i96 = phi i32 [ %i.co, %sqlite3ColumnIndex.exit.a ], [ %i.bd, %bb.m ] ; 3 uses
  %i.cp = zext nneg i32 %.022.i96 to i64
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.cp ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 14 ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !1365 ; 2 uses
  %i.ct = or i16 %i.cs, 1
  store i16 %i.ct, ptr %i.cr, align 2, !tbaa !1365
  %i.cu = and i16 %i.cs, 96
  %.not.i77 = icmp eq i16 %i.cu, 0
  br i1 %.not.i77, label %makeColumnPartOfPrimaryKey.exit78, label %bb.v

bb.v:                                             ; preds = %sqlite3ColumnIndex.exit.thread
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.837), !inline_history !304
  br label %makeColumnPartOfPrimaryKey.exit78

makeColumnPartOfPrimaryKey.exit78:                ; preds = %sqlite3StrICmp.exit30.i, %bb.i, %bb.v, %sqlite3ColumnIndex.exit.thread, %sqlite3StringToId.exit
  %.164 = phi ptr [ %i.cq, %bb.v ], [ %.063110, %sqlite3StringToId.exit ], [ %i.cq, %sqlite3ColumnIndex.exit.thread ], [ %.063110, %bb.i ], [ %.063110, %sqlite3StrICmp.exit30.i ] ; 2 uses
  %.1 = phi i32 [ %.022.i96, %bb.v ], [ %.062111, %sqlite3StringToId.exit ], [ %.022.i96, %sqlite3ColumnIndex.exit.thread ], [ %.062111, %bb.i ], [ -1, %sqlite3StrICmp.exit30.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %makeColumnPartOfPrimaryKey.exit.loopexit, label %bb.h, !llvm.loop !4585

makeColumnPartOfPrimaryKey.exit.loopexit:         ; preds = %makeColumnPartOfPrimaryKey.exit78
  %i.cv = icmp eq i32 %i.v, 1
  br label %makeColumnPartOfPrimaryKey.exit

makeColumnPartOfPrimaryKey.exit:                  ; preds = %makeColumnPartOfPrimaryKey.exit.loopexit, %bb.f, %bb.e
  %.265 = phi ptr [ %i.q, %bb.f ], [ %i.q, %bb.e ], [ %.164, %makeColumnPartOfPrimaryKey.exit.loopexit ] ; 2 uses
  %.2 = phi i32 [ %i.m, %bb.f ], [ %i.m, %bb.e ], [ %.1, %makeColumnPartOfPrimaryKey.exit.loopexit ]
  %.060 = phi i1 [ true, %bb.f ], [ true, %bb.e ], [ %i.cv, %makeColumnPartOfPrimaryKey.exit.loopexit ]
  %i.cw = icmp ne ptr %.265, null
  %or.cond = select i1 %.060, i1 %i.cw, i1 false
  br i1 %or.cond, label %bb.w, label %makeColumnPartOfPrimaryKey.exit.thread

bb.w:                                             ; preds = %makeColumnPartOfPrimaryKey.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %.265, i64 8
  %i.cy = load i8, ptr %i.cx, align 8
  %.mask = and i8 %i.cy, -16
  %i.cz = icmp eq i8 %.mask, 64
  %i.da = icmp ne i32 %4, 1
  %or.cond3 = and i1 %i.da, %i.cz
  br i1 %or.cond3, label %bb.x, label %makeColumnPartOfPrimaryKey.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !1249
  %i.dd = icmp ugt i8 %i.dc, 1
  %or.cond5 = and i1 %i.i, %i.dd
  br i1 %or.cond5, label %bb.y, label %sqlite3RenameTokenRemap.exit

bb.y:                                             ; preds = %bb.x
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !1998 ; 2 uses
  %.not5.i79 = icmp eq ptr %i.df, null
  br i1 %.not5.i79, label %sqlite3ExprSkipCollate.exit85, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %bb.y, %bb.z
  %.06.i81 = phi ptr [ %i.dk, %bb.z ], [ %i.df, %bb.y ] ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.06.i81, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !795
  %i.di = and i32 %i.dh, 8192
  %.not4.i82 = icmp eq i32 %i.di, 0
  br i1 %.not4.i82, label %sqlite3ExprSkipCollate.exit85, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i80
  %i.dj = getelementptr inbounds nuw i8, ptr %.06.i81, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !796 ; 2 uses
  %.not.i83 = icmp eq ptr %i.dk, null
  br i1 %.not.i83, label %sqlite3ExprSkipCollate.exit85, label %.lr.ph.i80, !llvm.loop !305

sqlite3ExprSkipCollate.exit85:                    ; preds = %.lr.ph.i80, %bb.z, %bb.y
  %.0.lcssa.i84 = phi ptr [ null, %bb.y ], [ %.06.i81, %.lr.ph.i80 ], [ null, %bb.z ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 416
  %.08.i = load ptr, ptr %i.dm, align 8, !tbaa !2012 ; 2 uses
  %.not9.i = icmp eq ptr %.08.i, null
  br i1 %.not9.i, label %sqlite3RenameTokenRemap.exit, label %.lr.ph.i86

.lr.ph.i86:                                       ; preds = %sqlite3ExprSkipCollate.exit85, %bb.ab
  %.010.i = phi ptr [ %.0.i, %bb.ab ], [ %.08.i, %sqlite3ExprSkipCollate.exit85 ] ; 3 uses
  %i.dn = load ptr, ptr %.010.i, align 8, !tbaa !2014
  %i.do = icmp eq ptr %i.dn, %.0.lcssa.i84
  br i1 %i.do, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph.i86
  store ptr %i.dl, ptr %.010.i, align 8, !tbaa !2014
  br label %sqlite3RenameTokenRemap.exit

bb.ab:                                            ; preds = %.lr.ph.i86
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %.0.i = load ptr, ptr %i.dp, align 8, !tbaa !2012 ; 2 uses
  %.not.i87 = icmp eq ptr %.0.i, null
  br i1 %.not.i87, label %sqlite3RenameTokenRemap.exit, label %.lr.ph.i86, !llvm.loop !286

sqlite3RenameTokenRemap.exit:                     ; preds = %bb.ab, %bb.aa, %sqlite3ExprSkipCollate.exit85, %bb.x
  %i.dq = trunc i32 %.2 to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i16 %i.dq, ptr %i.dr, align 4, !tbaa !1190
  %i.ds = trunc i32 %2 to i8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 62
  store i8 %i.ds, ptr %i.dt, align 2, !tbaa !2073
  %i.du = shl nsw i32 %3, 3
  %i.dv = load i32, ptr %i.d, align 8, !tbaa !1084
  %i.dw = or i32 %i.dv, %i.du
  store i32 %i.dw, ptr %i.d, align 8, !tbaa !1084
  br i1 %i.i, label %.preheader.i, label %sqlite3ExprListDelete.exit

.preheader.i:                                     ; preds = %sqlite3RenameTokenRemap.exit
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !2010
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 306
  store i8 %i.dy, ptr %i.dz, align 2, !tbaa !2074
  %i.ea = load i32, ptr %1, align 8, !tbaa !570   ; 2 uses
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph.preheader.i, label %.split.thread

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %wide.trip.count.i89 = zext nneg i32 %i.ea to i64
  br label %.lr.ph.i90

bb.ac:                                            ; preds = %.lr.ph.i90
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i91, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count.i89
  br i1 %exitcond.not.i93, label %.split.thread, label %.lr.ph.i90, !llvm.loop !306

.lr.ph.i90:                                       ; preds = %bb.ac, %.lr.ph.preheader.i
  %indvars.iv.i91 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i92, %bb.ac ] ; 2 uses
  %i.ec = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv.i91 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 25
  %i.ee = load i16, ptr %i.ed, align 1
  %i.ef = and i16 %i.ee, 32
  %.not15.i = icmp eq i16 %i.ef, 0
  br i1 %.not15.i, label %bb.ac, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i90
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !2010 ; 2 uses
  %i.ei = icmp eq i8 %i.eh, 0
  %i.ej = icmp eq i8 %i.eh, 3
  %i.ek = or i1 %i.ei, %i.ej
  %i.el = select i1 %i.ek, ptr @.str.839, ptr @.str.840
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.838, ptr noundef nonnull %i.el), !inline_history !2075
  br label %.split.thread

makeColumnPartOfPrimaryKey.exit.thread:           ; preds = %bb.g, %bb.w, %makeColumnPartOfPrimaryKey.exit
  %.not75 = icmp eq i32 %3, 0
  br i1 %.not75, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %makeColumnPartOfPrimaryKey.exit.thread
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef %0, ptr noundef nonnull @.str.836)
  br label %.split

bb.af:                                            ; preds = %makeColumnPartOfPrimaryKey.exit.thread
  tail call fastcc void @sqlite3CreateIndex(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %1, i32 noundef %2, ptr noundef null, ptr noundef null, i32 noundef %4, i32 noundef 0, i8 noundef zeroext 2)
  br label %sqlite3ExprListDelete.exit

.split:                                           ; preds = %bb.ae, %bb.a, %bb.c
  %.not.i94 = icmp eq ptr %1, null
  br i1 %.not.i94, label %sqlite3ExprListDelete.exit, label %.split.thread

.split.thread:                                    ; preds = %bb.ac, %bb.ad, %.preheader.i, %.split
  %i.em = load ptr, ptr %0, align 8, !tbaa !981
  tail call fastcc void @exprListDeleteNN(ptr noundef %i.em, ptr noundef %1), !inline_history !99
  br label %sqlite3ExprListDelete.exit

sqlite3ExprListDelete.exit:                       ; preds = %sqlite3RenameTokenRemap.exit, %bb.af, %.split, %.split.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3CreateIndex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr nofree noundef readnone captures(address_is_null) %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i8 noundef zeroext range(i8 0, 3) %10) unnamed_addr #0 {
bb.a:
  %11 = alloca %struct.Select, align 8            ; 5 uses
  %12 = alloca %struct.DbFixer, align 8           ; 16 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %13 = alloca %struct.Token, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #57
  %i.b = load ptr, ptr %0, align 8, !tbaa !981    ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  store ptr null, ptr %i.a, align 8, !tbaa !741
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !780
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %.critedge.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 8 uses
  %i.f = load i8, ptr %i.e, align 4, !tbaa !1249
  %i.g = icmp eq i8 %i.f, 1
  %i.h = icmp ne i8 %10, 2                        ; 2 uses
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %.critedge.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 197 ; 7 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !908
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 5 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !1014
  %i.n = and i32 %i.m, 1
  %.not.i557 = icmp eq i32 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !605
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !642  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 113
  %i.t = load i8, ptr %i.s, align 1, !tbaa !1179
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  store i8 %i.t, ptr %i.u, align 4, !tbaa !1127
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 114
  %i.w = load i16, ptr %i.v, align 2, !tbaa !1013
  %i.x = and i16 %i.w, 1
  %.not23.i = icmp eq i16 %i.x, 0
  br i1 %.not23.i, label %bb.e, label %bb.f
end_hunk_2
begin_hunk_3_@sqlite3AddReturning:bb.a
  store ptr %1, ptr %i.ah, align 8, !tbaa !2185
  %i.ai = tail call fastcc ptr @sqlite3ParserAddCleanup(ptr noundef nonnull %0, ptr noundef nonnull @sqlite3DeleteReturning, ptr noundef nonnull %.0.i.i47) ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 103 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !918
  %.not41 = icmp eq i8 %i.ak, 0
  br i1 %.not41, label %bb.p, label %sqlite3ExprListDelete.exit

bb.p:                                             ; preds = %sqlite3DbMallocRaw.exit.i.thread
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 188 ; 3 uses
  %i.am = tail call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 40, ptr noundef nonnull %i.al, ptr noundef nonnull @.str.1037, ptr noundef nonnull %0) ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 16 ; 4 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !4705
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 32
  store i8 -105, ptr %i.ao, align 8, !tbaa !4706
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 33
  store i8 2, ptr %i.ap, align 1, !tbaa !4707
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 34
  store i8 1, ptr %i.aq, align 2, !tbaa !4708
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !605
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !642 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 56
  store ptr %i.au, ptr %i.av, align 8, !tbaa !4709
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 64
  store ptr %i.au, ptr %i.aw, align 8, !tbaa !4710
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 88 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 72
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !4711
  store i8 -105, ptr %i.ax, align 8, !tbaa !4712
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 96
  store ptr %i.an, ptr %i.az, align 8, !tbaa !4713
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i47, i64 128
  store ptr %1, ptr %i.ba, align 8, !tbaa !4714
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.bc = tail call fastcc ptr @sqlite3HashInsert(ptr noundef nonnull %i.bb, ptr noundef nonnull %i.al, ptr noundef nonnull %i.an)
  %i.bd = icmp eq ptr %i.bc, %i.an
  br i1 %i.bd, label %bb.q, label %sqlite3ExprListDelete.exit

bb.q:                                             ; preds = %bb.p
  %i.be = load i8, ptr %i.aj, align 1, !tbaa !918
  %i.bf = icmp eq i8 %i.be, 0
  br i1 %i.bf, label %bb.r, label %sqlite3ExprListDelete.exit

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !919
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %bb.s, label %sqlite3ExprListDelete.exit

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.aj, align 1, !tbaa !918
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 220
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !920
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store atomic volatile i32 1, ptr %i.bm monotonic, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 408 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !921
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 8, !tbaa !921
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 412
  store i16 0, ptr %i.bq, align 4, !tbaa !922
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 344 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !768 ; 2 uses
  %.not.i43 = icmp eq ptr %i.bs, null
  br i1 %.not.i43, label %sqlite3ExprListDelete.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.bs, ptr noundef nonnull @.str.125), !inline_history !48
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !768 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  store i32 7, ptr %i.bu, align 8, !tbaa !779
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 224
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !923 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3ExprListDelete.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.v, %.lr.ph.i
  %.020.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.018.i, %bb.v ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !780
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !780
  %i.by = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.by, align 8, !tbaa !779
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 224
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !923 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i, null
  br i1 %.not16.i, label %sqlite3ExprListDelete.exit, label %.lr.ph.i, !llvm.loop !36

sqlite3ExprListDelete.exit:                       ; preds = %.lr.ph.i, %bb.v, %bb.u, %bb.r, %bb.q, %bb.o, %sqlite3DbMallocRaw.exit.i.thread51, %bb.p, %sqlite3DbMallocRaw.exit.i.thread
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3SrcListAppendList(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !570    ; 2 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !570
  %i.c = tail call fastcc ptr @sqlite3SrcListEnlarge(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.b, i32 noundef %i.a) ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %sqlite3DbFree.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !981
  tail call fastcc void @sqlite3SrcListDelete(ptr noundef %i.e, ptr noundef nonnull %2)
  br label %bb.d

sqlite3DbFree.exit:                               ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [72 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i32, ptr %2, align 8, !tbaa !570
  %i.k = sext i32 %i.j to i64
  %i.l = mul nsw i64 %i.k, 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.i, i64 %i.l, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.n = load i8, ptr %i.m, align 8, !tbaa !2009
  %i.o = and i8 %i.n, 64
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !2009
  %i.r = or i8 %i.q, %i.o
  store i8 %i.r, ptr %i.p, align 8, !tbaa !2009
  %i.s = load ptr, ptr %0, align 8, !tbaa !981
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.s, ptr noundef nonnull %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %sqlite3DbFree.exit, %bb.a
  %.1 = phi ptr [ %1, %bb.a ], [ %1, %bb.c ], [ %i.c, %sqlite3DbFree.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3Update(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.Walker, align 8             ; 13 uses
  %7 = alloca %struct.Walker, align 8             ; 7 uses
  %8 = alloca %struct.Walker, align 8             ; 18 uses
  %9 = alloca %struct.Walker, align 8             ; 11 uses
  %10 = alloca %struct.NameContext, align 8       ; 11 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #57
  store i32 0, ptr %i.b, align 4, !tbaa !570
  %i.e = load ptr, ptr %0, align 8, !tbaa !981    ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !780
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %sqlite3DbFree.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.j = load i8, ptr %i.i, align 1
  %i.k = and i8 %i.j, 1
  %.not.i924 = icmp eq i8 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  br i1 %.not.i924, label %sqlite3LocateTableItem.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !733  ; 2 uses
  %.not.i.i925 = icmp eq ptr %i.m, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !605 ; 2 uses
  br i1 %.not.i.i925, label %sqlite3SchemaToIndex.exit.i, label %.preheader.i.i926

.preheader.i.i926:                                ; preds = %bb.c, %.preheader.i.i926
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i926 ], [ 0, %bb.c ] ; 3 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.pre, i64 %indvars.iv.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !642
  %i.q = icmp eq ptr %i.p, %i.m
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %i.q, label %sqlite3SchemaToIndex.exit.i, label %.preheader.i.i926

sqlite3SchemaToIndex.exit.i:                      ; preds = %.preheader.i.i926, %bb.c
  %.1.i.i = phi i64 [ -32768, %bb.c ], [ %indvars.iv.i.i, %.preheader.i.i926 ]
  %i.r = getelementptr inbounds [32 x i8], ptr %.pre, i64 %.1.i.i
  br label %sqlite3LocateTableItem.exit

sqlite3LocateTableItem.exit:                      ; preds = %bb.b, %sqlite3SchemaToIndex.exit.i
  %.0.in.i927 = phi ptr [ %i.r, %sqlite3SchemaToIndex.exit.i ], [ %i.l, %bb.b ]
  %.0.i928 = load ptr, ptr %.0.in.i927, align 8, !tbaa !733
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !806
  %i.t = tail call fastcc ptr @sqlite3LocateTable(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.s, ptr noundef %.0.i928), !inline_history !2179 ; 54 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1825 ; 3 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %sqlite3DeleteTable.exit, label %bb.d

bb.d:                                             ; preds = %sqlite3LocateTableItem.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !981    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 768
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !639
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 44 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !654
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !654
  %.not5.i923 = icmp eq i32 %i.ac, 0
  br i1 %.not5.i923, label %bb.f, label %sqlite3DeleteTable.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call fastcc void @deleteTable(ptr noundef nonnull %i.w, ptr noundef nonnull %i.v), !inline_history !321
  br label %sqlite3DeleteTable.exit

sqlite3DeleteTable.exit:                          ; preds = %bb.f, %bb.e, %sqlite3LocateTableItem.exit
  store ptr %i.t, ptr %i.u, align 8, !tbaa !1825
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 33 ; 3 uses
  %i.ae = load i16, ptr %i.ad, align 1
  %i.af = or i16 %i.ae, 1024
  store i16 %i.af, ptr %i.ad, align 1
  %.not17.i = icmp eq ptr %i.t, null
  br i1 %.not17.i, label %sqlite3DbFree.exit, label %bb.g

bb.g:                                             ; preds = %sqlite3DeleteTable.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 44 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !654
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !654
  %i.aj = load i16, ptr %i.ad, align 1
  %i.ak = and i16 %i.aj, 2
  %.not18.i = icmp eq i16 %i.ak, 0
  br i1 %.not18.i, label %sqlite3SrcListLookup.exit.thread10, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !733 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.019.i913 = load ptr, ptr %i.an, align 8, !tbaa !1157 ; 2 uses
  %.not20.i = icmp eq ptr %.019.i913, null
  br i1 %.not20.i, label %sqlite3IndexedByLookup.exit, label %.lr.ph.i914

.lr.ph.i914:                                      ; preds = %bb.h, %sqlite3StrICmp.exit.i919
  %.021.i915 = phi ptr [ %.0.i920, %sqlite3StrICmp.exit.i919 ], [ %.019.i913, %bb.h ] ; 3 uses
  %i.ao = load ptr, ptr %.021.i915, align 8, !tbaa !1979
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %.lr.ph.i914
  %.013.i.i916 = phi ptr [ %i.ao, %.lr.ph.i914 ], [ %i.az, %bb.l ] ; 2 uses
  %.012.i.i917 = phi ptr [ %i.am, %.lr.ph.i914 ], [ %i.ba, %bb.l ] ; 2 uses
  %i.ap = load i8, ptr %.013.i.i916, align 1, !tbaa !733 ; 3 uses
  %i.aq = load i8, ptr %.012.i.i917, align 1, !tbaa !733 ; 2 uses
  %i.ar = icmp eq i8 %i.ap, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = icmp eq i8 %i.ap, 0
  br i1 %i.as, label %sqlite3SrcListLookup.exit, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.at = zext i8 %i.ap to i64
  %i.au = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !733
  %i.aw = zext i8 %i.aq to i64
  %i.ax = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !733
  %.not.i.i918 = icmp eq i8 %i.av, %i.ay
  br i1 %.not.i.i918, label %bb.l, label %sqlite3StrICmp.exit.i919

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %.013.i.i916, i64 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.012.i.i917, i64 1
  br label %bb.i

sqlite3StrICmp.exit.i919:                         ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %.021.i915, i64 40
  %.0.i920 = load ptr, ptr %i.bb, align 8, !tbaa !1157 ; 2 uses
  %.not.i921 = icmp eq ptr %.0.i920, null
  br i1 %.not.i921, label %sqlite3IndexedByLookup.exit, label %.lr.ph.i914, !llvm.loop !322

sqlite3IndexedByLookup.exit:                      ; preds = %sqlite3StrICmp.exit.i919, %bb.h
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.800, ptr noundef %i.am, i32 noundef 0), !inline_history !323
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.bd = load i16, ptr %i.bc, align 1
  %i.be = or i16 %i.bd, 256
  store i16 %i.be, ptr %i.bc, align 1
  br label %sqlite3DbFree.exit

sqlite3SrcListLookup.exit:                        ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %.021.i915, ptr %i.bf, align 8, !tbaa !733
  br label %sqlite3SrcListLookup.exit.thread10

sqlite3SrcListLookup.exit.thread10:               ; preds = %sqlite3SrcListLookup.exit, %bb.g
  %i.bg = load ptr, ptr %0, align 8, !tbaa !981   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !1148 ; 2 uses
  %.not.i864 = icmp eq ptr %i.bi, null
  br i1 %.not.i864, label %sqlite3SchemaToIndex.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3SrcListLookup.exit.thread10
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !605
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.preheader.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.m ], [ 0, %.preheader.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [32 x i8], ptr %i.bk, i64 %indvars.iv.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !642
  %i.bo = icmp eq ptr %i.bn, %i.bi
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.bo, label %.loopexit.loopexit.i, label %bb.m

.loopexit.loopexit.i:                             ; preds = %bb.m
  %i.bp = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3SchemaToIndex.exit

sqlite3SchemaToIndex.exit:                        ; preds = %sqlite3SrcListLookup.exit.thread10, %.loopexit.loopexit.i
  %.1.i = phi i32 [ -32768, %sqlite3SrcListLookup.exit.thread10 ], [ %i.bp, %.loopexit.loopexit.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !2180
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %sqlite3SchemaToIndex.exit
  %i.bt = getelementptr i8, ptr %i.bg, i64 32
  %.val.i = load ptr, ptr %i.bt, align 8, !tbaa !605
  %i.bu = getelementptr i8, ptr %.val.i, i64 56
  %.val.val.i = load ptr, ptr %i.bu, align 8, !tbaa !642 ; 2 uses
  %i.bv = icmp eq ptr %.val.val.i, null
  br i1 %i.bv, label %tempTriggersExist.exit.thread.i, label %tempTriggersExist.exit.i

tempTriggersExist.exit.i:                         ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !2181
  %.not15.i = icmp eq ptr %i.bx, null
  br i1 %.not15.i, label %tempTriggersExist.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %tempTriggersExist.exit.i, %sqlite3SchemaToIndex.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.bz = load i16, ptr %i.by, align 1
  %i.ca = and i16 %i.bz, 1
  %.not11.i = icmp eq i16 %i.ca, 0
  br i1 %.not11.i, label %bb.p, label %tempTriggersExist.exit.thread.i

tempTriggersExist.exit.thread.i:                  ; preds = %bb.o, %tempTriggersExist.exit.i, %bb.n
  store i32 0, ptr %i.a, align 4, !tbaa !570
  br label %sqlite3TriggersExist.exit

bb.p:                                             ; preds = %bb.o
  %i.cb = call fastcc ptr @triggersReallyExist(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.t, i32 noundef 130, ptr noundef readonly %2, ptr noundef nonnull %i.a), !inline_history !324
  br label %sqlite3TriggersExist.exit

sqlite3TriggersExist.exit:                        ; preds = %tempTriggersExist.exit.thread.i, %bb.p
  %.0.i865 = phi ptr [ %i.cb, %bb.p ], [ null, %tempTriggersExist.exit.thread.i ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 63 ; 6 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !1147 ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 2                     ; 8 uses
  %i.cf = load i32, ptr %1, align 8, !tbaa !570
  %i.cg = icmp sgt i32 %i.cf, 1
  br i1 %i.cg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %sqlite3TriggersExist.exit
  %i.ch = load i32, ptr %2, align 8, !tbaa !570
  br label %bb.r

bb.r:                                             ; preds = %sqlite3TriggersExist.exit, %bb.q
  %i.ci = phi i32 [ %i.ch, %bb.q ], [ 0, %sqlite3TriggersExist.exit ] ; 7 uses
  %i.cj = icmp eq i8 %i.cd, 1
  br i1 %i.cj, label %sqlite3ViewGetColumnNames.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 54
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !1151
  %i.cm = icmp sgt i16 %i.cl, 0
  br i1 %i.cm, label %sqlite3ViewGetColumnNames.exit.thread, label %sqlite3ViewGetColumnNames.exit

sqlite3ViewGetColumnNames.exit:                   ; preds = %bb.r, %bb.s
  %i.cn = call fastcc i32 @viewGetColumnNames(ptr noundef nonnull %0, ptr noundef nonnull %i.t), !inline_history !310
  %.not798 = icmp eq i32 %i.cn, 0
  br i1 %.not798, label %sqlite3ViewGetColumnNames.exit.thread, label %sqlite3DbFree.exit

sqlite3ViewGetColumnNames.exit.thread:            ; preds = %bb.s, %sqlite3ViewGetColumnNames.exit
  %i.co = call fastcc i32 @sqlite3IsReadOnly(ptr noundef nonnull %0, ptr noundef %i.t, ptr noundef %.0.i865)
  %.not799 = icmp eq i32 %i.co, 0
  br i1 %.not799, label %bb.t, label %sqlite3DbFree.exit

bb.t:                                             ; preds = %sqlite3ViewGetColumnNames.exit.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !1176 ; 10 uses
  %i.cr = add nsw i32 %i.cq, 1                    ; 3 uses
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !1176
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 8 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !1084
  %i.cu = and i32 %i.ct, 128
  %i.cv = icmp eq i32 %i.cu, 0
  %.phi.trans.insert300 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.0758170.pre = load ptr, ptr %.phi.trans.insert300, align 8, !tbaa !1157 ; 4 uses
  br i1 %i.cv, label %sqlite3PrimaryKeyIndex.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not7.i = icmp eq ptr %.0758170.pre, null
  br i1 %.not7.i, label %sqlite3PrimaryKeyIndex.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.v
  %.08.i = phi ptr [ %.0.i867, %bb.v ], [ %.0758170.pre, %bb.u ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 99
  %i.cx = load i16, ptr %i.cw, align 1
  %i.cy = and i16 %i.cx, 3
  %.not5.i = icmp eq i16 %i.cy, 2
  br i1 %.not5.i, label %sqlite3PrimaryKeyIndex.exit, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  %.0.i867 = load ptr, ptr %i.cz, align 8, !tbaa !1157 ; 2 uses
  %.not.i868 = icmp eq ptr %.0.i867, null
  br i1 %.not.i868, label %sqlite3PrimaryKeyIndex.exit, label %.lr.ph.i, !llvm.loop !266

sqlite3PrimaryKeyIndex.exit:                      ; preds = %bb.v, %.lr.ph.i, %bb.t
  %i.da = phi ptr [ null, %bb.t ], [ null, %bb.v ], [ %.08.i, %.lr.ph.i ] ; 3 uses
  %.not800171 = icmp eq ptr %.0758170.pre, null
  br i1 %.not800171, label %sqlite3PrimaryKeyIndex.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %sqlite3PrimaryKeyIndex.exit, %.lr.ph
  %i.db = phi i32 [ %i.dd, %.lr.ph ], [ %i.cr, %sqlite3PrimaryKeyIndex.exit ] ; 2 uses
  %.0758174 = phi ptr [ %.0758, %.lr.ph ], [ %.0758170.pre, %sqlite3PrimaryKeyIndex.exit ] ; 2 uses
  %.0752173 = phi i32 [ %spec.select241.a, %.lr.ph ], [ %i.cq, %sqlite3PrimaryKeyIndex.exit ]
  %.0757172 = phi i32 [ %i.df, %.lr.ph ], [ 0, %sqlite3PrimaryKeyIndex.exit ]
  %i.dc = icmp eq ptr %i.da, %.0758174
  %spec.select241.a = select i1 %i.dc, i32 %i.db, i32 %.0752173 ; 2 uses
  %i.dd = add nsw i32 %i.db, 1                    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0758174, i64 40
  %i.df = add nuw nsw i32 %.0757172, 1            ; 2 uses
  %.0758 = load ptr, ptr %i.de, align 8, !tbaa !1157 ; 2 uses
  %.not800 = icmp eq ptr %.0758, null
  br i1 %.not800, label %._crit_edge, label %.lr.ph, !llvm.loop !4715

._crit_edge:                                      ; preds = %.lr.ph
  store i32 %i.dd, ptr %i.cp, align 8, !tbaa !1176
  br label %sqlite3PrimaryKeyIndex.exit.thread

sqlite3PrimaryKeyIndex.exit.thread:               ; preds = %bb.u, %._crit_edge, %sqlite3PrimaryKeyIndex.exit
  %i.dg = phi ptr [ %i.da, %._crit_edge ], [ %i.da, %sqlite3PrimaryKeyIndex.exit ], [ null, %bb.u ] ; 14 uses
  %.0757.lcssa = phi i32 [ %i.df, %._crit_edge ], [ 0, %sqlite3PrimaryKeyIndex.exit ], [ 0, %bb.u ] ; 3 uses
  %.0752.lcssa = phi i32 [ %spec.select241.a, %._crit_edge ], [ %i.cq, %sqlite3PrimaryKeyIndex.exit ], [ %i.cq, %bb.u ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.not801 = icmp eq ptr %5, null                 ; 6 uses
  br i1 %.not801, label %bb.x, label %bb.w

bb.w:                                             ; preds = %sqlite3PrimaryKeyIndex.exit.thread
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 76
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !2186
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !2187
  store i32 %i.cq, ptr %i.cp, align 8, !tbaa !1176
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %sqlite3PrimaryKeyIndex.exit.thread
  %.2754 = phi i32 [ %i.dj, %bb.w ], [ %.0752.lcssa, %sqlite3PrimaryKeyIndex.exit.thread ] ; 7 uses
  %.0751 = phi i32 [ %i.dl, %bb.w ], [ %i.cr, %sqlite3PrimaryKeyIndex.exit.thread ] ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 %.2754, ptr %i.dm, align 4, !tbaa !2056
  %i.dn = getelementptr inbounds nuw i8, ptr %i.t, i64 54 ; 17 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !1151
  %i.dp = sext i16 %i.do to i32
  %i.dq = add i32 %.0757.lcssa, 1                 ; 2 uses
  %i.dr = add i32 %i.dq, %i.dp
  %i.ds = sext i32 %i.dr to i64
  %i.dt = shl nsw i64 %i.ds, 2
  %i.du = zext nneg i32 %.0757.lcssa to i64       ; 2 uses
  %i.dv = add nuw nsw i64 %i.du, 2
  %i.dw = add nsw i64 %i.dv, %i.dt
  %i.dx = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.e, i64 noundef %i.dw) ; 24 uses
  %i.dy = icmp eq ptr %i.dx, null
  br i1 %i.dy, label %sqlite3DbFree.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dz = load i16, ptr %i.dn, align 2, !tbaa !1151
  %i.ea = sext i16 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.ea ; 7 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %i.du
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4 ; 9 uses
  %i.ee = zext nneg i32 %i.dq to i64              ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ed, i8 1, i64 %i.ee, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee
  store i8 0, ptr %i.ef, align 1, !tbaa !733
  %i.eg = load i16, ptr %i.dn, align 2, !tbaa !1151 ; 2 uses
  %i.eh = icmp sgt i16 %i.eg, 0
  br i1 %i.eh, label %.lr.ph179.preheader, label %._crit_edge180

.lr.ph179.preheader:                              ; preds = %bb.y
  %i.ei = zext nneg i16 %i.eg to i64
  %i.ej = shl nuw nsw i64 %i.ei, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dx, i8 -1, i64 %i.ej, i1 false), !tbaa !570
  br label %._crit_edge180

._crit_edge180:                                   ; preds = %.lr.ph179.preheader, %bb.y
  %i.ek = getelementptr inbounds nuw i8, ptr %10, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, i8 0, i64 32, i1 false)
  store ptr %0, ptr %10, align 8, !tbaa !2059
  %i.el = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.el, align 8, !tbaa !2060
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %5, ptr %i.em, align 8, !tbaa !733
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 5 uses
  store i32 512, ptr %i.en, align 8, !tbaa !2061
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !1196 ; 2 uses
  %.not.i869 = icmp eq ptr %i.ep, null
  br i1 %.not.i869, label %bb.z, label %.preheader127

bb.z:                                             ; preds = %._crit_edge180
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !2049
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.aa, label %sqlite3GetVdbe.exit

bb.aa:                                            ; preds = %bb.z
  %i.et = load ptr, ptr %0, align 8, !tbaa !981
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !1374
  %i.ew = and i32 %i.ev, 8
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ab, label %sqlite3GetVdbe.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 1
  %i.fa = or i16 %i.ez, 128
  store i16 %i.fa, ptr %i.ey, align 1
  br label %sqlite3GetVdbe.exit

sqlite3GetVdbe.exit:                              ; preds = %bb.z, %bb.aa, %bb.ab
  %i.fb = call fastcc ptr @sqlite3VdbeCreate(ptr noundef nonnull %0), !inline_history !2050 ; 2 uses
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %sqlite3AuthContextPop.exit.thread111, label %.preheader127

.preheader127:                                    ; preds = %._crit_edge180, %sqlite3GetVdbe.exit
  %.0.i870382 = phi ptr [ %i.fb, %sqlite3GetVdbe.exit ], [ %i.ep, %._crit_edge180 ] ; 58 uses
  %i.fd = load i32, ptr %2, align 8, !tbaa !570
  %i.fe = icmp sgt i32 %i.fd, 0
  br i1 %i.fe, label %.lr.ph186, label %._crit_edge187.thread

.lr.ph186:                                        ; preds = %.preheader127
  %i.ff = icmp eq i32 %i.ci, 0
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.fl = getelementptr inbounds nuw i8, ptr %10, i64 36
  %i.fm = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.fn = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.fo = icmp eq ptr %i.dg, null                 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.t, i64 52
  %i.fq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.fr = sext i32 %.1.i to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph186, %sqlite3AuthCheck.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next, %sqlite3AuthCheck.exit.thread ] ; 6 uses
  %.0738185 = phi i32 [ -1, %.lr.ph186 ], [ %.274033, %sqlite3AuthCheck.exit.thread ] ; 2 uses
  %.0741184 = phi ptr [ null, %.lr.ph186 ], [ %.274332, %sqlite3AuthCheck.exit.thread ] ; 2 uses
  %.0744183 = phi i8 [ 0, %.lr.ph186 ], [ %.274631, %sqlite3AuthCheck.exit.thread ] ; 2 uses
  %.0747182 = phi i8 [ 0, %.lr.ph186 ], [ %.274930, %sqlite3AuthCheck.exit.thread ] ; 3 uses
  br i1 %i.ff, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %indvars.iv
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1998 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #57
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %sqlite3ResolveExprNames.exit.thread17, label %bb.ae

sqlite3ResolveExprNames.exit.thread17:            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #57
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fx = load i32, ptr %i.en, align 8, !tbaa !2061 ; 3 uses
  %i.fy = and i32 %i.fx, -134254609
  store i32 %i.fy, ptr %i.en, align 8, !tbaa !2061
  %i.fz = load ptr, ptr %10, align 8, !tbaa !2059 ; 4 uses
  store ptr %i.fz, ptr %9, align 8, !tbaa !2018
  store ptr @resolveExprStep, ptr %i.fh, align 8, !tbaa !2019
  %i.ga = and i32 %i.fx, 524288
  %.not.i871 = icmp eq i32 %i.ga, 0
  %i.gb = select i1 %.not.i871, ptr @resolveSelectStep, ptr null
  store ptr %i.gb, ptr %i.fi, align 8, !tbaa !2020
  store ptr null, ptr %i.fj, align 8, !tbaa !2109
  store ptr %10, ptr %i.fk, align 8, !tbaa !733
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 40 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !2008
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fz, i64 316 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !2133
  %i.gg = add nsw i32 %i.gf, %i.gd                ; 2 uses
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !2133
  %i.gh = load ptr, ptr %i.fz, align 8, !tbaa !981
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 148
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !570 ; 2 uses
  %i.gk = icmp sgt i32 %i.gg, %i.gj
  br i1 %i.gk, label %sqlite3ExprCheckHeight.exit.i, label %bb.af

sqlite3ExprCheckHeight.exit.i:                    ; preds = %bb.ae
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.fz, ptr noundef nonnull @.str.819, i32 noundef %i.gj), !inline_history !326
  br label %sqlite3ResolveExprNames.exit.thread

bb.af:                                            ; preds = %bb.ae
  %i.gl = and i32 %i.fx, 134254608
  %i.gm = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %9, ptr noundef nonnull %i.fv), !inline_history !2182 ; 0 uses
  %i.gn = load i32, ptr %i.gc, align 8, !tbaa !2008
  %i.go = load ptr, ptr %9, align 8, !tbaa !2018  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 316 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !2133
  %i.gr = sub nsw i32 %i.gq, %i.gn
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !2133
  %i.gs = load i32, ptr %i.en, align 8, !tbaa !2061 ; 2 uses
  %i.gt = and i32 %i.gs, 32784
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !795
  %i.gw = or i32 %i.gv, %i.gt
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !795
  %i.gx = or i32 %i.gs, %i.gl
  store i32 %i.gx, ptr %i.en, align 8, !tbaa !2061
  %i.gy = load i32, ptr %i.fl, align 4, !tbaa !2183
  %i.gz = icmp sgt i32 %i.gy, 0
  br i1 %i.gz, label %sqlite3ResolveExprNames.exit.thread, label %sqlite3ResolveExprNames.exit

sqlite3ResolveExprNames.exit.thread:              ; preds = %bb.af, %sqlite3ExprCheckHeight.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #57
  br label %sqlite3AuthContextPop.exit.thread111

sqlite3ResolveExprNames.exit:                     ; preds = %bb.af
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 52
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !780
  %i.hc = icmp slt i32 %i.hb, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #57
  br i1 %i.hc, label %bb.ag, label %sqlite3AuthContextPop.exit.thread111

bb.ag:                                            ; preds = %sqlite3ResolveExprNames.exit.thread17, %sqlite3ResolveExprNames.exit, %bb.ac
  %i.hd = getelementptr inbounds nuw [24 x i8], ptr %i.fg, i64 %indvars.iv ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1999 ; 9 uses
  %i.hg = icmp eq ptr %i.hf, null
  br i1 %i.hg, label %sqlite3StrIHash.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ag
  %i.hh = load i8, ptr %i.hf, align 1, !tbaa !733 ; 2 uses
  %.not10.i.i = icmp eq i8 %i.hh, 0
  br i1 %.not10.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.hi = phi i8 [ %i.ho, %.lr.ph.i.i ], [ %i.hh, %.preheader.i.i ]
  %.012.i.i = phi i8 [ %i.hm, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.0611.i.i = phi ptr [ %i.hn, %.lr.ph.i.i ], [ %i.hf, %.preheader.i.i ]
  %i.hj = zext i8 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hj
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !733
  %i.hm = add i8 %i.hl, %.012.i.i                 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.0611.i.i, i64 1 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !733 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ho, 0
  br i1 %.not.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i, !llvm.loop !94

sqlite3StrIHash.exit.i:                           ; preds = %.lr.ph.i.i, %.preheader.i.i, %bb.ag
  %.07.i.i = phi i8 [ 0, %bb.ag ], [ 0, %.preheader.i.i ], [ %i.hm, %.lr.ph.i.i ] ; 3 uses
  %i.hp = load ptr, ptr %i.fm, align 8, !tbaa !1150 ; 5 uses
  %i.hq = load i16, ptr %i.dn, align 2, !tbaa !1151
  %i.hr = and i8 %.07.i.i, 15
  %i.hs = zext nneg i8 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !733 ; 2 uses
  %i.hv = zext i8 %i.hu to i32
  %i.hw = zext i8 %i.hu to i64
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 11
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !1153
  %i.ia = icmp eq i8 %i.hz, %.07.i.i
  br i1 %i.ia, label %bb.ah, label %sqlite3StrICmp.exit.i

bb.ah:                                            ; preds = %sqlite3StrIHash.exit.i
  %i.ib = load ptr, ptr %i.hx, align 8, !tbaa !1154
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %bb.ah
  %.013.i.i = phi ptr [ %i.ib, %bb.ah ], [ %i.im, %bb.al ] ; 2 uses
  %.012.i24.i = phi ptr [ %i.hf, %bb.ah ], [ %i.in, %bb.al ] ; 2 uses
  %i.ic = load i8, ptr %.013.i.i, align 1, !tbaa !733 ; 3 uses
  %i.id = load i8, ptr %.012.i24.i, align 1, !tbaa !733 ; 2 uses
  %i.ie = icmp eq i8 %i.ic, %i.id
  br i1 %i.ie, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.if = icmp eq i8 %i.ic, 0
  br i1 %i.if, label %sqlite3ColumnIndex.exit.thread, label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.ig = zext i8 %i.ic to i64
  %i.ih = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !733
  %i.ij = zext i8 %i.id to i64
  %i.ik = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !733
  %.not.i25.i = icmp eq i8 %i.ii, %i.il
  br i1 %.not.i25.i, label %bb.al, label %sqlite3StrICmp.exit.i

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.im = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.in = getelementptr inbounds nuw i8, ptr %.012.i24.i, i64 1
  br label %bb.ai

sqlite3StrICmp.exit.i:                            ; preds = %bb.ak, %sqlite3StrIHash.exit.i
  %i.io = call i16 @llvm.smax.i16(i16 %i.hq, i16 1)
  %wide.trip.count.i = zext nneg i16 %i.io to i64
  br label %bb.am

bb.am:                                            ; preds = %sqlite3StrICmp.exit30.i, %sqlite3StrICmp.exit.i
  %indvars.iv.i873 = phi i64 [ %indvars.iv.next.i874, %sqlite3StrICmp.exit30.i ], [ 0, %sqlite3StrICmp.exit.i ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %indvars.iv.i873 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 11
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !1153
  %i.is = icmp eq i8 %i.ir, %.07.i.i
  br i1 %i.is, label %bb.an, label %sqlite3StrICmp.exit30.i

bb.an:                                            ; preds = %bb.am
  %i.it = load ptr, ptr %i.ip, align 8, !tbaa !1154
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %bb.an
  %.013.i26.i = phi ptr [ %i.it, %bb.an ], [ %i.je, %bb.ar ] ; 2 uses
  %.012.i27.i = phi ptr [ %i.hf, %bb.an ], [ %i.jf, %bb.ar ] ; 2 uses
  %i.iu = load i8, ptr %.013.i26.i, align 1, !tbaa !733 ; 3 uses
  %i.iv = load i8, ptr %.012.i27.i, align 1, !tbaa !733 ; 2 uses
  %i.iw = icmp eq i8 %i.iu, %i.iv
  br i1 %i.iw, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ix = icmp eq i8 %i.iu, 0
  br i1 %i.ix, label %sqlite3ColumnIndex.exit.a, label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.iy = zext i8 %i.iu to i64
  %i.iz = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !733
  %i.jb = zext i8 %i.iv to i64
  %i.jc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.jb
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !733
  %.not.i28.i = icmp eq i8 %i.ja, %i.jd
  br i1 %.not.i28.i, label %bb.ar, label %sqlite3StrICmp.exit30.i

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.je = getelementptr inbounds nuw i8, ptr %.013.i26.i, i64 1
  %i.jf = getelementptr inbounds nuw i8, ptr %.012.i27.i, i64 1
  br label %bb.ao

sqlite3StrICmp.exit30.i:                          ; preds = %bb.aq, %bb.am
  %indvars.iv.next.i874 = add nuw nsw i64 %indvars.iv.i873, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i874, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3ColumnIndex.exit.thread22, label %bb.am

sqlite3ColumnIndex.exit.a:                        ; preds = %bb.ap
  %i.jg = trunc nuw nsw i64 %indvars.iv.i873 to i32
  br label %sqlite3ColumnIndex.exit.thread

sqlite3ColumnIndex.exit.thread:                   ; preds = %bb.aj, %sqlite3ColumnIndex.exit.a
  %.022.i21 = phi i32 [ %i.jg, %sqlite3ColumnIndex.exit.a ], [ %i.hv, %bb.aj ] ; 4 uses
  %i.jh = load i16, ptr %i.fp, align 4, !tbaa !1190
  %i.ji = sext i16 %i.jh to i32
  %i.jj = icmp eq i32 %.022.i21, %i.ji
  br i1 %i.jj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %sqlite3ColumnIndex.exit.thread
  %i.jk = load ptr, ptr %i.hd, align 8, !tbaa !1998
  %i.jl = trunc nuw nsw i64 %indvars.iv to i32
  %.pre308 = zext nneg i32 %.022.i21 to i64
  br label %bb.be

bb.at:                                            ; preds = %sqlite3ColumnIndex.exit.thread
  %.phi.trans.insert303.a = zext i32 %.022.i21 to i64 ; 4 uses
  %.phi.trans.insert304.a = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.phi.trans.insert303.a
  %.phi.trans.insert305 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert304.a, i64 14
  %.pre306 = load i16, ptr %.phi.trans.insert305, align 2, !tbaa !1365 ; 2 uses
  %i.jm = and i16 %.pre306, 1
  %.not849 = icmp eq i16 %i.jm, 0
  %or.cond455 = select i1 %i.fo, i1 true, i1 %.not849
  br i1 %or.cond455, label %._crit_edge302, label %bb.be

._crit_edge302:                                   ; preds = %bb.at
  %i.jn = and i16 %.pre306, 96
  %.not850 = icmp eq i16 %i.jn, 0
  br i1 %.not850, label %bb.be, label %bb.au

bb.au:                                            ; preds = %._crit_edge302
  %i.jo = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.phi.trans.insert303.a
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !1154
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1039, ptr noundef %i.jp)
  br label %sqlite3AuthContextPop.exit.thread111

sqlite3ColumnIndex.exit.thread22:                 ; preds = %sqlite3StrICmp.exit30.i
  br i1 %i.fo, label %.preheader125, label %sqlite3IsRowid.exit

.preheader125:                                    ; preds = %sqlite3ColumnIndex.exit.thread22, %bb.ax
  %.013.i.i875 = phi ptr [ %i.ka, %bb.ax ], [ %i.hf, %sqlite3ColumnIndex.exit.thread22 ] ; 2 uses
  %.012.i.i876 = phi ptr [ %i.kb, %bb.ax ], [ @.str.804, %sqlite3ColumnIndex.exit.thread22 ] ; 2 uses
  %i.jq = load i8, ptr %.013.i.i875, align 1, !tbaa !733 ; 3 uses
  %i.jr = load i8, ptr %.012.i.i876, align 1, !tbaa !733 ; 2 uses
  %i.js = icmp eq i8 %i.jq, %i.jr
  br i1 %i.js, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.preheader125
  %i.jt = icmp eq i8 %i.jq, 0
  br i1 %i.jt, label %.thread, label %bb.ax

bb.aw:                                            ; preds = %.preheader125
  %i.ju = zext i8 %i.jq to i64
  %i.jv = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !733
  %i.jx = zext i8 %i.jr to i64
  %i.jy = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !733
  %.not.i.i877 = icmp eq i8 %i.jw, %i.jz
  br i1 %.not.i.i877, label %bb.ax, label %sqlite3StrICmp.exit.i878

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.ka = getelementptr inbounds nuw i8, ptr %.013.i.i875, i64 1
  %i.kb = getelementptr inbounds nuw i8, ptr %.012.i.i876, i64 1
  br label %.preheader125

sqlite3StrICmp.exit.i878:                         ; preds = %bb.aw, %bb.ba
  %.013.i3.i = phi ptr [ %i.km, %bb.ba ], [ %i.hf, %bb.aw ] ; 2 uses
  %.012.i4.i = phi ptr [ %i.kn, %bb.ba ], [ @.str.769, %bb.aw ] ; 2 uses
  %i.kc = load i8, ptr %.013.i3.i, align 1, !tbaa !733 ; 3 uses
  %i.kd = load i8, ptr %.012.i4.i, align 1, !tbaa !733 ; 2 uses
  %i.ke = icmp eq i8 %i.kc, %i.kd
  br i1 %i.ke, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %sqlite3StrICmp.exit.i878
  %i.kf = icmp eq i8 %i.kc, 0
  br i1 %i.kf, label %.thread, label %bb.ba

bb.az:                                            ; preds = %sqlite3StrICmp.exit.i878
  %i.kg = zext i8 %i.kc to i64
  %i.kh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !733
  %i.kj = zext i8 %i.kd to i64
  %i.kk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.kj
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !733
  %.not.i5.i = icmp eq i8 %i.ki, %i.kl
  br i1 %.not.i5.i, label %bb.ba, label %sqlite3StrICmp.exit7.i

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.km = getelementptr inbounds nuw i8, ptr %.013.i3.i, i64 1
  %i.kn = getelementptr inbounds nuw i8, ptr %.012.i4.i, i64 1
  br label %sqlite3StrICmp.exit.i878

sqlite3StrICmp.exit7.i:                           ; preds = %bb.az, %bb.bd
  %.013.i8.i = phi ptr [ %i.ky, %bb.bd ], [ %i.hf, %bb.az ] ; 2 uses
  %.012.i9.i = phi ptr [ %i.kz, %bb.bd ], [ @.str.805, %bb.az ] ; 2 uses
  %i.ko = load i8, ptr %.013.i8.i, align 1, !tbaa !733 ; 3 uses
  %i.kp = load i8, ptr %.012.i9.i, align 1, !tbaa !733 ; 2 uses
  %i.kq = icmp eq i8 %i.ko, %i.kp
  br i1 %i.kq, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %sqlite3StrICmp.exit7.i
  %i.kr = icmp eq i8 %i.ko, 0
  br i1 %i.kr, label %.thread, label %bb.bd

bb.bc:                                            ; preds = %sqlite3StrICmp.exit7.i
  %i.ks = zext i8 %i.ko to i64
  %i.kt = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ks
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !733
  %i.kv = zext i8 %i.kp to i64
  %i.kw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !733
  %.not.i10.i = icmp eq i8 %i.ku, %i.kx
  br i1 %.not.i10.i, label %bb.bd, label %sqlite3IsRowid.exit

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ky = getelementptr inbounds nuw i8, ptr %.013.i8.i, i64 1
  %i.kz = getelementptr inbounds nuw i8, ptr %.012.i9.i, i64 1
  br label %sqlite3StrICmp.exit7.i

.thread:                                          ; preds = %bb.av, %bb.ay, %bb.bb
  %i.la = load ptr, ptr %i.hd, align 8, !tbaa !1998
  %i.lb = trunc nuw nsw i64 %indvars.iv to i32
  br label %bb.bf

sqlite3IsRowid.exit:                              ; preds = %sqlite3ColumnIndex.exit.thread22, %bb.bc
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1040, ptr noundef %i.hf)
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 39 ; 2 uses
  %i.ld = load i16, ptr %i.lc, align 1
  %i.le = or i16 %i.ld, 256
  store i16 %i.le, ptr %i.lc, align 1
  br label %sqlite3AuthContextPop.exit.thread111

bb.be:                                            ; preds = %bb.at, %bb.as, %._crit_edge302
  %.pre-phi309 = phi i64 [ %.pre308, %bb.as ], [ %.phi.trans.insert303.a, %._crit_edge302 ], [ %.phi.trans.insert303.a, %bb.at ] ; 2 uses
  %.1748 = phi i8 [ %.0747182, %bb.as ], [ %.0747182, %._crit_edge302 ], [ 1, %bb.at ]
  %.1745 = phi i8 [ 1, %bb.as ], [ %.0744183, %._crit_edge302 ], [ %.0744183, %bb.at ]
  %.1742 = phi ptr [ %i.jk, %bb.as ], [ %.0741184, %._crit_edge302 ], [ %.0741184, %bb.at ]
  %.1739 = phi i32 [ %i.jl, %bb.as ], [ %.0738185, %._crit_edge302 ], [ %.0738185, %bb.at ]
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %.pre-phi309
  %i.lg = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.lg, ptr %i.lf, align 4, !tbaa !570
  %11 = getelementptr inbounds nuw [16 x i8], ptr %i.hp, i64 %.pre-phi309
  %i.lh = load ptr, ptr %11, align 8, !tbaa !1154
  %12 = sext i32 %.022.i21 to i64
  br label %bb.bf

bb.bf:                                            ; preds = %.thread, %bb.be
  %.274033 = phi i32 [ %.1739, %bb.be ], [ %i.lb, %.thread ] ; 5 uses
  %.274332 = phi ptr [ %.1742, %bb.be ], [ %i.la, %.thread ] ; 5 uses
  %.274631 = phi i8 [ %.1745, %bb.be ], [ 1, %.thread ] ; 4 uses
  %.274930 = phi i8 [ %.1748, %bb.be ], [ %.0747182, %.thread ] ; 6 uses
  %.076729 = phi i64 [ %12, %bb.be ], [ -1, %.thread ]
  %13 = phi ptr [ %i.lh, %bb.be ], [ @.str.769, %.thread ]
  %14 = load ptr, ptr %i.t, align 8, !tbaa !1172
  %i.li = load ptr, ptr %i.fq, align 8, !tbaa !605
  %i.lj = getelementptr inbounds [32 x i8], ptr %i.li, i64 %i.fr
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !875
  %i.ll = load ptr, ptr %0, align 8, !tbaa !981   ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 504
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !1222 ; 2 uses
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %sqlite3AuthCheck.exit.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ll, i64 197
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !908
  %.not.i880 = icmp eq i8 %i.lq, 0
  br i1 %.not.i880, label %bb.bh, label %sqlite3AuthCheck.exit.thread

bb.bh:                                            ; preds = %bb.bg
  %i.lr = load i8, ptr %i.fs, align 4, !tbaa !1249
  %.not22.i = icmp eq i8 %i.lr, 0
  br i1 %.not22.i, label %bb.bi, label %sqlite3AuthCheck.exit.thread

bb.bi:                                            ; preds = %bb.bh
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ll, i64 512
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !1223
  %i.lu = load ptr, ptr %i.ft, align 8, !tbaa !2047
  %i.lv = call i32 %i.ln(ptr noundef %i.lt, i32 noundef 23, ptr noundef %14, ptr noundef %13, ptr noundef %i.lk, ptr noundef %i.lu) #57, !inline_history !2048 ; 3 uses
  %i.lw = icmp eq i32 %i.lv, 1
  br i1 %i.lw, label %sqlite3AuthCheck.exit.thread37, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.lx = and i32 %i.lv, -3
  %or.cond.not.i = icmp eq i32 %i.lx, 0
  br i1 %or.cond.not.i, label %sqlite3AuthCheck.exit, label %sqlite3AuthCheck.exit.thread37

sqlite3AuthCheck.exit.thread37:                   ; preds = %bb.bi, %bb.bj
  %.str.654.sink.i = phi ptr [ @.str.654, %bb.bi ], [ @.str.714, %bb.bj ]
  %.sink.i = phi i32 [ 23, %bb.bi ], [ 1, %bb.bj ]
  call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull %.str.654.sink.i), !inline_history !2048
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sink.i, ptr %i.ly, align 8, !tbaa !779
  br label %sqlite3AuthContextPop.exit.thread111

sqlite3AuthCheck.exit:                            ; preds = %bb.bj
  %cond453 = icmp eq i32 %i.lv, 2
  br i1 %cond453, label %bb.bk, label %sqlite3AuthCheck.exit.thread

bb.bk:                                            ; preds = %sqlite3AuthCheck.exit
  %i.lz = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %.076729
  store i32 -1, ptr %i.lz, align 4, !tbaa !570
  br label %sqlite3AuthCheck.exit.thread

sqlite3AuthCheck.exit.thread:                     ; preds = %sqlite3AuthCheck.exit, %bb.bg, %bb.bh, %bb.bf, %bb.bk
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ma = load i32, ptr %2, align 8, !tbaa !570
  %i.mb = sext i32 %i.ma to i64
  %i.mc = icmp slt i64 %indvars.iv.next, %i.mb
  br i1 %i.mc, label %bb.ac, label %._crit_edge187, !llvm.loop !4716

._crit_edge187:                                   ; preds = %sqlite3AuthCheck.exit.thread
  %i.md = add i8 %.274631, %.274930               ; 4 uses
  %i.me = load i32, ptr %i.cs, align 8, !tbaa !1084
  %i.mf = and i32 %i.me, 96
  %.not802 = icmp eq i32 %i.mf, 0
  br i1 %.not802, label %.loopexit, label %.preheader123

._crit_edge187.thread:                            ; preds = %.preheader127
  %i.mg = load i32, ptr %i.cs, align 8, !tbaa !1084
  %i.mh = and i32 %i.mg, 96
  %.not802394 = icmp eq i32 %i.mh, 0
  br i1 %.not802394, label %.loopexit, label %.preheader123.thread

.preheader123.thread:                             ; preds = %._crit_edge187.thread
  %i.mi = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  %i.mk = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ml = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.mm = getelementptr inbounds nuw i8, ptr %8, i64 36
  br label %.preheader123.split.us.preheader

.preheader123:                                    ; preds = %._crit_edge187
  %i.mn = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.t, i64 80 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 2 uses
  %.not.i883 = icmp eq i8 %.274631, 0
  br i1 %.not.i883, label %.preheader123.split.us.preheader, label %.preheader123.split.preheader

.preheader123.split.preheader:                    ; preds = %.preheader123
  %.pre310.a = load i16, ptr %i.dn, align 2, !tbaa !1151
  br label %.preheader123.split

.preheader123.split.us.preheader:                 ; preds = %.preheader123.thread, %.preheader123
  %i.ms = phi ptr [ %i.mm, %.preheader123.thread ], [ %i.mr, %.preheader123 ]
  %i.mt = phi ptr [ %i.ml, %.preheader123.thread ], [ %i.mq, %.preheader123 ] ; 2 uses
  %i.mu = phi ptr [ %i.mk, %.preheader123.thread ], [ %i.mp, %.preheader123 ] ; 2 uses
  %i.mv = phi ptr [ %i.mj, %.preheader123.thread ], [ %i.mo, %.preheader123 ]
  %i.mw = phi ptr [ %i.mi, %.preheader123.thread ], [ %i.mn, %.preheader123 ]
  %.0747.lcssa395411 = phi i8 [ 0, %.preheader123.thread ], [ %.274930, %.preheader123 ] ; 2 uses
  %.0741.lcssa399409 = phi ptr [ null, %.preheader123.thread ], [ %.274332, %.preheader123 ] ; 2 uses
  %.0738.lcssa401408 = phi i32 [ -1, %.preheader123.thread ], [ %.274033, %.preheader123 ] ; 2 uses
  %i.mx = phi i8 [ 0, %.preheader123.thread ], [ %i.md, %.preheader123 ] ; 2 uses
  %.pre311 = load i16, ptr %i.dn, align 2, !tbaa !1151
  br label %.preheader123.split.us

.preheader123.split.us:                           ; preds = %.preheader123.split.us.preheader, %._crit_edge196.split.us.us
  %i.my = phi i16 [ %.pre311, %.preheader123.split.us.preheader ], [ %i.nz, %._crit_edge196.split.us.us ]
  %i.mz = icmp sgt i16 %i.my, 0
  br i1 %i.mz, label %.lr.ph195.us, label %.loopexit

.lr.ph195.us:                                     ; preds = %.preheader123.split.us, %bb.br
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %bb.br ], [ 0, %.preheader123.split.us ] ; 3 uses
  %.0713193.us.us = phi i32 [ %.1.us.us, %bb.br ], [ 0, %.preheader123.split.us ] ; 4 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv274 ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !570
  %i.nc = icmp sgt i32 %i.nb, -1
  br i1 %i.nc, label %bb.br, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph195.us
  %i.nd = load ptr, ptr %i.mw, align 8, !tbaa !1150
  %i.ne = getelementptr inbounds nuw [16 x i8], ptr %i.nd, i64 %indvars.iv274 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 14
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !1365
  %i.nh = and i16 %i.ng, 96
  %i.ni = icmp eq i16 %i.nh, 0
  br i1 %i.ni, label %bb.br, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nj = getelementptr i8, ptr %i.ne, i64 12
  %.val861.us.us = load i16, ptr %i.nj, align 4, !tbaa !2062 ; 3 uses
  %i.nk = zext i16 %.val861.us.us to i32
  %i.nl = icmp eq i16 %.val861.us.us, 0
  br i1 %i.nl, label %sqlite3ColumnExpr.exit.thread.us.us, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.nm = load i8, ptr %i.cc, align 1, !tbaa !1147
  %i.nn = icmp eq i8 %i.nm, 0
  br i1 %i.nn, label %bb.bo, label %sqlite3ColumnExpr.exit.thread.us.us

bb.bo:                                            ; preds = %bb.bn
  %i.no = load ptr, ptr %i.mv, align 8, !tbaa !733 ; 3 uses
  %i.np = icmp eq ptr %i.no, null
  br i1 %i.np, label %sqlite3ColumnExpr.exit.thread.us.us, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nq = load i32, ptr %i.no, align 8, !tbaa !570
  %i.nr = icmp slt i32 %i.nq, %i.nk
  br i1 %i.nr, label %sqlite3ColumnExpr.exit.thread.us.us, label %sqlite3ColumnExpr.exit.us.us

sqlite3ColumnExpr.exit.us.us:                     ; preds = %bb.bp
  %i.ns = zext i16 %.val861.us.us to i64
  %i.nt = getelementptr [24 x i8], ptr %i.no, i64 %i.ns
  %i.nu = getelementptr i8, ptr %i.nt, i64 -16
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !1998 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  store ptr @checkConstraintExprNode, ptr %i.mu, align 8, !tbaa !2019
  store ptr %i.dx, ptr %i.mt, align 8, !tbaa !733
  %.not.i.i882.us.us = icmp eq ptr %i.nv, null
  br i1 %.not.i.i882.us.us, label %sqlite3ExprReferencesUpdatedColumn.exit.us.us.thread, label %sqlite3ExprReferencesUpdatedColumn.exit.us.us

sqlite3ColumnExpr.exit.thread.us.us:              ; preds = %bb.bp, %bb.bo, %bb.bn, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #57
  store ptr @checkConstraintExprNode, ptr %i.mu, align 8, !tbaa !2019
  store ptr %i.dx, ptr %i.mt, align 8, !tbaa !733
  br label %sqlite3ExprReferencesUpdatedColumn.exit.us.us.thread

sqlite3ExprReferencesUpdatedColumn.exit.us.us.thread: ; preds = %sqlite3ColumnExpr.exit.us.us, %sqlite3ColumnExpr.exit.thread.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #57
  br label %bb.br

sqlite3ExprReferencesUpdatedColumn.exit.us.us:    ; preds = %sqlite3ColumnExpr.exit.us.us
  %i.nw = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %8, ptr noundef nonnull %i.nv) #60, !inline_history !2188 ; 0 uses
  %.pre.pre.i.us.us = load i16, ptr %i.ms, align 4, !tbaa !2017
  %i.nx = and i16 %.pre.pre.i.us.us, -3
  %i.ny = icmp eq i16 %i.nx, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #57
  br i1 %i.ny, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %sqlite3ExprReferencesUpdatedColumn.exit.us.us
  store i32 99999, ptr %i.na, align 4, !tbaa !570
  br label %bb.br

bb.br:                                            ; preds = %sqlite3ExprReferencesUpdatedColumn.exit.us.us.thread, %bb.bq, %sqlite3ExprReferencesUpdatedColumn.exit.us.us, %bb.bl, %.lr.ph195.us
  %.1.us.us = phi i32 [ %.0713193.us.us, %.lr.ph195.us ], [ %.0713193.us.us, %bb.bl ], [ 1, %bb.bq ], [ %.0713193.us.us, %sqlite3ExprReferencesUpdatedColumn.exit.us.us ], [ %.0713193.us.us, %sqlite3ExprReferencesUpdatedColumn.exit.us.us.thread ] ; 2 uses
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.nz = load i16, ptr %i.dn, align 2, !tbaa !1151 ; 2 uses
  %i.oa = sext i16 %i.nz to i64
  %i.ob = icmp slt i64 %indvars.iv.next275, %i.oa
  br i1 %i.ob, label %.lr.ph195.us, label %._crit_edge196.split.us.us, !llvm.loop !4717

._crit_edge196.split.us.us:                       ; preds = %bb.br
  %i.oc = icmp eq i32 %.1.us.us, 0
  br i1 %i.oc, label %.loopexit, label %.preheader123.split.us, !llvm.loop !4718

.preheader123.split:                              ; preds = %.preheader123.split.preheader, %._crit_edge196.split
  %i.od = phi i16 [ %.pre310.a, %.preheader123.split.preheader ], [ %i.pd, %._crit_edge196.split ]
  %i.oe = icmp sgt i16 %i.od, 0
  br i1 %i.oe, label %.lr.ph195, label %.loopexit

.lr.ph195:                                        ; preds = %.preheader123.split, %bb.by
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %bb.by ], [ 0, %.preheader123.split ] ; 3 uses
  %.0713193 = phi i32 [ %.1, %bb.by ], [ 0, %.preheader123.split ] ; 4 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv271 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !570
  %i.oh = icmp sgt i32 %i.og, -1
  br i1 %i.oh, label %bb.by, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph195
  %i.oi = load ptr, ptr %i.mn, align 8, !tbaa !1150
  %i.oj = getelementptr inbounds nuw [16 x i8], ptr %i.oi, i64 %indvars.iv271 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 14
  %i.ol = load i16, ptr %i.ok, align 2, !tbaa !1365
  %i.om = and i16 %i.ol, 96
  %i.on = icmp eq i16 %i.om, 0
  br i1 %i.on, label %bb.by, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.oo = getelementptr i8, ptr %i.oj, i64 12
  %.val861 = load i16, ptr %i.oo, align 4, !tbaa !2062 ; 3 uses
  %i.op = zext i16 %.val861 to i32
  %i.oq = icmp eq i16 %.val861, 0
  br i1 %i.oq, label %sqlite3ColumnExpr.exit.thread, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.or = load i8, ptr %i.cc, align 1, !tbaa !1147
  %i.os = icmp eq i8 %i.or, 0
  br i1 %i.os, label %bb.bv, label %sqlite3ColumnExpr.exit.thread

bb.bv:                                            ; preds = %bb.bu
  %i.ot = load ptr, ptr %i.mo, align 8, !tbaa !733 ; 3 uses
  %i.ou = icmp eq ptr %i.ot, null
  br i1 %i.ou, label %sqlite3ColumnExpr.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ov = load i32, ptr %i.ot, align 8, !tbaa !570
  %i.ow = icmp slt i32 %i.ov, %i.op
  br i1 %i.ow, label %sqlite3ColumnExpr.exit.thread, label %sqlite3ColumnExpr.exit

sqlite3ColumnExpr.exit.thread:                    ; preds = %bb.bt, %bb.bu, %bb.bv, %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #57
  br label %sqlite3ExprReferencesUpdatedColumn.exit.thread

sqlite3ColumnExpr.exit:                           ; preds = %bb.bw
  %i.ox = zext i16 %.val861 to i64
  %i.oy = getelementptr [24 x i8], ptr %i.ot, i64 %i.ox
  %i.oz = getelementptr i8, ptr %i.oy, i64 -16
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !1998 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  store ptr @checkConstraintExprNode, ptr %i.mp, align 8, !tbaa !2019
  store ptr %i.dx, ptr %i.mq, align 8, !tbaa !733
  %.not.i.i882 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i882, label %sqlite3ExprReferencesUpdatedColumn.exit.thread, label %sqlite3ExprReferencesUpdatedColumn.exit

sqlite3ExprReferencesUpdatedColumn.exit.thread:   ; preds = %sqlite3ColumnExpr.exit, %sqlite3ColumnExpr.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #57
  br label %bb.by

sqlite3ExprReferencesUpdatedColumn.exit:          ; preds = %sqlite3ColumnExpr.exit
  %i.pb = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %8, ptr noundef nonnull %i.pa) #60, !inline_history !2188 ; 0 uses
  %.pre.pre.i = load i16, ptr %i.mr, align 4, !tbaa !2017
  %i.pc = icmp eq i16 %.pre.pre.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #57
  br i1 %i.pc, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %sqlite3ExprReferencesUpdatedColumn.exit
  store i32 99999, ptr %i.of, align 4, !tbaa !570
  br label %bb.by

bb.by:                                            ; preds = %sqlite3ExprReferencesUpdatedColumn.exit.thread, %sqlite3ExprReferencesUpdatedColumn.exit, %bb.bx, %bb.bs, %.lr.ph195
  %.1 = phi i32 [ %.0713193, %.lr.ph195 ], [ %.0713193, %bb.bs ], [ 1, %bb.bx ], [ %.0713193, %sqlite3ExprReferencesUpdatedColumn.exit ], [ %.0713193, %sqlite3ExprReferencesUpdatedColumn.exit.thread ] ; 2 uses
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %i.pd = load i16, ptr %i.dn, align 2, !tbaa !1151 ; 2 uses
  %i.pe = sext i16 %i.pd to i64
  %i.pf = icmp slt i64 %indvars.iv.next272, %i.pe
  br i1 %i.pf, label %.lr.ph195, label %._crit_edge196.split, !llvm.loop !4717

._crit_edge196.split:                             ; preds = %bb.by
  %i.pg = icmp eq i32 %.1, 0
  br i1 %i.pg, label %.loopexit, label %.preheader123.split, !llvm.loop !4718

.loopexit:                                        ; preds = %.preheader123.split, %._crit_edge196.split, %.preheader123.split.us, %._crit_edge196.split.us.us, %._crit_edge187.thread, %._crit_edge187
  %i.ph = phi i8 [ 0, %._crit_edge187.thread ], [ %i.mx, %.preheader123.split.us ], [ %i.md, %._crit_edge187 ], [ %i.mx, %._crit_edge196.split.us.us ], [ %i.md, %._crit_edge196.split ], [ %i.md, %.preheader123.split ] ; 6 uses
  %.0738.lcssa402 = phi i32 [ -1, %._crit_edge187.thread ], [ %.0738.lcssa401408, %.preheader123.split.us ], [ %.274033, %._crit_edge187 ], [ %.0738.lcssa401408, %._crit_edge196.split.us.us ], [ %.274033, %._crit_edge196.split ], [ %.274033, %.preheader123.split ]
  %.0741.lcssa400 = phi ptr [ null, %._crit_edge187.thread ], [ %.0741.lcssa399409, %.preheader123.split.us ], [ %.274332, %._crit_edge187 ], [ %.0741.lcssa399409, %._crit_edge196.split.us.us ], [ %.274332, %._crit_edge196.split ], [ %.274332, %.preheader123.split ] ; 2 uses
  %.0744.lcssa398 = phi i8 [ 0, %._crit_edge187.thread ], [ 0, %.preheader123.split.us ], [ %.274631, %._crit_edge187 ], [ 0, %._crit_edge196.split.us.us ], [ 1, %._crit_edge196.split ], [ 1, %.preheader123.split ] ; 2 uses
  %.0747.lcssa396 = phi i8 [ 0, %._crit_edge187.thread ], [ %.0747.lcssa395411, %.preheader123.split.us ], [ %.274930, %._crit_edge187 ], [ %.0747.lcssa395411, %._crit_edge196.split.us.us ], [ %.274930, %._crit_edge196.split ], [ %.274930, %.preheader123.split ] ; 2 uses
  %i.pi = load i8, ptr %i.cc, align 1, !tbaa !1147
  %i.pj = icmp eq i8 %i.pi, 1
  %i.pk = sext i1 %i.pj to i64
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.pk, ptr %i.pl, align 8, !tbaa !2131
  %i.pm = zext nneg i8 %i.ph to i32               ; 4 uses
  %.val863 = load ptr, ptr %0, align 8, !tbaa !981
  %i.pn = getelementptr i8, ptr %.val863, i64 48
  %.val863.val = load i64, ptr %i.pn, align 8, !tbaa !917
  %i.po = call fastcc i32 @sqlite3FkRequired(i64 %.val863.val, ptr noundef %i.t, ptr noundef %i.dx, i32 noundef %i.pm) ; 3 uses
  %i.pp = icmp eq i32 %4, 5
  %spec.select456.a = zext i1 %i.pp to i32        ; 2 uses
  %.1759204 = load ptr, ptr %i.dh, align 8, !tbaa !1157 ; 2 uses
  %.not804205 = icmp eq ptr %.1759204, null
  br i1 %.not804205, label %._crit_edge213, label %.lr.ph212

.lr.ph212:                                        ; preds = %.loopexit
  %i.pq = icmp ne i8 %i.ph, 0
  %i.pr = icmp samesign ugt i32 %i.po, 1
  %or.cond = select i1 %i.pq, i1 true, i1 %i.pr
  %i.ps = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.pt = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.pu = getelementptr inbounds nuw i8, ptr %7, i64 36
  %.not.i.i885 = icmp eq i8 %.0744.lcssa398, 0    ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 4 uses
  %i.pz = icmp eq i32 %4, 11
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph212, %bb.cg
  %indvars.iv283 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next284, %bb.cg ] ; 3 uses
  %.1759207 = phi ptr [ %.1759204, %.lr.ph212 ], [ %.1759, %bb.cg ] ; 9 uses
  %i.qa = phi i32 [ %spec.select456.a, %.lr.ph212 ], [ %i.sl, %bb.cg ] ; 6 uses
  %i.qb = icmp eq ptr %.1759207, %i.dg
  %or.cond851 = or i1 %or.cond, %i.qb
  br i1 %or.cond851, label %bb.cc, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qc = getelementptr i8, ptr %.1759207, i64 72
  %.1759.val = load ptr, ptr %i.qc, align 8, !tbaa !1757 ; 2 uses
  %i.qd = icmp eq ptr %.1759.val, null
  br i1 %i.qd, label %.critedge121.preheader, label %sqlite3ExprReferencesUpdatedColumn.exit.i

.critedge121.preheader:                           ; preds = %sqlite3ExprReferencesUpdatedColumn.exit.i, %bb.ca
  %i.qe = getelementptr inbounds nuw i8, ptr %.1759207, i64 94 ; 3 uses
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !1160
  %.not243 = icmp eq i16 %i.qf, 0
  br i1 %.not243, label %.thread43, label %.lr.ph199

.lr.ph199:                                        ; preds = %.critedge121.preheader
  %i.qg = getelementptr inbounds nuw i8, ptr %.1759207, i64 8 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.1759207, i64 80 ; 2 uses
  br i1 %.not.i.i885, label %.lr.ph199.split.us, label %.lr.ph199.split

.lr.ph199.split.us:                               ; preds = %.lr.ph199, %.critedge121.us
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %.critedge121.us ], [ 0, %.lr.ph199 ] ; 3 uses
  %i.qi = load ptr, ptr %i.qg, align 8, !tbaa !1161
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %indvars.iv280
  %i.qk = load i16, ptr %i.qj, align 2, !tbaa !783 ; 2 uses
  %i.ql = icmp sgt i16 %i.qk, -1
  br i1 %i.ql, label %.split416, label %bb.cb

.critedge121.us:                                  ; preds = %indexColumnIsBeingUpdated.exit.us.thread, %.split416, %indexColumnIsBeingUpdated.exit.us
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.qm = load i16, ptr %i.qe, align 2, !tbaa !1160
  %i.qn = zext i16 %i.qm to i64
  %i.qo = icmp samesign ult i64 %indvars.iv.next281, %i.qn
  br i1 %i.qo, label %.lr.ph199.split.us, label %.thread43, !llvm.loop !4719

bb.cb:                                            ; preds = %.lr.ph199.split.us
  %i.qp = load ptr, ptr %i.qh, align 8, !tbaa !1758
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = getelementptr inbounds nuw [24 x i8], ptr %i.qq, i64 %indvars.iv280
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !1998 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  store ptr @checkConstraintExprNode, ptr %i.pv, align 8, !tbaa !2019
  store ptr %i.dx, ptr %i.pw, align 8, !tbaa !733
  %.not.i.i.i.us = icmp eq ptr %i.qs, null
  br i1 %.not.i.i.i.us, label %indexColumnIsBeingUpdated.exit.us.thread, label %indexColumnIsBeingUpdated.exit.us

indexColumnIsBeingUpdated.exit.us.thread:         ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #57
  br label %.critedge121.us

.split416:                                        ; preds = %.lr.ph199.split.us
  %i.qt = zext nneg i16 %i.qk to i64
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !570
  %i.qw = icmp sgt i32 %i.qv, -1
  br i1 %i.qw, label %.split201.us, label %.critedge121.us

indexColumnIsBeingUpdated.exit.us:                ; preds = %bb.cb
  %i.qx = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %6, ptr noundef nonnull %i.qs) #60, !inline_history !2188 ; 0 uses
  %.pre.pre.i.i887.us = load i16, ptr %i.px, align 4, !tbaa !2017
  %i.qy = and i16 %.pre.pre.i.i887.us, -3
  %.not460 = icmp eq i16 %i.qy, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #57
  br i1 %.not460, label %.critedge121.us, label %.split201.us

sqlite3ExprReferencesUpdatedColumn.exit.i:        ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  store ptr @checkConstraintExprNode, ptr %i.ps, align 8, !tbaa !2019
  store ptr %i.dx, ptr %i.pt, align 8, !tbaa !733
  %i.qz = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %7, ptr noundef nonnull %.1759.val) #60, !inline_history !2188 ; 0 uses
  %.pre.pre.i.i = load i16, ptr %i.pu, align 4, !tbaa !2017 ; 2 uses
  %i.ra = and i16 %.pre.pre.i.i, -3
  %spec.select.i.i = select i1 %.not.i.i885, i16 %i.ra, i16 %.pre.pre.i.i
  %.not116.a = icmp eq i16 %spec.select.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #57
  br i1 %.not116.a, label %.critedge121.preheader, label %bb.cc

bb.cc:                                            ; preds = %sqlite3ExprReferencesUpdatedColumn.exit.i, %bb.bz
  %i.rb = load i32, ptr %i.py, align 4, !tbaa !1175
  %i.rc = add nsw i32 %i.rb, 1                    ; 2 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %.1759207, i64 96
  %i.re = load i16, ptr %i.rd, align 8, !tbaa !1778
  %i.rf = zext i16 %i.re to i32
  %i.rg = add nsw i32 %i.rc, %i.rf
  store i32 %i.rg, ptr %i.py, align 4, !tbaa !1175
  br label %bb.cf

.critedge121:                                     ; preds = %indexColumnIsBeingUpdated.exit.thread, %.split418, %indexColumnIsBeingUpdated.exit
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.rh = load i16, ptr %i.qe, align 2, !tbaa !1160
  %i.ri = zext i16 %i.rh to i64
  %i.rj = icmp samesign ult i64 %indvars.iv.next278, %i.ri
  br i1 %i.rj, label %.lr.ph199.split, label %.thread43, !llvm.loop !4719

.lr.ph199.split:                                  ; preds = %.lr.ph199, %.critedge121
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %.critedge121 ], [ 0, %.lr.ph199 ] ; 3 uses
  %i.rk = load ptr, ptr %i.qg, align 8, !tbaa !1161
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %i.rk, i64 %indvars.iv277
  %i.rm = load i16, ptr %i.rl, align 2, !tbaa !783 ; 2 uses
  %i.rn = icmp sgt i16 %i.rm, -1
  br i1 %i.rn, label %.split418, label %bb.cd

.split418:                                        ; preds = %.lr.ph199.split
  %i.ro = zext nneg i16 %i.rm to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.ro
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !570
  %i.rr = icmp sgt i32 %i.rq, -1
  br i1 %i.rr, label %.split201.us, label %.critedge121

bb.cd:                                            ; preds = %.lr.ph199.split
  %i.rs = load ptr, ptr %i.qh, align 8, !tbaa !1758
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 8
  %i.ru = getelementptr inbounds nuw [24 x i8], ptr %i.rt, i64 %indvars.iv277
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !1998 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, i8 0, i64 40, i1 false)
  store ptr @checkConstraintExprNode, ptr %i.pv, align 8, !tbaa !2019
  store ptr %i.dx, ptr %i.pw, align 8, !tbaa !733
  %.not.i.i.i = icmp eq ptr %i.rv, null
  br i1 %.not.i.i.i, label %indexColumnIsBeingUpdated.exit.thread, label %indexColumnIsBeingUpdated.exit

indexColumnIsBeingUpdated.exit.thread:            ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #57
  br label %.critedge121

indexColumnIsBeingUpdated.exit:                   ; preds = %bb.cd
  %i.rw = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %6, ptr noundef nonnull %i.rv) #60, !inline_history !2188 ; 0 uses
  %.pre.pre.i.i887 = load i16, ptr %i.px, align 4, !tbaa !2017
  %.not459 = icmp eq i16 %.pre.pre.i.i887, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #57
  br i1 %.not459, label %.critedge121, label %.split201.us

.split201.us:                                     ; preds = %indexColumnIsBeingUpdated.exit, %.split418, %indexColumnIsBeingUpdated.exit.us, %.split416
  %i.rx = load i32, ptr %i.py, align 4, !tbaa !1175
  %i.ry = add nsw i32 %i.rx, 1                    ; 3 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.1759207, i64 96
  %i.sa = load i16, ptr %i.rz, align 8, !tbaa !1778
  %i.sb = zext i16 %i.sa to i32
  %i.sc = add nsw i32 %i.ry, %i.sb
  store i32 %i.sc, ptr %i.py, align 4, !tbaa !1175
  br i1 %i.pz, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.split201.us
  %i.sd = getelementptr inbounds nuw i8, ptr %.1759207, i64 98
  %i.se = load i8, ptr %i.sd, align 2, !tbaa !1815
  %i.sf = icmp eq i8 %i.se, 5
  %spec.select242 = select i1 %i.sf, i32 1, i32 %i.qa
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.split201.us, %bb.cc
  %i.sg = phi i32 [ %i.qa, %bb.cc ], [ %i.qa, %.split201.us ], [ %spec.select242, %bb.ce ] ; 2 uses
  %.0712 = phi i32 [ %i.rc, %bb.cc ], [ %i.ry, %.split201.us ], [ %i.ry, %bb.ce ] ; 2 uses
  %i.sh = icmp eq i32 %.0712, 0
  br i1 %i.sh, label %.thread43, label %bb.cg

.thread43:                                        ; preds = %.critedge121, %.critedge121.us, %.critedge121.preheader, %bb.cf
  %i.si = phi i32 [ %i.sg, %bb.cf ], [ %i.qa, %.critedge121.preheader ], [ %i.qa, %.critedge121.us ], [ %i.qa, %.critedge121 ]
  %i.sj = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv283
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 1
  store i8 0, ptr %i.sk, align 1, !tbaa !733
  br label %bb.cg

end_hunk_3
begin_hunk_4_@selectExpander:bb.a

bb.gc:                                            ; preds = %.lr.ph844, %bb.ll
  %indvars.iv984 = phi i64 [ 0, %.lr.ph844 ], [ %indvars.iv.next985, %bb.ll ] ; 2 uses
  %.0326842 = phi ptr [ null, %.lr.ph844 ], [ %.9, %bb.ll ] ; 9 uses
  %.1338841 = phi i32 [ %.0337809, %.lr.ph844 ], [ %i.aeb, %bb.ll ]
  %i.adx = getelementptr inbounds nuw [24 x i8], ptr %i.add, i64 %indvars.iv984 ; 4 uses
  %i.ady = load ptr, ptr %i.adx, align 8, !tbaa !1998 ; 9 uses
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !795
  %i.aeb = or i32 %i.aea, %.1338841               ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.ady, i64 24
  %i.aed = load ptr, ptr %i.aec, align 8, !tbaa !1289 ; 2 uses
  %i.aee = load i8, ptr %i.ady, align 8, !tbaa !1828
  switch i8 %i.aee, label %bb.ge [
    i8 -76, label %bb.gl
    i8 -114, label %bb.gd
  ]

bb.gd:                                            ; preds = %bb.gc
  %i.aef = load i8, ptr %i.aed, align 8, !tbaa !1828
  %.not376 = icmp eq i8 %i.aef, -76
  br i1 %.not376, label %bb.gk, label %bb.ge

bb.ge:                                            ; preds = %bb.gc, %bb.gd
  %i.aeg = icmp eq ptr %.0326842, null
  br i1 %i.aeg, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.aeh = load ptr, ptr %i.c, align 8, !tbaa !981
  %i.aei = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.aeh, ptr noundef nonnull %i.ady), !inline_history !2011
  br label %sqlite3ExprListAppend.exit

bb.gg:                                            ; preds = %bb.ge
  %i.aej = getelementptr inbounds nuw i8, ptr %.0326842, i64 4
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !570
  %i.ael = load i32, ptr %.0326842, align 8, !tbaa !570 ; 3 uses
  %.not.i481 = icmp sgt i32 %i.aek, %i.ael
  br i1 %.not.i481, label %sqlite3ExprListAppend.exit.thread, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.aem = load ptr, ptr %i.c, align 8, !tbaa !981
  %i.aen = call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.aem, ptr noundef %.0326842, ptr noundef nonnull %i.ady), !inline_history !2011
  br label %sqlite3ExprListAppend.exit

sqlite3ExprListAppend.exit.thread:                ; preds = %bb.gg
  %i.aeo = add nsw i32 %i.ael, 1
  %i.aep = getelementptr inbounds nuw i8, ptr %.0326842, i64 8
  store i32 %i.aeo, ptr %.0326842, align 8, !tbaa !570
  %i.aeq = sext i32 %i.ael to i64
  %i.aer = getelementptr inbounds [24 x i8], ptr %i.aep, i64 %i.aeq ; 2 uses
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aer, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aes, i8 0, i64 16, i1 false)
  store ptr %i.ady, ptr %i.aer, align 8, !tbaa !1998
  br label %bb.gi

sqlite3ExprListAppend.exit:                       ; preds = %bb.gf, %bb.gh
  %.0.i482 = phi ptr [ %i.aei, %bb.gf ], [ %i.aen, %bb.gh ] ; 2 uses
  %.not398 = icmp eq ptr %.0.i482, null
  br i1 %.not398, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %sqlite3ExprListAppend.exit.thread, %sqlite3ExprListAppend.exit
  %.0.i482631 = phi ptr [ %.0326842, %sqlite3ExprListAppend.exit.thread ], [ %.0.i482, %sqlite3ExprListAppend.exit ] ; 3 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %i.adx, i64 8 ; 2 uses
  %i.aeu = load ptr, ptr %i.aet, align 8, !tbaa !1999
  %i.aev = getelementptr inbounds nuw i8, ptr %.0.i482631, i64 8
  %i.aew = load i32, ptr %.0.i482631, align 8, !tbaa !570
  %i.aex = sext i32 %i.aew to i64
  %i.aey = getelementptr [24 x i8], ptr %i.aev, i64 %i.aex ; 2 uses
  %i.aez = getelementptr i8, ptr %i.aey, i64 -16
  store ptr %i.aeu, ptr %i.aez, align 8, !tbaa !1999
  %i.afa = getelementptr inbounds nuw i8, ptr %i.adx, i64 17
  %i.afb = load i16, ptr %i.afa, align 1
  %i.afc = and i16 %i.afb, 3
  %i.afd = getelementptr i8, ptr %i.aey, i64 -7   ; 2 uses
  %i.afe = load i16, ptr %i.afd, align 1
  %i.aff = and i16 %i.afe, -4
  %i.afg = or disjoint i16 %i.aff, %i.afc
  store i16 %i.afg, ptr %i.afd, align 1
  store ptr null, ptr %i.aet, align 8, !tbaa !1999
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %sqlite3ExprListAppend.exit
  %.0.i482632 = phi ptr [ %.0.i482631, %bb.gi ], [ null, %sqlite3ExprListAppend.exit ]
  store ptr null, ptr %i.adx, align 8, !tbaa !1998
  br label %bb.ll

bb.gk:                                            ; preds = %bb.gd
  %i.afh = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !796
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 8
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !733
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gc, %bb.gk
  %.0319 = phi ptr [ %i.afk, %bb.gk ], [ null, %bb.gc ] ; 6 uses
  %.pn = phi ptr [ %i.aed, %bb.gk ], [ %i.ady, %bb.gc ]
  %.0318.in = getelementptr inbounds nuw i8, ptr %.pn, i64 52
  %.0318 = load i32, ptr %.0318.in, align 4, !tbaa !733 ; 2 uses
  %i.afl = load i32, ptr %i.r, align 8, !tbaa !570 ; 2 uses
  %i.afm = icmp sgt i32 %i.afl, 0
  br i1 %i.afm, label %.lr.ph834, label %sqlite3RowidAlias.exit.thread1120

.lr.ph834:                                        ; preds = %bb.gl
  %.not379 = icmp eq ptr %.0319, null             ; 4 uses
  %i.afn = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  br label %bb.gm

bb.gm:                                            ; preds = %.lr.ph834, %sqlite3StrICmp.exit
  %i.afo = phi i32 [ %i.afl, %.lr.ph834 ], [ %i.axl, %sqlite3StrICmp.exit ]
  %.0320832 = phi i32 [ 0, %.lr.ph834 ], [ %.4324.ph, %sqlite3StrICmp.exit ] ; 4 uses
  %.1327831 = phi ptr [ %.0326842, %.lr.ph834 ], [ %.7.ph, %sqlite3StrICmp.exit ] ; 6 uses
  %.1343829 = phi ptr [ %i.ag, %.lr.ph834 ], [ %i.axk, %sqlite3StrICmp.exit ] ; 10 uses
  %.1348827 = phi i32 [ 0, %.lr.ph834 ], [ %.pre-phi, %sqlite3StrICmp.exit ] ; 4 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %.1343829, i64 16
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !1825 ; 8 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %.1343829, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8, !tbaa !805 ; 2 uses
  %i.aft = icmp eq ptr %i.afs, null
  br i1 %i.aft, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.afu = load ptr, ptr %i.afq, align 8, !tbaa !1172
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm
  %.0315 = phi ptr [ %i.afu, %bb.gn ], [ %i.afs, %bb.gm ] ; 6 uses
  %i.afv = load i8, ptr %i.h, align 1, !tbaa !918
  %.not377 = icmp eq i8 %i.afv, 0
  br i1 %.not377, label %bb.gp, label %sqlite3RowidAlias.exit

bb.gp:                                            ; preds = %bb.go
  %i.afw = getelementptr inbounds nuw i8, ptr %.1343829, i64 24
  %i.afx = getelementptr inbounds nuw i8, ptr %.1343829, i64 25 ; 3 uses
  %i.afy = load i16, ptr %i.afx, align 1
  %i.afz = and i16 %i.afy, 16384
  %.not378 = icmp eq i16 %i.afz, 0
  br i1 %.not378, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.aga = getelementptr inbounds nuw i8, ptr %.1343829, i64 64
  %i.agb = load ptr, ptr %i.aga, align 8, !tbaa !733
  %i.agc = load ptr, ptr %i.agb, align 8, !tbaa !809
  %i.agd = getelementptr inbounds nuw i8, ptr %i.agc, i64 24
  %i.age = load ptr, ptr %i.agd, align 8, !tbaa !1842
  br label %sqlite3SchemaToIndex.exit.thread

bb.gr:                                            ; preds = %bb.gp
  br i1 %.not379, label %sqlite3StrICmp.exit.thread, label %.preheader

.preheader:                                       ; preds = %bb.gr, %bb.gu
  %.013.i483 = phi ptr [ %i.agp, %bb.gu ], [ %.0319, %bb.gr ] ; 2 uses
  %.012.i = phi ptr [ %i.agq, %bb.gu ], [ %.0315, %bb.gr ] ; 2 uses
  %i.agf = load i8, ptr %.013.i483, align 1, !tbaa !733 ; 3 uses
  %i.agg = load i8, ptr %.012.i, align 1, !tbaa !733 ; 2 uses
  %i.agh = icmp eq i8 %i.agf, %i.agg
  br i1 %i.agh, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %.preheader
  %i.agi = icmp eq i8 %i.agf, 0
  br i1 %i.agi, label %sqlite3StrICmp.exit.thread, label %bb.gu

bb.gt:                                            ; preds = %.preheader
  %i.agj = zext i8 %i.agf to i64
  %i.agk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.agj
  %i.agl = load i8, ptr %i.agk, align 1, !tbaa !733
  %i.agm = zext i8 %i.agg to i64
  %i.agn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.agm
  %i.ago = load i8, ptr %i.agn, align 1, !tbaa !733
  %.not.i484 = icmp eq i8 %i.agl, %i.ago
  br i1 %.not.i484, label %bb.gu, label %sqlite3StrICmp.exit.loopexit855

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %i.agp = getelementptr inbounds nuw i8, ptr %.013.i483, i64 1
  %i.agq = getelementptr inbounds nuw i8, ptr %.012.i, i64 1
  br label %.preheader

sqlite3StrICmp.exit.thread:                       ; preds = %bb.gs, %bb.gr
  %i.agr = getelementptr inbounds nuw i8, ptr %i.afq, i64 96
  %i.ags = load ptr, ptr %i.agr, align 8, !tbaa !1148 ; 2 uses
  %.not.i486 = icmp eq ptr %i.ags, null
  br i1 %.not.i486, label %sqlite3SchemaToIndex.exit.thread, label %.preheader.i487

.preheader.i487:                                  ; preds = %sqlite3StrICmp.exit.thread
  %i.agt = load ptr, ptr %i.adt, align 8, !tbaa !605
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gv, %.preheader.i487
  %indvars.iv.i488 = phi i64 [ %indvars.iv.next.i489, %bb.gv ], [ 0, %.preheader.i487 ] ; 2 uses
  %i.agu = getelementptr inbounds nuw [32 x i8], ptr %i.agt, i64 %indvars.iv.i488 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 24
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !642
  %i.agx = icmp eq ptr %i.agw, %i.ags
  %indvars.iv.next.i489 = add nuw nsw i64 %indvars.iv.i488, 1
  br i1 %i.agx, label %sqlite3SchemaToIndex.exit.a, label %bb.gv

sqlite3SchemaToIndex.exit.a:                      ; preds = %bb.gv
  %i.agy = load ptr, ptr %i.agu, align 8, !tbaa !875
  br label %sqlite3SchemaToIndex.exit.thread

sqlite3SchemaToIndex.exit.thread:                 ; preds = %sqlite3StrICmp.exit.thread, %sqlite3SchemaToIndex.exit.a, %bb.gq
  %.0316 = phi ptr [ %i.age, %bb.gq ], [ null, %sqlite3SchemaToIndex.exit.a ], [ null, %sqlite3StrICmp.exit.thread ] ; 4 uses
  %.0314 = phi ptr [ null, %bb.gq ], [ %i.agy, %sqlite3SchemaToIndex.exit.a ], [ @.str.757, %sqlite3StrICmp.exit.thread ] ; 4 uses
  %i.agz = add nuw nsw i32 %.1348827, 1           ; 4 uses
  %i.aha = icmp slt i32 %i.agz, %i.afo
  br i1 %i.aha, label %bb.gw, label %.loopexit

bb.gw:                                            ; preds = %sqlite3SchemaToIndex.exit.thread
  %i.ahb = getelementptr inbounds nuw i8, ptr %.1343829, i64 97
  %i.ahc = load i16, ptr %i.ahb, align 1
  %i.ahd = and i16 %i.ahc, 2048
  %.not381 = icmp eq i16 %i.ahd, 0
  %or.cond414 = select i1 %.not381, i1 true, i1 %.not382
  br i1 %or.cond414, label %.loopexit, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.ahe = getelementptr inbounds nuw i8, ptr %.1343829, i64 128
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !733 ; 5 uses
  %i.ahg = load i32, ptr %i.ahf, align 8, !tbaa !570
  %i.ahh = icmp sgt i32 %i.ahg, 0
  br i1 %i.ahh, label %.lr.ph815, label %.loopexit

.lr.ph815:                                        ; preds = %bb.gx
  %i.ahi = getelementptr inbounds nuw i8, ptr %i.ahf, i64 8
  br label %bb.gy

bb.gy:                                            ; preds = %.lr.ph815, %bb.hh
  %indvars.iv976 = phi i64 [ 0, %.lr.ph815 ], [ %indvars.iv.next977, %bb.hh ] ; 2 uses
  %.2328812 = phi ptr [ %.1327831, %.lr.ph815 ], [ %.0.i495640, %bb.hh ] ; 7 uses
  %i.ahj = getelementptr inbounds nuw [8 x i8], ptr %i.ahi, i64 %indvars.iv976
  %i.ahk = load ptr, ptr %i.ahj, align 8, !tbaa !1827 ; 4 uses
  %i.ahl = icmp eq ptr %i.ahk, null
  br i1 %i.ahl, label %sqlite3Strlen30.exit.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.ahm = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ahk) #58, !inline_history !2258
  %i.ahn = trunc i64 %i.ahm to i32
  %i.aho = and i32 %i.ahn, 1073741823
  br label %sqlite3Strlen30.exit.i

sqlite3Strlen30.exit.i:                           ; preds = %bb.gz, %bb.gy
  %.0.i.i491 = phi i32 [ %i.aho, %bb.gz ], [ 0, %bb.gy ] ; 3 uses
  %narrow.i = add nuw nsw i32 %.0.i.i491, 73
  %i.ahp = zext nneg i32 %narrow.i to i64
  %i.ahq = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.d, i64 noundef %i.ahp), !inline_history !2006 ; 11 uses
  %.not24.i.i492 = icmp eq ptr %i.ahq, null
  br i1 %.not24.i.i492, label %sqlite3ExprSetErrorOffset.exit, label %bb.ha

bb.ha:                                            ; preds = %sqlite3Strlen30.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ahq, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.ahq, align 8, !tbaa !1828
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahq, i64 50
  store i16 -1, ptr %i.ahr, align 2, !tbaa !2007
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahq, i64 72 ; 3 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahq, i64 8
  store ptr %i.ahs, ptr %i.aht, align 8, !tbaa !733
  %.not26.i.i = icmp eq i32 %.0.i.i491, 0
  br i1 %.not26.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.ahu = zext nneg i32 %.0.i.i491 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ahs, ptr readonly align 1 %i.ahk, i64 %i.ahu, i1 false)
  br label %bb.hc

bb.hc:                                            ; preds = %bb.ha, %bb.hb
  %i.ahv = phi i64 [ %i.ahu, %bb.hb ], [ 0, %bb.ha ]
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahs, i64 %i.ahv
  store i8 0, ptr %i.ahw, align 1, !tbaa !733
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.ahq, i64 40
  store i32 1, ptr %i.ahx, align 8, !tbaa !2008
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahq, i64 52
  store i32 %.0318, ptr %i.ahy, align 4, !tbaa !733
  br label %sqlite3ExprSetErrorOffset.exit

sqlite3ExprSetErrorOffset.exit:                   ; preds = %sqlite3Strlen30.exit.i, %bb.hc
  %i.ahz = icmp eq ptr %.2328812, null
  br i1 %i.ahz, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %sqlite3ExprSetErrorOffset.exit
  %i.aia = load ptr, ptr %i.c, align 8, !tbaa !981
  %i.aib = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.aia, ptr noundef %i.ahq), !inline_history !2011
  br label %sqlite3ExprListAppend.exit496

bb.he:                                            ; preds = %sqlite3ExprSetErrorOffset.exit
  %i.aic = getelementptr inbounds nuw i8, ptr %.2328812, i64 4
  %i.aid = load i32, ptr %i.aic, align 4, !tbaa !570
  %i.aie = load i32, ptr %.2328812, align 8, !tbaa !570 ; 3 uses
  %.not.i494 = icmp sgt i32 %i.aid, %i.aie
  br i1 %.not.i494, label %sqlite3ExprListAppend.exit496.thread, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.aif = load ptr, ptr %i.c, align 8, !tbaa !981
  %i.aig = call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.aif, ptr noundef %.2328812, ptr noundef %i.ahq), !inline_history !2011
  br label %sqlite3ExprListAppend.exit496

sqlite3ExprListAppend.exit496.thread:             ; preds = %bb.he
  %i.aih = add nsw i32 %i.aie, 1
  %i.aii = getelementptr inbounds nuw i8, ptr %.2328812, i64 8
  store i32 %i.aih, ptr %.2328812, align 8, !tbaa !570
  %i.aij = sext i32 %i.aie to i64
  %i.aik = getelementptr inbounds [24 x i8], ptr %i.aii, i64 %i.aij ; 2 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ail, i8 0, i64 16, i1 false)
  store ptr %i.ahq, ptr %i.aik, align 8, !tbaa !1998
  br label %bb.hg

sqlite3ExprListAppend.exit496:                    ; preds = %bb.hd, %bb.hf
  %.0.i495 = phi ptr [ %i.aib, %bb.hd ], [ %i.aig, %bb.hf ] ; 2 uses
  %.not395 = icmp eq ptr %.0.i495, null
  br i1 %.not395, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %sqlite3ExprListAppend.exit496.thread, %sqlite3ExprListAppend.exit496
  %.0.i495639 = phi ptr [ %.2328812, %sqlite3ExprListAppend.exit496.thread ], [ %.0.i495, %sqlite3ExprListAppend.exit496 ] ; 3 uses
  %i.aim = load i32, ptr %.0.i495639, align 8, !tbaa !570
  %i.ain = sext i32 %i.aim to i64
  %i.aio = getelementptr [24 x i8], ptr %.0.i495639, i64 %i.ain ; 2 uses
  %i.aip = call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef %i.d, ptr noundef nonnull @.str.783, ptr noundef %i.ahk)
  %i.aiq = getelementptr i8, ptr %i.aio, i64 -8
  store ptr %i.aip, ptr %i.aiq, align 8, !tbaa !1999
  %i.air = getelementptr inbounds nuw i8, ptr %i.aio, i64 1 ; 2 uses
  %i.ais = load i16, ptr %i.air, align 1
  %i.ait = and i16 %i.ais, -132
  %i.aiu = or disjoint i16 %i.ait, 130
  store i16 %i.aiu, ptr %i.air, align 1
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %sqlite3ExprListAppend.exit496
  %.0.i495640 = phi ptr [ %.0.i495639, %bb.hg ], [ null, %sqlite3ExprListAppend.exit496 ] ; 2 uses
  %indvars.iv.next977 = add nuw nsw i64 %indvars.iv976, 1 ; 2 uses
  %i.aiv = load i32, ptr %i.ahf, align 8, !tbaa !570
  %i.aiw = sext i32 %i.aiv to i64
  %i.aix = icmp slt i64 %indvars.iv.next977, %i.aiw
  br i1 %i.aix, label %bb.gy, label %.loopexit, !llvm.loop !5027

.loopexit:                                        ; preds = %bb.hh, %bb.gx, %sqlite3SchemaToIndex.exit.thread, %bb.gw
  %.3329 = phi ptr [ %.1327831, %sqlite3SchemaToIndex.exit.thread ], [ %.1327831, %bb.gw ], [ %.1327831, %bb.gx ], [ %.0.i495640, %bb.hh ] ; 2 uses
  %.0313 = phi ptr [ null, %sqlite3SchemaToIndex.exit.thread ], [ null, %bb.gw ], [ %i.ahf, %bb.gx ], [ %i.ahf, %bb.hh ] ; 3 uses
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.afq, i64 54 ; 4 uses
  %i.aiz = load i16, ptr %i.aiy, align 2, !tbaa !1151
  %i.aja = sext i16 %i.aiz to i32
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.afq, i64 48
  %i.ajc = load i32, ptr %i.ajb, align 8, !tbaa !1084
  %i.ajd = and i32 %i.ajc, 512
  %i.aje = icmp ne i32 %i.ajd, 0
  %or.cond415 = select i1 %i.aje, i1 true, i1 %.not382
  %not.or.cond415 = xor i1 %or.cond415, true
  %i.ajf = zext i1 %not.or.cond415 to i32
  %.0317 = add nsw i32 %i.ajf, %i.aja             ; 2 uses
  %i.ajg = icmp sgt i32 %.0317, 0
  br i1 %i.ajg, label %.lr.ph822, label %sqlite3StrICmp.exit

.lr.ph822:                                        ; preds = %.loopexit
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.afq, i64 8 ; 2 uses
  %.not668 = icmp eq ptr %.0316, null             ; 2 uses
  %i.aji = getelementptr inbounds nuw i8, ptr %i.afq, i64 107
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.afq, i64 109
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.afq, i64 116
  %i.ajl = icmp ne i32 %.1348827, 0
  %or.cond6 = select i1 %i.ajl, i1 %.not379, i1 false
  %or.cond419 = select i1 %or.cond6, i1 %.not382, i1 false
  %i.ajm = getelementptr inbounds nuw i8, ptr %.1343829, i64 56 ; 2 uses
  %i.ajn = xor i32 %.1348827, -1
  %i.ajo = icmp eq ptr %.0315, null
  %.not389 = icmp eq ptr %.0314, null
  %.not393 = icmp eq ptr %.0313, null
  %i.ajp = getelementptr inbounds nuw i8, ptr %.0313, i64 8
  %wide.trip.count982 = zext nneg i32 %.0317 to i64
  br label %bb.hi

bb.hi:                                            ; preds = %.lr.ph822, %sqlite3MatchEName.exit.thread
  %indvars.iv979 = phi i64 [ 0, %.lr.ph822 ], [ %indvars.iv.next980, %sqlite3MatchEName.exit.thread ] ; 9 uses
  %.1321820 = phi i32 [ %.0320832, %.lr.ph822 ], [ %.2322.ph, %sqlite3MatchEName.exit.thread ] ; 8 uses
  %.4330819 = phi ptr [ %.3329, %.lr.ph822 ], [ %.5331.ph, %sqlite3MatchEName.exit.thread ] ; 16 uses
  %i.ajq = load i16, ptr %i.aiy, align 2, !tbaa !1151 ; 2 uses
  %i.ajr = sext i16 %i.ajq to i64
  %i.ajs = icmp eq i64 %indvars.iv979, %i.ajr
  %i.ajt = load ptr, ptr %i.ajh, align 8, !tbaa !1150 ; 7 uses
  br i1 %i.ajs, label %bb.hj, label %bb.io

bb.hj:                                            ; preds = %bb.hi
  %i.aju = call i16 @llvm.smax.i16(i16 %i.ajq, i16 1)
  %wide.trip.count.i.i498 = zext nneg i16 %i.aju to i64 ; 3 uses
  %i.ajv = load i8, ptr %i.aji, align 1, !tbaa !733
  %i.ajw = zext i8 %i.ajv to i64
  %i.ajx = getelementptr inbounds nuw [16 x i8], ptr %i.ajt, i64 %i.ajw ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ajx, i64 11
  %i.ajz = load i8, ptr %i.ajy, align 1, !tbaa !1153
  %i.aka = icmp eq i8 %i.ajz, -29
  br i1 %i.aka, label %bb.hk, label %sqlite3StrICmp.exit.i.i499.preheader

sqlite3StrICmp.exit.i.i499.preheader:             ; preds = %bb.hn, %bb.hj
  br label %sqlite3StrICmp.exit.i.i499

bb.hk:                                            ; preds = %bb.hj
  %i.akb = load ptr, ptr %i.ajx, align 8, !tbaa !1154
  br label %bb.hl

bb.hl:                                            ; preds = %bb.ho, %bb.hk
  %.013.i.i.i507 = phi ptr [ %i.akb, %bb.hk ], [ %i.akm, %bb.ho ] ; 2 uses
  %.012.i24.i.i508 = phi ptr [ @.str.804, %bb.hk ], [ %i.akn, %bb.ho ] ; 2 uses
  %i.akc = load i8, ptr %.013.i.i.i507, align 1, !tbaa !733 ; 3 uses
  %i.akd = load i8, ptr %.012.i24.i.i508, align 1, !tbaa !733 ; 2 uses
  %i.ake = icmp eq i8 %i.akc, %i.akd
end_hunk_4
begin_hunk_5_@selectExpander:bb.a
  %.pre122.i = load i8, ptr %.023.i65.i, align 1, !tbaa !733
  %.phi.trans.insert123.i = zext i8 %.pre122.i to i64
  %.phi.trans.insert124.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert123.i
  %.pre125.i = load i8, ptr %.phi.trans.insert124.i, align 1, !tbaa !733
  br label %sqlite3_strnicmp.exit71.i

sqlite3_strnicmp.exit71.i:                        ; preds = %sqlite3_strnicmp.exit71.loopexit.i, %split.i68.i
  %i.ape = phi i8 [ %i.aoy, %split.i68.i ], [ %.pre125.i, %sqlite3_strnicmp.exit71.loopexit.i ]
  %i.apf = phi i32 [ %i.apd, %split.i68.i ], [ 0, %sqlite3_strnicmp.exit71.loopexit.i ]
  %i.apg = zext i8 %i.ape to i32
  %.not57.i = icmp eq i32 %i.apf, %i.apg
  br i1 %.not57.i, label %sqlite3_strnicmp.exit71.thread.i, label %sqlite3MatchEName.exit.thread

sqlite3_strnicmp.exit71.thread.i:                 ; preds = %bb.iy, %sqlite3_strnicmp.exit71.i, %.preheader.i61.i
  %i.aph = getelementptr inbounds nuw i8, ptr %.0319, i64 %indvars.iv117.i
  %i.api = load i8, ptr %i.aph, align 1, !tbaa !733
  %.not58.i = icmp eq i8 %i.api, 0
  br i1 %.not58.i, label %sqlite3MatchEName.exit, label %sqlite3MatchEName.exit.thread

sqlite3MatchEName.exit:                           ; preds = %sqlite3_strnicmp.exit71.thread.i, %bb.io, %bb.iq
  %i.apj = load i32, ptr %i.e, align 4, !tbaa !813
  %i.apk = and i32 %i.apj, 131072
  %i.apl = icmp ne i32 %i.apk, 0
  %i.apm = getelementptr inbounds nuw i8, ptr %i.anz, i64 14
  %i.apn = load i16, ptr %i.apm, align 2, !tbaa !1365 ; 2 uses
  %i.apo = and i16 %i.apn, 2
  %.not384 = icmp eq i16 %i.apo, 0
  %or.cond1252 = select i1 %i.apl, i1 true, i1 %.not384
  br i1 %or.cond1252, label %sqlite3MatchEName.exit._crit_edge, label %sqlite3MatchEName.exit.thread

sqlite3MatchEName.exit._crit_edge:                ; preds = %sqlite3MatchEName.exit
  %i.app = and i16 %i.apn, 1024
  %i.apq = icmp ne i16 %i.app, 0
  %or.cond4 = select i1 %i.apq, i1 %.not379, i1 false
  %or.cond417 = select i1 %or.cond4, i1 %.not382, i1 false
  br i1 %or.cond417, label %sqlite3MatchEName.exit.thread, label %sqlite3RowidAlias.exit.thread

sqlite3RowidAlias.exit.thread:                    ; preds = %sqlite3StrICmp.exit30.i.i501, %sqlite3StrICmp.exit30.i.1.i, %sqlite3StrICmp.exit30.i.2.i, %sqlite3MatchEName.exit._crit_edge
  %.0 = phi ptr [ %i.aoa, %sqlite3MatchEName.exit._crit_edge ], [ @.str.805, %sqlite3StrICmp.exit30.i.2.i ], [ @.str.769, %sqlite3StrICmp.exit30.i.1.i ], [ @.str.804, %sqlite3StrICmp.exit30.i.i501 ] ; 11 uses
  br i1 %or.cond419, label %bb.iz, label %sqlite3IdListIndex.exit.thread

bb.iz:                                            ; preds = %sqlite3RowidAlias.exit.thread
  %i.apr = load i16, ptr %i.afx, align 1
  %i.aps = and i16 %i.apr, 2048
  %.not385 = icmp eq i16 %i.aps, 0
  br i1 %.not385, label %sqlite3IdListIndex.exit.thread, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.apt = load ptr, ptr %i.ajm, align 8, !tbaa !733 ; 2 uses
  %i.apu = load i32, ptr %i.apt, align 8, !tbaa !570 ; 2 uses
  %i.apv = icmp sgt i32 %i.apu, 0
  br i1 %i.apv, label %.lr.ph.i516, label %sqlite3IdListIndex.exit.thread

.lr.ph.i516:                                      ; preds = %bb.ja
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apt, i64 8
  %wide.trip.count.i = zext nneg i32 %i.apu to i64
  br label %bb.jb

bb.jb:                                            ; preds = %sqlite3StrICmp.exit.i521, %.lr.ph.i516
  %indvars.iv.i517 = phi i64 [ 0, %.lr.ph.i516 ], [ %indvars.iv.next.i522, %sqlite3StrICmp.exit.i521 ] ; 2 uses
  %i.apx = getelementptr inbounds nuw [8 x i8], ptr %i.apw, i64 %indvars.iv.i517
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !1827
  br label %bb.jc

bb.jc:                                            ; preds = %bb.jf, %bb.jb
  %.013.i.i518 = phi ptr [ %i.apy, %bb.jb ], [ %i.aqj, %bb.jf ] ; 2 uses
  %.012.i.i519 = phi ptr [ %.0, %bb.jb ], [ %i.aqk, %bb.jf ] ; 2 uses
  %i.apz = load i8, ptr %.013.i.i518, align 1, !tbaa !733 ; 3 uses
  %i.aqa = load i8, ptr %.012.i.i519, align 1, !tbaa !733 ; 2 uses
  %i.aqb = icmp eq i8 %i.apz, %i.aqa
  br i1 %i.aqb, label %bb.jd, label %bb.je

bb.jd:                                            ; preds = %bb.jc
  %i.aqc = icmp eq i8 %i.apz, 0
  br i1 %i.aqc, label %sqlite3MatchEName.exit.thread, label %bb.jf

bb.je:                                            ; preds = %bb.jc
  %i.aqd = zext i8 %i.apz to i64
  %i.aqe = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aqd
  %i.aqf = load i8, ptr %i.aqe, align 1, !tbaa !733
  %i.aqg = zext i8 %i.aqa to i64
  %i.aqh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.aqg
  %i.aqi = load i8, ptr %i.aqh, align 1, !tbaa !733
  %.not.i.i520 = icmp eq i8 %i.aqf, %i.aqi
  br i1 %.not.i.i520, label %bb.jf, label %sqlite3StrICmp.exit.i521

bb.jf:                                            ; preds = %bb.je, %bb.jd
  %i.aqj = getelementptr inbounds nuw i8, ptr %.013.i.i518, i64 1
  %i.aqk = getelementptr inbounds nuw i8, ptr %.012.i.i519, i64 1
  br label %bb.jc

sqlite3StrICmp.exit.i521:                         ; preds = %bb.je
  %indvars.iv.next.i522 = add nuw nsw i64 %indvars.iv.i517, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i522, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3IdListIndex.exit.thread, label %bb.jb, !llvm.loop !380

sqlite3IdListIndex.exit.thread:                   ; preds = %sqlite3StrICmp.exit.i521, %bb.ja, %bb.iz, %sqlite3RowidAlias.exit.thread
  %i.aql = icmp eq ptr %.0, null                  ; 2 uses
  br i1 %i.aql, label %sqlite3Strlen30.exit.i523, label %bb.jg

bb.jg:                                            ; preds = %sqlite3IdListIndex.exit.thread
  %i.aqm = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0) #58, !inline_history !2258
  %i.aqn = trunc i64 %i.aqm to i32
  %i.aqo = and i32 %i.aqn, 1073741823
  br label %sqlite3Strlen30.exit.i523

sqlite3Strlen30.exit.i523:                        ; preds = %bb.jg, %sqlite3IdListIndex.exit.thread
  %.0.i.i524 = phi i32 [ %i.aqo, %bb.jg ], [ 0, %sqlite3IdListIndex.exit.thread ] ; 3 uses
  %narrow.i525 = add nuw nsw i32 %.0.i.i524, 73
  %i.aqp = zext nneg i32 %narrow.i525 to i64
  %i.aqq = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.d, i64 noundef %i.aqp), !inline_history !2006 ; 9 uses
  %.not24.i.i526 = icmp eq ptr %i.aqq, null
  br i1 %.not24.i.i526, label %sqlite3Expr.exit529, label %bb.jh

bb.jh:                                            ; preds = %sqlite3Strlen30.exit.i523
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aqq, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.aqq, align 8, !tbaa !1828
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aqq, i64 50
  store i16 -1, ptr %i.aqr, align 2, !tbaa !2007
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqq, i64 72 ; 3 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqq, i64 8
  store ptr %i.aqs, ptr %i.aqt, align 8, !tbaa !733
  %.not26.i.i527 = icmp eq i32 %.0.i.i524, 0
  br i1 %.not26.i.i527, label %sqlite3DequoteExpr.exit.i.i528, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
  %i.aqu = zext nneg i32 %.0.i.i524 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aqs, ptr readonly align 1 %.0, i64 %i.aqu, i1 false)
  br label %sqlite3DequoteExpr.exit.i.i528

sqlite3DequoteExpr.exit.i.i528:                   ; preds = %bb.ji, %bb.jh
  %i.aqv = phi i64 [ %i.aqu, %bb.ji ], [ 0, %bb.jh ]
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.aqs, i64 %i.aqv
  store i8 0, ptr %i.aqw, align 1, !tbaa !733
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aqq, i64 40
  store i32 1, ptr %i.aqx, align 8, !tbaa !2008
  br label %sqlite3Expr.exit529

sqlite3Expr.exit529:                              ; preds = %sqlite3Strlen30.exit.i523, %sqlite3DequoteExpr.exit.i.i528
  %i.aqy = load i32, ptr %i.r, align 8, !tbaa !570 ; 2 uses
  %i.aqz = icmp sgt i32 %i.aqy, 1
  br i1 %i.aqz, label %bb.jj, label %inAnyUsingClause.exit

bb.jj:                                            ; preds = %sqlite3Expr.exit529
  %i.ara = load i8, ptr %i.afw, align 8, !tbaa !2009
  %i.arb = and i8 %i.ara, 64
  %i.arc = icmp ne i8 %i.arb, 0
  %or.cond420 = select i1 %i.arc, i1 %.not382, i1 false
  %i.ard = add nsw i32 %i.aqy, %i.ajn             ; 2 uses
  %i.are = icmp sgt i32 %i.ard, 0
  %or.cond = select i1 %or.cond420, i1 %i.are, i1 false
  br i1 %or.cond, label %.lr.ph.i531, label %inAnyUsingClause.exit.thread

.lr.ph.i531:                                      ; preds = %bb.jj, %.backedge.i
  %.012.i532 = phi i32 [ %i.arf, %.backedge.i ], [ %i.ard, %bb.jj ] ; 2 uses
  %.0711.i = phi ptr [ %i.arg, %.backedge.i ], [ %.1343829, %bb.jj ] ; 3 uses
  %i.arf = add nsw i32 %.012.i532, -1
  %i.arg = getelementptr inbounds nuw i8, ptr %.0711.i, i64 72
  %i.arh = getelementptr inbounds nuw i8, ptr %.0711.i, i64 97
  %i.ari = load i16, ptr %i.arh, align 1
  %i.arj = and i16 %i.ari, 2048
  %i.ark = icmp eq i16 %i.arj, 0
  br i1 %i.ark, label %.backedge.i, label %bb.jk

.backedge.i:                                      ; preds = %sqlite3StrICmp.exit.i.i539, %bb.jl, %bb.jk, %.lr.ph.i531
  %i.arl = icmp sgt i32 %.012.i532, 1
  br i1 %i.arl, label %.lr.ph.i531, label %inAnyUsingClause.exit.thread, !llvm.loop !5028

bb.jk:                                            ; preds = %.lr.ph.i531
  %i.arm = getelementptr inbounds nuw i8, ptr %.0711.i, i64 128
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !733 ; 3 uses
  %i.aro = icmp eq ptr %i.arn, null
  br i1 %i.aro, label %.backedge.i, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  %i.arp = load i32, ptr %i.arn, align 8, !tbaa !570 ; 2 uses
  %i.arq = icmp sgt i32 %i.arp, 0
  br i1 %i.arq, label %.lr.ph.i.i533, label %.backedge.i

.lr.ph.i.i533:                                    ; preds = %bb.jl
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arn, i64 8
  %wide.trip.count.i.i534 = zext nneg i32 %i.arp to i64
  br label %bb.jm

bb.jm:                                            ; preds = %sqlite3StrICmp.exit.i.i539, %.lr.ph.i.i533
  %indvars.iv.i.i535 = phi i64 [ 0, %.lr.ph.i.i533 ], [ %indvars.iv.next.i.i540, %sqlite3StrICmp.exit.i.i539 ] ; 2 uses
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr %i.arr, i64 %indvars.iv.i.i535
  %i.art = load ptr, ptr %i.ars, align 8, !tbaa !1827
  br label %bb.jn

bb.jn:                                            ; preds = %bb.jq, %bb.jm
  %.013.i.i.i536 = phi ptr [ %i.art, %bb.jm ], [ %i.ase, %bb.jq ] ; 2 uses
  %.012.i.i.i537 = phi ptr [ %.0, %bb.jm ], [ %i.asf, %bb.jq ] ; 2 uses
  %i.aru = load i8, ptr %.013.i.i.i536, align 1, !tbaa !733 ; 3 uses
  %i.arv = load i8, ptr %.012.i.i.i537, align 1, !tbaa !733 ; 2 uses
  %i.arw = icmp eq i8 %i.aru, %i.arv
  br i1 %i.arw, label %bb.jo, label %bb.jp

bb.jo:                                            ; preds = %bb.jn
  %i.arx = icmp eq i8 %i.aru, 0
  br i1 %i.arx, label %inAnyUsingClause.exit, label %bb.jq

bb.jp:                                            ; preds = %bb.jn
  %i.ary = zext i8 %i.aru to i64
  %i.arz = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ary
  %i.asa = load i8, ptr %i.arz, align 1, !tbaa !733
  %i.asb = zext i8 %i.arv to i64
  %i.asc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.asb
  %i.asd = load i8, ptr %i.asc, align 1, !tbaa !733
  %.not.i.i.i538 = icmp eq i8 %i.asa, %i.asd
  br i1 %.not.i.i.i538, label %bb.jq, label %sqlite3StrICmp.exit.i.i539

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  %i.ase = getelementptr inbounds nuw i8, ptr %.013.i.i.i536, i64 1
  %i.asf = getelementptr inbounds nuw i8, ptr %.012.i.i.i537, i64 1
  br label %bb.jn

sqlite3StrICmp.exit.i.i539:                       ; preds = %bb.jp
  %indvars.iv.next.i.i540 = add nuw nsw i64 %indvars.iv.i.i535, 1 ; 2 uses
  %exitcond.not.i.i541 = icmp eq i64 %indvars.iv.next.i.i540, %wide.trip.count.i.i534
  br i1 %exitcond.not.i.i541, label %.backedge.i, label %bb.jm, !llvm.loop !380

inAnyUsingClause.exit:                            ; preds = %bb.jo, %sqlite3Expr.exit529
  %i.asg = load i8, ptr %i.adv, align 4, !tbaa !1249
  %i.ash = icmp ugt i8 %i.asg, 1
  br i1 %i.ash, label %inAnyUsingClause.exit.thread, label %bb.ka

inAnyUsingClause.exit.thread:                     ; preds = %.backedge.i, %inAnyUsingClause.exit, %bb.jj
  br i1 %i.ajo, label %sqlite3Strlen30.exit.i542, label %bb.jr

bb.jr:                                            ; preds = %inAnyUsingClause.exit.thread
  %i.asi = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0315) #58, !inline_history !2258
  %i.asj = trunc i64 %i.asi to i32
  %i.ask = and i32 %i.asj, 1073741823
  br label %sqlite3Strlen30.exit.i542

sqlite3Strlen30.exit.i542:                        ; preds = %bb.jr, %inAnyUsingClause.exit.thread
  %.0.i.i543 = phi i32 [ %i.ask, %bb.jr ], [ 0, %inAnyUsingClause.exit.thread ] ; 3 uses
  %narrow.i544 = add nuw nsw i32 %.0.i.i543, 73
  %i.asl = zext nneg i32 %narrow.i544 to i64
  %i.asm = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.d, i64 noundef %i.asl), !inline_history !2006 ; 9 uses
  %.not24.i.i545 = icmp eq ptr %i.asm, null
  br i1 %.not24.i.i545, label %sqlite3Expr.exit548, label %bb.js

bb.js:                                            ; preds = %sqlite3Strlen30.exit.i542
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.asm, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.asm, align 8, !tbaa !1828
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asm, i64 50
  store i16 -1, ptr %i.asn, align 2, !tbaa !2007
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asm, i64 72 ; 3 uses
  %i.asp = getelementptr inbounds nuw i8, ptr %i.asm, i64 8
  store ptr %i.aso, ptr %i.asp, align 8, !tbaa !733
  %.not26.i.i546 = icmp eq i32 %.0.i.i543, 0
  br i1 %.not26.i.i546, label %sqlite3DequoteExpr.exit.i.i547, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.asq = zext nneg i32 %.0.i.i543 to i64        ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aso, ptr readonly align 1 %.0315, i64 %i.asq, i1 false)
  br label %sqlite3DequoteExpr.exit.i.i547

sqlite3DequoteExpr.exit.i.i547:                   ; preds = %bb.jt, %bb.js
  %i.asr = phi i64 [ %i.asq, %bb.jt ], [ 0, %bb.js ]
  %i.ass = getelementptr inbounds nuw i8, ptr %i.aso, i64 %i.asr
  store i8 0, ptr %i.ass, align 1, !tbaa !733
  %i.ast = getelementptr inbounds nuw i8, ptr %i.asm, i64 40
  store i32 1, ptr %i.ast, align 8, !tbaa !2008
  br label %sqlite3Expr.exit548

sqlite3Expr.exit548:                              ; preds = %sqlite3Strlen30.exit.i542, %sqlite3DequoteExpr.exit.i.i547
  %i.asu = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %i.c, i32 noundef 142, ptr noundef %i.asm, ptr noundef %i.aqq) ; 2 uses
  %i.asv = load i8, ptr %i.adv, align 4, !tbaa !1249
  %i.asw = icmp ugt i8 %i.asv, 1
  br i1 %i.asw, label %bb.ju, label %sqlite3RenameTokenRemap.exit

bb.ju:                                            ; preds = %sqlite3Expr.exit548
  %i.asx = load ptr, ptr %i.afn, align 8, !tbaa !796 ; 2 uses
  %.not388 = icmp eq ptr %i.asx, null
  br i1 %.not388, label %sqlite3RenameTokenRemap.exit, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %.08.i549 = load ptr, ptr %i.adw, align 8, !tbaa !2012 ; 2 uses
  %.not9.i = icmp eq ptr %.08.i549, null
  br i1 %.not9.i, label %sqlite3RenameTokenRemap.exit, label %.lr.ph.i550

.lr.ph.i550:                                      ; preds = %bb.jv, %bb.jx
  %.010.i = phi ptr [ %.0.i551, %bb.jx ], [ %.08.i549, %bb.jv ] ; 3 uses
  %i.asy = load ptr, ptr %.010.i, align 8, !tbaa !2014
  %i.asz = icmp eq ptr %i.asy, %i.asx
  br i1 %i.asz, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %.lr.ph.i550
  store ptr %i.asm, ptr %.010.i, align 8, !tbaa !2014
  br label %sqlite3RenameTokenRemap.exit

bb.jx:                                            ; preds = %.lr.ph.i550
  %i.ata = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  %.0.i551 = load ptr, ptr %i.ata, align 8, !tbaa !2012 ; 2 uses
  %.not.i552 = icmp eq ptr %.0.i551, null
  br i1 %.not.i552, label %sqlite3RenameTokenRemap.exit, label %.lr.ph.i550, !llvm.loop !286

sqlite3RenameTokenRemap.exit:                     ; preds = %bb.jx, %bb.jw, %bb.jv, %bb.ju, %sqlite3Expr.exit548
  br i1 %.not389, label %bb.ka, label %sqlite3Strlen30.exit.i554

sqlite3Strlen30.exit.i554:                        ; preds = %sqlite3RenameTokenRemap.exit
  %i.atb = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0314) #58, !inline_history !2258 ; 2 uses
  %i.atc = trunc i64 %i.atb to i32
  %i.atd = and i32 %i.atc, 1073741823             ; 2 uses
  %narrow.i556 = add nuw nsw i32 %i.atd, 73
  %i.ate = zext nneg i32 %narrow.i556 to i64
  %i.atf = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.d, i64 noundef %i.ate), !inline_history !2006 ; 8 uses
  %.not24.i.i557 = icmp eq ptr %i.atf, null
  br i1 %.not24.i.i557, label %sqlite3Expr.exit560, label %bb.jy

bb.jy:                                            ; preds = %sqlite3Strlen30.exit.i554
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.atf, i8 0, i64 72, i1 false)
  store i8 60, ptr %i.atf, align 8, !tbaa !1828
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 50
  store i16 -1, ptr %i.atg, align 2, !tbaa !2007
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atf, i64 72 ; 3 uses
  %i.ati = getelementptr inbounds nuw i8, ptr %i.atf, i64 8
  store ptr %i.ath, ptr %i.ati, align 8, !tbaa !733
  %.not26.i.i558 = icmp eq i32 %i.atd, 0
  br i1 %.not26.i.i558, label %sqlite3DequoteExpr.exit.i.i559, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.atj = and i64 %i.atb, 1073741823             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ath, ptr nonnull readonly align 1 %.0314, i64 %i.atj, i1 false)
  br label %sqlite3DequoteExpr.exit.i.i559

sqlite3DequoteExpr.exit.i.i559:                   ; preds = %bb.jz, %bb.jy
  %i.atk = phi i64 [ %i.atj, %bb.jz ], [ 0, %bb.jy ]
  %i.atl = getelementptr inbounds nuw i8, ptr %i.ath, i64 %i.atk
  store i8 0, ptr %i.atl, align 1, !tbaa !733
  %i.atm = getelementptr inbounds nuw i8, ptr %i.atf, i64 40
  store i32 1, ptr %i.atm, align 8, !tbaa !2008
  br label %sqlite3Expr.exit560

sqlite3Expr.exit560:                              ; preds = %sqlite3Strlen30.exit.i554, %sqlite3DequoteExpr.exit.i.i559
  %i.atn = call fastcc ptr @sqlite3PExpr(ptr noundef nonnull %i.c, i32 noundef 142, ptr noundef %i.atf, ptr noundef %i.asu)
  br label %bb.ka

bb.ka:                                            ; preds = %inAnyUsingClause.exit, %sqlite3RenameTokenRemap.exit, %sqlite3Expr.exit560
  %.1341 = phi ptr [ %i.asu, %sqlite3RenameTokenRemap.exit ], [ %i.atn, %sqlite3Expr.exit560 ], [ %i.aqq, %inAnyUsingClause.exit ] ; 6 uses
  %i.ato = icmp eq ptr %.1341, null
  br i1 %i.ato, label %sqlite3ExprSetErrorOffset.exit562, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.atp = getelementptr inbounds nuw i8, ptr %.1341, i64 4
  %i.atq = load i32, ptr %i.atp, align 4, !tbaa !795
  %i.atr = and i32 %i.atq, 3
  %.not.i561 = icmp eq i32 %i.atr, 0
  br i1 %.not.i561, label %bb.kc, label %sqlite3ExprSetErrorOffset.exit562

bb.kc:                                            ; preds = %bb.kb
  %i.ats = getelementptr inbounds nuw i8, ptr %.1341, i64 52
  store i32 %.0318, ptr %i.ats, align 4, !tbaa !733
  br label %sqlite3ExprSetErrorOffset.exit562

sqlite3ExprSetErrorOffset.exit562:                ; preds = %bb.ka, %bb.kb, %bb.kc
  %i.att = icmp eq ptr %.4330819, null
  br i1 %i.att, label %bb.kd, label %bb.ke

bb.kd:                                            ; preds = %sqlite3ExprSetErrorOffset.exit562
  %i.atu = load ptr, ptr %i.c, align 8, !tbaa !981
  %i.atv = call fastcc ptr @sqlite3ExprListAppendNew(ptr noundef %i.atu, ptr noundef %.1341), !inline_history !2011
  br label %sqlite3ExprListAppend.exit565

bb.ke:                                            ; preds = %sqlite3ExprSetErrorOffset.exit562
  %i.atw = getelementptr inbounds nuw i8, ptr %.4330819, i64 4
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !570
  %i.aty = load i32, ptr %.4330819, align 8, !tbaa !570 ; 3 uses
  %.not.i563 = icmp sgt i32 %i.atx, %i.aty
  br i1 %.not.i563, label %sqlite3ExprListAppend.exit565.thread, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.atz = load ptr, ptr %i.c, align 8, !tbaa !981
  %i.aua = call fastcc ptr @sqlite3ExprListAppendGrow(ptr noundef %i.atz, ptr noundef %.4330819, ptr noundef %.1341), !inline_history !2011
  br label %sqlite3ExprListAppend.exit565

sqlite3ExprListAppend.exit565.thread:             ; preds = %bb.ke
  %i.aub = add nsw i32 %i.aty, 1
  %i.auc = getelementptr inbounds nuw i8, ptr %.4330819, i64 8
  store i32 %i.aub, ptr %.4330819, align 8, !tbaa !570
  %i.aud = sext i32 %i.aty to i64
  %i.aue = getelementptr inbounds [24 x i8], ptr %i.auc, i64 %i.aud ; 2 uses
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.auf, i8 0, i64 16, i1 false)
  store ptr %.1341, ptr %i.aue, align 8, !tbaa !1998
  br label %bb.kg

sqlite3ExprListAppend.exit565:                    ; preds = %bb.kd, %bb.kf
  %.0.i564 = phi ptr [ %i.atv, %bb.kd ], [ %i.aua, %bb.kf ] ; 2 uses
  %i.aug = icmp eq ptr %.0.i564, null
  br i1 %i.aug, label %sqlite3StrICmp.exit, label %bb.kg

bb.kg:                                            ; preds = %sqlite3ExprListAppend.exit565.thread, %sqlite3ExprListAppend.exit565
  %.0.i564649 = phi ptr [ %.4330819, %sqlite3ExprListAppend.exit565.thread ], [ %.0.i564, %sqlite3ExprListAppend.exit565 ] ; 7 uses
  %i.auh = load i32, ptr %.0.i564649, align 8, !tbaa !570
  %i.aui = sext i32 %i.auh to i64
  %i.auj = getelementptr [24 x i8], ptr %.0.i564649, i64 %i.aui ; 6 uses
  br i1 %.not382, label %bb.lc, label %bb.kh
end_hunk_5
begin_hunk_6_@alterFindTable:bb.a
  br label %.thread

sqlite3AuthCheck.exit:                            ; preds = %bb.j
  %.not27 = icmp eq i32 %.fr, 0
  br i1 %.not27, label %sqlite3AuthCheck.exit.thread, label %.thread

sqlite3AuthCheck.exit.thread:                     ; preds = %bb.g, %bb.h, %bb.f, %sqlite3AuthCheck.exit
  br label %.thread

.thread:                                          ; preds = %bb.d, %isRealTable.exit, %sqlite3LocateTableItem.exit, %sqlite3AuthCheck.exit.thread, %sqlite3AuthCheck.exit, %sqlite3AuthCheck.exit.thread46, %bb.e
  %.2 = phi ptr [ %i.n, %bb.e ], [ null, %sqlite3AuthCheck.exit.thread46 ], [ %i.n, %sqlite3AuthCheck.exit.thread ], [ null, %sqlite3AuthCheck.exit ], [ null, %sqlite3LocateTableItem.exit ], [ null, %isRealTable.exit ], [ null, %bb.d ]
  tail call fastcc void @sqlite3SrcListDelete(ptr noundef %i.a, ptr noundef nonnull %1)
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @alterFindCol(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !981    ; 3 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %sqlite3DbFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !801    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !800
  %i.e = zext i32 %i.d to i64                     ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %sqlite3DbFree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw nsw i64 %i.e, 1
  %i.g = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.a, i64 noundef %i.f), !inline_history !289 ; 14 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %sqlite3DbFree.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %i.b, i64 range(i64 -2147483648, 4294967296) %i.e, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !733
  %i.i = load i8, ptr %i.g, align 1, !tbaa !733   ; 4 uses
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !733
  %.not.i7.i = icmp sgt i8 %i.l, -1
  br i1 %.not.i7.i, label %.preheader.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i8 %i.i, 91
  %spec.store.select.i.i = select i1 %i.m, i8 93, i8 %i.i ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %bb.e ] ; 3 uses
  %.020.i.i = phi i32 [ %i.x, %bb.h ], [ 1, %bb.e ] ; 3 uses
  %i.n = sext i32 %.020.i.i to i64
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !733   ; 2 uses
  %i.q = icmp eq i8 %i.p, %spec.store.select.i.i
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = add nsw i32 %.020.i.i, 1                 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.g, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !733
  %i.v = icmp eq i8 %i.u, %spec.store.select.i.i
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %spec.store.select.sink.i.i = phi i8 [ %spec.store.select.i.i, %bb.g ], [ %i.p, %bb.f ]
  %.121.i.i = phi i32 [ %i.r, %bb.g ], [ %.020.i.i, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  store i8 %spec.store.select.sink.i.i, ptr %i.w, align 1, !tbaa !733
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %i.x = add nsw i32 %.121.i.i, 1
  br label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv.i.i
  store i8 0, ptr %i.y, align 1, !tbaa !733
  %.pr = load i8, ptr %i.g, align 1, !tbaa !733
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %bb.i
  %i.z = phi i8 [ %i.i, %bb.d ], [ %.pr, %bb.i ]  ; 3 uses
  %.not10.i.i = icmp eq i8 %i.z, 0
  br i1 %.not10.i.i, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.aa = phi i8 [ %i.ag, %.lr.ph.i.i ], [ %i.z, %.preheader.i.i ]
  %.012.i.i = phi i8 [ %i.ae, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.0611.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %i.g, %.preheader.i.i ]
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !733
  %i.ae = add i8 %i.ad, %.012.i.i                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0611.i.i, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !733 ; 2 uses
  %.not.i.i27 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i27, label %sqlite3StrIHash.exit.i, label %.lr.ph.i.i, !llvm.loop !94

sqlite3StrIHash.exit.i:                           ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.07.i.i = phi i8 [ 0, %.preheader.i.i ], [ %i.ae, %.lr.ph.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1150 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 54
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !1151
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.am = and i8 %.07.i.i, 15
  %i.an = zext nneg i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !733 ; 2 uses
  %i.aq = zext i8 %i.ap to i32
  %i.ar = zext i8 %i.ap to i64
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 11
  %i.au = load i8, ptr %i.at, align 1, !tbaa !1153
  %i.av = icmp eq i8 %i.au, %.07.i.i
  br i1 %i.av, label %bb.j, label %sqlite3StrICmp.exit.i

bb.j:                                             ; preds = %sqlite3StrIHash.exit.i
  %i.aw = load ptr, ptr %i.as, align 8, !tbaa !1154
  br label %bb.k

bb.k:                                             ; preds = %bb.n, %bb.j
  %i.ax = phi i8 [ %i.z, %bb.j ], [ %.pre, %bb.n ] ; 3 uses
  %.013.i.i = phi ptr [ %i.aw, %bb.j ], [ %i.bh, %bb.n ] ; 2 uses
  %.012.i24.i = phi ptr [ %i.g, %bb.j ], [ %i.bi, %bb.n ]
  %i.ay = load i8, ptr %.013.i.i, align 1, !tbaa !733 ; 2 uses
  %i.az = icmp eq i8 %i.ay, %i.ax
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp eq i8 %i.ax, 0
  br i1 %i.ba, label %sqlite3ColumnIndex.exit.thread39, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bb = zext i8 %i.ay to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !733
  %i.be = zext i8 %i.ax to i64
  %i.bf = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !733
  %.not.i25.i = icmp eq i8 %i.bd, %i.bg
  br i1 %.not.i25.i, label %bb.n, label %sqlite3StrICmp.exit.i

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i24.i, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.bi, align 1, !tbaa !733
  br label %bb.k

sqlite3StrICmp.exit.i:                            ; preds = %bb.m, %sqlite3StrIHash.exit.i
  %i.bj = tail call i16 @llvm.smax.i16(i16 %i.ak, i16 1)
  %wide.trip.count.i = zext nneg i16 %i.bj to i64
  br label %bb.o

bb.o:                                             ; preds = %sqlite3StrICmp.exit30.i, %sqlite3StrICmp.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sqlite3StrICmp.exit30.i ], [ 0, %sqlite3StrICmp.exit.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.ai, i64 %indvars.iv.i ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 11
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !1153
  %i.bn = icmp eq i8 %i.bm, %.07.i.i
  br i1 %i.bn, label %bb.p, label %sqlite3StrICmp.exit30.i

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !1154
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.p
  %.013.i26.i = phi ptr [ %i.bo, %bb.p ], [ %i.bz, %bb.t ] ; 2 uses
  %.012.i27.i = phi ptr [ %i.g, %bb.p ], [ %i.ca, %bb.t ] ; 2 uses
  %i.bp = load i8, ptr %.013.i26.i, align 1, !tbaa !733 ; 3 uses
  %i.bq = load i8, ptr %.012.i27.i, align 1, !tbaa !733 ; 2 uses
  %i.br = icmp eq i8 %i.bp, %i.bq
  br i1 %i.br, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bs = icmp eq i8 %i.bp, 0
  br i1 %i.bs, label %sqlite3ColumnIndex.exit, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bt = zext i8 %i.bp to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !733
  %i.bw = zext i8 %i.bq to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !733
  %.not.i28.i = icmp eq i8 %i.bv, %i.by
  br i1 %.not.i28.i, label %bb.t, label %sqlite3StrICmp.exit30.i

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %.013.i26.i, i64 1
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i27.i, i64 1
  br label %bb.q

sqlite3StrICmp.exit30.i:                          ; preds = %bb.s, %bb.o
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %sqlite3AuthCheck.exit, label %bb.o

sqlite3ColumnIndex.exit:                          ; preds = %bb.r
  %i.cb = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %sqlite3ColumnIndex.exit.thread39

sqlite3ColumnIndex.exit.thread39:                 ; preds = %bb.l, %sqlite3ColumnIndex.exit
  %.0.ph = phi i32 [ %i.cb, %sqlite3ColumnIndex.exit ], [ %i.aq, %bb.l ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !605 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !1148 ; 2 uses
  %.not.i28 = icmp eq ptr %i.cf, null
  br i1 %.not.i28, label %sqlite3SchemaToIndex.exit, label %.preheader.i

.preheader.i:                                     ; preds = %sqlite3ColumnIndex.exit.thread39, %.preheader.i
  %indvars.iv.i29 = phi i64 [ %indvars.iv.next.i30, %.preheader.i ], [ 0, %sqlite3ColumnIndex.exit.thread39 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.cd, i64 %indvars.iv.i29
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !642
  %i.cj = icmp eq ptr %i.ci, %i.cf
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1
  br i1 %i.cj, label %sqlite3SchemaToIndex.exit, label %.preheader.i

sqlite3SchemaToIndex.exit:                        ; preds = %.preheader.i, %sqlite3ColumnIndex.exit.thread39
  %.1.i = phi i64 [ -32768, %sqlite3ColumnIndex.exit.thread39 ], [ %indvars.iv.i29, %.preheader.i ]
  %i.ck = getelementptr inbounds [32 x i8], ptr %i.cd, i64 %.1.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !875
  %i.cm = sext i32 %.0.ph to i64
  %i.cn = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !1154
  %i.cp = load ptr, ptr %1, align 8, !tbaa !1172
  %i.cq = load ptr, ptr %0, align 8, !tbaa !981   ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 504
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !1222 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.y, label %bb.u

bb.u:                                             ; preds = %sqlite3SchemaToIndex.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 197
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !908
  %.not.i31 = icmp eq i8 %i.cv, 0
  br i1 %.not.i31, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 308
  %i.cx = load i8, ptr %i.cw, align 4, !tbaa !1249
  %.not22.i = icmp eq i8 %i.cx, 0
  br i1 %.not22.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 512
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1223
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !2047
  %i.dc = tail call i32 %i.cs(ptr noundef %i.cz, i32 noundef 26, ptr noundef %i.cl, ptr noundef %i.cp, ptr noundef %i.co, ptr noundef %i.db) #57, !inline_history !2048 ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 1
  br i1 %i.dd, label %.sink.split.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = and i32 %i.dc, -3
  %or.cond.not.i = icmp eq i32 %i.de, 0
  br i1 %or.cond.not.i, label %bb.y, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %bb.w
  %.str.654.sink.i = phi ptr [ @.str.654, %bb.w ], [ @.str.714, %bb.x ]
  %.sink.i = phi i32 [ 23, %bb.w ], [ 1, %bb.x ]
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull %.str.654.sink.i), !inline_history !2048
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sink.i, ptr %i.df, align 8, !tbaa !779
  br label %bb.y

sqlite3AuthCheck.exit:                            ; preds = %sqlite3StrICmp.exit30.i
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1040, ptr noundef nonnull %i.g)
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i, %bb.x, %bb.v, %bb.u, %sqlite3SchemaToIndex.exit, %sqlite3AuthCheck.exit
  %.052.ph = phi i32 [ 1, %sqlite3AuthCheck.exit ], [ 0, %sqlite3SchemaToIndex.exit ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.x ], [ 0, %.sink.split.i ]
  %.02349.ph = phi i32 [ -1, %sqlite3AuthCheck.exit ], [ %.0.ph, %sqlite3SchemaToIndex.exit ], [ %.0.ph, %bb.u ], [ %.0.ph, %bb.v ], [ %.0.ph, %bb.x ], [ %.0.ph, %.sink.split.i ]
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.a, ptr noundef nonnull %i.g)
  br label %sqlite3DbFree.exit

sqlite3DbFree.exit:                               ; preds = %bb.a, %bb.c, %bb.b, %bb.y
  %.0234960 = phi i32 [ %.052.ph, %bb.y ], [ 7, %bb.b ], [ 7, %bb.c ], [ 7, %bb.a ]
  %.05258 = phi i32 [ %.02349.ph, %bb.y ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.a ]
  store i32 %.05258, ptr %3, align 4, !tbaa !570
  ret i32 %.0234960
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3WithDeleteGeneric(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) #0 {
bb.a:
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %sqlite3WithDelete.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.a = load i32, ptr %1, align 8, !tbaa !570
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph.i, label %sqlite3DbFree.exit.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %cteClear.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %cteClear.exit.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %indvars.iv.i ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1852 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %sqlite3ExprListDelete.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @exprListDeleteNN(ptr noundef %0, ptr noundef %i.f), !inline_history !318
  br label %sqlite3ExprListDelete.exit.i.i

sqlite3ExprListDelete.exit.i.i:                   ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1853 ; 2 uses
  %.not.i6.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i6.i.i, label %sqlite3SelectDelete.exit.i.i, label %bb.d

bb.d:                                             ; preds = %sqlite3ExprListDelete.exit.i.i
  tail call fastcc void @clearSelect(ptr noundef %0, ptr noundef nonnull %i.h, i32 noundef 1), !inline_history !319
  br label %sqlite3SelectDelete.exit.i.i

sqlite3SelectDelete.exit.i.i:                     ; preds = %bb.d, %sqlite3ExprListDelete.exit.i.i
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !1854 ; 2 uses
  %.not.i7.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i7.i.i, label %cteClear.exit.i, label %bb.e

bb.e:                                             ; preds = %sqlite3SelectDelete.exit.i.i
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef nonnull %i.i), !inline_history !320
  br label %cteClear.exit.i

cteClear.exit.i:                                  ; preds = %bb.e, %sqlite3SelectDelete.exit.i.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.j = load i32, ptr %1, align 8, !tbaa !570
  %i.k = sext i32 %i.j to i64
  %i.l = icmp slt i64 %indvars.iv.next.i, %i.k
  br i1 %i.l, label %bb.b, label %sqlite3DbFree.exit.i, !llvm.loop !245

sqlite3DbFree.exit.i:                             ; preds = %cteClear.exit.i, %.preheader.i
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef nonnull %1), !inline_history !2177
  br label %sqlite3WithDelete.exit

sqlite3WithDelete.exit:                           ; preds = %bb.a, %sqlite3DbFree.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3WindowOffsetExpr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.Walker, align 8             ; 7 uses
  %3 = alloca %struct.Walker, align 8             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 36 ; 2 uses
  store i16 1, ptr %i.a, align 4, !tbaa !2017
  store ptr null, ptr %3, align 8, !tbaa !2018
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @exprNodeIsConstant, ptr %i.b, align 8, !tbaa !2019
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @sqlite3SelectWalkFail, ptr %i.c, align 8, !tbaa !2020
  %.not.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i, label %sqlite3ExprIsConstant.exit.thread, label %sqlite3ExprIsConstant.exit

sqlite3ExprIsConstant.exit.thread:                ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #57
  br label %sqlite3ExprAlloc.exit

sqlite3ExprIsConstant.exit:                       ; preds = %bb.a
  %i.d = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %3, ptr noundef nonnull %1) #60, !inline_history !287 ; 0 uses
  %.pre.i.i = load i16, ptr %i.a, align 4, !tbaa !2017
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #57
  %i.e = icmp eq i16 %.pre.i.i, 0
  br i1 %i.e, label %bb.b, label %sqlite3ExprAlloc.exit

bb.b:                                             ; preds = %sqlite3ExprIsConstant.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 308 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !1249  ; 2 uses
  %i.h = icmp ugt i8 %i.g, 1
  br i1 %i.h, label %sqlite3RenameExprUnmap.exit, label %sqlite3ExprDelete.exit

sqlite3RenameExprUnmap.exit:                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #57
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i8 0, i64 24, i1 false)
  store ptr %0, ptr %2, align 8, !tbaa !2018
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @renameUnmapExprCb, ptr %i.j, align 8, !tbaa !2019
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr @renameUnmapSelectCb, ptr %i.k, align 8, !tbaa !2020
  store i8 3, ptr %i.f, align 4, !tbaa !1249
  %i.l = call fastcc i32 @sqlite3WalkExprNN(ptr noundef nonnull %2, ptr noundef nonnull %1) #60, !inline_history !302 ; 0 uses
  store i8 %i.g, ptr %i.f, align 4, !tbaa !1249
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #57
  br label %sqlite3ExprDelete.exit

sqlite3ExprDelete.exit:                           ; preds = %sqlite3RenameExprUnmap.exit, %bb.b
  %i.m = load ptr, ptr %0, align 8, !tbaa !981
  call fastcc void @sqlite3ExprDeleteNN(ptr noundef %i.m, ptr noundef %1), !inline_history !3
  %i.n = load ptr, ptr %0, align 8, !tbaa !981
  %i.o = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.n, i64 noundef 72), !inline_history !2063 ; 6 uses
  %.not24.i = icmp eq ptr %i.o, null
  br i1 %.not24.i, label %sqlite3ExprAlloc.exit, label %bb.c

bb.c:                                             ; preds = %sqlite3ExprDelete.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, i8 0, i64 72, i1 false)
  store i8 122, ptr %i.o, align 8, !tbaa !1828
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 50
  store i16 -1, ptr %i.p, align 2, !tbaa !2007
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i32 1, ptr %i.q, align 8, !tbaa !2008
  br label %sqlite3ExprAlloc.exit

sqlite3ExprAlloc.exit:                            ; preds = %bb.c, %sqlite3ExprDelete.exit, %sqlite3ExprIsConstant.exit.thread, %sqlite3ExprIsConstant.exit
  %.0 = phi ptr [ null, %sqlite3ExprIsConstant.exit.thread ], [ %1, %sqlite3ExprIsConstant.exit ], [ null, %sqlite3ExprDelete.exit ], [ %i.o, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @versionFunc(ptr nofree noundef captures(none) %0, i32 %1, ptr nofree readnone captures(none) %2) #0 {
bb.a:
  tail call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull @sqlite3_version, i32 noundef -1, i8 noundef zeroext 1, ptr noundef null), !inline_history !1906
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @loadExt(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !761    ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %sqlite3_value_text.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i16, ptr %i.c, align 4, !tbaa !686  ; 2 uses
  %i.e = and i16 %i.d, 514
  %i.f = icmp eq i16 %i.e, 514
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.h = load i8, ptr %i.g, align 2, !tbaa !787
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !762
  br label %sqlite3_value_text.exit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.l = and i16 %i.d, 1
  %.not9.i.i = icmp eq i16 %i.l, 0
  br i1 %.not9.i.i, label %bb.f, label %sqlite3_value_text.exit

bb.f:                                             ; preds = %bb.e
  %i.m = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.b, i8 noundef zeroext 1), !inline_history !947
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.a, %bb.d, %bb.e, %bb.f
  %.0.i.i = phi ptr [ %i.k, %bb.d ], [ null, %bb.a ], [ %i.m, %bb.f ], [ null, %bb.e ] ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !761    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !683  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  store ptr null, ptr %i.a, align 8, !tbaa !741
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load i64, ptr %i.q, align 8, !tbaa !917
  %i.s = and i64 %i.r, 131072
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sqlite3_value_text.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.u, align 4, !tbaa !570
  %i.v = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %i.n, ptr noundef nonnull @.str.654, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1105 ; 0 uses
  br label %sqlite3_free.exit

bb.h:                                             ; preds = %sqlite3_value_text.exit
  %i.w = icmp eq i32 %1, 2
  br i1 %i.w, label %bb.i, label %sqlite3_value_text.exit15

end_hunk_6
begin_hunk_7_@fixBoundingBox:bb.a
nodeGetCell.exit.preheader:                       ; preds = %bb.c
  %i.ay = zext i8 %.val to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = zext i8 %.val19 to i32
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.bb, 1
  br i1 %i.bc, label %.lr.ph, label %nodeGetCell.exit._crit_edge

.lr.ph:                                           ; preds = %nodeGetCell.exit.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !2935
  %i.bg = icmp eq i8 %i.bf, 0
  %i.bh = zext i8 %.val.i to i64
  %wide.trip.count = zext nneg i32 %i.bb to i64
  %i.bi = tail call i64 @llvm.umax.i64(i64 %i.k, i64 2)
  %i.bj = add nsw i64 %i.bi, -1
  %i.bk = lshr i64 %i.bj, 1                       ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 4 uses
  %min.iters.check59 = icmp eq i64 %i.bk, 0
  %n.vec61 = and i64 %i.bl, 9223372036854775806   ; 3 uses
  %i.bm = shl nuw i64 %n.vec61, 1
  %cmp.n73 = icmp eq i64 %i.bl, %n.vec61
  %min.iters.check = icmp ult i8 %i.j, 7
  %n.vec = and i64 %i.bl, 9223372036854775804     ; 3 uses
  %i.bn = shl nuw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %cellUnion.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %cellUnion.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  %i.bo = mul nuw nsw i64 %indvars.iv, %i.bh
  %i.bp = getelementptr i8, ptr %i.c, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 12
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i25, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.017.i24 = phi ptr [ %i.dc, %bb.e ], [ %i.bq, %bb.d ] ; 9 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i23 ; 2 uses
  %i.bs = load i8, ptr %.017.i24, align 1, !tbaa !733
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw i32 %i.bt, 24
  %i.bv = getelementptr inbounds nuw i8, ptr %.017.i24, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !733
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 16
  %i.bz = or disjoint i32 %i.by, %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %.017.i24, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !733
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = or disjoint i32 %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.017.i24, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !733
  %i.ch = zext i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.ce, %i.ch
  store i32 %i.ci, ptr %i.br, align 8, !tbaa !733
  %i.cj = getelementptr inbounds nuw i8, ptr %.017.i24, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !733
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw i32 %i.cm, 24
  %i.co = getelementptr inbounds nuw i8, ptr %.017.i24, i64 5
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !733
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 16
  %i.cs = or disjoint i32 %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %.017.i24, i64 6
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !733
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = or disjoint i32 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.017.i24, i64 7
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !733
  %i.da = zext i8 %i.cz to i32
  %i.db = or disjoint i32 %i.cx, %i.da
  store i32 %i.db, ptr %i.ck, align 4, !tbaa !733
  %i.dc = getelementptr inbounds nuw i8, ptr %.017.i24, i64 8
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 2 ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next.i25, %i.k
  br i1 %i.dd, label %bb.e, label %nodeGetCell.exit26, !llvm.loop !524

nodeGetCell.exit26:                               ; preds = %bb.e
  br i1 %i.bg, label %.preheader.i.preheader, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %nodeGetCell.exit26
  br i1 %min.iters.check59, label %.preheader57.i.preheader77, label %vector.body62

vector.body62:                                    ; preds = %.preheader57.i.preheader, %vector.body62
  %index63 = phi i64 [ %index.next71, %vector.body62 ], [ 0, %.preheader57.i.preheader ] ; 2 uses
  %i.de = shl nuw i64 %index63, 1                 ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.de ; 2 uses
  %wide.vec64 = load <4 x i32>, ptr %i.df, align 8, !tbaa !733 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.de
  %wide.vec67 = load <4 x i32>, ptr %i.dg, align 8, !tbaa !733 ; 2 uses
  %i.dh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec64, <4 x i32> %wide.vec67)
  %i.di = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec64, <4 x i32> %wide.vec67)
  %interleaved.vec70 = shufflevector <4 x i32> %i.dh, <4 x i32> %i.di, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec70, ptr %i.df, align 8, !tbaa !733
  %index.next71 = add nuw i64 %index63, 2         ; 2 uses
  %i.dj = icmp eq i64 %index.next71, %n.vec61
  br i1 %i.dj, label %middle.block72, label %vector.body62, !llvm.loop !6699

middle.block72:                                   ; preds = %vector.body62
  br i1 %cmp.n73, label %cellUnion.exit, label %.preheader57.i.preheader77

.preheader57.i.preheader77:                       ; preds = %.preheader57.i.preheader, %middle.block72
  %indvars.iv.i27.ph = phi i64 [ 0, %.preheader57.i.preheader ], [ %i.bm, %middle.block72 ]
  br label %.preheader57.i

.preheader.i.preheader:                           ; preds = %nodeGetCell.exit26
  br i1 %min.iters.check, label %.preheader.i.preheader76, label %vector.body

vector.body:                                      ; preds = %.preheader.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.dk = shl nuw i64 %index, 1                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dk ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.dl, align 8, !tbaa !733 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec54 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.dk
  %wide.vec55 = load <8 x float>, ptr %i.dm, align 8, !tbaa !733 ; 2 uses
  %strided.vec56 = shufflevector <8 x float> %wide.vec55, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec57 = shufflevector <8 x float> %wide.vec55, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.dn = fcmp olt <4 x float> %strided.vec, %strided.vec56
  %i.do = select <4 x i1> %i.dn, <4 x float> %strided.vec, <4 x float> %strided.vec56
  %i.dp = fcmp ogt <4 x float> %strided.vec54, %strided.vec57
  %i.dq = select <4 x i1> %i.dp, <4 x float> %strided.vec54, <4 x float> %strided.vec57
  %interleaved.vec = shufflevector <4 x float> %i.do, <4 x float> %i.dq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.dl, align 8, !tbaa !733
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !6700

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %cellUnion.exit, label %.preheader.i.preheader76

.preheader.i.preheader76:                         ; preds = %.preheader.i.preheader, %middle.block
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.bn, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader76, %.preheader.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.preheader.i ], [ %indvars.iv61.i.ph, %.preheader.i.preheader76 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv61.i ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv61.i
  %i.du = load <2 x float>, ptr %i.ds, align 8, !tbaa !733 ; 3 uses
  %i.dv = load <2 x float>, ptr %i.dt, align 8, !tbaa !733 ; 3 uses
  %i.dw = shufflevector <2 x float> %i.du, <2 x float> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.dx = shufflevector <2 x float> %i.dv, <2 x float> %i.du, <2 x i32> <i32 0, i32 3>
  %i.dy = fcmp olt <2 x float> %i.dw, %i.dx
  %i.dz = select <2 x i1> %i.dy, <2 x float> %i.du, <2 x float> %i.dv
  store <2 x float> %i.dz, ptr %i.ds, align 8, !tbaa !733
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %i.ea = icmp samesign ult i64 %indvars.iv.next62.i, %i.k
  br i1 %i.ea, label %.preheader.i, label %cellUnion.exit, !llvm.loop !6701

.preheader57.i:                                   ; preds = %.preheader57.i.preheader77, %.preheader57.i
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i28, %.preheader57.i ], [ %indvars.iv.i27.ph, %.preheader57.i.preheader77 ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i27 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !733
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i27
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !733
  %.56.i = tail call i32 @llvm.smin.i32(i32 %i.ec, i32 %i.ee)
  store i32 %.56.i, ptr %i.eb, align 8, !tbaa !733
  %i.ef = or disjoint i64 %indvars.iv.i27, 1      ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !733
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ef
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !733
  %i.ek = tail call i32 @llvm.smax.i32(i32 %i.eh, i32 %i.ej)
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !733
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 2 ; 2 uses
  %i.el = icmp samesign ult i64 %indvars.iv.next.i28, %i.k
  br i1 %i.el, label %.preheader57.i, label %cellUnion.exit, !llvm.loop !6702

cellUnion.exit:                                   ; preds = %.preheader57.i, %.preheader.i, %middle.block72, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %nodeGetCell.exit._crit_edge, label %bb.d, !llvm.loop !6703

nodeGetCell.exit._crit_edge:                      ; preds = %cellUnion.exit, %nodeGetCell.exit.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !2956 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.a, i64 24
  %.val.i29 = load ptr, ptr %i.eo, align 8, !tbaa !2917 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i29, i64 2
  %.val.i.i = load i8, ptr %i.ep, align 1, !tbaa !733
  %i.eq = getelementptr i8, ptr %.val.i29, i64 3
  %.val11.i.i = load i8, ptr %i.eq, align 1, !tbaa !733
  %i.er = zext i8 %.val.i.i to i32
  %i.es = shl nuw nsw i32 %i.er, 8
  %i.et = zext i8 %.val11.i.i to i32
  %i.eu = or disjoint i32 %i.es, %i.et            ; 2 uses
  %.not.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i, label %nodeParentIndex.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %nodeGetCell.exit._crit_edge
  %i.ev = zext i8 %.val.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.eu to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 2 uses
  %i.ew = mul i64 %indvars.iv.i.i, %i.ev          ; 2 uses
  %i.ex = getelementptr i8, ptr %.val.i29, i64 %i.ew ; 8 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 4
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !733
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw i64 %i.fa, 56
  %i.fc = getelementptr i8, ptr %i.ex, i64 5
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !733
  %i.fe = zext i8 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 48
  %i.fg = or disjoint i64 %i.ff, %i.fb
  %i.fh = getelementptr i8, ptr %i.ex, i64 6
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !733
  %i.fj = zext i8 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 40
  %i.fl = or disjoint i64 %i.fg, %i.fk
  %i.fm = getelementptr i8, ptr %i.ex, i64 7
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !733
  %i.fo = zext i8 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 32
  %i.fq = or disjoint i64 %i.fl, %i.fp
  %i.fr = getelementptr i8, ptr %i.ex, i64 8
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !733
  %i.ft = zext i8 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 24
  %i.fv = or disjoint i64 %i.fq, %i.fu
  %i.fw = getelementptr i8, ptr %i.ex, i64 9
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !733
  %i.fy = zext i8 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 16
  %i.ga = or disjoint i64 %i.fv, %i.fz
  %i.gb = getelementptr i8, ptr %i.ex, i64 10
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !733
  %i.gd = zext i8 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 8
  %i.gf = or disjoint i64 %i.ga, %i.ge
  %i.gg = getelementptr i8, ptr %i.ex, i64 11
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !733
  %i.gi = zext i8 %i.gh to i64
  %i.gj = add nuw i64 %i.gf, %i.gi
  %i.gk = icmp eq i64 %i.gj, %i.en
  br i1 %i.gk, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %nodeParentIndex.exit.thread, label %bb.f, !llvm.loop !527

bb.h:                                             ; preds = %bb.f
  %4 = and i64 %i.ew, 4294967295
  %i.gl = getelementptr i8, ptr %.val.i29, i64 %4 ; 2 uses
  %i.gm = getelementptr i8, ptr %i.gl, i64 4
  %i.gn = bitcast i64 %i.en to <8 x i8>
  %i.go = shufflevector <8 x i8> %i.gn, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.go, ptr %i.gm, align 1, !tbaa !733
  %i.gp = load i8, ptr %i.i, align 1, !tbaa !2899
  %.not.i30 = icmp eq i8 %i.gp, 0
  br i1 %.not.i30, label %nodeOverwriteCell.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.gq = getelementptr i8, ptr %i.gl, i64 12
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i33, %bb.i ] ; 2 uses
  %.015.i = phi ptr [ %i.gq, %.lr.ph.i ], [ %i.hc, %bb.i ] ; 5 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i31
  %.val.i32 = load i32, ptr %i.gr, align 4, !tbaa !733 ; 4 uses
  %i.gs = lshr i32 %.val.i32, 24
  %i.gt = trunc nuw i32 %i.gs to i8
  store i8 %i.gt, ptr %.015.i, align 1, !tbaa !733
  %i.gu = lshr i32 %.val.i32, 16
  %i.gv = trunc i32 %i.gu to i8
  %i.gw = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !733
  %i.gx = lshr i32 %.val.i32, 8
  %i.gy = trunc i32 %i.gx to i8
  %i.gz = getelementptr inbounds nuw i8, ptr %.015.i, i64 2
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !733
  %i.ha = trunc i32 %.val.i32 to i8
  %i.hb = getelementptr inbounds nuw i8, ptr %.015.i, i64 3
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !733
  %i.hc = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i31, 1 ; 2 uses
  %i.hd = load i8, ptr %i.i, align 1, !tbaa !2899
  %i.he = zext i8 %i.hd to i64
  %i.hf = icmp samesign ult i64 %indvars.iv.next.i33, %i.he
  br i1 %i.hf, label %bb.i, label %nodeOverwriteCell.exit, !llvm.loop !534

nodeOverwriteCell.exit:                           ; preds = %bb.i, %bb.h
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 1, ptr %i.hg, align 4, !tbaa !2958
  %i.hh = tail call fastcc i32 @fixBoundingBox(ptr noundef nonnull %0, ptr noundef nonnull %i.a)
  br label %nodeParentIndex.exit.thread

nodeParentIndex.exit.thread:                      ; preds = %bb.g, %nodeGetCell.exit._crit_edge, %nodeOverwriteCell.exit
  %.0 = phi i32 [ %i.hh, %nodeOverwriteCell.exit ], [ 267, %nodeGetCell.exit._crit_edge ], [ 267, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #57
  br label %bb.j

bb.j:                                             ; preds = %nodeParentIndex.exit.thread, %bb.a
  %.1 = phi i32 [ %.0, %nodeParentIndex.exit.thread ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 268) i32 @nodeParentIndex(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #25 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2957   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %nodeRowidIndex.exit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !2956
  %i.d = getelementptr i8, ptr %i.a, i64 24
  %.val = load ptr, ptr %i.d, align 8, !tbaa !2917 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 2
  %.val.i = load i8, ptr %i.e, align 1, !tbaa !733
  %i.f = getelementptr i8, ptr %.val, i64 3
  %.val11.i = load i8, ptr %i.f, align 1, !tbaa !733
  %i.g = zext i8 %.val.i to i32
  %i.h = shl nuw nsw i32 %i.g, 8
  %i.i = zext i8 %.val11.i to i32
  %i.j = or disjoint i32 %i.h, %i.i               ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %nodeRowidIndex.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 39
  %.val12.i = load i8, ptr %i.k, align 1, !tbaa !2918
  %i.l = zext i8 %.val12.i to i64
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.m = mul nuw nsw i64 %indvars.iv.i, %i.l
  %i.n = getelementptr i8, ptr %.val, i64 %i.m    ; 8 uses
  %i.o = getelementptr i8, ptr %i.n, i64 4
  %i.p = load i8, ptr %i.o, align 1, !tbaa !733
  %i.q = zext i8 %i.p to i64
  %i.r = shl nuw i64 %i.q, 56
  %i.s = getelementptr i8, ptr %i.n, i64 5
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 48
  %i.w = or disjoint i64 %i.v, %i.r
  %i.x = getelementptr i8, ptr %i.n, i64 6
  %i.y = load i8, ptr %i.x, align 1, !tbaa !733
  %i.z = zext i8 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 40
  %i.ab = or disjoint i64 %i.w, %i.aa
  %i.ac = getelementptr i8, ptr %i.n, i64 7
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !733
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 32
  %i.ag = or disjoint i64 %i.ab, %i.af
  %i.ah = getelementptr i8, ptr %i.n, i64 8
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !733
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 24
  %i.al = or disjoint i64 %i.ag, %i.ak
  %i.am = getelementptr i8, ptr %i.n, i64 9
  %i.an = load i8, ptr %i.am, align 1, !tbaa !733
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 16
  %i.aq = or disjoint i64 %i.al, %i.ap
  %i.ar = getelementptr i8, ptr %i.n, i64 10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !733
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 8
  %i.av = or disjoint i64 %i.aq, %i.au
  %i.aw = getelementptr i8, ptr %i.n, i64 11
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !733
  %i.ay = zext i8 %i.ax to i64
  %i.az = add nuw i64 %i.av, %i.ay
  %i.ba = icmp eq i64 %i.az, %i.c
  br i1 %i.ba, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bb = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %nodeRowidIndex.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %nodeRowidIndex.exit, label %bb.c, !llvm.loop !527

nodeRowidIndex.exit.sink.split:                   ; preds = %bb.a, %bb.d
  %.sink = phi i32 [ %i.bb, %bb.d ], [ -1, %bb.a ]
  store i32 %.sink, ptr %2, align 4, !tbaa !570
  br label %nodeRowidIndex.exit

nodeRowidIndex.exit:                              ; preds = %bb.e, %nodeRowidIndex.exit.sink.split, %bb.b
  %.0 = phi i32 [ 267, %bb.b ], [ 0, %nodeRowidIndex.exit.sink.split ], [ 267, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @nodeOverwriteCell(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #54 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2917
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.d = load i8, ptr %i.c, align 1, !tbaa !2918
  %i.e = zext i8 %i.d to i32
  %i.f = mul nsw i32 %3, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %i.b, i64 %i.g     ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %i.j = load <8 x i8>, ptr %2, align 8, !tbaa !2939
  %i.k = shufflevector <8 x i8> %i.j, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %i.k, ptr %i.i, align 1, !tbaa !733
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !2899
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr i8, ptr %i.h, i64 12
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.015 = phi ptr [ %i.n, %.lr.ph ], [ %i.aa, %bb.b ] ; 5 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %.val = load i32, ptr %i.p, align 4, !tbaa !733 ; 4 uses
  %i.q = lshr i32 %.val, 24
  %i.r = trunc nuw i32 %i.q to i8
  store i8 %i.r, ptr %.015, align 1, !tbaa !733
  %i.s = lshr i32 %.val, 16
  %i.t = trunc i32 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %.015, i64 1
  store i8 %i.t, ptr %i.u, align 1, !tbaa !733
  %i.v = lshr i32 %.val, 8
  %i.w = trunc i32 %i.v to i8
  %i.x = getelementptr inbounds nuw i8, ptr %.015, i64 2
  store i8 %i.w, ptr %i.x, align 1, !tbaa !733
  %i.y = trunc i32 %.val to i8
  %i.z = getelementptr inbounds nuw i8, ptr %.015, i64 3
  store i8 %i.y, ptr %i.z, align 1, !tbaa !733
  %i.aa = getelementptr inbounds nuw i8, ptr %.015, i64 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i8, ptr %i.l, align 1, !tbaa !2899
  %i.ac = zext i8 %i.ab to i64
  %i.ad = icmp samesign ult i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.b, label %._crit_edge, !llvm.loop !534

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 1, ptr %i.ae, align 4, !tbaa !2958
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 268) i32 @AdjustTree(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #16 {
bb.a:
  %3 = alloca %struct.RtreeCell, align 8          ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !2957   ; 2 uses
  %.not49 = icmp eq ptr %i.a, null
  br i1 %.not49, label %.loopexit45, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 39
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  br label %bb.c

bb.b:                                             ; preds = %cellContains.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  %i.g = add nuw nsw i32 %i.h, 1
  %exitcond = icmp eq i32 %i.h, 100
  br i1 %exitcond, label %.critedge, label %bb.c, !llvm.loop !6704

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i32 [ 1, %.lr.ph ], [ %i.g, %bb.b ]  ; 2 uses
  %.0195070 = phi ptr [ %1, %.lr.ph ], [ %i.i, %bb.b ]
  %i.i = phi ptr [ %i.a, %.lr.ph ], [ %i.hr, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0195070, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !2956
  %i.l = getelementptr i8, ptr %i.i, i64 24
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !2917 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %.val.i.i = load i8, ptr %i.m, align 1, !tbaa !733
  %i.n = getelementptr i8, ptr %.val.i, i64 3
  %.val11.i.i = load i8, ptr %i.n, align 1, !tbaa !733
  %i.o = zext i8 %.val.i.i to i32
  %i.p = shl nuw nsw i32 %i.o, 8
  %i.q = zext i8 %.val11.i.i to i32
  %i.r = or disjoint i32 %i.p, %i.q               ; 2 uses
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %.critedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %.val12.i.i = load i8, ptr %i.b, align 1, !tbaa !2918
  %i.s = zext i8 %.val12.i.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 2 uses
  %i.t = mul i64 %indvars.iv.i.i, %i.s            ; 2 uses
  %i.u = getelementptr i8, ptr %.val.i, i64 %i.t  ; 8 uses
  %i.v = getelementptr i8, ptr %i.u, i64 4
  %i.w = load i8, ptr %i.v, align 1, !tbaa !733
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw i64 %i.x, 56
  %i.z = getelementptr i8, ptr %i.u, i64 5
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !733
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 48
  %i.ad = or disjoint i64 %i.ac, %i.y
  %i.ae = getelementptr i8, ptr %i.u, i64 6
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !733
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 40
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr i8, ptr %i.u, i64 7
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !733
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 32
  %i.an = or disjoint i64 %i.ai, %i.am
  %i.ao = getelementptr i8, ptr %i.u, i64 8
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !733
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 24
  %i.as = or disjoint i64 %i.an, %i.ar
  %i.at = getelementptr i8, ptr %i.u, i64 9
  %i.au = load i8, ptr %i.at, align 1, !tbaa !733
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 16
  %i.ax = or disjoint i64 %i.as, %i.aw
  %i.ay = getelementptr i8, ptr %i.u, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !733
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 8
  %i.bc = or disjoint i64 %i.ax, %i.bb
  %i.bd = getelementptr i8, ptr %i.u, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !733
  %i.bf = zext i8 %i.be to i64
  %i.bg = add nuw i64 %i.bc, %i.bf
  %i.bh = icmp eq i64 %i.bg, %i.k
  br i1 %i.bh, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge, label %bb.d, !llvm.loop !527

bb.f:                                             ; preds = %bb.d
  %4 = and i64 %i.t, 4294967295
  %i.bi = getelementptr i8, ptr %.val.i, i64 %4   ; 9 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 4      ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !733
  %i.bl = zext i8 %i.bk to i64
  %i.bm = shl nuw i64 %i.bl, 56
  %i.bn = getelementptr i8, ptr %i.bi, i64 5
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !733
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 48
  %i.br = or disjoint i64 %i.bq, %i.bm
  %i.bs = getelementptr i8, ptr %i.bi, i64 6
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !733
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 40
  %i.bw = or disjoint i64 %i.br, %i.bv
  %i.bx = getelementptr i8, ptr %i.bi, i64 7
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !733
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 32
  %i.cb = or disjoint i64 %i.bw, %i.ca
  %i.cc = getelementptr i8, ptr %i.bi, i64 8
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !733
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 24
  %i.cg = or disjoint i64 %i.cb, %i.cf
  %i.ch = getelementptr i8, ptr %i.bi, i64 9
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !733
  %i.cj = zext i8 %i.ci to i64
  %i.ck = shl nuw nsw i64 %i.cj, 16
  %i.cl = or disjoint i64 %i.cg, %i.ck
  %i.cm = getelementptr i8, ptr %i.bi, i64 10
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !733
  %i.co = zext i8 %i.cn to i64
  %i.cp = shl nuw nsw i64 %i.co, 8
  %i.cq = or disjoint i64 %i.cl, %i.cp
  %i.cr = getelementptr i8, ptr %i.bi, i64 11
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !733
  %i.ct = zext i8 %i.cs to i64
  %i.cu = add nuw i64 %i.cq, %i.ct
  %i.cv = getelementptr i8, ptr %i.bi, i64 12     ; 2 uses
  %i.cw = load i8, ptr %i.d, align 1, !tbaa !2899 ; 3 uses
  %i.cx = zext i8 %i.cw to i64                    ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.017.i = phi ptr [ %i.ej, %bb.g ], [ %i.cv, %bb.f ] ; 9 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.cz = load i8, ptr %.017.i, align 1, !tbaa !733
  %i.da = zext i8 %i.cz to i32
  %i.db = shl nuw i32 %i.da, 24
  %i.dc = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !733
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw nsw i32 %i.de, 16
  %i.dg = or disjoint i32 %i.df, %i.db
  %i.dh = getelementptr inbounds nuw i8, ptr %.017.i, i64 2
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !733
  %i.dj = zext i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 8
  %i.dl = or disjoint i32 %i.dg, %i.dk
  %i.dm = getelementptr inbounds nuw i8, ptr %.017.i, i64 3
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !733
  %i.do = zext i8 %i.dn to i32
  %i.dp = or disjoint i32 %i.dl, %i.do
  store i32 %i.dp, ptr %i.cy, align 8, !tbaa !733
  %i.dq = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !733
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw i32 %i.dt, 24
  %i.dv = getelementptr inbounds nuw i8, ptr %.017.i, i64 5
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !733
  %i.dx = zext i8 %i.dw to i32
  %i.dy = shl nuw nsw i32 %i.dx, 16
  %i.dz = or disjoint i32 %i.dy, %i.du
  %i.ea = getelementptr inbounds nuw i8, ptr %.017.i, i64 6
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !733
  %i.ec = zext i8 %i.eb to i32
  %i.ed = shl nuw nsw i32 %i.ec, 8
  %i.ee = or disjoint i32 %i.dz, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %.017.i, i64 7
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !733
  %i.eh = zext i8 %i.eg to i32
  %i.ei = or disjoint i32 %i.ee, %i.eh
  store i32 %i.ei, ptr %i.dr, align 4, !tbaa !733
  %i.ej = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ek = icmp samesign ult i64 %indvars.iv.next.i, %i.cx
  br i1 %i.ek, label %bb.g, label %nodeGetCell.exit, !llvm.loop !524

nodeGetCell.exit:                                 ; preds = %bb.g
  %i.el = load i8, ptr %i.e, align 2, !tbaa !2935 ; 2 uses
  %i.em = icmp eq i8 %i.el, 1
  %.not45.i = icmp eq i8 %i.cw, 0                 ; 2 uses
  br i1 %i.em, label %.preheader.i, label %.preheader32.i

.preheader32.i:                                   ; preds = %nodeGetCell.exit
  br i1 %.not45.i, label %cellContains.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %nodeGetCell.exit
  br i1 %.not45.i, label %cellContains.exit, label %.lr.ph40.i

bb.h:                                             ; preds = %.critedge.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 2 ; 2 uses
  %i.en = icmp samesign ult i64 %indvars.iv.next50.i, %i.cx
  br i1 %i.en, label %.lr.ph40.i, label %cellContains.exit, !llvm.loop !532

.lr.ph40.i:                                       ; preds = %.preheader.i, %bb.h
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.h ], [ 0, %.preheader.i ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv49.i ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv49.i ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !733
  %i.er = load i32, ptr %i.eo, align 8, !tbaa !733
  %i.es = icmp slt i32 %i.eq, %i.er
  br i1 %i.es, label %.loopexit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph40.i
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !733
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !733
  %i.ex = icmp sgt i32 %i.eu, %i.ew
  br i1 %i.ex, label %.loopexit, label %bb.h

bb.i:                                             ; preds = %.critedge31.i
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i26, 2 ; 2 uses
  %i.ey = icmp samesign ult i64 %indvars.iv.next.i27, %i.cx
  br i1 %i.ey, label %.lr.ph.i, label %cellContains.exit, !llvm.loop !533

.lr.ph.i:                                         ; preds = %.preheader32.i, %bb.i
  %indvars.iv.i26 = phi i64 [ %indvars.iv.next.i27, %bb.i ], [ 0, %.preheader32.i ] ; 3 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i26 ; 2 uses
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i26 ; 2 uses
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !733
  %i.fc = load float, ptr %i.ez, align 8, !tbaa !733
  %i.fd = fcmp olt float %i.fb, %i.fc
  br i1 %i.fd, label %.loopexit, label %.critedge31.i

.critedge31.i:                                    ; preds = %.lr.ph.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !733
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ez, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !733
  %i.fi = fcmp ogt float %i.ff, %i.fh
  br i1 %i.fi, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %.lr.ph.i, %.critedge31.i, %.critedge.i, %.lr.ph40.i
  %i.fj = icmp eq i8 %i.el, 0
  %i.fk = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 2)
  %i.fl = add nsw i64 %i.fk, -1
  %i.fm = lshr i64 %i.fl, 1                       ; 2 uses
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 4 uses
  br i1 %i.fj, label %.preheader.i30.preheader, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %.loopexit
  %min.iters.check76 = icmp eq i64 %i.fm, 0
  br i1 %min.iters.check76, label %.preheader57.i.preheader93, label %vector.ph77

vector.ph77:                                      ; preds = %.preheader57.i.preheader
  %n.vec78 = and i64 %i.fn, 9223372036854775806   ; 3 uses
  %i.fo = shl nuw i64 %n.vec78, 1
  br label %vector.body79

vector.body79:                                    ; preds = %vector.body79, %vector.ph77
  %index80 = phi i64 [ 0, %vector.ph77 ], [ %index.next88, %vector.body79 ] ; 2 uses
  %i.fp = shl nuw i64 %index80, 1                 ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fp ; 2 uses
  %wide.vec81 = load <4 x i32>, ptr %i.fq, align 8, !tbaa !733 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fp
  %wide.vec84 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !733 ; 2 uses
  %i.fs = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec81, <4 x i32> %wide.vec84)
  %i.ft = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec81, <4 x i32> %wide.vec84)
  %interleaved.vec87 = shufflevector <4 x i32> %i.fs, <4 x i32> %i.ft, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec87, ptr %i.fq, align 8, !tbaa !733
  %index.next88 = add nuw i64 %index80, 2         ; 2 uses
  %i.fu = icmp eq i64 %index.next88, %n.vec78
  br i1 %i.fu, label %middle.block89, label %vector.body79, !llvm.loop !6705

middle.block89:                                   ; preds = %vector.body79
  %cmp.n90 = icmp eq i64 %i.fn, %n.vec78
  br i1 %cmp.n90, label %cellUnion.exit, label %.preheader57.i.preheader93

.preheader57.i.preheader93:                       ; preds = %.preheader57.i.preheader, %middle.block89
  %indvars.iv.i28.ph = phi i64 [ 0, %.preheader57.i.preheader ], [ %i.fo, %middle.block89 ]
  br label %.preheader57.i

.preheader.i30.preheader:                         ; preds = %.loopexit
  %min.iters.check = icmp ult i8 %i.cw, 7
  br i1 %min.iters.check, label %.preheader.i30.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i30.preheader
  %n.vec = and i64 %i.fn, 9223372036854775804     ; 3 uses
  %i.fv = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fw = shl nuw i64 %index, 1                   ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fw ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.fx, align 8, !tbaa !733 ; 2 uses
end_hunk_7
