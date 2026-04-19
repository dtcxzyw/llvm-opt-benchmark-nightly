inline.NumInlined: 103
inline.NumDeleted: 34
begin_hunk_0_@__redisAsyncCommand:bb.a
  br label %bb.au

.preheader202:                                    ; preds = %.preheader202.outer, %.loopexit201
  %.sroa.15.0 = phi ptr [ %i.ka, %.loopexit201 ], [ %.sroa.15.0.ph, %.preheader202.outer ]
  %.sroa.5.0 = phi i32 [ %.sroa.5.2, %.loopexit201 ], [ %.sroa.5.0.ph, %.preheader202.outer ] ; 2 uses
  %.sroa.11149.0 = phi i1 [ false, %.loopexit201 ], [ %.sroa.11149.0.ph, %.preheader202.outer ]
  br i1 %.sroa.11149.0, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %.preheader202
end_hunk_0
begin_hunk_1_@__redisAsyncCommand:bb.a
  br label %.loopexit201

.loopexit201:                                     ; preds = %.loopexit201.loopexit, %bb.bk
  %.sroa.5.2 = phi i32 [ %.sroa.5.1, %bb.bk ], [ %i.jy, %.loopexit201.loopexit ] ; 2 uses
  %.sroa.11149.1 = phi ptr [ %storemerge.in.peel.i.sroa.speculated, %bb.bk ], [ %storemerge.i125, %.loopexit201.loopexit ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.11149.1, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !36 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.11149.1, i64 8
end_hunk_1
begin_hunk_2_@__redisAsyncCommand:bb.a
  br label %.preheader202.outer

.preheader202.outer:                              ; preds = %bb.at, %bb.bm
  %.sroa.15.0.ph = phi ptr [ %i.ka, %bb.bm ], [ null, %bb.at ]
  %.sroa.5.0.ph = phi i32 [ %.sroa.5.2, %bb.bm ], [ -1, %bb.at ]
  %.sroa.11149.0.ph = phi i1 [ false, %bb.bm ], [ true, %bb.at ]
  %.not84 = phi i1 [ true, %bb.bm ], [ false, %bb.at ]
  br label %.preheader202

end_hunk_2
