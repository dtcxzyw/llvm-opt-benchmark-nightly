inline.NumInlined: 273
inline.NumDeleted: 44
begin_hunk_0_@_ZN8NWindows5NFile5NFindL16fillin_CFileInfoERNS1_9CFileInfoEPKc:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !96   ; 3 uses
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 16384                  ; 2 uses
  %spec.select = select i1 %i.g, i32 16, i32 32
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %3 = lshr i32 %i.e, 7
  %4 = and i32 %3, 1
  %5 = or disjoint i32 %4, %spec.select
  %6 = shl i32 %i.e, 16
  %7 = or disjoint i32 %6, 32768
  %i.i = or disjoint i32 %5, %7
  %8 = xor i32 %i.i, 1
  store i32 %8, ptr %i.h, align 8, !tbaa !56
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.k = load i64, ptr %i.j, align 8, !tbaa !100
  %i.l = trunc i64 %i.k to i32
end_hunk_0
