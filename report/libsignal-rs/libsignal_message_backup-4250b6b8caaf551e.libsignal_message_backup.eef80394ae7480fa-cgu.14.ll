Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_message_backup-4250b6b8caaf551e.libsignal_message_backup.eef80394ae7480fa-cgu.14?download=true
inline.NumInlined: 41
inline.NumDeleted: 29
begin_hunk_0_@_RNvXse_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7paymentNtB5_12PaymentErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXsf_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4callNtB5_9CallErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !4, !noundef !5
  %i.b = icmp eq i8 %i.a, 11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @43, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4fileNtB5_22MessageAttachmentErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 3 uses
  %i.c = icmp ne i64 %i.b, 15
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.b, -14
  %i.e = icmp samesign ugt i64 %i.b, 13
  %i.f = select i1 %i.e, i64 %i.d, i64 1
  switch i64 %i.f, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @281, i64 noundef 13)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @282, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @283, i64 noundef 11)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.c ], [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXsf_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7paymentNtB5_12PaymentErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !5
  %.inv = icmp samesign ult i64 %i.a, 3
  %. = select i1 %.inv, ptr %0, ptr null
  %i.b = insertvalue { ptr, ptr } poison, ptr %., 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr @285, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define internal { ptr, ptr } @_RNvXsg_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4fileNtB5_22MessageAttachmentErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = icmp ne i64 %i.a, 15
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp samesign ult i64 %i.a, 14
  %. = select i1 %i.c, ptr %0, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %., 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @287, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsh_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7paymentNtB5_16TransactionErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !20, !noundef !5
  switch i64 %i.b, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @288, i64 noundef 19)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @289, i64 noundef 26)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXsi_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7paymentNtB5_16TransactionErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !20, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  %i.d = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.e = insertvalue { ptr, ptr } %i.d, ptr @43, 1
  ret { ptr, ptr } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXso_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7stickerNtB5_19MessageStickerErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.c = add nsw i64 %i.b, -14
  %i.d = icmp samesign ugt i64 %i.b, 13
  %i.e = select i1 %i.d, i64 %i.c, i64 3
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 13)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 14)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @292, i64 noundef 18)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 11, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ], [ %i.i, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXsp_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7stickerNtB5_19MessageStickerErrorNtNtCsgxBkk5gSRhY_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5
  %i.b = icmp samesign ult i64 %i.a, 14
  %. = select i1 %i.b, ptr %0, ptr null
  %i.c = insertvalue { ptr, ptr } poison, ptr %., 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @287, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsw_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chatNtB5_17ExpirationTooSoonNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @296, i64 noundef 17, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @297, i64 noundef 11, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @294, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @298, i64 noundef 10, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @295)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsy_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chatNtB5_18ExpirationTooShortNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @300, i64 noundef 18, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @301, i64 noundef 19, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @299)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9CallErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9CallErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideB8_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9CallErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @303, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17ExpirationTooSoonNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17ExpirationTooSoonNtNtCsgxBkk5gSRhY_4core5error5Error5causeB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17ExpirationTooSoonNtNtCsgxBkk5gSRhY_4core5error5Error6sourceB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17ExpirationTooSoonNtNtCsgxBkk5gSRhY_4core5error5Error7provideB8_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17ExpirationTooSoonNtNtCsgxBkk5gSRhY_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @304, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17InvalidExpirationNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17InvalidExpirationNtNtCsgxBkk5gSRhY_4core5error5Error5causeB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !range !18, !alias.scope !53, !noundef !5 ; 2 uses
  %i.c = icmp samesign ugt i32 %i.b, 999999999
  %i.d = zext nneg i32 %i.b to i64
  %i.e = add nsw i64 %i.d, -999999999
  %i.f = select i1 %i.c, i64 %i.e, i64 0
  switch i64 %i.f, label %bb.b [
    i64 0, label %_RNvXsB_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chatNtB5_17InvalidExpirationNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit
    i64 1, label %bb.c
    i64 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  br label %_RNvXsB_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chatNtB5_17InvalidExpirationNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit

bb.d:                                             ; preds = %bb.a
  br label %_RNvXsB_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chatNtB5_17InvalidExpirationNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit

_RNvXsB_NtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chatNtB5_17InvalidExpirationNtNtCsgxBkk5gSRhY_4core5error5Error6source.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.4.0.i = phi ptr [ undef, %bb.d ], [ @204, %bb.c ], [ @202, %bb.a ]
  %.sroa.0.0.i = phi ptr [ null, %bb.d ], [ %0, %bb.c ], [ %0, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0.i, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17InvalidExpirationNtNtCsgxBkk5gSRhY_4core5error5Error7provideB8_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17InvalidExpirationNtNtCsgxBkk5gSRhY_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @305, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17OutgoingSendErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17OutgoingSendErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17OutgoingSendErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17OutgoingSendErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideB8_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17OutgoingSendErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @306, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat18ExpirationTooShortNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat18ExpirationTooShortNtNtCsgxBkk5gSRhY_4core5error5Error5causeB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat18ExpirationTooShortNtNtCsgxBkk5gSRhY_4core5error5Error6sourceB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat18ExpirationTooShortNtNtCsgxBkk5gSRhY_4core5error5Error7provideB8_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat18ExpirationTooShortNtNtCsgxBkk5gSRhY_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @307, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file12LocatorErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file12LocatorErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideB8_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file12LocatorErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @308, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file16FilePointerErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file16FilePointerErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideB8_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file16FilePointerErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @309, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file22MessageAttachmentErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file22MessageAttachmentErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideB8_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file22MessageAttachmentErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @310, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideB8_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @311, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker19MessageStickerErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionB8_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker19MessageStickerErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideB8_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker19MessageStickerErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @312, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10gift_badge14GiftBadgeErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10gift_badge14GiftBadgeErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceBa_(ptr noalias nofree readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10gift_badge14GiftBadgeErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10gift_badge14GiftBadgeErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @313, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat11story_reply21DirectStoryReplyErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat11story_reply21DirectStoryReplyErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat11story_reply21DirectStoryReplyErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @314, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted24AdminDeletedMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted24AdminDeletedMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted24AdminDeletedMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted24AdminDeletedMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @315, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13voice_message17VoiceMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13voice_message17VoiceMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13voice_message17VoiceMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @316, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15contact_message22ContactAttachmentErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15contact_message22ContactAttachmentErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15contact_message22ContactAttachmentErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15contact_message22ContactAttachmentErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @317, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17view_once_message20ViewOnceMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17view_once_message20ViewOnceMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17view_once_message20ViewOnceMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @318, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link16LinkPreviewErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link16LinkPreviewErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link16LinkPreviewErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @319, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll9PollErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll9PollErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll9PollErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @320, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @321, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group16GroupUpdateErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group16GroupUpdateErrorNtNtCsgxBkk5gSRhY_4core5error5Error6sourceBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group16GroupUpdateErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group16GroupUpdateErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @322, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote10QuoteErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote10QuoteErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote10QuoteErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @323, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat6pinned15PinMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat6pinned15PinMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat6pinned15PinMessageErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @324, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment12PaymentErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment12PaymentErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment12PaymentErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @325, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment16TransactionErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment16TransactionErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment16TransactionErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @326, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions13ReactionErrorNtNtCsgxBkk5gSRhY_4core5error5Error11descriptionBa_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @302, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions13ReactionErrorNtNtCsgxBkk5gSRhY_4core5error5Error7provideBa_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions13ReactionErrorNtNtCsgxBkk5gSRhY_4core5error5Error7type_idBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @327, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_NtCs9k3SxhrAWiO_3std4timeNtB5_10SystemTime14duration_since(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCsgxBkk5gSRhY_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsgxBkk5gSRhY_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup5frame11RecipientIdNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup9recipient15DestinationKindNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file22MessageAttachmentErrorNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRReNtB6_5Debug3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRjNtB6_5Debug3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup18message_attachment4FlagNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote10QuoteErrorNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions13ReactionErrorNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCsgxBkk5gSRhY_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file16FilePointerErrorNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampErrorNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRyNtB6_5Debug3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextErrorNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NvNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4files6_1__NtB7_22MessageAttachmentErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file22MessageAttachmentErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NvNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quotes1_1__NtB7_10QuoteErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote10QuoteErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NvNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactionss_1__NtB7_13ReactionErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions13ReactionErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NvNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4times0_1__NtB7_14TimestampErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRyNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10chat_style14ChatStyleErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4time14TimestampErrorNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRReNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup16HasUnknownFieldsNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file16FilePointerErrorNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5quote10QuoteErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4link16LinkPreviewErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat9reactions13ReactionErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat7payment12PaymentErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4call9CallErrorNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRjNtB6_7Display3fmtCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat5group16GroupUpdateErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup7sticker19MessageStickerErrorNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat10gift_badge14GiftBadgeErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat17view_once_message20ViewOnceMessageErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat11story_reply21DirectStoryReplyErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4file22MessageAttachmentErrorNtB6_7Display3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat15contact_message22ContactAttachmentErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13voice_message17VoiceMessageErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat14update_message16SimpleChatUpdateNtB6_5Debug3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4poll9PollErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat6pinned15PinMessageErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat13admin_deleted24AdminDeletedMessageErrorNtB6_7Display3fmtBE_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NvNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4texts1_1__NtB7_9TextErrorNtNtCsgxBkk5gSRhY_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup6backup4chat4text9TextErrorNtNtCsgxBkk5gSRhY_4core5error5Error5causeBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

end_hunk_0
