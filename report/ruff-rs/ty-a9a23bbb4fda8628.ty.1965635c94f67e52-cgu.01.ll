Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty-a9a23bbb4fda8628.ty.1965635c94f67e52-cgu.01?download=true
inline.NumInlined: 653
inline.NumDeleted: 421
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options11TyTomlErrorECs2bbjMbSOFjy_2ty:bb.a

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2bbjMbSOFjy_2ty.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2bbjMbSOFjy_2ty.exit.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !77, !noundef !3 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit.i, label %bb.e

bb.e:                                             ; preds = %.body.i
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !80
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit.i unwind label %bb.l

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2bbjMbSOFjy_2ty.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !88, !noundef !3 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit3.i, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit.i
  %i.m = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !89
  %i.n = icmp eq i64 %i.m, 1
  br i1 %i.n, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit3.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs5oRRSLMQMUC_4jiff(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit3.i unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit.i: ; preds = %bb.i, %bb.f, %bb.e, %.body.i
  %.pn.i = phi { ptr, i32 } [ %i.p, %bb.i ], [ %eh.lpad-body.i, %bb.f ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.e ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(24) %i.o) #31
          to label %common.resume.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit3.i: ; preds = %bb.h, %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2bbjMbSOFjy_2ty.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs2bbjMbSOFjy_2ty.exit unwind label %bb.j

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit3.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume.i:                                  ; preds = %bb.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.r, %bb.j ], [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit.i, %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsd1Od0hvlDsw_4toml2de5error5ErrorECs2bbjMbSOFjy_2ty.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc4sync3ArceEEECs2bbjMbSOFjy_2ty.exit3.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEEIBD_INtB1b_7StealerB1V_EEEECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEEECs2bbjMbSOFjy_2ty.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsjulH565TUV7_15crossbeam_deque5deque7StealerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEEECs2bbjMbSOFjy_2ty(ptr noalias noundef align 8 dereferenceable(24) %i.d) #31
          to label %common.resume unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEEECs2bbjMbSOFjy_2ty.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsjulH565TUV7_15crossbeam_deque5deque7StealerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsjulH565TUV7_15crossbeam_deque5deque7StealerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEEECs2bbjMbSOFjy_2ty.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEEECs2bbjMbSOFjy_2ty.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsjulH565TUV7_15crossbeam_deque5deque7StealerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsjulH565TUV7_15crossbeam_deque5deque7StealerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEEECs2bbjMbSOFjy_2ty.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEEECs2bbjMbSOFjy_2ty.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsjulH565TUV7_15crossbeam_deque5deque7StealerNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort12sort4_stableNtNtCsoTR8nlGN3X_18ty_python_semantic4lint6LintIdNCINvMNtCscdodAO9FK5_5alloc5sliceSB19_11sort_by_keyNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNCNvNtCs2bbjMbSOFjy_2ty4rule5rules0E0EB3C_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 32)) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %.val9 = load ptr, ptr %0, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val8, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %.val8, i64 48
  %i.e = load i64, ptr %i.d, align 8, !noundef !3 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val9, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %.val9, i64 48
  %i.i = load i64, ptr %i.h, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.i)
  %i.j = tail call i32 @memcmp(ptr nonnull readonly %i.c, ptr nonnull readonly %i.g, i64 %spec.store.select.i.i.i.i), !alias.scope !94 ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = icmp eq i32 %i.j, 0
  %i.m = sub i64 %i.e, %i.i
  %spec.select.i.i.i.i = select i1 %i.l, i64 %i.m, i64 %i.k ; 2 uses
  %i.n = icmp sgt i64 %spec.select.i.i.i.i, -1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.o, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %.val7 = load ptr, ptr %i.p, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val6, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.val6, i64 48
  %i.t = load i64, ptr %i.s, align 8, !noundef !3 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val7, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !3, !noundef !3
  %i.w = getelementptr inbounds nuw i8, ptr %.val7, i64 48
  %i.x = load i64, ptr %i.w, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i10 = tail call i64 @llvm.umin.i64(i64 %i.t, i64 %i.x)
  %i.y = tail call i32 @memcmp(ptr nonnull readonly %i.r, ptr nonnull readonly %i.v, i64 %spec.store.select.i.i.i.i10), !alias.scope !98 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.t, %i.x
  %spec.select.i.i.i.i11 = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp slt i64 %spec.select.i.i.i.i11, 0  ; 2 uses
  %spec.select.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i, 63
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %spec.select.i.i.i.i.lobit ; 2 uses
  %i.ae = zext i1 %i.n to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ae ; 4 uses
  %i.ag = select i1 %i.ac, i64 3, i64 2
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag ; 3 uses
  %i.ai = select i1 %i.ac, i64 2, i64 3
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai ; 3 uses
  %.val4 = load ptr, ptr %i.ah, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %.val5 = load ptr, ptr %i.ad, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !3, !noundef !3
  %i.am = getelementptr inbounds nuw i8, ptr %.val4, i64 48
  %i.an = load i64, ptr %i.am, align 8, !noundef !3 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val5, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !3, !noundef !3
  %i.aq = getelementptr inbounds nuw i8, ptr %.val5, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i12 = tail call i64 @llvm.umin.i64(i64 %i.an, i64 %i.ar)
  %i.as = tail call i32 @memcmp(ptr nonnull readonly %i.al, ptr nonnull readonly %i.ap, i64 %spec.store.select.i.i.i.i12), !alias.scope !102 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp eq i32 %i.as, 0
  %i.av = sub i64 %i.an, %i.ar
  %spec.select.i.i.i.i13 = select i1 %i.au, i64 %i.av, i64 %i.at
  %i.aw = icmp slt i64 %spec.select.i.i.i.i13, 0  ; 3 uses
  %.val2 = load ptr, ptr %i.aj, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %.val3 = load ptr, ptr %i.af, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val2, i64 40
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !3, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %.val2, i64 48
  %i.ba = load i64, ptr %i.az, align 8, !noundef !3 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val3, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !nonnull !3, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %.val3, i64 48
  %i.be = load i64, ptr %i.bd, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i14 = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.be)
  %i.bf = tail call i32 @memcmp(ptr nonnull readonly %i.ay, ptr nonnull readonly %i.bc, i64 %spec.store.select.i.i.i.i14), !alias.scope !106 ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp eq i32 %i.bf, 0
  %i.bi = sub i64 %i.ba, %i.be
  %spec.select.i.i.i.i15 = select i1 %i.bh, i64 %i.bi, i64 %i.bg
  %i.bj = icmp slt i64 %spec.select.i.i.i.i15, 0  ; 3 uses
  %i.bk = select i1 %i.bj, ptr %i.ah, ptr %i.af, !unpredictable !3
  %i.bl = select i1 %i.aw, ptr %i.ad, ptr %i.bk, !unpredictable !3 ; 3 uses
  %i.bm = select i1 %i.aw, ptr %i.af, ptr %i.ah, !unpredictable !3
  %i.bn = select i1 %i.bj, ptr %i.aj, ptr %i.bm, !unpredictable !3 ; 3 uses
  %.val = load ptr, ptr %i.bn, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %.val1 = load ptr, ptr %i.bl, align 8, !nonnull !3, !align !4, !noundef !3 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !3, !noundef !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.br = load i64, ptr %i.bq, align 8, !noundef !3 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val1, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8, !nonnull !3, !noundef !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.val1, i64 48
  %i.bv = load i64, ptr %i.bu, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i16 = tail call i64 @llvm.umin.i64(i64 %i.br, i64 %i.bv)
  %i.bw = tail call i32 @memcmp(ptr nonnull readonly %i.bp, ptr nonnull readonly %i.bt, i64 %spec.store.select.i.i.i.i16), !alias.scope !110 ; 2 uses
  %i.bx = sext i32 %i.bw to i64
  %i.by = icmp eq i32 %i.bw, 0
  %i.bz = sub i64 %i.br, %i.bv
  %spec.select.i.i.i.i17 = select i1 %i.by, i64 %i.bz, i64 %i.bx
  %i.ca = icmp slt i64 %spec.select.i.i.i.i17, 0  ; 2 uses
  %.v = select i1 %i.aw, ptr %.val4, ptr %.val5, !unpredictable !3
  %2 = ptrtoint ptr %.v to i64
  store i64 %2, ptr %1, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12.a = load i64, ptr %i.bn, align 8
  %.val13.a = load i64, ptr %i.bl, align 8
  %i.cc = select i1 %i.ca, i64 %.val12.a, i64 %.val13.a, !unpredictable !3
  store i64 %i.cc, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val14.a = load i64, ptr %i.bl, align 8
  %.val15.a = load i64, ptr %i.bn, align 8
  %i.ce = select i1 %i.ca, i64 %.val14.a, i64 %.val15.a, !unpredictable !3
  store i64 %i.ce, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val16 = load i64, ptr %i.af, align 8
  %.val17 = load i64, ptr %i.aj, align 8
  %i.cg = select i1 %i.bj, i64 %.val16, i64 %.val17, !unpredictable !3
  store i64 %i.cg, ptr %i.cf, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsoTR8nlGN3X_18ty_python_semantic4lint6LintIdNCINvMNtCscdodAO9FK5_5alloc5sliceSB1g_11sort_by_keyNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic8LintNameNCNvNtCs2bbjMbSOFjy_2ty4rule5rules0E0EB3J_(ptr noalias noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 2, 1152921504606846976) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = add nsw i64 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.b
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %i.as, i64 8       ; 2 uses
  %i.h = getelementptr i8, ptr %i.ar, i64 8
  %i.i = and i64 %1, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.0.014 = phi ptr [ %i.ac, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.013 = phi i64 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.012 = phi ptr [ %i.ab, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %.sroa.011.011 = phi ptr [ %i.z, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 2 uses
  %.sroa.015.010 = phi ptr [ %i.as, %.lr.ph ], [ %i.f, %.lr.ph.preheader ] ; 2 uses
  %.sroa.017.09 = phi ptr [ %i.ar, %.lr.ph ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.sroa.019.08 = phi ptr [ %i.at, %.lr.ph ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.04.013, 1         ; 2 uses
  %.sroa.011.0.val = load ptr, ptr %.sroa.011.011, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %.sroa.06.0.val = load ptr, ptr %.sroa.06.012, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.011.0.val, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !3, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.011.0.val, i64 48
  %i.o = load i64, ptr %i.n, align 8, !noundef !3 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val, i64 48
  %i.s = load i64, ptr %i.r, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 %i.s)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %i.m, ptr nonnull readonly %i.q, i64 %spec.store.select.i.i.i.i), !alias.scope !114 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %i.o, %i.s
  %spec.select.i.i.i.i = select i1 %i.v, i64 %i.w, i64 %i.u ; 2 uses
  %i.x = icmp sgt i64 %spec.select.i.i.i.i, -1    ; 2 uses
  %.v = select i1 %i.x, ptr %.sroa.06.0.val, ptr %.sroa.011.0.val
  %i.y = ptrtoint ptr %.v to i64
  store i64 %i.y, ptr %.sroa.0.014, align 8, !noalias !118
  %spec.select.i.i.i.i.lobit = lshr i64 %spec.select.i.i.i.i, 63
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.011, i64 %spec.select.i.i.i.i.lobit ; 4 uses
  %i.aa = zext i1 %i.x to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.012, i64 %i.aa ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8 ; 2 uses
  %.sroa.017.0.val = load ptr, ptr %.sroa.017.09, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %.sroa.015.0.val = load ptr, ptr %.sroa.015.010, align 8, !nonnull !3, !align !4, !noundef !3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.017.0.val, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !3, !noundef !3
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.017.0.val, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !noundef !3 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.0.val, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !3, !noundef !3
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.015.0.val, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !3 ; 2 uses
  %spec.store.select.i.i.i.i24 = tail call i64 @llvm.umin.i64(i64 %i.ag, i64 %i.ak)
  %i.al = tail call i32 @memcmp(ptr nonnull readonly %i.ae, ptr nonnull readonly %i.ai, i64 %spec.store.select.i.i.i.i24), !alias.scope !122 ; 2 uses
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i32 %i.al, 0
  %i.ao = sub i64 %i.ag, %i.ak
  %spec.select.i.i.i.i25 = select i1 %i.an, i64 %i.ao, i64 %i.am ; 2 uses
  %i.ap = icmp sgt i64 %spec.select.i.i.i.i25, -1 ; 2 uses
  %.v23 = select i1 %i.ap, ptr %.sroa.017.0.val, ptr %.sroa.015.0.val
  %i.aq = ptrtoint ptr %.v23 to i64
  store i64 %i.aq, ptr %.sroa.019.08, align 8, !noalias !126
  %.neg.i = sext i1 %i.ap to i64
  %i.ar = getelementptr [8 x i8], ptr %.sroa.017.09, i64 %.neg.i ; 2 uses
  %spec.select.i.i.i.i25.lobit = ashr i64 %spec.select.i.i.i.i25, 63
  %i.as = getelementptr [8 x i8], ptr %.sroa.015.010, i64 %spec.select.i.i.i.i25.lobit ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.sroa.019.08, i64 -8
  %exitcond.not = icmp eq i64 %i.k, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.a:                                             ; preds = %._crit_edge
  %i.au = icmp ult ptr %i.ab, %i.g                ; 3 uses
  %.sroa.06.0..sroa.011.0 = select i1 %i.au, ptr %i.ab, ptr %i.z
  %i.av = load i64, ptr %.sroa.06.0..sroa.011.0, align 8
  store i64 %i.av, ptr %i.ac, align 8
  %i.aw = zext i1 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.aw
  %i.ay = xor i1 %i.au, true
  %i.az = zext i1 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.az
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.011.1 = phi ptr [ %i.z, %._crit_edge ], [ %i.ba, %bb.a ]
  %.sroa.06.1 = phi ptr [ %i.ab, %._crit_edge ], [ %i.ax, %bb.a ]
  %i.bb = icmp ne ptr %.sroa.06.1, %i.g
  %i.bc = icmp ne ptr %.sroa.011.1, %i.h
  %or.cond = select i1 %i.bb, i1 true, i1 %i.bc, !prof !130
  br i1 %or.cond, label %bb.d, label %bb.c, !prof !130

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #32
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB1m_7sort_byNCINvMs1_B1o_NtB1o_5Zalsa3newNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseE0E0ECs2bbjMbSOFjy_2ty(ptr noalias noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 230584300921369396) %1, i64 noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  %i.b = add i64 %2, -1
  %or.cond.not = icmp ult i64 %i.b, %1
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  %.not5 = icmp samesign eq i64 %2, %1
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseE0E0ECs2bbjMbSOFjy_2ty.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseE0E0ECs2bbjMbSOFjy_2ty.exit
  %.sroa.0.06 = phi ptr [ %i.d, %.lr.ph ], [ %i.av, %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseE0E0ECs2bbjMbSOFjy_2ty.exit ] ; 7 uses
  %i.f = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -40 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  call void @llvm.experimental.noalias.scope.decl(metadata !136)
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 32
  %i.h = load i8, ptr %i.g, align 8, !range !68, !alias.scope !141, !noalias !142, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.06, i64 -8
  %i.j = load i8, ptr %i.i, align 8, !range !68, !alias.scope !142, !noalias !141, !noundef !3 ; 2 uses
  %i.k = sub nsw i8 %i.h, %i.j
  %i.l = call { ptr, i64 } @_RNvMs3_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.0.06), !noalias !142 ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1        ; 2 uses
  %i.o = call { ptr, i64 } @_RNvMs3_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_9ErasedJar9type_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f) ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.o, 0
  %i.q = extractvalue { ptr, i64 } %i.o, 1        ; 2 uses
  %spec.store.select.i.i.i = call i64 @llvm.umin.i64(i64 %i.n, i64 %i.q)
  %i.r = call i32 @memcmp(ptr %i.m, ptr %i.p, i64 %spec.store.select.i.i.i) ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub i64 %i.n, %i.q
  %spec.select.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s
  %i.v = icmp eq i8 %i.h, %i.j
  %i.w = icmp slt i64 %spec.select.i.i.i, 0
  %i.x = icmp eq i8 %i.k, -1
  %i.y = select i1 %i.v, i1 %i.w, i1 %i.x
  br i1 %i.y, label %bb.e, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared9smallsort11insert_tailNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarNCINvMNtCscdodAO9FK5_5alloc5sliceSB18_7sort_byNCINvMs1_B1a_NtB1a_5Zalsa3newNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseE0E0ECs2bbjMbSOFjy_2ty.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.06, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.06, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false)
  %i.z = icmp eq ptr %i.f, %0
  br i1 %i.z, label %._crit_edge18, label %.lr.ph17.preheader

.lr.ph17.preheader:                               ; preds = %bb.e
  %i.aa = load i8, ptr %i.e, align 8, !range !68, !alias.scope !143, !noalias !148, !noundef !3 ; 2 uses
  br label %.lr.ph17

bb.f:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.0.i15, ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i64 40, i1 false)
  %i.ab = icmp eq ptr %i.ac, %0
  br i1 %i.ab, label %._crit_edge18, label %.lr.ph17

.lr.ph17:                                         ; preds = %.lr.ph17.preheader, %bb.f
  %.sroa.0.0.i15 = phi ptr [ %i.ac, %bb.f ], [ %i.f, %.lr.ph17.preheader ] ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.0.i15, i64 -40 ; 4 uses
end_hunk_0
