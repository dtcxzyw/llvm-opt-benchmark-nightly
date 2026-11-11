Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_core-a5e7685b4b87ec55.pingora_core.ebac96924b791bb8-cgu.05?download=true
inline.NumInlined: 1150
inline.NumDeleted: 557
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_RINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB10_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEB14_:bb.a
.body34.thread:                                   ; preds = %bb.n, %bb.o, %bb.f, %.body34
  %.pn2769 = phi { ptr, i32 } [ %.pn27, %.body34 ], [ %i.ba, %bb.o ], [ %i.ba, %bb.n ], [ %i.u, %bb.f ]
  %.sroa.018.067 = phi i1 [ %.sroa.018.0, %.body34 ], [ true, %bb.o ], [ true, %bb.n ], [ true, %bb.f ]
  %.sroa.017.065 = phi i8 [ %.sroa.017.0, %.body34 ], [ 1, %bb.o ], [ 1, %bb.n ], [ 1, %bb.f ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtBG_14OffloadRuntime10init_pools0EBK_(ptr noalias nofree noundef align 8 dereferenceable(88) %6) #32
          to label %bb.bd unwind label %bb.bb

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit: ; preds = %bb.bf, %bb.be, %bb.bg, %bb.bd
  br i1 %.sroa.018.066, label %bb.bi, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !1675)
  %i.dl = load ptr, ptr %i.k, align 8, !alias.scope !1675, !noundef !8 ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dn = atomicrmw add ptr %i.dl, i64 -1 release, align 8, !noalias !1676
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.bg, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit

bb.bg:                                            ; preds = %bb.bf
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataE9drop_slowCs2awuzAz5vY4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.k) #34
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit unwind label %bb.bb

bb.bh:                                            ; preds = %bb.bi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit
  resume { ptr, i32 } %.pn2768

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core.exit
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #32
          to label %bb.bh unwind label %bb.bb
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringEENCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB3v_6Server3runs0_0ETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB31_EEB3x_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !8 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !8
  %i.g = mul i64 %i.c, 104                        ; 7 uses
  %i.h = udiv i64 %i.g, 48                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB14_6string6StringEENCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB2W_6Server3runs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropTINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB2r_EENCINvNtB12_16in_place_collect24write_in_place_with_dropB5b_E0INtNtBc_6result6ResultB4A_zEEB2Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB9_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB1g_6string6StringEENCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB38_6Server3runs0_0EEB3a_.exit unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 48                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB9_6string6StringEE32forget_allocation_drop_remainingCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.k, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCsexYYUdYSQU6_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtBI_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB2r_EEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #32
          to label %bb.b unwind label %bb.m

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 48                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB1H_EECskeugdADtBsi_12pingora_core.exit.thread

_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB1H_EECskeugdADtBsi_12pingora_core.exit.thread: ; preds = %bb.h, %bb.i, %bb.f, %bb.j
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %bb.h ], [ %i.z, %bb.j ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.i ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB9_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 48
  br i1 %i.w, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = icmp eq i64 %i.g, 0
  br i1 %i.x, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB1H_EECskeugdADtBsi_12pingora_core.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #35
  br label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB1H_EECskeugdADtBsi_12pingora_core.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.y = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call noundef align 8 ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef %i.s) #35 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.k, label %_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect13needs_reallocTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB6_6string6StringETINtNtNtCsG258MDvU3F_3std6thread11join_handle10JoinHandleuEB1H_EECskeugdADtBsi_12pingora_core.exit.thread, !prof !1677

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #36
          to label %bb.l unwind label %bb.e

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.b, %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTNtCs4vTbZbCai3A_15pingora_runtime7RuntimeNtNtB1g_6string6StringEENCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB38_6Server3runs0_0EEB3a_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1680)
  %i.b = icmp eq i64 %4, 0
  br i1 %i.b, label %bb.e, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %0, align 8, !range !9, !alias.scope !1680, !noundef !8 ; 2 uses
  %i.f = shl nuw i64 %i.e, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %i.g = icmp eq i64 %4, 1
  %i.h = icmp ult i64 %4, 1025
  %..i = select i1 %i.h, i64 4, i64 1
  %.sroa.08.0.i = select i1 %i.g, i64 8, i64 %..i
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1680
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.i, align 8, !alias.scope !1680
  call fastcc void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.e, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4), !noalias !1680
  %i.j = load i64, ptr %i.a, align 8, !range !13, !noalias !1680, !noundef !8
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.l, align 8, !range !28, !noalias !1680, !noundef !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noalias !1680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1680
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.b
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.b ], [ %i.o, %bb.d ], [ undef, %bb.a ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #36
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.l, align 8, !noalias !1680, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1680
  store ptr %i.p, ptr %i.i, align 8, !alias.scope !1680
  %i.q = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.q)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1680
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB8_10SerializerpENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_strNtB3_16InferScalarStyleNtNtB13_2de7Visitor9visit_strNtNtBa_5error5ErrorECskeugdADtBsi_12pingora_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtCskItKYAOUBlG_10serde_yaml2de21digits_but_not_number(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  %. = select i1 %i.a, i8 2, i8 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %., ptr %i.b, align 1
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RINvXs1h_NtCsG258MDvU3F_3std4pathNtB7_4PathNtNtCskKLDkoKarTP_4core4hash4Hash4hashNtNtCskCJvoiymbRN_5ahash13fallback_hash7AHasherECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  switch i64 %1, label %bb.b [
    i64 0, label %._crit_edge
    i64 1, label %._crit_edge.loopexit.peel.begin.thread
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %1, -2
  br label %.lr.ph

._crit_edge.loopexit.peel.begin:                  ; preds = %bb.m
  %i.b = add nuw i64 %.sroa.019.030, 2            ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.d = load i8, ptr %i.c, align 1, !noundef !8
  %i.e = icmp eq i8 %i.d, 47
  br i1 %i.e, label %bb.c, label %._crit_edge

._crit_edge.loopexit.peel.begin.thread:           ; preds = %bb.a
  %i.f = load i8, ptr %0, align 1, !noundef !8
  %i.g = icmp eq i8 %i.f, 47
  br i1 %i.g, label %.thread48, label %._crit_edge

bb.c:                                             ; preds = %._crit_edge.loopexit.peel.begin
  %.not = icmp ult i64 %.sroa.019.030, %.sroa.0.1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = sub nuw i64 %i.z, %.sroa.0.1             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.1
  %i.j = add i64 %i.h, %.sroa.012.2               ; 2 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 62)
  tail call fastcc void @_RNvXs_NtCskCJvoiymbRN_5ahash13fallback_hashNtB4_7AHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.h) #37
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.012.3.peel = phi i64 [ %i.k, %bb.d ], [ %.sroa.012.2, %bb.c ] ; 6 uses
  %i.l = sub nuw i64 %1, %i.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 %i.b ; 3 uses
  %i.n = icmp eq i64 %i.l, 1
  br i1 %i.n, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not27.peel = icmp eq i64 %1, %i.b
  br i1 %.not27.peel, label %.thread48, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = load i8, ptr %i.m, align 1, !noundef !8
  %i.p = icmp eq i8 %i.o, 46
  br i1 %i.p, label %bb.h, label %.thread48

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.r = load i8, ptr %i.q, align 1, !noundef !8
  %i.s = icmp eq i8 %i.r, 47
  br i1 %i.s, label %bb.j, label %.thread48

bb.i:                                             ; preds = %bb.e
  %i.t = load i8, ptr %i.m, align 1, !noundef !8
  %i.u = icmp eq i8 %i.t, 46
  br i1 %i.u, label %bb.j, label %.thread48

.thread48:                                        ; preds = %._crit_edge.loopexit.peel.begin.thread, %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.012.3.peel45 = phi i64 [ %.sroa.012.3.peel, %bb.i ], [ %.sroa.012.3.peel, %bb.h ], [ %.sroa.012.3.peel, %bb.g ], [ %.sroa.012.3.peel, %bb.f ], [ 0, %._crit_edge.loopexit.peel.begin.thread ]
  %i.v = phi i64 [ %i.b, %bb.i ], [ %i.b, %bb.h ], [ %i.b, %bb.g ], [ %i.b, %bb.f ], [ 1, %._crit_edge.loopexit.peel.begin.thread ]
  br label %bb.j

bb.j:                                             ; preds = %.thread48, %bb.i, %bb.h
  %.sroa.012.3.peel44 = phi i64 [ %.sroa.012.3.peel, %bb.i ], [ %.sroa.012.3.peel45, %.thread48 ], [ %.sroa.012.3.peel, %bb.h ]
  %i.w = phi i64 [ %i.b, %bb.i ], [ %i.v, %.thread48 ], [ %i.b, %bb.h ]
  %.sroa.024.0.peel = phi i64 [ 1, %bb.i ], [ 0, %.thread48 ], [ 1, %bb.h ]
  %i.x = add i64 %.sroa.024.0.peel, %i.w
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %._crit_edge.loopexit.peel.begin, %bb.j, %._crit_edge.loopexit.peel.begin.thread
  %.sroa.012.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.012.3.peel44, %bb.j ], [ %.sroa.012.2, %._crit_edge.loopexit.peel.begin ], [ 0, %._crit_edge.loopexit.peel.begin.thread ] ; 2 uses
  %.sroa.0.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.x, %bb.j ], [ %.sroa.0.1, %._crit_edge.loopexit.peel.begin ], [ 0, %._crit_edge.loopexit.peel.begin.thread ] ; 3 uses
  %i.y = icmp ult i64 %.sroa.0.0.lcssa, %1
  br i1 %i.y, label %bb.l, label %bb.k

.lr.ph:                                           ; preds = %bb.b, %bb.m
  %.sroa.0.032 = phi i64 [ %.sroa.0.1, %bb.m ], [ 0, %bb.b ] ; 4 uses
  %.sroa.012.031 = phi i64 [ %.sroa.012.2, %bb.m ], [ 0, %bb.b ] ; 3 uses
  %.sroa.019.030 = phi i64 [ %i.z, %bb.m ], [ 0, %bb.b ] ; 7 uses
  %i.z = add nuw i64 %.sroa.019.030, 1            ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.019.030
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !8
  %i.ac = icmp eq i8 %i.ab, 47
  br i1 %i.ac, label %bb.n, label %bb.m

bb.k:                                             ; preds = %._crit_edge, %bb.l
  %.sroa.012.1 = phi i64 [ %i.ao, %bb.l ], [ %.sroa.012.0.lcssa, %._crit_edge ]
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !1684, !noundef !8
  %i.af = xor i64 %i.ae, %.sroa.012.1
  %i.ag = zext i64 %i.af to i128
  %i.ah = mul nuw nsw i128 %i.ag, 6364136223846793005 ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = xor i128 %i.ai, %i.ah
  %i.ak = trunc i128 %i.aj to i64
  store i64 %i.ak, ptr %i.ad, align 8, !alias.scope !1684
  ret void

bb.l:                                             ; preds = %._crit_edge
  %i.al = sub nuw i64 %1, %.sroa.0.0.lcssa        ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.0.lcssa
  %i.an = add i64 %i.al, %.sroa.012.0.lcssa       ; 2 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 62)
  tail call fastcc void @_RNvXs_NtCskCJvoiymbRN_5ahash13fallback_hashNtB4_7AHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.am, i64 noundef %i.al) #37
  br label %bb.k

bb.m:                                             ; preds = %bb.s, %.lr.ph
  %.sroa.012.2 = phi i64 [ %.sroa.012.3, %bb.s ], [ %.sroa.012.031, %.lr.ph ] ; 4 uses
  %.sroa.0.1 = phi i64 [ %i.az, %bb.s ], [ %.sroa.0.032, %.lr.ph ] ; 5 uses
  %exitcond.not = icmp eq i64 %.sroa.019.030, %i.a
  br i1 %exitcond.not, label %._crit_edge.loopexit.peel.begin, label %.lr.ph, !llvm.loop !1683

bb.n:                                             ; preds = %.lr.ph
  %i.ap = icmp ugt i64 %.sroa.019.030, %.sroa.0.032
  br i1 %i.ap, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.p
  %.sroa.012.3 = phi i64 [ %i.ay, %bb.p ], [ %.sroa.012.031, %bb.n ]
  %i.aq = sub nuw i64 %1, %i.z
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.z ; 2 uses
  %i.as = icmp eq i64 %i.aq, 1
  %i.at = load i8, ptr %i.ar, align 1, !noundef !8
  %i.au = icmp eq i8 %i.at, 46                    ; 2 uses
  br i1 %i.as, label %bb.q, label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.av = sub nuw i64 %.sroa.019.030, %.sroa.0.032 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.032
  %i.ax = add i64 %i.av, %.sroa.012.031           ; 2 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 62)
  tail call fastcc void @_RNvXs_NtCskCJvoiymbRN_5ahash13fallback_hashNtB4_7AHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write(ptr noalias nofree noundef align 8 dereferenceable(32) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.av) #37
  br label %bb.o

bb.q:                                             ; preds = %bb.o
  br i1 %i.au, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.t, %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.q, %bb.r
  %.sroa.024.0 = phi i64 [ 1, %bb.q ], [ 0, %bb.r ], [ 1, %bb.u ]
  %i.az = add i64 %.sroa.024.0, %i.z
  br label %bb.m

bb.t:                                             ; preds = %bb.o
  br i1 %i.au, label %bb.u, label %bb.r

bb.u:                                             ; preds = %bb.t
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !noundef !8
  %i.bc = icmp eq i8 %i.bb, 47
  br i1 %i.bc, label %bb.s, label %bb.r
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs5_NtCskItKYAOUBlG_10serde_yaml3serQINtB6_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser15SerializeStruct15serialize_fieldIBX_NtNtB11_6string6StringEECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [80 x i8], align 8                ; 6 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [48 x i8], align 8                ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 6 uses
  %i.l = alloca [80 x i8], align 8                ; 4 uses
  %.sroa.6.i.i.i.i = alloca [16 x i8], align 8    ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 6 uses
  %i.n = alloca [80 x i8], align 8                ; 6 uses
  %i.o = load ptr, ptr %0, align 8, !nonnull !8, !align !21, !noundef !8 ; 10 uses
  %i.p = tail call fastcc noundef align 8 ptr @_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_strCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef align 8 dereferenceable(40) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.b, label %_RINvXs1o_NtNtCs54qMqBN3zRt_10serde_core3ser5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBQ_6string6StringENtB9_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQIBM_hEEECskeugdADtBsi_12pingora_core.exit

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.q, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.val4 = load i64, ptr %i.r, align 8, !noundef !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1719)
  %.idx = mul nuw nsw i64 %.val4, 24
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1721)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %i.t = tail call fastcc noundef align 8 ptr @_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE19flush_mapping_startCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o) ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_seqCskeugdADtBsi_12pingora_core.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1722)
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 5 uses
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !1723, !noundef !8 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1723
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1723
  store i64 -9223372036854775806, ptr %i.j, align 8, !noalias !1723
  call void @_RNvMNtNtCskItKYAOUBlG_10serde_yaml7libyaml7emitterNtB2_7Emitter4emit(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1723
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.z = load i32, ptr %i.y, align 8, !range !11, !noalias !1723, !noundef !8
  %.not.i.i.i.i.i = icmp eq i32 %i.z, -2
  br i1 %.not.i.i.i.i.i, label %bb.e, label %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11value_startCskeugdADtBsi_12pingora_core.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1723
  %.pre.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !1723
  br label %bb.f

_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11value_startCskeugdADtBsi_12pingora_core.exit.i.i.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false), !noalias !1723
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1723
  %i.aa = call noundef nonnull align 8 ptr @_RNvXs2_NtCskItKYAOUBlG_10serde_yaml5errorNtB5_5ErrorINtNtCskKLDkoKarTP_4core7convert4FromNtNtNtB7_7libyaml7emitter5ErrorE4from(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1723
  br label %_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_seqCskeugdADtBsi_12pingora_core.exit.thread.i.i

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ab = phi i64 [ %i.v, %bb.c ], [ %.pre.i.i.i.i.i, %bb.e ]
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.u, align 8, !alias.scope !1723
  call void @llvm.experimental.noalias.scope.decl(metadata !1724)
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !1725 ; 5 uses
  store i64 -9223372036854775808, ptr %i.o, align 8, !alias.scope !1725
  %i.ad = icmp ne i64 %.sroa.0.0.copyload.i.i.i.i.i, -9223372036854775805
  call void @llvm.assume(i1 %i.ad)
  %i.ae = icmp sgt i64 %.sroa.0.0.copyload.i.i.i.i.i, -1
  br i1 %i.ae, label %bb.h, label %bb.n

bb.g:                                             ; preds = %bb.j, %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #32
          to label %bb.m unwind label %bb.l, !noalias !1726

bb.h:                                             ; preds = %bb.f
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1727
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.h, align 8, !noalias !1727
  %.sroa.7.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx4.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !1728
  %i.ag = load ptr, ptr %.sroa.7.0..sroa_idx4.i.i.i.i.i, align 8, !noalias !1727, !nonnull !8, !noundef !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !1727, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1727
  store i32 33, ptr %i.g, align 4, !noalias !1727
  %i.aj = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ag, i64 noundef %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 1)
          to label %bb.i unwind label %bb.g, !noalias !1726

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1727
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp sgt i64 %i.ai, -1
  call void @llvm.assume(i1 %i.ak)
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCskeugdADtBsi_12pingora_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef 1)
          to label %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert.exit.i.i.i.i.i unwind label %bb.g, !noalias !1726

_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert.exit.i.i.i.i.i: ; preds = %bb.j
  %i.al = load ptr, ptr %.sroa.7.0..sroa_idx4.i.i.i.i.i, align 8, !alias.scope !1729, !noalias !1727, !nonnull !8, !noundef !8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.am, ptr nonnull align 1 %i.al, i64 %i.ai, i1 false), !noalias !1726
  %i.an = load ptr, ptr %.sroa.7.0..sroa_idx4.i.i.i.i.i, align 8, !alias.scope !1729, !noalias !1727, !nonnull !8, !noundef !8
  store i8 33, ptr %i.an, align 1, !noalias !1726
  %i.ao = add nuw i64 %i.ai, 1
  store i64 %i.ao, ptr %i.ah, align 8, !alias.scope !1729, !noalias !1727
  %.sroa.0.0.copyload9.pre.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !1725
  br label %bb.k

bb.k:                                             ; preds = %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert.exit.i.i.i.i.i, %bb.i
  %.sroa.0.0.copyload9.i.i.i.i = phi i64 [ %.sroa.0.0.copyload9.pre.i.i.i.i, %_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert.exit.i.i.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx4.i.i.i.i.i, i64 16, i1 false), !noalias !1730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1727
  br label %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core.exit.i.i.i.i

bb.l:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #33, !noalias !1726
  unreachable

bb.m:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.af

bb.n:                                             ; preds = %bb.f
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %i.o, align 8, !alias.scope !1725
  br label %_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core.exit.i.i.i.i

_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core.exit.i.i.i.i: ; preds = %bb.n, %bb.k
  %.sroa.0.012.i.i.i.i = phi i64 [ %.sroa.0.0.copyload9.i.i.i.i, %bb.k ], [ -1, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1730
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1730
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %.sroa.0.012.i.i.i.i, ptr %i.ar, align 8, !noalias !1730
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i.i.i, i64 16, i1 false), !noalias !1730
  store i64 -9223372036854775803, ptr %i.m, align 8, !noalias !1730
  call void @_RNvMNtNtCskItKYAOUBlG_10serde_yaml7libyaml7emitterNtB2_7Emitter4emit(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1730
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.at = load i32, ptr %i.as, align 8, !range !11, !noalias !1730, !noundef !8
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!1485 = !{!1450}
!1486 = !{!1452}
!1487 = !{!1452, !1450, !1448, !1446, !1456, !1454}
!1488 = !{!1452, !1450, !1448, !1446}
!1489 = !{!1458}
!1490 = !{!1460}
!1491 = !{!1462}
!1492 = !{!1464}
!1493 = !{!1464, !1462, !1460, !1458, !1456, !1454}
!1494 = !{!1464, !1462, !1460, !1458}
!1495 = !{!1466}
!1496 = !{!1468}
!1497 = !{!1468, !1466, !1456, !1454}
!1498 = !{!1468, !1466}
!1499 = !{!1470}
!1500 = !{!1472}
!1501 = !{!1472, !1470, !1456, !1454}
!1502 = !{!1472, !1470}
!1503 = !{!1478, !1476, !1474}
!1504 = !{!1476, !1474}
!1505 = !{!1480}
!1506 = !{!1482}
!1507 = distinct !{!1507, i1 true, !"_RNCNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB1a_6Server3runs0_00uEs_000B1c_"}
!1508 = distinct !{!1508, !1507, !"_RNCNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB1a_6Server3runs0_00uEs_000B1c_: argument 0"}
!1509 = !{!1508}
!1510 = distinct !{!1510, i1 true, !"_RNCNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB16_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEs_000B1a_"}
!1511 = distinct !{!1511, !1510, !"_RNCNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB16_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEs_000B1a_: argument 0"}
!1512 = !{!1511}
!1513 = distinct !{!1513, i1 true, !"_RNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB8_6Server3runs0_00Ba_"}
!1514 = distinct !{!1514, !1513, !"_RNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB8_6Server3runs0_00Ba_: argument 0"}
!1515 = !{!1514}
!1516 = distinct !{!1516, i1 true, !"_RNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB4_14OffloadRuntime10init_pools0B8_"}
!1517 = distinct !{!1517, !1516, !"_RNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB4_14OffloadRuntime10init_pools0B8_: argument 0"}
!1518 = !{!1517}
!1519 = distinct !{!1519, i1 true, !"_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB18_6Server3runs0_00uE00B1a_"}
!1520 = distinct !{!1520, !1519, !"_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB18_6Server3runs0_00uE00B1a_: argument 0"}
!1521 = distinct !{!1521, i1 true, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl"}
!1522 = distinct !{!1522, !1521, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!1523 = distinct !{!1523, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core"}
!1524 = distinct !{!1524, !1523, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core: argument 0"}
!1525 = distinct !{!1525, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECskeugdADtBsi_12pingora_core"}
!1526 = distinct !{!1526, !1525, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECskeugdADtBsi_12pingora_core: argument 0"}
!1527 = distinct !{!1527, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core"}
!1528 = distinct !{!1528, !1527, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core: argument 0"}
!1529 = distinct !{!1529, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1530 = distinct !{!1530, !1529, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1531 = distinct !{!1531, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1532 = distinct !{!1532, !1531, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1533 = distinct !{!1533, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1534 = distinct !{!1534, !1533, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1535 = distinct !{!1535, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core"}
!1536 = distinct !{!1536, !1535, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core: argument 0"}
!1537 = distinct !{!1537, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskeugdADtBsi_12pingora_core"}
!1538 = distinct !{!1538, !1537, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskeugdADtBsi_12pingora_core: argument 0"}
!1539 = distinct !{!1539, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskeugdADtBsi_12pingora_core"}
!1540 = distinct !{!1540, !1539, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskeugdADtBsi_12pingora_core: argument 0"}
!1541 = distinct !{!1541, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1542 = distinct !{!1542, !1541, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1543 = distinct !{!1543, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEE3newCskeugdADtBsi_12pingora_core"}
!1544 = distinct !{!1544, !1543, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEE3newCskeugdADtBsi_12pingora_core: argument 0"}
!1545 = distinct !{!1545, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB1L_6Server3runs0_00uEs_0E3newB1N_"}
!1546 = distinct !{!1546, !1545, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB1L_6Server3runs0_00uEs_0E3newB1N_: argument 0"}
!1547 = distinct !{!1547, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitE3newCskeugdADtBsi_12pingora_core"}
!1548 = distinct !{!1548, !1547, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitE3newCskeugdADtBsi_12pingora_core: argument 0"}
!1549 = distinct !{!1549, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECskeugdADtBsi_12pingora_core"}
!1550 = distinct !{!1550, !1549, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECskeugdADtBsi_12pingora_core: argument 0"}
!1551 = distinct !{!1551, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1552 = distinct !{!1552, !1551, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1553 = distinct !{!1553, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core"}
!1554 = distinct !{!1554, !1553, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core: argument 0"}
!1555 = distinct !{!1555, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskeugdADtBsi_12pingora_core"}
!1556 = distinct !{!1556, !1555, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskeugdADtBsi_12pingora_core: argument 0"}
!1557 = distinct !{!1557, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskeugdADtBsi_12pingora_core"}
!1558 = distinct !{!1558, !1557, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskeugdADtBsi_12pingora_core: argument 0"}
!1559 = distinct !{!1559, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1560 = distinct !{!1560, !1559, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1561 = distinct !{!1561, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECskeugdADtBsi_12pingora_core"}
!1562 = distinct !{!1562, !1561, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECskeugdADtBsi_12pingora_core: argument 0"}
!1563 = distinct !{!1563, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1564 = distinct !{!1564, !1563, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1565 = distinct !{!1565, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core"}
!1566 = distinct !{!1566, !1565, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core: argument 0"}
!1567 = distinct !{!1567, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEECskeugdADtBsi_12pingora_core"}
!1568 = distinct !{!1568, !1567, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEECskeugdADtBsi_12pingora_core: argument 0"}
!1569 = distinct !{!1569, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1570 = distinct !{!1570, !1569, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1571 = !{!1520}
!1572 = !{!1522}
!1573 = !{!1530, !1528, !1526, !1524, !1520}
!1574 = !{!1528, !1526, !1524, !1520}
!1575 = !{!1532}
!1576 = !{!1534}
!1577 = !{!1536}
!1578 = !{!1538}
!1579 = !{!1540}
!1580 = !{!1542}
!1581 = !{!1542, !1540, !1538, !1536}
!1582 = !{!1544}
!1583 = !{!1546}
!1584 = !{!1548}
!1585 = !{!1550}
!1586 = !{!1552}
!1587 = !{!1552, !1550}
!1588 = !{!1554}
!1589 = !{!1556}
!1590 = !{!1558}
!1591 = !{!1560}
!1592 = !{!1560, !1558, !1556, !1554}
!1593 = !{!1562}
!1594 = !{!1564}
!1595 = !{!1564, !1562}
!1596 = !{!1566}
!1597 = !{!1570, !1568, !1566}
!1598 = distinct !{!1598, i1 true, !"_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB14_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEE00B18_"}
!1599 = distinct !{!1599, !1598, !"_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB14_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEE00B18_: argument 0"}
!1600 = distinct !{!1600, i1 true, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl"}
!1601 = distinct !{!1601, !1600, !"_RNvMsv_NtCskKLDkoKarTP_4core3numj27from_ascii_bytes_radix_impl: argument 1"}
!1602 = distinct !{!1602, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core"}
!1603 = distinct !{!1603, !1602, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringECskeugdADtBsi_12pingora_core: argument 0"}
!1604 = distinct !{!1604, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECskeugdADtBsi_12pingora_core"}
!1605 = distinct !{!1605, !1604, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCsG258MDvU3F_3std3sys6os_str5bytes3BufECskeugdADtBsi_12pingora_core: argument 0"}
!1606 = distinct !{!1606, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core"}
!1607 = distinct !{!1607, !1606, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core: argument 0"}
!1608 = distinct !{!1608, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1609 = distinct !{!1609, !1608, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1610 = distinct !{!1610, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1611 = distinct !{!1611, !1610, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1612 = distinct !{!1612, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1613 = distinct !{!1613, !1612, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1614 = distinct !{!1614, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core"}
!1615 = distinct !{!1615, !1614, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core: argument 0"}
!1616 = distinct !{!1616, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskeugdADtBsi_12pingora_core"}
!1617 = distinct !{!1617, !1616, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskeugdADtBsi_12pingora_core: argument 0"}
!1618 = distinct !{!1618, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskeugdADtBsi_12pingora_core"}
!1619 = distinct !{!1619, !1618, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskeugdADtBsi_12pingora_core: argument 0"}
!1620 = distinct !{!1620, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1621 = distinct !{!1621, !1620, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1622 = distinct !{!1622, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEE3newCskeugdADtBsi_12pingora_core"}
!1623 = distinct !{!1623, !1622, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEE3newCskeugdADtBsi_12pingora_core: argument 0"}
!1624 = distinct !{!1624, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB1H_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEs_0E3newB1L_"}
!1625 = distinct !{!1625, !1624, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB1H_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEs_0E3newB1L_: argument 0"}
!1626 = distinct !{!1626, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitE3newCskeugdADtBsi_12pingora_core"}
!1627 = distinct !{!1627, !1626, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCsG258MDvU3F_3std6thread9lifecycle10ThreadInitE3newCskeugdADtBsi_12pingora_core: argument 0"}
!1628 = distinct !{!1628, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core"}
!1629 = distinct !{!1629, !1628, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core: argument 0"}
!1630 = distinct !{!1630, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEENtNtNtB1x_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1631 = distinct !{!1631, !1630, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEENtNtNtB1x_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1632 = distinct !{!1632, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core"}
!1633 = distinct !{!1633, !1632, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsG258MDvU3F_3std6thread6thread6ThreadECskeugdADtBsi_12pingora_core: argument 0"}
!1634 = distinct !{!1634, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskeugdADtBsi_12pingora_core"}
!1635 = distinct !{!1635, !1634, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_3pin3PinINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1v_5alloc6SystemEEECskeugdADtBsi_12pingora_core: argument 0"}
!1636 = distinct !{!1636, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskeugdADtBsi_12pingora_core"}
!1637 = distinct !{!1637, !1636, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtB1f_5alloc6SystemEECskeugdADtBsi_12pingora_core: argument 0"}
!1638 = distinct !{!1638, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1639 = distinct !{!1639, !1638, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6thread5InnerNtNtBM_5alloc6SystemENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1640 = distinct !{!1640, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core"}
!1641 = distinct !{!1641, !1640, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core: argument 0"}
!1642 = distinct !{!1642, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEENtNtNtB1x_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1643 = distinct !{!1643, !1642, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEENtNtNtB1x_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1644 = distinct !{!1644, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core"}
!1645 = distinct !{!1645, !1644, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEEECskeugdADtBsi_12pingora_core: argument 0"}
!1646 = distinct !{!1646, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEECskeugdADtBsi_12pingora_core"}
!1647 = distinct !{!1647, !1646, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataEECskeugdADtBsi_12pingora_core: argument 0"}
!1648 = distinct !{!1648, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1649 = distinct !{!1649, !1648, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCsG258MDvU3F_3std6thread6scoped9ScopeDataENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1650 = !{!1599}
!1651 = !{!1601}
!1652 = !{!1609, !1607, !1605, !1603, !1599}
!1653 = !{!1607, !1605, !1603, !1599}
!1654 = !{!1611}
!1655 = !{!1613}
!1656 = !{!1615}
!1657 = !{!1617}
!1658 = !{!1619}
!1659 = !{!1621}
!1660 = !{!1621, !1619, !1617, !1615}
!1661 = !{!1623}
!1662 = !{!1625}
!1663 = !{!1627}
!1664 = !{!1629}
!1665 = !{!1631}
!1666 = !{!1631, !1629}
!1667 = !{!1633}
!1668 = !{!1635}
!1669 = !{!1637}
!1670 = !{!1639}
!1671 = !{!1639, !1637, !1635, !1633}
!1672 = !{!1641}
!1673 = !{!1643}
!1674 = !{!1643, !1641}
!1675 = !{!1645}
!1676 = !{!1649, !1647, !1645}
!1677 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!1678 = distinct !{!1678, i1 true, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskeugdADtBsi_12pingora_core"}
!1679 = distinct !{!1679, !1678, !"_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCskeugdADtBsi_12pingora_core: argument 0"}
!1680 = !{!1679}
!1681 = distinct !{!1681, i1 true, !"_RNvXs_NtCskCJvoiymbRN_5ahash13fallback_hashNtB4_7AHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usize"}
!1682 = distinct !{!1682, !1681, !"_RNvXs_NtCskCJvoiymbRN_5ahash13fallback_hashNtB4_7AHasherNtNtCskKLDkoKarTP_4core4hash6Hasher11write_usize: argument 0"}
!1683 = distinct !{!1683, !1685}
!1684 = !{!1682}
!1685 = !{!"llvm.loop.peeled.count", i32 1}
!1686 = distinct !{!1686, i1 true, !"_RINvXs1o_NtNtCs54qMqBN3zRt_10serde_core3ser5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBQ_6string6StringENtB9_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQIBM_hEEECskeugdADtBsi_12pingora_core"}
!1687 = distinct !{!1687, !1686, !"_RINvXs1o_NtNtCs54qMqBN3zRt_10serde_core3ser5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBQ_6string6StringENtB9_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQIBM_hEEECskeugdADtBsi_12pingora_core: argument 0"}
!1688 = distinct !{!1688, i1 true, !"_RINvYQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer11collect_seqRIBR_NtNtBV_6string6StringEECskeugdADtBsi_12pingora_core"}
!1689 = distinct !{!1689, !1688, !"_RINvYQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer11collect_seqRIBR_NtNtBV_6string6StringEECskeugdADtBsi_12pingora_core: argument 0"}
!1690 = distinct !{!1690, i1 true, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_seqCskeugdADtBsi_12pingora_core"}
!1691 = distinct !{!1691, !1690, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_seqCskeugdADtBsi_12pingora_core: argument 0"}
!1692 = distinct !{!1692, i1 true, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE19emit_sequence_startCskeugdADtBsi_12pingora_core"}
!1693 = distinct !{!1693, !1692, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE19emit_sequence_startCskeugdADtBsi_12pingora_core: argument 0"}
!1694 = distinct !{!1694, i1 true, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11value_startCskeugdADtBsi_12pingora_core"}
!1695 = distinct !{!1695, !1694, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11value_startCskeugdADtBsi_12pingora_core: argument 0"}
!1696 = distinct !{!1696, i1 true, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core"}
!1697 = distinct !{!1697, !1696, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core: argument 1"}
!1698 = distinct !{!1698, !1696, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core: argument 0"}
!1699 = distinct !{!1699, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert"}
!1700 = distinct !{!1700, !1699, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert: argument 0"}
!1701 = distinct !{!1701, i1 true, !"_RNCINvYQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBX_6string6StringEE0CskeugdADtBsi_12pingora_core"}
!1702 = distinct !{!1702, !1701, !"_RNCINvYQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBX_6string6StringEE0CskeugdADtBsi_12pingora_core: argument 0"}
!1703 = distinct !{!1703, i1 true, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtBN_3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer11collect_seqRIB39_BJ_EE0INtNtBa_6result6ResultuNtNtB2r_5error5ErrorEECskeugdADtBsi_12pingora_core"}
!1704 = distinct !{!1704, !1703, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtBN_3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer11collect_seqRIB39_BJ_EE0INtNtBa_6result6ResultuNtNtB2r_5error5ErrorEECskeugdADtBsi_12pingora_core: argument 0"}
!1705 = distinct !{!1705, i1 true, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1m_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCskItKYAOUBlG_10serde_yaml5error5ErrorENCINvYQINtNtB3a_3ser10SerializerQINtNtBN_3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer11collect_seqRIB4l_BJ_EE0E0B2J_ECskeugdADtBsi_12pingora_core"}
!1706 = distinct !{!1706, !1705, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1m_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCskItKYAOUBlG_10serde_yaml5error5ErrorENCINvYQINtNtB3a_3ser10SerializerQINtNtBN_3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer11collect_seqRIB4l_BJ_EE0E0B2J_ECskeugdADtBsi_12pingora_core: argument 1"}
!1707 = distinct !{!1707, !1705, !"_RINvYINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNvB1m_12try_for_each4callRBJ_INtNtBa_6result6ResultuNtNtCskItKYAOUBlG_10serde_yaml5error5ErrorENCINvYQINtNtB3a_3ser10SerializerQINtNtBN_3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer11collect_seqRIB4l_BJ_EE0E0B2J_ECskeugdADtBsi_12pingora_core: argument 0"}
!1708 = distinct !{!1708, i1 true, !"_RINvXs1H_NtNtCs54qMqBN3zRt_10serde_core3ser5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB9_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtBQ_3vec3VechEEECskeugdADtBsi_12pingora_core"}
!1709 = distinct !{!1709, !1708, !"_RINvXs1H_NtNtCs54qMqBN3zRt_10serde_core3ser5implsRNtNtCsexYYUdYSQU6_5alloc6string6StringNtB9_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtBQ_3vec3VechEEECskeugdADtBsi_12pingora_core: argument 0"}
!1710 = distinct !{!1710, i1 true, !"_RNCINvYQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBX_6string6StringEE0CskeugdADtBsi_12pingora_core"}
!1711 = distinct !{!1711, !1710, !"_RNCINvYQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBX_6string6StringEE0CskeugdADtBsi_12pingora_core: argument 0"}
!1712 = distinct !{!1712, i1 true, !"_RNvXs0_NtCskItKYAOUBlG_10serde_yaml3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser12SerializeSeq3endCskeugdADtBsi_12pingora_core"}
!1713 = distinct !{!1713, !1712, !"_RNvXs0_NtCskItKYAOUBlG_10serde_yaml3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser12SerializeSeq3endCskeugdADtBsi_12pingora_core: argument 0"}
!1714 = distinct !{!1714, i1 true, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE17emit_sequence_endCskeugdADtBsi_12pingora_core"}
!1715 = distinct !{!1715, !1714, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE17emit_sequence_endCskeugdADtBsi_12pingora_core: argument 0"}
!1716 = distinct !{!1716, i1 true, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9value_endCskeugdADtBsi_12pingora_core"}
!1717 = distinct !{!1717, !1716, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9value_endCskeugdADtBsi_12pingora_core: argument 0"}
!1718 = !{!1687}
!1719 = !{!1689}
!1720 = !{!1691}
!1721 = !{!1693}
!1722 = !{!1695}
!1723 = !{!1695, !1693, !1691, !1689, !1687}
!1724 = !{!1697}
!1725 = !{!1697, !1693, !1691, !1689, !1687}
!1726 = !{!1698, !1697}
!1727 = !{!1698, !1697, !1693, !1691, !1689, !1687}
!1728 = !{!1698}
!1729 = !{!1700}
!1730 = !{!1693, !1691, !1689, !1687}
!1731 = !{!1702}
!1732 = !{!1709, !1707, !1706, !1704, !1689, !1687}
!1733 = !{!1711, !1707, !1706, !1704}
!1734 = !{!1713}
!1735 = !{!1715}
!1736 = !{!1715, !1713, !1689, !1687}
!1737 = !{!1717}
!1738 = !{!1717, !1715, !1713, !1689, !1687}
!1739 = distinct !{!1739, i1 true, !"_RINvXs3_NtNtCs54qMqBN3zRt_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtB1q_3vec3VechEEECskeugdADtBsi_12pingora_core"}
!1740 = distinct !{!1740, !1739, !"_RINvXs3_NtNtCs54qMqBN3zRt_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtB1q_3vec3VechEEECskeugdADtBsi_12pingora_core: argument 0"}
!1741 = distinct !{!1741, !1739, !"_RINvXs3_NtNtCs54qMqBN3zRt_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtB1q_3vec3VechEEECskeugdADtBsi_12pingora_core: argument 1"}
!1742 = distinct !{!1742, i1 true, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_noneCskeugdADtBsi_12pingora_core"}
!1743 = distinct !{!1743, !1742, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_noneCskeugdADtBsi_12pingora_core: argument 0"}
!1744 = !{!1740}
!1745 = !{!1743, !1740, !1741}
!1746 = distinct !{!1746, i1 true, !"_RINvXs3_NtNtCs54qMqBN3zRt_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionjENtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core"}
!1747 = distinct !{!1747, !1746, !"_RINvXs3_NtNtCs54qMqBN3zRt_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionjENtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core: argument 0"}
!1748 = distinct !{!1748, i1 true, !"_RINvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_somejECskeugdADtBsi_12pingora_core"}
!1749 = distinct !{!1749, !1748, !"_RINvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_somejECskeugdADtBsi_12pingora_core: argument 0"}
!1750 = distinct !{!1750, i1 true, !"_RINvXsF_NtNtCs54qMqBN3zRt_10serde_core3ser5implsjNtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core"}
!1751 = distinct !{!1751, !1750, !"_RINvXsF_NtNtCs54qMqBN3zRt_10serde_core3ser5implsjNtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core: argument 0"}
!1752 = distinct !{!1752, i1 true, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_u64CskeugdADtBsi_12pingora_core"}
!1753 = distinct !{!1753, !1752, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_u64CskeugdADtBsi_12pingora_core: argument 0"}
!1754 = distinct !{!1754, i1 true, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_noneCskeugdADtBsi_12pingora_core"}
!1755 = distinct !{!1755, !1754, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_noneCskeugdADtBsi_12pingora_core: argument 0"}
!1756 = !{!1753, !1751, !1749, !1747}
!1757 = !{!1755, !1747}
!1758 = distinct !{!1758, i1 true, !"_RINvXs3_NtNtCs54qMqBN3zRt_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionyENtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core"}
!1759 = distinct !{!1759, !1758, !"_RINvXs3_NtNtCs54qMqBN3zRt_10serde_core3ser5implsINtNtCskKLDkoKarTP_4core6option6OptionyENtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core: argument 0"}
!1760 = distinct !{!1760, i1 true, !"_RINvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_someyECskeugdADtBsi_12pingora_core"}
!1761 = distinct !{!1761, !1760, !"_RINvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB5_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_someyECskeugdADtBsi_12pingora_core: argument 0"}
!1762 = distinct !{!1762, i1 true, !"_RINvXsJ_NtNtCs54qMqBN3zRt_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core"}
!1763 = distinct !{!1763, !1762, !"_RINvXsJ_NtNtCs54qMqBN3zRt_10serde_core3ser5implsyNtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core: argument 0"}
!1764 = distinct !{!1764, i1 true, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_u64CskeugdADtBsi_12pingora_core"}
!1765 = distinct !{!1765, !1764, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_u64CskeugdADtBsi_12pingora_core: argument 0"}
!1766 = distinct !{!1766, i1 true, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_noneCskeugdADtBsi_12pingora_core"}
!1767 = distinct !{!1767, !1766, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_noneCskeugdADtBsi_12pingora_core: argument 0"}
!1768 = !{!1765, !1763, !1761, !1759}
!1769 = !{!1767, !1759}
!1770 = distinct !{!1770, i1 true, !"_RINvXsy_NtNtCs54qMqBN3zRt_10serde_core3ser5implsbNtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core"}
!1771 = distinct !{!1771, !1770, !"_RINvXsy_NtNtCs54qMqBN3zRt_10serde_core3ser5implsbNtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core: argument 0"}
!1772 = distinct !{!1772, i1 true, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_boolCskeugdADtBsi_12pingora_core"}
!1773 = distinct !{!1773, !1772, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer14serialize_boolCskeugdADtBsi_12pingora_core: argument 0"}
!1774 = !{!1773, !1771}
!1775 = distinct !{!1775, i1 true, !"_RINvXsF_NtNtCs54qMqBN3zRt_10serde_core3ser5implsjNtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core"}
!1776 = distinct !{!1776, !1775, !"_RINvXsF_NtNtCs54qMqBN3zRt_10serde_core3ser5implsjNtB8_9Serialize9serializeQINtNtCskItKYAOUBlG_10serde_yaml3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECskeugdADtBsi_12pingora_core: argument 0"}
!1777 = distinct !{!1777, i1 true, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_u64CskeugdADtBsi_12pingora_core"}
!1778 = distinct !{!1778, !1777, !"_RNvXs_NtCskItKYAOUBlG_10serde_yaml3serQINtB4_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs54qMqBN3zRt_10serde_core3ser10Serializer13serialize_u64CskeugdADtBsi_12pingora_core: argument 0"}
!1779 = !{!1778, !1776}
!1780 = distinct !{!1780, i1 true, !"_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq"}
!1781 = distinct !{!1781, !1780, !"_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq: argument 0"}
!1782 = distinct !{!1782, !1780, !"_RNvNtNtCskKLDkoKarTP_4core3str7pattern14small_slice_eq: argument 1"}
!1783 = !{!1781}
!1784 = !{!1782}
!1785 = !{!1781, !1782}
!1786 = distinct !{!1786, i1 true, !"_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB16_6Server3runs0_00uEs_0B18_"}
!1787 = distinct !{!1787, !1786, !"_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB16_6Server3runs0_00uEs_0B18_: argument 0"}
!1788 = distinct !{!1788, i1 true, !"_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB2i_6Server3runs0_00uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2k_"}
!1789 = distinct !{!1789, !1788, !"_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNCNvMs_NtCskeugdADtBsi_12pingora_core6serverNtB2i_6Server3runs0_00uEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2k_: argument 0"}
!1790 = distinct !{!1790, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskeugdADtBsi_12pingora_core"}
!1791 = distinct !{!1791, !1790, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskeugdADtBsi_12pingora_core: argument 0"}
!1792 = distinct !{!1792, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECskeugdADtBsi_12pingora_core"}
!1793 = distinct !{!1793, !1792, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECskeugdADtBsi_12pingora_core: argument 0"}
!1794 = distinct !{!1794, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1795 = distinct !{!1795, !1794, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1796 = distinct !{!1796, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECskeugdADtBsi_12pingora_core"}
!1797 = distinct !{!1797, !1796, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEEECskeugdADtBsi_12pingora_core: argument 0"}
!1798 = distinct !{!1798, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1799 = distinct !{!1799, !1798, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1800 = !{!1787}
!1801 = !{!1789, !1787}
!1802 = !{!1791}
!1803 = !{!1791, !1787}
!1804 = !{!1795, !1793, !1787}
!1805 = !{!1799, !1797, !1787}
!1806 = distinct !{!1806, i1 true, !"_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB12_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEs_0B16_"}
!1807 = distinct !{!1807, !1806, !"_RNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB12_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEs_0B16_: argument 0"}
!1808 = distinct !{!1808, i1 true, !"_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB2e_14OffloadRuntime10init_pools0INtNtB9_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2i_"}
!1809 = distinct !{!1809, !1808, !"_RNvXsl_NtNtCskKLDkoKarTP_4core5panic11unwind_safeINtB5_16AssertUnwindSafeNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB2e_14OffloadRuntime10init_pools0INtNtB9_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEs_00EINtNtNtB9_3ops8function6FnOnceuE9call_onceB2i_: argument 0"}
!1810 = distinct !{!1810, i1 true, !"_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB14_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEs_00B18_"}
!1811 = distinct !{!1811, !1810, !"_RNCNCINvNtNtCsG258MDvU3F_3std6thread9lifecycle15spawn_uncheckedNCNvMNtNtCskeugdADtBsi_12pingora_core10connectors7offloadNtB14_14OffloadRuntime10init_pools0INtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEs_00B18_: argument 0"}
!1812 = distinct !{!1812, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskeugdADtBsi_12pingora_core"}
!1813 = distinct !{!1813, !1812, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultIBY_uNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskeugdADtBsi_12pingora_core: argument 0"}
!1814 = distinct !{!1814, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core"}
!1815 = distinct !{!1815, !1814, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core: argument 0"}
!1816 = distinct !{!1816, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEENtNtNtB1x_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1817 = distinct !{!1817, !1816, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEENtNtNtB1x_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1818 = distinct !{!1818, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core"}
!1819 = distinct !{!1819, !1818, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc4sync3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtB4_6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEEECskeugdADtBsi_12pingora_core: argument 0"}
!1820 = distinct !{!1820, i1 true, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEENtNtNtB1x_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1821 = distinct !{!1821, !1820, !"_RNvXsE_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcINtNtNtCsG258MDvU3F_3std6thread9lifecycle6PacketINtNtCskKLDkoKarTP_4core6result6ResultuNtNtNtNtCs2awuzAz5vY4_5tokio4sync7oneshot5error9RecvErrorEEENtNtNtB1x_3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1822 = !{!1807}
!1823 = !{!1809, !1807}
!1824 = !{!1811, !1809, !1807}
!1825 = !{!1813}
!1826 = !{!1813, !1807}
!1827 = !{!1817, !1815, !1807}
!1828 = !{!1821, !1819, !1807}
!1829 = distinct !{!1829, i1 true, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core"}
!1830 = distinct !{!1830, !1829, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core: argument 1"}
!1831 = distinct !{!1831, !1829, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core: argument 0"}
!1832 = distinct !{!1832, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert"}
!1833 = distinct !{!1833, !1832, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert: argument 0"}
!1834 = distinct !{!1834, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskeugdADtBsi_12pingora_core"}
!1835 = distinct !{!1835, !1834, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskeugdADtBsi_12pingora_core: argument 0"}
!1836 = distinct !{!1836, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core"}
!1837 = distinct !{!1837, !1836, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core: argument 0"}
!1838 = distinct !{!1838, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core"}
!1839 = distinct !{!1839, !1838, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core: argument 0"}
!1840 = distinct !{!1840, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1841 = distinct !{!1841, !1840, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1842 = distinct !{!1842, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1843 = distinct !{!1843, !1842, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1844 = distinct !{!1844, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1845 = distinct !{!1845, !1844, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1846 = distinct !{!1846, i1 true, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11value_startCskeugdADtBsi_12pingora_core"}
!1847 = distinct !{!1847, !1846, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11value_startCskeugdADtBsi_12pingora_core: argument 0"}
!1848 = distinct !{!1848, i1 true, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9value_endCskeugdADtBsi_12pingora_core"}
!1849 = distinct !{!1849, !1848, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE9value_endCskeugdADtBsi_12pingora_core: argument 0"}
!1850 = distinct !{!1850, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskeugdADtBsi_12pingora_core"}
!1851 = distinct !{!1851, !1850, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskeugdADtBsi_12pingora_core: argument 0"}
!1852 = distinct !{!1852, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core"}
!1853 = distinct !{!1853, !1852, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskeugdADtBsi_12pingora_core: argument 0"}
!1854 = distinct !{!1854, i1 true, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core"}
!1855 = distinct !{!1855, !1854, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECskeugdADtBsi_12pingora_core: argument 0"}
!1856 = distinct !{!1856, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1857 = distinct !{!1857, !1856, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1858 = distinct !{!1858, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1859 = distinct !{!1859, !1858, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1860 = distinct !{!1860, i1 true, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core"}
!1861 = distinct !{!1861, !1860, !"_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskeugdADtBsi_12pingora_core: argument 0"}
!1862 = !{!1830}
!1863 = !{!1831, !1830}
!1864 = !{!1831}
!1865 = !{!1833}
!1866 = !{!1835}
!1867 = !{!1841, !1839, !1837, !1835}
!1868 = !{!1839, !1837, !1835}
!1869 = !{!1843}
!1870 = !{!1845}
!1871 = !{!1847}
!1872 = !{!1849}
!1873 = !{!1851}
!1874 = !{!1857, !1855, !1853, !1851}
!1875 = !{!1855, !1853, !1851}
!1876 = !{!1859}
!1877 = !{!1861}
!1878 = distinct !{!1878, i1 true, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11value_startCskeugdADtBsi_12pingora_core"}
!1879 = distinct !{!1879, !1878, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE11value_startCskeugdADtBsi_12pingora_core: argument 0"}
!1880 = distinct !{!1880, i1 true, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core"}
!1881 = distinct !{!1881, !1880, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core: argument 1"}
!1882 = distinct !{!1882, !1880, !"_RNvMNtCskItKYAOUBlG_10serde_yaml3serINtB2_10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEE8take_tagCskeugdADtBsi_12pingora_core: argument 0"}
!1883 = distinct !{!1883, i1 true, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert"}
!1884 = distinct !{!1884, !1883, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String6insert: argument 0"}
!1885 = !{!1879}
end_hunk_1
