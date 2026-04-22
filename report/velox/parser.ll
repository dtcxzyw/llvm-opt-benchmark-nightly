inline.NumInlined: 4462
inline.NumDeleted: 1688
begin_hunk_0
@_ZTIN5arrow4json7HandlerILNS0_23UnexpectedFieldBehaviorE2EEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5arrow4json7HandlerILNS0_23UnexpectedFieldBehaviorE2EEE, ptr @_ZTIN5arrow4json11HandlerBaseE }, comdat, align 8
@_ZTSN5arrow4json7HandlerILNS0_23UnexpectedFieldBehaviorE2EEE = linkonce_odr constant [57 x i8] c"N5arrow4json7HandlerILNS0_23UnexpectedFieldBehaviorE2EEE\00", comdat, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer
@switch.table._ZN5arrow4json11HandlerBase7DoParseINS0_7HandlerILNS0_23UnexpectedFieldBehaviorE0EEENS_9rapidjson18EncodedInputStreamINS6_4UTF8IcEENS6_12MemoryStreamEEEEENS_6StatusERT_OT0_m = private unnamed_addr constant [16 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.54], comdat($_ZN5arrow4json11HandlerBase7DoParseINS0_7HandlerILNS0_23UnexpectedFieldBehaviorE0EEENS_9rapidjson18EncodedInputStreamINS6_4UTF8IcEENS6_12MemoryStreamEEEEENS_6StatusERT_OT0_m), align 8
@switch.table._ZN5arrow4json11HandlerBase7DoParseINS0_7HandlerILNS0_23UnexpectedFieldBehaviorE1EEENS_9rapidjson18EncodedInputStreamINS6_4UTF8IcEENS6_12MemoryStreamEEEEENS_6StatusERT_OT0_m = private unnamed_addr constant [16 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.54], comdat($_ZN5arrow4json11HandlerBase7DoParseINS0_7HandlerILNS0_23UnexpectedFieldBehaviorE1EEENS_9rapidjson18EncodedInputStreamINS6_4UTF8IcEENS6_12MemoryStreamEEEEENS_6StatusERT_OT0_m), align 8
@switch.table._ZN5arrow4json11HandlerBase7DoParseINS0_7HandlerILNS0_23UnexpectedFieldBehaviorE2EEENS_9rapidjson18EncodedInputStreamINS6_4UTF8IcEENS6_12MemoryStreamEEEEENS_6StatusERT_OT0_m = private unnamed_addr constant [16 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.55, ptr @.str.54], comdat($_ZN5arrow4json11HandlerBase7DoParseINS0_7HandlerILNS0_23UnexpectedFieldBehaviorE2EEENS_9rapidjson18EncodedInputStreamINS6_4UTF8IcEENS6_12MemoryStreamEEEEENS_6StatusERT_OT0_m), align 8

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow4json4Kind4NameB5cxx11ENS1_4typeE(i8 noundef zeroext %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN5arrow4json11HandlerBase7DoParseINS0_7HandlerILNS0_23UnexpectedFieldBehaviorE0EEENS_9rapidjson18EncodedInputStreamINS6_4UTF8IcEENS6_12MemoryStreamEEEEENS_6StatusERT_OT0_m:bb.a

switch.lookup:                                    ; preds = %bb.h
  %i.ag = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5arrow4json11HandlerBase7DoParseINS0_7HandlerILNS0_23UnexpectedFieldBehaviorE0EEENS_9rapidjson18EncodedInputStreamINS6_4UTF8IcEENS6_12MemoryStreamEEEEENS_6StatusERT_OT0_m, i64 %i.ag
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN5arrow9rapidjson16GetParseError_EnENS0_14ParseErrorCodeE.exit14

end_hunk_1
begin_hunk_2_@_ZN5arrow4json11HandlerBase7DoParseINS0_7HandlerILNS0_23UnexpectedFieldBehaviorE1EEENS_9rapidjson18EncodedInputStreamINS6_4UTF8IcEENS6_12MemoryStreamEEEEENS_6StatusERT_OT0_m:bb.a

switch.lookup:                                    ; preds = %bb.h
  %i.ag = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5arrow4json11HandlerBase7DoParseINS0_7HandlerILNS0_23UnexpectedFieldBehaviorE1EEENS_9rapidjson18EncodedInputStreamINS6_4UTF8IcEENS6_12MemoryStreamEEEEENS_6StatusERT_OT0_m, i64 %i.ag
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN5arrow9rapidjson16GetParseError_EnENS0_14ParseErrorCodeE.exit14

end_hunk_2
