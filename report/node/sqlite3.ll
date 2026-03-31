begin_hunk_0
  br label %sqlite3PagerBegin.exit.thread147

sqlite3PagerBegin.exit:                           ; preds = %bb.br, %bb.az, %bb.bg, %walLockExclusive.exit.i.i, %bb.bo
  %.028.i = phi i32 [ %i.ix, %bb.bo ], [ %i.gp, %bb.az ], [ %i.ig, %walLockExclusive.exit.i.i ], [ %i.hg, %bb.bg ], [ %i.jg, %bb.br ] ; 2 uses
  %cond = icmp eq i32 %.028.i, 517
  br i1 %cond, label %bb.bt, label %.thread152thread-pre-split

sqlite3PagerBegin.exit.thread147:                 ; preds = %sqlite3WalBeginWriteTransaction.exit.thread56.i, %bb.ba
  %i.jl = call fastcc i32 @newDatabase(ptr noundef nonnull %i.d)
  br label %bb.bu

bb.bt:                                            ; preds = %sqlite3PagerBegin.exit, %sqlite3PagerBegin.exit.thread149
  %i.jm = load i8, ptr %i.cf, align 4, !tbaa !525 ; 2 uses
  %i.jn = icmp eq i8 %i.jm, 0
  %spec.select = select i1 %i.jn, i32 5, i32 517
  br label %.thread152

bb.bu:                                            ; preds = %sqlite3PagerBegin.exit.thread147, %.critedge
  %.4 = phi i32 [ %.2.lcssa, %.critedge ], [ %i.jl, %sqlite3PagerBegin.exit.thread147 ] ; 2 uses
  %.not113 = icmp eq i32 %.4, 0
  br i1 %.not113, label %.critedge7.thread, label %.thread152thread-pre-split

.thread152thread-pre-split:                       ; preds = %lockBtree.exit, %.lr.ph206, %bb.bs, %bb.bu, %sqlite3PagerBegin.exit, %bb.ay, %releasePageOne.exit.i, %btreeGetPage.exit.i, %bb.bi
  %.4155.ph = phi i32 [ %.276125.i, %releasePageOne.exit.i ], [ 5, %bb.bs ], [ %.4, %bb.bu ], [ %i.ct, %btreeGetPage.exit.i ], [ 8, %bb.bi ], [ %.028.i, %sqlite3PagerBegin.exit ], [ 8, %bb.ay ], [ %i.cp, %.lr.ph206 ], [ %i.gk, %lockBtree.exit ]
  %.pr = load i8, ptr %i.cf, align 4, !tbaa !525
  br label %.thread152

.thread152:                                       ; preds = %.thread152thread-pre-split, %bb.bt
  %i.jo = phi i8 [ %.pr, %.thread152thread-pre-split ], [ %i.jm, %bb.bt ]
  %.4155 = phi i32 [ %.4155.ph, %.thread152thread-pre-split ], [ %spec.select, %bb.bt ] ; 8 uses
  %i.jp = icmp eq i8 %i.jo, 0
  br i1 %i.jp, label %bb.bv, label %unlockBtreeIfUnused.exit

end_hunk_0
begin_hunk_1
unlockBtreeIfUnused.exit:                         ; preds = %bb.bx, %bb.bw, %bb.bv, %.thread152
  %i.jy = and i32 %.4155, 255
  %i.jz = icmp eq i32 %i.jy, 5
  br i1 %i.jz, label %bb.by, label %querySharedCacheTableLock.exit

bb.by:                                            ; preds = %unlockBtreeIfUnused.exit
  %i.ka = load i8, ptr %i.cf, align 4, !tbaa !525
end_hunk_1
begin_hunk_2
  store i8 %i.md, ptr %i.me, align 1, !tbaa !204
  br label %querySharedCacheTableLock.exit.thread174

querySharedCacheTableLock.exit:                   ; preds = %unlockBtreeIfUnused.exit
  %3 = icmp eq i32 %.4155, 0
  br i1 %3, label %querySharedCacheTableLock.exit.thread174, label %sqlite3PagerOpenSavepoint.exit

querySharedCacheTableLock.exit.thread174:         ; preds = %bb.cg, %bb.cj, %bb.ch, %bb.d, %sqlite3BtreeEnter.exit, %querySharedCacheTableLock.exit
  %.not117 = icmp eq ptr %2, null
  br i1 %.not117, label %bb.cl, label %bb.ck

end_hunk_2
begin_hunk_3
  %i.mu = call fastcc i32 @pagerOpenSavepoint(ptr noundef nonnull %i.e, i32 noundef %i.mo)
  br label %sqlite3PagerOpenSavepoint.exit

sqlite3PagerOpenSavepoint.exit:                   ; preds = %bb.s, %bb.by, %bb.bz, %bb.ca, %.loopexit179, %btreeInvokeBusyHandler.exit.thread165, %bb.p, %bb.ci, %bb.h, %bb.co, %bb.cn, %bb.cm, %bb.cl, %querySharedCacheTableLock.exit
  %.7 = phi i32 [ 0, %bb.cm ], [ 0, %bb.cl ], [ %.4155, %querySharedCacheTableLock.exit ], [ %i.mu, %bb.co ], [ 0, %bb.cn ], [ %.4155, %btreeInvokeBusyHandler.exit.thread165 ], [ 8, %bb.h ], [ 262, %bb.p ], [ %.4155, %bb.by ], [ %i.lq, %bb.ci ], [ 262, %.loopexit179 ], [ %.4155, %bb.ca ], [ %.4155, %bb.bz ], [ 262, %bb.s ]
  %i.mv = load i8, ptr %i.f, align 1, !tbaa !478
  %.not.i133 = icmp eq i8 %i.mv, 0
  br i1 %.not.i133, label %sqlite3BtreeLeave.exit, label %bb.cp
end_hunk_3
begin_hunk_4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1561
  %i.ab = tail call i32 %i.aa(ptr noundef nonnull %i.x, i32 noundef range(i32 1, 5) 1) #72 ; 2 uses
  switch i32 %i.ab, label %pagerPagecount.exit.thread141 [
    i32 0, label %..thread_crit_edge.i.i
    i32 5, label %bb.g
  ]
end_hunk_4
begin_hunk_5

.thread207:                                       ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #72
  br label %.thread203

bb.o:                                             ; preds = %bb.n, %sqlite3WalDbsize.exit.thread.i.i
  %.042.ph.i = phi i32 [ 0, %sqlite3WalDbsize.exit.thread.i.i ], [ %.117.i.i, %bb.n ]
end_hunk_5
begin_hunk_6
pagerLockDb.exit.i:                               ; preds = %bb.w, %sqlite3OsDelete.exit.i, %bb.s
  %i.co = load ptr, ptr @sqlite3Hooks.1, align 8, !tbaa !1011 ; 2 uses
  %.not.i40.i = icmp eq ptr %i.co, null
  br i1 %.not.i40.i, label %.thread196.thread, label %bb.x

bb.x:                                             ; preds = %pagerLockDb.exit.i
  call void %i.co() #72
  br label %.thread196.thread

bb.y:                                             ; preds = %bb.o, %.thread.i
  br i1 %i.ak, label %.thread49.i, label %bb.z
end_hunk_6
begin_hunk_7
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !1225
  %i.cu = call i32 %i.ct(ptr noundef %i.ag, ptr noundef %i.cq, ptr noundef %i.cr, i32 noundef 2049, ptr noundef nonnull %i.g) #72 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #72
  switch i32 %i.cu, label %.thread203 [
    i32 0, label %.thread49.i
    i32 14, label %.thread203.thread
  ]

.thread49.i:                                      ; preds = %bb.z, %bb.y
end_hunk_7
begin_hunk_8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #72
  br label %bb.ac

.thread196.thread:                                ; preds = %bb.x, %pagerLockDb.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #72
  br label %.thread190

.thread203.thread:                                ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #72
  br label %.thread117

.thread203:                                       ; preds = %bb.z, %.thread207
  %.3.i.ph = phi i32 [ %i.bl, %.thread207 ], [ %i.cu, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #72
  br label %pagerPagecount.exit.thread141

bb.ac:                                            ; preds = %.thread211, %sqlite3OsClose.exit.i
  %.1106 = phi i1 [ true, %.thread211 ], [ %.not145, %sqlite3OsClose.exit.i ]
  %.3.i = phi i32 [ %i.aw, %.thread211 ], [ %spec.store.select.i, %sqlite3OsClose.exit.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #72
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #72
  %.not72 = icmp eq i32 %.3.i, 0
end_hunk_8
begin_hunk_9
bb.ad:                                            ; preds = %bb.ac
  br i1 %.1106, label %.thread190, label %.thread117

.thread117:                                       ; preds = %.thread203.thread, %.thread.i.i, %pager_wait_on_lock.exit.thread, %bb.ad
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.di = load i8, ptr %i.dh, align 2, !tbaa !1542
  %.not74 = icmp eq i8 %i.di, 0
end_hunk_9
begin_hunk_10
  store ptr @getPageError, ptr %i.eu, align 8, !tbaa !411
  br label %pagerPagecount.exit.thread141

.thread190:                                       ; preds = %.thread196.thread, %.thread, %bb.ap, %bb.ad
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ew = load i8, ptr %i.ev, align 8, !tbaa !535
  %.not83 = icmp eq i8 %i.ew, 0
end_hunk_10
begin_hunk_11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #72
  br label %pagerPagecount.exit.thread141

pagerPagecount.exit:                              ; preds = %bb.ax, %.thread199, %bb.bg
  %.8 = phi i32 [ %.7, %.thread199 ], [ %.7, %bb.bg ], [ %i.fd, %bb.ax ] ; 2 uses
  %.not90 = icmp eq i32 %.8, 0
  br i1 %.not90, label %bb.bn, label %pagerPagecount.exit.thread141

pagerPagecount.exit.thread141:                    ; preds = %bb.f, %bb.g, %.thread203, %.thread, %bb.ae, %bb.ac, %.thread117, %.thread120, %bb.aq, %pagerPagecount.exit.thread136, %pagerPagecount.exit
  %.8141 = phi i32 [ %i.ig, %pagerPagecount.exit.thread136 ], [ %.8, %pagerPagecount.exit ], [ %i.dj, %bb.ae ], [ %.3.i, %bb.ac ], [ 776, %.thread117 ], [ %.4123, %.thread120 ], [ %.4123, %bb.aq ], [ %i.ap, %.thread ], [ %.3.i.ph, %.thread203 ], [ 5, %bb.g ], [ %i.ab, %bb.f ]
  call fastcc void @pager_unlock(ptr noundef nonnull %0)
  br label %bb.bo

end_hunk_11
begin_hunk_12
  br label %bb.bo

bb.bo:                                            ; preds = %pagerPagecount.exit.thread141, %bb.bn
  %.8134 = phi i32 [ %.8141, %pagerPagecount.exit.thread141 ], [ 0, %bb.bn ]
  ret i32 %.8134
}

end_hunk_12
begin_hunk_13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.084 = phi i32 [ %i.ag, %bb.d ], [ 0, %bb.c ]  ; 3 uses
  %i.ah = icmp eq i32 %.084, 0
  %i.ai = load i32, ptr %i.h, align 4
  %i.aj = icmp ne i32 %i.ai, 0
end_hunk_13
begin_hunk_14

bb.x:                                             ; preds = %pager_reset.exit, %.lr.ph
  %i.dm = call fastcc i32 @pager_playback_one_page(ptr noundef nonnull %0, ptr noundef nonnull %i.ak, ptr noundef null, i32 noundef 1, i32 noundef 0) ; 2 uses
  switch i32 %i.dm, label %.thread132 [
    i32 0, label %bb.y
    i32 101, label %bb.z
    i32 522, label %.thread127
end_hunk_14
begin_hunk_15
  %.0.ph.be = phi i32 [ %.1188, %bb.z ], [ %i.de, %bb.y ]
  br label %.loopexit.outer

.loopexit163:                                     ; preds = %bb.e
  %i.dq = icmp eq i32 %.084, 0
  br i1 %i.dq, label %.thread127, label %.thread132

.thread132:                                       ; preds = %.loopexit, %bb.x, %.loopexit163, %bb.a, %pager_truncate.exit, %bb.b
  %.2124.ph = phi i32 [ 0, %.loopexit163 ], [ 0, %bb.a ], [ %.0.ph, %pager_truncate.exit ], [ 0, %bb.b ], [ %.1188, %bb.x ], [ %.0.ph, %.loopexit ]
  %.286.ph = phi i32 [ %.084, %.loopexit163 ], [ %i.s, %bb.a ], [ %.1.i, %pager_truncate.exit ], [ %i.ab, %bb.b ], [ %i.dm, %bb.x ], [ %i.ax, %.loopexit ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !535
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 23
end_hunk_15
begin_hunk_16
  br label %.thread158

.thread127:                                       ; preds = %.loopexit, %bb.x, %.loopexit163
  %.2130 = phi i32 [ 0, %.loopexit163 ], [ %.1188, %bb.x ], [ %.0.ph, %.loopexit ] ; 7 uses
  %i.du = call fastcc i32 @sqlite3PagerSetPagesize(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef -1) ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.dw = load i8, ptr %i.dv, align 8, !tbaa !535
end_hunk_16
begin_hunk_17
  %.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not.i.i, label %sqlite3PagerExclusiveLock.exit.thread83, label %bb.d, !llvm.loop !1569

sqlite3PagerExclusiveLock.exit.thread:            ; preds = %bb.d, %bb.b, %.thread.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.x = load i8, ptr %i.w, align 1, !tbaa !591
  %.not60 = icmp eq i8 %i.x, 0
end_hunk_17
begin_hunk_18
  store i8 4, ptr %i.dr, align 1, !tbaa !581
  br label %sqlite3PagerExclusiveLock.exit.thread83

sqlite3PagerExclusiveLock.exit.thread83:          ; preds = %bb.g, %bb.f, %.thread91, %bb.r, %sqlite3OsSync.exit77, %sqlite3OsSync.exit.thread, %bb.a, %sqlite3PcacheClearSyncFlags.exit
  %.3 = phi i32 [ %i.cz, %sqlite3OsSync.exit77 ], [ 0, %sqlite3PcacheClearSyncFlags.exit ], [ %i.d, %bb.a ], [ %i.cm, %sqlite3OsSync.exit.thread ], [ %.0.ph, %.thread91 ], [ %i.de, %bb.r ], [ %i.s, %bb.f ], [ 5, %bb.g ]
  ret i32 %.3
}

end_hunk_18
begin_hunk_19

walBusyLock.exit:                                 ; preds = %walLockExclusive.exit.i, %walLockExclusive.exit.us.i
  %.us-phi.i = phi i32 [ %i.w, %walLockExclusive.exit.us.i ], [ %i.ac, %walLockExclusive.exit.i ] ; 2 uses
  switch i32 %.us-phi.i, label %.thread98 [
    i32 0, label %walBusyLock.exit.thread
    i32 5, label %.thread
  ]
end_hunk_19
begin_hunk_20
  store i8 1, ptr %i.af, align 8, !tbaa !1565
  br label %.thread

.thread:                                          ; preds = %bb.e, %walBusyLock.exit, %walBusyLock.exit.thread, %walLockExclusive.exit.thread, %bb.b
  %.050.ph = phi i32 [ -1, %bb.b ], [ 0, %walLockExclusive.exit.thread ], [ %2, %walBusyLock.exit.thread ], [ 0, %walBusyLock.exit ], [ 0, %bb.e ] ; 11 uses
  %.0.ph = phi ptr [ %3, %bb.b ], [ %3, %walLockExclusive.exit.thread ], [ %3, %walBusyLock.exit.thread ], [ null, %walBusyLock.exit ], [ null, %bb.e ] ; 6 uses
  %i.ag = call fastcc i32 @walIndexReadHdr(ptr noundef nonnull %0, ptr noundef %i.d) ; 2 uses
  %i.ah = load i32, ptr %i.d, align 4, !tbaa !5
  %.not63 = icmp eq i32 %i.ah, 0
  br i1 %.not63, label %bb.h, label %bb.f
end_hunk_20
begin_hunk_21
  %i.ap = tail call i32 %i.ao(ptr noundef nonnull %i.aj, i64 noundef 0, ptr noundef null) #72 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.thread, %bb.f, %bb.g
  %i.aq = icmp eq i32 %i.ag, 0
  br i1 %i.aq, label %bb.i, label %.thread98

bb.i:                                             ; preds = %bb.h
end_hunk_21
begin_hunk_22
  br label %.thread98

bb.m:                                             ; preds = %bb.k, %sqlite3FaultSim.exit
  %.not66 = icmp eq i32 %.050.ph, -1
  br i1 %.not66, label %walCheckpoint.exit.thread107, label %bb.n

bb.n:                                             ; preds = %bb.m
end_hunk_22
begin_hunk_23
  br i1 %i.br, label %bb.p, label %walBusyLock.exit.thread202.i

bb.p:                                             ; preds = %bb.o
  %.not11.i.i = icmp eq ptr %.0.ph, null
  br i1 %.not11.i.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.p
end_hunk_23
begin_hunk_24
  br i1 %i.ce, label %bb.q, label %walBusyLock.exit.i

bb.q:                                             ; preds = %walLockExclusive.exit.i.i
  %i.cf = tail call i32 %.0.ph(ptr noundef %4) #72
  %.not.i.i76 = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i76, label %walBusyLock.exit.thread202.i, label %.split.i.i, !llvm.loop !1896

end_hunk_24
begin_hunk_25
walBusyLock.exit.thread202.i:                     ; preds = %bb.q, %bb.r, %walBusyLock.exit.thread.i, %walBusyLock.exit.i, %bb.o
  %.2113.ph.i = phi i32 [ %i.au, %bb.r ], [ %i.au, %walBusyLock.exit.thread.i ], [ %i.au, %bb.o ], [ %i.bq, %walBusyLock.exit.i ], [ %i.bq, %bb.q ] ; 4 uses
  %.2109.ph.i = phi i32 [ 0, %bb.r ], [ 0, %walBusyLock.exit.thread.i ], [ 0, %bb.o ], [ %.us-phi.i.i, %walBusyLock.exit.i ], [ 5, %bb.q ]
  %.2.ph.i = phi ptr [ %.0.ph, %bb.r ], [ %.0.ph, %walBusyLock.exit.thread.i ], [ %.0.ph, %bb.o ], [ null, %walBusyLock.exit.i ], [ null, %bb.q ] ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.val148.val.i, i64 108 ; 2 uses
  %i.cn = load atomic volatile i32, ptr %i.cm monotonic, align 4 ; 3 uses
  %i.co = icmp ugt i32 %.2113.ph.i, %i.cn
end_hunk_25
begin_hunk_26
walUnlockExclusive.exit176.thread.i:              ; preds = %bb.ay, %walUnlockExclusive.exit176.i, %bb.n
  %.1198.i = phi ptr [ null, %bb.n ], [ %.0197217.i, %walUnlockExclusive.exit176.i ], [ %i.fy, %bb.ay ] ; 4 uses
  %.13.i = phi i32 [ 0, %bb.n ], [ %spec.select.i, %walUnlockExclusive.exit176.i ], [ 0, %bb.ay ] ; 2 uses
  %.3.i = phi ptr [ %.0.ph, %bb.n ], [ %.2.ph.3.i, %walUnlockExclusive.exit176.i ], [ %.2.ph.3.i, %bb.ay ] ; 2 uses
  %i.si = icmp eq i32 %.13.i, 0
  %i.sj = icmp ne i32 %.050.ph, 0
  %or.cond.i = and i1 %i.sj, %i.si
  br i1 %or.cond.i, label %bb.bv, label %walUnlockExclusive.exit.i

end_hunk_26
begin_hunk_27
  br i1 %i.sm, label %walUnlockExclusive.exit.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.sn = icmp sgt i32 %.050.ph, 1
  br i1 %i.sn, label %bb.bx, label %walUnlockExclusive.exit.i

bb.bx:                                            ; preds = %bb.bw
end_hunk_27
begin_hunk_28
  br i1 %i.te, label %walBusyLock.exit186.thread.i, label %walUnlockExclusive.exit188.i

walBusyLock.exit186.thread.i:                     ; preds = %.split.i178.i, %walBusyLock.exit186.i, %.split.us.i183.i
  %i.tf = icmp eq i32 %.050.ph, 3
  br i1 %i.tf, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %walBusyLock.exit186.thread.i
end_hunk_28
begin_hunk_29
  store i32 %i.ul, ptr %9, align 4, !tbaa !5
  br label %.thread98

.thread98:                                        ; preds = %sqlite3_malloc64.exit.i.i, %bb.ab, %bb.l, %walLockExclusive.exit, %walBusyLock.exit, %walCheckpoint.exit, %bb.cj, %bb.ci, %bb.h
  %.05090 = phi i32 [ %.050.ph, %bb.cj ], [ %.050.ph, %bb.ci ], [ %.050.ph, %walCheckpoint.exit ], [ %.050.ph, %bb.h ], [ %2, %walLockExclusive.exit ], [ %2, %walBusyLock.exit ], [ %.050.ph, %bb.l ], [ %.050.ph, %bb.ab ], [ %.050.ph, %sqlite3_malloc64.exit.i.i ]
  %.3 = phi i32 [ %.2111, %bb.cj ], [ %.2111, %bb.ci ], [ %.2, %walCheckpoint.exit ], [ %i.ag, %bb.h ], [ %i.n, %walLockExclusive.exit ], [ %.us-phi.i, %walBusyLock.exit ], [ 11, %bb.l ], [ 7, %bb.ab ], [ 7, %sqlite3_malloc64.exit.i.i ] ; 2 uses
  %i.um = load i32, ptr %i.d, align 4, !tbaa !5
  %.not69 = icmp eq i32 %i.um, 0
  br i1 %.not69, label %bb.cl, label %bb.ck
end_hunk_29
begin_hunk_30
  %i.ct = zext i32 %.0176255 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !204
  %i.cw = and i8 %i.cv, 15                        ; 2 uses
  %i.cx = add nsw i8 %i.cw, -11
  %or.cond7 = icmp ult i8 %i.cx, -4
  br i1 %or.cond7, label %.thread, label %bb.r
end_hunk_30
begin_hunk_31
  br i1 %.not.i, label %jsonLabelCompare.exit, label %jsonLabelCompare.exit.thread

bb.x:                                             ; preds = %bb.v
  %i.dl = tail call fastcc i32 @jsonLabelCompareEscaped(ptr noundef readonly %i.bo, i32 noundef %i.bb, i32 noundef range(i32 0, 2) %i.bs, ptr noundef readonly %i.dk, i32 noundef %i.db, i32 noundef range(i32 0, 2) 0)
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %jsonLabelCompare.exit.thread, label %.thread240

end_hunk_31
begin_hunk_32
  br label %sqlite3Fts3Optimize.exit

sqlite3Fts3Optimize.exit:                         ; preds = %bb.d, %bb.b, %bb.e
  %.1.i = phi i32 [ %spec.select, %bb.d ], [ %i.j, %bb.e ], [ %i.h, %bb.b ] ; 4 uses
  tail call fastcc void @sqlite3Fts3SegmentsClose(ptr noundef nonnull %i.e)
  switch i32 %.1.i, label %bb.g [
    i32 0, label %sqlite3_result_error_code.exit.sink.split
end_hunk_32
begin_hunk_33
  br label %sqlite3_result_error_code.exit.sink.split

bb.g:                                             ; preds = %sqlite3Fts3Optimize.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.1.i, ptr %i.p, align 4, !tbaa !5
  %i.q = load ptr, ptr %0, align 8, !tbaa !232
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 20
  %i.s = load i16, ptr %i.r, align 4, !tbaa !153
end_hunk_33
begin_hunk_34
    i8 108, label %bb.v
    i8 97, label %bb.u
    i8 110, label %bb.t
    i8 98, label %bb.ad
    i8 112, label %.thread193.i.i
    i8 99, label %.thread193.i.i
    i8 121, label %bb.ac
    i8 115, label %.thread192.i.i
    i8 120, label %bb.ae
  ]

end_hunk_34
begin_hunk_35
  br label %.thread193.i.i

.thread193.i.i:                                   ; preds = %bb.ae, %bb.ad, %bb.ac, %.thread192.i.i, %bb.t, %bb.s, %bb.s
  %.0.i71.i.i = phi i64 [ %i.cf, %bb.ae ], [ %i.cc, %bb.ad ], [ %i.cd, %.thread192.i.i ], [ %i.ce, %bb.ac ], [ 1, %bb.t ], [ 1, %bb.s ], [ 1, %bb.s ]
  %i.de = add i64 %.0.i71.i.i, %.051138.i.i       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #72
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
end_hunk_35
begin_hunk_36
  tail call void (ptr, ptr, ...) @sqlite3Fts5ConfigErrmsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1647)
  br label %.thread52

.thread52:                                        ; preds = %bb.i, %fts5LocateTokenizer.exit.thread, %bb.n
  %.03355 = phi i32 [ %i.as, %bb.n ], [ %i.as, %bb.i ], [ 1, %fts5LocateTokenizer.exit.thread ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %.thread47

.thread47:                                        ; preds = %sqlite3Fts5TokenizerPattern.exit, %bb.j, %.thread52
  %.03350 = phi i32 [ %.03355, %.thread52 ], [ 0, %bb.j ], [ 0, %sqlite3Fts5TokenizerPattern.exit ]
  ret i32 %.03350
}

end_hunk_36
begin_hunk_37
  br i1 %i.c, label %bb.b, label %.thread116

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %1, 9                        ; 2 uses
  %i.e = icmp eq ptr %4, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %.thread131, label %bb.c
end_hunk_37
begin_hunk_38
  store i32 %1, ptr %i.ag, align 8, !tbaa !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store ptr %4, ptr %i.aj, align 8, !tbaa !4982
  switch i32 %1, label %bb.ad [
    i32 9, label %bb.q
    i32 1, label %fts5ExprAssignXNext.exit.thread
    i32 2, label %bb.v
  ]

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !5  ; 2 uses
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.r, label %.preheader

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_38
begin_hunk_39

bb.u:                                             ; preds = %bb.t
  store i32 4, ptr %i.ag, align 8, !tbaa !5
  %.pre = load i32, ptr %i.ak, align 8, !tbaa !5
  br label %.preheader

bb.v:                                             ; preds = %bb.p
  br label %bb.ad

fts5ExprAssignXNext.exit.thread:                  ; preds = %bb.p
  br label %bb.ad

fts5ExprAssignXNext.exit.thread144:               ; preds = %bb.s, %bb.r, %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store ptr @fts5ExprNodeNext_STRING, ptr %i.ay, align 8, !tbaa !366
  br label %.lr.ph

.preheader:                                       ; preds = %bb.q, %bb.u
  %5 = phi i32 [ %.pre, %bb.u ], [ %i.al, %bb.q ] ; 2 uses
  %i.az = phi ptr [ @fts5ExprNodeNext_TERM, %bb.u ], [ @fts5ExprNodeNext_STRING, %bb.q ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !366
  %i.bb = icmp sgt i32 %5, 0
  br i1 %i.bb, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %fts5ExprAssignXNext.exit.thread144, %.preheader
  %6 = phi ptr [ %i.ay, %fts5ExprAssignXNext.exit.thread144 ], [ %i.ba, %.preheader ]
  %7 = phi i32 [ 1, %fts5ExprAssignXNext.exit.thread144 ], [ %5, %.preheader ]
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.w

end_hunk_39
begin_hunk_40
  br i1 %i.bi, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %6, align 8, !tbaa !366
  store i32 0, ptr %i.ag, align 8, !tbaa !5
  %.pre.a = load i32, ptr %i.ak, align 8, !tbaa !5
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
end_hunk_40
begin_hunk_41
  tail call fastcc void @sqlite3Fts5ParseNodeFree(ptr noundef nonnull %i.ag)
  br label %.thread116

bb.ad:                                            ; preds = %bb.v, %bb.p, %fts5ExprAssignXNext.exit.thread
  %fts5ExprNodeNext_NOT.sink = phi ptr [ @fts5ExprNodeNext_NOT, %bb.p ], [ @fts5ExprNodeNext_AND, %bb.v ], [ @fts5ExprNodeNext_OR, %fts5ExprAssignXNext.exit.thread ]
  %8 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store ptr %fts5ExprNodeNext_NOT.sink, ptr %8, align 8, !tbaa !366
  tail call fastcc void @fts5ExprAddChildren(ptr noundef %i.ag, ptr noundef %2)
  tail call fastcc void @fts5ExprAddChildren(ptr noundef %i.ag, ptr noundef %3)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
end_hunk_41
