inline.NumInlined: 6517
inline.NumDeleted: 2392
begin_hunk_0_@_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %bb.f

end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  resume { ptr, i32 } %i.ai

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
end_hunk_1
begin_hunk_2_@_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  br i1 %.not.i.i5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtBP_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryNtNtBT_5alloc6GlobalEECs7p2uQeJxui2_9deltalake.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryECs7p2uQeJxui2_9deltalake.exit
  %1 = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !4 ; 4 uses
  %i.av = icmp ult i64 %i.au, 384307168202282326
  tail call void @llvm.assume(i1 %i.av)
end_hunk_2
begin_hunk_3_@_RNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs6Po7BT7Nknu_5alloc3vec5drainINtBP_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5waker5EntryNtNtBT_5alloc6GlobalEECs7p2uQeJxui2_9deltalake.exit

bb.n:                                             ; preds = %bb.l
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.az = load ptr, ptr %2, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ax
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.au
  %i.bc = mul i64 %i.as, 24
end_hunk_3
