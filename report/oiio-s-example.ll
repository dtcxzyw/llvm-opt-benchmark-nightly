begin_hunk_0
  %37 = load i32, ptr %36, align 8, !tbaa !81     ; [#uses=1 type=i32]
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 148 ; [#uses=1 type=ptr]
  %39 = load i32, ptr %38, align 4, !tbaa !82     ; [#uses=1 type=i32]
  %40 = mul i32 %39, %37                          ; [#uses=1 type=i32]
  %.fr65 = freeze i32 %40                         ; [#uses=7 type=i32]
  %41 = load i32, ptr %30, align 8, !tbaa !80     ; [#uses=1 type=i32]
  %42 = icmp eq i32 %41, 12                       ; [#uses=2 type=i1]
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; [#uses=1 type=ptr]
  %44 = load ptr, ptr %43, align 8, !tbaa !83     ; [#uses=1 type=ptr]
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 16 ; [#uses=1 type=ptr]
  %46 = load ptr, ptr %45, align 8, !tbaa !44     ; [#uses=1 type=ptr]
  %47 = call ptr %46(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %.fr65, i32 noundef 1) #11 ; [#uses=5 type=ptr]
  %. = select i1 %42, ptr %47, ptr null           ; [#uses=2 type=ptr]
  %.73 = select i1 %42, ptr null, ptr %47         ; [#uses=1 type=ptr]
  %48 = load i32, ptr %30, align 8, !tbaa !80     ; [#uses=1 type=i32]
end_hunk_0
begin_hunk_1
  br i1 %54, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader60
  %55 = sext i32 %.fr65 to i64                    ; [#uses=1 type=i64]
  br label %81

.preheader:                                       ; preds = %24
  br i1 %54, label %.lr.ph64, label %.loopexit

.lr.ph64:                                         ; preds = %.preheader
  %56 = icmp sgt i32 %.fr65, 0                    ; [#uses=1 type=i1]
  %57 = sext i32 %.fr65 to i64                    ; [#uses=1 type=i64]
  %58 = shl nsw i64 %57, 1                        ; [#uses=2 type=i64]
  br i1 %56, label %.lr.ph63.us.preheader, label %.lr.ph64.split

.lr.ph63.us.preheader:                            ; preds = %.lr.ph64
  %wide.trip.count = zext nneg i32 %.fr65 to i64  ; [#uses=6 type=i64]
  %min.iters.check = icmp ult i32 %.fr65, 4       ; [#uses=1 type=i1]
  %min.iters.check3 = icmp ult i32 %.fr65, 16     ; [#uses=1 type=i1]
  %n.mod.vf = and i64 %wide.trip.count, 12        ; [#uses=1 type=i64]
  %n.vec = and i64 %wide.trip.count, 2147483632   ; [#uses=4 type=i64]
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count   ; [#uses=1 type=i1]
end_hunk_1
