Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsignal-rs/original/libsignal_message_backup-4250b6b8caaf551e.libsignal_message_backup.eef80394ae7480fa-cgu.00?download=true
inline.NumInlined: 1606
inline.NumDeleted: 452
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMsR_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_23DirectStoryReplyMessage10take_emoji:bb.a
bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #21
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void

bb.g:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.d
  unreachable

bb.i:                                             ; preds = %bb.j, %bb.g
  resume { ptr, i32 } %i.g

bb.j:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a) #18
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsR_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_23DirectStoryReplyMessage11clear_emoji(ptr noalias nofree noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !alias.scope !790, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %0, align 8
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit: ; preds = %bb.a, %bb.b
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMsR_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_23DirectStoryReplyMessage13mut_textReply(ptr noalias nofree noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5
  switch i64 %i.a, label %bb.b [
    i64 0, label %.thread
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  resume { ptr, i32 } %i.b

.thread:                                          ; preds = %bb.c, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsR_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_23DirectStoryReplyMessage13set_textReply(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !alias.scope !793, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit: ; preds = %bb.a, %bb.b
  store i64 0, ptr %0, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsR_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_23DirectStoryReplyMessage14take_textReply(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = load i64, ptr %1, align 8, !range !11, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false)
  store i64 2, ptr %1, align 8
  %i.d = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 2 uses
  %or.cond.not = icmp eq i64 %i.d, 0
  br i1 %or.cond.not, label %bb.e, label %bb.d, !prof !18

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCsgxBkk5gSRhY_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #21
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  ret void

bb.g:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = and i64 %i.d, 1
  %or.cond5 = icmp eq i64 %i.g, 0
  br i1 %or.cond5, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.d
  unreachable

bb.i:                                             ; preds = %bb.j, %bb.g
  resume { ptr, i32 } %i.f

bb.j:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.a) #18
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsR_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_23DirectStoryReplyMessage15clear_textReply(ptr noalias nofree noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !alias.scope !796, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 2, ptr %0, align 8
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit: ; preds = %bb.a, %bb.b
  store i64 2, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMsR_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_23DirectStoryReplyMessage9mut_emoji(ptr noalias nofree noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = and i64 %i.a, 1
  %or.cond.not = icmp eq i64 %i.b, 0
  br i1 %or.cond.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %.thread unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %0, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx.sroa_idx, align 8
  %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx.sroa_idx, align 8
  resume { ptr, i32 } %i.d

.thread:                                          ; preds = %bb.c, %bb.b
  store i64 1, ptr %0, align 8
  %.sroa.56.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.56.0..sroa_idx7, align 8
  %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.56.sroa.5.0..sroa.56.0..sroa_idx7.sroa_idx, align 8
  %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx7.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.56.sroa.6.0..sroa.56.0..sroa_idx7.sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.thread
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsR_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_23DirectStoryReplyMessage9set_emoji(ptr noalias nofree noundef align 8 dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !alias.scope !799, !noundef !5
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %0, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %i.c

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup26direct_story_reply_message5ReplyEEB15_.exit: ; preds = %bb.a, %bb.b
  store i64 1, ptr %0, align 8
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.53.0..sroa_idx4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMsb_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_7Contact14mut_registered(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 2 uses
  %or.cond.not = icmp eq i64 %i.b, 0
  br i1 %or.cond.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val24 = load ptr, ptr %i.c, align 8           ; 4 uses
  %i.d = icmp eq i64 %i.b, 2
  %i.e = icmp eq ptr %.val24, null
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.c

common.resume.i.i:                                ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef 32, i64 noundef 8) #19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  resume { ptr, i32 } %i.f

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val24)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i unwind label %common.resume.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i: ; preds = %bb.c
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef 32, i64 noundef 8) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.g
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_7Contact14set_registered(ptr noalias nofree noundef align 8 captures(none) dereferenceable(400) initializes((32, 40)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.val10 = load ptr, ptr %i.b, align 8           ; 5 uses
  %i.c = icmp eq i64 %.val, 2
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.val, 0
  %i.e = icmp eq ptr %.val10, null                ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val10)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i unwind label %bb.e

common.resume.i.i:                                ; preds = %bb.h, %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %bb.h ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef 32, i64 noundef 8) #19
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  resume { ptr, i32 } %common.resume.op.i.i

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val10)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i: ; preds = %bb.g, %bb.d
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef 32, i64 noundef 8) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i, %bb.f, %bb.c, %bb.a
  store i64 0, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMsb_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_7Contact15take_registered(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(400) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !5
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.11.sroa.0.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8
  store i64 2, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink21 = phi ptr [ %.sroa.8.0.copyload, %bb.b ], [ null, %bb.a ]
  %.sink = phi i64 [ %.sroa.11.sroa.0.0.copyload, %bb.b ], [ 0, %bb.a ]
  store ptr %.sink21, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_7Contact16clear_registered(ptr noalias nofree noundef align 8 captures(none) dereferenceable(400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4 = load ptr, ptr %i.b, align 8            ; 5 uses
  %i.c = icmp eq i64 %.val, 2
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.val, 0
  %i.e = icmp eq ptr %.val4, null                 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val4)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i unwind label %bb.e

common.resume.i.i:                                ; preds = %bb.h, %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %bb.h ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 32, i64 noundef 8) #19
  store i64 2, ptr %i.a, align 8
  resume { ptr, i32 } %common.resume.op.i.i

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val4)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i: ; preds = %bb.g, %bb.d
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 32, i64 noundef 8) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i, %bb.f, %bb.c, %bb.a
  store i64 2, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMsb_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_7Contact17mut_notRegistered(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 2 uses
  %i.c = and i64 %i.b, 1
  %or.cond.not = icmp eq i64 %i.c, 0
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.val19 = load ptr, ptr %i.d, align 8           ; 4 uses
  %.not = icmp ne i64 %i.b, 0
  %i.e = icmp eq ptr %.val19, null
  %or.cond = select i1 %.not, i1 true, i1 %i.e
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val19)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i unwind label %common.resume.i.i

common.resume.i.i:                                ; preds = %bb.c
  %1 = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef 32, i64 noundef 8) #19
  store i64 1, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  resume { ptr, i32 } %1

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i: ; preds = %bb.c
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef 32, i64 noundef 8) #19
  br label %.thread

.thread:                                          ; preds = %bb.b, %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i
  store i64 1, ptr %i.a, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.thread
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_7Contact17set_notRegistered(ptr noalias nofree noundef align 8 captures(none) dereferenceable(400) initializes((32, 48)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.val6 = load ptr, ptr %i.b, align 8            ; 5 uses
  %i.c = icmp eq i64 %.val, 2
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.val, 0
  %i.e = icmp eq ptr %.val6, null                 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val6)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i unwind label %bb.e

common.resume.i.i:                                ; preds = %bb.h, %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %bb.h ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef 32, i64 noundef 8) #19
  store i64 1, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %common.resume.op.i.i

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val6)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i: ; preds = %bb.g, %bb.d
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef 32, i64 noundef 8) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i, %bb.f, %bb.c, %bb.a
  store i64 1, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMsb_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_7Contact18take_notRegistered(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(400) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !11, !noundef !5
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.410.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0..sroa_idx, i64 16, i1 false)
  store i64 2, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi ptr [ %.sroa.8.0.copyload, %bb.c ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsb_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_7Contact19clear_notRegistered(ptr noalias nofree noundef align 8 captures(none) dereferenceable(400) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.val = load i64, ptr %i.a, align 8, !range !11, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4 = load ptr, ptr %i.b, align 8            ; 5 uses
  %i.c = icmp eq i64 %.val, 2
  br i1 %i.c, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.val, 0
  %i.e = icmp eq ptr %.val4, null                 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val4)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i unwind label %bb.e

common.resume.i.i:                                ; preds = %bb.h, %bb.e
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.g, %bb.h ]
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 32, i64 noundef 8) #19
  store i64 2, ptr %i.a, align 8
  resume { ptr, i32 } %common.resume.op.i.i

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvXsg_NtCsfBDUjroi3FF_9hashbrown3rawINtB5_8RawTableTmNtNtCsh1373Z0TDxr_8protobuf7unknown13UnknownValuesEENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCskw1zp9IbpTW_24libsignal_message_backup(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val4)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.i.i

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i: ; preds = %bb.g, %bb.d
  tail call void @_RNvCs1njKG4L9aB3_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef 32, i64 noundef 8) #19
  br label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact12RegistrationEEB15_.exit: ; preds = %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup7contact10RegisteredEBJ_.exit.sink.split.i.i, %bb.f, %bb.c, %bb.a
  store i64 2, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMsw_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_20DistributionListItem20mut_distributionList(ptr noalias nofree noundef align 8 dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !range !9, !noundef !5
  %switch = icmp ugt i64 %i.b, -3
  br i1 %switch, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22distribution_list_item4ItemEEB15_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.a, align 8
  %.sroa.03.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.03.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.03.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.03.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.0.sroa.6.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.6.0..sroa_idx, align 8
  %.sroa.03.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %.sroa.03.sroa.7.0..sroa_idx, i8 0, i64 29, i1 false)
  resume { ptr, i32 } %i.c

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr %i.a, align 8
  %.sroa.03.sroa.0.sroa.5.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.03.sroa.0.sroa.5.0..sroa_idx32, align 8
  %.sroa.03.sroa.0.sroa.6.0..sroa_idx34 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.03.sroa.6.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.03.sroa.0.sroa.6.0..sroa_idx34, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.03.sroa.6.0..sroa_idx17, align 8
  %.sroa.03.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(29) %.sroa.03.sroa.7.0..sroa_idx19, i8 0, i64 29, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsw_NtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backupNtB5_20DistributionListItem20set_distributionList(ptr noalias nofree noundef align 8 dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCskw1zp9IbpTW_24libsignal_message_backup5proto6backup22distribution_list_item4ItemEEB15_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
end_hunk_0
