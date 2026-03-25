begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %.050.lcssa = phi ptr [ %5, %7 ], [ %116, %.lr.ph ] ; 8 uses
  %.049.lcssa = phi ptr [ %4, %7 ], [ %115, %.lr.ph ] ; 6 uses
  %.not = icmp eq i32 %15, %16
  br i1 %.not, label %271, label %119

.lr.ph:                                           ; preds = %7, %.lr.ph
  %.04892 = phi i32 [ %117, %.lr.ph ], [ 0, %7 ]
end_hunk_1
begin_hunk_2
vector.ph131:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf132 = and i64 %233, 12
  %n.vec133 = and i64 %233, 1073741808            ; 5 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph131
  %index135 = phi i64 [ 0, %vector.ph131 ], [ %index.next143, %vector.body134 ] ; 3 uses
  %235 = shl i64 %index135, 2
  %236 = shl i64 %index135, 2
  %next.gep136 = getelementptr i8, ptr %.050.lcssa, i64 %236
  %237 = getelementptr inbounds nuw i8, ptr %9, i64 %235
  %wide.vec137 = load <64 x i8>, ptr %237, align 16, !tbaa !9, !alias.scope !22
  store <64 x i8> %wide.vec137, ptr %next.gep136, align 1, !tbaa !9, !alias.scope !25, !noalias !22
  %index.next143 = add nuw i64 %index135, 16      ; 2 uses
  %238 = icmp eq i64 %index.next143, %n.vec133
  br i1 %238, label %middle.block144, label %vector.body134, !llvm.loop !27

middle.block144:                                  ; preds = %vector.body134
  %cmp.n145 = icmp eq i64 %233, %n.vec133
  br i1 %cmp.n145, label %._crit_edge104, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block144
  %ind.end = shl nuw nsw i64 %n.vec133, 2
  %239 = shl nuw nsw i64 %n.vec133, 2
  %ind.end162 = getelementptr i8, ptr %.050.lcssa, i64 %239
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf132, 0
  br i1 %min.epilog.iters.check, label %.lr.ph103.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec133, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec147 = and i64 %233, 1073741820            ; 4 uses
  %240 = shl nuw nsw i64 %n.vec147, 2
  %241 = shl nuw nsw i64 %n.vec147, 2
  %242 = getelementptr i8, ptr %.050.lcssa, i64 %241
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index148 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 3 uses
  %offset.idx149 = shl i64 %index148, 2
  %offset.idx150 = shl i64 %index148, 2
  %next.gep151 = getelementptr i8, ptr %.050.lcssa, i64 %offset.idx150
  %243 = getelementptr inbounds nuw i8, ptr %9, i64 %offset.idx149
  %wide.vec152 = load <16 x i8>, ptr %243, align 16, !tbaa !9, !alias.scope !22
  store <16 x i8> %wide.vec152, ptr %next.gep151, align 1, !tbaa !9, !alias.scope !25, !noalias !22
  %index.next158 = add nuw i64 %index148, 4       ; 2 uses
  %244 = icmp eq i64 %index.next158, %n.vec147
  br i1 %244, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n159 = icmp eq i64 %233, %n.vec147
  br i1 %cmp.n159, label %._crit_edge104, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %vector.memcheck119, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck119 ], [ %ind.end, %vec.epilog.iter.check ], [ %240, %vec.epilog.middle.block ]
  %.151100.ph = phi ptr [ %.050.lcssa, %iter.check ], [ %.050.lcssa, %vector.memcheck119 ], [ %ind.end162, %vec.epilog.iter.check ], [ %242, %vec.epilog.middle.block ]
  br label %.lr.ph103

.lr.ph97:                                         ; preds = %.lr.ph97.preheader163, %.lr.ph97
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph97 ], [ %indvars.iv.ph, %.lr.ph97.preheader163 ] ; 2 uses
  %.194 = phi ptr [ %256, %.lr.ph97 ], [ %.194.ph, %.lr.ph97.preheader163 ] ; 5 uses
  %245 = load float, ptr %.194, align 4, !tbaa !12
  %246 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv ; 4 uses
  store float %245, ptr %246, align 16, !tbaa !12
  %247 = getelementptr inbounds nuw i8, ptr %.194, i64 4
  %248 = load float, ptr %247, align 4, !tbaa !12
  %249 = getelementptr inbounds nuw i8, ptr %246, i64 4
  store float %248, ptr %249, align 4, !tbaa !12
  %250 = getelementptr inbounds nuw i8, ptr %.194, i64 8
  %251 = load float, ptr %250, align 4, !tbaa !12
  %252 = getelementptr inbounds nuw i8, ptr %246, i64 8
  store float %251, ptr %252, align 8, !tbaa !12
  %253 = getelementptr inbounds nuw i8, ptr %.194, i64 12
  %254 = load float, ptr %253, align 4, !tbaa !12
  %255 = getelementptr inbounds nuw i8, ptr %246, i64 12
  store float %254, ptr %255, align 4, !tbaa !12
  %256 = getelementptr inbounds nuw i8, ptr %.194, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %257 = icmp samesign ult i64 %indvars.iv.next, %122
  br i1 %257, label %.lr.ph97, label %._crit_edge98, !llvm.loop !30

._crit_edge104:                                   ; preds = %.lr.ph103, %middle.block144, %vec.epilog.middle.block, %._crit_edge98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %271

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %.lr.ph103
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %.lr.ph103 ], [ %indvars.iv107.ph, %.lr.ph103.preheader ] ; 2 uses
  %.151100 = phi ptr [ %269, %.lr.ph103 ], [ %.151100.ph, %.lr.ph103.preheader ] ; 5 uses
  %258 = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv107 ; 4 uses
  %259 = load i8, ptr %258, align 4, !tbaa !9
  store i8 %259, ptr %.151100, align 1, !tbaa !9
  %260 = getelementptr inbounds nuw i8, ptr %258, i64 1
  %261 = load i8, ptr %260, align 1, !tbaa !9
  %262 = getelementptr inbounds nuw i8, ptr %.151100, i64 1
  store i8 %261, ptr %262, align 1, !tbaa !9
  %263 = getelementptr inbounds nuw i8, ptr %258, i64 2
  %264 = load i8, ptr %263, align 2, !tbaa !9
  %265 = getelementptr inbounds nuw i8, ptr %.151100, i64 2
  store i8 %264, ptr %265, align 1, !tbaa !9
  %266 = getelementptr inbounds nuw i8, ptr %258, i64 3
  %267 = load i8, ptr %266, align 1, !tbaa !9
  %268 = getelementptr inbounds nuw i8, ptr %.151100, i64 3
  store i8 %267, ptr %268, align 1, !tbaa !9
  %269 = getelementptr inbounds nuw i8, ptr %.151100, i64 4
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 4 ; 2 uses
  %270 = icmp samesign ult i64 %indvars.iv.next108, %230
  br i1 %270, label %.lr.ph103, label %._crit_edge104, !llvm.loop !31

271:                                              ; preds = %._crit_edge104, %._crit_edge
  ret void
}

end_hunk_2
