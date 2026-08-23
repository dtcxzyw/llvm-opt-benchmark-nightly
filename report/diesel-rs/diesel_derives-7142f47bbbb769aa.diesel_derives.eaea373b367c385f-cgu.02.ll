Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel_derives-7142f47bbbb769aa.diesel_derives.eaea373b367c385f-cgu.02?download=true
inline.NumInlined: 34
inline.NumDeleted: 22
begin_hunk_0_@_RNCNvNtCskarGseaywcB_14diesel_derives12sql_function18expand_nonvariadics6_0B5_:bb.a
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCskarGseaywcB_14diesel_derives12sql_function18expand_nonvariadics7_0B5_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
  invoke void @_RNvNtCsa66IwKi6YE3_5quote9___private10push_ident(ptr nonnull align 8 %i.a, ptr nonnull @21, i64 5)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNvNtCskarGseaywcB_14diesel_derives12sql_function18expand_nonvariadics8_0B5_(ptr nofree readnone captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call fastcc zeroext i1 @_RNvNtCskarGseaywcB_14diesel_derives12sql_function14is_sqlite_type(ptr align 8 %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCskarGseaywcB_14diesel_derives12sql_function18expand_nonvariadics9_0B5_(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.e, align 8
  %i.f = load ptr, ptr %1, align 8
  %i.g = tail call { ptr, ptr } @_RNvXs9_NtCshMFl0SviwmK_3syn10punctuatedRINtB5_10PunctuatedNtNtCskarGseaywcB_14diesel_derives12sql_function11StrictFnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits7collect12IntoIterator9into_iterBY_(ptr align 8 %i.f) ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.g, 0
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  store ptr %i.h, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.j, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.k = invoke align 8 ptr @_RNvXst_NtCshMFl0SviwmK_3syn10punctuatedINtB5_4IterNtNtCskarGseaywcB_14diesel_derives12sql_function11StrictFnArgENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextBQ_(ptr nonnull align 8 %i.d)
          to label %bb.c unwind label %.loopexit  ; 4 uses

.loopexit:                                        ; preds = %.backedge, %bb.g, %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtCskarGseaywcB_14diesel_derives12sql_function11StrictFnArgEEB1j_(ptr nonnull align 8 %i.d) #13
          to label %bb.n unwind label %bb.m

bb.c:                                             ; preds = %.backedge
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr %i.k, align 8
  %i.m = icmp eq i64 %i.l, 10
  br i1 %i.m, label %bb.g, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.d, %bb.h, %bb.j
  br label %.backedge

bb.e:                                             ; preds = %bb.c
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtCskarGseaywcB_14diesel_derives12sql_function11StrictFnArgEEB1j_(ptr nonnull align 8 %i.d)
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = call i32 @_RNvMsx_Csf5uYjtxkodL_11proc_macro2NtB5_5Ident4span(ptr align 8 %i.n)
  call void @_RINvMNtCshMFl0SviwmK_3syn5errorNtB3_5Error3newReEB5_(ptr nonnull sret([24 x i8]) align 8 %i.a, i32 %i.o, ptr nonnull @22, i64 49)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = invoke align 8 ptr @_RNvMs_NtCshMFl0SviwmK_3syn4pathNtB4_4Path9get_ident(ptr nonnull align 8 %i.q)
          to label %bb.h unwind label %.loopexit  ; 2 uses

bb.h:                                             ; preds = %bb.g
  %.not5 = icmp eq ptr %i.r, null
  br i1 %.not5, label %.backedge.backedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.r, ptr %i.c, align 8
  %i.s = invoke zeroext i1 @_RNvXs7_NtNtCscI6d9CVNmLh_4core3cmp5implsRNtCsf5uYjtxkodL_11proc_macro25IdentNtB7_9PartialEq2eqCshMFl0SviwmK_3syn(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.e)
          to label %bb.j unwind label %.loopexit

bb.j:                                             ; preds = %bb.i
  br i1 %i.s, label %bb.k, label %.backedge.backedge

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  invoke void @_RNvXs15_Csf5uYjtxkodL_11proc_macro2NtB6_5IdentNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCskarGseaywcB_14diesel_derives(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.t)
          to label %bb.l unwind label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCshMFl0SviwmK_3syn10punctuated4IterNtNtCskarGseaywcB_14diesel_derives12sql_function11StrictFnArgEEB1j_(ptr nonnull align 8 %i.d)
  br label %bb.f

bb.m:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.n:                                             ; preds = %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @_RNCNvNtCskarGseaywcB_14diesel_derives12sql_function18expand_nonvariadics_0B5_(ptr nofree readnone captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = icmp eq i64 %i.a, 47
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCskarGseaywcB_14diesel_derives12sql_function18expand_nonvariadicsa_0B5_(ptr sret([24 x i8]) align 8 %0, ptr nofree readnone captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 224
  tail call void @_RNvXs15_Csf5uYjtxkodL_11proc_macro2NtB6_5IdentNtNtCscI6d9CVNmLh_4core5clone5Clone5cloneCskarGseaywcB_14diesel_derives(ptr sret([24 x i8]) align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCskarGseaywcB_14diesel_derives12sql_function19parse_sql_name_attr0B5_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr nofree readnone captures(none) %1, ptr align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = load i64, ptr %2, align 8
  %i.c = icmp eq i64 %i.b, 44
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @_RNvMNtCshMFl0SviwmK_3syn3litNtB2_6LitStr5value(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvNtCskarGseaywcB_14diesel_derives12sql_function19parse_sql_name_attrs_0B5_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvXsB_NtCs40k4W9msRzi_5alloc6stringNtCsf5uYjtxkodL_11proc_macro25IdentNtB5_8ToString9to_stringBA_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNCNvNtCskarGseaywcB_14diesel_derives12sql_function25add_variadic_doc_comments0B5_(ptr nofree readnone captures(none) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 4 uses
  %i.b = icmp ult i64 %i.a, 42
  %i.c = icmp eq i64 %i.a, 48
  %i.d = or i1 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i64 %i.a, 40
  %i.f = icmp eq i64 %i.a, 42
  %i.g = or i1 %i.e, %i.f
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.i = tail call zeroext i1 @_RINvMs_NtCshMFl0SviwmK_3syn4pathNtB5_4Path8is_identeEB7_(ptr nonnull align 8 %i.h, ptr nonnull @23, i64 3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.i, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvXNtCskarGseaywcB_14diesel_derives12sql_functionNtB4_14ExternSqlBlockNtNtCshMFl0SviwmK_3syn5parse5Parse5parses0_0B6_(ptr sret([400 x i8]) align 8 %0, ptr nofree readnone captures(none) %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  invoke void @_RNvMCsf5uYjtxkodL_11proc_macro2NtB2_11TokenStream3new(ptr nonnull sret([32 x i8]) align 8 %i.a)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.d, %bb.e ]
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item11ForeignItemEBF_(ptr align 8 %2) #13
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %bb.f, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXsv_NtCshMFl0SviwmK_3syn4itemNtB5_11ForeignItemNtNtCsa66IwKi6YE3_5quote9to_tokens8ToTokens9to_tokens(ptr align 8 %2, ptr nonnull align 8 %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCsf5uYjtxkodL_11proc_macro211TokenStreamECsa66IwKi6YE3_5quote(ptr nonnull align 8 %i.a) #13
          to label %bb.b unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  invoke void @_RINvCshMFl0SviwmK_3syn6parse2NtNtCskarGseaywcB_14diesel_derives12sql_function15SqlFunctionDeclEBv_(ptr sret([400 x i8]) align 8 %0, ptr nonnull align 8 %i.b)
          to label %bb.g unwind label %bb.c

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn4item11ForeignItemEBF_(ptr align 8 %2)
  ret void

bb.h:                                             ; preds = %bb.e, %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvXNtCskarGseaywcB_14diesel_derives12sql_functionNtB4_14ExternSqlBlockNtNtCshMFl0SviwmK_3syn5parse5Parse5parses1_0B6_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  invoke void @_RNvXs3_NtCshMFl0SviwmK_3syn5errorNtB5_5ErrorNtNtCscI6d9CVNmLh_4core5clone5Clone5clone(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5error5ErrorEBF_(ptr align 8 %2) #13
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtCshMFl0SviwmK_3syn5errorNtB2_5Error7combine(ptr align 8 %2, ptr nonnull align 8 %i.a)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvXNtCskarGseaywcB_14diesel_derives12sql_functionNtB4_14ExternSqlBlockNtNtCshMFl0SviwmK_3syn5parse5Parse5parses_0B6_(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMNtCshMFl0SviwmK_3syn3litNtB2_6LitStr5value(ptr sret([24 x i8]) align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden i32 @_RNCNvXs_NtCskarGseaywcB_14diesel_derives12sql_functionNtB6_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parses0_0B8_(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = load ptr, ptr %0, align 8
  invoke void @_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCshMFl0SviwmK_3syn5error5ErrorE4takeCskarGseaywcB_14diesel_derives(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %i.g)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn5error5ErrorE3mapBI_NCNCNvXs_NtCskarGseaywcB_14diesel_derives12sql_functionNtB1x_15SqlFunctionDeclNtNtBM_5parse5Parse5parse00EB1z_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCshMFl0SviwmK_3syn5error5ErrorE9unwrap_orCskarGseaywcB_14diesel_derives(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.h = load ptr, ptr %0, align 8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn5error5ErrorEECskarGseaywcB_14diesel_derives(ptr align 8 %i.h)
          to label %_RNCNvXs_NtCskarGseaywcB_14diesel_derives12sql_functionNtB6_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0B8_.exit unwind label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.thread.i
  %.pn5.i = phi { ptr, i32 } [ %i.i, %.thread.i ], [ %lpad.thr_comm.i, %bb.e ]
  resume { ptr, i32 } %.pn5.i

bb.e:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.f) #13
          to label %bb.d unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #15
  unreachable

_RNCNvXs_NtCskarGseaywcB_14diesel_derives12sql_functionNtB6_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0B8_.exit: ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.m = call i32 @_RNvXs3N_NtCshMFl0SviwmK_3syn5tokenNtB6_2FnNtNtCscI6d9CVNmLh_4core7default7Default7default()
  ret i32 %i.m
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNCNvXs_NtCskarGseaywcB_14diesel_derives12sql_functionNtB6_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parses1_0B8_(ptr sret([24 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = load ptr, ptr %1, align 8
  invoke void @_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCshMFl0SviwmK_3syn5error5ErrorE4takeCskarGseaywcB_14diesel_derives(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 8 %i.g)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionNtNtCshMFl0SviwmK_3syn5error5ErrorE3mapBI_NCNCNvXs_NtCskarGseaywcB_14diesel_derives12sql_functionNtB1x_15SqlFunctionDeclNtNtBM_5parse5Parse5parse00EB1z_(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @_RNvMNtCscI6d9CVNmLh_4core6optionINtB2_6OptionNtNtCshMFl0SviwmK_3syn5error5ErrorE9unwrap_orCskarGseaywcB_14diesel_derives(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.h = load ptr, ptr %1, align 8
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCshMFl0SviwmK_3syn5error5ErrorEECskarGseaywcB_14diesel_derives(ptr align 8 %i.h)
          to label %_RNCNvXs_NtCskarGseaywcB_14diesel_derives12sql_functionNtB6_15SqlFunctionDeclNtNtCshMFl0SviwmK_3syn5parse5Parse5parse0B8_.exit unwind label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %1, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.thread.i
  %.pn5.i = phi { ptr, i32 } [ %i.i, %.thread.i ], [ %lpad.thr_comm.i, %bb.e ]
  resume { ptr, i32 } %.pn5.i

bb.e:                                             ; preds = %bb.b, %bb.a
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCshMFl0SviwmK_3syn5error5ErrorEBF_(ptr nonnull align 8 %i.f) #13
end_hunk_0
