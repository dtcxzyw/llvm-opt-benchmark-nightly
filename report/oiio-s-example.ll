begin_hunk_0
  %37 = load i32, ptr %36, align 8, !tbaa !81
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 148
  %39 = load i32, ptr %38, align 4, !tbaa !82
  %40 = mul i32 %39, %37                          ; 7 uses
  %41 = load i32, ptr %30, align 8, !tbaa !80
  %42 = icmp eq i32 %41, 12                       ; 2 uses
  %43 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %44 = load ptr, ptr %43, align 8, !tbaa !83
  %45 = getelementptr inbounds nuw i8, ptr %44, i64 16
  %46 = load ptr, ptr %45, align 8, !tbaa !44
  %47 = call ptr %46(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %40, i32 noundef 1) #11 ; 5 uses
  %. = select i1 %42, ptr %47, ptr null           ; 2 uses
  %.73 = select i1 %42, ptr null, ptr %47
  %48 = load i32, ptr %30, align 8, !tbaa !80
end_hunk_0
begin_hunk_1
  br i1 %54, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader60
  %55 = sext i32 %40 to i64
  br label %81

.preheader:                                       ; preds = %24
  br i1 %54, label %.lr.ph64, label %.loopexit

.lr.ph64:                                         ; preds = %.preheader
  %56 = icmp sgt i32 %40, 0
  %57 = sext i32 %40 to i64
  %58 = shl nsw i64 %57, 1                        ; 2 uses
  br i1 %56, label %.lr.ph63.us.preheader, label %.lr.ph64.split

.lr.ph63.us.preheader:                            ; preds = %.lr.ph64
  %wide.trip.count = zext nneg i32 %40 to i64     ; 6 uses
  %min.iters.check = icmp ult i32 %40, 4
  %min.iters.check3 = icmp ult i32 %40, 16
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
end_hunk_1
