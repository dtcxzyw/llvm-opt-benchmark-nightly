inline.NumInlined: 1999
inline.NumDeleted: 790
begin_hunk_0_@_ZN6hermes17RegisterAllocator9lowerPhisEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a
  br i1 %.not24.i, label %_ZL12phiReadWritePN6hermes7PhiInstE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %bb.h
  %.028.i = phi i1 [ %11, %bb.h ], [ false, %bb.e ]
  %.01727.i = phi ptr [ %i.bl, %bb.h ], [ %i.as, %bb.e ] ; 2 uses
  %.01826.i = phi i1 [ %i.bk, %bb.h ], [ false, %bb.e ] ; 2 uses
  %.01925.i = phi i1 [ %i.bc, %bb.h ], [ false, %bb.e ]
end_hunk_0
begin_hunk_1_@_ZN6hermes17RegisterAllocator9lowerPhisEN4llvh8ArrayRefIPNS_10BasicBlockEEE:bb.a

bb.g:                                             ; preds = %bb.f
  %i.bj = icmp ne ptr %i.an, %i.ax
  %7 = zext i1 %i.bj to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %.lr.ph._crit_edge.i
  %i.bk = phi i1 [ true, %bb.f ], [ %i.bh, %.lr.ph._crit_edge.i ], [ %.01826.i, %bb.g ] ; 2 uses
  %8 = phi i32 [ 0, %bb.f ], [ 0, %.lr.ph._crit_edge.i ], [ %7, %bb.g ]
  %9 = zext i1 %.028.i to i32
  %10 = or i32 %8, %9
  %11 = icmp ne i32 %10, 0                        ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01727.i, i64 8 ; 2 uses
  %.not.i77 = icmp eq ptr %i.bl, %i.aw
  br i1 %.not.i77, label %_ZL12phiReadWritePN6hermes7PhiInstE.exit, label %.lr.ph.i

_ZL12phiReadWritePN6hermes7PhiInstE.exit:         ; preds = %bb.h
  %i.bm = select i1 %i.bc, i1 true, i1 %11
  %i.bn = select i1 %i.bm, i1 true, i1 %i.bk
  br i1 %i.bn, label %bb.i, label %_ZL12phiReadWritePN6hermes7PhiInstE.exit.thread

end_hunk_1
