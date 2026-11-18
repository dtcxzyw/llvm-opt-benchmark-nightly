Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12434
inline.NumDeleted: 1711
loop-unroll.NumCompletelyUnrolled: 292
loop-unroll.NumRuntimeUnrolled: 131
loop-unroll.NumUnrolled: 427
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@sqlite3BtreeSetMmapLimit:bb.a
  store i64 %1, ptr %i.a, align 8, !tbaa !2795
  %i.r = icmp sgt i64 %1, 0                       ; 2 uses
  %i.s = zext i1 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 27
  store i8 %i.s, ptr %i.t, align 1, !tbaa !3292
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.v = load i32, ptr %i.u, align 8, !tbaa !3248
  %.not.i.i.i = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  %getPageMMap.getPageNormal.i.i = select i1 %i.r, ptr @getPageMMap, ptr @getPageNormal
  %getPageError.sink.i.i = select i1 %.not.i.i.i, ptr %getPageMMap.getPageNormal.i.i, ptr @getPageError
  store ptr %getPageError.sink.i.i, ptr %i.w, align 8, !tbaa !3122
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !3285
  %i.z = call i32 %i.y(ptr noundef nonnull %i.n, i32 noundef 18, ptr noundef nonnull %i.a) #58, !inline_history !231 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  br label %sqlite3PagerSetMmapLimit.exit

sqlite3PagerSetMmapLimit.exit:                    ; preds = %sqlite3BtreeEnter.exit, %bb.d, %sqlite3OsFileControlHint.exit.i.i
  %i.aa = load i8, ptr %i.d, align 1, !tbaa !3186
  %.not.i4 = icmp eq i8 %i.aa, 0
  br i1 %.not.i4, label %sqlite3BtreeLeave.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3PagerSetMmapLimit.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !3187
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !3187
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.f, label %sqlite3BtreeLeave.exit

bb.f:                                             ; preds = %bb.e
  call fastcc void @unlockBtreeMutex(ptr noundef nonnull %0)
  br label %sqlite3BtreeLeave.exit

sqlite3BtreeLeave.exit:                           ; preds = %sqlite3PagerSetMmapLimit.exit, %bb.e, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @changeTempStorage(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 !guid !9815 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !2965    ; 3 uses
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
  %i.e = load i8, ptr %.012.i.i, align 1, !tbaa !2965 ; 2 uses
  %i.f = icmp eq i8 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.i
  %i.g = icmp eq i8 %i.d, 0
  br i1 %i.g, label %getTempStore.exit, label %bb.e

bb.d:                                             ; preds = %.preheader.i
  %i.h = zext i8 %i.d to i64
  %i.i = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !2965
  %i.k = zext i8 %i.e to i64
  %i.l = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !2965
  %.not.i.i = icmp eq i8 %i.j, %i.m
  br i1 %.not.i.i, label %bb.e, label %sqlite3StrICmp.exit.i

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1
  %.pr.i = load i8, ptr %i.n, align 1, !tbaa !2965
  br label %.preheader.i

sqlite3StrICmp.exit.i:                            ; preds = %bb.d, %bb.h
  %i.p = phi i8 [ %.pre.i, %bb.h ], [ %i.a, %bb.d ] ; 3 uses
  %.013.i6.i = phi ptr [ %i.z, %bb.h ], [ %1, %bb.d ]
  %.012.i7.i = phi ptr [ %i.aa, %bb.h ], [ @.str.443, %bb.d ] ; 2 uses
  %i.q = load i8, ptr %.012.i7.i, align 1, !tbaa !2965 ; 2 uses
  %i.r = icmp eq i8 %i.p, %i.q
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.s = icmp eq i8 %i.p, 0
  br i1 %i.s, label %getTempStore.exit, label %bb.h

bb.g:                                             ; preds = %sqlite3StrICmp.exit.i
  %i.t = zext i8 %i.p to i64
  %i.u = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !2965
  %i.w = zext i8 %i.q to i64
  %i.x = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !2965
  %.not.i8.i = icmp eq i8 %i.v, %i.y
  br i1 %.not.i8.i, label %bb.h, label %getTempStore.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %.013.i6.i, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i7.i, i64 1
  %.pre.i = load i8, ptr %i.z, align 1, !tbaa !2965
  br label %sqlite3StrICmp.exit.i

getTempStore.exit:                                ; preds = %bb.c, %bb.f, %bb.g, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ 0, %bb.g ], [ 2, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %i.ab = load ptr, ptr %0, align 8, !tbaa !3226  ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 102 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 2, !tbaa !3935
  %i.ae = zext i8 %i.ad to i32
  %i.af = icmp eq i32 %.0.i, %i.ae
  br i1 %i.af, label %bb.m, label %bb.i

bb.i:                                             ; preds = %getTempStore.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2836
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !2841 ; 3 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 101
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !3185
  %.not9.i = icmp eq i8 %i.al, 0
  br i1 %.not9.i, label %invalidateTempStorage.exit, label %sqlite3BtreeTxnState.exit.i

sqlite3BtreeTxnState.exit.i:                      ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load i8, ptr %i.am, align 8, !tbaa !3222
  %.not10.i = icmp eq i8 %i.an, 0
  br i1 %.not10.i, label %bb.k, label %invalidateTempStorage.exit

bb.k:                                             ; preds = %sqlite3BtreeTxnState.exit.i
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.aj)
  %i.ao = load ptr, ptr %i.ag, align 8, !tbaa !2836
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr null, ptr %i.ap, align 8, !tbaa !2841
  tail call fastcc void @sqlite3ResetAllSchemasOfConnection(ptr noundef nonnull %i.ab), !inline_history !9814
  br label %bb.l

invalidateTempStorage.exit:                       ; preds = %bb.j, %sqlite3BtreeTxnState.exit.i
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1034), !inline_history !9814
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.i
  %i.aq = trunc nuw nsw i32 %.0.i to i8
  store i8 %i.aq, ptr %i.ac, align 2, !tbaa !3935
  br label %bb.m

bb.m:                                             ; preds = %invalidateTempStorage.exit, %getTempStore.exit, %bb.l
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invalidateTempStorage(ptr nofree noundef captures(none) %0) unnamed_addr #0 !guid !9816 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3226   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2836
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !2841 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 101
  %i.g = load i8, ptr %i.f, align 1, !tbaa !3185
  %.not9 = icmp eq i8 %i.g, 0
  br i1 %.not9, label %bb.c, label %sqlite3BtreeTxnState.exit

sqlite3BtreeTxnState.exit:                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i8, ptr %i.h, align 8, !tbaa !3222
  %.not10 = icmp eq i8 %i.i, 0
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %sqlite3BtreeTxnState.exit, %bb.b
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.1034)
  br label %bb.e

bb.d:                                             ; preds = %sqlite3BtreeTxnState.exit
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.e)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !2836
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store ptr null, ptr %i.k, align 8, !tbaa !2841
  tail call fastcc void @sqlite3ResetAllSchemasOfConnection(ptr noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc zeroext i8 @getSafetyLevel(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 0, 2) %1, i8 noundef zeroext range(i8 0, 2) %2) unnamed_addr #20 !guid !9817 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !2965
  %i.c = add i8 %i.b, -58
  %.not = icmp ult i8 %i.c, -10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  store i32 0, ptr %i.a, align 4, !tbaa !2800
  %i.d = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull readonly %0, ptr noundef %i.a) ; 0 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !2800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.f = trunc i32 %i.e to i8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #59
  %.fr = freeze i64 %i.g
  %i.h = trunc i64 %.fr to i32
  %i.i = and i32 %i.h, 1073741823                 ; 8 uses
  %.not19 = icmp eq i32 %i.i, 0
  br i1 %.not19, label %.loopexit, label %.split

.split:                                           ; preds = %bb.c
  %.not16 = icmp eq i32 %1, 0
  %i.j = icmp eq i32 %i.i, 2                      ; 2 uses
  br i1 %.not16, label %.split.split.us.preheader, label %.split.split.preheader

.split.split.preheader:                           ; preds = %.split
  br i1 %i.j, label %sqlite3_strnicmp.exit.us.7, label %sqlite3_strnicmp.exit.1

.split.split.us.preheader:                        ; preds = %.split
  br i1 %i.j, label %.lr.ph.i.preheader.us, label %sqlite3_strnicmp.exit.us.1

.lr.ph.i.preheader.us:                            ; preds = %.split.split.us.preheader
  %3 = load i8, ptr %0, align 1, !tbaa !2965
  %i.k = and i8 %3, -33
  %i.l = icmp eq i8 %i.k, 79
  br i1 %i.l, label %.lr.ph.i.us.1134, label %sqlite3_strnicmp.exit.us

.lr.ph.i.us.1134:                                 ; preds = %.lr.ph.i.preheader.us
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !2965
  %i.o = and i8 %i.n, -33
  %i.p = icmp eq i8 %i.o, 78
  br i1 %i.p, label %.split27.us, label %sqlite3_strnicmp.exit.us

sqlite3_strnicmp.exit.us:                         ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us.1134
  %i.q = load i8, ptr %0, align 1, !tbaa !2965
  %4 = and i8 %i.q, -33
  %i.r = icmp eq i8 %4, 78
  br i1 %i.r, label %.lr.ph.i.us.1.1, label %sqlite3_strnicmp.exit.us.1

.lr.ph.i.us.1.1:                                  ; preds = %sqlite3_strnicmp.exit.us
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !2965
  %i.u = and i8 %i.t, -33
  %i.v = icmp eq i8 %i.u, 79
  br i1 %i.v, label %.split27.us, label %sqlite3_strnicmp.exit.us.1

sqlite3_strnicmp.exit.us.1:                       ; preds = %sqlite3_strnicmp.exit.us, %.lr.ph.i.us.1.1, %.split.split.us.preheader
  %i.w = icmp eq i32 %i.i, 3                      ; 2 uses
  br i1 %i.w, label %.lr.ph.i.preheader.us.2, label %sqlite3_strnicmp.exit.us.2

.lr.ph.i.preheader.us.2:                          ; preds = %sqlite3_strnicmp.exit.us.1
  %5 = load i8, ptr %0, align 1, !tbaa !2965
  %i.x = and i8 %5, -33
  %i.y = icmp eq i8 %i.x, 79
  br i1 %i.y, label %.lr.ph.i.us.2.1, label %sqlite3_strnicmp.exit.us.2

.lr.ph.i.us.2.1:                                  ; preds = %.lr.ph.i.preheader.us.2
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !2965
  %i.ab = and i8 %i.aa, -33
  %i.ac = icmp eq i8 %i.ab, 70
  br i1 %i.ac, label %.lr.ph.i.us.2.2, label %sqlite3_strnicmp.exit.us.2

.lr.ph.i.us.2.2:                                  ; preds = %.lr.ph.i.us.2.1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !2965
  %i.af = and i8 %i.ae, -33
  %i.ag = icmp eq i8 %i.af, 70
  br i1 %i.ag, label %.split27.us, label %sqlite3_strnicmp.exit.us.2

sqlite3_strnicmp.exit.us.2:                       ; preds = %.lr.ph.i.preheader.us.2, %.lr.ph.i.us.2.1, %.lr.ph.i.us.2.2, %sqlite3_strnicmp.exit.us.1
  %i.ah = icmp eq i32 %i.i, 5                     ; 2 uses
  br i1 %i.ah, label %.lr.ph.i.preheader.us.3, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.preheader.us.3:                          ; preds = %sqlite3_strnicmp.exit.us.2
  %6 = load i8, ptr %0, align 1, !tbaa !2965
  %i.ai = and i8 %6, -33
  %i.aj = icmp eq i8 %i.ai, 70
  br i1 %i.aj, label %.lr.ph.i.us.3.1, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.1:                                  ; preds = %.lr.ph.i.preheader.us.3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !2965
  %i.am = and i8 %i.al, -33
  %i.an = icmp eq i8 %i.am, 65
  br i1 %i.an, label %.lr.ph.i.us.3.2, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.2:                                  ; preds = %.lr.ph.i.us.3.1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !2965
  %i.aq = and i8 %i.ap, -33
  %i.ar = icmp eq i8 %i.aq, 76
  br i1 %i.ar, label %.lr.ph.i.us.3.3, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.3:                                  ; preds = %.lr.ph.i.us.3.2
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !2965
  %i.au = and i8 %i.at, -33
  %i.av = icmp eq i8 %i.au, 83
  br i1 %i.av, label %.lr.ph.i.us.3.4, label %sqlite3_strnicmp.exit.us.3

.lr.ph.i.us.3.4:                                  ; preds = %.lr.ph.i.us.3.3
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !2965
  %i.ay = and i8 %i.ax, -33
  %i.az = icmp eq i8 %i.ay, 69
  br i1 %i.az, label %.split27.us, label %sqlite3_strnicmp.exit.us.3

sqlite3_strnicmp.exit.us.3:                       ; preds = %.lr.ph.i.preheader.us.3, %.lr.ph.i.us.3.1, %.lr.ph.i.us.3.2, %.lr.ph.i.us.3.3, %.lr.ph.i.us.3.4, %sqlite3_strnicmp.exit.us.2
  br i1 %i.w, label %.lr.ph.i.preheader.us.4, label %sqlite3_strnicmp.exit.us.4

.lr.ph.i.preheader.us.4:                          ; preds = %sqlite3_strnicmp.exit.us.3
  %i.ba = load i8, ptr %0, align 1, !tbaa !2965
  %i.bb = and i8 %i.ba, -33
  %i.bc = icmp eq i8 %i.bb, 89
  br i1 %i.bc, label %.lr.ph.i.us.4.1, label %sqlite3_strnicmp.exit.us.4

.lr.ph.i.us.4.1:                                  ; preds = %.lr.ph.i.preheader.us.4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !2965
  %i.bf = and i8 %i.be, -33
  %i.bg = icmp eq i8 %i.bf, 69
  br i1 %i.bg, label %.lr.ph.i.us.4.2, label %sqlite3_strnicmp.exit.us.4

.lr.ph.i.us.4.2:                                  ; preds = %.lr.ph.i.us.4.1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !2965
  %i.bj = and i8 %i.bi, -33
  %i.bk = icmp eq i8 %i.bj, 83
  br i1 %i.bk, label %.split27.us, label %sqlite3_strnicmp.exit.us.4

sqlite3_strnicmp.exit.us.4:                       ; preds = %.lr.ph.i.preheader.us.4, %.lr.ph.i.us.4.1, %.lr.ph.i.us.4.2, %sqlite3_strnicmp.exit.us.3
  %i.bl = icmp eq i32 %i.i, 4                     ; 2 uses
  br i1 %i.bl, label %.lr.ph.i.preheader.us.5, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.preheader.us.5:                          ; preds = %sqlite3_strnicmp.exit.us.4
  %i.bm = load i8, ptr %0, align 1, !tbaa !2965
  %i.bn = and i8 %i.bm, -33
  %i.bo = icmp eq i8 %i.bn, 84
  br i1 %i.bo, label %.lr.ph.i.us.5.1, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.us.5.1:                                  ; preds = %.lr.ph.i.preheader.us.5
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !2965
  %i.br = and i8 %i.bq, -33
  %i.bs = icmp eq i8 %i.br, 82
  br i1 %i.bs, label %.lr.ph.i.us.5.2, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.us.5.2:                                  ; preds = %.lr.ph.i.us.5.1
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !2965
  %i.bv = and i8 %i.bu, -33
  %i.bw = icmp eq i8 %i.bv, 85
  br i1 %i.bw, label %.lr.ph.i.us.5.3, label %sqlite3_strnicmp.exit.us.5

.lr.ph.i.us.5.3:                                  ; preds = %.lr.ph.i.us.5.2
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !2965
  %i.bz = and i8 %i.by, -33
  %i.ca = icmp eq i8 %i.bz, 69
  br i1 %i.ca, label %.split27.us, label %sqlite3_strnicmp.exit.us.5

sqlite3_strnicmp.exit.us.5:                       ; preds = %.lr.ph.i.preheader.us.5, %.lr.ph.i.us.5.1, %.lr.ph.i.us.5.2, %.lr.ph.i.us.5.3, %sqlite3_strnicmp.exit.us.4
  br i1 %i.ah, label %.lr.ph.i.preheader.us.6, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.preheader.us.6:                          ; preds = %sqlite3_strnicmp.exit.us.5
  %i.cb = load i8, ptr %0, align 1, !tbaa !2965
  %i.cc = and i8 %i.cb, -33
  %i.cd = icmp eq i8 %i.cc, 69
  br i1 %i.cd, label %.lr.ph.i.us.6.1, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.1:                                  ; preds = %.lr.ph.i.preheader.us.6
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !2965
  %i.cg = and i8 %i.cf, -33
  %i.ch = icmp eq i8 %i.cg, 88
  br i1 %i.ch, label %.lr.ph.i.us.6.2, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.2:                                  ; preds = %.lr.ph.i.us.6.1
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !2965
  %i.ck = and i8 %i.cj, -33
  %i.cl = icmp eq i8 %i.ck, 84
  br i1 %i.cl, label %.lr.ph.i.us.6.3, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.3:                                  ; preds = %.lr.ph.i.us.6.2
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !2965
  %i.co = and i8 %i.cn, -33
  %i.cp = icmp eq i8 %i.co, 82
  br i1 %i.cp, label %.lr.ph.i.us.6.4, label %sqlite3_strnicmp.exit.us.6

.lr.ph.i.us.6.4:                                  ; preds = %.lr.ph.i.us.6.3
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !2965
  %i.cs = and i8 %i.cr, -33
  %i.ct = icmp eq i8 %i.cs, 65
  br i1 %i.ct, label %.split27.us, label %sqlite3_strnicmp.exit.us.6

sqlite3_strnicmp.exit.us.6:                       ; preds = %.lr.ph.i.preheader.us.6, %.lr.ph.i.us.6.1, %.lr.ph.i.us.6.2, %.lr.ph.i.us.6.3, %.lr.ph.i.us.6.4, %sqlite3_strnicmp.exit.us.5
  br i1 %i.bl, label %.lr.ph.i.preheader.us.7, label %.loopexit

.lr.ph.i.preheader.us.7:                          ; preds = %sqlite3_strnicmp.exit.us.6
  %i.cu = load i8, ptr %0, align 1, !tbaa !2965
  %i.cv = and i8 %i.cu, -33
  %i.cw = icmp eq i8 %i.cv, 70
  br i1 %i.cw, label %.lr.ph.i.us.7.1, label %.loopexit

.lr.ph.i.us.7.1:                                  ; preds = %.lr.ph.i.preheader.us.7
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !2965
  %i.cz = and i8 %i.cy, -33
  %i.da = icmp eq i8 %i.cz, 85
  br i1 %i.da, label %.lr.ph.i.us.7.2, label %.loopexit

.lr.ph.i.us.7.2:                                  ; preds = %.lr.ph.i.us.7.1
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !2965
  %i.dd = and i8 %i.dc, -33
  %i.de = icmp eq i8 %i.dd, 76
  br i1 %i.de, label %.lr.ph.i.us.7.3, label %.loopexit

.lr.ph.i.us.7.3:                                  ; preds = %.lr.ph.i.us.7.2
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !2965
  %i.dh = and i8 %i.dg, -33
  %i.di = icmp eq i8 %i.dh, 76
  br i1 %i.di, label %.split27.us, label %.loopexit

sqlite3_strnicmp.exit.us.7:                       ; preds = %.split.split.preheader
  %i.dj = load i8, ptr %0, align 1, !tbaa !2965
  %7 = and i8 %i.dj, -33
  %i.dk = icmp eq i8 %7, 79
  br i1 %i.dk, label %.lr.ph.i.188, label %.lr.ph.i.preheader.1

.lr.ph.i.188:                                     ; preds = %sqlite3_strnicmp.exit.us.7
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !2965
  %i.dn = and i8 %i.dm, -33
  %i.do = icmp eq i8 %i.dn, 78
  br i1 %i.do, label %.split27.us, label %.lr.ph.i.preheader.1

.split27.us:                                      ; preds = %.lr.ph.i.5.3, %.lr.ph.i.4.2, %.lr.ph.i.3.4, %.lr.ph.i.2.2, %.lr.ph.i.1.1, %.lr.ph.i.188, %.lr.ph.i.us.7.3, %.lr.ph.i.us.6.4, %.lr.ph.i.us.5.3, %.lr.ph.i.us.4.2, %.lr.ph.i.us.3.4, %.lr.ph.i.us.2.2, %.lr.ph.i.us.1.1, %.lr.ph.i.us.1134
  %.us-phi = phi i64 [ 1, %.lr.ph.i.1.1 ], [ 0, %.lr.ph.i.us.1134 ], [ 2, %.lr.ph.i.2.2 ], [ 3, %.lr.ph.i.3.4 ], [ 4, %.lr.ph.i.us.4.2 ], [ 5, %.lr.ph.i.us.5.3 ], [ 6, %.lr.ph.i.us.6.4 ], [ 0, %.lr.ph.i.188 ], [ 1, %.lr.ph.i.us.1.1 ], [ 3, %.lr.ph.i.us.3.4 ], [ 4, %.lr.ph.i.4.2 ], [ 7, %.lr.ph.i.us.7.3 ], [ 2, %.lr.ph.i.us.2.2 ], [ 5, %.lr.ph.i.5.3 ]
  %i.dp = getelementptr inbounds nuw i8, ptr @getSafetyLevel.iValue, i64 %.us-phi
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !2965
  br label %.loopexit

.lr.ph.i.preheader.1:                             ; preds = %sqlite3_strnicmp.exit.us.7, %.lr.ph.i.188
  %8 = load i8, ptr %0, align 1, !tbaa !2965
  %i.dr = and i8 %8, -33
  %i.ds = icmp eq i8 %i.dr, 78
  br i1 %i.ds, label %.lr.ph.i.1.1, label %sqlite3_strnicmp.exit.1

.lr.ph.i.1.1:                                     ; preds = %.lr.ph.i.preheader.1
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !2965
  %i.dv = and i8 %i.du, -33
  %i.dw = icmp eq i8 %i.dv, 79
  br i1 %i.dw, label %.split27.us, label %sqlite3_strnicmp.exit.1

sqlite3_strnicmp.exit.1:                          ; preds = %.lr.ph.i.preheader.1, %.lr.ph.i.1.1, %.split.split.preheader
  %i.dx = icmp eq i32 %i.i, 3                     ; 2 uses
  br i1 %i.dx, label %.lr.ph.i.preheader.2, label %sqlite3_strnicmp.exit.2

.lr.ph.i.preheader.2:                             ; preds = %sqlite3_strnicmp.exit.1
  %i.dy = load i8, ptr %0, align 1, !tbaa !2965
  %i.dz = and i8 %i.dy, -33
  %i.ea = icmp eq i8 %i.dz, 79
  br i1 %i.ea, label %.lr.ph.i.2.1, label %sqlite3_strnicmp.exit.2

.lr.ph.i.2.1:                                     ; preds = %.lr.ph.i.preheader.2
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !2965
  %i.ed = and i8 %i.ec, -33
  %i.ee = icmp eq i8 %i.ed, 70
  br i1 %i.ee, label %.lr.ph.i.2.2, label %sqlite3_strnicmp.exit.2

.lr.ph.i.2.2:                                     ; preds = %.lr.ph.i.2.1
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !2965
  %i.eh = and i8 %i.eg, -33
  %i.ei = icmp eq i8 %i.eh, 70
  br i1 %i.ei, label %.split27.us, label %sqlite3_strnicmp.exit.2

sqlite3_strnicmp.exit.2:                          ; preds = %.lr.ph.i.preheader.2, %.lr.ph.i.2.1, %.lr.ph.i.2.2, %sqlite3_strnicmp.exit.1
  %i.ej = icmp eq i32 %i.i, 5
  br i1 %i.ej, label %.lr.ph.i.preheader.3, label %sqlite3_strnicmp.exit.3

.lr.ph.i.preheader.3:                             ; preds = %sqlite3_strnicmp.exit.2
  %i.ek = load i8, ptr %0, align 1, !tbaa !2965
  %i.el = and i8 %i.ek, -33
  %i.em = icmp eq i8 %i.el, 70
  br i1 %i.em, label %.lr.ph.i.3.1, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.1:                                     ; preds = %.lr.ph.i.preheader.3
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !2965
  %i.ep = and i8 %i.eo, -33
  %i.eq = icmp eq i8 %i.ep, 65
  br i1 %i.eq, label %.lr.ph.i.3.2, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.2:                                     ; preds = %.lr.ph.i.3.1
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.es = load i8, ptr %i.er, align 1, !tbaa !2965
  %i.et = and i8 %i.es, -33
  %i.eu = icmp eq i8 %i.et, 76
  br i1 %i.eu, label %.lr.ph.i.3.3, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.3:                                     ; preds = %.lr.ph.i.3.2
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !2965
  %i.ex = and i8 %i.ew, -33
  %i.ey = icmp eq i8 %i.ex, 83
  br i1 %i.ey, label %.lr.ph.i.3.4, label %sqlite3_strnicmp.exit.3

.lr.ph.i.3.4:                                     ; preds = %.lr.ph.i.3.3
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !2965
  %i.fb = and i8 %i.fa, -33
  %i.fc = icmp eq i8 %i.fb, 69
  br i1 %i.fc, label %.split27.us, label %sqlite3_strnicmp.exit.3

sqlite3_strnicmp.exit.3:                          ; preds = %.lr.ph.i.preheader.3, %.lr.ph.i.3.1, %.lr.ph.i.3.2, %.lr.ph.i.3.3, %.lr.ph.i.3.4, %sqlite3_strnicmp.exit.2
  br i1 %i.dx, label %.lr.ph.i.preheader.4, label %sqlite3_strnicmp.exit.4

.lr.ph.i.preheader.4:                             ; preds = %sqlite3_strnicmp.exit.3
  %i.fd = load i8, ptr %0, align 1, !tbaa !2965
  %i.fe = and i8 %i.fd, -33
  %i.ff = icmp eq i8 %i.fe, 89
  br i1 %i.ff, label %.lr.ph.i.4.1, label %sqlite3_strnicmp.exit.4

.lr.ph.i.4.1:                                     ; preds = %.lr.ph.i.preheader.4
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !2965
  %i.fi = and i8 %i.fh, -33
  %i.fj = icmp eq i8 %i.fi, 69
  br i1 %i.fj, label %.lr.ph.i.4.2, label %sqlite3_strnicmp.exit.4

.lr.ph.i.4.2:                                     ; preds = %.lr.ph.i.4.1
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !2965
  %i.fm = and i8 %i.fl, -33
  %i.fn = icmp eq i8 %i.fm, 83
  br i1 %i.fn, label %.split27.us, label %sqlite3_strnicmp.exit.4

sqlite3_strnicmp.exit.4:                          ; preds = %.lr.ph.i.preheader.4, %.lr.ph.i.4.1, %.lr.ph.i.4.2, %sqlite3_strnicmp.exit.3
  %i.fo = icmp eq i32 %i.i, 4
  br i1 %i.fo, label %.lr.ph.i.preheader.5, label %.loopexit

.lr.ph.i.preheader.5:                             ; preds = %sqlite3_strnicmp.exit.4
  %i.fp = load i8, ptr %0, align 1, !tbaa !2965
  %i.fq = and i8 %i.fp, -33
  %i.fr = icmp eq i8 %i.fq, 84
  br i1 %i.fr, label %.lr.ph.i.5.1, label %.loopexit

.lr.ph.i.5.1:                                     ; preds = %.lr.ph.i.preheader.5
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !2965
  %i.fu = and i8 %i.ft, -33
  %i.fv = icmp eq i8 %i.fu, 82
  br i1 %i.fv, label %.lr.ph.i.5.2, label %.loopexit

.lr.ph.i.5.2:                                     ; preds = %.lr.ph.i.5.1
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !2965
  %i.fy = and i8 %i.fx, -33
  %i.fz = icmp eq i8 %i.fy, 85
  br i1 %i.fz, label %.lr.ph.i.5.3, label %.loopexit

.lr.ph.i.5.3:                                     ; preds = %.lr.ph.i.5.2
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !2965
  %i.gc = and i8 %i.gb, -33
  %i.gd = icmp eq i8 %i.gc, 69
  br i1 %i.gd, label %.split27.us, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.preheader.5, %.lr.ph.i.5.1, %.lr.ph.i.5.2, %.lr.ph.i.5.3, %.lr.ph.i.preheader.us.7, %.lr.ph.i.us.7.1, %.lr.ph.i.us.7.2, %.lr.ph.i.us.7.3, %sqlite3_strnicmp.exit.4, %bb.c, %sqlite3_strnicmp.exit.us.6, %.split27.us, %bb.b
  %.014 = phi i8 [ %i.f, %bb.b ], [ %i.dq, %.split27.us ], [ %2, %bb.c ], [ %2, %sqlite3_strnicmp.exit.4 ], [ %2, %sqlite3_strnicmp.exit.us.6 ], [ %2, %.lr.ph.i.preheader.us.7 ], [ %2, %.lr.ph.i.us.7.3 ], [ %2, %.lr.ph.i.us.7.2 ], [ %2, %.lr.ph.i.us.7.1 ], [ %2, %.lr.ph.i.5.3 ], [ %2, %.lr.ph.i.5.2 ], [ %2, %.lr.ph.i.5.1 ], [ %2, %.lr.ph.i.preheader.5 ]
  ret i8 %.014
}

; Function Attrs: nounwind uwtable
define internal void @sqlite3VdbeMultiLoad(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 -2147483645, -2147483648) %1, ptr nofree noundef readonly captures(none) %2, ...) unnamed_addr #0 !guid !9819 {
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
  %i.h = load i8, ptr %i.g, align 1, !tbaa !2965
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
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2971 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  %i.t = select i1 %i.s, i32 76, i32 118          ; 2 uses
  %i.u = add nuw i64 %indvars.iv, %i.f            ; 2 uses
  %i.v = load i32, ptr %i.c, align 8, !tbaa !2935 ; 4 uses
  %i.w = load i32, ptr %i.d, align 4, !tbaa !3431
  %.not.i.i = icmp sgt i32 %i.w, %i.v
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = trunc i64 %i.u to i32
  %i.y = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef range(i32 -1, 511) %i.t, i32 noundef 0, i32 noundef %i.x, i32 noundef 0), !inline_history !3459
  br label %sqlite3VdbeAddOp3.exit.i

bb.h:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.v, 1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !2935
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !2934
  %i.ab = sext i32 %i.v to i64
  %i.ac = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.ab ; 7 uses
  %i.ad = trunc nuw nsw i32 %i.t to i8
  store i8 %i.ad, ptr %i.ac, align 8, !tbaa !3162
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  store i16 0, ptr %i.ae, align 2, !tbaa !3181
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  store i32 0, ptr %i.af, align 4, !tbaa !3178
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = trunc i64 %i.u to i32
  store i32 %i.ah, ptr %i.ag, align 8, !tbaa !3179
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !3180
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr null, ptr %i.aj, align 8, !tbaa !2965
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 0, ptr %i.ak, align 1, !tbaa !3163
  br label %sqlite3VdbeAddOp3.exit.i

sqlite3VdbeAddOp3.exit.i:                         ; preds = %bb.h, %bb.g
  %.0.i.i = phi i32 [ %i.y, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !2911
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 103
  %i.an = load i8, ptr %i.am, align 1, !tbaa !3152
  %.not.i9.i = icmp eq i8 %i.an, 0
  br i1 %.not.i9.i, label %bb.i, label %sqlite3VdbeAddOp4.exit

bb.i:                                             ; preds = %sqlite3VdbeAddOp3.exit.i
  %i.ao = icmp slt i32 %.0.i.i, 0
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.c, align 8, !tbaa !2935
  %i.aq = add nsw i32 %i.ap, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i10.i = phi i32 [ %i.aq, %bb.j ], [ %.0.i.i, %bb.i ]
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !2934
  %i.as = sext i32 %.0.i10.i to i64
  %i.at = getelementptr inbounds [24 x i8], ptr %i.ar, i64 %i.as
  call fastcc void @vdbeChangeP4Full(ptr noundef nonnull readonly %0, ptr noundef %i.at, ptr noundef %i.r, i32 noundef 0), !inline_history !3436
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
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !2800 ; 2 uses
  %i.be = add nuw i64 %indvars.iv, %i.f           ; 2 uses
  %i.bf = load i32, ptr %i.c, align 8, !tbaa !2935 ; 3 uses
  %i.bg = load i32, ptr %i.d, align 4, !tbaa !3431
  %.not.i.i18 = icmp sgt i32 %i.bg, %i.bf
  br i1 %.not.i.i18, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = trunc i64 %i.be to i32
  %i.bi = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 72, i32 noundef %i.bd, i32 noundef %i.bh, i32 noundef 0), !inline_history !3459 ; 0 uses
  br label %sqlite3VdbeAddOp4.exit

bb.q:                                             ; preds = %bb.o
  %i.bj = add nsw i32 %i.bf, 1
  store i32 %i.bj, ptr %i.c, align 8, !tbaa !2935
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !2934
  %i.bl = sext i32 %i.bf to i64
  %i.bm = getelementptr inbounds [24 x i8], ptr %i.bk, i64 %i.bl ; 7 uses
  store i8 72, ptr %i.bm, align 8, !tbaa !3162
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2
  store i16 0, ptr %i.bn, align 2, !tbaa !3181
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store i32 %i.bd, ptr %i.bo, align 4, !tbaa !3178
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bq = trunc i64 %i.be to i32
  store i32 %i.bq, ptr %i.bp, align 8, !tbaa !3179
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !3180
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr null, ptr %i.bs, align 8, !tbaa !2965
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  store i8 0, ptr %i.bt, align 1, !tbaa !3163
  br label %sqlite3VdbeAddOp4.exit

sqlite3VdbeAddOp4.exit:                           ; preds = %bb.q, %bb.p, %bb.k, %sqlite3VdbeAddOp3.exit.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %bb.b, !llvm.loop !9818

bb.r:                                             ; preds = %bb.b
  %i.bu = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.bv = load i32, ptr %i.c, align 8, !tbaa !2935 ; 3 uses
  %i.bw = load i32, ptr %i.d, align 4, !tbaa !3431
  %.not.i.i21 = icmp sgt i32 %i.bw, %i.bv
  br i1 %.not.i.i21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef 85, i32 noundef %1, i32 noundef %i.bu, i32 noundef 0), !inline_history !3459 ; 0 uses
  br label %sqlite3VdbeAddOp2.exit24

bb.t:                                             ; preds = %bb.r
  %i.by = add nsw i32 %i.bv, 1
  store i32 %i.by, ptr %i.c, align 8, !tbaa !2935
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !2934
  %i.ca = sext i32 %i.bv to i64
  %i.cb = getelementptr inbounds [24 x i8], ptr %i.bz, i64 %i.ca ; 7 uses
  store i8 85, ptr %i.cb, align 8, !tbaa !3162
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  store i16 0, ptr %i.cc, align 2, !tbaa !3181
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  store i32 %1, ptr %i.cd, align 4, !tbaa !3178
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 %i.bu, ptr %i.ce, align 8, !tbaa !3179
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !3180
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr null, ptr %i.cg, align 8, !tbaa !2965
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  store i8 0, ptr %i.ch, align 1, !tbaa !3163
  br label %sqlite3VdbeAddOp2.exit24
end_hunk_0
