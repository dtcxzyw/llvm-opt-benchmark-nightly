inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0_@u_UCharsToChars_78:bb.a

bb.e:                                             ; preds = %bb.d, %.lr.ph
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.e, %bb.d
  %.0 = phi i16 [ %i.r, %bb.d ], [ 0, %bb.e ]
  %i.ab = trunc nuw nsw i16 %.0 to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0812, i64 1
  store i8 %i.ab, ptr %.0812, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %.0911, i64 4
  %i.ae = load i16, ptr %i.q, align 2             ; 3 uses
  %i.af = icmp ult i16 %i.ae, 128
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.ag = zext nneg i16 %i.ae to i32              ; 2 uses
  %i.ah = lshr i32 %i.ag, 5
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ag, 31
  %i.am = shl nuw i32 1, %i.al
  %i.an = and i32 %i.ak, %i.am
  %.not.1 = icmp eq i32 %i.an, 0
  br i1 %.not.1, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.1 = phi i16 [ %i.ae, %bb.f ], [ 0, %bb.g ]
  %i.ao = trunc nuw nsw i16 %.0.1 to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %.0812, i64 2
  store i8 %i.ao, ptr %i.ac, align 1
  %i.aq = add nsw i32 %.0713, -2
  %i.ar = icmp sgt i32 %.0713, 2
  br i1 %i.ar, label %.lr.ph, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext range(i8 0, 2) i8 @uprv_isInvariantString_78(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.011 = phi ptr [ %0, %bb.a ], [ %.011.be, %.backedge.backedge ] ; 4 uses
  %.010 = phi i32 [ %1, %bb.a ], [ %.010.be, %.backedge.backedge ] ; 4 uses
  %i.a = icmp slt i32 %.010, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  %i.b = getelementptr inbounds nuw i8, ptr %.011, i64 1
  %i.c = load i8, ptr %.011, align 1              ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.e

bb.c:                                             ; preds = %.backedge
  %i.e = icmp eq i32 %.010, 0
  br i1 %i.e, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add nsw i32 %.010, -1                    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.011, i64 1 ; 2 uses
  %i.h = load i8, ptr %.011, align 1              ; 2 uses
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %.backedge.backedge, label %bb.e

.backedge.backedge:                               ; preds = %bb.d, %bb.f
  %.011.be = phi ptr [ %.112, %bb.f ], [ %i.g, %bb.d ]
  %.010.be = phi i32 [ %.1, %bb.f ], [ %i.f, %bb.d ]
  br label %.backedge, !llvm.loop !18

bb.e:                                             ; preds = %bb.d, %bb.b
  %.112 = phi ptr [ %i.b, %bb.b ], [ %i.g, %bb.d ]
  %.1 = phi i32 [ %.010, %bb.b ], [ %i.f, %bb.d ]
  %.0 = phi i8 [ %i.c, %bb.b ], [ %i.h, %bb.d ]   ; 2 uses
  %i.j = icmp sgt i8 %.0, -1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = zext nneg i8 %.0 to i32                  ; 2 uses
  %i.l = lshr i32 %i.k, 5
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = and i32 %i.k, 31
  %i.q = shl nuw i32 1, %i.p
  %i.r = and i32 %i.o, %i.q
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.g, label %.backedge.backedge

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.013 = phi i8 [ 0, %bb.e ], [ 0, %bb.f ], [ 1, %bb.c ], [ 1, %bb.b ]
  ret i8 %.013
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local signext range(i8 0, 2) i8 @uprv_isInvariantUString_78(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.010 = phi ptr [ %0, %bb.a ], [ %.111, %bb.g ] ; 3 uses
  %.09 = phi i32 [ %1, %bb.a ], [ %.1, %bb.g ]    ; 4 uses
  %i.a = icmp slt i32 %.09, 0
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = load i16, ptr %.010, align 2             ; 2 uses
  %i.c = icmp eq i16 %i.b, 0
  br i1 %i.c, label %bb.h, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = icmp eq i32 %.09, 0
  br i1 %i.d, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = add nsw i32 %.09, -1
  %i.f = load i16, ptr %.010, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.1 = phi i32 [ %.09, %bb.c ], [ %i.e, %bb.e ]
  %.0 = phi i16 [ %i.b, %bb.c ], [ %i.f, %bb.e ]  ; 2 uses
  %i.g = icmp ult i16 %.0, 128
  br i1 %i.g, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.h = zext nneg i16 %.0 to i32                 ; 2 uses
  %.111 = getelementptr inbounds nuw i8, ptr %.010, i64 2
  %i.i = lshr i32 %i.h, 5
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.h, 31
  %i.n = shl nuw i32 1, %i.m
  %i.o = and i32 %i.l, %i.n
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.h, label %bb.b, !llvm.loop !19

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.012 = phi i8 [ 0, %bb.f ], [ 0, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ]
  ret i8 %.012
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @uprv_ebcdicFromAscii_78(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i32 %2, 0
  %i.h = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.g, %i.h
  br i1 %or.cond5, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.042 = phi i32 [ %i.y, %bb.g ], [ %2, %.preheader ] ; 3 uses
  %.03141 = phi ptr [ %i.x, %bb.g ], [ %3, %.preheader ] ; 2 uses
  %.03240 = phi ptr [ %i.i, %bb.g ], [ %1, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.03240, i64 1
  %i.j = load i8, ptr %.03240, align 1            ; 3 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.l = zext nneg i8 %i.j to i32                 ; 2 uses
  %i.m = lshr i32 %i.l, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.l, 31
  %i.r = shl nuw i32 1, %i.q
  %i.s = and i32 %i.p, %i.r
  %.not38 = icmp eq i32 %i.s, 0
  br i1 %.not38, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %i.t = sub nsw i32 %2, %.042
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %2, i32 noundef %i.t) #10
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.e
  %i.u = zext nneg i8 %i.j to i64
  %i.v = getelementptr inbounds nuw i8, ptr @_ZL15ebcdicFromAscii, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %.03141, i64 1
  store i8 %i.w, ptr %.03141, align 1
  %i.y = add nsw i32 %.042, -1
  %i.z = icmp sgt i32 %.042, 1
  br i1 %i.z, label %.lr.ph, label %.loopexit, !llvm.loop !20

.loopexit.sink.split:                             ; preds = %bb.c, %bb.d, %bb.f
  %.sink = phi i32 [ 10, %bb.f ], [ 1, %bb.d ], [ 1, %bb.c ]
  store i32 %.sink, ptr %4, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.loopexit.sink.split, %.preheader, %bb.a, %bb.b
  %.030 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %.loopexit.sink.split ], [ 0, %bb.b ], [ %2, %bb.g ]
  ret i32 %.030
}

declare void @udata_printError_78(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @uprv_copyAscii_78(ptr noundef %0, ptr noundef readonly captures(address) %1, i32 noundef %2, ptr noundef writeonly captures(address) %3, ptr noundef captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %._crit_edge.thread

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i32 %2, 0                        ; 2 uses
  %i.h = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.g, %i.h
  br i1 %or.cond5, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.047 = phi i32 [ %i.u, %bb.h ], [ %2, %.preheader ] ; 3 uses
  %.03446 = phi ptr [ %i.i, %bb.h ], [ %1, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.03446, i64 1
  %i.j = load i8, ptr %.03446, align 1            ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.l = zext nneg i8 %i.j to i32                 ; 2 uses
  %i.m = lshr i32 %i.l, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.l, 31
  %i.r = shl nuw i32 1, %i.q
  %i.s = and i32 %i.p, %i.r
  %.not42 = icmp eq i32 %i.s, 0
  br i1 %.not42, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.t = sub nsw i32 %2, %.047
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %2, i32 noundef %i.t) #10
  store i32 10, ptr %4, align 4
  br label %._crit_edge.thread

bb.h:                                             ; preds = %bb.f
  %i.u = add nsw i32 %.047, -1
  %i.v = icmp sgt i32 %.047, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.h
  %.not41 = icmp ne ptr %1, %3
  %or.cond44.not = and i1 %i.g, %.not41
  br i1 %or.cond44.not, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  %i.w = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %1, i64 %i.w, i1 false)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge, %bb.i, %bb.a, %bb.b, %bb.g, %bb.e
  %.033 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.b ], [ %2, %bb.i ], [ %2, %._crit_edge ], [ 0, %.preheader ]
  ret i32 %.033
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @uprv_asciiFromEbcdic_78(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i32 %2, 0
  %i.h = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.g, %i.h
  br i1 %or.cond5, label %.loopexit.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.h
  %.050 = phi i32 [ %i.x, %bb.h ], [ %2, %.preheader ] ; 3 uses
  %.03649 = phi ptr [ %i.w, %bb.h ], [ %3, %.preheader ] ; 2 uses
  %.03748 = phi ptr [ %i.i, %bb.h ], [ %1, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.03748, i64 1
  %i.j = load i8, ptr %.03748, align 1            ; 2 uses
  %.not44 = icmp eq i8 %i.j, 0
  br i1 %.not44, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZL15asciiFromEbcdic, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1               ; 3 uses
  %.not45 = icmp eq i8 %i.m, 0
  br i1 %.not45, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = lshr i32 %i.n, 5
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.n, 31
  %i.t = shl nuw i32 1, %i.s
  %i.u = and i32 %i.r, %i.t
  %.not46 = icmp eq i32 %i.u, 0
  br i1 %.not46, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = sub nsw i32 %2, %.050
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %2, i32 noundef %i.v) #10
  br label %.loopexit.sink.split

bb.h:                                             ; preds = %bb.f, %.lr.ph
  %.035 = phi i8 [ %i.m, %bb.f ], [ 0, %.lr.ph ]
  %i.w = getelementptr inbounds nuw i8, ptr %.03649, i64 1
  store i8 %.035, ptr %.03649, align 1
  %i.x = add nsw i32 %.050, -1
  %i.y = icmp sgt i32 %.050, 1
  br i1 %i.y, label %.lr.ph, label %.loopexit, !llvm.loop !22

.loopexit.sink.split:                             ; preds = %bb.c, %bb.d, %bb.g
  %.sink = phi i32 [ 10, %bb.g ], [ 1, %bb.d ], [ 1, %bb.c ]
  store i32 %.sink, ptr %4, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %.loopexit.sink.split, %.preheader, %bb.a, %bb.b
  %.038 = phi i32 [ 0, %bb.a ], [ 0, %.preheader ], [ 0, %.loopexit.sink.split ], [ 0, %bb.b ], [ %2, %bb.h ]
  ret i32 %.038
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, -2147483648) i32 @uprv_copyEbcdic_78(ptr noundef %0, ptr noundef readonly captures(address) %1, i32 noundef %2, ptr noundef writeonly captures(address) %3, ptr noundef captures(address_is_null) %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %._crit_edge.thread

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp eq ptr %1, null
  %or.cond = or i1 %i.d, %i.e
  %i.f = icmp slt i32 %2, 0
  %or.cond3 = or i1 %or.cond, %i.f
  br i1 %or.cond3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp ne i32 %2, 0                        ; 2 uses
  %i.h = icmp eq ptr %3, null
  %or.cond5 = and i1 %i.g, %i.h
  br i1 %or.cond5, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %4, align 4
  br label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.054 = phi i32 [ %i.w, %bb.i ], [ %2, %.preheader ] ; 3 uses
  %.03853 = phi ptr [ %i.i, %bb.i ], [ %1, %.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.03853, i64 1
  %i.j = load i8, ptr %.03853, align 1            ; 2 uses
  %.not47 = icmp eq i8 %i.j, 0
  br i1 %.not47, label %bb.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @_ZL15asciiFromEbcdic, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %.not48 = icmp eq i8 %i.m, 0
  br i1 %.not48, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = lshr i32 %i.n, 5
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.n, 31
  %i.t = shl nuw i32 1, %i.s
  %i.u = and i32 %i.r, %i.t
  %.not49 = icmp eq i32 %i.u, 0
  br i1 %.not49, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = sub nsw i32 %2, %.054
  tail call void (ptr, ptr, ...) @udata_printError_78(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %2, i32 noundef %i.v) #10
  store i32 10, ptr %4, align 4
  br label %._crit_edge.thread

bb.i:                                             ; preds = %bb.g, %.lr.ph
  %i.w = add nsw i32 %.054, -1
  %i.x = icmp sgt i32 %.054, 1
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.i
  %.not46 = icmp ne ptr %1, %3
  %or.cond51.not = and i1 %i.g, %.not46
  br i1 %or.cond51.not, label %bb.j, label %._crit_edge.thread

bb.j:                                             ; preds = %._crit_edge
  %i.y = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %1, i64 %i.y, i1 false)
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge, %bb.j, %bb.a, %bb.b, %bb.h, %bb.e
  %.039 = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %bb.h ], [ 0, %bb.b ], [ %2, %bb.j ], [ %2, %._crit_edge ], [ 0, %.preheader ]
  ret i32 %.039
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext range(i8 0, 2) i8 @uprv_isEbcdicAtSign_78(i8 noundef signext %0) local_unnamed_addr #5 {
bb.a:
  %.not = icmp eq i8 %0, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = sext i8 %0 to i32
  %memchr = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @_ZZ22uprv_isEbcdicAtSign_78E13ebcdicAtSigns, i32 %i.a, i64 11)
  %i.b = icmp ne ptr %memchr, null
  %i.c = zext i1 %i.b to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i8 [ 0, %bb.a ], [ %i.c, %bb.b ]
  ret i8 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uprv_compareInvAscii_78(ptr noundef readnone captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp slt i32 %2, -1
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp slt i32 %4, -1
  %or.cond5 = or i1 %or.cond3, %i.d
  br i1 %or.cond5, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %i.g = trunc i64 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.038 = phi i32 [ %i.g, %bb.c ], [ %2, %bb.b ]  ; 2 uses
  %i.h = icmp slt i32 %4, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @u_strlen_78(ptr noundef nonnull %3) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.036 = phi i32 [ %i.i, %bb.e ], [ %4, %bb.d ]  ; 2 uses
  %i.j = tail call i32 @llvm.smin.i32(i32 %.038, i32 %.036) ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

bb.g:                                             ; preds = %bb.m
  %i.l = add nsw i32 %.03551, -1
  %i.m = icmp sgt i32 %.03551, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !24

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.03551 = phi i32 [ %i.l, %bb.g ], [ %i.j, %bb.f ] ; 2 uses
  %.03750 = phi ptr [ %i.y, %bb.g ], [ %3, %bb.f ] ; 2 uses
  %.03949 = phi ptr [ %i.n, %bb.g ], [ %1, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.03949, i64 1
  %i.o = load i8, ptr %.03949, align 1            ; 2 uses
  %i.p = icmp sgt i8 %i.o, -1
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.q = zext nneg i8 %i.o to i32                 ; 3 uses
  %i.r = lshr i32 %i.q, 5
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.q, 31
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.u, %i.w
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %.lr.ph
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.034 = phi i32 [ -1, %bb.i ], [ %i.q, %bb.h ]
  %i.y = getelementptr inbounds nuw i8, ptr %.03750, i64 2
  %i.z = load i16, ptr %.03750, align 2           ; 2 uses
  %i.aa = icmp ult i16 %i.z, 128
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = zext nneg i16 %i.z to i32               ; 3 uses
  %i.ac = lshr i32 %i.ab, 5
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.ab, 31
  %i.ah = shl nuw i32 1, %i.ag
  %i.ai = and i32 %i.af, %i.ah
  %.not47 = icmp eq i32 %i.ai, 0
  br i1 %.not47, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.033 = phi i32 [ %i.ab, %bb.k ], [ -2, %bb.l ]
  %i.aj = sub nsw i32 %.034, %.033                ; 2 uses
  %.not48 = icmp eq i32 %i.aj, 0
  br i1 %.not48, label %bb.g, label %.loopexit

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.ak = sub nsw i32 %.038, %.036
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.a, %._crit_edge
  %.0 = phi i32 [ %i.ak, %._crit_edge ], [ 0, %bb.a ], [ %i.aj, %bb.m ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @uprv_compareInvEbcdic_78(ptr noundef readnone captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp slt i32 %2, -1
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp slt i32 %4, -1
  %or.cond5 = or i1 %or.cond3, %i.d
  br i1 %or.cond5, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %2, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %i.g = trunc i64 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.041 = phi i32 [ %i.g, %bb.c ], [ %2, %bb.b ]  ; 2 uses
  %i.h = icmp slt i32 %4, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @u_strlen_78(ptr noundef nonnull %3) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.039 = phi i32 [ %i.i, %bb.e ], [ %4, %bb.d ]  ; 2 uses
  %i.j = tail call i32 @llvm.smin.i32(i32 %.041, i32 %.039) ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %._crit_edge

bb.g:                                             ; preds = %bb.n
  %i.l = add nsw i32 %.03855, -1
  %i.m = icmp sgt i32 %.03855, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !25

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.03855 = phi i32 [ %i.l, %bb.g ], [ %i.j, %bb.f ] ; 2 uses
  %.04054 = phi ptr [ %i.ab, %bb.g ], [ %3, %bb.f ] ; 2 uses
  %.04253 = phi ptr [ %i.n, %bb.g ], [ %1, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.04253, i64 1
  %i.o = load i8, ptr %.04253, align 1            ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.q = zext i8 %i.o to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZL15asciiFromEbcdic, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1               ; 2 uses
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = zext i8 %i.s to i32                      ; 3 uses
  %i.u = lshr i32 %i.t, 5
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.t, 31
  %i.z = shl nuw i32 1, %i.y
  %i.aa = and i32 %i.x, %i.z
  %.not50 = icmp eq i32 %i.aa, 0
  br i1 %.not50, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.j, %bb.i
  %.037 = phi i32 [ -1, %bb.j ], [ %i.t, %bb.i ], [ 0, %.lr.ph ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.04054, i64 2
  %i.ac = load i16, ptr %.04054, align 2          ; 2 uses
  %i.ad = icmp ult i16 %i.ac, 128
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = zext nneg i16 %i.ac to i32              ; 3 uses
  %i.af = lshr i32 %i.ae, 5
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ae, 31
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = and i32 %i.ai, %i.ak
  %.not51 = icmp eq i32 %i.al, 0
  br i1 %.not51, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.036 = phi i32 [ %i.ae, %bb.l ], [ -2, %bb.m ]
  %i.am = sub nsw i32 %.037, %.036                ; 2 uses
  %.not52 = icmp eq i32 %i.am, 0
  br i1 %.not52, label %bb.g, label %.loopexit

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.an = sub nsw i32 %.041, %.039
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.a, %._crit_edge
  %.0 = phi i32 [ %i.an, %._crit_edge ], [ 0, %bb.a ], [ %i.am, %bb.n ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -382, 383) i32 @uprv_compareInvEbcdicAsAscii_78(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1                 ; 3 uses
  %i.b = load i8, ptr %1, align 1                 ; 2 uses
  %.not41 = icmp eq i8 %i.a, %i.b
  br i1 %.not41, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.a
  %.lcssa39 = phi i8 [ %i.a, %bb.a ], [ %i.ah, %bb.j ] ; 3 uses
  %.lcssa = phi i8 [ %i.b, %bb.a ], [ %i.ai, %bb.j ] ; 3 uses
  %.not32 = icmp eq i8 %.lcssa39, 0
  br i1 %.not32, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.c = zext i8 %.lcssa39 to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_ZL15asciiFromEbcdic, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1               ; 2 uses
  %.not33 = icmp eq i8 %i.e, 0
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = zext i8 %i.e to i32                      ; 3 uses
  %i.g = lshr i32 %i.f, 5
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.f, 31
  %i.l = shl nuw i32 1, %i.k
  %i.m = and i32 %i.j, %i.l
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = zext i8 %.lcssa39 to i32
  %i.o = sub nsw i32 0, %i.n
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.024 = phi i32 [ %i.f, %bb.c ], [ %i.o, %bb.d ], [ 0, %._crit_edge ]
  %.not35 = icmp eq i8 %.lcssa, 0
  br i1 %.not35, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = zext i8 %.lcssa to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZL15asciiFromEbcdic, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %.not36 = icmp eq i8 %i.r, 0
  br i1 %.not36, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = zext i8 %i.r to i32                      ; 3 uses
  %i.t = lshr i32 %i.s, 5
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr @_ZL14invariantChars, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.s, 31
  %i.y = shl nuw i32 1, %i.x
  %i.z = and i32 %i.w, %i.y
  %.not37 = icmp eq i32 %i.z, 0
  br i1 %.not37, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = zext i8 %.lcssa to i32
  %i.ab = sub nsw i32 0, %i.aa
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.0 = phi i32 [ %i.s, %bb.g ], [ %i.ab, %bb.h ], [ 0, %bb.e ]
  %i.ac = sub nsw i32 %.024, %.0
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.j
  %i.ad = phi i8 [ %i.ah, %bb.j ], [ %i.a, %bb.a ]
  %.02543 = phi ptr [ %i.ag, %bb.j ], [ %1, %bb.a ]
  %.02642 = phi ptr [ %i.af, %bb.j ], [ %0, %bb.a ]
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %.02642, i64 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.02543, i64 1 ; 2 uses
  %i.ah = load i8, ptr %i.af, align 1             ; 3 uses
  %i.ai = load i8, ptr %i.ag, align 1             ; 2 uses
  %.not = icmp eq i8 %i.ah, %i.ai
  br i1 %.not, label %.lr.ph, label %._crit_edge, !llvm.loop !26

.loopexit:                                        ; preds = %.lr.ph, %bb.i
  %.027 = phi i32 [ %i.ac, %bb.i ], [ 0, %.lr.ph ]
  ret i32 %.027
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i8 @uprv_ebcdicToAscii_78(i8 noundef signext %0) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZL15asciiFromEbcdic, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i8 @uprv_ebcdicToLowercaseAscii_78(i8 noundef signext %0) local_unnamed_addr #5 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @_ZL24lowercaseAsciiFromEbcdic, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @uprv_aestrncpy_78(ptr noundef returned writeonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %i.c = trunc i64 %i.b to i32
  %i.d = add i32 %i.c, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.011 = phi i32 [ %i.d, %bb.b ], [ %2, %bb.a ]  ; 3 uses
  %i.e = load i8, ptr %1, align 1                 ; 2 uses
  %i.f = icmp ne i8 %i.e, 0
  %i.g = icmp sgt i32 %.011, 0
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %.112.lcssa = phi i32 [ %.011, %bb.c ], [ %i.q, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.c ], [ %i.p, %.lr.ph ]
  %i.i = icmp sgt i32 %.112.lcssa, 0
  br i1 %i.i, label %.lr.ph22.preheader, label %._crit_edge

.lr.ph22.preheader:                               ; preds = %.preheader
  %i.j = zext nneg i32 %.112.lcssa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.0.lcssa, i8 0, i64 %i.j, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.k = phi i8 [ %i.r, %.lr.ph ], [ %i.e, %bb.c ]
  %.018 = phi ptr [ %i.p, %.lr.ph ], [ %0, %bb.c ] ; 2 uses
  %.11217 = phi i32 [ %i.q, %.lr.ph ], [ %.011, %bb.c ] ; 2 uses
  %.01316 = phi ptr [ %i.l, %.lr.ph ], [ %1, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %.01316, i64 1 ; 2 uses
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr @_ZL15asciiFromEbcdic, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.018, i64 1 ; 2 uses
  store i8 %i.o, ptr %.018, align 1
  %i.q = add nsw i32 %.11217, -1                  ; 2 uses
  %i.r = load i8, ptr %i.l, align 1               ; 2 uses
  %i.s = icmp ne i8 %i.r, 0
  %i.t = icmp samesign ugt i32 %.11217, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph, label %.preheader, !llvm.loop !27

._crit_edge:                                      ; preds = %.lr.ph22.preheader, %.preheader
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @uprv_eastrncpy_78(ptr noundef returned writeonly captures(ret: address, provenance) %0, ptr noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #11
  %i.c = trunc i64 %i.b to i32
  %i.d = add i32 %i.c, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.014 = phi i32 [ %i.d, %bb.b ], [ %2, %bb.a ]  ; 3 uses
  %i.e = load i8, ptr %1, align 1                 ; 2 uses
  %i.f = icmp ne i8 %i.e, 0
  %i.g = icmp sgt i32 %.014, 0
  %i.h = select i1 %i.f, i1 %i.g, i1 false
  br i1 %i.h, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %.115.lcssa = phi i32 [ %.014, %bb.c ], [ %i.r, %.lr.ph ] ; 2 uses
  %.013.lcssa = phi ptr [ %0, %bb.c ], [ %i.q, %.lr.ph ]
  %i.i = icmp sgt i32 %.115.lcssa, 0
  br i1 %i.i, label %.lr.ph25.preheader, label %._crit_edge

.lr.ph25.preheader:                               ; preds = %.preheader
  %i.j = zext nneg i32 %.115.lcssa to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %.013.lcssa, i8 0, i64 %i.j, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.k = phi i8 [ %i.s, %.lr.ph ], [ %i.e, %bb.c ]
  %.01321 = phi ptr [ %i.q, %.lr.ph ], [ %0, %bb.c ] ; 2 uses
  %.11520 = phi i32 [ %i.r, %.lr.ph ], [ %.014, %bb.c ] ; 2 uses
  %.01619 = phi ptr [ %i.l, %.lr.ph ], [ %1, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %.01619, i64 1 ; 2 uses
  %i.m = zext i8 %i.k to i64
  %i.n = getelementptr inbounds nuw i8, ptr @_ZL15ebcdicFromAscii, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1               ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  %spec.select = select i1 %i.p, i8 111, i8 %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %.01321, i64 1 ; 2 uses
  store i8 %spec.select, ptr %.01321, align 1
  %i.r = add nsw i32 %.11520, -1                  ; 2 uses
  %i.s = load i8, ptr %i.l, align 1               ; 2 uses
  %i.t = icmp ne i8 %i.s, 0
  %i.u = icmp samesign ugt i32 %.11520, 1
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %.lr.ph, label %.preheader, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph25.preheader, %.preheader
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7}
!7 = distinct !{!7, !"LVerDomain"}
!8 = !{!9}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 4, i32 12}
!15 = distinct !{!15, !11, !12, !13}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11}
!28 = distinct !{!28, !11}
end_hunk_0
