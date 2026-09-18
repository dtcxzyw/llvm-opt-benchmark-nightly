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
  %i.e = fcmp ugt <4 x float> %i.b, splat (float f0xCF000000) ; 2 uses
  %i.f = select <4 x i1> %i.e, <4 x i32> zeroinitializer, <4 x i32> splat (i32 -2147483648)
  %3 = and <4 x i1> %i.e, %i.d
  %i.g = select <4 x i1> %3, <4 x i32> %i.c, <4 x i32> zeroinitializer
  %4 = or disjoint <4 x i32> %i.g, %i.f
  %i.h = fcmp ult <4 x float> %i.b, splat (float f0x4F000000)
  %i.i = select <4 x i1> %i.h, <4 x i32> %4, <4 x i32> splat (i32 2147483647)
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
