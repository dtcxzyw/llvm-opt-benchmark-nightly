begin_hunk_0
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.duckdb::unique_ptr.1654", align 16 ; 11 uses
  %8 = alloca %"struct.duckdb::OpenFileInfo", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
end_hunk_0
begin_hunk_1

_ZN6duckdb10unique_ptrI11__dirstreamSt8functionIFvPS1_EELb1EECI2St10unique_ptrIS1_S5_EIS5_vEES3_NSt9enable_ifIXntsr19is_lvalue_referenceIT_EE5valueEOS9_E4typeE.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #60
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvP11__dirstreamEZN6duckdb15LocalFileSystem17ListFilesExtendedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRNS3_12OpenFileInfoEEENS3_12optional_ptrINS3_10FileOpenerELb1EEEE3$_0E9_M_invokeERKSt9_Any_dataOS1_", ptr %i.f, align 8, !tbaa !2558
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  store <2 x i64> zeroinitializer, ptr %7, align 16, !tbaa !75
  store ptr @"_ZNSt17_Function_handlerIFvP11__dirstreamEZN6duckdb15LocalFileSystem17ListFilesExtendedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt8functionIFvRNS3_12OpenFileInfoEEENS3_12optional_ptrINS3_10FileOpenerELb1EEEE3$_0E10_M_managerERSt9_Any_dataRKSP_St18_Manager_operation", ptr %i.g, align 16, !tbaa !1995
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.e, ptr %i.h, align 16, !tbaa !2560
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
end_hunk_1
begin_hunk_2
  br label %bb.bs

bb.bk:                                            ; preds = %bb.c
  %i.ey = load ptr, ptr %i.h, align 16, !tbaa !2578 ; 2 uses
  %.not.i100 = icmp eq ptr %i.ey, null
  br i1 %.not.i100, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ey, ptr %i.a, align 8, !tbaa !2578
  %i.ez = load ptr, ptr %i.g, align 16, !tbaa !1995
  %.not.i.i.i101 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i.i101, label %bb.bm, label %bb.bn

end_hunk_2
begin_hunk_3
  br label %bb.bo

bb.bo:                                            ; preds = %_ZNKSt8functionIFvP11__dirstreamEEclES1_.exit.i, %bb.bk
  store ptr null, ptr %i.h, align 16, !tbaa !2578
  %i.fb = load ptr, ptr %i.g, align 16, !tbaa !1995 ; 2 uses
  %.not.i.i.i.i102 = icmp eq ptr %i.fb, null
  br i1 %.not.i.i.i.i102, label %_ZNSt10unique_ptrI11__dirstreamSt8functionIFvPS0_EEED2Ev.exit, label %bb.bp

end_hunk_3
begin_hunk_4
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !5154, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.e, align 8
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_4
begin_hunk_5
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !5159
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_5
begin_hunk_6
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !5154, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.f, align 8
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 10
end_hunk_6
begin_hunk_7
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.11224.i.i, ptr %i.ai, align 8, !tbaa !5159
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(64) %5)
end_hunk_7
begin_hunk_8
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !5154, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.av, i64 20, i1 false)
  %.sroa.0.0.copyload4.i31 = load <2 x i64>, ptr %i.ap, align 8
  %i.aw = zext i32 %i.aq to i64
  %i.ax = add nuw nsw i64 %i.au, %i.aw            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_8
begin_hunk_9
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.br, align 8, !tbaa !5159
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i31, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_9
begin_hunk_10
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !5154, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i64 20, i1 false)
  %.sroa.0.0.copyload52 = load <2 x i64>, ptr %i.ap, align 8
  %i.cw = zext i32 %.119 to i64
  %i.cx = add nuw nsw i64 %i.cu, %i.cw            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_10
begin_hunk_11
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.dq, align 8, !tbaa !5165
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload52, ptr %i.dr, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_11
begin_hunk_12
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !5154, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false)
  %.sroa.0.0.copyload4 = load <2 x i64>, ptr %i.r, align 8
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_12
begin_hunk_13
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !5179
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload4, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_13
begin_hunk_14
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !5154, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.x, i64 20, i1 false)
  %.sroa.0.0.copyload5 = load <2 x i64>, ptr %i.a, align 8
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_14
begin_hunk_15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !5185
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload5, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_15
begin_hunk_16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !5255, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.e, align 8
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_16
begin_hunk_17
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !5260
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_17
begin_hunk_18
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !5255, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false)
  %.sroa.0.0.copyload4.i = load <2 x i64>, ptr %i.f, align 8
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 10
end_hunk_18
begin_hunk_19
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.11224.i.i, ptr %i.ai, align 8, !tbaa !5260
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(64) %5)
end_hunk_19
begin_hunk_20
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !5255, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.av, i64 20, i1 false)
  %.sroa.0.0.copyload4.i31 = load <2 x i64>, ptr %i.ap, align 8
  %i.aw = zext i32 %i.aq to i64
  %i.ax = add nuw nsw i64 %i.au, %i.aw            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_20
begin_hunk_21
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.br, align 8, !tbaa !5260
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  store <2 x i64> %.sroa.0.0.copyload4.i31, ptr %i.bs, align 8
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_21
begin_hunk_22
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !5255, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i64 20, i1 false)
  %.sroa.0.0.copyload52 = load <2 x i64>, ptr %i.ap, align 8
  %i.cw = zext i32 %.119 to i64
  %i.cx = add nuw nsw i64 %i.cu, %i.cw            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_22
begin_hunk_23
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.dq, align 8, !tbaa !5266
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload52, ptr %i.dr, align 8
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_23
begin_hunk_24
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !5255, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false)
  %.sroa.0.0.copyload4 = load <2 x i64>, ptr %i.r, align 8
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_24
begin_hunk_25
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !5278
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload4, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_25
begin_hunk_26
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !5255, !nonnull !118, !align !4618
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.x, i64 20, i1 false)
  %.sroa.0.0.copyload5 = load <2 x i64>, ptr %i.a, align 8
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_26
begin_hunk_27
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !5283
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i64> %.sroa.0.0.copyload5, ptr %i.au, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_27
begin_hunk_28
.lr.ph.i81:                                       ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit34.i
  %i.kg = add nsw i64 %.0.i52, 1
  %.sroa.speculated.i82 = call i64 @llvm.smin.i64(i64 %i.aw, i64 %i.kg) ; 2 uses
  %8 = sdiv i64 %.sroa.speculated.i82, 64
  %9 = add nsw i64 %8, 1
  %10 = insertelement <4 x i64> <i64 poison, i64 0, i64 poison, i64 -1>, i64 %9, i64 0
  %i.kh = and i64 %.sroa.speculated.i82, 63
  %notmask.i = shl nsw i64 -1, %i.kh
  %i.ki = xor i64 %notmask.i, -1
  %.sroa.037.24.vec.insert58.i = insertelement <4 x i64> %10, i64 %i.ki, i64 2
  %i.kj = load ptr, ptr %6, align 8, !noalias !6347 ; 4 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.kl = getelementptr inbounds nuw i8, ptr %6, i64 48
end_hunk_28
begin_hunk_29
  br label %common.resume

bb.af:                                            ; preds = %bb.ba, %.lr.ph.i81
  %.sroa.0.078.i = phi i64 [ 0, %.lr.ph.i81 ], [ %i.ss, %bb.ba ] ; 6 uses
  %.sroa.037.090.i = phi <4 x i64> [ %.sroa.037.24.vec.insert58.i, %.lr.ph.i81 ], [ %.sroa.037.2.i, %bb.ba ] ; 9 uses
  %11 = getelementptr inbounds nuw i8, ptr %i.au, i64 %.sroa.0.078.i
  %12 = load i8, ptr %11, align 1, !tbaa !75, !noalias !6347 ; 12 uses
  %13 = lshr i64 %.sroa.0.078.i, 6                ; 4 uses
  %14 = and i64 %.sroa.0.078.i, 63                ; 4 uses
  %.sroa.064.8.vec.extract.i = extractelement <4 x i64> %.sroa.037.090.i, i64 1 ; 9 uses
  %.sroa.064.0.vec.extract.i = extractelement <4 x i64> %.sroa.037.090.i, i64 0 ; 3 uses
  %i.kp = icmp eq i64 %.sroa.064.0.vec.extract.i, 1
  br i1 %i.kp, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.kq = icmp sgt i8 %12, -1
  br i1 %i.kq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.kr = zext nneg i8 %12 to i64
  %i.ks = mul nsw i64 %i.kn, %i.kr
  %i.kt = getelementptr [8 x i8], ptr %i.km, i64 %i.ks
  %i.ku = getelementptr [8 x i8], ptr %i.kt, i64 %.sroa.064.8.vec.extract.i
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !32
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.kw = getelementptr inbounds nuw [2048 x i8], ptr %i.kj, i64 %.sroa.064.8.vec.extract.i ; 3 uses
  %i.kx = sext i8 %12 to i64                      ; 7 uses
  %i.ky = and i64 %i.kx, 127
  %i.kz = getelementptr inbounds nuw [16 x i8], ptr %i.kw, i64 %i.ky ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
end_hunk_29
begin_hunk_30

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i, %.lr.ph.i.i.preheader.i.i.i, %.preheader.i.i.i.i.i, %bb.aj, %bb.ai, %bb.ah
  %.0.i.i.i = phi i64 [ %i.kv, %bb.ah ], [ 0, %bb.ai ], [ %i.lb, %bb.aj ], [ 0, %.preheader.i.i.i.i.i ], [ %i.lk, %.lr.ph.i.i.preheader.i.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i.i.i ], [ %i.lv, %.lr.ph.i.i.i.i.i ]
  %shift513 = shufflevector <4 x i64> %.sroa.037.090.i, <4 x i64> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop514 = and <4 x i64> %shift513, %.sroa.037.090.i
  %15 = extractelement <4 x i64> %foldExtExtBinop514, i64 2
  %i.ly = and i64 %15, %.0.i.i.i                  ; 2 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %.sroa.064.8.vec.extract.i ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !32 ; 2 uses
  %i.mb = xor i64 %i.ma, -1
  %i.mc = and i64 %i.ly, %i.mb                    ; 2 uses
end_hunk_30
begin_hunk_31
  store i64 %i.mf, ptr %i.lz, align 8, !tbaa !32
  %i.mg = icmp ne i64 %i.mc, 0
  %i.mh = zext i1 %i.mg to i64
  %i.mi = shl nuw i64 %i.mh, %14
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %13 ; 2 uses
  %i.mk = load i64, ptr %i.mj, align 8, !tbaa !32
  %i.ml = or i64 %i.mi, %i.mk
  store i64 %i.ml, ptr %i.mj, align 8, !tbaa !32
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

bb.ak:                                            ; preds = %bb.af
  %.sroa.064.24.vec.extract.i = extractelement <4 x i64> %.sroa.037.090.i, i64 3 ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.064.24.vec.extract.i, 0
  br i1 %.not.i.i, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.mm = icmp sgt i8 %12, -1
  br i1 %i.mm, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.mn = zext nneg i8 %12 to i64
  %i.mo = mul nsw i64 %i.kn, %i.mn
  %i.mp = getelementptr [8 x i8], ptr %i.km, i64 %i.mo
  %i.mq = getelementptr [8 x i8], ptr %i.mp, i64 %.sroa.064.8.vec.extract.i
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !32
  br label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i

bb.an:                                            ; preds = %bb.al
  %i.ms = getelementptr inbounds nuw [2048 x i8], ptr %i.kj, i64 %.sroa.064.8.vec.extract.i ; 3 uses
  %i.mt = sext i8 %12 to i64                      ; 7 uses
  %i.mu = and i64 %i.mt, 127
  %i.mv = getelementptr inbounds nuw [16 x i8], ptr %i.ms, i64 %i.mu ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
end_hunk_31
begin_hunk_32

_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i: ; preds = %.lr.ph.i.i.i71.i.i, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i73.i.i, %.lr.ph.i.i.preheader.i67.i.i, %.preheader.i.i.i65.i.i, %bb.ao, %bb.an, %bb.am
  %.0.i72.i.i = phi i64 [ %i.mr, %bb.am ], [ 0, %bb.an ], [ %i.mx, %bb.ao ], [ 0, %.preheader.i.i.i65.i.i ], [ %i.ng, %.lr.ph.i.i.preheader.i67.i.i ], [ 0, %._ZNK19duckdb_jaro_winkler6common16BitvectorHashmap3getIcEEmT_.exit.loopexit_crit_edge.i73.i.i ], [ %i.nr, %.lr.ph.i.i.i71.i.i ]
  %i.nu = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %.sroa.064.8.vec.extract.i ; 2 uses
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !32 ; 2 uses
  %i.nw = xor i64 %i.nv, -1
  %i.nx = and i64 %.0.i72.i.i, %i.nw
  %i.ny = and i64 %i.nx, %.sroa.064.24.vec.extract.i ; 3 uses
  %.not61.i.i = icmp eq i64 %i.ny, 0
  br i1 %.not61.i.i, label %.thread.i.i, label %bb.ap

.thread.i.i:                                      ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i
  %i.nz = add nsw i64 %.sroa.064.8.vec.extract.i, 1
  br label %bb.aq

bb.ap:                                            ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit74.i.i
end_hunk_32
begin_hunk_33
  %i.ob = and i64 %i.ny, %i.oa
  %i.oc = or i64 %i.ob, %i.nv
  store i64 %i.oc, ptr %i.nu, align 8, !tbaa !32
  %i.od = shl nuw i64 1, %14
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %13 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !32
  %i.og = or i64 %i.of, %i.od
  store i64 %i.og, ptr %i.oe, align 8, !tbaa !32
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

bb.aq:                                            ; preds = %.thread.i.i, %bb.ak
  %.1.i.i = phi i64 [ %i.nz, %.thread.i.i ], [ %.sroa.064.8.vec.extract.i, %bb.ak ] ; 4 uses
  %i.oh = add i64 %.sroa.064.8.vec.extract.i, -1
  %i.oi = add i64 %i.oh, %.sroa.064.0.vec.extract.i ; 5 uses
  %i.oj = icmp slt i64 %.1.i.i, %i.oi
  br i1 %i.oj, label %.lr.ph.i.i86, label %._crit_edge.i.i

.lr.ph.i.i86:                                     ; preds = %bb.aq
  %i.ok = icmp sgt i8 %12, -1
  %i.ol = sext i8 %12 to i64                      ; 7 uses
  %i.om = and i64 %i.ol, 127
  %i.on = mul nsw i64 %i.ol, 5
  %i.oo = add nsw i64 %i.ol, 1
  %i.op = add nsw i64 %i.oo, %i.on
  %i.oq = and i64 %i.op, 127                      ; 2 uses
  %i.or = zext nneg i8 %12 to i64
  %i.os = mul nsw i64 %i.kn, %i.or
  %i.ot = getelementptr [8 x i8], ptr %i.km, i64 %i.os
  br i1 %i.ok, label %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit85.us.i.i, label %.lr.ph.split.i.i
end_hunk_33
begin_hunk_34
  %i.qe = and i64 %.us-phi12.i.i, %i.qd
  %i.qf = or i64 %i.qe, %.us-phi13.i.i
  store i64 %i.qf, ptr %i.qc, align 8, !tbaa !32
  %i.qg = shl nuw i64 1, %14
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %13 ; 2 uses
  %i.qi = load i64, ptr %i.qh, align 8, !tbaa !32
  %i.qj = or i64 %i.qi, %i.qg
  store i64 %i.qj, ptr %i.qh, align 8, !tbaa !32
end_hunk_34
begin_hunk_35

._crit_edge.i.i:                                  ; preds = %.critedge.i.i, %.critedge.us.i.i, %bb.aq
  %.2.lcssa.i.i = phi i64 [ %.1.i.i, %bb.aq ], [ %i.oi, %.critedge.us.i.i ], [ %i.oi, %.critedge.i.i ] ; 3 uses
  %.sroa.064.16.vec.extract.i = extractelement <4 x i64> %.sroa.037.090.i, i64 2 ; 2 uses
  %.not62.i.i = icmp eq i64 %.sroa.064.16.vec.extract.i, 0
  br i1 %.not62.i.i, label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i, label %bb.as

bb.as:                                            ; preds = %._crit_edge.i.i
  %i.qm = icmp sgt i8 %12, -1
  br i1 %i.qm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.qn = zext nneg i8 %12 to i64
  %i.qo = mul nsw i64 %i.kn, %i.qn
  %i.qp = getelementptr [8 x i8], ptr %i.km, i64 %i.qo
  %i.qq = getelementptr [8 x i8], ptr %i.qp, i64 %.2.lcssa.i.i
end_hunk_35
begin_hunk_36

bb.au:                                            ; preds = %bb.as
  %i.qs = getelementptr inbounds nuw [2048 x i8], ptr %i.kj, i64 %.2.lcssa.i.i ; 3 uses
  %i.qt = sext i8 %12 to i64                      ; 7 uses
  %i.qu = and i64 %i.qt, 127
  %i.qv = getelementptr inbounds nuw [16 x i8], ptr %i.qs, i64 %i.qu ; 2 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
end_hunk_36
begin_hunk_37
  %i.rv = load i64, ptr %i.ru, align 8, !tbaa !32 ; 2 uses
  %i.rw = xor i64 %i.rv, -1
  %i.rx = and i64 %.0.i94.i.i, %i.rw
  %i.ry = and i64 %i.rx, %.sroa.064.16.vec.extract.i ; 3 uses
  %i.rz = sub i64 0, %i.ry
  %i.sa = and i64 %i.ry, %i.rz
  %i.sb = or i64 %i.sa, %i.rv
  store i64 %i.sb, ptr %i.ru, align 8, !tbaa !32
  %i.sc = icmp ne i64 %i.ry, 0
  %i.sd = zext i1 %i.sc to i64
  %i.se = shl nuw i64 %i.sd, %14
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %13 ; 2 uses
  %i.sg = load i64, ptr %i.sf, align 8, !tbaa !32
  %i.sh = or i64 %i.se, %i.sg
  store i64 %i.sh, ptr %i.sf, align 8, !tbaa !32
  br label %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i

_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i: ; preds = %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit96.i.i, %._crit_edge.i.i, %.split.us.i.i, %bb.ap, %_ZNK19duckdb_jaro_winkler6common23BlockPatternMatchVector3getIcEEmlT_.exit.i.i
  %i.si = add nsw i64 %.sroa.0.078.i, %.0.i52     ; 2 uses
  %i.sj = add nsw i64 %i.si, 1
  %i.sk = icmp slt i64 %i.sj, %i.aw
  br i1 %i.sk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %.sroa.037.16.vec.extract.i = extractelement <4 x i64> %.sroa.037.090.i, i64 2
  %i.sl = shl i64 %.sroa.037.16.vec.extract.i, 1  ; 2 uses
  %i.sm = or disjoint i64 %i.sl, 1
  %.sroa.037.16.vec.insert50.i = insertelement <4 x i64> %.sroa.037.090.i, i64 %i.sm, i64 2 ; 2 uses
  %i.sn = add nsw i64 %i.si, 2
  %i.so = icmp slt i64 %i.sn, %i.aw
  %i.sp = icmp eq i64 %i.sl, -2
  %or.cond.i85 = select i1 %i.so, i1 %i.sp, i1 false
  br i1 %or.cond.i85, label %16, label %bb.ax

16:                                               ; preds = %bb.aw
  %.sroa.037.16.vec.insert.i = insertelement <4 x i64> %.sroa.037.16.vec.insert50.i, i64 0, i64 2
  %17 = add nsw i64 %.sroa.064.0.vec.extract.i, 1
  %.sroa.037.0.vec.insert40.i = insertelement <4 x i64> %.sroa.037.16.vec.insert.i, i64 %17, i64 0
  br label %bb.ax

bb.ax:                                            ; preds = %16, %bb.aw, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i
  %.sroa.037.1.i = phi <4 x i64> [ %.sroa.037.0.vec.insert40.i, %16 ], [ %.sroa.037.16.vec.insert50.i, %bb.aw ], [ %.sroa.037.090.i, %_ZN19duckdb_jaro_winkler6detailL28flag_similar_characters_stepIcEEvRKNS_6common23BlockPatternMatchVectorET_RNS0_21FlaggedCharsMultiwordElNS0_15SearchBoundMaskE.exit.i ] ; 4 uses
  %.not.i83 = icmp slt i64 %.sroa.0.078.i, %.0.i52
  br i1 %.not.i83, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.sroa.037.24.vec.extract.i = extractelement <4 x i64> %.sroa.037.1.i, i64 3
  %i.sq = shl i64 %.sroa.037.24.vec.extract.i, 1  ; 2 uses
  %.sroa.037.24.vec.insert56.i = insertelement <4 x i64> %.sroa.037.1.i, i64 %i.sq, i64 3 ; 2 uses
  %i.sr = icmp eq i64 %i.sq, 0
  br i1 %i.sr, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %.sroa.037.24.vec.insert.i = insertelement <4 x i64> %.sroa.037.24.vec.insert56.i, i64 -1, i64 3
  %18 = add nsw <4 x i64> %.sroa.037.1.i, <i64 -1, i64 1, i64 poison, i64 poison>
  %.sroa.037.8.vec.insert.i511 = shufflevector <4 x i64> %18, <4 x i64> %.sroa.037.24.vec.insert.i, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.037.2.i = phi <4 x i64> [ %.sroa.037.1.i, %bb.ax ], [ %.sroa.037.8.vec.insert.i511, %bb.az ], [ %.sroa.037.24.vec.insert56.i, %bb.ay ]
  %i.ss = add nuw nsw i64 %.sroa.0.078.i, 1       ; 2 uses
  %exitcond.not.i84 = icmp eq i64 %i.ss, %i.ay
  br i1 %exitcond.not.i84, label %_ZN19duckdb_jaro_winkler6detailL29flag_similar_characters_blockIPKcS3_EENS0_21FlaggedCharsMultiwordERKNS_6common23BlockPatternMatchVectorET_S9_T0_SA_l.exit, label %bb.af, !llvm.loop !6351

end_hunk_37
