inline.NumInlined: 287
inline.NumDeleted: 62
begin_hunk_0_@_socket_socket_sendmsg:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %lsr.iv = phi ptr [ %.0102.i, %.lr.ph.preheader ], [ %scevgep, %bb.u ] ; 5 uses
  %i.ap = phi i64 [ %i.bd, %bb.u ], [ 0, %.lr.ph.preheader ]
  %.0104.i73 = phi i64 [ %i.at, %bb.u ], [ 0, %.lr.ph.preheader ] ; 6 uses
  %i.aq = shl i64 %.0104.i73, 3
  %scevgep102 = getelementptr i8, ptr %i.ao, i64 %i.aq
  %i.ar = load ptr, ptr %scevgep102, align 8, !tbaa !24
end_hunk_0
begin_hunk_1_@_socket_socket_sendmsg:bb.a
  br i1 %.not121.i, label %.thread152.i.loopexit, label %bb.v

bb.v:                                             ; preds = %.lr.ph
  %i.at = add nuw i64 %.0104.i73, 1               ; 2 uses
  %i.au = add i64 %.0104.i73, 1
  %scevgep99 = getelementptr i8, ptr %lsr.iv, i64 24
  %i.av = load i64, ptr %scevgep99, align 8, !tbaa !174 ; 3 uses
end_hunk_1
begin_hunk_2_@_socket_socket_sendmsg:bb.a
  br i1 %i.ba, label %._crit_edge98, label %get_CMSG_SPACE.exit.i

split.a:                                          ; preds = %bb.v
  %6 = add i64 %.0104.i73, 1
  br label %bb.x

._crit_edge98:                                    ; preds = %bb.w
  %i.bb = add i64 %.0104.i73, 1
  br label %bb.x

bb.x:                                             ; preds = %split.a, %._crit_edge98
  %.lcssa93 = phi i64 [ %i.bb, %._crit_edge98 ], [ %6, %split.a ]
  %i.bc = load ptr, ptr @PyExc_OSError, align 8, !tbaa !24
  call void @PyErr_SetString(ptr noundef %i.bc, ptr noundef nonnull @.str.644) #11
  br label %.thread152.i
end_hunk_2
begin_hunk_3_@sock_sendmsg_iovec:bb.a
bb.i:                                             ; preds = %.lr.ph, %bb.l
  %lsr.iv24 = phi ptr [ %i.o, %.lr.ph ], [ %scevgep25, %bb.l ] ; 4 uses
  %lsr.iv = phi ptr [ %scevgep, %.lr.ph ], [ %scevgep22, %bb.l ] ; 3 uses
  %.0427 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.l ] ; 3 uses
  %.val50 = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.t = getelementptr i8, ptr %.val50, i64 168
  %.val52 = load i64, ptr %i.t, align 8, !tbaa !45
end_hunk_3
begin_hunk_4_@sock_sendmsg_iovec:bb.a
  br label %Py_XDECREF.exit

.loopexit.loopexitsplit:                          ; preds = %bb.l
  br label %.loopexit.loopexit

..loopexit.loopexit_crit_edge:                    ; preds = %bb.k
  %.0427.lcssa.a = phi i64 [ %.0427, %bb.k ]
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %.loopexit.loopexitsplit, %..loopexit.loopexit_crit_edge
  %.143.ph.ph = phi i64 [ %.0427.lcssa.a, %..loopexit.loopexit_crit_edge ], [ %i.d, %.loopexit.loopexitsplit ]
  %.041.ph.ph = phi i32 [ -1, %..loopexit.loopexit_crit_edge ], [ 0, %.loopexit.loopexitsplit ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.d, %bb.h, %bb.f, %bb.c
end_hunk_4
