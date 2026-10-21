Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.08?download=true
inline.NumInlined: 1824
inline.NumDeleted: 737
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayATNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBz_Ej4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB8_6marker4SendNtB4j_4SyncEL_EEENCINvMB1N_B1K_10wrap_mut_1By_NCNvMs1_NtNtBF_8metadata4cicpNtB5s_13CicpTransform3new0E0EBF_:bb.a

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorB14_ENCINvMNtNtB4_3ops9try_traitINtB2b_17NeverShortCircuitINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB4O_4SyncEL_EEE10wrap_mut_1B13_NCNvMs1_NtNtB1a_8metadata4cicpNtB5K_13CicpTransform3new0E0EEB1a_.exit: ; preds = %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayATNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBz_Ej4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB8_6marker4SendNtB4j_4SyncEL_EEENCINvMB1N_B1K_10wrap_mut_1By_NCNvMs1_NtNtBF_8metadata4cicpNtB5s_13CicpTransform3news_0E0EBF_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.d, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2438
  call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2438
  store ptr %i.c, ptr %i.a, align 8, !noalias !2440
  %i.h = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBS_ENCINvMNtNtB9_3ops9try_traitINtB1Y_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB4B_4SyncEL_EEE10wrap_mut_1BR_NCNvMs1_NtNtBY_8metadata4cicpNtB5w_13CicpTransform3news_0E0EINtNtB20_8function5FnMutTjEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.c unwind label %bb.b, !noalias !2441 ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %storemerge10.lcssa.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2N_4SyncEL_EEEECsa5QsYiPB8Gl_5image(ptr nonnull align 8 %i.b, i64 %storemerge10.lcssa.i.i) #22
          to label %.body unwind label %bb.f, !noalias !2442

bb.c:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !2439, !noalias !2438
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !2439, !noalias !2438
  %i.m = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBS_ENCINvMNtNtB9_3ops9try_traitINtB1Y_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB4B_4SyncEL_EEE10wrap_mut_1BR_NCNvMs1_NtNtBY_8metadata4cicpNtB5w_13CicpTransform3news_0E0EINtNtB20_8function5FnMutTjEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
          to label %bb.d unwind label %bb.b, !noalias !2441 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.n, ptr %i.p, align 8, !alias.scope !2439, !noalias !2438
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.o, ptr %i.q, align 8, !alias.scope !2439, !noalias !2438
  %i.r = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBS_ENCINvMNtNtB9_3ops9try_traitINtB1Y_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB4B_4SyncEL_EEE10wrap_mut_1BR_NCNvMs1_NtNtBY_8metadata4cicpNtB5w_13CicpTransform3news_0E0EINtNtB20_8function5FnMutTjEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 2)
          to label %bb.e unwind label %bb.b, !noalias !2441 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.s, ptr %i.u, align 8, !alias.scope !2439, !noalias !2438
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.t, ptr %i.v, align 8, !alias.scope !2439, !noalias !2438
  %i.w = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBS_ENCINvMNtNtB9_3ops9try_traitINtB1Y_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB4B_4SyncEL_EEE10wrap_mut_1BR_NCNvMs1_NtNtBY_8metadata4cicpNtB5w_13CicpTransform3news_0E0EINtNtB20_8function5FnMutTjEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 3)
          to label %bb.g unwind label %bb.b, !noalias !2441 ; 2 uses

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2441
  unreachable

.body:                                            ; preds = %bb.b
  invoke void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core5array5drainINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBR_ENCINvMNtNtB9_3ops9try_traitINtB1X_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB4A_4SyncEL_EEE10wrap_mut_1BQ_NCNvMs1_NtNtBX_8metadata4cicpNtB5v_13CicpTransform3news_0E0ENtNtB1Z_4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorB14_ENCINvMNtNtB4_3ops9try_traitINtB2b_17NeverShortCircuitINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB4O_4SyncEL_EEE10wrap_mut_1B13_NCNvMs1_NtNtB1a_8metadata4cicpNtB5K_13CicpTransform3news_0E0EEB1a_.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = extractvalue { ptr, ptr } %i.w, 0
  %i.z = extractvalue { ptr, ptr } %i.w, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.y, ptr %i.aa, align 8, !alias.scope !2439, !noalias !2438
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.z, ptr %i.ab, align 8, !alias.scope !2439, !noalias !2438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2438
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !2443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2438
  call void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core5array5drainINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBR_ENCINvMNtNtB9_3ops9try_traitINtB1X_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB9_6marker4SendNtB4A_4SyncEL_EEE10wrap_mut_1BQ_NCNvMs1_NtNtBX_8metadata4cicpNtB5v_13CicpTransform3news_0E0ENtNtB1Z_4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.h:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorB14_ENCINvMNtNtB4_3ops9try_traitINtB2b_17NeverShortCircuitINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB4O_4SyncEL_EEE10wrap_mut_1B13_NCNvMs1_NtNtB1a_8metadata4cicpNtB5K_13CicpTransform3news_0E0EEB1a_.exit: ; preds = %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsm_NtCsj6eKBz9Db1c_4core5arrayATNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBz_Ej4_7try_mapINtNtNtB8_3ops9try_trait17NeverShortCircuitINtNtB8_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB8_6marker4SendNtB4j_4SyncEL_EEENCINvMB1N_B1K_10wrap_mut_1By_NCNvMs1_NtNtBF_8metadata4cicpNtB5s_13CicpTransform3news0_0E0EBF_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 7 uses
  %i.b = alloca [64 x i8], align 8                ; 12 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.d, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2450
  call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2450
  store ptr %i.c, ptr %i.a, align 8, !noalias !2452
  %i.h = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBS_ENCINvMNtNtB9_3ops9try_traitINtB1Y_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB9_6marker4SendNtB4B_4SyncEL_EEE10wrap_mut_1BR_NCNvMs1_NtNtBY_8metadata4cicpNtB5w_13CicpTransform3news0_0E0EINtNtB20_8function5FnMutTjEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.c unwind label %bb.b, !noalias !2453 ; 2 uses

bb.b:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  %storemerge10.lcssa.i.i = phi i64 [ 0, %bb.a ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ]
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2N_4SyncEL_EEEECsa5QsYiPB8Gl_5image(ptr nonnull align 8 %i.b, i64 %storemerge10.lcssa.i.i) #22
          to label %.body unwind label %bb.f, !noalias !2454

bb.c:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 0
  %i.k = extractvalue { ptr, ptr } %i.h, 1
  store ptr %i.j, ptr %i.b, align 8, !alias.scope !2451, !noalias !2450
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !2451, !noalias !2450
  %i.m = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBS_ENCINvMNtNtB9_3ops9try_traitINtB1Y_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB9_6marker4SendNtB4B_4SyncEL_EEE10wrap_mut_1BR_NCNvMs1_NtNtBY_8metadata4cicpNtB5w_13CicpTransform3news0_0E0EINtNtB20_8function5FnMutTjEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
          to label %bb.d unwind label %bb.b, !noalias !2453 ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.n = extractvalue { ptr, ptr } %i.m, 0
  %i.o = extractvalue { ptr, ptr } %i.m, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.n, ptr %i.p, align 8, !alias.scope !2451, !noalias !2450
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.o, ptr %i.q, align 8, !alias.scope !2451, !noalias !2450
  %i.r = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBS_ENCINvMNtNtB9_3ops9try_traitINtB1Y_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB9_6marker4SendNtB4B_4SyncEL_EEE10wrap_mut_1BR_NCNvMs1_NtNtBY_8metadata4cicpNtB5w_13CicpTransform3news0_0E0EINtNtB20_8function5FnMutTjEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 2)
          to label %bb.e unwind label %bb.b, !noalias !2453 ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.s, ptr %i.u, align 8, !alias.scope !2451, !noalias !2450
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.t, ptr %i.v, align 8, !alias.scope !2451, !noalias !2450
  %i.w = invoke { ptr, ptr } @_RNvXs0_NtNtCsj6eKBz9Db1c_4core5array5drainQINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBS_ENCINvMNtNtB9_3ops9try_traitINtB1Y_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB9_6marker4SendNtB4B_4SyncEL_EEE10wrap_mut_1BR_NCNvMs1_NtNtBY_8metadata4cicpNtB5w_13CicpTransform3news0_0E0EINtNtB20_8function5FnMutTjEE8call_mutBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 3)
          to label %bb.g unwind label %bb.b, !noalias !2453 ; 2 uses

bb.f:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2454
  unreachable

.body:                                            ; preds = %bb.b
  invoke void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core5array5drainINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBR_ENCINvMNtNtB9_3ops9try_traitINtB1X_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB9_6marker4SendNtB4A_4SyncEL_EEE10wrap_mut_1BQ_NCNvMs1_NtNtBX_8metadata4cicpNtB5v_13CicpTransform3news0_0E0ENtNtB1Z_4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorB14_ENCINvMNtNtB4_3ops9try_traitINtB2b_17NeverShortCircuitINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB4O_4SyncEL_EEE10wrap_mut_1B13_NCNvMs1_NtNtB1a_8metadata4cicpNtB5K_13CicpTransform3news0_0E0EEB1a_.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.y = extractvalue { ptr, ptr } %i.w, 0
  %i.z = extractvalue { ptr, ptr } %i.w, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.y, ptr %i.aa, align 8, !alias.scope !2451, !noalias !2450
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.z, ptr %i.ab, align 8, !alias.scope !2451, !noalias !2450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2450
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !2455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2450
  call void @_RNvXs1_NtNtCsj6eKBz9Db1c_4core5array5drainINtB5_5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorBR_ENCINvMNtNtB9_3ops9try_traitINtB1X_17NeverShortCircuitINtNtB9_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB9_6marker4SendNtB4A_4SyncEL_EEE10wrap_mut_1BQ_NCNvMs1_NtNtBX_8metadata4cicpNtB5v_13CicpTransform3news0_0E0ENtNtB1Z_4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.h:                                             ; preds = %.body
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtB4_5array5drain5DrainTNtNtNtCsa5QsYiPB8Gl_5image6traits7private15LayoutWithColorB14_ENCINvMNtNtB4_3ops9try_traitINtB2b_17NeverShortCircuitINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB4O_4SyncEL_EEE10wrap_mut_1B13_NCNvMs1_NtNtB1a_8metadata4cicpNtB5K_13CicpTransform3news0_0E0EEB1a_.exit: ; preds = %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2481, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2481
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i unwind label %.lr.ph.i.preheader

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2482)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2484, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2484
  %i.e = icmp eq i64 %2, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.c) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1 unwind label %.lr.ph.i.preheader

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1: ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2487, !nonnull !5, !noundef !5
  %3 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !2487
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.f) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2 unwind label %.lr.ph.i.preheader

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2: ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2488)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2490, !nonnull !5, !noundef !5
  %4 = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !2490
  %i.k = icmp eq i64 %4, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.3

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.i) #23
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.3

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.3: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2
  ret void

.lr.ph.i.preheader:                               ; preds = %bb.b, %bb.c, %bb.d
  %.lcssa.ph = phi i64 [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %bb.b ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i ], [ %.lcssa.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.110.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !2493, !nonnull !5, !noundef !5
  %5 = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !2493
  %i.o = icmp eq i64 %5, 1
  br i1 %i.o, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i

bb.f:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.l) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i: ; preds = %bb.f, %.lr.ph.i
  %i.p = icmp eq i64 %i.m, 4
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2478
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2517)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2518)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2519, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2519
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i unwind label %.lr.ph.i.preheader

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2520)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2521)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2522, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2522
  %i.e = icmp eq i64 %2, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.c) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1 unwind label %.lr.ph.i.preheader

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1: ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2523)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2524)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2525, !nonnull !5, !noundef !5
  %3 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !2525
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.f) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2 unwind label %.lr.ph.i.preheader

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2: ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2526)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2527)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2528, !nonnull !5, !noundef !5
  %4 = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !2528
  %i.k = icmp eq i64 %4, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.3

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.i) #23
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.3

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.3: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2
  ret void

.lr.ph.i.preheader:                               ; preds = %bb.b, %bb.c, %bb.d
  %.lcssa.ph = phi i64 [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %bb.b ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i ], [ %.lcssa.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.110.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2529)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2530)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !2531, !nonnull !5, !noundef !5
  %5 = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !2531
  %i.o = icmp eq i64 %5, 1
  br i1 %i.o, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i

bb.f:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.l) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i: ; preds = %bb.f, %.lr.ph.i
  %i.p = icmp eq i64 %i.m, 4
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2516
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2554)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2556)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !2557, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !2557
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %0) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i unwind label %.lr.ph.i.preheader

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2558)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2559)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2560, !nonnull !5, !noundef !5
  %2 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2560
  %i.e = icmp eq i64 %2, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.c) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1 unwind label %.lr.ph.i.preheader

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1: ; preds = %bb.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2562)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !2563, !nonnull !5, !noundef !5
  %3 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !2563
  %i.h = icmp eq i64 %3, 1
  br i1 %i.h, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.f) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2 unwind label %.lr.ph.i.preheader

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2: ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2565)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !2566, !nonnull !5, !noundef !5
  %4 = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !2566
  %i.k = icmp eq i64 %4, 1
  br i1 %i.k, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.3

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.i) #23
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.3

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.3: ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.2
  ret void

.lr.ph.i.preheader:                               ; preds = %bb.b, %bb.c, %bb.d
  %.lcssa.ph = phi i64 [ 3, %bb.d ], [ 2, %bb.c ], [ 1, %bb.b ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i ], [ %.lcssa.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.0.110.i ; 2 uses
  %i.m = add nuw nsw i64 %.sroa.0.110.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2568)
  %i.n = load ptr, ptr %i.l, align 8, !alias.scope !2569, !nonnull !5, !noundef !5
  %5 = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !2569
  %i.o = icmp eq i64 %5, 1
  br i1 %i.o, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i

bb.f:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.l) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i: ; preds = %bb.f, %.lr.ph.i
  %i.p = icmp eq i64 %i.m, 4
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2554
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2N_4SyncEL_EEEECsa5QsYiPB8Gl_5image(ptr %.0.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtB7_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB7_6marker4SendNtB2A_4SyncEL_EEENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.b
  %.sroa.0.09.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2584)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !2585, !noundef !5 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %0 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2586
  %i.f = icmp eq i64 %0, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.g = icmp eq i64 %i.c, %.16.val
  br i1 %i.g, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtB7_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB7_6marker4SendNtB2A_4SyncEL_EEENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.c, %.16.val
  br i1 %i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.k, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i ], [ %i.c, %bb.f ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.k = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2587)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !2588, !noundef !5 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %1 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !2589
  %i.n = icmp eq i64 %1, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i unwind label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.o = icmp eq i64 %i.k, %.16.val
  br i1 %i.o, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i, %bb.f
  resume { ptr, i32 } %i.h

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtB7_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB7_6marker4SendNtB2A_4SyncEL_EEENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2N_4SyncEL_EEEECsa5QsYiPB8Gl_5image(ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtB7_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB7_6marker4SendNtB2A_4SyncEL_EEENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2604)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.b
  %.sroa.0.09.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !2606, !noundef !5 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %0 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2607
  %i.f = icmp eq i64 %0, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.b) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.g = icmp eq i64 %i.c, %.16.val
  br i1 %i.g, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtB7_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB7_6marker4SendNtB2A_4SyncEL_EEENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.c, %.16.val
  br i1 %i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.k, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i ], [ %i.c, %bb.f ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.k = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !2609, !noundef !5 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %1 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !2610
  %i.n = icmp eq i64 %1, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.j) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i unwind label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.o = icmp eq i64 %i.k, %.16.val
  br i1 %i.o, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i, %bb.f
  resume { ptr, i32 } %i.h

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2604
  unreachable

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtB7_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB7_6marker4SendNtB2A_4SyncEL_EEENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2N_4SyncEL_EEEECsa5QsYiPB8Gl_5image(ptr %.0.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtB7_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB7_6marker4SendNtB2A_4SyncEL_EEENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.b
  %.sroa.0.09.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2625)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !2626, !noundef !5 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %0 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2627
  %i.f = icmp eq i64 %0, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.f

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.g = icmp eq i64 %i.c, %.16.val
  br i1 %i.g, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtB7_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB7_6marker4SendNtB2A_4SyncEL_EEENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = icmp eq i64 %i.c, %.16.val
  br i1 %i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.k, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i ], [ %i.c, %bb.f ] ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.k = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2628)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !2629, !noundef !5 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %1 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !2630
  %i.n = icmp eq i64 %1, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i unwind label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i: ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.o = icmp eq i64 %i.k, %.16.val
  br i1 %i.o, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit8.i.i, %bb.f
  resume { ptr, i32 } %i.h

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtB7_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB7_6marker4SendNtB2A_4SyncEL_EEENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2t_4SyncEL_EEECsa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B22_EEp6OutputuNtNtB4_6marker4SendNtB2p_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB7_3ops8function2FnTRL1_SfQL0_B1P_EEp6OutputuNtNtB7_6marker4SendNtB2c_4SyncEL_EENtNtB1p_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2641)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.b
  %.sroa.0.09.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !2644, !nonnull !5, !noundef !5
  %0 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2644
  %i.e = icmp eq i64 %0, 1
  br i1 %i.e, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.b) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.d, %bb.c
  %i.f = icmp eq i64 %i.c, %.16.val
  br i1 %i.f, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB7_3ops8function2FnTRL1_SfQL0_B1P_EEp6OutputuNtNtB7_6marker4SendNtB2c_4SyncEL_EENtNtB1p_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.c, %.16.val
  br i1 %i.h, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i ], [ %i.c, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.j = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2646)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !2647, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !2647
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.i) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.m = icmp eq i64 %i.j, %.16.val
  br i1 %i.m, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i, %bb.e
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2641
  unreachable

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB7_3ops8function2FnTRL1_SfQL0_B1P_EEp6OutputuNtNtB7_6marker4SendNtB2c_4SyncEL_EENtNtB1p_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B22_EEp6OutputuNtNtB4_6marker4SendNtB2p_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB7_3ops8function2FnTRL1_ShQL0_B1P_EEp6OutputuNtNtB7_6marker4SendNtB2c_4SyncEL_EENtNtB1p_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.b
  %.sroa.0.09.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2660)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !2661, !nonnull !5, !noundef !5
  %0 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2661
  %i.e = icmp eq i64 %0, 1
  br i1 %i.e, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.b) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.d, %bb.c
  %i.f = icmp eq i64 %i.c, %.16.val
  br i1 %i.f, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB7_3ops8function2FnTRL1_ShQL0_B1P_EEp6OutputuNtNtB7_6marker4SendNtB2c_4SyncEL_EENtNtB1p_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.c, %.16.val
  br i1 %i.h, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i ], [ %i.c, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.j = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2662)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !2664, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !2664
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.i) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.m = icmp eq i64 %i.j, %.16.val
  br i1 %i.m, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i, %bb.e
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2658
  unreachable

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB7_3ops8function2FnTRL1_ShQL0_B1P_EEp6OutputuNtNtB7_6marker4SendNtB2c_4SyncEL_EENtNtB1p_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B22_EEp6OutputuNtNtB4_6marker4SendNtB2p_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB7_3ops8function2FnTRL1_StQL0_B1P_EEp6OutputuNtNtB7_6marker4SendNtB2c_4SyncEL_EENtNtB1p_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2675)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.b
  %.sroa.0.09.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2677)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !2678, !nonnull !5, !noundef !5
  %0 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2678
  %i.e = icmp eq i64 %0, 1
  br i1 %i.e, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.b) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.d, %bb.c
  %i.f = icmp eq i64 %i.c, %.16.val
  br i1 %i.f, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB7_3ops8function2FnTRL1_StQL0_B1P_EEp6OutputuNtNtB7_6marker4SendNtB2c_4SyncEL_EENtNtB1p_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.c, %.16.val
  br i1 %i.h, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i ], [ %i.c, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.j = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !2681, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !2681
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.i) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.m = icmp eq i64 %i.j, %.16.val
  br i1 %i.m, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i, %bb.e
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2675
  unreachable

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB7_3ops8function2FnTRL1_StQL0_B1P_EEp6OutputuNtNtB7_6marker4SendNtB2c_4SyncEL_EENtNtB1p_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1I_EEp6OutputuNtNtB4_6marker4SendNtB25_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB2r_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr %.0.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB7_6marker4SendNtB2e_4SyncEL_EENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.b
  %.sroa.0.09.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2692)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2693)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !2694, !nonnull !5, !noundef !5
  %0 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2695
  %i.e = icmp eq i64 %0, 1
  br i1 %i.e, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.d, %bb.c
  %i.f = icmp eq i64 %i.c, %.16.val
  br i1 %i.f, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB7_6marker4SendNtB2e_4SyncEL_EENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.c, %.16.val
  br i1 %i.h, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i ], [ %i.c, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.j = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2696)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2697)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !2698, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !2699
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.m = icmp eq i64 %i.j, %.16.val
  br i1 %i.m, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i, %bb.e
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB7_6marker4SendNtB2e_4SyncEL_EENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorfENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB2r_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr nofree readonly captures(none) %.0.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB7_6marker4SendNtB2e_4SyncEL_EENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2710)
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.b
  %.sroa.0.09.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !2713, !nonnull !5, !noundef !5
  %0 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2713
  %i.e = icmp eq i64 %0, 1
  br i1 %i.e, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.b) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.d, %bb.c
  %i.f = icmp eq i64 %i.c, %.16.val
  br i1 %i.f, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB7_6marker4SendNtB2e_4SyncEL_EENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.c, %.16.val
  br i1 %i.h, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i ], [ %i.c, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.j = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2715)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !2716, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !2716
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.i) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.m = icmp eq i64 %i.j, %.16.val
  br i1 %i.m, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i, %bb.e
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2710
  unreachable

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB7_6marker4SendNtB2e_4SyncEL_EENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_5array5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB2r_4SyncEL_EEECsa5QsYiPB8Gl_5image(ptr %.0.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %.16.val, 0
  br i1 %i.a, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB7_6marker4SendNtB2e_4SyncEL_EENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.b
  %.sroa.0.09.i.i = phi i64 [ 0, %bb.b ], [ %i.c, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.c = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2727)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2728)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !2729, !nonnull !5, !noundef !5
  %0 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !2730
  %i.e = icmp eq i64 %0, 1
  br i1 %i.e, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i unwind label %bb.e

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i: ; preds = %bb.d, %bb.c
  %i.f = icmp eq i64 %i.c, %.16.val
  br i1 %i.f, label %_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB7_6marker4SendNtB2e_4SyncEL_EENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = icmp eq i64 %i.c, %.16.val
  br i1 %i.h, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i ], [ %i.c, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.j = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2731)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !2733, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !2734
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i

bb.f:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i unwind label %bb.g

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i: ; preds = %bb.f, %.lr.ph.i.i
  %i.m = icmp eq i64 %i.j, %.16.val
  br i1 %i.m, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit8.i.i, %bb.e
  resume { ptr, i32 } %i.g

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RNvXso_NtCsj6eKBz9Db1c_4core5arrayINtB5_5GuardINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB7_6marker4SendNtB2e_4SyncEL_EENtNtNtB7_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutortENtNtB4_6marker4SendNtB27_4SyncEL_EECsa5QsYiPB8Gl_5image.exit.i.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !14, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(792) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !5
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEBH_.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(792) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 dereferenceable(64) %i.e) #22
          to label %bb.f unwind label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 dereferenceable(64) %i.f)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %bb.d
  %.pn.i.i = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.d, %bb.d ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 dereferenceable(64) %i.g) #22
          to label %bb.i unwind label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 dereferenceable(64) %i.i)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.f
  %.pn2.i.i = phi { ptr, i32 } [ %i.k, %bb.j ], [ %.pn.i.i, %bb.f ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 dereferenceable(64) %i.j) #22
          to label %.body.i unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueAINtNtCs4wP2HXfJTCR_5alloc4sync3ArcDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_Ej4_ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 dereferenceable(64) %i.l) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformshEEBI_.exit.i unwind label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.f, %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2739
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.m, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.m ], [ %.pn2.i.i, %bb.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformstEEBI_(ptr noalias nofree noundef readonly align 8 dereferenceable(256) %i.o) #22
          to label %bb.n unwind label %bb.p

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformshEEBI_.exit.i: ; preds = %bb.k
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformstEEBI_(ptr noalias nofree noundef readonly align 8 dereferenceable(256) %i.p)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEBH_.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.o, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.o ], [ %eh.lpad-body.i, %.body.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 512
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformsfEEBI_(ptr noalias nofree noundef readonly align 8 dereferenceable(256) %i.q) #22
          to label %bb.q unwind label %bb.p

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformshEEBI_.exit.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.n, %.body.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !noalias !2740
  unreachable

bb.q:                                             ; preds = %bb.n
  resume { ptr, i32 } %.pn.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEBH_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformshEEBI_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 512
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13RgbTransformsfEEBI_(ptr noalias nofree noundef readonly align 8 dereferenceable(256) %i.t)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecfEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecfEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VectEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVectENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVectEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %i.c = icmp eq i64 %0, 1
  br i1 %i.c, label %bb.c, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !16, !invariant.load !5
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !5
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.g, i64 8) ; 3 uses
  %i.i = add nuw i64 %i.e, 15
  %i.j = add nuw i64 %i.i, %i.h
  %i.k = sub nsw i64 0, %i.h
  %i.l = and i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.l, i64 noundef range(i64 1, 536870913) %i.h) #25
  br label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %i.c = icmp eq i64 %0, 1
  br i1 %i.c, label %bb.c, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !16, !invariant.load !5
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !5
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.g, i64 8) ; 3 uses
  %i.i = add nuw i64 %i.e, 15
  %i.j = add nuw i64 %i.i, %i.h
  %i.k = sub nsw i64 0, %i.h
  %i.l = and i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.l, i64 noundef range(i64 1, 536870913) %i.h) #25
  br label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %i.c = icmp eq i64 %0, 1
  br i1 %i.c, label %bb.c, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !16, !invariant.load !5
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !5
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.g, i64 8) ; 3 uses
  %i.i = add nuw i64 %i.e, 15
  %i.j = add nuw i64 %i.i, %i.h
  %i.k = sub nsw i64 0, %i.h
  %i.l = and i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.l, i64 noundef range(i64 1, 536870913) %i.h) #25
  br label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1w_EEp6OutputuNtNtBS_6marker4SendNtB1T_4SyncEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB28_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1F_4SyncEL_RNtNtB7_5alloc6GlobalENtNtNtB1H_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %0 = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %i.c = icmp eq i64 %0, 1
  br i1 %i.c, label %bb.c, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1F_4SyncEL_RNtNtB7_5alloc6GlobalENtNtNtB1H_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !16, !invariant.load !5
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !17, !invariant.load !5
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.g, i64 8) ; 3 uses
  %i.i = add nuw i64 %i.e, 15
  %i.j = add nuw i64 %i.i, %i.h
  %i.k = sub nsw i64 0, %i.h
  %i.l = and i64 %i.j, %i.k                       ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1F_4SyncEL_RNtNtB7_5alloc6GlobalENtNtNtB1H_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.l, i64 noundef range(i64 1, 536870913) %i.h) #25
  br label %_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1F_4SyncEL_RNtNtB7_5alloc6GlobalENtNtNtB1H_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit

_RNvXsO_NtCs4wP2HXfJTCR_5alloc4syncINtB5_4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1F_4SyncEL_RNtNtB7_5alloc6GlobalENtNtNtB1H_3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_EEB1h_(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !5 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !16, !invariant.load !5 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !17, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #25
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit: ; preds = %bb.c, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !16, !invariant.load !5 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit5, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !17, !invariant.load !5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #25
  br label %_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit5

_RNvXs8_NtCs4wP2HXfJTCR_5alloc5boxedINtB5_3BoxDNtNtNtCsa5QsYiPB8Gl_5image2io7decoder12ImageDecoderEL_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBO_.exit5: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(29416) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder9ImageInfoECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(224) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #22
          to label %.body unwind label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

.body:                                            ; preds = %bb.g, %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.a, %bb.b ], [ %i.g, %bb.g ], [ %i.d, %bb.d ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader7ZReaderINtNtBE_14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #22
          to label %.body6 unwind label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %.body6 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg10components10ComponentsEECsa5QsYiPB8Gl_5image.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader7ZReaderINtNtBE_14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image.exit unwind label %bb.j

.body6:                                           ; preds = %bb.j, %bb.h, %.body
  %.pn2 = phi { ptr, i32 } [ %.pn, %.body ], [ %i.l, %bb.j ], [ %i.i, %bb.h ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k) #22
          to label %.body8 unwind label %bb.q

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body6

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader7ZReaderINtNtBE_14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader7ZReaderINtNtBE_14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body8 unwind label %bb.m

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader7ZReaderINtNtBE_14no_std_readers7ZCursorRINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEEECsa5QsYiPB8Gl_5image.exit
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image.exit unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

.body8:                                           ; preds = %bb.n, %bb.k, %.body6
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body6 ], [ %i.q, %bb.n ], [ %i.n, %bb.k ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 312
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentEECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef align 8 dereferenceable(24) %i.p) #22
          to label %common.resume unwind label %bb.q

bb.n:                                             ; preds = %bb.l
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body8

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentEECsa5QsYiPB8Gl_5image.exit unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder8ICCChunkEECsa5QsYiPB8Gl_5image.exit
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %.body8, %bb.o
end_hunk_0
begin_hunk_1_@_RNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB5_19ConvertColorOptions12as_transform:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpNtB5_13CicpTransform3new(ptr noalias nofree noundef nonnull sret([792 x i8]) align 8 captures(none) dereferenceable(792) %i.a, i32 noundef %2, i32 noundef %3)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsa5QsYiPB8Gl_5image8metadata4cicp13CicpTransformEEB13_(ptr noalias nofree noundef align 8 dereferenceable(792) %1)
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(792) %1, ptr noundef nonnull align 8 dereferenceable(792) %i.a, i64 792, i1 false)
  resume { ptr, i32 } %i.n

.thread:                                          ; preds = %bb.c, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.o, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.e

bb.i:                                             ; preds = %bb.f
  %.not.i = icmp eq i8 %.sroa.0.sroa.0.0.extract.trunc, 0
  br i1 %.not.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  switch i8 %.sroa.0.sroa.4.0.extract.trunc, label %bb.m [
    i8 0, label %bb.k
    i8 12, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  switch i8 %.sroa.0.sroa.5.0.extract.trunc, label %bb.m [
    i8 1, label %bb.l
    i8 6, label %bb.l
    i8 7, label %bb.l
    i8 11, label %bb.l
    i8 12, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  switch i8 %.sroa.0.sroa.3.0.extract.trunc, label %bb.m [
    i8 1, label %_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit
    i8 6, label %_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit
    i8 8, label %_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit
    i8 13, label %_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit
  ]

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  br label %_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit

_RNCNvMsQ_NtNtCsa5QsYiPB8Gl_5image6images6bufferNtB7_19ConvertColorOptions12as_transform0Bb_.exit: ; preds = %bb.l, %bb.l, %bb.l, %bb.l, %bb.m
  %.sroa.06.0.in.i.sroa.speculated = phi i32 [ %2, %bb.m ], [ %3, %bb.l ], [ %3, %bb.l ], [ %3, %bb.l ], [ %3, %bb.l ]
  store i8 3, ptr %0, align 8
  %.sroa.469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 6, ptr %.sroa.469.0..sroa_idx, align 8
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i32 %.sroa.06.0.in.i.sroa.speculated, ptr %.sroa.570.0..sroa_idx, align 1
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE11require_tagCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 28)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i16 noundef range(i16 -32104, 532) %2, i16 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.sroa.7 = alloca [31 x i8], align 1     ; 4 uses
  %.sroa.11 = alloca [31 x i8], align 1           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4096)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4097
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !4096, !nonnull !5, !align !12, !noundef !5
  %i.e = tail call noundef align 8 ptr @_RNvMNtCs53gkmrwjETj_4tiff9directoryNtB2_9Directory3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i16 noundef range(i16 -32104, 532) %2, i16 %3), !noalias !4097 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread, label %bb.b

_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4097
  br label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !4097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4097
  %i.f = load ptr, ptr %1, align 8, !alias.scope !4096, !nonnull !5, !align !12, !noundef !5
  call void @_RNvXNtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtB2_12EntryDecoder9entry_valCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b), !noalias !4097
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noalias !4097, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.6.8.copyload22 = load i8, ptr %i.i, align 8, !noalias !4096 ; 2 uses
  %.sroa.11.8..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11.8..sroa_idx23, i64 31, i1 false), !noalias !4096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4097
  br i1 %i.h, label %bb.c, label %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, i64 31, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6.8.copyload22, ptr %i.j, align 8
  br label %bb.f

_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b, %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread
  %.sroa.6.126 = phi i8 [ -1, %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit.thread ], [ %.sroa.6.8.copyload22, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.11, i64 31, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.not = icmp eq i8 %.sroa.6.126, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.49.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.5.sroa.7, i64 31, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %.sroa.6.126, ptr %i.k, align 8
  br label %bb.f

bb.e:                                             ; preds = %_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775792, ptr %i.l, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -9223372036854775801, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 %2, ptr %.sroa.411.sroa.4.0..sroa.411.0..sroa_idx.sroa_idx, align 8
  %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i16 %3, ptr %.sroa.411.sroa.5.0..sroa.411.0..sroa_idx.sroa_idx, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %storemerge = phi i64 [ 1, %bb.c ], [ 1, %bb.e ], [ 0, %bb.d ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_9TagReaderINtB6_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEEE8find_tagCsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 9)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, i16 noundef range(i16 -32104, 532) %2, i16 %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !12, !noundef !5
  %i.e = tail call noundef align 8 ptr @_RNvMNtCs53gkmrwjETj_4tiff9directoryNtB2_9Directory3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, i16 noundef %2, i16 %3) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !align !12, !noundef !5
  call void @_RNvXNtNtCs53gkmrwjETj_4tiff7decoder10tag_readerINtB4_11ValueReaderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtB2_12EntryDecoder9entry_valCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  store i64 %i.g, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 -1, ptr %i.j, align 8
  store i64 0, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_SfQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !17, !invariant.load !5 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void %.val(ptr noundef nonnull %i.i) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit unwind label %bb.c, !inline_history !4098

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr nonnull %i.a, ptr nonnull %i.c) #22
  resume { ptr, i32 } %i.j

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw sub ptr %i.l, i64 1 release, align 8
  %i.m = icmp eq i64 %1, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !16, !invariant.load !5
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 3 uses
  %i.q = add nuw nsw i64 %i.p, 15
  %i.r = add nuw i64 %i.q, %i.o
  %i.s = sub nsw i64 0, %i.p
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) %i.t, i64 noundef range(i64 1, 536870913) %i.p) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_SfQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_ShQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !17, !invariant.load !5 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void %.val(ptr noundef nonnull %i.i) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit unwind label %bb.c, !inline_history !4099

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr nonnull %i.a, ptr nonnull %i.c) #22
  resume { ptr, i32 } %i.j

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw sub ptr %i.l, i64 1 release, align 8
  %i.m = icmp eq i64 %1, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !16, !invariant.load !5
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 3 uses
  %i.q = add nuw nsw i64 %i.p, 15
  %i.r = add nuw i64 %i.q, %i.o
  %i.s = sub nsw i64 0, %i.p
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) %i.t, i64 noundef range(i64 1, 536870913) %i.p) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_ShQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDG0_INtNtNtCsj6eKBz9Db1c_4core3ops8function2FnTRL1_StQL0_B1v_EEp6OutputuNtNtBR_6marker4SendNtB1S_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !17, !invariant.load !5 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void %.val(ptr noundef nonnull %i.i) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit unwind label %bb.c, !inline_history !4100

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr nonnull %i.a, ptr nonnull %i.c) #22
  resume { ptr, i32 } %i.j

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw sub ptr %i.l, i64 1 release, align 8
  %i.m = icmp eq i64 %1, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !16, !invariant.load !5
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 3 uses
  %i.q = add nuw nsw i64 %i.p, 15
  %i.r = add nuw i64 %i.q, %i.o
  %i.s = sub nsw i64 0, %i.p
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) %i.t, i64 noundef range(i64 1, 536870913) %i.p) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1J_EEp6OutputuNtNtB4_6marker4SendNtB26_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDG0_INtNtNtB4_3ops8function2FnTRL1_StQL0_B1a_EEp6OutputuNtNtB4_6marker4SendNtB1x_4SyncEL_ECsa5QsYiPB8Gl_5image.exit, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtCsj6eKBz9Db1c_4core6marker4SendNtB1E_4SyncEL_E9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !12, !noundef !5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !17, !invariant.load !5 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB1z_4SyncEL_ECsa5QsYiPB8Gl_5image.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  invoke void %.val(ptr noundef nonnull %i.i) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB1z_4SyncEL_ECsa5QsYiPB8Gl_5image.exit unwind label %bb.c, !inline_history !4101

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB28_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image(ptr nonnull %i.a, ptr nonnull %i.c) #22
  resume { ptr, i32 } %i.j

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB1z_4SyncEL_ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.k = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.k, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB28_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB1z_4SyncEL_ECsa5QsYiPB8Gl_5image.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw sub ptr %i.l, i64 1 release, align 8
  %i.m = icmp eq i64 %1, 1
  br i1 %i.m, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB28_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !16, !invariant.load !5
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 3 uses
  %i.q = add nuw nsw i64 %i.p, 15
  %i.r = add nuw i64 %i.q, %i.o
  %i.s = sub nsw i64 0, %i.p
  %i.t = and i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB28_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) %i.t, i64 noundef range(i64 1, 536870913) %i.p) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB28_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB28_4SyncEL_RNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDINtNtCshGoo8nsRtFZ_6moxcms9transform17TransformExecutorhENtNtB4_6marker4SendNtB1z_4SyncEL_ECsa5QsYiPB8Gl_5image.exit, %bb.d, %bb.e, %bb.f
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtB7_3vec3VechEE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.b ]
  %i.f = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakINtNtBG_3vec3VechERNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw sub ptr %i.g, i64 1 release, align 8
  %i.h = icmp eq i64 %1, 1
  br i1 %i.h, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakINtNtBG_3vec3VechERNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) 40, i64 noundef range(i64 1, 536870913) 8) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakINtNtBG_3vec3VechERNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.c
  %i.i = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakINtNtBG_3vec3VechERNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = atomicrmw sub ptr %i.j, i64 1 release, align 8
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %bb.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakINtNtBG_3vec3VechERNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) 40, i64 noundef range(i64 1, 536870913) 8) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakINtNtBG_3vec3VechERNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakINtNtBG_3vec3VechERNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECsa5QsYiPB8Gl_5image.exit, %bb.h, %bb.i
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakINtNtBG_3vec3VechERNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.g, %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXsv_Cs8zlGlznUR0G_8smallvecINtB5_8SmallVecANtNtNtCsdsTQD3x2eOp_3exr4meta6header6Headerj3_ENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(4296) %i.b)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) 4312, i64 noundef range(i64 1, 536870913) 8) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a
  %i.g = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = atomicrmw sub ptr %i.h, i64 1 release, align 8
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) 4312, i64 noundef range(i64 1, 536870913) 8) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataECsa5QsYiPB8Gl_5image.exit, %bb.e, %bb.f
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtCsdsTQD3x2eOp_3exr4meta8MetaDataRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerE9drop_slowCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4116)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !4117, !nonnull !5, !noundef !5
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !4117
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerECsa5QsYiPB8Gl_5image.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCsaKJjC64KgbL_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b) #23
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerECsa5QsYiPB8Gl_5image.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = atomicrmw sub ptr %i.g, i64 1 release, align 8
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) 48, i64 noundef range(i64 1, 536870913) 8) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.a, %bb.b
  %i.i = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerECsa5QsYiPB8Gl_5image.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = atomicrmw sub ptr %i.j, i64 1 release, align 8
  %i.k = icmp eq i64 %3, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) 48, i64 noundef range(i64 1, 536870913) 8) #25
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit2: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerECsa5QsYiPB8Gl_5image.exit, %bb.f, %bb.g
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakNtNtNtNtCsaKJjC64KgbL_3std4sync4mpmc7context5InnerRNtNtBG_5alloc6GlobalEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE12inner_pixelsB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = zext i32 %i.b to i64
  %i.f = mul nuw nsw i64 %i.e, 3
  %i.g = zext i32 %i.d to i64
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 %i.g) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0         ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %.not = icmp ugt i64 %i.j, %.val3
  br i1 %.not, label %bb.e, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.m = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %i.j, 1
  ret { ptr, i64 } %i.n

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef %.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE15as_flat_samplesB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, i8 noundef 3, i32 noundef %i.b, i32 noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.g, align 8, !noundef !5
  store ptr %.val, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -1, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEE8from_rawB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val10 = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = zext i32 %1 to i64
  %i.c = mul nuw nsw i64 %i.b, 3
  %i.d = zext i32 %2 to i64
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.c, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %.not = icmp ugt i64 %i.g, %.val10
  %or.cond = or i1 %i.f, %.not
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecfEECsa5QsYiPB8Gl_5image.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecfEECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.h

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecfENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %2, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 13, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 1
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 1, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEECsa5QsYiPB8Gl_5image.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE12inner_pixelsB9_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = zext i32 %i.b to i64
  %i.f = mul nuw nsw i64 %i.e, 3
  %i.g = zext i32 %i.d to i64
  %i.h = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.f, i64 %i.g) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  %i.j = extractvalue { i64, i1 } %i.h, 0         ; 3 uses
  br i1 %i.i, label %bb.c, label %bb.b, !prof !6

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %.not = icmp ugt i64 %i.j, %.val3
  br i1 %.not, label %bb.e, label %bb.d, !prof !7

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @156) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.l, align 8, !nonnull !5, !noundef !5
  %i.m = insertvalue { ptr, i64 } poison, ptr %.val, 0
  %i.n = insertvalue { ptr, i64 } %i.m, i64 %i.j, 1
  ret { ptr, i64 } %i.n

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.j, i64 noundef %.val3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @157) #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE15as_flat_samplesB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, i8 noundef 3, i32 noundef %i.b, i32 noundef %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.g, align 8, !noundef !5
  store ptr %.val, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.val1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 -1, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsw_NtNtCsa5QsYiPB8Gl_5image6images6bufferINtB5_11ImageBufferINtNtB9_5color3RgbhEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE8from_rawB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) initializes((0, 8)) %0, i32 noundef %1, i32 noundef %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val10 = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = zext i32 %1 to i64
  %i.c = mul nuw nsw i64 %i.b, 3
  %i.d = zext i32 %2 to i64
  %i.e = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.c, i64 %i.d) ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  %i.g = extractvalue { i64, i1 } %i.e, 0
  %.not = icmp ugt i64 %i.g, %.val10
end_hunk_1
