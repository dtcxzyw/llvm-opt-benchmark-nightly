inline.NumInlined: 146
inline.NumDeleted: 13
begin_hunk_0_@dbgAssertHist:bb.a
  %i.k = load i64, ptr %i.f, align 8
  %i.l = and i64 %i.k, 15
  %i.m = getelementptr inbounds nuw [480 x i8], ptr %i.a, i64 %i.l
  %i.n = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.j, i1 false)
  %i.o = sub nuw nsw i64 64, %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
end_hunk_0
