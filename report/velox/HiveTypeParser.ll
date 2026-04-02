begin_hunk_0
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.h
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !20  ; 2 uses
  %36 = load i32, ptr %i.ac, align 1
  %37 = xor i32 %36, 1768121700
  %38 = getelementptr i8, ptr %i.ac, i64 3
  %39 = load i32, ptr %38, align 1
  %40 = xor i32 %39, 1818324329
  %41 = or i32 %37, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i32
  %i.ad = icmp eq i32 %43, 0
  br i1 %i.ad, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread262

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
end_hunk_0
begin_hunk_1

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81: ; preds = %bb.h
  %i.ck = load ptr, ptr %i.z, align 8, !tbaa !20
  %44 = load i32, ptr %i.ck, align 1
  %45 = icmp ne i32 %44, 1702125924
  %46 = zext i1 %45 to i32
  %i.cl = icmp eq i32 %46, 0
  br i1 %i.cl, label %_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.thread262

_ZNSt12__shared_ptrIKN8facebook5velox8DateTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81
end_hunk_1
