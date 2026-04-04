begin_hunk_0
  %i.a = add nsw i32 %1, 1                        ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = alloca i8, i64 %i.c, align 16            ; 5 uses
  %.not101 = icmp slt i32 %1, 0
  br i1 %.not101, label %.loopexit, label %.lr.ph.preheader

end_hunk_0
begin_hunk_1
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader97
  %i.l = zext nneg i32 %1 to i64                  ; 3 uses
  %3 = shl nuw nsw i64 %i.l, 3
  %scevgep = getelementptr i8, ptr %i.d, i64 %3
  %i.m = shl nuw nsw i64 %i.l, 3
  %scevgep143 = getelementptr i8, ptr %i.d, i64 %i.m
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader148, %.lr.ph
end_hunk_1
begin_hunk_2
  %i.s = uitofp nneg i32 %i.r to double           ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv121 to i32
  %i.u = uitofp nneg i32 %i.t to double
  %.pre = load double, ptr %scevgep, align 8
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.preheader, %bb.h
end_hunk_2
begin_hunk_3
  %i.v = sext i32 %3 to i64                       ; 3 uses
  %i.w = icmp slt i32 %3, 1
  %sext92 = shl i64 %i.j, 32                      ; 2 uses
  %i.x = ashr exact i64 %sext92, 32               ; 6 uses
  %i.y = icmp sgt i64 %i.x, 1
  %i.z = sext i32 %i.g to i64                     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
end_hunk_3
begin_hunk_4
  br i1 %i.u, label %.preheader5.us.preheader, label %._crit_edge30

.preheader5.us.preheader:                         ; preds = %.preheader5.lr.ph
  %5 = add nsw i64 %i.x, -1
  %i.am = add nsw i64 %i.x, -1                    ; 3 uses
  %xtraiter = and i64 %i.am, 1
  %i.an = icmp eq i64 %sext92, 8589934592
  %unroll_iter = and i64 %i.am, -2
end_hunk_4
begin_hunk_5
  %i.ez = add nsw i64 %.026.us, 1
  %i.fa = xor i64 %.026.us, -1
  %i.fb = add i64 %i.fa, %i.t
  %umin = tail call i64 @llvm.umin.i64(i64 %i.fb, i64 %5)
  %i.fc = add i64 %i.ez, %umin
  br label %.loopexit.us

end_hunk_5
begin_hunk_6

._crit_edge464:                                   ; preds = %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge, %._crit_edge464.loopexit
  %.pre-phi552 = phi i64 [ %.pre551, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %i.db, %._crit_edge464.loopexit ] ; 13 uses
  %.pre-phi546 = phi i64 [ %.pre545, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %i.cy, %._crit_edge464.loopexit ] ; 6 uses
  %.pre-phi544 = phi i32 [ %.pre543, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %i.cx, %._crit_edge464.loopexit ] ; 2 uses
  %i.ke = phi ptr [ %i.bu, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %.pre534, %._crit_edge464.loopexit ] ; 3 uses
  %i.kf = phi i64 [ %i.bs, %_vorbis_block_alloc.exit373.._crit_edge464_crit_edge ], [ %.pre533, %._crit_edge464.loopexit ] ; 2 uses
end_hunk_6
begin_hunk_7
  %i.abd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.abf = select i1 %.not.i420.not, i64 7, i64 0
  %1 = and i64 %.pre-phi546, 4611686018427387900
  %diff.check743 = icmp eq i64 %1, 0
  %2 = and i64 %.pre-phi546, 4611686018427387900
  %diff.check728 = icmp eq i64 %2, 0
  br label %bb.az

bb.az:                                            ; preds = %.loopexit, %oggpack_writealign.exit
end_hunk_7
