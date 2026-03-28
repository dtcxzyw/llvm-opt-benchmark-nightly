begin_hunk_0

bb.d:                                             ; preds = %.thread, %bb.c
  %.0177220 = phi i32 [ %i.k, %.thread ], [ %1, %bb.c ] ; 2 uses
  %3 = add nuw i32 %.0.copyload.i, 2147483647
  %4 = and i32 %3, 2147483647
  %i.w = and i32 %.0.copyload.i, 7                ; 2 uses
  %.not181 = icmp eq i32 %i.w, 0
  br i1 %.not181, label %.loopexit221, label %.preheader
end_hunk_0
begin_hunk_1
.loopexit221:                                     ; preds = %.preheader, %bb.d
  %.2179 = phi i32 [ %.0177220, %bb.d ], [ %i.ab, %.preheader ] ; 2 uses
  %.1 = phi i32 [ %.0.copyload.i208, %bb.d ], [ %i.ac, %.preheader ]
  %i.ae = icmp samesign ult i32 %4, 7
  br i1 %i.ae, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.loopexit221
end_hunk_1
