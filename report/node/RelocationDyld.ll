inline.NumInlined: 37
inline.NumDeleted: 33
begin_hunk_0_@_ZNK4LIEF5MachO14RelocationDyld5cloneEv
define linkonce_odr hidden void @_ZNK4LIEF5MachO14RelocationDyld5cloneEv(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 {
_ZNSt10unique_ptrIN4LIEF5MachO14RelocationDyldESt14default_deleteIS2_EED2Ev.exit:
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #7 ; 3 uses
  tail call void @_ZN4LIEF5MachO10RelocationC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1) #5
  store ptr getelementptr inbounds nuw inrange(-16, 160) (i8, ptr @_ZTVN4LIEF5MachO14RelocationDyldE, i64 16), ptr %i.a, align 8
  store ptr %i.a, ptr %0, align 8
  ret void
end_hunk_0
begin_hunk_1_@_ZNK4LIEF5MachO10Relocation5printERSo
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
end_hunk_1
