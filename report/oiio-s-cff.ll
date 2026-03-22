begin_hunk_0
  br label %184

184:                                              ; preds = %175, %181
  %.sink583 = phi i64 [ %183, %181 ], [ %180, %175 ] ; [#uses=1 type=i64]
  %spec.select431 = call i64 @llvm.abs.i64(i64 %.sink583, i1 true) ; [#uses=8 type=i64]
  %.not427 = icmp eq i64 %spec.select431, 65536   ; [#uses=1 type=i1]
  br i1 %.not427, label %._crit_edge522, label %185

end_hunk_0
begin_hunk_1
  br i1 %.not403501, label %cff_index_get_sid_string.exit434.thread, label %.lr.ph484

.lr.ph484:                                        ; preds = %.preheader, %.outer.backedge
  %317 = phi i8 [ %321, %.outer.backedge ], [ %316, %.preheader ] ; [#uses=1 type=i8]
  %.0334.ph505 = phi ptr [ %.0334.ph.be, %.outer.backedge ], [ %313, %.preheader ] ; [#uses=5 type=ptr]
  %.0335.ph502 = phi ptr [ %.0335.ph.be, %.outer.backedge ], [ %.0.i433, %.preheader ] ; [#uses=2 type=ptr]
  %.fr = freeze i8 %317                           ; [#uses=3 type=i8]
  %318 = load i8, ptr %.0334.ph505, align 1, !tbaa !164 ; [#uses=2 type=i8]
  %319 = icmp eq i8 %.fr, %318                    ; [#uses=2 type=i1]
  switch i8 %.fr, label %.lr.ph484.split.split [
    i8 32, label %.lr.ph484.split.us
    i8 45, label %.lr.ph484.split.us
  ]
end_hunk_1
begin_hunk_2
323:                                              ; preds = %.lr.ph500, %.lr.ph500
  %324 = getelementptr inbounds nuw i8, ptr %.0334483499, i64 1 ; [#uses=3 type=ptr]
  %325 = load i8, ptr %324, align 1, !tbaa !164   ; [#uses=2 type=i8]
  %326 = icmp eq i8 %.fr, %325                    ; [#uses=1 type=i1]
  br i1 %326, label %.split.us, label %.lr.ph500

.split493.us:                                     ; preds = %.lr.ph500
end_hunk_2
begin_hunk_3
  br label %355

355:                                              ; preds = %cff_index_get_sid_string.exit434.thread, %352
  %.sink584 = phi ptr [ %354, %cff_index_get_sid_string.exit434.thread ], [ %327, %352 ] ; [#uses=1 type=ptr]
  %356 = getelementptr inbounds nuw i8, ptr %1, i64 48 ; [#uses=1 type=ptr]
  store ptr %.sink584, ptr %356, align 8, !tbaa !167
  %spec.select = select i1 %.not379.not, i32 2073, i32 2065 ; [#uses=2 type=i32]
  %357 = getelementptr inbounds nuw i8, ptr %64, i64 1664 ; [#uses=1 type=ptr]
  %358 = load i8, ptr %357, align 8, !tbaa !168   ; [#uses=1 type=i8]
end_hunk_3
begin_hunk_4
  br label %460

460:                                              ; preds = %452, %458, %459
  %.sink587 = phi i16 [ 1, %458 ], [ 2, %459 ], [ 0, %452 ] ; [#uses=1 type=i16]
  %.sink586 = phi i32 [ 1094992453, %458 ], [ 1094992451, %459 ], [ 1094995778, %452 ] ; [#uses=1 type=i32]
  store i16 %.sink587, ptr %456, align 2, !tbaa !176
  store i32 %.sink586, ptr %457, align 8, !tbaa !179
  %461 = call i32 @FT_CMap_New(ptr noundef nonnull @cff_cmap_encoding_class_rec, ptr noundef null, ptr noundef nonnull %11, ptr noundef null) #21 ; [#uses=1 type=i32]
  store i32 %461, ptr %10, align 4, !tbaa !3
  br label %462
end_hunk_4
begin_hunk_5
  %215 = getelementptr inbounds nuw i8, ptr %.val.i, i64 2 ; [#uses=1 type=ptr]
  %216 = load i8, ptr %215, align 1, !tbaa !164   ; [#uses=1 type=i8]
  %217 = zext i8 %216 to i16                      ; [#uses=1 type=i16]
  %218 = or disjoint i16 %214, %217               ; [#uses=1 type=i16]
  %.fr.i = freeze i16 %218                        ; [#uses=2 type=i16]
  %219 = sext i16 %.fr.i to i64                   ; [#uses=1 type=i64]
  %220 = icmp eq i16 %.fr.i, -32768               ; [#uses=1 type=i1]
  %221 = shl nsw i64 %219, 16                     ; [#uses=1 type=i64]
  %spec.select.i = select i1 %220, i64 -2147483647, i64 %221 ; [#uses=1 type=i64]
  br label %do_fixed.exit.i
end_hunk_5
begin_hunk_6
  %13 = add i8 %12, -91                           ; [#uses=1 type=i8]
  %or.cond = icmp ult i8 %13, -26                 ; [#uses=1 type=i1]
  %14 = load i8, ptr %5, align 1, !tbaa !164      ; [#uses=1 type=i8]
  %.fr49 = freeze i8 %14                          ; [#uses=1 type=i8]
  %15 = add i8 %.fr49, -91                        ; [#uses=1 type=i8]
  %or.cond.1 = icmp ult i8 %15, -26               ; [#uses=1 type=i1]
  %16 = load <4 x i8>, ptr %6, align 1, !tbaa !164 ; [#uses=1 type=<4 x i8>]
  %.fr48 = freeze <4 x i8> %16                    ; [#uses=1 type=<4 x i8>]
  %17 = add <4 x i8> %.fr48, splat (i8 -91)       ; [#uses=1 type=<4 x i8>]
  %18 = icmp ult <4 x i8> %17, splat (i8 -26)     ; [#uses=1 type=<4 x i1>]
  %19 = bitcast <4 x i1> %18 to i4                ; [#uses=1 type=i4]
  %20 = icmp ne i4 %19, 0                         ; [#uses=1 type=i1]
  %op.rdx = or i1 %20, %or.cond.1                 ; [#uses=1 type=i1]
  %op.rdx47 = select i1 %op.rdx, i1 true, i1 %or.cond ; [#uses=1 type=i1]
  br i1 %op.rdx47, label %._crit_edge45, label %.preheader

end_hunk_6
begin_hunk_7
  %54 = icmp samesign ult i32 %52, %53            ; [#uses=1 type=i1]
  %55 = xor i16 %38, -1                           ; [#uses=1 type=i16]
  %56 = zext i16 %55 to i32                       ; [#uses=1 type=i32]
  %.180 = select i1 %54, i32 %56, i32 %.079       ; [#uses=1 type=i32]
  %.180.fr = freeze i32 %.180                     ; [#uses=2 type=i32]
  %57 = icmp ult i32 %.182118, %1                 ; [#uses=1 type=i1]
  br i1 %57, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %51
  %58 = load ptr, ptr %23, align 8, !tbaa !64     ; [#uses=2 type=ptr]
  %59 = zext i32 %.182118 to i64                  ; [#uses=4 type=i64]
  %60 = zext i32 %.180.fr to i64                  ; [#uses=1 type=i64]
  %61 = xor i64 %59, -1                           ; [#uses=1 type=i64]
  %62 = add nsw i64 %61, %21                      ; [#uses=1 type=i64]
  %umin = call i64 @llvm.umin.i64(i64 %60, i64 %62) ; [#uses=2 type=i64]
end_hunk_7
begin_hunk_8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %63, 8589934576                ; [#uses=5 type=i64]
  %64 = add nuw nsw i64 %n.vec, %59               ; [#uses=2 type=i64]
  %65 = trunc i64 %n.vec to i32                   ; [#uses=1 type=i32]
  %.cast = trunc i64 %n.vec to i16                ; [#uses=1 type=i16]
  %66 = add i16 %38, %.cast                       ; [#uses=1 type=i16]
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %38, i64 0 ; [#uses=1 type=<8 x i16>]
end_hunk_8
begin_hunk_9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; [#uses=3 type=i64]
  %71 = add i16 %.083114, 1                       ; [#uses=1 type=i16]
  %72 = icmp samesign ult i64 %indvars.iv.next, %21 ; [#uses=1 type=i1]
  %73 = icmp samesign ult i32 %.078116, %.180.fr  ; [#uses=1 type=i1]
  %74 = select i1 %72, i1 %73, i1 false           ; [#uses=1 type=i1]
  br i1 %74, label %scalar.ph, label %.loopexit.loopexit, !llvm.loop !611

end_hunk_9
