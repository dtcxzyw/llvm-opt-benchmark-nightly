begin_hunk_0
inline.NumInlined: 100
inline.NumDeleted: 51
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
  br label %17

17:                                               ; preds = %ps_mask_table_merge.exit.thread.i, %.lr.ph43.i
  %18 = phi i32 [ %15, %.lr.ph43.i ], [ %145, %ps_mask_table_merge.exit.thread.i ] ; 4 uses
  %.01742.i = phi i32 [ %.01740.i, %.lr.ph43.i ], [ %.017.i, %ps_mask_table_merge.exit.thread.i ] ; 7 uses
  %.017.in41.i = phi i32 [ %15, %.lr.ph43.i ], [ %.01742.i, %ps_mask_table_merge.exit.thread.i ]
  %19 = add i32 %.017.in41.i, -2                  ; 2 uses
end_hunk_1
begin_hunk_2
  br label %26

26:                                               ; preds = %ps_mask_table_test_intersect.exit.thread.i, %.lr.ph.i
  %.01639.i = phi i32 [ %19, %.lr.ph.i ], [ %143, %ps_mask_table_test_intersect.exit.thread.i ] ; 4 uses
  %27 = zext i32 %.01639.i to i64
  %28 = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %27 ; 2 uses
  %29 = getelementptr inbounds nuw i8, ptr %28, i64 8
end_hunk_2
begin_hunk_3
vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %86, 28
  %n.vec = and i64 %86, 536870880                 ; 6 uses
  %89 = getelementptr i8, ptr %83, i64 %n.vec
  %90 = getelementptr i8, ptr %85, i64 %n.vec
  %.cast = trunc nuw nsw i64 %n.vec to i32
  %91 = sub nsw i32 %.pre-phi78.i.i, %.cast
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %83, i64 %index ; 3 uses
  %next.gep40 = getelementptr i8, ptr %85, i64 %index ; 2 uses
  %92 = getelementptr i8, ptr %next.gep, i64 16   ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %wide.load41 = load <16 x i8>, ptr %92, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %93 = getelementptr i8, ptr %next.gep40, i64 16
  %wide.load42 = load <16 x i8>, ptr %next.gep40, align 1, !tbaa !51, !alias.scope !280
  %wide.load43 = load <16 x i8>, ptr %93, align 1, !tbaa !51, !alias.scope !280
  %94 = or <16 x i8> %wide.load42, %wide.load
  %95 = or <16 x i8> %wide.load43, %wide.load41
  store <16 x i8> %94, ptr %next.gep, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  store <16 x i8> %95, ptr %92, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %96 = icmp eq i64 %index.next, %n.vec
  br i1 %96, label %middle.block, label %vector.body, !llvm.loop !282

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %86
  br i1 %cmp.n, label %.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i24.i.preheader, label %vec.epilog.ph, !prof !283

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec47 = and i64 %86, 536870908               ; 5 uses
  %97 = getelementptr i8, ptr %83, i64 %n.vec47
  %98 = getelementptr i8, ptr %85, i64 %n.vec47
  %.cast48 = trunc nuw nsw i64 %n.vec47 to i32
  %99 = sub nsw i32 %.pre-phi78.i.i, %.cast48
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index49 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 3 uses
  %next.gep50 = getelementptr i8, ptr %83, i64 %index49 ; 2 uses
  %next.gep51 = getelementptr i8, ptr %85, i64 %index49
  %wide.load52 = load <4 x i8>, ptr %next.gep50, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %wide.load53 = load <4 x i8>, ptr %next.gep51, align 1, !tbaa !51, !alias.scope !280
  %100 = or <4 x i8> %wide.load53, %wide.load52
  store <4 x i8> %100, ptr %next.gep50, align 1, !tbaa !51, !alias.scope !277, !noalias !280
  %index.next54 = add nuw i64 %index49, 4         ; 2 uses
  %101 = icmp eq i64 %index.next54, %n.vec47
  br i1 %101, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !284

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %n.vec47, %86
  br i1 %cmp.n55, label %.thread.i.i, label %.lr.ph.i24.i.preheader

.lr.ph.i24.i.preheader:                           ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04975.i.i.ph = phi ptr [ %83, %iter.check ], [ %83, %vector.memcheck ], [ %89, %vec.epilog.iter.check ], [ %97, %vec.epilog.middle.block ] ; 2 uses
  %.05074.i.i.ph = phi ptr [ %85, %iter.check ], [ %85, %vector.memcheck ], [ %90, %vec.epilog.iter.check ], [ %98, %vec.epilog.middle.block ] ; 2 uses
  %.05173.i.i.ph = phi i32 [ %.pre-phi78.i.i, %iter.check ], [ %.pre-phi78.i.i, %vector.memcheck ], [ %91, %vec.epilog.iter.check ], [ %99, %vec.epilog.middle.block ] ; 4 uses
  %102 = add nsw i32 %.05173.i.i.ph, -1
  %xtraiter = and i32 %.05173.i.i.ph, 3           ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol

.lr.ph.i24.i.prol:                                ; preds = %.lr.ph.i24.i.preheader, %.lr.ph.i24.i.prol
  %.04975.i.i.prol = phi ptr [ %106, %.lr.ph.i24.i.prol ], [ %.04975.i.i.ph, %.lr.ph.i24.i.preheader ] ; 3 uses
  %.05074.i.i.prol = phi ptr [ %107, %.lr.ph.i24.i.prol ], [ %.05074.i.i.ph, %.lr.ph.i24.i.preheader ] ; 2 uses
  %.05173.i.i.prol = phi i32 [ %108, %.lr.ph.i24.i.prol ], [ %.05173.i.i.ph, %.lr.ph.i24.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i24.i.prol ], [ 0, %.lr.ph.i24.i.preheader ]
  %103 = load i8, ptr %.04975.i.i.prol, align 1, !tbaa !51
  %104 = load i8, ptr %.05074.i.i.prol, align 1, !tbaa !51
  %105 = or i8 %104, %103
  store i8 %105, ptr %.04975.i.i.prol, align 1, !tbaa !51
  %106 = getelementptr inbounds nuw i8, ptr %.04975.i.i.prol, i64 1 ; 2 uses
  %107 = getelementptr inbounds nuw i8, ptr %.05074.i.i.prol, i64 1 ; 2 uses
  %108 = add nsw i32 %.05173.i.i.prol, -1         ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i24.i.prol.loopexit, label %.lr.ph.i24.i.prol, !llvm.loop !285

.lr.ph.i24.i.prol.loopexit:                       ; preds = %.lr.ph.i24.i.prol, %.lr.ph.i24.i.preheader
  %.04975.i.i.unr = phi ptr [ %.04975.i.i.ph, %.lr.ph.i24.i.preheader ], [ %106, %.lr.ph.i24.i.prol ]
  %.05074.i.i.unr = phi ptr [ %.05074.i.i.ph, %.lr.ph.i24.i.preheader ], [ %107, %.lr.ph.i24.i.prol ]
  %.05173.i.i.unr = phi i32 [ %.05173.i.i.ph, %.lr.ph.i24.i.preheader ], [ %108, %.lr.ph.i24.i.prol ]
  %109 = icmp ult i32 %102, 3
  br i1 %109, label %.thread.i.i, label %.lr.ph.i24.i

.lr.ph.i24.i:                                     ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i
  %.04975.i.i = phi ptr [ %128, %.lr.ph.i24.i ], [ %.04975.i.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 6 uses
  %.05074.i.i = phi ptr [ %129, %.lr.ph.i24.i ], [ %.05074.i.i.unr, %.lr.ph.i24.i.prol.loopexit ] ; 5 uses
  %.05173.i.i = phi i32 [ %130, %.lr.ph.i24.i ], [ %.05173.i.i.unr, %.lr.ph.i24.i.prol.loopexit ]
  %110 = load i8, ptr %.04975.i.i, align 1, !tbaa !51
  %111 = load i8, ptr %.05074.i.i, align 1, !tbaa !51
  %112 = or i8 %111, %110
  store i8 %112, ptr %.04975.i.i, align 1, !tbaa !51
  %113 = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 1 ; 2 uses
  %114 = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 1
  %115 = load i8, ptr %113, align 1, !tbaa !51
  %116 = load i8, ptr %114, align 1, !tbaa !51
  %117 = or i8 %116, %115
  store i8 %117, ptr %113, align 1, !tbaa !51
  %118 = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 2 ; 2 uses
  %119 = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 2
  %120 = load i8, ptr %118, align 1, !tbaa !51
  %121 = load i8, ptr %119, align 1, !tbaa !51
  %122 = or i8 %121, %120
  store i8 %122, ptr %118, align 1, !tbaa !51
  %123 = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 3 ; 2 uses
  %124 = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 3
  %125 = load i8, ptr %123, align 1, !tbaa !51
  %126 = load i8, ptr %124, align 1, !tbaa !51
  %127 = or i8 %126, %125
  store i8 %127, ptr %123, align 1, !tbaa !51
  %128 = getelementptr inbounds nuw i8, ptr %.04975.i.i, i64 4
  %129 = getelementptr inbounds nuw i8, ptr %.05074.i.i, i64 4
  %130 = add nsw i32 %.05173.i.i, -4              ; 2 uses
  %.not66.i.i.3 = icmp eq i32 %130, 0
  br i1 %.not66.i.i.3, label %.thread.i.i, label %.lr.ph.i24.i, !llvm.loop !286

.thread.i.i:                                      ; preds = %.lr.ph.i24.i.prol.loopexit, %.lr.ph.i24.i, %middle.block, %vec.epilog.middle.block, %81, %53
  store i32 0, ptr %57, align 8, !tbaa !107
  %131 = getelementptr inbounds nuw i8, ptr %57, i64 16
  store i32 0, ptr %131, align 8, !tbaa !105
  %132 = load i32, ptr %14, align 8, !tbaa !104   ; 2 uses
  %133 = xor i32 %spec.select.i.i, -1
  %134 = add i32 %132, %133                       ; 2 uses
  %.not67.i.i = icmp eq i32 %134, 0
  br i1 %.not67.i.i, label %140, label %135

135:                                              ; preds = %.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %57, i64 24, i1 false), !tbaa.struct !287
  %136 = getelementptr inbounds nuw i8, ptr %57, i64 24
  %137 = zext i32 %134 to i64                     ; 2 uses
  %138 = mul nuw nsw i64 %137, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %57, ptr nonnull align 8 %136, i64 %138, i1 false)
  %139 = getelementptr inbounds nuw [24 x i8], ptr %57, i64 %137
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %139, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !287
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.pre.i.i = load i32, ptr %14, align 8, !tbaa !104
  br label %140

140:                                              ; preds = %135, %.thread.i.i
  %141 = phi i32 [ %.pre.i.i, %135 ], [ %132, %.thread.i.i ]
  %142 = add i32 %141, -1                         ; 2 uses
  store i32 %142, ptr %14, align 8, !tbaa !104
  br label %ps_mask_table_merge.exit.thread.i

ps_mask_table_merge.exit.i:                       ; preds = %69
end_hunk_3
begin_hunk_4
  br label %ps_mask_table_merge_all.exit

ps_mask_table_test_intersect.exit.thread.i:       ; preds = %ps_mask_table_test_intersect.exit.i, %._crit_edge.i.i
  %143 = add i32 %.01639.i, -1                    ; 2 uses
  %144 = icmp ult i32 %143, %.01742.i
  br i1 %144, label %26, label %ps_mask_table_merge.exit.thread.i, !llvm.loop !289

ps_mask_table_merge.exit.thread.i:                ; preds = %ps_mask_table_test_intersect.exit.thread.i, %140, %ps_mask_table_test_intersect.exit.thread27.i, %17
  %145 = phi i32 [ %18, %ps_mask_table_test_intersect.exit.thread27.i ], [ %18, %17 ], [ %142, %140 ], [ %18, %ps_mask_table_test_intersect.exit.thread.i ] ; 2 uses
  %.017.i = add i32 %.01742.i, -1                 ; 2 uses
  %146 = icmp ult i32 %.017.i, %145
  br i1 %146, label %17, label %ps_mask_table_merge_all.exit, !llvm.loop !290

ps_mask_table_merge_all.exit:                     ; preds = %ps_mask_table_merge.exit.thread.i, %ps_dimension_end_mask.exit, %ps_mask_table_merge.exit.i
  %.2.i = phi i32 [ %77, %ps_mask_table_merge.exit.i ], [ 0, %ps_dimension_end_mask.exit ], [ 0, %ps_mask_table_merge.exit.thread.i ]
end_hunk_4
