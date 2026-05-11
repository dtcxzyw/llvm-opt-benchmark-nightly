inline.NumInlined: 14590
inline.NumDeleted: 3684
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_10OpaqueTypeEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a
  %12 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %13 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %14 = alloca %"class.std::optional.258", align 1 ; 5 uses
  %15 = alloca %"struct.facebook::velox::StringView", align 8 ; 6 uses
  %16 = alloca %"class.std::shared_ptr.953", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_14readINS0_10OpaqueTypeEEEvPNS0_15ByteInputStreamERKSt10shared_ptrIKNS0_4TypeEEiPKmiPNS0_6memory10MemoryPoolERKNS2_17PrestoVectorSerde13PrestoOptionsERS9_INS0_10BaseVectorEE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.es = sext i32 %.043182 to i64
  %i.et = getelementptr inbounds i8, ptr %i.do, i64 %i.es ; 5 uses
  %i.eu = sub nsw i32 %i.er, %.043182             ; 8 uses
  store i32 %i.eu, ptr %15, align 8, !tbaa !628
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %bb.ap, label %bb.as, !prof !36

end_hunk_1
