inline.NumInlined: 788
inline.NumDeleted: 443
begin_hunk_0_@_ZN6hermesL8orderDFSEPNS_8FunctionE:.lr.ph15
  %1 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %2 = alloca %"struct.std::pair.161", align 8    ; 4 uses
  %3 = alloca %"class.llvh::SmallVector.148", align 8 ; 10 uses
  %4 = alloca %"class.llvh::SmallDenseSet.154", align 8 ; 10 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !21
end_hunk_0
begin_hunk_1_@_ZN6hermesL8orderDFSEPNS_8FunctionE:.lr.ph15
  store i32 4, ptr %i.g, align 4, !tbaa !114
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i32 1, ptr %4, align 8
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 0, ptr %5, align 4, !tbaa !152
  %.07.i.i.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.i, align 8, !tbaa !102
  %.07.i.i.i.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.1.i, align 8, !tbaa !102
  %.07.i.i.i.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.2.i, align 8, !tbaa !102
  %.07.i.i.i.i.ptr.3.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr inttoptr (i64 -8 to ptr), ptr %.07.i.i.i.i.ptr.3.i, align 8, !tbaa !102
  %i.h = ptrtoint ptr %.88.val to i64
  store i64 %i.h, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_1
begin_hunk_2_@_ZN6hermesL8orderDFSEPNS_8FunctionE:.lr.ph15
  br i1 %.not.i.i.i20, label %bb.e, label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit

bb.e:                                             ; preds = %._crit_edge
  %i.ar = load ptr, ptr %.07.i.i.i.i.ptr.i, align 8, !tbaa !163
  call void @_ZdlPv(ptr noundef %i.ar) #11
  br label %_ZN4llvh6detail12DenseSetImplIPN6hermes10BasicBlockENS_13SmallDenseMapIS4_NS0_13DenseSetEmptyELj4ENS_12DenseMapInfoIS4_EENS0_12DenseSetPairIS4_EEEES8_ED2Ev.exit

end_hunk_2
