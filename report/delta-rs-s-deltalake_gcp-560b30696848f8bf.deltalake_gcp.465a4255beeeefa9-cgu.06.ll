begin_hunk_0
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = load i64, ptr %3, align 8, !noundef !9
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %67, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_0
begin_hunk_1
  %13 = load ptr, ptr %0, align 8, !alias.scope !24, !noalias !19, !nonnull !9, !noundef !9 ; 6 uses
  %14 = insertelement <16 x i8> poison, i8 %10, i64 0
  %15 = shufflevector <16 x i8> %14, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  %.val.i.i.i.i = load i8, ptr %1, align 1, !range !25, !alias.scope !19, !noalias !16 ; 4 uses
  %16 = icmp samesign ult i8 %.val.i.i.i.i, 18
  br i1 %16, label %.split.i, label %.split.us.i

.split.us.i:                                      ; preds = %6, %23
  %.sroa.9.0.i.us.i = phi i64 [ %24, %23 ], [ 0, %6 ]
  %.pn.i.us.i = phi i64 [ %25, %23 ], [ %8, %6 ]
  %.sroa.01.0.i.us.i = and i64 %.pn.i.us.i, %12   ; 4 uses
  %17 = getelementptr inbounds nuw i8, ptr %13, i64 %.sroa.01.0.i.us.i
  %.sroa.0.0.copyload.i22.us.i = load <16 x i8>, ptr %17, align 1, !noalias !26 ; 2 uses
  %18 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.us.i, %15
  %19 = bitcast <16 x i1> %18 to i16              ; 3 uses
  %.not.i.not28.us.i = icmp eq i16 %19, 0
  br i1 %.not.i.not28.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

._crit_edge.split.us.us.i:                        ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, %.split.us.i
  %20 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.us.i, splat (i8 -1)
  %21 = bitcast <16 x i1> %20 to i16
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit, !prof !29

23:                                               ; preds = %._crit_edge.split.us.us.i
  %24 = add i64 %.sroa.9.0.i.us.i, 16             ; 2 uses
  %25 = add i64 %.sroa.01.0.i.us.i, %24
  br label %.split.us.i

.lr.ph.us.i:                                      ; preds = %.split.us.i
  %26 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %19, i1 true)
  %27 = zext nneg i16 %26 to i64
  %28 = add i64 %.sroa.01.0.i.us.i, %27
  %29 = and i64 %28, %12
  %30 = sub nsw i64 0, %29                        ; 2 uses
  %31 = getelementptr inbounds [32 x i8], ptr %13, i64 %30
  %32 = getelementptr inbounds i8, ptr %31, i64 -32
  %.val2.i.us40.us.i = load i8, ptr %32, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9
  %33 = icmp eq i8 %.val2.i.us40.us.i, %.val.i.i.i.i
  br i1 %33, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, !prof !37

34:                                               ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i
  %35 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %44, i1 true)
  %36 = zext nneg i16 %35 to i64
  %37 = add i64 %.sroa.01.0.i.us.i, %36
  %38 = and i64 %37, %12
  %39 = sub nsw i64 0, %38                        ; 2 uses
  %40 = getelementptr inbounds [32 x i8], ptr %13, i64 %39
  %41 = getelementptr inbounds i8, ptr %40, i64 -32
  %.val2.i.us.us.i = load i8, ptr %41, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9
  %42 = icmp eq i8 %.val2.i.us.us.i, %.val.i.i.i.i
  br i1 %42, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, !prof !38

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i: ; preds = %.lr.ph.us.i, %34
  %.sroa.06.0.i29.us42.us.i = phi i16 [ %44, %34 ], [ %19, %.lr.ph.us.i ] ; 2 uses
  %43 = add i16 %.sroa.06.0.i29.us42.us.i, -1
  %44 = and i16 %43, %.sroa.06.0.i29.us42.us.i    ; 3 uses
  %.not.i.not.us.us.i = icmp eq i16 %44, 0
  br i1 %.not.i.not.us.us.i, label %._crit_edge.split.us.us.i, label %34

.split.i:                                         ; preds = %6, %61
  %.sroa.9.0.i.i = phi i64 [ %62, %61 ], [ 0, %6 ]
  %.pn.i.i = phi i64 [ %63, %61 ], [ %8, %6 ]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %12         ; 3 uses
  %45 = getelementptr inbounds nuw i8, ptr %13, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i22.i = load <16 x i8>, ptr %45, align 1, !noalias !26 ; 2 uses
  %46 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, %15
  %47 = bitcast <16 x i1> %46 to i16              ; 2 uses
  %.not.i.not28.i = icmp eq i16 %47, 0
  br i1 %.not.i.not28.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i
  %.sroa.06.0.i29.i = phi i16 [ %60, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i ], [ %47, %.split.i ] ; 3 uses
  %48 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i29.i, i1 true)
  %49 = zext nneg i16 %48 to i64
  %50 = add i64 %.sroa.01.0.i.i, %49
  %51 = and i64 %50, %12
  %52 = sub nsw i64 0, %51                        ; 2 uses
  %53 = getelementptr inbounds [32 x i8], ptr %13, i64 %52
  %54 = getelementptr inbounds i8, ptr %53, i64 -32
  %.val2.i.i = load i8, ptr %54, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9
  %55 = icmp eq i8 %.val.i.i.i.i, %.val2.i.i
  br i1 %55, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, !prof !39

._crit_edge.split.i:                              ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, %.split.i
  %56 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, splat (i8 -1)
  %57 = bitcast <16 x i1> %56 to i16
  %58 = icmp eq i16 %57, 0
  br i1 %58, label %61, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit, !prof !29

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i: ; preds = %.lr.ph.i
  %59 = add i16 %.sroa.06.0.i29.i, -1
  %60 = and i16 %59, %.sroa.06.0.i29.i            ; 2 uses
  %.not.i.not.i = icmp eq i16 %60, 0
  br i1 %.not.i.not.i, label %._crit_edge.split.i, label %.lr.ph.i

61:                                               ; preds = %._crit_edge.split.i
  %62 = add i64 %.sroa.9.0.i.i, 16                ; 2 uses
  %63 = add i64 %.sroa.01.0.i.i, %62
  br label %.split.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i: ; preds = %.lr.ph.us.i, %34, %.lr.ph.i
  %.pre-phi = phi i64 [ %39, %34 ], [ %52, %.lr.ph.i ], [ %30, %.lr.ph.us.i ]
  %64 = getelementptr inbounds [32 x i8], ptr %13, i64 %.pre-phi
  br label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %._crit_edge.split.us.us.i, %._crit_edge.split.i, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i
  %65 = phi ptr [ %64, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i ], [ null, %._crit_edge.split.i ], [ null, %._crit_edge.split.us.us.i ] ; 2 uses
  %.not = icmp eq ptr %65, null
  %66 = getelementptr inbounds i8, ptr %65, i64 -24
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %66
  br label %67

67:                                               ; preds = %2, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit ], [ null, %2 ]
  ret ptr %.sroa.0.0
}
end_hunk_1
