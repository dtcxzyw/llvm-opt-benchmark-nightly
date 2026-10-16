Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.15?download=true
inline.NumInlined: 747
inline.NumDeleted: 471
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvMNtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB2_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE13with_capacityCsbzNSmZPCnTx_10tgrep_core:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.b = load i64, ptr %i.a, align 8, !range !18, !noundef !12
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !31, !noundef !12 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %.noexc
  %i.g = load i64, ptr %i.f, align 8
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #33
          to label %.noexc3 unwind label %bb.d

.noexc3:                                          ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.noexc
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.i = icmp ule i64 %1, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %2, ptr %i.k, align 4
  ret void

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = tail call noundef i32 @close(i32 noundef %2) #32 ; 0 uses
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB2_15CollectConsumerINtNtCsf3Ta7LF998c_4core6result6ResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileNtNtCs5Xr050g3D4S_3std4path7PathBufEE8appenderB1R_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %i.c = icmp ult i64 %i.b, 57646075230342349
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !28, !noundef !12
  %i.e = sub nsw i64 %i.d, %i.b
  %.not = icmp ult i64 %i.e, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw [160 x i8], ptr %i.g, i64 %i.b
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB2_15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeE8appenderB1f_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !28, !noundef !12
  %i.e = sub nsw i64 %i.d, %i.b
  %.not = icmp ult i64 %i.e, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.b
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB2_15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder13ExtractedFileE8appenderB1f_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %i.c = icmp ult i64 %i.b, 57646075230342349
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !28, !noundef !12
  %i.e = sub nsw i64 %i.d, %i.b
  %.not = icmp ult i64 %i.e, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw [160 x i8], ptr %i.g, i64 %i.b
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB2_15CollectConsumerTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEE8appenderB1S_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %i.c = icmp ult i64 %i.b, 230584300921369396
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !28, !noundef !12
  %i.e = sub nsw i64 %i.d, %i.b
  %.not = icmp ult i64 %i.e, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw [40 x i8], ptr %i.g, i64 %i.b
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB2_15CollectConsumerTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEE8appenderB1O_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !28, !noundef !12
  %i.e = sub nsw i64 %i.d, %i.b
  %.not = icmp ult i64 %i.e, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.b
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB2_15CollectConsumeryE8appenderCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !12 ; 3 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = load i64, ptr %0, align 8, !range !28, !noundef !12
  %i.e = sub nsw i64 %i.d, %i.b
  %.not = icmp ult i64 %i.e, %1
  br i1 %.not, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #34
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !12, !noundef !12
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.b
  %i.i = insertvalue { ptr, i64 } poison, ptr %i.h, 0
  %i.j = insertvalue { ptr, i64 } %i.i, i64 %1, 1
  ret { ptr, i64 } %i.j
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCs22empcGmRho_14regex_automata4util4pool5innerINtB5_4PoolINtNtCsgCecv3eZDcN_5alloc3vec3VecjEFEB16_E8get_slowCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = cmpxchg ptr %i.f, i64 0, i64 1 acq_rel acquire, align 8
  %.sroa.18.0.in.i = extractvalue { i64, i1 } %i.g, 1
  br i1 %.sroa.18.0.in.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !12 ; 3 uses
  %i.j = icmp ult i64 %i.i, 144115188075855872
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %bb.i, label %bb.j

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val11 = load ptr, ptr %i.l, align 8, !nonnull !12, !noundef !12
  call void %.val11(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.n = load i64, ptr %i.m, align 8, !range !20, !alias.scope !715, !noundef !12
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsbzNSmZPCnTx_10tgrep_core.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body18 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsbzNSmZPCnTx_10tgrep_core.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body18

.body18:                                          ; preds = %bb.f, %bb.h
  %eh.lpad-body19 = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.p, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %common.resume

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.s = inttoptr i64 %2 to ptr
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.t, align 8
  store i64 1, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.v, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit27

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit27: ; preds = %bb.x, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i26, %bb.t, %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_3vec3VecjEE3newCsbzNSmZPCnTx_10tgrep_core.exit9, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsgCecv3eZDcN_5alloc3vec3VecjEEECsbzNSmZPCnTx_10tgrep_core.exit
  ret void

common.resume:                                    ; preds = %10, %.body18, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.bl, %bb.v ], [ %eh.lpad-body19, %.body18 ], [ %11, %10 ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_rem_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #34
  unreachable

bb.j:                                             ; preds = %bb.c
  %4 = urem i64 %2, %i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !12, !noundef !12
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %4
  call void @_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB12_5boxed3BoxIBY_jEEEE8try_lockCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.y)
  %i.z = load i64, ptr %i.c, align 8, !range !18, !noundef !12
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %5 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ab = load ptr, ptr %5, align 8, !nonnull !12, !align !22, !noundef !12 ; 9 uses
  %6 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = load i8, ptr %6, align 8, !range !16, !noundef !12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !12 ; 3 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ah = trunc nuw i8 %i.ac to i1
  br i1 %i.ah, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aj = and i64 %i.ai, 9223372036854775807
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %.noexc24, !prof !23

.noexc24:                                         ; preds = %bb.m
  %i.al = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.al, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc24
  store atomic i8 1, ptr %i.ag monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.n, %.noexc24, %bb.m, %bb.l
  %i.am = atomicrmw xchg ptr %i.ab, i32 0 release, align 4
  %i.an = icmp eq i32 %i.am, 2
  br i1 %i.an, label %bb.o, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit, !prof !14

bb.o:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit

bb.p:                                             ; preds = %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ap = add nsw i64 %i.ae, -1                   ; 3 uses
  store i64 %i.ap, ptr %i.ad, align 8
  %i.aq = load i64, ptr %i.ao, align 8, !range !28, !noundef !12
  %i.ar = icmp samesign ult i64 %i.ap, %i.aq
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !12, !noundef !12
  %i.au = icmp ult i64 %i.ae, 1152921504606846977
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ap
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !12, !align !22, !noundef !12
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.ax, align 8
  store i64 0, ptr %0, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.bb = trunc nuw i8 %i.ac to i1
  br i1 %i.bb, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i26, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.bd = and i64 %i.bc, 9223372036854775807
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i26, label %bb.r, !prof !23

bb.r:                                             ; preds = %bb.q
  %i.bf = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #31
  br i1 %i.bf, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i26, label %bb.s

bb.s:                                             ; preds = %bb.r
  store atomic i8 1, ptr %i.ba monotonic, align 4
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i26

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i26: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.bg = atomicrmw xchg ptr %i.ab, i32 0 release, align 4
  %i.bh = icmp eq i32 %i.bg, 2
  br i1 %i.bh, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit27, !prof !14

bb.t:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i26
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit27

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.o, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.bi, align 8, !nonnull !12, !noundef !12
  call void %.val(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b), !inline_history !708
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !716
  %i.bj = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 105) 24, i64 noundef 8) #32, !noalias !716 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.u, label %bb.x, !prof !14

bb.u:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #33
          to label %.noexc29 unwind label %bb.v

.noexc29:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.u
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #29
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.bn, align 8
  store i64 0, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bj, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.bp, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit27

bb.y:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i31 = load ptr, ptr %7, align 8, !alias.scope !717 ; 4 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val3.i32 = load i8, ptr %8, align 8, !range !17, !alias.scope !717, !noundef !12 ; 2 uses
  %.not.i.i33 = icmp eq i8 %.val3.i32, 2
  br i1 %.not.i.i33, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1X_5boxed3BoxIB1T_jEEEEINtB12_12TryLockErrorBX_EEECsbzNSmZPCnTx_10tgrep_core.exit38, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i31) ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.val.i31, i64 4
  %i.br = trunc nuw i8 %.val3.i32 to i1
  br i1 %i.br, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i34, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bs = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !717
  %i.bt = and i64 %i.bs, 9223372036854775807
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i34, label %bb.ab, !prof !23

bb.ab:                                            ; preds = %bb.aa
  %i.bv = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #31, !noalias !717
  br i1 %i.bv, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i34, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store atomic i8 1, ptr %i.bq monotonic, align 1, !noalias !717
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i34

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i34: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %i.bw = atomicrmw xchg ptr %.val.i31, i32 0 release, align 4, !noalias !717
  %i.bx = icmp eq i32 %i.bw, 2
  br i1 %i.bx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit.sink.split.i35, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1X_5boxed3BoxIB1T_jEEEEINtB12_12TryLockErrorBX_EEECsbzNSmZPCnTx_10tgrep_core.exit38, !prof !14

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit.sink.split.i35: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i34
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i31), !noalias !717
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1X_5boxed3BoxIB1T_jEEEEINtB12_12TryLockErrorBX_EEECsbzNSmZPCnTx_10tgrep_core.exit38

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1X_5boxed3BoxIB1T_jEEEEINtB12_12TryLockErrorBX_EEECsbzNSmZPCnTx_10tgrep_core.exit38: ; preds = %bb.y, %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i34, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit.sink.split.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val10 = load ptr, ptr %i.by, align 8, !nonnull !12, !noundef !12
  call void %.val10(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a), !inline_history !708
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !718
  %i.bz = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 105) 24, i64 noundef 8) #32, !noalias !718 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %9, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_3vec3VecjEE3newCsbzNSmZPCnTx_10tgrep_core.exit9, !prof !14

9:                                                ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1X_5boxed3BoxIB1T_jEEEEINtB12_12TryLockErrorBX_EEECsbzNSmZPCnTx_10tgrep_core.exit38
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #33
          to label %.noexc37 unwind label %10

.noexc37:                                         ; preds = %9
  unreachable

10:                                               ; preds = %9
  %11 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecjEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %common.resume unwind label %12

12:                                               ; preds = %10
  %13 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxINtNtB4_3vec3VecjEE3newCsbzNSmZPCnTx_10tgrep_core.exit9: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1X_5boxed3BoxIB1T_jEEEEINtB12_12TryLockErrorBX_EEECsbzNSmZPCnTx_10tgrep_core.exit38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %14, align 8
  store i64 0, ptr %0, align 8
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bz, ptr %15, align 8
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %16, align 8
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtB1B_5boxed3BoxIB1x_jEEEEECsbzNSmZPCnTx_10tgrep_core.exit27
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE14write_all_coldCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !28, !noundef !12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !12 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = sub nsw i64 %i.a, %i.c
  %i.f = icmp ugt i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE9flush_bufCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %0) ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %0, align 8, !range !28
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.h = phi i64 [ %.pre, %._crit_edge ], [ %i.a, %bb.a ]
  %.not4 = icmp samesign ult i64 %2, %i.h
  br i1 %.not4, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !721, !noundef !12 ; 3 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !721, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !721
  %i.n = add nuw i64 %i.i, %2
  store i64 %i.n, ptr %i.b, align 8, !alias.scope !721
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.q = tail call noundef ptr @_RNvYNtNtCs5Xr050g3D4S_3std2fs4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  store i8 0, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ null, %bb.d ], [ %i.q, %bb.e ], [ %i.g, %bb.b ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCs5Xr050g3D4S_3std2fs4FileE9flush_bufCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !12 ; 2 uses
  %i.f = icmp sgt i64 %i.e, -1
  tail call void @llvm.assume(i1 %i.f)
  %.not15.not = icmp eq i64 %i.e, 0
  br i1 %.not15.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.m
  store i8 1, ptr %i.g, align 8
  %i.j = invoke { ptr, i64 } @_RNvMNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB7_9BufWriterpE9flush_bufNtB2_8BufGuard9remaining(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.av, %bb.n ]
  invoke void @_RNvXs_NvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtBI_9BufWriterpE9flush_buf8BufGuardECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.o

bb.d:                                             ; preds = %bb.l, %bb.e, %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.j, 0
  %i.m = extractvalue { ptr, i64 } %i.j, 1
  %i.n = invoke { i64, ptr } @_RNvXsb_NtCs5Xr050g3D4S_3std2fsNtB5_4FileNtNtNtCsf3Ta7LF998c_4core2io5write5Write5write(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.m)
          to label %bb.f unwind label %bb.d       ; 2 uses

bb.f:                                             ; preds = %bb.e
  %i.o = extractvalue { i64, ptr } %i.n, 0
  %i.p = extractvalue { i64, ptr } %i.n, 1        ; 13 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 5 uses
  store i8 0, ptr %i.g, align 8
  %i.r = trunc nuw i64 %i.o to i1
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %i.s = and i64 %i.q, 3
  switch i64 %i.s, label %default.unreachable [
    i64 2, label %bb.h
    i64 3, label %.split10
    i64 0, label %.split11
    i64 1, label %.split
  ], !prof !21

default.unreachable:                              ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.t = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsf3Ta7LF998c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.h
  %i.u = lshr i64 %i.q, 32
  %i.v = trunc nuw i64 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !12, !noundef !12
  %i.y = invoke noundef zeroext i1 %i.x(i32 noundef %i.v)
          to label %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.n, !inline_history !7

.split10:                                         ; preds = %bb.g
  %i.z = lshr i64 %i.q, 32
  %i.aa = icmp ult ptr %i.p, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.z to i8
  %spec.select.i.i.i = select i1 %i.aa, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.ab = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.ac, label %bb.k, label %._crit_edge

.split11:                                         ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ae = load i8, ptr %i.ad, align 8, !range !30, !noundef !12
  %i.af = icmp eq i8 %i.ae, 35
  br i1 %i.af, label %.thread.thread, label %._crit_edge

.split:                                           ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %i.p, i64 31
  %i.ah = load i8, ptr %i.ag, align 8, !range !30, !noundef !12
  %i.ai = icmp eq i8 %i.ah, 35
  br i1 %i.ai, label %bb.l, label %._crit_edge

bb.i:                                             ; preds = %bb.f
  %i.aj = icmp eq ptr %i.p, null
  br i1 %i.aj, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.c, align 8, !noundef !12
  %i.al = add i64 %i.ak, %i.q                     ; 2 uses
  store i64 %i.al, ptr %i.c, align 8
  br label %bb.m

_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.y, label %.thread.thread, label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %.split11, %.split10, %.split, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %bb.m, %bb.a
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ null, %bb.m ], [ @43, %bb.i ], [ %i.p, %.split11 ], [ %i.p, %.split10 ], [ %i.p, %.split ], [ %i.p, %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @_RNvXs_NvMs_NtNtNtCsgCecv3eZDcN_5alloc2io8buffered9bufwriterINtB9_9BufWriterpE9flush_bufNtB4_8BufGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit

bb.k:                                             ; preds = %.split10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = icmp ult ptr %i.p, inttoptr (i64 188978561024 to ptr)
  %i.an = and i64 %i.q, 1095216660480
  %i.ao = icmp ne i64 %i.an, 1095216660480
  call void @llvm.assume(i1 %i.am)
  call void @llvm.assume(i1 %i.ao)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit

bb.l:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ap = getelementptr i8, ptr %i.p, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ap) ]
  store ptr %i.ap, ptr %i.i, align 8, !alias.scope !724
  store i8 3, ptr %i.a, align 8, !alias.scope !724
  invoke void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.d

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.thread.thread, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i64, ptr %i.c, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit
  %i.aq = phi i64 [ %i.al, %bb.j ], [ %.pre, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit ]
end_hunk_0
