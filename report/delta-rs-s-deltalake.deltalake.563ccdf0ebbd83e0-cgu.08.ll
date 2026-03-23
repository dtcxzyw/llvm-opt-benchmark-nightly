begin_hunk_0
  %13 = getelementptr i8, ptr %10, i64 8
  %.val = load ptr, ptr %13, align 8, !nonnull !16, !noundef !16
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly %1, ptr nonnull readonly %.val, i64 %2), !alias.scope !46
  %14 = icmp eq i32 %bcmp.i.i, 0
  %spec.select = zext i1 %14 to i64
  br label %_RNvXCsfMGkWeWsnD2_10equivalenteINtB2_10EquivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringE10equivalentCs7p2uQeJxui2_9deltalake.exit.thread

end_hunk_0
begin_hunk_1
  %54 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %54, align 8, !alias.scope !84, !noalias !81, !nonnull !16, !noundef !16
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val3.i, i64 %.val2.i), !noalias !86
  %55 = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %55, label %_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE12get_index_ofBO_ECs7p2uQeJxui2_9deltalake.exit.thread6, label %_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE12get_index_ofBO_ECs7p2uQeJxui2_9deltalake.exit.thread

_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE12get_index_ofBO_ECs7p2uQeJxui2_9deltalake.exit.thread6: ; preds = %_RNCINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtCsbpG6u9KFjWn_8indexmap5inner10equivalentNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldB1K_E0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.i, %_RINvMs3_NtCsbpG6u9KFjWn_8indexmap3mapINtB6_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldE12get_index_ofBO_ECs7p2uQeJxui2_9deltalake.exit
end_hunk_1
begin_hunk_2
.lr.ph:                                           ; preds = %_RINvNtCs6Po7BT7Nknu_5alloc5slice11stable_sortRNtNtB4_6string6StringNvYBH_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd2ltECs7p2uQeJxui2_9deltalake.exit
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 72
  %33 = load i64, ptr %32, align 8
  %34 = icmp eq i64 %33, 0
  %35 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 56
  %37 = load i64, ptr %36, align 8                ; 2 uses
end_hunk_2
begin_hunk_3
.lr.ph:                                           ; preds = %_RINvNtCs6Po7BT7Nknu_5alloc5slice11stable_sortRNtNtB4_6string6StringNvYBH_NtNtCsbvkFyIu7lgC_4core3cmp10PartialOrd2ltECs7p2uQeJxui2_9deltalake.exit
  %28 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %33 = load i64, ptr %32, align 8                ; 2 uses
end_hunk_3
begin_hunk_4
  %24 = getelementptr inbounds nuw i8, ptr %5, i64 72
  %25 = getelementptr inbounds nuw i8, ptr %5, i64 64
  %26 = load i64, ptr %5, align 8, !range !36, !alias.scope !12475, !noalias !12472
  %.not.i.i.i.i.i.i = icmp eq i64 %26, 3
  %27 = load i64, ptr %24, align 8, !alias.scope !12475, !noalias !12472 ; 4 uses
  %28 = load ptr, ptr %25, align 8, !alias.scope !12475, !noalias !12472, !nonnull !16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECs7p2uQeJxui2_9deltalake.exit.i.split.us.i, label %_RINvMs6_NtCs2HSpDNxY7OE_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsbpG6u9KFjWn_8indexmap5inner8get_hashNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnuE0ECs7p2uQeJxui2_9deltalake.exit.i.split.i
end_hunk_4
