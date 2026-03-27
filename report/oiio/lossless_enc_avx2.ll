begin_hunk_0

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.at, %bb.d ], [ %i.a, %bb.c ] ; 2 uses
  %i.au = and i32 %3, 15                          ; 5 uses
  switch i32 %i.au, label %iter.check [
    i32 8, label %bb.f
    i32 0, label %.loopexit
  ]

iter.check:                                       ; preds = %bb.e
  %i.av = sext i32 %.1 to i64                     ; 5 uses
  %i.aw = add nsw i32 %i.au, -1                   ; 3 uses
  %i.ax = zext i32 %i.aw to i64
  %i.ay = add nuw nsw i64 %i.ax, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.aw, 3
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check83 = icmp ult i32 %i.aw, 31
  br i1 %min.iters.check83, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ay, 28
  %n.vec = and i64 %i.ay, 8589934560              ; 5 uses
  %i.az = add nsw i64 %n.vec, %i.av
  %.cast = trunc i64 %n.vec to i32
  %i.ba = sub i32 %i.au, %.cast
end_hunk_0
begin_hunk_1
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bb = add i64 %index, %i.av                   ; 3 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bb ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %5 = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %6 = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %wide.load = load <8 x i32>, ptr %i.bc, align 4, !tbaa !3
  %wide.load84 = load <8 x i32>, ptr %4, align 4, !tbaa !3
  %wide.load85 = load <8 x i32>, ptr %5, align 4, !tbaa !3
  %wide.load86 = load <8 x i32>, ptr %6, align 4, !tbaa !3
  %i.bd = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bb ; 4 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %8 = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %9 = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %wide.load87 = load <8 x i32>, ptr %i.bd, align 4, !tbaa !3
  %wide.load88 = load <8 x i32>, ptr %7, align 4, !tbaa !3
  %wide.load89 = load <8 x i32>, ptr %8, align 4, !tbaa !3
  %wide.load90 = load <8 x i32>, ptr %9, align 4, !tbaa !3
  %10 = add <8 x i32> %wide.load87, %wide.load
  %11 = add <8 x i32> %wide.load88, %wide.load84
  %12 = add <8 x i32> %wide.load89, %wide.load85
  %i.be = add <8 x i32> %wide.load90, %wide.load86
  %i.bf = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bb ; 4 uses
  %13 = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %14 = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %15 = getelementptr inbounds nuw i8, ptr %i.bf, i64 96
  store <8 x i32> %10, ptr %i.bf, align 4, !tbaa !3
  store <8 x i32> %11, ptr %13, align 4, !tbaa !3
  store <8 x i32> %12, ptr %14, align 4, !tbaa !3
  store <8 x i32> %i.be, ptr %15, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.ay, 8589934588            ; 4 uses
  %16 = add nsw i64 %n.vec93, %i.av
  %.cast94 = trunc i64 %n.vec93 to i32
  %17 = sub i32 %i.au, %.cast94
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index95 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 2 uses
  %offset.idx = add i64 %index95, %i.av           ; 3 uses
  %18 = getelementptr inbounds [4 x i8], ptr %0, i64 %offset.idx
  %wide.load96 = load <4 x i32>, ptr %18, align 4, !tbaa !3
  %19 = getelementptr inbounds [4 x i8], ptr %1, i64 %offset.idx
  %wide.load97 = load <4 x i32>, ptr %19, align 4, !tbaa !3
  %20 = add <4 x i32> %wide.load97, %wide.load96
  %21 = getelementptr inbounds [4 x i8], ptr %2, i64 %offset.idx
  store <4 x i32> %20, ptr %21, align 4, !tbaa !3
  %index.next98 = add nuw i64 %index95, 4         ; 2 uses
  %22 = icmp eq i64 %index.next98, %n.vec93
  br i1 %22, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %i.ay, %n.vec93
  br i1 %cmp.n99, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv80.ph = phi i64 [ %i.av, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %16, %vec.epilog.middle.block ]
  %.078.ph = phi i32 [ %i.au, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %17, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
end_hunk_1
begin_hunk_2
  store <8 x i32> %i.bn, ptr %i.bm, align 1, !tbaa !9
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph ], [ %indvars.iv80.ph, %.lr.ph.preheader ] ; 4 uses
  %.078 = phi i32 [ %i.bo, %.lr.ph ], [ %.078.ph, %.lr.ph.preheader ]
  %i.bo = add nsw i32 %.078, -1                   ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv80
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
end_hunk_2
begin_hunk_3
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !3
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, 1
  %.not75 = icmp eq i32 %i.bo, 0
  br i1 %.not75, label %.loopexit, label %.lr.ph, !llvm.loop !27

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.f
  ret void
}

end_hunk_3
begin_hunk_4
  store <8 x i32> %i.y, ptr %i.t, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %.not, label %bb.c, label %bb.b, !llvm.loop !28

bb.c:                                             ; preds = %bb.b
  %i.z = and i32 %2, 16
end_hunk_4
begin_hunk_5

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1 = phi i32 [ %i.an, %bb.d ], [ %i.a, %bb.c ] ; 2 uses
  %i.ao = and i32 %2, 15                          ; 5 uses
  switch i32 %i.ao, label %iter.check [
    i32 8, label %bb.f
    i32 0, label %.loopexit
  ]

iter.check:                                       ; preds = %bb.e
  %i.ap = sext i32 %.1 to i64                     ; 5 uses
  %i.aq = add nsw i32 %i.ao, -1                   ; 3 uses
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nuw nsw i64 %i.ar, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.aq, 3
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check81 = icmp ult i32 %i.aq, 31
  br i1 %min.iters.check81, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.as, 28
  %n.vec = and i64 %i.as, 8589934560              ; 5 uses
  %i.at = add nsw i64 %n.vec, %i.ap
  %.cast = trunc i64 %n.vec to i32
  %i.au = sub i32 %i.ao, %.cast
end_hunk_5
begin_hunk_6
vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = add i64 %index, %i.ap                   ; 2 uses
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.av ; 4 uses
  %3 = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %5 = getelementptr inbounds nuw i8, ptr %i.aw, i64 96
  %wide.load = load <8 x i32>, ptr %i.aw, align 4, !tbaa !3
  %wide.load82 = load <8 x i32>, ptr %3, align 4, !tbaa !3
  %wide.load83 = load <8 x i32>, ptr %4, align 4, !tbaa !3
  %wide.load84 = load <8 x i32>, ptr %5, align 4, !tbaa !3
  %i.ax = getelementptr inbounds [4 x i8], ptr %1, i64 %i.av ; 5 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %i.ax, i64 64 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ax, i64 96 ; 2 uses
  %wide.load85 = load <8 x i32>, ptr %i.ax, align 4, !tbaa !3
  %wide.load86 = load <8 x i32>, ptr %6, align 4, !tbaa !3
  %wide.load87 = load <8 x i32>, ptr %7, align 4, !tbaa !3
  %wide.load88 = load <8 x i32>, ptr %8, align 4, !tbaa !3
  %9 = add <8 x i32> %wide.load85, %wide.load
  %10 = add <8 x i32> %wide.load86, %wide.load82
  %11 = add <8 x i32> %wide.load87, %wide.load83
  %i.ay = add <8 x i32> %wide.load88, %wide.load84
  store <8 x i32> %9, ptr %i.ax, align 4, !tbaa !3
  store <8 x i32> %10, ptr %6, align 4, !tbaa !3
  store <8 x i32> %11, ptr %7, align 4, !tbaa !3
  store <8 x i32> %i.ay, ptr %8, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec91 = and i64 %i.as, 8589934588            ; 4 uses
  %12 = add nsw i64 %n.vec91, %i.ap
  %.cast92 = trunc i64 %n.vec91 to i32
  %13 = sub i32 %i.ao, %.cast92
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next96, %vec.epilog.vector.body ] ; 2 uses
  %offset.idx = add i64 %index93, %i.ap           ; 2 uses
  %14 = getelementptr inbounds [4 x i8], ptr %0, i64 %offset.idx
  %wide.load94 = load <4 x i32>, ptr %14, align 4, !tbaa !3
  %15 = getelementptr inbounds [4 x i8], ptr %1, i64 %offset.idx ; 2 uses
  %wide.load95 = load <4 x i32>, ptr %15, align 4, !tbaa !3
  %16 = add <4 x i32> %wide.load95, %wide.load94
  store <4 x i32> %16, ptr %15, align 4, !tbaa !3
  %index.next96 = add nuw i64 %index93, 4         ; 2 uses
  %17 = icmp eq i64 %index.next96, %n.vec91
  br i1 %17, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !30

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n97 = icmp eq i64 %i.as, %n.vec91
  br i1 %cmp.n97, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv78.ph = phi i64 [ %i.ap, %iter.check ], [ %i.at, %vec.epilog.iter.check ], [ %12, %vec.epilog.middle.block ]
  %.076.ph = phi i32 [ %i.ao, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %13, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.f:                                             ; preds = %bb.e
end_hunk_6
begin_hunk_7
  store <8 x i32> %i.bf, ptr %i.bd, align 1, !tbaa !9
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %.lr.ph ], [ %indvars.iv78.ph, %.lr.ph.preheader ] ; 3 uses
  %.076 = phi i32 [ %i.bg, %.lr.ph ], [ %.076.ph, %.lr.ph.preheader ]
  %i.bg = add nsw i32 %.076, -1                   ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv78
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
end_hunk_7
begin_hunk_8
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !3
  %indvars.iv.next79 = add nsw i64 %indvars.iv78, 1
  %.not73 = icmp eq i32 %i.bg, 0
  br i1 %.not73, label %.loopexit, label %.lr.ph, !llvm.loop !31

.loopexit:                                        ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.e, %bb.f
  ret void
}

end_hunk_8
begin_hunk_9
bb.d:                                             ; preds = %bb.c
  %i.ar = zext nneg i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.ar
  %i.at = load i64, ptr %i.as, align 8, !tbaa !32
  br label %VP8LFastSLog2.exit

bb.e:                                             ; preds = %bb.c
end_hunk_9
begin_hunk_10
bb.g:                                             ; preds = %bb.f
  %i.bf = zext nneg i32 %i.bc to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !32
  br label %VP8LFastSLog2.exit67

bb.h:                                             ; preds = %bb.f
end_hunk_10
begin_hunk_11
  %i.bm = add i32 %.06272, -1
  %i.bn = and i32 %i.bm, %.06272                  ; 2 uses
  %.not = icmp eq i32 %i.bn, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

._crit_edge:                                      ; preds = %VP8LFastSLog2.exit67, %bb.b
  %.164.lcssa = phi i32 [ %.06377, %bb.b ], [ %.265, %VP8LFastSLog2.exit67 ] ; 4 uses
end_hunk_11
begin_hunk_12
  %.1.lcssa = phi i64 [ %.05979, %bb.b ], [ %i.bl, %VP8LFastSLog2.exit67 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32
  %i.bo = icmp samesign ult i64 %indvars.iv, 224
  br i1 %i.bo, label %bb.b, label %bb.i, !llvm.loop !35

bb.i:                                             ; preds = %._crit_edge
  %i.bp = icmp ult i32 %.161.lcssa, 256
end_hunk_12
begin_hunk_13
bb.j:                                             ; preds = %bb.i
  %i.bq = zext nneg i32 %.161.lcssa to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bq
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !32
  br label %VP8LFastSLog2.exit68

bb.k:                                             ; preds = %bb.i
end_hunk_13
begin_hunk_14
bb.l:                                             ; preds = %VP8LFastSLog2.exit68
  %i.bx = zext nneg i32 %.164.lcssa to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr @kSLog2Table, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !32
  br label %VP8LFastSLog2.exit69

bb.m:                                             ; preds = %VP8LFastSLog2.exit68
end_hunk_14
begin_hunk_15
  %i.v = add nsw i32 %.45, 24
  %i.w = icmp slt i32 %i.v, %2
  %or.cond = select i1 %.not44, i1 %i.w, i1 false
  br i1 %or.cond, label %.preheader, label %.thread, !llvm.loop !36

bb.c:                                             ; preds = %bb.a
  %i.x = icmp sgt i32 %2, 7
end_hunk_15
begin_hunk_16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !37

.critedge.loopexit.split.loop.exit59:             ; preds = %.lr.ph
  %i.ay = trunc nsw i64 %indvars.iv to i32
end_hunk_16
begin_hunk_17
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 32 ; 2 uses
  %.not102 = icmp samesign ugt i64 %indvars.iv.next156, %i.c
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 32
  br i1 %.not102, label %.loopexit.loopexit133, label %.lr.ph124, !llvm.loop !38

.lr.ph118:                                        ; preds = %.lr.ph118.preheader, %.lr.ph118
  %indvars.iv150 = phi i64 [ 0, %.lr.ph118.preheader ], [ %indvars.iv.next151, %.lr.ph118 ] ; 2 uses
end_hunk_17
begin_hunk_18
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 32 ; 2 uses
  %.not101 = icmp samesign ugt i64 %indvars.iv.next149, %i.b
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 32
  br i1 %.not101, label %.loopexit.loopexit134, label %.lr.ph118, !llvm.loop !39

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv143 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next144, %.lr.ph ] ; 2 uses
end_hunk_18
begin_hunk_19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 32 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 32
  br i1 %.not, label %.loopexit.loopexit135, label %.lr.ph, !llvm.loop !40

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %.lr.ph130
  %indvars.iv164 = phi i64 [ 0, %.lr.ph130.preheader ], [ %indvars.iv.next165, %.lr.ph130 ] ; 2 uses
end_hunk_19
begin_hunk_20
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 32 ; 2 uses
  %.not103 = icmp samesign ugt i64 %indvars.iv.next163, %i.d
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 32
  br i1 %.not103, label %.loopexit.loopexit, label %.lr.ph130, !llvm.loop !41

.loopexit.loopexit:                               ; preds = %.lr.ph130
  %i.cc = trunc nuw nsw i64 %indvars.iv162 to i32
end_hunk_20
begin_hunk_21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !42

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.f = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_21
begin_hunk_22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !43

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_22
begin_hunk_23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !44

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.h = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_23
begin_hunk_24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !45

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_24
begin_hunk_25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !46

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_25
begin_hunk_26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_26
begin_hunk_27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !48

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_27
begin_hunk_28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !49

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_28
begin_hunk_29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !50

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_29
begin_hunk_30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_30
begin_hunk_31
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !52

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.af = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_31
begin_hunk_32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !53

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ar = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_32
begin_hunk_33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !54

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_33
begin_hunk_34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.a
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 8
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !55

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.an = trunc nuw nsw i64 %indvars.iv to i32
end_hunk_34
begin_hunk_35
!22 = distinct !{!22, !11, !23, !24}
!23 = !{!"llvm.loop.isvectorized", i32 1}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"branch_weights", i32 4, i32 28}
!26 = distinct !{!26, !11, !23, !24}
!27 = distinct !{!27, !11, !24, !23}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !11, !23, !24}
!30 = distinct !{!30, !11, !23, !24}
!31 = distinct !{!31, !11, !24, !23}
!32 = !{!33, !33, i64 0}
!33 = !{!"long", !5, i64 0}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11}
!36 = distinct !{!36, !11}
end_hunk_35
begin_hunk_36
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = distinct !{!52, !11}
!53 = distinct !{!53, !11}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
end_hunk_36
