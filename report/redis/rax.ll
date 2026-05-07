inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxSeek:tailrecurse.peel.begin
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 10 uses
  %.promoted = load i32, ptr %0, align 8, !tbaa !39 ; 6 uses
  store i64 0, ptr %i.c, align 8, !tbaa !44
  store ptr null, ptr %4, align 8, !tbaa !49
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = and i32 %.promoted, -4
  %i.f = or disjoint i32 %i.e, 1                  ; 2 uses
end_hunk_0
