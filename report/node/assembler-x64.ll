inline.NumInlined: 3306
inline.NumDeleted: 586
begin_hunk_0_@_ZN2v88internal7OperandC2ES1_i:bb.a
  %i.e = lshr i64 %1, 16
  %i.f = trunc i64 %i.e to i8                     ; 6 uses
  %i.g = and i8 %i.f, 7
  %i.h = icmp eq i8 %i.g, 4                       ; 5 uses
  %i.i = and i8 %i.f, -64                         ; 2 uses
  %i.j = select i1 %i.h, i32 2, i32 1             ; 5 uses
  %i.k = lshr i64 %1, 24
  %i.l = trunc i64 %i.k to i8                     ; 2 uses
  %i.m = select i1 %i.h, i8 %i.l, i8 %i.f
end_hunk_0
begin_hunk_1_@_ZN2v88internal7OperandC2ES1_i:bb.a
  %i.ag = select i1 %i.q, i8 0, i8 -128
  %i.ah = or disjoint i8 %i.ag, %i.af
  store i8 %i.ah, ptr %i.b, align 2
  %5 = select i1 %i.h, i64 6, i64 5
  store i64 %5, ptr %i.c, align 8
  %i.ai = zext nneg i32 %i.j to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ai
  store i32 %i.ab, ptr %i.aj, align 1
end_hunk_1
begin_hunk_2_@_ZN2v88internal7OperandC2ES1_i:bb.a
bb.h:                                             ; preds = %bb.g
  %i.am = or disjoint i8 %i.al, 64
  store i8 %i.am, ptr %i.b, align 2
  %6 = select i1 %i.h, i64 3, i64 2
  store i64 %6, ptr %i.c, align 8
  %i.an = trunc i32 %i.ab to i8
  %i.ao = zext nneg i32 %i.j to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ao
end_hunk_2
