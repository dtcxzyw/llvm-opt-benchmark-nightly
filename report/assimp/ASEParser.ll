begin_hunk_0
@.str.58 = private unnamed_addr constant [69 x i8] c"Encountered unexpected EOL while parsing a *MATERIAL chunk (Level 2)\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"MAP_CLASS\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"*MAP_CLASS\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"Bitmap\00", align 1
@.str.62 = private unnamed_addr constant [12 x i8] c"Normal Bump\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"ASE: Skipping unknown map type: \00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"BITMAP\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"*BITMAP\00", align 1
@.str.66 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.67 = private unnamed_addr constant [32 x i8] c"ASE: Skipping invalid map entry\00", align 1
@.str.68 = private unnamed_addr constant [13 x i8] c"UVW_U_OFFSET\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"UVW_V_OFFSET\00", align 1
end_hunk_0
begin_hunk_1
  ]

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  %i.au = load ptr, ptr %2, align 8
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %i.au, ptr noundef nonnull dereferenceable(6) @.str.61, i64 6)
  %.not = icmp eq i32 %bcmp.i.i, 0
  br i1 %.not, label %.backedge.backedge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20: ; preds = %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit
  %i.av = load ptr, ptr %2, align 8
  %bcmp.i.i19 = call i32 @bcmp(ptr noundef nonnull dereferenceable(11) %i.av, ptr noundef nonnull dereferenceable(11) @.str.62, i64 11)
  %.not151 = icmp eq i32 %bcmp.i.i19, 0
  br i1 %.not151, label %.backedge.backedge, label %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread

_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20.thread: ; preds = %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit, %_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit20
end_hunk_1
begin_hunk_2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZN6Assimp3ASE6Parser15SkipToNextTokenEv.exit34
  %i.bp = load ptr, ptr %i.l, align 8
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %i.bp, ptr noundef nonnull dereferenceable(4) @.str.66, i64 4)
  %i.bq = icmp eq i32 %bcmp.i, 0
  br i1 %i.bq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.backedge.backedge

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_2
