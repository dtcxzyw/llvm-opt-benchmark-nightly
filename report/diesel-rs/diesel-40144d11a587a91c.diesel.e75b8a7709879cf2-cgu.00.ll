Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/diesel-rs/original/diesel-40144d11a587a91c.diesel.e75b8a7709879cf2-cgu.00?download=true
inline.NumInlined: 201
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXsl_NtCsjRvGck33osM_6diesel6resultNtB5_17DatabaseErrorKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt
define internal noundef zeroext i1 @_RNvXsl_NtCsjRvGck33osM_6diesel6resultNtB5_17DatabaseErrorKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !373, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsl_NtCsjRvGck33osM_6diesel6resultNtB5_17DatabaseErrorKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsl_NtCsjRvGck33osM_6diesel6resultNtB5_17DatabaseErrorKindNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.23, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsjRvGck33osM_6diesel6result10EmptyQueryNtNtCscI6d9CVNmLh_4core5error5Error5causeB6_(ptr noalias noundef nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsjRvGck33osM_6diesel6result18UnexpectedEndOfRowNtNtCscI6d9CVNmLh_4core5error5Error5causeB6_(ptr noalias noundef nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsjRvGck33osM_6diesel6result19UnexpectedNullErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeB6_(ptr noalias noundef nonnull readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, ptr } @_RNvYNtNtCsjRvGck33osM_6diesel6result21DeserializeFieldErrorNtNtCscI6d9CVNmLh_4core5error5Error5causeB6_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !align !11, !noundef !4
  %i.c = insertvalue { ptr, ptr } poison, ptr %.val, 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr %.val1, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsjRvGck33osM_6diesel6result5ErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionB6_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @91, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsjRvGck33osM_6diesel6result5ErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceB6_(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsjRvGck33osM_6diesel6result5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideB6_(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsjRvGck33osM_6diesel6result5ErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @92, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorNtNtCscI6d9CVNmLh_4core5error5Error11descriptionCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @91, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorNtNtCscI6d9CVNmLh_4core5error5Error6sourceCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorNtNtCscI6d9CVNmLh_4core5error5Error7provideCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCs40k4W9msRzi_5alloc3ffi5c_str8NulErrorNtNtCscI6d9CVNmLh_4core5error5Error7type_idCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @93, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCscI6d9CVNmLh_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error11descriptionCsjRvGck33osM_6diesel(ptr noalias readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @91, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error6sourceCsjRvGck33osM_6diesel(ptr noalias readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7provideCsjRvGck33osM_6diesel(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3num11float_parse15ParseFloatErrorNtNtB8_5error5Error7type_idCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @94, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCscI6d9CVNmLh_4core3num5error13ParseIntErrorNtNtB8_5error5Error11descriptionCsjRvGck33osM_6diesel(ptr noalias readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @91, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3num5error13ParseIntErrorNtNtB8_5error5Error6sourceCsjRvGck33osM_6diesel(ptr noalias readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCsjRvGck33osM_6diesel(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @95, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCscI6d9CVNmLh_4core3num5error15TryFromIntErrorNtNtB8_5error5Error11descriptionCsjRvGck33osM_6diesel(ptr noalias readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @91, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3num5error15TryFromIntErrorNtNtB8_5error5Error6sourceCsjRvGck33osM_6diesel(ptr noalias readonly captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7provideCsjRvGck33osM_6diesel(ptr noalias readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3num5error15TryFromIntErrorNtNtB8_5error5Error7type_idCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @96, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error11descriptionCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @91, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error6sourceCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error7provideCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error7type_idCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @97, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager22AnsiTransactionManagerINtB4_18TransactionManagerNtNtNtB8_2pg10connection12PgConnectionE29is_broken_transaction_managerB8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 101
  %i.c = load i8, ptr %i.b, align 1, !range !15, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %.sroa.0.0.ph = icmp eq i8 %i.c, 0
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager29ValidTransactionManagerStatusNtNtB14_6result5ErrorEEB14_.exit

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %i.a, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager29ValidTransactionManagerStatusNtNtB14_6result5ErrorEEB14_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager29ValidTransactionManagerStatusNtNtB14_6result5ErrorEEB14_.exit: ; preds = %.thread, %bb.b
  %.sroa.0.04 = phi i1 [ %.sroa.0.0.ph, %.thread ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.04
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager22AnsiTransactionManagerINtB4_18TransactionManagerNtNtNtB8_5mysql10connection15MysqlConnectionE29is_broken_transaction_managerB8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 53
  %i.c = load i8, ptr %i.b, align 1, !range !15, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %.sroa.0.0.ph = icmp eq i8 %i.c, 0
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager29ValidTransactionManagerStatusNtNtB14_6result5ErrorEEB14_.exit

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %i.a, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager29ValidTransactionManagerStatusNtNtB14_6result5ErrorEEB14_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager29ValidTransactionManagerStatusNtNtB14_6result5ErrorEEB14_.exit: ; preds = %.thread, %bb.b
  %.sroa.0.04 = phi i1 [ %.sroa.0.0.ph, %.thread ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.04
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager22AnsiTransactionManagerINtB4_18TransactionManagerNtNtNtB8_6sqlite10connection16SqliteConnectionE29is_broken_transaction_managerB8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.c = load i8, ptr %i.b, align 1, !range !15, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.c, -1
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %.sroa.0.0.ph = icmp eq i8 %i.c, 0
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager29ValidTransactionManagerStatusNtNtB14_6result5ErrorEEB14_.exit

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775799, ptr %i.a, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsjRvGck33osM_6diesel6result5ErrorEBF_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager29ValidTransactionManagerStatusNtNtB14_6result5ErrorEEB14_.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6result6ResultQNtNtNtCsjRvGck33osM_6diesel10connection19transaction_manager29ValidTransactionManagerStatusNtNtB14_6result5ErrorEEB14_.exit: ; preds = %.thread, %bb.b
  %.sroa.0.04 = phi i1 [ %.sroa.0.0.ph, %.thread ], [ true, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.04
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, i64 } { ptr @91, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsjRvGck33osM_6diesel(ptr noalias readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias readonly align 8 captures(none) %2) unnamed_addr #7 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @98, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rowNtB5_7PgFieldINtNtBb_3row5FieldNtNtB9_7backend2PgE10field_name(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecINtNtCscI6d9CVNmLh_4core6option6OptionPeEENtNtNtBK_3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBN_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtCscI6d9CVNmLh_4core6option6OptionPeEENtNtNtBR_3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsjRvGck33osM_6diesel5mysql10connection4bind8BindDataENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropBU_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVechENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResultNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCscI6d9CVNmLh_4core3str8converts9from_utf8(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscI6d9CVNmLh_4core3fmtReNtB6_5Debug3fmtCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBd_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB12_6marker4SyncNtB1z_4SendEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCs40k4W9msRzi_5alloc5boxed7convertINtBc_3BoxDNtNtCscI6d9CVNmLh_4core5error5ErrorNtNtB11_6marker4SyncNtB1y_4SendEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCscI6d9CVNmLh_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCsjRvGck33osM_6diesel(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCscI6d9CVNmLh_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3str5error9Utf8ErrorNtNtB8_5error5Error5causeCsjRvGck33osM_6diesel(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCs40k4W9msRzi_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsjRvGck33osM_6diesel(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #2

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCs40k4W9msRzi_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #6

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB2_13RawConnection16finish_copy_from(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult11column_type(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i32 noundef) unnamed_addr #2

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCscI6d9CVNmLh_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult13rows_affected(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs3_NtNtCscI6d9CVNmLh_4core3ffi5c_strNtB5_4CStr6to_str(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult9get_bytes(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 0, 13) i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult13result_status(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult12column_count(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult9row_count(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB2_13RawConnection15get_next_result(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult16get_result_field(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i32 noundef range(i32 67, 117)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i32 0, 16) i32 @_RNvMNtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB2_13RawConnection10get_status(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RNvMs3_NtNtNtCsjRvGck33osM_6diesel2pg10connection3rawNtB5_9RawResult7is_null(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.uadd.sat.i32(i32, i32) #14

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @mysql_stmt_num_rows(ptr noundef) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @mysql_stmt_fetch_column(ptr noundef, ptr noundef, i32 noundef, i64 noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCscI6d9CVNmLh_4core3num5errorNtB4_15TryFromIntErrorNtNtB8_3fmt7Display3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCscI6d9CVNmLh_4core3num5error15TryFromIntErrorNtNtB8_5error5Error5causeCsjRvGck33osM_6diesel(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i64 @mysql_stmt_affected_rows(ptr noundef) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @mysql_stmt_fetch(ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4bindNtB5_11OutputBinds24populate_dynamic_buffers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4bindNtB5_11OutputBinds21update_buffer_lengths(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VechE7reserveCsjRvGck33osM_6diesel(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs1_NtNtNtCsjRvGck33osM_6diesel5mysql10connection4bindNtB6_5Binds16with_mysql_bindsNCNvMs_NtB8_4stmtNtB1u_9Statement10input_bind0uEBc_(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @mysql_stmt_bind_result(ptr noundef, ptr noundef) unnamed_addr #6

end_hunk_0
