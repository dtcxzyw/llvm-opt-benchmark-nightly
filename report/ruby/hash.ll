inline.NumInlined: 822
inline.NumDeleted: 151
begin_hunk_0_@rb_hash_shift:bb.a

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %lsr.iv = phi ptr [ %scevgep, %bb.f ], [ %i.x, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 4 uses
  %i.y = getelementptr i8, ptr %i.w, i64 %indvars.iv.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %i.aa = icmp eq i8 %i.z, -1
end_hunk_0
begin_hunk_1_@rb_hash_shift:bb.a
  br label %ar_cleared_entry.exit.thread.i

ar_cleared_entry.exit.i.ar_cleared_entry.exit.thread.i_crit_edge: ; preds = %ar_cleared_entry.exit.i
  %indvars.iv.i.lcssa45.a = phi i64 [ %indvars.iv.i, %ar_cleared_entry.exit.i ]
  br label %ar_cleared_entry.exit.thread.i

ar_cleared_entry.exit.thread.i:                   ; preds = %ar_cleared_entry.exit.thread.isplit, %ar_cleared_entry.exit.i.ar_cleared_entry.exit.thread.i_crit_edge
  %indvars.iv.i.lcssa = phi i64 [ %indvars.iv.i.lcssa45.a, %ar_cleared_entry.exit.i.ar_cleared_entry.exit.thread.i_crit_edge ], [ %indvars.iv.i.lcssa44, %ar_cleared_entry.exit.thread.isplit ] ; 2 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 %indvars.iv.i.lcssa
  %i.ad = getelementptr [16 x i8], ptr %i.x, i64 %indvars.iv.i.lcssa ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
end_hunk_1
begin_hunk_2_@ar_compact_table:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %lsr.iv = phi i64 [ %i.w, %.lr.ph.preheader ], [ %lsr.iv.next, %bb.d ] ; 2 uses
  %indvars.iv58 = phi i64 [ %umax, %.lr.ph.preheader ], [ %indvars.iv.next59, %bb.d ] ; 4 uses
  %i.x = getelementptr i8, ptr %i.j, i64 %indvars.iv58
  %i.y = load i8, ptr %i.x, align 1, !tbaa !24
  %i.z = icmp eq i8 %i.y, -1
end_hunk_2
begin_hunk_3_@ar_compact_table:bb.a
  br label %ar_cleared_entry.exit39.thread

.lr.ph.ar_cleared_entry.exit39.thread_crit_edge:  ; preds = %.lr.ph
  %indvars.iv58.lcssa79 = phi i64 [ %indvars.iv58, %.lr.ph ]
  br label %ar_cleared_entry.exit39.thread

ar_cleared_entry.exit39.thread:                   ; preds = %ar_cleared_entry.exit39.threadsplit, %.lr.ph.ar_cleared_entry.exit39.thread_crit_edge
  %indvars.iv58.lcssa = phi i64 [ %indvars.iv58.lcssa79, %.lr.ph.ar_cleared_entry.exit39.thread_crit_edge ], [ %indvars.iv58.lcssa80, %ar_cleared_entry.exit39.threadsplit ] ; 3 uses
  %i.ab = getelementptr i8, ptr %i.j, i64 %indvars.iv58.lcssa ; 2 uses
  %i.ac = trunc nuw i64 %indvars.iv58.lcssa to i32
  %i.ad = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv58.lcssa ; 2 uses
end_hunk_3
begin_hunk_4_@ar_insert:bb.a

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.preheader.i
  %lsr.iv14 = phi ptr [ %scevgep15, %bb.h ], [ %scevgep13, %.lr.ph.preheader.i ] ; 2 uses
  %indvars.iv58.i = phi i64 [ %umax.i, %.lr.ph.preheader.i ], [ %indvars.iv.next59.i, %bb.h ] ; 4 uses
  %i.ak = getelementptr i8, ptr %i.j, i64 %indvars.iv58.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.am = icmp eq i8 %i.al, -1
end_hunk_4
begin_hunk_5_@ar_insert:bb.a
  br label %ar_cleared_entry.exit39.thread.i

ar_cleared_entry.exit39.i.ar_cleared_entry.exit39.thread.i_crit_edge: ; preds = %ar_cleared_entry.exit39.i
  %indvars.iv58.i.lcssa17 = phi i64 [ %indvars.iv58.i, %ar_cleared_entry.exit39.i ]
  br label %ar_cleared_entry.exit39.thread.i

ar_cleared_entry.exit39.thread.i:                 ; preds = %ar_cleared_entry.exit39.thread.isplit, %ar_cleared_entry.exit39.i.ar_cleared_entry.exit39.thread.i_crit_edge
  %indvars.iv58.i.lcssa = phi i64 [ %indvars.iv58.i.lcssa17, %ar_cleared_entry.exit39.i.ar_cleared_entry.exit39.thread.i_crit_edge ], [ %indvars.iv58.i.lcssa16, %ar_cleared_entry.exit39.thread.isplit ] ; 3 uses
  %i.ao = getelementptr i8, ptr %i.j, i64 %indvars.iv58.i.lcssa ; 2 uses
  %i.ap = trunc nuw i64 %indvars.iv58.i.lcssa to i32
  %i.aq = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv58.i.lcssa ; 2 uses
end_hunk_5
