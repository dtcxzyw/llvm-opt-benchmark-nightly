Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/tracing_subscriber-b028a260e510e734.tracing_subscriber.d73552fd6ec86dd1-cgu.0?download=true
inline.NumInlined: 242
inline.NumDeleted: 124
begin_hunk_0_@_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterIBV_INtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB2y_EENtNtB1c_10subscriber10Subscriber4exitB8_:bb.a
  tail call void @_RNvXsa_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryEINtNtB9_5layer5LayerB17_E7on_exitB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull align 8 %i.b, i64 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterIBV_INtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB2y_EENtNtB1c_10subscriber10Subscriber5enterB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber5enter(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @_RNvXsa_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryEINtNtB9_5layer5LayerB17_E8on_enterB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull align 8 %i.b, i64 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterIBV_INtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB2y_EENtNtB1c_10subscriber10Subscriber5eventB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXsa_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryEINtNtB9_5layer5LayerB17_E8on_eventB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 8 %i.b, i64 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterIBV_INtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB2y_EENtNtB1c_10subscriber10Subscriber6recordB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXsa_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryEINtNtB9_5layer5LayerB17_E9on_recordB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef nonnull align 8 %i.b, i64 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterIBV_INtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB2y_EENtNtB1c_10subscriber10Subscriber7enabledB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 2 uses
  %.val1 = load i64, ptr %1, align 8
  %.not.i = icmp ne i64 %.val, -1
  %i.a = icmp uge i64 %.val1, %.val
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.a, i1 false
  br i1 %.sroa.0.0.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMsd_NtNtCsity1gTxgZvF_18tracing_subscriber6filter13layer_filtersNtB5_11FilterState13clear_enabled()
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = tail call noundef zeroext i1 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber7enabled(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 1, 0) i64 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterIBV_INtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB2y_EENtNtB1c_10subscriber10Subscriber8new_spanB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef i64 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber8new_spanB8_(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterIBV_INtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB2y_EENtNtB1c_10subscriber10Subscriber9try_closeB8_(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call noundef align 8 ptr @_RINvMNtCsaMQbKjKCVRW_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded8RegistryEB1o_(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @23) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB4_8Registry11start_close(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.c, i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = invoke noundef zeroext i1 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber9try_closeB8_(ptr noundef nonnull align 8 %i.b, i64 noundef %1)
          to label %bb.g unwind label %bb.e       ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !15, !alias.scope !191, !noundef !4
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs3_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_10CloseGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !15
  %.not5 = icmp eq i8 %i.k, 2                     ; 2 uses
  br i1 %i.e, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not5, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit6, label %.thread7

bb.i:                                             ; preds = %bb.g
  br i1 %.not5, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit6, label %bb.j

bb.j:                                             ; preds = %.thread7, %bb.i
  call void @_RNvXs3_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_10CloseGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit6: ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e

.thread7:                                         ; preds = %bb.h
  store i8 1, ptr %i.j, align 8
  br label %bb.j

bb.k:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 1, 0) i64 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber10clone_spanB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = tail call noundef range(i64 1, 0) i64 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber10clone_span(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12downcast_rawB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load i128, ptr %1, align 8, !noundef !4
  switch i128 %i.b, label %bb.c [
    i128 -131671892036496991319315111787544599798, label %bb.d
    i128 45923811638230007118394049699304375814, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %0, 1
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB10_7LayeredNtNtNtB14_6filter7targets7TargetsNtNtB14_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12downcast_raw0EB14_.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.e = call { i64, ptr } @_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12downcast_rawB7_(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a), !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !196
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB10_7LayeredNtNtNtB14_6filter7targets7TargetsNtNtB14_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12downcast_raw0EB14_.exit

bb.d:                                             ; preds = %bb.a
  %i.f = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %0, 1
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB10_7LayeredNtNtNtB14_6filter7targets7TargetsNtNtB14_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12downcast_raw0EB14_.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionPuE7or_elseNCNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB10_7LayeredNtNtNtB14_6filter7targets7TargetsNtNtB14_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12downcast_raw0EB14_.exit: ; preds = %bb.c, %bb.b, %bb.d
  %.merged = phi { i64, ptr } [ %i.f, %bb.d ], [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber13event_enabledB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = tail call noundef zeroext i1 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber13event_enabled(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 -2, 5) i64 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber14max_level_hintB8_(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load i64, ptr %0, align 8, !range !13, !noundef !4 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val.i.i = load i64, ptr %i.b, align 8, !range !13, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.d = load i8, ptr %i.c, align 8, !range !12, !noundef !4
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber14max_level_hintB7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 617
  %i.g = load i8, ptr %i.f, align 1, !range !12, !noundef !4
  %i.h = trunc nuw i8 %i.g to i1
  %spec.select.i.i = select i1 %i.h, i64 -2, i64 %.val.i.i
  br label %_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber14max_level_hintB7_.exit

_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber14max_level_hintB7_.exit: ; preds = %bb.a, %bb.b
  %.sroa.07.0.i.i.i = phi i64 [ %spec.select.i.i, %bb.b ], [ %.val.i.i, %bb.a ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) @8, i64 16, i1 false)
  %i.i = call { i64, ptr } @_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12downcast_rawB7_(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = extractvalue { i64, ptr } %i.i, 0
  %i.k = icmp eq i64 %i.j, 1                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.m = load i8, ptr %i.l, align 8, !range !12, !noundef !4
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_RNvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter7targets7TargetsNtNtB9_3fmt10SubscriberE15pick_level_hintB9_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber14max_level_hintB7_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 625
  %i.p = load i8, ptr %i.o, align 1, !range !12, !noundef !4
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.e
  br i1 %.not13.i, label %_RNvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter7targets7TargetsNtNtB9_3fmt10SubscriberE15pick_level_hintB9_.exit, label %.thread29.i

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.s = load i8, ptr %i.r, align 2, !range !12, !noundef !4
  %i.t = trunc nuw i8 %i.s to i1
  %.not13.i = icmp eq i64 %.sroa.07.0.i.i.i, -2   ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.d

bb.f:                                             ; preds = %bb.c
  %.not25.i = icmp ne i64 %.sroa.07.0.i.i.i, -2   ; 2 uses
  %or.cond28.i = and i1 %.not25.i, %i.k
  br i1 %or.cond28.i, label %1, label %bb.g

.thread29.i:                                      ; preds = %bb.d
  %.not.i33.i = icmp eq i64 %.sroa.07.0.i.i.i, -1
  %or.cond2834.i = and i1 %.not.i33.i, %i.k
  br i1 %or.cond2834.i, label %_RNvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter7targets7TargetsNtNtB9_3fmt10SubscriberE15pick_level_hintB9_.exit, label %.thread37.i

bb.g:                                             ; preds = %bb.f
  br i1 %.not25.i, label %.thread37.i, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterENtNtB7_3cmp10PartialOrd2ltCsity1gTxgZvF_18tracing_subscriber.exit.i.i

.thread37.i:                                      ; preds = %1, %bb.g, %.thread29.i
  %.not.i.i.i.i.i = icmp eq i64 %.val, -1
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 5, i64 %.val
  %.not2.i.i.i.i.i = icmp eq i64 %.sroa.07.0.i.i.i, -1
  %.sroa.01.0.i.i.i.i.i = select i1 %.not2.i.i.i.i.i, i64 5, i64 %.sroa.07.0.i.i.i
  %i.u = icmp samesign ult i64 %..i.i.i.i.i, %.sroa.01.0.i.i.i.i.i
  br i1 %i.u, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterENtNtB7_3cmp10PartialOrd2ltCsity1gTxgZvF_18tracing_subscriber.exit.i.i, label %_RNvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter7targets7TargetsNtNtB9_3fmt10SubscriberE15pick_level_hintB9_.exit

_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterENtNtB7_3cmp10PartialOrd2ltCsity1gTxgZvF_18tracing_subscriber.exit.i.i: ; preds = %.thread37.i, %bb.g
  br label %_RNvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter7targets7TargetsNtNtB9_3fmt10SubscriberE15pick_level_hintB9_.exit

1:                                                ; preds = %bb.f
  %.not.i.old.i = icmp eq i64 %.sroa.07.0.i.i.i, -1
  br i1 %.not.i.old.i, label %_RNvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter7targets7TargetsNtNtB9_3fmt10SubscriberE15pick_level_hintB9_.exit, label %.thread37.i

bb.h:                                             ; preds = %bb.e
  br i1 %.not13.i, label %_RNvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter7targets7TargetsNtNtB9_3fmt10SubscriberE15pick_level_hintB9_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq i64 %.val, -1
  %..i.i.i = select i1 %.not.i.i.i, i64 5, i64 %.val
  %.not2.i.i.i = icmp eq i64 %.sroa.07.0.i.i.i, -1
  %.sroa.01.0.i.i.i = select i1 %.not2.i.i.i, i64 5, i64 %.sroa.07.0.i.i.i
  %i.v = icmp samesign ult i64 %..i.i.i, %.sroa.01.0.i.i.i
  %..i24.i = select i1 %i.v, i64 %.val, i64 %.sroa.07.0.i.i.i
  br label %_RNvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter7targets7TargetsNtNtB9_3fmt10SubscriberE15pick_level_hintB9_.exit

_RNvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB5_7LayeredNtNtNtB9_6filter7targets7TargetsNtNtB9_3fmt10SubscriberE15pick_level_hintB9_.exit: ; preds = %_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber14max_level_hintB7_.exit, %bb.d, %.thread29.i, %.thread37.i, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterENtNtB7_3cmp10PartialOrd2ltCsity1gTxgZvF_18tracing_subscriber.exit.i.i, %1, %bb.h, %bb.i
  %.sroa.07.0.i = phi i64 [ -2, %bb.d ], [ %.val, %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterENtNtB7_3cmp10PartialOrd2ltCsity1gTxgZvF_18tracing_subscriber.exit.i.i ], [ %.val, %_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber14max_level_hintB7_.exit ], [ -2, %bb.h ], [ %.val, %1 ], [ %.sroa.07.0.i.i.i, %.thread37.i ], [ %..i24.i, %bb.i ], [ %.val, %.thread29.i ]
  ret i64 %.sroa.07.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 0, 3) i8 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber17register_callsiteB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i8 @_RNvXs2_NtNtCsity1gTxgZvF_18tracing_subscriber6filter7targetsNtB5_7TargetsINtNtB9_5layer5LayerNtNtB9_3fmt10SubscriberE17register_callsiteB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 625
  %i.c = load i8, ptr %i.b, align 1, !range !12, !noundef !4
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i8 %i.a, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = tail call noundef range(i8 0, 3) i8 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterIBV_INtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB2y_EENtNtB1c_10subscriber10Subscriber17register_callsiteB8_(ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  br label %_RINvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB6_7LayeredNtNtNtBa_6filter7targets7TargetsNtNtBa_3fmt10SubscriberE13pick_interestNCNvXs_B6_BW_NtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber17register_callsite0EBa_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef i8 @_RNvMsd_NtNtCsity1gTxgZvF_18tracing_subscriber6filter13layer_filtersNtB5_11FilterState13take_interest() ; 0 uses
  br label %_RINvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB6_7LayeredNtNtNtBa_6filter7targets7TargetsNtNtBa_3fmt10SubscriberE13pick_interestNCNvXs_B6_BW_NtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber17register_callsite0EBa_.exit

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = tail call noundef range(i8 0, 3) i8 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterIBV_INtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB2y_EENtNtB1c_10subscriber10Subscriber17register_callsiteB8_(ptr noundef nonnull align 8 %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) ; 2 uses
  %i.k = icmp eq i8 %i.a, 1
  br i1 %i.k, label %_RINvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB6_7LayeredNtNtNtBa_6filter7targets7TargetsNtNtBa_3fmt10SubscriberE13pick_interestNCNvXs_B6_BW_NtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber17register_callsite0EBa_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = icmp eq i8 %i.j, 0
  br i1 %i.l, label %bb.g, label %_RINvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB6_7LayeredNtNtNtBa_6filter7targets7TargetsNtNtBa_3fmt10SubscriberE13pick_interestNCNvXs_B6_BW_NtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber17register_callsite0EBa_.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 626
  %i.n = load i8, ptr %i.m, align 2, !range !12, !noundef !4
  br label %_RINvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB6_7LayeredNtNtNtBa_6filter7targets7TargetsNtNtBa_3fmt10SubscriberE13pick_interestNCNvXs_B6_BW_NtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber17register_callsite0EBa_.exit

_RINvMs3_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB6_7LayeredNtNtNtBa_6filter7targets7TargetsNtNtBa_3fmt10SubscriberE13pick_interestNCNvXs_B6_BW_NtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber17register_callsite0EBa_.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0.0.i = phi i8 [ %i.g, %bb.c ], [ 0, %bb.d ], [ %i.j, %bb.f ], [ 1, %bb.e ], [ %i.n, %bb.g ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber19record_follows_fromB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber20on_register_dispatchB8_(ptr nofree noundef nonnull readnone align 8 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber4exitB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber4exit(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @_RNvXsa_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryEINtNtB9_5layer5LayerB17_E7on_exitB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull align 8 %i.b, i64 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber5enterB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber5enter(ptr noundef nonnull align 8 %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1)
  tail call void @_RNvXsa_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryEINtNtB9_5layer5LayerB17_E8on_enterB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noundef nonnull align 8 %i.b, i64 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber5eventB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvXsa_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryEINtNtB9_5layer5LayerB17_E8on_eventB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noundef nonnull align 8 %i.b, i64 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber6recordB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvXsa_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryEINtNtB9_5layer5LayerB17_E9on_recordB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noundef nonnull align 8 %i.b, i64 noundef 0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber7enabledB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtNtCsity1gTxgZvF_18tracing_subscriber6filter7targetsNtB5_7TargetsINtNtB9_5layer5LayerNtNtB9_3fmt10SubscriberE7enabledB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noundef nonnull align 8 %i.a, i64 noundef 0)
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMsd_NtNtCsity1gTxgZvF_18tracing_subscriber6filter13layer_filtersNtB5_11FilterState13clear_enabled()
  br label %_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber7enabledB7_.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !13, !noalias !203, !noundef !4 ; 2 uses
  %.val1.i.i = load i64, ptr %1, align 8, !alias.scope !203
  %.not.i.i.i = icmp ne i64 %.val.i.i, -1
  %i.c = icmp uge i64 %.val1.i.i, %.val.i.i
  %.sroa.0.0.i.i.i = select i1 %.not.i.i.i, i1 %i.c, i1 false
  br i1 %.sroa.0.0.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMsd_NtNtCsity1gTxgZvF_18tracing_subscriber6filter13layer_filtersNtB5_11FilterState13clear_enabled(), !noalias !203
  br label %_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber7enabledB7_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = tail call noundef zeroext i1 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber7enabled(ptr noundef nonnull align 8 %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1)
  br label %_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber7enabledB7_.exit

_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber7enabledB7_.exit: ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.e, %bb.e ], [ false, %bb.d ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 1, 0) i64 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber8new_spanB8_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call noundef range(i64 1, 0) i64 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredINtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB1C_ENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber8new_spanB8_(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtNtB8_6filter7targets7TargetsNtNtB8_3fmt10SubscriberENtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber9try_closeB8_(ptr noundef nonnull align 8 %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = tail call noundef align 8 ptr @_RINvMNtCsaMQbKjKCVRW_12tracing_core10subscriberDNtB3_10SubscriberEL_12downcast_refNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded8RegistryEB1o_(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) @24) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_RNvMs_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB4_8Registry11start_close(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.c, i64 noundef %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 2, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = invoke noundef zeroext i1 @_RNvXs_NtNtCsity1gTxgZvF_18tracing_subscriber5layer7layeredINtB4_7LayeredNtNtCsaMQbKjKCVRW_12tracing_core8metadata11LevelFilterIBV_INtNtNtB8_3fmt9fmt_layer5LayerNtNtNtB8_8registry7sharded8RegistryEB2y_EENtNtB1c_10subscriber10Subscriber9try_closeB8_(ptr noundef nonnull align 8 %i.b, i64 noundef range(i64 1, 0) %1)
          to label %_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber9try_closeB7_.exit unwind label %bb.e ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !15, !alias.scope !206, !noundef !4
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs3_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_10CloseGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit unwind label %bb.j

_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber9try_closeB7_.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !15
  %.not5 = icmp eq i8 %i.k, 2                     ; 2 uses
  br i1 %i.e, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber9try_closeB7_.exit
  br i1 %.not5, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit6, label %.thread7

bb.h:                                             ; preds = %_RNvXs0_NtCsity1gTxgZvF_18tracing_subscriber3fmtNtB5_10SubscriberNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber9try_closeB7_.exit
  br i1 %.not5, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit6, label %bb.i

bb.i:                                             ; preds = %.thread7, %bb.h
  call void @_RNvXs3_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_10CloseGuardNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit6

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded10CloseGuardEEB13_.exit6: ; preds = %bb.g, %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e

.thread7:                                         ; preds = %bb.g
  store i8 1, ptr %i.j, align 8
  br label %bb.i

bb.j:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
