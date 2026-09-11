Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 75
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 106
begin_hunk_0_@sqlite3RunVacuum:bb.a
bb.ad:                                            ; preds = %bb.ac
  %i.cz = tail call i32 @sqlite3_finalize(ptr noundef %i.cq), !inline_history !773
  br label %execSql.exit114

execSql.exit114.thread:                           ; preds = %sqlite3_prepare.exit138.thread, %bb.aa
  %.0.i113.ph = phi i32 [ 7, %bb.aa ], [ 21, %sqlite3_prepare.exit138.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %bb.aw

execSql.exit114:                                  ; preds = %bb.ab, %bb.ad
  %.0.i113 = phi i32 [ %i.cz, %bb.ad ], [ %i.cw, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %.not88 = icmp eq i32 %.0.i113, 0
  br i1 %.not88, label %bb.ae, label %bb.aw

bb.ae:                                            ; preds = %execSql.exit114
  %i.da = tail call fastcc i32 @execExecSql(ptr noundef nonnull %1, ptr noundef nonnull @.str.241) ; 2 uses
  %.not89 = icmp eq i32 %i.da, 0
  br i1 %.not89, label %bb.af, label %bb.aw

bb.af:                                            ; preds = %bb.ae
  %i.db = tail call fastcc i32 @execExecSql(ptr noundef nonnull %1, ptr noundef nonnull @.str.242) ; 2 uses
  %.not90 = icmp eq i32 %i.db, 0
  br i1 %.not90, label %bb.ag, label %bb.aw

bb.ag:                                            ; preds = %bb.af
  %i.dc = tail call fastcc i32 @execExecSql(ptr noundef nonnull %1, ptr noundef nonnull @.str.243) ; 2 uses
  %.not91 = icmp eq i32 %i.dc, 0
  br i1 %.not91, label %bb.ah, label %bb.aw

bb.ah:                                            ; preds = %bb.ag
  %i.dd = tail call fastcc i32 @execExecSql(ptr noundef nonnull %1, ptr noundef nonnull @.str.244) ; 2 uses
  %.not92 = icmp eq i32 %i.dd, 0
  br i1 %.not92, label %bb.ai, label %bb.aw

bb.ai:                                            ; preds = %bb.ah
  %i.de = tail call fastcc i32 @execExecSql(ptr noundef nonnull %1, ptr noundef nonnull @.str.245) ; 2 uses
  %.not93 = icmp eq i32 %i.de, 0
  br i1 %.not93, label %bb.aj, label %bb.aw

bb.aj:                                            ; preds = %bb.ai
  %i.df = tail call fastcc i32 @execExecSql(ptr noundef nonnull %1, ptr noundef nonnull @.str.246) ; 2 uses
  %.not94 = icmp eq i32 %i.df, 0
  br i1 %.not94, label %bb.ak, label %bb.aw

bb.ak:                                            ; preds = %bb.aj
  %i.dg = tail call fastcc i32 @execSql(ptr noundef nonnull %1, ptr noundef nonnull @.str.247) ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.al, label %bb.aw

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #43
  %i.di = call fastcc i32 @sqlite3BtreeGetMeta(ptr noundef nonnull %i.m, i32 noundef 1, ptr noundef %i.d) ; 2 uses
  %.not97 = icmp eq i32 %i.di, 0
  br i1 %.not97, label %bb.at, label %.loopexit

bb.am:                                            ; preds = %bb.at
  %i.dj = call fastcc i32 @sqlite3BtreeGetMeta(ptr noundef nonnull %i.m, i32 noundef 3, ptr noundef %i.d) ; 2 uses
  %.not97.1 = icmp eq i32 %i.dj, 0
  br i1 %.not97.1, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.dk = load i32, ptr %i.d, align 4, !tbaa !112
  %i.dl = tail call fastcc i32 @sqlite3BtreeUpdateMeta(ptr noundef nonnull %i.ak, i32 noundef 3, i32 noundef %i.dk) ; 2 uses
  %.not98.1 = icmp eq i32 %i.dl, 0
  br i1 %.not98.1, label %bb.ao, label %.loopexit

bb.ao:                                            ; preds = %bb.an
  %i.dm = call fastcc i32 @sqlite3BtreeGetMeta(ptr noundef nonnull %i.m, i32 noundef 5, ptr noundef %i.d) ; 2 uses
  %.not97.2 = icmp eq i32 %i.dm, 0
  br i1 %.not97.2, label %bb.ap, label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %i.dn = load i32, ptr %i.d, align 4, !tbaa !112
  %i.do = tail call fastcc i32 @sqlite3BtreeUpdateMeta(ptr noundef nonnull %i.ak, i32 noundef 5, i32 noundef %i.dn) ; 2 uses
  %.not98.2 = icmp eq i32 %i.do, 0
  br i1 %.not98.2, label %bb.aq, label %.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.dp = call fastcc i32 @sqlite3BtreeGetMeta(ptr noundef nonnull %i.m, i32 noundef 6, ptr noundef %i.d) ; 2 uses
  %.not97.3 = icmp eq i32 %i.dp, 0
  br i1 %.not97.3, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.dq = load i32, ptr %i.d, align 4, !tbaa !112
  %i.dr = tail call fastcc i32 @sqlite3BtreeUpdateMeta(ptr noundef nonnull %i.ak, i32 noundef 6, i32 noundef %i.dq) ; 2 uses
  %.not98.3 = icmp eq i32 %i.dr, 0
  br i1 %.not98.3, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %bb.ar
  %i.ds = tail call fastcc i32 @sqlite3BtreeCopyFile(ptr noundef nonnull %i.m, ptr noundef nonnull %i.ak) ; 2 uses
  %.not95 = icmp eq i32 %i.ds, 0
  br i1 %.not95, label %bb.au, label %.loopexit

bb.at:                                            ; preds = %bb.al
  %i.dt = load i32, ptr %i.d, align 4, !tbaa !112
  %i.du = add i32 %i.dt, 1
  %i.dv = tail call fastcc i32 @sqlite3BtreeUpdateMeta(ptr noundef nonnull %i.ak, i32 noundef 1, i32 noundef %i.du) ; 2 uses
  %.not98 = icmp eq i32 %i.dv, 0
  br i1 %.not98, label %bb.am, label %.loopexit

bb.au:                                            ; preds = %bb.as
  %i.dw = tail call fastcc i32 @sqlite3BtreeCommit(ptr noundef nonnull %i.ak) ; 2 uses
  %.not96 = icmp eq i32 %i.dw, 0
  br i1 %.not96, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %bb.au
  %i.dx = tail call fastcc i32 @sqlite3BtreeCommit(ptr noundef nonnull %i.m)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.at, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.au, %bb.as, %bb.av
  %.067 = phi i32 [ %i.dx, %bb.av ], [ %i.ds, %bb.as ], [ %i.dw, %bb.au ], [ %i.di, %bb.al ], [ %i.dv, %bb.at ], [ %i.dj, %bb.am ], [ %i.dl, %bb.an ], [ %i.dm, %bb.ao ], [ %i.do, %bb.ap ], [ %i.dp, %bb.aq ], [ %i.dr, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #43
  br label %bb.aw

.thread:                                          ; preds = %execSql.exit, %bb.b, %execSql.exit.thread
  %.1.ph = phi i32 [ %.0.i.ph, %execSql.exit.thread ], [ 1, %bb.b ], [ %.0.i, %execSql.exit ]
  store i32 %i.f, ptr %i.e, align 8, !tbaa !352
  store i8 1, ptr %i.h, align 8, !tbaa !480
  br label %bb.ay

bb.aw:                                            ; preds = %execSql.exit114.thread, %execSql.exit108.thread, %.loopexit, %sqlite3BtreeSetPageSize.exit, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %execSql.exit114, %execSql.exit108
  %.1 = phi i32 [ %.0.i113.ph, %execSql.exit114.thread ], [ %.0.i107.ph, %execSql.exit108.thread ], [ %.0.i107, %execSql.exit108 ], [ %.0.i113, %execSql.exit114 ], [ %i.da, %bb.ae ], [ %i.db, %bb.af ], [ %i.dc, %bb.ag ], [ %i.dd, %bb.ah ], [ %i.de, %bb.ai ], [ %i.df, %bb.aj ], [ 7, %sqlite3BtreeSetPageSize.exit ], [ %.067, %.loopexit ], [ %i.dg, %bb.ak ] ; 2 uses
  store i32 %i.f, ptr %i.e, align 8, !tbaa !352
  store i8 1, ptr %i.h, align 8, !tbaa !480
  %.not99 = icmp eq ptr %i.ai, null
  br i1 %.not99, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dy = load ptr, ptr %i.aj, align 8, !tbaa !421
  tail call fastcc void @sqlite3BtreeClose(ptr noundef %i.dy)
  store ptr null, ptr %i.aj, align 8, !tbaa !421
  %i.dz = getelementptr i8, ptr %i.ah, i64 -8
  store ptr null, ptr %i.dz, align 8, !tbaa !283
  br label %bb.ay

bb.ay:                                            ; preds = %.thread, %bb.ax, %bb.aw
  %.1173 = phi i32 [ %.1.ph, %.thread ], [ %.1, %bb.ax ], [ %.1, %bb.aw ]
  tail call fastcc void @sqlite3ResetInternalSchema(ptr noundef nonnull %1, i32 noundef 0)
  ret i32 %.1173
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3BtreeIncrVacuum(ptr %.0.val, ptr initializes((8, 16)) %.8.val) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  store ptr %.0.val, ptr %i.a, align 8, !tbaa !434
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 38
  %i.c = load i8, ptr %i.b, align 2, !tbaa !690
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0.in4.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %.05.i = load ptr, ptr %.0.in4.i, align 8, !tbaa !351 ; 2 uses
  %.not6.i = icmp eq ptr %.05.i, null
  br i1 %.not6.i, label %invalidateAllOverflowCache.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %mem.5.promoted.i = load i64, ptr @mem.5, align 8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %invalidateOverflowCache.exit.i, %.lr.ph.preheader.i
  %.07.i = phi ptr [ %.0.i, %invalidateOverflowCache.exit.i ], [ %.05.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.d = phi i64 [ %i.l, %invalidateOverflowCache.exit.i ], [ %mem.5.promoted.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07.i, i64 136 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !553  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %invalidateOverflowCache.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !130
  %sext.i.i.i = shl i64 %i.i, 32
  %i.j = ashr exact i64 %sext.i.i.i, 32
  %i.k = sub nsw i64 %i.d, %i.j                   ; 2 uses
  store i64 %i.k, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.h) #43
  br label %invalidateOverflowCache.exit.i

invalidateOverflowCache.exit.i:                   ; preds = %bb.c, %.lr.ph.i
  %i.l = phi i64 [ %i.d, %.lr.ph.i ], [ %i.k, %bb.c ]
  store ptr null, ptr %i.e, align 8, !tbaa !553
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.07.i, i64 16
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !351 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %invalidateAllOverflowCache.exit, label %.lr.ph.i, !llvm.loop !57

invalidateAllOverflowCache.exit:                  ; preds = %invalidateOverflowCache.exit.i, %bb.b
  %i.m = tail call fastcc i32 @incrVacuumStep(ptr noundef %.8.val, i32 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %invalidateAllOverflowCache.exit
  %.0 = phi i32 [ %i.m, %invalidateAllOverflowCache.exit ], [ 101, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @sqlite3BtreeLockTable(ptr noundef %0, i32 noundef %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #5 {
bb.a:
  %.not = icmp eq i8 %2, 0                        ; 4 uses
  %3 = select i1 %.not, i8 1, i8 2                ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !350  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !437
  %.not.i = icmp eq i8 %i.d, 0
  br i1 %.not.i, label %queryTableLock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !651  ; 2 uses
  %.not29.i = icmp eq ptr %i.f, null
  %.not30.i = icmp eq ptr %i.f, %0
  %or.cond34.i = or i1 %.not29.i, %.not30.i
  br i1 %or.cond34.i, label %bb.c, label %queryTableLock.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !349    ; 3 uses
  %.not31.i = icmp eq ptr %i.g, null              ; 2 uses
  br i1 %.not31.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !352
  %i.j = and i32 %i.i, 16384
  %i.k = icmp eq i32 %i.j, 0
  %not..not = xor i1 %.not, true
  %or.cond.i = or i1 %i.k, %not..not
  %i.l = icmp eq i32 %1, 1
  %or.cond4.i = or i1 %i.l, %or.cond.i
  br i1 %or.cond4.i, label %bb.e, label %.thread.thread

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %.035.i = load ptr, ptr %i.m, align 8, !tbaa !647 ; 3 uses
  %.not3236.i = icmp eq ptr %.035.i, null
  br i1 %.not3236.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  br i1 %.not, label %.lr.ph.split.i, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.g
  %.037.us.i = phi ptr [ %.0.us.i, %bb.g ], [ %.035.i, %.lr.ph.i ] ; 3 uses
  %i.n = load ptr, ptr %.037.us.i, align 8, !tbaa !649
  %.not33.us.i = icmp eq ptr %i.n, %0
  br i1 %.not33.us.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.o = getelementptr inbounds nuw i8, ptr %.037.us.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !737
  %i.q = icmp eq i32 %i.p, %1
  br i1 %i.q, label %queryTableLock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.i
  %i.r = getelementptr inbounds nuw i8, ptr %.037.us.i, i64 16
  %.0.us.i = load ptr, ptr %i.r, align 8, !tbaa !647 ; 2 uses
  %.not32.us.i = icmp eq ptr %.0.us.i, null
  br i1 %.not32.us.i, label %.thread, label %.lr.ph.split.us.i, !llvm.loop !61

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.j
  %.037.i = phi ptr [ %.0.i, %bb.j ], [ %.035.i, %.lr.ph.i ] ; 4 uses
  %i.s = load ptr, ptr %.037.i, align 8, !tbaa !649
  %.not33.i = icmp eq ptr %i.s, %0
  br i1 %.not33.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.t = getelementptr inbounds nuw i8, ptr %.037.i, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !737
  %i.v = icmp eq i32 %i.u, %1
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.037.i, i64 12
  %i.x = load i8, ptr %i.w, align 4, !tbaa !738
  %.not42.i = icmp eq i8 %i.x, 1
  br i1 %.not42.i, label %bb.j, label %queryTableLock.exit

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.split.i
  %i.y = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %.0.i = load ptr, ptr %i.y, align 8, !tbaa !647 ; 2 uses
  %.not32.i = icmp eq ptr %.0.i, null
  br i1 %.not32.i, label %.thread, label %.lr.ph.split.i, !llvm.loop !61

.thread:                                          ; preds = %bb.g, %bb.j, %bb.e
  br i1 %.not31.i, label %bb.k, label %.thread.thread

.thread.thread:                                   ; preds = %bb.d, %.thread
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !352
  %i.ab = and i32 %i.aa, 16384
  %i.ac = icmp ne i32 %i.ab, 0
  %4 = icmp ne i32 %1, 1
  %i.ad = and i1 %4, %i.ac
  %or.cond4.i11 = and i1 %.not, %i.ad
  br i1 %or.cond4.i11, label %queryTableLock.exit, label %bb.k

bb.k:                                             ; preds = %.thread.thread, %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 3 uses
  %.043.i = load ptr, ptr %i.ae, align 8, !tbaa !647 ; 2 uses
  %.not3744.i = icmp eq ptr %.043.i, null
  br i1 %.not3744.i, label %._crit_edge.i, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.k, %bb.m
  %.045.i = phi ptr [ %.0.i13, %bb.m ], [ %.043.i, %bb.k ] ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.045.i, i64 8
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !737
  %i.ah = icmp eq i32 %i.ag, %1
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i12
  %i.ai = load ptr, ptr %.045.i, align 8, !tbaa !649
  %i.aj = icmp eq ptr %i.ai, %0
  br i1 %i.aj, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i12
  %i.ak = getelementptr inbounds nuw i8, ptr %.045.i, i64 16
  %.0.i13 = load ptr, ptr %i.ak, align 8, !tbaa !647 ; 2 uses
  %.not37.i = icmp eq ptr %.0.i13, null
  br i1 %.not37.i, label %._crit_edge.i, label %.lr.ph.i12, !llvm.loop !62

._crit_edge.i:                                    ; preds = %bb.m, %bb.k
  %i.al = tail call ptr @sqlite3_malloc(i32 noundef 24) ; 7 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %queryTableLock.exit, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %._crit_edge.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.am, i8 0, i64 12, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %1, ptr %i.an, align 8, !tbaa !737
  store ptr %0, ptr %i.al, align 8, !tbaa !649
  %i.ao = load ptr, ptr %i.ae, align 8, !tbaa !739
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !650
  store ptr %i.al, ptr %i.ae, align 8, !tbaa !739
  br label %bb.n

.loopexit.i:                                      ; preds = %bb.l
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.045.i, i64 12
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !738
  %5 = icmp ugt i8 %3, %.pre
  br i1 %5, label %bb.n, label %queryTableLock.exit

bb.n:                                             ; preds = %.loopexit.i.thread, %.loopexit.i
  %.1.i26 = phi ptr [ %i.al, %.loopexit.i.thread ], [ %.045.i, %.loopexit.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i26, i64 12
  store i8 %3, ptr %i.aq, align 4, !tbaa !738
  br label %queryTableLock.exit

queryTableLock.exit:                              ; preds = %bb.f, %bb.i, %bb.a, %bb.n, %.loopexit.i, %._crit_edge.i, %.thread.thread, %bb.b
  %.0 = phi i32 [ 6, %bb.i ], [ 7, %._crit_edge.i ], [ 6, %bb.b ], [ 0, %bb.a ], [ 0, %.loopexit.i ], [ 0, %.thread.thread ], [ 0, %bb.n ], [ 6, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VtabBegin(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.e = load i32, ptr %i.d, align 8, !tbaa !419
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %addToVTrans.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %addToVTrans.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %1, align 8, !tbaa !257
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1434 ; 2 uses
  %.not28 = icmp eq ptr %i.i, null
  br i1 %.not28, label %addToVTrans.exit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !419  ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %.lr.ph

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !1433

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !420  ; 2 uses
  %.not29 = icmp eq ptr %i.n, null
  br i1 %.not29, label %.critedge, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.o = icmp eq ptr %i.n, %1
  br i1 %i.o, label %addToVTrans.exit, label %bb.e

.critedge:                                        ; preds = %.lr.ph, %bb.e, %.preheader
  %i.p = tail call i32 %i.i(ptr noundef nonnull %1) #43 ; 2 uses
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %bb.g, label %addToVTrans.exit

bb.g:                                             ; preds = %.critedge
  %i.q = load i32, ptr %i.j, align 8, !tbaa !419  ; 3 uses
  %i.r = srem i32 %i.q, 5
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.h, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !418
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.u = load i8, ptr %i.t, align 2, !tbaa !202
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.i, label %addToVTrans.exit

bb.i:                                             ; preds = %bb.h
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !418
  %i.x = shl i32 %i.q, 3
  %i.y = add i32 %i.x, 40
  %i.z = tail call ptr @sqlite3_realloc(ptr noundef %i.w, i32 noundef %i.y) ; 4 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.j, label %sqlite3DbRealloc.exit.i

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.t, align 2, !tbaa !202
  br label %addToVTrans.exit

sqlite3DbRealloc.exit.i:                          ; preds = %bb.i
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !419
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  store ptr %i.z, ptr %i.a, align 8, !tbaa !418
  %.pre19.i = load i32, ptr %i.j, align 8, !tbaa !419
  br label %bb.k

bb.k:                                             ; preds = %sqlite3DbRealloc.exit.i, %._crit_edge.i
  %i.ad = phi i32 [ %i.q, %._crit_edge.i ], [ %.pre19.i, %sqlite3DbRealloc.exit.i ] ; 2 uses
  %i.ae = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.z, %sqlite3DbRealloc.exit.i ]
  %i.af = add nsw i32 %i.ad, 1
  store i32 %i.af, ptr %i.j, align 8, !tbaa !419
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
  store ptr %1, ptr %i.ah, align 8, !tbaa !420
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !410
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !410
  br label %addToVTrans.exit

addToVTrans.exit:                                 ; preds = %bb.f, %.critedge, %bb.h, %bb.j, %bb.k, %bb.d, %bb.c, %bb.b
  %.124 = phi i32 [ 6, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.k ], [ %i.p, %.critedge ], [ 7, %bb.h ], [ 7, %bb.j ], [ 0, %bb.f ]
  ret i32 %.124
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @sqlite3VtabCallCreate(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !279
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [48 x i8], ptr %i.b, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !429
  %i.f = tail call fastcc ptr @sqlite3FindTable(ptr noundef %0, ptr noundef %2, ptr noundef %i.e) ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !774  ; 3 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !413
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !150
  %i.l = tail call ptr (ptr, ptr, ...) @sqlite3MPrintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.248, ptr noundef %i.k)
  store ptr %i.l, ptr %3, align 8, !tbaa !150
  br label %addToVTrans.exit

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !371
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1435
  %i.p = tail call fastcc i32 @vtabCallConstructor(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef %i.h, ptr noundef %i.o, ptr noundef %3) ; 2 uses
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.c, label %addToVTrans.exit

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !409  ; 3 uses
  %.not21 = icmp eq ptr %i.s, null
  br i1 %.not21, label %addToVTrans.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !419  ; 3 uses
  %i.v = srem i32 %i.u, 5
  %i.w = icmp eq i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  br i1 %i.w, label %bb.e, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d
  %.pre.i = load ptr, ptr %i.x, align 8, !tbaa !418
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.z = load i8, ptr %i.y, align 2, !tbaa !202
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.f, label %addToVTrans.exit

bb.f:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !418
  %i.ac = shl i32 %i.u, 3
  %i.ad = add i32 %i.ac, 40
  %i.ae = tail call ptr @sqlite3_realloc(ptr noundef %i.ab, i32 noundef %i.ad) ; 4 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %bb.g, label %sqlite3DbRealloc.exit.i

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.y, align 2, !tbaa !202
  br label %addToVTrans.exit

sqlite3DbRealloc.exit.i:                          ; preds = %bb.f
  %i.af = load i32, ptr %i.t, align 8, !tbaa !419
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ah, i8 0, i64 40, i1 false)
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !418
  %.pre19.i = load i32, ptr %i.t, align 8, !tbaa !419
  br label %bb.h

bb.h:                                             ; preds = %sqlite3DbRealloc.exit.i, %._crit_edge.i
end_hunk_0
begin_hunk_1_@sqlite3Pragma:bb.a
    i32 -2, label %sqlite3VdbeChangeP1.exit864._crit_edge
  ]

sqlite3VdbeChangeP1.exit864._crit_edge:           ; preds = %sqlite3VdbeChangeP1.exit864
  %.phi.trans.insert1311 = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 24
  %.pre1312 = load i32, ptr %.phi.trans.insert1311, align 8, !tbaa !208
  br label %bb.it

.sink.split:                                      ; preds = %bb.ip, %bb.io, %bb.in
  %i.anz = tail call i64 @__isoc23_strtol(ptr noundef nonnull %.0, ptr noundef null, i32 noundef 10) #43
  br label %bb.iq

bb.iq:                                            ; preds = %sqlite3VdbeChangeP1.exit864, %.sink.split
  %.in = phi i64 [ %i.any, %sqlite3VdbeChangeP1.exit864 ], [ %i.anz, %.sink.split ]
  %i.aoa = add nsw i32 %i.ano, 1                  ; 2 uses
  %i.aob = trunc i64 %.in to i32
  %i.aoc = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 24
  %i.aod = load i32, ptr %i.aoc, align 8, !tbaa !208 ; 2 uses
  %i.aoe = icmp sgt i32 %i.aod, %i.aoa
  br i1 %i.aoe, label %bb.ir, label %sqlite3VdbeChangeP1.exit866.thread

bb.ir:                                            ; preds = %bb.iq
  %i.aof = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 32
  %i.aog = load ptr, ptr %i.aof, align 8, !tbaa !209 ; 2 uses
  %.not.i865 = icmp eq ptr %i.aog, null
  br i1 %.not.i865, label %sqlite3VdbeChangeP1.exit866.thread, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.aoh = zext nneg i32 %i.aoa to i64
  %i.aoi = getelementptr inbounds nuw [24 x i8], ptr %i.aog, i64 %i.aoh
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoi, i64 4
  store i32 %i.aob, ptr %i.aoj, align 4, !tbaa !214
  br label %sqlite3VdbeChangeP1.exit866.thread

sqlite3VdbeChangeP1.exit866.thread:               ; preds = %bb.iq, %bb.ir, %bb.is
  %i.aok = add nsw i32 %i.ano, 2
  br label %bb.it

bb.it:                                            ; preds = %sqlite3VdbeChangeP1.exit864._crit_edge, %sqlite3VdbeChangeP1.exit866.thread
  %i.aol = phi i32 [ %i.aod, %sqlite3VdbeChangeP1.exit866.thread ], [ %.pre1312, %sqlite3VdbeChangeP1.exit864._crit_edge ]
  %i.aom = phi i32 [ %i.aok, %sqlite3VdbeChangeP1.exit866.thread ], [ 0, %sqlite3VdbeChangeP1.exit864._crit_edge ] ; 2 uses
  %i.aon = icmp sgt i32 %i.aol, %i.aom
  br i1 %i.aon, label %bb.iu, label %sqlite3VdbeChangeP2.exit871.thread

bb.iu:                                            ; preds = %bb.it
  %i.aoo = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 32
  %i.aop = load ptr, ptr %i.aoo, align 8, !tbaa !209 ; 2 uses
  %.not.i867 = icmp eq ptr %i.aop, null
  br i1 %.not.i867, label %sqlite3VdbeChangeP2.exit871.thread, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.aoq = zext nneg i32 %i.aom to i64
  %i.aor = getelementptr inbounds nuw [24 x i8], ptr %i.aop, i64 %i.aoq ; 2 uses
  %i.aos = getelementptr inbounds nuw i8, ptr %i.aor, i64 4
  store i32 %.015.i898, ptr %i.aos, align 4, !tbaa !214
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aor, i64 8
  store i32 %.0589, ptr %i.aot, align 8, !tbaa !213
  br label %sqlite3VdbeChangeP2.exit871.thread

bb.iw:                                            ; preds = %.thread961, %bb.il
  %.0589968 = phi i32 [ 1, %.thread961 ], [ %.0589, %bb.il ]
  %.0603967 = phi i32 [ %i.ann, %.thread961 ], [ %.015.i898, %bb.il ]
  %i.aou = tail call fastcc i32 @sqlite3VdbeAddOpList(ptr noundef %.0.i11.i.i, i32 noundef 2, ptr noundef nonnull @sqlite3Pragma.readCookie) ; 3 uses
  %i.aov = icmp sgt i32 %i.aou, -1
  br i1 %i.aov, label %bb.ix, label %sqlite3VdbeChangeP3.exit

bb.ix:                                            ; preds = %bb.iw
  %i.aow = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 24
  %i.aox = load i32, ptr %i.aow, align 8, !tbaa !208
  %i.aoy = icmp sgt i32 %i.aox, %i.aou
  br i1 %i.aoy, label %bb.iy, label %sqlite3VdbeChangeP3.exit

bb.iy:                                            ; preds = %bb.ix
  %i.aoz = getelementptr inbounds nuw i8, ptr %.0.i11.i.i, i64 32
  %i.apa = load ptr, ptr %i.aoz, align 8, !tbaa !209 ; 2 uses
  %.not.i872 = icmp eq ptr %i.apa, null
  br i1 %.not.i872, label %sqlite3VdbeChangeP3.exit, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.apb = zext nneg i32 %i.aou to i64
  %i.apc = getelementptr inbounds nuw [24 x i8], ptr %i.apa, i64 %i.apb ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 4
  store i32 %.0603967, ptr %i.apd, align 4, !tbaa !214
  %i.ape = getelementptr inbounds nuw i8, ptr %i.apc, i64 12
  store i32 %.0589968, ptr %i.ape, align 4, !tbaa !245
  br label %sqlite3VdbeChangeP3.exit

sqlite3VdbeChangeP3.exit:                         ; preds = %bb.iy, %bb.ix, %bb.iw, %bb.iz
  tail call fastcc void @sqlite3VdbeSetNumCols(ptr noundef nonnull %.0.i11.i.i, i32 noundef 1)
  tail call fastcc void @sqlite3VdbeSetColName(ptr noundef nonnull %.0.i11.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.ax, i32 noundef -9)
  br label %sqlite3VdbeChangeP2.exit871.thread

sqlite3VdbeChangeP2.exit871:                      ; preds = %._crit_edge1023, %bb.fr, %bb.gc, %bb.fp
  %.4 = phi ptr [ %i.abo, %bb.gc ], [ %i.zi, %bb.fr ], [ %i.zi, %bb.fp ], [ %i.abo, %._crit_edge1023 ] ; 2 uses
  %.not715 = icmp eq ptr %.4, null
  br i1 %.not715, label %sqlite3_free.exit887, label %sqlite3VdbeChangeP2.exit871.thread

sqlite3VdbeChangeP2.exit871.thread:               ; preds = %.lr.ph1031, %bb.fw, %bb.fl, %bb.fg, %bb.cm, %resizeOpArray.exit.i.i1483, %sqlite3VdbeChangeP1.exit864, %bb.iu, %bb.it, %bb.fy, %bb.fu, %bb.fk, %bb.ez, %bb.gb, %bb.fo, %.loopexit981, %bb.ie, %bb.id, %bb.ic, %bb.fj, %bb.ey, %bb.cv, %bb.dj, %sqlite3VdbeChangeP1.exit807, %sqlite3BtreeGetAutoVacuum.exit, %sqlite3BtreeSetAutoVacuum.exit, %bb.ct, %bb.av, %bb.au, %sqlite3VdbeChangeP1.exit.thread, %sqlite3VdbeChangeP1.exit, %sqlite3VdbeJumpHere.exit, %bb.iv, %sqlite3VdbeChangeP3.exit, %bb.bf, %bb.be, %.thread949, %bb.gg, %bb.gh, %bb.bd, %bb.ev, %bb.er, %bb.et, %bb.eu, %bb.ed, %bb.ee, %bb.en, %bb.em, %bb.dz, %bb.ea, %bb.dv, %bb.dw, %sqlite3VdbeJumpHere.exit812.thread, %bb.bl, %bb.ih, %sqlite3VdbeChangeP2.exit871
  %.1960 = phi ptr [ %.0, %sqlite3VdbeChangeP2.exit871 ], [ %.0, %bb.iv ], [ %.0, %bb.cm ], [ %.0, %bb.iu ], [ %.0, %bb.gb ], [ null, %.loopexit981 ], [ %.0, %sqlite3VdbeChangeP3.exit ], [ %.0, %bb.bf ], [ %.0, %bb.be ], [ %.0, %bb.fk ], [ %.0, %bb.ez ], [ %.0, %.thread949 ], [ null, %bb.gg ], [ %.0, %bb.gh ], [ null, %bb.bd ], [ %.0, %bb.fj ], [ %.0, %bb.ey ], [ %.0, %bb.cv ], [ %.0, %bb.ev ], [ null, %bb.er ], [ %.0, %bb.et ], [ %.0, %bb.eu ], [ null, %bb.ed ], [ null, %bb.ee ], [ %.0, %bb.en ], [ null, %bb.em ], [ null, %bb.dz ], [ %.0, %bb.ea ], [ null, %bb.dv ], [ %.0, %bb.dw ], [ %.0, %sqlite3VdbeJumpHere.exit812.thread ], [ null, %bb.av ], [ %.0, %bb.fw ], [ %.0, %bb.bl ], [ %.0, %bb.ih ], [ %.0, %sqlite3VdbeJumpHere.exit ], [ null, %sqlite3VdbeChangeP1.exit ], [ null, %sqlite3VdbeChangeP1.exit.thread ], [ null, %bb.au ], [ %.0, %bb.ct ], [ %.0, %sqlite3BtreeSetAutoVacuum.exit ], [ null, %sqlite3BtreeGetAutoVacuum.exit ], [ %.0, %sqlite3VdbeChangeP1.exit807 ], [ %.0, %bb.dj ], [ %.0, %bb.fo ], [ %.0, %bb.fu ], [ %.0, %bb.ic ], [ %.0, %bb.id ], [ %.0, %bb.ie ], [ %.0, %sqlite3VdbeChangeP1.exit864 ], [ %.0, %bb.fy ], [ %.0, %bb.it ], [ %.0, %bb.fg ], [ %.0, %bb.fl ], [ %.0, %resizeOpArray.exit.i.i1483 ], [ %.0, %.lr.ph1031 ] ; 3 uses
  %.4959 = phi ptr [ %.4, %sqlite3VdbeChangeP2.exit871 ], [ %.0.i11.i.i, %bb.iv ], [ %.0.i11.i.i, %bb.cm ], [ %.0.i11.i.i, %bb.iu ], [ %.0.i11.i.i, %bb.gb ], [ %.0.i11.i.i, %.loopexit981 ], [ %.0.i11.i.i, %sqlite3VdbeChangeP3.exit ], [ %.0.i11.i.i, %bb.bf ], [ %.0.i11.i.i, %bb.be ], [ %.0.i11.i.i, %bb.fk ], [ %.0.i11.i.i, %bb.ez ], [ %.0.i11.i.i, %.thread949 ], [ %.0.i11.i.i, %bb.gg ], [ %.0.i11.i.i, %bb.gh ], [ %.0.i11.i.i, %bb.bd ], [ %.0.i11.i.i, %bb.fj ], [ %.0.i11.i.i, %bb.ey ], [ %.0.i11.i.i, %bb.cv ], [ %.0.i11.i.i, %bb.ev ], [ %.0.i11.i.i, %bb.er ], [ %.0.i11.i.i, %bb.et ], [ %.0.i11.i.i, %bb.eu ], [ %.0.i11.i.i, %bb.ed ], [ %.0.i11.i.i, %bb.ee ], [ %.0.i11.i.i, %bb.en ], [ %.0.i11.i.i, %bb.em ], [ %.0.i11.i.i, %bb.dz ], [ %.0.i11.i.i, %bb.ea ], [ %.0.i11.i.i, %bb.dv ], [ %.0.i11.i.i, %bb.dw ], [ %.0.i11.i.i, %sqlite3VdbeJumpHere.exit812.thread ], [ %.0.i11.i.i, %bb.av ], [ %.0.i11.i.i, %bb.fw ], [ %.0.i11.i.i, %bb.bl ], [ %.0.i11.i.i, %bb.ih ], [ %.0.i11.i.i, %sqlite3VdbeJumpHere.exit ], [ %.0.i11.i.i, %sqlite3VdbeChangeP1.exit ], [ %.0.i11.i.i, %sqlite3VdbeChangeP1.exit.thread ], [ %.0.i11.i.i, %bb.au ], [ %.0.i11.i.i, %bb.ct ], [ %.0.i11.i.i, %sqlite3BtreeSetAutoVacuum.exit ], [ %.0.i11.i.i, %sqlite3BtreeGetAutoVacuum.exit ], [ %.0.i11.i.i, %sqlite3VdbeChangeP1.exit807 ], [ %.0.i11.i.i, %bb.dj ], [ %.0.i11.i.i, %bb.fo ], [ %.0.i11.i.i, %bb.fu ], [ %.0.i11.i.i, %bb.ic ], [ %.0.i11.i.i, %bb.id ], [ %.0.i11.i.i, %bb.ie ], [ %.0.i11.i.i, %sqlite3VdbeChangeP1.exit864 ], [ %.0.i11.i.i, %bb.fy ], [ %.0.i11.i.i, %bb.it ], [ %.0.i11.i.i, %bb.fg ], [ %.0.i11.i.i, %bb.fl ], [ %.0.i11.i.i, %resizeOpArray.exit.i.i1483 ], [ %.0.i11.i.i, %.lr.ph1031 ] ; 7 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %.4959, i64 24 ; 3 uses
  %i.apg = load i32, ptr %i.apf, align 8, !tbaa !208 ; 3 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %.4959, i64 28 ; 2 uses
  %i.api = load i32, ptr %i.aph, align 4, !tbaa !215 ; 6 uses
  %.not.i.i875 = icmp sgt i32 %i.api, %i.apg
  br i1 %.not.i.i875, label %bb.je, label %bb.ja

bb.ja:                                            ; preds = %sqlite3VdbeChangeP2.exit871.thread
  %.not23.i.i876 = icmp eq i32 %i.api, 0
  %i.apj = shl nsw i32 %i.api, 1
  %spec.select.i.i877 = select i1 %.not23.i.i876, i32 42, i32 %i.apj ; 4 uses
  %i.apk = load ptr, ptr %.4959, align 8, !tbaa !179
  %i.apl = getelementptr inbounds nuw i8, ptr %.4959, i64 32 ; 2 uses
  %i.apm = getelementptr inbounds nuw i8, ptr %i.apk, i64 42 ; 2 uses
  %i.apn = load i8, ptr %i.apm, align 2, !tbaa !202
  %i.apo = icmp eq i8 %i.apn, 0
  br i1 %i.apo, label %bb.jb, label %resizeOpArray.exit.i.i878

bb.jb:                                            ; preds = %bb.ja
  %i.app = mul i32 %spec.select.i.i877, 24
  %i.apq = load ptr, ptr %i.apl, align 8, !tbaa !209
  %i.apr = tail call ptr @sqlite3_realloc(ptr noundef %i.apq, i32 noundef %i.app) ; 3 uses
  %.not.i.i.i.i883 = icmp eq ptr %i.apr, null
  br i1 %.not.i.i.i.i883, label %bb.jc, label %sqlite3DbRealloc.exit.i.i.i884

bb.jc:                                            ; preds = %bb.jb
  store i8 1, ptr %i.apm, align 2, !tbaa !202
  br label %resizeOpArray.exit.i.i878

sqlite3DbRealloc.exit.i.i.i884:                   ; preds = %bb.jb
  store i32 %spec.select.i.i877, ptr %i.aph, align 4, !tbaa !215
  store ptr %i.apr, ptr %i.apl, align 8, !tbaa !209
  %i.aps = icmp sgt i32 %spec.select.i.i877, %i.api
  br i1 %i.aps, label %bb.jd, label %resizeOpArray.exit.i.i878

bb.jd:                                            ; preds = %sqlite3DbRealloc.exit.i.i.i884
  %i.apt = sext i32 %i.api to i64
  %i.apu = getelementptr inbounds [24 x i8], ptr %i.apr, i64 %i.apt
  %i.apv = sub nsw i32 %spec.select.i.i877, %i.api
  %i.apw = zext nneg i32 %i.apv to i64
  %i.apx = mul nuw nsw i64 %i.apw, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.apu, i8 0, i64 %i.apx, i1 false)
  br label %resizeOpArray.exit.i.i878

resizeOpArray.exit.i.i878:                        ; preds = %bb.jd, %sqlite3DbRealloc.exit.i.i.i884, %bb.jc, %bb.ja
  %i.apy = load ptr, ptr %.4959, align 8, !tbaa !179
  %i.apz = getelementptr inbounds nuw i8, ptr %i.apy, i64 42
  %i.aqa = load i8, ptr %i.apz, align 2, !tbaa !202
  %.not24.i.i879 = icmp eq i8 %i.aqa, 0
  br i1 %.not24.i.i879, label %resizeOpArray.exit._crit_edge.i.i881, label %sqlite3VdbeAddOp2.exit885

resizeOpArray.exit._crit_edge.i.i881:             ; preds = %resizeOpArray.exit.i.i878
  %.pre.i.i882 = load i32, ptr %i.apf, align 8, !tbaa !208
  br label %bb.je

bb.je:                                            ; preds = %resizeOpArray.exit._crit_edge.i.i881, %sqlite3VdbeChangeP2.exit871.thread
  %i.aqb = phi i32 [ %.pre.i.i882, %resizeOpArray.exit._crit_edge.i.i881 ], [ %i.apg, %sqlite3VdbeChangeP2.exit871.thread ]
  %i.aqc = add nsw i32 %i.aqb, 1
  store i32 %i.aqc, ptr %i.apf, align 8, !tbaa !208
  %i.aqd = getelementptr inbounds nuw i8, ptr %.4959, i64 32
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !209
  %i.aqf = sext i32 %i.apg to i64
  %i.aqg = getelementptr inbounds [24 x i8], ptr %i.aqe, i64 %i.aqf ; 4 uses
  store i8 13, ptr %i.aqg, align 8, !tbaa !211
  %i.aqh = getelementptr inbounds nuw i8, ptr %i.aqg, i64 4
  store i32 1, ptr %i.aqh, align 4, !tbaa !214
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aqg, i64 8
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqg, i64 1
  store i8 0, ptr %i.aqj, align 1, !tbaa !246
  %i.aqk = getelementptr inbounds nuw i8, ptr %.4959, i64 339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aqi, i8 0, i64 16, i1 false)
  store i8 0, ptr %i.aqk, align 1, !tbaa !177
  br label %sqlite3VdbeAddOp2.exit885

sqlite3VdbeAddOp2.exit885:                        ; preds = %resizeOpArray.exit.i.i878, %bb.je
  %i.aql = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.aqm = load i8, ptr %i.aql, align 8, !tbaa !480
  %.not716 = icmp eq i8 %i.aqm, 0
  br i1 %.not716, label %sqlite3_free.exit887, label %bb.jf

bb.jf:                                            ; preds = %sqlite3VdbeAddOp2.exit885
  %i.aqn = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aqo = load ptr, ptr %i.aqn, align 8, !tbaa !421
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  %i.aqq = load i8, ptr %i.aqp, align 1, !tbaa !486 ; 2 uses
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aqs = load i32, ptr %i.aqr, align 8, !tbaa !352
  %i.aqt = lshr i32 %i.aqs, 16
  %.lobit = and i32 %i.aqt, 1                     ; 2 uses
  %i.aqu = getelementptr i8, ptr %i.aqo, i64 8
  %.val740 = load ptr, ptr %i.aqu, align 8, !tbaa !350
  %.val740.val = load ptr, ptr %.val740, align 8, !tbaa !441 ; 8 uses
  %i.aqv = icmp eq i8 %i.aqq, 1
  br i1 %i.aqv, label %.thread11.i.i, label %bb.jg

.thread11.i.i:                                    ; preds = %bb.jf
  %i.aqw = getelementptr inbounds nuw i8, ptr %.val740.val, i64 15
  store i8 1, ptr %i.aqw, align 1, !tbaa !638
  %i.aqx = getelementptr inbounds nuw i8, ptr %.val740.val, i64 16
  store i8 0, ptr %i.aqx, align 8, !tbaa !700
  %.not912.i.i = icmp eq i32 %.lobit, 0
  %5 = select i1 %.not912.i.i, i8 2, i8 3
  %i.aqy = getelementptr inbounds nuw i8, ptr %.val740.val, i64 17
  store i8 %5, ptr %i.aqy, align 1, !tbaa !710
  br label %bb.jh

bb.jg:                                            ; preds = %bb.jf
  %i.aqz = getelementptr inbounds nuw i8, ptr %.val740.val, i64 19
  %i.ara = load i8, ptr %i.aqz, align 1, !tbaa !622 ; 2 uses
  %i.arb = icmp ne i8 %i.ara, 0                   ; 2 uses
  %i.arc = zext i1 %i.arb to i8
  %i.ard = getelementptr inbounds nuw i8, ptr %.val740.val, i64 15
  store i8 %i.arc, ptr %i.ard, align 1, !tbaa !638
  %i.are = icmp eq i8 %i.aqq, 3
  %.not.i.i1262 = icmp eq i8 %i.ara, 0
  %narrow.i.i = and i1 %i.are, %.not.i.i1262
  %i.arf = zext i1 %narrow.i.i to i8
  %i.arg = getelementptr inbounds nuw i8, ptr %.val740.val, i64 16
  store i8 %i.arf, ptr %i.arg, align 8, !tbaa !700
  %.not9.i.i = icmp eq i32 %.lobit, 0
  %6 = select i1 %.not9.i.i, i8 2, i8 3
  %i.arh = getelementptr inbounds nuw i8, ptr %.val740.val, i64 17
  store i8 %6, ptr %i.arh, align 1, !tbaa !710
  br i1 %i.arb, label %bb.jh, label %sqlite3_free.exit887

bb.jh:                                            ; preds = %bb.jg, %.thread11.i.i
  %i.ari = getelementptr inbounds nuw i8, ptr %.val740.val, i64 21
  store i8 0, ptr %i.ari, align 1, !tbaa !610
  br label %sqlite3_free.exit887

sqlite3_free.exit887:                             ; preds = %bb.jh, %bb.jg, %bb.ia, %bb.gk, %bb.ga, %bb.ft, %bb.fn, %bb.fi, %bb.ex, %sqlite3VdbeJumpHere.exit812, %bb.co, %sqlite3VdbeChangeP1.exit767, %sqlite3AuthCheck.exit.thread907, %sqlite3VdbeChangeP2.exit871, %sqlite3VdbeAddOp2.exit885, %bb.ep, %bb.dt, %sqlite3AuthCheck.exit, %bb.eh
  %.2 = phi ptr [ %.0, %sqlite3AuthCheck.exit ], [ null, %bb.ia ], [ %.1960, %sqlite3VdbeAddOp2.exit885 ], [ %.0, %sqlite3VdbeChangeP2.exit871 ], [ %.0, %sqlite3VdbeChangeP1.exit767 ], [ %.0, %sqlite3AuthCheck.exit.thread907 ], [ %.0, %sqlite3VdbeJumpHere.exit812 ], [ %.0, %bb.dt ], [ %.0, %bb.eh ], [ %.0, %bb.ep ], [ %.0, %bb.co ], [ %.0, %bb.ex ], [ %.0, %bb.fi ], [ %.0, %bb.fn ], [ %.0, %bb.ft ], [ %.0, %bb.ga ], [ %.0, %bb.gk ], [ %.1960, %bb.jg ], [ %.1960, %bb.jh ] ; 2 uses
  %i.arj = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 2 uses
  %i.ark = load i64, ptr %i.arj, align 8, !tbaa !130
  %sext.i886 = shl i64 %i.ark, 32
  %i.arl = ashr exact i64 %sext.i886, 32
  %i.arm = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.arn = sub nsw i64 %i.arm, %i.arl             ; 2 uses
  store i64 %i.arn, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.arj) #43
  %i.aro = icmp eq ptr %.2, null
  br i1 %i.aro, label %sqlite3NameFromToken.exit, label %bb.ji

bb.ji:                                            ; preds = %sqlite3_free.exit887
  %i.arp = getelementptr inbounds i8, ptr %.2, i64 -8 ; 2 uses
  %i.arq = load i64, ptr %i.arp, align 8, !tbaa !130
  %sext.i888 = shl i64 %i.arq, 32
  %i.arr = ashr exact i64 %sext.i888, 32
  %i.ars = sub nsw i64 %i.arn, %i.arr
  store i64 %i.ars, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.arp) #43
  br label %sqlite3NameFromToken.exit

sqlite3NameFromToken.exit:                        ; preds = %bb.ji, %sqlite3_free.exit887, %sqlite3StrNDup.exit.i.i, %sqlite3OpenTempDatabase.exit.thread, %sqlite3OpenTempDatabase.exit, %sqlite3TwoPartName.exit.thread, %sqlite3VdbeCreate.exit.thread, %sqlite3TwoPartName.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @sqlite3TriggerInsertStep(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) unnamed_addr #5 {
bb.a:
  %.not.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i, label %sqlite3DbMallocRaw.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !tbaa !202
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @sqlite3_malloc(i32 noundef 80) ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 2, !tbaa !202
  br label %bb.f

sqlite3DbMallocRaw.exit.i:                        ; preds = %bb.a
  %i.f = tail call ptr @sqlite3_malloc(i32 noundef 80) ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %sqlite3DbMallocRaw.exit.i, %bb.c
  %.0.i11.i = phi ptr [ %i.f, %sqlite3DbMallocRaw.exit.i ], [ %i.d, %bb.c ] ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(76) %i.g, i8 0, i64 76, i1 false)
  store i32 101, ptr %.0.i11.i, align 8, !tbaa !870
  %i.h = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 16
  store ptr %4, ptr %i.h, align 8, !tbaa !794
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !849
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 56
  store ptr %2, ptr %i.j, align 8, !tbaa !795
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 48
  store ptr %3, ptr %i.k, align 8, !tbaa !793
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i11.i, i64 4
  store i32 %5, ptr %i.l, align 4, !tbaa !871
  tail call fastcc void @sqlitePersistTriggerStep(ptr noundef %0, ptr noundef %.0.i11.i)
  br label %bb.i

bb.f:                                             ; preds = %sqlite3DbMallocRaw.exit.i, %bb.d, %bb.b
  %i.m = icmp eq ptr %2, null
  br i1 %i.m, label %sqlite3IdListDelete.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %mem.5.promoted.i = load i64, ptr @mem.5, align 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !784  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %sqlite3_free.exit.i
  %i.q = phi i32 [ %i.aa, %sqlite3_free.exit.i ], [ %i.o, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %sqlite3_free.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.r = phi i64 [ %i.ab, %sqlite3_free.exit.i ], [ %mem.5.promoted.i, %.preheader.i ] ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !785
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !787  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %sqlite3_free.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !130
  %sext.i.i = shl i64 %i.x, 32
  %i.y = ashr exact i64 %sext.i.i, 32
  %i.z = sub nsw i64 %i.r, %i.y
  tail call void @free(ptr noundef nonnull %i.w) #43
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !784
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.g, %.lr.ph.i
  %i.aa = phi i32 [ %i.q, %.lr.ph.i ], [ %.pre.i, %bb.g ] ; 2 uses
  %i.ab = phi i64 [ %i.r, %.lr.ph.i ], [ %i.z, %bb.g ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ac = sext i32 %i.aa to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !72

._crit_edge.i:                                    ; preds = %sqlite3_free.exit.i, %.preheader.i
  %i.ae = phi i64 [ %mem.5.promoted.i, %.preheader.i ], [ %i.ab, %sqlite3_free.exit.i ] ; 2 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !785   ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %sqlite3_free.exit11.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !130
  %sext.i8.i = shl i64 %i.ai, 32
  %i.aj = ashr exact i64 %sext.i8.i, 32
  %i.ak = sub nsw i64 %i.ae, %i.aj
  tail call void @free(ptr noundef nonnull %i.ah) #43
  br label %sqlite3_free.exit11.i

sqlite3_free.exit11.i:                            ; preds = %bb.h, %._crit_edge.i
  %i.al = phi i64 [ %i.ae, %._crit_edge.i ], [ %i.ak, %bb.h ]
  %i.am = getelementptr inbounds i8, ptr %2, i64 -8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !130
  %sext.i10.i = shl i64 %i.an, 32
  %i.ao = ashr exact i64 %sext.i10.i, 32
  %i.ap = sub nsw i64 %i.al, %i.ao
  store i64 %i.ap, ptr @mem.5, align 8, !tbaa !125
  tail call void @free(ptr noundef nonnull %i.am) #43
  br label %sqlite3IdListDelete.exit

sqlite3IdListDelete.exit:                         ; preds = %bb.f, %sqlite3_free.exit11.i
  tail call fastcc void @sqlite3ExprListDelete(ptr noundef %3)
  tail call fastcc void @sqlite3SelectDelete(ptr noundef %4)
  br label %bb.i

bb.i:                                             ; preds = %sqlite3IdListDelete.exit, %bb.e
  %.0.i7.i20 = phi ptr [ null, %sqlite3IdListDelete.exit ], [ %.0.i11.i, %bb.e ]
  ret ptr %.0.i7.i20
}

; Function Attrs: nounwind uwtable
define internal fastcc void @sqlite3Analyze(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !291    ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load i8, ptr %i.b, align 8, !tbaa !241
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = tail call fastcc i32 @sqlite3Init(ptr noundef nonnull %i.a, ptr noundef nonnull %i.d), !inline_history !339 ; 2 uses
  %.not8.i = icmp eq i32 %i.e, 0
  br i1 %.not8.i, label %.thread, label %sqlite3ReadSchema.exit

sqlite3ReadSchema.exit:                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !292
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !293
  %i.i = add nsw i32 %i.h, 1
  store i32 %i.i, ptr %i.g, align 8, !tbaa !293
  br label %loadAnalysis.exit94

.thread:                                          ; preds = %bb.a, %bb.b
  %i.j = icmp eq ptr %1, null
  br i1 %i.j, label %.preheader, label %bb.l

.preheader:                                       ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !315
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph163, label %loadAnalysis.exit94

.lr.ph163:                                        ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph163, %loadAnalysis.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph163 ], [ %indvars.iv.next, %loadAnalysis.exit ] ; 4 uses
  %i.q = icmp eq i64 %indvars.iv, 1
  br i1 %i.q, label %loadAnalysis.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %0, align 8, !tbaa !291
end_hunk_1
begin_hunk_2_@sqlite3CompleteInsertion:bb.a
  store i8 0, ptr %i.aq, align 1, !tbaa !246
  store i8 0, ptr %i.f, align 1, !tbaa !177
  br label %sqlite3VdbeAddOp2.exit

sqlite3VdbeAddOp2.exit:                           ; preds = %bb.h, %resizeOpArray.exit.i.i, %bb.b
  %i.ar = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ar, label %bb.b, label %._crit_edge, !llvm.loop !1899

._crit_edge:                                      ; preds = %sqlite3VdbeAddOp2.exit, %bb.a
  %i.as = add nsw i32 %3, 1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !940 ; 2 uses
  %.not.i = icmp eq i8 %i.au, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = add i8 %i.au, -1                        ; 2 uses
  store i8 %i.aw, ptr %i.at, align 1, !tbaa !940
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !112
  br label %sqlite3GetTempReg.exit

bb.j:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !841
  %i.bc = add nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !841
  br label %sqlite3GetTempReg.exit

sqlite3GetTempReg.exit:                           ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.az, %bb.i ], [ %i.bc, %bb.j ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !301
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 11 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !208 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 6 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !215 ; 6 uses
  %.not.i50 = icmp sgt i32 %i.bi, %i.bg
  br i1 %.not.i50, label %bb.o, label %bb.k

bb.k:                                             ; preds = %sqlite3GetTempReg.exit
  %.not23.i = icmp eq i32 %i.bi, 0
  %i.bj = shl nsw i32 %i.bi, 1
  %spec.select.i = select i1 %.not23.i, i32 42, i32 %i.bj ; 4 uses
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 42 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 2, !tbaa !202
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.l, label %resizeOpArray.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bp = mul i32 %spec.select.i, 24
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !209
  %i.br = tail call ptr @sqlite3_realloc(ptr noundef %i.bq, i32 noundef %i.bp) ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %bb.m, label %sqlite3DbRealloc.exit.i.i

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.bm, align 2, !tbaa !202
  br label %resizeOpArray.exit.i

sqlite3DbRealloc.exit.i.i:                        ; preds = %bb.l
  store i32 %spec.select.i, ptr %i.bh, align 4, !tbaa !215
  store ptr %i.br, ptr %i.bl, align 8, !tbaa !209
  %i.bs = icmp sgt i32 %spec.select.i, %i.bi
  br i1 %i.bs, label %bb.n, label %resizeOpArray.exit.i

bb.n:                                             ; preds = %sqlite3DbRealloc.exit.i.i
  %i.bt = sext i32 %i.bi to i64
  %i.bu = getelementptr inbounds [24 x i8], ptr %i.br, i64 %i.bt
  %i.bv = sub nsw i32 %spec.select.i, %i.bi
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = mul nuw nsw i64 %i.bw, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.bu, i8 0, i64 %i.bx, i1 false)
  br label %resizeOpArray.exit.i

resizeOpArray.exit.i:                             ; preds = %bb.n, %sqlite3DbRealloc.exit.i.i, %bb.m, %bb.k
  %i.by = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 42
  %i.ca = load i8, ptr %i.bz, align 2, !tbaa !202
  %.not24.i = icmp eq i8 %i.ca, 0
  br i1 %.not24.i, label %resizeOpArray.exit._crit_edge.i, label %sqlite3VdbeAddOp3.exit

resizeOpArray.exit._crit_edge.i:                  ; preds = %resizeOpArray.exit.i
  %.pre.i = load i32, ptr %i.bf, align 8, !tbaa !208
  br label %bb.o

bb.o:                                             ; preds = %resizeOpArray.exit._crit_edge.i, %sqlite3GetTempReg.exit
  %i.cb = phi i32 [ %.pre.i, %resizeOpArray.exit._crit_edge.i ], [ %i.bg, %sqlite3GetTempReg.exit ]
  %i.cc = add nsw i32 %i.cb, 1
  store i32 %i.cc, ptr %i.bf, align 8, !tbaa !208
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !209
  %i.cf = sext i32 %i.bg to i64
  %i.cg = getelementptr inbounds [24 x i8], ptr %i.ce, i64 %i.cf ; 6 uses
  store i8 84, ptr %i.cg, align 8, !tbaa !211
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  store i32 %i.as, ptr %i.ch, align 4, !tbaa !214
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i32 %i.be, ptr %i.ci, align 8, !tbaa !213
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 12
  store i32 %.0.i, ptr %i.cj, align 4, !tbaa !245
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store ptr null, ptr %i.ck, align 8, !tbaa !139
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  store i8 0, ptr %i.cl, align 1, !tbaa !246
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 339
  store i8 0, ptr %i.cm, align 1, !tbaa !177
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %resizeOpArray.exit.i, %bb.o
  tail call fastcc void @sqlite3TableAffinityStr(ptr noundef nonnull %i.a, ptr noundef %1)
  %i.cn = icmp sgt i32 %6, -1
  %.pre87 = load i32, ptr %i.bf, align 8, !tbaa !208 ; 4 uses
  br i1 %i.cn, label %bb.p, label %sqlite3VdbeAddOp3.exit62

bb.p:                                             ; preds = %sqlite3VdbeAddOp3.exit
  %i.co = load i32, ptr %i.bh, align 4, !tbaa !215 ; 6 uses
  %.not.i52 = icmp sgt i32 %i.co, %.pre87
  br i1 %.not.i52, label %resizeOpArray.exit._crit_edge.i58, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.not23.i53 = icmp eq i32 %i.co, 0
  %i.cp = shl nsw i32 %i.co, 1
  %spec.select.i54 = select i1 %.not23.i53, i32 42, i32 %i.cp ; 4 uses
  %i.cq = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 42 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 2, !tbaa !202
  %i.cu = icmp eq i8 %i.ct, 0
  br i1 %i.cu, label %bb.r, label %resizeOpArray.exit.i55

bb.r:                                             ; preds = %bb.q
  %i.cv = mul i32 %spec.select.i54, 24
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !209
  %i.cx = tail call ptr @sqlite3_realloc(ptr noundef %i.cw, i32 noundef %i.cv) ; 3 uses
  %.not.i.i.i60 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i60, label %bb.s, label %sqlite3DbRealloc.exit.i.i61

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.cs, align 2, !tbaa !202
  br label %resizeOpArray.exit.i55

sqlite3DbRealloc.exit.i.i61:                      ; preds = %bb.r
  store i32 %spec.select.i54, ptr %i.bh, align 4, !tbaa !215
  store ptr %i.cx, ptr %i.cr, align 8, !tbaa !209
  %i.cy = icmp sgt i32 %spec.select.i54, %i.co
  br i1 %i.cy, label %bb.t, label %resizeOpArray.exit.i55

bb.t:                                             ; preds = %sqlite3DbRealloc.exit.i.i61
  %i.cz = sext i32 %i.co to i64
  %i.da = getelementptr inbounds [24 x i8], ptr %i.cx, i64 %i.cz
  %i.db = sub nsw i32 %spec.select.i54, %i.co
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = mul nuw nsw i64 %i.dc, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.da, i8 0, i64 %i.dd, i1 false)
  br label %resizeOpArray.exit.i55

resizeOpArray.exit.i55:                           ; preds = %bb.t, %sqlite3DbRealloc.exit.i.i61, %bb.s, %bb.q
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 42
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !202
  %.not24.i56 = icmp eq i8 %i.dg, 0
  %.pre86 = load i32, ptr %i.bf, align 8, !tbaa !208 ; 2 uses
  br i1 %.not24.i56, label %resizeOpArray.exit._crit_edge.i58, label %sqlite3VdbeAddOp3.exit62

resizeOpArray.exit._crit_edge.i58:                ; preds = %resizeOpArray.exit.i55, %bb.p
  %i.dh = phi i32 [ %.pre87, %bb.p ], [ %.pre86, %resizeOpArray.exit.i55 ]
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.bf, align 8, !tbaa !208
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !209
  %i.dl = sext i32 %.pre87 to i64
  %i.dm = getelementptr inbounds [24 x i8], ptr %i.dk, i64 %i.dl ; 6 uses
  store i8 104, ptr %i.dm, align 8, !tbaa !211
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  store i32 %6, ptr %i.dn, align 4, !tbaa !214
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store i32 %.0.i, ptr %i.do, align 8, !tbaa !213
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  store i32 %3, ptr %i.dp, align 4, !tbaa !245
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store ptr null, ptr %i.dq, align 8, !tbaa !139
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store i8 0, ptr %i.dr, align 1, !tbaa !246
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 339
  store i8 0, ptr %i.ds, align 1, !tbaa !177
  %.pre = load i32, ptr %i.bf, align 8, !tbaa !208
  br label %sqlite3VdbeAddOp3.exit62

sqlite3VdbeAddOp3.exit62:                         ; preds = %resizeOpArray.exit._crit_edge.i58, %resizeOpArray.exit.i55, %sqlite3VdbeAddOp3.exit
  %i.dt = phi i32 [ %.pre, %resizeOpArray.exit._crit_edge.i58 ], [ %.pre86, %resizeOpArray.exit.i55 ], [ %.pre87, %sqlite3VdbeAddOp3.exit ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 35 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !388
  %.not46 = icmp eq i8 %i.dv, 0
  %.not47 = icmp eq i32 %5, 0
  %i.dw = select i1 %.not47, i8 3, i8 5
  %.0 = select i1 %.not46, i8 %i.dw, i8 0         ; 2 uses
  %.not48 = icmp eq i32 %7, 0
  %8 = or disjoint i8 %.0, 8
  %.1 = select i1 %.not48, i8 %.0, i8 %8
  %i.dx = load i32, ptr %i.bh, align 4, !tbaa !215 ; 6 uses
  %.not.i63 = icmp sgt i32 %i.dx, %i.dt
  br i1 %.not.i63, label %bb.y, label %bb.u

bb.u:                                             ; preds = %sqlite3VdbeAddOp3.exit62
  %.not23.i64 = icmp eq i32 %i.dx, 0
  %i.dy = shl nsw i32 %i.dx, 1
  %spec.select.i65 = select i1 %.not23.i64, i32 42, i32 %i.dy ; 4 uses
  %i.dz = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 42 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 2, !tbaa !202
  %i.ed = icmp eq i8 %i.ec, 0
  br i1 %i.ed, label %bb.v, label %resizeOpArray.exit.i66

bb.v:                                             ; preds = %bb.u
  %i.ee = mul i32 %spec.select.i65, 24
  %i.ef = load ptr, ptr %i.ea, align 8, !tbaa !209
  %i.eg = tail call ptr @sqlite3_realloc(ptr noundef %i.ef, i32 noundef %i.ee) ; 3 uses
  %.not.i.i.i71 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i71, label %bb.w, label %sqlite3DbRealloc.exit.i.i72

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.eb, align 2, !tbaa !202
  br label %resizeOpArray.exit.i66

sqlite3DbRealloc.exit.i.i72:                      ; preds = %bb.v
  store i32 %spec.select.i65, ptr %i.bh, align 4, !tbaa !215
  store ptr %i.eg, ptr %i.ea, align 8, !tbaa !209
  %i.eh = icmp sgt i32 %spec.select.i65, %i.dx
  br i1 %i.eh, label %bb.x, label %resizeOpArray.exit.i66

bb.x:                                             ; preds = %sqlite3DbRealloc.exit.i.i72
  %i.ei = sext i32 %i.dx to i64
  %i.ej = getelementptr inbounds [24 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = sub nsw i32 %spec.select.i65, %i.dx
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = mul nuw nsw i64 %i.el, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ej, i8 0, i64 %i.em, i1 false)
  br label %resizeOpArray.exit.i66

resizeOpArray.exit.i66:                           ; preds = %bb.x, %sqlite3DbRealloc.exit.i.i72, %bb.w, %bb.u
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 42
  %i.ep = load i8, ptr %i.eo, align 2, !tbaa !202
  %.not24.i67 = icmp eq i8 %i.ep, 0
  br i1 %.not24.i67, label %resizeOpArray.exit._crit_edge.i69, label %sqlite3VdbeAddOp3.exit73

resizeOpArray.exit._crit_edge.i69:                ; preds = %resizeOpArray.exit.i66
  %.pre.i70 = load i32, ptr %i.bf, align 8, !tbaa !208
  br label %bb.y

bb.y:                                             ; preds = %resizeOpArray.exit._crit_edge.i69, %sqlite3VdbeAddOp3.exit62
  %i.eq = phi i32 [ %.pre.i70, %resizeOpArray.exit._crit_edge.i69 ], [ %i.dt, %sqlite3VdbeAddOp3.exit62 ]
  %i.er = add nsw i32 %i.eq, 1
  store i32 %i.er, ptr %i.bf, align 8, !tbaa !208
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !209
  %i.eu = sext i32 %i.dt to i64
  %i.ev = getelementptr inbounds [24 x i8], ptr %i.et, i64 %i.eu ; 6 uses
  store i8 104, ptr %i.ev, align 8, !tbaa !211
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 %2, ptr %i.ew, align 4, !tbaa !214
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  store i32 %.0.i, ptr %i.ex, align 8, !tbaa !213
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  store i32 %3, ptr %i.ey, align 4, !tbaa !245
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store ptr null, ptr %i.ez, align 8, !tbaa !139
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  store i8 0, ptr %i.fa, align 1, !tbaa !246
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 339
  store i8 0, ptr %i.fb, align 1, !tbaa !177
  br label %sqlite3VdbeAddOp3.exit73

sqlite3VdbeAddOp3.exit73:                         ; preds = %resizeOpArray.exit.i66, %bb.y
  %i.fc = load i8, ptr %i.du, align 1, !tbaa !388
  %.not49 = icmp eq i8 %i.fc, 0
  br i1 %.not49, label %bb.z, label %sqlite3VdbeChangeP4.exit

bb.z:                                             ; preds = %sqlite3VdbeAddOp3.exit73
  %i.fd = load ptr, ptr %1, align 8, !tbaa !406   ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !209 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %sqlite3VdbeChangeP4.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !179
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 42
  %i.fj = load i8, ptr %i.fi, align 2, !tbaa !202
  %.not.i74 = icmp eq i8 %i.fj, 0
  br i1 %.not.i74, label %bb.ab, label %sqlite3VdbeChangeP4.exit

bb.ab:                                            ; preds = %bb.aa
  %i.fk = load i32, ptr %i.bf, align 8, !tbaa !208 ; 2 uses
  %i.fl = icmp slt i32 %i.fk, 1
  br i1 %i.fl, label %sqlite3VdbeChangeP4.exit, label %sqlite3VdbeChangeP4.exit.sink.split

sqlite3VdbeChangeP4.exit.sink.split:              ; preds = %bb.ab
  %i.fm = zext nneg i32 %i.fk to i64
  %i.fn = getelementptr [24 x i8], ptr %i.ff, i64 %i.fm ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 -23    ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !246
  %i.fq = sext i8 %i.fp to i32
  %i.fr = getelementptr i8, ptr %i.fn, i64 -8     ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !139
  tail call fastcc void @freeP4(i32 noundef %i.fq, ptr noundef %i.fs)
  %i.ft = icmp eq ptr %i.fd, null
  store ptr %i.fd, ptr %i.fr, align 8
  %spec.select = select i1 %i.ft, i8 0, i8 -2
  store i8 %spec.select, ptr %i.fo, align 1, !tbaa !246
  br label %sqlite3VdbeChangeP4.exit

sqlite3VdbeChangeP4.exit:                         ; preds = %sqlite3VdbeChangeP4.exit.sink.split, %bb.z, %bb.aa, %sqlite3VdbeAddOp3.exit73, %bb.ab
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !209 ; 2 uses
  %.not5.i = icmp eq ptr %i.fv, null
  br i1 %.not5.i, label %sqlite3VdbeChangeP5.exit, label %bb.ac

bb.ac:                                            ; preds = %sqlite3VdbeChangeP4.exit
  %i.fw = load i32, ptr %i.bf, align 8, !tbaa !208
  %i.fx = sext i32 %i.fw to i64
  %i.fy = getelementptr [24 x i8], ptr %i.fv, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 -21
  store i8 %.1, ptr %i.fz, align 1, !tbaa !212
  br label %sqlite3VdbeChangeP5.exit

sqlite3VdbeChangeP5.exit:                         ; preds = %sqlite3VdbeChangeP4.exit, %bb.ac
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @xferOptimization(ptr noundef %0, ptr nofree noundef nonnull readonly captures(address) %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !759
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.e = load i8, ptr %i.d, align 1, !tbaa !377
  %.not197 = icmp eq i8 %i.e, 0
  br i1 %.not197, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i32 %3, 99
  %spec.store.select = select i1 %i.f, i32 2, i32 %3 ; 2 uses
  %i.g = add i32 %spec.store.select, -3
  %or.cond = icmp ult i32 %i.g, -2
  br i1 %or.cond, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !814  ; 4 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !823
  %.not198 = icmp eq i16 %i.j, 1
  br i1 %.not198, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !826
  %.not199 = icmp eq ptr %i.m, null
  br i1 %.not199, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !815
  %.not200 = icmp eq ptr %i.o, null
  br i1 %.not200, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !818
  %.not201 = icmp eq ptr %i.q, null
  br i1 %.not201, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !816
  %.not202 = icmp eq ptr %i.s, null
  br i1 %.not202, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !820
  %.not203 = icmp eq ptr %i.u, null
  br i1 %.not203, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !819
  %.not204 = icmp eq ptr %i.w, null
  br i1 %.not204, label %bb.l, label %.loopexit
end_hunk_2
