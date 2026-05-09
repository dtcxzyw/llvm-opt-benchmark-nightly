inline.NumInlined: 97
inline.NumDeleted: 25
begin_hunk_0_@square_root
define internal fastcc range(i32 0, 16777216) i32 @square_root(i32 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %0 to i64
  %.not = icmp ult i32 %0, 1073741824             ; 2 uses
  %.116 = select i1 %.not, i64 0, i64 2147483648  ; 3 uses
  %.neg = select i1 %.not, i64 0, i64 -1073741824
  %.1 = add nsw i64 %.neg, %i.a
  %i.b = shl nsw i64 %.1, 1                       ; 2 uses
  %1 = or disjoint i64 %.116, 536870912           ; 2 uses
  %.not.1 = icmp ult i64 %i.b, %1                 ; 2 uses
  %2 = or disjoint i64 %.116, 1073741824
  %.116.1 = select i1 %.not.1, i64 %.116, i64 %2  ; 3 uses
  %i.c = select i1 %.not.1, i64 0, i64 %1
  %.1.1 = sub nuw nsw i64 %i.b, %i.c
end_hunk_0
begin_hunk_1_@square_root:bb.a
  %i.k = select i1 %.not.3, i64 0, i64 %i.i
  %.1.3 = sub nuw nsw i64 %i.h, %i.k
  %i.l = shl nsw i64 %.1.3, 1                     ; 2 uses
  %3 = add nuw nsw i64 %.116.3, 67108864          ; 2 uses
  %.not.4 = icmp ult i64 %i.l, %3                 ; 2 uses
  %4 = add nuw nsw i64 %.116.3, 134217728
  %.116.4 = select i1 %.not.4, i64 %.116.3, i64 %4 ; 3 uses
  %i.m = select i1 %.not.4, i64 0, i64 %3
  %.1.4 = sub nuw nsw i64 %i.l, %i.m
end_hunk_1
