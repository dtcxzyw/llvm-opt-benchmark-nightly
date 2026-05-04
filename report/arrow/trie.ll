inline.NumInlined: 495
inline.NumDeleted: 240
begin_hunk_0_@_ZN5arrow8internal11TrieBuilderC2Ev:_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
          to label %_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i unwind label %bb.a ; 5 uses

_ZNSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  store i16 -1, ptr %i.a, align 2, !tbaa !28
  %.sroa.6.0..sroa_idx4.a = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 -1, ptr %.sroa.6.0..sroa_idx4.a, align 2, !tbaa !28
  %.sroa.7.0..sroa_idx6.a = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 0, ptr %.sroa.7.0..sroa_idx6.a, align 2, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !11
  store ptr %i.c, ptr %1, align 8, !tbaa !7
  store ptr %i.c, ptr %i.b, align 8, !tbaa !61
  ret void

bb.a:                                             ; preds = %_ZNKSt6vectorIN5arrow8internal4Trie4NodeESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
end_hunk_0
