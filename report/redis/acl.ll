Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/acl?download=true
inline.NumInlined: 130
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ACLUserCheckChannelPerm:bb.a
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96   ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !78
  %i.m = and i32 %i.l, 8
  %.not12 = icmp eq i32 %i.m, 0
  br i1 %.not12, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !80
  %.val.i = load i8, ptr %i.d, align 1, !tbaa !33 ; 2 uses
  %i.p = and i8 %.val.i, 7
  switch i8 %i.p, label %sdslen.exit [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.i
    i8 4, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = lshr i8 %.val.i, 3
  %i.r = zext nneg i8 %i.q to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.h, align 1, !tbaa !33
  %i.t = zext i8 %i.s to i64
  br label %sdslen.exit

bb.h:                                             ; preds = %bb.e
  %i.u = load i16, ptr %i.g, align 1, !tbaa !39
  %i.v = zext i16 %i.u to i64
  br label %sdslen.exit

bb.i:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.f, align 1, !tbaa !22
  %i.x = zext i32 %i.w to i64
  br label %sdslen.exit

bb.j:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.e, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j
  %.0.i = phi i64 [ %i.y, %bb.j ], [ %i.r, %bb.f ], [ %i.t, %bb.g ], [ %i.v, %bb.h ], [ %i.x, %bb.i ], [ 0, %bb.e ]
  %i.z = trunc i64 %.0.i to i32
  %i.aa = call fastcc i32 @ACLCheckChannelAgainstList(ptr noundef %i.o, ptr noundef nonnull %1, i32 noundef %i.z, i32 noundef %2)
  %.not13 = icmp eq i32 %i.aa, 0
  br i1 %.not13, label %.critedge, label %bb.c, !llvm.loop !209

.critedge:                                        ; preds = %bb.d, %bb.c, %sdslen.exit, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %sdslen.exit ], [ 4, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 5) i32 @ACLCheckChannelAgainstList(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.listIter, align 8           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @listRewind(ptr noundef %0, ptr noundef nonnull %4) #25
  %i.a = call ptr @listNext(ptr noundef nonnull %4) #25 ; 3 uses
  %.not19 = icmp eq ptr %i.a, null
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not14 = icmp eq i32 %3, 0
  br i1 %.not14, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.critedge18.us
  %i.b = phi ptr [ %i.v, %.critedge18.us ], [ %i.a, %.lr.ph ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !96   ; 6 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %.val.i.us = load i8, ptr %i.e, align 1, !tbaa !33 ; 2 uses
  %i.f = and i8 %.val.i.us, 7
  switch i8 %i.f, label %sdslen.exit.us [
    i8 0, label %bb.f
    i8 1, label %bb.e
    i8 2, label %bb.d
    i8 3, label %bb.c
    i8 4, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -17
  %i.h = load i64, ptr %i.g, align 1, !tbaa !24
  br label %sdslen.exit.us

bb.c:                                             ; preds = %.lr.ph.split.us
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -9
  %i.j = load i32, ptr %i.i, align 1, !tbaa !22
  %i.k = zext i32 %i.j to i64
  br label %sdslen.exit.us

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.l = getelementptr inbounds i8, ptr %i.d, i64 -5
  %i.m = load i16, ptr %i.l, align 1, !tbaa !39
  %i.n = zext i16 %i.m to i64
  br label %sdslen.exit.us

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.o = getelementptr inbounds i8, ptr %i.d, i64 -3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !33
  %i.q = zext i8 %i.p to i64
  br label %sdslen.exit.us

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.r = lshr i8 %.val.i.us, 3
  %i.s = zext nneg i8 %i.r to i64
  br label %sdslen.exit.us

sdslen.exit.us:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %.lr.ph.split.us
  %.0.i.us = phi i64 [ %i.h, %bb.b ], [ %i.s, %bb.f ], [ %i.q, %bb.e ], [ %i.n, %bb.d ], [ %i.k, %bb.c ], [ 0, %.lr.ph.split.us ]
  %i.t = trunc i64 %.0.i.us to i32
  %i.u = call i32 @stringmatchlen(ptr noundef nonnull %i.d, i32 noundef %i.t, ptr noundef %1, i32 noundef %2, i32 noundef 0) #25
  %.not16.us = icmp eq i32 %i.u, 0
  br i1 %.not16.us, label %.critedge18.us, label %._crit_edge21, !llvm.loop !9

.critedge18.us:                                   ; preds = %sdslen.exit.us
  %i.v = call ptr @listNext(ptr noundef nonnull %4) #25 ; 2 uses
  %.not.us = icmp eq ptr %i.v, null
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %.critedge18
  %i.w = phi ptr [ %i.aa, %.critedge18 ], [ %i.a, %.lr.ph ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !96
  %i.z = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(1) %1) #29
  %.not15 = icmp eq i32 %i.z, 0
  br i1 %.not15, label %._crit_edge21, label %.critedge18, !llvm.loop !9

.critedge18:                                      ; preds = %.lr.ph.split
  %i.aa = call ptr @listNext(ptr noundef nonnull %4) #25 ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %._crit_edge, label %.lr.ph.split

._crit_edge21:                                    ; preds = %.lr.ph.split, %sdslen.exit.us
  br label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.critedge18, %.critedge18.us, %._crit_edge21, %bb.a
  %.2 = phi i32 [ 4, %.critedge18.us ], [ 0, %._crit_edge21 ], [ 4, %bb.a ], [ 4, %.critedge18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ACLCheckAllUserCommandPerm(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.listIter, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %7 = alloca %struct.aclKeyResultCache, align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !91   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !94   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c, !prof !93

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !96
  %i.h = load i32, ptr %i.g, align 8, !tbaa !78
  %i.i = and i32 %i.h, 14
  %.not40 = icmp eq i32 %i.i, 14
  br i1 %.not40, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i32 0, ptr %7, align 8, !tbaa !162
  %.not41 = icmp ne ptr %4, null                  ; 3 uses
  br i1 %.not41, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false), !tbaa.struct !211
  store i32 1, ptr %7, align 8, !tbaa !162
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i32 [ 1, %bb.e ], [ 0, %bb.d ]
  call void @listRewind(ptr noundef nonnull %i.d, ptr noundef nonnull %6) #25
  %i.l = call ptr @listNext(ptr noundef nonnull %6) #25 ; 2 uses
  %.not4254 = icmp eq ptr %i.l, null
  br i1 %.not4254, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %cleanupACLKeyResultCache.exit
  %i.m = phi ptr [ %i.r, %cleanupACLKeyResultCache.exit ], [ %i.l, %bb.f ]
  %.056 = phi i32 [ %spec.select65, %cleanupACLKeyResultCache.exit ], [ 0, %bb.f ]
  %.02755 = phi i32 [ %spec.select, %cleanupACLKeyResultCache.exit ], [ 1, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !96
  %i.p = call fastcc i32 @ACLSelectorCheckCmd(ptr noundef %i.o, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %i.a, ptr noundef %7) ; 3 uses
  %.not43 = icmp eq i32 %i.p, 0
  br i1 %.not43, label %bb.g, label %cleanupACLKeyResultCache.exit

bb.g:                                             ; preds = %.lr.ph
  %i.q = load i32, ptr %7, align 8
  %.not.i = icmp eq i32 %i.q, 0
  %or.cond49 = select i1 %.not41, i1 true, i1 %.not.i
  br i1 %or.cond49, label %cleanupACLKeyResultCache.exit46, label %cleanupACLKeyResultCache.exit46.sink.split

cleanupACLKeyResultCache.exit:                    ; preds = %.lr.ph
  %8 = icmp samesign ugt i32 %i.p, %.02755
  %.pre = load i32, ptr %i.a, align 4
  %spec.select = call i32 @llvm.umax.i32(i32 %i.p, i32 %.02755) ; 2 uses
  %spec.select65 = select i1 %8, i32 %.pre, i32 %.056 ; 2 uses
  %i.r = call ptr @listNext(ptr noundef nonnull %6) #25 ; 2 uses
  %.not42 = icmp eq ptr %i.r, null
  br i1 %.not42, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !210

._crit_edge.loopexit:                             ; preds = %cleanupACLKeyResultCache.exit
  %.pre58 = load i32, ptr %7, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.f
  %i.s = phi i32 [ %i.k, %bb.f ], [ %.pre58, %._crit_edge.loopexit ]
  %.027.lcssa = phi i32 [ 1, %bb.f ], [ %spec.select, %._crit_edge.loopexit ] ; 2 uses
  %.0.lcssa = phi i32 [ 0, %bb.f ], [ %spec.select65, %._crit_edge.loopexit ]
  store i32 %.0.lcssa, ptr %5, align 4, !tbaa !22
  %.not.i45 = icmp eq i32 %i.s, 0
  %or.cond51 = select i1 %.not41, i1 true, i1 %.not.i45
  br i1 %or.cond51, label %cleanupACLKeyResultCache.exit46, label %cleanupACLKeyResultCache.exit46.sink.split

cleanupACLKeyResultCache.exit46.sink.split:       ; preds = %._crit_edge, %bb.g
  %.4.ph = phi i32 [ 0, %bb.g ], [ %.027.lcssa, %._crit_edge ]
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @getKeysFreeResult(ptr noundef nonnull %i.t) #25
  br label %cleanupACLKeyResultCache.exit46

cleanupACLKeyResultCache.exit46:                  ; preds = %cleanupACLKeyResultCache.exit46.sink.split, %bb.g, %._crit_edge
  %.4 = phi i32 [ 0, %bb.g ], [ %.027.lcssa, %._crit_edge ], [ %.4.ph, %cleanupACLKeyResultCache.exit46.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.c, %cleanupACLKeyResultCache.exit46
  %.5 = phi i32 [ 0, %bb.c ], [ %.4, %cleanupACLKeyResultCache.exit46 ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ACLCheckAllPerm(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !113
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !156
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !157
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !163
  %i.i = tail call ptr @getClientCachedKeyResult(ptr noundef %0) #25
  %i.j = tail call i32 @ACLCheckAllUserCommandPerm(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, i32 noundef %i.h, ptr noundef %i.i, ptr noundef %1)
  ret i32 %i.j
}

declare ptr @getClientCachedKeyResult(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @getUpcomingChannelList(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 11 uses
  %3 = alloca %struct.listIter, align 8           ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !91
  call void @listRewind(ptr noundef %i.b, ptr noundef nonnull %2) #25
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.c = call ptr @listNext(ptr noundef nonnull %2) #25 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !78
  %i.g = and i32 %i.f, 8
  %.not38 = icmp eq i32 %i.g, 0
  br i1 %.not38, label %bb.b, label %.thread41, !llvm.loop !212

bb.d:                                             ; preds = %bb.b
  %i.h = call ptr @listCreate() #25               ; 5 uses
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !91
  call void @listRewind(ptr noundef %i.i, ptr noundef nonnull %2) #25
  %i.j = call ptr @listNext(ptr noundef nonnull %2) #25 ; 2 uses
  %.not3247 = icmp eq ptr %i.j, null
  br i1 %.not3247, label %._crit_edge, label %.lr.ph48

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph48
  %i.k = call ptr @listNext(ptr noundef nonnull %2) #25 ; 2 uses
  %.not32 = icmp eq ptr %i.k, null
  br i1 %.not32, label %._crit_edge, label %.lr.ph48, !llvm.loop !213

.lr.ph48:                                         ; preds = %bb.d, %.loopexit
  %i.l = phi ptr [ %i.k, %.loopexit ], [ %i.j, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !96
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !80
  call void @listRewind(ptr noundef %i.p, ptr noundef nonnull %3) #25
  %i.q = call ptr @listNext(ptr noundef nonnull %3) #25 ; 2 uses
  %.not3746 = icmp eq ptr %i.q, null
  br i1 %.not3746, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph48, %.lr.ph
  %i.r = phi ptr [ %i.v, %.lr.ph ], [ %i.q, %.lr.ph48 ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.u = call ptr @listAddNodeTail(ptr noundef %i.h, ptr noundef %i.t) #25 ; 0 uses
  %i.v = call ptr @listNext(ptr noundef nonnull %3) #25 ; 2 uses
  %.not37 = icmp eq ptr %i.v, null
  br i1 %.not37, label %.loopexit, label %.lr.ph, !llvm.loop !214

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !91
  call void @listRewind(ptr noundef %i.x, ptr noundef nonnull %2) #25
  %i.y = call ptr @listNext(ptr noundef nonnull %2) #25 ; 2 uses
  %.not52 = icmp eq ptr %i.y, null
  br i1 %.not52, label %._crit_edge51, label %.lr.ph50

.lr.ph50:                                         ; preds = %._crit_edge, %bb.h
  %i.z = phi ptr [ %i.al, %bb.h ], [ %i.y, %._crit_edge ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !78
  %i.ad = and i32 %i.ac, 8
  %.not33 = icmp eq i32 %i.ad, 0
  br i1 %.not33, label %bb.e, label %.thread41

bb.e:                                             ; preds = %.lr.ph50
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !80
  call void @listRewind(ptr noundef %i.af, ptr noundef nonnull %3) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ag = call ptr @listNext(ptr noundef nonnull %3) #25 ; 2 uses
  %.not34 = icmp eq ptr %i.ag, null
  br i1 %.not34, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !96
  %i.aj = call ptr @listSearchKey(ptr noundef %i.h, ptr noundef %i.ai) #25
  %.not35 = icmp eq ptr %i.aj, null
  br i1 %.not35, label %._crit_edge51.thread61, label %bb.f, !llvm.loop !215

._crit_edge51.thread61:                           ; preds = %bb.g
  %i.ak = call ptr @listNext(ptr noundef nonnull %2) #25 ; 0 uses
  br label %.thread41

bb.h:                                             ; preds = %bb.f
  %i.al = call ptr @listNext(ptr noundef nonnull %2) #25 ; 2 uses
  %.not64 = icmp eq ptr %i.al, null
  br i1 %.not64, label %._crit_edge51, label %.lr.ph50

._crit_edge51:                                    ; preds = %bb.h, %._crit_edge
  call void @listRelease(ptr noundef %i.h) #25
  br label %.thread41

.thread41:                                        ; preds = %bb.c, %.lr.ph50, %._crit_edge51.thread61, %._crit_edge51
  %.326 = phi ptr [ %i.h, %.lr.ph50 ], [ null, %._crit_edge51 ], [ %i.h, %._crit_edge51.thread61 ], [ null, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret ptr %.326
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ACLShouldKillPubsubClient(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.listIter, align 8           ; 6 uses
  %3 = alloca %struct.listIter, align 8           ; 6 uses
  %4 = alloca %struct.listIter, align 8           ; 6 uses
  %5 = alloca %struct.dictIterator, align 8       ; 14 uses
  %i.a = tail call i32 @getClientType(ptr noundef %0) #25
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !219
  call void @dictInitIterator(ptr noundef nonnull %5, ptr noundef %i.d) #25
  %i.e = call ptr @dictNext(ptr noundef nonnull %5) #25 ; 2 uses
  %.not88 = icmp eq ptr %i.e, null
  br i1 %.not88, label %._crit_edge, label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %._crit_edge21.i
  %i.f = phi ptr [ %i.p, %._crit_edge21.i ], [ %i.e, %bb.b ]
  %i.g = call ptr @dictGetKey(ptr noundef nonnull %i.f) #25
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @listRewind(ptr noundef %1, ptr noundef nonnull %4) #25
  %i.j = call ptr @listNext(ptr noundef nonnull %4) #25 ; 2 uses
  %.not19.i = icmp eq ptr %i.j, null
  br i1 %.not19.i, label %.critedge42.critedge, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %sdslen.exit, %.critedge18.i
  %i.k = phi ptr [ %i.o, %.critedge18.i ], [ %i.j, %sdslen.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96
  %i.n = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.m, ptr noundef nonnull dereferenceable(1) %i.i) #29
  %.not15.i = icmp eq i32 %i.n, 0
  br i1 %.not15.i, label %._crit_edge21.i, label %.critedge18.i, !llvm.loop !9

.critedge18.i:                                    ; preds = %.lr.ph.split.i
  %i.o = call ptr @listNext(ptr noundef nonnull %4) #25 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %.critedge42.critedge, label %.lr.ph.split.i

._crit_edge21.i:                                  ; preds = %.lr.ph.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
end_hunk_0
begin_hunk_1_@authCommand:bb.a
bb.t:                                             ; preds = %time_independent_strcmp.exit.i
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.212) #25
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %internalAuth.exit

bb.v:                                             ; preds = %bb.g, %bb.f
  %.017 = phi ptr [ %i.m, %bb.f ], [ %i.u, %bb.g ] ; 2 uses
  %.0 = phi ptr [ %i.q, %bb.f ], [ %i.w, %bb.g ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8, !tbaa !158
  %i.bz = call i32 @checkModuleAuthentication(ptr noundef nonnull %0, ptr noundef %.017, ptr noundef %.0, ptr noundef nonnull %i.b) #25 ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.w, label %ACLAuthenticateUser.exit

bb.w:                                             ; preds = %bb.v
  %i.cb = call i32 @checkPasswordBasedAuth(ptr noundef nonnull %0, ptr noundef %.017, ptr noundef %.0)
  br label %ACLAuthenticateUser.exit

ACLAuthenticateUser.exit:                         ; preds = %bb.v, %bb.w
  %.0.i = phi i32 [ %i.cb, %bb.w ], [ %i.bz, %bb.v ]
  switch i32 %.0.i, label %addAuthErrReply.exit [
    i32 0, label %bb.x
    i32 1, label %bb.y
  ]

bb.x:                                             ; preds = %ACLAuthenticateUser.exit
  %i.cc = load ptr, ptr @shared, align 8, !tbaa !166
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.cc) #25
  br label %addAuthErrReply.exit

bb.y:                                             ; preds = %ACLAuthenticateUser.exit
  %i.cd = load ptr, ptr %i.b, align 8, !tbaa !158 ; 2 uses
  %i.ce = call i32 @clientHasPendingReplies(ptr noundef nonnull %0) #25
  %.not.i22 = icmp eq i32 %i.ce, 0
  br i1 %.not.i22, label %bb.z, label %addAuthErrReply.exit

bb.z:                                             ; preds = %bb.y
  %.not5.i = icmp eq ptr %i.cd, null
  br i1 %.not5.i, label %.sink.split.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !139
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.aa, %bb.z
  %.sink.i = phi ptr [ %i.cg, %bb.aa ], [ @.str.89, %bb.z ]
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef %.sink.i) #25
  br label %addAuthErrReply.exit

addAuthErrReply.exit:                             ; preds = %.sink.split.i, %bb.y, %ACLAuthenticateUser.exit, %bb.x
  %i.ch = load ptr, ptr %i.b, align 8, !tbaa !158 ; 2 uses
  %.not21 = icmp eq ptr %i.ch, null
  br i1 %.not21, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %addAuthErrReply.exit
  call void @decrRefCount(ptr noundef nonnull %i.ch) #25
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %addAuthErrReply.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %internalAuth.exit

internalAuth.exit:                                ; preds = %bb.u, %bb.i, %bb.e, %bb.ac, %bb.b
  ret void
}

declare void @addReplyErrorObject(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @ACLUpdateDefaultUserPassword(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @DefaultUser, align 8, !tbaa !137
  %i.b = tail call i32 @ACLSetUser(ptr noundef %i.a, ptr noundef nonnull @.str.67, i64 noundef -1) ; 0 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @sdsnew(ptr noundef nonnull @.str.207) #25
  %i.d = getelementptr i8, ptr %0, i64 -1
  %.val.i = load i8, ptr %i.d, align 1, !tbaa !33 ; 2 uses
  %i.e = and i8 %.val.i, 7
  switch i8 %i.e, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i8 %.val.i, 3
  %i.g = zext nneg i8 %i.f to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds i8, ptr %0, i64 -3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !33
  %i.j = zext i8 %i.i to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds i8, ptr %0, i64 -5
  %i.l = load i16, ptr %i.k, align 1, !tbaa !39
  %i.m = zext i16 %i.l to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %0, i64 -9
  %i.o = load i32, ptr %i.n, align 1, !tbaa !22
  %i.p = zext i32 %i.o to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds i8, ptr %0, i64 -17
  %i.r = load i64, ptr %i.q, align 1, !tbaa !24
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.r, %bb.g ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ %i.p, %bb.f ], [ 0, %bb.b ]
  %i.s = tail call ptr @sdscatlen(ptr noundef %i.c, ptr noundef nonnull %0, i64 noundef %.0.i) #25 ; 7 uses
  %i.t = load ptr, ptr @DefaultUser, align 8, !tbaa !137
  %i.u = getelementptr i8, ptr %i.s, i64 -1
  %.val.i6 = load i8, ptr %i.u, align 1, !tbaa !33 ; 2 uses
  %i.v = and i8 %.val.i6, 7
  switch i8 %i.v, label %sdslen.exit8 [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %sdslen.exit
  %i.w = lshr i8 %.val.i6, 3
  %i.x = zext nneg i8 %i.w to i64
  br label %sdslen.exit8

bb.i:                                             ; preds = %sdslen.exit
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 -3
  %i.z = load i8, ptr %i.y, align 1, !tbaa !33
  %i.aa = zext i8 %i.z to i64
  br label %sdslen.exit8

bb.j:                                             ; preds = %sdslen.exit
  %i.ab = getelementptr inbounds i8, ptr %i.s, i64 -5
  %i.ac = load i16, ptr %i.ab, align 1, !tbaa !39
  %i.ad = zext i16 %i.ac to i64
  br label %sdslen.exit8

bb.k:                                             ; preds = %sdslen.exit
  %i.ae = getelementptr inbounds i8, ptr %i.s, i64 -9
  %i.af = load i32, ptr %i.ae, align 1, !tbaa !22
  %i.ag = zext i32 %i.af to i64
  br label %sdslen.exit8

bb.l:                                             ; preds = %sdslen.exit
  %i.ah = getelementptr inbounds i8, ptr %i.s, i64 -17
  %i.ai = load i64, ptr %i.ah, align 1, !tbaa !24
  br label %sdslen.exit8

sdslen.exit8:                                     ; preds = %sdslen.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i7 = phi i64 [ %i.ai, %bb.l ], [ %i.x, %bb.h ], [ %i.aa, %bb.i ], [ %i.ad, %bb.j ], [ %i.ag, %bb.k ], [ 0, %sdslen.exit ]
  %i.aj = tail call i32 @ACLSetUser(ptr noundef %i.t, ptr noundef nonnull %i.s, i64 noundef %.0.i7) ; 0 uses
  tail call void @sdsfree(ptr noundef nonnull %i.s) #25
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.ak = load ptr, ptr @DefaultUser, align 8, !tbaa !137
  %i.al = tail call i32 @ACLSetUser(ptr noundef %i.ak, ptr noundef nonnull @.str.25, i64 noundef -1) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %sdslen.exit8
  ret void
}

declare i32 @prefixmatch(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @stringmatchlen(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @doesCommandHaveKeys(ptr noundef) local_unnamed_addr #1

declare i32 @getKeysFromCommandWithSpecs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @doesCommandHaveChannelsWithFlags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @getChannelsFromCommand(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @clusterGetSecret(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nounwind memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { noreturn nounwind }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { nounwind willreturn memory(read) }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { cold noreturn nounwind }

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}
!llvm.errno.tbaa = !{!22}

!0 = distinct !{!0, !32}
!1 = distinct !{!1, !32}
!2 = distinct !{!2, !32}
!3 = distinct !{!3, !32}
!4 = distinct !{!4, !32}
!5 = distinct !{!5, !32}
!6 = distinct !{!6, !32}
!7 = distinct !{!7, !32}
!8 = distinct !{!8, !32}
!9 = distinct !{!9, !32}
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{i32 1, !"ThinLTO", i32 0}
!17 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!18 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !{!"omnipotent char", !19, i64 0}
!21 = !{!"int", !20, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"long", !20, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"any pointer", !20, i64 0}
!26 = !{!"p1 _ZTS15ACLCategoryItem", !25, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"p1 omnipotent char", !25, i64 0}
!29 = !{!"ACLCategoryItem", !28, i64 0, !23, i64 8}
!30 = !{!29, !28, i64 0}
!31 = !{!29, !23, i64 8}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!20, !20, i64 0}
!34 = !{!"llvm.loop.isvectorized", i32 1}
!35 = !{!"llvm.loop.unroll.runtime.disable"}
!36 = !{!"p1 short", !25, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"short", !20, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!28, !28, i64 0}
!41 = !{!"", !21, i64 0, !28, i64 8}
!42 = !{!41, !28, i64 8}
!43 = !{!41, !21, i64 0}
!44 = !{!"any p2 pointer", !25, i64 0}
!45 = !{!"p2 omnipotent char", !44, i64 0}
!46 = !{!"p1 _ZTS7redisDb", !25, i64 0}
!47 = !{!"p1 _ZTS4dict", !25, i64 0}
!48 = !{!"p1 _ZTS11aeEventLoop", !25, i64 0}
!49 = !{!"p1 _ZTS3rax", !25, i64 0}
!50 = !{!"long long", !20, i64 0}
!51 = !{!"p1 _ZTS4list", !25, i64 0}
!52 = !{!"p1 _ZTS14ConnectionType", !25, i64 0}
!53 = !{!"connListener", !20, i64 0, !21, i64 64, !45, i64 72, !21, i64 80, !21, i64 84, !52, i64 88, !25, i64 96}
!54 = !{!"p1 _ZTS6client", !25, i64 0}
!55 = !{!"p2 _ZTS14pendingCommand", !44, i64 0}
!56 = !{!"pendingCommandPool", !55, i64 0, !21, i64 8, !21, i64 12, !21, i64 16}
!57 = !{!"double", !20, i64 0}
!58 = !{!"malloc_stats", !23, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !23, i64 64, !23, i64 72, !23, i64 80}
!59 = !{!"p1 _ZTS11hotkeyStats", !25, i64 0}
!60 = !{!"p1 double", !25, i64 0}
!61 = !{!"p1 _ZTS9saveparam", !25, i64 0}
!62 = !{!"p2 _ZTS10connection", !44, i64 0}
!63 = !{!"p1 _ZTS7redisOp", !25, i64 0}
!64 = !{!"redisOpArray", !63, i64 0, !21, i64 8, !21, i64 12}
!65 = !{!"p1 _ZTS11replBacklog", !25, i64 0}
!66 = !{!"replDataBuf", !51, i64 0, !23, i64 8, !23, i64 16, !23, i64 24, !23, i64 32, !23, i64 40}
!67 = !{!"p1 _ZTS10connection", !25, i64 0}
!68 = !{!"p1 _ZTS8_kvstore", !25, i64 0}
!69 = !{!"p1 _ZTS12clusterState", !25, i64 0}
!70 = !{!"aclInfo", !50, i64 0, !50, i64 8, !50, i64 16, !50, i64 24, !50, i64 32}
!71 = !{!"redisTLSContextConfig", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !21, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !21, i64 104, !21, i64 108, !21, i64 112, !21, i64 116}
!72 = !{!"p1 _ZTS14sentinelConfig", !25, i64 0}
!73 = !{!"redisServer", !21, i64 0, !23, i64 8, !28, i64 16, !28, i64 24, !45, i64 32, !21, i64 40, !21, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !46, i64 64, !47, i64 72, !47, i64 80, !48, i64 88, !49, i64 96, !21, i64 104, !21, i64 108, !20, i64 112, !20, i64 116, !50, i64 120, !20, i64 128, !21, i64 132, !21, i64 136, !21, i64 140, !28, i64 144, !21, i64 152, !21, i64 156, !20, i64 160, !21, i64 204, !23, i64 208, !21, i64 216, !21, i64 220, !21, i64 224, !28, i64 232, !28, i64 240, !21, i64 248, !21, i64 252, !23, i64 256, !20, i64 264, !47, i64 272, !47, i64 280, !47, i64 288, !51, i64 296, !20, i64 304, !21, i64 312, !21, i64 316, !20, i64 320, !21, i64 324, !21, i64 328, !21, i64 332, !20, i64 336, !21, i64 464, !28, i64 472, !28, i64 480, !21, i64 488, !20, i64 496, !21, i64 1328, !53, i64 1336, !51, i64 1440, !51, i64 1448, !51, i64 1456, !51, i64 1464, !51, i64 1472, !51, i64 1480, !51, i64 1488, !54, i64 1496, !54, i64 1504, !25, i64 1512, !49, i64 1520, !21, i64 1528, !49, i64 1536, !21, i64 1544, !51, i64 1552, !20, i64 1560, !20, i64 1624, !47, i64 1880, !20, i64 1888, !21, i64 1896, !21, i64 1900, !20, i64 1904, !21, i64 2416, !21, i64 2420, !56, i64 2424, !21, i64 2448, !50, i64 2456, !21, i64 2464, !21, i64 2468, !21, i64 2472, !21, i64 2476, !21, i64 2480, !23, i64 2488, !23, i64 2496, !23, i64 2504, !23, i64 2512, !23, i64 2520, !23, i64 2528, !50, i64 2536, !50, i64 2544, !50, i64 2552, !50, i64 2560, !50, i64 2568, !50, i64 2576, !57, i64 2584, !50, i64 2592, !50, i64 2600, !50, i64 2608, !50, i64 2616, !50, i64 2624, !50, i64 2632, !23, i64 2640, !50, i64 2648, !50, i64 2656, !50, i64 2664, !50, i64 2672, !50, i64 2680, !50, i64 2688, !50, i64 2696, !50, i64 2704, !23, i64 2712, !23, i64 2720, !23, i64 2728, !50, i64 2736, !50, i64 2744, !50, i64 2752, !50, i64 2760, !50, i64 2768, !57, i64 2776, !50, i64 2784, !50, i64 2792, !50, i64 2800, !50, i64 2808, !50, i64 2816, !51, i64 2824, !50, i64 2832, !50, i64 2840, !23, i64 2848, !58, i64 2856, !20, i64 2944, !20, i64 2952, !20, i64 2960, !20, i64 2968, !23, i64 2976, !23, i64 2984, !23, i64 2992, !23, i64 3000, !23, i64 3008, !23, i64 3016, !23, i64 3024, !23, i64 3032, !57, i64 3040, !20, i64 3048, !23, i64 3080, !50, i64 3088, !50, i64 3096, !50, i64 3104, !20, i64 3112, !20, i64 4136, !20, i64 5160, !50, i64 5168, !50, i64 5176, !50, i64 5184, !50, i64 5192, !20, i64 5200, !50, i64 6264, !50, i64 6272, !23, i64 6280, !50, i64 6288, !50, i64 6296, !23, i64 6304, !20, i64 6312, !59, i64 6408, !21, i64 6416, !21, i64 6420, !21, i64 6424, !21, i64 6428, !21, i64 6432, !21, i64 6436, !21, i64 6440, !21, i64 6444, !21, i64 6448, !21, i64 6452, !21, i64 6456, !21, i64 6460, !21, i64 6464, !23, i64 6472, !21, i64 6480, !21, i64 6484, !21, i64 6488, !21, i64 6492, !23, i64 6496, !23, i64 6504, !21, i64 6512, !21, i64 6516, !21, i64 6520, !21, i64 6524, !21, i64 6528, !21, i64 6532, !28, i64 6536, !20, i64 6544, !21, i64 6616, !21, i64 6620, !21, i64 6624, !60, i64 6632, !21, i64 6640, !21, i64 6644, !21, i64 6648, !21, i64 6652, !21, i64 6656, !21, i64 6660, !21, i64 6664, !21, i64 6668, !21, i64 6672, !28, i64 6680, !28, i64 6688, !21, i64 6696, !21, i64 6700, !23, i64 6704, !23, i64 6712, !23, i64 6720, !23, i64 6728, !23, i64 6736, !21, i64 6744, !21, i64 6748, !28, i64 6752, !21, i64 6760, !21, i64 6764, !50, i64 6768, !50, i64 6776, !23, i64 6784, !23, i64 6792, !23, i64 6800, !21, i64 6808, !21, i64 6812, !23, i64 6816, !21, i64 6824, !21, i64 6828, !21, i64 6832, !21, i64 6836, !21, i64 6840, !23, i64 6848, !21, i64 6856, !20, i64 6860, !20, i64 6864, !25, i64 6872, !21, i64 6880, !50, i64 6888, !50, i64 6896, !50, i64 6904, !50, i64 6912, !21, i64 6920, !61, i64 6928, !21, i64 6936, !28, i64 6944, !21, i64 6952, !21, i64 6956, !21, i64 6960, !23, i64 6968, !23, i64 6976, !23, i64 6984, !23, i64 6992, !21, i64 7000, !21, i64 7004, !21, i64 7008, !21, i64 7012, !21, i64 7016, !21, i64 7020, !62, i64 7024, !21, i64 7032, !21, i64 7036, !28, i64 7040, !21, i64 7048, !21, i64 7052, !21, i64 7056, !20, i64 7060, !21, i64 7068, !64, i64 7072, !21, i64 7088, !28, i64 7096, !21, i64 7104, !28, i64 7112, !21, i64 7120, !21, i64 7124, !21, i64 7128, !21, i64 7132, !21, i64 7136, !21, i64 7140, !21, i64 7144, !20, i64 7148, !20, i64 7189, !50, i64 7232, !50, i64 7240, !20, i64 7248, !50, i64 7256, !21, i64 7264, !21, i64 7268, !65, i64 7272, !50, i64 7280, !50, i64 7288, !66, i64 7296, !23, i64 7344, !23, i64 7352, !21, i64 7360, !21, i64 7364, !21, i64 7368, !21, i64 7372, !21, i64 7376, !21, i64 7380, !21, i64 7384, !21, i64 7388, !21, i64 7392, !23, i64 7400, !51, i64 7408, !23, i64 7416, !28, i64 7424, !28, i64 7432, !28, i64 7440, !21, i64 7448, !21, i64 7452, !54, i64 7456, !54, i64 7464, !21, i64 7472, !21, i64 7476, !21, i64 7480, !21, i64 7484, !23, i64 7488, !23, i64 7496, !23, i64 7504, !23, i64 7512, !23, i64 7520, !67, i64 7528, !67, i64 7536, !21, i64 7544, !28, i64 7552, !23, i64 7560, !21, i64 7568, !21, i64 7572, !21, i64 7576, !23, i64 7584, !23, i64 7592, !21, i64 7600, !21, i64 7604, !21, i64 7608, !21, i64 7612, !28, i64 7616, !21, i64 7624, !21, i64 7628, !20, i64 7632, !50, i64 7680, !21, i64 7688, !51, i64 7696, !21, i64 7704, !50, i64 7712, !50, i64 7720, !23, i64 7728, !23, i64 7736, !21, i64 7744, !50, i64 7752, !23, i64 7760, !21, i64 7768, !21, i64 7772, !21, i64 7776, !21, i64 7780, !21, i64 7784, !50, i64 7792, !20, i64 7800, !21, i64 7812, !21, i64 7816, !21, i64 7820, !20, i64 7824, !51, i64 7872, !51, i64 7880, !21, i64 7888, !23, i64 7896, !51, i64 7904, !51, i64 7912, !21, i64 7920, !21, i64 7924, !21, i64 7928, !21, i64 7932, !23, i64 7936, !23, i64 7944, !23, i64 7952, !23, i64 7960, !23, i64 7968, !23, i64 7976, !23, i64 7984, !23, i64 7992, !23, i64 8000, !50, i64 8008, !50, i64 8016, !50, i64 8024, !21, i64 8032, !21, i64 8036, !20, i64 8040, !23, i64 8048, !20, i64 8056, !50, i64 8064, !50, i64 8072, !21, i64 8080, !23, i64 8088, !50, i64 8096, !23, i64 8104, !50, i64 8112, !68, i64 8120, !47, i64 8128, !21, i64 8136, !68, i64 8144, !21, i64 8152, !21, i64 8156, !21, i64 8160, !21, i64 8164, !50, i64 8168, !50, i64 8176, !28, i64 8184, !50, i64 8192, !50, i64 8200, !50, i64 8208, !21, i64 8216, !69, i64 8224, !21, i64 8232, !21, i64 8236, !21, i64 8240, !21, i64 8244, !21, i64 8248, !28, i64 8256, !28, i64 8264, !28, i64 8272, !21, i64 8280, !21, i64 8284, !21, i64 8288, !21, i64 8292, !21, i64 8296, !21, i64 8300, !21, i64 8304, !21, i64 8308, !50, i64 8312, !21, i64 8320, !21, i64 8324, !21, i64 8328, !50, i64 8336, !21, i64 8344, !21, i64 8348, !21, i64 8352, !21, i64 8356, !21, i64 8360, !21, i64 8364, !21, i64 8368, !21, i64 8372, !21, i64 8376, !50, i64 8384, !47, i64 8392, !28, i64 8400, !23, i64 8408, !28, i64 8416, !21, i64 8424, !70, i64 8432, !21, i64 8472, !23, i64 8480, !21, i64 8488, !21, i64 8492, !21, i64 8496, !71, i64 8504, !28, i64 8624, !28, i64 8632, !28, i64 8640, !28, i64 8648, !72, i64 8656, !50, i64 8664, !21, i64 8672, !28, i64 8680, !21, i64 8688, !21, i64 8692, !21, i64 8696, !23, i64 8704, !21, i64 8712, !21, i64 8716, !28, i64 8720, !21, i64 8728, !21, i64 8732}
!74 = !{!73, !21, i64 8424}
!75 = !{!"any p3 pointer", !44, i64 0}
!76 = !{!"p3 omnipotent char", !75, i64 0}
!77 = !{!"", !21, i64 0, !20, i64 8, !76, i64 136, !51, i64 144, !51, i64 152, !28, i64 160}
!78 = !{!77, !21, i64 0}
!79 = !{!77, !51, i64 144}
!80 = !{!77, !51, i64 152}
!81 = !{!77, !76, i64 136}
!82 = !{!77, !28, i64 160}
!83 = !{!"p1 _ZTS8listNode", !25, i64 0}
!84 = !{!"list", !83, i64 0, !83, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !23, i64 40}
!85 = !{!84, !25, i64 32}
!86 = !{!84, !25, i64 24}
!87 = !{!84, !25, i64 16}
!88 = !{!45, !45, i64 0}
!89 = !{!"p1 _ZTS11redisObject", !25, i64 0}
!90 = !{!"", !28, i64 0, !20, i64 8, !51, i64 16, !51, i64 24, !89, i64 32}
!91 = !{!90, !51, i64 24}
!92 = !{!84, !23, i64 40}
!93 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!94 = !{!84, !83, i64 0}
!95 = !{!"listNode", !83, i64 0, !83, i64 8, !25, i64 16}
!96 = !{!95, !25, i64 16}
!97 = !{!49, !49, i64 0}
!98 = !{!90, !28, i64 0}
!99 = !{!90, !51, i64 16}
!100 = !{!90, !89, i64 32}
!101 = !{!73, !51, i64 1440}
!102 = !{!"p2 _ZTS11redisObject", !44, i64 0}
!103 = !{!"p1 _ZTS14pendingCommand", !25, i64 0}
!104 = !{!"pendingCommandList", !103, i64 0, !103, i64 8, !21, i64 16, !21, i64 20}
!105 = !{!"p1 _ZTS14deferredObject", !25, i64 0}
!106 = !{!"p1 _ZTS12redisCommand", !25, i64 0}
!107 = !{!"p1 _ZTS9dictEntry", !25, i64 0}
!108 = !{!"multiState", !55, i64 0, !21, i64 8, !21, i64 12, !21, i64 16, !21, i64 20, !23, i64 24, !21, i64 32}
!109 = !{!"blockingState", !21, i64 0, !50, i64 8, !21, i64 16, !47, i64 24, !21, i64 32, !21, i64 36, !50, i64 40, !25, i64 48, !25, i64 56, !23, i64 64}
!110 = !{!"p1 _ZTS13payloadHeader", !25, i64 0}
!111 = !{!"p1 _ZTS7asmTask", !25, i64 0}
!112 = !{!"client", !23, i64 0, !23, i64 8, !67, i64 16, !20, i64 24, !20, i64 25, !20, i64 26, !20, i64 27, !21, i64 28, !46, i64 32, !89, i64 40, !89, i64 48, !89, i64 56, !28, i64 64, !23, i64 72, !23, i64 80, !21, i64 88, !102, i64 96, !21, i64 104, !21, i64 108, !102, i64 112, !23, i64 120, !104, i64 128, !103, i64 152, !105, i64 160, !21, i64 168, !102, i64 176, !21, i64 184, !21, i64 188, !106, i64 192, !106, i64 200, !106, i64 208, !106, i64 216, !25, i64 224, !21, i64 232, !21, i64 236, !23, i64 240, !51, i64 248, !50, i64 256, !51, i64 264, !23, i64 272, !23, i64 280, !23, i64 288, !21, i64 296, !21, i64 300, !107, i64 304, !23, i64 312, !23, i64 320, !23, i64 328, !50, i64 336, !50, i64 344, !21, i64 352, !21, i64 356, !21, i64 360, !21, i64 364, !23, i64 368, !23, i64 376, !28, i64 384, !50, i64 392, !50, i64 400, !50, i64 408, !50, i64 416, !50, i64 424, !50, i64 432, !50, i64 440, !50, i64 448, !50, i64 456, !50, i64 464, !50, i64 472, !20, i64 480, !21, i64 524, !28, i64 528, !21, i64 536, !21, i64 540, !23, i64 544, !108, i64 552, !109, i64 592, !50, i64 664, !51, i64 672, !47, i64 680, !47, i64 688, !47, i64 696, !28, i64 704, !28, i64 712, !83, i64 720, !83, i64 728, !83, i64 736, !25, i64 744, !25, i64 752, !25, i64 760, !25, i64 768, !25, i64 776, !23, i64 784, !49, i64 792, !23, i64 800, !21, i64 808, !83, i64 816, !25, i64 824, !83, i64 832, !23, i64 840, !83, i64 848, !23, i64 856, !83, i64 864, !23, i64 872, !95, i64 880, !95, i64 904, !23, i64 928, !23, i64 936, !23, i64 944, !50, i64 952, !23, i64 960, !23, i64 968, !28, i64 976, !20, i64 984, !110, i64 992, !50, i64 1000, !50, i64 1008, !50, i64 1016, !111, i64 1024, !28, i64 1032, !20, i64 1040}
!113 = !{!112, !25, i64 224}
!114 = !{!90, !20, i64 8}
!115 = !{!"p1 _ZTS15redisCommandArg", !25, i64 0}
!116 = !{!"p1 _ZTS13hdr_histogram", !25, i64 0}
!117 = !{!"", !28, i64 0, !23, i64 8, !21, i64 16, !20, i64 24, !21, i64 40, !20, i64 44}
!118 = !{!"p1 _ZTS18RedisModuleCommand", !25, i64 0}
!119 = !{!"redisCommand", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !21, i64 32, !28, i64 40, !28, i64 48, !21, i64 56, !25, i64 64, !21, i64 72, !45, i64 80, !21, i64 88, !25, i64 96, !21, i64 104, !23, i64 112, !23, i64 120, !25, i64 128, !21, i64 136, !25, i64 144, !21, i64 152, !106, i64 160, !115, i64 168, !50, i64 176, !50, i64 184, !50, i64 192, !50, i64 200, !21, i64 208, !28, i64 216, !116, i64 224, !117, i64 232, !47, i64 288, !106, i64 296, !118, i64 304}
!120 = !{!119, !21, i64 208}
!121 = !{!119, !47, i64 288}
!122 = !{!119, !23, i64 120}
!123 = !{!"p1 _ZTS7raxNode", !25, i64 0}
!124 = !{!"raxStack", !44, i64 0, !23, i64 8, !23, i64 16, !20, i64 24, !21, i64 280}
!125 = !{!"raxIterator", !21, i64 0, !49, i64 8, !28, i64 16, !25, i64 24, !23, i64 32, !23, i64 40, !20, i64 48, !123, i64 176, !124, i64 184, !25, i64 472, !25, i64 480}
!126 = !{!125, !25, i64 24}
!127 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!128 = !{!119, !28, i64 216}
!129 = !{!119, !106, i64 296}
!130 = !{!73, !21, i64 6416}
!131 = !{!73, !21, i64 6420}
!132 = !{!73, !47, i64 80}
!133 = !{!"ACLUserFlag", !28, i64 0, !23, i64 8}
!134 = !{!133, !23, i64 8}
!135 = !{!133, !28, i64 0}
!136 = !{!51, !51, i64 0}
!137 = !{!25, !25, i64 0}
!138 = !{!"redisObject", !21, i64 0, !21, i64 0, !21, i64 1, !21, i64 3, !21, i64 4, !21, i64 5, !25, i64 8}
!139 = !{!138, !25, i64 8}
!140 = !{!112, !21, i64 352}
!141 = !{!112, !23, i64 8}
!142 = !{!73, !50, i64 8432}
!143 = !{!73, !50, i64 8440}
!144 = !{!73, !50, i64 8448}
!145 = !{!73, !50, i64 8456}
!146 = !{!73, !50, i64 8464}
!147 = !{!"ACLLogEntry", !23, i64 0, !21, i64 8, !21, i64 12, !28, i64 16, !28, i64 24, !50, i64 32, !28, i64 40, !50, i64 48, !50, i64 56}
!148 = !{!147, !28, i64 16}
!149 = !{!147, !28, i64 24}
!150 = !{!147, !28, i64 40}
!151 = !{!147, !23, i64 0}
!152 = !{!147, !21, i64 8}
!153 = !{!147, !50, i64 32}
!154 = !{!147, !50, i64 48}
!155 = !{!147, !50, i64 56}
!156 = !{!112, !106, i64 192}
!157 = !{!112, !102, i64 96}
end_hunk_1
