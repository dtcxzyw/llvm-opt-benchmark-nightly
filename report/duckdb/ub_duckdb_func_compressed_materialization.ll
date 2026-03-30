begin_hunk_0
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121CMIntegralDeserializeIXadL_ZNS0_38GetIntegralCompressFunctionInputSwitchERKNS_11LogicalTypeES4_EEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS6_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %4 = alloca %"class.duckdb::vector", align 16   ; 10 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %6 = alloca %"class.std::function", align 8     ; 3 uses
end_hunk_0
begin_hunk_1
bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !90
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !23
end_hunk_1
begin_hunk_2
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !104
  %.sroa.0.0.copyload.i.i.pre.i.i = load <2 x i64>, ptr %3, align 16, !tbaa !54
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.copyload.i.i.i.i = phi <2 x i64> [ zeroinitializer, %bb.h ], [ %.sroa.0.0.copyload.i.i.pre.i.i, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !104
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i, ptr %i.ak, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !90
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.aq, ptr %i.ao, align 16, !tbaa !90
  store <2 x ptr> %i.am, ptr %i.ap, align 8, !tbaa !90
  %.not.i.i.i7 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i7, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j
end_hunk_2
begin_hunk_3
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_121CMIntegralDeserializeIXadL_ZNS0_40GetIntegralDecompressFunctionInputSwitchERKNS_11LogicalTypeES4_EEEENS_10unique_ptrINS_12FunctionDataESt14default_deleteIS6_ELb1EEERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %4 = alloca %"class.duckdb::vector", align 16   ; 10 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %6 = alloca %"class.std::function", align 8     ; 3 uses
end_hunk_3
begin_hunk_4
bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.am = load <2 x ptr>, ptr %i.al, align 8, !tbaa !90
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !23
end_hunk_4
begin_hunk_5
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !104
  %.sroa.0.0.copyload.i.i.pre.i.i = load <2 x i64>, ptr %3, align 16, !tbaa !54
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.i, %bb.h
  %.sroa.0.0.copyload.i.i.i.i = phi <2 x i64> [ zeroinitializer, %bb.h ], [ %.sroa.0.0.copyload.i.i.pre.i.i, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ak, i64 16, i1 false), !tbaa.struct !104
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i, ptr %i.ak, align 8, !tbaa !54
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !90
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.aq, ptr %i.ao, align 16, !tbaa !90
  store <2 x ptr> %i.am, ptr %i.ap, align 8, !tbaa !90
  %.not.i.i.i7 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i7, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.j
end_hunk_5
begin_hunk_6
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_127CMStringCompressDeserializeERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 captures(none) dereferenceable(360) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %4 = alloca %"class.duckdb::vector", align 16   ; 10 uses
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %6 = alloca %"class.std::function", align 8     ; 3 uses
end_hunk_6
begin_hunk_7
bb.g:                                             ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !90
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !23
end_hunk_7
begin_hunk_8
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 16, i1 false), !tbaa.struct !104
  %.sroa.0.0.copyload.i.i.pre.i.i = load <2 x i64>, ptr %3, align 16, !tbaa !54
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.h, %bb.g
  %.sroa.0.0.copyload.i.i.i.i = phi <2 x i64> [ zeroinitializer, %bb.g ], [ %.sroa.0.0.copyload.i.i.pre.i.i, %bb.h ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.aj, i64 16, i1 false), !tbaa.struct !104
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i, ptr %i.aj, align 8, !tbaa !54
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ap = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !90
  %i.aq = load ptr, ptr %i.ao, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ap, ptr %i.an, align 16, !tbaa !90
  store <2 x ptr> %i.al, ptr %i.ao, align 8, !tbaa !90
  %.not.i.i.i5 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i5, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.i
end_hunk_8
begin_hunk_9
; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_129CMStringDecompressDeserializeERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr noundef nonnull align 8 dereferenceable(360) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::function", align 16    ; 9 uses
  %4 = alloca %"class.duckdb::vector", align 16   ; 10 uses
  %5 = alloca %"class.std::function", align 8     ; 3 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
end_hunk_9
begin_hunk_10
  call fastcc void @_ZN6duckdb12_GLOBAL__N_133GetStringDecompressFunctionSwitchERKNS_11LogicalTypeE(ptr dead_on_unwind noalias writable align 8 %5, i8 %.val)
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 240 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 24, i1 false)
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !90
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !23
end_hunk_10
begin_hunk_11
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 16, i1 false), !tbaa.struct !104
  %.sroa.0.0.copyload.i.i.pre.i.i = load <2 x i64>, ptr %3, align 16, !tbaa !54
  br label %_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i

_ZNSt8functionIFvRN6duckdb9DataChunkERNS0_15ExpressionStateERNS0_6VectorEEEC2EOS8_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %.sroa.0.0.copyload.i.i.i.i = phi <2 x i64> [ zeroinitializer, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ], [ %.sroa.0.0.copyload.i.i.pre.i.i, %bb.e ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 16, i1 false), !tbaa.struct !104
  store <2 x i64> %.sroa.0.0.copyload.i.i.i.i, ptr %i.w, align 8, !tbaa !54
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 3 uses
  %i.ac = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !90
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !90 ; 2 uses
  store <2 x ptr> %i.ac, ptr %i.aa, align 16, !tbaa !90
  store <2 x ptr> %i.y, ptr %i.ab, align 8, !tbaa !90
  %.not.i.i.i6 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i6, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.f
end_hunk_11
