Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_c_api-15f02cf232a6f4a0.wasmi_c_api.bb97e6f20a774834-cgu.13?download=true
inline.NumInlined: 187
inline.NumDeleted: 104
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5StackECsg6ypMx2A1Am_11wasmi_c_api:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state9CallStackECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsefoF4u9kbII_5wasmi6engine8executor7handler5state5FrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBP_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.d = load i64, ptr %i.a, align 8, !range !11, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !365, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %.noexc
  %i.i = load i64, ptr %i.h, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #20
          to label %.noexc4 unwind label %bb.g

.noexc4:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.k = icmp ule i64 %2, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tE11extend_withBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tEBF_.exit unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tEBF_.exit: ; preds = %bb.h, %bb.g, %bb.d
  %.pn7 = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.p, %bb.g ], [ %i.p, %bb.h ]
  resume { ptr, i32 } %.pn7

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val = load i8, ptr %1, align 8, !range !13, !alias.scope !366, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.q, align 8            ; 2 uses
  %switch.i.i = icmp ult i8 %.val, 4
  %i.r = icmp eq ptr %.val3, null
  %or.cond.i = select i1 %switch.i.i, i1 true, i1 %i.r
  br i1 %or.cond.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tEBF_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef 12, i64 noundef 4) #12, !noalias !367
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3val10wasm_val_tEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCsg6ypMx2A1Am_11wasmi_c_api3valNtB5_10wasm_val_t6to_val(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 8, !range !13, !noundef !4
  switch i8 %i.a, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 -128, label %bb.g
    i8 -127, label %bb.h
  ], !prof !368

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.c, ptr %i.d, align 4
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.f, ptr %i.g, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i32, ptr %i.h, align 8, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 201 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noundef !4 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ 5, %bb.k ], [ %spec.select, %bb.j ], [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.d ], [ 0, %bb.c ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %bb.h
  %.sroa.0.0.copyload = load i32, ptr %i.o, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = trunc i32 %.sroa.0.0.copyload to i1
  %spec.select = select i1 %i.q, i8 6, i8 5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.s = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 4
  store <2 x i32> %i.s, ptr %i.r, align 4
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.t, align 4
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memoryNtB4_11CMemoryType3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 3 uses
  %i.g = icmp ugt i64 %i.f, 4294967295
  br i1 %i.g, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !range !11, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = trunc nuw i64 %i.h to i1                 ; 2 uses
  %2 = icmp ugt i64 %i.j, 4294967295
  %.sroa.05.0 = select i1 %i.k, i1 %2, i1 false
  br i1 %.sroa.05.0, label %bb.e, label %bb.d, !prof !12

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %i.f, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @7, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = trunc nuw i64 %i.j to i32
  %3 = select i1 %i.k, i32 %i.l, i32 -1
  %i.m = trunc nuw i64 %i.f to i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %3, ptr %i.o, align 4
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsR_NtCskKLDkoKarTP_4core6optionINtB5_6OptionyENtNtB7_3fmt5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api, ptr %.sroa.414.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXNtCsg6ypMx2A1Am_11wasmi_c_api3valNtB2_10wasm_val_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !13, !noundef !4
  %switch = icmp ult i8 %i.a, 4
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b, %bb.d
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 12, i64 noundef 4) #12
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCsg6ypMx2A1Am_11wasmi_c_api3valNtB5_10wasm_val_tINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsefoF4u9kbII_5wasmi5value3ValE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 1                ; 3 uses
  %i.c = load i8, ptr %1, align 8, !range !371, !noundef !4
  switch i8 %i.c, label %default.unreachable15 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
  ], !prof !372

default.unreachable15:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !noundef !4
  %i.f = tail call noundef i8 @_RNvNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val12from_valtype(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @9)
  store i8 %i.f, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.g, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = tail call noundef i8 @_RNvNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val12from_valtype(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @10)
  store i8 %i.j, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.k, align 8
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !noundef !4
  %i.n = tail call noundef i8 @_RNvNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val12from_valtype(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @11)
  store i8 %i.n, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.m, ptr %i.o, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !noundef !4
  %i.r = tail call noundef i8 @_RNvNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val12from_valtype(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @12)
  store i8 %i.r, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.s, align 8
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.b, ptr noundef nonnull align 1 dereferenceable(16) %i.t, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsD_NtCs5zeGauAcNNa_10wasmi_core5valueNtB5_4V128NtNtCskKLDkoKarTP_4core3fmt5Debug3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #21
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.v = load <2 x i32>, ptr %i.u, align 4
  %i.w = load i32, ptr %i.u, align 4, !noundef !4
  %i.x = tail call noundef i8 @_RNvNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val12from_valtype(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) @15)
  %i.y = icmp eq i32 %i.w, 0
  br i1 %i.y, label %bb.l, label %bb.j

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 115 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #21
  unreachable

bb.i:                                             ; preds = %bb.l, %bb.e, %bb.d, %bb.c, %bb.b
  ret void

bb.j:                                             ; preds = %bb.g
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #12, !noalias !373
  %i.z = tail call noundef align 4 dereferenceable_or_null(12) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 12, 57) 12, i64 noundef range(i64 4, 9) 4) #12, !noalias !373 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !12

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 4, i64 noundef 12) #20, !noalias !373
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.j
  store i32 0, ptr %i.z, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store <2 x i32> %i.v, ptr %.sroa.4.0..sroa_idx, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  %.sroa.06.0 = phi ptr [ %i.z, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit ], [ null, %bb.g ]
  store i8 %i.x, ptr %0, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.06.0, ptr %i.ab, align 8
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRAhj10_NtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXsa_NtCskKLDkoKarTP_4core5arrayAhj10_NtNtB7_3fmt5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtBB_4func4FuncENtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !14, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !377
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 9), !noalias !378
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 3, ptr noundef nonnull readonly align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !377
  store ptr @61, ptr %i.a, align 8, !noalias !377, !captures !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 17, ptr %i.e, align 8, !noalias !377
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !377
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtBB_5table5TableENtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !14, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !382
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 9), !noalias !383
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 3, ptr noundef nonnull readonly align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !382
  store ptr @64, ptr %i.a, align 8, !noalias !382, !captures !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 19, ptr %i.e, align 8, !noalias !382
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !382
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !382
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsefoF4u9kbII_5wasmi6handle9RawHandleNtNtBB_6global6GlobalENtB6_5Debug3fmtCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !14, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !387
  call void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef 9), !noalias !388
  %i.d = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 3, ptr noundef nonnull readonly align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !387
  store ptr @65, ptr %i.a, align 8, !noalias !387, !captures !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 21, ptr %i.e, align 8, !noalias !387
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  %i.g = call noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
end_hunk_0
