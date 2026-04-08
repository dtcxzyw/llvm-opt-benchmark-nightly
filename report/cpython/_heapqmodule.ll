inline.NumInlined: 68
inline.NumDeleted: 21
begin_hunk_0_@_heapq_heapreplace:bb.a
_Py_NewRef.exit.i.i:                              ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.l, %bb.g ], [ %.pre.i.i, %bb.h ]
  store ptr %i.g, ptr %i.q, align 8, !tbaa !10
  %i.r = tail call i32 @siftup(ptr noundef nonnull readonly %i.b, i64 noundef 0) #2, !callees !32, !inline_history !33
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %_heapq_heapreplace_impl.exit, label %bb.i

end_hunk_0
begin_hunk_1_@_heapq_heapreplace_max:bb.a
_Py_NewRef.exit.i.i:                              ; preds = %bb.h, %bb.g
  %i.q = phi ptr [ %i.l, %bb.g ], [ %.pre.i.i, %bb.h ]
  store ptr %i.g, ptr %i.q, align 8, !tbaa !10
  %i.r = tail call i32 @siftup_max(ptr noundef nonnull readonly %i.b, i64 noundef 0) #2, !callees !32, !inline_history !33
  %.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not.i.i, label %_heapq_heapreplace_max_impl.exit, label %bb.i

end_hunk_1
begin_hunk_2_@siftdown:bb.a
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !10
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !10
  %i.ae = icmp sgt i64 %i.h, %1
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !34

.loopexit.sink.split:                             ; preds = %bb.i, %bb.a
  %PyExc_RuntimeError.sink = phi ptr [ @PyExc_IndexError, %bb.a ], [ @PyExc_RuntimeError, %bb.i ]
end_hunk_2
begin_hunk_3_@siftup:bb.a
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !10
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !10
  %i.al = icmp slt i64 %.145, %i.d
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.m, %bb.c
  %.042.lcssa = phi i64 [ %1, %bb.c ], [ %.145, %bb.m ]
end_hunk_3
begin_hunk_4_@heapify_internal:bb.a
  %i.e = lshr i64 %.056.i.i, 1                    ; 2 uses
  %i.f = add nuw nsw i32 %.07.i.i, 1              ; 2 uses
  %i.g = icmp samesign ugt i64 %.056.i.i, 3
  br i1 %i.g, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !37

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.h = zext nneg i32 %i.f to i64
end_hunk_4
begin_hunk_5_@heapify_internal:bb.a

.preheader34.i:                                   ; preds = %._crit_edge.loopexit.i.i, %bb.d
  %.02340.i = phi i64 [ %i.q, %bb.d ], [ %i.l, %._crit_edge.loopexit.i.i ] ; 4 uses
  %i.m = tail call i32 %1(ptr noundef %0, i64 noundef %.02340.i) #2, !callees !32, !inline_history !38
  %.not2937.i = icmp eq i32 %i.m, 0
  br i1 %.not2937.i, label %.lr.ph.i, label %cache_friendly_heapify.exit

end_hunk_5
begin_hunk_6_@heapify_internal:bb.a

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = ashr i64 %.02438.i, 1                    ; 2 uses
  %i.o = tail call i32 %1(ptr noundef %0, i64 noundef %i.n) #2, !callees !32, !inline_history !38
  %.not29.i = icmp eq i32 %i.o, 0
  br i1 %.not29.i, label %.lr.ph.i, label %cache_friendly_heapify.exit

end_hunk_6
begin_hunk_7_@heapify_internal:bb.a
bb.d:                                             ; preds = %.lr.ph.i
  %i.q = add nsw i64 %.02340.i, -1
  %.not.not.i = icmp sgt i64 %.02340.i, %i.k
  br i1 %.not.not.i, label %.preheader34.i, label %.preheader32.i, !llvm.loop !39

.loopexit31.i:                                    ; preds = %.lr.ph43.i
  %.1.i = add i64 %.146.i, -1                     ; 2 uses
  %.not26.i = icmp slt i64 %.1.i, %i.j
  br i1 %.not26.i, label %cache_friendly_heapify.exit, label %.preheader.i, !llvm.loop !40

.preheader.i:                                     ; preds = %.loopexit31.i, %.preheader.preheader.i
  %.146.i = phi i64 [ %.1.i, %.loopexit31.i ], [ %.144.i, %.preheader.preheader.i ] ; 3 uses
  %i.r = tail call i32 %1(ptr noundef %0, i64 noundef %.146.i) #2, !callees !32, !inline_history !38
  %.not2741.i = icmp eq i32 %i.r, 0
  br i1 %.not2741.i, label %.lr.ph43.i, label %cache_friendly_heapify.exit

bb.e:                                             ; preds = %.lr.ph43.i
  %i.s = ashr i64 %.12542.i, 1                    ; 2 uses
  %i.t = tail call i32 %1(ptr noundef %0, i64 noundef %i.s) #2, !callees !32, !inline_history !38
  %.not27.i = icmp eq i32 %i.t, 0
  br i1 %.not27.i, label %.lr.ph43.i, label %cache_friendly_heapify.exit

end_hunk_7
begin_hunk_8_@heapify_internal:bb.a

bb.g:                                             ; preds = %.lr.ph
  %i.x = icmp sgt i64 %.010.in40, 1
  br i1 %i.x, label %.lr.ph, label %cache_friendly_heapify.exit, !llvm.loop !41

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.010.in40 = phi i64 [ %.010, %bb.g ], [ %i.v, %bb.f ] ; 2 uses
  %.010 = add nsw i64 %.010.in40, -1              ; 2 uses
  %i.y = tail call i32 %1(ptr noundef %0, i64 noundef %.010) #2, !callees !32
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.g, label %.cache_friendly_heapify.exit.loopexit37_crit_edge, !llvm.loop !41

.cache_friendly_heapify.exit.loopexit37_crit_edge: ; preds = %.lr.ph
  br label %cache_friendly_heapify.exit, !llvm.loop !41

cache_friendly_heapify.exit:                      ; preds = %bb.g, %.preheader34.i, %bb.c, %.preheader.i, %.loopexit31.i, %bb.e, %bb.f, %.cache_friendly_heapify.exit.loopexit37_crit_edge, %.preheader32.i
  %.0 = phi ptr [ null, %.preheader.i ], [ @_Py_NoneStruct, %bb.f ], [ @_Py_NoneStruct, %.preheader32.i ], [ null, %bb.c ], [ null, %bb.e ], [ null, %.preheader34.i ], [ null, %.cache_friendly_heapify.exit.loopexit37_crit_edge ], [ @_Py_NoneStruct, %.loopexit31.i ], [ @_Py_NoneStruct, %bb.g ]
end_hunk_8
begin_hunk_9_@siftdown_max:bb.a
  store ptr %i.ad, ptr %i.aa, align 8, !tbaa !10
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !10
  %i.ae = icmp sgt i64 %i.h, %1
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !42

.loopexit.sink.split:                             ; preds = %bb.i, %bb.a
  %PyExc_RuntimeError.sink = phi ptr [ @PyExc_IndexError, %bb.a ], [ @PyExc_RuntimeError, %bb.i ]
end_hunk_9
begin_hunk_10_@siftup_max:bb.a
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !10
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !10
  %i.al = icmp slt i64 %.145, %i.d
  br i1 %i.al, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.m, %bb.c
  %.042.lcssa = phi i64 [ %1, %bb.c ], [ %.145, %bb.m ]
end_hunk_10
begin_hunk_11_@PyUnicode_FromString
!30 = !{!"any p2 pointer", !12, i64 0}
!31 = !{!28, !29, i64 24}
!32 = !{ptr @siftup, ptr @siftup_max}
!33 = distinct !{null}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.mustprogress"}
!36 = distinct !{!36, !35}
!37 = distinct !{!37, !35}
!38 = distinct !{null}
!39 = distinct !{!39, !35}
!40 = distinct !{!40, !35}
!41 = distinct !{!41, !35}
!42 = distinct !{!42, !35}
!43 = distinct !{!43, !35}
end_hunk_11
