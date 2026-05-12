inline.NumInlined: 67
inline.NumDeleted: 3
begin_hunk_0_@quicklistDup:bb.a
; Function Attrs: nounwind uwtable
define dso_local void @quicklistRotate(ptr noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
end_hunk_0
begin_hunk_1_@quicklistRotate:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !15
  %i.u = tail call ptr @lpSeek(ptr noundef %i.t, i64 noundef -1) #22 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
end_hunk_1
begin_hunk_2_@quicklistRotate:bb.a
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15
  %i.ao = call ptr @lpSeek(ptr noundef %i.an, i64 noundef -1) #22
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !36
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ap = load ptr, ptr %i.h, align 8, !tbaa !21  ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 8
end_hunk_2
begin_hunk_3_@quicklistRotate:bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %1 = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ay = call ptr @lpDelete(ptr noundef %1, ptr noundef %i.ax, ptr noundef nonnull %i.a) #22 ; 2 uses
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !15
  %i.az = call i64 @lpBytes(ptr noundef %i.ay) #22 ; 2 uses
  store i64 %i.az, ptr %i.au, align 8, !tbaa !20
end_hunk_3
begin_hunk_4_@ll2string
; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @quicklistPopCustom(ptr noundef captures(none) %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4, ptr noundef readonly captures(none) %5) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
end_hunk_4
begin_hunk_5_@quicklistPopCustom:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !15
  %i.aa = sext i1 %i.d to i64
  %i.ab = tail call ptr @lpSeek(ptr noundef %i.z, i64 noundef %i.aa) #22 ; 2 uses
  store ptr %i.ab, ptr %i.a, align 8, !tbaa !36
  %i.ac = call ptr @lpGetValue(ptr noundef %i.ab, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #22 ; 2 uses
  %.not57 = icmp eq ptr %i.ac, null
end_hunk_5
begin_hunk_6_@quicklistPopCustom:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !20
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !15
  %6 = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.ap = call ptr @lpDelete(ptr noundef %i.ao, ptr noundef %6, ptr noundef nonnull %i.a) #22 ; 2 uses
  store ptr %i.ap, ptr %i.y, align 8, !tbaa !15
  %i.aq = call i64 @lpBytes(ptr noundef %i.ap) #22 ; 2 uses
  store i64 %i.aq, ptr %i.am, align 8, !tbaa !20
end_hunk_6
