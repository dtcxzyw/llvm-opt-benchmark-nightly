begin_hunk_0
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdbL19InStrPropagateStatsERNS_13ClientContextERNS_23FunctionStatisticsInputE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr.30") align 8 captures(none) %0, ptr nonnull readnone align 1 captures(none) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !590, !nonnull !337, !align !595
  %i.c = load ptr, ptr %2, align 8, !tbaa !596, !nonnull !337, !align !595 ; 4 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(128) ptr @_ZN6duckdb6vectorINS_14BaseStatisticsELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 0)
  %i.e = tail call noundef zeroext i1 @_ZN6duckdb11StringStats17CanContainUnicodeERKNS_14BaseStatisticsE(ptr noundef nonnull align 8 dereferenceable(128) %i.d)
  br i1 %i.e, label %_ZNSt14_Function_baseD2Ev.exit, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i
end_hunk_0
begin_hunk_1
_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 16, i1 false), !tbaa.struct !294
  store ptr @_ZN6duckdb14ScalarFunction14BinaryFunctionINS_8string_tES2_lNS_18InstrAsciiOperatorEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 344 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !13
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !13   ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation, ptr %i.h, align 8, !tbaa !13
  store <2 x ptr> %i.j, ptr %i.g, align 8, !tbaa !13
  store ptr @_ZNSt17_Function_handlerIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEPS7_E9_M_invokeERKSt9_Any_dataS2_S4_S6_, ptr %i.i, align 8, !tbaa !13
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZN6duckdb14ScalarFunction19SetFunctionCallbackESt8functionIFvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEE.exit, label %bb.b
end_hunk_1
begin_hunk_2
; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(360) ptr @_ZN6duckdb14ScalarFunctionaSEOS0_(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(360) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(208) ptr @_ZN6duckdb14SimpleFunctionaSERKS0_(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(236) %1) ; 0 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit, label %bb.b
end_hunk_2
begin_hunk_3
  store i32 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !13
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !17
end_hunk_3
begin_hunk_4

bb.l:                                             ; preds = %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.aq, i64 16, i1 false), !tbaa.struct !294
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false)
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i: ; preds = %bb.l, %_ZN6duckdb18BaseScalarFunctionaSERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.am, i64 16, i1 false), !tbaa.struct !294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !294
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !13
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !13 ; 2 uses
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !13
  store <2 x ptr> %i.ao, ptr %i.as, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEaSEOS8_.exit, label %bb.m
end_hunk_4
begin_hunk_5
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2725, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_5
begin_hunk_6
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !2730
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_6
begin_hunk_7
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2725, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false)
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 10
end_hunk_7
begin_hunk_8
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.11224.i.i, ptr %i.ai, align 8, !tbaa !2730
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(64) %5)
end_hunk_8
begin_hunk_9
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !2725, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.av, i64 20, i1 false)
  %i.aw = zext i32 %i.aq to i64
  %i.ax = add nuw nsw i64 %i.au, %i.aw            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_9
begin_hunk_10
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.br, align 8, !tbaa !2730
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_10
begin_hunk_11
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !2725, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i64 20, i1 false)
  %i.cw = zext i32 %.119 to i64
  %i.cx = add nuw nsw i64 %i.cu, %i.cw            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_11
begin_hunk_12
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.dq, align 8, !tbaa !2736
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_12
begin_hunk_13
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !2725, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false)
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_13
begin_hunk_14
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !2750
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_14
begin_hunk_15
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !2725, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.x, i64 20, i1 false)
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_15
begin_hunk_16
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !2756
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb9hugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_16
begin_hunk_17
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !2826, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %i.l, i64 20, i1 false)
  %i.m = zext i32 %i.f to i64
  %i.n = add nuw nsw i64 %i.j, %i.m               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 10
end_hunk_17
begin_hunk_18
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 %.11224.i.i, ptr %i.ah, align 8, !tbaa !2831
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(17) %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
end_hunk_18
begin_hunk_19
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !2826, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 4 dereferenceable(20) %i.m, i64 20, i1 false)
  %i.n = zext i32 %i.g to i64
  %i.o = add nuw nsw i64 %i.k, %i.n               ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 10
end_hunk_19
begin_hunk_20
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 %.11224.i.i, ptr %i.ai, align 8, !tbaa !2831
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i32 %i.g, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(17) %6, ptr noundef nonnull align 8 dereferenceable(64) %5)
end_hunk_20
begin_hunk_21
  %i.av = load ptr, ptr %i.al, align 8, !tbaa !2826, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %i.av, i64 20, i1 false)
  %i.aw = zext i32 %i.aq to i64
  %i.ax = add nuw nsw i64 %i.au, %i.aw            ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 10
end_hunk_21
begin_hunk_22
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.11224.i.i37, ptr %i.br, align 8, !tbaa !2831
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.aq, ptr %.sroa.4.0..sroa_idx.i40, align 8, !tbaa !3
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10dec_writerEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(64) %3)
end_hunk_22
begin_hunk_23
  %i.cv = load ptr, ptr %i.al, align 8, !tbaa !2826, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.cv, i64 20, i1 false)
  %i.cw = zext i32 %.119 to i64
  %i.cx = add nuw nsw i64 %i.cu, %i.cw            ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_23
begin_hunk_24
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.dq, align 8, !tbaa !2837
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false)
  %.sroa.462.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %.119, ptr %.sroa.462.0..sroa_idx, align 8, !tbaa !3
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
end_hunk_24
begin_hunk_25
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !2826, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.aa, i64 20, i1 false)
  %i.ab = zext nneg i32 %i.t to i64
  %i.ac = add nuw nsw i64 %i.z, %i.ab             ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_25
begin_hunk_26
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.aw, align 8, !tbaa !2849
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.t, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi1EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_26
begin_hunk_27
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !2826, !nonnull !337, !align !2197
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %i.x, i64 20, i1 false)
  %i.y = zext nneg i32 %i.c to i64
  %i.z = add nuw nsw i64 %i.w, %i.y               ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 10
end_hunk_27
begin_hunk_28
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 %.11224.i, ptr %i.at, align 8, !tbaa !2854
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !3
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_17padded_int_writerINS5_10int_writerIN6duckdb10uhugeint_tENS0_18basic_format_specsIcEEE10bin_writerILi3EEEEEEEvRKSC_OT_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
end_hunk_28
