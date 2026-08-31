Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.0?download=true
inline.NumInlined: 204
inline.NumDeleted: 98
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazy7destroyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleECskVyUMSjkkSy_10rayon_core:bb.a
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native4lazy7destroyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE0ECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNvMs_NtCsdS7Q0PB8o3V_15crossbeam_epoch8deferredNtB7_8Deferred3new4callNCINvMNtB9_5guardNtB1g_5Guard15defer_uncheckedNCNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB22_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resize0uE0EB2X_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !5
  %i.b = and i64 %i.a, -8                         ; 2 uses
  %i.c = inttoptr i64 %i.b to ptr                 ; 3 uses
  %i.d = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNCINvMNtCsdS7Q0PB8o3V_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resize0uE0B2d_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.i = shl nuw nsw i64 %i.f, 4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef 8) #18
  br label %_RNCINvMNtCsdS7Q0PB8o3V_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resize0uE0B2d_.exit

_RNCINvMNtCsdS7Q0PB8o3V_15crossbeam_epoch5guardNtB5_5Guard15defer_uncheckedNCNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB1i_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resize0uE0B2d_.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 16, i64 noundef 8) #18
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_3ops5range5RangejEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_6filter15filter_try_foldjuINtNtB15_12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB3t_8registryNtB4d_12WorkerThread5steal0NCINvNvB1x_8find_map5checkjB3p_NCB47_s_0E0E0B2P_EB3t_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !7, !noundef !5
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !58
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !60, !noalias !67, !noundef !5 ; 2 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !69, !noalias !70 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %.promoted.i)
  %exitcond.not.i41.not = icmp ult i64 %.promoted.i, %i.g
  br i1 %exitcond.not.i41.not, label %.lr.ph, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  %exitcond.not.i = icmp eq i64 %i.i, %umax.i
  br i1 %exitcond.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.h = phi i64 [ %i.i, %bb.c ], [ %.promoted.i, %bb.b ] ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  store i64 %i.i, ptr %i.e, align 8, !alias.scope !69, !noalias !70
  %i.j = call { ptr, ptr } @_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters6filter15filter_try_foldjuINtNtB9_12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB2j_8registryNtB33_12WorkerThread5steal0NCINvNvNtNtNtBX_6traits8iterator8Iterator8find_map5checkjB2f_NCB2X_s_0E0E0INtB7_5FnMutTujEE8call_mutB2j_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.h), !noalias !55 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.c, label %bb.e

bb.d:                                             ; preds = %._crit_edge, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !range !7, !noundef !5
  %i.n = trunc nuw i64 %i.m to i1
  br i1 %i.n, label %bb.f, label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.o = extractvalue { ptr, ptr } %i.j, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 0, ptr %0, align 8
  br label %bb.d

.loopexit:                                        ; preds = %bb.g, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldjuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB1Q_8registryNtB2A_12WorkerThread5steal0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB1M_NCB2u_s_0E0E0B1Q_.exit.i, %bb.f, %bb.d, %bb.e
  %.sroa.5.0 = phi ptr [ %i.o, %bb.e ], [ undef, %bb.d ], [ undef, %bb.f ], [ %.sroa.3.0.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldjuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB1Q_8registryNtB2A_12WorkerThread5steal0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB1M_NCB2u_s_0E0E0B1Q_.exit.i ], [ %.sroa.3.0.i.i, %bb.g ]
  %.sroa.0.0 = phi ptr [ %i.k, %bb.e ], [ null, %bb.d ], [ null, %bb.f ], [ %.sroa.0.0.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldjuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB1Q_8registryNtB2A_12WorkerThread5steal0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB1M_NCB2u_s_0E0E0B1Q_.exit.i ], [ null, %bb.g ]
  %i.p = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.q = insertvalue { ptr, ptr } %i.p, ptr %.sroa.5.0, 1
  ret { ptr, ptr } %i.q

bb.f:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !74, !noalias !81, !noundef !5 ; 2 uses
  %.promoted.i13 = load i64, ptr %i.r, align 8, !alias.scope !84, !noalias !85 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %umax.i14 = call i64 @llvm.umax.i64(i64 %i.t, i64 %.promoted.i13)
  %exitcond.not.i1542.not = icmp ult i64 %.promoted.i13, %i.t
  br i1 %exitcond.not.i1542.not, label %.lr.ph44, label %.loopexit

bb.g:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldjuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB1Q_8registryNtB2A_12WorkerThread5steal0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB1M_NCB2u_s_0E0E0B1Q_.exit.i
  %exitcond.not.i15 = icmp eq i64 %i.x, %umax.i14
  br i1 %exitcond.not.i15, label %.loopexit, label %.lr.ph44

.lr.ph44:                                         ; preds = %bb.f, %bb.g
  %i.w = phi i64 [ %i.x, %bb.g ], [ %.promoted.i13, %bb.f ] ; 5 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.x, ptr %i.r, align 8, !alias.scope !84, !noalias !85
  %.val.i.i = load ptr, ptr %.sroa.0.0.copyload, align 8, !noalias !86, !nonnull !5, !align !89, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 256
  %i.z = load i64, ptr %i.y, align 128, !noalias !86, !noundef !5
  %.not.i.i = icmp eq i64 %i.w, %i.z
  br i1 %.not.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldjuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB1Q_8registryNtB2A_12WorkerThread5steal0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB1M_NCB2u_s_0E0E0B1Q_.exit.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph44
  %i.aa = icmp ult i64 %i.w, %.sroa.5.0.copyload
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %.sroa.4.0.copyload, i64 %i.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !90
  call void @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB10_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab), !noalias !90
  %i.ac = load i64, ptr %i.a, align 8, !range !37, !noalias !90, !noundef !5
  switch i64 %i.ac, label %default.unreachable [
    i64 0, label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkjNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefNCNvMs8_NtB1l_8registryNtB24_12WorkerThread5steals_0E0B1l_.exit.i.i
    i64 1, label %bb.k
    i64 2, label %bb.l
  ]

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.w, i64 noundef %.sroa.5.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26, !noalias !90
  unreachable

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.u, align 8, !noalias !90, !nonnull !5, !noundef !5
  %i.ae = load ptr, ptr %i.v, align 8, !noalias !90, !noundef !5
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkjNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefNCNvMs8_NtB1l_8registryNtB24_12WorkerThread5steals_0E0B1l_.exit.i.i

bb.l:                                             ; preds = %bb.i
  store i8 1, ptr %.sroa.6.0.copyload, align 1, !noalias !90
  br label %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkjNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefNCNvMs8_NtB1l_8registryNtB24_12WorkerThread5steals_0E0B1l_.exit.i.i

_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkjNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefNCNvMs8_NtB1l_8registryNtB24_12WorkerThread5steals_0E0B1l_.exit.i.i: ; preds = %bb.l, %bb.k, %bb.i
  %.sroa.4.0.i.i.i.i = phi ptr [ undef, %bb.l ], [ %i.ae, %bb.k ], [ undef, %bb.i ]
  %.sroa.0.0.i.i.i.i = phi ptr [ null, %bb.l ], [ %i.ad, %bb.k ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !90
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldjuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB1Q_8registryNtB2A_12WorkerThread5steal0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB1M_NCB2u_s_0E0E0B1Q_.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldjuINtNtNtBa_3ops12control_flow11ControlFlowNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENCNvMs8_NtB1Q_8registryNtB2A_12WorkerThread5steal0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkjB1M_NCB2u_s_0E0E0B1Q_.exit.i: ; preds = %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkjNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefNCNvMs8_NtB1l_8registryNtB24_12WorkerThread5steals_0E0B1l_.exit.i.i, %.lr.ph44
  %.sroa.3.0.i.i = phi ptr [ %.sroa.4.0.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkjNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefNCNvMs8_NtB1l_8registryNtB24_12WorkerThread5steals_0E0B1l_.exit.i.i ], [ undef, %.lr.ph44 ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_RNCINvNvNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8find_map5checkjNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefNCNvMs8_NtB1l_8registryNtB24_12WorkerThread5steals_0E0B1l_.exit.i.i ], [ null, %.lr.ph44 ] ; 2 uses
  %.not.i8.i = icmp eq ptr %.sroa.0.0.i.i, null
  br i1 %.not.i8.i, label %bb.g, label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvMNtCskVyUMSjkkSy_10rayon_core11thread_poolNtB2_10ThreadPool11yield_local(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = tail call noundef align 128 ptr @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry14current_thread(ptr noundef nonnull align 128 %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread11yield_local(ptr noundef nonnull align 128 %i.c)
  %i.e = zext i1 %i.d to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskVyUMSjkkSy_10rayon_core11thread_poolNtB2_10ThreadPool3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [96 x i8], align 8                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.c, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !95
  call void @_RINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB6_8Registry3newNtB6_12DefaultSpawnEB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.c), !noalias !99
  %i.d = load i64, ptr %i.a, align 8, !range !4, !noalias !95, !noundef !5 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !95 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !95
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.d, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.g, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.h = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 16, 385) 16, i64 noundef range(i64 8, 129) 8) #18 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit, !prof !44

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #25
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #27
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.j

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit: ; preds = %bb.b
  store i64 %i.d, ptr %i.h, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.f, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @14, ptr %i.m, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.n, align 8
  store ptr null, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxNtCskVyUMSjkkSy_10rayon_core20ThreadPoolBuildErrorE3newBG_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvMNtCskVyUMSjkkSy_10rayon_core11thread_poolNtB2_10ThreadPool9yield_now(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = tail call noundef align 128 ptr @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry14current_thread(ptr noundef nonnull align 128 %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9yield_now(ptr noundef nonnull align 128 %i.c)
  %i.e = zext i1 %i.d to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.e, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3popBZ_(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264 ; 2 uses
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = sub i64 %i.c, %i.e                       ; 2 uses
  %i.g = icmp slt i64 %i.f, 1
  br i1 %i.g, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i8, ptr %i.h, align 8, !range !100, !noundef !5
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = add i64 %i.c, -1                         ; 5 uses
  store atomic i64 %i.k, ptr %i.b monotonic, align 8
  fence seq_cst
  %i.l = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 256 ; 2 uses
  %i.n = load atomic i64, ptr %i.m monotonic, align 8 ; 2 uses
  %i.o = sub i64 %i.k, %i.n                       ; 2 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.q = atomicrmw add ptr %i.d, i64 1 seq_cst, align 8 ; 3 uses
  %i.r = sub i64 %i.q, %i.c
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !5 ; 4 uses
  %i.x = add i64 %i.w, -1
  %i.y = and i64 %i.x, %i.q
  %i.z = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.y
  %i.aa = load volatile i128, ptr %i.z, align 8   ; 2 uses
  %.sroa.015.0.extract.trunc = trunc i128 %i.aa to i64 ; 2 uses
  %i.ab = inttoptr i64 %.sroa.015.0.extract.trunc to ptr ; 2 uses
  %.sroa.216.0.extract.shift = lshr i128 %i.aa, 64
  %.sroa.216.0.extract.trunc = trunc nuw i128 %.sroa.216.0.extract.shift to i64
  %i.ac = inttoptr i64 %.sroa.216.0.extract.trunc to ptr ; 2 uses
  %i.ad = icmp ne i64 %.sroa.015.0.extract.trunc, 0
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp ugt i64 %i.w, 64
  %i.af = sdiv i64 %i.w, 4
  %i.ag = icmp sle i64 %i.f, %i.af
  %or.cond = and i1 %i.ae, %i.ag
  br i1 %or.cond, label %bb.g, label %bb.n, !prof !9

bb.f:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 256
  store atomic i64 %i.q, ptr %i.ai monotonic, align 8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.aj = lshr i64 %i.w, 1
  tail call fastcc void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resizeBZ_(ptr noundef nonnull align 8 %0, i64 noundef %i.aj)
  br label %bb.n

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !noundef !5 ; 4 uses
  %i.ao = add i64 %i.an, -1
  %i.ap = and i64 %i.ao, %i.k
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load volatile i128, ptr %i.aq, align 8  ; 2 uses
  %.sroa.017.0.extract.trunc = trunc i128 %i.ar to i64 ; 2 uses
  %i.as = inttoptr i64 %.sroa.017.0.extract.trunc to ptr
  %.sroa.218.0.extract.shift = lshr i128 %i.ar, 64
  %.sroa.218.0.extract.trunc = trunc nuw i128 %.sroa.218.0.extract.shift to i64
  %i.at = inttoptr i64 %.sroa.218.0.extract.trunc to ptr
  %i.au = icmp eq i64 %i.k, %i.n
  br i1 %i.au, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  store atomic i64 %i.c, ptr %i.av monotonic, align 8
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.aw = cmpxchg ptr %i.m, i64 %i.k, i64 %i.c seq_cst monotonic, align 8
  %i.ax = extractvalue { i64, i1 } %i.aw, 1
  %i.ay = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 264
  store atomic i64 %i.c, ptr %i.az monotonic, align 8
  br i1 %i.ax, label %bb.l, label %bb.n

bb.k:                                             ; preds = %bb.h
  %i.ba = icmp ugt i64 %i.an, 64
  %i.bb = sdiv i64 %i.an, 4
  %i.bc = icmp slt i64 %i.o, %i.bb
  %or.cond3 = and i1 %i.ba, %i.bc
  br i1 %or.cond3, label %bb.m, label %bb.l, !prof !9

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.m
  %i.bd = icmp ne i64 %.sroa.017.0.extract.trunc, 0
  tail call void @llvm.assume(i1 %i.bd)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.be = lshr i64 %i.an, 1
  tail call fastcc void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resizeBZ_(ptr noundef nonnull align 8 %0, i64 noundef %i.be)
  br label %bb.l

bb.n:                                             ; preds = %bb.j, %bb.e, %bb.g, %bb.a, %bb.i, %bb.l, %bb.f
  %.sroa.7.0 = phi ptr [ undef, %bb.a ], [ undef, %bb.i ], [ %i.ac, %bb.e ], [ %i.at, %bb.l ], [ undef, %bb.f ], [ %i.ac, %bb.g ], [ undef, %bb.j ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ null, %bb.i ], [ %i.ab, %bb.e ], [ %i.as, %bb.l ], [ null, %bb.f ], [ %i.ab, %bb.g ], [ null, %bb.j ]
  %i.bf = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.bg = insertvalue { ptr, ptr } %i.bf, ptr %.sroa.7.0, 1
  ret { ptr, ptr } %i.bg
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE4pushBZ_(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.c = load atomic i64, ptr %i.b monotonic, align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.e = load atomic i64, ptr %i.d acquire, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 3 uses
  %i.h = sub i64 %i.c, %i.e
  %.not = icmp slt i64 %i.h, %i.g
  br i1 %.not, label %bb.c, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.i = shl i64 %i.g, 1
  tail call fastcc void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resizeBZ_(ptr noundef nonnull align 8 %0, i64 noundef %i.i)
  %i.j = load i64, ptr %i.f, align 8, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i64 [ %i.j, %bb.b ], [ %i.g, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0 = load ptr, ptr %i.k, align 8, !noundef !5
  %i.l = add i64 %.sroa.02.0, -1
  %i.m = and i64 %i.l, %i.c
  %i.n = getelementptr inbounds [16 x i8], ptr %.sroa.01.0, i64 %i.m ; 2 uses
  store volatile ptr %1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store volatile ptr %2, ptr %i.o, align 8
  fence release
  %i.p = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.q = add i64 %i.c, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  store atomic i64 %i.q, ptr %i.r monotonic, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resizeBZ_(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  %i.e = load atomic i64, ptr %i.d monotonic, align 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  %i.g = load atomic i64, ptr %i.f monotonic, align 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8new_lifoBZ_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.k, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.q, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 4 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load i8, ptr %i.f, align 8, !range !6, !noalias !107, !noundef !5
  %i.h = icmp eq i8 %i.g, 1
  br i1 %i.h, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.i, label %_RNvYNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCskVyUMSjkkSy_10rayon_core.exit.i.i, !prof !11

_RNvYNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCskVyUMSjkkSy_10rayon_core.exit.i.i: ; preds = %bb.a
  %i.i = tail call fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleuE16get_or_init_slowNvNvNtB1i_7default6HANDLE27___rust_std_internal_init_fnECskVyUMSjkkSy_10rayon_core(ptr noundef nonnull align 8 %i.e, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null) ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.thread.i, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.i

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %_RNvYNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCskVyUMSjkkSy_10rayon_core.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.i, %_RNvYNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCskVyUMSjkkSy_10rayon_core.exit.i.i ], [ %i.e, %bb.a ]
  %.val.i.i = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noundef !5
  %i.k = getelementptr i8, ptr %.val.i.i, i64 2072
  %.val.val.i.i = load i64, ptr %i.k, align 8, !noundef !5
  br label %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.thread.i: ; preds = %_RNvYNCNKNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default6HANDLE00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtNtBa_9collector11LocalHandleEEEE9call_onceCskVyUMSjkkSy_10rayon_core.exit.i.i
  %i.l = tail call noundef nonnull align 8 ptr @_RNvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default9collector()
  %i.m = tail call noundef ptr @_RNvMs1_NtCsdS7Q0PB8o3V_15crossbeam_epoch9collectorNtB5_9Collector8register(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.l) ; 3 uses
  %i.n = getelementptr i8, ptr %i.m, i64 2072
  %.val2.val.i.i = load i64, ptr %i.n, align 8, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2080 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.o, align 8
  %i.r = icmp eq i64 %.val2.val.i.i, 0
  %i.s = icmp eq i64 %i.p, 1
  %or.cond.i.i.i3.i.i = and i1 %i.r, %i.s
  br i1 %or.cond.i.i.i3.i.i, label %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit.thread, label %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit, !prof !9

_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit.thread: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.thread.i
  tail call void @_RNvMs6_NtCsdS7Q0PB8o3V_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.m)
  br label %bb.d

_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.i, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.thread.i
  %.sroa.0.0.in.i = phi i64 [ %.val.val.i.i, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.i ], [ %.val2.val.i.i, %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyNtNtCsdS7Q0PB8o3V_15crossbeam_epoch9collector11LocalHandleE8try_withNCINvNtBY_7default11with_handleNCNvB25_9is_pinned0bE0bECskVyUMSjkkSy_10rayon_core.exit.thread.i ]
  %.sroa.0.0.i.not = icmp eq i64 %.sroa.0.0.in.i, 0
  br i1 %.sroa.0.0.i.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit
  fence seq_cst
  br label %bb.d

bb.c:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core(ptr %i.u) #27
          to label %bb.q unwind label %bb.p

bb.d:                                             ; preds = %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit, %bb.b, %_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_9is_pinned0bECskVyUMSjkkSy_10rayon_core.exit.thread
  %i.u = tail call fastcc noundef ptr @_RINvNtCsdS7Q0PB8o3V_15crossbeam_epoch7default11with_handleNCNvB2_3pin0NtNtB4_5guard5GuardECskVyUMSjkkSy_10rayon_core() #29 ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.w = load atomic i64, ptr %i.v acquire, align 8
  %i.x = sub i64 %i.w, %i.d
  %i.y = icmp slt i64 %i.x, 1
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %0, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  store i64 %i.aa, ptr %i.a, align 8
  %i.ab = invoke noundef nonnull align 8 ptr @_RNvMsz_NtCsdS7Q0PB8o3V_15crossbeam_epoch6atomicINtB5_6SharedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6BufferNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE5derefB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.g unwind label %bb.c       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %i.ab, align 8, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !5
  %i.af = add i64 %i.ae, -1
  %i.ag = and i64 %i.af, %i.d
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = load volatile i128, ptr %i.ah, align 8  ; 2 uses
  %.sroa.01.0.extract.trunc = trunc i128 %i.ai to i64 ; 2 uses
  %i.aj = inttoptr i64 %.sroa.01.0.extract.trunc to ptr
  %.sroa.2.0.extract.shift = lshr i128 %i.ai, 64
  %.sroa.2.0.extract.trunc = trunc nuw i128 %.sroa.2.0.extract.shift to i64
  %i.ak = inttoptr i64 %.sroa.2.0.extract.trunc to ptr
  %i.al = load atomic i64, ptr %i.z acquire, align 8
  %.not = icmp eq i64 %i.al, %i.aa
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.am = add i64 %i.d, 1
  %i.an = cmpxchg ptr %i.c, i64 %i.d, i64 %i.am seq_cst monotonic, align 8
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  br i1 %i.ao, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp ne i64 %.sroa.01.0.extract.trunc, 0
  call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aj, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ak, ptr %i.ar, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.as = icmp eq ptr %i.u, null
  br i1 %i.as, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 2072 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !5 ; 2 uses
  %i.av = add i64 %i.au, -1
  store i64 %i.av, ptr %i.at, align 8
  %i.aw = icmp eq i64 %i.au, 1
  br i1 %i.aw, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 2176
  store atomic i64 0, ptr %i.ax release, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 2080
  %i.az = load i64, ptr %i.ay, align 8, !noundef !5
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit, !prof !44

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit.sink.split: ; preds = %bb.l, %bb.o
  call void @_RNvMs6_NtCsdS7Q0PB8o3V_15crossbeam_epoch8internalNtB5_5Local8finalize(ptr noundef nonnull align 128 %i.u)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit.sink.split, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  ret void

bb.m:                                             ; preds = %bb.h, %bb.e
  %i.bb = icmp eq ptr %i.u, null
  br i1 %i.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 2072 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5 ; 2 uses
  %i.be = add i64 %i.bd, -1
  store i64 %i.be, ptr %i.bc, align 8
  %i.bf = icmp eq i64 %i.bd, 1
  br i1 %i.bf, label %bb.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 2176
  store atomic i64 0, ptr %i.bg release, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 2080
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit.sink.split, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsdS7Q0PB8o3V_15crossbeam_epoch5guard5GuardECskVyUMSjkkSy_10rayon_core.exit, !prof !44

bb.p:                                             ; preds = %bb.c
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.q:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMs8_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB10_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load atomic i64, ptr %i.b acquire, align 8
  fence seq_cst
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.e = load atomic i64, ptr %i.d acquire, align 8
  %i.f = sub i64 %i.e, %i.c
  %i.g = icmp slt i64 %i.f, 1
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core3jobNtB5_7JobFifo3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 128 captures(none) dereferenceable(256) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3newBY_.exit, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #25
  unreachable

_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3newBY_.exit: ; preds = %bb.a
  %1 = ptrtoint ptr %i.a to i64                   ; 2 uses
  store i64 0, ptr %0, align 128
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %.sroa.611.0..sroa_idx, align 128
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %1, ptr %.sroa.7.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core3jobNtB5_7JobFifo4push(ptr noundef nonnull align 128 %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE4pushB11_(ptr noundef nonnull align 128 %0, ptr noundef nonnull %1, ptr noundef %2)
  %i.a = insertvalue { ptr, ptr } { ptr @_RNvXs9_NtCskVyUMSjkkSy_10rayon_core3jobNtB5_7JobFifoNtB5_3Job7execute, ptr poison }, ptr %0, 1
  ret { ptr, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE3newBY_() unnamed_addr #0 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.a = tail call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #18 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE4pushB11_(ptr nofree noundef nonnull align 128 captures(none) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.b = load atomic i64, ptr %i.a acquire, align 128
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 4 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8
  br label %.outer

.outer:                                           ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit, %bb.a
  %.sroa.062.0.ph = phi ptr [ %.sroa.062.2, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ null, %bb.a ] ; 4 uses
  %.sroa.0.064.ph = phi i32 [ %spec.select, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ 0, %bb.a ] ; 2 uses
  %.sroa.022.0.ph = phi ptr [ %i.aj, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.d, %bb.a ]
  %.sroa.0.0.ph = phi i64 [ %i.x, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = lshr i64 %.sroa.0.0.ph, 1
  %i.f = and i64 %i.e, 63                         ; 2 uses
  %i.g = icmp eq i64 %i.f, 63
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.outer, %bb.c
  %.sroa.0.06492 = phi i32 [ %.sroa.0.1, %bb.c ], [ %.sroa.0.064.ph, %.outer ] ; 5 uses
  %i.h = icmp ult i32 %.sroa.0.06492, 7
  br i1 %i.h, label %.preheader.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.loopexit.i unwind label %.thread

.loopexit.i:                                      ; preds = %bb.b
  %i.i = icmp ult i32 %.sroa.0.06492, 11
  br i1 %i.i, label %.loopexit.i.thread, label %bb.c

.preheader.i:                                     ; preds = %.lr.ph, %.preheader.i
  %.sroa.0.03.i = phi i32 [ %i.j, %.preheader.i ], [ 0, %.lr.ph ]
  %i.j = add nuw nsw i32 %.sroa.0.03.i, 1         ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i = lshr i32 %i.j, %.sroa.0.06492
  %i.k = icmp eq i32 %.sroa.0.0.highbits.i, 0
  br i1 %i.k, label %.preheader.i, label %.loopexit.i.thread

.loopexit.i.thread:                               ; preds = %.preheader.i, %.loopexit.i
  %i.l = add nuw nsw i32 %.sroa.0.06492, 1
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %.outer
  %.sroa.0.064.lcssa = phi i32 [ %.sroa.0.064.ph, %.outer ], [ %.sroa.0.1, %bb.c ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %.sroa.022.0.ph, %.outer ], [ %i.o, %bb.c ] ; 5 uses
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.0.ph, %.outer ], [ %i.n, %bb.c ] ; 3 uses
  %.lcssa = phi i64 [ %i.f, %.outer ], [ %i.q, %bb.c ] ; 2 uses
  %i.m = icmp eq i64 %.lcssa, 62                  ; 2 uses
  %.not = icmp eq ptr %.sroa.062.0.ph, null
  %or.cond = select i1 %i.m, i1 %.not, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.c:                                             ; preds = %.loopexit.i, %.loopexit.i.thread
  %.sroa.0.1 = phi i32 [ %i.l, %.loopexit.i.thread ], [ %.sroa.0.06492, %.loopexit.i ] ; 2 uses
  %i.n = load atomic i64, ptr %i.a acquire, align 128 ; 2 uses
  %i.o = load atomic ptr, ptr %i.c acquire, align 8
  %i.p = lshr i64 %i.n, 1
  %i.q = and i64 %i.p, 63                         ; 2 uses
  %i.r = icmp eq i64 %i.q, 63
  br i1 %i.r, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %._crit_edge
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18
  %i.s = tail call noundef align 8 dereferenceable_or_null(1520) ptr @_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed(i64 noundef 1520, i64 noundef 8) #18 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.noexc54, label %bb.e, !prof !44

.noexc54:                                         ; preds = %bb.d
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 1520) #25
  unreachable

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.sroa.062.2 = phi ptr [ %.sroa.062.0.ph, %._crit_edge ], [ %i.s, %bb.d ] ; 6 uses
  %i.u = add i64 %.sroa.0.0.lcssa, 2
  %i.v = cmpxchg weak ptr %i.a, i64 %.sroa.0.0.lcssa, i64 %i.u seq_cst acquire, align 8 ; 2 uses
  %i.w = extractvalue { i64, i1 } %i.v, 1
  %i.x = extractvalue { i64, i1 } %i.v, 0
  br i1 %i.w, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  br i1 %i.m, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 8
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.y, i64 %.lcssa ; 3 uses
  store ptr %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %2, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ac = atomicrmw or ptr %i.ab, i64 1 release, align 8 ; 0 uses
  %i.ad = icmp eq ptr %.sroa.062.2, null
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit56, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.062.2, i64 noundef 1520, i64 noundef 8) #18
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit56

bb.i:                                             ; preds = %bb.f
  %.not50 = icmp eq ptr %.sroa.062.2, null
  br i1 %.not50, label %bb.j, label %bb.k, !prof !44

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit56: ; preds = %bb.h, %bb.g, %bb.k
  ret void

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #25
  unreachable

bb.k:                                             ; preds = %bb.i
  store atomic ptr %.sroa.062.2, ptr %i.c release, align 8
  %i.ae = add i64 %.sroa.0.0.lcssa, 4
  store atomic i64 %i.ae, ptr %i.a release, align 128
  store atomic ptr %.sroa.062.2, ptr %.sroa.022.0.lcssa release, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 1496
  store ptr %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 1504
  store ptr %2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.022.0.lcssa, i64 1512
  %i.ai = atomicrmw or ptr %i.ah, i64 1 release, align 8 ; 0 uses
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit56

bb.l:                                             ; preds = %bb.e
  %i.aj = load atomic ptr, ptr %i.c acquire, align 8
  %..i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.064.lcssa, i32 6)
  br label %bb.m

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit: ; preds = %bb.m
  %i.ak = icmp ult i32 %.sroa.0.064.lcssa, 7
  %i.al = zext i1 %i.ak to i32
  %spec.select = add nuw nsw i32 %.sroa.0.064.lcssa, %i.al
  br label %.outer

bb.m:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.02.i = phi i32 [ 0, %bb.l ], [ %i.am, %bb.m ]
  %i.am = add nuw nsw i32 %.sroa.0.02.i, 1        ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i57 = lshr i32 %i.am, %..i.i
  %i.an = icmp eq i32 %.sroa.0.0.highbits.i57, 0
  br i1 %i.an, label %bb.m, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff4spin.exit

.thread:                                          ; preds = %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.ao = icmp eq ptr %.sroa.062.0.ph, null
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit58, label %.thread.thread

.thread.thread:                                   ; preds = %.thread
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.062.0.ph, i64 noundef 1520, i64 noundef 8) #18
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit58

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2m_.exit58: ; preds = %.thread.thread, %.thread
  resume { ptr, i32 } %lpad.thr_comm
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 128 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load atomic i64, ptr %1 acquire, align 128 ; 2 uses
  %i.c = load atomic ptr, ptr %i.a acquire, align 8
  %i.d = lshr i64 %i.b, 1                         ; 2 uses
  %i.e = and i64 %i.d, 63                         ; 2 uses
  %i.f = icmp eq i64 %i.e, 63
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit
  %.sroa.0.05562 = phi i32 [ %.sroa.0.1, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ], [ 0, %bb.a ] ; 5 uses
  %i.g = icmp ult i32 %.sroa.0.05562, 7
  br i1 %i.g, label %.preheader.i, label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph
end_hunk_1
begin_hunk_2_@_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5stealB11_:bb.a
  %i.m = load atomic ptr, ptr %i.a acquire, align 8
  %i.n = lshr i64 %i.l, 1                         ; 2 uses
  %i.o = and i64 %i.n, 63                         ; 2 uses
  %i.p = icmp eq i64 %i.o, 63
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit, %bb.a
  %.lcssa61 = phi i64 [ %i.b, %bb.a ], [ %i.l, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ] ; 4 uses
  %.lcssa59 = phi ptr [ %i.c, %bb.a ], [ %i.m, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ] ; 8 uses
  %.lcssa58 = phi i64 [ %i.d, %bb.a ], [ %i.n, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ]
  %.lcssa57 = phi i64 [ %i.e, %bb.a ], [ %i.o, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit ] ; 4 uses
  %i.q = add i64 %.lcssa61, 2                     ; 2 uses
  %i.r = and i64 %.lcssa61, 1
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  fence seq_cst
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.u = load atomic i64, ptr %i.t monotonic, align 128 ; 2 uses
  %i.v = lshr i64 %i.u, 1
  %i.w = icmp eq i64 %.lcssa58, %i.v
  br i1 %i.w, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.unshifted = xor i64 %i.u, %.lcssa61
  %.not = icmp ugt i64 %.not.unshifted, 127
  %i.x = zext i1 %.not to i64
  %spec.select = or disjoint i64 %i.q, %i.x
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.sroa.0.0 = phi i64 [ %i.q, %._crit_edge ], [ %spec.select, %bb.c ] ; 2 uses
  %i.y = cmpxchg weak ptr %1, i64 %.lcssa61, i64 %.sroa.0.0 seq_cst acquire, align 8
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.aa = icmp eq i64 %.lcssa57, 62
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = load atomic ptr, ptr %.lcssa59 acquire, align 8 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.lr.ph.i, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit

.lr.ph.i:                                         ; preds = %bb.f, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i
  %.sroa.0.02.i = phi i32 [ %.sroa.0.1.i, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ], [ 0, %bb.f ] ; 5 uses
  %i.ad = icmp ult i32 %.sroa.0.02.i, 7
  br i1 %i.ad, label %.preheader.i.i, label %.loopexit.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  %i.ae = icmp ult i32 %.sroa.0.02.i, 11
  br i1 %i.ae, label %.loopexit.i.thread.i, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

.preheader.i.i:                                   ; preds = %.lr.ph.i, %.preheader.i.i
  %.sroa.0.03.i.i = phi i32 [ %i.af, %.preheader.i.i ], [ 0, %.lr.ph.i ]
  %i.af = add nuw nsw i32 %.sroa.0.03.i.i, 1      ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i = lshr i32 %i.af, %.sroa.0.02.i
  %i.ag = icmp eq i32 %.sroa.0.0.highbits.i.i, 0
  br i1 %i.ag, label %.preheader.i.i, label %.loopexit.i.thread.i

.loopexit.i.thread.i:                             ; preds = %.preheader.i.i, %.loopexit.i.i
  %i.ah = add nuw nsw i32 %.sroa.0.02.i, 1
  br label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i: ; preds = %.loopexit.i.thread.i, %.loopexit.i.i
  %.sroa.0.1.i = phi i32 [ %i.ah, %.loopexit.i.thread.i ], [ %.sroa.0.02.i, %.loopexit.i.i ]
  %i.ai = load atomic ptr, ptr %.lcssa59 acquire, align 8 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.lr.ph.i, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit

_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit: ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i, %bb.f
  %.lcssa.i = phi ptr [ %i.ab, %bb.f ], [ %i.ai, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i ] ; 2 uses
  %i.ak = and i64 %.sroa.0.0, -2
  %i.al = add i64 %i.ak, 2
  %i.am = load atomic ptr, ptr %.lcssa.i monotonic, align 8
  %i.an = icmp ne ptr %i.am, null
  %i.ao = zext i1 %i.an to i64
  %spec.select31 = or disjoint i64 %i.al, %i.ao
  store atomic ptr %.lcssa.i, ptr %i.a release, align 8
  store atomic i64 %spec.select31, ptr %1 release, align 128
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 1496
  %i.aq = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 1512 ; 2 uses
  %i.ar = load atomic i64, ptr %i.aq acquire, align 8
  %i.as = and i64 %i.ar, 1
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i33, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit

.lr.ph.i33:                                       ; preds = %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36
  %.sroa.0.02.i34 = phi i32 [ %.sroa.0.1.i37, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36 ], [ 0, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit ] ; 5 uses
  %i.au = icmp ult i32 %.sroa.0.02.i34, 7
  br i1 %i.au, label %.preheader.i.i39, label %.loopexit.i.i35

.loopexit.i.i35:                                  ; preds = %.lr.ph.i33
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  %i.av = icmp ult i32 %.sroa.0.02.i34, 11
  br i1 %i.av, label %.loopexit.i.thread.i38, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36

.preheader.i.i39:                                 ; preds = %.lr.ph.i33, %.preheader.i.i39
  %.sroa.0.03.i.i40 = phi i32 [ %i.aw, %.preheader.i.i39 ], [ 0, %.lr.ph.i33 ]
  %i.aw = add nuw nsw i32 %.sroa.0.03.i.i40, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i41 = lshr i32 %i.aw, %.sroa.0.02.i34
  %i.ax = icmp eq i32 %.sroa.0.0.highbits.i.i41, 0
  br i1 %i.ax, label %.preheader.i.i39, label %.loopexit.i.thread.i38

.loopexit.i.thread.i38:                           ; preds = %.preheader.i.i39, %.loopexit.i.i35
  %i.ay = add nuw nsw i32 %.sroa.0.02.i34, 1
  br label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36: ; preds = %.loopexit.i.thread.i38, %.loopexit.i.i35
  %.sroa.0.1.i37 = phi i32 [ %i.ay, %.loopexit.i.thread.i38 ], [ %.sroa.0.02.i34, %.loopexit.i.i35 ]
  %i.az = load atomic i64, ptr %i.aq acquire, align 8
  %i.ba = and i64 %i.az, 1
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i33, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit

_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit: ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i36, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE9wait_nextBY_.exit
  %i.bc = load <2 x ptr>, ptr %i.ap, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %.lcssa59, i64 8
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %.lcssa57 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.bg = load atomic i64, ptr %i.bf acquire, align 8
  %i.bh = and i64 %i.bg, 1
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i42, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51

.lr.ph.i42:                                       ; preds = %bb.g, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45
  %.sroa.0.02.i43 = phi i32 [ %.sroa.0.1.i46, %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45 ], [ 0, %bb.g ] ; 5 uses
  %i.bj = icmp ult i32 %.sroa.0.02.i43, 7
  br i1 %i.bj, label %.preheader.i.i48, label %.loopexit.i.i44

.loopexit.i.i44:                                  ; preds = %.lr.ph.i42
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
  %i.bk = icmp ult i32 %.sroa.0.02.i43, 11
  br i1 %i.bk, label %.loopexit.i.thread.i47, label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45

.preheader.i.i48:                                 ; preds = %.lr.ph.i42, %.preheader.i.i48
  %.sroa.0.03.i.i49 = phi i32 [ %i.bl, %.preheader.i.i48 ], [ 0, %.lr.ph.i42 ]
  %i.bl = add nuw nsw i32 %.sroa.0.03.i.i49, 1    ; 2 uses
  tail call void @llvm.x86.sse2.pause()
  %.sroa.0.0.highbits.i.i50 = lshr i32 %i.bl, %.sroa.0.02.i43
  %i.bm = icmp eq i32 %.sroa.0.0.highbits.i.i50, 0
  br i1 %i.bm, label %.preheader.i.i48, label %.loopexit.i.thread.i47

.loopexit.i.thread.i47:                           ; preds = %.preheader.i.i48, %.loopexit.i.i44
  %i.bn = add nuw nsw i32 %.sroa.0.02.i43, 1
  br label %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45

_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45: ; preds = %.loopexit.i.thread.i47, %.loopexit.i.i44
  %.sroa.0.1.i46 = phi i32 [ %i.bn, %.loopexit.i.thread.i47 ], [ %.sroa.0.02.i43, %.loopexit.i.i44 ]
  %i.bo = load atomic i64, ptr %i.bf acquire, align 8
  %i.bp = and i64 %i.bo, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %.lr.ph.i42, label %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51

_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51: ; preds = %_RNvMNtCsfI5zKgsrATz_15crossbeam_utils7backoffNtB2_7Backoff6snooze.exit.i45, %bb.g
  %i.br = load <2 x ptr>, ptr %i.be, align 8      ; 2 uses
  %i.bs = atomicrmw or ptr %i.bf, i64 2 acq_rel, align 8
  %i.bt = and i64 %i.bs, 4
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit
  %i.bv = phi <2 x ptr> [ %i.bc, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit ], [ %i.br, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51 ] ; 2 uses
  %.not4.i = icmp eq i64 %.lcssa57, 0
  br i1 %.not4.i, label %._crit_edge.i, label %.lr.ph.i52

._crit_edge.i:                                    ; preds = %bb.j, %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.lcssa59) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.lcssa59, i64 noundef 1520, i64 noundef 8) #18
  br label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit

.lr.ph.i52:                                       ; preds = %bb.h, %bb.j
  %.sroa.0.05.i = phi i64 [ %i.bw, %bb.j ], [ %.lcssa57, %bb.h ]
  %i.bw = add nsw i64 %.sroa.0.05.i, -1           ; 3 uses
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %.lcssa59, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24 ; 2 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8
  %i.ca = and i64 %i.bz, 2
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i52
  %i.cc = atomicrmw or ptr %i.by, i64 4 acq_rel, align 8
  %i.cd = and i64 %i.cc, 2
  %i.ce = icmp eq i64 %i.cd, 0
  br i1 %i.ce, label %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i52
  %.not.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i52

_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit: ; preds = %bb.i, %._crit_edge.i, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51
  %i.cf = phi <2 x ptr> [ %i.br, %_RNvMsb_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_4SlotNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE10wait_writeBX_.exit51 ], [ %i.bv, %._crit_edge.i ], [ %i.bv, %bb.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.cf, ptr %i.cg, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.d, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit
  %storemerge56 = phi i64 [ 1, %_RNvMsc_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5BlockNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE7destroyBY_.exit ], [ 0, %bb.b ], [ 2, %bb.d ]
  store i64 %storemerge56, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define hidden noundef zeroext i1 @_RNvMsg_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE8is_emptyB11_(ptr nofree noundef nonnull align 128 captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load atomic i64, ptr %0 seq_cst, align 128
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load atomic i64, ptr %i.b seq_cst, align 128
  %.unshifted = xor i64 %i.c, %i.a
  %i.d = icmp ult i64 %.unshifted, 2
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvNtCskVyUMSjkkSy_10rayon_core11thread_pool11yield_local() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCskVyUMSjkkSy_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !114, !noundef !5 ; 2 uses
  %i.b = icmp eq ptr %.val.i.i, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread11yield_local(ptr noundef nonnull align 128 %.val.i.i)
  %i.d = zext i1 %i.c to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.d, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvNtCskVyUMSjkkSy_10rayon_core11thread_pool9yield_now() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCskVyUMSjkkSy_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !117, !noundef !5 ; 2 uses
  %i.b = icmp eq ptr %.val.i.i, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_12WorkerThread9yield_now(ptr noundef nonnull align 128 %.val.i.i)
  %i.d = zext i1 %i.c to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i8 [ %i.d, %bb.b ], [ 2, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCs3oUPovFnLWP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = tail call fastcc noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !120
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i
    i64 1, label %bb.e
  ], !prof !17

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !123, !noalias !120
  store i8 3, ptr %i.a, align 8, !alias.scope !123, !noalias !120
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !120
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskVyUMSjkkSy_10rayon_core.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: cold inlinehint noreturn nonlazybind uwtable
define internal fastcc void @_RNvXNvNtNtCsaL1QbXo9JQH_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop() unnamed_addr #6 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = call noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull %i.a, ptr noundef nonnull @19, ptr noundef nonnull inttoptr (i64 123 to ptr))
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskVyUMSjkkSy_10rayon_core(ptr %i.b)
  call void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtCskVyUMSjkkSy_10rayon_core11thread_poolNtB5_10ThreadPoolNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 520
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  store i64 %i.f, ptr %i.b, align 8
  %i.g = icmp ult i64 %i.f, 192153584101141163
  call void @llvm.assume(i1 %i.g)
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.j = ptrtoint ptr %i.i to i64
  store i64 %i.j, ptr %i.a, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 2, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  %i.l = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtCs1xwejQucwHj_5alloc6string6StringNtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !126, !noundef !5 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val1 = load i64, ptr %i.c, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRbNtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXsg_NtCs3oUPovFnLWP_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtReNtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCs3oUPovFnLWP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRjNtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !126, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !127, !noalias !130, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_2
