inline.NumInlined: 221
inline.NumDeleted: 79
begin_hunk_0_@_ZN6google8protobuf8internal14ArenaStringPtr3SetESt17basic_string_viewIcSt11char_traitsIcEEPNS0_5ArenaE:bb.a

bb.n:                                             ; preds = %bb.a
  %i.ah = and i64 %i.d, -4
  %i.ai = inttoptr i64 %i.ah to ptr               ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !18
  %i.al = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 noundef 0, i64 noundef %i.ak, ptr noundef %2, i64 noundef %1) ; 0 uses
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal14ArenaStringPtr3SetIJEEEvRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE:bb.a

bb.n:                                             ; preds = %bb.a
  %i.ak = and i64 %i.d, -4
  %i.al = inttoptr i64 %i.ak to ptr
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.o

end_hunk_1
begin_hunk_2_@_ZN6google8protobuf8internal14ArenaStringPtr3SetEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaE:bb.a

bb.g:                                             ; preds = %bb.a
  %i.ag = and i64 %i.b, -4
  %i.ah = inttoptr i64 %i.ag to ptr               ; 9 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 4 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
end_hunk_2
begin_hunk_3_@_ZN6google8protobuf8internal14ArenaStringPtr14ClearToDefaultERKNS1_10LazyStringEPNS0_5ArenaE:bb.a

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.b, -4
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
end_hunk_3
begin_hunk_4_@_ZN6google8protobuf8internal18EpsCopyInputStream15ReadArenaStringEPKcPNS1_14ArenaStringPtrEPNS0_5ArenaE:bb.a
bb.d:                                             ; preds = %_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJEEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS0_5ArenaEDpOT_.exit
  %i.n = sext i32 %.0.i16 to i64                  ; 3 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %.sink14.i, i64 noundef %i.n, i8 noundef signext 0)
  %i.o = load ptr, ptr %.sink14.i, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %storemerge.i15, i64 %i.n, i1 false)
  %i.p = getelementptr inbounds i8, ptr %storemerge.i15, i64 %i.n
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream10ReadStringEPKciPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
end_hunk_4
begin_hunk_5_@_ZN6google8protobuf8internal14ArenaStringPtr9NewStringIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPS9_PNS0_5ArenaEDpOT_:bb.a
!20 = !{!"_ZTSN6google8protobuf8internal15TaggedStringPtrE", !10, i64 0}
!21 = !{!10, !10, i64 0}
!22 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_5
