Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.01?download=true
inline.NumInlined: 1105
inline.NumDeleted: 639
begin_hunk_0_@_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtNtB18_11collections4hash3set12IntersectionB11_NtNtNtB18_4hash6random11RandomStateEEE9from_iterCskuiImRAV2ip_9elfshaker:bb.a
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskuiImRAV2ip_9elfshaker.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.i

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtNtBY_11collections4hash3set12IntersectionBR_NtNtNtBY_4hash6random11RandomStateEEE11spec_extendCskuiImRAV2ip_9elfshaker.exit: ; preds = %.noexc9, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  br label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.h
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB2m_4path7PathBufINtNtBb_6result6ResultAhj14_NtNtNtBb_2io5error5ErrorENCINvNtB59_5batch17compute_checksumsB5Z_E0INtNtNtBb_5slice4iter4IterB5Z_EE0IB6l_INtB1j_3VecB6k_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB59_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1777)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1778)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1779)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1780
  store ptr %i.f, ptr %i.e, align 8, !noalias !1781
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !1781
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1782, !noalias !1783, !nonnull !4, !noundef !4
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1782, !noalias !1783
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB1V_4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorENCINvNtB6o_5batch17compute_checksumsB7e_E0INtNtNtBa_5slice4iter4IterB7e_EE0IB7A_INtNtB1j_3vec3VecB7z_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i, %bb.a
  %i.l = phi ptr [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB1V_4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorENCINvNtB6o_5batch17compute_checksumsB7e_E0INtNtNtBa_5slice4iter4IterB7e_EE0IB7A_INtNtB1j_3vec3VecB7z_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1784)
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB2d_4path7PathBufINtNtBc_6result6ResultAhj14_NtNtNtBc_2io5error5ErrorENCINvNtB50_5batch17compute_checksumsB5Q_E0INtNtNtBc_5slice4iter4IterB5Q_EE0IB6c_INtB1a_3VecB6b_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB8A_QNCB44_s0_0EB50_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !1782, !noalias !1783
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1785, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1786
  store ptr %i.o, ptr %i.d, align 8, !noalias !1787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1787
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.p)
          to label %bb.f unwind label %bb.d, !noalias !1788

bb.d:                                             ; preds = %bb.o, %bb.m, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.z, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1789)
  call void @llvm.experimental.noalias.scope.decl(metadata !1790)
  %i.r = load ptr, ptr %i.d, align 8, !alias.scope !1791, !noalias !1787, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1792
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

bb.e:                                             ; preds = %.body.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %bb.q, !noalias !1788

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1793)
  %i.u = load i64, ptr %i.c, align 8, !range !20, !alias.scope !1793, !noalias !1787, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.k, !prof !17

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1794
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !1793, !noalias !1787, !nonnull !4, !align !15, !noundef !4
  %i.x = load i8, ptr %i.k, align 8, !range !10, !alias.scope !1793, !noalias !1787, !noundef !4
  store ptr %i.w, ptr %i.b, align 8, !noalias !1794
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.x, ptr %i.y, align 8, !noalias !1794
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.i unwind label %bb.h, !noalias !1795

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %.body.i.i.i.i.i unwind label %bb.j, !noalias !1795

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1795
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !1793, !noalias !1787, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  %i.ac = load i8, ptr %i.k, align 8, !range !10, !alias.scope !1793, !noalias !1787, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1787
  %.sroa.0.0.copyload2.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !1796 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i, i64 16, i1 false), !noalias !1796
  store ptr null, ptr %i.ae, align 8, !noalias !1788
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1787
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc4.i.i.i.i.i unwind label %bb.d, !noalias !1788

.noexc4.i.i.i.i.i:                                ; preds = %bb.m
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc4.i.i.i.i.i
  store atomic i8 1, ptr %i.af monotonic, align 4, !noalias !1788
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.noexc4.i.i.i.i.i, %bb.l, %bb.k
  %i.ak = atomicrmw xchg ptr %i.ab, i32 0 release, align 4, !noalias !1788
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, !prof !17

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %bb.d, !noalias !1788

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1797)
  call void @llvm.experimental.noalias.scope.decl(metadata !1798)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !1799, !noalias !1787, !nonnull !4, !noundef !4
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !1800
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB2r_2io5error5ErrorENCINvNtBX_5batch17compute_checksumsB1N_E0INtNtNtB2r_5slice4iter4IterB1N_EE0IB2n_INtNtCs1xwejQucwHj_5alloc3vec3VecB2m_EINtNtB4R_5boxed3BoxDNtNtB2r_3any3AnyNtNtB2r_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21, !noalias !1788
  br label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB2r_2io5error5ErrorENCINvNtBX_5batch17compute_checksumsB1N_E0INtNtNtB2r_5slice4iter4IterB1N_EE0IB2n_INtNtCs1xwejQucwHj_5alloc3vec3VecB2m_EINtNtB4R_5boxed3BoxDNtNtB2r_3any3AnyNtNtB2r_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1788
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.e, %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB2r_2io5error5ErrorENCINvNtBX_5batch17compute_checksumsB1N_E0INtNtNtB2r_5slice4iter4IterB1N_EE0IB2n_INtNtCs1xwejQucwHj_5alloc3vec3VecB2m_EINtNtB4R_5boxed3BoxDNtNtB2r_3any3AnyNtNtB2r_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1786
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload2.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB1V_4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorENCINvNtB6o_5batch17compute_checksumsB7e_E0INtNtNtBa_5slice4iter4IterB7e_EE0IB7A_INtNtB1j_3vec3VecB7z_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB2r_2io5error5ErrorENCINvNtBX_5batch17compute_checksumsB1N_E0INtNtNtB2r_5slice4iter4IterB1N_EE0IB2n_INtNtCs1xwejQucwHj_5alloc3vec3VecB2m_EINtNtB4R_5boxed3BoxDNtNtB2r_3any3AnyNtNtB2r_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !1786
  store ptr %.sroa.0.0.copyload2.i.i.i.i, ptr %i.a, align 8, !noalias !1802
  %i.aq = call { ptr, ptr } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBb_6result6ResultAhj14_NtNtNtBb_2io5error5ErrorENCINvNtB1M_5batch17compute_checksumsB2C_E0INtNtNtBb_5slice4iter4IterB2C_EE0IB3c_INtNtCs1xwejQucwHj_5alloc3vec3VecB3b_EINtNtB5p_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs0_0INtB7_5FnMutTINtNtNtB2G_6thread11join_handle10JoinHandleuEEE8call_mutB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1803 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1801
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr undef, ptr %i.as
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB1V_4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorENCINvNtB6o_5batch17compute_checksumsB7e_E0INtNtNtBa_5slice4iter4IterB7e_EE0IB7A_INtNtB1j_3vec3VecB7z_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB1V_4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorENCINvNtB6o_5batch17compute_checksumsB7e_E0INtNtNtBa_5slice4iter4IterB7e_EE0IB7A_INtNtB1j_3vec3VecB7z_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i: ; preds = %bb.r, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB2r_2io5error5ErrorENCINvNtBX_5batch17compute_checksumsB1N_E0INtNtNtB2r_5slice4iter4IterB1N_EE0IB2n_INtNtCs1xwejQucwHj_5alloc3vec3VecB2m_EINtNtB4R_5boxed3BoxDNtNtB2r_3any3AnyNtNtB2r_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.r ], [ undef, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB2r_2io5error5ErrorENCINvNtBX_5batch17compute_checksumsB1N_E0INtNtNtB2r_5slice4iter4IterB1N_EE0IB2n_INtNtCs1xwejQucwHj_5alloc3vec3VecB2m_EINtNtB4R_5boxed3BoxDNtNtB2r_3any3AnyNtNtB2r_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.ar, %bb.r ], [ null, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtCs3oUPovFnLWP_4core6result6ResultAhj14_NtNtNtB2r_2io5error5ErrorENCINvNtBX_5batch17compute_checksumsB1N_E0INtNtNtB2r_5slice4iter4IterB1N_EE0IB2n_INtNtCs1xwejQucwHj_5alloc3vec3VecB2m_EINtNtB4R_5boxed3BoxDNtNtB2r_3any3AnyNtNtB2r_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.not.i9.i.i.i = icmp eq ptr %.sroa.0.0.i8.i.i.i, null
  br i1 %.not.i9.i.i.i, label %bb.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB2j_4path7PathBufINtNtBc_6result6ResultAhj14_NtNtNtBc_2io5error5ErrorENCINvNtB56_5batch17compute_checksumsB5W_E0INtNtNtBc_5slice4iter4IterB5W_EE0IB6i_INtB1g_3VecB6h_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB9I_8find_map5checkB3l_B8G_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8G_EEB56_.exit.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB2j_4path7PathBufINtNtBc_6result6ResultAhj14_NtNtNtBc_2io5error5ErrorENCINvNtB56_5batch17compute_checksumsB5W_E0INtNtNtBc_5slice4iter4IterB5W_EE0IB6i_INtB1g_3VecB6h_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB9I_8find_map5checkB3l_B8G_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8G_EEB56_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB1V_4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorENCINvNtB6o_5batch17compute_checksumsB7e_E0INtNtNtBa_5slice4iter4IterB7e_EE0IB7A_INtNtB1j_3vec3VecB7z_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  %i.at = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i8.i.i.i, 0
  %1 = insertvalue { ptr, ptr } %i.at, ptr %.sroa.3.0.i.i.i.i, 1
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB2d_4path7PathBufINtNtBc_6result6ResultAhj14_NtNtNtBc_2io5error5ErrorENCINvNtB50_5batch17compute_checksumsB5Q_E0INtNtNtBc_5slice4iter4IterB5Q_EE0IB6c_INtB1a_3VecB6b_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB8A_QNCB44_s0_0EB50_.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB2d_4path7PathBufINtNtBc_6result6ResultAhj14_NtNtNtBc_2io5error5ErrorENCINvNtB50_5batch17compute_checksumsB5Q_E0INtNtNtBc_5slice4iter4IterB5Q_EE0IB6c_INtB1a_3VecB6b_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB8A_QNCB44_s0_0EB50_.exit: ; preds = %bb.b, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB2j_4path7PathBufINtNtBc_6result6ResultAhj14_NtNtNtBc_2io5error5ErrorENCINvNtB56_5batch17compute_checksumsB5W_E0INtNtNtBc_5slice4iter4IterB5W_EE0IB6i_INtB1g_3VecB6h_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB9I_8find_map5checkB3l_B8G_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8G_EEB56_.exit.i
  %.10.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB2j_4path7PathBufINtNtBc_6result6ResultAhj14_NtNtNtBc_2io5error5ErrorENCINvNtB56_5batch17compute_checksumsB5W_E0INtNtNtBc_5slice4iter4IterB5W_EE0IB6i_INtB1g_3VecB6h_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB9I_8find_map5checkB3l_B8G_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8G_EEB56_.exit.i ], [ undef, %bb.b ]
  %i.au = phi { ptr, ptr } [ %1, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB2j_4path7PathBufINtNtBc_6result6ResultAhj14_NtNtNtBc_2io5error5ErrorENCINvNtB56_5batch17compute_checksumsB5W_E0INtNtNtBc_5slice4iter4IterB5W_EE0IB6i_INtB1g_3VecB6h_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB9I_8find_map5checkB3l_B8G_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8G_EEB56_.exit.i ], [ { ptr null, ptr undef }, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1780
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.10.i, 1
  ret { ptr, ptr } %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB57_4pack6PackIdINtNtBb_6result6ResultuNtNtB57_5error5ErrorENCNvMs0_NtB57_10repositoryNtB79_10Repository24find_duplicate_snapshots0QINtNtNtBb_5slice4iter4IterB5Z_EE0IB6k_INtB1j_3VecB6j_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB59_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1836
  store ptr %i.f, ptr %i.e, align 8, !noalias !1837
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !1837
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1838, !noalias !1839, !nonnull !4, !noundef !4
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1838, !noalias !1839
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8o_10Repository24find_duplicate_snapshots0QINtNtNtBa_5slice4iter4IterB7e_EE0IB7z_INtNtB1j_3vec3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i, %bb.a
  %i.l = phi ptr [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8o_10Repository24find_duplicate_snapshots0QINtNtNtBa_5slice4iter4IterB7e_EE0IB7z_INtNtB1j_3vec3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB4Y_4pack6PackIdINtNtBc_6result6ResultuNtNtB4Y_5error5ErrorENCNvMs0_NtB4Y_10repositoryNtB70_10Repository24find_duplicate_snapshots0QINtNtNtBc_5slice4iter4IterB5Q_EE0IB6b_INtB1a_3VecB6a_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB8U_QNCB44_s0_0EB50_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !1838, !noalias !1839
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1841, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1842
  store ptr %i.o, ptr %i.d, align 8, !noalias !1843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1843
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.p)
          to label %bb.f unwind label %bb.d, !noalias !1844

bb.d:                                             ; preds = %bb.o, %bb.m, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.z, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1845)
  call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  %i.r = load ptr, ptr %i.d, align 8, !alias.scope !1847, !noalias !1843, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1848
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

bb.e:                                             ; preds = %.body.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %bb.q, !noalias !1844

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1849)
  %i.u = load i64, ptr %i.c, align 8, !range !20, !alias.scope !1849, !noalias !1843, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.k, !prof !17

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1850
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !1849, !noalias !1843, !nonnull !4, !align !15, !noundef !4
  %i.x = load i8, ptr %i.k, align 8, !range !10, !alias.scope !1849, !noalias !1843, !noundef !4
  store ptr %i.w, ptr %i.b, align 8, !noalias !1850
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.x, ptr %i.y, align 8, !noalias !1850
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.i unwind label %bb.h, !noalias !1851

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %.body.i.i.i.i.i unwind label %bb.j, !noalias !1851

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1851
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !1849, !noalias !1843, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  %i.ac = load i8, ptr %i.k, align 8, !range !10, !alias.scope !1849, !noalias !1843, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1843
  %.sroa.0.0.copyload2.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !1852 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i, i64 16, i1 false), !noalias !1852
  store ptr null, ptr %i.ae, align 8, !noalias !1844
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1843
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc4.i.i.i.i.i unwind label %bb.d, !noalias !1844

.noexc4.i.i.i.i.i:                                ; preds = %bb.m
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc4.i.i.i.i.i
  store atomic i8 1, ptr %i.af monotonic, align 4, !noalias !1844
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.noexc4.i.i.i.i.i, %bb.l, %bb.k
  %i.ak = atomicrmw xchg ptr %i.ab, i32 0 release, align 4, !noalias !1844
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, !prof !17

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %bb.d, !noalias !1844

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1853)
  call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !1855, !noalias !1843, !nonnull !4, !noundef !4
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !1856
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3b_10Repository24find_duplicate_snapshots0QINtNtNtB2b_5slice4iter4IterB1N_EE0IB27_INtNtCs1xwejQucwHj_5alloc3vec3VecB26_EINtNtB4U_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21, !noalias !1844
  br label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3b_10Repository24find_duplicate_snapshots0QINtNtNtB2b_5slice4iter4IterB1N_EE0IB27_INtNtCs1xwejQucwHj_5alloc3vec3VecB26_EINtNtB4U_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1844
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.e, %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3b_10Repository24find_duplicate_snapshots0QINtNtNtB2b_5slice4iter4IterB1N_EE0IB27_INtNtCs1xwejQucwHj_5alloc3vec3VecB26_EINtNtB4U_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1842
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload2.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8o_10Repository24find_duplicate_snapshots0QINtNtNtBa_5slice4iter4IterB7e_EE0IB7z_INtNtB1j_3vec3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3b_10Repository24find_duplicate_snapshots0QINtNtNtB2b_5slice4iter4IterB1N_EE0IB27_INtNtCs1xwejQucwHj_5alloc3vec3VecB26_EINtNtB4U_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !1842
  store ptr %.sroa.0.0.copyload2.i.i.i.i, ptr %i.a, align 8, !noalias !1858
  %i.aq = call { ptr, ptr } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB1K_4pack6PackIdINtNtBb_6result6ResultuNtNtB1K_5error5ErrorENCNvMs0_NtB1K_10repositoryNtB3M_10Repository24find_duplicate_snapshots0QINtNtNtBb_5slice4iter4IterB2C_EE0IB2X_INtNtCs1xwejQucwHj_5alloc3vec3VecB2W_EINtNtB5v_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs0_0INtB7_5FnMutTINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE8call_mutB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1859 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1857
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr undef, ptr %i.as
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8o_10Repository24find_duplicate_snapshots0QINtNtNtBa_5slice4iter4IterB7e_EE0IB7z_INtNtB1j_3vec3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8o_10Repository24find_duplicate_snapshots0QINtNtNtBa_5slice4iter4IterB7e_EE0IB7z_INtNtB1j_3vec3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i: ; preds = %bb.r, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3b_10Repository24find_duplicate_snapshots0QINtNtNtB2b_5slice4iter4IterB1N_EE0IB27_INtNtCs1xwejQucwHj_5alloc3vec3VecB26_EINtNtB4U_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.r ], [ undef, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3b_10Repository24find_duplicate_snapshots0QINtNtNtB2b_5slice4iter4IterB1N_EE0IB27_INtNtCs1xwejQucwHj_5alloc3vec3VecB26_EINtNtB4U_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.ar, %bb.r ], [ null, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBV_4pack6PackIdINtNtCs3oUPovFnLWP_4core6result6ResultuNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3b_10Repository24find_duplicate_snapshots0QINtNtNtB2b_5slice4iter4IterB1N_EE0IB27_INtNtCs1xwejQucwHj_5alloc3vec3VecB26_EINtNtB4U_5boxed3BoxDNtNtB2b_3any3AnyNtNtB2b_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.not.i9.i.i.i = icmp eq ptr %.sroa.0.0.i8.i.i.i, null
  br i1 %.not.i9.i.i.i, label %bb.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB54_4pack6PackIdINtNtBc_6result6ResultuNtNtB54_5error5ErrorENCNvMs0_NtB54_10repositoryNtB76_10Repository24find_duplicate_snapshots0QINtNtNtBc_5slice4iter4IterB5W_EE0IB6h_INtB1g_3VecB6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBa2_8find_map5checkB3l_B90_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB90_EEB56_.exit.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB54_4pack6PackIdINtNtBc_6result6ResultuNtNtB54_5error5ErrorENCNvMs0_NtB54_10repositoryNtB76_10Repository24find_duplicate_snapshots0QINtNtNtBc_5slice4iter4IterB5W_EE0IB6h_INtB1g_3VecB6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBa2_8find_map5checkB3l_B90_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB90_EEB56_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6m_4pack6PackIdINtNtBa_6result6ResultuNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8o_10Repository24find_duplicate_snapshots0QINtNtNtBa_5slice4iter4IterB7e_EE0IB7z_INtNtB1j_3vec3VecB7y_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  %i.at = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i8.i.i.i, 0
  %1 = insertvalue { ptr, ptr } %i.at, ptr %.sroa.3.0.i.i.i.i, 1
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB4Y_4pack6PackIdINtNtBc_6result6ResultuNtNtB4Y_5error5ErrorENCNvMs0_NtB4Y_10repositoryNtB70_10Repository24find_duplicate_snapshots0QINtNtNtBc_5slice4iter4IterB5Q_EE0IB6b_INtB1a_3VecB6a_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB8U_QNCB44_s0_0EB50_.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB4Y_4pack6PackIdINtNtBc_6result6ResultuNtNtB4Y_5error5ErrorENCNvMs0_NtB4Y_10repositoryNtB70_10Repository24find_duplicate_snapshots0QINtNtNtBc_5slice4iter4IterB5Q_EE0IB6b_INtB1a_3VecB6a_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB8U_QNCB44_s0_0EB50_.exit: ; preds = %bb.b, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB54_4pack6PackIdINtNtBc_6result6ResultuNtNtB54_5error5ErrorENCNvMs0_NtB54_10repositoryNtB76_10Repository24find_duplicate_snapshots0QINtNtNtBc_5slice4iter4IterB5W_EE0IB6h_INtB1g_3VecB6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBa2_8find_map5checkB3l_B90_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB90_EEB56_.exit.i
  %.10.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB54_4pack6PackIdINtNtBc_6result6ResultuNtNtB54_5error5ErrorENCNvMs0_NtB54_10repositoryNtB76_10Repository24find_duplicate_snapshots0QINtNtNtBc_5slice4iter4IterB5W_EE0IB6h_INtB1g_3VecB6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBa2_8find_map5checkB3l_B90_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB90_EEB56_.exit.i ], [ undef, %bb.b ]
  %i.au = phi { ptr, ptr } [ %1, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB54_4pack6PackIdINtNtBc_6result6ResultuNtNtB54_5error5ErrorENCNvMs0_NtB54_10repositoryNtB76_10Repository24find_duplicate_snapshots0QINtNtNtBc_5slice4iter4IterB5W_EE0IB6h_INtB1g_3VecB6g_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBa2_8find_map5checkB3l_B90_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB90_EEB56_.exit.i ], [ { ptr null, ptr undef }, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1836
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.10.i, 1
  ret { ptr, ptr } %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB59_7packidx9FileEntryINtNtBb_6result6ResultNtNtB2m_4path7PathBufNtNtB57_5error5ErrorENCNvMs0_NtB57_10repositoryNtB7z_10Repository18copy_loose_entries0INtNtNtBb_5slice4iter4IterB5Z_EE0IB6q_INtB1j_3VecB6p_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB59_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1891)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1892
  store ptr %i.f, ptr %i.e, align 8, !noalias !1893
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !1893
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1894, !noalias !1895, !nonnull !4, !noundef !4
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1894, !noalias !1895
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6o_7packidx9FileEntryINtNtBa_6result6ResultNtNtB1V_4path7PathBufNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8O_10Repository18copy_loose_entries0INtNtNtBa_5slice4iter4IterB7e_EE0IB7F_INtNtB1j_3vec3VecB7E_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i, %bb.a
  %i.l = phi ptr [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6o_7packidx9FileEntryINtNtBa_6result6ResultNtNtB1V_4path7PathBufNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8O_10Repository18copy_loose_entries0INtNtNtBa_5slice4iter4IterB7e_EE0IB7F_INtNtB1j_3vec3VecB7E_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1896)
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB50_7packidx9FileEntryINtNtBc_6result6ResultNtNtB2d_4path7PathBufNtNtB4Y_5error5ErrorENCNvMs0_NtB4Y_10repositoryNtB7q_10Repository18copy_loose_entries0INtNtNtBc_5slice4iter4IterB5Q_EE0IB6h_INtB1a_3VecB6g_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9d_QNCB44_s0_0EB50_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !1894, !noalias !1895
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1897, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1898
  store ptr %i.o, ptr %i.d, align 8, !noalias !1899
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1899
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.p)
          to label %bb.f unwind label %bb.d, !noalias !1900

bb.d:                                             ; preds = %bb.o, %bb.m, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.z, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1901)
  call void @llvm.experimental.noalias.scope.decl(metadata !1902)
  %i.r = load ptr, ptr %i.d, align 8, !alias.scope !1903, !noalias !1899, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1904
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

bb.e:                                             ; preds = %.body.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %bb.q, !noalias !1900

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1905)
  %i.u = load i64, ptr %i.c, align 8, !range !20, !alias.scope !1905, !noalias !1899, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.k, !prof !17

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1906
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !1905, !noalias !1899, !nonnull !4, !align !15, !noundef !4
  %i.x = load i8, ptr %i.k, align 8, !range !10, !alias.scope !1905, !noalias !1899, !noundef !4
  store ptr %i.w, ptr %i.b, align 8, !noalias !1906
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.x, ptr %i.y, align 8, !noalias !1906
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.i unwind label %bb.h, !noalias !1907

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %.body.i.i.i.i.i unwind label %bb.j, !noalias !1907

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1907
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !1905, !noalias !1899, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  %i.ac = load i8, ptr %i.k, align 8, !range !10, !alias.scope !1905, !noalias !1899, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1899
  %.sroa.0.0.copyload2.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !1908 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i, i64 16, i1 false), !noalias !1908
  store ptr null, ptr %i.ae, align 8, !noalias !1900
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1899
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc4.i.i.i.i.i unwind label %bb.d, !noalias !1900

.noexc4.i.i.i.i.i:                                ; preds = %bb.m
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc4.i.i.i.i.i
  store atomic i8 1, ptr %i.af monotonic, align 4, !noalias !1900
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.noexc4.i.i.i.i.i, %bb.l, %bb.k
  %i.ak = atomicrmw xchg ptr %i.ab, i32 0 release, align 4, !noalias !1900
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, !prof !17

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %bb.d, !noalias !1900

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1909)
  call void @llvm.experimental.noalias.scope.decl(metadata !1910)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !1911, !noalias !1899, !nonnull !4, !noundef !4
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !1912
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBX_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3P_10Repository18copy_loose_entries0INtNtNtB2h_5slice4iter4IterB1N_EE0IB2d_INtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EINtNtB5r_5boxed3BoxDNtNtB2h_3any3AnyNtNtB2h_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21, !noalias !1900
  br label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBX_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3P_10Repository18copy_loose_entries0INtNtNtB2h_5slice4iter4IterB1N_EE0IB2d_INtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EINtNtB5r_5boxed3BoxDNtNtB2h_3any3AnyNtNtB2h_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1900
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.e, %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBX_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3P_10Repository18copy_loose_entries0INtNtNtB2h_5slice4iter4IterB1N_EE0IB2d_INtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EINtNtB5r_5boxed3BoxDNtNtB2h_3any3AnyNtNtB2h_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1898
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload2.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6o_7packidx9FileEntryINtNtBa_6result6ResultNtNtB1V_4path7PathBufNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8O_10Repository18copy_loose_entries0INtNtNtBa_5slice4iter4IterB7e_EE0IB7F_INtNtB1j_3vec3VecB7E_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBX_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3P_10Repository18copy_loose_entries0INtNtNtB2h_5slice4iter4IterB1N_EE0IB2d_INtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EINtNtB5r_5boxed3BoxDNtNtB2h_3any3AnyNtNtB2h_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !1898
  store ptr %.sroa.0.0.copyload2.i.i.i.i, ptr %i.a, align 8, !noalias !1914
  %i.aq = call { ptr, ptr } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB1M_7packidx9FileEntryINtNtBb_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtB1K_5error5ErrorENCNvMs0_NtB1K_10repositoryNtB4q_10Repository18copy_loose_entries0INtNtNtBb_5slice4iter4IterB2C_EE0IB33_INtNtCs1xwejQucwHj_5alloc3vec3VecB32_EINtNtB62_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs0_0INtB7_5FnMutTINtNtNtB3s_6thread11join_handle10JoinHandleuEEE8call_mutB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1915 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1913
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr undef, ptr %i.as
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6o_7packidx9FileEntryINtNtBa_6result6ResultNtNtB1V_4path7PathBufNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8O_10Repository18copy_loose_entries0INtNtNtBa_5slice4iter4IterB7e_EE0IB7F_INtNtB1j_3vec3VecB7E_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6o_7packidx9FileEntryINtNtBa_6result6ResultNtNtB1V_4path7PathBufNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8O_10Repository18copy_loose_entries0INtNtNtBa_5slice4iter4IterB7e_EE0IB7F_INtNtB1j_3vec3VecB7E_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i: ; preds = %bb.r, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBX_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3P_10Repository18copy_loose_entries0INtNtNtB2h_5slice4iter4IterB1N_EE0IB2d_INtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EINtNtB5r_5boxed3BoxDNtNtB2h_3any3AnyNtNtB2h_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.r ], [ undef, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBX_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3P_10Repository18copy_loose_entries0INtNtNtB2h_5slice4iter4IterB1N_EE0IB2d_INtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EINtNtB5r_5boxed3BoxDNtNtB2h_3any3AnyNtNtB2h_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.ar, %bb.r ], [ null, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtBX_7packidx9FileEntryINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtBV_5error5ErrorENCNvMs0_NtBV_10repositoryNtB3P_10Repository18copy_loose_entries0INtNtNtB2h_5slice4iter4IterB1N_EE0IB2d_INtNtCs1xwejQucwHj_5alloc3vec3VecB2c_EINtNtB5r_5boxed3BoxDNtNtB2h_3any3AnyNtNtB2h_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.not.i9.i.i.i = icmp eq ptr %.sroa.0.0.i8.i.i.i, null
  br i1 %.not.i9.i.i.i, label %bb.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB56_7packidx9FileEntryINtNtBc_6result6ResultNtNtB2j_4path7PathBufNtNtB54_5error5ErrorENCNvMs0_NtB54_10repositoryNtB7w_10Repository18copy_loose_entries0INtNtNtBc_5slice4iter4IterB5W_EE0IB6n_INtB1g_3VecB6m_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBal_8find_map5checkB3l_B9j_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9j_EEB56_.exit.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB56_7packidx9FileEntryINtNtBc_6result6ResultNtNtB2j_4path7PathBufNtNtB54_5error5ErrorENCNvMs0_NtB54_10repositoryNtB7w_10Repository18copy_loose_entries0INtNtNtBc_5slice4iter4IterB5W_EE0IB6n_INtB1g_3VecB6m_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBal_8find_map5checkB3l_B9j_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9j_EEB56_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB6o_7packidx9FileEntryINtNtBa_6result6ResultNtNtB1V_4path7PathBufNtNtB6m_5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8O_10Repository18copy_loose_entries0INtNtNtBa_5slice4iter4IterB7e_EE0IB7F_INtNtB1j_3vec3VecB7E_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  %i.at = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i8.i.i.i, 0
  %1 = insertvalue { ptr, ptr } %i.at, ptr %.sroa.3.0.i.i.i.i, 1
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB50_7packidx9FileEntryINtNtBc_6result6ResultNtNtB2d_4path7PathBufNtNtB4Y_5error5ErrorENCNvMs0_NtB4Y_10repositoryNtB7q_10Repository18copy_loose_entries0INtNtNtBc_5slice4iter4IterB5Q_EE0IB6h_INtB1a_3VecB6g_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9d_QNCB44_s0_0EB50_.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB50_7packidx9FileEntryINtNtBc_6result6ResultNtNtB2d_4path7PathBufNtNtB4Y_5error5ErrorENCNvMs0_NtB4Y_10repositoryNtB7q_10Repository18copy_loose_entries0INtNtNtBc_5slice4iter4IterB5Q_EE0IB6h_INtB1a_3VecB6g_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9d_QNCB44_s0_0EB50_.exit: ; preds = %bb.b, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB56_7packidx9FileEntryINtNtBc_6result6ResultNtNtB2j_4path7PathBufNtNtB54_5error5ErrorENCNvMs0_NtB54_10repositoryNtB7w_10Repository18copy_loose_entries0INtNtNtBc_5slice4iter4IterB5W_EE0IB6n_INtB1g_3VecB6m_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBal_8find_map5checkB3l_B9j_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9j_EEB56_.exit.i
  %.10.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB56_7packidx9FileEntryINtNtBc_6result6ResultNtNtB2j_4path7PathBufNtNtB54_5error5ErrorENCNvMs0_NtB54_10repositoryNtB7w_10Repository18copy_loose_entries0INtNtNtBc_5slice4iter4IterB5W_EE0IB6n_INtB1g_3VecB6m_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBal_8find_map5checkB3l_B9j_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9j_EEB56_.exit.i ], [ undef, %bb.b ]
  %i.au = phi { ptr, ptr } [ %1, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRNtNtB56_7packidx9FileEntryINtNtBc_6result6ResultNtNtB2j_4path7PathBufNtNtB54_5error5ErrorENCNvMs0_NtB54_10repositoryNtB7w_10Repository18copy_loose_entries0INtNtNtBc_5slice4iter4IterB5W_EE0IB6n_INtB1g_3VecB6m_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBal_8find_map5checkB3l_B9j_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9j_EEB56_.exit.i ], [ { ptr null, ptr undef }, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1892
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.10.i, 1
  ret { ptr, ptr } %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBb_6result6ResultTyINtB1j_3VechEENtNtNtBb_2io5error5ErrorENCNvMs0_NtB57_10repositoryNtB7a_10Repository11create_pack0INtNtB1j_9into_iter8IntoIterB5Y_EE0IB62_IB6q_B61_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB59_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1945)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1948
  store ptr %i.f, ptr %i.e, align 8, !noalias !1949
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !1949
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1950, !noalias !1951, !nonnull !4, !noundef !4
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !1950, !noalias !1951
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBa_6result6ResultTyINtNtB1j_3vec3VechEENtNtNtBa_2io5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8v_10Repository11create_pack0INtNtB7H_9into_iter8IntoIterB7d_EE0IB7h_IB7F_B7g_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i, %bb.a
  %i.l = phi ptr [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBa_6result6ResultTyINtNtB1j_3vec3VechEENtNtNtBa_2io5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8v_10Repository11create_pack0INtNtB7H_9into_iter8IntoIterB7d_EE0IB7h_IB7F_B7g_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBc_6result6ResultTyINtB1a_3VechEENtNtNtBc_2io5error5ErrorENCNvMs0_NtB4Y_10repositoryNtB71_10Repository11create_pack0INtNtB1a_9into_iter8IntoIterB5P_EE0IB5T_IB6h_B5S_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB8D_QNCB44_s0_0EB50_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !1950, !noalias !1951
  %i.o = load ptr, ptr %i.l, align 8, !noalias !1953, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1954
  store ptr %i.o, ptr %i.d, align 8, !noalias !1955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1955
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.p)
          to label %bb.f unwind label %bb.d, !noalias !1956

bb.d:                                             ; preds = %bb.o, %bb.m, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.z, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1957)
  call void @llvm.experimental.noalias.scope.decl(metadata !1958)
  %i.r = load ptr, ptr %i.d, align 8, !alias.scope !1959, !noalias !1955, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !1960
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

bb.e:                                             ; preds = %.body.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %bb.q, !noalias !1956

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  %i.u = load i64, ptr %i.c, align 8, !range !20, !alias.scope !1961, !noalias !1955, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.k, !prof !17

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1962
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !1961, !noalias !1955, !nonnull !4, !align !15, !noundef !4
  %i.x = load i8, ptr %i.k, align 8, !range !10, !alias.scope !1961, !noalias !1955, !noundef !4
  store ptr %i.w, ptr %i.b, align 8, !noalias !1962
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.x, ptr %i.y, align 8, !noalias !1962
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.i unwind label %bb.h, !noalias !1963

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %.body.i.i.i.i.i unwind label %bb.j, !noalias !1963

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1963
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !1961, !noalias !1955, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  %i.ac = load i8, ptr %i.k, align 8, !range !10, !alias.scope !1961, !noalias !1955, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1955
  %.sroa.0.0.copyload2.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !1964 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i, i64 16, i1 false), !noalias !1964
  store ptr null, ptr %i.ae, align 8, !noalias !1956
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1955
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc4.i.i.i.i.i unwind label %bb.d, !noalias !1956

.noexc4.i.i.i.i.i:                                ; preds = %bb.m
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc4.i.i.i.i.i
  store atomic i8 1, ptr %i.af monotonic, align 4, !noalias !1956
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.noexc4.i.i.i.i.i, %bb.l, %bb.k
  %i.ak = atomicrmw xchg ptr %i.ab, i32 0 release, align 4, !noalias !1956
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, !prof !17

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %bb.d, !noalias !1956

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1965)
  call void @llvm.experimental.noalias.scope.decl(metadata !1966)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !1967, !noalias !1955, !nonnull !4, !noundef !4
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !1968
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB1U_2io5error5ErrorENCNvMs0_NtBV_10repositoryNtB3B_10Repository11create_pack0INtNtB2w_9into_iter8IntoIterB1M_EE0IB1Q_IB2u_B1P_EINtNtB2y_5boxed3BoxDNtNtB1U_3any3AnyNtNtB1U_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21, !noalias !1956
  br label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB1U_2io5error5ErrorENCNvMs0_NtBV_10repositoryNtB3B_10Repository11create_pack0INtNtB2w_9into_iter8IntoIterB1M_EE0IB1Q_IB2u_B1P_EINtNtB2y_5boxed3BoxDNtNtB1U_3any3AnyNtNtB1U_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1956
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.e, %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB1U_2io5error5ErrorENCNvMs0_NtBV_10repositoryNtB3B_10Repository11create_pack0INtNtB2w_9into_iter8IntoIterB1M_EE0IB1Q_IB2u_B1P_EINtNtB2y_5boxed3BoxDNtNtB1U_3any3AnyNtNtB1U_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1954
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload2.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBa_6result6ResultTyINtNtB1j_3vec3VechEENtNtNtBa_2io5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8v_10Repository11create_pack0INtNtB7H_9into_iter8IntoIterB7d_EE0IB7h_IB7F_B7g_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB1U_2io5error5ErrorENCNvMs0_NtBV_10repositoryNtB3B_10Repository11create_pack0INtNtB2w_9into_iter8IntoIterB1M_EE0IB1Q_IB2u_B1P_EINtNtB2y_5boxed3BoxDNtNtB1U_3any3AnyNtNtB1U_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1969
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !1954
  store ptr %.sroa.0.0.copyload2.i.i.i.i, ptr %i.a, align 8, !noalias !1970
  %i.aq = call { ptr, ptr } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBb_6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtBb_2io5error5ErrorENCNvMs0_NtB1K_10repositoryNtB49_10Repository11create_pack0INtNtB35_9into_iter8IntoIterB2B_EE0IB2F_IB33_B2E_EINtNtB37_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs0_0INtB7_5FnMutTINtNtNtCsaL1QbXo9JQH_3std6thread11join_handle10JoinHandleuEEE8call_mutB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !1971 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1969
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr undef, ptr %i.as
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBa_6result6ResultTyINtNtB1j_3vec3VechEENtNtNtBa_2io5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8v_10Repository11create_pack0INtNtB7H_9into_iter8IntoIterB7d_EE0IB7h_IB7F_B7g_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBa_6result6ResultTyINtNtB1j_3vec3VechEENtNtNtBa_2io5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8v_10Repository11create_pack0INtNtB7H_9into_iter8IntoIterB7d_EE0IB7h_IB7F_B7g_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i: ; preds = %bb.r, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB1U_2io5error5ErrorENCNvMs0_NtBV_10repositoryNtB3B_10Repository11create_pack0INtNtB2w_9into_iter8IntoIterB1M_EE0IB1Q_IB2u_B1P_EINtNtB2y_5boxed3BoxDNtNtB1U_3any3AnyNtNtB1U_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.r ], [ undef, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB1U_2io5error5ErrorENCNvMs0_NtBV_10repositoryNtB3B_10Repository11create_pack0INtNtB2w_9into_iter8IntoIterB1M_EE0IB1Q_IB2u_B1P_EINtNtB2y_5boxed3BoxDNtNtB1U_3any3AnyNtNtB1U_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.ar, %bb.r ], [ null, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtCs3oUPovFnLWP_4core6result6ResultTyINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtNtB1U_2io5error5ErrorENCNvMs0_NtBV_10repositoryNtB3B_10Repository11create_pack0INtNtB2w_9into_iter8IntoIterB1M_EE0IB1Q_IB2u_B1P_EINtNtB2y_5boxed3BoxDNtNtB1U_3any3AnyNtNtB1U_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.not.i9.i.i.i = icmp eq ptr %.sroa.0.0.i8.i.i.i, null
  br i1 %.not.i9.i.i.i, label %bb.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBc_6result6ResultTyINtB1g_3VechEENtNtNtBc_2io5error5ErrorENCNvMs0_NtB54_10repositoryNtB77_10Repository11create_pack0INtNtB1g_9into_iter8IntoIterB5V_EE0IB5Z_IB6n_B5Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB9L_8find_map5checkB3l_B8J_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8J_EEB56_.exit.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBc_6result6ResultTyINtB1g_3VechEENtNtNtBc_2io5error5ErrorENCNvMs0_NtB54_10repositoryNtB77_10Repository11create_pack0INtNtB1g_9into_iter8IntoIterB5V_EE0IB5Z_IB6n_B5Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB9L_8find_map5checkB3l_B8J_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8J_EEB56_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBa_6result6ResultTyINtNtB1j_3vec3VechEENtNtNtBa_2io5error5ErrorENCNvMs0_NtB6m_10repositoryNtB8v_10Repository11create_pack0INtNtB7H_9into_iter8IntoIterB7d_EE0IB7h_IB7F_B7g_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  %i.at = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i8.i.i.i, 0
  %1 = insertvalue { ptr, ptr } %i.at, ptr %.sroa.3.0.i.i.i.i, 1
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBc_6result6ResultTyINtB1a_3VechEENtNtNtBc_2io5error5ErrorENCNvMs0_NtB4Y_10repositoryNtB71_10Repository11create_pack0INtNtB1a_9into_iter8IntoIterB5P_EE0IB5T_IB6h_B5S_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB8D_QNCB44_s0_0EB50_.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBc_6result6ResultTyINtB1a_3VechEENtNtNtBc_2io5error5ErrorENCNvMs0_NtB4Y_10repositoryNtB71_10Repository11create_pack0INtNtB1a_9into_iter8IntoIterB5P_EE0IB5T_IB6h_B5S_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB8D_QNCB44_s0_0EB50_.exit: ; preds = %bb.b, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBc_6result6ResultTyINtB1g_3VechEENtNtNtBc_2io5error5ErrorENCNvMs0_NtB54_10repositoryNtB77_10Repository11create_pack0INtNtB1g_9into_iter8IntoIterB5V_EE0IB5Z_IB6n_B5Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB9L_8find_map5checkB3l_B8J_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8J_EEB56_.exit.i
  %.10.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBc_6result6ResultTyINtB1g_3VechEENtNtNtBc_2io5error5ErrorENCNvMs0_NtB54_10repositoryNtB77_10Repository11create_pack0INtNtB1g_9into_iter8IntoIterB5V_EE0IB5Z_IB6n_B5Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB9L_8find_map5checkB3l_B8J_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8J_EEB56_.exit.i ], [ undef, %bb.b ]
  %i.au = phi { ptr, ptr } [ %1, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelRSmINtNtBc_6result6ResultTyINtB1g_3VechEENtNtNtBc_2io5error5ErrorENCNvMs0_NtB54_10repositoryNtB77_10Repository11create_pack0INtNtB1g_9into_iter8IntoIterB5V_EE0IB5Z_IB6n_B5Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB9L_8find_map5checkB3l_B8J_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB8J_EEB56_.exit.i ], [ { ptr null, ptr undef }, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1948
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.10.i, 1
  ret { ptr, ptr } %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB5_9FilterMapIBV_INtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1l_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBb_6option6OptionINtNtNtB2m_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB57_4pack10PackReaderINtB1j_3VecNtNtB59_7packidx9FileEntryEEINtNtBb_6result6ResultNtB61_12ExtractStatsNtNtB57_5error5ErrorENCINvMsa_B61_NtB61_4Pack15extract_entriesRNtNtB2m_4path4PathEs0_0INtNtB1j_9into_iter8IntoIterB5Y_EE0IB72_IB6p_B71_EINtNtB1l_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs_0ENCB4d_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB59_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.5.i.i.i.i = alloca [16 x i8], align 8    ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2002)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2003)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2004
  store ptr %i.f, ptr %i.e, align 8, !noalias !2005
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !noalias !2005
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2006, !noalias !2007, !nonnull !4, !noundef !4
  %.promoted.i.i.i = load ptr, ptr %0, align 8, !alias.scope !2006, !noalias !2007
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i, %bb.a
  %i.l = phi ptr [ %i.n, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i ], [ %.promoted.i.i.i, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  %i.m = icmp eq ptr %i.l, %i.i
  br i1 %i.m, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB4Y_4pack10PackReaderINtB1a_3VecNtNtB50_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5S_12ExtractStatsNtNtB4Y_5error5ErrorENCINvMsa_B5S_NtB5S_4Pack15extract_entriesRNtNtB2d_4path4PathEs0_0INtNtB1a_9into_iter8IntoIterB5P_EE0IB6T_IB6g_B6S_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9K_QNCB44_s0_0EB50_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !alias.scope !2006, !noalias !2007
  %i.o = load ptr, ptr %i.l, align 8, !noalias !2009, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2010
  store ptr %i.o, ptr %i.d, align 8, !noalias !2011
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2011
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  invoke void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_6thread11join_handle10JoinHandleuEEE4lockCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.p)
          to label %bb.f unwind label %bb.d, !noalias !2012

bb.d:                                             ; preds = %bb.o, %bb.m, %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.h, %bb.d
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.q, %bb.d ], [ %i.z, %bb.h ]
  call void @llvm.experimental.noalias.scope.decl(metadata !2013)
  call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  %i.r = load ptr, ptr %i.d, align 8, !alias.scope !2015, !noalias !2011, !nonnull !4, !noundef !4
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !2016
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i

bb.e:                                             ; preds = %.body.i.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %bb.q, !noalias !2012

bb.f:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !2017)
  %i.u = load i64, ptr %i.c, align 8, !range !20, !alias.scope !2017, !noalias !2011, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  br i1 %i.v, label %bb.g, label %bb.k, !prof !17

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2018
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !2017, !noalias !2011, !nonnull !4, !align !15, !noundef !4
  %i.x = load i8, ptr %i.k, align 8, !range !10, !alias.scope !2017, !noalias !2011, !noundef !4
  store ptr %i.w, ptr %i.b, align 8, !noalias !2018
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i8 %i.x, ptr %i.y, align 8, !noalias !2018
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #24
          to label %bb.i unwind label %bb.h, !noalias !2019

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBI_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #22
          to label %.body.i.i.i.i.i unwind label %bb.j, !noalias !2019

bb.i:                                             ; preds = %bb.g
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !2019
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !2017, !noalias !2011, !nonnull !4, !align !15, !noundef !4 ; 5 uses
  %i.ac = load i8, ptr %i.k, align 8, !range !10, !alias.scope !2017, !noalias !2011, !noundef !4
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2011
  %.sroa.0.0.copyload2.i.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !2020 ; 2 uses
  %.sroa.5.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i.i.i.i, i64 16, i1 false), !noalias !2020
  store ptr null, ptr %i.ae, align 8, !noalias !2012
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  br i1 %i.ad, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !2011
  %i.ah = and i64 %i.ag, 9223372036854775807
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.m, !prof !16

bb.m:                                             ; preds = %bb.l
  %i.aj = invoke noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #21
          to label %.noexc4.i.i.i.i.i unwind label %bb.d, !noalias !2012

.noexc4.i.i.i.i.i:                                ; preds = %bb.m
  br i1 %i.aj, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %.noexc4.i.i.i.i.i
  store atomic i8 1, ptr %i.af monotonic, align 4, !noalias !2012
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i: ; preds = %bb.n, %.noexc4.i.i.i.i.i, %bb.l, %bb.k
  %i.ak = atomicrmw xchg ptr %i.ab, i32 0 release, align 4, !noalias !2012
  %i.al = icmp eq i32 %i.ak, 2
  br i1 %i.al, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i, !prof !17

bb.o:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i unwind label %bb.d, !noalias !2012

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.o, %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2021)
  call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  %i.am = load ptr, ptr %i.d, align 8, !alias.scope !2023, !noalias !2011, !nonnull !4, !noundef !4
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !2024
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.p, label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBP_6thread11join_handle10JoinHandleuEEEE9drop_slowCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #21, !noalias !2012
  br label %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i

bb.q:                                             ; preds = %bb.e
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !2012
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtB4_6option6OptionINtNtNtB1i_6thread11join_handle10JoinHandleuEEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i: ; preds = %bb.e, %.body.i.i.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i.i.i

_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i: ; preds = %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardINtNtB4_6option6OptionINtNtNtBK_6thread11join_handle10JoinHandleuEEEECskuiImRAV2ip_9elfshaker.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2010
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload2.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i, label %bb.r

bb.r:                                             ; preds = %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2025
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i, i64 16, i1 false), !noalias !2010
  store ptr %.sroa.0.0.copyload2.i.i.i.i, ptr %i.a, align 8, !noalias !2026
  %i.aq = call { ptr, ptr } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB1K_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB1M_7packidx9FileEntryEEINtNtBb_6result6ResultNtB2E_12ExtractStatsNtNtB1K_5error5ErrorENCINvMsa_B2E_NtB2E_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB34_9into_iter8IntoIterB2B_EE0IB41_IB32_B40_EINtNtB36_5boxed3BoxDNtNtBb_3any3AnyNtNtBb_6marker4SendEL_EEEs0_0INtB7_5FnMutTINtNtNtB5L_6thread11join_handle10JoinHandleuEEE8call_mutB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2027 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2025
  %.not.i.i.i.i.i = icmp eq ptr %i.ar, null
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %spec.select.i.i.i.i.i = select i1 %.not.i.i.i.i.i, ptr undef, ptr %i.as
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i: ; preds = %bb.r, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i
  %.sroa.3.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.r ], [ undef, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i ] ; 3 uses
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.ar, %bb.r ], [ null, %_RNCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtBV_4pack10PackReaderINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBX_7packidx9FileEntryEEINtNtCs3oUPovFnLWP_4core6result6ResultNtB1P_12ExtractStatsNtNtBV_5error5ErrorENCINvMsa_B1P_NtB1P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathEs0_0INtNtB2e_9into_iter8IntoIterB1M_EE0IB3a_IB2c_B39_EINtNtB2g_5boxed3BoxDNtNtB3e_3any3AnyNtNtB3e_6marker4SendEL_EEEs_0BX_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i)
  %.not.i9.i.i.i = icmp eq ptr %.sroa.0.0.i8.i.i.i, null
  br i1 %.not.i9.i.i.i, label %bb.b, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB54_4pack10PackReaderINtB1g_3VecNtNtB56_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5Y_12ExtractStatsNtNtB54_5error5ErrorENCINvMsa_B5Y_NtB5Y_4Pack15extract_entriesRNtNtB2j_4path4PathEs0_0INtNtB1g_9into_iter8IntoIterB5V_EE0IB6Z_IB6m_B6Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaS_8find_map5checkB3l_B9Q_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9Q_EEB56_.exit.i

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB54_4pack10PackReaderINtB1g_3VecNtNtB56_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5Y_12ExtractStatsNtNtB54_5error5ErrorENCINvMsa_B5Y_NtB5Y_4Pack15extract_entriesRNtNtB2j_4path4PathEs0_0INtNtB1g_9into_iter8IntoIterB5V_EE0IB6Z_IB6m_B6Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaS_8find_map5checkB3l_B9Q_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9Q_EEB56_.exit.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBa_6option6OptionINtNtNtB1V_6thread11join_handle10JoinHandleuEEEEB2X_uINtNtNtBa_3ops12control_flow11ControlFlowINtNtB1j_5boxed3BoxDNtNtBa_3any3AnyNtNtBa_6marker4SendEL_EENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB6m_4pack10PackReaderINtNtB1j_3vec3VecNtNtB6o_7packidx9FileEntryEEINtNtBa_6result6ResultNtB7g_12ExtractStatsNtNtB6m_5error5ErrorENCINvMsa_B7g_NtB7g_4Pack15extract_entriesRNtNtB1V_4path4PathEs0_0INtNtB7G_9into_iter8IntoIterB7d_EE0IB8n_IB7E_B8m_EB4t_EEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB2X_B4t_QNCB5s_s0_0E0E0B6o_.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.i.i.i.i) ]
  %i.at = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0.i8.i.i.i, 0
  %1 = insertvalue { ptr, ptr } %i.at, ptr %.sroa.3.0.i.i.i.i, 1
  br label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB4Y_4pack10PackReaderINtB1a_3VecNtNtB50_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5S_12ExtractStatsNtNtB4Y_5error5ErrorENCINvMsa_B5S_NtB5S_4Pack15extract_entriesRNtNtB2d_4path4PathEs0_0INtNtB1a_9into_iter8IntoIterB5P_EE0IB6T_IB6g_B6S_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9K_QNCB44_s0_0EB50_.exit

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1c_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2d_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB4Y_4pack10PackReaderINtB1a_3VecNtNtB50_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5S_12ExtractStatsNtNtB4Y_5error5ErrorENCINvMsa_B5S_NtB5S_4Pack15extract_entriesRNtNtB2d_4path4PathEs0_0INtNtB1a_9into_iter8IntoIterB5P_EE0IB6T_IB6g_B6S_EINtNtB1c_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8find_mapB9K_QNCB44_s0_0EB50_.exit: ; preds = %bb.b, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB54_4pack10PackReaderINtB1g_3VecNtNtB56_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5Y_12ExtractStatsNtNtB54_5error5ErrorENCINvMsa_B5Y_NtB5Y_4Pack15extract_entriesRNtNtB2j_4path4PathEs0_0INtNtB1g_9into_iter8IntoIterB5V_EE0IB6Z_IB6m_B6Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaS_8find_map5checkB3l_B9Q_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9Q_EEB56_.exit.i
  %.10.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB54_4pack10PackReaderINtB1g_3VecNtNtB56_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5Y_12ExtractStatsNtNtB54_5error5ErrorENCINvMsa_B5Y_NtB5Y_4Pack15extract_entriesRNtNtB2j_4path4PathEs0_0INtNtB1g_9into_iter8IntoIterB5V_EE0IB6Z_IB6m_B6Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaS_8find_map5checkB3l_B9Q_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9Q_EEB56_.exit.i ], [ undef, %bb.b ]
  %i.au = phi { ptr, ptr } [ %1, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainINtNtB1i_4sync3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtBc_6option6OptionINtNtNtB2j_6thread11join_handle10JoinHandleuEEEEENCINvNtCs1ftIqucrW6Z_15crossbeam_utils6thread5scopeNCINvNtNtCskuiImRAV2ip_9elfshaker4repo4algo15run_in_parallelTNtNtB54_4pack10PackReaderINtB1g_3VecNtNtB56_7packidx9FileEntryEEINtNtBc_6result6ResultNtB5Y_12ExtractStatsNtNtB54_5error5ErrorENCINvMsa_B5Y_NtB5Y_4Pack15extract_entriesRNtNtB2j_4path4PathEs0_0INtNtB1g_9into_iter8IntoIterB5V_EE0IB6Z_IB6m_B6Y_EINtNtB1i_5boxed3BoxDNtNtBc_3any3AnyNtNtBc_6marker4SendEL_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvBaS_8find_map5checkB3l_B9Q_QNCB4a_s0_0E0INtNtNtBc_3ops12control_flow11ControlFlowB9Q_EEB56_.exit.i ], [ { ptr null, ptr undef }, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2004
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.10.i, 1
  ret { ptr, ptr } %i.av
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEENCNvMs0_NtB3j_10repositoryNtB4f_10Repository26find_redundant_loose_packss0_0EB2I_NCB49_s1_0ENCB49_s2_0ENtNtNtB9_6traits8iterator8Iterator4nextB3l_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [48 x i8], align 8                ; 9 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 13 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.7 = alloca [40 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2088)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %.sroa.76.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32 ; 2 uses
  %.sroa.76.i.i.i.sroa.5.0..sroa.76.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.619.0..sroa_idx20.i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.pre.i.i = load ptr, ptr %i.q, align 8, !alias.scope !2089, !noalias !2090
  %i.x = icmp eq ptr %.pre.i.i, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2091)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2092
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEB13_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEEB1R_.exit.i.i, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !2093)
  call void @llvm.experimental.noalias.scope.decl(metadata !2094)
  call void @llvm.experimental.noalias.scope.decl(metadata !2095)
  call void @llvm.experimental.noalias.scope.decl(metadata !2096)
  %i.y = load ptr, ptr %i.r, align 8, !alias.scope !2097, !noalias !2098, !nonnull !4, !noundef !4
  %i.z = load ptr, ptr %i.s, align 8, !alias.scope !2097, !noalias !2098, !nonnull !4, !noundef !4 ; 4 uses
  %i.aa = icmp eq ptr %i.z, %i.y
  br i1 %i.aa, label %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1S_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.i, label %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1S_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.i

_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1S_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.i: ; preds = %bb.b
  store i64 -1, ptr %i.m, align 8, !alias.scope !2099, !noalias !2100
  br label %bb.c

_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1S_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.i: ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.ab, ptr %i.s, align 8, !alias.scope !2097, !noalias !2098
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.z, i64 48, i1 false), !noalias !2101
  %.pr.i.i.i = load i64, ptr %i.m, align 8, !noalias !2092 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %.pr.i.i.i, -1
  br i1 %.not6.i.i.i, label %bb.c, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEENCNvMs0_NtB33_10repositoryNtB3Z_10Repository26find_redundant_loose_packss0_0EB2s_NCB3T_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB35_.exit.thread

bb.c:                                             ; preds = %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1S_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.i, %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1S_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.thread.i.i.i
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB20_.exit.thread74.i.i unwind label %bb.d, !noalias !2090

bb.d:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.q, align 8, !alias.scope !2089, !noalias !2090
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEB13_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.m) #22
          to label %common.resume unwind label %bb.e, !noalias !2090

_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB20_.exit.thread74.i.i: ; preds = %bb.c
  store ptr null, ptr %i.q, align 8, !alias.scope !2089, !noalias !2090
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEB13_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !2090
  unreachable

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit11.i, %bb.ah, %bb.d, %bb.g, %.body.i.i.i.i, %bb.v, %bb.x
  %common.resume.op = phi { ptr, i32 } [ %i.bw, %bb.v ], [ %i.by, %bb.x ], [ %i.ac, %bb.d ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i ], [ %i.ai, %bb.g ], [ %i.cr, %bb.ah ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit11.i ]
  resume { ptr, i32 } %common.resume.op

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_6filter6FilterINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEENCNvMs0_NtB33_10repositoryNtB3Z_10Repository26find_redundant_loose_packss0_0EB2s_NCB3T_s1_0ENtNtNtB9_6traits8iterator8Iterator4nextB35_.exit.thread: ; preds = %_RNvYNvYINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextINtNtNtB1S_3ops8function6FnOnceTQB5_EE9call_onceBZ_.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false)
  br label %bb.y

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEB13_.exit.i.i: ; preds = %_RINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB20_.exit.thread74.i.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2102
  call void @llvm.experimental.noalias.scope.decl(metadata !2103)
  %i.af = load i64, ptr %1, align 8, !range !18, !alias.scope !2104, !noalias !2105, !noundef !4
  %.not.i2.i.i = icmp eq i64 %i.af, -1
  br i1 %.not.i2.i.i, label %_RNvXs9_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtB7_6filter6FilterINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map8IntoIterAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEENCNvMs0_NtB3d_10repositoryNtB49_10Repository26find_redundant_loose_packss0_0ENCB43_s1_0EEINtB5_8FuseImplBY_E4nextB3f_.exit.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEB13_.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2107
  store ptr %i.t, ptr %i.l, align 8, !noalias !2108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2108
  call void @_RNvXsE_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_11RawIntoIterTAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextB1C_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(144) %1), !noalias !2109
  %i.ag = load i64, ptr %i.u, align 8, !range !8, !noalias !2108, !noundef !4
  %.not14.i.i.i.i.i.i.i = icmp eq i64 %i.ag, -1
  br i1 %.not14.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !2108
  call void @llvm.experimental.noalias.scope.decl(metadata !2110)
  %i.ah = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBW_10Repository26find_redundant_loose_packss0_0INtB7_5FnMutTRTAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBY_4pack10SnapshotIdEEEE8call_mutB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j)
          to label %bb.h unwind label %bb.g, !noalias !2111

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEEB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j) #22
          to label %common.resume unwind label %bb.p, !noalias !2111

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  br i1 %i.ah, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkTAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEQNCNvMs0_NtB1U_10repositoryNtB2R_10Repository26find_redundant_loose_packss0_0E0B1W_.exit.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkTAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEQNCNvMs0_NtB1U_10repositoryNtB2R_10Repository26find_redundant_loose_packss0_0E0B1W_.exit.thread.i.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkTAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEQNCNvMs0_NtB1U_10repositoryNtB2R_10Repository26find_redundant_loose_packss0_0E0B1W_.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !2112)
  call void @llvm.experimental.noalias.scope.decl(metadata !2113), !noalias !2114
  call void @llvm.experimental.noalias.scope.decl(metadata !2115), !noalias !2114
  %i.aj = load ptr, ptr %.sroa.76.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !2116, !noalias !2117, !nonnull !4, !noundef !4 ; 2 uses
  %i.ak = load i64, ptr %.sroa.76.i.i.i.sroa.5.0..sroa.76.0..sroa_idx.i.i.i.sroa_idx.i.i.i.i, align 8, !alias.scope !2116, !noalias !2117, !noundef !4 ; 4 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEEB1l_.exit.i.i, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_.exit.i.i.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i.i.i.i.i
  %i.am = icmp eq i64 %i.ao, %i.ak
  br i1 %i.am, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEEB1l_.exit.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkTAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEQNCNvMs0_NtB1U_10repositoryNtB2R_10Repository26find_redundant_loose_packss0_0E0B1W_.exit.thread.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_.exit.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i70 = phi i64 [ %i.ao, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_.exit.i.i.i.i.i.i ], [ 0, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4find5checkTAhj14_INtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEQNCNvMs0_NtB1U_10repositoryNtB2R_10Repository26find_redundant_loose_packss0_0E0B1W_.exit.thread.i.i.i.i.i.i.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.aj, i64 %.sroa.0.0.i.i.i.i.i.i70 ; 3 uses
  %i.ao = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i70, 1 ; 4 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.an)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i.i.i.i.i unwind label %bb.i, !noalias !2118

bb.i:                                             ; preds = %.lr.ph
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %.body.i.i.i.i.i.i unwind label %bb.j, !noalias !2118

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_.exit.i.i.i.i.i.i unwind label %bb.k, !noalias !2118

bb.j:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !2118
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i
  %i.at = add i64 %.sroa.0.1.i.i.i.i.i.i71, 1     ; 2 uses
  %i.au = icmp eq i64 %i.at, %i.ak
  br i1 %i.au, label %.body.i.i.i.i, label %.lr.ph72

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i.i.i.i.i
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %bb.k, %bb.i
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.ap, %bb.i ]
  %i.aw = icmp eq i64 %i.ao, %i.ak
  br i1 %i.aw, label %.body.i.i.i.i, label %.lr.ph72

.lr.ph72:                                         ; preds = %.body.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_.exit.i.i
  %.sroa.0.1.i.i.i.i.i.i71 = phi i64 [ %i.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_.exit.i.i ], [ %i.ao, %.body.i.i.i.i.i.i ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.aj, i64 %.sroa.0.1.i.i.i.i.i.i71 ; 3 uses
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ax)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i unwind label %bb.l, !noalias !2118

bb.l:                                             ; preds = %.lr.ph72
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
end_hunk_0
