Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_message_backup-4250b6b8caaf551e.libsignal_message_backup.eef80394ae7480fa-cgu.05?download=true
inline.NumInlined: 321
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update25set_groupMemberLeftUpdate:bb.a
  store i64 -9223372036854775799, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update26mut_groupAdminStatusUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !247 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, -9223372036854775800
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775800, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.53.sroa.0.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.0.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.53.sroa.0.sroa.0.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %.sroa.53.sroa.0.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.7.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.53.sroa.0.sroa.7.0..sroa.53.0..sroa_idx.sroa_idx, i8 0, i64 17, i1 false)
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.c
  store i64 -9223372036854775800, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.53.0..sroa_idx4, align 8
  %.sroa.53.sroa.0.sroa.0.sroa.5.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.53.sroa.0.sroa.0.sroa.5.0..sroa.53.0..sroa_idx4.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.0.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.53.sroa.0.sroa.0.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.5.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %.sroa.53.sroa.0.sroa.5.0..sroa.53.0..sroa_idx4.sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.7.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.53.sroa.0.sroa.7.0..sroa.53.0..sroa_idx4.sroa_idx, i8 0, i64 17, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update26mut_groupDescriptionUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !248 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, -9223372036854775804
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.c
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.53.0..sroa_idx4, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx, align 8
  %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx4.sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update26mut_groupJoinRequestUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !249 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, -9223372036854775788
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775788, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, i8 0, i64 24, i1 false)
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.c
  store i64 -9223372036854775788, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.53.0..sroa_idx4, align 8
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx4.sroa_idx, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx, i8 0, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update26mut_groupMemberAddedUpdate(ptr noalias nofree noundef returned align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !250 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp sgt i64 %i.a, -1
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  %.sroa.02.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.02.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.02.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %.sroa.02.sroa.7.0..sroa_idx, align 8
  %.sroa.02.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.02.sroa.9.0..sroa_idx, i8 0, i64 17, i1 false)
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.c
  store i64 0, ptr %0, align 8
  %.sroa.02.sroa.0.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.02.sroa.0.sroa.5.0..sroa_idx20, align 8
  %.sroa.02.sroa.0.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.02.sroa.0.sroa.6.0..sroa_idx22, align 8
  %.sroa.02.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.02.sroa.5.0..sroa_idx10, align 8
  %.sroa.02.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 -1, ptr %.sroa.02.sroa.7.0..sroa_idx13, align 8
  %.sroa.02.sroa.9.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.02.sroa.9.0..sroa_idx16, i8 0, i64 17, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, %bb.b
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update26mut_groupV2MigrationUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !251 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 2 uses
  switch i64 %i.a, label %bb.b [
    i64 -1, label %.thread19
    i64 -9223372036854775780, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %.thread19 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775780, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, i8 0, i64 16, i1 false)
  resume { ptr, i32 } %i.c

.thread19:                                        ; preds = %bb.a, %bb.b
  store i64 -9223372036854775780, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx4, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.thread19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update26set_groupAdminStatusUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !254 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !255, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775800, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.b
  store i64 -9223372036854775800, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update26set_groupDescriptionUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !258 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !259, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.b
  store i64 -9223372036854775804, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update26set_groupJoinRequestUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !262 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !263, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775788, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.b
  store i64 -9223372036854775788, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update26set_groupMemberAddedUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !266 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !267, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update26set_groupV2MigrationUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !270 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !271, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775780, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.b
  store i64 -9223372036854775780, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update26take_groupMemberLeftUpdate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !272 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !9, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %i.b, -9223372036854775791
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, -9223372036854775799
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i64 0, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx, i8 0, i64 24, i1 false)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  store i64 -1, ptr %1, align 8
  %i.e = load i64, ptr %i.a, align 8, !range !9, !noundef !7 ; 5 uses
  %.not9 = icmp eq i64 %i.e, -1                   ; 2 uses
  br i1 %.not9, label %bb.f, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.f = icmp ne i64 %i.e, -9223372036854775791
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, -9223372036854775799
  br i1 %i.g, label %bb.g, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #15
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  ret void

bb.i:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br i1 %.not9, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.j = icmp ne i64 %i.e, -9223372036854775791
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.e, -9223372036854775799
  br i1 %i.k, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k, %bb.i
  resume { ptr, i32 } %i.i

bb.m:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.a) #14
          to label %bb.l unwind label %bb.n

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update35take_groupJoinRequestCanceledUpdate:bb.a
bb.e:                                             ; preds = %bb.d
  %i.f = icmp ne i64 %i.e, -9223372036854775791
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, -9223372036854775786
  br i1 %i.g, label %bb.g, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #15
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  ret void

bb.i:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  br i1 %.not9, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.j = icmp ne i64 %i.e, -9223372036854775791
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.e, -9223372036854775786
  br i1 %i.k, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k, %bb.i
  resume { ptr, i32 } %i.i

bb.m:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.a) #14
          to label %bb.l unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #12
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update36clear_groupJoinRequestApprovalUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !446 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !447, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %0, align 8
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.b
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update36clear_groupJoinRequestCanceledUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !450 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !451, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -1, ptr %0, align 8
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.b
  store i64 -1, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update36mut_groupSelfInvitationRevokedUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !452 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, -9223372036854775790
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775790, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.c
  store i64 -9223372036854775790, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.53.0..sroa_idx4, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update36set_groupSelfInvitationRevokedUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !455 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !456, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775790, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.b
  store i64 -9223372036854775790, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update37mut_groupAnnouncementOnlyChangeUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !457 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, -9223372036854775801
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775801, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.53.sroa.0.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.53.sroa.0.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, i8 0, i64 17, i1 false)
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.c
  store i64 -9223372036854775801, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -1, ptr %.sroa.53.0..sroa_idx4, align 8
  %.sroa.53.sroa.0.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %.sroa.53.sroa.0.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx, i8 0, i64 17, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update37mut_groupV2MigrationSelfInvitedUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !458 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 2 uses
  switch i64 %i.a, label %bb.b [
    i64 -1, label %.thread19
    i64 -9223372036854775779, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %.thread19 unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775779, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, i8 0, i64 16, i1 false)
  resume { ptr, i32 } %i.c

.thread19:                                        ; preds = %bb.a, %bb.b
  store i64 -9223372036854775779, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx4, i8 0, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.thread19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update37mut_selfInvitedOtherUserToGroupUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !459 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %i.a, -1
  br i1 %.not, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne i64 %i.a, -9223372036854775791
  tail call void @llvm.assume(i1 %i.b)
  %i.c = icmp eq i64 %i.a, -9223372036854775796
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775796, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx.sroa_idx, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx.sroa_idx, i8 0, i64 24, i1 false)
  resume { ptr, i32 } %i.d

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.c
  store i64 -9223372036854775796, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.53.0..sroa_idx4, align 8
  %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.53.sroa.5.0..sroa.53.0..sroa_idx4.sroa_idx, align 8
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx, i8 0, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update37set_groupAnnouncementOnlyChangeUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !462 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !463, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775801, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.b
  store i64 -9223372036854775801, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update37set_groupV2MigrationSelfInvitedUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !466 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !467, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775779, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.b
  store i64 -9223372036854775779, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update37set_selfInvitedOtherUserToGroupUpdate(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !470 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !alias.scope !471, !noundef !7
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 -9223372036854775796, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEEB17_.exit: ; preds = %bb.a, %bb.b
  store i64 -9223372036854775796, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_updateNtB4_6Update37take_groupSelfInvitationRevokedUpdate(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !472 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !9, !noundef !7 ; 3 uses
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %i.b, -9223372036854775791
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, -9223372036854775790
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i64 -1, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  store i64 -1, ptr %1, align 8
  %i.f = load i64, ptr %i.a, align 8, !range !9, !noundef !7 ; 5 uses
  %.not9 = icmp eq i64 %i.f, -1                   ; 2 uses
  br i1 %.not9, label %bb.f, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.g = icmp ne i64 %i.f, -9223372036854775791
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, -9223372036854775790
  br i1 %i.h, label %bb.g, label %bb.f, !prof !11

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #15
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  ret void

bb.i:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  br i1 %.not9, label %bb.l, label %bb.k

bb.j:                                             ; preds = %bb.f
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.k = icmp ne i64 %i.f, -9223372036854775791
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.f, -9223372036854775790
  br i1 %i.l, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %bb.k, %bb.i
  resume { ptr, i32 } %i.j

bb.m:                                             ; preds = %bb.k
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup24group_change_chat_update6update6UpdateEBL_(ptr noalias nofree noundef align 8 dereferenceable(96) %i.a) #14
          to label %bb.l unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #12
  unreachable
}
end_hunk_1
