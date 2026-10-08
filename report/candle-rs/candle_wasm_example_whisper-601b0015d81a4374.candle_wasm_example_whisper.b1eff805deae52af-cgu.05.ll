Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_wasm_example_whisper-601b0015d81a4374.candle_wasm_example_whisper.b1eff805deae52af-cgu.05?download=true
inline.NumInlined: 893
inline.NumDeleted: 523
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsaPlfBUY5LAj_10serde_json5value5ValueECsfh9HxMbthk9_27candle_wasm_example_whisper:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc7raw_vec6RawVechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VechEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCsdIJosCPXwkf_5tokio7runtime4task4core7TrailerECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !align !8, !noundef !6 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  invoke void %i.e(ptr noundef %.val1)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit unwind label %bb.c, !inline_history !0

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !841)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !842, !noundef !6 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !843
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsfh9HxMbthk9_27candle_wasm_example_whisper.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCsdIJosCPXwkf_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #19
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsfh9HxMbthk9_27candle_wasm_example_whisper.exit unwind label %bb.h

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !845)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !846, !noundef !6 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsfh9HxMbthk9_27candle_wasm_example_whisper.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit
  %i.o = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !847
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.g, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsfh9HxMbthk9_27candle_wasm_example_whisper.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcDG0_INtNtNtCsf3Ta7LF998c_4core3ops8function2FnTRL1_INtNtNtCsdIJosCPXwkf_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l) #19
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsfh9HxMbthk9_27candle_wasm_example_whisper.exit3

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsfh9HxMbthk9_27candle_wasm_example_whisper.exit3: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsdIJosCPXwkf_5tokio4loom3std11unsafe_cell10UnsafeCellINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEEECsfh9HxMbthk9_27candle_wasm_example_whisper.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsdIJosCPXwkf_5tokio7runtime4task24TaskHarnessScheduleHooksECsfh9HxMbthk9_27candle_wasm_example_whisper.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCshVf899juJFK_6base646decode13decode_configReECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i24 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = icmp ugt i64 %2, -4
  br i1 %i.l, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = add nuw i64 %2, 3
  %i.n = lshr i64 %i.m, 2
  %i.o = mul nuw i64 %i.n, 3                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %i.o, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.p = load i64, ptr %i.i, align 8, !range !14, !noundef !6
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !903, !noundef !6 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.q, label %bb.d, label %bb.e, !prof !5

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.t, align 8
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !6, !noundef !6
  %i.w = icmp ule i64 %i.o, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %i.s, ptr %i.k, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 0, ptr %i.y, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.z = invoke noundef i64 @_RNvNtCshVf899juJFK_6base646decode10num_chunks(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc:                                           ; preds = %bb.e
  %i.aa = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.z, i64 6) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.eh, label %bb.f, !prof !5

bb.f:                                             ; preds = %.noexc
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  invoke void @_RNvMs1_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechE6resizeCsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.ac, i8 noundef 0)
          to label %switch.lookup unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

switch.lookup:                                    ; preds = %bb.f
  %i.ad = load i64, ptr %i.y, align 8, !alias.scope !905, !noalias !906, !noundef !6 ; 8 uses
  %i.ae = load ptr, ptr %i.x, align 8, !alias.scope !905, !noalias !906, !nonnull !6, !noundef !6 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  call void @llvm.experimental.noalias.scope.decl(metadata !908)
  %.sroa.04.2.extract.shift.i.i = lshr i24 %3, 16
  %trunc.i.i = zext nneg i24 %.sroa.04.2.extract.shift.i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RINvNtCshVf899juJFK_6base646decode13decode_configReECsfh9HxMbthk9_27candle_wasm_example_whisper, i64 %trunc.i.i
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 50 uses
  %i.af = and i64 %2, 7                           ; 2 uses
  switch i64 %i.af, label %bb.l [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 5, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
  ]

bb.g:                                             ; preds = %switch.lookup
  br label %bb.l

bb.h:                                             ; preds = %switch.lookup, %switch.lookup
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %.loopexit56, label %bb.m

bb.i:                                             ; preds = %switch.lookup
  br label %bb.l

bb.j:                                             ; preds = %switch.lookup
  br label %bb.l

bb.k:                                             ; preds = %switch.lookup
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.g, %switch.lookup
  %.sroa.013.0.i.i = phi i64 [ %i.af, %switch.lookup ], [ 8, %bb.g ], [ 10, %bb.i ], [ 11, %bb.j ], [ 12, %bb.k ]
  %i.ag = call i64 @llvm.usub.sat.i64(i64 range(i64 0, -9223372036854775808) %2, i64 %.sroa.013.0.i.i) ; 4 uses
  %i.ah = icmp samesign ult i64 %i.ag, 32
  br i1 %i.ah, label %.loopexit395.i.i, label %.split.i.i

bb.m:                                             ; preds = %bb.h
  %i.ai = add nsw i64 %2, -1
  %4 = getelementptr i8, ptr %1, i64 %2
  %i.aj = getelementptr i8, ptr %4, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !909, !noalias !910, !noundef !6 ; 3 uses
  %i.al = icmp eq i8 %i.ak, 61
  br i1 %i.al, label %.loopexit56, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = zext i8 %i.ak to i64
  %i.an = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !noalias !911, !noundef !6
  %i.ap = icmp eq i8 %i.ao, -1
  br i1 %i.ap, label %bb.o, label %.loopexit56

bb.o:                                             ; preds = %bb.n
  br label %.loopexit56

.split.i.i:                                       ; preds = %bb.l
  %i.aq = add nsw i64 %i.ag, -32
  br label %bb.p

bb.p:                                             ; preds = %.noexc15, %.split.i.i
  %.sroa.0.01376.i.i = phi i64 [ %i.z, %.split.i.i ], [ %i.ng, %.noexc15 ]
  %.sroa.020.01375.i.i = phi i64 [ 0, %.split.i.i ], [ %i.ar, %.noexc15 ] ; 34 uses
  %.sroa.044.01374.i.i = phi i64 [ 0, %.split.i.i ], [ %i.nf, %.noexc15 ] ; 4 uses
  %i.ar = add nuw nsw i64 %.sroa.020.01375.i.i, 32 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.020.01375.i.i ; 32 uses
  %i.at = add nuw i64 %.sroa.044.01374.i.i, 26    ; 2 uses
  %.not120.i.i = icmp ugt i64 %i.at, %i.ad
  br i1 %.not120.i.i, label %.invoke, label %bb.q, !prof !912

.loopexit395.i.i:                                 ; preds = %.noexc15, %bb.l
  %.sroa.044.1.i.i = phi i64 [ 0, %bb.l ], [ %i.nf, %.noexc15 ] ; 3 uses
  %.sroa.020.1.i.i = phi i64 [ 0, %bb.l ], [ %i.ar, %.noexc15 ] ; 4 uses
  %.sroa.0.1.i.i = phi i64 [ %i.z, %bb.l ], [ %i.ng, %.noexc15 ] ; 3 uses
  %i.au = icmp samesign ult i64 %i.ag, 8
  br i1 %i.au, label %.loopexit393.i.i, label %.split1377.i.i

bb.q:                                             ; preds = %bb.p
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.044.01374.i.i ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !913)
  call void @llvm.experimental.noalias.scope.decl(metadata !914)
  %i.aw = load i8, ptr %i.as, align 1, !alias.scope !915, !noalias !916, !noundef !6 ; 2 uses
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !914, !noalias !917, !noundef !6 ; 2 uses
  %i.ba = icmp eq i8 %i.az, -1
  br i1 %i.ba, label %.loopexit56, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !915, !noalias !916, !noundef !6 ; 2 uses
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !alias.scope !914, !noalias !917, !noundef !6 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, -1
  br i1 %i.bg, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !915, !noalias !916, !noundef !6 ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !alias.scope !914, !noalias !917, !noundef !6 ; 2 uses
  %i.bm = icmp eq i8 %i.bl, -1
  br i1 %i.bm, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bn = or disjoint i64 %.sroa.020.01375.i.i, 1
  br label %.loopexit56

bb.u:                                             ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !915, !noalias !916, !noundef !6 ; 2 uses
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !alias.scope !914, !noalias !917, !noundef !6 ; 2 uses
  %i.bt = icmp eq i8 %i.bs, -1
  br i1 %i.bt, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bu = or disjoint i64 %.sroa.020.01375.i.i, 2
  br label %.loopexit56

bb.w:                                             ; preds = %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.bw = load i8, ptr %i.bv, align 1, !alias.scope !915, !noalias !916, !noundef !6 ; 2 uses
  %i.bx = zext i8 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !alias.scope !914, !noalias !917, !noundef !6 ; 2 uses
  %i.ca = icmp eq i8 %i.bz, -1
  br i1 %i.ca, label %bb.z, label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.cb = or disjoint i64 %.sroa.020.01375.i.i, 3
  br label %.loopexit56

bb.y:                                             ; preds = %bb.w
  %i.cc = getelementptr inbounds nuw i8, ptr %i.as, i64 5
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !915, !noalias !916, !noundef !6 ; 2 uses
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !914, !noalias !917, !noundef !6 ; 2 uses
  %i.ch = icmp eq i8 %i.cg, -1
  br i1 %i.ch, label %bb.ab, label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.ci = or disjoint i64 %.sroa.020.01375.i.i, 4
  br label %.loopexit56

bb.aa:                                            ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %i.as, i64 6
  %i.ck = load i8, ptr %i.cj, align 1, !alias.scope !915, !noalias !916, !noundef !6 ; 2 uses
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !914, !noalias !917, !noundef !6 ; 2 uses
  %i.co = icmp eq i8 %i.cn, -1
  br i1 %i.co, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.cp = or disjoint i64 %.sroa.020.01375.i.i, 5
  br label %.loopexit56

bb.ac:                                            ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %i.as, i64 7
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !915, !noalias !916, !noundef !6 ; 2 uses
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !914, !noalias !917, !noundef !6 ; 2 uses
  %i.cv = icmp eq i8 %i.cu, -1
  br i1 %i.cv, label %bb.ae, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.cw = or disjoint i64 %.sroa.020.01375.i.i, 6
  br label %.loopexit56

bb.ae:                                            ; preds = %bb.ac
  %i.cx = or disjoint i64 %.sroa.020.01375.i.i, 7
  br label %.loopexit56

bb.af:                                            ; preds = %bb.ac
  %i.cy = zext i8 %i.az to i64
  %i.cz = shl i64 %i.cy, 58
  %i.da = zext i8 %i.bf to i64
  %i.db = shl nuw nsw i64 %i.da, 52
  %i.dc = or i64 %i.db, %i.cz
  %i.dd = zext i8 %i.bl to i64
  %i.de = shl nuw nsw i64 %i.dd, 46
  %i.df = or i64 %i.dc, %i.de
  %i.dg = zext i8 %i.bs to i64
  %i.dh = shl nuw nsw i64 %i.dg, 40
  %i.di = or i64 %i.df, %i.dh
  %i.dj = zext i8 %i.bz to i64
  %i.dk = shl nuw nsw i64 %i.dj, 34
  %i.dl = or i64 %i.di, %i.dk
  %i.dm = zext i8 %i.cg to i64
  %i.dn = shl nuw nsw i64 %i.dm, 28
  %i.do = or i64 %i.dl, %i.dn
  %i.dp = zext i8 %i.cn to i64
  %i.dq = shl nuw nsw i64 %i.dp, 22
  %i.dr = or i64 %i.do, %i.dq
  %i.ds = zext i8 %i.cu to i64
  %i.dt = shl nuw nsw i64 %i.ds, 16
  %i.du = or i64 %i.dr, %i.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !918
  %i.dv = call i64 @llvm.bswap.i64(i64 %i.du)
  store i64 %i.dv, ptr %i.g, align 8, !noalias !918
  invoke void @_RINvNtCsf3Ta7LF998c_4core5slice20copy_from_slice_implhECsfh9HxMbthk9_27candle_wasm_example_whisper(ptr noalias nofree noundef nonnull %i.av, i64 noundef 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc12:                                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !918
  %i.dw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.av, i64 6
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  call void @llvm.experimental.noalias.scope.decl(metadata !920)
  %i.dy = load i8, ptr %i.dw, align 1, !alias.scope !921, !noalias !922, !noundef !6 ; 2 uses
  %i.dz = zext i8 %i.dy to i64
  %i.ea = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !alias.scope !920, !noalias !923, !noundef !6 ; 2 uses
  %i.ec = icmp eq i8 %i.eb, -1
  br i1 %i.ec, label %.loopexit397.i.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc12
  %i.ed = getelementptr inbounds nuw i8, ptr %i.as, i64 9
  %i.ee = load i8, ptr %i.ed, align 1, !alias.scope !921, !noalias !922, !noundef !6 ; 2 uses
  %i.ef = zext i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !alias.scope !920, !noalias !923, !noundef !6 ; 2 uses
  %i.ei = icmp eq i8 %i.eh, -1
  br i1 %i.ei, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ej = getelementptr inbounds nuw i8, ptr %i.as, i64 10
  %i.ek = load i8, ptr %i.ej, align 1, !alias.scope !921, !noalias !922, !noundef !6 ; 2 uses
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !920, !noalias !923, !noundef !6 ; 2 uses
  %i.eo = icmp eq i8 %i.en, -1
  br i1 %i.eo, label %bb.ak, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.ep = or disjoint i64 %.sroa.020.01375.i.i, 9
end_hunk_0
