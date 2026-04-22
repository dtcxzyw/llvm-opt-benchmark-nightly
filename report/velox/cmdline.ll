inline.NumInlined: 1359
inline.NumDeleted: 494
begin_hunk_0
@_ZTIN5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEEE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEEE, i32 0, i32 3, ptr @_ZTIN5boost16exception_detail10clone_baseE, i64 2, ptr @_ZTIN5boost15program_options27invalid_command_line_syntaxE, i64 2050, ptr @_ZTIN5boost9exceptionE, i64 51202 }, comdat, align 8
@_ZTSN5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEEE = linkonce_odr constant [73 x i8] c"N5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEEE\00", comdat, align 1
@_ZTVN5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEEE = linkonce_odr unnamed_addr constant { [6 x ptr], [8 x ptr], [4 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEEE, ptr @_ZNK5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEE5cloneEv, ptr @_ZNK5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEE7rethrowEv, ptr @_ZN5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEED2Ev, ptr @_ZN5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEED0Ev], [8 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEEE, ptr @_ZThn8_N5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEED1Ev, ptr @_ZThn8_N5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEED0Ev, ptr @_ZNK5boost15program_options22error_with_option_name4whatEv, ptr @_ZN5boost15program_options22error_with_option_name15set_option_nameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK5boost15program_options22error_with_option_name23substitute_placeholdersERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK5boost15program_options14invalid_syntax6tokensB5cxx11Ev], [4 x ptr] [ptr inttoptr (i64 -200 to ptr), ptr @_ZTIN5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEEE, ptr @_ZThn200_N5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEED1Ev, ptr @_ZThn200_N5boost10wrapexceptINS_15program_options27invalid_command_line_syntaxEED0Ev] }, comdat, align 8
@switch.table._ZN5boost15program_options14invalid_syntax12get_templateB5cxx11ENS1_6kind_tE = private unnamed_addr constant [7 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str, ptr @.str.1, ptr @.str.6, ptr @.str.2], align 8

@_ZN5boost15program_options6detail7cmdlineC1ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE = unnamed_addr alias void (ptr, ptr), ptr @_ZN5boost15program_options6detail7cmdlineC2ERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS9_EE
@_ZN5boost15program_options6detail7cmdlineC1EiPKPKc = unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN5boost15program_options6detail7cmdlineC2EiPKPKc
end_hunk_0
begin_hunk_1_@_ZN5boost15program_options14invalid_syntax12get_templateB5cxx11ENS1_6kind_tE:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5boost15program_options14invalid_syntax12get_templateB5cxx11ENS1_6kind_tE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

end_hunk_1
begin_hunk_2_@_ZN5boost15program_options14invalid_syntaxC2ENS1_6kind_tERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_i:bb.a

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5boost15program_options14invalid_syntax12get_templateB5cxx11ENS1_6kind_tE, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

end_hunk_2
