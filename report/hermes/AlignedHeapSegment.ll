inline.NumInlined: 46
inline.NumDeleted: 26
begin_hunk_0_@_ZN6hermes2vm18AlignedHeapSegment8setLevelILNS0_12AdviseUnusedE1EEEvPc:bb.a
  br i1 %i.c, label %bb.b, label %_ZN6hermes2vm18AlignedHeapSegment10markUnusedEPcS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @_ZN6hermes8oscompat9page_sizeEv() #6 ; 4 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = add i64 %i.d, %i.e
  %i.g = add i64 %i.f, -1                         ; 2 uses
  %i.h = urem i64 %i.g, %i.d
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = inttoptr i64 %i.i to ptr
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.l = ptrtoint ptr %i.k to i64
  %2 = add i64 %i.d, %i.l
  %i.m = add i64 %2, -1                           ; 2 uses
  %i.n = urem i64 %i.m, %i.d
  %i.o = sub i64 %i.m, %i.n
  %i.p = inttoptr i64 %i.o to ptr
end_hunk_0
