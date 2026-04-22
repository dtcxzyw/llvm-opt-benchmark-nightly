inline.NumInlined: 8027
inline.NumDeleted: 3748
begin_hunk_0
@.str.406 = private unnamed_addr constant [118 x i8] c"virtual node::cares_wrap::QueryWrap<node::cares_wrap::TxtTraits>::~QueryWrap() [Traits = node::cares_wrap::TxtTraits]\00", align 1
@llvm.global_ctors = appending global [5 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.94, ptr @_ZN3ada37url_pattern_compile_component_options7DEFAULTE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.95, ptr @_ZN3ada37url_pattern_compile_component_options8HOSTNAMEE }, { i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init.96, ptr @_ZN3ada37url_pattern_compile_component_options8PATHNAMEE }, { i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_cares_wrap.cc, ptr null }]
@llvm.used = appending global [4 x ptr] [ptr @_ZN3ada37url_pattern_compile_component_options7DEFAULTE, ptr @_ZN3ada37url_pattern_compile_component_options8HOSTNAMEE, ptr @_ZN3ada37url_pattern_compile_component_options8PATHNAMEE, ptr @_ZN4node8builtins11BuiltinInfo13parameter_mapB5cxx11E], section "llvm.metadata"
@switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi = private unnamed_addr constant [24 x ptr] [ptr @.str.127, ptr @.str.125, ptr @.str.135, ptr @.str.130, ptr @.str.131, ptr @.str.134, ptr @.str.118, ptr @.str.117, ptr @.str.114, ptr @.str.119, ptr @.str.122, ptr @.str.136, ptr @.str.133, ptr @.str.124, ptr @.str.128, ptr @.str.123, ptr @.str.120, ptr @.str.115, ptr @.str.129, ptr @.str.116, ptr @.str.132, ptr @.str.126, ptr @.str.113, ptr @.str.121], align 8

@_ZN4node10cares_wrap11ChannelWrapC1EPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEEiii = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, i32), ptr @_ZN4node10cares_wrap11ChannelWrapC2EPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEEiii
@_ZN4node10cares_wrap18GetAddrInfoReqWrapC1EPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEEh = dso_local unnamed_addr alias void (ptr, ptr, ptr, i8), ptr @_ZN4node10cares_wrap18GetAddrInfoReqWrapC2EPNS_11EnvironmentEN2v85LocalINS4_6ObjectEEEh
end_hunk_0
begin_hunk_1_@_ZN4node10cares_wrap11ChannelWrap5SetupEv:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %i.j, -1
  %i.p = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.p
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_1
begin_hunk_2_@_ZN4node10cares_wrap11ChannelWrap5SetupEv:bb.a
switch.lookup27:                                  ; preds = %bb.j
  %switch.tableidx26 = add i32 %i.as, -1
  %i.ay = zext nneg i32 %switch.tableidx26 to i64
  %switch.gep28 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ay
  %switch.load29 = load ptr, ptr %switch.gep28, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit13

end_hunk_2
begin_hunk_3_@_ZN4node10cares_wrap9QueryWrapINS0_9AnyTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_3
begin_hunk_4_@_ZN4node10cares_wrap9QueryWrapINS0_7ATraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_4
begin_hunk_5_@_ZN4node10cares_wrap9QueryWrapINS0_10AaaaTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_5
begin_hunk_6_@_ZN4node10cares_wrap9QueryWrapINS0_9CaaTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_6
begin_hunk_7_@_ZN4node10cares_wrap9QueryWrapINS0_11CnameTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_7
begin_hunk_8_@_ZN4node10cares_wrap9QueryWrapINS0_8MxTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_8
begin_hunk_9_@_ZN4node10cares_wrap9QueryWrapINS0_8NsTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_9
begin_hunk_10_@_ZN4node10cares_wrap9QueryWrapINS0_10TlsaTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_10
begin_hunk_11_@_ZN4node10cares_wrap9QueryWrapINS0_9TxtTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_11
begin_hunk_12_@_ZN4node10cares_wrap9QueryWrapINS0_9SrvTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_12
begin_hunk_13_@_ZN4node10cares_wrap9QueryWrapINS0_9PtrTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_13
begin_hunk_14_@_ZN4node10cares_wrap9QueryWrapINS0_11NaptrTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_14
begin_hunk_15_@_ZN4node10cares_wrap9QueryWrapINS0_9SoaTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_15
begin_hunk_16_@_ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi:bb.a
switch.lookup:                                    ; preds = %bb.c
  %switch.tableidx = add i32 %1, -1
  %i.ab = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN4node10cares_wrap9QueryWrapINS0_13ReverseTraitsEE10ParseErrorEi, i64 %i.ab
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %_ZN4node10cares_wrap17ToErrorCodeStringEi.exit

end_hunk_16
