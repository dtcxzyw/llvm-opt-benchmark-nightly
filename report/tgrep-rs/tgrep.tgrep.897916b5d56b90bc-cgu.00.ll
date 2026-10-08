Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.00?download=true
inline.NumInlined: 2834
inline.NumDeleted: 785
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringINtNtBG_4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEEB1z_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !843, !nonnull !9, !noundef !9
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !843
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEB1d_.exit

bb.e:                                             ; preds = %.body
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEB1d_.exit unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !846, !nonnull !9, !noundef !9
  %i.j = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !846
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.f, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEB1d_.exit1

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #33
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEB1d_.exit1

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEB1d_.exit1: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit, %bb.f
  ret void

bb.g:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtCsbNLsQi0JuJ4_5tgrep5serve11DecodedFileEEB1d_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #31
          to label %common.resume unwind label %bb.g

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsbNLsQi0JuJ4_5tgrep.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsbNLsQi0JuJ4_5tgrep.exit
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtB5_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB1W_4read7StrReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtB2t_10ServerInfoNtB1j_11Deserialize11deserialize9___VisitorEB2v_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @18, i64 noundef 2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs7_NtNtNtCs5Xr050g3D4S_3std11collections4hash3setINtB6_7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB18_3vec9into_iter8IntoIterB14_EECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @26)
          to label %_RNvXs3_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_11RandomStateNtNtCsf3Ta7LF998c_4core7default7Default7default.exit unwind label %bb.e ; 2 uses

_RNvXs3_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_11RandomStateNtNtCsf3Ta7LF998c_4core7default7Default7default.exit: ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.54.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB6_7HashSetNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtBS_3vec9into_iter8IntoIterBO_EECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RNvXs3_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_11RandomStateNtNtCsf3Ta7LF998c_4core7default7Default7default.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d

bb.c:                                             ; preds = %_RNvXs3_NtNtCs5Xr050g3D4S_3std4hash6randomNtB5_11RandomStateNtNtCsf3Ta7LF998c_4core7default7Default7default.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.e, %bb.b
  %.pn9 = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.e:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtBI_6string6StringEECsbNLsQi0JuJ4_5tgrep.exit unwind label %bb.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvYINtNtNtCsf3Ta7LF998c_4core3str4iter5SplitcENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvBK_4find5checkReQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0E0INtNtNtBa_3ops12control_flow11ControlFlowB1U_EEB23_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 65 ; 3 uses
  %.promoted = load i8, ptr %i.a, align 1, !alias.scope !860
  %.promoted21 = load i64, ptr %0, align 8        ; 4 uses
  %i.b = trunc nuw i8 %.promoted to i1
  br i1 %i.b, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !860, !nonnull !9, !noundef !9 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !860, !noundef !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !861, !noalias !862, !noundef !9 ; 7 uses
  %.not.i.i.i = icmp ugt i64 %i.g, %.val1.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i8, ptr %i.i, align 8               ; 2 uses
  %i.k = zext nneg i8 %i.j to i64                 ; 4 uses
  %i.l = icmp ult i8 %i.j, 5
  %i.m = getelementptr i8, ptr %i.h, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load i8, ptr %i.o, align 8, !range !15
  %i.q = trunc nuw i8 %i.p to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre2.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8 ; 4 uses
  br i1 %.not.i.i.i, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %.promoted34 = load i64, ptr %i.e, align 8, !alias.scope !861, !noalias !862
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i8 1, ptr %i.a, align 1, !alias.scope !863
  %.not.i3.i.i.us = icmp ne i64 %.pre2.i.i.i, %.promoted21
  %or.cond.not.i.i.i.us = select i1 %i.q, i1 true, i1 %.not.i3.i.i.us
  %i.r = sub nuw i64 %.pre2.i.i.i, %.promoted21   ; 2 uses
  %.sroa.0.1.i.i.us = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.promoted21 ; 5 uses
  br i1 %or.cond.not.i.i.i.us, label %.lr.ph.split.us.split.us, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  switch i64 %i.r, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us.us [
    i64 0, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us.us.us
    i64 1, label %.lr.ph.split.us.split.us.split.us56
    i64 2, label %.lr.ph.split.us.split.us.split.us65
  ]

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us.us.us: ; preds = %.lr.ph.split.us.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge

.lr.ph.split.us.split.us.split.us56:              ; preds = %.lr.ph.split.us.split.us
  %lhsc.i.i.i.us.us.us = load i8, ptr %.sroa.0.1.i.i.us, align 1, !alias.scope !867
  %lhsc.i.i.fr.i.us.us.us = freeze i8 %lhsc.i.i.i.us.us.us
  %.not.i.i.not.i.us.us.us = icmp eq i8 %lhsc.i.i.fr.i.us.us.us, 46
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %..sroa.0.1.i.i.us = select i1 %.not.i.i.not.i.us.us.us, ptr null, ptr %.sroa.0.1.i.i.us
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge

.lr.ph.split.us.split.us.split.us65:              ; preds = %.lr.ph.split.us.split.us
  %i.s = load i16, ptr %.sroa.0.1.i.i.us, align 1
  %i.t = icmp ne i16 %i.s, 11822
  %i.u = zext i1 %i.t to i32
  %bcmp.i.i.fr.i.us.us.us = freeze i32 %i.u
  %.not.i.us.us.us = icmp eq i32 %bcmp.i.i.fr.i.us.us.us, 0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %..sroa.0.1.i.i.us94 = select i1 %.not.i.us.us.us, ptr null, ptr %.sroa.0.1.i.i.us
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us.us: ; preds = %.lr.ph.split.us.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us: ; preds = %.lr.ph.split.us
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.backedge, %.lr.ph.split.preheader
  %i.v = phi i64 [ %.promoted34, %.lr.ph.split.preheader ], [ %i.ar, %.lr.ph.split.backedge ] ; 3 uses
  %.lcssa192324 = phi i64 [ %.promoted21, %.lr.ph.split.preheader ], [ %.lcssa1922, %.lr.ph.split.backedge ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.w = icmp ult i64 %i.g, %i.v
  br i1 %i.w, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.split
  tail call void @llvm.assume(i1 %i.l)
  %.pre.i.i.i = load i8, ptr %i.n, align 1, !alias.scope !861, !noalias !862 ; 2 uses
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.d, %.lr.ph.split.preheader.i.i.i
  %i.x = phi i64 [ %i.al, %bb.d ], [ %i.v, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  %i.y = sub nuw i64 %i.g, %i.x                   ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.x ; 2 uses
  %i.aa = icmp samesign ult i64 %i.y, 16
  br i1 %i.aa, label %.preheader.i.i.i.i, label %bb.b

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.g, %i.x
  br i1 %.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i
  %i.ab = tail call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.y), !noalias !868 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = extractvalue { i64, i64 } %i.ab, 1
  %i.ae = trunc nuw i64 %i.ac to i1
  br i1 %i.ae, label %.loopexit.i.i.i, label %.loopexit15.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.c
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.ai, %bb.c ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %.sroa.04.011.i.i.i.i
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !869, !noalias !868, !noundef !9
  %i.ah = icmp eq i8 %i.ag, %.pre.i.i.i
  br i1 %i.ah, label %.loopexit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ai = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ai, %i.y
  br i1 %exitcond.not.i.i.i.i, label %.loopexit15.i.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.b
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.ad, %bb.b ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.aj = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.y
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = add i64 %i.x, 1
  %i.al = add i64 %i.ak, %.sroa.5.0.i.i.i.i       ; 10 uses
  store i64 %i.al, ptr %i.e, align 8, !alias.scope !861, !noalias !862
  %.not11.i.i.i = icmp ult i64 %i.al, %i.k
  %.not12.i.i.i = icmp ugt i64 %i.al, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not11.i.i.i, %.not12.i.i.i
  br i1 %or.cond.i.i.i, label %bb.d, label %bb.e

.loopexit15.i.i.i:                                ; preds = %bb.b, %.preheader.i.i.i.i, %bb.c
  store i64 %i.g, ptr %i.e, align 8, !alias.scope !861, !noalias !862
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i.i
  %i.am = icmp ult i64 %i.g, %i.al
  br i1 %i.am, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i, label %.lr.ph.split.i.i.i

bb.e:                                             ; preds = %.loopexit.i.i.i
  %i.an = sub nuw i64 %i.al, %i.k                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.an
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %i.h, i64 %i.k), !noalias !862
  %i.ap = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ap, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %bb.d

_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i: ; preds = %bb.e
  store i64 %i.al, ptr %0, align 8, !alias.scope !860
  br label %select.unfold

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %bb.d, %.loopexit15.i.i.i, %.lr.ph.split
  %i.aq = phi i64 [ %i.v, %.lr.ph.split ], [ %i.g, %.loopexit15.i.i.i ], [ %i.al, %bb.d ]
  store i8 1, ptr %i.a, align 1, !alias.scope !863
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.lcssa192324
  %or.cond.not.i.i.i = select i1 %i.q, i1 true, i1 %.not.i3.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge

select.unfold:                                    ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i
  %i.ar = phi i64 [ %i.al, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %i.aq, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %.lcssa1922 = phi i64 [ %i.al, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.lcssa192324, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %i.as = phi i1 [ false, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ true, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i ] ; 3 uses
  %.pn = phi i64 [ %i.an, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i ], [ %.pre2.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i ]
  %.sroa.4.1.i.i = sub nuw i64 %.pn, %.lcssa192324 ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.lcssa192324 ; 5 uses
  switch i64 %.sroa.4.1.i.i, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge [
    i64 0, label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkReQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0E0B1l_.exit
    i64 1, label %.split.i
    i64 2, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i
  ]

.split.i:                                         ; preds = %select.unfold
  %lhsc.i.i.i = load i8, ptr %.sroa.0.1.i.i, align 1, !alias.scope !867
  %lhsc.i.i.fr.i = freeze i8 %lhsc.i.i.i
  %.not.i.i.not.i = icmp ne i8 %lhsc.i.i.fr.i, 46 ; 2 uses
  %brmerge = or i1 %.not.i.i.not.i, %i.as
  br i1 %brmerge, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge.loopexit.split.loop.exit12, label %.lr.ph.split.backedge

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i: ; preds = %select.unfold
  %i.at = load i16, ptr %.sroa.0.1.i.i, align 1
  %i.au = icmp ne i16 %i.at, 11822
  %i.av = zext i1 %i.au to i32
  %bcmp.i.i.fr.i = freeze i32 %i.av
  %.not.i = icmp ne i32 %bcmp.i.i.fr.i, 0         ; 2 uses
  %brmerge95 = or i1 %.not.i, %i.as
  br i1 %brmerge95, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge.loopexit.split.loop.exit, label %.lr.ph.split.backedge

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkReQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0E0B1l_.exit: ; preds = %select.unfold
  br i1 %i.as, label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge, label %.lr.ph.split.backedge

.lr.ph.split.backedge:                            ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkReQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0E0B1l_.exit, %.split.i, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i
  br label %.lr.ph.split

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge.loopexit.split.loop.exit: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i
  %.sroa.0.1.i.i.mux97.le = select i1 %.not.i, ptr %.sroa.0.1.i.i, ptr null
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge.loopexit.split.loop.exit12: ; preds = %.split.i
  %.sroa.0.1.i.i.mux.le = select i1 %.not.i.i.not.i, ptr %.sroa.0.1.i.i, ptr null
  br label %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge

_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge: ; preds = %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge.loopexit.split.loop.exit, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge.loopexit.split.loop.exit12, %select.unfold, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkReQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0E0B1l_.exit, %.lr.ph.split.us.split.us.split.us65, %.lr.ph.split.us.split.us.split.us56, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us.us.us, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us.us, %bb.a
  %.sroa.3.0 = phi i64 [ undef, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us ], [ 1, %.lr.ph.split.us.split.us.split.us56 ], [ undef, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us.us.us ], [ 2, %.lr.ph.split.us.split.us.split.us65 ], [ undef, %bb.a ], [ %i.r, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us.us ], [ 1, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge.loopexit.split.loop.exit12 ], [ undef, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ 2, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge.loopexit.split.loop.exit ], [ %.sroa.4.1.i.i, %select.unfold ], [ undef, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkReQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0E0B1l_.exit ]
  %.sroa.0.0 = phi ptr [ null, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us ], [ %..sroa.0.1.i.i.us, %.lr.ph.split.us.split.us.split.us56 ], [ null, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us.us.us ], [ %..sroa.0.1.i.i.us94, %.lr.ph.split.us.split.us.split.us65 ], [ null, %bb.a ], [ %.sroa.0.1.i.i.us, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i.us.us ], [ %.sroa.0.1.i.i.mux.le, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge.loopexit.split.loop.exit12 ], [ null, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ %.sroa.0.1.i.i.mux97.le, %_RNvXs1_NtNtNtCsf3Ta7LF998c_4core3ops8function5implsQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0INtB7_5FnMutTRReEE8call_mutBU_.exit.i._crit_edge.loopexit.split.loop.exit ], [ %.sroa.0.1.i.i, %select.unfold ], [ null, %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4find5checkReQNCNvNtCsbNLsQi0JuJ4_5tgrep5serve25should_skip_watcher_entry0E0B1l_.exit ]
  %i.aw = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.ax = insertvalue { ptr, i64 } %i.aw, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.ax
}
end_hunk_0
begin_hunk_1_@_RNvNtCsbNLsQi0JuJ4_5tgrep5serve24sync_watch_registrations:bb.a

_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit: ; preds = %bb.o, %bb.p
  invoke void @_RNvMsd_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore13IgnoreMatcherEE3newCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bo, ptr noundef nonnull align 8 %i.dh)
          to label %bb.q unwind label %.body.thread89

bb.q:                                             ; preds = %_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock4read.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4405)
  %i.dm = load i64, ptr %i.bo, align 8, !range !14, !alias.scope !4405, !noalias !4406, !noundef !9
  %i.dn = trunc nuw i64 %i.dm to i1
  br i1 %i.dn, label %bb.r, label %bb.v, !prof !20

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !4407
  %i.do = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.dp = load <2 x ptr>, ptr %i.do, align 8, !alias.scope !4405, !noalias !4406
  store <2 x ptr> %i.dp, ptr %i.bj, align 16, !noalias !4407
  invoke void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.bj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @422) #35
          to label %bb.t unwind label %bb.s, !noalias !4405

bb.s:                                             ; preds = %bb.r
  %i.dq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsh_NtNtNtCs5Xr050g3D4S_3std4sync6poison6rwlockINtB5_15RwLockReadGuardINtNtCsf3Ta7LF998c_4core6option6OptionNtNtCsbzNSmZPCnTx_10tgrep_core9gitignore13IgnoreMatcherEENtNtNtB1e_3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bj)
          to label %.body.thread unwind label %bb.u

bb.t:                                             ; preds = %bb.r
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.dr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !4405
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.dt = load <2 x ptr>, ptr %i.ds, align 8, !alias.scope !4405, !noalias !4406
  %i.du = load ptr, ptr %i.ds, align 8, !alias.scope !4405, !noalias !4406, !nonnull !9, !noundef !9 ; 2 uses
  store <2 x ptr> %i.dt, ptr %i.bp, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dy = load i64, ptr %i.dx, align 8, !noundef !9 ; 2 uses
  %i.dz = load i64, ptr %i.du, align 8, !range !8, !noundef !9
  %.not7 = icmp eq i64 %i.dz, -1
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.eb = load ptr, ptr %i.ea, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ed = load i64, ptr %i.ec, align 8, !noundef !9 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4408)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !4409
  %i.ee = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @26)
          to label %.noexc17 unwind label %bb.de  ; 2 uses

.noexc17:                                         ; preds = %bb.v
  %i.ef = extractvalue { i64, i64 } %i.ee, 0
  %i.eg = extractvalue { i64, i64 } %i.ee, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull align 8 dereferenceable(32) @20, i64 32, i1 false), !noalias !4409
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store i64 %i.ef, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !4409
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i64 %i.eg, ptr %.sroa.512.0..sroa_idx.i, align 8, !noalias !4409
  %i.eh = invoke noundef zeroext i1 @_RINvMs16_NtCs5Xr050g3D4S_3std4pathNtB7_4Path11starts_withRBw_ECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eb, i64 noundef %i.ed)
          to label %bb.w unwind label %.thread105.i, !noalias !4410

.thread105.i:                                     ; preds = %bb.ab, %bb.z, %bb.x, %.noexc17
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.w:                                             ; preds = %.noexc17
  br i1 %i.eh, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !4409
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bg, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.z unwind label %.thread105.i, !noalias !4411

bb.y:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i64 48, i1 false), !noalias !4412
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i8 0, ptr %i.ei, align 8, !alias.scope !4408, !noalias !4412
  br label %bb.df

bb.z:                                             ; preds = %bb.x
  %i.ej = invoke noundef zeroext i1 @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCs5Xr050g3D4S_3std4path7PathBufuNtNtNtBR_4hash6random11RandomStateE6insertCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bg)
          to label %bb.aa unwind label %.thread105.i, !noalias !4411 ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !4409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !4409
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !4411
  %i.ek = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 2001) 24, i64 noundef 8) #32, !noalias !4411 ; 4 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.ab, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i, !prof !20

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #35
          to label %.noexc.i unwind label %.thread105.i, !noalias !4411

.noexc.i:                                         ; preds = %bb.ab
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !4409
  invoke void @_RNvMs16_NtCs5Xr050g3D4S_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.ad unwind label %bb.ac, !noalias !4411

bb.ac:                                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ek, i64 noundef 24, i64 noundef 8) #32, !noalias !4411
  br label %.thread.i

bb.ad:                                            ; preds = %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ek, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !4411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !4409
  store i64 1, ptr %i.bf, align 8, !noalias !4409
  %i.en = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  store ptr %i.ek, ptr %i.en, align 8, !noalias !4409
  %i.eo = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ez = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 4 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 6 uses
  %.sroa.416.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.517.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.517.sroa.4.0..sroa.517.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.517.sroa.5.0..sroa.517.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.517.sroa.6.0..sroa.517.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.517.sroa.7.0..sroa.517.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.517.sroa.8.0..sroa.517.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.sroa.517.sroa.9.0..sroa.517.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.sroa.618.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.sroa.719.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 89
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %.sroa.726.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %.idx.i64 = mul nuw nsw i64 %i.dy, 24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.idx.i64
  %.not.i.i65 = icmp eq i64 %i.dy, 0
  br label %bb.ah

thread-pre-split.i:                               ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i87.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %.sroa.0.0.ph.i = phi i8 [ %.sroa.0.1.ph.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i87.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !4409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %.pr.i = load i64, ptr %i.eo, align 8, !noalias !4409 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.fl = icmp eq i64 %.pr.i, 0
  br i1 %i.fl, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %thread-pre-split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(48) %i.bh, i64 48, i1 false), !noalias !4412
  %i.fm = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i8 %.sroa.0.0.ph.i, ptr %i.fm, align 8, !alias.scope !4408, !noalias !4412
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.af, !noalias !4411

bb.af:                                            ; preds = %bb.ae
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body19 unwind label %bb.ag, !noalias !4411

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path7PathBufENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.noexc18 unwind label %bb.de

.noexc18:                                         ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !4409
  br label %bb.df

bb.ag:                                            ; preds = %bb.af
  %i.fo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !4411
  unreachable

bb.ah:                                            ; preds = %thread-pre-split.i, %bb.ad
  %.sroa.0.0184.i = phi i8 [ 0, %bb.ad ], [ %.sroa.0.0.ph.i, %thread-pre-split.i ]
  %i.fp = phi i64 [ 1, %bb.ad ], [ %.pr.i, %thread-pre-split.i ] ; 2 uses
  %i.fq = add nsw i64 %i.fp, -1                   ; 3 uses
  store i64 %i.fq, ptr %i.eo, align 8, !noalias !4409
  %i.fr = load i64, ptr %i.bf, align 8, !range !10, !noalias !4409, !noundef !9
  %i.fs = icmp samesign ult i64 %i.fq, %i.fr
  call void @llvm.assume(i1 %i.fs)
  %i.ft = load ptr, ptr %i.en, align 8, !noalias !4409, !nonnull !9, !noundef !9
  %i.fu = icmp samesign ult i64 %i.fp, 384307168202282327
  call void @llvm.assume(i1 %i.fu)
  %i.fv = getelementptr inbounds nuw [24 x i8], ptr %i.ft, i64 %i.fq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.fv, i64 24, i1 false), !noalias !4411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !4409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !4409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !4409
  invoke void @_RINvNtCs5Xr050g3D4S_3std2fs8read_dirRNtNtB4_4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.bb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
          to label %bb.aj unwind label %bb.ai, !noalias !4411

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit.i: ; preds = %bb.an, %.body77.i, %bb.al, %bb.ai
  %.pn.i = phi { ptr, i32 } [ %i.fw, %bb.ai ], [ %i.ga, %bb.al ], [ %.pn20.i, %bb.an ], [ %.pn20.i, %.body77.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bc) #31
          to label %.body31.i unwind label %bb.cn, !noalias !4411

bb.ai:                                            ; preds = %bb.da, %bb.ah
  %i.fw = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.fx = load i8, ptr %i.ep, align 8, !range !22, !noalias !4409, !noundef !9 ; 2 uses
  %i.fy = icmp eq i8 %i.fx, 2
  br i1 %i.fy, label %bb.cy, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fz = load ptr, ptr %i.bb, align 8, !noalias !4409, !nonnull !9, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !4409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !4409
  store ptr %i.fz, ptr %i.ba, align 8, !noalias !4409
  store i8 %i.fx, ptr %i.eq, align 8, !noalias !4409
  br label %.outer.i

.outer.i:                                         ; preds = %bb.cx, %bb.ak
  %.sroa.0.1.ph.i = phi i8 [ %.sroa.0.4125.i, %bb.cx ], [ %.sroa.0.0184.i, %bb.ak ] ; 4 uses
  br label %bb.am

bb.al:                                            ; preds = %bb.ar
  %i.ga = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit.i

bb.am:                                            ; preds = %bb.ck, %.outer.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !4409
  invoke void @_RNvXsz_NtCs5Xr050g3D4S_3std2fsNtB5_7ReadDirNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba)
          to label %bb.ao unwind label %.loopexit.i, !noalias !4411

.body77.i:                                        ; preds = %bb.cu, %.body57.i, %.loopexit.split-lp.i, %.loopexit.i
  %.pn20.i = phi { ptr, i32 } [ %.pn17.i, %bb.cu ], [ %.pn17.i, %.body57.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4413)
  call void @llvm.experimental.noalias.scope.decl(metadata !4414)
  call void @llvm.experimental.noalias.scope.decl(metadata !4415)
  call void @llvm.experimental.noalias.scope.decl(metadata !4416)
  %i.gb = load ptr, ptr %i.ba, align 8, !alias.scope !4417, !noalias !4409, !nonnull !9, !noundef !9
  %i.gc = atomicrmw sub ptr %i.gb, i64 1 release, align 8, !noalias !4418
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %bb.an, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit.i

bb.an:                                            ; preds = %.body77.i
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit.i unwind label %bb.cn, !noalias !4411

.loopexit.i:                                      ; preds = %bb.cj, %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body77.i

.loopexit.split-lp.i:                             ; preds = %bb.cw
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body77.i

bb.ao:                                            ; preds = %bb.am
  %i.ge = load i64, ptr %i.az, align 8, !range !14, !noalias !4409, !noundef !9
  %i.gf = trunc nuw i64 %i.ge to i1
  br i1 %i.gf, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !4409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ay, ptr noundef nonnull align 8 dereferenceable(40) %i.er, i64 40, i1 false), !noalias !4409
  %i.gg = load ptr, ptr %i.ay, align 8, !noalias !4409, !noundef !9
  %i.gh = icmp eq ptr %i.gg, null
  br i1 %i.gh, label %.thread123.i, label %bb.av

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !4409
  call void @llvm.experimental.noalias.scope.decl(metadata !4419)
  call void @llvm.experimental.noalias.scope.decl(metadata !4420)
  call void @llvm.experimental.noalias.scope.decl(metadata !4421)
  call void @llvm.experimental.noalias.scope.decl(metadata !4422)
  %i.gi = load ptr, ptr %i.ba, align 8, !alias.scope !4423, !noalias !4409, !nonnull !9, !noundef !9
  %i.gj = atomicrmw sub ptr %i.gi, i64 1 release, align 8, !noalias !4424
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.ar, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit30.i

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtNtNtCs5Xr050g3D4S_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ba) #33
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit30.i unwind label %bb.al, !noalias !4411

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit30.i: ; preds = %bb.ar, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !4409
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i unwind label %bb.as, !noalias !4411

bb.as:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit30.i
  %i.gl = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body31.i unwind label %bb.at, !noalias !4411

bb.at:                                            ; preds = %bb.as
  %i.gm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30, !noalias !4411
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit30.i
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %thread-pre-split.i unwind label %bb.au, !noalias !4411

.body31.i:                                        ; preds = %bb.dc, %bb.au, %bb.as, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit.i
  %eh.lpad-body32.pn.i = phi { ptr, i32 } [ %.pn.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs7ReadDirECsbNLsQi0JuJ4_5tgrep.exit.i ], [ %i.gl, %bb.as ], [ %i.gn, %bb.au ], [ %i.kh, %bb.dc ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCs5Xr050g3D4S_3std4path7PathBufEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bf) #31
          to label %.thread.i unwind label %bb.cn, !noalias !4411

bb.au:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i87.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i.i
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %.body31.i

bb.av:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !4409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull align 8 dereferenceable(40) %i.er, i64 40, i1 false), !noalias !4409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !4409
  invoke void @_RNvMsA_NtCs5Xr050g3D4S_3std2fsNtB5_8DirEntry9file_type(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.aw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax)
          to label %bb.aw unwind label %.loopexit132.i, !noalias !4411

.body61.i:                                        ; preds = %.thread108.i, %bb.cl, %bb.cd, %.body44.i, %bb.bd, %.loopexit.split-lp133.i, %.loopexit132.i
  %.pn15.i = phi { ptr, i32 } [ %eh.lpad-body41.i, %bb.bd ], [ %.pn111.i, %.thread108.i ], [ %i.jl, %bb.cl ], [ %i.ja, %bb.cd ], [ %lpad.thr_comm.split-lp118.i, %.body44.i ], [ %lpad.loopexit134.i, %.loopexit132.i ], [ %lpad.loopexit.split-lp135.i, %.loopexit.split-lp133.i ]
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std2fs8DirEntryECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 dereferenceable(40) %i.ax) #31
          to label %.body57.i unwind label %bb.cn, !noalias !4411

.loopexit132.i:                                   ; preds = %bb.bb, %bb.av
  %lpad.loopexit134.i = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i

.loopexit.split-lp133.i:                          ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5Xr050g3D4S_3std3ffi6os_str8OsStringECsbNLsQi0JuJ4_5tgrep.exit.i60.i, %bb.az
  %lpad.loopexit.split-lp135.i = landingpad { ptr, i32 }
          cleanup
  br label %.body61.i

bb.aw:                                            ; preds = %bb.av
  %i.go = load i32, ptr %i.aw, align 8, !range !31, !noalias !4409, !noundef !9
  %i.gp = trunc nuw i32 %i.go to i1
  br i1 %i.gp, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %bb.aw
  %.val26.i = load ptr, ptr %i.fe, align 8, !noalias !4409, !nonnull !9, !noundef !9 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !4425
  %i.gq = ptrtoint ptr %.val26.i to i64           ; 2 uses
  %i.gr = and i64 %i.gq, 3
  switch i64 %i.gr, label %.unreachabledefault [
    i64 2, label %bb.cs
    i64 3, label %bb.ay
    i64 0, label %bb.cs
    i64 1, label %bb.az
  ], !prof !18

.unreachabledefault:                              ; preds = %bb.ax
  unreachable

default.unreachable:                              ; preds = %bb.cy, %.thread123.i, %bb.ez, %bb.dy, %bb.fd
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.gs = icmp ult ptr %.val26.i, inttoptr (i64 188978561024 to ptr)
  %i.gt = and i64 %i.gq, 1095216660480
  %i.gu = icmp ne i64 %i.gt, 1095216660480
  call void @llvm.assume(i1 %i.gs)
  call void @llvm.assume(i1 %i.gu)
  br label %bb.cs

bb.az:                                            ; preds = %bb.ax
  %i.gv = getelementptr i8, ptr %.val26.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gv) ]
  store ptr %i.gv, ptr %i.ff, align 8, !alias.scope !4426, !noalias !4425
  store i8 3, ptr %i.ap, align 8, !alias.scope !4426, !noalias !4425
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ff)
          to label %bb.cs unwind label %.loopexit.split-lp133.i, !noalias !4411

bb.ba:                                            ; preds = %bb.aw
  %i.gw = load i32, ptr %i.es, align 4, !noalias !4409, !noundef !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !4409
  %i.gx = and i32 %i.gw, 61440
  %i.gy = icmp eq i32 %i.gx, 16384
  br i1 %i.gy, label %bb.bb, label %.loopexit137.i

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !4409
  invoke void @_RNvMsA_NtCs5Xr050g3D4S_3std2fsNtB5_8DirEntry4path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.av, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ax)
          to label %bb.bc unwind label %.loopexit132.i, !noalias !4411
end_hunk_1
