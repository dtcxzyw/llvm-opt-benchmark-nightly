inline.NumInlined: 579
inline.NumDeleted: 127
begin_hunk_0_@datetime_time_isoformat
define internal ptr @datetime_time_isoformat(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [1 x ptr], align 8                ; 3 uses
  %i.d = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
end_hunk_0
begin_hunk_1_@datetime_time_isoformat:bb.a
  %i.bi = getelementptr i8, ptr %0, i64 27
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !35
  %i.bk = zext i8 %i.bj to i32
  %i.bl = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef %i.bc, i32 noundef %i.be, i32 noundef %i.bh, i32 noundef %i.bk, i32 noundef %.02130.i) #16 ; 4 uses
  store ptr %i.bl, ptr %i.b, align 8, !tbaa !43
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %datetime_time_isoformat_impl.exit, label %bb.n
end_hunk_1
begin_hunk_2_@datetime_time_isoformat:bb.a
  br i1 %i.bt, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %4 = load ptr, ptr %i.b, align 8, !tbaa !43     ; 3 uses
  %i.bu = load i32, ptr %4, align 8, !tbaa !35    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bu, -1
  br i1 %.not.i.i, label %bb.r, label %datetime_time_isoformat_impl.exit

bb.r:                                             ; preds = %bb.q
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %4, align 8, !tbaa !35
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.s, label %datetime_time_isoformat_impl.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %4) #16
  br label %datetime_time_isoformat_impl.exit

bb.t:                                             ; preds = %bb.p
end_hunk_2
begin_hunk_3_@datetime_datetime_isoformat
define internal ptr @datetime_datetime_isoformat(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [2 x ptr], align 16               ; 3 uses
  %i.d = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
end_hunk_3
begin_hunk_4_@datetime_datetime_isoformat:bb.a
  %i.cu = getelementptr i8, ptr %0, i64 31
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !35
  %i.cw = zext i8 %i.cv to i32
  %i.cx = call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef %i.ca, i32 noundef %i.ch, i32 noundef %i.ck, i32 noundef %i.cn, i32 noundef %.1, i32 noundef %i.cq, i32 noundef %i.ct, i32 noundef %i.cw, i32 noundef %.02635.i) #16 ; 3 uses
  store ptr %i.cx, ptr %i.b, align 8, !tbaa !43
  %.not.i = icmp eq ptr %i.cx, null
  br i1 %.not.i, label %datetime_datetime_isoformat_impl.exit, label %bb.ac
end_hunk_4
begin_hunk_5_@datetime_datetime_isoformat:bb.a
  br i1 %i.dd, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %4 = load ptr, ptr %i.b, align 8, !tbaa !43     ; 3 uses
  %i.de = load i32, ptr %4, align 8, !tbaa !35    ; 2 uses
  %.not.i.i = icmp sgt i32 %i.de, -1
  br i1 %.not.i.i, label %bb.af, label %datetime_datetime_isoformat_impl.exit

bb.af:                                            ; preds = %bb.ae
  %i.df = add nsw i32 %i.de, -1                   ; 2 uses
  store i32 %i.df, ptr %4, align 8, !tbaa !35
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.ag, label %datetime_datetime_isoformat_impl.exit

bb.ag:                                            ; preds = %bb.af
  call void @_Py_Dealloc(ptr noundef nonnull %4) #16
  br label %datetime_datetime_isoformat_impl.exit

bb.ah:                                            ; preds = %bb.ad
end_hunk_5
