begin_hunk_0_@ASN1_BIT_STRING_set_bit:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 3                           ; 3 uses
  %i.c = and i32 %1, 7                            ; 2 uses
  %3 = lshr exact i32 128, %i.c
  %4 = ashr i32 -129, %i.c
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %spec.select = select i1 %.not, i32 0, i32 %3
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %.critedge, label %bb.c

end_hunk_0
begin_hunk_1_@ASN1_BIT_STRING_set_bit:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !16
  %i.ac = zext i8 %i.ab to i32
  %i.ad = and i32 %4, %i.ac
  %i.ae = or i32 %i.ad, %spec.select
  %i.af = trunc nuw i32 %i.ae to i8
  store i8 %i.af, ptr %i.aa, align 1, !tbaa !16
end_hunk_1
begin_hunk_2_@ASN1_BIT_STRING_get_bit:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %1, 3                           ; 2 uses
  %i.c = and i32 %1, 7
  %2 = lshr exact i32 128, %i.c
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.f, label %bb.c

end_hunk_2
begin_hunk_3_@ASN1_BIT_STRING_get_bit:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %i.l = zext i8 %i.k to i32
  %3 = and i32 %2, %i.l
  %4 = icmp ne i32 %3, 0
  %5 = zext i1 %4 to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a, %bb.e
  %.0 = phi i32 [ %5, %bb.e ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

end_hunk_3
