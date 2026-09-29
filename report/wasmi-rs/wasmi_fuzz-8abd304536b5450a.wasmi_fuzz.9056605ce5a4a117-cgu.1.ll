Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_fuzz-8abd304536b5450a.wasmi_fuzz.9056605ce5a4a117-cgu.1?download=true
inline.NumInlined: 133
inline.NumDeleted: 74
begin_hunk_0_@_RNvXs0_NtNtCsG258MDvU3F_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBW_6helper12lazy_resolve0ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz:bb.a

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !263 ; 2 uses
  %i.d = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.d, label %common.resume, label %common.resume.sink.split

bb.e:                                             ; preds = %bb.c
  %.val.i.i.i = load i64, ptr %0, align 8, !alias.scope !263 ; 2 uses
  %i.e = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split

common.resume.sink.split:                         ; preds = %bb.d, %bb.g
  %.val2.i.i.sink = phi i64 [ %.val2.i.i, %bb.g ], [ %.val2.i.i.i, %bb.d ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.c, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.f, align 8, !nonnull !4, !noundef !4
  %i.g = mul nuw i64 %.val2.i.i.sink, 56
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.h, %bb.g ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsG258MDvU3F_3std9backtrace14BacktraceFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !264 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i, 0
  br i1 %i.i, label %common.resume, label %common.resume.sink.split

bb.h:                                             ; preds = %bb.f
  %.val.i.i = load i64, ptr %0, align 8, !alias.scope !264 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i, 0
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split: ; preds = %bb.h, %bb.e
  %.val.i.i.sink = phi i64 [ %.val.i.i.i, %bb.e ], [ %.val.i.i, %bb.h ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.l = mul nuw i64 %.val.i.i.sink, 56
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvNtNtCsG258MDvU3F_3std9backtrace6helper12lazy_resolve0ECscoiT177WhKJ_10wasmi_fuzz.exit.sink.split, %bb.h, %bb.e, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB6_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !13, !noundef !4
  %i.b = zext nneg i8 %i.a to i64
  %i.c = load ptr, ptr @_RNvNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB8_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, align 8, !nonnull !4, !noundef !4
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB8_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt7___NAMES, i64 8), align 8, !noundef !4
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter27debug_c_like_enum_write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @_RNvNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB8_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt8___OFFSET, i64 noundef 13, i64 noundef %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_Cs7tz819kMsd3_12block_bufferINtB5_11BlockBufferINtNtCs8I1Ugy73B0z_7typenum4uint4UIntIBR_IBR_IBR_IBR_IBR_IBR_NtBT_5UTermNtNtBV_3bit2B1ENtB22_2B0EB2f_EB2f_EB2f_EB2f_EB2f_ENtB5_5EagerENtNtCskKLDkoKarTP_4core7default7Default7defaultCscoiT177WhKJ_10wasmi_fuzz(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([65 x i8]) align 1 captures(none) dereferenceable(65) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXsg_CseMxgY3HaIuJ_13generic_arrayINtB6_12GenericArrayhINtNtCs8I1Ugy73B0z_7typenum4uint4UIntIBV_IBV_IBV_IBV_IBV_IBV_NtBX_5UTermNtNtBZ_3bit2B1ENtB26_2B0EB2j_EB2j_EB2j_EB2j_EB2j_EEINtNtB6_8sequence15GenericSequencehE8generateNCNvXNtB6_5implsBz_NtNtCskKLDkoKarTP_4core7default7Default7default0ECscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef nonnull sret([64 x i8]) align 1 captures(none) dereferenceable(64) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 0, ptr %i.a, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCscoiT177WhKJ_10wasmi_fuzz6moduleNtB5_9WatSourceNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !12, !noundef !4
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @26, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std9backtrace15BacktraceSymbolENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 72
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTjNtNtNtNtCs9FmeSmcCnTG_10wasmparser7readers4core14branch_hinting10BranchHintEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVectENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #25
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtCs13fhi2aYsSw_7flagset7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !align !270, !noundef !4
  %.val = load i16, ptr %i.d, align 2
  %.val1 = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !4, !align !12, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !4, !nonnull !4 ; 2 uses
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 8) #29, !inline_history !265
  br i1 %i.h, label %_RNvXs1_Cs13fhi2aYsSw_7flagsetINtB5_7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.427.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader.i
  %.sroa.83.0.i = phi i64 [ 0, %.preheader.i ], [ %i.o, %bb.d ] ; 2 uses
  %.sroa.0.04.i = phi i64 [ 0, %.preheader.i ], [ %i.l, %bb.d ] ; 3 uses
  %umax.i.i.i = call i64 @llvm.umax.i64(i64 %.sroa.0.04.i, i64 12)
  %exitcond.not.i.i.i15 = icmp ugt i64 %.sroa.0.04.i, 11
  br i1 %exitcond.not.i.i.i15, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.k = phi i64 [ %i.l, %bb.c ], [ %.sroa.0.04.i, %bb.b ] ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr @116, i64 %i.k
  %3 = load i8, ptr %2, align 1, !range !13, !noalias !271, !noundef !4 ; 2 uses
  %i.l = add nuw nsw i64 %i.k, 1                  ; 3 uses
  %4 = zext nneg i8 %3 to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtCs13fhi2aYsSw_7flagset7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz, i64 %4
  %switch.load = load i16, ptr %switch.gep, align 2
  %i.m = or i16 %switch.load, %.val
  %i.n = icmp eq i16 %i.m, -1
  br i1 %i.n, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.83.0.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %3, ptr %i.c, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not52.i = icmp eq i64 %.sroa.83.0.i, 0        ; 2 uses
  %spec.select.i = select i1 %.not52.i, ptr inttoptr (i64 1 to ptr), ptr @24
  %spec.select20.i = select i1 %.not52.i, i64 0, i64 3
  store ptr %spec.select.i, ptr %i.b, align 8
  store i64 %spec.select20.i, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCscoiT177WhKJ_10wasmi_fuzz, ptr %.sroa.423.0..sroa_idx.i, align 8
  store ptr %i.c, ptr %i.j, align 8
  store ptr @_RNvXs1A_NtCs7wImhEnBy0k_10wasm_smith4coreNtB6_15InstructionKindNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.427.0..sroa_idx.i, align 8
  %i.p = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2, ptr noundef nonnull @25, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.p, label %_RNvXs1_Cs13fhi2aYsSw_7flagsetINtB5_7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz.exit, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.c
  %i.q = call noundef zeroext i1 %i.g(ptr noundef nonnull %.val1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 1) #29, !inline_history !265
  br label %_RNvXs1_Cs13fhi2aYsSw_7flagsetINtB5_7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz.exit

_RNvXs1_Cs13fhi2aYsSw_7flagsetINtB5_7FlagSetNtNtCs7wImhEnBy0k_10wasm_smith4core15InstructionKindENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz.exit: ; preds = %bb.d, %bb.a, %._crit_edge
  %.sroa.0.0.i = phi i1 [ %i.q, %._crit_edge ], [ true, %bb.a ], [ true, %bb.d ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRbNtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsg_NtCskKLDkoKarTP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRhNtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !275, !noalias !276, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXse_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsg_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit

_RNvXsU_NtNtCskKLDkoKarTP_4core3fmt3numhNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRmNtB6_5Debug3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !280, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !281, !noalias !282, !noundef !4 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864
  %.not1.i = icmp eq i32 %i.e, 0
  br i1 %.not1.i, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsu_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtNtCskKLDkoKarTP_4core3fmt3num3impmNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsw_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit

_RNvXsW_NtNtCskKLDkoKarTP_4core3fmt3nummNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1n_NtCs7wImhEnBy0k_10wasm_smith4coreNtB6_16InstructionKindsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 16, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs1y_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_14ChunksExactMuthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCscoiT177WhKJ_10wasmi_fuzz(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = mul i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.g = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.b, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtCscoiT177WhKJ_10wasmi_fuzz5valueNtNtCsefoF4u9kbII_5wasmi5value3ValINtNtCskKLDkoKarTP_4core7convert4FromNtB5_7FuzzValE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 16, !range !283, !noundef !4 ; 2 uses
  switch i8 %i.a, label %default.unreachable2 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.d, align 4
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i128, ptr %i.n, align 16, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i128 %i.o, ptr %i.p, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !10, !noundef !4
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.k, label %bb.j, !prof !9

bb.h:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !10, !noundef !4
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.m, label %bb.l, !prof !9

end_hunk_0
