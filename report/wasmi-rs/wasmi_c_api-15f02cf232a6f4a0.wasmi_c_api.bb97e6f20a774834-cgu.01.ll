Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi_c_api-15f02cf232a6f4a0.wasmi_c_api.bb97e6f20a774834-cgu.01?download=true
inline.NumInlined: 450
inline.NumDeleted: 221
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSINtNtB4_6option6OptionIBC_NtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEEEB1H_:bb.a
  %.sroa.0.08.i = phi i64 [ %i.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEEB1C_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.sroa.0.08.i
  %i.c = add nuw nsw i64 %.sroa.0.08.i, 1         ; 4 uses
  %.val7.i = load ptr, ptr %i.b, align 8, !alias.scope !87, !align !60, !noundef !17 ; 4 uses
  %i.d = icmp eq ptr %.val7.i, null
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEEB1C_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6extern11CExternTypeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val7.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEB1g_.exit.i.i unwind label %.body.i, !noalias !87

.body.i:                                          ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef 56, i64 noundef 8) #18, !noalias !87
  %i.f = icmp eq i64 %i.c, %.8.val
  br i1 %i.f, label %._crit_edge, label %.lr.ph

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEB1g_.exit.i.i: ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i, i64 noundef 56, i64 noundef 8) #18, !noalias !87
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEEB1C_.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEEB1C_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEB1g_.exit.i.i, %.lr.ph.i
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEEB1D_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph
  %i.h = add i64 %.sroa.0.1.i9, 1                 ; 2 uses
  %i.i = icmp eq i64 %i.h, %.8.val
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.c
  %.sroa.0.1.i9 = phi i64 [ %i.h, %bb.c ], [ %i.c, %.body.i ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.0.val, i64 %.sroa.0.1.i9
  %.val.i = load ptr, ptr %i.j, align 8, !alias.scope !87, !align !60, !noundef !17
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEEB1C_(ptr %.val.i) #19
          to label %bb.c unwind label %bb.d, !noalias !87

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20, !noalias !87
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEEB1D_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEEB1C_.exit.i
  %i.l = shl nuw nsw i64 %.8.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.l, i64 noundef 8) #18
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtCskKLDkoKarTP_4core6option6OptionIBy_NtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEENtNtNtBN_3ops4drop4Drop4dropB1u_.exit4

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtCskKLDkoKarTP_4core6option6OptionIBy_NtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEENtNtNtBN_3ops4drop4Drop4dropB1u_.exit4: ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6memory17wasm_memorytype_tEEEB1D_.exit
  ret void

._crit_edge:                                      ; preds = %bb.c, %.body.i
  %i.m = shl nuw nsw i64 %.8.val, 3
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.m, i64 noundef 8) #18
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsg6ypMx2A1Am_11wasmi_c_api.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec15wasm_byte_vec_tEBF_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !96, !noundef !17 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t4take.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96
  %i.e = load i64, ptr %0, align 8, !alias.scope !96, !noundef !17 ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  store i64 %i.e, ptr %i.a, align 8, !noalias !96
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.g, align 8, !noalias !96
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.e, ptr %i.h, align 8, !noalias !96
  %i.i = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !96
  br label %_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t4take.exit.i

_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t4take.exit.i: ; preds = %bb.b, %bb.a
  %.merged.i.i = phi { ptr, i64 } [ %i.i, %bb.b ], [ { ptr inttoptr (i64 1 to ptr), i64 0 }, %bb.a ] ; 2 uses
  %i.j = extractvalue { ptr, i64 } %.merged.i.i, 1 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs3_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_15wasm_byte_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t4take.exit.i
  %i.l = extractvalue { ptr, i64 } %.merged.i.i, 0 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef range(i64 1, 0) %i.j, i64 noundef 1) #18, !noalias !90
  br label %_RNvXs3_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_15wasm_byte_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit

_RNvXs3_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_15wasm_byte_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit: ; preds = %_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t4take.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !97)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !103, !noundef !17 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !103
  %i.e = load i64, ptr %0, align 8, !alias.scope !103, !noundef !17 ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  store i64 %i.e, ptr %i.a, align 8, !noalias !103
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.g, align 8, !noalias !103
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.e, ptr %i.h, align 8, !noalias !103
  %i.i = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !103
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !103
  br label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i

_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i: ; preds = %bb.b, %bb.a
  %.merged.i.i = phi { ptr, i64 } [ %i.i, %bb.b ], [ { ptr inttoptr (i64 8 to ptr), i64 0 }, %bb.a ] ; 2 uses
  %i.j = extractvalue { ptr, i64 } %.merged.i.i, 0 ; 3 uses
  %i.k = extractvalue { ptr, i64 } %.merged.i.i, 1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !104)
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i
  %.sroa.0.09.i.i.i = phi i64 [ %i.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i ], [ 0, %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i ] ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.sroa.0.09.i.i.i
  %i.n = add nuw nsw i64 %.sroa.0.09.i.i.i, 1     ; 2 uses
  %.val7.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !104, !noalias !97, !noundef !17 ; 2 uses
  %i.o = icmp eq ptr %.val7.i.i.i, null
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i, i64 noundef 1, i64 noundef 1) #18, !noalias !107
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i
  %i.p = icmp eq i64 %i.n, %i.k
  br i1 %i.p, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1D_.exit.i.i, label %.lr.ph.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1D_.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i
  %i.q = shl nuw nsw i64 %i.k, 3
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef range(i64 1, 0) %i.q, i64 noundef 8) #18, !noalias !97
  br label %_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit

_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop.exit: ; preds = %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1D_.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6extern11CExternTypeEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = load i8, ptr %0, align 8, !range !108, !noundef !17 ; 2 uses
  %i.d = icmp samesign ult i8 %i.c, 2
  br i1 %i.d, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %1 = trunc nuw i8 %i.c to i1
  br i1 %1, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !127, !nonnull !17, !noundef !17
  %i.g = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !127
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.j) #19
          to label %bb.h unwind label %bb.l

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !137, !noundef !17 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !137
  %i.o = load i64, ptr %i.k, align 8, !alias.scope !137, !noundef !17 ; 3 uses
  %i.p = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.p)
  store i64 %i.o, ptr %i.b, align 8, !noalias !137
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.q, align 8, !noalias !137
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.o, ptr %i.r, align 8, !noalias !137
  %i.s = invoke { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc2.i unwind label %bb.i

.noexc2.i:                                        ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !137
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false), !alias.scope !137
  br label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i.i

_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i.i: ; preds = %.noexc2.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i
  %.merged.i.i.i.i = phi { ptr, i64 } [ %i.s, %.noexc2.i ], [ { ptr inttoptr (i64 8 to ptr), i64 0 }, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit.i ] ; 2 uses
  %i.t = extractvalue { ptr, i64 } %.merged.i.i.i.i, 0 ; 3 uses
  %i.u = extractvalue { ptr, i64 } %.merged.i.i.i.i, 1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i = phi i64 [ %i.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i.i ], [ 0, %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.sroa.0.09.i.i.i.i.i
  %i.x = add nuw nsw i64 %.sroa.0.09.i.i.i.i.i, 1 ; 2 uses
  %.val7.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !138, !noalias !141, !noundef !17 ; 2 uses
  %i.y = icmp eq ptr %.val7.i.i.i.i.i, null
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1, i64 noundef 1) #18, !noalias !142
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %i.z = icmp eq i64 %i.x, %i.u
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1D_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1D_.exit.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i.i
  %i.aa = shl nuw nsw i64 %i.u, 3
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef range(i64 1, 0) %i.aa, i64 noundef 8) #18, !noalias !141
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i

bb.h:                                             ; preds = %bb.i, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %i.i, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ab) #19
          to label %bb.m unwind label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1D_.exit.i.i.i.i, %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !143)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !152, !noundef !17 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i3.i, label %bb.j

bb.j:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !152
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !152, !noundef !17 ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, -1
  call void @llvm.assume(i1 %i.ai)
  store i64 %i.ah, ptr %i.a, align 8, !noalias !152
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ae, ptr %i.aj, align 8, !noalias !152
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ah, ptr %i.ak, align 8, !noalias !152
  %i.al = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !alias.scope !152
  br label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i3.i

_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i3.i: ; preds = %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i
  %.merged.i.i.i4.i = phi { ptr, i64 } [ %i.al, %bb.j ], [ { ptr inttoptr (i64 8 to ptr), i64 0 }, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_.exit.i ] ; 2 uses
  %i.am = extractvalue { ptr, i64 } %.merged.i.i.i4.i, 0 ; 3 uses
  %i.an = extractvalue { ptr, i64 } %.merged.i.i.i4.i, 1 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit, label %.lr.ph.i.i.i.i5.i

.lr.ph.i.i.i.i5.i:                                ; preds = %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i3.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i8.i
  %.sroa.0.09.i.i.i.i6.i = phi i64 [ %i.aq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i8.i ], [ 0, %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i3.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.sroa.0.09.i.i.i.i6.i
  %i.aq = add nuw nsw i64 %.sroa.0.09.i.i.i.i6.i, 1 ; 2 uses
  %.val7.i.i.i.i7.i = load ptr, ptr %i.ap, align 8, !alias.scope !154, !noalias !157, !noundef !17 ; 2 uses
  %i.ar = icmp eq ptr %.val7.i.i.i.i7.i, null
  br i1 %i.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i8.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i5.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i7.i, i64 noundef 1, i64 noundef 1) #18, !noalias !158
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i8.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i8.i: ; preds = %bb.k, %.lr.ph.i.i.i.i5.i
  %i.as = icmp eq i64 %i.aq, %i.an
  br i1 %i.as, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1D_.exit.i.i.i9.i, label %.lr.ph.i.i.i.i5.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1D_.exit.i.i.i9.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1C_.exit.i.i.i.i8.i
  %i.at = shl nuw nsw i64 %i.an, 3
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef range(i64 1, 0) %i.at, i64 noundef 8) #18, !noalias !157
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit

bb.l:                                             ; preds = %bb.h, %bb.e
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.m:                                             ; preds = %bb.h
  resume { ptr, i32 } %.pn.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types4func9CFuncTypeEBH_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueSINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEEB1D_.exit.i.i.i9.i, %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit.i.i3.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvMNtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB2_15wasm_byte_vec_t9from_name(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.b = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.b, 0        ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.b, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  %i.e = insertvalue { i64, ptr } poison, i64 %i.d, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %i.c, 1
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtCskKLDkoKarTP_4core6option6OptionIBy_NtNtCsg6ypMx2A1Am_11wasmi_c_api5frame12wasm_frame_tEEE21try_clone_from_ref_inB1s_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = shl nuw nsw i64 %1, 3                    ; 3 uses
  %i.e = icmp eq i64 %1, 0                        ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.f = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 9) 8) #18 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.310.sroa.3.0 = phi ptr [ undef, %bb.a ], [ %i.f, %bb.b ]
  %.sroa.08.0 = phi i64 [ 0, %bb.a ], [ 8, %bb.b ]
  %.sroa.01.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.f, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.08.0, ptr %i.c, align 8
  %.sroa.310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.d, ptr %.sroa.310.0..sroa_idx, align 8
  %.sroa.310.sroa.2.0..sroa.310.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %.sroa.310.sroa.2.0..sroa.310.0..sroa_idx.sroa_idx, align 8
  %.sroa.310.sroa.3.0..sroa.310.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
end_hunk_0
begin_hunk_1_@_RNvMso_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_21wasm_memorytype_vec_t8as_slice:bb.a
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMst_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_21wasm_externtype_vec_t15as_uninit_slice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !17  ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c, !prof !302

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.d, %bb.b ]
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.a, 1
  ret { ptr, i64 } %i.g

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMst_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_21wasm_externtype_vec_t4take(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !17 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = load i64, ptr %0, align 8, !noundef !17  ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.e, ptr %i.h, align 8
  %i.i = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6extern17wasm_externtype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.merged = phi { ptr, i64 } [ %i.i, %bb.b ], [ { ptr inttoptr (i64 8 to ptr), i64 0 }, %bb.a ]
  ret { ptr, i64 } %.merged
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMst_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_21wasm_externtype_vec_t8as_slice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !17  ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c, !prof !302

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.d, %bb.b ]
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.a, 1
  ret { ptr, i64 } %i.g

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMsy_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_21wasm_importtype_vec_t15as_uninit_slice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !17  ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c, !prof !302

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.d, %bb.b ]
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.a, 1
  ret { ptr, i64 } %i.g

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMsy_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_21wasm_importtype_vec_t4take(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !noundef !17 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = load i64, ptr %0, align 8, !noundef !17  ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  store i64 %i.e, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.e, ptr %i.h, align 8
  %i.i = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types6import17wasm_importtype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.merged = phi { ptr, i64 } [ %i.i, %bb.b ], [ { ptr inttoptr (i64 8 to ptr), i64 0 }, %bb.a ]
  ret { ptr, i64 } %.merged
}

; Function Attrs: nonlazybind uwtable
define { ptr, i64 } @_RNvMsy_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_21wasm_importtype_vec_t8as_slice(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !17  ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c, !prof !302

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.d, %bb.b ]
  %i.f = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.a, 1
  ret { ptr, i64 } %i.g

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs0_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_15wasm_byte_vec_tNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.a = load i64, ptr %0, align 8, !alias.scope !469, !noundef !17 ; 5 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t8as_slice.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !469, !noundef !17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d, !prof !302

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23, !noalias !469
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !472
  %i.f = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %i.a, i64 noundef range(i64 1, 9) 1) #18, !noalias !472 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t8as_slice.exit.thread

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef %i.a) #21
  unreachable

_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t8as_slice.exit.thread: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i5 = phi ptr [ %i.d, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %.sroa.01.0.i = phi ptr [ %i.f, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.a ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i, ptr nonnull readonly align 1 %.sroa.0.0.i5, i64 range(i64 0, -9223372036854775808) %i.a, i1 false)
  %i.h = insertvalue { i64, ptr } poison, i64 %i.a, 0
  %i.i = insertvalue { i64, ptr } %i.h, ptr %.sroa.01.0.i, 1
  ret { i64, ptr } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs1_NtNtCsg6ypMx2A1Am_11wasmi_c_api5types4funcNtB5_9CFuncTypeNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %1, align 8, !range !475, !noundef !17
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.f = load i16, ptr %i.e, align 2, !noundef !17 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.l = load i8, ptr %i.k, align 1, !noundef !17
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.n = load i8, ptr %i.m, align 2, !noundef !17
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  %.sroa.05.0.copyload = load i8, ptr %i.o, align 1
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.46.0.copyload = load i32, ptr %.sroa.46.0..sroa_idx, align 4
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = zext i8 %.sroa.05.0.copyload to i16
  %.sroa.91.0.pre = load ptr, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.c
  %i.q = phi ptr [ %i.h, %bb.h ], [ %.sroa.91.0.pre, %bb.c ] ; 2 uses
  %.sroa.6.sroa.5.0 = phi i16 [ %.sroa.6.sroa.5.0.extract.shift, %bb.h ], [ %i.p, %bb.c ]
  %.sroa.6.sroa.0.0 = phi i8 [ %.sroa.6.sroa.0.0.extract.trunc, %bb.h ], [ %i.n, %bb.c ]
  %.sroa.9.0 = phi i32 [ undef, %bb.h ], [ %.sroa.46.0.copyload, %bb.c ]
  %.sroa.5.0 = phi i8 [ undef, %bb.h ], [ %i.l, %bb.c ]
  %i.r = phi i8 [ 1, %bb.h ], [ 0, %bb.c ]        ; 2 uses
  %.sroa.10.0.in = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.0 = load i64, ptr %.sroa.10.0.in, align 8
  %.sroa.6.sroa.5.0.insert.shift = shl nuw i16 %.sroa.6.sroa.5.0, 8
  %.sroa.6.sroa.0.0.insert.ext = zext i8 %.sroa.6.sroa.0.0 to i16
  %.sroa.6.sroa.0.0.insert.insert = or disjoint i16 %.sroa.6.sroa.5.0.insert.shift, %.sroa.6.sroa.0.0.insert.ext
  store i8 %i.r, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %.sroa.5.0, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %.sroa.6.sroa.0.0.insert.insert, ptr %.sroa.53.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %.sroa.9.0, ptr %.sroa.6.0..sroa_idx4, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.10.0, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !476, !noundef !17 ; 3 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !476, !noundef !17 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit.i, !prof !302

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.f
  unreachable

_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %i.w, %bb.e ]
  %i.y = invoke fastcc { ptr, i64 } @_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtCskKLDkoKarTP_4core6option6OptionIBy_NtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEE21try_clone_from_ref_inB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %i.t) #22
          to label %.noexc13 unwind label %bb.m   ; 2 uses

.noexc13:                                         ; preds = %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit.i
  %i.z = extractvalue { ptr, i64 } %i.y, 0        ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.g, label %bb.n, !prof !302

bb.g:                                             ; preds = %.noexc13
  %i.ab = shl nuw nsw i64 %i.t, 3
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.ab) #21
          to label %.noexc14 unwind label %bb.m

.noexc14:                                         ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.b
  %.sroa.6.sroa.0.0.extract.trunc = trunc i16 %i.f to i8
  %.sroa.6.sroa.5.0.extract.shift = lshr i16 %i.f, 8
  br label %bb.d

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.r, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.r ], [ %i.ae, %bb.m ]
  %2 = trunc nuw i8 %i.r to i1
  br i1 %2, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.k:                                             ; preds = %bb.j
  %i.ac = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !481
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcSNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeE9drop_slowCsefoF4u9kbII_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx) #17
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit unwind label %bb.t

bb.m:                                             ; preds = %bb.g, %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit.i, %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.n:                                             ; preds = %.noexc13
  %i.af = extractvalue { ptr, i64 } %i.y, 1       ; 2 uses
  store i64 %i.af, ptr %i.a, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.z, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !492, !noundef !17 ; 3 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit.i16, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !492, !noundef !17 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.p, label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit.i16, !prof !302

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
          to label %.noexc18 unwind label %bb.r

.noexc18:                                         ; preds = %bb.p
  unreachable

_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit.i16: ; preds = %bb.o, %bb.n
  %.sroa.0.0.i.i17 = phi ptr [ inttoptr (i64 8 to ptr), %bb.n ], [ %i.al, %bb.o ]
  %i.an = invoke fastcc { ptr, i64 } @_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtCskKLDkoKarTP_4core6option6OptionIBy_NtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEE21try_clone_from_ref_inB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.i.i17, i64 noundef %i.ai) #22
          to label %.noexc19 unwind label %bb.r   ; 2 uses

.noexc19:                                         ; preds = %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit.i16
  %i.ao = extractvalue { ptr, i64 } %i.an, 0      ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.q, label %bb.s, !prof !302

bb.q:                                             ; preds = %.noexc19
  %i.aq = shl nuw nsw i64 %i.ai, 3
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.aq) #21
          to label %.noexc20 unwind label %bb.r

.noexc20:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q, %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit.i16, %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsg6ypMx2A1Am_11wasmi_c_api3vec18wasm_valtype_vec_tEBF_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #19
          to label %bb.j unwind label %bb.t

bb.s:                                             ; preds = %.noexc19
  %i.as = extractvalue { ptr, i64 } %i.an, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.af, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.z, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.as, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ao, ptr %i.aw, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.t:                                             ; preds = %bb.l, %bb.r
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsefoF4u9kbII_5wasmi4func2ty8FuncTypeECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %bb.k, %bb.j, %bb.l
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs2_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_15wasm_byte_vec_tINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VechEE4from(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.d = insertvalue { i64, ptr } poison, i64 %i.c, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %i.b, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_15wasm_byte_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !497, !noundef !17 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t4take.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !497
  %i.e = load i64, ptr %0, align 8, !alias.scope !497, !noundef !17 ; 3 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  store i64 %i.e, ptr %i.a, align 8, !noalias !497
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.g, align 8, !noalias !497
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.e, ptr %i.h, align 8, !noalias !497
  %i.i = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE16into_boxed_sliceCsg6ypMx2A1Am_11wasmi_c_api(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !497
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false), !alias.scope !497
  br label %_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t4take.exit

_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t4take.exit: ; preds = %bb.a, %bb.b
  %.merged.i = phi { ptr, i64 } [ %i.i, %bb.b ], [ { ptr inttoptr (i64 1 to ptr), i64 0 }, %bb.a ] ; 2 uses
  %i.j = extractvalue { ptr, i64 } %.merged.i, 1  ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsg6ypMx2A1Am_11wasmi_c_api.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t4take.exit
  %i.l = extractvalue { ptr, i64 } %.merged.i, 0  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef range(i64 1, 0) %i.j, i64 noundef 1) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsg6ypMx2A1Am_11wasmi_c_api.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxShEECsg6ypMx2A1Am_11wasmi_c_api.exit: ; preds = %_RNvMs_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB4_15wasm_byte_vec_t4take.exit, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs5_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  %i.a = load i64, ptr %0, align 8, !alias.scope !500, !noundef !17 ; 3 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !500, !noundef !17 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit, !prof !302

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23, !noalias !500
  unreachable

_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.a ], [ %i.d, %bb.b ]
  %i.f = tail call fastcc { ptr, i64 } @_RNvMs1_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxSINtNtCskKLDkoKarTP_4core6option6OptionIBy_NtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEE21try_clone_from_ref_inB1u_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.i, i64 noundef %i.a) #22 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e, !prof !302

bb.d:                                             ; preds = %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit
  %i.i = shl nuw nsw i64 %i.a, 3
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.i) #21
  unreachable

bb.e:                                             ; preds = %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t8as_slice.exit
  %i.j = extractvalue { ptr, i64 } %i.f, 1
  %i.k = insertvalue { i64, ptr } poison, i64 %i.j, 0
  %i.l = insertvalue { i64, ptr } %i.k, ptr %i.g, 1
  ret { i64, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs7_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tINtNtCskKLDkoKarTP_4core7convert4FromINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB16_6option6OptionINtNtB1H_5boxed3BoxNtNtNtB7_5types3val14wasm_valtype_tEEEE4from(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecINtNtCskKLDkoKarTP_4core6option6OptionINtNtB6_5boxed3BoxNtNtNtCsg6ypMx2A1Am_11wasmi_c_api5types3val14wasm_valtype_tEEE16into_boxed_sliceB1E_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0        ; 2 uses
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.b) ]
  %i.d = insertvalue { i64, ptr } poison, i64 %i.c, 0
  %i.e = insertvalue { i64, ptr } %i.d, ptr %i.b, 1
  ret { i64, ptr } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_tNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !503, !noundef !17 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RNvMs4_NtCsg6ypMx2A1Am_11wasmi_c_api3vecNtB5_18wasm_valtype_vec_t4take.exit, label %bb.b

end_hunk_1
