inline.NumInlined: 233
inline.NumDeleted: 111
begin_hunk_0_@_ZNK8facebook5velox4exec13TypeSignature8toStringB5cxx11Ev:bb.a

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit11: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ao = load ptr, ptr %i.o, align 8, !tbaa !22
  invoke void @_ZNK8facebook5velox4exec13TypeSignature8toStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(97) %i.ao)
          to label %bb.f unwind label %bb.g

end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox4exec13TypeSignature8toStringB5cxx11Ev:bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 10 uses
  store ptr %i.bi, ptr %4, align 8, !tbaa !24
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.bk = load ptr, ptr %i.o, align 8, !tbaa !20  ; 3 uses
  %i.bl = load ptr, ptr %i.q, align 8, !tbaa !20  ; 3 uses
  store i64 0, ptr %i.bj, align 8, !tbaa !13
  store i8 0, ptr %i.bi, align 8, !tbaa !14
end_hunk_1
begin_hunk_2_@_ZNK8facebook5velox4exec13TypeSignature8toStringB5cxx11Ev:bb.a
  br i1 %i.bm, label %_ZN5folly4joinIA2_cSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS6_EEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit18
  invoke void @_ZN8facebook5velox4exec8toAppendERKNS1_13TypeSignatureEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(97) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.noexc unwind label %.loopexit.split-lp, !inline_history !25

end_hunk_2
