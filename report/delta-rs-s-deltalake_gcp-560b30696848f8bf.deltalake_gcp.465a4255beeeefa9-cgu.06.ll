begin_hunk_0
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; [#uses=1 type=ptr]
  %4 = load i64, ptr %3, align 8, !noundef !9     ; [#uses=1 type=i64]
  %5 = icmp eq i64 %4, 0                          ; [#uses=1 type=i1]
  br i1 %5, label %73, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; [#uses=1 type=ptr]
end_hunk_0
begin_hunk_1
  %13 = load ptr, ptr %0, align 8, !alias.scope !24, !noalias !19, !nonnull !9, !noundef !9 ; [#uses=6 type=ptr]
  %14 = insertelement <16 x i8> poison, i8 %10, i64 0 ; [#uses=1 type=<16 x i8>]
  %15 = shufflevector <16 x i8> %14, <16 x i8> poison, <16 x i32> zeroinitializer ; [#uses=2 type=<16 x i8>]
  %.val.i.i.i.i = load i8, ptr %1, align 1, !range !25, !alias.scope !19, !noalias !16 ; [#uses=3 type=i8]
  %16 = add nsw i8 %.val.i.i.i.i, -18             ; [#uses=1 type=i8]
  %17 = icmp samesign ugt i8 %.val.i.i.i.i, 17    ; [#uses=1 type=i1]
  %narrow.i.i.i.i.i = select i1 %17, i8 %16, i8 5 ; [#uses=1 type=i8]
  %narrow.i.i.i.i.fr.i = freeze i8 %narrow.i.i.i.i.i ; [#uses=3 type=i8]
  %.not.i = icmp eq i8 %narrow.i.i.i.i.fr.i, 5    ; [#uses=1 type=i1]
  br i1 %.not.i, label %.split.i, label %.split.us.i

.split.us.i:                                      ; preds = %6, %24
  %.sroa.9.0.i.us.i = phi i64 [ %25, %24 ], [ 0, %6 ] ; [#uses=1 type=i64]
  %.pn.i.us.i = phi i64 [ %26, %24 ], [ %8, %6 ]  ; [#uses=1 type=i64]
  %.sroa.01.0.i.us.i = and i64 %.pn.i.us.i, %12   ; [#uses=4 type=i64]
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 %.sroa.01.0.i.us.i ; [#uses=1 type=ptr]
  %.sroa.0.0.copyload.i22.us.i = load <16 x i8>, ptr %18, align 1, !noalias !26 ; [#uses=2 type=<16 x i8>]
  %19 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.us.i, %15 ; [#uses=1 type=<16 x i1>]
  %20 = bitcast <16 x i1> %19 to i16              ; [#uses=3 type=i16]
  %.not.i.not28.us.i = icmp eq i16 %20, 0         ; [#uses=1 type=i1]
  br i1 %.not.i.not28.us.i, label %._crit_edge.split.us.us.i, label %.lr.ph.us.i

._crit_edge.split.us.us.i:                        ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, %.split.us.i
  %21 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.us.i, splat (i8 -1) ; [#uses=1 type=<16 x i1>]
  %22 = bitcast <16 x i1> %21 to i16              ; [#uses=1 type=i16]
  %23 = icmp eq i16 %22, 0                        ; [#uses=1 type=i1]
  br i1 %23, label %24, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit, !prof !29

24:                                               ; preds = %._crit_edge.split.us.us.i
  %25 = add i64 %.sroa.9.0.i.us.i, 16             ; [#uses=2 type=i64]
  %26 = add i64 %.sroa.01.0.i.us.i, %25           ; [#uses=1 type=i64]
  br label %.split.us.i

.lr.ph.us.i:                                      ; preds = %.split.us.i
  %27 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %20, i1 true) ; [#uses=1 type=i16]
  %28 = zext nneg i16 %27 to i64                  ; [#uses=1 type=i64]
  %29 = add i64 %.sroa.01.0.i.us.i, %28           ; [#uses=1 type=i64]
  %30 = and i64 %29, %12                          ; [#uses=1 type=i64]
  %31 = sub nsw i64 0, %30                        ; [#uses=2 type=i64]
  %32 = getelementptr inbounds [32 x i8], ptr %13, i64 %31 ; [#uses=1 type=ptr]
  %33 = getelementptr inbounds i8, ptr %32, i64 -32 ; [#uses=1 type=ptr]
  %.val2.i.us40.us.i = load i8, ptr %33, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9 ; [#uses=2 type=i8]
  %34 = add nsw i8 %.val2.i.us40.us.i, -18        ; [#uses=1 type=i8]
  %35 = icmp samesign ugt i8 %.val2.i.us40.us.i, 17 ; [#uses=1 type=i1]
  %narrow1.i.i.i.i.us41.us.i = select i1 %35, i8 %34, i8 5 ; [#uses=1 type=i8]
  %36 = icmp eq i8 %narrow.i.i.i.i.fr.i, %narrow1.i.i.i.i.us41.us.i ; [#uses=1 type=i1]
  br i1 %36, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, !prof !37

37:                                               ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i
  %38 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %49, i1 true) ; [#uses=1 type=i16]
  %39 = zext nneg i16 %38 to i64                  ; [#uses=1 type=i64]
  %40 = add i64 %.sroa.01.0.i.us.i, %39           ; [#uses=1 type=i64]
  %41 = and i64 %40, %12                          ; [#uses=1 type=i64]
  %42 = sub nsw i64 0, %41                        ; [#uses=2 type=i64]
  %43 = getelementptr inbounds [32 x i8], ptr %13, i64 %42 ; [#uses=1 type=ptr]
  %44 = getelementptr inbounds i8, ptr %43, i64 -32 ; [#uses=1 type=ptr]
  %.val2.i.us.us.i = load i8, ptr %44, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9 ; [#uses=2 type=i8]
  %45 = add nsw i8 %.val2.i.us.us.i, -18          ; [#uses=1 type=i8]
  %46 = icmp samesign ugt i8 %.val2.i.us.us.i, 17 ; [#uses=1 type=i1]
  %narrow1.i.i.i.i.us.us.i = select i1 %46, i8 %45, i8 5 ; [#uses=1 type=i8]
  %47 = icmp eq i8 %narrow.i.i.i.i.fr.i, %narrow1.i.i.i.i.us.us.i ; [#uses=1 type=i1]
  br i1 %47, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i, !prof !38

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.us.us.i: ; preds = %.lr.ph.us.i, %37
  %.sroa.06.0.i29.us42.us.i = phi i16 [ %49, %37 ], [ %20, %.lr.ph.us.i ] ; [#uses=2 type=i16]
  %48 = add i16 %.sroa.06.0.i29.us42.us.i, -1     ; [#uses=1 type=i16]
  %49 = and i16 %48, %.sroa.06.0.i29.us42.us.i    ; [#uses=3 type=i16]
  %.not.i.not.us.us.i = icmp eq i16 %49, 0        ; [#uses=1 type=i1]
  br i1 %.not.i.not.us.us.i, label %._crit_edge.split.us.us.i, label %37

.split.i:                                         ; preds = %6, %67
  %.sroa.9.0.i.i = phi i64 [ %68, %67 ], [ 0, %6 ] ; [#uses=1 type=i64]
  %.pn.i.i = phi i64 [ %69, %67 ], [ %8, %6 ]     ; [#uses=1 type=i64]
  %.sroa.01.0.i.i = and i64 %.pn.i.i, %12         ; [#uses=3 type=i64]
  %50 = getelementptr inbounds nuw i8, ptr %13, i64 %.sroa.01.0.i.i ; [#uses=1 type=ptr]
  %.sroa.0.0.copyload.i22.i = load <16 x i8>, ptr %50, align 1, !noalias !26 ; [#uses=2 type=<16 x i8>]
  %51 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, %15 ; [#uses=1 type=<16 x i1>]
  %52 = bitcast <16 x i1> %51 to i16              ; [#uses=2 type=i16]
  %.not.i.not28.i = icmp eq i16 %52, 0            ; [#uses=1 type=i1]
  br i1 %.not.i.not28.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.split.i, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i
  %.sroa.06.0.i29.i = phi i16 [ %66, %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i ], [ %52, %.split.i ] ; [#uses=3 type=i16]
  %53 = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i29.i, i1 true) ; [#uses=1 type=i16]
  %54 = zext nneg i16 %53 to i64                  ; [#uses=1 type=i64]
  %55 = add i64 %.sroa.01.0.i.i, %54              ; [#uses=1 type=i64]
  %56 = and i64 %55, %12                          ; [#uses=1 type=i64]
  %57 = sub nsw i64 0, %56                        ; [#uses=2 type=i64]
  %58 = getelementptr inbounds [32 x i8], ptr %13, i64 %57 ; [#uses=1 type=ptr]
  %59 = getelementptr inbounds i8, ptr %58, i64 -32 ; [#uses=1 type=ptr]
  %.val2.i.i = load i8, ptr %59, align 1, !range !25, !alias.scope !30, !noalias !33, !noundef !9 ; [#uses=2 type=i8]
  %60 = icmp samesign ult i8 %.val2.i.i, 18       ; [#uses=1 type=i1]
  %61 = icmp eq i8 %.val.i.i.i.i, %.val2.i.i      ; [#uses=1 type=i1]
  %or.cond.i = select i1 %60, i1 %61, i1 false, !prof !39 ; [#uses=1 type=i1]
  br i1 %or.cond.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i, label %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, !prof !39

._crit_edge.split.i:                              ; preds = %_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i, %.split.i
  %62 = icmp eq <16 x i8> %.sroa.0.0.copyload.i22.i, splat (i8 -1) ; [#uses=1 type=<16 x i1>]
  %63 = bitcast <16 x i1> %62 to i16              ; [#uses=1 type=i16]
  %64 = icmp eq i16 %63, 0                        ; [#uses=1 type=i1]
  br i1 %64, label %67, label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit, !prof !29

_RNCINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB8_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtBa_3map14equivalent_keyBS_BS_B1T_E0E0Cs62u4JVtZyFF_13deltalake_gcp.exit.thread.i: ; preds = %.lr.ph.i
  %65 = add i16 %.sroa.06.0.i29.i, -1             ; [#uses=1 type=i16]
  %66 = and i16 %65, %.sroa.06.0.i29.i            ; [#uses=2 type=i16]
  %.not.i.not.i = icmp eq i16 %66, 0              ; [#uses=1 type=i1]
  br i1 %.not.i.not.i, label %._crit_edge.split.i, label %.lr.ph.i

67:                                               ; preds = %._crit_edge.split.i
  %68 = add i64 %.sroa.9.0.i.i, 16                ; [#uses=2 type=i64]
  %69 = add i64 %.sroa.01.0.i.i, %68              ; [#uses=1 type=i64]
  br label %.split.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i: ; preds = %.lr.ph.us.i, %37, %.lr.ph.i
  %.pre-phi = phi i64 [ %42, %37 ], [ %57, %.lr.ph.i ], [ %31, %.lr.ph.us.i ] ; [#uses=1 type=i64]
  %70 = getelementptr inbounds [32 x i8], ptr %13, i64 %.pre-phi ; [#uses=1 type=ptr]
  br label %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit

_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit: ; preds = %._crit_edge.split.us.us.i, %._crit_edge.split.i, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i
  %71 = phi ptr [ %70, %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit.thread.i ], [ null, %._crit_edge.split.i ], [ null, %._crit_edge.split.us.us.i ] ; [#uses=2 type=ptr]
  %.not = icmp eq ptr %71, null                   ; [#uses=1 type=i1]
  %72 = getelementptr inbounds i8, ptr %71, i64 -24 ; [#uses=1 type=ptr]
  %.sroa.0.1 = select i1 %.not, ptr null, ptr %72 ; [#uses=1 type=ptr]
  br label %73

73:                                               ; preds = %2, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.1, %_RINvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB6_8RawTableTNtNtNtCsjyY8HP3IvQ6_12object_store3gcp7builder15GoogleConfigKeyNtNtCs6Po7BT7Nknu_5alloc6string6StringEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_B1R_E0ECs62u4JVtZyFF_13deltalake_gcp.exit ], [ null, %2 ] ; [#uses=1 type=ptr]
  ret ptr %.sroa.0.0
}
end_hunk_1
