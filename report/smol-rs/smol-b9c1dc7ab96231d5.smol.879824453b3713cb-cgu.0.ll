Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/smol-rs/original/smol-b9c1dc7ab96231d5.smol.879824453b3713cb-cgu.0?download=true
inline.NumInlined: 214
inline.NumDeleted: 124
begin_hunk_0_@_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsbDLrNlwBX3H_4smol:bb.a
  store i8 3, ptr %i.a, align 8, !alias.scope !154
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !169, !nonnull !4, !noundef !4
  %i.b = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !169
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !4, !align !5, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol(ptr %.val2, ptr nonnull %.val3) #25
          to label %common.resume unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.i = load ptr, ptr %.val1, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !65, !invariant.load !4 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !66, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) %i.n) #28
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !65, !invariant.load !4 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !66, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) %i.t) #28
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.f, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.o, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i
  ret void

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook15ChildSpawnHooksECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXNtNtCsG258MDvU3F_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !173, !noundef !4 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !176
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !184, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !185
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #25
          to label %bb.k unwind label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook10SpawnHooksECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.f, %bb.e, %bb.g
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %0)
  ret void

bb.j:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEB15_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 10 uses
  %i.i = alloca [8 x i8], align 8                 ; 11 uses
  %i.j = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.j, align 8
  %i.k = trunc nuw i64 %2 to i1
  br i1 %i.k, label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load atomic i64, ptr @_RNvNCNvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RINvNtCsG258MDvU3F_3std3env6var_osReECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 14)
          to label %.noexc unwind label %.split.thread

.noexc:                                           ; preds = %bb.c
  %i.n = load i64, ptr %i.b, align 8, !range !190, !noundef !4 ; 5 uses
  %.not.i = icmp eq i64 %i.n, -1
  br i1 %.not.i, label %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = add i64 %i.l, -1
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit

bb.e:                                             ; preds = %.noexc
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8 ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.55.0.copyload.i = load i64, ptr %.sroa.55.0..sroa_idx.i, align 8
  %6 = inttoptr i64 %.sroa.4.0.copyload.i to ptr  ; 3 uses
  %7 = icmp ne i64 %.sroa.4.0.copyload.i, 0
  call void @llvm.assume(i1 %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !191
  invoke void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %.sroa.55.0.copyload.i)
          to label %bb.h unwind label %bb.f, !noalias !191

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = icmp eq i64 %i.n, 0
  br i1 %i.q, label %.body32.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !194
  br label %.body32.thread

bb.h:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.a, align 8, !range !29, !noalias !191, !noundef !4
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  br label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.j:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !191, !nonnull !4, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !191, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !191
  switch i64 %i.w, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %i.u, align 1, !alias.scope !197, !noalias !200, !noundef !4 ; 2 uses
  switch i8 %i.x, label %bb.l [
    i8 43, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.j
  %.pr.i.i.i = load i8, ptr %i.u, align 1, !alias.scope !197, !noalias !200
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split.i.i.i, %bb.k
  %i.y = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.x, %bb.k ]
  %cond.i.i.i = icmp eq i8 %i.y, 43               ; 2 uses
  %i.z = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.w, %i.z      ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.aa = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.aa, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.l
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i91, i64 1
  %i.ac = add nsw i64 %.sroa.15.1.i.i.i90, -1     ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.l, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i91 = phi ptr [ %i.ab, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.l ] ; 2 uses
  %.sroa.15.1.i.i.i90 = phi i64 [ %i.ac, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.l ]
  %.sroa.042.0.i.i.i89 = phi i64 [ %i.al, %.preheader56.i.i.i ], [ 0, %bb.l ]
  %i.ad = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i89, i64 10) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  br i1 %i.ae, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.m, !prof !11

bb.m:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.af = extractvalue { i64, i1 } %i.ad, 0       ; 2 uses
  %i.ag = load i8, ptr %.sroa.0.1.i.i.i91, align 1, !alias.scope !197, !noalias !200, !noundef !4
  %i.ah = zext i8 %i.ag to i32
  %i.ai = add nsw i32 %i.ah, -48                  ; 2 uses
  %i.aj = icmp ugt i32 %i.ai, 9
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = add i64 %i.af, %i.ak                    ; 3 uses
  %i.am = icmp ult i64 %i.al, %i.af
  %or.cond.i.i = select i1 %i.aj, i1 true, i1 %i.am, !prof !202
  br i1 %or.cond.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !202

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.n
  %.sroa.0.269.i.i.i = phi ptr [ %i.at, %bb.n ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.as, %bb.n ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.av, %bb.n ], [ 0, %.preheader.i.i.i ]
  %i.an = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !197, !noalias !200, !noundef !4
  %i.ao = zext i8 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -48                  ; 2 uses
  %i.aq = icmp ugt i32 %i.ap, 9
  br i1 %i.aq, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = mul i64 %.sroa.042.267.i.i.i, 10
  %i.as = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.au = zext nneg i32 %i.ap to i64
  %i.av = add i64 %i.ar, %i.au                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.m, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.n, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.k, %bb.k, %bb.j, %bb.i
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.i ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.k ], [ 2097152, %bb.j ], [ 2097152, %bb.k ], [ %i.av, %bb.n ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.m ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.al, %.preheader56.i.i.i ] ; 2 uses
  %i.aw = icmp eq i64 %i.n, 0
  br i1 %i.aw, label %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i, label %bb.o

bb.o:                                             ; preds = %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %6, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !203
  br label %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i

_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i: ; preds = %bb.o, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, %.noexc
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %bb.o ], [ %.sroa.0.1.i.i, %_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i ], [ 2097152, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ax = add i64 %.sroa.0.0.i, 1
  store atomic i64 %i.ax, ptr @_RNvNCNvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit

.split.thread:                                    ; preds = %bb.p, %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit, %bb.c
  %.sroa.015.0.ph = phi i1 [ true, %bb.c ], [ true, %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit ], [ false, %bb.p ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body32.thread

_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit: ; preds = %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i, %bb.d, %bb.a
  %.sroa.02.0 = phi i64 [ %3, %bb.a ], [ %.sroa.0.0.i, %_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE00B19_.exit.i ], [ %i.o, %bb.d ]
  %i.ay = invoke noundef i64 @_RNvMNtNtCsG258MDvU3F_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.p unwind label %.split.thread

bb.p:                                             ; preds = %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zE0B17_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.az = invoke noundef nonnull ptr @_RNvMs_NtNtCsG258MDvU3F_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.ay, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.q unwind label %.split.thread

bb.q:                                             ; preds = %bb.p
  store ptr %i.az, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br i1 %4, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvNtNtCsG258MDvU3F_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i)
          to label %bb.v unwind label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr null, ptr %i.ba, align 8
  store i64 0, ptr %i.h, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 8, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.v

.thread:                                          ; preds = %bb.au, %.body26.thread, %bb.z, %bb.ax, %bb.u
  %.sroa.014.1 = phi i1 [ false, %bb.ax ], [ false, %bb.z ], [ true, %bb.u ], [ false, %.body26.thread ], [ false, %bb.au ]
  %.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.ax ], [ %i.bl, %bb.z ], [ %i.be, %bb.u ], [ %eh.lpad-body2754, %.body26.thread ], [ %eh.lpad-body2754, %bb.au ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  call void @llvm.experimental.noalias.scope.decl(metadata !212)
  call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.bb = load ptr, ptr %i.i, align 8, !alias.scope !218, !nonnull !4, !noundef !4
  %i.bc = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !218
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.t, label %.body32

bb.t:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #26
          to label %.body32 unwind label %bb.aw

bb.u:                                             ; preds = %bb.r
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.v:                                             ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %8 = ptrtoint ptr %5 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 1, ptr %i.c, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.bg, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %8, ptr %.sroa.5.0..sroa_idx, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !219
  %i.bh = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #28, !noalias !219 ; 6 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.w, label %bb.aa, !prof !11

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29
          to label %.noexc35 unwind label %bb.x

.noexc35:                                         ; preds = %bb.w
  unreachable

bb.x:                                             ; preds = %bb.w
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #25
          to label %bb.ax unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.z:                                             ; preds = %bb.ar
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.aa:                                            ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bh, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.bh, ptr %i.g, align 8
  %i.bm = atomicrmw add ptr %i.bh, i64 1 monotonic, align 8
  %i.bn = icmp slt i64 %i.bm, 0
  br i1 %i.bn, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.bh, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq ptr %i.bq, null
  br i1 %.not, label %bb.ae, label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  invoke void @_RNvMNtNtCsG258MDvU3F_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8 %i.br)
          to label %bb.ae unwind label %bb.av

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !222
  %i.bs = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef 8) #28, !noalias !222 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.af, label %bb.ai, !prof !11

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #29
          to label %.noexc36 unwind label %bb.ag

.noexc36:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e) #25
          to label %.body26.thread unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

.body26:                                          ; preds = %bb.ao
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body26.thread

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bs, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bx = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.by = atomicrmw add ptr %i.bx, i64 1 monotonic, align 8
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ca = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  store ptr %i.ca, ptr %i.d, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bs, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @0, ptr %i.cc, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !225
  %i.cd = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #28, !noalias !225 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.ak, label %bb.ao, !prof !11

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #29
          to label %.noexc38 unwind label %bb.al

.noexc38:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ak
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #25
          to label %.body26.thread unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.an:                                            ; preds = %bb.ai
  call void @llvm.trap()
  unreachable

bb.ao:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ch = invoke { i64, ptr } @_RNvMs0_NtNtNtCsG258MDvU3F_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef %.sroa.02.0, ptr noalias noundef nonnull align 8 %i.cd)
          to label %bb.ap unwind label %.body26   ; 2 uses

bb.ap:                                            ; preds = %bb.ao
  %i.ci = extractvalue { i64, ptr } %i.ch, 0
  %i.cj = extractvalue { i64, ptr } %i.ch, 1      ; 2 uses
  %i.ck = trunc nuw i64 %i.ci to i1
  br i1 %i.ck, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cj, ptr %i.cl, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.cm = load ptr, ptr %i.g, align 8, !alias.scope !234, !nonnull !4, !noundef !4
  %i.cn = atomicrmw sub ptr %i.cm, i64 1 release, align 8, !noalias !234
  %i.co = icmp eq i64 %i.cn, 1
  br i1 %i.co, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit unwind label %bb.z

bb.as:                                            ; preds = %bb.ap
  %i.cp = ptrtoint ptr %i.cj to i64
  %i.cq = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.cr = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4
  %9 = ptrtoint ptr %i.cq to i64
  %10 = ptrtoint ptr %i.cr to i64
  store i64 %9, ptr %0, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %10, ptr %.sroa.55.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cp, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit42

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit42: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit, %bb.at, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.experimental.noalias.scope.decl(metadata !235)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !244)
  %i.cs = load ptr, ptr %i.i, align 8, !alias.scope !247, !nonnull !4, !noundef !4
  %i.ct = atomicrmw sub ptr %i.cs, i64 1 release, align 8, !noalias !247
  %i.cu = icmp eq i64 %i.ct, 1
  br i1 %i.cu, label %bb.at, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit42

bb.at:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECsbDLrNlwBX3H_4smol.exit42

.body26.thread:                                   ; preds = %bb.al, %bb.ag, %.body26, %bb.av
  %eh.lpad-body2754 = phi { ptr, i32 } [ %i.bw, %.body26 ], [ %i.cy, %bb.av ], [ %i.bu, %bb.ag ], [ %i.cf, %bb.al ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.cv = load ptr, ptr %i.g, align 8, !alias.scope !254, !nonnull !4, !noundef !4
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !254
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.au, label %.thread

bb.au:                                            ; preds = %.body26.thread
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #26
          to label %.thread unwind label %bb.aw

bb.av:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0EB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f) #25
          to label %.body26.thread unwind label %bb.aw

bb.aw:                                            ; preds = %bb.az, %bb.au, %bb.t, %bb.ax, %bb.av
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ax:                                            ; preds = %bb.x
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread9spawnhook15ChildSpawnHooksECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #25
          to label %.thread unwind label %bb.aw

.body32:                                          ; preds = %.thread, %bb.t
  br i1 %.sroa.014.1, label %.body32..body32.thread_crit_edge, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbDLrNlwBX3H_4smol.exit

.body32..body32.thread_crit_edge:                 ; preds = %.body32
  %.pre = load ptr, ptr %i.j, align 8, !alias.scope !255
  br label %.body32.thread

.body32.thread:                                   ; preds = %.body32..body32.thread_crit_edge, %bb.g, %bb.f, %.split.thread
  %i.da = phi ptr [ %5, %.split.thread ], [ %.pre, %.body32..body32.thread_crit_edge ], [ %5, %bb.f ], [ %5, %bb.g ] ; 2 uses
  %.pn2463 = phi { ptr, i32 } [ %lpad.thr_comm, %.split.thread ], [ %.pn.pn, %.body32..body32.thread_crit_edge ], [ %i.p, %bb.f ], [ %i.p, %bb.g ] ; 3 uses
  %.sroa.015.161 = phi i1 [ %.sroa.015.0.ph, %.split.thread ], [ false, %.body32..body32.thread_crit_edge ], [ true, %bb.f ], [ true, %bb.g ]
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit, label %bb.ay

bb.ay:                                            ; preds = %.body32.thread
  %i.dc = atomicrmw sub ptr %i.da, i64 1 release, align 8, !noalias !258
  %i.dd = icmp eq i64 %i.dc, 1
  br i1 %i.dd, label %bb.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit

bb.az:                                            ; preds = %bb.ay
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs13QwXx3ETeK_8async_io(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit unwind label %bb.aw

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.az, %.body32.thread, %bb.ay
  br i1 %.sroa.015.161, label %bb.ba, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbDLrNlwBX3H_4smol.exit: ; preds = %.body32, %bb.bb, %bb.ba, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit
  %.pn246267 = phi { ptr, i32 } [ %.pn2463, %bb.bb ], [ %.pn2463, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit ], [ %.pn.pn, %.body32 ], [ %.pn2463, %bb.ba ]
  resume { ptr, i32 } %.pn246267

bb.ba:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECsbDLrNlwBX3H_4smol.exit
  %.val = load i64, ptr %1, align 8, !range !190, !noundef !4 ; 2 uses
  %i.de = icmp sgt i64 %.val, 0
  br i1 %i.de, label %bb.bb, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbDLrNlwBX3H_4smol.exit

bb.bb:                                            ; preds = %bb.ba
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val31 = load ptr, ptr %i.df, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val31, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !263
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsbDLrNlwBX3H_4smol.exit
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !65, !alias.scope !266, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !266
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !alias.scope !266
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef 4, i64 noundef 28), !noalias !266
  %i.g = load i64, ptr %i.a, align 8, !range !29, !noalias !266, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !range !269, !noalias !266, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !266
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.l, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.j, %bb.c ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #29
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.i, align 8, !noalias !266, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !266
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !266
  %i.n = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.n)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !266
  ret void
}

; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_00B19_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_000uEB24_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RINvNtNtCsG258MDvU3F_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEB1g_() #30
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceuE9call_once6vtableB1c_(ptr noundef %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.8.0..sroa_idx12.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx.i, i64 16, i1 false)
  %1 = load <2 x i64>, ptr %0, align 8, !alias.scope !270
  store <2 x i64> %1, ptr %i.a, align 16, !noalias !270
  invoke fastcc void @_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2j_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.a) #31
          to label %.noexc8.i unwind label %bb.b, !noalias !270

.noexc8.i:                                        ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  %i.e = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.d)
          to label %bb.d unwind label %bb.c, !noalias !270 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #27, !noalias !270
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = extractvalue { ptr, ptr } %i.e, 0        ; 2 uses
  %i.h = extractvalue { ptr, ptr } %i.e, 1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !270, !nonnull !4, !noundef !4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %.val.i = load ptr, ptr %i.k, align 8, !noalias !270, !noundef !4 ; 4 uses
  %i.l = getelementptr i8, ptr %i.j, i64 24       ; 3 uses
  %.val5.i = load ptr, ptr %i.l, align 8, !noalias !270 ; 6 uses
  %i.m = icmp eq ptr %.val.i, null
  br i1 %i.m, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5.i) ]
  %i.n = load ptr, ptr %.val5.i, align 8, !invariant.load !4, !noalias !270 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void %i.n(ptr noundef nonnull %.val.i)
          to label %bb.g unwind label %bb.h, !noalias !270

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !65, !invariant.load !4, !noalias !270 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !66, !invariant.load !4, !noalias !270
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) %i.s) #28, !noalias !270
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i

bb.h:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !65, !invariant.load !4, !noalias !270 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.j, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !66, !invariant.load !4, !noalias !270
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) %i.y) #28, !noalias !270
  br label %bb.j

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.g, %bb.d
  store ptr %i.g, ptr %i.k, align 8, !noalias !270
  store ptr %i.h, ptr %i.l, align 8, !noalias !270
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !270
  store ptr %i.j, ptr %i.b, align 8, !noalias !270
  %i.z = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !273
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.i, label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0B17_.exit

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #26, !noalias !270
  br label %_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0B17_.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit7.i: ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.t

bb.j:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.h
  store ptr %i.g, ptr %i.k, align 8, !noalias !270
  store ptr %i.h, ptr %i.l, align 8, !noalias !270
  %i.ab = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !278
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.k, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit7.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEE9drop_slowCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketzEEECsbDLrNlwBX3H_4smol.exit7.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0s0_0zEs_0B17_.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol.exit.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !270
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs3_NtCsfO0Hesl1pIe_10async_task4taskINtB5_4TaskzE12set_detachedCsbDLrNlwBX3H_4smol(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  %i.b = cmpxchg weak ptr %i.a, i64 273, i64 257 acq_rel acquire, align 8 ; 2 uses
  %i.c = extractvalue { i64, i1 } %i.b, 1
  br i1 %i.c, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.d = extractvalue { i64, i1 } %i.b, 0
  br label %.preheader.outer

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.i
  %.sroa.8.0 = phi ptr [ %i.q, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.q, %bb.i ], [ %.sroa.8.2.ph, %.loopexit ], [ %.sroa.8.2.ph, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %i.o, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.o, %bb.i ], [ %.sroa.0.2.ph, %.loopexit ], [ %.sroa.0.2.ph, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %i.y, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i ], [ %i.y, %bb.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultzINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECsbDLrNlwBX3H_4smol(ptr %.sroa.0.0, ptr %.sroa.8.0) #25
          to label %bb.p unwind label %bb.o

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.m, %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.b:                                             ; preds = %bb.k, %bb.m, %bb.n, %bb.a
  %.sroa.8.1 = phi ptr [ %.sroa.8.2.ph, %bb.m ], [ %.sroa.8.2.ph, %bb.n ], [ %.sroa.8.2.ph, %bb.k ], [ undef, %bb.a ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.2.ph, %bb.m ], [ %.sroa.0.2.ph, %bb.n ], [ %.sroa.0.2.ph, %bb.k ], [ null, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.8.1, 1
  ret { ptr, ptr } %i.f

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.outer
  %.sroa.08.0 = phi i64 [ %.sroa.08.0.ph, %.preheader.outer ], [ %.sroa.08.0.be, %.preheader.backedge ] ; 8 uses
  %i.g = and i64 %.sroa.08.0, 12
  %or.cond = icmp eq i64 %i.g, 4
  br i1 %or.cond, label %bb.c, label %bb.j

bb.c:                                             ; preds = %.preheader
  %i.h = or disjoint i64 %.sroa.08.0, 8           ; 2 uses
  %i.i = cmpxchg weak ptr %i.a, i64 %.sroa.08.0, i64 %i.h acq_rel acquire, align 8 ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.d, label %.preheader.backedge

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.0.val, align 8, !nonnull !4, !align !5, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4
  %i.n = invoke noundef ptr %i.m(ptr noundef nonnull %.0.val)
          to label %bb.e unwind label %.loopexit  ; 2 uses

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %i.r = icmp eq ptr %.sroa.0.2.ph, null
  br i1 %i.r, label %.preheader.outer.backedge, label %bb.f

.preheader.outer.backedge:                        ; preds = %bb.e, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.h
  br label %.preheader.outer

.preheader.outer:                                 ; preds = %.preheader.outer.backedge, %.preheader.preheader
  %.sroa.8.2.ph = phi ptr [ undef, %.preheader.preheader ], [ %i.q, %.preheader.outer.backedge ] ; 11 uses
  %.sroa.0.2.ph = phi ptr [ null, %.preheader.preheader ], [ %i.o, %.preheader.outer.backedge ] ; 9 uses
  %.sroa.08.0.ph = phi i64 [ %i.d, %.preheader.preheader ], [ %i.h, %.preheader.outer.backedge ]
  br label %.preheader

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.2.ph) ]
  %i.s = load ptr, ptr %.sroa.8.2.ph, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void %i.s(ptr noundef nonnull %.sroa.0.2.ph)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.8.2.ph, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !65, !invariant.load !4 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.preheader.outer.backedge, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.8.2.ph, i64 16
  %i.x = load i64, ptr %i.w, align 8, !range !66, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.ph, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) %i.x) #28
  br label %.preheader.outer.backedge

bb.i:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.8.2.ph, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !65, !invariant.load !4 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.body, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.8.2.ph, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !66, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.2.ph, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) %i.ad) #28
  br label %.body

bb.j:                                             ; preds = %.preheader
  %i.ae = and i64 %.sroa.08.0, -248
  %i.af = icmp eq i64 %i.ae, 0
  %i.ag = and i64 %.sroa.08.0, -17
  %.sroa.05.0 = select i1 %i.af, i64 265, i64 %i.ag
  %i.ah = cmpxchg weak ptr %i.a, i64 %.sroa.08.0, i64 %.sroa.05.0 acq_rel acquire, align 8 ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCsl6TgSXZDiW0_4slab5EntryNtNtNtCskKLDkoKarTP_4core4task4wake5WakerEE8grow_oneCsbDLrNlwBX3H_4smol:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !283
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !283, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !283
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !283
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !283
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !286
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 72, i64 noundef 8) #28, !noalias !286 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !noalias !286
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  store i64 1, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.730.0..sroa_idx, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.12.0..sroa_idx, align 8
  %i.f = cmpxchg ptr %0, ptr null, ptr %.sroa.5.0..sroa_idx acq_rel acquire, align 8 ; 2 uses
  %i.g = extractvalue { ptr, i1 } %i.f, 0
  %i.h = extractvalue { ptr, i1 } %i.f, 1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit, %bb.a
  %.sroa.026.0 = phi ptr [ %i.b, %bb.a ], [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit ], [ %.sroa.5.0..sroa_idx, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit ]
  ret ptr %.sroa.026.0

bb.e:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtCs3iPtYnXk70z_14event_listener5InneruEECsbDLrNlwBX3H_4smol(ptr noundef nonnull %.sroa.5.0..sroa_idx)
  %i.j = sub nsw i64 0, %i.i
  %i.k = getelementptr inbounds i8, ptr %.sroa.5.0..sroa_idx, i64 %i.j ; 2 uses
  store ptr %i.k, ptr %i.a, align 8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !289
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event6listenCsbDLrNlwBX3H_4smol(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !294
  %i.g = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 72, i64 noundef 8) #28, !noalias !294 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #29, !noalias !294
  unreachable

_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.b
  store i64 1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 5 uses
  store i32 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 4
  %.sroa.730.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.730.0..sroa_idx.i, i8 0, i64 40, i1 false)
  store i64 -1, ptr %.sroa.12.0..sroa_idx.i, align 8
  %i.i = cmpxchg ptr %0, ptr null, ptr %.sroa.5.0..sroa_idx.i acq_rel acquire, align 8 ; 2 uses
  %i.j = extractvalue { ptr, i1 } %i.i, 0
  %i.k = extractvalue { ptr, i1 } %i.i, 1
  br i1 %i.k, label %_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit, label %bb.d

bb.d:                                             ; preds = %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = tail call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtCs3iPtYnXk70z_14event_listener5InneruEECsbDLrNlwBX3H_4smol(ptr noundef nonnull %.sroa.5.0..sroa_idx.i)
  %i.m = sub nsw i64 0, %i.l
  %i.n = getelementptr inbounds i8, ptr %.sroa.5.0..sroa_idx.i, i64 %i.m ; 2 uses
  store ptr %i.n, ptr %i.c, align 8
  %i.o = atomicrmw sub ptr %i.n, i64 1 release, align 8, !noalias !297
  %i.p = icmp eq i64 %i.o, 1
  br i1 %i.p, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtCs3iPtYnXk70z_14event_listener5InneruEE9drop_slowCs1gyvJd0MAV7_10async_lock(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #26
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit

_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i
  %.sroa.026.0.i = phi ptr [ %i.e, %bb.a ], [ %i.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtCs3iPtYnXk70z_14event_listener5InneruEEECsbDLrNlwBX3H_4smol.exit.i ], [ %.sroa.5.0..sroa_idx.i, %_RNvNtCsexYYUdYSQU6_5alloc5boxed14box_new_uninit.exit.i ] ; 3 uses
  %i.q = call noundef i64 @_RINvNtCsexYYUdYSQU6_5alloc4sync11data_offsetINtCs3iPtYnXk70z_14event_listener5InneruEECsbDLrNlwBX3H_4smol(ptr noundef %.sroa.026.0.i)
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr inbounds i8, ptr %.sroa.026.0.i, i64 %i.r ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.t = atomicrmw add ptr %i.s, i64 1 monotonic, align 8
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.ac, label %bb.f

bb.f:                                             ; preds = %_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.s, ptr %i.v, align 8
  store i64 0, ptr %i.d, align 8
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !noalias !302
  %i.w = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 56, i64 noundef 8) #28, !noalias !302 ; 16 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsbDLrNlwBX3H_4smol.exit, !prof !11

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #29
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBE_5InneruEEEECsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 dereferenceable(56) %i.d) #25
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEE4lockCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ac)
          to label %.noexc3 unwind label %bb.ad

.noexc3:                                          ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsbDLrNlwBX3H_4smol.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !align !5 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ag = load i8, ptr %i.af, align 8, !range !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.ae, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i8 %i.ag, ptr %i.ai, align 8
  store ptr %i.ac, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !305)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !305, !noundef !4 ; 3 uses
  %1 = ptrtoint ptr %i.al to i64                  ; 2 uses
  %i.am = load i64, ptr %i.w, align 8, !range !29, !noalias !308, !noundef !4
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.o, label %bb.j

.body.i:                                          ; preds = %bb.n, %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.w, align 8, !noalias !308
  store i8 0, ptr %i.ap, align 8, !noalias !308
  %.sroa.633.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 %1, ptr %.sroa.633.0..sroa_idx.i.i, align 8, !noalias !308
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 0, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !308
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %.body unwind label %bb.ab

bb.j:                                             ; preds = %.noexc3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !311), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !315), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !318), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !321), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !324), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !327), !noalias !314
  %i.aq = load i8, ptr %i.ap, align 8, !range !48, !alias.scope !330, !noalias !308, !noundef !4
  %i.ar = icmp eq i8 %i.aq, 2
  br i1 %i.ar, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !331), !noalias !314
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !334, !noalias !308, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !alias.scope !334, !noalias !308, !noundef !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !335, !nonnull !4, !noundef !4
  invoke void %i.aw(ptr noundef %.val1.i.i.i.i.i.i.i.i.i.i.i)
          to label %bb.o unwind label %.body.i, !noalias !305, !inline_history !336

bb.m:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !337), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !340), !noalias !314
  call void @llvm.experimental.noalias.scope.decl(metadata !343), !noalias !314
  %i.ax = load ptr, ptr %i.au, align 8, !alias.scope !346, !noalias !308, !nonnull !4, !noundef !4
  %i.ay = atomicrmw sub ptr %i.ax, i64 1 release, align 8, !noalias !347
  %i.az = icmp eq i64 %i.ay, 1
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  fence acquire, !noalias !314
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.au) #26
          to label %bb.o unwind label %.body.i, !noalias !305

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %.noexc3
  store i64 1, ptr %i.w, align 8, !noalias !308
  %.sroa.5.0..sroa_idx29.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  store i8 0, ptr %.sroa.5.0..sroa_idx29.i.i, align 8, !noalias !308
  %.sroa.633.0..sroa_idx34.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 %1, ptr %.sroa.633.0..sroa_idx34.i.i, align 8, !noalias !308
  %.sroa.7.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 0, ptr %.sroa.7.0..sroa_idx36.i.i, align 8, !noalias !308
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.ak, align 8, !alias.scope !305
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.ba, align 8, !noalias !305
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.aj, align 8, !alias.scope !305
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !305, !noundef !4
  %.not20.i.i = icmp eq ptr %i.bc, null
  br i1 %.not20.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr %.sroa.5.0..sroa_idx29.i.i, ptr %i.bb, align 8, !alias.scope !305
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 32 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !305, !noundef !4
  %i.bf = add i64 %i.be, 1
  store i64 %i.bf, ptr %i.bd, align 8, !alias.scope !305
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  invoke void @_RNvXs0_NvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !348, !nonnull !4, !align !5, !noundef !4
  %.val3.i.i = load i8, ptr %i.ai, align 8, !range !6, !alias.scope !348, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol(ptr nonnull %.val2.i.i, i8 %.val3.i.i) #25
          to label %.body unwind label %bb.aa

bb.v:                                             ; preds = %bb.t
  %.val.i.i = load ptr, ptr %i.ah, align 8, !alias.scope !348, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %.val1.i.i = load i8, ptr %i.ai, align 8, !range !6, !alias.scope !348, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.bi = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.bi, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bj = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !348
  %i.bk = and i64 %i.bj, 9223372036854775807
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.x, !prof !10

bb.x:                                             ; preds = %bb.w
  %i.bm = invoke noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
          to label %.noexc4 unwind label %bb.ad

.noexc4:                                          ; preds = %bb.x
  br i1 %i.bm, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.noexc4
  store atomic i8 1, ptr %i.bh monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.y, %.noexc4, %bb.w, %bb.v
  %i.bn = atomicrmw xchg ptr %.val.i.i, i32 0 release, align 4
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %bb.z, label %bb.ae, !prof !11

bb.z:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i)
          to label %bb.ae unwind label %bb.ad

bb.aa:                                            ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ab:                                            ; preds = %.body.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ac:                                            ; preds = %_RNvMs5_Cs3iPtYnXk70z_14event_listenerNtB5_5Event5innerCsbDLrNlwBX3H_4smol.exit
  call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.z, %bb.x, %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtB4_4sync3ArcINtBH_5InneruEEEE3newCsbDLrNlwBX3H_4smol.exit
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.u, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.ad ], [ %i.bg, %bb.u ], [ %i.ao, %.body.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtCs3iPtYnXk70z_14event_listener13InnerListeneruINtNtBW_4sync3ArcINtB1t_5InneruEEEEEECsbDLrNlwBX3H_4smol(ptr %i.w) #25
          to label %common.resume unwind label %bb.af

bb.ae:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.w

bb.af:                                            ; preds = %.body
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 4, 9) %2, i64 noundef range(i64 16, 29) %3) unnamed_addr #5 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !202
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !202

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 4, 9) %2, i64 noundef range(i64 0, 9223372036854775805) %i.b) #28
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #28
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsbDLrNlwBX3H_4smol(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !202
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !202

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

end_hunk_1
begin_hunk_2_@_RNvMsh_Cs3iPtYnXk70z_14event_listenerINtB5_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB5_5InneruEEE13poll_internalCsbDLrNlwBX3H_4smol:bb.a
bb.p:                                             ; preds = %bb.o
  %i.az = load ptr, ptr %i.l, align 8, !noalias !351, !nonnull !4, !align !5, !noundef !4
  %i.ba = icmp eq ptr %i.az, %i.as
  br i1 %i.ba, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  invoke void @_RNvMsn_Cs3iPtYnXk70z_14event_listenerNtB5_7TaskRef9into_task(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.e, i64 noundef 0, ptr noundef nonnull %i.l)
          to label %bb.s unwind label %.thread.i.i, !noalias !351

.thread.i.i:                                      ; preds = %bb.q
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !noalias !351
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.015.0.i.i = phi i1 [ true, %bb.q ], [ false, %bb.r ] ; 2 uses
  %.sroa.46.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.46.i.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.46.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !351
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !351
  store i8 2, ptr %i.v, align 8, !noalias !351
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa.01.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.46.i.i, i64 23, i1 false), !noalias !351
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  %i.bc = load i8, ptr %i.c, align 8, !range !48, !alias.scope !395, !noalias !351, !noundef !4
  %i.bd = icmp eq i8 %i.bc, 2
  br i1 %i.bd, label %bb.t, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !401, !noalias !351, !noundef !4 ; 2 uses
  %.not.i.i22.i.i = icmp eq ptr %i.bf, null
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  br i1 %.not.i.i22.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val1.i.i23.i.i = load ptr, ptr %i.bg, align 8, !alias.scope !401, !noalias !351, !noundef !4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !402, !nonnull !4, !noundef !4
  invoke void %i.bi(ptr noundef %.val1.i.i23.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i unwind label %bb.x, !noalias !351, !inline_history !403

bb.v:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !404)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %i.bj = load ptr, ptr %i.bg, align 8, !alias.scope !413, !noalias !351, !nonnull !4, !noundef !4
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !414
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i unwind label %bb.x, !noalias !351

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %.sroa.015.0.i.i, label %bb.ac, label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.46.i.i)
  br i1 %.sroa.015.0.i.i, label %bb.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i: ; preds = %bb.ab, %bb.aa, %bb.z, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !351
  br label %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i

bb.y:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit25.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.bn = load ptr, ptr %i.f, align 8, !alias.scope !415, !noalias !351, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bn, null
  %i.bo = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val1.i.i.i = load ptr, ptr %i.bo, align 8, !alias.scope !415, !noalias !351, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !418, !nonnull !4, !noundef !4
  invoke void %i.bq(ptr noundef %.val1.i.i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.ae, !inline_history !362

bb.aa:                                            ; preds = %bb.y
  call void @llvm.experimental.noalias.scope.decl(metadata !419)
  call void @llvm.experimental.noalias.scope.decl(metadata !422)
  call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.br = load ptr, ptr %i.bo, align 8, !alias.scope !428, !noalias !351, !nonnull !4, !noundef !4
  %i.bs = atomicrmw sub ptr %i.br, i64 1 release, align 8, !noalias !429
  %i.bt = icmp eq i64 %i.bs, 1
  br i1 %i.bt, label %bb.ab, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bo) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.ae

bb.ac:                                            ; preds = %bb.x, %.thread.i.i
  %i.bu = phi { ptr, i32 } [ %i.bb, %.thread.i.i ], [ %i.bm, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f) #25
          to label %.body.i unwind label %bb.ad, !noalias !351

bb.ad:                                            ; preds = %bb.ac
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !351
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.z, %bb.m, %bb.k, %bb.h, %bb.g, %bb.e, %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ae, %bb.ac, %bb.x
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bw, %bb.ae ], [ %i.bu, %bb.ac ], [ %i.bm, %bb.x ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #25
          to label %common.resume.i unwind label %bb.am

_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i, %bb.a
  %.sroa.0.0.i.i = phi i8 [ 2, %bb.a ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtCs3iPtYnXk70z_14event_listener5StateuEECsbDLrNlwBX3H_4smol.exit.i.i ], [ 0, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCs3iPtYnXk70z_14event_listener5StateuEEECsbDLrNlwBX3H_4smol.exit.i.i ], [ 1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCs3iPtYnXk70z_14event_listener4TaskECsbDLrNlwBX3H_4smol.exit.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !430)
  invoke void @_RNvXs0_NvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.ag unwind label %bb.af

bb.af:                                            ; preds = %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i = load ptr, ptr %i.q, align 8, !alias.scope !430, !nonnull !4, !align !5, !noundef !4
  %.val3.i.i = load i8, ptr %i.r, align 8, !range !6, !alias.scope !430, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol(ptr nonnull %.val2.i.i, i8 %.val3.i.i) #25
          to label %common.resume.i unwind label %bb.al

bb.ag:                                            ; preds = %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE8register0CsbDLrNlwBX3H_4smol.exit.i
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !430, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %.val1.i.i = load i8, ptr %i.r, align 8, !range !6, !alias.scope !430, !noundef !4
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 4
  %i.bz = trunc nuw i8 %.val1.i.i to i1
  br i1 %i.bz, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ca = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !430
  %i.cb = and i64 %i.ca, 9223372036854775807
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ai, !prof !10

bb.ai:                                            ; preds = %bb.ah
  %i.cd = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26
  br i1 %i.cd, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store atomic i8 1, ptr %i.by monotonic, align 4
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.ce = atomicrmw xchg ptr %.val.i.i, i32 0 release, align 4
  %i.cf = icmp eq i32 %i.ce, 2
  br i1 %i.cf, label %bb.ak, label %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit, !prof !11

bb.ak:                                            ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i)
  br label %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit

bb.al:                                            ; preds = %bb.af
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume.i:                                  ; preds = %bb.af, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bx, %bb.af ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.am:                                            ; preds = %.body.i
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit: ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  switch i8 %.sroa.0.0.i.i, label %default.unreachable [
    i8 0, label %_RNvMsk_Cs3iPtYnXk70z_14event_listenerINtB5_14RegisterResultuE8notifiedCsbDLrNlwBX3H_4smol.exit
    i8 1, label %bb.an
    i8 2, label %bb.ao
  ], !prof !433

default.unreachable:                              ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit
  unreachable

bb.an:                                            ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit
  br label %_RNvMsk_Cs3iPtYnXk70z_14event_listenerINtB5_14RegisterResultuE8notifiedCsbDLrNlwBX3H_4smol.exit

bb.ao:                                            ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 ptrtoint (ptr @3 to i64), ptr %i.a, align 8
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 ptrtoint (ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCsbDLrNlwBX3H_4smol to i64), ptr %.sroa.44.0..sroa_idx.i, align 8
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #30
  unreachable

_RNvMsk_Cs3iPtYnXk70z_14event_listenerINtB5_14RegisterResultuE8notifiedCsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit, %bb.an
  %.sroa.0.0 = phi i1 [ true, %bb.an ], [ false, %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtB7_14RegisterResultuENCNvB2_8register0ECsbDLrNlwBX3H_4smol.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6GLOBAL, i64 8) acquire, align 8
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE15get_or_try_initNCINvB2_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zEB2i_.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE10initializeNCINvB2_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zEB2d_(ptr noundef nonnull align 8 @_RNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6GLOBAL)
  br label %_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE15get_or_try_initNCINvB2_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zEB2i_.exit

_RINvMNtNtCsG258MDvU3F_3std4sync9once_lockINtB3_8OnceLockNtCsa9iXSdNszRG_14async_executor8ExecutorE15get_or_try_initNCINvB2_11get_or_initNCNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6global0E0zEB2i_.exit: ; preds = %bb.a, %bb.b
  ret ptr @_RNvNvNtCsbDLrNlwBX3H_4smol5spawn5spawn6GLOBAL
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std6thread9lifecycleINtB5_6PacketzENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = load ptr, ptr %0, align 8, !noundef !4   ; 5 uses
  %.not = icmp ne ptr %i.b, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !440 ; 6 uses
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i) ]
  %i.e = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4, !noalias !440 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.e(ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.e, !noalias !440

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !65, !invariant.load !4, !noalias !440 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %.thread, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !66, !invariant.load !4, !noalias !440
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) %i.j) #28, !noalias !440
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
          catch ptr null
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !65, !invariant.load !4, !noalias !440 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body.i.i.i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !66, !invariant.load !4, !noalias !440
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) %i.p) #28, !noalias !440
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i.i, %bb.e
  store ptr null, ptr %0, align 8, !alias.scope !440
  %i.q = extractvalue { ptr, i32 } %i.k, 0
  %i.r = invoke { ptr, ptr } @_RNvNvNtCsG258MDvU3F_3std9panicking12catch_unwind7cleanup(ptr noundef %i.q)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.f:                                             ; preds = %.body.i.i.i.i
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #27
  unreachable

.thread:                                          ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.d, %bb.a
  store ptr null, ptr %0, align 8, !alias.scope !440
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit

bb.g:                                             ; preds = %.body.i.i.i.i
  %i.t = extractvalue { ptr, ptr } %i.r, 0        ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.r, 1
  %.not4 = icmp eq ptr %i.t, null
  br i1 %.not4, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = invoke noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 62)
          to label %_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol.exit unwind label %bb.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit: ; preds = %bb.g, %.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !noundef !4 ; 2 uses
  %.not5 = icmp eq ptr %i.x, null
  br i1 %.not5, label %bb.o, label %bb.n

bb.i:                                             ; preds = %bb.h, %_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol.exit, %bb.j
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol(ptr nonnull %i.t, ptr %i.u) #25
          to label %bb.m unwind label %bb.l

_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.h
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsbDLrNlwBX3H_4smol(ptr %i.v)
          to label %bb.j unwind label %bb.i

bb.j:                                             ; preds = %_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_fmtCsbDLrNlwBX3H_4smol.exit
  invoke void @_RNvNtCsG258MDvU3F_3std7process5abort() #29
          to label %bb.k unwind label %bb.i

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.m:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.y

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  tail call void @_RNvMNtNtCsG258MDvU3F_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8 %i.aa, i1 noundef zeroext %.not)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsbDLrNlwBX3H_4smol.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtB7_13InnerListeneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtB7_5InneruEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.val.i = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !441
  call void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEE4lockCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.e), !noalias !441
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !441, !nonnull !4, !align !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !6, !noalias !441
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !441
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.g, ptr %i.j, align 8, !noalias !441
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i8 %i.i, ptr %i.k, align 8, !noalias !441
  store ptr %i.e, ptr %i.b, align 8, !noalias !441
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  invoke void @_RNvMs0_NtCs3iPtYnXk70z_14event_listener3sysINtB5_5InneruE6removeCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 %0, i1 noundef zeroext true)
          to label %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE6remove0CsbDLrNlwBX3H_4smol.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBL_5InnerpE10with_inner8ListLockuEECsbDLrNlwBX3H_4smol(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #25
          to label %common.resume.i.i unwind label %bb.j, !noalias !441

_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE6remove0CsbDLrNlwBX3H_4smol.exit.i.i: ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !444)
  invoke void @_RNvXs0_NvMs_NtCs3iPtYnXk70z_14event_listener3sysINtBc_5InnerpE10with_innerINtB5_8ListLockuENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !441

bb.c:                                             ; preds = %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE6remove0CsbDLrNlwBX3H_4smol.exit.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !444, !noalias !441, !nonnull !4, !align !5, !noundef !4
  %.val3.i.i.i = load i8, ptr %i.k, align 8, !range !6, !alias.scope !444, !noalias !441, !noundef !4
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex10MutexGuardINtNtCs3iPtYnXk70z_14event_listener3sys5InneruEEECsbDLrNlwBX3H_4smol(ptr nonnull %.val2.i.i.i, i8 %.val3.i.i.i) #25
          to label %common.resume.i.i unwind label %bb.i, !noalias !441

bb.d:                                             ; preds = %_RNCNvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB8_5InneruE6remove0CsbDLrNlwBX3H_4smol.exit.i.i
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !444, !noalias !441, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  %.val1.i.i.i = load i8, ptr %i.k, align 8, !range !6, !alias.scope !444, !noalias !441, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 4
  %i.p = trunc nuw i8 %.val1.i.i.i to i1
  br i1 %i.p, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !447
  %i.r = and i64 %i.q, 9223372036854775807
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.f, !prof !10

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26, !noalias !441
  br i1 %i.t, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store atomic i8 1, ptr %i.o monotonic, align 4, !noalias !441
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.u = atomicrmw xchg ptr %.val.i.i.i, i32 0 release, align 4, !noalias !441
  %i.v = icmp eq i32 %i.u, 2
  br i1 %i.v, label %bb.h, label %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtNtCskKLDkoKarTP_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECsbDLrNlwBX3H_4smol.exit.i, !prof !11

bb.h:                                             ; preds = %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @_RNvMNtNtNtNtCsG258MDvU3F_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %.val.i.i.i), !noalias !441
  br label %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtNtCskKLDkoKarTP_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECsbDLrNlwBX3H_4smol.exit.i

bb.i:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !441
  unreachable

common.resume.i.i:                                ; preds = %bb.c, %bb.b
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.m, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.j:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !noalias !441
  unreachable

_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtNtCskKLDkoKarTP_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECsbDLrNlwBX3H_4smol.exit.i: ; preds = %bb.h, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !441
  call void @llvm.experimental.noalias.scope.decl(metadata !448)
  %i.y = load i8, ptr %i.c, align 8, !range !377, !alias.scope !448, !noundef !4 ; 2 uses
  %i.z = icmp eq i8 %i.y, -1
  br i1 %i.z, label %_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit, label %bb.k

bb.k:                                             ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtNtCskKLDkoKarTP_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECsbDLrNlwBX3H_4smol.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !451)
  %i.aa = icmp eq i8 %i.y, 2
  br i1 %i.aa, label %bb.l, label %_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit

bb.l:                                             ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !454)
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !457, !noundef !4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val1.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !457, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !457, !nonnull !4, !noundef !4
  call void %i.af(ptr noundef %.val1.i.i.i.i), !noalias !457, !inline_history !458
  br label %_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit

bb.n:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !459)
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  call void @llvm.experimental.noalias.scope.decl(metadata !465)
  %i.ag = load ptr, ptr %i.ad, align 8, !alias.scope !468, !nonnull !4, !noundef !4
  %i.ah = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !468
  %i.ai = icmp eq i64 %i.ah, 1
  br i1 %i.ai, label %bb.o, label %_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtCs2KJ8IamB81r_7parking5InnerE9drop_slowCs3iPtYnXk70z_14event_listener(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ad) #26
  br label %_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit

_RINvNvXs0_NvCs3iPtYnXk70z_14event_listener1__INtBa_13InnerListenerppENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop12___drop_inneruINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtBa_5InneruEEECsbDLrNlwBX3H_4smol.exit: ; preds = %_RINvMs_NtCs3iPtYnXk70z_14event_listener3sysINtB7_5InneruE10with_innerINtNtCskKLDkoKarTP_4core6option6OptionINtB7_5StateuEENCNvB2_6remove0ECsbDLrNlwBX3H_4smol.exit.i, %bb.k, %bb.m, %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsG258MDvU3F_3std7process5ChildENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !65, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbDLrNlwBX3H_4smol.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 28
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #28
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbDLrNlwBX3H_4smol.exit

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbDLrNlwBX3H_4smol.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsbDLrNlwBX3H_4smol(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !65, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbDLrNlwBX3H_4smol.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCsbDLrNlwBX3H_4smol.exit

end_hunk_2
