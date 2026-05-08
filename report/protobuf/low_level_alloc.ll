inline.NumInlined: 86
inline.NumDeleted: 39
begin_hunk_0_@_ZN4absl12lts_2025051213base_internalL16DoAllocWithArenaEmPNS1_13LowLevelAlloc5ArenaE:bb.a
_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i.loopexit: ; preds = %.lr.ph.i.i
  %i.am = add nuw nsw i32 %.067.i.i, 2
  %i.an = zext nneg i32 %i.am to i64
  %4 = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.an)
  %5 = trunc nuw nsw i64 %4 to i32
  %6 = call range(i32 1, 30) i32 @llvm.umin.i32(i32 %5, i32 29)
  br label %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i

_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i: ; preds = %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i.loopexit, %bb.e
  %.06.lcssa.i.i = phi i32 [ 1, %bb.e ], [ %6, %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i.loopexit ] ; 3 uses
  br i1 %i.ag, label %bb.f, label %bb.g, !prof !27

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051213base_internalL16DoAllocWithArenaEmPNS1_13LowLevelAlloc5ArenaE:bb.a
  unreachable

bb.g:                                             ; preds = %_ZN4absl12lts_2025051213base_internalL7IntLog2Emm.exit.i
  %i.ao = load i32, ptr %i.ad, align 8, !tbaa !26 ; 3 uses
  %.not78 = icmp sgt i32 %.06.lcssa.i.i, %i.ao
  br i1 %.not78, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.ap = zext nneg i32 %.06.lcssa.i.i to i64
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.o
  %.073 = phi ptr [ %i.au, %bb.o ], [ %i.ac, %.preheader ] ; 6 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.073, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !46
  %.not.i93.not = icmp sgt i32 %.06.lcssa.i.i, %i.ar
  br i1 %.not.i93.not, label %.invoke207, label %bb.i, !prof !27

bb.i:                                             ; preds = %bb.h
end_hunk_1
