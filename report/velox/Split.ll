begin_hunk_0
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 4 uses
  %.sroa.47.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.47, i64 4
  %.sroa.47.4..sroa_idx23 = getelementptr inbounds nuw i8, ptr %.sroa.47, i64 4
  br label %bb.b
end_hunk_0
begin_hunk_1
_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.e, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.sroa.013.0, %.lr.ph.i.i ], [ %i.ag, %bb.e ]
  %.02132.i.i = phi ptr [ %.sroa.8.0, %.lr.ph.i.i ], [ %i.ae, %bb.e ]
  %reass.sub = sub i64 %.033.i.i, %i.n
  %i.z = add i64 %reass.sub, 1
  %12 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i, i32 noundef %i.x, i64 noundef %i.z) #18 ; 4 uses
  %.not26.i.i.a = icmp eq ptr %12, null
  br i1 %.not26.i.i.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %12, ptr nonnull %i.m, i64 %i.n)
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aa, label %bb.d, label %bb.e
end_hunk_1
begin_hunk_2
  %.not25.i.i = icmp ult i64 %i.ag, %i.n
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, !llvm.loop !763

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.e, %bb.b, %bb.c, %bb.d
  %.1.i.i = phi i64 [ 0, %bb.b ], [ -1, %bb.c ], [ %i.ad, %bb.d ], [ -1, %bb.e ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ]
  %spec.select = add i64 %.1.i.i, %i.p            ; 4 uses
  %i.ah = icmp ugt i64 %spec.select, %.sroa.013.0
  %i.ai = load i32, ptr %i.q, align 4, !tbaa !408 ; 3 uses
end_hunk_2
begin_hunk_3
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 4 uses
  %.sroa.47.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.47, i64 4
  %.sroa.47.4..sroa_idx54 = getelementptr inbounds nuw i8, ptr %.sroa.47, i64 4
  br label %bb.l
end_hunk_3
begin_hunk_4
_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.o, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.sroa.013.0, %.lr.ph.i.i ], [ %i.ec, %bb.o ]
  %.02132.i.i = phi ptr [ %.sroa.8.0, %.lr.ph.i.i ], [ %i.ea, %bb.o ]
  %reass.sub = sub i64 %.033.i.i, %i.dj
  %i.dv = add i64 %reass.sub, 1
  %13 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i, i32 noundef %i.dt, i64 noundef %i.dv) #18 ; 4 uses
  %.not26.i.i.a = icmp eq ptr %13, null
  br i1 %.not26.i.i.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %13, ptr nonnull %i.di, i64 %i.dj)
  %i.dw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.dw, label %bb.n, label %bb.o
end_hunk_4
begin_hunk_5
  %.not25.i.i = icmp ult i64 %i.ec, %i.dj
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, !llvm.loop !763

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.o, %bb.l, %bb.m, %bb.n
  %.1.i.i = phi i64 [ 0, %bb.l ], [ -1, %bb.m ], [ %i.dz, %bb.n ], [ -1, %bb.o ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ]
  %spec.select = add i64 %.1.i.i, %i.dl           ; 4 uses
  %i.ed = icmp ugt i64 %spec.select, %.sroa.013.0
  br i1 %i.ed, label %select.unfold, label %bb.p
end_hunk_5
begin_hunk_6
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 52 ; 4 uses
  %.sroa.47.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.47, i64 4
  %.sroa.47.4..sroa_idx23 = getelementptr inbounds nuw i8, ptr %.sroa.47, i64 4
  br label %bb.b
end_hunk_6
begin_hunk_7
_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.e, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.sroa.013.0, %.lr.ph.i.i ], [ %i.ag, %bb.e ]
  %.02132.i.i = phi ptr [ %.sroa.8.0, %.lr.ph.i.i ], [ %i.ae, %bb.e ]
  %reass.sub = sub i64 %.033.i.i, %i.n
  %i.z = add i64 %reass.sub, 1
  %12 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i, i32 noundef %i.x, i64 noundef %i.z) #18 ; 4 uses
  %.not26.i.i.a = icmp eq ptr %12, null
  br i1 %.not26.i.i.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %12, ptr nonnull %i.m, i64 %i.n)
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aa, label %bb.d, label %bb.e
end_hunk_7
begin_hunk_8
  %.not25.i.i = icmp ult i64 %i.ag, %i.n
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, !llvm.loop !763

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.e, %bb.b, %bb.c, %bb.d
  %.1.i.i = phi i64 [ 0, %bb.b ], [ -1, %bb.c ], [ %i.ad, %bb.d ], [ -1, %bb.e ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ]
  %spec.select = add i64 %.1.i.i, %i.p            ; 4 uses
  %i.ah = icmp ugt i64 %spec.select, %.sroa.013.0
  %i.ai = load i32, ptr %i.q, align 4, !tbaa !408 ; 3 uses
end_hunk_8
begin_hunk_9
  %i.do = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 9 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 4 uses
  %.sroa.47.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.47, i64 4
  %.sroa.47.4..sroa_idx55 = getelementptr inbounds nuw i8, ptr %.sroa.47, i64 4
  br label %bb.l
end_hunk_9
begin_hunk_10
_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a:   ; preds = %bb.o, %.lr.ph.i.i
  %.033.i.i = phi i64 [ %.sroa.013.0, %.lr.ph.i.i ], [ %i.ec, %bb.o ]
  %.02132.i.i = phi ptr [ %.sroa.8.0, %.lr.ph.i.i ], [ %i.ea, %bb.o ]
  %reass.sub = sub i64 %.033.i.i, %i.dj
  %i.dv = add i64 %reass.sub, 1
  %13 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %.02132.i.i, i32 noundef %i.dt, i64 noundef %i.dv) #18 ; 4 uses
  %.not26.i.i.a = icmp eq ptr %13, null
  br i1 %.not26.i.i.a, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %13, ptr nonnull %i.di, i64 %i.dj)
  %i.dw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.dw, label %bb.n, label %bb.o
end_hunk_10
begin_hunk_11
  %.not25.i.i = icmp ult i64 %i.ec, %i.dj
  br i1 %.not25.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, !llvm.loop !763

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4findES2_m.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a, %bb.o, %bb.l, %bb.m, %bb.n
  %.1.i.i = phi i64 [ 0, %bb.l ], [ -1, %bb.m ], [ %i.dz, %bb.n ], [ -1, %bb.o ], [ -1, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.a ]
  %spec.select = add i64 %.1.i.i, %i.dl           ; 4 uses
  %i.ed = icmp ugt i64 %spec.select, %.sroa.013.0
  br i1 %i.ed, label %select.unfold, label %bb.p
end_hunk_11
