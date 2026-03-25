begin_hunk_0
inline.NumInlined: 91
inline.NumDeleted: 17
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  %.050.lcssa = phi ptr [ %5, %7 ], [ %116, %.lr.ph ] ; 8 uses
  %.049.lcssa = phi ptr [ %4, %7 ], [ %115, %.lr.ph ] ; 6 uses
  %.not = icmp eq i32 %15, %16
  br i1 %.not, label %273, label %119

.lr.ph:                                           ; preds = %7, %.lr.ph
  %.04892 = phi i32 [ %117, %.lr.ph ], [ 0, %7 ]
end_hunk_1
begin_hunk_2
vector.ph131:                                     ; preds = %vector.main.loop.iter.check
  %n.mod.vf132 = and i64 %233, 12
  %n.vec133 = and i64 %233, 1073741808            ; 5 uses
  %235 = shl nuw nsw i64 %n.vec133, 2
  %236 = shl nuw nsw i64 %n.vec133, 2
  %237 = getelementptr i8, ptr %.050.lcssa, i64 %236
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph131
  %index135 = phi i64 [ 0, %vector.ph131 ], [ %index.next143, %vector.body134 ] ; 3 uses
  %238 = shl i64 %index135, 2
  %239 = shl i64 %index135, 2
  %next.gep136 = getelementptr i8, ptr %.050.lcssa, i64 %239
  %240 = getelementptr inbounds nuw i8, ptr %9, i64 %238
  %wide.vec137 = load <64 x i8>, ptr %240, align 16, !tbaa !9, !alias.scope !22
  store <64 x i8> %wide.vec137, ptr %next.gep136, align 1, !tbaa !9, !alias.scope !25, !noalias !22
  %index.next143 = add nuw i64 %index135, 16      ; 2 uses
  %241 = icmp eq i64 %index.next143, %n.vec133
  br i1 %241, label %middle.block144, label %vector.body134, !llvm.loop !27

middle.block144:                                  ; preds = %vector.body134
  %cmp.n145 = icmp eq i64 %233, %n.vec133
  br i1 %cmp.n145, label %._crit_edge104, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block144
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf132, 0
  br i1 %min.epilog.iters.check, label %.lr.ph103.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec133, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec149 = and i64 %233, 1073741820            ; 4 uses
  %242 = shl nuw nsw i64 %n.vec149, 2
  %243 = shl nuw nsw i64 %n.vec149, 2
  %244 = getelementptr i8, ptr %.050.lcssa, i64 %243
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index150 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %offset.idx151 = shl i64 %index150, 2
  %offset.idx152 = shl i64 %index150, 2
  %next.gep153 = getelementptr i8, ptr %.050.lcssa, i64 %offset.idx152
  %245 = getelementptr inbounds nuw i8, ptr %9, i64 %offset.idx151
  %wide.vec154 = load <16 x i8>, ptr %245, align 16, !tbaa !9, !alias.scope !22
  store <16 x i8> %wide.vec154, ptr %next.gep153, align 1, !tbaa !9, !alias.scope !25, !noalias !22
  %index.next160 = add nuw i64 %index150, 4       ; 2 uses
  %246 = icmp eq i64 %index.next160, %n.vec149
  br i1 %246, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %233, %n.vec149
  br i1 %cmp.n161, label %._crit_edge104, label %.lr.ph103.preheader

.lr.ph103.preheader:                              ; preds = %vector.memcheck119, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv107.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck119 ], [ %235, %vec.epilog.iter.check ], [ %242, %vec.epilog.middle.block ]
  %.151100.ph = phi ptr [ %.050.lcssa, %iter.check ], [ %.050.lcssa, %vector.memcheck119 ], [ %237, %vec.epilog.iter.check ], [ %244, %vec.epilog.middle.block ]
  br label %.lr.ph103

.lr.ph97:                                         ; preds = %.lr.ph97.preheader163, %.lr.ph97
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph97 ], [ %indvars.iv.ph, %.lr.ph97.preheader163 ] ; 2 uses
  %.194 = phi ptr [ %258, %.lr.ph97 ], [ %.194.ph, %.lr.ph97.preheader163 ] ; 5 uses
  %247 = load float, ptr %.194, align 4, !tbaa !12
  %248 = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv ; 4 uses
  store float %247, ptr %248, align 16, !tbaa !12
  %249 = getelementptr inbounds nuw i8, ptr %.194, i64 4
  %250 = load float, ptr %249, align 4, !tbaa !12
  %251 = getelementptr inbounds nuw i8, ptr %248, i64 4
  store float %250, ptr %251, align 4, !tbaa !12
  %252 = getelementptr inbounds nuw i8, ptr %.194, i64 8
  %253 = load float, ptr %252, align 4, !tbaa !12
  %254 = getelementptr inbounds nuw i8, ptr %248, i64 8
  store float %253, ptr %254, align 8, !tbaa !12
  %255 = getelementptr inbounds nuw i8, ptr %.194, i64 12
  %256 = load float, ptr %255, align 4, !tbaa !12
  %257 = getelementptr inbounds nuw i8, ptr %248, i64 12
  store float %256, ptr %257, align 4, !tbaa !12
  %258 = getelementptr inbounds nuw i8, ptr %.194, i64 16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %259 = icmp samesign ult i64 %indvars.iv.next, %122
  br i1 %259, label %.lr.ph97, label %._crit_edge98, !llvm.loop !30

._crit_edge104:                                   ; preds = %.lr.ph103, %middle.block144, %vec.epilog.middle.block, %._crit_edge98
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %273

.lr.ph103:                                        ; preds = %.lr.ph103.preheader, %.lr.ph103
  %indvars.iv107 = phi i64 [ %indvars.iv.next108, %.lr.ph103 ], [ %indvars.iv107.ph, %.lr.ph103.preheader ] ; 2 uses
  %.151100 = phi ptr [ %271, %.lr.ph103 ], [ %.151100.ph, %.lr.ph103.preheader ] ; 5 uses
  %260 = getelementptr inbounds nuw i8, ptr %9, i64 %indvars.iv107 ; 4 uses
  %261 = load i8, ptr %260, align 4, !tbaa !9
  store i8 %261, ptr %.151100, align 1, !tbaa !9
  %262 = getelementptr inbounds nuw i8, ptr %260, i64 1
  %263 = load i8, ptr %262, align 1, !tbaa !9
  %264 = getelementptr inbounds nuw i8, ptr %.151100, i64 1
  store i8 %263, ptr %264, align 1, !tbaa !9
  %265 = getelementptr inbounds nuw i8, ptr %260, i64 2
  %266 = load i8, ptr %265, align 2, !tbaa !9
  %267 = getelementptr inbounds nuw i8, ptr %.151100, i64 2
  store i8 %266, ptr %267, align 1, !tbaa !9
  %268 = getelementptr inbounds nuw i8, ptr %260, i64 3
  %269 = load i8, ptr %268, align 1, !tbaa !9
  %270 = getelementptr inbounds nuw i8, ptr %.151100, i64 3
  store i8 %269, ptr %270, align 1, !tbaa !9
  %271 = getelementptr inbounds nuw i8, ptr %.151100, i64 4
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 4 ; 2 uses
  %272 = icmp samesign ult i64 %indvars.iv.next108, %230
  br i1 %272, label %.lr.ph103, label %._crit_edge104, !llvm.loop !31

273:                                              ; preds = %._crit_edge104, %._crit_edge
  ret void
}

end_hunk_2
