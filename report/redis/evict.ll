inline.NumInlined: 25
inline.NumDeleted: 9
begin_hunk_0_@llvm.lifetime.end.p0
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i64 0, 4311744510001) i64 @estimateObjectIdleTime(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 108), align 4, !tbaa !13
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = load i64, ptr %0, align 8
  %i.d = lshr i64 %i.c, 40                        ; 3 uses
  %.not = icmp samesign ugt i64 %i.d, %i.b
  %1 = xor i64 %i.d, 16777215
  %i.e = sub nsw i64 0, %i.d
  %.0.in.p = select i1 %.not, i64 %1, i64 %i.e
  %.0.in = add nsw i64 %.0.in.p, %i.b
  %.0 = mul nuw nsw i64 %.0.in, 1000
  ret i64 %.0
}

end_hunk_0
begin_hunk_1_@evictionPoolPopulate:bb.a
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 108), align 4, !tbaa !13
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = load i64, ptr %i.at, align 8
  %i.ba = lshr i64 %i.az, 40                      ; 3 uses
  %.not.i = icmp samesign ugt i64 %i.ba, %i.ay
  %3 = xor i64 %i.ba, 16777215
  %i.bb = sub nsw i64 0, %i.ba
  %.0.in.p.i = select i1 %.not.i, i64 %3, i64 %i.bb
  %.0.in.i = add nsw i64 %.0.in.p.i, %i.ay
  %.0.i = mul nuw nsw i64 %.0.in.i, 1000
  br label %bb.k

bb.e:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@evictionPoolPopulate:bb.a
  %i.eb = getelementptr inbounds nuw [32 x i8], ptr %2, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 32
  %i.ed = shl nuw nsw i32 %.07493.lcssa104, 5
  %4 = xor i32 %i.ed, 480
  %i.ee = zext nneg i32 %4 to i64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ec, ptr align 8 %i.eb, i64 %i.ee, i1 false)
  br label %.sink.split
end_hunk_2
