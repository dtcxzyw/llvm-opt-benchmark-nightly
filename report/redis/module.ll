inline.NumInlined: 700
inline.NumDeleted: 31
begin_hunk_0_@RM_SetCommandInfo:bb.a
  br i1 %.not169, label %bb.ap, label %bb.ao, !llvm.loop !222

bb.ap:                                            ; preds = %bb.ao
  %.0148.lcssa = phi i64 [ %lsr.iv.next360, %bb.ao ] ; 5 uses
  %i.cr = trunc i64 %.0148.lcssa to i32
  %i.cs = icmp ult i64 %.0148.lcssa, 1152921504606846975
end_hunk_0
begin_hunk_1_@RM_SetCommandInfo:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %lsr.iv372 = phi i64 [ 0, %.lr.ph.preheader ], [ %lsr.iv.next373, %.lr.ph ] ; 2 uses
  %lsr.iv368 = phi i64 [ 0, %.lr.ph.preheader ], [ %lsr.iv.next369, %.lr.ph ] ; 3 uses
  %lsr.iv365 = phi i64 [ %lsr.iv363, %.lr.ph.preheader ], [ %lsr.iv.next366, %.lr.ph ]
  %i.cz = load ptr, ptr %i.e, align 8, !tbaa !201
  %.val = load i64, ptr %i.cm, align 8, !tbaa !202
  %i.da = ashr exact i64 %lsr.iv372, 32
end_hunk_1
begin_hunk_2_@RM_SetCommandInfo:bb.a
  br i1 %.not174, label %bb.ba, label %bb.az, !llvm.loop !229

bb.ba:                                            ; preds = %bb.az
  %.0146.lcssa = phi i64 [ %lsr.iv.next377, %bb.az ] ; 4 uses
  %i.eq = icmp ult i64 %.0146.lcssa, 2147483647
  br i1 %i.eq, label %bb.bc, label %bb.bb, !prof !60
end_hunk_2
begin_hunk_3_@RM_SetCommandInfo:bb.a

.lr.ph215:                                        ; preds = %.lr.ph215.preheader, %bb.bp
  %lsr.iv436 = phi i64 [ 0, %.lr.ph215.preheader ], [ %lsr.iv.next437, %bb.bp ] ; 2 uses
  %lsr.iv408 = phi i64 [ %lsr.iv406, %.lr.ph215.preheader ], [ %lsr.iv.next409, %bb.bp ]
  %lsr.iv381 = phi i64 [ 0, %.lr.ph215.preheader ], [ %lsr.iv.next382, %bb.bp ] ; 22 uses
  %i.ew = load ptr, ptr %i.s, align 8, !tbaa !208
  %.val178 = load i64, ptr %i.ek, align 8, !tbaa !209
end_hunk_3
begin_hunk_4_@moduleCopyCommandArgs:bb.a
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !236

bb.c:                                             ; preds = %bb.b
  %.0.lcssa = phi i64 [ %lsr.iv.next, %bb.b ]     ; 3 uses
  %i.f = icmp ult i64 %.0.lcssa, 230584300921369395
  br i1 %i.f, label %bb.e, label %bb.d, !prof !60
end_hunk_4
begin_hunk_5_@moduleCopyCommandArgs:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.s
  %lsr.iv93 = phi i64 [ 0, %.lr.ph.preheader ], [ %lsr.iv.next94, %bb.s ] ; 2 uses
  %lsr.iv83 = phi ptr [ %i.i, %.lr.ph.preheader ], [ %scevgep, %bb.s ] ; 11 uses
  %lsr.iv81 = phi i64 [ %lsr.iv79, %.lr.ph.preheader ], [ %lsr.iv.next82, %bb.s ]
  %.val = load i64, ptr %i.a, align 8, !tbaa !233
  %i.j = ashr exact i64 %lsr.iv93, 32
  %i.k = mul i64 %.val, %i.j
end_hunk_5
begin_hunk_6_@autoMemoryFreed:bb.a
  %i.f = add nuw i32 %i.e, 1
  %i.g = lshr i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 3 uses
  %i.j = sext i32 %i.e to i64
  %i.k = shl nsw i64 %i.j, 4
  %i.l = add nsw i64 %i.k, -16
  %scevgep59 = getelementptr i8, ptr %i.i, i64 %i.l
  %3 = add i32 %i.e, -1
  br label %bb.c

bb.c:                                             ; preds = %.preheader.lr.ph, %.critedge40
  %lsr.iv63 = phi i32 [ %3, %.preheader.lr.ph ], [ %lsr.iv.next, %.critedge40 ] ; 2 uses
  %lsr.iv60 = phi ptr [ %scevgep59, %.preheader.lr.ph ], [ %scevgep61, %.critedge40 ] ; 4 uses
  %lsr.iv = phi ptr [ %i.i, %.preheader.lr.ph ], [ %scevgep, %.critedge40 ] ; 4 uses
  %.03549 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.y, %.critedge40 ] ; 2 uses
  %scevgep62 = getelementptr i8, ptr %lsr.iv60, i64 8
  %i.m = load i32, ptr %scevgep62, align 8, !tbaa !115
  %i.n = icmp eq i32 %i.m, %1
  br i1 %i.n, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %lsr.iv60, align 8, !tbaa !113
  %i.p = icmp eq ptr %i.o, %2
  br i1 %i.p, label %split.a, label %bb.g

split.a:                                          ; preds = %bb.d
  %lsr.iv60.lcssa = phi ptr [ %lsr.iv60, %bb.d ]
  %lsr.iv63.lcssa = phi i32 [ %lsr.iv63, %bb.d ]
  br label %bb.e

._crit_edge:                                      ; preds = %bb.h
  %lsr.iv.lcssa70 = phi ptr [ %lsr.iv, %bb.h ]
  %.03549.lcssa68 = phi i32 [ %.03549, %bb.h ]
  br label %bb.e

bb.e:                                             ; preds = %split.a, %._crit_edge
  %.lcssa53 = phi i32 [ %.03549.lcssa68, %._crit_edge ], [ %lsr.iv63.lcssa, %split.a ]
  %.lcssa = phi ptr [ %lsr.iv.lcssa70, %._crit_edge ], [ %lsr.iv60.lcssa, %split.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  store i32 3, ptr %i.q, align 8, !tbaa !115
  %i.r = add nsw i32 %i.e, -1                     ; 3 uses
end_hunk_6
begin_hunk_7_@autoMemoryFreed:bb.a
  br label %.loopexit

bb.g:                                             ; preds = %bb.c, %bb.d
  %scevgep58 = getelementptr i8, ptr %lsr.iv, i64 8
  %i.u = load i32, ptr %scevgep58, align 8, !tbaa !115
  %i.v = icmp eq i32 %i.u, %1
  br i1 %i.v, label %bb.h, label %.critedge40

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %lsr.iv, align 8, !tbaa !113
  %i.x = icmp eq ptr %i.w, %2
  br i1 %i.x, label %._crit_edge, label %.critedge40

.critedge40:                                      ; preds = %bb.h, %bb.g
  %i.y = add nuw nsw i32 %.03549, 1               ; 2 uses
  %scevgep = getelementptr i8, ptr %lsr.iv, i64 16
  %scevgep61 = getelementptr i8, ptr %lsr.iv60, i64 -16
  %lsr.iv.next = add i32 %lsr.iv63, -1
  %exitcond.not = icmp eq i32 %i.g, %i.y
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.c, !llvm.loop !279

end_hunk_7
begin_hunk_8_@moduleCreateArgvFromUserFormat:bb.a
  ]

.preheader:                                       ; preds = %bb.b
  %.0104.lcssa = phi ptr [ %.0104, %bb.b ]
  %.0100.lcssa = phi i32 [ %.0100, %bb.b ]        ; 2 uses
  %i.l = icmp sgt i32 %.0100.lcssa, 0
end_hunk_8
begin_hunk_9_@moduleCreateArgvFromUserFormat:bb.a
.lr.ph140:                                        ; preds = %.lr.ph140.preheader, %.lr.ph140
  %indvars.iv144 = phi i64 [ 0, %.lr.ph140.preheader ], [ %indvars.iv.next145, %.lr.ph140 ] ; 2 uses
  %i.fd = shl nuw nsw i64 %indvars.iv144, 3
  %scevgep174 = getelementptr i8, ptr %.0104, i64 %i.fd
  %i.fe = load ptr, ptr %scevgep174, align 8, !tbaa !70
  tail call void @decrRefCount(ptr noundef %i.fe) #33
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
end_hunk_9
