Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker.elfshaker.5892cc60208a05dd-cgu.00?download=true
inline.NumInlined: 1399
inline.NumDeleted: 735
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matches9ValuesRefB12_EE9from_iterCs7BtpbLEd5q3_9elfshaker:bb.a
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7BtpbLEd5q3_9elfshaker.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit unwind label %bb.h

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCskfBPnJUU6aB_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EE11spec_extendCs7BtpbLEd5q3_9elfshaker.exit: ; preds = %.noexc8, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtBG_6string6StringEECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB2m_4path7PathBufINtNtBb_6result6ResultNtNtB59_7packidx9FileEntryNtNtNtBb_2io5error5ErrorENCINvMs0_NtB57_10repositoryNtB7D_10Repository15create_snapshotINtNtB1j_9into_iter8IntoIterB5Y_EB5Y_E0B8u_E0IB6k_INtB1j_3VecB6j_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1846
  store ptr %i.f, ptr %i.e, align 8, !noalias !1847
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !1847
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1848, !noalias !1849, !nonnull !5, !noundef !5
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1848, !noalias !1849
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB1V_4path7PathBufINtNtBa_6result6ResultNtNtB6o_7packidx9FileEntryNtNtNtBa_2io5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8S_10Repository15create_snapshotINtNtNtB1j_3vec9into_iter8IntoIterB7d_EB7d_E0B9J_E0IB7z_INtB9O_3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.a
  %i.l = phi ptr [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB1V_4path7PathBufINtNtBa_6result6ResultNtNtB6o_7packidx9FileEntryNtNtNtBa_2io5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8S_10Repository15create_snapshotINtNtNtB1j_3vec9into_iter8IntoIterB7d_EB7d_E0B9J_E0IB7z_INtB9O_3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB2d_4path7PathBufINtNtBc_6result6ResultNtNtB50_7packidx9FileEntryNtNtNtBc_2io5error5ErrorENCINvMs0_NtB4Y_10repositoryNtB7u_10Repository15create_snapshotINtNtB1a_9into_iter8IntoIterB5P_EB5P_E0B8l_E0IB6b_INtB1a_3VecB6a_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9p_QNCB44_s0_0ECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !1848, !noalias !1849
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1851, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1852
  store ptr %i.o, ptr %i.d, align 8, !noalias !1853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1853
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.p)
          to label %bb.f unwind label %bb.d, !noalias !1854

bb.d:                                             ; preds = %bb.o, %bb.m, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.z, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1855)
  call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  %i.r = load ptr, ptr %i.d, align 8, !alias.scope !1857, !noalias !1853, !nonnull !5, !noundef !5
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1858
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i

bb.e:                                             ; preds = %.body.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.q, !noalias !1854

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  %i.u = load i64, ptr %i.c, align 8, !range !20, !alias.scope !1859, !noalias !1853, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.k, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1860
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !1859, !noalias !1853, !nonnull !5, !align !9, !noundef !5
  %i.x = load i8, ptr %i.k, align 8, !range !14, !alias.scope !1859, !noalias !1853, !noundef !5
  store ptr %i.w, ptr %i.b, align 8, !noalias !1860
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.x, ptr %i.y, align 8, !noalias !1860
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.i unwind label %bb.h, !noalias !1861

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %.body.i.i.i.i.i unwind label %bb.j, !noalias !1861

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1861
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !1859, !noalias !1853, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.ac = load i8, ptr %i.k, align 8, !range !14, !alias.scope !1859, !noalias !1853, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1853
  %.sroa.0.0.copyload2.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !1862 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i, i64 16, i1 false), !noalias !1862
  store ptr null, ptr %i.ae, align 8, !noalias !1854
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1853
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc4.i.i.i.i.i unwind label %bb.d, !noalias !1854

.noexc4.i.i.i.i.i:                                ; preds = %bb.m
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc4.i.i.i.i.i
  store atomic i8 1, ptr %i.af monotonic, align 4, !noalias !1854
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.noexc4.i.i.i.i.i, %bb.l, %bb.k
  %i.ak = atomicrmw xchg ptr %i.ab, i32 0 release, align 4, !noalias !1854
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, !prof !16

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.d, !noalias !1854

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1863)
  call void @llvm.experimental.noalias.scope.decl(metadata !1864)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !1865, !noalias !1853, !nonnull !5, !noundef !5
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !1866
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBX_7packidx9FileEntryNtNtNtB2q_2io5error5ErrorENCINvMs0_NtBV_10repositoryNtB3V_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EB1M_E0B4L_E0IB2m_INtB4Q_3VecB2l_EINtNtB4S_5boxed3BoxDNtNtB2q_3any3AnyNtNtB2q_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21, !noalias !1854
  br label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBX_7packidx9FileEntryNtNtNtB2q_2io5error5ErrorENCINvMs0_NtBV_10repositoryNtB3V_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EB1M_E0B4L_E0IB2m_INtB4Q_3VecB2l_EINtNtB4S_5boxed3BoxDNtNtB2q_3any3AnyNtNtB2q_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i

bb.q:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1854
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.e, %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBX_7packidx9FileEntryNtNtNtB2q_2io5error5ErrorENCINvMs0_NtBV_10repositoryNtB3V_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EB1M_E0B4L_E0IB2m_INtB4Q_3VecB2l_EINtNtB4S_5boxed3BoxDNtNtB2q_3any3AnyNtNtB2q_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1852
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload2.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB1V_4path7PathBufINtNtBa_6result6ResultNtNtB6o_7packidx9FileEntryNtNtNtBa_2io5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8S_10Repository15create_snapshotINtNtNtB1j_3vec9into_iter8IntoIterB7d_EB7d_E0B9J_E0IB7z_INtB9O_3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBX_7packidx9FileEntryNtNtNtB2q_2io5error5ErrorENCINvMs0_NtBV_10repositoryNtB3V_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EB1M_E0B4L_E0IB2m_INtB4Q_3VecB2l_EINtNtB4S_5boxed3BoxDNtNtB2q_3any3AnyNtNtB2q_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1867
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !1852
  store ptr %.sroa.0.0.copyload2.i.i.i.i, ptr %i.a, align 8, !noalias !1868
  %i.aq = call { ptr, ptr } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBb_6result6ResultNtNtB1M_7packidx9FileEntryNtNtNtBb_2io5error5ErrorENCINvMs0_NtB1K_10repositoryNtB4u_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB2B_EB2B_E0B5l_E0IB3b_INtB5q_3VecB3a_EINtNtB5s_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs0_0INtB7_5FnMutTINtNtNtB2F_6thread11join_handle10JoinHandleuEEE8call_mutCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1869 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1867
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr undef, ptr %i.as
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB1V_4path7PathBufINtNtBa_6result6ResultNtNtB6o_7packidx9FileEntryNtNtNtBa_2io5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8S_10Repository15create_snapshotINtNtNtB1j_3vec9into_iter8IntoIterB7d_EB7d_E0B9J_E0IB7z_INtB9O_3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB1V_4path7PathBufINtNtBa_6result6ResultNtNtB6o_7packidx9FileEntryNtNtNtBa_2io5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8S_10Repository15create_snapshotINtNtNtB1j_3vec9into_iter8IntoIterB7d_EB7d_E0B9J_E0IB7z_INtB9O_3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.r, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBX_7packidx9FileEntryNtNtNtB2q_2io5error5ErrorENCINvMs0_NtBV_10repositoryNtB3V_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EB1M_E0B4L_E0IB2m_INtB4Q_3VecB2l_EINtNtB4S_5boxed3BoxDNtNtB2q_3any3AnyNtNtB2q_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.r ], [ undef, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBX_7packidx9FileEntryNtNtNtB2q_2io5error5ErrorENCINvMs0_NtBV_10repositoryNtB3V_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EB1M_E0B4L_E0IB2m_INtB4Q_3VecB2l_EINtNtB4S_5boxed3BoxDNtNtB2q_3any3AnyNtNtB2q_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.ar, %bb.r ], [ null, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultNtNtBX_7packidx9FileEntryNtNtNtB2q_2io5error5ErrorENCINvMs0_NtBV_10repositoryNtB3V_10Repository15create_snapshotINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EB1M_E0B4L_E0IB2m_INtB4Q_3VecB2l_EINtNtB4S_5boxed3BoxDNtNtB2q_3any3AnyNtNtB2q_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.not.i9.i.i.i = icmp eq ptr %.sroa.0.0.i8.i.i.i, null
  br i1 %.not.i9.i.i.i, label %bb.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB2j_4path7PathBufINtNtBc_6result6ResultNtNtB56_7packidx9FileEntryNtNtNtBc_2io5error5ErrorENCINvMs0_NtB54_10repositoryNtB7A_10Repository15create_snapshotINtNtB1g_9into_iter8IntoIterB5V_EB5V_E0B8r_E0IB6h_INtB1g_3VecB6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBax_8find_map5checkB3l_B9v_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9v_EECs7BtpbLEd5q3_9elfshaker.exit.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB2j_4path7PathBufINtNtBc_6result6ResultNtNtB56_7packidx9FileEntryNtNtNtBc_2io5error5ErrorENCINvMs0_NtB54_10repositoryNtB7A_10Repository15create_snapshotINtNtB1g_9into_iter8IntoIterB5V_EB5V_E0B8r_E0IB6h_INtB1g_3VecB6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBax_8find_map5checkB3l_B9v_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9v_EECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB1V_4path7PathBufINtNtBa_6result6ResultNtNtB6o_7packidx9FileEntryNtNtNtBa_2io5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8S_10Repository15create_snapshotINtNtNtB1j_3vec9into_iter8IntoIterB7d_EB7d_E0B9J_E0IB7z_INtB9O_3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  %i.at = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i8.i.i.i, 0
  %1 = insertvalue { ptr, ptr } %i.at, ptr %.sroa.3.0.i.i.i.i, 1
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB2d_4path7PathBufINtNtBc_6result6ResultNtNtB50_7packidx9FileEntryNtNtNtBc_2io5error5ErrorENCINvMs0_NtB4Y_10repositoryNtB7u_10Repository15create_snapshotINtNtB1a_9into_iter8IntoIterB5P_EB5P_E0B8l_E0IB6b_INtB1a_3VecB6a_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9p_QNCB44_s0_0ECs7BtpbLEd5q3_9elfshaker.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB2d_4path7PathBufINtNtBc_6result6ResultNtNtB50_7packidx9FileEntryNtNtNtBc_2io5error5ErrorENCINvMs0_NtB4Y_10repositoryNtB7u_10Repository15create_snapshotINtNtB1a_9into_iter8IntoIterB5P_EB5P_E0B8l_E0IB6b_INtB1a_3VecB6a_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9p_QNCB44_s0_0ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB2j_4path7PathBufINtNtBc_6result6ResultNtNtB56_7packidx9FileEntryNtNtNtBc_2io5error5ErrorENCINvMs0_NtB54_10repositoryNtB7A_10Repository15create_snapshotINtNtB1g_9into_iter8IntoIterB5V_EB5V_E0B8r_E0IB6h_INtB1g_3VecB6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBax_8find_map5checkB3l_B9v_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9v_EECs7BtpbLEd5q3_9elfshaker.exit.i
  %.10.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB2j_4path7PathBufINtNtBc_6result6ResultNtNtB56_7packidx9FileEntryNtNtNtBc_2io5error5ErrorENCINvMs0_NtB54_10repositoryNtB7A_10Repository15create_snapshotINtNtB1g_9into_iter8IntoIterB5V_EB5V_E0B8r_E0IB6h_INtB1g_3VecB6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBax_8find_map5checkB3l_B9v_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9v_EECs7BtpbLEd5q3_9elfshaker.exit.i ], [ undef, %bb.b ]
  %i.au = phi { ptr, ptr } [ %1, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB2j_4path7PathBufINtNtBc_6result6ResultNtNtB56_7packidx9FileEntryNtNtNtBc_2io5error5ErrorENCINvMs0_NtB54_10repositoryNtB7A_10Repository15create_snapshotINtNtB1g_9into_iter8IntoIterB5V_EB5V_E0B8r_E0IB6h_INtB1g_3VecB6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBax_8find_map5checkB3l_B9v_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9v_EECs7BtpbLEd5q3_9elfshaker.exit.i ], [ { ptr null, ptr undef }, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1846
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.10.i, 1
  ret { ptr, ptr } %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB57_4pack6PackIdINtNtBb_6result6ResultuNtNtB57_5error5ErrorENCINvMs0_NtB57_10repositoryNtB79_10Repository25find_unreferenced_objectsINtNtB1j_9into_iter8IntoIterB5Y_EEs1_0B8a_E0IB6j_INtB1j_3VecB6i_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1899)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1902
  store ptr %i.f, ptr %i.e, align 8, !noalias !1903
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !1903
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1904, !noalias !1905, !nonnull !5, !noundef !5
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1904, !noalias !1905
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8o_10Repository25find_unreferenced_objectsINtNtNtB1j_3vec9into_iter8IntoIterB7d_EEs1_0B9p_E0IB7y_INtB9u_3VecB7x_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.a
  %i.l = phi ptr [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8o_10Repository25find_unreferenced_objectsINtNtNtB1j_3vec9into_iter8IntoIterB7d_EEs1_0B9p_E0IB7y_INtB9u_3VecB7x_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1906)
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB4Y_4pack6PackIdINtNtBc_6result6ResultuNtNtB4Y_5error5ErrorENCINvMs0_NtB4Y_10repositoryNtB70_10Repository25find_unreferenced_objectsINtNtB1a_9into_iter8IntoIterB5P_EEs1_0B81_E0IB6a_INtB1a_3VecB69_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB94_QNCB44_s0_0ECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !1904, !noalias !1905
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1907, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1908
  store ptr %i.o, ptr %i.d, align 8, !noalias !1909
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1909
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.p)
          to label %bb.f unwind label %bb.d, !noalias !1910

bb.d:                                             ; preds = %bb.o, %bb.m, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.z, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1911)
  call void @llvm.experimental.noalias.scope.decl(metadata !1912)
  %i.r = load ptr, ptr %i.d, align 8, !alias.scope !1913, !noalias !1909, !nonnull !5, !noundef !5
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1914
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i

bb.e:                                             ; preds = %.body.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.q, !noalias !1910

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1915)
  %i.u = load i64, ptr %i.c, align 8, !range !20, !alias.scope !1915, !noalias !1909, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.k, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1916
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !1915, !noalias !1909, !nonnull !5, !align !9, !noundef !5
  %i.x = load i8, ptr %i.k, align 8, !range !14, !alias.scope !1915, !noalias !1909, !noundef !5
  store ptr %i.w, ptr %i.b, align 8, !noalias !1916
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.x, ptr %i.y, align 8, !noalias !1916
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.i unwind label %bb.h, !noalias !1917

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %.body.i.i.i.i.i unwind label %bb.j, !noalias !1917

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1917
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !1915, !noalias !1909, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.ac = load i8, ptr %i.k, align 8, !range !14, !alias.scope !1915, !noalias !1909, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1909
  %.sroa.0.0.copyload2.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !1918 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i, i64 16, i1 false), !noalias !1918
  store ptr null, ptr %i.ae, align 8, !noalias !1910
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1909
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc4.i.i.i.i.i unwind label %bb.d, !noalias !1910

.noexc4.i.i.i.i.i:                                ; preds = %bb.m
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc4.i.i.i.i.i
  store atomic i8 1, ptr %i.af monotonic, align 4, !noalias !1910
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.noexc4.i.i.i.i.i, %bb.l, %bb.k
  %i.ak = atomicrmw xchg ptr %i.ab, i32 0 release, align 4, !noalias !1910
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, !prof !16

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.d, !noalias !1910

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  call void @llvm.experimental.noalias.scope.decl(metadata !1920)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !1921, !noalias !1909, !nonnull !5, !noundef !5
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !1922
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCINvMs0_NtBV_10repositoryNtB3b_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EEs1_0B4b_E0IB26_INtB4g_3VecB25_EINtNtB4i_5boxed3BoxDNtNtB2a_3any3AnyNtNtB2a_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21, !noalias !1910
  br label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCINvMs0_NtBV_10repositoryNtB3b_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EEs1_0B4b_E0IB26_INtB4g_3VecB25_EINtNtB4i_5boxed3BoxDNtNtB2a_3any3AnyNtNtB2a_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i

bb.q:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1910
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.e, %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCINvMs0_NtBV_10repositoryNtB3b_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EEs1_0B4b_E0IB26_INtB4g_3VecB25_EINtNtB4i_5boxed3BoxDNtNtB2a_3any3AnyNtNtB2a_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1908
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload2.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8o_10Repository25find_unreferenced_objectsINtNtNtB1j_3vec9into_iter8IntoIterB7d_EEs1_0B9p_E0IB7y_INtB9u_3VecB7x_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCINvMs0_NtBV_10repositoryNtB3b_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EEs1_0B4b_E0IB26_INtB4g_3VecB25_EINtNtB4i_5boxed3BoxDNtNtB2a_3any3AnyNtNtB2a_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1923
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !1908
  store ptr %.sroa.0.0.copyload2.i.i.i.i, ptr %i.a, align 8, !noalias !1924
  %i.aq = call { ptr, ptr } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB1K_4pack6PackIdINtNtBb_6result6ResultuNtNtB1K_5error5ErrorENCINvMs0_NtB1K_10repositoryNtB3M_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB2B_EEs1_0B4N_E0IB2W_INtB4S_3VecB2V_EINtNtB4U_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs0_0INtB7_5FnMutTINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE8call_mutCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1925 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1923
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr undef, ptr %i.as
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8o_10Repository25find_unreferenced_objectsINtNtNtB1j_3vec9into_iter8IntoIterB7d_EEs1_0B9p_E0IB7y_INtB9u_3VecB7x_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8o_10Repository25find_unreferenced_objectsINtNtNtB1j_3vec9into_iter8IntoIterB7d_EEs1_0B9p_E0IB7y_INtB9u_3VecB7x_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.r, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCINvMs0_NtBV_10repositoryNtB3b_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EEs1_0B4b_E0IB26_INtB4g_3VecB25_EINtNtB4i_5boxed3BoxDNtNtB2a_3any3AnyNtNtB2a_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.r ], [ undef, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCINvMs0_NtBV_10repositoryNtB3b_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EEs1_0B4b_E0IB26_INtB4g_3VecB25_EINtNtB4i_5boxed3BoxDNtNtB2a_3any3AnyNtNtB2a_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.ar, %bb.r ], [ null, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCINvMs0_NtBV_10repositoryNtB3b_10Repository25find_unreferenced_objectsINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterB1M_EEs1_0B4b_E0IB26_INtB4g_3VecB25_EINtNtB4i_5boxed3BoxDNtNtB2a_3any3AnyNtNtB2a_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.not.i9.i.i.i = icmp eq ptr %.sroa.0.0.i8.i.i.i, null
  br i1 %.not.i9.i.i.i, label %bb.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB54_4pack6PackIdINtNtBc_6result6ResultuNtNtB54_5error5ErrorENCINvMs0_NtB54_10repositoryNtB76_10Repository25find_unreferenced_objectsINtNtB1g_9into_iter8IntoIterB5V_EEs1_0B87_E0IB6g_INtB1g_3VecB6f_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBac_8find_map5checkB3l_B9a_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9a_EECs7BtpbLEd5q3_9elfshaker.exit.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB54_4pack6PackIdINtNtBc_6result6ResultuNtNtB54_5error5ErrorENCINvMs0_NtB54_10repositoryNtB76_10Repository25find_unreferenced_objectsINtNtB1g_9into_iter8IntoIterB5V_EEs1_0B87_E0IB6g_INtB1g_3VecB6f_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBac_8find_map5checkB3l_B9a_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9a_EECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCINvMs0_NtB6m_10repositoryNtB8o_10Repository25find_unreferenced_objectsINtNtNtB1j_3vec9into_iter8IntoIterB7d_EEs1_0B9p_E0IB7y_INtB9u_3VecB7x_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  %i.at = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i8.i.i.i, 0
  %1 = insertvalue { ptr, ptr } %i.at, ptr %.sroa.3.0.i.i.i.i, 1
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB4Y_4pack6PackIdINtNtBc_6result6ResultuNtNtB4Y_5error5ErrorENCINvMs0_NtB4Y_10repositoryNtB70_10Repository25find_unreferenced_objectsINtNtB1a_9into_iter8IntoIterB5P_EEs1_0B81_E0IB6a_INtB1a_3VecB69_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB94_QNCB44_s0_0ECs7BtpbLEd5q3_9elfshaker.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB4Y_4pack6PackIdINtNtBc_6result6ResultuNtNtB4Y_5error5ErrorENCINvMs0_NtB4Y_10repositoryNtB70_10Repository25find_unreferenced_objectsINtNtB1a_9into_iter8IntoIterB5P_EEs1_0B81_E0IB6a_INtB1a_3VecB69_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB94_QNCB44_s0_0ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB54_4pack6PackIdINtNtBc_6result6ResultuNtNtB54_5error5ErrorENCINvMs0_NtB54_10repositoryNtB76_10Repository25find_unreferenced_objectsINtNtB1g_9into_iter8IntoIterB5V_EEs1_0B87_E0IB6g_INtB1g_3VecB6f_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBac_8find_map5checkB3l_B9a_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9a_EECs7BtpbLEd5q3_9elfshaker.exit.i
  %.10.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB54_4pack6PackIdINtNtBc_6result6ResultuNtNtB54_5error5ErrorENCINvMs0_NtB54_10repositoryNtB76_10Repository25find_unreferenced_objectsINtNtB1g_9into_iter8IntoIterB5V_EEs1_0B87_E0IB6g_INtB1g_3VecB6f_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBac_8find_map5checkB3l_B9a_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9a_EECs7BtpbLEd5q3_9elfshaker.exit.i ], [ undef, %bb.b ]
  %i.au = phi { ptr, ptr } [ %1, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelNtNtB54_4pack6PackIdINtNtBc_6result6ResultuNtNtB54_5error5ErrorENCINvMs0_NtB54_10repositoryNtB76_10Repository25find_unreferenced_objectsINtNtB1g_9into_iter8IntoIterB5V_EEs1_0B87_E0IB6g_INtB1g_3VecB6f_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBac_8find_map5checkB3l_B9a_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9a_EECs7BtpbLEd5q3_9elfshaker.exit.i ], [ { ptr null, ptr undef }, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1902
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.10.i, 1
  ret { ptr, ptr } %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB57_4pack6PackIdINtNtBb_6result6ResultINtB1j_3VecNtNtB1l_6string6StringENtNtB57_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBb_5slice4iter4IterB5Z_EE0IB6k_IB6G_B6j_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB7E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1955)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1958
  store ptr %i.f, ptr %i.e, align 8, !noalias !1959
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !1959
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1960, !noalias !1961, !nonnull !5, !noundef !5
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1960, !noalias !1961
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultINtNtB1j_3vec3VecNtNtB1j_6string6StringENtNtB6m_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBa_5slice4iter4IterB7e_EE0IB7z_IB7V_B7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B8Z_.exit.i.i.i, %bb.a
  %i.l = phi ptr [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultINtNtB1j_3vec3VecNtNtB1j_6string6StringENtNtB6m_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBa_5slice4iter4IterB7e_EE0IB7z_IB7V_B7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B8Z_.exit.i.i.i ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB4Y_4pack6PackIdINtNtBc_6result6ResultINtB1a_3VecNtNtB1c_6string6StringENtNtB4Y_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBc_5slice4iter4IterB5Q_EE0IB6b_IB6x_B6a_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB92_QNCB44_s0_0EB7v_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !1960, !noalias !1961
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1963, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1964
  store ptr %i.o, ptr %i.d, align 8, !noalias !1965
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1965
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.p)
          to label %bb.f unwind label %bb.d, !noalias !1966

bb.d:                                             ; preds = %bb.o, %bb.m, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.z, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1967)
  call void @llvm.experimental.noalias.scope.decl(metadata !1968)
  %i.r = load ptr, ptr %i.d, align 8, !alias.scope !1969, !noalias !1965, !nonnull !5, !noundef !5
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1970
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i

bb.e:                                             ; preds = %.body.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.q, !noalias !1966

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  %i.u = load i64, ptr %i.c, align 8, !range !20, !alias.scope !1971, !noalias !1965, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.k, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1972
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !1971, !noalias !1965, !nonnull !5, !align !9, !noundef !5
  %i.x = load i8, ptr %i.k, align 8, !range !14, !alias.scope !1971, !noalias !1965, !noundef !5
  store ptr %i.w, ptr %i.b, align 8, !noalias !1972
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.x, ptr %i.y, align 8, !noalias !1972
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.i unwind label %bb.h, !noalias !1973

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %.body.i.i.i.i.i unwind label %bb.j, !noalias !1973

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1973
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !1971, !noalias !1965, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.ac = load i8, ptr %i.k, align 8, !range !14, !alias.scope !1971, !noalias !1965, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1965
  %.sroa.0.0.copyload2.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !1974 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i, i64 16, i1 false), !noalias !1974
  store ptr null, ptr %i.ae, align 8, !noalias !1966
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1965
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc4.i.i.i.i.i unwind label %bb.d, !noalias !1966

.noexc4.i.i.i.i.i:                                ; preds = %bb.m
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc4.i.i.i.i.i
  store atomic i8 1, ptr %i.af monotonic, align 4, !noalias !1966
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.noexc4.i.i.i.i.i, %bb.l, %bb.k
  %i.ak = atomicrmw xchg ptr %i.ab, i32 0 release, align 4, !noalias !1966
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, !prof !16

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.d, !noalias !1966

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !1977, !noalias !1965, !nonnull !5, !noundef !5
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !1978
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2N_6string6StringENtNtBV_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB2b_5slice4iter4IterB1N_EE0IB27_IB2J_B26_EINtNtB2N_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0B42_.exit.i.i.i.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21, !noalias !1966
  br label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2N_6string6StringENtNtBV_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB2b_5slice4iter4IterB1N_EE0IB27_IB2J_B26_EINtNtB2N_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0B42_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !1966
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.e, %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2N_6string6StringENtNtBV_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB2b_5slice4iter4IterB1N_EE0IB27_IB2J_B26_EINtNtB2N_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0B42_.exit.i.i.i.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1964
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload2.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultINtNtB1j_3vec3VecNtNtB1j_6string6StringENtNtB6m_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBa_5slice4iter4IterB7e_EE0IB7z_IB7V_B7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B8Z_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2N_6string6StringENtNtBV_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB2b_5slice4iter4IterB1N_EE0IB27_IB2J_B26_EINtNtB2N_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0B42_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1979
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !1964
  store ptr %.sroa.0.0.copyload2.i.i.i.i, ptr %i.a, align 8, !noalias !1980
  %i.aq = call { ptr, ptr } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB1K_4pack6PackIdINtNtBb_6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB3n_6string6StringENtNtB1K_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBb_5slice4iter4IterB2C_EE0IB2X_IB3j_B2W_EINtNtB3n_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs0_0INtB7_5FnMutTINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE8call_mutB4D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1981 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1979
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr undef, ptr %i.as
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultINtNtB1j_3vec3VecNtNtB1j_6string6StringENtNtB6m_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBa_5slice4iter4IterB7e_EE0IB7z_IB7V_B7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B8Z_.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultINtNtB1j_3vec3VecNtNtB1j_6string6StringENtNtB6m_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBa_5slice4iter4IterB7e_EE0IB7z_IB7V_B7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B8Z_.exit.i.i.i: ; preds = %bb.r, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2N_6string6StringENtNtBV_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB2b_5slice4iter4IterB1N_EE0IB27_IB2J_B26_EINtNtB2N_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0B42_.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.r ], [ undef, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2N_6string6StringENtNtBV_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB2b_5slice4iter4IterB1N_EE0IB27_IB2J_B26_EINtNtB2N_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0B42_.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.ar, %bb.r ], [ null, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB2N_6string6StringENtNtBV_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtB2b_5slice4iter4IterB1N_EE0IB27_IB2J_B26_EINtNtB2N_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0B42_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.not.i9.i.i.i = icmp eq ptr %.sroa.0.0.i8.i.i.i, null
  br i1 %.not.i9.i.i.i, label %bb.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB54_4pack6PackIdINtNtBc_6result6ResultINtB1g_3VecNtNtB1i_6string6StringENtNtB54_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBc_5slice4iter4IterB5W_EE0IB6h_IB6D_B6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaa_8find_map5checkB3l_B98_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB98_EEB7B_.exit.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB54_4pack6PackIdINtNtBc_6result6ResultINtB1g_3VecNtNtB1i_6string6StringENtNtB54_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBc_5slice4iter4IterB5W_EE0IB6h_IB6D_B6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaa_8find_map5checkB3l_B98_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB98_EEB7B_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultINtNtB1j_3vec3VecNtNtB1j_6string6StringENtNtB6m_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBa_5slice4iter4IterB7e_EE0IB7z_IB7V_B7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B8Z_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  %i.at = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i8.i.i.i, 0
  %1 = insertvalue { ptr, ptr } %i.at, ptr %.sroa.3.0.i.i.i.i, 1
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB4Y_4pack6PackIdINtNtBc_6result6ResultINtB1a_3VecNtNtB1c_6string6StringENtNtB4Y_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBc_5slice4iter4IterB5Q_EE0IB6b_IB6x_B6a_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB92_QNCB44_s0_0EB7v_.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB4Y_4pack6PackIdINtNtBc_6result6ResultINtB1a_3VecNtNtB1c_6string6StringENtNtB4Y_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBc_5slice4iter4IterB5Q_EE0IB6b_IB6x_B6a_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB92_QNCB44_s0_0EB7v_.exit: ; preds = %bb.b, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB54_4pack6PackIdINtNtBc_6result6ResultINtB1g_3VecNtNtB1i_6string6StringENtNtB54_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBc_5slice4iter4IterB5W_EE0IB6h_IB6D_B6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaa_8find_map5checkB3l_B98_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB98_EEB7B_.exit.i
  %.10.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB54_4pack6PackIdINtNtBc_6result6ResultINtB1g_3VecNtNtB1i_6string6StringENtNtB54_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBc_5slice4iter4IterB5W_EE0IB6h_IB6D_B6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaa_8find_map5checkB3l_B98_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB98_EEB7B_.exit.i ], [ undef, %bb.b ]
  %i.au = phi { ptr, ptr } [ %1, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB54_4pack6PackIdINtNtBc_6result6ResultINtB1g_3VecNtNtB1i_6string6StringENtNtB54_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4list15print_snapshots0INtNtNtBc_5slice4iter4IterB5W_EE0IB6h_IB6D_B6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaa_8find_map5checkB3l_B98_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB98_EEB7B_.exit.i ], [ { ptr null, ptr undef }, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1958
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.10.i, 1
  ret { ptr, ptr } %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB57_4pack10PackReaderINtB1j_3VecNtNtB59_7packidx9FileEntryEEINtNtBb_6result6ResultNtB61_12ExtractStatsNtNtB57_5error5ErrorENCINvMsa_B61_NtB61_4Pack15extract_entriesRNtNtB2m_4path4PathEs0_0INtNtB1j_9into_iter8IntoIterB5Y_EE0IB72_IB6p_B71_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2014
  store ptr %i.f, ptr %i.e, align 8, !noalias !2015
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !2015
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2016, !noalias !2017, !nonnull !5, !noundef !5
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2016, !noalias !2017
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i, %bb.a
  %i.l = phi ptr [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB4Y_4pack10PackReaderINtB1a_3VecNtNtB50_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5S_12ExtractStatsNtNtB4Y_5error5ErrorENCINvMsa_B5S_NtB5S_4Pack15extract_entriesRNtNtB2d_4path4PathEs0_0INtNtB1a_9into_iter8IntoIterB5P_EE0IB6T_IB6g_B6S_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9K_QNCB44_s0_0ECs7BtpbLEd5q3_9elfshaker.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !2016, !noalias !2017
  %i.o = load ptr, ptr %i.l, align 8, !noalias !2019, !nonnull !5, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2020
  store ptr %i.o, ptr %i.d, align 8, !noalias !2021
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2021
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.p)
          to label %bb.f unwind label %bb.d, !noalias !2022

bb.d:                                             ; preds = %bb.o, %bb.m, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.z, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  %i.r = load ptr, ptr %i.d, align 8, !alias.scope !2025, !noalias !2021, !nonnull !5, !noundef !5
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !2026
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i

bb.e:                                             ; preds = %.body.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.q, !noalias !2022

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2027)
  %i.u = load i64, ptr %i.c, align 8, !range !20, !alias.scope !2027, !noalias !2021, !noundef !5
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.k, !prof !16

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2028
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !2027, !noalias !2021, !nonnull !5, !align !9, !noundef !5
  %i.x = load i8, ptr %i.k, align 8, !range !14, !alias.scope !2027, !noalias !2021, !noundef !5
  store ptr %i.w, ptr %i.b, align 8, !noalias !2028
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.x, ptr %i.y, align 8, !noalias !2028
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.i unwind label %bb.h, !noalias !2029

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %.body.i.i.i.i.i unwind label %bb.j, !noalias !2029

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !2029
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !2027, !noalias !2021, !nonnull !5, !align !9, !noundef !5 ; 5 uses
  %i.ac = load i8, ptr %i.k, align 8, !range !14, !alias.scope !2027, !noalias !2021, !noundef !5
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2021
  %.sroa.0.0.copyload2.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !2030 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i, i64 16, i1 false), !noalias !2030
  store ptr null, ptr %i.ae, align 8, !noalias !2022
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2021
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.m, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc4.i.i.i.i.i unwind label %bb.d, !noalias !2022

.noexc4.i.i.i.i.i:                                ; preds = %bb.m
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc4.i.i.i.i.i
  store atomic i8 1, ptr %i.af monotonic, align 4, !noalias !2022
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.noexc4.i.i.i.i.i, %bb.l, %bb.k
  %i.ak = atomicrmw xchg ptr %i.ab, i32 0 release, align 4, !noalias !2022
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i, !prof !16

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i unwind label %bb.d, !noalias !2022

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !2033, !noalias !2021, !nonnull !5, !noundef !5
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2034
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21, !noalias !2022
  br label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i

bb.q:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !2022
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.e, %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2020
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload2.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !2020
  store ptr %.sroa.0.0.copyload2.i.i.i.i, ptr %i.a, align 8, !noalias !2036
  %i.aq = call { ptr, ptr } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB1K_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB1M_7packidx9FileEntryEEINtNtBb_6result6ResultNtB2E_12ExtractStatsNtNtB1K_5error5ErrorENCINvMsa_B2E_NtB2E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB34_9into_iter8IntoIterB2B_EE0IB41_IB32_B40_EINtNtB36_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs0_0INtB7_5FnMutTINtNtNtB5L_6thread11join_handle10JoinHandleuEEE8call_mutCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2037 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2035
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr undef, ptr %i.as
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i: ; preds = %bb.r, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.r ], [ undef, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.ar, %bb.r ], [ null, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.not.i9.i.i.i = icmp eq ptr %.sroa.0.0.i8.i.i.i, null
  br i1 %.not.i9.i.i.i, label %bb.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB54_4pack10PackReaderINtB1g_3VecNtNtB56_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5Y_12ExtractStatsNtNtB54_5error5ErrorENCINvMsa_B5Y_NtB5Y_4Pack15extract_entriesRNtNtB2j_4path4PathEs0_0INtNtB1g_9into_iter8IntoIterB5V_EE0IB6Z_IB6m_B6Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaS_8find_map5checkB3l_B9Q_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9Q_EECs7BtpbLEd5q3_9elfshaker.exit.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB54_4pack10PackReaderINtB1g_3VecNtNtB56_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5Y_12ExtractStatsNtNtB54_5error5ErrorENCINvMsa_B5Y_NtB5Y_4Pack15extract_entriesRNtNtB2j_4path4PathEs0_0INtNtB1g_9into_iter8IntoIterB5V_EE0IB6Z_IB6m_B6Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaS_8find_map5checkB3l_B9Q_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9Q_EECs7BtpbLEd5q3_9elfshaker.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0Cs7BtpbLEd5q3_9elfshaker.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  %i.at = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i8.i.i.i, 0
  %1 = insertvalue { ptr, ptr } %i.at, ptr %.sroa.3.0.i.i.i.i, 1
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB4Y_4pack10PackReaderINtB1a_3VecNtNtB50_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5S_12ExtractStatsNtNtB4Y_5error5ErrorENCINvMsa_B5S_NtB5S_4Pack15extract_entriesRNtNtB2d_4path4PathEs0_0INtNtB1a_9into_iter8IntoIterB5P_EE0IB6T_IB6g_B6S_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9K_QNCB44_s0_0ECs7BtpbLEd5q3_9elfshaker.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB4Y_4pack10PackReaderINtB1a_3VecNtNtB50_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5S_12ExtractStatsNtNtB4Y_5error5ErrorENCINvMsa_B5S_NtB5S_4Pack15extract_entriesRNtNtB2d_4path4PathEs0_0INtNtB1a_9into_iter8IntoIterB5P_EE0IB6T_IB6g_B6S_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9K_QNCB44_s0_0ECs7BtpbLEd5q3_9elfshaker.exit: ; preds = %bb.b, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB54_4pack10PackReaderINtB1g_3VecNtNtB56_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5Y_12ExtractStatsNtNtB54_5error5ErrorENCINvMsa_B5Y_NtB5Y_4Pack15extract_entriesRNtNtB2j_4path4PathEs0_0INtNtB1g_9into_iter8IntoIterB5V_EE0IB6Z_IB6m_B6Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaS_8find_map5checkB3l_B9Q_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9Q_EECs7BtpbLEd5q3_9elfshaker.exit.i
  %.10.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB54_4pack10PackReaderINtB1g_3VecNtNtB56_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5Y_12ExtractStatsNtNtB54_5error5ErrorENCINvMsa_B5Y_NtB5Y_4Pack15extract_entriesRNtNtB2j_4path4PathEs0_0INtNtB1g_9into_iter8IntoIterB5V_EE0IB6Z_IB6m_B6Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaS_8find_map5checkB3l_B9Q_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9Q_EECs7BtpbLEd5q3_9elfshaker.exit.i ], [ undef, %bb.b ]
  %i.au = phi { ptr, ptr } [ %1, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB54_4pack10PackReaderINtB1g_3VecNtNtB56_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5Y_12ExtractStatsNtNtB54_5error5ErrorENCINvMsa_B5Y_NtB5Y_4Pack15extract_entriesRNtNtB2j_4path4PathEs0_0INtNtB1g_9into_iter8IntoIterB5V_EE0IB6Z_IB6m_B6Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaS_8find_map5checkB3l_B9Q_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9Q_EECs7BtpbLEd5q3_9elfshaker.exit.i ], [ { ptr null, ptr undef }, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2014
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.10.i, 1
  ret { ptr, ptr } %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapINtCs35zZu0fmp16_7walkdir11FilterEntryNtB1P_8IntoIterNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_files0ENCB2F_s_0ENCB2F_s0_0ENCB2F_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB2J_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.76.i.i.i.i = alloca [40 x i8], align 8   ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2068
  store ptr %i.g, ptr %i.e, align 8, !noalias !2069
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !noalias !2069
  call void @_RNvXs7_Cs35zZu0fmp16_7walkdirINtB5_11FilterEntryNtB5_8IntoIterNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_files0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB14_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1), !noalias !2070
  %i.i = load i64, ptr %i.d, align 8, !range !17, !noalias !2069, !noundef !5 ; 2 uses
  %.not19.i.i.i.i = icmp eq i64 %i.i, -3
  br i1 %.not19.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.49.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %i.j = phi i64 [ %i.i, %.lr.ph.i.i.i.i ], [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.thread.i.i.i.i ] ; 2 uses
  %.sroa.59.0.copyload.i.i.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i.i.i.i, align 8, !noalias !2069 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.76.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2071
  store i64 %i.j, ptr %i.b, align 8, !noalias !2072
  store i64 %.sroa.59.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx5.i.i.i.i.i, align 8, !noalias !2072
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.0..sroa_idx7.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !2069
  %.not.i.i.i.i.i.i = icmp eq i64 %i.j, -2
  br i1 %.not.i.i.i.i.i.i, label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0B5_.exit.i.i.i.i.i, label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0B5_.exit.thread.i.i.i.i.i

_RNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0B5_.exit.thread.i.i.i.i.i: ; preds = %bb.b
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs35zZu0fmp16_7walkdir5error5ErrorECs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b), !noalias !2073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2071
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.thread.i.i.i.i

_RNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0B5_.exit.i.i.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2071
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.59.0.copyload.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.thread.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0B5_.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2074
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i.i.i, i64 40, i1 false), !noalias !2069
  store i64 %.sroa.59.0.copyload.i.i.i.i, ptr %i.c, align 8, !noalias !2074
  call void @llvm.experimental.noalias.scope.decl(metadata !2075)
  %i.k = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess0_0INtB7_5FnMutTRNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryEE8call_mutBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
          to label %bb.e unwind label %bb.d, !noalias !2076

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %common.resume unwind label %bb.f, !noalias !2076

bb.e:                                             ; preds = %bb.c
  br i1 %i.k, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.thread14.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.thread14.i.i.i.i: ; preds = %bb.e
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.c), !noalias !2076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2074
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.thread.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !2076
  unreachable

common.resume:                                    ; preds = %bb.h, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.r, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.i.i.i.i: ; preds = %bb.e
  %.sroa.05.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !2077, !noalias !2078 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.76.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.49.0..sroa_idx.i.i.i.i.i, i64 40, i1 false), !alias.scope !2077, !noalias !2078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2074
  %.not.i2.i.i.i.i = icmp eq i64 %.sroa.05.0.copyload.i.i.i.i, -1
  br i1 %.not.i2.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.thread.i.i.i.i, label %bb.g

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.thread.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.thread14.i.i.i.i, %_RNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0B5_.exit.i.i.i.i.i, %_RNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0B5_.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i.i.i.i)
  call void @_RNvXs7_Cs35zZu0fmp16_7walkdirINtB5_11FilterEntryNtB5_8IntoIterNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_files0ENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB14_(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %1), !noalias !2070
  %i.n = load i64, ptr %i.d, align 8, !range !17, !noalias !2069, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.n, -3
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.b

bb.g:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.i.i.i.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.76.i.i.i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2068
  store i64 %.sroa.05.0.copyload.i.i.i.i, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !2079)
  %i.o = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2079, !noalias !2080, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !2079, !noalias !2080, !noundef !5 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2081
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.q, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.i unwind label %bb.h, !noalias !2081

bb.h:                                             ; preds = %bb.j, %bb.g
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %common.resume unwind label %bb.n, !noalias !2080

bb.i:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.a, align 8, !range !20, !noalias !2081, !noundef !5
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !21, !noalias !2081, !noundef !5 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.t, label %bb.j, label %bb.k, !prof !16

bb.j:                                             ; preds = %bb.i
  %i.x = load i64, ptr %i.w, align 8, !noalias !2081
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #24
          to label %bb.m unwind label %bb.h, !noalias !2081

bb.k:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.w, align 8, !noalias !2081, !nonnull !5, !noundef !5 ; 2 uses
  %i.z = icmp ule i64 %i.q, %i.v
  call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2081
  %.not.i = icmp eq i64 %i.q, 0
  br i1 %.not.i, label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess1_0B5_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.o, i64 %i.q, i1 false), !noalias !2081
  br label %_RNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess1_0B5_.exit

bb.m:                                             ; preds = %bb.j
  unreachable

bb.n:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !noalias !2080
  unreachable

_RNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess1_0B5_.exit: ; preds = %bb.k, %bb.l
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7BtpbLEd5q3_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.f), !noalias !2080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.v, ptr %0, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.o

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtBa_6result6ResultNtNtCs35zZu0fmp16_7walkdir4dent8DirEntryNtNtB1E_5error5ErrorEB1A_uINtNtNtBa_3ops12control_flow11ControlFlowB1A_ENCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB1A_QNCB3q_s0_0E0E0B3u_.exit.thread.i.i.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2068
  store i64 -1, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %_RNCNvNtCs7BtpbLEd5q3_9elfshaker5store10find_filess1_0B5_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtBZ_7FlatMapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEINtNtBb_6result6ResultINtB1D_3VecINtNtNtBb_5array4iter8IntoIterNtNtB1F_6string6StringKj2_EENtNtB2q_5error5ErrorENCNvNtCs7BtpbLEd5q3_9elfshaker4find3run0EENCINvNtB52_5utils11print_tableBW_B3F_B49_E0ENtNtNtB9_6traits8iterator8Iterator4nextB52_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.6 = alloca [64 x i8], align 8            ; 2 uses
  %i.a = alloca [56 x i8], align 8                ; 8 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [48 x i8], align 8                ; 12 uses
  %i.j = alloca [56 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.8.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 72
end_hunk_0
