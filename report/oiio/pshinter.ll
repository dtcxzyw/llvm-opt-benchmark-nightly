begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  br label %17

17:                                               ; preds = %ps_mask_table_merge.exit.thread.i, %.lr.ph43.i
  %18 = phi i32 [ %15, %.lr.ph43.i ], [ %142, %ps_mask_table_merge.exit.thread.i ] ; 4 uses
  %.01742.i = phi i32 [ %.01740.i, %.lr.ph43.i ], [ %.017.i, %ps_mask_table_merge.exit.thread.i ] ; 7 uses
  %.017.in41.i = phi i32 [ %15, %.lr.ph43.i ], [ %.01742.i, %ps_mask_table_merge.exit.thread.i ]
  %19 = add i32 %.017.in41.i, -2                  ; 2 uses
end_hunk_1
begin_hunk_2
  br label %26

26:                                               ; preds = %ps_mask_table_test_intersect.exit.thread.i, %.lr.ph.i
  %.01639.i = phi i32 [ %19, %.lr.ph.i ], [ %140, %ps_mask_table_test_intersect.exit.thread.i ] ; 4 uses
  %27 = zext i32 %.01639.i to i64
  %28 = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %27 ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 8
end_hunk_2
begin_hunk_3
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %86, 28
  %n.vec = and i64 %86, 536870880                 ; 6 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %83, i64 %index ; 3 uses
  %next.gep40 = getelementptr i8, ptr %85, i64 %index ; 2 uses
  %89 = getelementptr i8, ptr %next.gep, i64 16   ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %wide.load41 = load <16 x i8>, ptr %89, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %90 = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load42 = load <16 x i8>, ptr %next.gep40, align 1, !tbaa !51, !alias.scope !280
  %wide.load43 = load <16 x i8>, ptr %90, align 1, !tbaa !51, !alias.scope !280
  %91 = or <16 x i8> %wide.load42, %wide.load
  %92 = or <16 x i8> %wide.load43, %wide.load41
  store <16 x i8> %91, ptr %next.gep, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  store <16 x i8> %92, ptr %89, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %93 = icmp eq i64 %index.next, %n.vec
  br i1 %93, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %86
  br i1 %cmp.n, label %.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %ind.end = getelementptr i8, ptr %83, i64 %n.vec
  %ind.end55 = getelementptr i8, ptr %85, i64 %n.vec
  %.cast56 = trunc nuw nsw i64 %n.vec to i32
  %ind.end57 = sub nsw i32 %.pre-phi78.i.i, %.cast56
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i24.i.preheader, label %vec.epilog.ph, !prof !283

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec45 = and i64 %86, 536870908               ; 5 uses
  %94 = getelementptr i8, ptr %83, i64 %n.vec45
  %95 = getelementptr i8, ptr %85, i64 %n.vec45
  %.cast = trunc nuw nsw i64 %n.vec45 to i32
  %96 = sub nsw i32 %.pre-phi78.i.i, %.cast
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index46 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 3 uses
  %next.gep47 = getelementptr i8, ptr %83, i64 %index46 ; 2 uses
  %next.gep48 = getelementptr i8, ptr %85, i64 %index46
  %wide.load49 = load <4 x i8>, ptr %next.gep47, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %wide.load50 = load <4 x i8>, ptr %next.gep48, align 1, !tbaa !51, !alias.scope !280
  %97 = or <4 x i8> %wide.load50, %wide.load49
  store <4 x i8> %97, ptr %next.gep47, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %index.next51 = add nuw i64 %index46, 4         ; 2 uses
  %98 = icmp eq i64 %index.next51, %n.vec45
  br i1 %98, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !284

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %n.vec45, %86
  br i1 %cmp.n52, label %.thread.i.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04975.i.i.ph = phi ptr [ %83, %iter.check ], [ %83, %vector.memcheck ], [ %ind.end, %vec.epilog.iter.check ], [ %94, %vec.epilog.middle.block ] ; 2 uses
  %.05074.i.i.ph = phi ptr [ %85, %iter.check ], [ %85, %vector.memcheck ], [ %ind.end55, %vec.epilog.iter.check ], [ %95, %vec.epilog.middle.block ] ; 2 uses
  %.05173.i.i.ph = phi i32 [ %.pre-phi78.i.i, %iter.check ], [ %.pre-phi78.i.i, %vector.memcheck ], [ %ind.end57, %vec.epilog.iter.check ], [ %96, %vec.epilog.middle.block ] ; 4 uses
  %99 = add nsw i32 %.05173.i.i.ph, -1
  %xtraiter = and i32 %.05173.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol

.lr.ph.i24.i.prol:                                ; preds = %.lr.ph.i24.i.preheader, %.lr.ph.i24.i.prol
  %.04975.i.i.prol = phi ptr [ %103, %.lr.ph.i24.i.prol ], [ %.04975.i.i.ph, %.lr.ph.i24.i.preheader ] ; 3 uses
  %.05074.i.i.prol = phi ptr [ %104, %.lr.ph.i24.i.prol ], [ %.05074.i.i.ph, %.lr.ph.i24.i.preheader ] ; 2 uses
  %.05173.i.i.prol = phi i32 [ %105, %.lr.ph.i24.i.prol ], [ %.05173.i.i.ph, %.lr.ph.i24.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i24.i.prol ], [ 0, %.lr.ph.i24.i.preheader ]
  %100 = load i8, ptr %.04975.i.i.prol, align 1, !tbaa !51
  %101 = load i8, ptr %.05074.i.i.prol, align 1, !tbaa !51
  %102 = or i8 %101, %100
  store i8 %102, ptr %.04975.i.i.prol, align 1, !tbaa !51
  %103 = getelementptr inbounds nuw i8, ptr %.04975.i.i.prol, i64 1 ; 2 uses
  %104 = getelementptr inbounds nuw i8, ptr %.05074.i.i.prol, i64 1 ; 2 uses
  %105 = add nsw i32 %.05173.i.i.prol, -1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol, !llvm.loop !285

.lr.ph.i24.i.prol.loopexit:                       ; preds = %.lr.ph.i24.i.prol, %.lr.ph.i24.i.preheader
  %.04975.i.i.unr = phi ptr [ %.04975.i.i.ph, %.lr.ph.i24.i.preheader ], [ %103, %.lr.ph.i24.i.prol ]
  %.05074.i.i.unr = phi ptr [ %.05074.i.i.ph, %.lr.ph.i24.i.preheader ], [ %104, %.lr.ph.i24.i.prol ]
  %.05173.i.i.unr = phi i32 [ %.05173.i.i.ph, %.lr.ph.i24.i.preheader ], [ %105, %.lr.ph.i24.i.prol ]
  %106 = icmp ult i32 %99, 3
  br i1 %106, label %.thread.i.i, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i
  %.04975.i.i = phi ptr [ %125, %.lr.ph.i24.i ], [ %.04975.i.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 6 uses
  %.05074.i.i = phi ptr [ %126, %.lr.ph.i24.i ], [ %.05074.i.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 5 uses
  %.05173.i.i = phi i32 [ %127, %.lr.ph.i24.i ], [ %.05173.i.i.unr, %.lr.ph.i24.i.prol.loopexit ]
  %107 = load i8, ptr %.04975.i.i, align 1, !tbaa !51
  %108 = load i8, ptr %.05074.i.i, align 1, !tbaa !51
  %109 = or i8 %108, %107
  store i8 %109, ptr %.04975.i.i, align 1, !tbaa !51
  %110 = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 1 ; 2 uses
  %111 = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 1
  %112 = load i8, ptr %110, align 1, !tbaa !51
  %113 = load i8, ptr %111, align 1, !tbaa !51
  %114 = or i8 %113, %112
  store i8 %114, ptr %110, align 1, !tbaa !51
  %115 = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 2 ; 2 uses
  %116 = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 2
  %117 = load i8, ptr %115, align 1, !tbaa !51
  %118 = load i8, ptr %116, align 1, !tbaa !51
  %119 = or i8 %118, %117
  store i8 %119, ptr %115, align 1, !tbaa !51
  %120 = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 3 ; 2 uses
  %121 = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 3
  %122 = load i8, ptr %120, align 1, !tbaa !51
  %123 = load i8, ptr %121, align 1, !tbaa !51
  %124 = or i8 %123, %122
  store i8 %124, ptr %120, align 1, !tbaa !51
  %125 = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 4
  %126 = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 4
  %127 = add nsw i32 %.05173.i.i, -4              ; 2 uses
  %.not66.i.i.3 = icmp eq i32 %127, 0
  br i1 %.not66.i.i.3, label %.thread.i.i, label %.lr.ph.i24.i, !llvm.loop !286

.thread.i.i:                                      ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i, %middle.block, %vec.epilog.middle.block, %81, %53
  store i32 0, ptr %57, align 8, !tbaa !107
  %128 = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i32 0, ptr %128, align 8, !tbaa !105
  %129 = load i32, ptr %14, align 8, !tbaa !104   ; 2 uses
  %130 = xor i32 %spec.select.i.i, -1
  %131 = add i32 %129, %130                       ; 2 uses
  %.not67.i.i = icmp eq i32 %131, 0
  br i1 %.not67.i.i, label %137, label %132

132:                                              ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %57, i64 24, i1 false), !tbaa.struct !287
  %133 = getelementptr inbounds nuw i8, ptr %57, i64 24
  %134 = zext i32 %131 to i64                     ; 2 uses
  %135 = mul nuw nsw i64 %134, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %57, ptr nonnull align 8 %133, i64 %135, i1 false)
  %136 = getelementptr inbounds nuw [24 x i8], ptr %57, i64 %134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %136, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !287
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.pre.i.i = load i32, ptr %14, align 8, !tbaa !104
  br label %137

137:                                              ; preds = %132, %.thread.i.i
  %138 = phi i32 [ %.pre.i.i, %132 ], [ %129, %.thread.i.i ]
  %139 = add i32 %138, -1                         ; 2 uses
  store i32 %139, ptr %14, align 8, !tbaa !104
  br label %ps_mask_table_merge.exit.thread.i

ps_mask_table_merge.exit.i:                       ; preds = %69
end_hunk_3
begin_hunk_4
  br label %ps_mask_table_merge_all.exit

ps_mask_table_test_intersect.exit.thread.i:       ; preds = %ps_mask_table_test_intersect.exit.i, %._crit_edge.i.i
  %140 = add i32 %.01639.i, -1                    ; 2 uses
  %141 = icmp ult i32 %140, %.01742.i
  br i1 %141, label %26, label %ps_mask_table_merge.exit.thread.i, !llvm.loop !289

ps_mask_table_merge.exit.thread.i:                ; preds = %ps_mask_table_test_intersect.exit.thread.i, %137, %ps_mask_table_test_intersect.exit.thread27.i, %17
  %142 = phi i32 [ %18, %ps_mask_table_test_intersect.exit.thread27.i ], [ %18, %17 ], [ %139, %137 ], [ %18, %ps_mask_table_test_intersect.exit.thread.i ] ; 2 uses
  %.017.i = add i32 %.01742.i, -1                 ; 2 uses
  %143 = icmp ult i32 %.017.i, %142
  br i1 %143, label %17, label %ps_mask_table_merge_all.exit, !llvm.loop !290

ps_mask_table_merge_all.exit:                     ; preds = %ps_mask_table_merge.exit.thread.i, %ps_dimension_end_mask.exit, %ps_mask_table_merge.exit.i
  %.2.i = phi i32 [ %77, %ps_mask_table_merge.exit.i ], [ 0, %ps_dimension_end_mask.exit ], [ 0, %ps_mask_table_merge.exit.thread.i ]
end_hunk_4
