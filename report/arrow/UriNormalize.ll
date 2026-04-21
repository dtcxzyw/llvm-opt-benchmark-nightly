inline.NumInlined: 48
inline.NumDeleted: 12
begin_hunk_0_@uriFixPercentEncodingInplaceA:bb.a

.preheader.i:                                     ; preds = %bb.h, %bb.c
  %.039.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.aw, %bb.h ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.c ], [ %.2.i, %bb.h ] ; 6 uses
  %.0.lcssa.i18 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.i = icmp slt i32 %.039.lcssa.i, %i.g
  br i1 %i.i, label %.lr.ph49.preheader.i, label %uriFixPercentEncodingEngineA.exit

.lr.ph49.preheader.i:                             ; preds = %.preheader.i
  %i.j = sext i32 %.039.lcssa.i to i64            ; 6 uses
  %sext.i = shl i64 %i.f, 32
  %i.k = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.l = sub nsw i64 %i.k, %i.j                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.l, 32
  br i1 %min.iters.check, label %.lr.ph49.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph49.preheader.i
  %i.m = add i64 %i.e, %i.j
  %i.n = sub i64 %.0.lcssa.i18, %i.m
  %diff.check = icmp ult i64 %i.n, 32
  br i1 %diff.check, label %.lr.ph49.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -32                      ; 4 uses
  %i.o = add nsw i64 %n.vec, %i.j
  %i.p = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.j
end_hunk_0
begin_hunk_1_@uriFixPercentEncodingInplaceA:bb.a
  store <16 x i8> %wide.load19, ptr %i.r, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block.a, label %vector.body, !llvm.loop !118

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n.a, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph49.preheader.i, %middle.block.a
  %indvars.iv.i.ph = phi i64 [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph49.preheader.i ], [ %i.o, %middle.block.a ] ; 4 uses
  %.348.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph49.preheader.i ], [ %i.p, %middle.block.a ] ; 2 uses
  %i.t = sub i64 %i.f, %indvars.iv.i.ph
  %xtraiter = and i64 %i.t, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_1
begin_hunk_2_@uriFixPercentEncodingInplaceA:bb.a
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol, !llvm.loop !119

.lr.ph49.i.prol.loopexit:                         ; preds = %.lr.ph49.i.prol, %.lr.ph49.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph49.i.preheader ], [ %i.w, %.lr.ph49.i.prol ]
end_hunk_2
begin_hunk_3_@uriFixPercentEncodingInplaceA:bb.a
  %i.aw = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.ax = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.g
  br i1 %i.ay, label %.lr.ph.i, label %.preheader.i, !llvm.loop !121

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph49.i ], [ %indvars.iv.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
end_hunk_3
begin_hunk_4_@uriFixPercentEncodingInplaceA:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %.348.i, i64 8 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.i.7, %i.k
  br i1 %exitcond.not.7, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i, !llvm.loop !122

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %middle.block.a, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.p, %middle.block.a ], [ %.lcssa.unr, %.lr.ph49.i.prol.loopexit ], [ %i.cd, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !24
  br label %bb.i

end_hunk_4
begin_hunk_5_@uriFixPercentEncodingMallocA:bb.a
  br i1 %i.n, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !24     ; 13 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !24
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
end_hunk_5
begin_hunk_6_@uriFixPercentEncodingMallocA:bb.a

.preheader.i:                                     ; preds = %bb.k, %bb.f
  %.039.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bj, %bb.k ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.2.i, %bb.k ] ; 6 uses
  %.0.lcssa.i36 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.v = icmp slt i32 %.039.lcssa.i, %i.t
  br i1 %i.v, label %.lr.ph49.preheader.i, label %uriFixPercentEncodingEngineA.exit

.lr.ph49.preheader.i:                             ; preds = %.preheader.i
  %i.w = sext i32 %.039.lcssa.i to i64            ; 6 uses
  %sext.i = shl i64 %i.s, 32
  %i.x = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.y = sub nsw i64 %i.x, %i.w                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.y, 32
  br i1 %min.iters.check, label %.lr.ph49.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph49.preheader.i
  %i.z = add i64 %i.r, %i.w
  %i.aa = sub i64 %.0.lcssa.i36, %i.z
  %diff.check = icmp ult i64 %i.aa, 32
  br i1 %diff.check, label %.lr.ph49.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.y, -32                      ; 4 uses
  %i.ab = add nsw i64 %n.vec, %i.w
  %i.ac = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.o, i64 %i.w
end_hunk_6
begin_hunk_7_@uriFixPercentEncodingMallocA:bb.a
  store <16 x i8> %wide.load37, ptr %i.ae, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block.a, label %vector.body, !llvm.loop !123

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n.a, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph49.preheader.i, %middle.block.a
  %indvars.iv.i.ph = phi i64 [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph49.preheader.i ], [ %i.ab, %middle.block.a ] ; 4 uses
  %.348.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph49.preheader.i ], [ %i.ac, %middle.block.a ] ; 2 uses
  %i.ag = sub i64 %i.s, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ag, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_7
begin_hunk_8_@uriFixPercentEncodingMallocA:bb.a
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol, !llvm.loop !124

.lr.ph49.i.prol.loopexit:                         ; preds = %.lr.ph49.i.prol, %.lr.ph49.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph49.i.preheader ], [ %i.aj, %.lr.ph49.i.prol ]
end_hunk_8
begin_hunk_9_@uriFixPercentEncodingMallocA:bb.a
  %i.bj = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.bk = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.bl = icmp slt i32 %i.bk, %i.t
  br i1 %i.bl, label %.lr.ph.i, label %.preheader.i, !llvm.loop !121

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph49.i ], [ %indvars.iv.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
end_hunk_9
begin_hunk_10_@uriFixPercentEncodingMallocA:bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %.348.i, i64 8 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.i.7, %i.x
  br i1 %exitcond.not.7, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i, !llvm.loop !125

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %middle.block.a, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.ac, %middle.block.a ], [ %.lcssa.unr, %.lr.ph49.i.prol.loopexit ], [ %i.cq, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !24
  store ptr %i.m, ptr %0, align 8, !tbaa !24
  br label %bb.l
end_hunk_10
begin_hunk_11_@uriPreventLeakageW:bb.a
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void %i.ak(ptr noundef %2, ptr noundef nonnull %.067) #8
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %._crit_edge, label %bb.n, !llvm.loop !126

._crit_edge:                                      ; preds = %bb.p, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
end_hunk_11
begin_hunk_12_@uriFixPercentEncodingInplaceW:bb.a
  store <4 x i32> %wide.load24, ptr %i.t, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
end_hunk_12
begin_hunk_13_@uriFixPercentEncodingInplaceW:bb.a
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !128

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph50.i.preheader ], [ %i.y, %.lr.ph50.i.prol ]
end_hunk_13
begin_hunk_14_@uriFixPercentEncodingInplaceW:bb.a
  %i.aw = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.ax = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.ay = icmp slt i32 %i.ax, %i.h
  br i1 %i.ay, label %.lr.ph.i, label %.preheader.i, !llvm.loop !129

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph50.i ], [ %indvars.iv.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
end_hunk_14
begin_hunk_15_@uriFixPercentEncodingInplaceW:bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %.349.i, i64 32 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i, !llvm.loop !130

uriFixPercentEncodingEngineW.exit:                ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph50.i.prol.loopexit ], [ %i.cd, %.lr.ph50.i ]
end_hunk_15
begin_hunk_16_@uriFixPercentEncodingMallocW:bb.a
  store <4 x i32> %wide.load42, ptr %i.ah, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
end_hunk_16
begin_hunk_17_@uriFixPercentEncodingMallocW:bb.a
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !132

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph50.i.preheader ], [ %i.am, %.lr.ph50.i.prol ]
end_hunk_17
begin_hunk_18_@uriFixPercentEncodingMallocW:bb.a
  %i.bk = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.bl = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.bm = icmp slt i32 %i.bl, %i.v
  br i1 %i.bm, label %.lr.ph.i, label %.preheader.i, !llvm.loop !129

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph50.i ], [ %indvars.iv.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
end_hunk_18
begin_hunk_19_@uriFixPercentEncodingMallocW:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %.349.i, i64 32 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i, !llvm.loop !133

uriFixPercentEncodingEngineW.exit:                ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.af, %middle.block ], [ %.lcssa.unr, %.lr.ph50.i.prol.loopexit ], [ %i.cr, %.lr.ph50.i ]
end_hunk_19
begin_hunk_20_@llvm.umax.i64
!116 = distinct !{!116, !19}
!117 = distinct !{!117, !19}
!118 = distinct !{!118, !19, !26, !27}
!119 = distinct !{!119, !120}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = distinct !{!121, !19}
!122 = distinct !{!122, !19, !26}
!123 = distinct !{!123, !19, !26, !27}
!124 = distinct !{!124, !120}
!125 = distinct !{!125, !19, !26}
!126 = distinct !{!126, !19}
!127 = distinct !{!127, !19, !26, !27}
!128 = distinct !{!128, !120}
!129 = distinct !{!129, !19}
!130 = distinct !{!130, !19, !26}
!131 = distinct !{!131, !19, !26, !27}
!132 = distinct !{!132, !120}
!133 = distinct !{!133, !19, !26}
end_hunk_20
