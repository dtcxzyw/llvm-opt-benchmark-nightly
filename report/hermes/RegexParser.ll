begin_hunk_0
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex15AlternationNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::function", align 8     ; 6 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %3 = alloca %"class.std::function", align 8     ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 9 uses
end_hunk_0
begin_hunk_1
  store i32 %i.au, ptr %.sroa.413.sroa.4.0..sroa.413.0..sroa_idx.sroa_idx, align 16, !tbaa !3
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  store ptr %1, ptr %.sroa.514.0..sroa_idx, align 8, !tbaa !230
  store ptr %i.bp, ptr %3, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.br = load <2 x ptr>, ptr %i.c, align 8, !tbaa !232
  %i.bs = load ptr, ptr %i.c, align 8, !tbaa !232 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.c, align 8, !tbaa !232
  store <2 x ptr> %i.br, ptr %i.bn, align 8, !tbaa !232
  store ptr @_ZNSt17_Function_handlerIFbvEZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.bq, align 8, !tbaa !232
  %.not.i.i10 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i10, label %_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.k
end_hunk_1
begin_hunk_2
bb.l:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !233
  store ptr %0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.by = load <2 x ptr>, ptr %i.c, align 8, !tbaa !232
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !232 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFbvEZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.c, align 8, !tbaa !232
  store <2 x ptr> %i.by, ptr %i.bw, align 8, !tbaa !232
  store ptr @_ZNSt17_Function_handlerIFbvEZN6hermes5regex15AlternationNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.bx, align 8, !tbaa !232
  %.not.i.i11 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i11, label %_ZNSt8functionIFbvEEaSIZN6hermes5regex15AlternationNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.m
end_hunk_2
begin_hunk_3
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex14LookaroundNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %2 = alloca %"class.std::function.114", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
end_hunk_3
begin_hunk_4
  store i32 %i.x, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !230
  store ptr %i.an, ptr %2, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load <2 x ptr>, ptr %i.c, align 8, !tbaa !232
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !232 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.c, align 8, !tbaa !232
  store <2 x ptr> %i.ap, ptr %i.al, align 8, !tbaa !232
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex14LookaroundNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.ao, align 8, !tbaa !232
  %.not.i.i14 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i14, label %_ZNSt8functionIFvvEEaSIZN6hermes5regex14LookaroundNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.h
end_hunk_4
begin_hunk_5
; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex8LoopNode8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.i.i.i50 = alloca { i64, i64 }, align 8 ; 4 uses
  %2 = alloca %"class.std::function.114", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %.sroa.0.i.i.i31 = alloca { i64, i64 }, align 8 ; 4 uses
  %3 = alloca %"class.std::function.114", align 8 ; 9 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %.sroa.0.i.i.i = alloca { i64, i64 }, align 8   ; 4 uses
  %4 = alloca %"class.std::function.114", align 8 ; 9 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 12 uses
end_hunk_5
begin_hunk_6
  store i32 %i.ao, ptr %.sroa.0.sroa.485.0..sroa_idx, align 8, !tbaa !3
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store ptr %1, ptr %.sroa.476.0..sroa_idx, align 16, !tbaa !230
  store ptr %i.bb, ptr %4, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bd = load <2 x ptr>, ptr %i.e, align 8, !tbaa !232
  %i.be = load ptr, ptr %i.e, align 8, !tbaa !232 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.e, align 8, !tbaa !232
  store <2 x ptr> %i.bd, ptr %i.az, align 8, !tbaa !232
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE_E9_M_invokeERKSt9_Any_data, ptr %i.bc, align 8, !tbaa !232
  %.not.i.i25 = icmp eq ptr %i.be, null
  br i1 %.not.i.i25, label %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.h
end_hunk_6
begin_hunk_7
  store i32 %i.n, ptr %.sroa.468.0..sroa_idx, align 16, !tbaa !3
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store ptr %1, ptr %.sroa.570.0..sroa_idx, align 8, !tbaa !230
  store ptr %i.cr, ptr %3, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i31)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i31, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i31, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i31)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ct = load <2 x ptr>, ptr %i.e, align 8, !tbaa !232
  %i.cu = load ptr, ptr %i.e, align 8, !tbaa !232 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.e, align 8, !tbaa !232
  store <2 x ptr> %i.ct, ptr %i.cp, align 8, !tbaa !232
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE0_E9_M_invokeERKSt9_Any_data, ptr %i.cs, align 8, !tbaa !232
  %.not.i.i32 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i32, label %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE0_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.o
end_hunk_7
begin_hunk_8
  store i32 %i.n, ptr %.sroa.4.0..sroa_idx, align 16, !tbaa !3
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  store ptr %1, ptr %.sroa.554.0..sroa_idx, align 8, !tbaa !230
  store ptr %i.ec, ptr %2, align 8, !tbaa !232
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i50)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i50, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i50, i64 16, i1 false), !tbaa.struct !233
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i50)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ee = load <2 x ptr>, ptr %i.e, align 8, !tbaa !232
  %i.ef = load ptr, ptr %i.e, align 8, !tbaa !232 ; 2 uses
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE1_E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation, ptr %i.e, align 8, !tbaa !232
  store <2 x ptr> %i.ee, ptr %i.ea, align 8, !tbaa !232
  store ptr @_ZNSt17_Function_handlerIFvvEZN6hermes5regex8LoopNode8emitStepERNS2_19RegexBytecodeStreamEEUlvE1_E9_M_invokeERKSt9_Any_data, ptr %i.ed, align 8, !tbaa !232
  %.not.i.i51 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i51, label %_ZNSt8functionIFvvEEaSIZN6hermes5regex8LoopNode8emitStepERNS4_19RegexBytecodeStreamEEUlvE1_EENSt9enable_ifIXsr9_CallableIT_EE5valueERS1_E4typeEOSA_.exit, label %bb.t
end_hunk_8
