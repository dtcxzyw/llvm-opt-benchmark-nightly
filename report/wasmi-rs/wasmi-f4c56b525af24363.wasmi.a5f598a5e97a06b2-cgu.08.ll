Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi-f4c56b525af24363.wasmi.a5f598a5e97a06b2-cgu.08?download=true
inline.NumInlined: 623
inline.NumDeleted: 231
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state9CallStackEBL_:bb.a

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB19_4core7exports6ExportENCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB2H_12ModuleParser15process_exports0ETINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtB2J_6export9ExternIdxEINtNtB6_6result6ResultzNtNtB2L_5error5ErrorENCINvXso_B51_IB4Z_INtNtCsg06799QCvd1_17wasmi_collections3map3MapB3X_B4y_EB5l_EINtNtNtB4_6traits7collect12FromIteratorIB4Z_B3W_B5l_EE9from_iterBQ_E0B5Y_EB2L_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false)
  invoke void @_RINvXsc_NtCsg06799QCvd1_17wasmi_collections3mapINtB6_3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorTBT_B1u_EE9from_iterINtNtB2q_8adapters12GenericShuntINtNtB3G_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB4t_4core7exports6ExportENCNvMNtB1y_6parserNtB61_12ModuleParser15process_exports0EINtNtB2s_6result6ResultzNtNtB1A_5error5ErrorEEEB1A_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsg06799QCvd1_17wasmi_collections3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENtNtB2e_5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_TB1x_B28_EB2X_EE9from_iterINtNtNtB3p_8adapters3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB51_4core7exports6ExportENCNvMNtB2c_6parserNtB6z_12ModuleParser15process_exports0EE0B2e_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = load ptr, ptr %i.c, align 8, !align !14, !noundef !4
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit, label %bb.f

_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsg06799QCvd1_17wasmi_collections3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENtNtB2e_5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_TB1x_B28_EB2X_EE9from_iterINtNtNtB3p_8adapters3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB51_4core7exports6ExportENCNvMNtB2c_6parserNtB6z_12ModuleParser15process_exports0EE0B2e_.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = load ptr, ptr %i.c, align 8, !align !14, !noundef !4 ; 2 uses
  %.not.not = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsg06799QCvd1_17wasmi_collections3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENtNtB2e_5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_TB1x_B28_EB2X_EE9from_iterINtNtNtB3p_8adapters3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB51_4core7exports6ExportENCNvMNtB2c_6parserNtB6z_12ModuleParser15process_exports0EE0B2e_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8, !alias.scope !409
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg06799QCvd1_17wasmi_collections3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB22_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg06799QCvd1_17wasmi_collections3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB22_.exit: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %_RNCINvXso_NtCskKLDkoKarTP_4core6resultINtB8_6ResultINtNtCsg06799QCvd1_17wasmi_collections3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENtNtB2e_5error5ErrorEINtNtNtNtBa_4iter6traits7collect12FromIteratorIBB_TB1x_B28_EB2X_EE9from_iterINtNtNtB3p_8adapters3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB51_4core7exports6ExportENCNvMNtB2c_6parserNtB6z_12ModuleParser15process_exports0EE0B2e_.exit
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !410
  store i64 1, ptr %0, align 8, !alias.scope !410
  call void @_RNvXNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB2_8BTreeMapINtNtB8_5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsg06799QCvd1_17wasmi_collections3map3MapINtNtCsexYYUdYSQU6_5alloc5boxed3BoxeENtNtNtCsefoF4u9kbII_5wasmi6module6export9ExternIdxEEB22_.exit

bb.e:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit: ; preds = %bb.f, %bb.b
  resume { ptr, i32 } %i.d

bb.f:                                             ; preds = %bb.b
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB19_4core8elements7ElementENCNvMNtNtCsefoF4u9kbII_5wasmi6module6parserNtB2J_12ModuleParser15process_element0ENtNtB2L_7element14ElementSegmentINtNtB6_6result6ResultzNtNtB2N_5error5ErrorENCINvXso_B4x_IB4v_INtNtCsexYYUdYSQU6_5alloc5boxed3BoxSB3Y_EB4R_EINtNtNtB4_6traits7collect12FromIteratorIB4v_B3Y_B4R_EE9from_iterBQ_E0B5u_EB2N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !430
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !431
  store ptr %i.c, ptr %i.a, align 8, !alias.scope !432, !noalias !433
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.4.0..sroa_idx14, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !alias.scope !432, !noalias !433
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEINtB2_12SpecFromIterBU_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB2g_3map3MapINtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB3p_4core8elements7ElementENCNvMNtBY_6parserNtB4Z_12ModuleParser15process_element0EINtNtB2k_6result6ResultzNtNtB10_5error5ErrorEEE9from_iterB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %.noexc unwind label %.body

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !431
  %i.d = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentE16into_boxed_sliceBK_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.b unwind label %.body      ; 2 uses

.body:                                            ; preds = %.noexc, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !align !14, !noundef !4
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit, label %bb.j

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !430
  %i.g = extractvalue { ptr, i64 } %i.d, 0        ; 7 uses
  %i.h = extractvalue { ptr, i64 } %i.d, 1        ; 7 uses
  %i.i = load ptr, ptr %i.c, align 8, !align !14, !noundef !4 ; 2 uses
  %.not.not = icmp eq ptr %i.i, null
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  store ptr %i.g, ptr %0, align 8, !alias.scope !434
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %i.j, align 8, !alias.scope !434
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEEB1h_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEEB1h_.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.k, align 8, !alias.scope !435
  store ptr null, ptr %0, align 8, !alias.scope !435
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %cond = icmp eq i64 %i.h, 0
  br i1 %cond, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEEB1h_.exit, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.l = icmp eq i64 %i.n, %i.h
  br i1 %i.l, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.sroa.0.0.i.i20 = phi i64 [ %i.n, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %.sroa.0.0.i.i20
  %i.n = add nuw nsw i64 %.sroa.0.0.i.i20, 1      ; 4 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(56) %i.m)
          to label %bb.e unwind label %bb.g

bb.f:                                             ; preds = %.lr.ph22
  %i.o = add i64 %.sroa.0.1.i.i21, 1              ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.h
  br i1 %i.p, label %.body.thread, label %.lr.ph22

bb.g:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = icmp eq i64 %i.n, %i.h
  br i1 %i.r, label %.body.thread, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i21 = phi i64 [ %i.o, %bb.f ], [ %i.n, %bb.g ] ; 2 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %.sroa.0.1.i.i21
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEBH_(ptr noalias nofree noundef readonly align 8 dereferenceable(56) %i.s) #26
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %.lr.ph22
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !436
  unreachable

.body.thread:                                     ; preds = %bb.f, %bb.g
  %i.u = mul nuw nsw i64 %i.h, 56
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.u, i64 noundef 8) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.e
  %i.v = mul nuw nsw i64 %i.h, 56
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef %i.v, i64 noundef 8) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCsefoF4u9kbII_5wasmi6module7element14ElementSegmentEEB1h_.exit

bb.i:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit: ; preds = %.body.thread, %bb.j, %.body
  %.pn18 = phi { ptr, i32 } [ %i.q, %.body.thread ], [ %i.e, %bb.j ], [ %i.e, %.body ]
  resume { ptr, i32 } %.pn18

bb.j:                                             ; preds = %.body
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsefoF4u9kbII_5wasmi5error5ErrorEBF_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultzNtNtCsefoF4u9kbII_5wasmi5error5ErrorEEB12_.exit unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtB8_9ConstExpr3new7expr_oplllEBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.9 = alloca [3 x i8], align 1             ; 5 uses
  %.sroa.6 = alloca [3 x i8], align 1             ; 5 uses
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 12 uses
  %i.h = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_RNvMsq_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtB5_14ConstExprStack4pop2(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  %i.i = load i8, ptr %i.h, align 8, !range !21, !noundef !4 ; 6 uses
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, i64 3, i1 false)
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.69.0.copyload = load i32, ptr %.sroa.69.0..sroa_idx, align 4 ; 12 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 12 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.064.0.copyload = load i8, ptr %i.j, align 8 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.0..sroa_idx, i64 3, i1 false)
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.976.0.copyload = load i32, ptr %.sroa.976.0..sroa_idx, align 4 ; 12 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8 ; 12 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %narrow204 = tail call i8 @llvm.usub.sat.i8(i8 %i.i, i8 5)
  %i.k = add i8 %.sroa.064.0.copyload, -6
  %i.l = zext i8 %i.k to i64
  %i.m = icmp ugt i8 %.sroa.064.0.copyload, 5
  %i.n = add nuw nsw i64 %i.l, 1
  %i.o = select i1 %i.m, i64 %i.n, i64 0          ; 4 uses
  switch i8 %narrow204, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23
  unreachable

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  unreachable

bb.e:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.d [
    i64 0, label %bb.i
    i64 1, label %bb.k
    i64 2, label %bb.m
    i64 3, label %bb.o
  ]

bb.f:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.d [
    i64 0, label %bb.t
    i64 1, label %bb.v
    i64 2, label %bb.x
    i64 3, label %bb.z
  ]

bb.g:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.d [
    i64 0, label %bb.ad
    i64 1, label %bb.af
    i64 2, label %bb.ah
    i64 3, label %bb.aj
  ]

bb.h:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.d [
    i64 0, label %bb.an
    i64 1, label %bb.ar
    i64 2, label %bb.av
    i64 3, label %bb.az
  ]

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !469
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 56, i64 noundef range(i64 1, 9) 8) #25, !noalias !469 ; 13 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !23

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #28, !noalias !469
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.i
  store i8 %i.i, ptr %i.p, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4155.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6, i64 3, i1 false)
  %.sroa.5.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %.sroa.69.0.copyload, ptr %.sroa.5.0..sroa_idx156, align 4
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.14.0.copyload, ptr %.sroa.6157.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.18.0.copyload, ptr %.sroa.7.0..sroa_idx158, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 %.sroa.064.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9159.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9, i64 3, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 %.sroa.976.0.copyload, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %.sroa.17.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %.sroa.21.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %2, ptr %.sroa.13.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @10, ptr %i.s, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !470
  %i.t = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #25, !noalias !470 ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.l, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit134, !prof !23

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #28, !noalias !470
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit134: ; preds = %bb.k
  store i8 %i.i, ptr %i.t, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4161.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6, i64 3, i1 false)
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %.sroa.69.0.copyload, ptr %.sroa.5162.0..sroa_idx, align 4
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.14.0.copyload, ptr %.sroa.6163.0..sroa_idx, align 8
  %.sroa.7164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.18.0.copyload, ptr %.sroa.7164.0..sroa_idx, align 8
  %.sroa.8165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %2, ptr %.sroa.8165.0..sroa_idx, align 8
  %.sroa.9166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i32 %.sroa.976.0.copyload, ptr %.sroa.9166.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @11, ptr %i.w, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.m:                                             ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !471
  %i.x = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #25, !noalias !471 ; 9 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.n, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit135, !prof !23

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #28, !noalias !471
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit135: ; preds = %bb.m
  store i8 %i.i, ptr %i.x, align 8
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4169.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6, i64 3, i1 false)
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %.sroa.69.0.copyload, ptr %.sroa.5170.0..sroa_idx, align 4
  %.sroa.6171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.14.0.copyload, ptr %.sroa.6171.0..sroa_idx, align 8
  %.sroa.7172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.sroa.18.0.copyload, ptr %.sroa.7172.0..sroa_idx, align 8
  %.sroa.8173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %2, ptr %.sroa.8173.0..sroa_idx, align 8
  %.sroa.9174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 %.sroa.976.0.copyload, ptr %.sroa.9174.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @12, ptr %i.aa, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.o:                                             ; preds = %bb.e
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6, i64 3, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17.0.copyload), "nonnull"(ptr %.sroa.21.0.copyload) ]
  store i8 %i.i, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %.sroa.69.0.copyload, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.14.0.copyload, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.18.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.17.0.copyload, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %.sroa.21.0.copyload, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %2, ptr %i.ad, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !472
  %i.ae = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #25, !noalias !472 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.p, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEs1_0E3newBT_.exit, !prof !23

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #28
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_oplllEs1_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g) #26
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.bb, %bb.ax, %bb.at, %bb.ap, %bb.al, %bb.ab, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.cx, %bb.ax ], [ %i.ag, %bb.q ], [ %i.bb, %bb.ab ], [ %i.bw, %bb.al ], [ %i.cf, %bb.ap ], [ %i.co, %bb.at ], [ %i.dh, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEs1_0E3newBT_.exit: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @13, ptr %i.aj, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s

bb.s:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsd_0E3newBT_.exit, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsc_0E3newBT_.exit, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsb_0E3newBT_.exit, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsa_0E3newBT_.exit, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEs9_0E3newBT_.exit, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit144, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit143, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit142, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEs5_0E3newBT_.exit, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit139, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit138, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit137, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEs1_0E3newBT_.exit, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit135, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit134, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  ret void

bb.t:                                             ; preds = %bb.f
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !473
  %i.ak = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #25, !noalias !473 ; 9 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.u, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit137, !prof !23

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #28, !noalias !473
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit137: ; preds = %bb.t
  store i8 %.sroa.064.0.copyload, ptr %i.ak, align 8
  %.sroa.4177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4177.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9, i64 3, i1 false)
  %.sroa.5178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5178.0..sroa_idx, align 4
  %.sroa.6179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.17.0.copyload, ptr %.sroa.6179.0..sroa_idx, align 8
  %.sroa.7180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.sroa.21.0.copyload, ptr %.sroa.7180.0..sroa_idx, align 8
  %.sroa.8181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %2, ptr %.sroa.8181.0..sroa_idx, align 8
  %.sroa.9182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i32 %.sroa.69.0.copyload, ptr %.sroa.9182.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @14, ptr %i.an, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.v:                                             ; preds = %bb.f
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !474
  %i.ao = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #25, !noalias !474 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.w, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit138, !prof !23

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28, !noalias !474
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit138: ; preds = %bb.v
  store ptr %2, ptr %i.ao, align 8
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %.sroa.69.0.copyload, ptr %.sroa.4185.0..sroa_idx, align 8
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5186.0..sroa_idx, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @15, ptr %i.ar, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.x:                                             ; preds = %bb.f
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !475
  %i.as = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #25, !noalias !475 ; 5 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.y, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit139, !prof !23

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28, !noalias !475
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit139: ; preds = %bb.x
  store ptr %2, ptr %i.as, align 8
  %.sroa.4188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %.sroa.69.0.copyload, ptr %.sroa.4188.0..sroa_idx, align 8
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5189.0..sroa_idx, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @16, ptr %i.av, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.z:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17.0.copyload), "nonnull"(ptr %.sroa.21.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %.sroa.69.0.copyload, ptr %i.aw, align 8
  store ptr %.sroa.17.0.copyload, ptr %i.f, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.21.0.copyload, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %2, ptr %i.ay, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !476
  %i.az = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #25, !noalias !476 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.aa, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEs5_0E3newBT_.exit, !prof !23

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc140 unwind label %bb.ab

.noexc140:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_oplllEs5_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #26
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEs5_0E3newBT_.exit: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @17, ptr %i.be, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.ad:                                            ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !477
  %i.bf = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #25, !noalias !477 ; 9 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.ae, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit142, !prof !23

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #28, !noalias !477
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit142: ; preds = %bb.ad
  store i8 %.sroa.064.0.copyload, ptr %i.bf, align 8
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4191.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9, i64 3, i1 false)
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5192.0..sroa_idx, align 4
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.sroa.17.0.copyload, ptr %.sroa.6193.0..sroa_idx, align 8
  %.sroa.7194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %.sroa.21.0.copyload, ptr %.sroa.7194.0..sroa_idx, align 8
  %.sroa.8195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %2, ptr %.sroa.8195.0..sroa_idx, align 8
  %.sroa.9196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i32 %.sroa.69.0.copyload, ptr %.sroa.9196.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @18, ptr %i.bi, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.af:                                            ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !478
  %i.bj = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #25, !noalias !478 ; 5 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.ag, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit143, !prof !23

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28, !noalias !478
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit143: ; preds = %bb.af
  store ptr %2, ptr %i.bj, align 8
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %.sroa.69.0.copyload, ptr %.sroa.4199.0..sroa_idx, align 8
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5200.0..sroa_idx, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @19, ptr %i.bm, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.ah:                                            ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !479
  %i.bn = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #25, !noalias !479 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ai, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit144, !prof !23

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28, !noalias !479
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit144: ; preds = %bb.ah
  store ptr %2, ptr %i.bn, align 8
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %.sroa.69.0.copyload, ptr %.sroa.4202.0..sroa_idx, align 8
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5203.0..sroa_idx, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @20, ptr %i.bq, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.aj:                                            ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17.0.copyload), "nonnull"(ptr %.sroa.21.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %.sroa.69.0.copyload, ptr %i.br, align 8
  store ptr %.sroa.17.0.copyload, ptr %i.e, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.21.0.copyload, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %2, ptr %i.bt, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !480
  %i.bu = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #25, !noalias !480 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.ak, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEs9_0E3newBT_.exit, !prof !23

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc145 unwind label %bb.al

.noexc145:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_oplllEs9_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #26
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEs9_0E3newBT_.exit: ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @21, ptr %i.bz, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.an:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload), "nonnull"(ptr %.sroa.18.0.copyload) ]
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4115.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9, i64 3, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.14.0.copyload, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.18.0.copyload, ptr %i.cb, align 8
  store i8 %.sroa.064.0.copyload, ptr %i.d, align 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5116.0..sroa_idx, align 4
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.17.0.copyload, ptr %.sroa.6117.0..sroa_idx, align 8
  %.sroa.7118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.21.0.copyload, ptr %.sroa.7118.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %2, ptr %i.cc, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !481
  %i.cd = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #25, !noalias !481 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.ao, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsa_0E3newBT_.exit, !prof !23

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #28
          to label %.noexc147 unwind label %bb.ap

.noexc147:                                        ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_oplllEsa_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #26
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsa_0E3newBT_.exit: ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @22, ptr %i.ci, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.ar:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload), "nonnull"(ptr %.sroa.18.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.14.0.copyload, ptr %i.c, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.18.0.copyload, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.sroa.976.0.copyload, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %2, ptr %i.cl, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !482
  %i.cm = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #25, !noalias !482 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.as, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsb_0E3newBT_.exit, !prof !23

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc149 unwind label %bb.at

.noexc149:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_oplllEsb_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #26
          to label %common.resume unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsb_0E3newBT_.exit: ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @23, ptr %i.cr, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.av:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload), "nonnull"(ptr %.sroa.18.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.14.0.copyload, ptr %i.b, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.18.0.copyload, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.976.0.copyload, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.cu, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !483
  %i.cv = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #25, !noalias !483 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.aw, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsc_0E3newBT_.exit, !prof !23

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc151 unwind label %bb.ax

.noexc151:                                        ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_oplllEsc_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #26
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsc_0E3newBT_.exit: ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @24, ptr %i.da, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.az:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload), "nonnull"(ptr %.sroa.18.0.copyload), "nonnull"(ptr %.sroa.17.0.copyload), "nonnull"(ptr %.sroa.21.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.14.0.copyload, ptr %i.a, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.18.0.copyload, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.17.0.copyload, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.21.0.copyload, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.de, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !484
  %i.df = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #25, !noalias !484 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.ba, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsd_0E3newBT_.exit, !prof !23

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #28
          to label %.noexc153 unwind label %bb.bb

.noexc153:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_oplllEsd_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #26
          to label %common.resume unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_oplllEsd_0E3newBT_.exit: ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.df, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.df, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @25, ptr %i.dk, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtB8_9ConstExpr3new7expr_opxxxEBc_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.9 = alloca [3 x i8], align 1             ; 5 uses
  %.sroa.6 = alloca [3 x i8], align 1             ; 5 uses
  %i.a = alloca [40 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [48 x i8], align 8                ; 12 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 12 uses
  %i.h = alloca [48 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_RNvMsq_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtB5_14ConstExprStack4pop2(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  %i.i = load i8, ptr %i.h, align 8, !range !21, !noundef !4 ; 6 uses
  %.not = icmp eq i8 %i.i, -1
  br i1 %.not, label %bb.c, label %bb.b, !prof !23

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx, i64 3, i1 false)
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %.sroa.69.0.copyload = load i32, ptr %.sroa.69.0..sroa_idx, align 4 ; 12 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.14.0.copyload = load ptr, ptr %.sroa.14.0..sroa_idx, align 8 ; 12 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8 ; 12 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.064.0.copyload = load i8, ptr %i.j, align 8 ; 6 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9.0..sroa_idx, i64 3, i1 false)
  %.sroa.976.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %.sroa.976.0.copyload = load i32, ptr %.sroa.976.0..sroa_idx, align 4 ; 12 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8 ; 12 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %narrow204 = tail call i8 @llvm.usub.sat.i8(i8 %i.i, i8 5)
  %i.k = add i8 %.sroa.064.0.copyload, -6
  %i.l = zext i8 %i.k to i64
  %i.m = icmp ugt i8 %.sroa.064.0.copyload, 5
  %i.n = add nuw nsw i64 %i.l, 1
  %i.o = select i1 %i.m, i64 %i.n, i64 0          ; 4 uses
  switch i8 %narrow204, label %default.unreachable [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 57, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #23
  unreachable

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  unreachable

bb.e:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.d [
    i64 0, label %bb.i
    i64 1, label %bb.k
    i64 2, label %bb.m
    i64 3, label %bb.o
  ]

bb.f:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.d [
    i64 0, label %bb.t
    i64 1, label %bb.v
    i64 2, label %bb.x
    i64 3, label %bb.z
  ]

bb.g:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.d [
    i64 0, label %bb.ad
    i64 1, label %bb.af
    i64 2, label %bb.ah
    i64 3, label %bb.aj
  ]

bb.h:                                             ; preds = %bb.b
  switch i64 %i.o, label %bb.d [
    i64 0, label %bb.an
    i64 1, label %bb.ar
    i64 2, label %bb.av
    i64 3, label %bb.az
  ]

bb.i:                                             ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !517
  %i.p = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 56, i64 noundef range(i64 1, 9) 8) #25, !noalias !517 ; 13 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !23

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #28, !noalias !517
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.i
  store i8 %i.i, ptr %i.p, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4155.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6, i64 3, i1 false)
  %.sroa.5.0..sroa_idx156 = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %.sroa.69.0.copyload, ptr %.sroa.5.0..sroa_idx156, align 4
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %.sroa.14.0.copyload, ptr %.sroa.6157.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %.sroa.18.0.copyload, ptr %.sroa.7.0..sroa_idx158, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i8 %.sroa.064.0.copyload, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9159.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9, i64 3, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  store i32 %.sroa.976.0.copyload, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %.sroa.17.0.copyload, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %.sroa.21.0.copyload, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %2, ptr %.sroa.13.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @26, ptr %i.s, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !518
  %i.t = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #25, !noalias !518 ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.l, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit134, !prof !23

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #28, !noalias !518
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit134: ; preds = %bb.k
  store i8 %i.i, ptr %i.t, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4161.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6, i64 3, i1 false)
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %.sroa.69.0.copyload, ptr %.sroa.5162.0..sroa_idx, align 4
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.14.0.copyload, ptr %.sroa.6163.0..sroa_idx, align 8
  %.sroa.7164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.18.0.copyload, ptr %.sroa.7164.0..sroa_idx, align 8
  %.sroa.8165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %2, ptr %.sroa.8165.0..sroa_idx, align 8
  %.sroa.9166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store i32 %.sroa.976.0.copyload, ptr %.sroa.9166.0..sroa_idx, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @27, ptr %i.w, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.m:                                             ; preds = %bb.e
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !519
  %i.x = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #25, !noalias !519 ; 9 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.n, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit135, !prof !23

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #28, !noalias !519
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit135: ; preds = %bb.m
  store i8 %i.i, ptr %i.x, align 8
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4169.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6, i64 3, i1 false)
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %.sroa.69.0.copyload, ptr %.sroa.5170.0..sroa_idx, align 4
  %.sroa.6171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %.sroa.14.0.copyload, ptr %.sroa.6171.0..sroa_idx, align 8
  %.sroa.7172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %.sroa.18.0.copyload, ptr %.sroa.7172.0..sroa_idx, align 8
  %.sroa.8173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store ptr %2, ptr %.sroa.8173.0..sroa_idx, align 8
  %.sroa.9174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 %.sroa.976.0.copyload, ptr %.sroa.9174.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @28, ptr %i.aa, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.o:                                             ; preds = %bb.e
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6, i64 3, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17.0.copyload), "nonnull"(ptr %.sroa.21.0.copyload) ]
  store i8 %i.i, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %.sroa.69.0.copyload, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.14.0.copyload, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %.sroa.18.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %.sroa.17.0.copyload, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %.sroa.21.0.copyload, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %2, ptr %i.ad, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !520
  %i.ae = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #25, !noalias !520 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.p, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEs1_0E3newBT_.exit, !prof !23

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #28
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_opxxxEs1_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g) #26
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.bb, %bb.ax, %bb.at, %bb.ap, %bb.al, %bb.ab, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.cx, %bb.ax ], [ %i.ag, %bb.q ], [ %i.bb, %bb.ab ], [ %i.bw, %bb.al ], [ %i.cf, %bb.ap ], [ %i.co, %bb.at ], [ %i.dh, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEs1_0E3newBT_.exit: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @29, ptr %i.aj, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.s

bb.s:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsd_0E3newBT_.exit, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsc_0E3newBT_.exit, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsb_0E3newBT_.exit, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsa_0E3newBT_.exit, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEs9_0E3newBT_.exit, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit144, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit143, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit142, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEs5_0E3newBT_.exit, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit139, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit138, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit137, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEs1_0E3newBT_.exit, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit135, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit134, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  ret void

bb.t:                                             ; preds = %bb.f
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !521
  %i.ak = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #25, !noalias !521 ; 9 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.u, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit137, !prof !23

bb.u:                                             ; preds = %bb.t
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #28, !noalias !521
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit137: ; preds = %bb.t
  store i8 %.sroa.064.0.copyload, ptr %i.ak, align 8
  %.sroa.4177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4177.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9, i64 3, i1 false)
  %.sroa.5178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5178.0..sroa_idx, align 4
  %.sroa.6179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.17.0.copyload, ptr %.sroa.6179.0..sroa_idx, align 8
  %.sroa.7180.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.sroa.21.0.copyload, ptr %.sroa.7180.0..sroa_idx, align 8
  %.sroa.8181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr %2, ptr %.sroa.8181.0..sroa_idx, align 8
  %.sroa.9182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i32 %.sroa.69.0.copyload, ptr %.sroa.9182.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @30, ptr %i.an, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.v:                                             ; preds = %bb.f
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !522
  %i.ao = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #25, !noalias !522 ; 5 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.w, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit138, !prof !23

bb.w:                                             ; preds = %bb.v
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28, !noalias !522
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit138: ; preds = %bb.v
  store ptr %2, ptr %i.ao, align 8
  %.sroa.4185.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i32 %.sroa.69.0.copyload, ptr %.sroa.4185.0..sroa_idx, align 8
  %.sroa.5186.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5186.0..sroa_idx, align 4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @31, ptr %i.ar, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.x:                                             ; preds = %bb.f
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !523
  %i.as = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #25, !noalias !523 ; 5 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.y, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit139, !prof !23

bb.y:                                             ; preds = %bb.x
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28, !noalias !523
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit139: ; preds = %bb.x
  store ptr %2, ptr %i.as, align 8
  %.sroa.4188.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %.sroa.69.0.copyload, ptr %.sroa.4188.0..sroa_idx, align 8
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5189.0..sroa_idx, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @32, ptr %i.av, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.z:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17.0.copyload), "nonnull"(ptr %.sroa.21.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %.sroa.69.0.copyload, ptr %i.aw, align 8
  store ptr %.sroa.17.0.copyload, ptr %i.f, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.21.0.copyload, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %2, ptr %i.ay, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !524
  %i.az = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #25, !noalias !524 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.aa, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEs5_0E3newBT_.exit, !prof !23

bb.aa:                                            ; preds = %bb.z
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc140 unwind label %bb.ab

.noexc140:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_opxxxEs5_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #26
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEs5_0E3newBT_.exit: ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @33, ptr %i.be, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.s

bb.ad:                                            ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !525
  %i.bf = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #25, !noalias !525 ; 9 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.ae, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit142, !prof !23

bb.ae:                                            ; preds = %bb.ad
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #28, !noalias !525
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit142: ; preds = %bb.ad
  store i8 %.sroa.064.0.copyload, ptr %i.bf, align 8
  %.sroa.4191.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4191.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9, i64 3, i1 false)
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5192.0..sroa_idx, align 4
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr %.sroa.17.0.copyload, ptr %.sroa.6193.0..sroa_idx, align 8
  %.sroa.7194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store ptr %.sroa.21.0.copyload, ptr %.sroa.7194.0..sroa_idx, align 8
  %.sroa.8195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store ptr %2, ptr %.sroa.8195.0..sroa_idx, align 8
  %.sroa.9196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i32 %.sroa.69.0.copyload, ptr %.sroa.9196.0..sroa_idx, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @34, ptr %i.bi, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.af:                                            ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !526
  %i.bj = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #25, !noalias !526 ; 5 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.ag, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit143, !prof !23

bb.ag:                                            ; preds = %bb.af
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28, !noalias !526
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit143: ; preds = %bb.af
  store ptr %2, ptr %i.bj, align 8
  %.sroa.4199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 %.sroa.69.0.copyload, ptr %.sroa.4199.0..sroa_idx, align 8
  %.sroa.5200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5200.0..sroa_idx, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @35, ptr %i.bm, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.ah:                                            ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !527
  %i.bn = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #25, !noalias !527 ; 5 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.ai, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit144, !prof !23

bb.ai:                                            ; preds = %bb.ah
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #28, !noalias !527
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit144: ; preds = %bb.ah
  store ptr %2, ptr %i.bn, align 8
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i32 %.sroa.69.0.copyload, ptr %.sroa.4202.0..sroa_idx, align 8
  %.sroa.5203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5203.0..sroa_idx, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bn, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @36, ptr %i.bq, align 8
  store i8 8, ptr %0, align 8
  br label %bb.s

bb.aj:                                            ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.17.0.copyload), "nonnull"(ptr %.sroa.21.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 %.sroa.69.0.copyload, ptr %i.br, align 8
  store ptr %.sroa.17.0.copyload, ptr %i.e, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.21.0.copyload, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %2, ptr %i.bt, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !528
  %i.bu = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #25, !noalias !528 ; 3 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.ak, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEs9_0E3newBT_.exit, !prof !23

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc145 unwind label %bb.al

.noexc145:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_opxxxEs9_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #26
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEs9_0E3newBT_.exit: ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bu, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @37, ptr %i.bz, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.s

bb.an:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload), "nonnull"(ptr %.sroa.18.0.copyload) ]
  %.sroa.4115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4115.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.9, i64 3, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %.sroa.14.0.copyload, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %.sroa.18.0.copyload, ptr %i.cb, align 8
  store i8 %.sroa.064.0.copyload, ptr %i.d, align 8
  %.sroa.5116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %.sroa.976.0.copyload, ptr %.sroa.5116.0..sroa_idx, align 4
  %.sroa.6117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %.sroa.17.0.copyload, ptr %.sroa.6117.0..sroa_idx, align 8
  %.sroa.7118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.21.0.copyload, ptr %.sroa.7118.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %2, ptr %i.cc, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !529
  %i.cd = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #25, !noalias !529 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.ao, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsa_0E3newBT_.exit, !prof !23

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #28
          to label %.noexc147 unwind label %bb.ap

.noexc147:                                        ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_opxxxEsa_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #26
          to label %common.resume unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsa_0E3newBT_.exit: ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cd, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @38, ptr %i.ci, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

bb.ar:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload), "nonnull"(ptr %.sroa.18.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.14.0.copyload, ptr %i.c, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.sroa.18.0.copyload, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.sroa.976.0.copyload, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %2, ptr %i.cl, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !530
  %i.cm = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #25, !noalias !530 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.as, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsb_0E3newBT_.exit, !prof !23

bb.as:                                            ; preds = %bb.ar
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc149 unwind label %bb.at

.noexc149:                                        ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %bb.as
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_opxxxEsb_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #26
          to label %common.resume unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsb_0E3newBT_.exit: ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cm, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cm, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @39, ptr %i.cr, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.s

bb.av:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload), "nonnull"(ptr %.sroa.18.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.14.0.copyload, ptr %i.b, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.18.0.copyload, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %.sroa.976.0.copyload, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %2, ptr %i.cu, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !531
  %i.cv = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #25, !noalias !531 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.aw, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsc_0E3newBT_.exit, !prof !23

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #28
          to label %.noexc151 unwind label %bb.ax

.noexc151:                                        ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_opxxxEsc_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #26
          to label %common.resume unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsc_0E3newBT_.exit: ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cv, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %i.cz, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @40, ptr %i.da, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.s

bb.az:                                            ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.copyload), "nonnull"(ptr %.sroa.18.0.copyload), "nonnull"(ptr %.sroa.17.0.copyload), "nonnull"(ptr %.sroa.21.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.sroa.14.0.copyload, ptr %i.a, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.18.0.copyload, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.17.0.copyload, ptr %i.dc, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.21.0.copyload, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.de, align 8
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #25, !noalias !532
  %i.df = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #25, !noalias !532 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.ba, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsd_0E3newBT_.exit, !prof !23

bb.ba:                                            ; preds = %bb.az
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #28
          to label %.noexc153 unwind label %bb.bb

.noexc153:                                        ; preds = %bb.ba
  unreachable

bb.bb:                                            ; preds = %bb.ba
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBM_9ConstExpr3new7expr_opxxxEsd_0EBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a) #26
          to label %common.resume unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBP_9ConstExpr3new7expr_opxxxEsd_0E3newBT_.exit: ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.df, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.df, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @41, ptr %i.dk, align 8
  store i8 8, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.s
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtCsefoF4u9kbII_5wasmi6module8ImportedEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1C_8adapters5chain5ChainIB2K_IB2K_INtNtB2O_3map3MapINtNtNtBa_3vec9into_iter8IntoIterNtNtBS_6import10ImportNameENcNtBQ_4Func0EIB3q_B3G_NcNtBQ_5Table0EEIB3q_B3G_NcNtBQ_6Memory0EEIB3q_B3G_NcNtBQ_6Global0EEEBU_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !542
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(136) %0, i64 136, i1 false), !alias.scope !543, !noalias !544
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtCsefoF4u9kbII_5wasmi6module8ImportedEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainIB1X_IB1X_INtNtB21_3map3MapINtNtB4_9into_iter8IntoIterNtNtBW_6import10ImportNameENcNtBU_4Func0EIB2Z_B3f_NcNtBU_5Table0EEIB2Z_B3f_NcNtBU_6Memory0EEIB2Z_B3f_NcNtBU_6Global0EEE9from_iterBY_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.a), !noalias !545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !542
  %i.c = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsefoF4u9kbII_5wasmi6module8ImportedE16into_boxed_sliceBI_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map9FuncEntryEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1O_8adapters4take4TakeINtNtNtB1O_7sources11repeat_with10RepeatWithNvMsc_BS_BQ_6uninitEEEBW_(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map9FuncEntryEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters4take4TakeINtNtNtB2f_7sources11repeat_with10RepeatWithNvMsc_BW_BU_6uninitEEE9from_iterB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %0)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi6engine8code_map9FuncEntryE16into_boxed_sliceBK_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9ConstExprEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1P_8adapters3map3MapIB2X_INtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB3w_4core4init9ConstExprENCNvXs0_NtBU_7elementNtB57_14ElementSegmentINtNtB1R_7convert4FromNtNtB4y_8elements7ElementE4froms_0ENvMsr_BS_BQ_3newEEBW_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !555
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %0, i64 56, i1 false), !alias.scope !556, !noalias !557
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9ConstExprEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2a_INtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoIterNtNtNtB35_4core4init9ConstExprENCNvXs0_NtBY_7elementNtB4G_14ElementSegmentINtNtB2i_7convert4FromNtNtB47_8elements7ElementE4froms_0ENvMsr_BW_BU_3newEE9from_iterB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !noalias !558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !555
  %i.c = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9ConstExprE16into_boxed_sliceBK_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXsb_NtNtCsexYYUdYSQU6_5alloc5boxed4iterINtB8_3BoxSNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9ConstExprEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorBQ_E9from_iterINtNtNtB1P_8adapters3map3MapIB2X_INtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoItermENCNvXs0_NtBU_7elementNtB4E_14ElementSegmentINtNtB1R_7convert4FromNtNtNtB3w_4core8elements7ElementE4from0ENvMsr_BS_BQ_11new_funcrefEEBW_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(56) %0, i64 56, i1 false), !alias.scope !569, !noalias !570
  call void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9ConstExprEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapIB2a_INtNtCs9FmeSmcCnTG_10wasmparser7readers22SectionLimitedIntoItermENCNvXs0_NtBY_7elementNtB4d_14ElementSegmentINtNtB2i_7convert4FromNtNtNtB35_4core8elements7ElementE4from0ENvMsr_BW_BU_11new_funcrefEE9from_iterB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.a), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !568
  %i.c = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCsefoF4u9kbII_5wasmi6module9init_expr9ConstExprE16into_boxed_sliceBK_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { ptr, i64 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBa_9ConstExpr3new7expr_oplllE0Be_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %1, ptr nofree nonnull readnone captures(none) %2, ptr noalias nofree readonly align 8 captures(none) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.034.0.copyload = load i8, ptr %1, align 8
  %i.a = icmp eq i8 %.sroa.034.0.copyload, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.083.0.copyload = load i8, ptr %i.b, align 8
  %i.c = icmp eq i8 %.sroa.083.0.copyload, 0
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.f
  ret void

bb.f:                                             ; preds = %bb.c
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.sroa.686.0.copyload = load i32, ptr %.sroa.686.0..sroa_idx, align 4
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = tail call noundef i32 %i.e(i32 noundef %.sroa.637.0.copyload, i32 noundef %.sroa.686.0.copyload)
  store i8 0, ptr %0, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.f, ptr %.sroa.11.0..sroa_idx, align 4
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.15.0..sroa_idx, align 8
  br label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBa_9ConstExpr3new7expr_oplllEs0_0Be_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 1)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 3 uses
  %.sroa.034.0.copyload = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %.sroa.034.0.copyload, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load i32, ptr %i.c, align 8, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !4, !nonnull !4
  call void %i.f(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(address) dereferenceable(12) %i.a, ptr noundef nonnull %2, i32 noundef %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store i8 -1, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvNvMsr_NtNtCsefoF4u9kbII_5wasmi6module9init_exprNtBa_9ConstExpr3new7expr_oplllEs1_0Be_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.034.0.copyload = load i8, ptr %1, align 8
  %i.b = icmp eq i8 %.sroa.034.0.copyload, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 -1, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.637.0.copyload = load i32, ptr %.sroa.637.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !576)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !576, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !576, !nonnull !4, !align !14, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !noalias !577, !nonnull !4
  call void %i.h(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %3) #29, !noalias !576, !inline_history !24
  %i.i = load i8, ptr %i.a, align 8, !range !25, !noundef !4 ; 2 uses
  %.not67 = icmp eq i8 %i.i, -1
  br i1 %.not67, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.6173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.6173.0.copyload = load i32, ptr %.sroa.6173.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  switch i8 %i.i, label %default.unreachable [
    i8 0, label %bb.j
    i8 1, label %bb.h
    i8 2, label %bb.h
end_hunk_0
