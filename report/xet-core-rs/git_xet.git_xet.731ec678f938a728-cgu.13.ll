Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/git_xet.git_xet.731ec678f938a728-cgu.13?download=true
begin_hunk_0_@_RNvMs_NtNtCsUrhh0HcRih_5tokio4task8join_setINtB4_7JoinSetINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEE6insertCs9SMuO7kbZ2K_7git_xet:bb.a
bb.aa:                                            ; preds = %bb.ab, %.thread12, %bb.x
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

.thread12:                                        ; preds = %bb.e, %bb.f, %bb.i, %bb.j, %bb.x, %bb.w
  %.pn16 = phi { ptr, i32 } [ %i.aw, %bb.x ], [ %i.aw, %bb.w ], [ %.pn.i, %bb.j ], [ %.pn.i, %bb.i ], [ %i.r, %bb.e ], [ %i.r, %bb.f ]
  invoke void @_RNvXs4_NtNtNtCsUrhh0HcRih_5tokio7runtime4task5abortNtB5_11AbortHandleNtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEEECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.aa

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %.thread12, %bb.ab
  %.pn.pn11 = phi { ptr, i32 } [ %i.bd, %bb.ab ], [ %.pn16, %.thread12 ]
  resume { ptr, i32 } %.pn.pn11

bb.ab:                                            ; preds = %bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs5_NtNtNtCsUrhh0HcRih_5tokio7runtime4task4joinINtB5_10JoinHandleINtNtCskKLDkoKarTP_4core6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEENtNtNtB19_3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsUrhh0HcRih_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtCsjHtSR7YjKD4_8xet_data5error9DataErrorEEECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.aa
}

; Function Attrs: noinline nonlazybind uwtable
define hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEE9drop_slowCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !945)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !954, !nonnull !14, !noundef !14
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !954
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtB1i_2io5stdio6StdoutEEECs9SMuO7kbZ2K_7git_xet.exit.i.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtBP_2io5stdio6StdoutEE9drop_slowCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c) #37
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtB1i_2io5stdio6StdoutEEECs9SMuO7kbZ2K_7git_xet.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtB1i_2io5stdio6StdoutEEECs9SMuO7kbZ2K_7git_xet.exit.i.i: ; preds = %bb.b, %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol16progress_updater15ProgressUpdaterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEECs9SMuO7kbZ2K_7git_xet.exit.i unwind label %bb.c

bb.c:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtB1i_2io5stdio6StdoutEEECs9SMuO7kbZ2K_7git_xet.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol16progress_updater15ProgressUpdaterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEECs9SMuO7kbZ2K_7git_xet.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtB1i_2io5stdio6StdoutEEECs9SMuO7kbZ2K_7git_xet.exit.i.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEECs9SMuO7kbZ2K_7git_xet.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol16progress_updater15ProgressUpdaterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEECs9SMuO7kbZ2K_7git_xet.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  %i.j = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.f

bb.f:                                             ; preds = %.body
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) 64, i64 noundef 8) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs1YANDSn9Kib_7git_xet18lfs_agent_protocol16progress_updater15ProgressUpdaterNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEECs9SMuO7kbZ2K_7git_xet.exit.i
  %i.n = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit2, label %bb.h

bb.h:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEECs9SMuO7kbZ2K_7git_xet.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = atomicrmw sub ptr %i.o, i64 1 release, align 8
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit2

bb.i:                                             ; preds = %bb.h
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) 64, i64 noundef 8) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit2: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutEECs9SMuO7kbZ2K_7git_xet.exit, %bb.h, %bb.i
  ret void

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtCs1YANDSn9Kib_7git_xet3app9xet_agent25XetProgressUpdaterWrapperNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.g, %bb.f, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define hidden void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtBP_2io5stdio6StdoutEE9drop_slowCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtB1j_2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtB1j_2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) 32, i64 noundef 8) #29
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtB1j_2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync4WeakINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexNtNtNtB1j_2io5stdio6StdoutERNtNtBG_5alloc6GlobalEECs9SMuO7kbZ2K_7git_xet.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsarFSTFZzLuM_11xet_runtime4core7runtime6native10XetRuntimeE9downgradeCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.backedge.sink.split

.backedge.sink.split:                             ; preds = %bb.a, %bb.b
  %i.c = load atomic i64, ptr %i.b monotonic, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %bb.d
  %.sroa.0.0 = phi i64 [ %i.i, %bb.d ], [ %i.c, %.backedge.sink.split ] ; 4 uses
  %i.d = icmp eq i64 %.sroa.0.0, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.backedge
  tail call void @llvm.x86.sse2.pause()
  br label %.backedge.sink.split

bb.c:                                             ; preds = %.backedge
  %i.e = icmp slt i64 %.sroa.0.0, 0
  br i1 %i.e, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.f = add nuw i64 %.sroa.0.0, 1
  %i.g = cmpxchg weak ptr %i.b, i64 %.sroa.0.0, i64 %i.f acquire monotonic, align 8 ; 2 uses
  %i.h = extractvalue { i64, i1 } %i.g, 1
  %i.i = extractvalue { i64, i1 } %i.g, 0
  br i1 %i.h, label %bb.f, label %.backedge

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc4sync18panic_arc_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #35
  unreachable

bb.f:                                             ; preds = %bb.d
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE15copy_from_sliceCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_RNvNtCsexYYUdYSQU6_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %1) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0        ; 3 uses
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 3 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = inttoptr i64 %i.b to ptr
  br label %_RNCNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs9SMuO7kbZ2K_7git_xet.exit.i.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29
  %i.f = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) %i.b) #29
  br label %_RNCNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs9SMuO7kbZ2K_7git_xet.exit.i.i

_RNCNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs9SMuO7kbZ2K_7git_xet.exit.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.e, %bb.b ], [ %i.f, %bb.c ] ; 5 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, null
  br i1 %i.g, label %bb.d, label %_RNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCs9SMuO7kbZ2K_7git_xet.exit, !prof !16

bb.d:                                             ; preds = %_RNCNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs9SMuO7kbZ2K_7git_xet.exit.i.i
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef %i.b, i64 noundef %i.c) #33
  unreachable

_RNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE18allocate_for_sliceCs9SMuO7kbZ2K_7git_xet.exit: ; preds = %_RNCNvMsq_NtCsexYYUdYSQU6_5alloc4syncINtB7_3ArcShE18allocate_for_slice0Cs9SMuO7kbZ2K_7git_xet.exit.i.i
  %i.h = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %1, 1
  store i64 1, ptr %.sroa.0.0.i.i.i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  store i64 1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %0, i64 %1, i1 false)
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsG258MDvU3F_3std4path7PathBufINtB2_10EquivalentBq_E10equivalentCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %.sroa.5.i.i = alloca [39 x i8], align 1        ; 4 uses
  %.sroa.518.i.i = alloca [39 x i8], align 1      ; 4 uses
  %i.a = alloca [64 x i8], align 8                ; 10 uses
  %i.b = alloca [64 x i8], align 8                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 13 uses
  %i.d = alloca [64 x i8], align 8                ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.f, align 8, !noundef !14
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @_RNvMs16_NtCsG258MDvU3F_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val2, i64 noundef %.val3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.518.i.i)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !955, !noalias !958, !noundef !14 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !958, !noalias !955, !noundef !14 ; 2 uses
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  %.pre.i.i = load ptr, ptr %i.d, align 8, !alias.scope !955, !noalias !958
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.o = load i8, ptr %i.n, align 8, !range !517, !alias.scope !955, !noalias !958, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.q = load i8, ptr %i.p, align 8, !range !517, !alias.scope !958, !noalias !955, !noundef !14
  %i.r = icmp eq i8 %i.o, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %i.t = load i8, ptr %i.s, align 1, !range !517, !alias.scope !955, !noalias !958
  %i.u = icmp eq i8 %i.t, 2
  %or.cond.i.i = select i1 %i.r, i1 %i.u, i1 false
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.w = load i8, ptr %i.v, align 1, !range !517, !alias.scope !958, !noalias !955
  %i.x = icmp eq i8 %i.w, 2
  %or.cond7.i.i = select i1 %or.cond.i.i, i1 %i.x, i1 false
  %.pre27.i.i = load ptr, ptr %i.d, align 8, !alias.scope !955, !noalias !958 ; 3 uses
  br i1 %or.cond7.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b, %._crit_edge.i.i
  %i.y = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %.pre27.i.i, %bb.d ], [ %.pre27.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !960
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aa = load i8, ptr %i.z, align 8, !range !519, !alias.scope !955, !noalias !958, !noundef !14 ; 2 uses
  %.not.i.i = icmp eq i8 %i.aa, -1
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ab = load ptr, ptr %i.c, align 8, !alias.scope !958, !noalias !955, !nonnull !14, !noundef !14
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %.pre27.i.i, ptr nonnull %i.ab, i64 %i.j), !noalias !960
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %_RNvXsW_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.420.0..sroa_idx.i.i, i64 39, i1 false), !noalias !958
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 58
  %i.ae = load i8, ptr %i.ad, align 2, !range !520, !alias.scope !955, !noalias !958, !noundef !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ag = load i8, ptr %i.af, align 8, !range !517, !alias.scope !955, !noalias !958, !noundef !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 57
  %i.ai = load i8, ptr %i.ah, align 1, !range !517, !alias.scope !955, !noalias !958, !noundef !14
  store ptr %i.y, ptr %i.b, align 8, !noalias !960
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !960
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %i.aa, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !960
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.518.i.i, i64 39, i1 false), !noalias !960
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i8 %i.ag, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !960
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 57
  store i8 %i.ai, ptr %.sroa.7.0..sroa_idx.i.i, align 1, !noalias !960
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 58
  store i8 %i.ae, ptr %.sroa.8.0..sroa_idx.i.i, align 2, !noalias !960
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !960
  %i.aj = load ptr, ptr %i.c, align 8, !alias.scope !958, !noalias !955, !nonnull !14, !noundef !14
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.al = load i8, ptr %i.ak, align 8, !range !519, !alias.scope !958, !noalias !955, !noundef !14 ; 2 uses
  %.not26.i.i = icmp eq i8 %i.al, -1
  br i1 %.not26.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i, ptr noundef nonnull readonly align 1 dereferenceable(39) %.sroa.425.0..sroa_idx.i.i, i64 39, i1 false), !noalias !955
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 58
  %i.an = load i8, ptr %i.am, align 2, !range !520, !alias.scope !958, !noalias !955, !noundef !14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ap = load i8, ptr %i.ao, align 8, !range !517, !alias.scope !958, !noalias !955, !noundef !14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 57
  %i.ar = load i8, ptr %i.aq, align 1, !range !517, !alias.scope !958, !noalias !955, !noundef !14
  store ptr %i.aj, ptr %i.a, align 8, !noalias !960
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.l, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !960
  %.sroa.511.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.al, ptr %.sroa.511.0..sroa_idx.i.i, align 8, !noalias !960
  %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.511.sroa.4.0..sroa.511.0..sroa_idx.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.5.i.i, i64 39, i1 false), !noalias !960
  %.sroa.612.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %i.ap, ptr %.sroa.612.0..sroa_idx.i.i, align 8, !noalias !960
  %.sroa.713.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 57
  store i8 %i.ar, ptr %.sroa.713.0..sroa_idx.i.i, align 1, !noalias !960
  %.sroa.814.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i8 %i.an, ptr %.sroa.814.0..sroa_idx.i.i, align 2, !noalias !960
  %i.as = call noundef zeroext i1 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3rev3RevNtNtCsG258MDvU3F_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1u_2eqB3_E0ECs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a), !noalias !960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !960
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !960
  br label %_RNvXsW_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXsW_NtCsG258MDvU3F_3std4pathNtB5_7PathBufNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.d, %bb.h
  %.sroa.0.0.i.i = phi i1 [ %i.as, %bb.h ], [ true, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.518.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCsexYYUdYSQU6_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !14 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8, !noundef !14
  %i.c = icmp eq i64 %.val1, %.val3
  br i1 %i.c, label %bb.b, label %_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val2 = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.e, align 8, !nonnull !14, !noundef !14
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val2, i64 %.val1)
  %i.f = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXs1h_NtCsexYYUdYSQU6_5alloc6stringNtB6_6StringNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrowneINtB2_10EquivalentNtNtCsexYYUdYSQU6_5alloc6string6StringE10equivalentCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load i64, ptr %i.a, align 8, !noundef !14
  %i.b = icmp eq i64 %1, %.val1
  br i1 %i.b, label %bb.b, label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %0, ptr nonnull readonly %.val, i64 %1), !alias.scope !961
  %i.d = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit

_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.d, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownyINtB2_10EquivalentyE10equivalentCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8, !noundef !14
  %.val1 = load i64, ptr %1, align 8, !noundef !14
  %i.a = icmp eq i64 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXNtCs9cMRaHlbVM3_8arrayvec8arrayvecINtB2_8ArrayVecAhj20_Kj37_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs9SMuO7kbZ2K_7git_xet(ptr noalias nofree noundef align 4 captures(none) dereferenceable(1764) %0) unnamed_addr #13 {
bb.a:
  %.val.i = load i32, ptr %0, align 4, !alias.scope !965, !noundef !14
  %.not.i = icmp eq i32 %.val.i, 0
end_hunk_0
