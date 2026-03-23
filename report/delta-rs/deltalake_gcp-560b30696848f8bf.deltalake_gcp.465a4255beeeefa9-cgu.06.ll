begin_hunk_0
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !noundef !9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %73, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
begin_hunk_1
  %13 = load ptr, ptr %0, align 8, !alias.scope !24, !noalias !19, !nonnull !9, !noundef !9 ; 6 uses
  %14 = insertelement <16 x i8> poison, i8 %10, i64 0
  %15 = shufflevector <16 x i8> %14, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.val.i.i.i.i = load i8, ptr %1, align 1, !range !25, !alias.scope !19, !noalias !16 ; 3 uses
  %16 = add nsw i8 %.val.i.i.i.i, -18
  %17 = icmp samesign ugt i8 %.val.i.i.i.i, 17
  %narrow.i.i.i.i.i = select i1 %17, i8 %16, i8 5
  %narrow.i.i.i.i.fr.i = freeze i8 %narrow.i.i.i.i.i ; 3 uses
  %.not.i = icmp eq i8 %narrow.i.i.i.i.fr.i, 5
  br i1 %.not.i, label %.split.i, label %.split.us.i

.split.us.i:                                      ; preds = %6, %24
  %.sroa.9.0.i.us.i = phi i64 [ %25, %24 ], [ 0, %6 ]
  %.pn.i.us.i = phi i64 [ %26, %24 ], [ %8, %6 ]
  %.sroa.01.0.i.us.i = and i64 %.pn.i.us.i, %12   ; 4 uses
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 %.sroa.01.0.i.us.i
  %.sroa.0.0.copyload.i22.us.i = load <16 x i8>, ptr %18, align 1, !noalias !26 ; 2 uses
  %19 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.us.i, %15
  %20 = bitcast <16 x i1> %19 to i16              ; 3 uses
  %.not.i.not28.us.i = icmp eq i16 %20, 0
  br i1 %.not.i.not28.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

._crit_edge.split.us.us.i:                        ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, %.split.us.i
  %21 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.us.i, splat (i8 -1)
  %22 = bitcast <16 x i1> %21 to i16
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit, !prof !29

24:                                               ; preds = %._crit_edge.split.us.us.i
  %25 = add i64 %.sroa.9.0.i.us.i, 16             ; 2 uses
  %26 = add i64 %.sroa.01.0.i.us.i, %25
  br label %.split.us.i

.lr.ph.us.i:                                      ; preds = %.split.us.i
  %27 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %20, i1 true)
  %28 = zext nneg i16 %27 to i64
  %29 = add i64 %.sroa.01.0.i.us.i, %28
  %30 = and i64 %29, %12
  %31 = sub nsw i64 0, %30                        ; 2 uses
  %32 = getelementptr inbounds [32 x i8], ptr %13, i64 %31
  %33 = getelementptr inbounds i8, ptr %32, i64 -32
  %.val2.i.us40.us.i = load i8, ptr %33, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9 ; 2 uses
  %34 = add nsw i8 %.val2.i.us40.us.i, -18
  %35 = icmp samesign ugt i8 %.val2.i.us40.us.i, 17
  %narrow1.i.i.i.i.us41.us.i = select i1 %35, i8 %34, i8 5
  %36 = icmp eq i8 %narrow.i.i.i.i.fr.i, %narrow1.i.i.i.i.us41.us.i
  br i1 %36, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, !prof !37

37:                                               ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i
  %38 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %49, i1 true)
  %39 = zext nneg i16 %38 to i64
  %40 = add i64 %.sroa.01.0.i.us.i, %39
  %41 = and i64 %40, %12
  %42 = sub nsw i64 0, %41                        ; 2 uses
  %43 = getelementptr inbounds [32 x i8], ptr %13, i64 %42
  %44 = getelementptr inbounds i8, ptr %43, i64 -32
  %.val2.i.us.us.i = load i8, ptr %44, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9 ; 2 uses
  %45 = add nsw i8 %.val2.i.us.us.i, -18
  %46 = icmp samesign ugt i8 %.val2.i.us.us.i, 17
  %narrow1.i.i.i.i.us.us.i = select i1 %46, i8 %45, i8 5
  %47 = icmp eq i8 %narrow.i.i.i.i.fr.i, %narrow1.i.i.i.i.us.us.i
  br i1 %47, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, !prof !38

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i: ; preds = %.lr.ph.us.i, %37
  %.sroa.06.0.i29.us42.us.i = phi i16 [ %49, %37 ], [ %20, %.lr.ph.us.i ] ; 2 uses
  %48 = add i16 %.sroa.06.0.i29.us42.us.i, -1
  %49 = and i16 %48, %.sroa.06.0.i29.us42.us.i    ; 3 uses
  %.not.i.not.us.us.i = icmp eq i16 %49, 0
  br i1 %.not.i.not.us.us.i, label %._crit_edge.split.us.us.i, label %37

.split.i:                                         ; preds = %6, %67
  %.sroa.9.0.i.i = phi i64 [ %68, %67 ], [ 0, %6 ]
  %.pn.i.i = phi i64 [ %69, %67 ], [ %8, %6 ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %12         ; 3 uses
  %50 = getelementptr inbounds nuw i8, ptr %13, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i22.i = load <16 x i8>, ptr %50, align 1, !noalias !26 ; 2 uses
  %51 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, %15
  %52 = bitcast <16 x i1> %51 to i16              ; 2 uses
  %.not.i.not28.i = icmp eq i16 %52, 0
  br i1 %.not.i.not28.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i
  %.sroa.06.0.i29.i = phi i16 [ %66, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i ], [ %52, %.split.i ] ; 3 uses
  %53 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i29.i, i1 true)
  %54 = zext nneg i16 %53 to i64
  %55 = add i64 %.sroa.01.0.i.i, %54
  %56 = and i64 %55, %12
  %57 = sub nsw i64 0, %56                        ; 2 uses
  %58 = getelementptr inbounds [32 x i8], ptr %13, i64 %57
  %59 = getelementptr inbounds i8, ptr %58, i64 -32
  %.val2.i.i = load i8, ptr %59, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9 ; 2 uses
  %60 = icmp samesign ult i8 %.val2.i.i, 18
  %61 = icmp eq i8 %.val.i.i.i.i, %.val2.i.i
  %or.cond.i = select i1 %60, i1 %61, i1 false, !prof !39
  br i1 %or.cond.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, !prof !39

._crit_edge.split.i:                              ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, %.split.i
  %62 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, splat (i8 -1)
  %63 = bitcast <16 x i1> %62 to i16
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %67, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit, !prof !29

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i: ; preds = %.lr.ph.i
  %65 = add i16 %.sroa.06.0.i29.i, -1
  %66 = and i16 %65, %.sroa.06.0.i29.i            ; 2 uses
  %.not.i.not.i = icmp eq i16 %66, 0
  br i1 %.not.i.not.i, label %._crit_edge.split.i, label %.lr.ph.i

67:                                               ; preds = %._crit_edge.split.i
  %68 = add i64 %.sroa.9.0.i.i, 16                ; 2 uses
  %69 = add i64 %.sroa.01.0.i.i, %68
  br label %.split.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i: ; preds = %.lr.ph.us.i, %37, %.lr.ph.i
  %.pre-phi = phi i64 [ %42, %37 ], [ %57, %.lr.ph.i ], [ %31, %.lr.ph.us.i ]
  %70 = getelementptr inbounds [32 x i8], ptr %13, i64 %.pre-phi
  br label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %._crit_edge.split.us.us.i, %._crit_edge.split.i, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i
  %71 = phi ptr [ %70, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i ], [ null, %._crit_edge.split.i ], [ null, %._crit_edge.split.us.us.i ] ; 2 uses
  %.not = icmp eq ptr %71, null
  %72 = getelementptr inbounds i8, ptr %71, i64 -24
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %72
  br label %73

73:                                               ; preds = %2, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit ], [ null, %2 ]
  ret ptr %.sroa.0.0
}
end_hunk_1
