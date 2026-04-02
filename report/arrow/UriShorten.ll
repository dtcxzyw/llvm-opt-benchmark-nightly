begin_hunk_0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %4) #4
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %uriRemoveBaseUriImplA.exit.thread

end_hunk_0
begin_hunk_1
  br i1 %i.c, label %uriRemoveBaseUriImplA.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uriResetUriA(ptr noundef nonnull %0) #4
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq ptr %2, null
  %or.cond.i = or i1 %i.d, %i.e
end_hunk_1
begin_hunk_2
  br i1 %i.i, label %uriRemoveBaseUriImplA.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i32 @uriCompareRangeA(ptr noundef nonnull %1, ptr noundef nonnull %2) #4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !16
  %i.k = tail call i32 @uriCopyAuthorityA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.013) #4
  %.not108.i = icmp eq i32 %i.k, 0
  br i1 %.not108.i, label %uriRemoveBaseUriImplA.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @uriCopyPathA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.013) #4
  %.not109.i = icmp eq i32 %i.l, 0
  br i1 %.not109.i, label %uriRemoveBaseUriImplA.exit, label %.loopexit.i

end_hunk_2
begin_hunk_3
  br i1 %.not25.i.i, label %uriEqualsAuthorityA.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %bcmp26.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.n, ptr noundef nonnull dereferenceable(4) %i.p, i64 4)
  br label %uriEqualsAuthorityA.exit.i

bb.m:                                             ; preds = %bb.j
end_hunk_3
begin_hunk_4
  br i1 %.not23.i.i, label %uriEqualsAuthorityA.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %i.r, ptr noundef nonnull dereferenceable(16) %i.t, i64 16)
  br label %uriEqualsAuthorityA.exit.i

bb.p:                                             ; preds = %bb.m
end_hunk_4
begin_hunk_5
  br i1 %.not21.i.i, label %uriEqualsAuthorityA.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = tail call i32 @uriCompareRangeA(ptr noundef nonnull %i.u, ptr noundef nonnull %i.w) #4
  br label %uriEqualsAuthorityA.exit.i

bb.s:                                             ; preds = %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = tail call i32 @uriCompareRangeA(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #4
  br label %uriEqualsAuthorityA.exit.i

uriEqualsAuthorityA.exit.i:                       ; preds = %bb.s, %bb.r, %bb.o, %bb.l
  %.0.shrunk.i.in.i = phi i32 [ %i.ab, %bb.s ], [ %bcmp26.i.i, %bb.l ], [ %bcmp.i.i, %bb.o ], [ %i.y, %bb.r ]
  %.0.shrunk.i.not.i = icmp eq i32 %.0.shrunk.i.in.i, 0
  br i1 %.0.shrunk.i.not.i, label %bb.u, label %uriEqualsAuthorityA.exit.thread.i

uriEqualsAuthorityA.exit.thread.i:                ; preds = %uriEqualsAuthorityA.exit.i, %bb.q, %bb.n, %bb.k
  %i.ac = tail call i32 @uriCopyAuthorityA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.013) #4
  %.not94.i = icmp eq i32 %i.ac, 0
  br i1 %.not94.i, label %uriRemoveBaseUriImplA.exit, label %bb.t

bb.t:                                             ; preds = %uriEqualsAuthorityA.exit.thread.i
  %i.ad = tail call i32 @uriCopyPathA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.013) #4
  %.not95.i = icmp eq i32 %i.ad, 0
  br i1 %.not95.i, label %uriRemoveBaseUriImplA.exit, label %.loopexit.i

end_hunk_5
begin_hunk_6
  br i1 %i.ae, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.af = tail call i32 @uriCopyPathA(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.013) #4
  %.not106.i = icmp eq i32 %i.af, 0
  br i1 %.not106.i, label %uriRemoveBaseUriImplA.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.ag, align 8, !tbaa !21
  %i.ah = tail call i32 @uriFixAmbiguityA(ptr noundef nonnull %0, ptr noundef nonnull %.013) #4
  %.not107.i = icmp eq i32 %i.ah, 0
  br i1 %.not107.i, label %uriRemoveBaseUriImplA.exit, label %.loopexit.i

end_hunk_6
begin_hunk_7
.lr.ph.i:                                         ; preds = %bb.x, %.critedge111.i
  %.083141.i = phi ptr [ %i.bb, %.critedge111.i ], [ %i.al, %bb.x ] ; 5 uses
  %.085140.i = phi ptr [ %i.av, %.critedge111.i ], [ %i.aj, %bb.x ] ; 6 uses
  %i.ap = tail call i32 @uriCompareRangeA(ptr noundef nonnull %.085140.i, ptr noundef nonnull %.083141.i) #4
  %.not96.i = icmp eq i32 %i.ap, 0
  br i1 %.not96.i, label %bb.y, label %.lr.ph151.i

end_hunk_7
begin_hunk_8

bb.aa:                                            ; preds = %.lr.ph151.i
  %i.bk = load ptr, ptr %.013, align 8, !tbaa !29
  %i.bl = tail call ptr %i.bk(ptr noundef nonnull %.013, i64 noundef 32) #4 ; 7 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %uriRemoveBaseUriImplA.exit, label %bb.ab

end_hunk_8
begin_hunk_9
.lr.ph:                                           ; preds = %.peel.next.i, %uriAppendSegmentA.exit.i
  %i.bu = phi ptr [ %i.ce, %uriAppendSegmentA.exit.i ], [ %i.bt, %.peel.next.i ]
  %i.bv = load ptr, ptr %.013, align 8, !tbaa !29
  %i.bw = tail call ptr %i.bv(ptr noundef nonnull %.013, i64 noundef 32) #4 ; 7 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %uriRemoveBaseUriImplA.exit, label %bb.ae

end_hunk_9
begin_hunk_10

bb.ak:                                            ; preds = %.lr.ph157.i
  %i.co = load ptr, ptr %.013, align 8, !tbaa !29
  %i.cp = tail call ptr %i.co(ptr noundef nonnull %.013, i64 noundef 32) #4 ; 8 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %uriRemoveBaseUriImplA.exit, label %bb.al

end_hunk_10
begin_hunk_11

bb.ao:                                            ; preds = %.critedge113.i
  %i.cx = load ptr, ptr %.013, align 8, !tbaa !29
  %i.cy = tail call ptr %i.cx(ptr noundef nonnull %.013, i64 noundef 32) #4 ; 8 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %uriRemoveBaseUriImplA.exit, label %bb.ap

end_hunk_11
begin_hunk_12
  %i.dg = getelementptr inbounds nuw i8, ptr %.186160.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !25
  %i.di = load ptr, ptr %.013, align 8, !tbaa !29
  %i.dj = tail call ptr %i.di(ptr noundef nonnull %.013, i64 noundef 32) #4 ; 7 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %uriRemoveBaseUriImplA.exit, label %bb.as

end_hunk_12
begin_hunk_13

uriRemoveBaseUriImplA.exit:                       ; preds = %.lr.ph, %.critedge115.i, %bb.ao, %bb.ak, %bb.aa, %bb.w, %bb.v, %bb.t, %uriEqualsAuthorityA.exit.thread.i, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %.4.i = phi i32 [ 3, %bb.i ], [ 3, %bb.aa ], [ 2, %bb.d ], [ 6, %bb.e ], [ 3, %.critedge115.i ], [ 3, %bb.h ], [ 7, %bb.f ], [ 3, %bb.v ], [ 3, %bb.t ], [ 3, %bb.w ], [ 3, %uriEqualsAuthorityA.exit.thread.i ], [ 3, %bb.ak ], [ 3, %bb.ao ], [ 3, %.lr.ph ]
  %i.dw = tail call i32 @uriFreeUriMembersMmA(ptr noundef nonnull %0, ptr noundef nonnull %.013) #4 ; 0 uses
  br label %uriRemoveBaseUriImplA.exit.thread

uriRemoveBaseUriImplA.exit.thread:                ; preds = %bb.c, %.loopexit.i, %uriRemoveBaseUriImplA.exit, %bb.b
end_hunk_13
begin_hunk_14
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %4) #4
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.c, label %uriRemoveBaseUriImplW.exit.thread

end_hunk_14
begin_hunk_15
  br i1 %i.c, label %uriRemoveBaseUriImplW.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @uriResetUriW(ptr noundef nonnull %0) #4
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq ptr %2, null
  %or.cond.i = or i1 %i.d, %i.e
end_hunk_15
begin_hunk_16
  br i1 %i.i, label %uriRemoveBaseUriImplW.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call i32 @uriCompareRangeW(ptr noundef nonnull %1, ptr noundef nonnull %2) #4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !41
  %i.k = tail call i32 @uriCopyAuthorityW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.013) #4
  %.not108.i = icmp eq i32 %i.k, 0
  br i1 %.not108.i, label %uriRemoveBaseUriImplW.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call i32 @uriCopyPathW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.013) #4
  %.not109.i = icmp eq i32 %i.l, 0
  br i1 %.not109.i, label %uriRemoveBaseUriImplW.exit, label %.loopexit.i

end_hunk_16
begin_hunk_17
  br i1 %.not25.i.i, label %uriEqualsAuthorityW.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %bcmp26.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.n, ptr noundef nonnull dereferenceable(4) %i.p, i64 4)
  br label %uriEqualsAuthorityW.exit.i

bb.m:                                             ; preds = %bb.j
end_hunk_17
begin_hunk_18
  br i1 %.not23.i.i, label %uriEqualsAuthorityW.exit.thread.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %i.r, ptr noundef nonnull dereferenceable(16) %i.t, i64 16)
  br label %uriEqualsAuthorityW.exit.i

bb.p:                                             ; preds = %bb.m
end_hunk_18
begin_hunk_19
  br i1 %.not21.i.i, label %uriEqualsAuthorityW.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = tail call i32 @uriCompareRangeW(ptr noundef nonnull %i.u, ptr noundef nonnull %i.w) #4
  br label %uriEqualsAuthorityW.exit.i

bb.s:                                             ; preds = %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ab = tail call i32 @uriCompareRangeW(ptr noundef nonnull %i.z, ptr noundef nonnull %i.aa) #4
  br label %uriEqualsAuthorityW.exit.i

uriEqualsAuthorityW.exit.i:                       ; preds = %bb.s, %bb.r, %bb.o, %bb.l
  %.0.shrunk.i.in.i = phi i32 [ %i.ab, %bb.s ], [ %bcmp26.i.i, %bb.l ], [ %bcmp.i.i, %bb.o ], [ %i.y, %bb.r ]
  %.0.shrunk.i.not.i = icmp eq i32 %.0.shrunk.i.in.i, 0
  br i1 %.0.shrunk.i.not.i, label %bb.u, label %uriEqualsAuthorityW.exit.thread.i

uriEqualsAuthorityW.exit.thread.i:                ; preds = %uriEqualsAuthorityW.exit.i, %bb.q, %bb.n, %bb.k
  %i.ac = tail call i32 @uriCopyAuthorityW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.013) #4
  %.not94.i = icmp eq i32 %i.ac, 0
  br i1 %.not94.i, label %uriRemoveBaseUriImplW.exit, label %bb.t

bb.t:                                             ; preds = %uriEqualsAuthorityW.exit.thread.i
  %i.ad = tail call i32 @uriCopyPathW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.013) #4
  %.not95.i = icmp eq i32 %i.ad, 0
  br i1 %.not95.i, label %uriRemoveBaseUriImplW.exit, label %.loopexit.i

end_hunk_19
begin_hunk_20
  br i1 %i.ae, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.af = tail call i32 @uriCopyPathW(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %.013) #4
  %.not106.i = icmp eq i32 %i.af, 0
  br i1 %.not106.i, label %uriRemoveBaseUriImplW.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.ag, align 8, !tbaa !46
  %i.ah = tail call i32 @uriFixAmbiguityW(ptr noundef nonnull %0, ptr noundef nonnull %.013) #4
  %.not107.i = icmp eq i32 %i.ah, 0
  br i1 %.not107.i, label %uriRemoveBaseUriImplW.exit, label %.loopexit.i

end_hunk_20
begin_hunk_21
.lr.ph.i:                                         ; preds = %bb.x, %.critedge111.i
  %.083141.i = phi ptr [ %i.bb, %.critedge111.i ], [ %i.al, %bb.x ] ; 5 uses
  %.085140.i = phi ptr [ %i.av, %.critedge111.i ], [ %i.aj, %bb.x ] ; 6 uses
  %i.ap = tail call i32 @uriCompareRangeW(ptr noundef nonnull %.085140.i, ptr noundef nonnull %.083141.i) #4
  %.not96.i = icmp eq i32 %i.ap, 0
  br i1 %.not96.i, label %bb.y, label %.lr.ph151.i

end_hunk_21
begin_hunk_22

bb.aa:                                            ; preds = %.lr.ph151.i
  %i.bk = load ptr, ptr %.013, align 8, !tbaa !29
  %i.bl = tail call ptr %i.bk(ptr noundef nonnull %.013, i64 noundef 32) #4 ; 7 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %uriRemoveBaseUriImplW.exit, label %bb.ab

end_hunk_22
begin_hunk_23
.lr.ph:                                           ; preds = %.peel.next.i, %uriAppendSegmentW.exit.i
  %i.bu = phi ptr [ %i.ce, %uriAppendSegmentW.exit.i ], [ %i.bt, %.peel.next.i ]
  %i.bv = load ptr, ptr %.013, align 8, !tbaa !29
  %i.bw = tail call ptr %i.bv(ptr noundef nonnull %.013, i64 noundef 32) #4 ; 7 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %uriRemoveBaseUriImplW.exit, label %bb.ae

end_hunk_23
begin_hunk_24

bb.ak:                                            ; preds = %.lr.ph157.i
  %i.co = load ptr, ptr %.013, align 8, !tbaa !29
  %i.cp = tail call ptr %i.co(ptr noundef nonnull %.013, i64 noundef 32) #4 ; 8 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %uriRemoveBaseUriImplW.exit, label %bb.al

end_hunk_24
begin_hunk_25

bb.ao:                                            ; preds = %.critedge113.i
  %i.cx = load ptr, ptr %.013, align 8, !tbaa !29
  %i.cy = tail call ptr %i.cx(ptr noundef nonnull %.013, i64 noundef 32) #4 ; 8 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %uriRemoveBaseUriImplW.exit, label %bb.ap

end_hunk_25
begin_hunk_26
  %i.dg = getelementptr inbounds nuw i8, ptr %.186160.i, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !50
  %i.di = load ptr, ptr %.013, align 8, !tbaa !29
  %i.dj = tail call ptr %i.di(ptr noundef nonnull %.013, i64 noundef 32) #4 ; 7 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %uriRemoveBaseUriImplW.exit, label %bb.as

end_hunk_26
begin_hunk_27

uriRemoveBaseUriImplW.exit:                       ; preds = %.lr.ph, %.critedge115.i, %bb.ao, %bb.ak, %bb.aa, %bb.w, %bb.v, %bb.t, %uriEqualsAuthorityW.exit.thread.i, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d
  %.4.i = phi i32 [ 3, %bb.i ], [ 3, %bb.aa ], [ 2, %bb.d ], [ 6, %bb.e ], [ 3, %.critedge115.i ], [ 3, %bb.h ], [ 7, %bb.f ], [ 3, %bb.v ], [ 3, %bb.t ], [ 3, %bb.w ], [ 3, %uriEqualsAuthorityW.exit.thread.i ], [ 3, %bb.ak ], [ 3, %bb.ao ], [ 3, %.lr.ph ]
  %i.dw = tail call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %0, ptr noundef nonnull %.013) #4 ; 0 uses
  br label %uriRemoveBaseUriImplW.exit.thread

uriRemoveBaseUriImplW.exit.thread:                ; preds = %bb.c, %.loopexit.i, %uriRemoveBaseUriImplW.exit, %bb.b
end_hunk_27
begin_hunk_28

declare i32 @uriFixAmbiguityW(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
end_hunk_28
