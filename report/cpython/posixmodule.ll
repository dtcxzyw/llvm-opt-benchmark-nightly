inline.NumInlined: 798
inline.NumDeleted: 249
begin_hunk_0_@os_getgrouplist:bb.a
  br label %thread-pre-split.i

bb.o:                                             ; preds = %bb.k
  %.lcssa38 = phi ptr [ %i.v, %bb.k ]
  %.lcssa36 = phi ptr [ %i.v, %bb.k ]             ; 3 uses
  %i.af = load i32, ptr %i.a, align 4, !tbaa !7
  %i.ag = sext i32 %i.af to i64
end_hunk_0
begin_hunk_1_@os_getgrouplist:bb.a
bb.q:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 3 uses
  %i.am = shl nuw nsw i64 %indvars.iv.i, 2
  %scevgep38 = getelementptr i8, ptr %.lcssa38, i64 %i.am
  %i.an = load i32, ptr %scevgep38, align 4, !tbaa !7 ; 2 uses
  %i.ao = icmp eq i32 %i.an, -1
  br i1 %i.ao, label %bb.r, label %bb.s
end_hunk_1
begin_hunk_2_@parse_arglist:bb.a
  br label %bb.n

select.unfoldsplit:                               ; preds = %bb.c
  %.lcssa69.ph = phi i64 [ %i.l, %bb.c ]
  %.02438.lcssa72 = phi i32 [ %.02438, %bb.c ]
  br label %select.unfold

Py_DECREF.exit.select.unfold_crit_edge:           ; preds = %Py_DECREF.exit
  %.02438.lcssa74 = phi i32 [ %.02438, %Py_DECREF.exit ]
  %split = phi i64 [ %i.l, %Py_DECREF.exit ]
  %.02438.lcssa73 = phi i32 [ %.02438, %Py_DECREF.exit ] ; 0 uses
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfoldsplit, %Py_DECREF.exit.select.unfold_crit_edge
  %.lcssa69 = phi i64 [ %split, %Py_DECREF.exit.select.unfold_crit_edge ], [ %.lcssa69.ph, %select.unfoldsplit ] ; 2 uses
  %.02438.lcssa = phi i32 [ %.02438.lcssa74, %Py_DECREF.exit.select.unfold_crit_edge ], [ %.02438.lcssa72, %select.unfoldsplit ]
  store i64 %.lcssa69, ptr %1, align 8, !tbaa !157
  %i.an = icmp sgt i32 %.02438.lcssa, 0
  br i1 %i.an, label %.lr.ph.i.preheader, label %free_string_array.exit

.lr.ph.i.preheader:                               ; preds = %select.unfold
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
end_hunk_2
begin_hunk_3_@parse_arglist:bb.a
  %i.ap = load ptr, ptr %scevgep, align 8, !tbaa !126
  call void @PyMem_Free(ptr noundef %i.ap) #19
  %i.aq = add nuw i64 %.05.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %.lcssa69, %i.aq
  br i1 %exitcond.not.i, label %free_string_array.exit.loopexit, label %.lr.ph.i, !llvm.loop !174

free_string_array.exit.loopexit:                  ; preds = %.lr.ph.i
end_hunk_3
begin_hunk_4_@parse_envlist:bb.a
  br label %Py_XDECREF.exit123

.lr.ph:                                           ; preds = %.lr.ph.preheader, %Py_DECREF.exit106
  %.052179 = phi i64 [ %i.al, %Py_DECREF.exit106 ], [ 0, %.lr.ph.preheader ] ; 14 uses
  %i.v = call ptr @PyList_GetItemRef(ptr noundef nonnull %i.l, i64 noundef %.052179) #19 ; 13 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %Py_XDECREF.exit123.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.x = call ptr @PyList_GetItemRef(ptr noundef nonnull %i.m, i64 noundef %.052179) #19 ; 13 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Py_DECREF.exit106.thread.loopexitsplit, label %bb.j

end_hunk_4
begin_hunk_5_@parse_envlist:bb.a
  br i1 %.not87, label %bb.o, label %._crit_edge336

split.a:                                          ; preds = %bb.l
  %.lcssa326.ph = phi ptr [ %i.x, %bb.l ]
  %.052179.lcssa340 = phi i64 [ %.052179, %bb.l ]
  %.lcssa316.ph = phi ptr [ %i.v, %bb.l ]
  br label %bb.n

._crit_edge336:                                   ; preds = %bb.m
  %.052179.lcssa343 = phi i64 [ %.052179, %bb.m ]
  %split = phi ptr [ %i.x, %bb.m ]
  %.052179.lcssa341 = phi i64 [ %.052179, %bb.m ] ; 0 uses
  %split338 = phi ptr [ %i.v, %bb.m ]
  br label %bb.n

bb.n:                                             ; preds = %split.a, %._crit_edge336
  %.lcssa326 = phi ptr [ %split, %._crit_edge336 ], [ %.lcssa326.ph, %split.a ]
  %.052179.lcssa321 = phi i64 [ %.052179.lcssa343, %._crit_edge336 ], [ %.052179.lcssa340, %split.a ]
  %.lcssa316 = phi ptr [ %split338, %._crit_edge336 ], [ %.lcssa316.ph, %split.a ]
  %i.ag = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !108
  call void @PyErr_SetString(ptr noundef %i.ag, ptr noundef nonnull @.str.261) #19
  br label %Py_DECREF.exit106.thread
end_hunk_5
begin_hunk_6_@parse_envlist:bb.a
  br label %bb.bg

Py_DECREF.exit106.thread.loopexitsplit:           ; preds = %bb.o, %bb.i, %bb.k
  %.lcssa325.ph = phi ptr [ %i.x, %bb.o ], [ %i.x, %bb.i ], [ %i.x, %bb.k ]
  %.052179.lcssa338 = phi i64 [ %.052179, %bb.o ], [ %.052179, %bb.i ], [ %.052179, %bb.k ]
  %.lcssa315.ph = phi ptr [ %i.v, %bb.o ], [ %i.v, %bb.i ], [ %i.v, %bb.k ]
  br label %Py_DECREF.exit106.thread.loopexit

.Py_DECREF.exit106.thread.loopexit_crit_edge:     ; preds = %bb.j
  %.052179.lcssa352 = phi i64 [ %.052179, %bb.j ]
  %split347 = phi ptr [ %i.x, %bb.j ]
  %.052179.lcssa339 = phi i64 [ %.052179, %bb.j ] ; 0 uses
  %split349 = phi ptr [ %i.v, %bb.j ]
  br label %Py_DECREF.exit106.thread.loopexit

Py_DECREF.exit106.thread.loopexit:                ; preds = %Py_DECREF.exit106.thread.loopexitsplit, %.Py_DECREF.exit106.thread.loopexit_crit_edge
  %.lcssa325 = phi ptr [ %split347, %.Py_DECREF.exit106.thread.loopexit_crit_edge ], [ %.lcssa325.ph, %Py_DECREF.exit106.thread.loopexitsplit ]
  %.052179.lcssa320 = phi i64 [ %.052179.lcssa352, %.Py_DECREF.exit106.thread.loopexit_crit_edge ], [ %.052179.lcssa338, %Py_DECREF.exit106.thread.loopexitsplit ]
  %.lcssa315 = phi ptr [ %split349, %.Py_DECREF.exit106.thread.loopexit_crit_edge ], [ %.lcssa315.ph, %Py_DECREF.exit106.thread.loopexitsplit ]
  br label %Py_DECREF.exit106.thread

Py_DECREF.exit106.thread:                         ; preds = %Py_DECREF.exit106.thread.loopexit, %bb.w, %.loopexit, %bb.x, %bb.n
end_hunk_6
