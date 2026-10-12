Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 128
loop-unroll.NumUnrolled: 426
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3BtreeSetMmapLimit:bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !571
  %i.r = icmp sgt i64 %1, 0                       ; 2 uses
  %i.s = zext i1 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 27
  store i8 %i.s, ptr %i.t, align 1, !tbaa !1068
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !1024
  %.not.i.i.i = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %getPageMMap.getPageNormal.i.i = select i1 %i.r, ptr @getPageMMap, ptr @getPageNormal
  %getPageError.sink.i.i = select i1 %.not.i.i.i, ptr %getPageMMap.getPageNormal.i.i, ptr @getPageError
  store ptr %getPageError.sink.i.i, ptr %i.w, align 8, !tbaa !898
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1061
  %i.z = call i32 %i.y(ptr noundef nonnull %i.n, i32 noundef 18, ptr noundef nonnull %i.a) #58, !inline_history !231 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3PagerSetMmapLimit.exit

sqlite3PagerSetMmapLimit.exit:                    ; preds = %sqlite3BtreeEnter.exit, %bb.d, %sqlite3OsFileControlHint.exit.i.i
  %i.aa = load i8, ptr %i.d, align 1, !tbaa !962
  %.not.i4 = icmp eq i8 %i.aa, 0
  br i1 %.not.i4, label %sqlite3BtreeLeave.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3PagerSetMmapLimit.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !963
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !963
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
  %i.a = load i8, ptr %1, align 1, !tbaa !741     ; 3 uses
  %i.b = add i8 %i.a, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.b, 3
  br i1 %or.cond.i, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i8 %i.b to i32
  br label %getTempStore.exit

.preheader.i:                                     ; preds = %bb.a, %bb.e
  %i.d = phi i8 [ %.pr.i, %bb.e ], [ %i.a, %bb.a ] ; 3 uses
  %.013.i.i = phi ptr [ %i.n, %bb.e ], [ %1, %bb.a ]
  %.012.i.i = phi ptr [ %i.o, %bb.e ], [ @.str.602, %bb.a ] ; 2 uses
  %i.e = load i8, ptr %.012.i.i, align 1, !tbaa !741 ; 2 uses
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.g = icmp eq i8 %i.d, 0
  br i1 %i.g, label %getTempStore.exit, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.h = zext i8 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !741
  %i.k = zext i8 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !741
  %.not.i.i = icmp eq i8 %i.j, %i.m
  br i1 %.not.i.i, label %bb.e, label %sqlite3StrICmp.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  %.pr.i = load i8, ptr %i.n, align 1, !tbaa !741
  br label %.preheader.i

sqlite3StrICmp.exit.i:                            ; preds = %bb.d, %bb.h
  %i.p = phi i8 [ %.pre.i, %bb.h ], [ %i.a, %bb.d ] ; 3 uses
  %.013.i6.i = phi ptr [ %i.z, %bb.h ], [ %1, %bb.d ]
  %.012.i7.i = phi ptr [ %i.aa, %bb.h ], [ @.str.443, %bb.d ] ; 2 uses
  %i.q = load i8, ptr %.012.i7.i, align 1, !tbaa !741 ; 2 uses
  %i.r = icmp eq i8 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.s = icmp eq i8 %i.p, 0
  br i1 %i.s, label %getTempStore.exit, label %bb.h

bb.g:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.t = zext i8 %i.p to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !741
  %i.w = zext i8 %i.q to i64
  %i.x = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !741
  %.not.i8.i = icmp eq i8 %i.v, %i.y
  br i1 %.not.i8.i, label %bb.h, label %getTempStore.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i6.i, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i7.i, i64 1
  %.pre.i = load i8, ptr %i.z, align 1, !tbaa !741
  br label %sqlite3StrICmp.exit.i

getTempStore.exit:                                ; preds = %bb.c, %bb.f, %bb.g, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.g ], [ 2, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !1002  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 102 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !1711
  %i.ae = zext i8 %i.ad to i32
  %i.af = icmp eq i32 %.0.i, %i.ae
  br i1 %i.af, label %bb.m, label %bb.i

bb.i:                                             ; preds = %getTempStore.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !612
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !617 ; 3 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 101
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !961
  %.not9.i = icmp eq i8 %i.al, 0
  br i1 %.not9.i, label %invalidateTempStorage.exit, label %sqlite3BtreeTxnState.exit.i

sqlite3BtreeTxnState.exit.i:                      ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !998
  %.not10.i = icmp eq i8 %i.an, 0
  br i1 %.not10.i, label %bb.k, label %invalidateTempStorage.exit

bb.k:                                             ; preds = %sqlite3BtreeTxnState.exit.i
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.aj)
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !612
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr null, ptr %i.ap, align 8, !tbaa !617
  tail call fastcc void @sqlite3ResetAllSchemasOfConnection(ptr noundef nonnull %i.ab), !inline_history !6129
  br label %bb.l

invalidateTempStorage.exit:                       ; preds = %bb.j, %sqlite3BtreeTxnState.exit.i
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1034), !inline_history !6129
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.aq = trunc nuw nsw i32 %.0.i to i8
  store i8 %i.aq, ptr %i.ac, align 2, !tbaa !1711
  br label %bb.m

bb.m:                                             ; preds = %invalidateTempStorage.exit, %getTempStore.exit, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invalidateTempStorage(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1002   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !612
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !617  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 101
  %i.g = load i8, ptr %i.f, align 1, !tbaa !961
  %.not9 = icmp eq i8 %i.g, 0
  br i1 %.not9, label %bb.c, label %sqlite3BtreeTxnState.exit

sqlite3BtreeTxnState.exit:                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !998
  %.not10 = icmp eq i8 %i.i, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %sqlite3BtreeTxnState.exit, %bb.b
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1034)
  br label %bb.e

bb.d:                                             ; preds = %sqlite3BtreeTxnState.exit
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.e)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !612
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr null, ptr %i.k, align 8, !tbaa !617
  tail call fastcc void @sqlite3ResetAllSchemasOfConnection(ptr noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @getSafetyLevel(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #20 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !741     ; 8 uses
  %i.c = add i8 %i.b, -58
  %.not = icmp ult i8 %i.c, -10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !576
  %i.d = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull readonly %0, ptr noundef %i.a) ; 0 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !576
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.f = trunc i32 %i.e to i8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #59
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
  br i1 %i.l, label %bb.d, label %sqlite3_strnicmp.exit.us

bb.d:                                             ; preds = %.lr.ph.i.preheader.us
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !741
  %i.o = and i8 %i.n, -33
  %i.p = icmp eq i8 %i.o, 78
  br i1 %i.p, label %.split27.us, label %sqlite3_strnicmp.exit.us

sqlite3_strnicmp.exit.us:                         ; preds = %.lr.ph.i.preheader.us, %bb.d
  %.lcssa54 = phi i32 [ 111, %.lr.ph.i.preheader.us ], [ 110, %bb.d ]
  %.023.i.us.lcssa51 = phi ptr [ %0, %.lr.ph.i.preheader.us ], [ %i.m, %bb.d ]
  %i.q = load i8, ptr %.023.i.us.lcssa51, align 1, !tbaa !741
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !741
  %i.u = zext i8 %i.t to i32
  %i.v = icmp eq i32 %.lcssa54, %i.u
  br i1 %i.v, label %.split27.us, label %.lr.ph.i.preheader.us.1

.lr.ph.i.preheader.us.1:                          ; preds = %sqlite3_strnicmp.exit.us
  %i.w = and i8 %i.b, -33
  %i.x = icmp eq i8 %i.w, 78
  br i1 %i.x, label %bb.e, label %sqlite3_strnicmp.exit.us.1

bb.e:                                             ; preds = %.lr.ph.i.preheader.us.1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !741
  %i.aa = and i8 %i.z, -33
  %i.ab = icmp eq i8 %i.aa, 79
  br i1 %i.ab, label %.split27.us, label %sqlite3_strnicmp.exit.us.1

sqlite3_strnicmp.exit.us.1:                       ; preds = %.lr.ph.i.preheader.us.1, %bb.e
  %.lcssa54.1 = phi i32 [ 110, %.lr.ph.i.preheader.us.1 ], [ 111, %bb.e ]
  %.023.i.us.lcssa51.1 = phi ptr [ %0, %.lr.ph.i.preheader.us.1 ], [ %i.y, %bb.e ]
  %i.ac = load i8, ptr %.023.i.us.lcssa51.1, align 1, !tbaa !741
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !741
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
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !741
  %i.am = and i8 %i.al, -33
  %i.an = icmp eq i8 %i.am, 70
  br i1 %i.an, label %bb.f, label %sqlite3_strnicmp.exit.us.2

bb.f:                                             ; preds = %.lr.ph.i.us.2.1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !741
  %i.aq = and i8 %i.ap, -33
  %i.ar = icmp eq i8 %i.aq, 70
  br i1 %i.ar, label %.split27.us, label %sqlite3_strnicmp.exit.us.2

sqlite3_strnicmp.exit.us.2:                       ; preds = %.lr.ph.i.preheader.us.2, %.lr.ph.i.us.2.1, %bb.f
  %.lcssa54.2 = phi i32 [ 111, %.lr.ph.i.preheader.us.2 ], [ 102, %.lr.ph.i.us.2.1 ], [ 102, %bb.f ]
  %.023.i.us.lcssa51.2 = phi ptr [ %0, %.lr.ph.i.preheader.us.2 ], [ %i.ak, %.lr.ph.i.us.2.1 ], [ %i.ao, %bb.f ]
  %i.as = load i8, ptr %.023.i.us.lcssa51.2, align 1, !tbaa !741
  %i.at = zext i8 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !741
  %i.aw = zext i8 %i.av to i32
  %i.ax = icmp eq i32 %.lcssa54.2, %i.aw
  br i1 %i.ax, label %.split27.us, label %.lr.ph.i.preheader.us.4

.lr.ph.i.preheader.us.3:                          ; preds = %.split.split.us.2
  %i.ay = and i8 %i.b, -33
  %i.az = icmp eq i8 %i.ay, 70
  br i1 %i.az, label %.lr.ph.i.us.3.1, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.1:                                  ; preds = %.lr.ph.i.preheader.us.3
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !741
  %i.bc = and i8 %i.bb, -33
  %i.bd = icmp eq i8 %i.bc, 65
  br i1 %i.bd, label %.lr.ph.i.us.3.2, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.2:                                  ; preds = %.lr.ph.i.us.3.1
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !741
  %i.bg = and i8 %i.bf, -33
  %i.bh = icmp eq i8 %i.bg, 76
  br i1 %i.bh, label %.lr.ph.i.us.3.3, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.3:                                  ; preds = %.lr.ph.i.us.3.2
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !741
  %i.bk = and i8 %i.bj, -33
  %i.bl = icmp eq i8 %i.bk, 83
  br i1 %i.bl, label %bb.g, label %sqlite3_strnicmp.exit.us.3

bb.g:                                             ; preds = %.lr.ph.i.us.3.3
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !741
  %i.bo = and i8 %i.bn, -33
  %i.bp = icmp eq i8 %i.bo, 69
  br i1 %i.bp, label %.split27.us, label %sqlite3_strnicmp.exit.us.3

sqlite3_strnicmp.exit.us.3:                       ; preds = %.lr.ph.i.preheader.us.3, %.lr.ph.i.us.3.1, %.lr.ph.i.us.3.2, %.lr.ph.i.us.3.3, %bb.g
  %.lcssa54.3 = phi i32 [ 102, %.lr.ph.i.preheader.us.3 ], [ 97, %.lr.ph.i.us.3.1 ], [ 108, %.lr.ph.i.us.3.2 ], [ 115, %.lr.ph.i.us.3.3 ], [ 101, %bb.g ]
  %.023.i.us.lcssa51.3 = phi ptr [ %0, %.lr.ph.i.preheader.us.3 ], [ %i.ba, %.lr.ph.i.us.3.1 ], [ %i.be, %.lr.ph.i.us.3.2 ], [ %i.bi, %.lr.ph.i.us.3.3 ], [ %i.bm, %bb.g ]
  %i.bq = load i8, ptr %.023.i.us.lcssa51.3, align 1, !tbaa !741
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !741
  %i.bu = zext i8 %i.bt to i32
  %i.bv = icmp eq i32 %.lcssa54.3, %i.bu
  br i1 %i.bv, label %.split27.us, label %.lr.ph.i.preheader.us.6

.lr.ph.i.preheader.us.4:                          ; preds = %sqlite3_strnicmp.exit.us.2
  %3 = load i8, ptr %0, align 1, !tbaa !741
  %i.bw = and i8 %3, -33
  %i.bx = icmp eq i8 %i.bw, 89
  br i1 %i.bx, label %.lr.ph.i.us.4.1, label %sqlite3_strnicmp.exit.us.4

.lr.ph.i.us.4.1:                                  ; preds = %.lr.ph.i.preheader.us.4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !741
  %i.ca = and i8 %i.bz, -33
  %i.cb = icmp eq i8 %i.ca, 69
  br i1 %i.cb, label %bb.h, label %sqlite3_strnicmp.exit.us.4

bb.h:                                             ; preds = %.lr.ph.i.us.4.1
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !741
  %i.ce = and i8 %i.cd, -33
  %i.cf = icmp eq i8 %i.ce, 83
  br i1 %i.cf, label %.split27.us, label %sqlite3_strnicmp.exit.us.4

sqlite3_strnicmp.exit.us.4:                       ; preds = %.lr.ph.i.preheader.us.4, %.lr.ph.i.us.4.1, %bb.h
  %.lcssa54.4 = phi i32 [ 121, %.lr.ph.i.preheader.us.4 ], [ 101, %.lr.ph.i.us.4.1 ], [ 115, %bb.h ]
  %.023.i.us.lcssa51.4 = phi ptr [ %0, %.lr.ph.i.preheader.us.4 ], [ %i.by, %.lr.ph.i.us.4.1 ], [ %i.cc, %bb.h ]
  %i.cg = load i8, ptr %.023.i.us.lcssa51.4, align 1, !tbaa !741
  %i.ch = zext i8 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !741
  %i.ck = zext i8 %i.cj to i32
  %i.cl = icmp eq i32 %.lcssa54.4, %i.ck
  br i1 %i.cl, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.us.5:                          ; preds = %.split.split.us.2
  %4 = load i8, ptr %0, align 1, !tbaa !741
  %i.cm = and i8 %4, -33
  %i.cn = icmp eq i8 %i.cm, 84
  br i1 %i.cn, label %.lr.ph.i.us.5.1, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.us.5.1:                                  ; preds = %.lr.ph.i.preheader.us.5
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !741
  %i.cq = and i8 %i.cp, -33
  %i.cr = icmp eq i8 %i.cq, 82
  br i1 %i.cr, label %.lr.ph.i.us.5.2, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.us.5.2:                                  ; preds = %.lr.ph.i.us.5.1
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !741
  %i.cu = and i8 %i.ct, -33
  %i.cv = icmp eq i8 %i.cu, 85
  br i1 %i.cv, label %bb.i, label %sqlite3_strnicmp.exit.us.5

bb.i:                                             ; preds = %.lr.ph.i.us.5.2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !741
  %i.cy = and i8 %i.cx, -33
  %i.cz = icmp eq i8 %i.cy, 69
  br i1 %i.cz, label %.split27.us, label %sqlite3_strnicmp.exit.us.5

sqlite3_strnicmp.exit.us.5:                       ; preds = %.lr.ph.i.preheader.us.5, %.lr.ph.i.us.5.1, %.lr.ph.i.us.5.2, %bb.i
  %.lcssa54.5 = phi i32 [ 116, %.lr.ph.i.preheader.us.5 ], [ 114, %.lr.ph.i.us.5.1 ], [ 117, %.lr.ph.i.us.5.2 ], [ 101, %bb.i ]
  %.023.i.us.lcssa51.5 = phi ptr [ %0, %.lr.ph.i.preheader.us.5 ], [ %i.co, %.lr.ph.i.us.5.1 ], [ %i.cs, %.lr.ph.i.us.5.2 ], [ %i.cw, %bb.i ]
  %i.da = load i8, ptr %.023.i.us.lcssa51.5, align 1, !tbaa !741
  %i.db = zext i8 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !741
  %i.de = zext i8 %i.dd to i32
  %i.df = icmp eq i32 %.lcssa54.5, %i.de
  br i1 %i.df, label %.split27.us, label %.lr.ph.i.preheader.us.7

.lr.ph.i.preheader.us.6:                          ; preds = %sqlite3_strnicmp.exit.us.3
  %5 = load i8, ptr %0, align 1, !tbaa !741
  %i.dg = and i8 %5, -33
  %i.dh = icmp eq i8 %i.dg, 69
  br i1 %i.dh, label %.lr.ph.i.us.6.1, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.1:                                  ; preds = %.lr.ph.i.preheader.us.6
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !741
  %i.dk = and i8 %i.dj, -33
  %i.dl = icmp eq i8 %i.dk, 88
  br i1 %i.dl, label %.lr.ph.i.us.6.2, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.2:                                  ; preds = %.lr.ph.i.us.6.1
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !741
  %i.do = and i8 %i.dn, -33
  %i.dp = icmp eq i8 %i.do, 84
  br i1 %i.dp, label %.lr.ph.i.us.6.3, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.3:                                  ; preds = %.lr.ph.i.us.6.2
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !741
  %i.ds = and i8 %i.dr, -33
  %i.dt = icmp eq i8 %i.ds, 82
  br i1 %i.dt, label %bb.j, label %sqlite3_strnicmp.exit.us.6

bb.j:                                             ; preds = %.lr.ph.i.us.6.3
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !741
  %i.dw = and i8 %i.dv, -33
  %i.dx = icmp eq i8 %i.dw, 65
  br i1 %i.dx, label %.split27.us, label %sqlite3_strnicmp.exit.us.6

sqlite3_strnicmp.exit.us.6:                       ; preds = %.lr.ph.i.preheader.us.6, %.lr.ph.i.us.6.1, %.lr.ph.i.us.6.2, %.lr.ph.i.us.6.3, %bb.j
  %.lcssa54.6 = phi i32 [ 101, %.lr.ph.i.preheader.us.6 ], [ 120, %.lr.ph.i.us.6.1 ], [ 116, %.lr.ph.i.us.6.2 ], [ 114, %.lr.ph.i.us.6.3 ], [ 97, %bb.j ]
  %.023.i.us.lcssa51.6 = phi ptr [ %0, %.lr.ph.i.preheader.us.6 ], [ %i.di, %.lr.ph.i.us.6.1 ], [ %i.dm, %.lr.ph.i.us.6.2 ], [ %i.dq, %.lr.ph.i.us.6.3 ], [ %i.du, %bb.j ]
  %i.dy = load i8, ptr %.023.i.us.lcssa51.6, align 1, !tbaa !741
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !741
  %i.ec = zext i8 %i.eb to i32
  %i.ed = icmp eq i32 %.lcssa54.6, %i.ec
  br i1 %i.ed, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.us.7:                          ; preds = %sqlite3_strnicmp.exit.us.5
  %6 = load i8, ptr %0, align 1, !tbaa !741
  %i.ee = and i8 %6, -33
  %i.ef = icmp eq i8 %i.ee, 70
  br i1 %i.ef, label %.lr.ph.i.us.7.1, label %sqlite3_strnicmp.exit.us.7

.lr.ph.i.us.7.1:                                  ; preds = %.lr.ph.i.preheader.us.7
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !741
  %i.ei = and i8 %i.eh, -33
  %i.ej = icmp eq i8 %i.ei, 85
  br i1 %i.ej, label %.lr.ph.i.us.7.2, label %sqlite3_strnicmp.exit.us.7

.lr.ph.i.us.7.2:                                  ; preds = %.lr.ph.i.us.7.1
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !741
  %i.em = and i8 %i.el, -33
  %i.en = icmp eq i8 %i.em, 76
  br i1 %i.en, label %bb.k, label %sqlite3_strnicmp.exit.us.7

bb.k:                                             ; preds = %.lr.ph.i.us.7.2
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !741
  %i.eq = and i8 %i.ep, -33
  %i.er = icmp eq i8 %i.eq, 76
  br i1 %i.er, label %.split27.us, label %sqlite3_strnicmp.exit.us.7

sqlite3_strnicmp.exit.us.7:                       ; preds = %.lr.ph.i.preheader.us.7, %.lr.ph.i.us.7.1, %.lr.ph.i.us.7.2, %bb.k
  %.lcssa54.7 = phi i32 [ 102, %.lr.ph.i.preheader.us.7 ], [ 117, %.lr.ph.i.us.7.1 ], [ 108, %.lr.ph.i.us.7.2 ], [ 108, %bb.k ]
  %.023.i.us.lcssa51.7 = phi ptr [ %0, %.lr.ph.i.preheader.us.7 ], [ %i.eg, %.lr.ph.i.us.7.1 ], [ %i.ek, %.lr.ph.i.us.7.2 ], [ %i.eo, %bb.k ]
  %i.es = load i8, ptr %.023.i.us.lcssa51.7, align 1, !tbaa !741
  %i.et = zext i8 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !741
  %i.ew = zext i8 %i.ev to i32
  %i.ex = icmp eq i32 %.lcssa54.7, %i.ew
  br i1 %i.ex, label %.split27.us, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.split.split.preheader
  %i.ey = and i8 %i.b, -33
  %i.ez = icmp eq i8 %i.ey, 79
  br i1 %i.ez, label %bb.l, label %sqlite3_strnicmp.exit

bb.l:                                             ; preds = %.lr.ph.i.preheader
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !741
  %i.fc = and i8 %i.fb, -33
  %i.fd = icmp eq i8 %i.fc, 78
  br i1 %i.fd, label %.split27.us, label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i.preheader, %bb.l
  %.lcssa62 = phi i32 [ 111, %.lr.ph.i.preheader ], [ 110, %bb.l ]
  %.023.i.lcssa59 = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.fa, %bb.l ]
  %i.fe = load i8, ptr %.023.i.lcssa59, align 1, !tbaa !741
  %i.ff = zext i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !741
  %i.fi = zext i8 %i.fh to i32
  %i.fj = icmp eq i32 %.lcssa62, %i.fi
  br i1 %i.fj, label %.split27.us, label %.lr.ph.i.preheader.1

.split27.us:                                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %sqlite3_strnicmp.exit, %sqlite3_strnicmp.exit.1, %sqlite3_strnicmp.exit.2, %sqlite3_strnicmp.exit.3, %sqlite3_strnicmp.exit.4, %sqlite3_strnicmp.exit.5, %bb.l, %sqlite3_strnicmp.exit.us, %sqlite3_strnicmp.exit.us.1, %sqlite3_strnicmp.exit.us.2, %sqlite3_strnicmp.exit.us.3, %sqlite3_strnicmp.exit.us.4, %sqlite3_strnicmp.exit.us.5, %sqlite3_strnicmp.exit.us.6, %sqlite3_strnicmp.exit.us.7, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.us-phi = phi i64 [ 7, %sqlite3_strnicmp.exit.us.7 ], [ 7, %bb.k ], [ 5, %bb.i ], [ 6, %bb.j ], [ 0, %bb.d ], [ 1, %bb.e ], [ 2, %bb.f ], [ 3, %bb.g ], [ 4, %bb.h ], [ 0, %sqlite3_strnicmp.exit.us ], [ 1, %sqlite3_strnicmp.exit.us.1 ], [ 2, %sqlite3_strnicmp.exit.us.2 ], [ 3, %sqlite3_strnicmp.exit.us.3 ], [ 4, %sqlite3_strnicmp.exit.us.4 ], [ 5, %sqlite3_strnicmp.exit.us.5 ], [ 6, %sqlite3_strnicmp.exit.us.6 ], [ 5, %sqlite3_strnicmp.exit.5 ], [ 0, %sqlite3_strnicmp.exit ], [ 0, %bb.l ], [ 1, %sqlite3_strnicmp.exit.1 ], [ 1, %bb.m ], [ 2, %sqlite3_strnicmp.exit.2 ], [ 2, %bb.n ], [ 3, %sqlite3_strnicmp.exit.3 ], [ 3, %bb.o ], [ 4, %sqlite3_strnicmp.exit.4 ], [ 4, %bb.p ], [ 5, %bb.q ]
  %i.fk = getelementptr inbounds nuw i8, ptr @getSafetyLevel.iValue, i64 %.us-phi
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !741
  br label %.loopexit

.lr.ph.i.preheader.1:                             ; preds = %sqlite3_strnicmp.exit
  %i.fm = and i8 %i.b, -33
  %i.fn = icmp eq i8 %i.fm, 78
  br i1 %i.fn, label %bb.m, label %sqlite3_strnicmp.exit.1

bb.m:                                             ; preds = %.lr.ph.i.preheader.1
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !741 ; 2 uses
  %i.fq = and i8 %i.fp, -33
  %i.fr = icmp eq i8 %i.fq, 79
  br i1 %i.fr, label %.split27.us, label %sqlite3_strnicmp.exit.1

sqlite3_strnicmp.exit.1:                          ; preds = %.lr.ph.i.preheader.1, %bb.m
  %.pn.in = phi i8 [ %i.b, %.lr.ph.i.preheader.1 ], [ %i.fp, %bb.m ]
  %.lcssa62.1 = phi i32 [ 110, %.lr.ph.i.preheader.1 ], [ 111, %bb.m ]
  %i.fs = zext i8 %.pn.in to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !741
  %i.fv = zext i8 %i.fu to i32
  %i.fw = icmp eq i32 %.lcssa62.1, %i.fv
  br i1 %i.fw, label %.split27.us, label %.loopexit

.split.split.2:                                   ; preds = %.split.split.preheader
  switch i32 %i.i, label %.loopexit [
    i32 3, label %.lr.ph.i.preheader.2
    i32 5, label %.lr.ph.i.preheader.3
    i32 4, label %.lr.ph.i.preheader.5
  ]

.lr.ph.i.preheader.2:                             ; preds = %.split.split.2
  %7 = load i8, ptr %0, align 1, !tbaa !741
  %i.fx = and i8 %7, -33
  %i.fy = icmp eq i8 %i.fx, 79
  br i1 %i.fy, label %.lr.ph.i.2.1, label %sqlite3_strnicmp.exit.2

.lr.ph.i.2.1:                                     ; preds = %.lr.ph.i.preheader.2
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !741
  %i.gb = and i8 %i.ga, -33
  %i.gc = icmp eq i8 %i.gb, 70
  br i1 %i.gc, label %bb.n, label %sqlite3_strnicmp.exit.2

bb.n:                                             ; preds = %.lr.ph.i.2.1
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !741
  %i.gf = and i8 %i.ge, -33
  %i.gg = icmp eq i8 %i.gf, 70
  br i1 %i.gg, label %.split27.us, label %sqlite3_strnicmp.exit.2

sqlite3_strnicmp.exit.2:                          ; preds = %.lr.ph.i.preheader.2, %.lr.ph.i.2.1, %bb.n
  %.lcssa62.2 = phi i32 [ 111, %.lr.ph.i.preheader.2 ], [ 102, %.lr.ph.i.2.1 ], [ 102, %bb.n ]
  %.023.i.lcssa59.2 = phi ptr [ %0, %.lr.ph.i.preheader.2 ], [ %i.fz, %.lr.ph.i.2.1 ], [ %i.gd, %bb.n ]
  %i.gh = load i8, ptr %.023.i.lcssa59.2, align 1, !tbaa !741
  %i.gi = zext i8 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !741
  %i.gl = zext i8 %i.gk to i32
  %i.gm = icmp eq i32 %.lcssa62.2, %i.gl
  br i1 %i.gm, label %.split27.us, label %.lr.ph.i.preheader.4

.lr.ph.i.preheader.3:                             ; preds = %.split.split.2
  %8 = load i8, ptr %0, align 1, !tbaa !741
  %i.gn = and i8 %8, -33
  %i.go = icmp eq i8 %i.gn, 70
  br i1 %i.go, label %.lr.ph.i.3.1, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.1:                                     ; preds = %.lr.ph.i.preheader.3
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !741
  %i.gr = and i8 %i.gq, -33
  %i.gs = icmp eq i8 %i.gr, 65
  br i1 %i.gs, label %.lr.ph.i.3.2, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.2:                                     ; preds = %.lr.ph.i.3.1
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !741
  %i.gv = and i8 %i.gu, -33
  %i.gw = icmp eq i8 %i.gv, 76
  br i1 %i.gw, label %.lr.ph.i.3.3, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.3:                                     ; preds = %.lr.ph.i.3.2
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !741
  %i.gz = and i8 %i.gy, -33
  %i.ha = icmp eq i8 %i.gz, 83
  br i1 %i.ha, label %bb.o, label %sqlite3_strnicmp.exit.3

bb.o:                                             ; preds = %.lr.ph.i.3.3
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !741
  %i.hd = and i8 %i.hc, -33
  %i.he = icmp eq i8 %i.hd, 69
  br i1 %i.he, label %.split27.us, label %sqlite3_strnicmp.exit.3

sqlite3_strnicmp.exit.3:                          ; preds = %.lr.ph.i.preheader.3, %.lr.ph.i.3.1, %.lr.ph.i.3.2, %.lr.ph.i.3.3, %bb.o
  %.lcssa62.3 = phi i32 [ 102, %.lr.ph.i.preheader.3 ], [ 97, %.lr.ph.i.3.1 ], [ 108, %.lr.ph.i.3.2 ], [ 115, %.lr.ph.i.3.3 ], [ 101, %bb.o ]
  %.023.i.lcssa59.3 = phi ptr [ %0, %.lr.ph.i.preheader.3 ], [ %i.gp, %.lr.ph.i.3.1 ], [ %i.gt, %.lr.ph.i.3.2 ], [ %i.gx, %.lr.ph.i.3.3 ], [ %i.hb, %bb.o ]
  %i.hf = load i8, ptr %.023.i.lcssa59.3, align 1, !tbaa !741
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !741
  %i.hj = zext i8 %i.hi to i32
  %i.hk = icmp eq i32 %.lcssa62.3, %i.hj
  br i1 %i.hk, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.4:                             ; preds = %sqlite3_strnicmp.exit.2
  %9 = load i8, ptr %0, align 1, !tbaa !741
  %i.hl = and i8 %9, -33
  %i.hm = icmp eq i8 %i.hl, 89
  br i1 %i.hm, label %.lr.ph.i.4.1, label %sqlite3_strnicmp.exit.4

.lr.ph.i.4.1:                                     ; preds = %.lr.ph.i.preheader.4
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !741
  %i.hp = and i8 %i.ho, -33
  %i.hq = icmp eq i8 %i.hp, 69
  br i1 %i.hq, label %bb.p, label %sqlite3_strnicmp.exit.4

bb.p:                                             ; preds = %.lr.ph.i.4.1
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !741
  %i.ht = and i8 %i.hs, -33
  %i.hu = icmp eq i8 %i.ht, 83
  br i1 %i.hu, label %.split27.us, label %sqlite3_strnicmp.exit.4

sqlite3_strnicmp.exit.4:                          ; preds = %.lr.ph.i.preheader.4, %.lr.ph.i.4.1, %bb.p
  %.lcssa62.4 = phi i32 [ 121, %.lr.ph.i.preheader.4 ], [ 101, %.lr.ph.i.4.1 ], [ 115, %bb.p ]
  %.023.i.lcssa59.4 = phi ptr [ %0, %.lr.ph.i.preheader.4 ], [ %i.hn, %.lr.ph.i.4.1 ], [ %i.hr, %bb.p ]
  %i.hv = load i8, ptr %.023.i.lcssa59.4, align 1, !tbaa !741
  %i.hw = zext i8 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !741
  %i.hz = zext i8 %i.hy to i32
  %i.ia = icmp eq i32 %.lcssa62.4, %i.hz
  br i1 %i.ia, label %.split27.us, label %.loopexit

.lr.ph.i.preheader.5:                             ; preds = %.split.split.2
  %10 = load i8, ptr %0, align 1, !tbaa !741
  %i.ib = and i8 %10, -33
  %i.ic = icmp eq i8 %i.ib, 84
  br i1 %i.ic, label %.lr.ph.i.5.1, label %sqlite3_strnicmp.exit.5

.lr.ph.i.5.1:                                     ; preds = %.lr.ph.i.preheader.5
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !741
  %i.if = and i8 %i.ie, -33
  %i.ig = icmp eq i8 %i.if, 82
  br i1 %i.ig, label %.lr.ph.i.5.2, label %sqlite3_strnicmp.exit.5

.lr.ph.i.5.2:                                     ; preds = %.lr.ph.i.5.1
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !741
  %i.ij = and i8 %i.ii, -33
  %i.ik = icmp eq i8 %i.ij, 85
  br i1 %i.ik, label %bb.q, label %sqlite3_strnicmp.exit.5

bb.q:                                             ; preds = %.lr.ph.i.5.2
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !741
  %i.in = and i8 %i.im, -33
  %i.io = icmp eq i8 %i.in, 69
  br i1 %i.io, label %.split27.us, label %sqlite3_strnicmp.exit.5

sqlite3_strnicmp.exit.5:                          ; preds = %.lr.ph.i.preheader.5, %.lr.ph.i.5.1, %.lr.ph.i.5.2, %bb.q
  %.lcssa62.5 = phi i32 [ 116, %.lr.ph.i.preheader.5 ], [ 114, %.lr.ph.i.5.1 ], [ 117, %.lr.ph.i.5.2 ], [ 101, %bb.q ]
  %.023.i.lcssa59.5 = phi ptr [ %0, %.lr.ph.i.preheader.5 ], [ %i.id, %.lr.ph.i.5.1 ], [ %i.ih, %.lr.ph.i.5.2 ], [ %i.il, %bb.q ]
  %i.ip = load i8, ptr %.023.i.lcssa59.5, align 1, !tbaa !741
  %i.iq = zext i8 %i.ip to i64
  %i.ir = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.iq
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !741
  %i.it = zext i8 %i.is to i32
  %i.iu = icmp eq i32 %.lcssa62.5, %i.it
  br i1 %i.iu, label %.split27.us, label %.loopexit

.loopexit:                                        ; preds = %sqlite3_strnicmp.exit.3, %sqlite3_strnicmp.exit.5, %sqlite3_strnicmp.exit.4, %sqlite3_strnicmp.exit.us.6, %sqlite3_strnicmp.exit.us.4, %.split.split.2, %.split.split.us.2, %bb.c, %sqlite3_strnicmp.exit.1, %sqlite3_strnicmp.exit.us.1, %sqlite3_strnicmp.exit.us.7, %.split27.us, %bb.b
  %.014 = phi i8 [ %i.f, %bb.b ], [ %i.fl, %.split27.us ], [ %2, %sqlite3_strnicmp.exit.1 ], [ %2, %.split.split.us.2 ], [ %2, %sqlite3_strnicmp.exit.5 ], [ %2, %sqlite3_strnicmp.exit.us.6 ], [ %2, %sqlite3_strnicmp.exit.us.7 ], [ %2, %.split.split.2 ], [ %2, %sqlite3_strnicmp.exit.4 ], [ %2, %sqlite3_strnicmp.exit.us.1 ], [ %2, %sqlite3_strnicmp.exit.us.4 ], [ %2, %bb.c ], [ %2, %sqlite3_strnicmp.exit.3 ]
  ret i8 %.014
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3VdbeMultiLoad(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483645, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ...) unnamed_addr #0 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #58
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
  %i.h = load i8, ptr %i.g, align 1, !tbaa !741
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !747  ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = select i1 %i.s, i32 76, i32 118          ; 2 uses
  %i.u = add nuw i64 %indvars.iv, %i.f            ; 2 uses
  %i.v = load i32, ptr %i.c, align 8, !tbaa !711  ; 4 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !1207
  %.not.i.i = icmp sgt i32 %i.w, %i.v
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = trunc i64 %i.u to i32
  %i.y = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef range(i32 -1, 511) %i.t, i32 noundef 0, i32 noundef %i.x, i32 noundef 0), !inline_history !1235
  br label %sqlite3VdbeAddOp3.exit.i

bb.h:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.v, 1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !711
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !710
  %i.ab = sext i32 %i.v to i64
  %i.ac = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.ab ; 7 uses
  %i.ad = trunc nuw nsw i32 %i.t to i8
  store i8 %i.ad, ptr %i.ac, align 8, !tbaa !938
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 0, ptr %i.ae, align 2, !tbaa !957
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !954
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = trunc i64 %i.u to i32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !955
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !956
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !741
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 0, ptr %i.ak, align 1, !tbaa !939
  br label %sqlite3VdbeAddOp3.exit.i

sqlite3VdbeAddOp3.exit.i:                         ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ %i.y, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !687
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 103
  %i.an = load i8, ptr %i.am, align 1, !tbaa !928
  %.not.i9.i = icmp eq i8 %i.an, 0
  br i1 %.not.i9.i, label %bb.i, label %sqlite3VdbeAddOp4.exit

bb.i:                                             ; preds = %sqlite3VdbeAddOp3.exit.i
  %i.ao = icmp slt i32 %.0.i.i, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.c, align 8, !tbaa !711
  %i.aq = add nsw i32 %i.ap, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i10.i = phi i32 [ %i.aq, %bb.j ], [ %.0.i.i, %bb.i ]
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !710
  %i.as = sext i32 %.0.i10.i to i64
  %i.at = getelementptr inbounds [24 x i8], ptr %i.ar, i64 %i.as
  call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %0, ptr noundef %i.at, ptr noundef %i.r, i32 noundef 0), !inline_history !1212
  br label %sqlite3VdbeAddOp4.exit

bb.l:                                             ; preds = %bb.b
  %i.au = load i32, ptr %3, align 16              ; 3 uses
  %i.av = icmp ult i32 %i.au, 41
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.b, align 16
  %i.ax = zext nneg i32 %i.au to i64
  %i.ay = getelementptr i8, ptr %i.aw, i64 %i.ax
  %i.az = add nuw nsw i32 %i.au, 8
  store i32 %i.az, ptr %3, align 16
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ba = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.bb, ptr %i.a, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = phi ptr [ %i.ay, %bb.m ], [ %i.ba, %bb.n ]
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !576 ; 2 uses
  %i.be = add nuw i64 %indvars.iv, %i.f           ; 2 uses
  %i.bf = load i32, ptr %i.c, align 8, !tbaa !711 ; 3 uses
  %i.bg = load i32, ptr %i.d, align 4, !tbaa !1207
  %.not.i.i18 = icmp sgt i32 %i.bg, %i.bf
  br i1 %.not.i.i18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = trunc i64 %i.be to i32
  %i.bi = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 72, i32 noundef %i.bd, i32 noundef %i.bh, i32 noundef 0), !inline_history !1235 ; 0 uses
  br label %sqlite3VdbeAddOp4.exit

bb.q:                                             ; preds = %bb.o
  %i.bj = add nsw i32 %i.bf, 1
  store i32 %i.bj, ptr %i.c, align 8, !tbaa !711
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !710
  %i.bl = sext i32 %i.bf to i64
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.bl ; 7 uses
  store i8 72, ptr %i.bm, align 8, !tbaa !938
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i16 0, ptr %i.bn, align 2, !tbaa !957
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 %i.bd, ptr %i.bo, align 4, !tbaa !954
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = trunc i64 %i.be to i32
  store i32 %i.bq, ptr %i.bp, align 8, !tbaa !955
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !956
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr null, ptr %i.bs, align 8, !tbaa !741
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 0, ptr %i.bt, align 1, !tbaa !939
end_hunk_0
