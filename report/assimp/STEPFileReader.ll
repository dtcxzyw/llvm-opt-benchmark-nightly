begin_hunk_0
@_ZTI15DeadlyErrorBase = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15DeadlyErrorBase, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTS15DeadlyErrorBase = linkonce_odr constant [18 x i8] c"15DeadlyErrorBase\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@.str.4 = private unnamed_addr constant [6 x i8] c"DATA;\00", align 1
@_ZL17FILE_SCHEMA_Token = internal constant [12 x i8] c"FILE_SCHEMA\00", align 1
@_ZTIN6Assimp4STEP7EXPRESS8DataTypeE = linkonce_odr hidden constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6Assimp4STEP7EXPRESS8DataTypeE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
end_hunk_0
begin_hunk_1
@_ZTIN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, ptr @_ZTIN6Assimp4STEP7EXPRESS8DataTypeE }, comdat, align 8
@_ZTSN6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE = linkonce_odr hidden constant [96 x i8] c"N6Assimp4STEP7EXPRESS17PrimitiveDataTypeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE\00", comdat, align 1
@.str.7 = private unnamed_addr constant [56 x i8] c"expected FILE_SCHEMA to contain a single string literal\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ENDSEC;\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"expected token '#'\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"expected token '='\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"expected positive, numeric entity id\00", align 1
end_hunk_1
begin_hunk_2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !38
  %i.br = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bs = icmp eq i64 %i.br, 13
  %.pre = load ptr, ptr %4, align 8               ; 3 uses
  br i1 %i.bs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %bcmp.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(13) %.pre, ptr noundef nonnull dereferenceable(13) @_ZL9ISO_Token, i64 13)
  %i.bt = icmp ne i32 %bcmp.i.i, 0
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
end_hunk_2
begin_hunk_3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !41
  %i.ea = load i64, ptr %i.cx, align 8            ; 4 uses
  %i.eb = icmp eq i64 %i.ea, 5
  %.pre249 = load ptr, ptr %8, align 8, !noalias !44 ; 5 uses
  br i1 %i.eb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread192

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.al
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) %.pre249, ptr noundef nonnull dereferenceable(5) @.str.4, i64 5)
  %i.ec = icmp eq i32 %bcmp.i, 0
  br i1 %i.ec, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread192

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #28, !noalias !106
  %i.cp = load i64, ptr %i.s, align 8             ; 5 uses
  %i.cq = icmp eq i64 %i.cp, 7
  %.pre = load ptr, ptr %6, align 8               ; 8 uses
  br i1 %i.cq, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread436

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZNK6Assimp12LineSplitterdeB5cxx11Ev.exit
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %.pre, ptr noundef nonnull dereferenceable(7) @.str.8, i64 7)
  %i.cr = icmp eq i32 %bcmp.i, 0
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread436.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread436.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_4
