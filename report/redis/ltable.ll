inline.NumInlined: 30
inline.NumDeleted: 12
begin_hunk_0_@newkey:bb.a
  %i.ca = sext i32 %.021.i to i64                 ; 2 uses
  %i.cb = add nsw i64 %i.ca, 1
  %i.cc = sub nsw i64 %i.cb, %i.bz                ; 3 uses
  %min.iters.check = icmp ult i64 %i.cc, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i73
  %n.mod.vf = and i64 %i.cc, 7                    ; 2 uses
  %3 = icmp eq i64 %n.mod.vf, 0
  %4 = select i1 %3, i64 8, i64 %n.mod.vf
  %n.vec = sub nsw i64 %i.cc, %4                  ; 2 uses
  %i.cd = add nsw i64 %n.vec, %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
end_hunk_0
begin_hunk_1_@newkey:bb.a
  %i.do = add <4 x i32> %vec.phi, %i.dm           ; 2 uses
  %i.dp = add <4 x i32> %vec.phi144, %i.dn        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !45

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dp, %i.do
  %i.dr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx)
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i73, %middle.block
  %indvars.iv.i74.ph = phi i64 [ %i.bz, %.lr.ph.i73 ], [ %i.cd, %middle.block ]
end_hunk_1
begin_hunk_2_@newkey:bb.a
  %i.dw = zext i1 %i.dv to i32
  %spec.select.i = add nuw nsw i32 %.02238.i, %i.dw ; 2 uses
  %indvars.iv.next.i75 = add nsw i64 %indvars.iv.i74, 1
  %.not.not.i = icmp slt i64 %indvars.iv.i74, %i.ca
  br i1 %.not.not.i, label %scalar.ph, label %._crit_edge.loopexit.i, !llvm.loop !48

._crit_edge.loopexit.i:                           ; preds = %scalar.ph
  %i.dx = add nsw i32 %.021.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.m
  %.124.lcssa.i = phi i32 [ %.02343.i, %bb.m ], [ %i.dx, %._crit_edge.loopexit.i ]
  %.022.lcssa.i = phi i32 [ 0, %bb.m ], [ %spec.select.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv45.i ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !4
  %i.ea = add nsw i32 %i.dz, %.022.lcssa.i
end_hunk_2
