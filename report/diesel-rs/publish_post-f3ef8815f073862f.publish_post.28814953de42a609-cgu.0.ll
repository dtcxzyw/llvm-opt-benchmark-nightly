Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/publish_post-f3ef8815f073862f.publish_post.28814953de42a609-cgu.0?download=true
inline.NumInlined: 246
inline.NumDeleted: 140
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtCsgczF5crJ4sT_3std11collections4hash3map11VacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1I_5mysql7backend5MysqlENtNtNtB2T_10connection4stmt9StatementEECs3tBEscNKhHV_12publish_post:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.a = load i64, ptr %0, align 8, !range !10, !alias.scope !320, !noundef !4 ; 2 uses
  switch i64 %i.a, label %bb.b [
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown11rustc_entry16RustcVacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1G_5mysql7backend5MysqlENtNtNtB2R_10connection4stmt9StatementEECs3tBEscNKhHV_12publish_post.exit
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs3tBEscNKhHV_12publish_post.exit.i.i
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !320, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #17, !noalias !321
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs3tBEscNKhHV_12publish_post.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs3tBEscNKhHV_12publish_post.exit.i.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i64, ptr %i.c, align 8, !alias.scope !320 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown11rustc_entry16RustcVacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1G_5mysql7backend5MysqlENtNtNtB2R_10connection4stmt9StatementEECs3tBEscNKhHV_12publish_post.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs3tBEscNKhHV_12publish_post.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i = load ptr, ptr %i.e, align 8, !alias.scope !320, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #17, !noalias !322
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown11rustc_entry16RustcVacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1G_5mysql7backend5MysqlENtNtNtB2R_10connection4stmt9StatementEECs3tBEscNKhHV_12publish_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsfKiFC1ztrmh_9hashbrown11rustc_entry16RustcVacantEntryINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtB1G_5mysql7backend5MysqlENtNtNtB2R_10connection4stmt9StatementEECs3tBEscNKhHV_12publish_post.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs3tBEscNKhHV_12publish_post.exit.i.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result21DeserializeFieldErrorECs3tBEscNKhHV_12publish_post(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.a = load i64, ptr %0, align 8, !range !10, !alias.scope !327, !noundef !4 ; 2 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs3tBEscNKhHV_12publish_post.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !327, !nonnull !4, !noundef !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #17, !noalias !328
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs3tBEscNKhHV_12publish_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs3tBEscNKhHV_12publish_post.exit: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.d, align 8             ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.e, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.f = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs3tBEscNKhHV_12publish_post.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.f(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs40k4W9msRzi_5alloc6string6StringEECs3tBEscNKhHV_12publish_post.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECs3tBEscNKhHV_12publish_post.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !12, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.k) #17
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECs3tBEscNKhHV_12publish_post.exit

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !4 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tBEscNKhHV_12publish_post.exit5.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !12, !invariant.load !4
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) %i.q) #17
  br label %_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tBEscNKhHV_12publish_post.exit5.i

_RNvXs8_NtCs40k4W9msRzi_5alloc5boxedINtB5_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCs3tBEscNKhHV_12publish_post.exit5.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.e
  resume { ptr, i32 } %i.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1w_4SendEL_EECs3tBEscNKhHV_12publish_post.exit: ; preds = %bb.d, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator10MysqlFieldECs3tBEscNKhHV_12publish_post(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %.val, align 8, !noundef !4
  %i.c = add i64 %i.b, -1
  store i64 %i.c, ptr %.val, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !335, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !335, !noundef !4
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !noalias !335
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataEECs3tBEscNKhHV_12publish_post.exit1

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataEECs3tBEscNKhHV_12publish_post.exit1

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataEECs3tBEscNKhHV_12publish_post.exit1: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator8MysqlRowECs3tBEscNKhHV_12publish_post(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !349)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !350, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !350, !noundef !4
  %i.c = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !noalias !350
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEEECs3tBEscNKhHV_12publish_post.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEE9drop_slowB1o_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEEECs3tBEscNKhHV_12publish_post.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !353, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noalias !353, !noundef !4
  %i.i = add i64 %i.h, -1                         ; 2 uses
  store i64 %i.i, ptr %i.g, align 8, !noalias !353
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataEECs3tBEscNKhHV_12publish_post.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataEECs3tBEscNKhHV_12publish_post.exit unwind label %bb.f

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEEECs3tBEscNKhHV_12publish_post.exit: ; preds = %bb.a, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !356, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !356, !noundef !4
  %i.n = add i64 %i.m, -1                         ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !noalias !356
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataEECs3tBEscNKhHV_12publish_post.exit2

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEEECs3tBEscNKhHV_12publish_post.exit
  tail call void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataEECs3tBEscNKhHV_12publish_post.exit2

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataEECs3tBEscNKhHV_12publish_post.exit2: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcINtNtB4_4cell7RefCellNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iterator15PrivateMysqlRowEEECs3tBEscNKhHV_12publish_post.exit, %bb.e
  ret void

bb.f:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc2rc2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataEECs3tBEscNKhHV_12publish_post.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvNtCsgczF5crJ4sT_3std2rt10lang_startuECs3tBEscNKhHV_12publish_post(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i8 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef i64 @_RNvNtCsgczF5crJ4sT_3std2rt19lang_start_internal(ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @3, i64 noundef %1, ptr noundef %2, i8 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsgczF5crJ4sT_3std3sys9backtrace28___rust_begin_short_backtraceFEuuECs3tBEscNKhHV_12publish_post(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #3 {
bb.a:
  tail call void %0(), !inline_history !357
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !358
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs0_NtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtNtCscI6d9CVNmLh_4core6result6ResultNtNtNtNtBa_5mysql10connection4stmt9StatementNtNtBa_6result5ErrorEINtB6_27StatementCallbackReturnTypeB1A_RNtNtB1E_3raw13RawConnectionE14register_cacheNCINvMB6_INtB6_14StatementCacheNtNtB1G_7backend5MysqlB1A_E33cached_statement_non_generic_implBY_B3g_NCINvB44_28cached_statement_non_genericBY_B3g_E0E0ECs3tBEscNKhHV_12publish_post(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) initializes((0, 24)) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 10 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.78.0.copyload = load i64, ptr %.sroa.78.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !range !6, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i64 1, ptr %0, align 8
  switch i64 %.sroa.0.0.copyload, label %bb.c [
    i64 -1, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtBH_14StatementCacheNtNtNtBL_5mysql7backend5MysqlNtNtNtB1Z_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtB4_6result6ResultB2o_NtNtBL_6result5ErrorERNtNtB2s_3raw13RawConnectionNCINvBG_28cached_statement_non_genericB3z_B4k_E0E0ECs3tBEscNKhHV_12publish_post.exit
    i64 0, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs3tBEscNKhHV_12publish_post.exit.i.i.i.i
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #17, !noalias !374
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs3tBEscNKhHV_12publish_post.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs3tBEscNKhHV_12publish_post.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.f = icmp eq i64 %.sroa.78.0.copyload, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtBH_14StatementCacheNtNtNtBL_5mysql7backend5MysqlNtNtNtB1Z_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtB4_6result6ResultB2o_NtNtBL_6result5ErrorERNtNtB2s_3raw13RawConnectionNCINvBG_28cached_statement_non_genericB3z_B4k_E0E0ECs3tBEscNKhHV_12publish_post.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs3tBEscNKhHV_12publish_post.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload, i64 noundef %.sroa.78.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #17, !noalias !375
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtBH_14StatementCacheNtNtNtBL_5mysql7backend5MysqlNtNtNtB1Z_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtB4_6result6ResultB2o_NtNtBL_6result5ErrorERNtNtB2s_3raw13RawConnectionNCINvBG_28cached_statement_non_genericB3z_B4k_E0E0ECs3tBEscNKhHV_12publish_post.exit

bb.e:                                             ; preds = %bb.a
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.915.0.copyload = load ptr, ptr %.sroa.915.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.a, align 8, !noalias !377
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.6.0..sroa_idx4, align 8, !noalias !377
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx6, align 8, !noalias !377
  %.sroa.78.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.78.0.copyload, ptr %.sroa.78.0..sroa_idx9, align 8, !noalias !377
  %.sroa.8.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.8.0.copyload, ptr %.sroa.8.0..sroa_idx11, align 8, !noalias !377
  %.sroa.9.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx13, align 8, !noalias !377
  %i.h = call noundef nonnull ptr @_RNvMs6_NtCsfKiFC1ztrmh_9hashbrown3rawINtB5_8RawTableTINtNtNtCsjRvGck33osM_6diesel10connection15statement_cache17StatementCacheKeyNtNtNtBW_5mysql7backend5MysqlENtNtNtB27_10connection4stmt9StatementEE14insert_no_growCs3tBEscNKhHV_12publish_post(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sroa.915.0.copyload, i64 noundef %.sroa.10.0.copyload, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !376
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtBH_14StatementCacheNtNtNtBL_5mysql7backend5MysqlNtNtNtB1Z_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtB4_6result6ResultB2o_NtNtBL_6result5ErrorERNtNtB2s_3raw13RawConnectionNCINvBG_28cached_statement_non_genericB3z_B4k_E0E0ECs3tBEscNKhHV_12publish_post.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvMNtNtCsjRvGck33osM_6diesel10connection15statement_cacheINtBH_14StatementCacheNtNtNtBL_5mysql7backend5MysqlNtNtNtB1Z_10connection4stmt9StatementE33cached_statement_non_generic_implINtNtB4_6result6ResultB2o_NtNtBL_6result5ErrorERNtNtB2s_3raw13RawConnectionNCINvBG_28cached_statement_non_genericB3z_B4k_E0E0ECs3tBEscNKhHV_12publish_post.exit: ; preds = %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs40k4W9msRzi_5alloc6string6StringECs3tBEscNKhHV_12publish_post.exit.i.i.i.i, %bb.b, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtNtBa_5mysql10connection4stmt8iterator8MysqlRowEINtB8_3RowNtNtB17_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !382, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !382, !noundef !4 ; 2 uses
  %i.d = add i64 %i.c, %2
  %i.e = tail call { i64, i64 } @_RNvXs4_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB5_8MysqlRowINtNtBd_3row8RowIndexjE3idx(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %i.d), !noalias !382 ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit, label %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit.thread

_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit: ; preds = %bb.a
  %i.h = extractvalue { i64, i64 } %i.e, 1        ; 3 uses
  %.not.i.i = icmp ule i64 %i.c, %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !383
  %i.k = icmp ult i64 %i.h, %i.j
  %.sroa.0.0.i.i = select i1 %.not.i.i, i1 %i.k, i1 false
  br i1 %.sroa.0.0.i.i, label %bb.b, label %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit.thread

bb.b:                                             ; preds = %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit
  tail call void @_RINvXs3_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB6_8MysqlRowINtNtBe_3row3RowNtNtBc_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, i64 noundef %i.h)
  br label %bb.c

_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit.thread: ; preds = %bb.a, %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit
  store ptr null, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit.thread, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtCsjRvGck33osM_6diesel11deserializebINtB6_16FromStaticSqlRowNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE14build_from_rowINtNtNtB8_3row7private10PartialRowNtNtNtNtB1v_10connection4stmt8iterator8MysqlRowEECs3tBEscNKhHV_12publish_post(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !415, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !415, !noundef !4 ; 2 uses
  %i.l = tail call { i64, i64 } @_RNvXs4_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB5_8MysqlRowINtNtBd_3row8RowIndexjE3idx(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i64 noundef %i.k), !noalias !416 ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit.i, label %_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtNtBa_5mysql10connection4stmt8iterator8MysqlRowEINtB8_3RowNtNtB17_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post.exit.thread

_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit.i: ; preds = %bb.a
  %i.o = extractvalue { i64, i64 } %i.l, 1        ; 3 uses
  %.not.i.i.i = icmp ule i64 %i.k, %i.o
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !417
  %i.r = icmp ult i64 %i.o, %i.q
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i1 %i.r, i1 false
  br i1 %.sroa.0.0.i.i.i, label %_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtNtBa_5mysql10connection4stmt8iterator8MysqlRowEINtB8_3RowNtNtB17_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post.exit, label %_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtNtBa_5mysql10connection4stmt8iterator8MysqlRowEINtB8_3RowNtNtB17_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post.exit.thread

_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtNtBa_5mysql10connection4stmt8iterator8MysqlRowEINtB8_3RowNtNtB17_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post.exit: ; preds = %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit.i
  call void @_RINvXs3_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB6_8MysqlRowINtNtBe_3row3RowNtNtBc_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.i, i64 noundef %i.o), !noalias !413
  %.pr = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtNtBa_5mysql10connection4stmt8iterator8MysqlRowEINtB8_3RowNtNtB17_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtNtBa_5mysql10connection4stmt8iterator8MysqlRowEINtB8_3RowNtNtB17_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs6_NtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8iteratorNtB5_10MysqlFieldINtNtBd_3row5FieldNtNtBb_7backend5MysqlE5value(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.d unwind label %bb.s

_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtNtBa_5mysql10connection4stmt8iterator8MysqlRowEINtB8_3RowNtNtB17_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post.exit.thread: ; preds = %_RNvXs2_NtNtCsjRvGck33osM_6diesel3row7privateINtB5_10PartialRowNtNtNtNtNtB9_5mysql10connection4stmt8iterator8MysqlRowEINtB7_8RowIndexjE3idxCs3tBEscNKhHV_12publish_post.exit.i, %bb.a, %_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtNtBa_5mysql10connection4stmt8iterator8MysqlRowEINtB8_3RowNtNtB17_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @5, ptr %i.s, align 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNCINvXs2_NtCsjRvGck33osM_6diesel11deserializebINtBK_16FromStaticSqlRowNtNtBM_9sql_types4BoolNtNtNtBM_5mysql7backend5MysqlE14build_from_rowINtNtNtBM_3row7private10PartialRowNtNtNtNtB29_10connection4stmt8iterator8MysqlRowEE0ECs3tBEscNKhHV_12publish_post.exit, %_RINvXs0_NtNtCsjRvGck33osM_6diesel3row7privateINtB6_10PartialRowNtNtNtNtNtBa_5mysql10connection4stmt8iterator8MysqlRowEINtB8_3RowNtNtB17_7backend5MysqlE3getjECs3tBEscNKhHV_12publish_post.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !418)
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load i8, ptr %i.t, align 8, !range !13, !alias.scope !419, !noundef !4
  %.not.i = icmp eq i8 %i.u, -1
  br i1 %.not.i, label %_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsd_NtNtCsjRvGck33osM_6diesel5mysql5typesbINtNtB9_11deserialize7FromSqlNtNtB9_9sql_types4BoolNtNtB7_7backend5MysqlE8from_sql(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
          to label %_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit unwind label %bb.s

_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit.thread: ; preds = %bb.d
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !alias.scope !418
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @42, ptr %i.v, align 8, !alias.scope !418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  br label %bb.f

_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit: ; preds = %bb.e
  %.pr15 = load ptr, ptr %0, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %.not2 = icmp eq ptr %.pr15, null
  br i1 %.not2, label %bb.p, label %_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit._crit_edge

_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit._crit_edge: ; preds = %_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit._crit_edge, %_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit.thread
  %i.w = phi ptr [ @42, %_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit.thread ], [ %.pre, %_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit._crit_edge ] ; 5 uses
  %i.x = phi ptr [ inttoptr (i64 1 to ptr), %_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit.thread ], [ %.pr15, %_RNvYbINtNtCsjRvGck33osM_6diesel11deserialize7FromSqlNtNtB8_9sql_types4BoolNtNtNtB8_5mysql7backend5MysqlE17from_nullable_sqlCs3tBEscNKhHV_12publish_post.exit._crit_edge ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !420)
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !422
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !4, !alias.scope !421, !nonnull !4
  invoke void %i.aa(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.x)
          to label %bb.g unwind label %bb.m, !noalias !422

bb.g:                                             ; preds = %bb.f
  %i.ab = load i128, ptr %i.a, align 16, !noalias !422, !noundef !4
  %i.ac = icmp eq i128 %i.ab, -163709168045336727173992277504286119362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !422
  br i1 %i.ac, label %bb.h, label %.noexc4, !prof !14

.noexc4:                                          ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !422
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !422
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !421
  call void @_RINvMsh_NtCsjRvGck33osM_6diesel6resultNtB6_21DeserializeFieldError3newNtNtNtNtNtB8_5mysql10connection4stmt8iterator10MysqlFieldNtNtB1e_7backend5MysqlECs3tBEscNKhHV_12publish_post(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noundef nonnull %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !422
  %i.ad = invoke fastcc noundef ptr @_RNvNtCs40k4W9msRzi_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 40)
          to label %bb.l unwind label %bb.j, !noalias !423 ; 2 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !424)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !425, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %i.af = load i64, ptr %.val.i.i, align 8, !noalias !426, !noundef !4
  %i.ag = add i64 %i.af, -1
  store i64 %i.ag, ptr %.val.i.i, align 8, !noalias !426
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !427)
  call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !429, !nonnull !4, !noundef !4 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !430, !noundef !4
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.ai, align 8, !noalias !430
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.i, label %bb.r

bb.i:                                             ; preds = %bb.h
  call void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcNtNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4stmt8metadata17StatementMetadataE9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
  br label %bb.r

bb.j:                                             ; preds = %.noexc4
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result21DeserializeFieldErrorECs3tBEscNKhHV_12publish_post(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c) #19
          to label %.body.thread unwind label %bb.k, !noalias !420

bb.k:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
end_hunk_0
