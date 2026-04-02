begin_hunk_0
@.str.102 = private unnamed_addr constant [25 x i8] c"    \22string normalmap\22 \22\00", align 1
@.str.103 = private unnamed_addr constant [35 x i8] c"    \22texture displacement\22 \22float:\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"/\\\00", align 1
@.str.105 = private unnamed_addr constant [4 x i8] c"tga\00", align 1
@.str.106 = private unnamed_addr constant [4 x i8] c"exr\00", align 1
@.str.107 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.108 = private unnamed_addr constant [4 x i8] c"pfm\00", align 1
@.str.109 = private unnamed_addr constant [4 x i8] c"hdr\00", align 1
@.str.110 = private unnamed_addr constant [37 x i8] c": must convert this texture to PNG.\0A\00", align 1
@.str.111 = private unnamed_addr constant [19 x i8] c"#################\0A\00", align 1
end_hunk_0
begin_hunk_1
  br i1 %i.df, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZNK6Assimp12PbrtExporter20CleanTextureFilenameERK8aiStringbE3$_0ET0_T_SH_SG_T1_.exit"
  %i.dg = load ptr, ptr %6, align 8               ; 4 uses
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.dg, ptr noundef nonnull dereferenceable(3) @.str.105, i64 3)
  %.not81 = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not81, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %bcmp.i.i48 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.dg, ptr noundef nonnull dereferenceable(3) @.str.106, i64 3)
  %.not82 = icmp eq i32 %bcmp.i.i48, 0
  br i1 %.not82, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit49
  %bcmp.i.i50 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.dg, ptr noundef nonnull dereferenceable(3) @.str.107, i64 3)
  %.not83 = icmp eq i32 %bcmp.i.i50, 0
  br i1 %.not83, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit51
  %bcmp.i.i52 = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %i.dg, ptr noundef nonnull dereferenceable(3) @.str.108, i64 3)
  %.not84 = icmp eq i32 %bcmp.i.i52, 0
  br i1 %.not84, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread76, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit46, %"_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_ZNK6Assimp12PbrtExporter20CleanTextureFilenameERK8aiStringbE3$_0ET0_T_SH_SG_T1_.exit", %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit53
end_hunk_1
