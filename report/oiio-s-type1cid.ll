begin_hunk_0
  %191 = getelementptr inbounds nuw i8, ptr %165, i64 1 ; [#uses=3 type=ptr]
  %192 = ptrtoint ptr %183 to i64                 ; [#uses=1 type=i64]
  %193 = ptrtoint ptr %191 to i64                 ; [#uses=1 type=i64]
  %194 = sub i64 %192, %193                       ; [#uses=1 type=i64]
  %.fr.i.i = freeze i64 %194                      ; [#uses=2 type=i64]
  %195 = trunc i64 %.fr.i.i to i32                ; [#uses=2 type=i32]
  %196 = add i32 %195, -1                         ; [#uses=1 type=i32]
  %or.cond.i91.i = icmp ult i32 %196, 21          ; [#uses=1 type=i1]
  br i1 %or.cond.i91.i, label %.preheader154.i.i, label %.thread123.i.i.backedge

.preheader154.i.i:                                ; preds = %190
  %197 = load i8, ptr %191, align 1, !tbaa !68    ; [#uses=2 type=i8]
  %198 = and i64 %.fr.i.i, 4294967295             ; [#uses=3 type=i64]
  %199 = icmp samesign ugt i32 %195, 1            ; [#uses=1 type=i1]
  br i1 %199, label %.preheader154.split.us.i.i, label %.preheader154.split.i.i

end_hunk_0
begin_hunk_1

206:                                              ; preds = %.preheader.us.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; [#uses=2 type=i64]
  %exitcond171.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %198 ; [#uses=1 type=i1]
  br i1 %exitcond171.not.i.i, label %._crit_edge159.split.us.i.i, label %.preheader.us.i.i, !llvm.loop !90

.preheader.us.i.i:                                ; preds = %203, %206
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %206 ], [ 1, %203 ] ; [#uses=3 type=i64]
end_hunk_1
