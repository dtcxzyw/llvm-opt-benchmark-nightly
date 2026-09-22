Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/engine?download=true
inline.NumInlined: 11004
inline.NumDeleted: 2646
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN8WasmEdge8Executor8Executor14runStoreLaneOpIjEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE:bb.a
  %.sroa.0.0.copyload.i15 = load i128, ptr %i.k, align 16, !tbaa !93
  store ptr %i.k, ptr %i.e, align 8, !tbaa !99
  %.sroa.016.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i15 to i64 ; 2 uses
  %.sroa.016.sroa.5.0.insert.shift = and i64 %.sroa.016.sroa.0.0.extract.trunc, -4294967296
  %i.l = and i64 %.sroa.016.sroa.0.0.extract.trunc, 4294967295
  %.sroa.016.sroa.0.0.insert.insert = select i1 %i.j, i64 0, i64 %.sroa.016.sroa.5.0.insert.shift
  %.0.i = or disjoint i64 %.sroa.016.sroa.0.0.insert.insert, %i.l ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK8WasmEdge8Executor8Executor19checkOffsetOverflowERKNS_7Runtime8Instance14MemoryInstanceERKNS_3AST11InstructionEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %5, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4, i64 noundef %.0.i, i64 noundef 4) #25
  %i.m = load i8, ptr %5, align 4, !tbaa !92, !range !71, !noundef !72
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !93
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.p, ptr %i.q, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93
  %i.t = add i64 %i.s, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN8WasmEdge7Runtime8Instance14MemoryInstance10storeValueIKjLj4EEENSt9enable_ifIX16IsWasmNativeNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKS6_m(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %6, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef %i.t) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %4, ptr %7, align 8, !tbaa !21
  call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  call void @llvm.experimental.noalias.scope.decl(metadata !1748)
  %i.u = load i8, ptr %6, align 4, !tbaa !92, !range !71, !noalias !1749, !noundef !72
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  store i64 0, ptr %0, align 4, !alias.scope !1749
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpIjEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit

bb.d:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_8Executor8Executor14runStoreLaneOpIjEEN5cxx208expectedIvS1_EERNS0_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS0_3AST11InstructionEEUlT_E_JS1_EESI_St14__invoke_otherOT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::ErrCode") align 4 %i.x, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpIjEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit

_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpIjEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %.sink.i.i, ptr %0, align 4, !tbaa !92, !alias.scope !1749
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpIjEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor14runStoreLaneOpImEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7Runtime12StackManagerERNS7_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %6 = alloca %"class.cxx20::expected", align 4   ; 5 uses
  %7 = alloca %class.anon.289, align 8            ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.c = load i8, ptr %i.b, align 8, !tbaa !138
  %i.d = zext i8 %i.c to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !125  ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i19 = load <2 x i64>, ptr %i.g, align 16, !tbaa !93
  store ptr %i.g, ptr %i.e, align 8, !tbaa !99
  %i.h = extractelement <2 x i64> %.sroa.0.0.copyload.i19, i32 %i.d
  store i64 %i.h, ptr %i.a, align 8, !tbaa !94
  %i.i = load i8, ptr %3, align 8, !tbaa !158
  %i.j = icmp ult i8 %i.i, 4
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i15 = load i128, ptr %i.k, align 16, !tbaa !93
  store ptr %i.k, ptr %i.e, align 8, !tbaa !99
  %.sroa.016.sroa.0.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i15 to i64 ; 2 uses
  %.sroa.016.sroa.5.0.insert.shift = and i64 %.sroa.016.sroa.0.0.extract.trunc, -4294967296
  %i.l = and i64 %.sroa.016.sroa.0.0.extract.trunc, 4294967295
  %.sroa.016.sroa.0.0.insert.insert = select i1 %i.j, i64 0, i64 %.sroa.016.sroa.5.0.insert.shift
  %.0.i = or disjoint i64 %.sroa.016.sroa.0.0.insert.insert, %i.l ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @_ZNK8WasmEdge8Executor8Executor19checkOffsetOverflowERKNS_7Runtime8Instance14MemoryInstanceERKNS_3AST11InstructionEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %5, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4, i64 noundef %.0.i, i64 noundef 8) #25
  %i.m = load i8, ptr %5, align 4, !tbaa !92, !range !71, !noundef !72
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !93
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.p, ptr %i.q, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !93
  %i.t = add i64 %i.s, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN8WasmEdge7Runtime8Instance14MemoryInstance10storeValueIKmLj8EEENSt9enable_ifIX16IsWasmNativeNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERKS6_m(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %6, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.t) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr %4, ptr %7, align 8, !tbaa !21
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  %i.u = load i8, ptr %6, align 4, !tbaa !92, !range !71, !noalias !1756, !noundef !72
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  store i64 0, ptr %0, align 4, !alias.scope !1756
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpImEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit

bb.d:                                             ; preds = %.critedge
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @_ZSt13__invoke_implIN8WasmEdge7ErrCodeEZNS0_8Executor8Executor14runStoreLaneOpImEEN5cxx208expectedIvS1_EERNS0_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS0_3AST11InstructionEEUlT_E_JS1_EESI_St14__invoke_otherOT0_DpOT1_(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::ErrCode") align 4 %i.x, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.w)
  br label %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpImEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit

_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpImEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit: ; preds = %bb.c, %bb.d
  %.sink.i.i = phi i8 [ 1, %bb.c ], [ 0, %bb.d ]
  store i8 %.sink.i.i, ptr %0, align 4, !tbaa !92, !alias.scope !1756
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %_ZNO5cxx208expectedIvN8WasmEdge7ErrCodeEE9map_errorIZNS1_8Executor8Executor14runStoreLaneOpImEES3_RNS1_7Runtime12StackManagerERNS8_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlT_E_EEDaOSI_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor18runVectorAllTrueOpIhEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load <16 x i8>, ptr %2, align 16, !tbaa !93
  %.fr = freeze <16 x i8> %i.a
  %i.b = icmp eq <16 x i8> %.fr, zeroinitializer
  %i.c = bitcast <16 x i1> %i.b to i16
  %i.d = icmp eq i16 %i.c, 0
  %i.e = zext i1 %i.d to i32
  store i32 %i.e, ptr %2, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor18runVectorBitMaskOpIhEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load <16 x i8>, ptr %2, align 16, !tbaa !93
  %isneg = icmp slt <16 x i8> %i.a, zeroinitializer
  %i.b = select <16 x i1> %isneg, <16 x i16> <i16 1, i16 2, i16 4, i16 8, i16 16, i16 32, i16 64, i16 128, i16 256, i16 512, i16 1024, i16 2048, i16 4096, i16 8192, i16 16384, i16 -32768>, <16 x i16> zeroinitializer
  %i.c = tail call i16 @llvm.vector.reduce.or.v16i16(<16 x i16> %i.b)
  %i.d = zext i16 %i.c to i32
  store i32 %i.d, ptr %2, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor18runVectorAllTrueOpItEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load <8 x i16>, ptr %2, align 16, !tbaa !93
  %.fr = freeze <8 x i16> %i.a
  %i.b = icmp eq <8 x i16> %.fr, zeroinitializer
  %i.c = bitcast <8 x i1> %i.b to i8
  %i.d = icmp eq i8 %i.c, 0
  %i.e = zext i1 %i.d to i32
  store i32 %i.e, ptr %2, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor18runVectorBitMaskOpItEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load <8 x i16>, ptr %2, align 16, !tbaa !93
  %isneg = icmp slt <8 x i16> %i.a, zeroinitializer
  %i.b = select <8 x i1> %isneg, <8 x i8> <i8 1, i8 2, i8 4, i8 8, i8 16, i8 32, i8 64, i8 -128>, <8 x i8> zeroinitializer
  %i.c = tail call i8 @llvm.vector.reduce.or.v8i8(<8 x i8> %i.b)
  %i.d = zext i8 %i.c to i32
  store i32 %i.d, ptr %2, align 16, !tbaa !98
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor19runVectorTruncSatOpIfiEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 16, !tbaa !93
  %i.b = tail call <4 x float> @llvm.trunc.v4f32(<4 x float> %i.a) ; 4 uses
  %i.c = fptosi <4 x float> %i.b to <4 x i32>
  %i.d = fcmp ord <4 x float> %i.b, zeroinitializer
  %i.e = fcmp ugt <4 x float> %i.b, splat (float f0xCF000000)
  %i.f = select <4 x i1> %i.d, <4 x i32> %i.c, <4 x i32> zeroinitializer
  %i.g = select <4 x i1> %i.e, <4 x i32> %i.f, <4 x i32> splat (i32 -2147483648)
  %i.h = fcmp ult <4 x float> %i.b, splat (float f0x4F000000)
  %i.i = select <4 x i1> %i.h, <4 x i32> %i.g, <4 x i32> splat (i32 2147483647)
  store <4 x i32> %i.i, ptr %2, align 16, !tbaa !93
  store i64 1, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK8WasmEdge8Executor8Executor19runVectorTruncSatOpIfjEEN5cxx208expectedIvNS_7ErrCodeEEERNS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 16 dereferenceable(16) %2) local_unnamed_addr #18 comdat align 2 {
bb.a:
  %i.a = load <4 x float>, ptr %2, align 16, !tbaa !93
  %i.b = tail call <4 x float> @llvm.trunc.v4f32(<4 x float> %i.a) ; 3 uses
  %i.c = fcmp ogt <4 x float> %i.b, zeroinitializer
  %i.d = select <4 x i1> %i.c, <4 x float> %i.b, <4 x float> zeroinitializer
  %i.e = fptoui <4 x float> %i.d to <4 x i32>
  %i.f = fcmp oge <4 x float> %i.b, splat (float f0x4F800000)
  %i.g = select <4 x i1> %i.f, <4 x i32> splat (i32 -1), <4 x i32> %i.e
  store <4 x i32> %i.g, ptr %2, align 16, !tbaa !93
  store i64 1, ptr %0, align 4
  ret void
}

declare void @_ZN8WasmEdge8Executor8Executor16runMemoryFenceOpEv(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328)) local_unnamed_addr #3

declare void @_ZN8WasmEdge8Executor8Executor17runAtomicNotifyOpERNS_7Runtime12StackManagerERNS2_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 16 dereferenceable(26)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor15runAtomicWaitOpIiEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.WasmEdge::ErrCode", align 4 ; 4 uses
  %6 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"struct.WasmEdge::ErrInfo::InfoInstruction", align 8 ; 11 uses
  %10 = alloca %"class.cxx20::expected.291", align 8 ; 3 uses
  %11 = alloca %"class.cxx20::expected.291", align 8 ; 5 uses
  %12 = alloca %class.anon.305, align 8           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !125  ; 3 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -16 ; 2 uses
  %.sroa.0.0.copyload.i = load i128, ptr %i.d, align 16, !tbaa !93
  store ptr %i.d, ptr %i.b, align 8, !tbaa !99
  %.sroa.047.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i to i64
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -32 ; 2 uses
  %.sroa.0.0.copyload.i21 = load i128, ptr %i.e, align 16, !tbaa !93
  store ptr %i.e, ptr %i.b, align 8, !tbaa !99
  %.sroa.046.0.extract.trunc = trunc i128 %.sroa.0.0.copyload.i21 to i32
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -48 ; 3 uses
  %i.g = load i8, ptr %3, align 8, !tbaa !158
  %i.h = icmp ult i8 %i.g, 4                      ; 2 uses
  %i.i = load i32, ptr %i.f, align 16
  %i.j = zext i32 %i.i to i64
  %i.k = load i64, ptr %i.f, align 16
  %.0.i = select i1 %i.h, i64 %i.j, i64 %i.k      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @_ZNK8WasmEdge8Executor8Executor19checkOffsetOverflowERKNS_7Runtime8Instance14MemoryInstanceERKNS_3AST11InstructionEmm(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %8, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4, i64 noundef %.0.i, i64 noundef 4) #25
  %i.l = load i8, ptr %8, align 4, !tbaa !92, !range !71, !noundef !72
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !93
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.o, ptr %i.p, align 4, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.i

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !93
  %i.s = add i64 %i.r, %.0.i                      ; 2 uses
  %i.t = and i64 %i.s, 3
  %.not = icmp eq i64 %i.t, 0
  br i1 %.not, label %bb.f, label %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit

_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit: ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 1040, ptr %i.a, align 4, !tbaa !130
  %i.u = call noundef ptr @_ZN6spdlog18default_logger_rawEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrCode5ValueEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.u, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.w = load i32, ptr %i.v, align 4, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = load i32, ptr %i.x, align 16, !tbaa !73
  %i.z = zext i32 %i.y to i64
  store i32 %i.w, ptr %9, align 8, !tbaa !85
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !86
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %9, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(49) %i.ab, i8 0, i64 49, i1 false)
  %i.af = invoke noundef ptr @_ZN6spdlog18default_logger_rawEv()
          to label %.noexc unwind label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit27

.noexc:                                           ; preds = %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke void @_ZN6spdlog6logger4log_IJRKN8WasmEdge7ErrInfo15InfoInstructionEEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.af, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %6, i32 noundef 4, ptr nonnull @.str.16, i64 2, ptr noundef nonnull align 8 dereferenceable(65) %9)
          to label %bb.c unwind label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit27

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !87 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !88
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = sub i64 %i.ai, %i.aj
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ak) #26
  br label %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i: ; preds = %bb.d, %bb.c
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !89 ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i
  %i.am = load ptr, ptr %i.ac, align 8, !tbaa !90
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ap) #26
  br label %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit: ; preds = %_ZNSt6vectorIN8WasmEdge7ValTypeESaIS1_EED2Ev.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  store i8 0, ptr %0, align 4, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 1040, ptr %i.aq, align 4, !tbaa !93
  br label %bb.i

_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit27: ; preds = %.noexc, %_ZN8WasmEdge7ErrInfo15InfoInstructionC2ENS_6OpCodeEmRKSt6vectorINS_7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS_10RefVariantEEEESaISG_EERKS3_INS_7ValTypeESaISL_EEb.exit
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN8WasmEdge7ErrInfo15InfoInstructionD2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %i.ar

bb.f:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @_ZN8WasmEdge8Executor8Executor10atomicWaitIiEEN5cxx208expectedImNS_7ErrCodeEEERNS_7Runtime8Instance14MemoryInstanceEmNS_11EndianValueIT_EEl(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.291") align 8 %11, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(136) %3, i64 noundef %i.s, i32 %.sroa.046.0.extract.trunc, i64 noundef %.sroa.047.0.extract.trunc) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr %4, ptr %12, align 8, !tbaa !21
  %i.as = load i8, ptr %11, align 8, !tbaa !160, !range !71, !noalias !1771, !noundef !72
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.av = load i64, ptr %i.au, align 8, !tbaa !94, !noalias !1771 ; 2 uses
  %.sroa.0.sroa.3.0.extract.shift.i.i.i.i.i.i.i = and i64 %i.av, -4294967296
  %.sroa.0.sroa.3.0.insert.ext.i.i.i.i.i.i.i = select i1 %i.h, i64 0, i64 %.sroa.0.sroa.3.0.extract.shift.i.i.i.i.i.i.i
  %.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i.i.i = and i64 %i.av, 4294967295
  %.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i.i.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.ext.i.i.i.i.i.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i.i.i
  %.sroa.0.0.insert.ext.i.i.i.i.i.i.i = zext i64 %.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i.i.i to i128
  store i128 %.sroa.0.0.insert.ext.i.i.i.i.i.i.i, ptr %i.f, align 16, !tbaa !93, !noalias !1772
  store i64 0, ptr %0, align 4, !alias.scope !1772
  br label %_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE3mapIZNS1_8Executor8Executor15runAtomicWaitOpIiEENSt9enable_ifIX10IsWasmNumVIT_EENS0_IvS2_EEE4typeERNS1_7Runtime12StackManagerERNSD_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E0_EEDaOS9_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !1773
  %i.aw = load i32, ptr %i.au, align 8, !tbaa !93, !noalias !1774
  store i32 %i.aw, ptr %5, align 4, !tbaa !93, !noalias !1774
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  call void @_ZZN8WasmEdge8Executor8Executor15runAtomicWaitOpIiEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionEENKUlS4_E_clIS7_EEDaS4_(ptr dead_on_unwind nonnull writable sret(%"class.WasmEdge::ErrCode") align 4 %i.ax, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr nofreeobj noundef nonnull align 4 dead_on_return dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !1773
  call void @llvm.experimental.noalias.scope.decl(metadata !1775)
  call void @llvm.experimental.noalias.scope.decl(metadata !1776)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = load i32, ptr %i.ax, align 8, !tbaa !93, !noalias !1772
  store i32 %i.az, ptr %i.ay, align 4, !tbaa !93, !alias.scope !1772
  br label %_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE3mapIZNS1_8Executor8Executor15runAtomicWaitOpIiEENSt9enable_ifIX10IsWasmNumVIT_EENS0_IvS2_EEE4typeERNS1_7Runtime12StackManagerERNSD_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E0_EEDaOS9_.exit

_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE3mapIZNS1_8Executor8Executor15runAtomicWaitOpIiEENSt9enable_ifIX10IsWasmNumVIT_EENS0_IvS2_EEE4typeERNS1_7Runtime12StackManagerERNSD_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E0_EEDaOS9_.exit: ; preds = %bb.g, %bb.h
  %.sink.i.i28 = phi i8 [ 1, %bb.g ], [ 0, %bb.h ]
  store i8 %.sink.i.i28, ptr %0, align 4, !tbaa !92, !alias.scope !1772
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %_ZNO5cxx208expectedImN8WasmEdge7ErrCodeEE3mapIZNS1_8Executor8Executor15runAtomicWaitOpIiEENSt9enable_ifIX10IsWasmNumVIT_EENS0_IvS2_EEE4typeERNS1_7Runtime12StackManagerERNSD_8Instance14MemoryInstanceERKNS1_3AST11InstructionEEUlS9_E0_EEDaOS9_.exit, %_ZNSt6vectorIN8WasmEdge7VariantIJjimlfdonDv2_mDv2_lDv4_jDv4_iDv8_tDv8_sDv16_hDv16_aDv4_fDv2_dNS0_10RefVariantEEEESaISD_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN8WasmEdge8Executor8Executor15runAtomicWaitOpIlEENSt9enable_ifIX10IsWasmNumVIT_EEN5cxx208expectedIvNS_7ErrCodeEEEE4typeERNS_7Runtime12StackManagerERNSB_8Instance14MemoryInstanceERKNS_3AST11InstructionE(ptr dead_on_unwind noalias writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(328) %1, ptr noundef nonnull align 8 dereferenceable(48) %2, ptr noundef nonnull align 8 dereferenceable(136) %3, ptr noundef nonnull align 16 dereferenceable(26) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail5valueINS0_7contextEE17format_custom_argIN8WasmEdge9WasmPhaseENS0_9formatterIS7_cvEEEEvPvRNS0_26basic_format_parse_contextIcEERS3_:bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !170    ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !171  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = icmp samesign eq i64 %i.i, 0
  br i1 %i.k, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i8, ptr %i.g, align 1, !tbaa !93
  %i.m = icmp eq i8 %i.l, 125
  br i1 %i.m, label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call noundef ptr @_ZN3fmt3v116detail18parse_format_specsIcEEPKT_S5_S5_RNS1_20dynamic_format_specsIS3_EERNS0_26basic_format_parse_contextIS3_EENS1_4typeE(ptr noundef nonnull %i.g, ptr noundef nonnull %i.j, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(20) %1, i32 noundef 13)
  %.pre = load ptr, ptr %1, align 8, !tbaa !170
  %.pre6 = load i64, ptr %i.h, align 8, !tbaa !171
  br label %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit

_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.o = phi i64 [ %.pre6, %bb.c ], [ %i.i, %bb.b ], [ 0, %bb.a ]
  %i.p = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ] ; 2 uses
  %.0.i = phi ptr [ %i.n, %bb.c ], [ %i.g, %bb.b ], [ %i.g, %bb.a ]
  %i.q = ptrtoint ptr %.0.i to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.s
  store ptr %i.t, ptr %1, align 8, !tbaa !170
  %i.u = sub i64 %i.o, %i.s
  store i64 %i.u, ptr %i.h, align 8, !tbaa !171
  %i.v = load i8, ptr %0, align 1, !tbaa !180
  %i.w = zext i8 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr @_ZN8WasmEdgeL12WasmPhaseStrE, i64 %i.w ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.x, align 8, !tbaa !94
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !193
  %i.y = invoke ptr @_ZNK3fmt3v119formatterISt17basic_string_viewIcSt11char_traitsIcEEcvE6formatINS0_7contextEEEDTcldtfp0_3outEES5_RT_(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %_ZNK3fmt3v119formatterIN8WasmEdge9WasmPhaseEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS3_RT_.exit unwind label %bb.d ; 0 uses

bb.d:                                             ; preds = %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #29
  unreachable

_ZNK3fmt3v119formatterIN8WasmEdge9WasmPhaseEcvE6formatINS0_7contextEEEDTcldtfp0_3outEERKS3_RT_.exit: ; preds = %_ZN3fmt3v116detail16native_formatterINS0_17basic_string_viewIcEEcLNS1_4typeE13EE5parseINS0_26basic_format_parse_contextIcEEEEPKcRT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsE(ptr %0, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(16) %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  %4 = alloca %class.anon.210, align 8            ; 5 uses
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"struct.fmt::v11::detail::find_escape_result", align 8 ; 9 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %6 = alloca %class.anon.206, align 8            ; 6 uses
  %7 = alloca %class.anon.205, align 8            ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !167  ; 2 uses
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = icmp ugt i64 %2, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 %i.j, ptr %i.e, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  store i64 %2, ptr %i.f, align 8, !tbaa !94
  store ptr %1, ptr %6, align 8, !tbaa !1849
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %i.e, ptr %i.l, align 8, !tbaa !194
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.f, ptr %i.m, align 8, !tbaa !194
  call void @_ZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_(ptr %1, i64 %2, ptr noundef nonnull byval(%class.anon.206) align 8 %6)
  %i.n = load i64, ptr %i.f, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i64 [ %i.n, %bb.c ], [ %2, %bb.b ], [ %2, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i8, ptr %i.o, align 4, !tbaa !172
  %i.q = icmp eq i8 %i.p, 1                       ; 3 uses
  br i1 %i.q, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = ptrtoint ptr %i.r to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.sroa.019.0.i = phi i64 [ 1, %bb.e ], [ %i.ac, %bb.g ] ; 2 uses
  %.0.i = phi ptr [ %1, %bb.e ], [ %i.ab, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %i.r, ptr %5, align 8, !tbaa !196, !alias.scope !1850
  store ptr null, ptr %i.s, align 8, !tbaa !197, !alias.scope !1850
  store i32 0, ptr %i.t, align 8, !tbaa !198, !alias.scope !1850
  %i.v = ptrtoint ptr %.0.i to i64                ; 2 uses
  %i.w = sub i64 %i.u, %i.v
  call void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0.i, i64 %i.w, ptr nonnull align 8 %5)
  %i.x = load ptr, ptr %5, align 8, !tbaa !196    ; 2 uses
  %.not6.i.i = icmp eq ptr %.0.i, %i.x
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = sub i64 %.sroa.019.0.i, %i.v
  %i.aa = add i64 %i.z, %i.y
  %.sroa.04.0.lcssa.i.i = select i1 %.not6.i.i, i64 %.sroa.019.0.i, i64 %i.aa ; 2 uses
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !197 ; 3 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %.thread.i, label %bb.g

.thread.i:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %_ZN3fmt3v116detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = call i64 @_ZN3fmt3v116detail16write_escaped_cpINS1_17counting_iteratorEcEET_S4_RKNS1_18find_escape_resultIT0_EE(i64 %.sroa.04.0.lcssa.i.i, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.not12.i = icmp eq ptr %i.ab, %i.r
  br i1 %.not12.i, label %_ZN3fmt3v116detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit, label %bb.f, !llvm.loop !1841

_ZN3fmt3v116detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit: ; preds = %bb.g, %.thread.i
  %.sroa.019.127.i = phi i64 [ %.sroa.04.0.lcssa.i.i, %.thread.i ], [ %i.ac, %bb.g ]
  %i.ad = add i64 %.sroa.019.127.i, 1
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v116detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit, %bb.d
  %.1 = phi i64 [ %i.ad, %_ZN3fmt3v116detail20write_escaped_stringIcNS1_17counting_iteratorEEET0_S4_NS0_17basic_string_viewIT_EE.exit ], [ %.0, %bb.d ] ; 7 uses
  %i.ae = load i32, ptr %3, align 4, !tbaa !199
  %.not = icmp eq i32 %i.ae, 0                    ; 2 uses
  %brmerge = or i1 %i.q, %.not
  %.mux = select i1 %.not, i64 0, i64 %.1
  br i1 %brmerge, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i64 0, ptr %i.d, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.d, ptr %4, align 8, !tbaa !194
  %i.af = icmp ugt i64 %.1, 3
  br i1 %i.af, label %bb.j, label %.loopexit.i.i

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.1
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -3
  br label %bb.k

bb.k:                                             ; preds = %bb.l, %bb.j
  %.028.i.i = phi ptr [ %1, %bb.j ], [ %i.ai, %bb.l ] ; 4 uses
  %.not36.i.i = icmp ult ptr %.028.i.i, %i.ah
  br i1 %.not36.i.i, label %bb.l, label %.loopexit.i.i

bb.l:                                             ; preds = %bb.k
  %i.ai = call noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %.028.i.i, ptr noundef %.028.i.i) ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %bb.k, !llvm.loop !1842

.loopexit.i.i:                                    ; preds = %bb.k, %bb.i
  %.230.i.i = phi ptr [ %1, %bb.i ], [ %.028.i.i, %bb.k ] ; 8 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.1 ; 3 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %.230.i.i to i64           ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 8 uses
  %.not37.i.i = icmp eq ptr %i.aj, %.230.i.i
  br i1 %.not37.i.i, label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit, label %iter.check

iter.check:                                       ; preds = %.loopexit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.am, 8
  %i.an = sub i64 %i.al, %i.c
  %diff.check = icmp ugt i64 %i.an, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check45 = icmp ult i64 %i.am, 32
  br i1 %min.iters.check45, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.am, 24
  %n.vec = and i64 %i.am, -32                     ; 5 uses
  %i.ap = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.aq = getelementptr i8, ptr %.230.i.i, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep46 = getelementptr i8, ptr %.230.i.i, i64 %index ; 2 uses
  %i.ar = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep46, align 1, !tbaa !93
  %wide.load47 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !93
  %i.as = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !93
  store <16 x i8> %wide.load47, ptr %i.as, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !1843

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !202

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec49 = and i64 %i.am, -8                    ; 4 uses
  %i.au = getelementptr i8, ptr %i.b, i64 %n.vec49
  %i.av = getelementptr i8, ptr %.230.i.i, i64 %n.vec49
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index50 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next54, %vec.epilog.vector.body ] ; 3 uses
  %next.gep51 = getelementptr i8, ptr %i.b, i64 %index50
  %next.gep52 = getelementptr i8, ptr %.230.i.i, i64 %index50
  %wide.load53 = load <8 x i8>, ptr %next.gep52, align 1, !tbaa !93
  store <8 x i8> %wide.load53, ptr %next.gep51, align 1, !tbaa !93
  %index.next54 = add nuw i64 %index50, 8         ; 2 uses
  %i.aw = icmp eq i64 %index.next54, %n.vec49
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1844

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n55 = icmp eq i64 %i.am, %n.vec49
  br i1 %cmp.n55, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.i.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ap, %vec.epilog.iter.check ], [ %i.au, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.i.i.ph = phi ptr [ %.230.i.i, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.av, %vec.epilog.middle.block ] ; 3 uses
  %i.ax = add i64 %.1, %i.a                       ; 2 uses
  %.057.i.i.i.ph60 = ptrtoaddr ptr %.057.i.i.i.ph to i64 ; 2 uses
  %i.ay = sub i64 %i.ax, %.057.i.i.i.ph60
  %xtraiter = and i64 %i.ay, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.08.i.i.i.prol = phi ptr [ %i.bb, %.lr.ph.i.i.i.prol ], [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.prol = phi ptr [ %i.az, %.lr.ph.i.i.i.prol ], [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.az = getelementptr inbounds nuw i8, ptr %.057.i.i.i.prol, i64 1 ; 2 uses
  %i.ba = load i8, ptr %.057.i.i.i.prol, align 1, !tbaa !93
  %i.bb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 1 ; 2 uses
  store i8 %i.ba, ptr %.08.i.i.i.prol, align 1, !tbaa !93
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1845

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.08.i.i.i.unr = phi ptr [ %.08.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.i.prol ]
  %.057.i.i.i.unr = phi ptr [ %.057.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.az, %.lr.ph.i.i.i.prol ]
  %i.bc = sub i64 %.057.i.i.i.ph60, %i.ax
  %i.bd = icmp ugt i64 %i.bc, -8
  br i1 %i.bd, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i ], [ %.08.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i ], [ %.057.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 1
  %i.bf = load i8, ptr %.057.i.i.i, align 1, !tbaa !93
  %i.bg = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 1
  store i8 %i.bf, ptr %.08.i.i.i, align 1, !tbaa !93
  %i.bh = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 2
  %i.bi = load i8, ptr %i.be, align 1, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 2
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !93
  %i.bk = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 3
  %i.bl = load i8, ptr %i.bh, align 1, !tbaa !93
  %i.bm = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 3
  store i8 %i.bl, ptr %i.bj, align 1, !tbaa !93
  %i.bn = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 4
  %i.bo = load i8, ptr %i.bk, align 1, !tbaa !93
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 4
  store i8 %i.bo, ptr %i.bm, align 1, !tbaa !93
  %i.bq = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 5
  %i.br = load i8, ptr %i.bn, align 1, !tbaa !93
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 5
  store i8 %i.br, ptr %i.bp, align 1, !tbaa !93
  %i.bt = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 6
  %i.bu = load i8, ptr %i.bq, align 1, !tbaa !93
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 6
  store i8 %i.bu, ptr %i.bs, align 1, !tbaa !93
  %i.bw = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 7
  %i.bx = load i8, ptr %i.bt, align 1, !tbaa !93
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 7
  store i8 %i.bx, ptr %i.bv, align 1, !tbaa !93
  %i.bz = getelementptr inbounds nuw i8, ptr %.057.i.i.i, i64 8 ; 2 uses
  %i.ca = load i8, ptr %i.bw, align 1, !tbaa !93
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 8
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !93
  %.not.i.i.i.7 = icmp eq ptr %i.bz, %i.aj
  br i1 %.not.i.i.i.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i, label %.lr.ph.i.i.i, !llvm.loop !1846

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %i.cc = ptrtoint ptr %i.b to i64
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i: ; preds = %bb.m, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i
  %.331.i.i = phi ptr [ %i.ch, %bb.m ], [ %.230.i.i, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i ] ; 2 uses
  %.0.i.i = phi ptr [ %i.cd, %bb.m ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader.i.i ] ; 2 uses
  %i.cd = call noundef ptr @_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.0.i.i, ptr noundef %.331.i.i) ; 3 uses
  %.not38.not.not.i.i = icmp eq ptr %i.cd, null
  br i1 %.not38.not.not.i.i, label %.thread.sink.split.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i
  %i.ce = ptrtoint ptr %i.cd to i64               ; 2 uses
  %i.cf = ptrtoint ptr %.0.i.i to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = getelementptr inbounds i8, ptr %.331.i.i, i64 %i.cg
  %i.ci = sub i64 %i.ce, %i.cc
  %i.cj = icmp slt i64 %i.ci, %i.am
  br i1 %i.cj, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i, label %.thread.sink.split.i.i, !llvm.loop !1847

.thread.sink.split.i.i:                           ; preds = %bb.m, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit

_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit: ; preds = %bb.l, %.loopexit.i.i, %.thread.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ck = load i64, ptr %i.d, align 8, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit
  %.021 = phi i64 [ %.mux, %bb.h ], [ %i.ck, %_ZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEE.exit ]
  %i.cl = zext i1 %i.q to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store i8 %i.cl, ptr %7, align 8, !tbaa !205
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %1, ptr %i.cm, align 8, !tbaa !193
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !94
  %i.cn = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %1, ptr %i.cn, align 8, !tbaa !206
  %i.co = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %.1, ptr %i.co, align 8, !tbaa !207
  %i.cp = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5align4typeE1ENS0_14basic_appenderIcEEZNS1_5writeIcS6_EET0_S8_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS6_E_EET1_SG_SE_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %.1, i64 noundef %.021, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  ret ptr %i.cp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5align4typeE1ENS0_14basic_appenderIcEEZNS1_5writeIcS6_EET0_S8_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS6_E_EET1_SG_SE_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !199
  %i.b = zext i32 %i.a to i64
  %i.c = tail call i64 @llvm.usub.sat.i64(i64 %i.b, i64 %3) ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.e = load i16, ptr %i.d, align 1
  %i.f = and i16 %i.e, 15
  %i.g = zext nneg i16 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @.str.197, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !93
  %i.j = sext i8 %i.i to i64
  %i.k = and i64 %i.j, 4294967295
  %i.l = lshr i64 %i.c, %i.k                      ; 4 uses
  %i.m = sub nsw i64 %i.c, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 11 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.p = load i8, ptr %i.o, align 1, !tbaa !168
  %i.q = zext i8 %i.p to i64
  %i.r = mul nuw nsw i64 %i.c, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !154
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !153
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !151
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !1851
  br label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS1_6fill_tE(ptr nonnull %0, i64 noundef %i.l, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 8 uses
  %i.ac = load i8, ptr %4, align 8, !tbaa !205, !range !71, !noundef !72
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ae, align 8, !tbaa !193
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !94
  %i.af = tail call ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %.sroa.09.0, ptr %.sroa.01.0.copyload.i, i64 %.sroa.2.0.copyload.i)
  br label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !206 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !207 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj ; 2 uses
  %.not24.i.i.i = icmp samesign eq i64 %i.aj, 0
  br i1 %.not24.i.i.i, label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %.lr.ph27.i.i.i

.lr.ph27.i.i.i:                                   ; preds = %bb.f
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i.i = load i64, ptr %i.am, align 8, !tbaa !154
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i, %.lr.ph27.i.i.i
  %i.ap = phi i64 [ %.pre.i.i.i, %.lr.ph27.i.i.i ], [ %i.bu, %._crit_edge.i.i.i ] ; 2 uses
  %.01925.i.i.i = phi ptr [ %i.ah, %.lr.ph27.i.i.i ], [ %i.bv, %._crit_edge.i.i.i ] ; 9 uses
  %i.aq = ptrtoint ptr %.01925.i.i.i to i64       ; 2 uses
  %i.ar = sub i64 %i.al, %i.aq                    ; 2 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 2 uses
  %i.at = load i64, ptr %i.an, align 8, !tbaa !153 ; 2 uses
  %i.au = icmp ugt i64 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !151
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.as), !inline_history !1852
  %.pre30.i.i.i = load i64, ptr %i.an, align 8, !tbaa !153
  %.pre31.i.i.i = load i64, ptr %i.am, align 8, !tbaa !154
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.h, %bb.g
  %i.aw = phi i64 [ %i.ap, %bb.g ], [ %.pre31.i.i.i, %bb.h ] ; 4 uses
  %i.ax = phi i64 [ %i.at, %bb.g ], [ %.pre30.i.i.i, %bb.h ]
  %i.ay = sub i64 %i.ax, %i.aw
  %spec.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ay, i64 %i.ar) ; 13 uses
  %i.az = load ptr, ptr %.sroa.09.0, align 8, !tbaa !152 ; 2 uses
  %i.ba = ptrtoaddr ptr %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.aw ; 7 uses
  %.not29.i.i.i = icmp eq i64 %spec.select.i.i.i, 0
  br i1 %.not29.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bc = add i64 %i.aw, %i.ba
  %i.bd = sub i64 %i.aq, %i.bc
  %diff.check = icmp ugt i64 %i.bd, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check36 = icmp ult i64 %spec.select.i.i.i, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.be = and i64 %spec.select.i.i.i, 28
  %n.vec = and i64 %spec.select.i.i.i, -32        ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1, !tbaa !93
  %wide.load37 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !93
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store <16 x i8> %wide.load, ptr %i.bh, align 1, !tbaa !93
  store <16 x i8> %wide.load37, ptr %i.bi, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !1853

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !208

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec38 = and i64 %spec.select.i.i.i, -4       ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index39 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next41, %vec.epilog.vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %index39
  %wide.load40 = load <4 x i8>, ptr %i.bk, align 1, !tbaa !93
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %index39
  store <4 x i8> %wide.load40, ptr %i.bl, align 1, !tbaa !93
  %index.next41 = add nuw i64 %index39, 4         ; 2 uses
  %i.bm = icmp eq i64 %index.next41, %n.vec38
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1854

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n42 = icmp eq i64 %spec.select.i.i.i, %n.vec38
  br i1 %cmp.n42, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec38, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.023.i.i.i.prol = phi i64 [ %i.bq, %.lr.ph.i.i.i.prol ], [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %.023.i.i.i.prol
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !93
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.i.prol
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !93
  %i.bq = add nuw i64 %.023.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1855

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.023.i.i.i.unr = phi i64 [ %.023.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.i.prol ]
  %i.br = sub i64 %.023.i.i.i.ph, %spec.select.i.i.i
  %i.bs = icmp ugt i64 %i.br, -4
  br i1 %i.bs, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i.i = load i64, ptr %i.am, align 8, !tbaa !154
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i
  %i.bt = phi i64 [ %.pre32.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.aw, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i ]
  %i.bu = add i64 %i.bt, %spec.select.i.i.i       ; 2 uses
  store i64 %i.bu, ptr %i.am, align 8, !tbaa !154
  %i.bv = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %spec.select.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bv, %i.ak
  br i1 %.not.i.i.i, label %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !3

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.023.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i ], [ %.023.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %.023.i.i.i
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !93
  %i.by = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.023.i.i.i
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !93
  %i.bz = add nuw i64 %.023.i.i.i, 1              ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !93
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bz
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !93
  %i.cd = add nuw i64 %.023.i.i.i, 2              ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !93
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.cd
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !93
  %i.ch = add nuw i64 %.023.i.i.i, 3              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01925.i.i.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !93
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !93
  %i.cl = add nuw i64 %.023.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cl, %spec.select.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1856

_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.04.0.i = phi ptr [ %i.af, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.c, %i.l
  br i1 %.not31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cm = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS1_6fill_tE(ptr %.sroa.04.0.i, i64 noundef %i.m, ptr noundef nonnull align 1 dereferenceable(5) %i.n)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cm, %bb.i ], [ %.sroa.04.0.i, %_ZZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_(ptr %0, i64 %1, ptr noundef byval(%class.anon.206) align 8 %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !193 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !194 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !194 ; 2 uses
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -3
  %i.g = ptrtoint ptr %.sroa.0.0.copyload to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit, %bb.b
  %.028 = phi ptr [ %0, %bb.b ], [ %i.br, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit ] ; 8 uses
  %.not36 = icmp ult ptr %.028, %i.f
  br i1 %.not36, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %.028, align 1, !tbaa !93
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = lshr i32 %i.i, 3                         ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @.str.194, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !93
  %i.n = sext i8 %i.m to i64                      ; 5 uses
  %i.o = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !98
  %i.q = getelementptr inbounds nuw i8, ptr %.028, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !93    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.028, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !93    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.028, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !93    ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.n
  %i.x = load i32, ptr %i.w, align 4, !tbaa !98
  %i.y = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.n
  %i.z = load i32, ptr %i.y, align 4, !tbaa !98
  %i.aa = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.n
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !98
  %i.ac = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !94 ; 2 uses
  %.not.i8.not.i = icmp eq i64 %i.ac, 0           ; 2 uses
  br i1 %.not.i8.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = add i64 %i.ac, -1
  store i64 %i.ad, ptr %.sroa.5.0.copyload, align 8, !tbaa !94
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

bb.f:                                             ; preds = %bb.d
  %i.ae = ptrtoint ptr %.028 to i64
  %i.af = sub i64 %i.ae, %i.g
  store i64 %i.af, ptr %.sroa.7.0.copyload, align 8, !tbaa !94
  br label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit

_ZZN3fmt3v116detail18for_each_codepointIZNS1_16code_point_indexENS0_17basic_string_viewIcEEmEUljS4_E_EEvS4_T_ENKUlPKcS8_E_clES8_S8_.exit: ; preds = %bb.e, %bb.f
  %i.ag = and i8 %i.t, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = shl nuw nsw i32 %i.ah, 6
  %i.aj = and i8 %i.r, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 12
  %i.am = and i32 %i.p, %i.i
  %i.an = shl nuw nsw i32 %i.am, 18
  %i.ao = or disjoint i32 %i.al, %i.an
  %i.ap = or disjoint i32 %i.ai, %i.ao
  %i.aq = and i8 %i.v, 63
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ap, %i.ar
  %i.at = lshr i32 %i.as, %i.x                    ; 3 uses
  %i.au = icmp ult i32 %i.at, %i.z
  %i.av = select i1 %i.au, i32 64, i32 0
  %i.aw = lshr i8 %i.t, 4
  %i.ax = and i8 %i.aw, 12
  %i.ay = lshr i8 %i.r, 2
  %i.az = and i8 %i.ay, 48
  %i.ba = or disjoint i8 %i.ax, %i.az
  %i.bb = lshr i8 %i.v, 6
  %i.bc = or disjoint i8 %i.ba, %i.bb
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.av, %i.bd
  %i.bf = icmp samesign ugt i32 %i.at, 1114111
  %i.bg = select i1 %i.bf, i32 256, i32 0
  %i.bh = or disjoint i32 %i.be, %i.bg
  %.mask.i.i = and i32 %i.at, 2147481600
  %i.bi = icmp eq i32 %.mask.i.i, 55296
  %i.bj = select i1 %i.bi, i32 128, i32 0
  %i.bk = or disjoint i32 %i.bh, %i.bj
  %i.bl = xor i32 %i.bk, 42
  %i.bm = lshr i32 %i.bl, %i.ab
  %.not.i = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds i8, ptr %.028, i64 %i.n
  %.not.i.i = lshr i32 -2130771968, %i.j
  %i.bo = and i32 %.not.i.i, 1
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bp
  %i.br = select i1 %.not.i, ptr %i.bq, ptr %i.q
  br i1 %.not.i8.not.i, label %.thread, label %bb.c, !llvm.loop !1857

.loopexit:                                        ; preds = %bb.c, %bb.a
  %.230 = phi ptr [ %0, %bb.a ], [ %.028, %bb.c ] ; 9 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %.230 to i64               ; 2 uses
  %i.bv = sub i64 %i.bt, %i.bu                    ; 8 uses
  %.not37 = icmp eq ptr %i.bs, %.230
  br i1 %.not37, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bv, 8
  %i.bw = sub i64 %i.bu, %i.c
  %diff.check = icmp ugt i64 %i.bw, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check66 = icmp ult i64 %i.bv, 32
  br i1 %min.iters.check66, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bx = and i64 %i.bv, 24
  %n.vec = and i64 %i.bv, -32                     ; 5 uses
  %i.by = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.bz = getelementptr i8, ptr %.230, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep67 = getelementptr i8, ptr %.230, i64 %index ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep67, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep67, align 1, !tbaa !93
  %wide.load68 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !93
  %i.cb = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !93
  store <16 x i8> %wide.load68, ptr %i.cb, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1858

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bx, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !202

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec70 = and i64 %i.bv, -8                    ; 4 uses
  %i.cd = getelementptr i8, ptr %i.b, i64 %n.vec70
  %i.ce = getelementptr i8, ptr %.230, i64 %n.vec70
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index71 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next75, %vec.epilog.vector.body ] ; 3 uses
  %next.gep72 = getelementptr i8, ptr %i.b, i64 %index71
  %next.gep73 = getelementptr i8, ptr %.230, i64 %index71
  %wide.load74 = load <8 x i8>, ptr %next.gep73, align 1, !tbaa !93
  store <8 x i8> %wide.load74, ptr %next.gep72, align 1, !tbaa !93
  %index.next75 = add nuw i64 %index71, 8         ; 2 uses
  %i.cf = icmp eq i64 %index.next75, %n.vec70
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1859

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n76 = icmp eq i64 %i.bv, %n.vec70
  br i1 %cmp.n76, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.by, %vec.epilog.iter.check ], [ %i.cd, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.230, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 3 uses
  %i.cg = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph80 = ptrtoaddr ptr %.057.i.ph to i64  ; 2 uses
  %i.ch = sub i64 %i.cg, %.057.i.ph80
  %xtraiter = and i64 %i.ch, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.ck, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ci, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ci = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cj = load i8, ptr %.057.i.prol, align 1, !tbaa !93
  %i.ck = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cj, ptr %.08.i.prol, align 1, !tbaa !93
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1860

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ci, %.lr.ph.i.prol ]
  %i.cl = sub i64 %.057.i.ph80, %i.cg
  %i.cm = icmp ugt i64 %i.cl, -8
  br i1 %i.cm, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.di, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.co = load i8, ptr %.057.i, align 1, !tbaa !93
  %i.cp = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.co, ptr %.08.i, align 1, !tbaa !93
  %i.cq = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cr = load i8, ptr %i.cn, align 1, !tbaa !93
  %i.cs = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cr, ptr %i.cp, align 1, !tbaa !93
  %i.ct = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cu = load i8, ptr %i.cq, align 1, !tbaa !93
  %i.cv = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cu, ptr %i.cs, align 1, !tbaa !93
  %i.cw = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cx = load i8, ptr %i.ct, align 1, !tbaa !93
  %i.cy = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !93
  %i.cz = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.da = load i8, ptr %i.cw, align 1, !tbaa !93
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !93
  %i.dc = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.dd = load i8, ptr %i.cz, align 1, !tbaa !93
  %i.de = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !93
  %i.df = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dg = load i8, ptr %i.dc, align 1, !tbaa !93
  %i.dh = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dg, ptr %i.de, align 1, !tbaa !93
  %i.di = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dj = load i8, ptr %i.df, align 1, !tbaa !93
  %i.dk = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !93
  %.not.i39.7 = icmp eq ptr %i.di, %i.bs
  br i1 %.not.i39.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1861

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dl = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.dm = ptrtoint ptr %i.b to i64
  %.sroa.5.0.copyload.promoted = load i64, ptr %.sroa.5.0.copyload, align 8, !tbaa !94 ; 2 uses
  %.not.i8.not.i4063 = icmp eq i64 %.sroa.5.0.copyload.promoted, 0
  br i1 %.not.i8.not.i4063, label %.critedge, label %.lr.ph

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %.lr.ph
  %i.dn = ptrtoint ptr %.065 to i64
  %i.do = sub i64 %i.fz, %i.dn
  %i.dp = getelementptr inbounds i8, ptr %.33164, i64 %i.do ; 2 uses
  %.not.i8.not.i40 = icmp eq i64 %i.em, 0
  br i1 %.not.i8.not.i40, label %.critedge, label %.lr.ph, !llvm.loop !1862

.lr.ph:                                           ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  %.065 = phi ptr [ %i.fy, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 6 uses
  %.33164 = phi ptr [ %i.dp, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ], [ %.230, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ]
  %i.dq = phi i64 [ %i.em, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ], [ %.sroa.5.0.copyload.promoted, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ]
  %i.dr = load i8, ptr %.065, align 1, !tbaa !93
  %i.ds = zext i8 %i.dr to i32                    ; 2 uses
  %i.dt = lshr i32 %i.ds, 3                       ; 2 uses
  %i.du = zext nneg i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @.str.194, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !93
  %i.dx = sext i8 %i.dw to i64                    ; 5 uses
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !98
  %i.ea = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dx
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !98
  %i.ec = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dx
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !98
  %i.ee = getelementptr inbounds nuw i8, ptr %.065, i64 3
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !93  ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.065, i64 2
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !93  ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.065, i64 1 ; 2 uses
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !93  ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dx
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !98
  %i.em = add i64 %i.dq, -1                       ; 3 uses
  store i64 %i.em, ptr %.sroa.5.0.copyload, align 8, !tbaa !94
  %i.en = and i8 %i.eh, 63
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = shl nuw nsw i32 %i.eo, 6
  %i.eq = and i8 %i.ej, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, 12
  %i.et = and i32 %i.el, %i.ds
  %i.eu = shl nuw nsw i32 %i.et, 18
  %i.ev = or disjoint i32 %i.es, %i.eu
  %i.ew = or disjoint i32 %i.ep, %i.ev
  %i.ex = and i8 %i.ef, 63
  %i.ey = zext nneg i8 %i.ex to i32
  %i.ez = or disjoint i32 %i.ew, %i.ey
  %i.fa = lshr i32 %i.ez, %i.ed                   ; 3 uses
  %i.fb = icmp ult i32 %i.fa, %i.eb
  %i.fc = select i1 %i.fb, i32 64, i32 0
  %i.fd = lshr i8 %i.eh, 4
  %i.fe = and i8 %i.fd, 12
  %i.ff = lshr i8 %i.ej, 2
  %i.fg = and i8 %i.ff, 48
  %i.fh = or disjoint i8 %i.fe, %i.fg
  %i.fi = lshr i8 %i.ef, 6
  %i.fj = or disjoint i8 %i.fh, %i.fi
  %i.fk = zext nneg i8 %i.fj to i32
  %i.fl = or disjoint i32 %i.fc, %i.fk
  %i.fm = icmp samesign ugt i32 %i.fa, 1114111
  %i.fn = select i1 %i.fm, i32 256, i32 0
  %i.fo = or disjoint i32 %i.fl, %i.fn
  %.mask.i.i41 = and i32 %i.fa, 2147481600
  %i.fp = icmp eq i32 %.mask.i.i41, 55296
  %i.fq = select i1 %i.fp, i32 128, i32 0
  %i.fr = or disjoint i32 %i.fo, %i.fq
  %i.fs = xor i32 %i.fr, 42
  %i.ft = lshr i32 %i.fs, %i.dz
  %.not.i42 = icmp eq i32 %i.ft, 0
  %i.fu = getelementptr inbounds i8, ptr %.065, i64 %i.dx
  %.not.i.i43 = lshr i32 -2130771968, %i.dt
  %i.fv = and i32 %.not.i.i43, 1
  %i.fw = zext nneg i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fw
  %i.fy = select i1 %.not.i42, ptr %i.fx, ptr %i.ei ; 2 uses
  %i.fz = ptrtoint ptr %i.fy to i64               ; 2 uses
  %i.ga = sub i64 %i.fz, %i.dm
  %i.gb = icmp slt i64 %i.ga, %i.bv
  br i1 %i.gb, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, label %.thread.sink.split, !llvm.loop !1862

.critedge:                                        ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader
  %.331.lcssa = phi ptr [ %.230, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ], [ %i.dp, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit ]
  %i.gc = ptrtoint ptr %.331.lcssa to i64
  %i.gd = sub i64 %i.gc, %i.dl
end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail16write_escaped_cpINS1_17counting_iteratorEcEET_S4_RKNS1_18find_escape_resultIT0_EE:bb.a
  %i.ad = sub i64 %i.aa, %i.ac
  %i.ae = add i64 %i.ad, %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.af = icmp ult i32 %i.e, 1114112
  br i1 %i.af, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.09.i.i30 = phi i32 [ %i.e, %bb.i ], [ %i.am, %bb.j ] ; 2 uses
  %.0.i.i31 = phi ptr [ %i.ag, %bb.i ], [ %i.al, %bb.j ]
  %i.ah = and i32 %.09.i.i30, 15
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @.str.196, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !93
  %i.al = getelementptr inbounds i8, ptr %.0.i.i31, i64 -1 ; 2 uses
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !93
  %i.am = lshr i32 %.09.i.i30, 4                  ; 2 uses
  %.not.i.i32 = icmp eq i32 %i.am, 0
  br i1 %.not.i.i32, label %_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit, label %bb.j, !llvm.loop !4

_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit: ; preds = %bb.j
  %i.an = add i64 %0, 2
  %i.ao = ptrtoaddr ptr %i.ag to i64
  %i.ap = ptrtoaddr ptr %i.a to i64
  %i.aq = sub i64 %i.an, %i.ap
  %i.ar = add i64 %i.aq, %i.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %.loopexit

bb.k:                                             ; preds = %bb.h
  %i.as = load ptr, ptr %1, align 8, !tbaa !196   ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !197 ; 2 uses
  %.not63 = icmp eq ptr %i.as, %i.au
  br i1 %.not63, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %.lr.ph
  %.065 = phi ptr [ %i.ax, %.lr.ph ], [ %i.as, %bb.k ] ; 2 uses
  %.sroa.049.064 = phi i64 [ %i.aw, %.lr.ph ], [ %0, %bb.k ]
  %i.av = load i8, ptr %.065, align 1, !tbaa !93
  %.not.i.i35 = icmp ult i8 %i.av, 16             ; 0 uses
  %i.aw = add i64 %.sroa.049.064, 4               ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.065, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.ax, %i.au
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ay = add i64 %0, 2
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.k, %bb.l, %_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit, %_ZN3fmt3v116detail15write_codepointILm4EcNS1_17counting_iteratorEEET1_S4_cj.exit, %_ZN3fmt3v116detail15write_codepointILm2EcNS1_17counting_iteratorEEET1_S4_cj.exit
  %.sroa.021.0 = phi i64 [ %i.r, %_ZN3fmt3v116detail15write_codepointILm2EcNS1_17counting_iteratorEEET1_S4_cj.exit ], [ %i.ae, %_ZN3fmt3v116detail15write_codepointILm4EcNS1_17counting_iteratorEEET1_S4_cj.exit ], [ %i.ar, %_ZN3fmt3v116detail15write_codepointILm8EcNS1_17counting_iteratorEEET1_S4_cj.exit ], [ %i.ay, %bb.l ], [ %0, %bb.k ], [ %i.aw, %.lr.ph ]
  ret i64 %.sroa.021.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 12 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3669 = icmp sgt i64 %1, 3
  br i1 %.not3669, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02870 = phi ptr [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.02870, align 1, !tbaa !93
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.194, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !93
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.02870, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !98
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.02870, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !93    ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.02870, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !93  ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.02870, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !93  ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !98
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !98
  %i.ar = icmp ult i32 %i.ao, %i.aq
  %i.as = select i1 %i.ar, i32 64, i32 0
  %.mask.i.i = and i32 %i.ao, 2147481600
  %i.at = icmp eq i32 %.mask.i.i, 55296
  %i.au = select i1 %i.at, i32 128, i32 0
  %i.av = icmp samesign ugt i32 %i.ao, 1114111
  %i.aw = select i1 %i.av, i32 256, i32 0
  %i.ax = lshr i8 %i.w, 2
  %i.ay = and i8 %i.ax, 48
  %i.az = lshr i8 %i.ac, 4
  %i.ba = and i8 %i.az, 12
  %i.bb = lshr i8 %i.ai, 6
  %i.bc = or disjoint i8 %i.ba, %i.ay
  %i.bd = or disjoint i8 %i.bc, %i.bb
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = or disjoint i32 %i.as, %i.be
  %i.bg = or disjoint i32 %i.bf, %i.aw
  %i.bh = or disjoint i32 %i.bg, %i.au
  %i.bi = xor i32 %i.bh, 42
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !98
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v116detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.02870, i64 %i.bq
  store ptr %.02870, ptr %2, align 8, !tbaa !193
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !193
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !98
  br label %.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not36 = icmp ult ptr %i.bs, %i.f
  br i1 %.not36, label %.lr.ph, label %.loopexit, !llvm.loop !1863

.loopexit:                                        ; preds = %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.230 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.230 to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %.not37 = icmp eq ptr %i.bt, %.230
  br i1 %.not37, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.bx = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.bx, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check126 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.by = and i64 %i.bw, 24
  %n.vec = and i64 %i.bw, -32                     ; 5 uses
  %i.bz = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.ca = getelementptr i8, ptr %.230, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep127 = getelementptr i8, ptr %.230, i64 %index ; 2 uses
  %i.cb = getelementptr i8, ptr %next.gep127, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep127, align 1, !tbaa !93
  %wide.load128 = load <16 x i8>, ptr %i.cb, align 1, !tbaa !93
  %i.cc = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !93
  store <16 x i8> %wide.load128, ptr %i.cc, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !1864

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.by, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !202

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %i.bw, -8                   ; 4 uses
  %i.ce = getelementptr i8, ptr %i.b, i64 %n.vec130
  %i.cf = getelementptr i8, ptr %.230, i64 %n.vec130
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next135, %vec.epilog.vector.body ] ; 3 uses
  %next.gep132 = getelementptr i8, ptr %i.b, i64 %index131
  %next.gep133 = getelementptr i8, ptr %.230, i64 %index131
  %wide.load134 = load <8 x i8>, ptr %next.gep133, align 1, !tbaa !93
  store <8 x i8> %wide.load134, ptr %next.gep132, align 1, !tbaa !93
  %index.next135 = add nuw i64 %index131, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next135, %n.vec130
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1865

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n136 = icmp eq i64 %i.bw, %n.vec130
  br i1 %cmp.n136, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.bz, %vec.epilog.iter.check ], [ %i.ce, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.230, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 3 uses
  %i.ch = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph155 = ptrtoaddr ptr %.057.i.ph to i64 ; 2 uses
  %i.ci = sub i64 %i.ch, %.057.i.ph155
  %xtraiter = and i64 %i.ci, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cl, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.cj, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.ck = load i8, ptr %.057.i.prol, align 1, !tbaa !93
  %i.cl = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.ck, ptr %.08.i.prol, align 1, !tbaa !93
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1866

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cl, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.cj, %.lr.ph.i.prol ]
  %i.cm = sub i64 %.057.i.ph155, %i.ch
  %i.cn = icmp ugt i64 %i.cm, -8
  br i1 %i.cn, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dj, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cp = load i8, ptr %.057.i, align 1, !tbaa !93
  %i.cq = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cp, ptr %.08.i, align 1, !tbaa !93
  %i.cr = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.cs = load i8, ptr %i.co, align 1, !tbaa !93
  %i.ct = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.cs, ptr %i.cq, align 1, !tbaa !93
  %i.cu = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cv = load i8, ptr %i.cr, align 1, !tbaa !93
  %i.cw = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !93
  %i.cx = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !93
  %i.cz = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cy, ptr %i.cw, align 1, !tbaa !93
  %i.da = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.db = load i8, ptr %i.cx, align 1, !tbaa !93
  %i.dc = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.db, ptr %i.cz, align 1, !tbaa !93
  %i.dd = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.de = load i8, ptr %i.da, align 1, !tbaa !93
  %i.df = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !93
  %i.dg = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.dh = load i8, ptr %i.dd, align 1, !tbaa !93
  %i.di = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.dh, ptr %i.df, align 1, !tbaa !93
  %i.dj = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dk = load i8, ptr %i.dg, align 1, !tbaa !93
  %i.dl = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !93
  %.not.i39.7 = icmp eq ptr %i.dj, %i.bt
  br i1 %.not.i39.7, label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1867

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.dm = ptrtoint ptr %i.b to i64
  br label %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit

_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48
  %.331 = phi ptr [ %i.gd, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48 ], [ %.230, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.fz, %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48 ], [ %i.b, %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit.preheader ] ; 6 uses
  %i.dn = load i8, ptr %.0, align 1, !tbaa !93
  %i.do = zext i8 %i.dn to i32                    ; 2 uses
  %i.dp = lshr i32 %i.do, 3                       ; 2 uses
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @.str.194, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !93
  %i.dt = sext i8 %i.ds to i64                    ; 6 uses
  %i.du = getelementptr inbounds i8, ptr %.0, i64 %i.dt
  %.not.i.i40 = lshr i32 -2130771968, %i.dp
  %i.dv = and i32 %.not.i.i40, 1
  %i.dw = zext nneg i32 %i.dv to i64              ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dw
  %i.dy = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.masks, i64 %i.dt
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !98
  %i.ea = and i32 %i.dz, %i.do
  %i.eb = shl nuw nsw i32 %i.ea, 18
  %i.ec = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !93  ; 2 uses
  %i.ee = and i8 %i.ed, 63
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 12
  %i.eh = or disjoint i32 %i.eg, %i.eb
  %i.ei = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !93  ; 2 uses
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 6
  %i.en = or disjoint i32 %i.em, %i.eh
  %i.eo = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !93  ; 2 uses
  %i.eq = and i8 %i.ep, 63
  %i.er = zext nneg i8 %i.eq to i32
  %i.es = or disjoint i32 %i.en, %i.er
  %i.et = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.dt
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !98
  %i.ev = lshr i32 %i.es, %i.eu                   ; 4 uses
  %i.ew = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.dt
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !98
  %i.ey = icmp ult i32 %i.ev, %i.ex
  %i.ez = select i1 %i.ey, i32 64, i32 0
  %.mask.i.i41 = and i32 %i.ev, 2147481600
  %i.fa = icmp eq i32 %.mask.i.i41, 55296
  %i.fb = select i1 %i.fa, i32 128, i32 0
  %i.fc = icmp samesign ugt i32 %i.ev, 1114111
  %i.fd = select i1 %i.fc, i32 256, i32 0
  %i.fe = lshr i8 %i.ed, 2
  %i.ff = and i8 %i.fe, 48
  %i.fg = lshr i8 %i.ej, 4
  %i.fh = and i8 %i.fg, 12
  %i.fi = lshr i8 %i.ep, 6
  %i.fj = or disjoint i8 %i.fh, %i.ff
  %i.fk = or disjoint i8 %i.fj, %i.fi
  %i.fl = zext nneg i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.ez, %i.fl
  %i.fn = or disjoint i32 %i.fm, %i.fd
  %i.fo = or disjoint i32 %i.fn, %i.fb
  %i.fp = xor i32 %i.fo, 42
  %i.fq = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.dt
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !98
  %i.fs = lshr i32 %i.fp, %i.fr
  %.not.i42 = icmp eq i32 %i.fs, 0                ; 3 uses
  %i.ft = select i1 %.not.i42, i32 %i.ev, i32 -1  ; 4 uses
  %i.fu = icmp ult i32 %i.ft, 32
  br i1 %i.fu, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread, label %switch.early.test.i.i.i43

switch.early.test.i.i.i43:                        ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit
  switch i32 %i.ft, label %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i47 [
    i32 127, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread
    i32 92, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread
    i32 34, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread
  ]

_ZN3fmt3v116detail12needs_escapeEj.exit.i.i47:    ; preds = %switch.early.test.i.i.i43
  %i.fv = call noundef zeroext i1 @_ZN3fmt3v116detail12is_printableEj(i32 noundef %i.ft)
  br i1 %i.fv, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48, label %_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread

_ZZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit48.thread: ; preds = %_ZN3fmt3v116detail4copyIcPKcPcTnNSt9enable_ifIXntsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES7_T0_SA_S7_.exit, %switch.early.test.i.i.i43, %switch.early.test.i.i.i43, %switch.early.test.i.i.i43, %_ZN3fmt3v116detail12needs_escapeEj.exit.i.i47
  %i.fw = add nsw i64 %i.dw, %i.dt
  %i.fx = select i1 %.not.i42, i64 %i.fw, i64 1
  %i.fy = getelementptr inbounds nuw i8, ptr %.331, i64 %i.fx
  store ptr %.331, ptr %2, align 8, !tbaa !193
  %.sroa.4.0..sroa_idx.i.i45 = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.fy, ptr %.sroa.4.0..sroa_idx.i.i45, align 8, !tbaa !193
  %.sroa.5.0..sroa_idx.i.i46 = getelementptr inbounds nuw i8, ptr %2, i64 16
end_hunk_2
begin_hunk_3_@_ZZN3fmt3v116detail18for_each_codepointIZNS1_13compute_widthENS0_17basic_string_viewIcEEE17count_code_pointsEEvS4_T_ENKUlPKcS8_E_clES8_S8_:bb.a
  %i.s = load i8, ptr %i.r, align 1, !tbaa !93    ; 2 uses
  %i.t = and i8 %i.s, 63
  %i.u = zext nneg i8 %i.t to i32
  %i.v = shl nuw nsw i32 %i.u, 6
  %i.w = or disjoint i32 %i.v, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.y = load i8, ptr %i.x, align 1, !tbaa !93    ; 2 uses
  %i.z = and i8 %i.y, 63
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.w, %i.aa
  %i.ac = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.g
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !98
  %i.ae = lshr i32 %i.ab, %i.ad                   ; 4 uses
  %i.af = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.mins, i64 %i.g
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !98
  %i.ah = icmp ult i32 %i.ae, %i.ag
  %i.ai = select i1 %i.ah, i32 64, i32 0
  %.mask.i = and i32 %i.ae, 2147481600
  %i.aj = icmp eq i32 %.mask.i, 55296
  %i.ak = select i1 %i.aj, i32 128, i32 0
  %i.al = icmp samesign ugt i32 %i.ae, 1114111
  %i.am = select i1 %i.al, i32 256, i32 0
  %i.an = lshr i8 %i.m, 2
  %i.ao = and i8 %i.an, 48
  %i.ap = lshr i8 %i.s, 4
  %i.aq = and i8 %i.ap, 12
  %i.ar = lshr i8 %i.y, 6
  %i.as = or disjoint i8 %i.aq, %i.ao
  %i.at = or disjoint i8 %i.as, %i.ar
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.ai, %i.au
  %i.aw = or disjoint i32 %i.av, %i.am
  %i.ax = or disjoint i32 %i.aw, %i.ak
  %i.ay = xor i32 %i.ax, 42
  %i.az = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v116detail11utf8_decodeEPKcPjPi.shifte, i64 %i.g
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !98
  %i.bb = lshr i32 %i.ay, %i.ba
  %.not = icmp eq i32 %i.bb, 0                    ; 2 uses
  %i.bc = select i1 %.not, i32 %i.ae, i32 -1      ; 7 uses
  %i.bd = icmp ugt i32 %i.bc, 4351
  br i1 %i.bd, label %bb.b, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit

bb.b:                                             ; preds = %bb.a
  %i.be = icmp ult i32 %i.bc, 4448
  %i.bf = add nsw i32 %i.bc, -9001
  %i.bg = icmp ult i32 %i.bf, 2
  %or.cond3.i = or i1 %i.be, %i.bg
  br i1 %or.cond3.i, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bh = add nsw i32 %i.bc, -11904
  %or.cond5.i = icmp ult i32 %i.bh, 30288
  %i.bi = icmp ne i32 %i.bc, 12351
  %or.cond7.i = and i1 %i.bi, %or.cond5.i
  %i.bj = insertelement <2 x i32> poison, i32 %i.bc, i64 0
  %i.bk = shufflevector <2 x i32> %i.bj, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bl = and <8 x i32> %i.bk, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -65538, i32 -1>
  %i.bm = add <8 x i32> %i.bl, <i32 -44032, i32 -63744, i32 -65040, i32 -65072, i32 -65280, i32 -65504, i32 -131072, i32 -127744>
  %i.bn = icmp ult <8 x i32> %i.bm, <i32 11172, i32 512, i32 10, i32 64, i32 97, i32 7, i32 65534, i32 848>
  %i.bo = bitcast <8 x i1> %i.bn to i8
  %i.bp = icmp ne i8 %i.bo, 0
  %op.rdx = or i1 %i.bp, %or.cond7.i
  br i1 %op.rdx, label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bq = and i32 %i.bc, -256
  %i.br = icmp eq i32 %i.bq, 129280
  %i.bs = select i1 %i.br, i64 2, i64 1
  br label %_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit

_ZZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEENK17count_code_pointsclEjS3_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.bt = phi i64 [ 1, %bb.a ], [ 2, %bb.c ], [ 2, %bb.b ], [ %i.bs, %bb.d ]
  %i.bu = getelementptr inbounds i8, ptr %1, i64 %i.g
  %.not.i = lshr i32 -2130771968, %i.c
  %i.bv = and i32 %.not.i, 1
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bw
  %i.by = load ptr, ptr %0, align 8, !tbaa !1870  ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !94
  %i.ca = add i64 %i.bz, %i.bt
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !94
  %i.cb = select i1 %.not, ptr %i.bx, ptr %i.l
  ret ptr %i.cb
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS1_6fill_tE(ptr %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(5) %2) local_unnamed_addr #19 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.b = load i8, ptr %i.a, align 1, !tbaa !168   ; 3 uses
  %i.c = zext i8 %i.b to i64
  %i.d = icmp eq i8 %i.b, 1
  br i1 %i.d, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %i.c ; 2 uses
  %.not24.i.i = icmp eq i8 %i.b, 0
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph27.i.i.preheader

.lr.ph27.i.i.preheader:                           ; preds = %.lr.ph
  %.pre.i.i.pre = load i64, ptr %i.g, align 8, !tbaa !154
  br label %.lr.ph27.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = load i8, ptr %2, align 1, !tbaa !93
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i64 [ 0, %.lr.ph.i ], [ %i.v, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i ]
  %i.n = load i64, ptr %i.k, align 8, !tbaa !154  ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 3 uses
  %i.p = load i64, ptr %i.l, align 8, !tbaa !153
  %i.q = icmp ugt i64 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !151
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.o), !inline_history !1871
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !154 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.o, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.s = phi i64 [ %i.n, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !152
  store i64 %.pre-phi.i.i.i, ptr %i.k, align 8, !tbaa !154
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %i.j, ptr %i.u, align 1, !tbaa !93
  %i.v = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !1872

.lr.ph27.i.i:                                     ; preds = %.lr.ph27.i.i.preheader, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.bb, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph27.i.i.preheader ]
  %.018 = phi i64 [ %i.bt, %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit.loopexit ], [ 0, %.lr.ph27.i.i.preheader ]
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.w = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bb, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %2, %.lr.ph27.i.i ], [ %i.bc, %._crit_edge.i.i ] ; 9 uses
  %i.x = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.y = sub i64 %i.f, %i.x                       ; 2 uses
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !153 ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !151
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.z), !inline_history !5
  %.pre30.i.i = load i64, ptr %i.h, align 8, !tbaa !153
  %.pre31.i.i = load i64, ptr %i.g, align 8, !tbaa !154
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.ad = phi i64 [ %i.w, %bb.e ], [ %.pre31.i.i, %bb.f ] ; 4 uses
  %i.ae = phi i64 [ %i.aa, %bb.e ], [ %.pre30.i.i, %bb.f ]
  %i.af = sub i64 %i.ae, %i.ad
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.af, i64 %i.y) ; 13 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !152   ; 2 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = add i64 %i.ad, %i.ah
  %i.ak = sub i64 %i.x, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check31 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check31, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <16 x i8>, ptr %i.am, align 1, !tbaa !93
  %wide.load32 = load <16 x i8>, ptr %i.an, align 1, !tbaa !93
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %wide.load, ptr %i.ao, align 1, !tbaa !93
  store <16 x i8> %wide.load32, ptr %i.ap, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1873

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !208

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec33 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index34 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index34
  %wide.load35 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index34
  store <4 x i8> %wide.load35, ptr %i.as, align 1, !tbaa !93
  %index.next36 = add nuw i64 %index34, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next36, %n.vec33
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1874

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n37 = icmp eq i64 %spec.select.i.i, %n.vec33
  br i1 %cmp.n37, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec33, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ax, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.au = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.av = load i8, ptr %i.au, align 1, !tbaa !93
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.023.i.i.prol
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !93
  %i.ax = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1875

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
  %i.ay = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.g, align 8, !tbaa !154
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ba = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ad, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bb = add i64 %i.ba, %spec.select.i.i         ; 3 uses
  store i64 %i.bb, ptr %i.g, align 8, !tbaa !154
  %i.bc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.e
  br i1 %.not.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit.loopexit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bs, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !93
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.023.i.i
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !93
  %i.bg = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bg
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !93
  %i.bk = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !93
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !93
  %i.bo = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !93
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !93
  %i.bs = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bs, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1876

_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.bt = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bt, %1
  br i1 %exitcond.not, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph27.i.i, !llvm.loop !1877

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit.loopexit, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %.preheader, %.lr.ph, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail20write_escaped_stringIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EE(ptr %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::find_escape_result", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !154  ; 2 uses
  %i.c = add i64 %i.b, 1                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !153
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c), !inline_history !6
  %.pre.i.i = load i64, ptr %i.a, align 8, !tbaa !154 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.c, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.i = phi i64 [ %i.b, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !152
  store i64 %.pre-phi.i.i, ptr %i.a, align 8, !tbaa !154
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  store i8 34, ptr %i.k, align 1, !tbaa !93
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = ptrtoint ptr %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit
  %.sroa.022.0 = phi ptr [ %0, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %i.bu, %bb.f ] ; 7 uses
  %.0 = phi ptr [ %1, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit ], [ %i.bt, %bb.f ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr %i.l, ptr %3, align 8, !tbaa !196, !alias.scope !1885
  store ptr null, ptr %i.m, align 8, !tbaa !197, !alias.scope !1885
  store i32 0, ptr %i.n, align 8, !tbaa !198, !alias.scope !1885
  %i.p = ptrtoint ptr %.0 to i64
  %i.q = sub i64 %i.o, %i.p
  call void @_ZN3fmt3v116detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %.0, i64 %i.q, ptr nonnull align 8 %3)
  %i.r = load ptr, ptr %3, align 8, !tbaa !196    ; 3 uses
  %.not24.i.i = icmp eq ptr %.0, %i.r
  br i1 %.not24.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %bb.c
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.022.0, i64 24
  %.pre.i.i13 = load i64, ptr %i.t, align 8, !tbaa !154
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.w = phi i64 [ %.pre.i.i13, %.lr.ph27.i.i ], [ %i.bb, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0, %.lr.ph27.i.i ], [ %i.bc, %._crit_edge.i.i ] ; 9 uses
  %i.x = ptrtoint ptr %.01925.i.i to i64          ; 2 uses
  %i.y = sub i64 %i.s, %i.x                       ; 2 uses
  %i.z = add i64 %i.y, %i.w                       ; 2 uses
  %i.aa = load i64, ptr %i.u, align 8, !tbaa !153 ; 2 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !151
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.0, i64 noundef %i.z), !inline_history !5
  %.pre30.i.i = load i64, ptr %i.u, align 8, !tbaa !153
  %.pre31.i.i = load i64, ptr %i.t, align 8, !tbaa !154
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.e, %bb.d
  %i.ad = phi i64 [ %i.w, %bb.d ], [ %.pre31.i.i, %bb.e ] ; 4 uses
  %i.ae = phi i64 [ %i.aa, %bb.d ], [ %.pre30.i.i, %bb.e ]
  %i.af = sub i64 %i.ae, %i.ad
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.af, i64 %i.y) ; 13 uses
  %i.ag = load ptr, ptr %.sroa.022.0, align 8, !tbaa !152 ; 2 uses
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ad ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = add i64 %i.ad, %i.ah
  %i.ak = sub i64 %i.x, %i.aj
  %diff.check = icmp ugt i64 %i.ak, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check40 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load = load <16 x i8>, ptr %i.am, align 1, !tbaa !93
  %wide.load41 = load <16 x i8>, ptr %i.an, align 1, !tbaa !93
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store <16 x i8> %wide.load, ptr %i.ao, align 1, !tbaa !93
  store <16 x i8> %wide.load41, ptr %i.ap, align 1, !tbaa !93
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !1880

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !208

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec42 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index43 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index43
  %wide.load44 = load <4 x i8>, ptr %i.ar, align 1, !tbaa !93
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %index43
  store <4 x i8> %wide.load44, ptr %i.as, align 1, !tbaa !93
  %index.next45 = add nuw i64 %index43, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next45, %n.vec42
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1881

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %spec.select.i.i, %n.vec42
  br i1 %cmp.n46, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec42, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ax, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.au = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.av = load i8, ptr %i.au, align 1, !tbaa !93
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.023.i.i.prol
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !93
  %i.ax = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1882

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ax, %.lr.ph.i.i.prol ]
  %i.ay = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.az = icmp ugt i64 %i.ay, -4
  br i1 %i.az, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.t, align 8, !tbaa !154
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ba = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.ad, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bb = add i64 %i.ba, %spec.select.i.i         ; 2 uses
  store i64 %i.bb, ptr %i.t, align 8, !tbaa !154
  %i.bc = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.r
  br i1 %.not.i.i, label %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.bs, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !93
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.023.i.i
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !93
  %i.bg = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !93
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bg
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !93
  %i.bk = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !93
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !93
  %i.bo = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !93
  %i.br = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bo
  store i8 %i.bq, ptr %i.br, align 1, !tbaa !93
  %i.bs = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bs, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1883

_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit: ; preds = %._crit_edge.i.i, %bb.c
  %i.bt = load ptr, ptr %i.m, align 8, !tbaa !197 ; 3 uses
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %.loopexit

bb.f:                                             ; preds = %_ZN3fmt3v116detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES8_T0_SB_S8_.exit
  %i.bu = call ptr @_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %.sroa.022.0, ptr noundef nonnull align 8 dereferenceable(24) %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %.not12 = icmp eq ptr %i.bt, %i.l
  br i1 %.not12, label %.loopexit, label %bb.c, !llvm.loop !1884

.loopexit:                                        ; preds = %bb.f, %.thread
  %.sroa.022.127 = phi ptr [ %.sroa.022.0, %.thread ], [ %i.bu, %bb.f ] ; 6 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 8 ; 3 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !154 ; 2 uses
  %i.bx = add i64 %i.bw, 1                        ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !153
  %i.ca = icmp ugt i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.g, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit18

bb.g:                                             ; preds = %.loopexit
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.022.127, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !151
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.022.127, i64 noundef %i.bx), !inline_history !6
  %.pre.i.i16 = load i64, ptr %i.bv, align 8, !tbaa !154 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit18

_ZN3fmt3v1114basic_appenderIcEaSEc.exit18:        ; preds = %.loopexit, %bb.g
  %.pre-phi.i.i15 = phi i64 [ %i.bx, %.loopexit ], [ %.pre2.i.i17, %bb.g ]
  %i.cd = phi i64 [ %i.bw, %.loopexit ], [ %.pre.i.i16, %bb.g ]
  %i.ce = load ptr, ptr %.sroa.022.127, align 8, !tbaa !152
  store i64 %.pre-phi.i.i15, ptr %i.bv, align 8, !tbaa !154
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 34, ptr %i.cf, align 1, !tbaa !93
  ret ptr %.sroa.022.127
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v116detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !198  ; 8 uses
  switch i32 %i.b, label %bb.j [
    i32 10, label %bb.b
    i32 13, label %bb.d
    i32 9, label %bb.f
    i32 34, label %bb.h
    i32 39, label %bb.h
    i32 92, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !154  ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !153
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !151
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e), !inline_history !6
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !154 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit

_ZN3fmt3v1114basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.e, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.k = phi i64 [ %i.d, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !152
  store i64 %.pre-phi.i.i, ptr %i.c, align 8, !tbaa !154
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 92, ptr %i.m, align 1, !tbaa !93
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !154  ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !153
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !151
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p), !inline_history !6
  %.pre.i.i28 = load i64, ptr %i.n, align 8, !tbaa !154 ; 2 uses
  %.pre2.i.i29 = add i64 %.pre.i.i28, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit30

_ZN3fmt3v1114basic_appenderIcEaSEc.exit30:        ; preds = %bb.d, %bb.e
  %.pre-phi.i.i27 = phi i64 [ %i.p, %bb.d ], [ %.pre2.i.i29, %bb.e ]
  %i.v = phi i64 [ %i.o, %bb.d ], [ %.pre.i.i28, %bb.e ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !152
  store i64 %.pre-phi.i.i27, ptr %i.n, align 8, !tbaa !154
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 92, ptr %i.x, align 1, !tbaa !93
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !154  ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !153
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !151
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa), !inline_history !6
  %.pre.i.i33 = load i64, ptr %i.y, align 8, !tbaa !154 ; 2 uses
  %.pre2.i.i34 = add i64 %.pre.i.i33, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit35

_ZN3fmt3v1114basic_appenderIcEaSEc.exit35:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i32 = phi i64 [ %i.aa, %bb.f ], [ %.pre2.i.i34, %bb.g ]
  %i.ag = phi i64 [ %i.z, %bb.f ], [ %.pre.i.i33, %bb.g ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !152
  store i64 %.pre-phi.i.i32, ptr %i.y, align 8, !tbaa !154
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 92, ptr %i.ai, align 1, !tbaa !93
  br label %bb.q

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.aj = trunc nuw nsw i32 %i.b to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !154 ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
end_hunk_3
