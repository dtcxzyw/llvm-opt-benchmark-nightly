begin_hunk_0
  %i.x = ptrtoaddr ptr %i.w to i64                ; 2 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !13
  %i.y = load i32, ptr %i.r, align 4, !tbaa !97   ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 17 uses
  %i.aa = getelementptr [4 x i8], ptr %i.w, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !15
end_hunk_0
begin_hunk_1
  br i1 %i.bn, label %.preheader.preheader, label %._crit_edge223

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bo = mul nsw i64 %i.z, 36                    ; 2 uses
  %scevgep264 = getelementptr i8, ptr %i.w, i64 %i.bo
  %scevgep270 = getelementptr i8, ptr %i.w, i64 %i.bo
  %i.bp = mul nsw i64 %i.z, 12                    ; 2 uses
  %scevgep274 = getelementptr i8, ptr %i.w, i64 %i.bp
  %i.bq = mul nsw i64 %i.z, 24
  %scevgep276 = getelementptr i8, ptr %i.w, i64 %i.bq
  %i.br = add i64 %i.bp, %i.x
  %i.bs = shl nsw i64 %i.z, 4
  %i.bt = add i64 %i.bs, %i.x
  %diff.check = icmp ult i32 %i.y, 8
end_hunk_1
begin_hunk_2
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.v) #17 ; 11 uses
  store ptr %i.w, ptr %2, align 8, !tbaa !13
  %i.x = load i32, ptr %i.r, align 4, !tbaa !97   ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 21 uses
  %i.z = getelementptr [4 x i8], ptr %i.w, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !15
end_hunk_2
begin_hunk_3
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bm = mul nsw i64 %i.y, 36                    ; 2 uses
  %scevgep486 = getelementptr i8, ptr %i.w, i64 %i.bm
  %scevgep503 = getelementptr i8, ptr %i.w, i64 %i.bm
  %i.bn = mul nsw i64 %i.y, 12                    ; 2 uses
  %scevgep507 = getelementptr i8, ptr %i.w, i64 %i.bn
  %i.bo = mul nsw i64 %i.y, 24
  %scevgep509 = getelementptr i8, ptr %i.w, i64 %i.bo
  %i.bp = add i64 %i.bn, %i.bc
  %i.bq = shl nsw i64 %i.y, 4
  %i.br = add i64 %i.bq, %i.bc
  %i.bs = mul nsw i64 %i.y, 36                    ; 2 uses
  %scevgep577 = getelementptr i8, ptr %i.w, i64 %i.bs
  %scevgep598 = getelementptr i8, ptr %i.w, i64 %i.bs
  %i.bt = mul nsw i64 %i.y, 12                    ; 2 uses
  %scevgep602 = getelementptr i8, ptr %i.w, i64 %i.bt
  %i.bu = mul nsw i64 %i.y, 24
  %scevgep604 = getelementptr i8, ptr %i.w, i64 %i.bu
  %i.bv = add i64 %i.bt, %i.bc
  %i.bw = shl nsw i64 %i.y, 4
  %i.bx = add i64 %i.bw, %i.bc
  %diff.check652 = icmp ult i32 %i.x, 8
end_hunk_3
