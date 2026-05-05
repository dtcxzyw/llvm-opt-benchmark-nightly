inline.NumInlined: 29985
inline.NumDeleted: 10454
begin_hunk_0_@_ZN6duckdb15LocalFileSystem17ListFilesExtendedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRNS_12OpenFileInfoEEENS_12optional_ptrINS_10FileOpenerELb1EEE:bb.a
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.duckdb::unique_ptr.1654", align 16 ; 11 uses
  %8 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb15LocalFileSystem17ListFilesExtendedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRNS_12OpenFileInfoEEENS_12optional_ptrINS_10FileOpenerELb1EEE:bb.a

_ZN6duckdb10unique_ptrI11__dirstreamSt8functionIFvPS1_EELb1EECI2St10unique_ptrIS1_S5_EIS5_vEES3_NSt9enable_ifIXntsr19is_lvalue_referenceIT_EE5valueEOS9_E4typeE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #59
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvP11__dirstreamEZN6duckdb15LocalFileSystem17ListFilesExtendedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRNS3_12OpenFileInfoEEENS3_12optional_ptrINS3_10FileOpenerELb1EEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_", ptr %i.f, align 8, !tbaa !2744
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store <2 x i64> zeroinitializer, ptr %7, align 16, !tbaa !79
  store ptr @"_ZNSt17_Function_handlerIFvP11__dirstreamEZN6duckdb15LocalFileSystem17ListFilesExtendedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRNS3_12OpenFileInfoEEENS3_12optional_ptrINS3_10FileOpenerELb1EEEE3$_0E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation", ptr %i.g, align 16, !tbaa !2133
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.e, ptr %i.h, align 16, !tbaa !2746
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN6duckdb15LocalFileSystem17ListFilesExtendedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRNS_12OpenFileInfoEEENS_12optional_ptrINS_10FileOpenerELb1EEE:bb.a
  br label %bb.bs

bb.bk:                                            ; preds = %bb.c
  %i.fb = load ptr, ptr %i.h, align 16, !tbaa !2767 ; 2 uses
  %.not.i100 = icmp eq ptr %i.fb, null
  br i1 %.not.i100, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.fb, ptr %i.a, align 8, !tbaa !2767
  %i.fc = load ptr, ptr %i.g, align 16, !tbaa !2133
  %.not.i.i.i101 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i101, label %bb.bm, label %bb.bn

end_hunk_2
begin_hunk_3_@_ZN6duckdb15LocalFileSystem17ListFilesExtendedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRNS_12OpenFileInfoEEENS_12optional_ptrINS_10FileOpenerELb1EEE:bb.a
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt8functionIFvP11__dirstreamEEclES1_.exit.i, %bb.bk
  store ptr null, ptr %i.h, align 16, !tbaa !2767
  %i.fe = load ptr, ptr %i.g, align 16, !tbaa !2133 ; 2 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i102, label %_ZNSt10unique_ptrI11__dirstreamSt8functionIFvPS0_EEED2Ev.exit, label %bb.bp

end_hunk_3
begin_hunk_4_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !5611, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.e, align 8
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_4
begin_hunk_5_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !5616
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_5
begin_hunk_6_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !5611, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.f, align 8
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 10
end_hunk_6
begin_hunk_7_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.11224.i.i, ptr %i.ai, align 8, !tbaa !5616
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(64) %5)
end_hunk_7
begin_hunk_8_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !5611, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.av, i64 20, i1 false)
  %.sroa.0.0.copyload4.i31 = load <2 x i64>, ptr %i.ap, align 8
  %i.aw = zext i32 %i.aq to i64
  %i.ax = add nuw nsw i64 %i.au, %i.aw            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_8
begin_hunk_9_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.br, align 8, !tbaa !5616
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i31, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_9
begin_hunk_10_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !5611, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i64 20, i1 false)
  %.sroa.0.0.copyload52 = load <2 x i64>, ptr %i.ap, align 8
  %i.cw = zext i32 %.119 to i64
  %i.cx = add nuw nsw i64 %i.cu, %i.cw            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_10
begin_hunk_11_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.dq, align 8, !tbaa !5622
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload52, ptr %i.dr, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_11
begin_hunk_12_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !5611, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false)
  %.sroa.0.0.copyload4 = load <2 x i64>, ptr %i.r, align 8
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_12
begin_hunk_13_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !5636
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload4, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_13
begin_hunk_14_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !5611, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.x, i64 20, i1 false)
  %.sroa.0.0.copyload5 = load <2 x i64>, ptr %i.a, align 8
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_14
begin_hunk_15_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !5642
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload5, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_15
begin_hunk_16_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !5730, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.e, align 8
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_16
begin_hunk_17_@_ZN10duckdb_fmt2v68internal20handle_int_type_specINS0_18basic_format_specsIcEENS1_12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tES4_EEEEvRKT_OT0_:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !5735
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_17
begin_hunk_18_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !5730, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.f, align 8
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 10
end_hunk_18
begin_hunk_19_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.11224.i.i, ptr %i.ai, align 8, !tbaa !5735
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(64) %5)
end_hunk_19
begin_hunk_20_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !5730, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.av, i64 20, i1 false)
  %.sroa.0.0.copyload4.i31 = load <2 x i64>, ptr %i.ap, align 8
  %i.aw = zext i32 %i.aq to i64
  %i.ax = add nuw nsw i64 %i.au, %i.aw            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_20
begin_hunk_21_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.br, align 8, !tbaa !5735
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i31, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_21
begin_hunk_22_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !5730, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i64 20, i1 false)
  %.sroa.0.0.copyload52 = load <2 x i64>, ptr %i.ap, align 8
  %i.cw = zext i32 %.119 to i64
  %i.cx = add nuw nsw i64 %i.cu, %i.cw            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_22
begin_hunk_23_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_numEv:bb.a
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.dq, align 8, !tbaa !5741
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload52, ptr %i.dr, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_23
begin_hunk_24_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !5730, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false)
  %.sroa.0.0.copyload4 = load <2 x i64>, ptr %i.r, align 8
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_24
begin_hunk_25_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_binEv:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !5753
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload4, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_25
begin_hunk_26_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !5730, !nonnull !123, !align !4977
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.x, i64 20, i1 false)
  %.sroa.0.0.copyload5 = load <2 x i64>, ptr %i.a, align 8
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_26
begin_hunk_27_@_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE6on_octEv:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !5758
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload5, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_27
begin_hunk_28_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
.lr.ph.i79:                                       ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit34.i
  %i.jy = add nsw i64 %.0.i50, 1
  %.sroa.speculated.i80 = call i64 @llvm.smin.i64(i64 %i.at, i64 %i.jy) ; 2 uses
  %8 = sdiv i64 %.sroa.speculated.i80, 64
  %9 = add nsw i64 %8, 1
  %10 = insertelement <4 x i64> <i64 poison, i64 0, i64 poison, i64 -1>, i64 %9, i64 0
  %i.jz = and i64 %.sroa.speculated.i80, 63
  %notmask.i = shl nsw i64 -1, %i.jz
  %i.ka = xor i64 %notmask.i, -1
  %.sroa.037.24.vec.insert58.i = insertelement <4 x i64> %10, i64 %i.ka, i64 2
  %i.kb = load ptr, ptr %6, align 8, !noalias !6923 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %6, i64 48
end_hunk_28
begin_hunk_29_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  br label %common.resume

bb.af:                                            ; preds = %bb.ba, %.lr.ph.i79
  %.sroa.0.078.i = phi i64 [ 0, %.lr.ph.i79 ], [ %i.si, %bb.ba ] ; 6 uses
  %.sroa.037.090.i = phi <4 x i64> [ %.sroa.037.24.vec.insert58.i, %.lr.ph.i79 ], [ %.sroa.037.2.i, %bb.ba ] ; 9 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.078.i
  %12 = load i8, ptr %11, align 1, !tbaa !79, !noalias !6923 ; 12 uses
  %13 = lshr i64 %.sroa.0.078.i, 6                ; 4 uses
  %14 = and i64 %.sroa.0.078.i, 63                ; 4 uses
  %.sroa.064.8.vec.extract.i = extractelement <4 x i64> %.sroa.037.090.i, i64 1 ; 9 uses
  %.sroa.064.0.vec.extract.i = extractelement <4 x i64> %.sroa.037.090.i, i64 0 ; 3 uses
  %i.kh = icmp eq i64 %.sroa.064.0.vec.extract.i, 1
  br i1 %i.kh, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.ki = icmp sgt i8 %12, -1
  br i1 %i.ki, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.kj = zext nneg i8 %12 to i64
  %i.kk = mul nsw i64 %i.kf, %i.kj
  %i.kl = getelementptr [8 x i8], ptr %i.ke, i64 %i.kk
  %i.km = getelementptr [8 x i8], ptr %i.kl, i64 %.sroa.064.8.vec.extract.i
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.ko = getelementptr inbounds nuw [2048 x i8], ptr %i.kb, i64 %.sroa.064.8.vec.extract.i ; 3 uses
  %i.kp = sext i8 %12 to i64                      ; 7 uses
  %i.kq = and i64 %i.kp, 127
  %i.kr = getelementptr inbounds nuw [16 x i8], ptr %i.ko, i64 %i.kq ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
end_hunk_29
begin_hunk_30_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i, %.lr.ph.i.i.preheader.i.i.i, %.preheader.i.i.i.i.i, %bb.aj, %bb.ai, %bb.ah
  %.0.i.i.i = phi i64 [ %i.kn, %bb.ah ], [ 0, %bb.ai ], [ %i.kt, %bb.aj ], [ 0, %.preheader.i.i.i.i.i ], [ %i.lc, %.lr.ph.i.i.preheader.i.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i ], [ %i.ln, %.lr.ph.i.i.i.i.i ]
  %shift = shufflevector <4 x i64> %.sroa.037.090.i, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop = and <4 x i64> %shift, %.sroa.037.090.i
  %15 = extractelement <4 x i64> %foldExtExtBinop, i64 2
  %i.lq = and i64 %15, %.0.i.i.i                  ; 2 uses
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.sroa.064.8.vec.extract.i ; 2 uses
  %i.ls = load i64, ptr %i.lr, align 8, !tbaa !33 ; 2 uses
  %i.lt = xor i64 %i.ls, -1
  %i.lu = and i64 %i.lq, %i.lt                    ; 2 uses
end_hunk_30
begin_hunk_31_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  store i64 %i.lx, ptr %i.lr, align 8, !tbaa !33
  %i.ly = icmp ne i64 %i.lu, 0
  %i.lz = zext i1 %i.ly to i64
  %i.ma = shl nuw i64 %i.lz, %14
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %13 ; 2 uses
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !33
  %i.md = or i64 %i.ma, %i.mc
  store i64 %i.md, ptr %i.mb, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

bb.ak:                                            ; preds = %bb.af
  %.sroa.064.24.vec.extract.i = extractelement <4 x i64> %.sroa.037.090.i, i64 3 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.064.24.vec.extract.i, 0
  br i1 %.not.i.i, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.me = icmp sgt i8 %12, -1
  br i1 %i.me, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mf = zext nneg i8 %12 to i64
  %i.mg = mul nsw i64 %i.kf, %i.mf
  %i.mh = getelementptr [8 x i8], ptr %i.ke, i64 %i.mg
  %i.mi = getelementptr [8 x i8], ptr %i.mh, i64 %.sroa.064.8.vec.extract.i
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !33
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i

bb.an:                                            ; preds = %bb.al
  %i.mk = getelementptr inbounds nuw [2048 x i8], ptr %i.kb, i64 %.sroa.064.8.vec.extract.i ; 3 uses
  %i.ml = sext i8 %12 to i64                      ; 7 uses
  %i.mm = and i64 %i.ml, 127
  %i.mn = getelementptr inbounds nuw [16 x i8], ptr %i.mk, i64 %i.mm ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
end_hunk_31
begin_hunk_32_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i: ; preds = %.lr.ph.i.i.i71.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i73.i.i, %.lr.ph.i.i.preheader.i67.i.i, %.preheader.i.i.i65.i.i, %bb.ao, %bb.an, %bb.am
  %.0.i72.i.i = phi i64 [ %i.mj, %bb.am ], [ 0, %bb.an ], [ %i.mp, %bb.ao ], [ 0, %.preheader.i.i.i65.i.i ], [ %i.my, %.lr.ph.i.i.preheader.i67.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i73.i.i ], [ %i.nj, %.lr.ph.i.i.i71.i.i ]
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %.sroa.064.8.vec.extract.i ; 2 uses
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !33 ; 2 uses
  %i.no = xor i64 %i.nn, -1
  %i.np = and i64 %.0.i72.i.i, %i.no
  %i.nq = and i64 %i.np, %.sroa.064.24.vec.extract.i ; 3 uses
  %.not61.i.i = icmp eq i64 %i.nq, 0
  br i1 %.not61.i.i, label %.thread.i.i, label %bb.ap

.thread.i.i:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i
  %i.nr = add nsw i64 %.sroa.064.8.vec.extract.i, 1
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i
end_hunk_32
begin_hunk_33_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  %i.nt = and i64 %i.nq, %i.ns
  %i.nu = or i64 %i.nt, %i.nn
  store i64 %i.nu, ptr %i.nm, align 8, !tbaa !33
  %i.nv = shl nuw i64 1, %14
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %13 ; 2 uses
  %i.nx = load i64, ptr %i.nw, align 8, !tbaa !33
  %i.ny = or i64 %i.nx, %i.nv
  store i64 %i.ny, ptr %i.nw, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

bb.aq:                                            ; preds = %.thread.i.i, %bb.ak
  %.1.i.i = phi i64 [ %i.nr, %.thread.i.i ], [ %.sroa.064.8.vec.extract.i, %bb.ak ] ; 4 uses
  %i.nz = add i64 %.sroa.064.8.vec.extract.i, -1
  %i.oa = add i64 %i.nz, %.sroa.064.0.vec.extract.i ; 5 uses
  %i.ob = icmp slt i64 %.1.i.i, %i.oa
  br i1 %i.ob, label %.lr.ph.i.i84, label %._crit_edge.i.i

.lr.ph.i.i84:                                     ; preds = %bb.aq
  %i.oc = icmp sgt i8 %12, -1
  %i.od = sext i8 %12 to i64                      ; 7 uses
  %i.oe = and i64 %i.od, 127
  %i.of = mul nsw i64 %i.od, 5
  %i.og = add nsw i64 %i.od, 1
  %i.oh = add nsw i64 %i.og, %i.of
  %i.oi = and i64 %i.oh, 127                      ; 2 uses
  %i.oj = zext nneg i8 %12 to i64
  %i.ok = mul nsw i64 %i.kf, %i.oj
  %i.ol = getelementptr [8 x i8], ptr %i.ke, i64 %i.ok
  br i1 %i.oc, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us.i.i, label %.lr.ph.split.i.i
end_hunk_33
begin_hunk_34_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  %i.pv = and i64 %.us-phi12.i.i, %i.pu
  %i.pw = or i64 %i.pv, %.us-phi13.i.i
  store i64 %i.pw, ptr %i.pt, align 8, !tbaa !33
  %i.px = shl nuw i64 1, %14
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %13 ; 2 uses
  %i.pz = load i64, ptr %i.py, align 8, !tbaa !33
  %i.qa = or i64 %i.pz, %i.px
  store i64 %i.qa, ptr %i.py, align 8, !tbaa !33
end_hunk_34
begin_hunk_35_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %.critedge.us.i.i, %bb.aq
  %.2.lcssa.i.i = phi i64 [ %.1.i.i, %bb.aq ], [ %i.oa, %.critedge.us.i.i ], [ %i.oa, %.critedge.i.i ] ; 3 uses
  %.sroa.064.16.vec.extract.i = extractelement <4 x i64> %.sroa.037.090.i, i64 2 ; 2 uses
  %.not62.i.i = icmp eq i64 %.sroa.064.16.vec.extract.i, 0
  br i1 %.not62.i.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i.i
  %i.qc = icmp sgt i8 %12, -1
  br i1 %i.qc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.qd = zext nneg i8 %12 to i64
  %i.qe = mul nsw i64 %i.kf, %i.qd
  %i.qf = getelementptr [8 x i8], ptr %i.ke, i64 %i.qe
  %i.qg = getelementptr [8 x i8], ptr %i.qf, i64 %.2.lcssa.i.i
end_hunk_35
begin_hunk_36_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a

bb.au:                                            ; preds = %bb.as
  %i.qi = getelementptr inbounds nuw [2048 x i8], ptr %i.kb, i64 %.2.lcssa.i.i ; 3 uses
  %i.qj = sext i8 %12 to i64                      ; 7 uses
  %i.qk = and i64 %i.qj, 127
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr %i.qi, i64 %i.qk ; 2 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
end_hunk_36
begin_hunk_37_@_ZN19duckdb_jaro_winkler6detail15jaro_similarityIPKcS3_EEdT_S4_T0_S5_d:bb.a
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !33 ; 2 uses
  %i.rm = xor i64 %i.rl, -1
  %i.rn = and i64 %.0.i94.i.i, %i.rm
  %i.ro = and i64 %i.rn, %.sroa.064.16.vec.extract.i ; 3 uses
  %i.rp = sub i64 0, %i.ro
  %i.rq = and i64 %i.ro, %i.rp
  %i.rr = or i64 %i.rq, %i.rl
  store i64 %i.rr, ptr %i.rk, align 8, !tbaa !33
  %i.rs = icmp ne i64 %i.ro, 0
  %i.rt = zext i1 %i.rs to i64
  %i.ru = shl nuw i64 %i.rt, %14
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %13 ; 2 uses
  %i.rw = load i64, ptr %i.rv, align 8, !tbaa !33
  %i.rx = or i64 %i.ru, %i.rw
  store i64 %i.rx, ptr %i.rv, align 8, !tbaa !33
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i: ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, %._crit_edge.i.i, %.split.us.i.i, %bb.ap, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i
  %i.ry = add nsw i64 %.sroa.0.078.i, %.0.i50     ; 2 uses
  %i.rz = add nsw i64 %i.ry, 1
  %i.sa = icmp slt i64 %i.rz, %i.at
  br i1 %i.sa, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %.sroa.037.16.vec.extract.i = extractelement <4 x i64> %.sroa.037.090.i, i64 2
  %i.sb = shl i64 %.sroa.037.16.vec.extract.i, 1  ; 2 uses
  %i.sc = or disjoint i64 %i.sb, 1
  %.sroa.037.16.vec.insert50.i = insertelement <4 x i64> %.sroa.037.090.i, i64 %i.sc, i64 2 ; 2 uses
  %i.sd = add nsw i64 %i.ry, 2
  %i.se = icmp slt i64 %i.sd, %i.at
  %i.sf = icmp eq i64 %i.sb, -2
  %or.cond.i83 = select i1 %i.se, i1 %i.sf, i1 false
  br i1 %or.cond.i83, label %16, label %bb.ax

16:                                               ; preds = %bb.aw
  %.sroa.037.16.vec.insert.i = insertelement <4 x i64> %.sroa.037.16.vec.insert50.i, i64 0, i64 2
  %17 = add nsw i64 %.sroa.064.0.vec.extract.i, 1
  %.sroa.037.0.vec.insert40.i = insertelement <4 x i64> %.sroa.037.16.vec.insert.i, i64 %17, i64 0
  br label %bb.ax

bb.ax:                                            ; preds = %16, %bb.aw, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %.sroa.037.1.i = phi <4 x i64> [ %.sroa.037.0.vec.insert40.i, %16 ], [ %.sroa.037.16.vec.insert50.i, %bb.aw ], [ %.sroa.037.090.i, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i ] ; 4 uses
  %.not.i81 = icmp slt i64 %.sroa.0.078.i, %.0.i50
  br i1 %.not.i81, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.sroa.037.24.vec.extract.i = extractelement <4 x i64> %.sroa.037.1.i, i64 3
  %i.sg = shl i64 %.sroa.037.24.vec.extract.i, 1  ; 2 uses
  %.sroa.037.24.vec.insert56.i = insertelement <4 x i64> %.sroa.037.1.i, i64 %i.sg, i64 3 ; 2 uses
  %i.sh = icmp eq i64 %i.sg, 0
  br i1 %i.sh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.sroa.037.24.vec.insert.i = insertelement <4 x i64> %.sroa.037.24.vec.insert56.i, i64 -1, i64 3
  %18 = add nsw <4 x i64> %.sroa.037.1.i, <i64 -1, i64 1, i64 poison, i64 poison>
  %.sroa.037.8.vec.insert.i502 = shufflevector <4 x i64> %18, <4 x i64> %.sroa.037.24.vec.insert.i, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.037.2.i = phi <4 x i64> [ %.sroa.037.1.i, %bb.ax ], [ %.sroa.037.8.vec.insert.i502, %bb.az ], [ %.sroa.037.24.vec.insert56.i, %bb.ay ]
  %i.si = add nuw nsw i64 %.sroa.0.078.i, 1       ; 2 uses
  %exitcond.not.i82 = icmp eq i64 %i.si, %i.av
  br i1 %exitcond.not.i82, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit, label %bb.af, !llvm.loop !6927

end_hunk_37
