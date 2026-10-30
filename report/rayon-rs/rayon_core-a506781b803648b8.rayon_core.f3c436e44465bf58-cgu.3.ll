Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.3?download=true
inline.NumInlined: 163
inline.NumDeleted: 97
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskVyUMSjkkSy_10rayon_core
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECskVyUMSjkkSy_10rayon_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskVyUMSjkkSy_10rayon_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVechEECskVyUMSjkkSy_10rayon_core.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle10ThreadInitECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !141, !nonnull !5, !noundef !5
  %i.b = atomicrmw add ptr %i.a, i64 -1 release, align 8, !noalias !141
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !5, !align !13, !noundef !5
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core(ptr %.val2, ptr nonnull %.val3) #24
          to label %common.resume unwind label %bb.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.g, align 8             ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.h, align 8, !nonnull !5, !align !13, !noundef !5 ; 5 uses
  %i.i = load ptr, ptr %.val1, align 8, !invariant.load !5 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.i(ptr noundef nonnull %.val)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6thread6ThreadECskVyUMSjkkSy_10rayon_core.exit
  %i.j = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !7, !invariant.load !5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !6, !invariant.load !5 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !7, !invariant.load !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #21
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ %i.d, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %bb.f
  ret void

bb.i:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15ChildSpawnHooksECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  invoke void @_RNvXNtNtCsaL1QbXo9JQH_3std6thread9spawnhookNtB2_10SpawnHooksNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %i.c = load ptr, ptr %i.a, align 8, !alias.scope !157, !noundef !5 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = atomicrmw add ptr %i.c, i64 -1 release, align 8, !noalias !158
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.d, label %.body

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #23
          to label %.body unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.g = load ptr, ptr %i.a, align 8, !alias.scope !160, !noundef !5 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECskVyUMSjkkSy_10rayon_core.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !161
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECskVyUMSjkkSy_10rayon_core.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #23
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECskVyUMSjkkSy_10rayon_core.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.c, %bb.d, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.i ], [ %i.b, %bb.d ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(24) %0) #24
          to label %common.resume unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.f, %bb.e, %bb.g
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECskVyUMSjkkSy_10rayon_core.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook10SpawnHooksECskVyUMSjkkSy_10rayon_core.exit
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB1c_6marker4SendEL_EENtNtB1a_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.l:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB14_12DefaultSpawnNtB14_11ThreadSpawn5spawn0uEB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(104) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [144 x i8], align 8               ; 4 uses
  %i.g = alloca [144 x i8], align 8               ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.k, align 8
  %i.l = trunc nuw i64 %2 to i1
  br i1 %i.l, label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB16_12DefaultSpawnNtB16_11ThreadSpawn5spawn0uE0B18_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 14)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !range !8, !noundef !5
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.q, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.m, -1
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB16_12DefaultSpawnNtB16_11ThreadSpawn5spawn0uE0B18_.exit

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !202, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !202, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !202
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %bb.g unwind label %bb.f, !noalias !202

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %.body34.thread unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !range !4, !noalias !202, !noundef !5
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !202
  br label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !202, !nonnull !5, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !202, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !202
  switch i64 %i.aa, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.y, align 1, !alias.scope !203, !noalias !202, !noundef !5 ; 2 uses
  switch i8 %i.ab, label %bb.k [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.i
  %.pr.i.i.i = load i8, ptr %i.y, align 1, !alias.scope !203, !noalias !202
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i.i.i, %bb.j
  %i.ac = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ab, %bb.j ]
  %cond.i.i.i = icmp eq i8 %i.ac, 43              ; 2 uses
  %i.ad = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.aa, %i.ad    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.ae = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ae, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i89, i64 1
  %i.ag = add nsw i64 %.sroa.15.1.i.i.i88, -1     ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.k, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i89 = phi ptr [ %i.af, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.k ] ; 2 uses
  %.sroa.15.1.i.i.i88 = phi i64 [ %i.ag, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.k ]
  %.sroa.042.0.i.i.i87 = phi i64 [ %i.ap, %.preheader56.i.i.i ], [ 0, %bb.k ]
  %i.ah = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i87, i64 10) ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  br i1 %i.ai, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.l, !prof !12

bb.l:                                             ; preds = %.preheader56.i.i.i.preheader
  %i.aj = extractvalue { i64, i1 } %i.ah, 0       ; 2 uses
  %i.ak = load i8, ptr %.sroa.0.1.i.i.i89, align 1, !alias.scope !203, !noalias !202, !noundef !5
  %i.al = zext i8 %i.ak to i32
  %i.am = add nsw i32 %i.al, -48                  ; 2 uses
  %i.an = icmp ugt i32 %i.am, 9
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = add i64 %i.aj, %i.ao                    ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.aj
  %or.cond.i.i = select i1 %i.an, i1 true, i1 %i.aq, !prof !204
  br i1 %or.cond.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !204

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.sroa.0.269.i.i.i = phi ptr [ %i.aw, %bb.m ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.av, %bb.m ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.ay, %bb.m ], [ 0, %.preheader.i.i.i ]
  %i.ar = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !203, !noalias !202, !noundef !5
  %i.as = zext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -48                  ; 2 uses
  %7 = icmp ugt i32 %i.at, 9
  br i1 %7, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.au = mul i64 %.sroa.042.267.i.i.i, 10
  %i.av = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.ax = zext nneg i32 %i.at to i64
  %i.ay = add i64 %i.au, %i.ax                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.l, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.m, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.j, %bb.j, %bb.i, %bb.h
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.h ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.j ], [ 2097152, %bb.i ], [ 2097152, %bb.j ], [ %i.ay, %bb.m ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.l ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.ap, %.preheader56.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB18_12DefaultSpawnNtB18_11ThreadSpawn5spawn0uE00B1a_.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body34.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB18_12DefaultSpawnNtB18_11ThreadSpawn5spawn0uE00B1a_.exit.i: ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc36.a unwind label %bb.r

.noexc36.a:                                       ; preds = %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB18_12DefaultSpawnNtB18_11ThreadSpawn5spawn0uE00B1a_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.q:                                             ; preds = %.noexc36.a, %.noexc
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %.noexc36.a ], [ 2097152, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %8 = add i64 %.sroa.0.0.i, 1
  store atomic i64 %8, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB16_12DefaultSpawnNtB16_11ThreadSpawn5spawn0uE0B18_.exit

.body34:                                          ; preds = %.thread, %bb.w, %bb.r
  %.sroa.016.0 = phi i8 [ %.sroa.016.2, %bb.w ], [ %.sroa.017.1, %bb.r ], [ %.sroa.016.2, %.thread ]
  %.sroa.017.0 = phi i8 [ %.sroa.017.2, %bb.w ], [ %.sroa.017.1, %bb.r ], [ %.sroa.017.2, %.thread ] ; 2 uses
  %.sroa.018.0 = phi i1 [ false, %bb.w ], [ %.sroa.018.1, %bb.r ], [ false, %.thread ] ; 2 uses
  %.pn27 = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.bd, %bb.r ], [ %.pn.pn, %.thread ] ; 2 uses
  %i.bc = trunc nuw i8 %.sroa.016.0 to i1
  br i1 %i.bc, label %.body34.thread, label %bb.bb

bb.r:                                             ; preds = %bb.aw, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB18_12DefaultSpawnNtB18_11ThreadSpawn5spawn0uE00B1a_.exit.i, %bb.c, %bb.s, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB16_12DefaultSpawnNtB16_11ThreadSpawn5spawn0uE0B18_.exit
  %.sroa.017.1 = phi i8 [ 0, %bb.aw ], [ 1, %bb.s ], [ 1, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB16_12DefaultSpawnNtB16_11ThreadSpawn5spawn0uE0B18_.exit ], [ 1, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB18_12DefaultSpawnNtB18_11ThreadSpawn5spawn0uE00B1a_.exit.i ], [ 1, %bb.c ] ; 2 uses
  %.sroa.018.1 = phi i1 [ false, %bb.aw ], [ false, %bb.s ], [ true, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB16_12DefaultSpawnNtB16_11ThreadSpawn5spawn0uE0B18_.exit ], [ true, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB18_12DefaultSpawnNtB18_11ThreadSpawn5spawn0uE00B1a_.exit.i ], [ true, %bb.c ]
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body34

_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB16_12DefaultSpawnNtB16_11ThreadSpawn5spawn0uE0B18_.exit: ; preds = %bb.q, %bb.d, %bb.a
  %.sroa.02.0 = phi i64 [ %3, %bb.a ], [ %.sroa.0.0.i, %bb.q ], [ %i.p, %bb.d ]
  %i.be = invoke noundef i64 @_RNvMNtNtCsaL1QbXo9JQH_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.s unwind label %bb.r

bb.s:                                             ; preds = %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB16_12DefaultSpawnNtB16_11ThreadSpawn5spawn0uE0B18_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bf = invoke noundef nonnull ptr @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  store ptr %i.bf, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br i1 %4, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.y unwind label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.bg, align 8
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx20, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.y

.thread:                                          ; preds = %bb.ax, %.body29.thread, %bb.ac, %bb.ba, %bb.x
  %.sroa.016.2 = phi i8 [ 1, %bb.ba ], [ 0, %bb.ac ], [ 1, %bb.x ], [ 0, %.body29.thread ], [ 0, %bb.ax ] ; 2 uses
  %.sroa.017.2 = phi i8 [ 0, %bb.ba ], [ 0, %bb.ac ], [ 1, %bb.x ], [ 0, %.body29.thread ], [ 0, %bb.ax ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bp, %bb.ba ], [ %i.br, %bb.ac ], [ %i.bk, %bb.x ], [ %eh.lpad-body3058, %.body29.thread ], [ %eh.lpad-body3058, %bb.ax ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !205)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.experimental.noalias.scope.decl(metadata !207)
  call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.bh = load ptr, ptr %i.j, align 8, !alias.scope !209, !nonnull !5, !noundef !5
  %i.bi = atomicrmw add ptr %i.bh, i64 -1 release, align 8, !noalias !209
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.w, label %.body34

bb.w:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #23
          to label %.body34 unwind label %bb.az

bb.x:                                             ; preds = %bb.u
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.y:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %5, ptr %i.bm, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !210
  %i.bn = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 145) 48, i64 noundef 8) #21, !noalias !210 ; 6 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.z, label %bb.ad, !prof !12

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #25
          to label %.noexc38 unwind label %bb.aa

.noexc38:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #24
          to label %bb.ba unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ac:                                            ; preds = %bb.au
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bn, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.bn, ptr %i.h, align 8
  %i.bs = atomicrmw add ptr %i.bn, i64 1 monotonic, align 8
  %i.bt = icmp slt i64 %i.bs, 0
  br i1 %i.bt, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.g, ptr noundef nonnull align 8 dereferenceable(104) %6, i64 104, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store ptr %i.bn, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  invoke void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8 %i.by)
          to label %bb.ah unwind label %bb.ay

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.f, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !211
  %i.bz = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 145) 144, i64 noundef 8) #21, !noalias !211 ; 3 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.ai, label %bb.al, !prof !12

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #25
          to label %.noexc39 unwind label %bb.aj

.noexc39:                                         ; preds = %bb.ai
  unreachable

bb.aj:                                            ; preds = %bb.ai
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvXs0_NtCskVyUMSjkkSy_10rayon_core8registryNtB1I_12DefaultSpawnNtB1I_11ThreadSpawn5spawn0uEs_0EB1K_(ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %i.f) #24
          to label %.body29.thread unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

.body29:                                          ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %.body29.thread

bb.al:                                            ; preds = %bb.ah
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bz, ptr noundef nonnull align 8 dereferenceable(144) %i.g, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ce = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %i.cf = atomicrmw add ptr %i.ce, i64 1 monotonic, align 8
  %i.cg = icmp slt i64 %i.cf, 0
  br i1 %i.cg, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ch = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  store ptr %i.ch, ptr %i.e, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bz, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @0, ptr %i.cj, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !212
  %i.ck = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 145) 24, i64 noundef 8) #21, !noalias !212 ; 3 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %bb.an, label %bb.ar, !prof !12

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #25
          to label %.noexc41 unwind label %bb.ao

.noexc41:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle10ThreadInitECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #24
          to label %.body29.thread unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.aq:                                            ; preds = %bb.al
  call void @llvm.trap()
  unreachable

bb.ar:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.co = invoke { i64, ptr } @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef %.sroa.02.0, ptr noalias noundef nonnull align 8 %i.ck)
          to label %bb.as unwind label %.body29   ; 2 uses

end_hunk_0
