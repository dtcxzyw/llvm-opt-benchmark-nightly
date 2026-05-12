inline.NumInlined: 264
inline.NumDeleted: 16
begin_hunk_0_@rdbReportError:bb.a
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.s = phi ptr [ %i.p, %bb.h ], [ %.pre, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr @.str.2, ptr %i.b, align 16, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !64
  %i.u = call i32 @anetIsFifo(ptr noundef %i.s) #20
  %.not8 = icmp eq i32 %i.u, 0
end_hunk_0
begin_hunk_1_@rdbReportError:bb.a
  br label %bb.q

bb.k:                                             ; preds = %bb.j
  %4 = load ptr, ptr %i.t, align 8, !tbaa !64
  call void (ptr, ...) @rdbCheckError(ptr noundef nonnull @.str.3, ptr noundef %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.s

end_hunk_1
begin_hunk_2_@rdbLoadMillisecondTime:bb.a
; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 10) i32 @rdbSaveLen(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca [2 x i8], align 1                 ; 14 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !76
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.d = icmp ult i64 %1, 64
  br i1 %i.d, label %bb.b, label %bb.g
end_hunk_2
begin_hunk_3_@rdbSaveLen:bb.a
  %i.bg = add i64 %i.bf, 1
  store i64 %i.bg, ptr %i.ay, align 8, !tbaa !71
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %2 = load i64, ptr %i.a, align 8, !tbaa !76
  %i.bh = trunc i64 %2 to i32
  %i.bi = call noundef i32 @llvm.bswap.i32(i32 %i.bh)
  store i32 %i.bi, ptr %i.c, align 4, !tbaa !9
  %i.bj = load i64, ptr %i.as, align 8, !tbaa !65
end_hunk_3
begin_hunk_4_@rdbSaveLen:bb.a
  %i.cl = load i64, ptr %i.ce, align 8, !tbaa !71
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %i.ce, align 8, !tbaa !71
  %3 = load i64, ptr %i.a, align 8, !tbaa !76
  %i.cn = call i64 @llvm.bswap.i64(i64 %3)
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !76
  %i.co = load i64, ptr %i.by, align 8, !tbaa !65
  %i.cp = and i64 %i.co, 2
end_hunk_4
