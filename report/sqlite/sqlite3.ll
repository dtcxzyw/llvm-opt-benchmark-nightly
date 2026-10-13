Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3BtreeSetMmapLimit:bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !565
  %i.r = icmp sgt i64 %1, 0                       ; 2 uses
  %i.s = zext i1 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 27
  store i8 %i.s, ptr %i.t, align 1, !tbaa !1052
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1004
  %.not.i.i.i = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %getPageMMap.getPageNormal.i.i = select i1 %i.r, ptr @getPageMMap, ptr @getPageNormal
  %getPageError.sink.i.i = select i1 %.not.i.i.i, ptr %getPageMMap.getPageNormal.i.i, ptr @getPageError
  store ptr %getPageError.sink.i.i, ptr %i.w, align 8, !tbaa !891
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1045
  %i.z = call i32 %i.y(ptr noundef nonnull %i.n, i32 noundef 18, ptr noundef nonnull %i.a) #57, !inline_history !231 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br label %sqlite3PagerSetMmapLimit.exit

sqlite3PagerSetMmapLimit.exit:                    ; preds = %sqlite3BtreeEnter.exit, %bb.d, %sqlite3OsFileControlHint.exit.i.i
  %i.aa = load i8, ptr %i.d, align 1, !tbaa !935
  %.not.i4 = icmp eq i8 %i.aa, 0
  br i1 %.not.i4, label %sqlite3BtreeLeave.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3PagerSetMmapLimit.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !936
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !936
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %sqlite3BtreeLeave.exit

bb.f:                                             ; preds = %bb.e
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %0)
  br label %sqlite3BtreeLeave.exit

sqlite3BtreeLeave.exit:                           ; preds = %sqlite3PagerSetMmapLimit.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @changeTempStorage(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !733     ; 3 uses
  %i.b = add i8 %i.a, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.b, 3
  br i1 %or.cond.i, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i8 %i.b to i32
  br label %getTempStore.exit

.preheader.i:                                     ; preds = %bb.a, %bb.e
  %i.d = phi i8 [ %.pr.i, %bb.e ], [ %i.a, %bb.a ] ; 3 uses
  %.013.i.i = phi ptr [ %i.n, %bb.e ], [ %1, %bb.a ]
  %.012.i.i = phi ptr [ %i.o, %bb.e ], [ @.str.605, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %.012.i.i, align 1, !tbaa !733 ; 2 uses
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.g = icmp eq i8 %i.d, 0
  br i1 %i.g, label %getTempStore.exit, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.h = zext i8 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !733
  %i.k = zext i8 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !733
  %.not.i.i = icmp eq i8 %i.j, %i.m
  br i1 %.not.i.i, label %bb.e, label %sqlite3StrICmp.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  %.pr.i = load i8, ptr %i.n, align 1, !tbaa !733
  br label %.preheader.i

sqlite3StrICmp.exit.i:                            ; preds = %bb.d, %bb.h
  %i.p = phi i8 [ %.pre.i, %bb.h ], [ %i.a, %bb.d ] ; 3 uses
  %.013.i6.i = phi ptr [ %i.z, %bb.h ], [ %1, %bb.d ]
  %.012.i7.i = phi ptr [ %i.aa, %bb.h ], [ @.str.444, %bb.d ] ; 2 uses
  %i.q = load i8, ptr %.012.i7.i, align 1, !tbaa !733 ; 2 uses
  %i.r = icmp eq i8 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.s = icmp eq i8 %i.p, 0
  br i1 %i.s, label %getTempStore.exit, label %bb.h

bb.g:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.t = zext i8 %i.p to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !733
  %i.w = zext i8 %i.q to i64
  %i.x = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !733
  %.not.i8.i = icmp eq i8 %i.v, %i.y
  br i1 %.not.i8.i, label %bb.h, label %getTempStore.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i6.i, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i7.i, i64 1
  %.pre.i = load i8, ptr %i.z, align 1, !tbaa !733
  br label %sqlite3StrICmp.exit.i

getTempStore.exit:                                ; preds = %bb.c, %bb.f, %bb.g, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.g ], [ 2, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !981   ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 102 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !1469
  %i.ae = zext i8 %i.ad to i32
  %i.af = icmp eq i32 %.0.i, %i.ae
  br i1 %i.af, label %bb.m, label %bb.i

bb.i:                                             ; preds = %getTempStore.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !605
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !610 ; 3 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 101
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !934
  %.not9.i = icmp eq i8 %i.al, 0
  br i1 %.not9.i, label %invalidateTempStorage.exit, label %sqlite3BtreeTxnState.exit.i

sqlite3BtreeTxnState.exit.i:                      ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !977
  %.not10.i = icmp eq i8 %i.an, 0
  br i1 %.not10.i, label %bb.k, label %invalidateTempStorage.exit

bb.k:                                             ; preds = %sqlite3BtreeTxnState.exit.i
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.aj)
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !605
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr null, ptr %i.ap, align 8, !tbaa !610
  tail call fastcc void @sqlite3ResetAllSchemasOfConnection(ptr noundef nonnull %i.ab), !inline_history !5597
  br label %bb.l

invalidateTempStorage.exit:                       ; preds = %bb.j, %sqlite3BtreeTxnState.exit.i
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1127), !inline_history !5597
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.aq = trunc nuw nsw i32 %.0.i to i8
  store i8 %i.aq, ptr %i.ac, align 2, !tbaa !1469
  br label %bb.m

bb.m:                                             ; preds = %invalidateTempStorage.exit, %getTempStore.exit, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invalidateTempStorage(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !981    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !605
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !610  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 101
  %i.g = load i8, ptr %i.f, align 1, !tbaa !934
  %.not9 = icmp eq i8 %i.g, 0
  br i1 %.not9, label %bb.c, label %sqlite3BtreeTxnState.exit

sqlite3BtreeTxnState.exit:                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !977
  %.not10 = icmp eq i8 %i.i, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %sqlite3BtreeTxnState.exit, %bb.b
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1127)
  br label %bb.e

bb.d:                                             ; preds = %sqlite3BtreeTxnState.exit
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.e)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !605
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr null, ptr %i.k, align 8, !tbaa !610
  tail call fastcc void @sqlite3ResetAllSchemasOfConnection(ptr noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @getSafetyLevel(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #19 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !733     ; 15 uses
  %i.c = add i8 %i.b, -58
  %.not = icmp ult i8 %i.c, -10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  store i32 0, ptr %i.a, align 4, !tbaa !570
  %i.d = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull readonly %0, ptr noundef %i.a) ; 0 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  %i.f = trunc i32 %i.e to i8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #58
  %.fr = freeze i64 %i.g
  %i.h = trunc i64 %.fr to i32
  %i.i = and i32 %i.h, 1073741823                 ; 4 uses
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.split

.split:                                           ; preds = %bb.c
  %.not16 = icmp eq i32 %1, 0
  %i.j = icmp eq i32 %i.i, 2                      ; 2 uses
  br i1 %.not16, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  br i1 %i.j, label %.lr.ph.i.preheader, label %.split.split.2

.split.split.us.preheader:                        ; preds = %.split
  br i1 %i.j, label %.lr.ph.i.preheader.us, label %.split.split.us.2

.lr.ph.i.preheader.us:                            ; preds = %.split.split.us.preheader
  %i.k = and i8 %i.b, -33
  %i.l = icmp eq i8 %i.k, 79
  br i1 %i.l, label %.lr.ph.i.us.1134, label %sqlite3_strnicmp.exit.us

.lr.ph.i.us.1134:                                 ; preds = %.lr.ph.i.preheader.us
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !733
  %i.o = and i8 %i.n, -33
  %i.p = icmp eq i8 %i.o, 78
  br i1 %i.p, label %.split27.us, label %sqlite3_strnicmp.exit.us

sqlite3_strnicmp.exit.us:                         ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us.1134
  %.lcssa54 = phi i32 [ 111, %.lr.ph.i.preheader.us ], [ 110, %.lr.ph.i.us.1134 ]
  %.023.i.us.lcssa51 = phi ptr [ %0, %.lr.ph.i.preheader.us ], [ %i.m, %.lr.ph.i.us.1134 ]
  %i.q = load i8, ptr %.023.i.us.lcssa51, align 1, !tbaa !733
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !733
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i32 %.lcssa54, %i.u
  br i1 %i.v, label %.split27.us, label %.lr.ph.i.preheader.us.1

.lr.ph.i.preheader.us.1:                          ; preds = %sqlite3_strnicmp.exit.us
  %i.w = and i8 %i.b, -33
  %i.x = icmp eq i8 %i.w, 78
  br i1 %i.x, label %.lr.ph.i.us.1.1, label %sqlite3_strnicmp.exit.us.1

.lr.ph.i.us.1.1:                                  ; preds = %.lr.ph.i.preheader.us.1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !733
  %i.aa = and i8 %i.z, -33
  %i.ab = icmp eq i8 %i.aa, 79
  br i1 %i.ab, label %.split27.us, label %sqlite3_strnicmp.exit.us.1

sqlite3_strnicmp.exit.us.1:                       ; preds = %.lr.ph.i.preheader.us.1, %.lr.ph.i.us.1.1
  %.lcssa54.1 = phi i32 [ 110, %.lr.ph.i.preheader.us.1 ], [ 111, %.lr.ph.i.us.1.1 ]
  %.023.i.us.lcssa51.1 = phi ptr [ %0, %.lr.ph.i.preheader.us.1 ], [ %i.y, %.lr.ph.i.us.1.1 ]
  %i.ac = load i8, ptr %.023.i.us.lcssa51.1, align 1, !tbaa !733
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !733
  %i.ag = zext i8 %i.af to i32
  %i.ah = icmp eq i32 %.lcssa54.1, %i.ag
  br i1 %i.ah, label %.split27.us, label %.loopexit

.split.split.us.2:                                ; preds = %.split.split.us.preheader
  switch i32 %i.i, label %.loopexit [
    i32 3, label %.lr.ph.i.preheader.us.2
    i32 5, label %.lr.ph.i.preheader.us.3
    i32 4, label %.lr.ph.i.preheader.us.5
  ]

.lr.ph.i.preheader.us.2:                          ; preds = %.split.split.us.2
  %i.ai = and i8 %i.b, -33
  %i.aj = icmp eq i8 %i.ai, 79
  br i1 %i.aj, label %.lr.ph.i.us.2.1, label %sqlite3_strnicmp.exit.us.2

.lr.ph.i.us.2.1:                                  ; preds = %.lr.ph.i.preheader.us.2
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !733
  %i.am = and i8 %i.al, -33
  %i.an = icmp eq i8 %i.am, 70
  br i1 %i.an, label %.lr.ph.i.us.2.2, label %sqlite3_strnicmp.exit.us.2

.lr.ph.i.us.2.2:                                  ; preds = %.lr.ph.i.us.2.1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !733
  %i.aq = and i8 %i.ap, -33
  %i.ar = icmp eq i8 %i.aq, 70
  br i1 %i.ar, label %.split27.us, label %sqlite3_strnicmp.exit.us.2

sqlite3_strnicmp.exit.us.2:                       ; preds = %.lr.ph.i.preheader.us.2, %.lr.ph.i.us.2.1, %.lr.ph.i.us.2.2
  %.lcssa54.2 = phi i32 [ 111, %.lr.ph.i.preheader.us.2 ], [ 102, %.lr.ph.i.us.2.1 ], [ 102, %.lr.ph.i.us.2.2 ]
  %.023.i.us.lcssa51.2 = phi ptr [ %0, %.lr.ph.i.preheader.us.2 ], [ %i.ak, %.lr.ph.i.us.2.1 ], [ %i.ao, %.lr.ph.i.us.2.2 ]
  %.pre379 = load i8, ptr %.023.i.us.lcssa51.2, align 1, !tbaa !733
  %.phi.trans.insert380 = zext i8 %.pre379 to i64
  %.phi.trans.insert381 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert380
  %.pre382 = load i8, ptr %.phi.trans.insert381, align 1, !tbaa !733
  %i.as = zext i8 %.pre382 to i32
  %i.at = icmp eq i32 %.lcssa54.2, %i.as
  br i1 %i.at, label %.split27.us, label %.lr.ph.i.preheader.us.4

.lr.ph.i.preheader.us.3:                          ; preds = %.split.split.us.2
  %i.au = and i8 %i.b, -33
  %i.av = icmp eq i8 %i.au, 70
  br i1 %i.av, label %.lr.ph.i.us.3.1, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.1:                                  ; preds = %.lr.ph.i.preheader.us.3
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !733
  %i.ay = and i8 %i.ax, -33
  %i.az = icmp eq i8 %i.ay, 65
  br i1 %i.az, label %.lr.ph.i.us.3.2, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.2:                                  ; preds = %.lr.ph.i.us.3.1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !733
  %i.bc = and i8 %i.bb, -33
  %i.bd = icmp eq i8 %i.bc, 76
  br i1 %i.bd, label %.lr.ph.i.us.3.3, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.3:                                  ; preds = %.lr.ph.i.us.3.2
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !733
  %i.bg = and i8 %i.bf, -33
  %i.bh = icmp eq i8 %i.bg, 83
  br i1 %i.bh, label %.lr.ph.i.us.3.4, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.4:                                  ; preds = %.lr.ph.i.us.3.3
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !733
  %i.bk = and i8 %i.bj, -33
  %i.bl = icmp eq i8 %i.bk, 69
  br i1 %i.bl, label %.split27.us, label %sqlite3_strnicmp.exit.us.3

sqlite3_strnicmp.exit.us.3:                       ; preds = %.lr.ph.i.preheader.us.3, %.lr.ph.i.us.3.1, %.lr.ph.i.us.3.2, %.lr.ph.i.us.3.3, %.lr.ph.i.us.3.4
  %.lcssa54.3 = phi i32 [ 102, %.lr.ph.i.preheader.us.3 ], [ 97, %.lr.ph.i.us.3.1 ], [ 108, %.lr.ph.i.us.3.2 ], [ 115, %.lr.ph.i.us.3.3 ], [ 101, %.lr.ph.i.us.3.4 ]
  %.023.i.us.lcssa51.3 = phi ptr [ %0, %.lr.ph.i.preheader.us.3 ], [ %i.aw, %.lr.ph.i.us.3.1 ], [ %i.ba, %.lr.ph.i.us.3.2 ], [ %i.be, %.lr.ph.i.us.3.3 ], [ %i.bi, %.lr.ph.i.us.3.4 ]
  %.pre383 = load i8, ptr %.023.i.us.lcssa51.3, align 1, !tbaa !733
  %.phi.trans.insert384 = zext i8 %.pre383 to i64
  %.phi.trans.insert385 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert384
  %.pre386 = load i8, ptr %.phi.trans.insert385, align 1, !tbaa !733
  %i.bm = zext i8 %.pre386 to i32
  %i.bn = icmp eq i32 %.lcssa54.3, %i.bm
  br i1 %i.bn, label %.split27.us, label %.lr.ph.i.preheader.us.6

.lr.ph.i.preheader.us.4:                          ; preds = %sqlite3_strnicmp.exit.us.2
  %i.bo = and i8 %i.b, -33
  %i.bp = icmp eq i8 %i.bo, 89
  br i1 %i.bp, label %.lr.ph.i.us.4.1, label %sqlite3_strnicmp.exit.us.4

.lr.ph.i.us.4.1:                                  ; preds = %.lr.ph.i.preheader.us.4
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !733
  %i.bs = and i8 %i.br, -33
  %i.bt = icmp eq i8 %i.bs, 69
  br i1 %i.bt, label %.lr.ph.i.us.4.2, label %sqlite3_strnicmp.exit.us.4

.lr.ph.i.us.4.2:                                  ; preds = %.lr.ph.i.us.4.1
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !733
  %i.bw = and i8 %i.bv, -33
  %i.bx = icmp eq i8 %i.bw, 83
  br i1 %i.bx, label %.split27.us, label %sqlite3_strnicmp.exit.us.4

sqlite3_strnicmp.exit.us.4:                       ; preds = %.lr.ph.i.preheader.us.4, %.lr.ph.i.us.4.1, %.lr.ph.i.us.4.2
  %.lcssa54.4 = phi i32 [ 121, %.lr.ph.i.preheader.us.4 ], [ 101, %.lr.ph.i.us.4.1 ], [ 115, %.lr.ph.i.us.4.2 ]
  %.023.i.us.lcssa51.4 = phi ptr [ %0, %.lr.ph.i.preheader.us.4 ], [ %i.bq, %.lr.ph.i.us.4.1 ], [ %i.bu, %.lr.ph.i.us.4.2 ]
  %.pre387 = load i8, ptr %.023.i.us.lcssa51.4, align 1, !tbaa !733
  %.phi.trans.insert388 = zext i8 %.pre387 to i64
  %.phi.trans.insert389 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert388
  %.pre390 = load i8, ptr %.phi.trans.insert389, align 1, !tbaa !733
  %i.by = zext i8 %.pre390 to i32
  %i.bz = icmp eq i32 %.lcssa54.4, %i.by
  br i1 %i.bz, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.us.5:                          ; preds = %.split.split.us.2
  %i.ca = and i8 %i.b, -33
  %i.cb = icmp eq i8 %i.ca, 84
  br i1 %i.cb, label %.lr.ph.i.us.5.1, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.us.5.1:                                  ; preds = %.lr.ph.i.preheader.us.5
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !733
  %i.ce = and i8 %i.cd, -33
  %i.cf = icmp eq i8 %i.ce, 82
  br i1 %i.cf, label %.lr.ph.i.us.5.2, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.us.5.2:                                  ; preds = %.lr.ph.i.us.5.1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !733
  %i.ci = and i8 %i.ch, -33
  %i.cj = icmp eq i8 %i.ci, 85
  br i1 %i.cj, label %.lr.ph.i.us.5.3, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.us.5.3:                                  ; preds = %.lr.ph.i.us.5.2
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !733
  %i.cm = and i8 %i.cl, -33
  %i.cn = icmp eq i8 %i.cm, 69
  br i1 %i.cn, label %.split27.us, label %sqlite3_strnicmp.exit.us.5

sqlite3_strnicmp.exit.us.5:                       ; preds = %.lr.ph.i.preheader.us.5, %.lr.ph.i.us.5.1, %.lr.ph.i.us.5.2, %.lr.ph.i.us.5.3
  %.lcssa54.5 = phi i32 [ 116, %.lr.ph.i.preheader.us.5 ], [ 114, %.lr.ph.i.us.5.1 ], [ 117, %.lr.ph.i.us.5.2 ], [ 101, %.lr.ph.i.us.5.3 ]
  %.023.i.us.lcssa51.5 = phi ptr [ %0, %.lr.ph.i.preheader.us.5 ], [ %i.cc, %.lr.ph.i.us.5.1 ], [ %i.cg, %.lr.ph.i.us.5.2 ], [ %i.ck, %.lr.ph.i.us.5.3 ]
  %.pre391 = load i8, ptr %.023.i.us.lcssa51.5, align 1, !tbaa !733
  %.phi.trans.insert392 = zext i8 %.pre391 to i64
  %.phi.trans.insert393 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert392
  %.pre394 = load i8, ptr %.phi.trans.insert393, align 1, !tbaa !733
  %i.co = zext i8 %.pre394 to i32
  %i.cp = icmp eq i32 %.lcssa54.5, %i.co
  br i1 %i.cp, label %.split27.us, label %.lr.ph.i.preheader.us.7

.lr.ph.i.preheader.us.6:                          ; preds = %sqlite3_strnicmp.exit.us.3
  %i.cq = and i8 %i.b, -33
  %i.cr = icmp eq i8 %i.cq, 69
  br i1 %i.cr, label %.lr.ph.i.us.6.1, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.1:                                  ; preds = %.lr.ph.i.preheader.us.6
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !733
  %i.cu = and i8 %i.ct, -33
  %i.cv = icmp eq i8 %i.cu, 88
  br i1 %i.cv, label %.lr.ph.i.us.6.2, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.2:                                  ; preds = %.lr.ph.i.us.6.1
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !733
  %i.cy = and i8 %i.cx, -33
  %i.cz = icmp eq i8 %i.cy, 84
  br i1 %i.cz, label %.lr.ph.i.us.6.3, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.3:                                  ; preds = %.lr.ph.i.us.6.2
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.db = load i8, ptr %i.da, align 1, !tbaa !733
  %i.dc = and i8 %i.db, -33
  %i.dd = icmp eq i8 %i.dc, 82
  br i1 %i.dd, label %.lr.ph.i.us.6.4, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.4:                                  ; preds = %.lr.ph.i.us.6.3
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.df = load i8, ptr %i.de, align 1, !tbaa !733
  %i.dg = and i8 %i.df, -33
  %i.dh = icmp eq i8 %i.dg, 65
  br i1 %i.dh, label %.split27.us, label %sqlite3_strnicmp.exit.us.6

sqlite3_strnicmp.exit.us.6:                       ; preds = %.lr.ph.i.preheader.us.6, %.lr.ph.i.us.6.1, %.lr.ph.i.us.6.2, %.lr.ph.i.us.6.3, %.lr.ph.i.us.6.4
  %.lcssa54.6 = phi i32 [ 101, %.lr.ph.i.preheader.us.6 ], [ 120, %.lr.ph.i.us.6.1 ], [ 116, %.lr.ph.i.us.6.2 ], [ 114, %.lr.ph.i.us.6.3 ], [ 97, %.lr.ph.i.us.6.4 ]
  %.023.i.us.lcssa51.6 = phi ptr [ %0, %.lr.ph.i.preheader.us.6 ], [ %i.cs, %.lr.ph.i.us.6.1 ], [ %i.cw, %.lr.ph.i.us.6.2 ], [ %i.da, %.lr.ph.i.us.6.3 ], [ %i.de, %.lr.ph.i.us.6.4 ]
  %.pre395 = load i8, ptr %.023.i.us.lcssa51.6, align 1, !tbaa !733
  %.phi.trans.insert396 = zext i8 %.pre395 to i64
  %.phi.trans.insert397 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert396
  %.pre398 = load i8, ptr %.phi.trans.insert397, align 1, !tbaa !733
  %i.di = zext i8 %.pre398 to i32
  %i.dj = icmp eq i32 %.lcssa54.6, %i.di
  br i1 %i.dj, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.us.7:                          ; preds = %sqlite3_strnicmp.exit.us.5
  %i.dk = and i8 %i.b, -33
  %i.dl = icmp eq i8 %i.dk, 70
  br i1 %i.dl, label %.lr.ph.i.us.7.1, label %sqlite3_strnicmp.exit.us.7

.lr.ph.i.us.7.1:                                  ; preds = %.lr.ph.i.preheader.us.7
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !733
  %i.do = and i8 %i.dn, -33
  %i.dp = icmp eq i8 %i.do, 85
  br i1 %i.dp, label %.lr.ph.i.us.7.2, label %sqlite3_strnicmp.exit.us.7

.lr.ph.i.us.7.2:                                  ; preds = %.lr.ph.i.us.7.1
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !733
  %i.ds = and i8 %i.dr, -33
  %i.dt = icmp eq i8 %i.ds, 76
  br i1 %i.dt, label %.lr.ph.i.us.7.3, label %sqlite3_strnicmp.exit.us.7

.lr.ph.i.us.7.3:                                  ; preds = %.lr.ph.i.us.7.2
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !733
  %i.dw = and i8 %i.dv, -33
  %i.dx = icmp eq i8 %i.dw, 76
  br i1 %i.dx, label %.split27.us, label %sqlite3_strnicmp.exit.us.7

sqlite3_strnicmp.exit.us.7:                       ; preds = %.lr.ph.i.preheader.us.7, %.lr.ph.i.us.7.1, %.lr.ph.i.us.7.2, %.lr.ph.i.us.7.3
  %.lcssa54.7 = phi i32 [ 102, %.lr.ph.i.preheader.us.7 ], [ 117, %.lr.ph.i.us.7.1 ], [ 108, %.lr.ph.i.us.7.2 ], [ 108, %.lr.ph.i.us.7.3 ]
  %.023.i.us.lcssa51.7 = phi ptr [ %0, %.lr.ph.i.preheader.us.7 ], [ %i.dm, %.lr.ph.i.us.7.1 ], [ %i.dq, %.lr.ph.i.us.7.2 ], [ %i.du, %.lr.ph.i.us.7.3 ]
  %i.dy = load i8, ptr %.023.i.us.lcssa51.7, align 1, !tbaa !733
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !733
  %i.ec = zext i8 %i.eb to i32
  %i.ed = icmp eq i32 %.lcssa54.7, %i.ec
  br i1 %i.ed, label %.split27.us, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.split.split.preheader
  %i.ee = and i8 %i.b, -33
  %i.ef = icmp eq i8 %i.ee, 79
  br i1 %i.ef, label %.lr.ph.i.188, label %sqlite3_strnicmp.exit

.lr.ph.i.188:                                     ; preds = %.lr.ph.i.preheader
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !733
  %i.ei = and i8 %i.eh, -33
  %i.ej = icmp eq i8 %i.ei, 78
  br i1 %i.ej, label %.split27.us, label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i.preheader, %.lr.ph.i.188
  %.lcssa62 = phi i32 [ 111, %.lr.ph.i.preheader ], [ 110, %.lr.ph.i.188 ]
  %.023.i.lcssa59 = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.eg, %.lr.ph.i.188 ]
  %i.ek = load i8, ptr %.023.i.lcssa59, align 1, !tbaa !733
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !733
  %i.eo = zext i8 %i.en to i32
  %i.ep = icmp eq i32 %.lcssa62, %i.eo
  br i1 %i.ep, label %.split27.us, label %.lr.ph.i.preheader.1

.split27.us:                                      ; preds = %.lr.ph.i.5.3, %.lr.ph.i.4.2, %.lr.ph.i.3.4, %.lr.ph.i.2.2, %.lr.ph.i.1.1, %sqlite3_strnicmp.exit, %sqlite3_strnicmp.exit.1, %sqlite3_strnicmp.exit.2, %sqlite3_strnicmp.exit.3, %sqlite3_strnicmp.exit.4, %sqlite3_strnicmp.exit.5, %.lr.ph.i.188, %sqlite3_strnicmp.exit.us, %sqlite3_strnicmp.exit.us.1, %sqlite3_strnicmp.exit.us.2, %sqlite3_strnicmp.exit.us.3, %sqlite3_strnicmp.exit.us.4, %sqlite3_strnicmp.exit.us.5, %sqlite3_strnicmp.exit.us.6, %sqlite3_strnicmp.exit.us.7, %.lr.ph.i.us.1134, %.lr.ph.i.us.1.1, %.lr.ph.i.us.2.2, %.lr.ph.i.us.3.4, %.lr.ph.i.us.4.2, %.lr.ph.i.us.5.3, %.lr.ph.i.us.6.4, %.lr.ph.i.us.7.3
  %.us-phi = phi i64 [ 7, %sqlite3_strnicmp.exit.us.7 ], [ 7, %.lr.ph.i.us.7.3 ], [ 5, %.lr.ph.i.us.5.3 ], [ 6, %.lr.ph.i.us.6.4 ], [ 0, %.lr.ph.i.us.1134 ], [ 1, %.lr.ph.i.us.1.1 ], [ 2, %.lr.ph.i.us.2.2 ], [ 3, %.lr.ph.i.us.3.4 ], [ 4, %.lr.ph.i.us.4.2 ], [ 0, %sqlite3_strnicmp.exit.us ], [ 1, %sqlite3_strnicmp.exit.us.1 ], [ 2, %sqlite3_strnicmp.exit.us.2 ], [ 3, %sqlite3_strnicmp.exit.us.3 ], [ 4, %sqlite3_strnicmp.exit.us.4 ], [ 5, %sqlite3_strnicmp.exit.us.5 ], [ 6, %sqlite3_strnicmp.exit.us.6 ], [ 5, %sqlite3_strnicmp.exit.5 ], [ 0, %sqlite3_strnicmp.exit ], [ 0, %.lr.ph.i.188 ], [ 1, %sqlite3_strnicmp.exit.1 ], [ 1, %.lr.ph.i.1.1 ], [ 2, %sqlite3_strnicmp.exit.2 ], [ 2, %.lr.ph.i.2.2 ], [ 3, %sqlite3_strnicmp.exit.3 ], [ 3, %.lr.ph.i.3.4 ], [ 4, %sqlite3_strnicmp.exit.4 ], [ 4, %.lr.ph.i.4.2 ], [ 5, %.lr.ph.i.5.3 ]
  %i.eq = getelementptr inbounds nuw i8, ptr @getSafetyLevel.iValue, i64 %.us-phi
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !733
  br label %.loopexit

.lr.ph.i.preheader.1:                             ; preds = %sqlite3_strnicmp.exit
  %i.es = and i8 %i.b, -33
  %i.et = icmp eq i8 %i.es, 78
  br i1 %i.et, label %.lr.ph.i.1.1, label %sqlite3_strnicmp.exit.1

.lr.ph.i.1.1:                                     ; preds = %.lr.ph.i.preheader.1
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !733
  %i.ew = and i8 %i.ev, -33
  %i.ex = icmp eq i8 %i.ew, 79
  br i1 %i.ex, label %.split27.us, label %sqlite3_strnicmp.exit.1

sqlite3_strnicmp.exit.1:                          ; preds = %.lr.ph.i.preheader.1, %.lr.ph.i.1.1
  %.lcssa62.1 = phi i32 [ 110, %.lr.ph.i.preheader.1 ], [ 111, %.lr.ph.i.1.1 ]
  %.023.i.lcssa59.1 = phi ptr [ %0, %.lr.ph.i.preheader.1 ], [ %i.eu, %.lr.ph.i.1.1 ]
  %3 = load i8, ptr %.023.i.lcssa59.1, align 1, !tbaa !733
  %.pn = zext i8 %3 to i64
  %.pre370.in = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.pn
  %.pre370 = load i8, ptr %.pre370.in, align 1, !tbaa !733
  %i.ey = zext i8 %.pre370 to i32
  %i.ez = icmp eq i32 %.lcssa62.1, %i.ey
  br i1 %i.ez, label %.split27.us, label %.loopexit

.split.split.2:                                   ; preds = %.split.split.preheader
  switch i32 %i.i, label %.loopexit [
    i32 3, label %.lr.ph.i.preheader.2
    i32 5, label %.lr.ph.i.preheader.3
    i32 4, label %.lr.ph.i.preheader.5
  ]

.lr.ph.i.preheader.2:                             ; preds = %.split.split.2
  %i.fa = and i8 %i.b, -33
  %i.fb = icmp eq i8 %i.fa, 79
  br i1 %i.fb, label %.lr.ph.i.2.1, label %sqlite3_strnicmp.exit.2

.lr.ph.i.2.1:                                     ; preds = %.lr.ph.i.preheader.2
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !733
  %i.fe = and i8 %i.fd, -33
  %i.ff = icmp eq i8 %i.fe, 70
  br i1 %i.ff, label %.lr.ph.i.2.2, label %sqlite3_strnicmp.exit.2

.lr.ph.i.2.2:                                     ; preds = %.lr.ph.i.2.1
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !733
  %i.fi = and i8 %i.fh, -33
  %i.fj = icmp eq i8 %i.fi, 70
  br i1 %i.fj, label %.split27.us, label %sqlite3_strnicmp.exit.2

sqlite3_strnicmp.exit.2:                          ; preds = %.lr.ph.i.preheader.2, %.lr.ph.i.2.1, %.lr.ph.i.2.2
  %.lcssa62.2 = phi i32 [ 111, %.lr.ph.i.preheader.2 ], [ 102, %.lr.ph.i.2.1 ], [ 102, %.lr.ph.i.2.2 ]
  %.023.i.lcssa59.2 = phi ptr [ %0, %.lr.ph.i.preheader.2 ], [ %i.fc, %.lr.ph.i.2.1 ], [ %i.fg, %.lr.ph.i.2.2 ]
  %i.fk = load i8, ptr %.023.i.lcssa59.2, align 1, !tbaa !733
  %i.fl = zext i8 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !733
  %i.fo = zext i8 %i.fn to i32
  %i.fp = icmp eq i32 %.lcssa62.2, %i.fo
  br i1 %i.fp, label %.split27.us, label %.lr.ph.i.preheader.4

.lr.ph.i.preheader.3:                             ; preds = %.split.split.2
  %i.fq = and i8 %i.b, -33
  %i.fr = icmp eq i8 %i.fq, 70
  br i1 %i.fr, label %.lr.ph.i.3.1, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.1:                                     ; preds = %.lr.ph.i.preheader.3
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !733
  %i.fu = and i8 %i.ft, -33
  %i.fv = icmp eq i8 %i.fu, 65
  br i1 %i.fv, label %.lr.ph.i.3.2, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.2:                                     ; preds = %.lr.ph.i.3.1
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !733
  %i.fy = and i8 %i.fx, -33
  %i.fz = icmp eq i8 %i.fy, 76
  br i1 %i.fz, label %.lr.ph.i.3.3, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.3:                                     ; preds = %.lr.ph.i.3.2
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !733
  %i.gc = and i8 %i.gb, -33
  %i.gd = icmp eq i8 %i.gc, 83
  br i1 %i.gd, label %.lr.ph.i.3.4, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.4:                                     ; preds = %.lr.ph.i.3.3
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !733
  %i.gg = and i8 %i.gf, -33
  %i.gh = icmp eq i8 %i.gg, 69
  br i1 %i.gh, label %.split27.us, label %sqlite3_strnicmp.exit.3

sqlite3_strnicmp.exit.3:                          ; preds = %.lr.ph.i.preheader.3, %.lr.ph.i.3.1, %.lr.ph.i.3.2, %.lr.ph.i.3.3, %.lr.ph.i.3.4
  %.lcssa62.3 = phi i32 [ 102, %.lr.ph.i.preheader.3 ], [ 97, %.lr.ph.i.3.1 ], [ 108, %.lr.ph.i.3.2 ], [ 115, %.lr.ph.i.3.3 ], [ 101, %.lr.ph.i.3.4 ]
  %.023.i.lcssa59.3 = phi ptr [ %0, %.lr.ph.i.preheader.3 ], [ %i.fs, %.lr.ph.i.3.1 ], [ %i.fw, %.lr.ph.i.3.2 ], [ %i.ga, %.lr.ph.i.3.3 ], [ %i.ge, %.lr.ph.i.3.4 ]
  %.pre371 = load i8, ptr %.023.i.lcssa59.3, align 1, !tbaa !733
  %.phi.trans.insert372 = zext i8 %.pre371 to i64
  %.phi.trans.insert373 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert372
  %.pre374 = load i8, ptr %.phi.trans.insert373, align 1, !tbaa !733
  %i.gi = zext i8 %.pre374 to i32
  %i.gj = icmp eq i32 %.lcssa62.3, %i.gi
  br i1 %i.gj, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.4:                             ; preds = %sqlite3_strnicmp.exit.2
  %i.gk = and i8 %i.b, -33
  %i.gl = icmp eq i8 %i.gk, 89
  br i1 %i.gl, label %.lr.ph.i.4.1, label %sqlite3_strnicmp.exit.4

.lr.ph.i.4.1:                                     ; preds = %.lr.ph.i.preheader.4
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !733
  %i.go = and i8 %i.gn, -33
  %i.gp = icmp eq i8 %i.go, 69
  br i1 %i.gp, label %.lr.ph.i.4.2, label %sqlite3_strnicmp.exit.4

.lr.ph.i.4.2:                                     ; preds = %.lr.ph.i.4.1
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !733
  %i.gs = and i8 %i.gr, -33
  %i.gt = icmp eq i8 %i.gs, 83
  br i1 %i.gt, label %.split27.us, label %sqlite3_strnicmp.exit.4

sqlite3_strnicmp.exit.4:                          ; preds = %.lr.ph.i.preheader.4, %.lr.ph.i.4.1, %.lr.ph.i.4.2
  %.lcssa62.4 = phi i32 [ 121, %.lr.ph.i.preheader.4 ], [ 101, %.lr.ph.i.4.1 ], [ 115, %.lr.ph.i.4.2 ]
  %.023.i.lcssa59.4 = phi ptr [ %0, %.lr.ph.i.preheader.4 ], [ %i.gm, %.lr.ph.i.4.1 ], [ %i.gq, %.lr.ph.i.4.2 ]
  %.pre375 = load i8, ptr %.023.i.lcssa59.4, align 1, !tbaa !733
  %.phi.trans.insert376 = zext i8 %.pre375 to i64
  %.phi.trans.insert377 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert376
  %.pre378 = load i8, ptr %.phi.trans.insert377, align 1, !tbaa !733
  %i.gu = zext i8 %.pre378 to i32
  %i.gv = icmp eq i32 %.lcssa62.4, %i.gu
  br i1 %i.gv, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.5:                             ; preds = %.split.split.2
  %i.gw = and i8 %i.b, -33
  %i.gx = icmp eq i8 %i.gw, 84
  br i1 %i.gx, label %.lr.ph.i.5.1, label %sqlite3_strnicmp.exit.5

.lr.ph.i.5.1:                                     ; preds = %.lr.ph.i.preheader.5
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !733
  %i.ha = and i8 %i.gz, -33
  %i.hb = icmp eq i8 %i.ha, 82
  br i1 %i.hb, label %.lr.ph.i.5.2, label %sqlite3_strnicmp.exit.5

.lr.ph.i.5.2:                                     ; preds = %.lr.ph.i.5.1
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !733
  %i.he = and i8 %i.hd, -33
  %i.hf = icmp eq i8 %i.he, 85
  br i1 %i.hf, label %.lr.ph.i.5.3, label %sqlite3_strnicmp.exit.5

.lr.ph.i.5.3:                                     ; preds = %.lr.ph.i.5.2
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !733
  %i.hi = and i8 %i.hh, -33
  %i.hj = icmp eq i8 %i.hi, 69
  br i1 %i.hj, label %.split27.us, label %sqlite3_strnicmp.exit.5

sqlite3_strnicmp.exit.5:                          ; preds = %.lr.ph.i.preheader.5, %.lr.ph.i.5.1, %.lr.ph.i.5.2, %.lr.ph.i.5.3
  %.lcssa62.5 = phi i32 [ 116, %.lr.ph.i.preheader.5 ], [ 114, %.lr.ph.i.5.1 ], [ 117, %.lr.ph.i.5.2 ], [ 101, %.lr.ph.i.5.3 ]
  %.023.i.lcssa59.5 = phi ptr [ %0, %.lr.ph.i.preheader.5 ], [ %i.gy, %.lr.ph.i.5.1 ], [ %i.hc, %.lr.ph.i.5.2 ], [ %i.hg, %.lr.ph.i.5.3 ]
  %i.hk = load i8, ptr %.023.i.lcssa59.5, align 1, !tbaa !733
  %i.hl = zext i8 %i.hk to i64
  %i.hm = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !733
  %i.ho = zext i8 %i.hn to i32
  %i.hp = icmp eq i32 %.lcssa62.5, %i.ho
  br i1 %i.hp, label %.split27.us, label %.loopexit

.loopexit:                                        ; preds = %sqlite3_strnicmp.exit.3, %sqlite3_strnicmp.exit.5, %sqlite3_strnicmp.exit.4, %sqlite3_strnicmp.exit.us.6, %sqlite3_strnicmp.exit.us.4, %.split.split.2, %.split.split.us.2, %bb.c, %sqlite3_strnicmp.exit.1, %sqlite3_strnicmp.exit.us.1, %sqlite3_strnicmp.exit.us.7, %.split27.us, %bb.b
  %.014 = phi i8 [ %i.f, %bb.b ], [ %i.er, %.split27.us ], [ %2, %sqlite3_strnicmp.exit.1 ], [ %2, %.split.split.us.2 ], [ %2, %sqlite3_strnicmp.exit.5 ], [ %2, %sqlite3_strnicmp.exit.us.6 ], [ %2, %sqlite3_strnicmp.exit.us.7 ], [ %2, %.split.split.2 ], [ %2, %sqlite3_strnicmp.exit.4 ], [ %2, %sqlite3_strnicmp.exit.us.1 ], [ %2, %sqlite3_strnicmp.exit.us.4 ], [ %2, %bb.c ], [ %2, %sqlite3_strnicmp.exit.3 ]
  ret i8 %.014
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3VdbeMultiLoad(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483645, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ...) unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.f = zext i32 %1 to i64                       ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %sqlite3VdbeAddOp4.exit, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %sqlite3VdbeAddOp4.exit ], [ 0, %bb.a ] ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1, !tbaa !733
  switch i8 %i.h, label %sqlite3VdbeAddOp2.exit24 [
    i8 0, label %bb.r
    i8 115, label %bb.c
    i8 105, label %bb.l
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 16               ; 3 uses
  %i.j = icmp ult i32 %i.i, 41
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.b, align 16
  %i.l = zext nneg i32 %i.i to i64
  %i.m = getelementptr i8, ptr %i.k, i64 %i.l
  %i.n = add nuw nsw i32 %i.i, 8
  store i32 %i.n, ptr %3, align 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  store ptr %i.p, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %i.m, %bb.d ], [ %i.o, %bb.e ]
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !741  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = select i1 %i.s, i32 77, i32 118          ; 2 uses
  %i.u = add nuw i64 %indvars.iv, %i.f            ; 2 uses
  %i.v = load i32, ptr %i.c, align 8, !tbaa !703  ; 4 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !1165
  %.not.i.i = icmp sgt i32 %i.w, %i.v
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = trunc i64 %i.u to i32
  %i.y = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef range(i32 -1, 511) %i.t, i32 noundef 0, i32 noundef %i.x, i32 noundef 0), !inline_history !2033
  br label %sqlite3VdbeAddOp3.exit.i

bb.h:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.v, 1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !703
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !702
  %i.ab = sext i32 %i.v to i64
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.aa, i64 %i.ab ; 6 uses
  %i.ad = trunc nuw nsw i32 %i.t to i8
  store i8 %i.ad, ptr %i.ac, align 8, !tbaa !929
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 0, ptr %i.ae, align 2, !tbaa !930
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !926
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = trunc i64 %i.u to i32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !927
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 0, ptr %i.aj, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ai, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp3.exit.i

sqlite3VdbeAddOp3.exit.i:                         ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ %i.y, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !679
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 103
  %i.am = load i8, ptr %i.al, align 1, !tbaa !918
  %.not.i9.i = icmp eq i8 %i.am, 0
  br i1 %.not.i9.i, label %bb.i, label %sqlite3VdbeAddOp4.exit

bb.i:                                             ; preds = %sqlite3VdbeAddOp3.exit.i
  %i.an = icmp slt i32 %.0.i.i, 0
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = load i32, ptr %i.c, align 8, !tbaa !703
  %i.ap = add nsw i32 %i.ao, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i10.i = phi i32 [ %i.ap, %bb.j ], [ %.0.i.i, %bb.i ]
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !702
  %i.ar = sext i32 %.0.i10.i to i64
  %i.as = getelementptr inbounds [32 x i8], ptr %i.aq, i64 %i.ar
  call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %0, ptr noundef %i.as, ptr noundef %i.r, i32 noundef 0), !inline_history !2034
  br label %sqlite3VdbeAddOp4.exit

bb.l:                                             ; preds = %bb.b
  %i.at = load i32, ptr %3, align 16              ; 3 uses
  %i.au = icmp ult i32 %i.at, 41
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.b, align 16
  %i.aw = zext nneg i32 %i.at to i64
  %i.ax = getelementptr i8, ptr %i.av, i64 %i.aw
  %i.ay = add nuw nsw i32 %i.at, 8
  store i32 %i.ay, ptr %3, align 16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store ptr %i.ba, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bb = phi ptr [ %i.ax, %bb.m ], [ %i.az, %bb.n ]
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !570 ; 2 uses
  %i.bd = add nuw i64 %indvars.iv, %i.f           ; 2 uses
  %i.be = load i32, ptr %i.c, align 8, !tbaa !703 ; 3 uses
  %i.bf = load i32, ptr %i.d, align 4, !tbaa !1165
  %.not.i.i18 = icmp sgt i32 %i.bf, %i.be
  br i1 %.not.i.i18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = trunc i64 %i.bd to i32
  %i.bh = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 73, i32 noundef %i.bc, i32 noundef %i.bg, i32 noundef 0), !inline_history !1197 ; 0 uses
  br label %sqlite3VdbeAddOp4.exit

bb.q:                                             ; preds = %bb.o
  %i.bi = add nsw i32 %i.be, 1
  store i32 %i.bi, ptr %i.c, align 8, !tbaa !703
  %i.bj = load ptr, ptr %i.e, align 8, !tbaa !702
  %i.bk = sext i32 %i.be to i64
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.bk ; 6 uses
  store i8 73, ptr %i.bl, align 8, !tbaa !929
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  store i16 0, ptr %i.bm, align 2, !tbaa !930
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  store i32 %i.bc, ptr %i.bn, align 4, !tbaa !926
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bp = trunc i64 %i.bd to i32
  store i32 %i.bp, ptr %i.bo, align 8, !tbaa !927
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  store i8 0, ptr %i.br, align 1, !tbaa !1167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bq, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp4.exit

sqlite3VdbeAddOp4.exit:                           ; preds = %bb.q, %bb.p, %bb.k, %sqlite3VdbeAddOp3.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
end_hunk_0
