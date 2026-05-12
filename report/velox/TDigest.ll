inline.NumInlined: 1039
inline.NumDeleted: 404
begin_hunk_0
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<folly::TDigest::Centroid>::_Storage", i8 }>
%"union.std::_Optional_payload_base<folly::TDigest::Centroid>::_Storage" = type { %"class.folly::TDigest::Centroid" }
%"class.folly::TDigest::Centroid" = type { double, double }
%"class.std::invalid_argument" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"struct.std::__cow_string" = type { %union.anon.39 }
end_hunk_0
begin_hunk_1_@_ZN5folly7TDigest10merge2ImplERKS0_S2_:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"class.folly::TDigest::CentroidMerger", align 16 ; 30 uses
  %i.a = icmp eq ptr %1, %2
end_hunk_1
begin_hunk_2_@_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE:bb.a
  br i1 %i.iu, label %bb.aj, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit

bb.aj:                                            ; preds = %.lr.ph.i.i
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.io, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.io, ptr noundef nonnull align 8 dereferenceable(16) %i.ip, i64 16, i1 false)
  store <2 x ptr> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.ip, align 8
  %i.iv = shl i64 %i.in, 1                        ; 3 uses
  %i.iw = add i64 %i.iv, 2                        ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.ib
end_hunk_2
begin_hunk_3_@_ZN5folly7TDigest9mergeImplIPKS0_EES0_NS_5RangeIT_EE:bb.a
  br i1 %i.jg, label %bb.al, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.i.i23.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.ja, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ja, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false)
  store <2 x ptr> %.sroa.0.i.i23.i.i.sroa.0.0.copyload, ptr %i.jb, align 8
  br label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit

_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISA_SaISA_EEEEEEvS8_S8_.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %bb.ak, %bb.al
end_hunk_3
begin_hunk_4_@_ZN5folly7TDigest5mergeENS_5RangeIPPKS0_EE:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE(ptr dead_on_unwind noalias writable sret(%"class.folly::TDigest") align 8 %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"class.folly::TDigest::CentroidMerger", align 16 ; 30 uses
  %i.a = icmp eq ptr %1, %2
end_hunk_4
begin_hunk_5_@_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE:bb.a
  br i1 %i.iz, label %bb.aj, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit

bb.aj:                                            ; preds = %.lr.ph.i.i
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.it, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.it, ptr noundef nonnull align 8 dereferenceable(16) %i.iu, i64 16, i1 false)
  store <2 x ptr> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.iu, align 8
  %i.ja = shl i64 %i.is, 1                        ; 3 uses
  %i.jb = add i64 %i.ja, 2                        ; 2 uses
  %i.jc = icmp ult i64 %i.jb, %i.ig
end_hunk_5
begin_hunk_6_@_ZN5folly7TDigest9mergeImplIPPKS0_EES0_NS_5RangeIT_EE:bb.a
  br i1 %i.jl, label %bb.al, label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.i.i23.i.i.sroa.0.0.copyload = load <2 x ptr>, ptr %i.jf, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %i.jg, i64 16, i1 false)
  store <2 x ptr> %.sroa.0.i.i23.i.i.sroa.0.0.copyload, ptr %i.jg, align 8
  br label %_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit

_ZN5folly9down_heapIN9__gnu_cxx17__normal_iteratorIPZNS_7TDigest9mergeImplIPPKS3_EES3_NS_5RangeIT_EEE6CursorSt6vectorISB_SaISB_EEEEEEvS9_S9_.exit: ; preds = %.lr.ph.i.i, %._crit_edge.i.i, %bb.ak, %bb.al
end_hunk_6
