Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/scalar_cast_boolean?download=true
inline.NumInlined: 719
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 31
begin_hunk_0_@_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.h = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !135
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !97
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !98

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !101
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !266
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93, !noalias !267
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !90, !noalias !267
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !108, !noalias !267
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !65
  store ptr %i.u, ptr %0, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !66

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !76, !range !77, !noundef !78
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS1_9IsNonZeroEE4ExecEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %4 = alloca %"class.arrow::Status", align 8     ; 8 uses
  %5 = alloca %"struct.arrow::compute::internal::ArrayIterator.83", align 8 ; 5 uses
  %6 = alloca %class.anon.84, align 8             ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !83   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr null, ptr %4, align 8, !tbaa !65, !alias.scope !272
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !90
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.h = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.e
  store ptr %i.h, ptr %5, align 8, !tbaa !139
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.j = load i8, ptr %i.i, align 8, !tbaa !97
  switch i8 %i.j, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke [
    i8 0, label %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  ], !prof !98

_ZSt26__throw_bad_variant_accessb.exit.i.i.i:     ; preds = %bb.a
  br label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke: ; preds = %bb.a, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i
  %.str.2.sink = phi ptr [ @.str.1, %_ZSt26__throw_bad_variant_accessb.exit.i.i.i ], [ @.str.2, %bb.a ]
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.k, align 8, !tbaa !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.str.2.sink, ptr %i.l, align 8, !tbaa !101
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #24
          to label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont unwind label %bb.b

_ZSt26__throw_bad_variant_accessb.exit.i.i.i.cont: ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  unreachable

_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store ptr %i.a, ptr %6, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.m, align 8, !tbaa !273
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.n, align 8, !tbaa !107
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93, !noalias !274
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !90, !noalias !274
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !108, !noalias !274
  invoke void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %i.p, i64 noundef %i.r, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.c

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  %i.u = load ptr, ptr %4, align 8, !tbaa !65
  store ptr %i.u, ptr %0, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.b:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZN5arrow7compute10ExecResult18array_span_mutableEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.c ], [ %i.v, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.x = load ptr, ptr %4, align 8, !tbaa !65     ; 2 uses
  %.not.i22 = icmp eq ptr %i.x, null
  br i1 %.not.i22, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.e, !prof !66

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !76, !range !77, !noundef !78
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5arrow6StatusD2Ev.exit23, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit23

_ZN5arrow6StatusD2Ev.exit23:                      ; preds = %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute8internal11FailFunctorIPFNS_6StatusEPNS0_13KernelContextERKNS0_8ExecSpanEPNS0_10ExecResultEEE4ExecES5_S8_SA_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3) #1 comdat align 2 {
bb.a:
  tail call void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(25) @.str.3)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_8Int8TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !39        ; 3 uses
  %.not = icmp eq i8 %5, 1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !39
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %6 = icmp ne i8 %5, 0
  %i.i = icmp sgt i64 %2, 0
  %7 = and i1 %6, %i.i
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !279, !nonnull !78, !align !141 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %5, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.h, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !95
  %i.n = load i8, ptr %i.l, align 1, !tbaa !39
  %.not46 = icmp eq i8 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !275

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.040.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.p, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.r, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.038 = phi ptr [ %i.v, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge56

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.x = lshr i64 %.1, 3
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ai, %.preheader48 ] ; 2 uses
  %.13955 = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.ba, %.preheader48 ] ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !279, !nonnull !78, !align !141 ; 9 uses
  %.promoted53 = load ptr, ptr %i.z, align 8, !tbaa !95 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.promoted53, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !95
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53, i64 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted53, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted53, i64 5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted53, i64 6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.promoted53, i64 7 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.promoted53, i64 8
  %i.ai = add nsw i64 %.in, -1
  %i.aj = load i8, ptr %.promoted53, align 1, !tbaa !39
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !95
  %i.ak = load i8, ptr %i.aa, align 1, !tbaa !39
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !95
  %i.al = load i8, ptr %i.ab, align 1, !tbaa !39
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !95
  %i.am = load i8, ptr %i.ac, align 1, !tbaa !39
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !95
  %i.an = load i8, ptr %i.ad, align 1, !tbaa !39
  store ptr %i.af, ptr %i.z, align 8, !tbaa !95
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !39
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !95
  %i.ap = load i8, ptr %i.af, align 1, !tbaa !39
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !95
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !39
  %i.ar = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 1
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 2
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 3
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 4
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 5
  %i.ax = insertelement <8 x i8> %i.aw, i8 %i.ap, i64 6
  %i.ay = insertelement <8 x i8> %i.ax, i8 %i.aq, i64 7
  %i.az = icmp ne <8 x i8> %i.ay, zeroinitializer
  %i.ba = getelementptr inbounds nuw i8, ptr %.13955, i64 1 ; 2 uses
  store <8 x i1> %i.az, ptr %.13955, align 1, !tbaa !39
  %i.bb = icmp samesign ugt i64 %.in, 1
  br i1 %i.bb, label %.preheader48, label %._crit_edge56, !llvm.loop !276

._crit_edge56:                                    ; preds = %.preheader48, %bb.e
  %.139.lcssa = phi ptr [ %.038, %bb.e ], [ %i.ba, %.preheader48 ]
  %i.bc = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.bc, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge56
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !279, !nonnull !78, !align !141 ; 4 uses
  %.promoted64 = load ptr, ptr %i.bf, align 8, !tbaa !95 ; 2 uses
  %xtraiter = and i64 %i.bc, 1
  %i.bg = icmp eq i64 %i.bc, 1
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %i.bc, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph61.new
  %i.bh = phi ptr [ %.promoted64, %.lr.ph61.new ], [ %i.bn, %bb.f ] ; 3 uses
  %.13759 = phi i8 [ 1, %.lr.ph61.new ], [ %i.br, %bb.f ] ; 3 uses
  %.14158 = phi i8 [ 0, %.lr.ph61.new ], [ %i.bq, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.1, %bb.f ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !95
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !39
  %.not47 = icmp eq i8 %i.bj, 0
  %i.bk = select i1 %.not47, i8 0, i8 %.13759
  %i.bl = or i8 %i.bk, %.14158
  %i.bm = shl nuw i8 %.13759, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 3 uses
  store ptr %i.bn, ptr %i.bf, align 8, !tbaa !95
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !39
  %.not47.1 = icmp eq i8 %i.bo, 0
  %i.bp = select i1 %.not47.1, i8 0, i8 %i.bm
  %i.bq = or i8 %i.bp, %i.bl                      ; 3 uses
  %i.br = shl nuw i8 %.13759, 2                   ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge62.loopexit.unr-lcssa, label %bb.f, !llvm.loop !277

._crit_edge62.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge62, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge62.loopexit.unr-lcssa, %.lr.ph61
  %.epil.init = phi ptr [ %.promoted64, %.lr.ph61 ], [ %i.bn, %._crit_edge62.loopexit.unr-lcssa ] ; 2 uses
  %.13759.epil.init = phi i8 [ 1, %.lr.ph61 ], [ %i.br, %._crit_edge62.loopexit.unr-lcssa ]
  %.14158.epil.init = phi i8 [ 0, %.lr.ph61 ], [ %i.bq, %._crit_edge62.loopexit.unr-lcssa ]
  %lcmp.mod88 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.bs = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  store ptr %i.bs, ptr %i.bf, align 8, !tbaa !95
  %i.bt = load i8, ptr %.epil.init, align 1, !tbaa !39
  %.not47.epil = icmp eq i8 %i.bt, 0
  %i.bu = select i1 %.not47.epil, i8 0, i8 %.13759.epil.init
  %i.bv = or i8 %i.bu, %.14158.epil.init
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.epil.preheader, %._crit_edge62.loopexit.unr-lcssa, %.preheader
  %.141.lcssa = phi i8 [ 0, %.preheader ], [ %i.bq, %._crit_edge62.loopexit.unr-lcssa ], [ %i.bv, %.epil.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge56, %._crit_edge62, %bb.a
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #9

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt18bad_variant_accessD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNKSt18bad_variant_access4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101
  ret ptr %i.b
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9UInt8TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !39        ; 3 uses
  %.not = icmp eq i8 %5, 1
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !39
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %6 = icmp ne i8 %5, 0
  %i.i = icmp sgt i64 %2, 0
  %7 = and i1 %6, %i.i
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !284, !nonnull !78, !align !141 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !110
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %5, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.h, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 2 uses
  store ptr %i.m, ptr %i.k, align 8, !tbaa !110
  %i.n = load i8, ptr %i.l, align 1, !tbaa !39
  %.not46 = icmp eq i8 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !280

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.040.lcssa = phi i8 [ %i.h, %bb.c ], [ %i.p, %bb.d ]
  %.035.lcssa = phi i64 [ %2, %bb.c ], [ %i.r, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !39
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %.038 = phi ptr [ %i.v, %._crit_edge ], [ %i.c, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %.035.lcssa, %._crit_edge ], [ %2, %bb.b ] ; 3 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge56

.preheader48.lr.ph:                               ; preds = %bb.e
  %i.x = lshr i64 %.1, 3
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %.preheader48

.preheader48:                                     ; preds = %.preheader48.lr.ph, %.preheader48
  %.in = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ai, %.preheader48 ] ; 2 uses
  %.13955 = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.ba, %.preheader48 ] ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !284, !nonnull !78, !align !141 ; 9 uses
  %.promoted53 = load ptr, ptr %i.z, align 8, !tbaa !110 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.promoted53, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !110
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53, i64 2 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted53, i64 3 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.promoted53, i64 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.promoted53, i64 5 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.promoted53, i64 6 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.promoted53, i64 7 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.promoted53, i64 8
  %i.ai = add nsw i64 %.in, -1
  %i.aj = load i8, ptr %.promoted53, align 1, !tbaa !39
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !110
  %i.ak = load i8, ptr %i.aa, align 1, !tbaa !39
  store ptr %i.ac, ptr %i.z, align 8, !tbaa !110
  %i.al = load i8, ptr %i.ab, align 1, !tbaa !39
  store ptr %i.ad, ptr %i.z, align 8, !tbaa !110
  %i.am = load i8, ptr %i.ac, align 1, !tbaa !39
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !110
  %i.an = load i8, ptr %i.ad, align 1, !tbaa !39
  store ptr %i.af, ptr %i.z, align 8, !tbaa !110
  %i.ao = load i8, ptr %i.ae, align 1, !tbaa !39
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !110
  %i.ap = load i8, ptr %i.af, align 1, !tbaa !39
  store ptr %i.ah, ptr %i.z, align 8, !tbaa !110
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !39
  %i.ar = insertelement <8 x i8> poison, i8 %i.aj, i64 0
  %i.as = insertelement <8 x i8> %i.ar, i8 %i.ak, i64 1
  %i.at = insertelement <8 x i8> %i.as, i8 %i.al, i64 2
  %i.au = insertelement <8 x i8> %i.at, i8 %i.am, i64 3
  %i.av = insertelement <8 x i8> %i.au, i8 %i.an, i64 4
  %i.aw = insertelement <8 x i8> %i.av, i8 %i.ao, i64 5
  %i.ax = insertelement <8 x i8> %i.aw, i8 %i.ap, i64 6
  %i.ay = insertelement <8 x i8> %i.ax, i8 %i.aq, i64 7
  %i.az = icmp ne <8 x i8> %i.ay, zeroinitializer
  %i.ba = getelementptr inbounds nuw i8, ptr %.13955, i64 1 ; 2 uses
  store <8 x i1> %i.az, ptr %.13955, align 1, !tbaa !39
  %i.bb = icmp samesign ugt i64 %.in, 1
  br i1 %i.bb, label %.preheader48, label %._crit_edge56, !llvm.loop !281

._crit_edge56:                                    ; preds = %.preheader48, %bb.e
  %.139.lcssa = phi ptr [ %.038, %bb.e ], [ %i.ba, %.preheader48 ]
  %i.bc = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.bc, 0
  br i1 %.not45, label %bb.g, label %.preheader

.preheader:                                       ; preds = %._crit_edge56
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph61, label %._crit_edge62

.lr.ph61:                                         ; preds = %.preheader
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !284, !nonnull !78, !align !141 ; 4 uses
  %.promoted64 = load ptr, ptr %i.bf, align 8, !tbaa !110 ; 2 uses
  %xtraiter = and i64 %i.bc, 1
  %i.bg = icmp eq i64 %i.bc, 1
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph61.new

.lr.ph61.new:                                     ; preds = %.lr.ph61
  %unroll_iter = and i64 %i.bc, 9223372036854775806
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph61.new
  %i.bh = phi ptr [ %.promoted64, %.lr.ph61.new ], [ %i.bn, %bb.f ] ; 3 uses
  %.13759 = phi i8 [ 1, %.lr.ph61.new ], [ %i.br, %bb.f ] ; 3 uses
  %.14158 = phi i8 [ 0, %.lr.ph61.new ], [ %i.bq, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph61.new ], [ %niter.next.1, %bb.f ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1 ; 2 uses
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !110
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !39
  %.not47 = icmp eq i8 %i.bj, 0
  %i.bk = select i1 %.not47, i8 0, i8 %.13759
  %i.bl = or i8 %i.bk, %.14158
  %i.bm = shl nuw i8 %.13759, 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 2 ; 3 uses
  store ptr %i.bn, ptr %i.bf, align 8, !tbaa !110
  %i.bo = load i8, ptr %i.bi, align 1, !tbaa !39
  %.not47.1 = icmp eq i8 %i.bo, 0
  %i.bp = select i1 %.not47.1, i8 0, i8 %i.bm
  %i.bq = or i8 %i.bp, %i.bl                      ; 3 uses
  %i.br = shl nuw i8 %.13759, 2                   ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge62.loopexit.unr-lcssa, label %bb.f, !llvm.loop !282

._crit_edge62.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge62, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge62.loopexit.unr-lcssa, %.lr.ph61
  %.epil.init = phi ptr [ %.promoted64, %.lr.ph61 ], [ %i.bn, %._crit_edge62.loopexit.unr-lcssa ] ; 2 uses
  %.13759.epil.init = phi i8 [ 1, %.lr.ph61 ], [ %i.br, %._crit_edge62.loopexit.unr-lcssa ]
  %.14158.epil.init = phi i8 [ 0, %.lr.ph61 ], [ %i.bq, %._crit_edge62.loopexit.unr-lcssa ]
  %lcmp.mod88 = trunc i64 %i.bc to i1
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.bs = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  store ptr %i.bs, ptr %i.bf, align 8, !tbaa !110
  %i.bt = load i8, ptr %.epil.init, align 1, !tbaa !39
  %.not47.epil = icmp eq i8 %i.bt, 0
  %i.bu = select i1 %.not47.epil, i8 0, i8 %.13759.epil.init
  %i.bv = or i8 %i.bu, %.14158.epil.init
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.epil.preheader, %._crit_edge62.loopexit.unr-lcssa, %.preheader
  %.141.lcssa = phi i8 [ 0, %.preheader ], [ %i.bq, %._crit_edge62.loopexit.unr-lcssa ], [ %i.bv, %.epil.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge56, %._crit_edge62, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int16TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !39        ; 3 uses
  %.not = icmp eq i8 %5, 1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !39
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %6 = icmp ne i8 %5, 0
  %i.i = icmp sgt i64 %2, 0
  %7 = and i1 %6, %i.i
  br i1 %7, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !290, !nonnull !78, !align !141 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %5, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.h, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.n = load i16, ptr %i.l, align 2, !tbaa !143
  %.not46 = icmp eq i16 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !285

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !114
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !290, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !114 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 16
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !114
  %i.ad = load <8 x i16>, ptr %.promoted53.prol, align 2, !tbaa !143
  %i.ae = icmp ne <8 x i16> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !39
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !290, !nonnull !78, !align !141 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !114 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 16
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !114
  %i.aj = load <8 x i16>, ptr %.promoted53, align 2, !tbaa !143
  %i.ak = icmp ne <8 x i16> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !39
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !290, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !114 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 16
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !114
  %i.ap = load <8 x i16>, ptr %.promoted53.1, align 2, !tbaa !143
  %i.aq = icmp ne <8 x i16> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !39
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !286

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !290, !nonnull !78, !align !141 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !114 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i16, ptr %i.ay, align 2, !tbaa !143
  %.not47 = icmp eq i16 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bf = load i16, ptr %i.az, align 2, !tbaa !143
  %.not47.1 = icmp eq i16 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %i.bk = load i16, ptr %i.be, align 2, !tbaa !143
  %.not47.2 = icmp eq i16 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bp = load i16, ptr %i.bj, align 2, !tbaa !143
  %.not47.3 = icmp eq i16 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !287

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bv = load i16, ptr %i.bt, align 2, !tbaa !143
  %.not47.epil = icmp eq i16 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !288

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 1
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !114
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt16TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !39        ; 3 uses
  %.not = icmp eq i8 %5, 1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !39
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %6 = icmp ne i8 %5, 0
  %i.i = icmp sgt i64 %2, 0
  %7 = and i1 %6, %i.i
  br i1 %7, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !296, !nonnull !78, !align !141 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !117
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %5, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.h, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 2 uses
  %i.n = load i16, ptr %i.l, align 2, !tbaa !143
  %.not46 = icmp eq i16 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !291

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !117
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !296, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !117 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 16
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !117
  %i.ad = load <8 x i16>, ptr %.promoted53.prol, align 2, !tbaa !143
  %i.ae = icmp ne <8 x i16> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !39
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !296, !nonnull !78, !align !141 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !117 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 16
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !117
  %i.aj = load <8 x i16>, ptr %.promoted53, align 2, !tbaa !143
  %i.ak = icmp ne <8 x i16> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !39
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !296, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !117 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 16
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !117
  %i.ap = load <8 x i16>, ptr %.promoted53.1, align 2, !tbaa !143
  %i.aq = icmp ne <8 x i16> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !39
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !292

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !296, !nonnull !78, !align !141 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !117 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.ba = load i16, ptr %i.ay, align 2, !tbaa !143
  %.not47 = icmp eq i16 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bf = load i16, ptr %i.az, align 2, !tbaa !143
  %.not47.1 = icmp eq i16 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 6
  %i.bk = load i16, ptr %i.be, align 2, !tbaa !143
  %.not47.2 = icmp eq i16 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.bp = load i16, ptr %i.bj, align 2, !tbaa !143
  %.not47.3 = icmp eq i16 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !293

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %i.bv = load i16, ptr %i.bt, align 2, !tbaa !143
  %.not47.epil = icmp eq i16 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !294

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 1
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !117
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int32TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !39        ; 3 uses
  %.not = icmp eq i8 %5, 1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !39
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %6 = icmp ne i8 %5, 0
  %i.i = icmp sgt i64 %2, 0
  %7 = and i1 %6, %i.i
  br i1 %7, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !302, !nonnull !78, !align !141 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !121
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %5, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.h, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !8
  %.not46 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !297

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !121
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !302, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !121 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 32
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !121
  %i.ad = load <8 x i32>, ptr %.promoted53.prol, align 4, !tbaa !8
  %i.ae = icmp ne <8 x i32> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !39
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !302, !nonnull !78, !align !141 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !121 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 32
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !121
  %i.aj = load <8 x i32>, ptr %.promoted53, align 4, !tbaa !8
  %i.ak = icmp ne <8 x i32> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !39
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !302, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !121 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 32
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !121
  %i.ap = load <8 x i32>, ptr %.promoted53.1, align 4, !tbaa !8
  %i.aq = icmp ne <8 x i32> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !39
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !298

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !302, !nonnull !78, !align !141 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !121 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !8
  %.not47 = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !8
  %.not47.1 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bk = load i32, ptr %i.be, align 4, !tbaa !8
  %.not47.2 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bj, align 4, !tbaa !8
  %.not47.3 = icmp eq i32 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !299

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !8
  %.not47.epil = icmp eq i32 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !300

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 2
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !121
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt32TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !39        ; 3 uses
  %.not = icmp eq i8 %5, 1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !39
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %6 = icmp ne i8 %5, 0
  %i.i = icmp sgt i64 %2, 0
  %7 = and i1 %6, %i.i
  br i1 %7, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !308, !nonnull !78, !align !141 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !124
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %5, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.h, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load i32, ptr %i.l, align 4, !tbaa !8
  %.not46 = icmp eq i32 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !303

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !124
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !308, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !124 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 32
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !124
  %i.ad = load <8 x i32>, ptr %.promoted53.prol, align 4, !tbaa !8
  %i.ae = icmp ne <8 x i32> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !39
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !308, !nonnull !78, !align !141 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !124 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 32
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !124
  %i.aj = load <8 x i32>, ptr %.promoted53, align 4, !tbaa !8
  %i.ak = icmp ne <8 x i32> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !39
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !308, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !124 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 32
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !124
  %i.ap = load <8 x i32>, ptr %.promoted53.1, align 4, !tbaa !8
  %i.aq = icmp ne <8 x i32> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !39
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !304

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !308, !nonnull !78, !align !141 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !124 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !8
  %.not47 = icmp eq i32 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !8
  %.not47.1 = icmp eq i32 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bk = load i32, ptr %i.be, align 4, !tbaa !8
  %.not47.2 = icmp eq i32 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bj, align 4, !tbaa !8
  %.not47.3 = icmp eq i32 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !305

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bt, align 4, !tbaa !8
  %.not47.epil = icmp eq i32 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !306

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 2
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !124
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9Int64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !39        ; 3 uses
  %.not = icmp eq i8 %5, 1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !39
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %6 = icmp ne i8 %5, 0
  %i.i = icmp sgt i64 %2, 0
  %7 = and i1 %6, %i.i
  br i1 %7, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !314, !nonnull !78, !align !141 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !128
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %5, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.h, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !145
  %.not46 = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !309

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !128
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !314, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 64
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !128
  %i.ad = load <8 x i64>, ptr %.promoted53.prol, align 8, !tbaa !145
  %i.ae = icmp ne <8 x i64> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !39
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !314, !nonnull !78, !align !141 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !128 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 64
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !128
  %i.aj = load <8 x i64>, ptr %.promoted53, align 8, !tbaa !145
  %i.ak = icmp ne <8 x i64> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !39
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !314, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !128 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 64
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !128
  %i.ap = load <8 x i64>, ptr %.promoted53.1, align 8, !tbaa !145
  %i.aq = icmp ne <8 x i64> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !39
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !310

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !314, !nonnull !78, !align !141 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !128 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !145
  %.not47 = icmp eq i64 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !145
  %.not47.1 = icmp eq i64 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !145
  %.not47.2 = icmp eq i64 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !145
  %.not47.3 = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !311

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !145
  %.not47.epil = icmp eq i64 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !312

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 3
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !128
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10UInt64TypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !39        ; 3 uses
  %.not = icmp eq i8 %5, 1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !39
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %6 = icmp ne i8 %5, 0
  %i.i = icmp sgt i64 %2, 0
  %7 = and i1 %6, %i.i
  br i1 %7, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !320, !nonnull !78, !align !141 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !131
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03551 = phi i64 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.03650 = phi i8 [ %5, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.04049 = phi i8 [ %i.h, %.lr.ph ], [ %i.p, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !145
  %.not46 = icmp eq i64 %i.n, 0
  %i.o = select i1 %.not46, i8 0, i8 %.03650
  %i.p = or i8 %i.o, %.04049                      ; 2 uses
  %i.q = shl i8 %.03650, 1                        ; 2 uses
  %i.r = add nsw i64 %.03551, -1                  ; 2 uses
  %i.s = icmp ne i8 %i.q, 0
  %i.t = icmp samesign ugt i64 %.03551, 1
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.d, label %._crit_edge, !llvm.loop !315

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !131
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.p, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.r, %._crit_edge ], [ %2, %bb.c ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.v, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.w = icmp sgt i64 %.1, 7
  br i1 %i.w, label %.preheader48.lr.ph, label %._crit_edge57

.preheader48.lr.ph:                               ; preds = %bb.f
  %i.x = lshr i64 %.1, 3                          ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.z = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.z, 0
  br i1 %lcmp.mod.not, label %.preheader48.prol.loopexit, label %.preheader48.prol

.preheader48.prol:                                ; preds = %.preheader48.lr.ph
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !320, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.prol = load ptr, ptr %i.aa, align 8, !tbaa !131 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted53.prol, i64 64
  %i.ac = add nsw i64 %i.x, -1
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !131
  %i.ad = load <8 x i64>, ptr %.promoted53.prol, align 8, !tbaa !145
  %i.ae = icmp ne <8 x i64> %i.ad, zeroinitializer
  %i.af = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.ae, ptr %.038, align 1, !tbaa !39
  br label %.preheader48.prol.loopexit

.preheader48.prol.loopexit:                       ; preds = %.preheader48.prol, %.preheader48.lr.ph
  %.in.unr = phi i64 [ %i.x, %.preheader48.lr.ph ], [ %i.ac, %.preheader48.prol ]
  %.13956.unr = phi ptr [ %.038, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %.lcssa91.unr = phi ptr [ poison, %.preheader48.lr.ph ], [ %i.af, %.preheader48.prol ]
  %i.ag = icmp eq i64 %i.x, 1
  br i1 %i.ag, label %._crit_edge57, label %.preheader48

.preheader48:                                     ; preds = %.preheader48.prol.loopexit, %.preheader48
  %.in = phi i64 [ %i.ao, %.preheader48 ], [ %.in.unr, %.preheader48.prol.loopexit ] ; 2 uses
  %.13956 = phi ptr [ %i.ar, %.preheader48 ], [ %.13956.unr, %.preheader48.prol.loopexit ] ; 3 uses
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !320, !nonnull !78, !align !141 ; 2 uses
  %.promoted53 = load ptr, ptr %i.ah, align 8, !tbaa !131 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.promoted53, i64 64
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !131
  %i.aj = load <8 x i64>, ptr %.promoted53, align 8, !tbaa !145
  %i.ak = icmp ne <8 x i64> %i.aj, zeroinitializer
  %i.al = getelementptr inbounds nuw i8, ptr %.13956, i64 1
  store <8 x i1> %i.ak, ptr %.13956, align 1, !tbaa !39
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !320, !nonnull !78, !align !141 ; 2 uses
  %.promoted53.1 = load ptr, ptr %i.am, align 8, !tbaa !131 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.promoted53.1, i64 64
  %i.ao = add nsw i64 %.in, -2
  store ptr %i.an, ptr %i.am, align 8, !tbaa !131
  %i.ap = load <8 x i64>, ptr %.promoted53.1, align 8, !tbaa !145
  %i.aq = icmp ne <8 x i64> %i.ap, zeroinitializer
  %i.ar = getelementptr inbounds nuw i8, ptr %.13956, i64 2 ; 2 uses
  store <8 x i1> %i.aq, ptr %i.al, align 1, !tbaa !39
  %i.as = icmp sgt i64 %.in, 2
  br i1 %i.as, label %.preheader48, label %._crit_edge57, !llvm.loop !316

._crit_edge57:                                    ; preds = %.preheader48.prol.loopexit, %.preheader48, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa91.unr, %.preheader48.prol.loopexit ], [ %i.ar, %.preheader48 ]
  %i.at = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.at, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge57
  %i.au = icmp sgt i64 %i.at, 0
  br i1 %i.au, label %.lr.ph62, label %bb.i

.lr.ph62:                                         ; preds = %.preheader
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !320, !nonnull !78, !align !141 ; 2 uses
  %.promoted65 = load ptr, ptr %i.aw, align 8, !tbaa !131 ; 3 uses
  %xtraiter95 = and i64 %i.at, 3                  ; 3 uses
  %i.ax = icmp ult i64 %i.at, 4
  br i1 %i.ax, label %.epil.preheader, label %.lr.ph62.new

.lr.ph62.new:                                     ; preds = %.lr.ph62
  %unroll_iter = and i64 %i.at, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph62.new
  %i.ay = phi ptr [ %.promoted65, %.lr.ph62.new ], [ %i.bo, %bb.g ] ; 5 uses
  %.13760 = phi i8 [ 1, %.lr.ph62.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.14159 = phi i8 [ 0, %.lr.ph62.new ], [ %i.br, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph62.new ], [ %niter.next.3, %bb.g ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !145
  %.not47 = icmp eq i64 %i.ba, 0
  %i.bb = select i1 %.not47, i8 0, i8 %.13760
  %i.bc = or i8 %i.bb, %.14159
  %i.bd = shl nuw i8 %.13760, 1
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bf = load i64, ptr %i.az, align 8, !tbaa !145
  %.not47.1 = icmp eq i64 %i.bf, 0
  %i.bg = select i1 %.not47.1, i8 0, i8 %i.bd
  %i.bh = or i8 %i.bg, %i.bc
  %i.bi = shl nuw i8 %.13760, 2
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bk = load i64, ptr %i.be, align 8, !tbaa !145
  %.not47.2 = icmp eq i64 %i.bk, 0
  %i.bl = select i1 %.not47.2, i8 0, i8 %i.bi
  %i.bm = or i8 %i.bl, %i.bh
  %i.bn = shl nuw i8 %.13760, 3
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %i.bp = load i64, ptr %i.bj, align 8, !tbaa !145
  %.not47.3 = icmp eq i64 %i.bp, 0
  %i.bq = select i1 %.not47.3, i8 0, i8 %i.bn
  %i.br = or i8 %i.bq, %i.bm                      ; 3 uses
  %i.bs = shl nuw i8 %.13760, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge63.unr-lcssa, label %bb.g, !llvm.loop !317

._crit_edge63.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod96.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod96.not, label %._crit_edge63, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge63.unr-lcssa, %.lr.ph62
  %.epil.init = phi ptr [ %.promoted65, %.lr.ph62 ], [ %i.bo, %._crit_edge63.unr-lcssa ]
  %.13760.epil.init = phi i8 [ 1, %.lr.ph62 ], [ %i.bs, %._crit_edge63.unr-lcssa ]
  %.14159.epil.init = phi i8 [ 0, %.lr.ph62 ], [ %i.br, %._crit_edge63.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  tail call void @llvm.assume(i1 %lcmp.mod98)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.bt = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bu, %bb.h ] ; 2 uses
  %.13760.epil = phi i8 [ %.13760.epil.init, %.epil.preheader ], [ %i.by, %bb.h ] ; 2 uses
  %.14159.epil = phi i8 [ %.14159.epil.init, %.epil.preheader ], [ %i.bx, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !145
  %.not47.epil = icmp eq i64 %i.bv, 0
  %i.bw = select i1 %.not47.epil, i8 0, i8 %.13760.epil
  %i.bx = or i8 %i.bw, %.14159.epil               ; 2 uses
  %i.by = shl nuw i8 %.13760.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter95
  br i1 %epil.iter.cmp.not, label %._crit_edge63, label %bb.h, !llvm.loop !318

._crit_edge63:                                    ; preds = %bb.h, %._crit_edge63.unr-lcssa
  %.lcssa = phi i8 [ %i.br, %._crit_edge63.unr-lcssa ], [ %i.bx, %bb.h ]
  %i.bz = shl nuw nsw i64 %i.at, 3
  %scevgep = getelementptr i8, ptr %.promoted65, i64 %i.bz
  store ptr %scevgep, ptr %i.aw, align 8, !tbaa !131
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge63, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge63 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge57, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_9FloatTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !39        ; 3 uses
  %.not = icmp eq i8 %5, 1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !39
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %6 = icmp ne i8 %5, 0
  %i.i = icmp sgt i64 %2, 0
  %7 = and i1 %6, %i.i
  br i1 %7, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !326, !nonnull !78, !align !141 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !135
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03549 = phi i64 [ %2, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03648 = phi i8 [ %5, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.04047 = phi i8 [ %i.h, %.lr.ph ], [ %i.q, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = load float, ptr %i.l, align 4, !tbaa !328
  %i.o = fcmp une float %i.n, 0.000000e+00
  %i.p = select i1 %i.o, i8 %.03648, i8 0
  %i.q = or i8 %i.p, %.04047                      ; 2 uses
  %i.r = shl i8 %.03648, 1                        ; 2 uses
  %i.s = add nsw i64 %.03549, -1                  ; 2 uses
  %i.t = icmp ne i8 %i.r, 0
  %i.u = icmp samesign ugt i64 %.03549, 1
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %bb.d, label %._crit_edge, !llvm.loop !321

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !135
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.q, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %2, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.w, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.x = icmp sgt i64 %.1, 7
  br i1 %i.x, label %.preheader46.lr.ph, label %._crit_edge55

.preheader46.lr.ph:                               ; preds = %bb.f
  %i.y = lshr i64 %.1, 3                          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aa = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %.preheader46.prol.loopexit, label %.preheader46.prol

.preheader46.prol:                                ; preds = %.preheader46.lr.ph
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !326, !nonnull !78, !align !141 ; 2 uses
  %.promoted51.prol = load ptr, ptr %i.ab, align 8, !tbaa !135 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted51.prol, i64 32
  %i.ad = add nsw i64 %i.y, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !135
  %i.ae = load <8 x float>, ptr %.promoted51.prol, align 4, !tbaa !328
  %i.af = fcmp une <8 x float> %i.ae, zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.af, ptr %.038, align 1, !tbaa !39
  br label %.preheader46.prol.loopexit

.preheader46.prol.loopexit:                       ; preds = %.preheader46.prol, %.preheader46.lr.ph
  %.in.unr = phi i64 [ %i.y, %.preheader46.lr.ph ], [ %i.ad, %.preheader46.prol ]
  %.13954.unr = phi ptr [ %.038, %.preheader46.lr.ph ], [ %i.ag, %.preheader46.prol ]
  %.lcssa82.unr = phi ptr [ poison, %.preheader46.lr.ph ], [ %i.ag, %.preheader46.prol ]
  %i.ah = icmp eq i64 %i.y, 1
  br i1 %i.ah, label %._crit_edge55, label %.preheader46

.preheader46:                                     ; preds = %.preheader46.prol.loopexit, %.preheader46
  %.in = phi i64 [ %i.ap, %.preheader46 ], [ %.in.unr, %.preheader46.prol.loopexit ] ; 2 uses
  %.13954 = phi ptr [ %i.as, %.preheader46 ], [ %.13954.unr, %.preheader46.prol.loopexit ] ; 3 uses
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !326, !nonnull !78, !align !141 ; 2 uses
  %.promoted51 = load ptr, ptr %i.ai, align 8, !tbaa !135 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.promoted51, i64 32
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !135
  %i.ak = load <8 x float>, ptr %.promoted51, align 4, !tbaa !328
  %i.al = fcmp une <8 x float> %i.ak, zeroinitializer
  %i.am = getelementptr inbounds nuw i8, ptr %.13954, i64 1
  store <8 x i1> %i.al, ptr %.13954, align 1, !tbaa !39
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !326, !nonnull !78, !align !141 ; 2 uses
  %.promoted51.1 = load ptr, ptr %i.an, align 8, !tbaa !135 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.promoted51.1, i64 32
  %i.ap = add nsw i64 %.in, -2
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !135
  %i.aq = load <8 x float>, ptr %.promoted51.1, align 4, !tbaa !328
  %i.ar = fcmp une <8 x float> %i.aq, zeroinitializer
  %i.as = getelementptr inbounds nuw i8, ptr %.13954, i64 2 ; 2 uses
  store <8 x i1> %i.ar, ptr %i.am, align 1, !tbaa !39
  %i.at = icmp sgt i64 %.in, 2
  br i1 %i.at, label %.preheader46, label %._crit_edge55, !llvm.loop !322

._crit_edge55:                                    ; preds = %.preheader46.prol.loopexit, %.preheader46, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa82.unr, %.preheader46.prol.loopexit ], [ %i.as, %.preheader46 ]
  %i.au = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.au, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph60, label %bb.i

.lr.ph60:                                         ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !326, !nonnull !78, !align !141 ; 2 uses
  %.promoted63 = load ptr, ptr %i.ax, align 8, !tbaa !135 ; 3 uses
  %xtraiter86 = and i64 %i.au, 3                  ; 3 uses
  %i.ay = icmp ult i64 %i.au, 4
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.au, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph60.new
  %i.az = phi ptr [ %.promoted63, %.lr.ph60.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.bx, %bb.g ] ; 5 uses
  %.14157 = phi i8 [ 0, %.lr.ph60.new ], [ %i.bw, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.3, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load float, ptr %i.az, align 4, !tbaa !328
  %i.bc = fcmp une float %i.bb, 0.000000e+00
  %i.bd = select i1 %i.bc, i8 %.13758, i8 0
  %i.be = or i8 %i.bd, %.14157
  %i.bf = shl nuw i8 %.13758, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bh = load float, ptr %i.ba, align 4, !tbaa !328
  %i.bi = fcmp une float %i.bh, 0.000000e+00
  %i.bj = select i1 %i.bi, i8 %i.bf, i8 0
  %i.bk = or i8 %i.bj, %i.be
  %i.bl = shl nuw i8 %.13758, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bn = load float, ptr %i.bg, align 4, !tbaa !328
  %i.bo = fcmp une float %i.bn, 0.000000e+00
  %i.bp = select i1 %i.bo, i8 %i.bl, i8 0
  %i.bq = or i8 %i.bp, %i.bk
  %i.br = shl nuw i8 %.13758, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bt = load float, ptr %i.bm, align 4, !tbaa !328
  %i.bu = fcmp une float %i.bt, 0.000000e+00
  %i.bv = select i1 %i.bu, i8 %i.br, i8 0
  %i.bw = or i8 %i.bv, %i.bq                      ; 3 uses
  %i.bx = shl nuw i8 %.13758, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge61.unr-lcssa, label %bb.g, !llvm.loop !323

._crit_edge61.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.unr-lcssa, %.lr.ph60
  %.epil.init = phi ptr [ %.promoted63, %.lr.ph60 ], [ %i.bs, %._crit_edge61.unr-lcssa ]
  %.13758.epil.init = phi i8 [ 1, %.lr.ph60 ], [ %i.bx, %._crit_edge61.unr-lcssa ]
  %.14157.epil.init = phi i8 [ 0, %.lr.ph60 ], [ %i.bw, %._crit_edge61.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter86, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.by = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bz, %bb.h ] ; 2 uses
  %.13758.epil = phi i8 [ %.13758.epil.init, %.epil.preheader ], [ %i.ce, %bb.h ] ; 2 uses
  %.14157.epil = phi i8 [ %.14157.epil.init, %.epil.preheader ], [ %i.cd, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load float, ptr %i.by, align 4, !tbaa !328
  %i.cb = fcmp une float %i.ca, 0.000000e+00
  %i.cc = select i1 %i.cb, i8 %.13758.epil, i8 0
  %i.cd = or i8 %i.cc, %.14157.epil               ; 2 uses
  %i.ce = shl nuw i8 %.13758.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter86
  br i1 %epil.iter.cmp.not, label %._crit_edge61, label %bb.h, !llvm.loop !324

._crit_edge61:                                    ; preds = %bb.h, %._crit_edge61.unr-lcssa
  %.lcssa = phi i8 [ %i.bw, %._crit_edge61.unr-lcssa ], [ %i.cd, %bb.h ]
  %i.cf = shl nuw nsw i64 %i.au, 2
  %scevgep = getelementptr i8, ptr %.promoted63, i64 %i.cf
  store ptr %scevgep, ptr %i.ax, align 8, !tbaa !135
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge61, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge61 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge55, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal20GenerateBitsUnrolledIZNS_7compute8internal10applicator11ScalarUnaryINS_11BooleanTypeENS_10DoubleTypeENS3_9IsNonZeroEE4ExecEPNS2_13KernelContextERKNS2_8ExecSpanEPNS2_10ExecResultEEUlvE_EEvPhllOT_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %1, 8
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b ; 4 uses
  %i.d = srem i64 %1, 8                           ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.d
  %5 = load i8, ptr %4, align 1, !tbaa !39        ; 3 uses
  %.not = icmp eq i8 %5, 1
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !39
  %i.f = trunc nsw i64 %i.d to i8
  %notmask = shl nsw i8 -1, %i.f
  %i.g = xor i8 %notmask, -1
  %i.h = and i8 %i.e, %i.g                        ; 2 uses
  %6 = icmp ne i8 %5, 0
  %i.i = icmp sgt i64 %2, 0
  %7 = and i1 %6, %i.i
  br i1 %7, label %.lr.ph, label %bb.e

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !334, !nonnull !78, !align !141 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8, !tbaa !139
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %bb.d ] ; 2 uses
  %.03549 = phi i64 [ %2, %.lr.ph ], [ %i.s, %bb.d ] ; 2 uses
  %.03648 = phi i8 [ %5, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.04047 = phi i8 [ %i.h, %.lr.ph ], [ %i.q, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.n = load double, ptr %i.l, align 8, !tbaa !336
  %i.o = fcmp une double %i.n, 0.000000e+00
  %i.p = select i1 %i.o, i8 %.03648, i8 0
  %i.q = or i8 %i.p, %.04047                      ; 2 uses
  %i.r = shl i8 %.03648, 1                        ; 2 uses
  %i.s = add nsw i64 %.03549, -1                  ; 2 uses
  %i.t = icmp ne i8 %i.r, 0
  %i.u = icmp samesign ugt i64 %.03549, 1
  %i.v = select i1 %i.t, i1 %i.u, i1 false
  br i1 %i.v, label %bb.d, label %._crit_edge, !llvm.loop !329

._crit_edge:                                      ; preds = %bb.d
  store ptr %i.m, ptr %i.k, align 8, !tbaa !139
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %.040.lcssa = phi i8 [ %i.q, %._crit_edge ], [ %i.h, %bb.c ]
  %.035.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %2, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %.040.lcssa, ptr %i.c, align 1, !tbaa !39
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.038 = phi ptr [ %i.w, %bb.e ], [ %i.c, %bb.b ] ; 4 uses
  %.1 = phi i64 [ %.035.lcssa, %bb.e ], [ %2, %bb.b ] ; 4 uses
  %i.x = icmp sgt i64 %.1, 7
  br i1 %i.x, label %.preheader46.lr.ph, label %._crit_edge55

.preheader46.lr.ph:                               ; preds = %bb.f
  %i.y = lshr i64 %.1, 3                          ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.aa = and i64 %.1, 8
  %lcmp.mod.not = icmp eq i64 %i.aa, 0
  br i1 %lcmp.mod.not, label %.preheader46.prol.loopexit, label %.preheader46.prol

.preheader46.prol:                                ; preds = %.preheader46.lr.ph
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !334, !nonnull !78, !align !141 ; 2 uses
  %.promoted51.prol = load ptr, ptr %i.ab, align 8, !tbaa !139 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.promoted51.prol, i64 64
  %i.ad = add nsw i64 %i.y, -1
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !139
  %i.ae = load <8 x double>, ptr %.promoted51.prol, align 8, !tbaa !336
  %i.af = fcmp une <8 x double> %i.ae, zeroinitializer
  %i.ag = getelementptr inbounds nuw i8, ptr %.038, i64 1 ; 2 uses
  store <8 x i1> %i.af, ptr %.038, align 1, !tbaa !39
  br label %.preheader46.prol.loopexit

.preheader46.prol.loopexit:                       ; preds = %.preheader46.prol, %.preheader46.lr.ph
  %.in.unr = phi i64 [ %i.y, %.preheader46.lr.ph ], [ %i.ad, %.preheader46.prol ]
  %.13954.unr = phi ptr [ %.038, %.preheader46.lr.ph ], [ %i.ag, %.preheader46.prol ]
  %.lcssa82.unr = phi ptr [ poison, %.preheader46.lr.ph ], [ %i.ag, %.preheader46.prol ]
  %i.ah = icmp eq i64 %i.y, 1
  br i1 %i.ah, label %._crit_edge55, label %.preheader46

.preheader46:                                     ; preds = %.preheader46.prol.loopexit, %.preheader46
  %.in = phi i64 [ %i.ap, %.preheader46 ], [ %.in.unr, %.preheader46.prol.loopexit ] ; 2 uses
  %.13954 = phi ptr [ %i.as, %.preheader46 ], [ %.13954.unr, %.preheader46.prol.loopexit ] ; 3 uses
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !334, !nonnull !78, !align !141 ; 2 uses
  %.promoted51 = load ptr, ptr %i.ai, align 8, !tbaa !139 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.promoted51, i64 64
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !139
  %i.ak = load <8 x double>, ptr %.promoted51, align 8, !tbaa !336
  %i.al = fcmp une <8 x double> %i.ak, zeroinitializer
  %i.am = getelementptr inbounds nuw i8, ptr %.13954, i64 1
  store <8 x i1> %i.al, ptr %.13954, align 1, !tbaa !39
  %i.an = load ptr, ptr %i.z, align 8, !tbaa !334, !nonnull !78, !align !141 ; 2 uses
  %.promoted51.1 = load ptr, ptr %i.an, align 8, !tbaa !139 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.promoted51.1, i64 64
  %i.ap = add nsw i64 %.in, -2
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !139
  %i.aq = load <8 x double>, ptr %.promoted51.1, align 8, !tbaa !336
  %i.ar = fcmp une <8 x double> %i.aq, zeroinitializer
  %i.as = getelementptr inbounds nuw i8, ptr %.13954, i64 2 ; 2 uses
  store <8 x i1> %i.ar, ptr %i.am, align 1, !tbaa !39
  %i.at = icmp sgt i64 %.in, 2
  br i1 %i.at, label %.preheader46, label %._crit_edge55, !llvm.loop !330

._crit_edge55:                                    ; preds = %.preheader46.prol.loopexit, %.preheader46, %bb.f
  %.139.lcssa = phi ptr [ %.038, %bb.f ], [ %.lcssa82.unr, %.preheader46.prol.loopexit ], [ %i.as, %.preheader46 ]
  %i.au = srem i64 %.1, 8                         ; 6 uses
  %.not45 = icmp eq i64 %i.au, 0
  br i1 %.not45, label %bb.j, label %.preheader

.preheader:                                       ; preds = %._crit_edge55
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.av, label %.lr.ph60, label %bb.i

.lr.ph60:                                         ; preds = %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !334, !nonnull !78, !align !141 ; 2 uses
  %.promoted63 = load ptr, ptr %i.ax, align 8, !tbaa !139 ; 3 uses
  %xtraiter86 = and i64 %i.au, 3                  ; 3 uses
  %i.ay = icmp ult i64 %i.au, 4
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph60.new

.lr.ph60.new:                                     ; preds = %.lr.ph60
  %unroll_iter = and i64 %i.au, 9223372036854775804
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph60.new
  %i.az = phi ptr [ %.promoted63, %.lr.ph60.new ], [ %i.bs, %bb.g ] ; 5 uses
  %.13758 = phi i8 [ 1, %.lr.ph60.new ], [ %i.bx, %bb.g ] ; 5 uses
  %.14157 = phi i8 [ 0, %.lr.ph60.new ], [ %i.bw, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph60.new ], [ %niter.next.3, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load double, ptr %i.az, align 8, !tbaa !336
  %i.bc = fcmp une double %i.bb, 0.000000e+00
  %i.bd = select i1 %i.bc, i8 %.13758, i8 0
  %i.be = or i8 %i.bd, %.14157
  %i.bf = shl nuw i8 %.13758, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load double, ptr %i.ba, align 8, !tbaa !336
  %i.bi = fcmp une double %i.bh, 0.000000e+00
  %i.bj = select i1 %i.bi, i8 %i.bf, i8 0
  %i.bk = or i8 %i.bj, %i.be
  %i.bl = shl nuw i8 %.13758, 2
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bn = load double, ptr %i.bg, align 8, !tbaa !336
  %i.bo = fcmp une double %i.bn, 0.000000e+00
  %i.bp = select i1 %i.bo, i8 %i.bl, i8 0
  %i.bq = or i8 %i.bp, %i.bk
  %i.br = shl nuw i8 %.13758, 3
  %i.bs = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 2 uses
  %i.bt = load double, ptr %i.bm, align 8, !tbaa !336
  %i.bu = fcmp une double %i.bt, 0.000000e+00
  %i.bv = select i1 %i.bu, i8 %i.br, i8 0
  %i.bw = or i8 %i.bv, %i.bq                      ; 3 uses
  %i.bx = shl nuw i8 %.13758, 4                   ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge61.unr-lcssa, label %bb.g, !llvm.loop !331

._crit_edge61.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod87.not = icmp eq i64 %xtraiter86, 0
  br i1 %lcmp.mod87.not, label %._crit_edge61, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge61.unr-lcssa, %.lr.ph60
  %.epil.init = phi ptr [ %.promoted63, %.lr.ph60 ], [ %i.bs, %._crit_edge61.unr-lcssa ]
  %.13758.epil.init = phi i8 [ 1, %.lr.ph60 ], [ %i.bx, %._crit_edge61.unr-lcssa ]
  %.14157.epil.init = phi i8 [ 0, %.lr.ph60 ], [ %i.bw, %._crit_edge61.unr-lcssa ]
  %lcmp.mod89 = icmp ne i64 %xtraiter86, 0
  tail call void @llvm.assume(i1 %lcmp.mod89)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %i.by = phi ptr [ %.epil.init, %.epil.preheader ], [ %i.bz, %bb.h ] ; 2 uses
  %.13758.epil = phi i8 [ %.13758.epil.init, %.epil.preheader ], [ %i.ce, %bb.h ] ; 2 uses
  %.14157.epil = phi i8 [ %.14157.epil.init, %.epil.preheader ], [ %i.cd, %bb.h ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load double, ptr %i.by, align 8, !tbaa !336
  %i.cb = fcmp une double %i.ca, 0.000000e+00
  %i.cc = select i1 %i.cb, i8 %.13758.epil, i8 0
  %i.cd = or i8 %i.cc, %.14157.epil               ; 2 uses
  %i.ce = shl nuw i8 %.13758.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter86
  br i1 %epil.iter.cmp.not, label %._crit_edge61, label %bb.h, !llvm.loop !332

._crit_edge61:                                    ; preds = %bb.h, %._crit_edge61.unr-lcssa
  %.lcssa = phi i8 [ %i.bw, %._crit_edge61.unr-lcssa ], [ %i.cd, %bb.h ]
  %i.cf = shl nuw nsw i64 %i.au, 3
  %scevgep = getelementptr i8, ptr %.promoted63, i64 %i.cf
  store ptr %scevgep, ptr %i.ax, align 8, !tbaa !139
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge61, %.preheader
  %.141.lcssa = phi i8 [ %.lcssa, %._crit_edge61 ], [ 0, %.preheader ]
  store i8 %.141.lcssa, ptr %.139.lcssa, align 1, !tbaa !39
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge55, %bb.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA25_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(25) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20, !noalias !339
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !339
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !155, !noalias !339, !nonnull !78, !align !141
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(25) %2) #20, !noalias !339
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(25) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !339 ; 0 uses

end_hunk_0
