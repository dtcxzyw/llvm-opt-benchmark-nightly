begin_hunk_0
; Function Attrs: mustprogress uwtable
define dso_local void @_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_(ptr noundef %0, ptr noundef writeonly captures(none) %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3, ptr noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca double, align 8                   ; 8 uses
end_hunk_0
begin_hunk_1_@_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.m = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) ; 0 uses
  %i.n = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.j, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.b) ; 0 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !4    ; 12 uses
  %i.p = sext i32 %i.o to i64                     ; 2 uses
  %i.q = icmp slt i32 %i.o, 0                     ; 2 uses
  %i.r = shl nsw i64 %i.p, 2
end_hunk_1
begin_hunk_2_@_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_:bb.a
  store ptr %i.aa, ptr %3, align 8, !tbaa !8
  %i.ab = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #9
  store ptr %i.ab, ptr %4, align 8, !tbaa !8
  %i.ac = icmp sgt i32 %i.o, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.e
end_hunk_2
begin_hunk_3_@_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_:bb.a
  %.1158 = phi i32 [ %i.af, %bb.d ], [ %.0157166, %.lr.ph ] ; 2 uses
  %.1154 = phi i32 [ %i.ai, %bb.d ], [ %.0153167, %.lr.ph ]
  %i.aj = add nuw nsw i32 %.0168, 1               ; 2 uses
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  %i.al = icmp slt i32 %i.aj, %i.ak
  br i1 %i.al, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %bb.e
  %5 = icmp sgt i32 %i.ak, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %6 = phi i1 [ false, %bb.c ], [ %5, %._crit_edge.loopexit ]
  %.0157.lcssa = phi i32 [ 0, %bb.c ], [ %.1158, %._crit_edge.loopexit ] ; 3 uses
  %i.am = sext i32 %.0157.lcssa to i64            ; 2 uses
  %i.an = icmp slt i32 %.0157.lcssa, 0            ; 2 uses
  %i.ao = shl nsw i64 %i.am, 3
end_hunk_3
begin_hunk_4_@_Z12read_HPC_rowPcPP24HPC_Sparse_Matrix_STRUCTPPdS4_S4_:bb.a
  br i1 %epil.iter.cmp.not, label %.preheader165, label %.lr.ph171.epil, !llvm.loop !15

.preheader165:                                    ; preds = %.preheader165.loopexit.unr-lcssa, %.lr.ph171.epil, %._crit_edge
  br i1 %6, label %.lr.ph179, label %._crit_edge180.thread

._crit_edge180.thread:                            ; preds = %.preheader165
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
end_hunk_4
