inline.NumInlined: 190
inline.NumDeleted: 84
begin_hunk_0_@_ZNK2v88internal11interpreter22JumpTableTargetOffsets5beginEv
define hidden void @_ZNK2v88internal11interpreter22JumpTableTargetOffsets5beginEv(ptr dead_on_unwind noalias writable writeonly sret(%"class.v8::internal::interpreter::JumpTableTargetOffsets::iterator") align 8 captures(none) initializes((0, 28)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8              ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = add i32 %i.f, %i.d                       ; 3 uses
  %i.h = load ptr, ptr %1, align 8                ; 2 uses
  store ptr %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store i32 %i.b, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  store i32 %i.d, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.g, ptr %i.l, align 8
end_hunk_0
begin_hunk_1_@_ZNK2v88internal11interpreter22JumpTableTargetOffsets5beginEv:bb.a
  br i1 %i.m, label %.lr.ph.i.i, label %_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE.exit

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.n = sext i32 %i.d to i64                     ; 3 uses
  %wide.trip.count.i.i = sext i32 %i.g to i64     ; 2 uses
  %.sroa.0.0.copyload.i1.i.i.i = load ptr, ptr %i.h, align 8
  %i.o = load i64, ptr %.sroa.0.0.copyload.i1.i.i.i, align 8
  %i.p = add i64 %i.o, 39
end_hunk_1
begin_hunk_2_@_ZNK2v88internal11interpreter22JumpTableTargetOffsets5beginEv:bb.a
  %i.r = load i64, ptr %i.q, align 8
  %i.s = add i64 %i.r, -1
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %2 = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.n
  %3 = load atomic volatile i64, ptr %2 monotonic, align 8
  %4 = and i64 %3, 1
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.i.i
  %6 = add i32 %i.f, %i.b
  %indvars.iv.next.i.i21 = add nsw i64 %i.n, 1    ; 2 uses
  %exitcond.not.i.i22 = icmp eq i64 %indvars.iv.next.i.i21, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i22, label %_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE.exit.loopexit, label %.lr.ph24, !llvm.loop !11

.lr.ph24:                                         ; preds = %.lr.ph.preheader
  br label %bb.b, !llvm.loop !11

bb.b:                                             ; preds = %.lr.ph24, %.lr.ph
  %indvars.iv.next.i.i23 = phi i64 [ %indvars.iv.next.i.i21, %.lr.ph24 ], [ %indvars.iv.next.i.i, %.lr.ph ] ; 4 uses
  %i.v = phi i32 [ %i.b, %.lr.ph24 ], [ %7, %.lr.ph ]
  %7 = add nsw i32 %i.v, 1                        ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i23
  %i.x = load atomic volatile i64, ptr %i.w monotonic, align 8
  %i.y = and i64 %i.x, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !11

.lr.ph:                                           ; preds = %bb.b
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.next.i.i23, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph._ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE.exit.loopexit_crit_edge, label %bb.b, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %bb.b
  %8 = trunc nsw i64 %indvars.iv.next.i.i23 to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph.i.i
  %.lcssa6 = phi i32 [ %i.b, %.lr.ph.i.i ], [ %7, %._crit_edge.loopexit ]
  %.lcssa3 = phi i32 [ %i.d, %.lr.ph.i.i ], [ %8, %._crit_edge.loopexit ]
  %indvars.iv.i.i.lcssa = phi i64 [ %i.n, %.lr.ph.i.i ], [ %indvars.iv.next.i.i23, %._crit_edge.loopexit ]
  store i32 %.lcssa3, ptr %i.k, align 4
  store i32 %.lcssa6, ptr %i.j, align 8
  %sext.i.i = shl i64 %indvars.iv.i.i.lcssa, 32
  %i.aa = ashr exact i64 %sext.i.i, 29
  %i.ab = getelementptr inbounds i8, ptr %i.u, i64 %i.aa
  %i.ac = load atomic volatile i64, ptr %i.ab monotonic, align 8
  store i64 %i.ac, ptr %i.i, align 8
  br label %_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE.exit

.lr.ph._ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE.exit.loopexit, !llvm.loop !11

_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE.exit.loopexit: ; preds = %.lr.ph._ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE.exit.loopexit_crit_edge, %.lr.ph.preheader
  store i32 %i.g, ptr %i.k, align 4
  store i32 %6, ptr %i.j, align 8
  br label %_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE.exit

_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE.exit: ; preds = %_ZN2v88internal11interpreter22JumpTableTargetOffsets8iteratorC2EiiiPKNS1_21BytecodeArrayIteratorE.exit.loopexit, %bb.a, %._crit_edge
  ret void
}

end_hunk_2
