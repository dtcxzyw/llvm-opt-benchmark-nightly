begin_hunk_0
  %i.c = load i8, ptr %4, align 1, !tbaa !14
  %i.d = sext i8 %i.c to i32
  %i.e = ptrtoint ptr %i.b to i64
  %invariant.op = sub i64 1, %3
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.c, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %1, %.lr.ph.i.i ], [ %i.j, %bb.c ]
  %.02132.i.i = phi ptr [ %2, %.lr.ph.i.i ], [ %i.h, %bb.c ]
  %i.f = add i64 %.033.i.i, %invariant.op         ; 2 uses
  %.not26.i.i.a = icmp eq i64 %i.f, 0
  br i1 %.not26.i.i.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %11 = tail call ptr @memchr(ptr noundef %.02132.i.i, i32 noundef %i.d, i64 noundef %i.f) #25 ; 4 uses
  %.not26.i.i = icmp eq ptr %11, null
  br i1 %.not26.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %11, ptr nonnull %4, i64 %3)
  %i.g = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.g, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %bb.c
end_hunk_0
begin_hunk_1
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread84

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit.thread: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %bb.c, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.b, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.o, align 8, !tbaa !77
  br label %bb.ah
end_hunk_1
