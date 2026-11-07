Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/advanced_blog_cli-7275b01720a11b73.advanced_blog_cli.6af03eca1abeceee-cgu.03?download=true
inline.NumInlined: 168
inline.NumDeleted: 84
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtCs40k4W9msRzi_5alloc6string6StringEEBG_:bb.a

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB2r_4auth4UserExEENCINvMs_NtB2r_10paginationINtB3C_9PaginatedINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB4g_11from_clause10FromClauseINtNtNtB4i_12query_source5joins6JoinOnINtB62_4JoinNtNtNtB2r_6schema5posts5tableNtNtB6R_5users5tableNtB62_5InnerEINtNtNtB4i_10expression7grouped7GroupedINtNtB7S_9operators2EqINtNtB7S_8nullable8NullableNtNtB6P_7columns7user_idEIB8N_NtNtB7i_7columns2idEEEEEINtNtB4g_13select_clause12SelectClauseTTNtB9f_2idB9d_NtB9f_5titleNtB9f_4bodyNtB9f_10created_atNtB9f_10updated_atNtB9f_12published_atETB9H_NtB9J_8usernameEEENtNtB4g_15distinct_clause16NoDistinctClauseINtNtB4g_12where_clause11WhereClauseIB7O_INtB8t_9IsNotNullBbT_EEEINtNtB4g_12order_clause11OrderClauseINtB8t_4DescBbT_EEEE20load_and_count_pagesB2m_Es_0EB2m_EB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !131 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 136                        ; 5 uses
  %i.h = invoke { ptr, ptr } @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB1R_4auth4UserExEENCINvMs_NtB1R_10paginationINtB32_9PaginatedINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB3G_11from_clause10FromClauseINtNtNtB3I_12query_source5joins6JoinOnINtB5s_4JoinNtNtNtB1R_6schema5posts5tableNtNtB6h_5users5tableNtB5s_5InnerEINtNtNtB3I_10expression7grouped7GroupedINtNtB7i_9operators2EqINtNtB7i_8nullable8NullableNtNtB6f_7columns7user_idEIB8d_NtNtB6I_7columns2idEEEEEINtNtB3G_13select_clause12SelectClauseTTNtB8F_2idB8D_NtB8F_5titleNtB8F_4bodyNtB8F_10created_atNtB8F_10updated_atNtB8F_12published_atETB97_NtB99_8usernameEEENtNtB3G_15distinct_clause16NoDistinctClauseINtNtB3G_12where_clause11WhereClauseIB7e_INtB7T_9IsNotNullBbj_EEEINtNtB3G_12order_clause11OrderClauseINtB7T_4DescBbj_EEEE20load_and_count_pagesB1M_Es_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1M_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1M_E0INtNtBc_6result6ResultBfR_zEEB1R_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB12_4auth4UserExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB23_4auth4UserExEENCINvMs_NtB23_10paginationINtB3e_9PaginatedINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB3S_11from_clause10FromClauseINtNtNtB3U_12query_source5joins6JoinOnINtB5E_4JoinNtNtNtB23_6schema5posts5tableNtNtB6t_5users5tableNtB5E_5InnerEINtNtNtB3U_10expression7grouped7GroupedINtNtB7u_9operators2EqINtNtB7u_8nullable8NullableNtNtB6r_7columns7user_idEIB8p_NtNtB6U_7columns2idEEEEEINtNtB3S_13select_clause12SelectClauseTTNtB8R_2idB8P_NtB8R_5titleNtB8R_4bodyNtB8R_10created_atNtB8R_10updated_atNtB8R_12published_atETB9j_NtB9l_8usernameEEENtNtB3S_15distinct_clause16NoDistinctClauseINtNtB3S_12where_clause11WhereClauseIB7q_INtB85_9IsNotNullBbv_EEEINtNtB3S_12order_clause11OrderClauseINtB85_4DescBbv_EEEE20load_and_count_pagesB1Y_Es_0EEB23_.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 7                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB12_4auth4UserExEE32forget_allocation_drop_remainingB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB1R_4auth4UserExEB1M_EEB1R_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #21
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = and i64 %i.g, 120
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ]
  %i.s = lshr i64 %i.g, 7
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB12_4auth4UserExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.g, -128                       ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #20
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.v) #20 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.thread, !prof !132

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.v) #22
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli4post4PostNtNtB23_4auth4UserExEENCINvMs_NtB23_10paginationINtB3e_9PaginatedINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB3S_11from_clause10FromClauseINtNtNtB3U_12query_source5joins6JoinOnINtB5E_4JoinNtNtNtB23_6schema5posts5tableNtNtB6t_5users5tableNtB5E_5InnerEINtNtNtB3U_10expression7grouped7GroupedINtNtB7u_9operators2EqINtNtB7u_8nullable8NullableNtNtB6r_7columns7user_idEIB8p_NtNtB6U_7columns2idEEEEEINtNtB3S_13select_clause12SelectClauseTTNtB8R_2idB8P_NtB8R_5titleNtB8R_4bodyNtB8R_10created_atNtB8R_10updated_atNtB8R_12published_atETB9j_NtB9l_8usernameEEENtNtB3S_15distinct_clause16NoDistinctClauseINtNtB3S_12where_clause11WhereClauseIB7q_INtB85_9IsNotNullBbv_EEEINtNtB3S_12order_clause11OrderClauseINtB85_4DescBbv_EEEE20load_and_count_pagesB1Y_Es_0EEB23_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB6_6string6StringExEENCINvMs_NtB2r_10paginationINtB3L_9PaginatedINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB4p_11from_clause10FromClauseINtNtNtB4r_12query_source5joins6JoinOnINtB6b_4JoinNtNtNtB2r_6schema8comments5tableNtNtB70_5posts5tableNtB6b_5InnerEINtNtNtB4r_10expression7grouped7GroupedINtNtB84_9operators2EqINtNtB84_8nullable8NullableNtNtB6Y_7columns7post_idEIB8Z_NtNtB7u_7columns2idEEEEEINtNtB4p_13select_clause12SelectClauseTTNtB9r_2idNtB9r_7user_idB9p_NtB9r_4bodyNtB9r_10created_atNtB9r_10updated_atENtB9V_5titleEENtNtB4p_15distinct_clause16NoDistinctClauseINtNtB4p_12where_clause11WhereClauseIB80_IB8D_Bb4_INtNtB84_5bound5BoundNtNtB4r_9sql_types7IntegerRlEEEEINtNtB4p_12order_clause11OrderClauseINtB8F_4DescBbx_EEEE20load_and_count_pagesB2m_Es_0EB2m_EB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !133 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5
  %i.g = mul i64 %i.c, 96                         ; 7 uses
  %i.h = udiv i64 %i.g, 88                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB6_3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB14_6string6StringExEENCINvMs_NtB1R_10paginationINtB3c_9PaginatedINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB3Q_11from_clause10FromClauseINtNtNtB3S_12query_source5joins6JoinOnINtB5C_4JoinNtNtNtB1R_6schema8comments5tableNtNtB6r_5posts5tableNtB5C_5InnerEINtNtNtB3S_10expression7grouped7GroupedINtNtB7v_9operators2EqINtNtB7v_8nullable8NullableNtNtB6p_7columns7post_idEIB8q_NtNtB6V_7columns2idEEEEEINtNtB3Q_13select_clause12SelectClauseTTNtB8S_2idNtB8S_7user_idB8Q_NtB8S_4bodyNtB8S_10created_atNtB8S_10updated_atENtB9m_5titleEENtNtB3Q_15distinct_clause16NoDistinctClauseINtNtB3Q_12where_clause11WhereClauseIB7r_IB84_Bav_INtNtB7v_5bound5BoundNtNtB3S_9sql_types7IntegerRlEEEEINtNtB3Q_12order_clause11OrderClauseINtB86_4DescBaY_EEEE20load_and_count_pagesB1M_Es_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1M_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1M_E0INtNtBc_6result6ResultBgf_zEEB1R_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB9_6string6StringExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB1g_6string6StringExEENCINvMs_NtB23_10paginationINtB3o_9PaginatedINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB42_11from_clause10FromClauseINtNtNtB44_12query_source5joins6JoinOnINtB5O_4JoinNtNtNtB23_6schema8comments5tableNtNtB6D_5posts5tableNtB5O_5InnerEINtNtNtB44_10expression7grouped7GroupedINtNtB7H_9operators2EqINtNtB7H_8nullable8NullableNtNtB6B_7columns7post_idEIB8C_NtNtB77_7columns2idEEEEEINtNtB42_13select_clause12SelectClauseTTNtB94_2idNtB94_7user_idB92_NtB94_4bodyNtB94_10created_atNtB94_10updated_atENtB9y_5titleEENtNtB42_15distinct_clause16NoDistinctClauseINtNtB42_12where_clause11WhereClauseIB7D_IB8g_BaH_INtNtB7H_5bound5BoundNtNtB44_9sql_types7IntegerRlEEEEINtNtB42_12order_clause11OrderClauseINtB8i_4DescBba_EEEE20load_and_count_pagesB1Y_Es_0EEB23_.exit unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 88                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB9_6string6StringExEE32forget_allocation_drop_remainingB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtCs40k4W9msRzi_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtBI_6string6StringExEB1M_EEB1R_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #21
          to label %bb.b unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 88                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect13needs_reallocTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB6_6string6StringExEB12_EB17_.exit.thread

_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect13needs_reallocTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB6_6string6StringExEB12_EB17_.exit.thread: ; preds = %bb.i, %bb.h, %bb.f, %bb.j
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.i ], [ %i.z, %bb.j ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs40k4W9msRzi_5alloc3vec9into_iterINtB5_8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB9_6string6StringExEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 88
  br i1 %i.w, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.g, 0
  br i1 %i.x, label %_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect13needs_reallocTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB6_6string6StringExEB12_EB17_.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #20
  br label %_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect13needs_reallocTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB6_6string6StringExEB12_EB17_.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.y = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #20 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %_RINvNtNtCs40k4W9msRzi_5alloc3vec16in_place_collect13needs_reallocTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB6_6string6StringExEB12_EB17_.exit.thread, !prof !11

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #22
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.b, %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterTTNtNtCs9bejAFUsR8E_17advanced_blog_cli7comment7CommentNtNtB1g_6string6StringExEENCINvMs_NtB23_10paginationINtB3o_9PaginatedINtNtNtCsjRvGck33osM_6diesel13query_builder16select_statement15SelectStatementINtNtB42_11from_clause10FromClauseINtNtNtB44_12query_source5joins6JoinOnINtB5O_4JoinNtNtNtB23_6schema8comments5tableNtNtB6D_5posts5tableNtB5O_5InnerEINtNtNtB44_10expression7grouped7GroupedINtNtB7H_9operators2EqINtNtB7H_8nullable8NullableNtNtB6B_7columns7post_idEIB8C_NtNtB77_7columns2idEEEEEINtNtB42_13select_clause12SelectClauseTTNtB94_2idNtB94_7user_idB92_NtB94_4bodyNtB94_10created_atNtB94_10updated_atENtB9y_5titleEENtNtB42_15distinct_clause16NoDistinctClauseINtNtB42_12where_clause11WhereClauseIB7D_IB8g_BaH_INtNtB7H_5bound5BoundNtNtB44_9sql_types7IntegerRlEEEEINtNtB42_12order_clause11OrderClauseINtB8i_4DescBba_EEEE20load_and_count_pagesB1Y_Es_0EEB23_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializeINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeEINtB6_16FromStaticSqlRowINtNtB8_9sql_types8NullableNtB2F_9TimestampENtNtNtB8_2pg7backend2PgE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtB3o_10connection3row5PgRowEECs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(24) initializes((0, 4)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !142 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtBa_2pg10connection3row5PgRowEINtB8_3RowNtNtB15_7backend2PgE3getjECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 0)
  %i.j = load ptr, ptr %i.h, align 8, !noundef !5
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_7PgFieldINtNtBb_3row5FieldNtNtB9_7backend2PgE5value(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  %i.k = load ptr, ptr %i.g, align 8, !alias.scope !144, !noundef !5
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10type_impls6optionINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeEINtNtB9_11deserialize7FromSqlINtNtB9_9sql_types8NullableNtB2R_9TimestampENtNtNtB9_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !145
  call void @_RNvXNtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBa_11deserialize7FromSqlNtNtBa_9sql_types9TimestampNtNtB8_7backend2PgE8from_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e), !noalias !145
  %i.l = load i32, ptr %i.d, align 8, !range !12, !noalias !145, !noundef !5
  %i.m = trunc nuw i32 %i.l to i1
  br i1 %i.m, label %bb.f, label %_RNvXs0_NtNtCsjRvGck33osM_6diesel10type_impls6optionINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeEINtNtB9_11deserialize7FromSqlINtNtB9_9sql_types8NullableNtB2R_9TimestampENtNtNtB9_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit

_RNvXs0_NtNtCsjRvGck33osM_6diesel10type_impls6optionINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeEINtNtB9_11deserialize7FromSqlINtNtB9_9sql_types8NullableNtB2R_9TimestampENtNtNtB9_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread: ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.n, align 4, !alias.scope !143
  store i32 0, ptr %0, align 8, !alias.scope !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

_RNvXs0_NtNtCsjRvGck33osM_6diesel10type_impls6optionINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeEINtNtB9_11deserialize7FromSqlINtNtB9_9sql_types8NullableNtB2R_9TimestampENtNtNtB9_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.p, ptr noundef nonnull align 4 dereferenceable(12) %i.o, i64 12, i1 false), !noalias !144
  store i32 0, ptr %0, align 8, !alias.scope !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @1, ptr %i.r, align 8
  store i32 1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeEINtB8_16FromStaticSqlRowINtNtBa_9sql_types8NullableNtB2H_9TimestampENtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB3q_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit, %_RNvXs0_NtNtCsjRvGck33osM_6diesel10type_impls6optionINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeEINtNtB9_11deserialize7FromSqlINtNtB9_9sql_types8NullableNtB2R_9TimestampENtNtNtB9_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread, %_RNvXs0_NtNtCsjRvGck33osM_6diesel10type_impls6optionINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeEINtNtB9_11deserialize7FromSqlINtNtB9_9sql_types8NullableNtB2R_9TimestampENtNtNtB9_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = load <2 x ptr>, ptr %i.s, align 8, !noalias !145
  store <2 x ptr> %2, ptr %i.t, align 8, !alias.scope !143
  store i32 1, ptr %0, align 8, !alias.scope !143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %4 = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %6 = load ptr, ptr %5, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !5, !alias.scope !146, !nonnull !5
  invoke void %i.v(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %4)
          to label %bb.g unwind label %bb.l, !noalias !147

bb.g:                                             ; preds = %bb.f
  %i.w = load i128, ptr %i.a, align 16, !noalias !147, !noundef !5
  %i.x = icmp eq i128 %i.w, -163709168045336727173992277504286119362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  br i1 %i.x, label %_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeEINtB8_16FromStaticSqlRowINtNtBa_9sql_types8NullableNtB2H_9TimestampENtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB3q_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.h, !prof !13

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !146
  call void @_RINvMsh_NtCsjRvGck33osM_6diesel6resultNtB6_21DeserializeFieldError3newNtNtNtNtB8_2pg10connection3row7PgFieldNtNtB1c_7backend2PgECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %6), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !147
  %i.y = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 40)
          to label %bb.k unwind label %bb.i, !noalias !149 ; 2 uses

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result21DeserializeFieldErrorECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #21
          to label %.body.thread.i unwind label %bb.j, !noalias !148

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !148
  unreachable

bb.k:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !147
  br label %_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeEINtB8_16FromStaticSqlRowINtNtBa_9sql_types8NullableNtB2H_9TimestampENtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB3q_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit

bb.l:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(80) %6) #21
          to label %.body.thread.i unwind label %bb.m, !noalias !148

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !147
  unreachable

.body.thread.i:                                   ; preds = %bb.l, %bb.i
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.z, %bb.i ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %eh.lpad-body9.i

_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeINtNtCscI6d9CVNmLh_4core6option6OptionNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeEINtB8_16FromStaticSqlRowINtNtBa_9sql_types8NullableNtB2H_9TimestampENtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB3q_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.g, %bb.k
  %.sroa.3.0.i = phi ptr [ @4, %bb.k ], [ %6, %bb.g ]
  %.sroa.0.0.i = phi ptr [ %i.y, %bb.k ], [ %4, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store ptr %.sroa.0.0.i, ptr %3, align 8
  store ptr %.sroa.3.0.i, ptr %5, align 8
  store i32 1, ptr %0, align 8
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtCs40k4W9msRzi_5alloc6string6StringINtB6_16FromStaticSqlRowNtNtB8_9sql_types4TextNtNtNtB8_2pg7backend2PgE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtB26_10connection3row5PgRowEECs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !164 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtBa_2pg10connection3row5PgRowEINtB8_3RowNtNtB15_7backend2PgE3getjECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 0)
  %i.k = load ptr, ptr %i.i, align 8, !noundef !5
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_7PgFieldINtNtBb_3row5FieldNtNtB9_7backend2PgE5value(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !165)
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.l = load ptr, ptr %i.h, align 8, !alias.scope !166, !noundef !5
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !167
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !165
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !169
  call void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel2pg5types10primitivesReINtNtBb_11deserialize10FromSqlRefNtNtBb_9sql_types4TextNtNtB9_7backend2PgE8from_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f), !noalias !170
  %i.m = load i64, ptr %i.e, align 8, !range !14, !noalias !169, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !169, !nonnull !5, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.n, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread2, label %bb.d

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread2: ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !noalias !169, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.s, align 8, !alias.scope !168, !noalias !166
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.t, align 8, !alias.scope !168, !noalias !166
  store i64 -1, ptr %0, align 8, !alias.scope !168, !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !167
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.q, align 8, !noalias !169, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !171
  call void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.u, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !172
  %i.v = load i64, ptr %i.d, align 8, !range !14, !noalias !171, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !173, !noalias !171, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.f, !prof !174

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr %i.z, align 8, !noalias !171
  call void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef %i.y, i64 %i.aa) #22, !noalias !172
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.z, align 8, !noalias !171, !nonnull !5, !noundef !5 ; 2 uses
  %i.ac = icmp ule i64 %i.u, %i.y
  call void @llvm.assume(i1 %i.ac), !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !171
  %.not.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i, label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %i.p, i64 %i.u, i1 false), !noalias !175
  br label %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread: ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.ad, align 8, !alias.scope !165
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @19, ptr %i.ae, align 8, !alias.scope !165
  store i64 -1, ptr %0, align 8, !alias.scope !165
  br label %bb.j

_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.f, %bb.g
  store i64 %i.y, ptr %0, align 8, !alias.scope !168, !noalias !166
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ab, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !168, !noalias !166
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.u, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !168, !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @1, ptr %i.ag, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.i:                                             ; preds = %_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtCs40k4W9msRzi_5alloc6string6StringINtB8_16FromStaticSqlRowNtNtBa_9sql_types4TextNtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB28_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.j:                                             ; preds = %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread2, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread
  %i.ah = phi ptr [ %i.r, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread2 ], [ @19, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread ] ; 4 uses
  %i.ai = phi ptr [ %i.p, %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread2 ], [ inttoptr (i64 1 to ptr), %_RNvYNtNtCs40k4W9msRzi_5alloc6string6StringINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtBJ_9sql_types4TextNtNtNtBJ_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !177
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.am = load ptr, ptr %i.al, align 8, !invariant.load !5, !alias.scope !176, !nonnull !5
  invoke void %i.am(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.ai)
          to label %bb.k unwind label %bb.p, !noalias !177

bb.k:                                             ; preds = %bb.j
  %i.an = load i128, ptr %i.a, align 16, !noalias !177, !noundef !5
  %i.ao = icmp eq i128 %i.an, -163709168045336727173992277504286119362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !177
  br i1 %i.ao, label %_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtCs40k4W9msRzi_5alloc6string6StringINtB8_16FromStaticSqlRowNtNtBa_9sql_types4TextNtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB28_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.l, !prof !13

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @_RINvMsh_NtCsjRvGck33osM_6diesel6resultNtB6_21DeserializeFieldError3newNtNtNtNtB8_2pg10connection3row7PgFieldNtNtB1c_7backend2PgECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ah), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  %i.ap = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 40)
          to label %bb.o unwind label %bb.m, !noalias !179 ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result21DeserializeFieldErrorECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #21
          to label %.body.thread.i unwind label %bb.n, !noalias !178

bb.n:                                             ; preds = %bb.m
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !178
  unreachable

bb.o:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ap, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !177
  br label %_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtCs40k4W9msRzi_5alloc6string6StringINtB8_16FromStaticSqlRowNtNtBa_9sql_types4TextNtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB28_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit

bb.p:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli(ptr nonnull %i.ai, ptr nonnull readonly align 8 dereferenceable(80) %i.ah) #21
          to label %.body.thread.i unwind label %bb.q, !noalias !178

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !177
  unreachable

.body.thread.i:                                   ; preds = %bb.p, %bb.m
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.aq, %bb.m ], [ %i.as, %bb.p ]
  resume { ptr, i32 } %eh.lpad-body9.i

_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtCs40k4W9msRzi_5alloc6string6StringINtB8_16FromStaticSqlRowNtNtBa_9sql_types4TextNtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB28_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.k, %bb.o
  %.sroa.3.0.i = phi ptr [ @4, %bb.o ], [ %i.ah, %bb.k ]
  %.sroa.0.0.i = phi ptr [ %i.ap, %bb.o ], [ %i.ai, %bb.k ]
  store ptr %.sroa.0.0.i, ptr %i.aj, align 8
  store ptr %.sroa.3.0.i, ptr %i.ak, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtB6_16FromStaticSqlRowNtNtB8_9sql_types9TimestampNtNtNtB8_2pg7backend2PgE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtB2u_10connection3row5PgRowEECs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !188 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtBa_2pg10connection3row5PgRowEINtB8_3RowNtNtB15_7backend2PgE3getjECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 0)
  %i.i = load ptr, ptr %i.g, align 8, !noundef !5
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_7PgFieldINtNtBb_3row5FieldNtNtB9_7backend2PgE5value(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !189)
  call void @llvm.experimental.noalias.scope.decl(metadata !190)
  %i.j = load ptr, ptr %i.f, align 8, !alias.scope !190, !noundef !5
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RNvYNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB12_9sql_types9TimestampNtNtNtB12_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread, label %_RNvYNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB12_9sql_types9TimestampNtNtNtB12_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit

_RNvYNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB12_9sql_types9TimestampNtNtNtB12_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread: ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.k, align 8, !alias.scope !189
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @19, ptr %i.l, align 8, !alias.scope !189
  store i32 1, ptr %0, align 8, !alias.scope !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br label %bb.e

_RNvYNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB12_9sql_types9TimestampNtNtNtB12_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !191
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !189
  call void @_RNvXNtNtNtNtCsjRvGck33osM_6diesel2pg5types13date_and_time6chronoNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtBa_11deserialize7FromSqlNtNtBa_9sql_types9TimestampNtNtB8_7backend2PgE8from_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !191
  %.pre.a = load i32, ptr %0, align 8, !range !12
  %2 = trunc nuw i32 %.pre.a to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  br i1 %2, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @1, ptr %i.n, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.c, %_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtB8_16FromStaticSqlRowNtNtBa_9sql_types9TimestampNtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB2w_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit
  store i32 1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %_RNvYNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB12_9sql_types9TimestampNtNtNtB12_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.e:                                             ; preds = %_RNvYNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB12_9sql_types9TimestampNtNtNtB12_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit.thread, %_RNvYNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB12_9sql_types9TimestampNtNtNtB12_2pg7backend2PgE17from_nullable_sqlCs9bejAFUsR8E_17advanced_blog_cli.exit
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %4 = load ptr, ptr %3, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %5 = load ptr, ptr %i.o, align 8, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !193
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !5, !alias.scope !192, !nonnull !5
  invoke void %i.q(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %4)
          to label %bb.f unwind label %bb.k, !noalias !193

bb.f:                                             ; preds = %bb.e
  %i.r = load i128, ptr %i.a, align 16, !noalias !193, !noundef !5
  %i.s = icmp eq i128 %i.r, -163709168045336727173992277504286119362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !193
  br i1 %i.s, label %_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtB8_16FromStaticSqlRowNtNtBa_9sql_types9TimestampNtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB2w_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !193
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RINvMsh_NtCsjRvGck33osM_6diesel6resultNtB6_21DeserializeFieldError3newNtNtNtNtB8_2pg10connection3row7PgFieldNtNtB1c_7backend2PgECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %5), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !193
  %i.t = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 40)
          to label %bb.j unwind label %bb.h, !noalias !195 ; 2 uses

bb.h:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result21DeserializeFieldErrorECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #21
          to label %.body.thread.i unwind label %bb.i, !noalias !194

bb.i:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !194
  unreachable

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !193
  br label %_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtB8_16FromStaticSqlRowNtNtBa_9sql_types9TimestampNtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB2w_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit

bb.k:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECs9bejAFUsR8E_17advanced_blog_cli(ptr nonnull %4, ptr nonnull readonly align 8 dereferenceable(80) %5) #21
          to label %.body.thread.i unwind label %bb.l, !noalias !194

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #19, !noalias !193
  unreachable

.body.thread.i:                                   ; preds = %bb.k, %bb.h
  %eh.lpad-body9.i = phi { ptr, i32 } [ %i.u, %bb.h ], [ %i.w, %bb.k ]
  resume { ptr, i32 } %eh.lpad-body9.i

_RNCINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeINtB8_16FromStaticSqlRowNtNtBa_9sql_types9TimestampNtNtNtBa_2pg7backend2PgE14build_from_rowINtNtNtBa_3row7private10PartialRowNtNtNtB2w_10connection3row5PgRowEE0Cs9bejAFUsR8E_17advanced_blog_cli.exit: ; preds = %bb.f, %bb.j
  %.sroa.3.0.i = phi ptr [ @4, %bb.j ], [ %5, %bb.f ]
  %.sroa.0.0.i = phi ptr [ %i.t, %bb.j ], [ %4, %bb.f ]
  store ptr %.sroa.0.0.i, ptr %3, align 8
  store ptr %.sroa.3.0.i, ptr %i.o, align 8
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8A_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTlNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtBb_11deserialize16FromStaticSqlRowTNtNtBb_9sql_types7IntegerNtB2a_4TextENtNtNtBb_2pg7backend2PgE14build_from_rowINtNtNtBb_3row7private10PartialRowNtNtNtB2N_10connection3row5PgRowEECs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((8, 32)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !202 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = tail call noundef i64 @_RNvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtB9_2pg10connection3row5PgRowEINtB7_3RowNtNtB14_7backend2PgE11field_countCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtB9_2pg10connection3row5PgRowEINtB7_3RowNtNtB14_7backend2PgE11partial_rowCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 0, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !203
  call void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializelINtB6_16FromStaticSqlRowNtNtB8_9sql_types7IntegerNtNtNtB8_2pg7backend2PgE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtB1y_10connection3row5PgRowEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !noalias !204
  %i.f = load ptr, ptr %i.a, align 8, !noalias !203, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !noalias !203, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !203
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.k, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.g, align 8, !noalias !203, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtB9_2pg10connection3row5PgRowEINtB7_3RowNtNtB14_7backend2PgE11partial_rowCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 1, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !205
  call void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtCs40k4W9msRzi_5alloc6string6StringINtB6_16FromStaticSqlRowNtNtB8_9sql_types4TextNtNtNtB8_2pg7backend2PgE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtB26_10connection3row5PgRowEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c), !noalias !206
  %i.m = load i64, ptr %i.b, align 8, !range !9, !noalias !205, !noundef !5 ; 2 uses
  %i.n = icmp eq i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !205 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !205 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !205
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.l, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8A_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTlNtNtCs40k4W9msRzi_5alloc6string6StringEINtNtBb_11deserialize16FromStaticSqlRowTNtNtBb_9sql_types7IntegerNtB2a_4TextENtNtNtBb_2pg7backend2PgE14build_from_rowNtNtNtB2N_10connection3row5PgRowECs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((8, 32)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !213 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = tail call noundef i64 @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_5PgRowINtNtBb_3row3RowNtNtB9_7backend2PgE11field_count(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_5PgRowINtNtBb_3row3RowNtNtB9_7backend2PgE11partial_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef 0, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !214
  call void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializelINtB6_16FromStaticSqlRowNtNtB8_9sql_types7IntegerNtNtNtB8_2pg7backend2PgE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtB1y_10connection3row5PgRowEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d), !noalias !215
  %i.f = load ptr, ptr %i.a, align 8, !noalias !214, !noundef !5 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.g, align 8, !noalias !214, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !214
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.k, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.g, align 8, !noalias !214, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !214
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXs0_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_5PgRowINtNtBb_3row3RowNtNtB9_7backend2PgE11partial_row(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1, i64 noundef 1, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !216
  call void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializeNtNtCs40k4W9msRzi_5alloc6string6StringINtB6_16FromStaticSqlRowNtNtB8_9sql_types4TextNtNtNtB8_2pg7backend2PgE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtB26_10connection3row5PgRowEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c), !noalias !217
  %i.m = load i64, ptr %i.b, align 8, !range !9, !noalias !216, !noundef !5 ; 2 uses
  %i.n = icmp eq i64 %i.m, -1
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !216 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !noalias !216 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !216
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store i32 %i.l, ptr %0, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.r, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9W_NtNtCsjRvGck33osM_6diesel10type_impls6tuplesTlllNtNtCs40k4W9msRzi_5alloc6string6StringNtNtNtCslCQnfik72jt_6chrono5naive8datetime13NaiveDateTimeB1v_EINtNtBb_11deserialize16FromStaticSqlRowTNtNtBb_9sql_types7IntegerB39_B39_NtB3b_4TextNtB3b_9TimestampB3R_ENtNtNtBb_2pg7backend2PgE14build_from_rowINtNtNtBb_3row7private10PartialRowNtNtNtB4g_10connection3row5PgRowEECs9bejAFUsR8E_17advanced_blog_cli(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !236 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = tail call noundef i64 @_RNvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtB9_2pg10connection3row5PgRowEINtB7_3RowNtNtB14_7backend2PgE11field_countCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtB9_2pg10connection3row5PgRowEINtB7_3RowNtNtB14_7backend2PgE11partial_rowCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 0, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !237
  call void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializelINtB6_16FromStaticSqlRowNtNtB8_9sql_types7IntegerNtNtNtB8_2pg7backend2PgE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtB1y_10connection3row5PgRowEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n), !noalias !238
  %i.p = load ptr, ptr %i.a, align 8, !noalias !237, !noundef !5 ; 2 uses
  %.not.i83 = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %.not.i83, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %i.q, align 8, !noalias !237, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !237
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.r, ptr %i.t, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.u = load i32, ptr %i.q, align 8, !noalias !237, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RNvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtB9_2pg10connection3row5PgRowEINtB7_3RowNtNtB14_7backend2PgE11partial_rowCs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, i64 noundef 1, i64 noundef 2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !239
  call void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializelINtB6_16FromStaticSqlRowNtNtB8_9sql_types7IntegerNtNtNtB8_2pg7backend2PgE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtB1y_10connection3row5PgRowEECs9bejAFUsR8E_17advanced_blog_cli(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m), !noalias !240
  %i.v = load ptr, ptr %i.b, align 8, !noalias !239, !noundef !5 ; 2 uses
  %.not.i81 = icmp eq ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %.not.i81, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.w, align 8, !noalias !239, !nonnull !5, !align !6, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !239
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
end_hunk_0
