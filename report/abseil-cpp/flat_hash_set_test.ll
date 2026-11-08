Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/flat_hash_set_test?download=true
inline.NumInlined: 32432
inline.NumDeleted: 6420
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 58
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_152FlatHashSet_PoisonSooAllocMoveConstructSooToSoo_Test8TestBodyEv:bb.a
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #35
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.val2.i.i24 = load i64, ptr %4, align 16       ; 2 uses
  %i.az = and i64 %.val2.i.i24, 255
  %i.ba = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = and i64 %.val2.i.i24, 254
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit35, label %bb.u

bb.u:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  store ptr %4, ptr %1, align 8, !tbaa !376
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINS3_12_GLOBAL__N_19PoisonSooEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSC_SD_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i26 unwind label %bb.v

.noexc.i26:                                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  %.val2.i.i.i27 = load i64, ptr %4, align 16     ; 2 uses
  %i.bd = and i64 %.val2.i.i.i27, 255             ; 2 uses
  %notmask.i.i.i.i.i.i28 = shl nsw i64 -1, %i.bd  ; 4 uses
  %i.be = add nsw i64 %notmask.i.i.i.i.i.i28, 281474976710655
  %i.bf = or i64 %i.be, %notmask.i.i.i.i.i.i28
  %i.bg = icmp eq i64 %i.bf, -1
  call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp samesign ugt i64 %notmask.i.i.i.i.i.i28, -281474976710657
  call void @llvm.assume(i1 %i.bi)
  %i.bj = and i64 %.val2.i.i.i27, 65536
  %.not.i.i.i.i.i29 = icmp ne i64 %i.bj, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i30 = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.bk = xor i64 %notmask.i.i.i.i.i.i28, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.bk, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i30, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i29)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit35 unwind label %bb.v

bb.v:                                             ; preds = %.noexc.i26, %bb.u
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  call void @__clang_call_terminate(ptr %i.bm) #35
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit35: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit, %.noexc.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  ret void

bb.w:                                             ; preds = %_ZN7testing7MessageD2Ev.exit20, %bb.g
  %.pn10.pn.pn = phi { ptr, i32 } [ %.pn10.pn, %_ZN7testing7MessageD2Ev.exit20 ], [ %i.o, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.f
  %.pn10.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn10.pn.pn, %bb.w ], [ %i.n, %bb.f ]
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %.pn10.pn.pn.pn.pn
}

declare void @_ZN4absl12lts_2026052618container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_153FlatHashSet_PoisonSooMoveAssignFullSooToEmptySoo_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_153FlatHashSet_PoisonSooMoveAssignFullSooToEmptySoo_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_153FlatHashSet_PoisonSooMoveAssignFullSooToEmptySoo_TestE, i64 16), ptr %i.a, align 8, !tbaa !119
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_153FlatHashSet_PoisonSooMoveAssignFullSooToEmptySoo_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_153FlatHashSet_PoisonSooMoveAssignFullSooToEmptySoo_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.520, align 8            ; 4 uses
  %2 = alloca %class.anon.520, align 8            ; 4 uses
  %3 = alloca %class.anon.520, align 8            ; 4 uses
  %4 = alloca %"class.absl::lts_20260526::container_internal::(anonymous namespace)::PoisonSoo", align 8 ; 7 uses
  %5 = alloca %"class.absl::lts_20260526::flat_hash_set.435", align 16 ; 16 uses
  %6 = alloca %"class.absl::lts_20260526::flat_hash_set.435", align 16 ; 20 uses
  %7 = alloca %"struct.std::pair.447", align 8    ; 6 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %9 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.451", align 8 ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i64 0, ptr %4, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i64 1, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i64 1, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2274)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2279)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE22find_or_prepare_insertIS5_EESt4pairINS7_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !350, !range !98, !alias.scope !2280, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit

bb.b:                                             ; preds = %.noexc
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !2280
  %.val.i.i.i.i.i.i = load i64, ptr %4, align 8, !tbaa !347, !noalias !2280
  store i64 %.val.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !347, !noalias !2280
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit: ; preds = %bb.b, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %.val2.i.i.i.i.i = load i64, ptr %6, align 16   ; 2 uses
  %i.d = and i64 %.val2.i.i.i.i.i, 255
  %i.e = icmp ne i64 %i.d, 0
  call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %.val2.i.i.i.i.i, 254
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE15destructor_implEv.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %6, ptr %3, align 8, !tbaa !376
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 8, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINS3_12_GLOBAL__N_19PoisonSooEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSC_SD_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.val2.i.i.i.i.i.i = load i64, ptr %6, align 16 ; 2 uses
  %i.h = and i64 %.val2.i.i.i.i.i.i, 255          ; 2 uses
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.h ; 4 uses
  %i.i = add nsw i64 %notmask.i.i.i.i.i.i.i.i.i, 281474976710655
  %i.j = or i64 %i.i, %notmask.i.i.i.i.i.i.i.i.i
  %i.k = icmp eq i64 %i.j, -1
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp ne i64 %i.h, 0
  call void @llvm.assume(i1 %i.l)
  %i.m = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.m)
  %i.n = and i64 %.val2.i.i.i.i.i.i, 65536
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.n, 0
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !107
  %i.p = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.p, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE15destructor_implEv.exit.i.i.i.i unwind label %bb.f

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE15destructor_implEv.exit.i.i.i.i: ; preds = %.noexc.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit
  %.val.i.i.i.i = load i64, ptr %5, align 16      ; 3 uses
  %i.q = trunc i64 %.val.i.i.i.i to i8
  %i.r = icmp ult i8 %i.q, -100
  %i.s = and i64 %.val.i.i.i.i, 255
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.s
  %i.t = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i, -3
  %i.u = select i1 %i.r, i1 %i.t, i1 false
  %.not.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i, 131071
  %i.v = and i1 %.not.i.i.i.i.i.i, %i.u
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE15destructor_implEv.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, ptr noundef nonnull readonly align 16 dereferenceable(24) %5, i64 24, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE15destructor_implEv.exit.i.i.i.i
  %i.w = load <2 x i64>, ptr %5, align 16, !tbaa !347
  store <2 x i64> %i.w, ptr %6, align 16, !tbaa !107
  br label %bb.g

bb.f:                                             ; preds = %.noexc.i.i, %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #35
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.e
  store i64 1, ptr %5, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %.val = load i64, ptr %4, align 8, !tbaa !347
  store i64 %.val, ptr %9, align 8, !tbaa !347, !alias.scope !2281
  invoke fastcc void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_27UnorderedElementsAreMatcherISt5tupleIJN4absl12lts_2026052618container_internal12_GLOBAL__N_19PoisonSooEEEEEEclINS5_13flat_hash_setIS8_NS5_13hash_internal4HashIS8_EESt8equal_toIS8_ESaIS8_EEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull @.str.178, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %i.z = load i8, ptr %8, align 8, !tbaa !161, !range !98, !noundef !99
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.t, label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %bb.aa

bb.j:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.z

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !104
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.m, %bb.l
  %i.ag = phi ptr [ %i.af, %bb.m ], [ @.str.175, %bb.l ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %11, i32 noundef 1, ptr noundef nonnull @.str.108, i32 noundef 278, ptr noundef %i.ag)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.ah = load ptr, ptr %10, align 8, !tbaa !164  ; 3 uses
  %.not.i.i15 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i15, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.o
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !119
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(128) %i.ah) #36, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.o, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  br label %bb.t

bb.p:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit18

bb.q:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #36
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn9 = phi { ptr, i32 } [ %i.an, %bb.r ], [ %i.am, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.ao = load ptr, ptr %10, align 8, !tbaa !164  ; 3 uses
  %.not.i.i16 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i16, label %_ZN7testing7MessageD2Ev.exit18, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i17

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i17: ; preds = %bb.s
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !119
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(128) %i.ao) #36, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit18

_ZN7testing7MessageD2Ev.exit18:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i17, %bb.s, %bb.p
  %.pn9.pn = phi { ptr, i32 } [ %i.al, %bb.p ], [ %.pn9, %bb.s ], [ %.pn9, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i17 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #36
  br label %bb.z

bb.t:                                             ; preds = %bb.h, %_ZN7testing7MessageD2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !162 ; 4 uses
  %.not.i.i19 = icmp eq ptr %i.at, null
  br i1 %.not.i.i19, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !104 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.u
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !107
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.t, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %.val2.i.i = load i64, ptr %6, align 16         ; 2 uses
  %i.az = and i64 %.val2.i.i, 255
  %i.ba = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %i.ba)
  %i.bb = and i64 %.val2.i.i, 254
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %6, ptr %2, align 8, !tbaa !376
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef 8, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINS3_12_GLOBAL__N_19PoisonSooEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSC_SD_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.w

.noexc.i:                                         ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.val2.i.i.i = load i64, ptr %6, align 16       ; 2 uses
  %i.bd = and i64 %.val2.i.i.i, 255               ; 2 uses
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bd    ; 4 uses
  %i.be = add nsw i64 %notmask.i.i.i.i.i.i, 281474976710655
  %i.bf = or i64 %i.be, %notmask.i.i.i.i.i.i
  %i.bg = icmp eq i64 %i.bf, -1
  call void @llvm.assume(i1 %i.bg)
  %i.bh = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %i.bh)
  %i.bi = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.bi)
  %i.bj = and i64 %.val2.i.i.i, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.bj, 0
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !107
  %i.bl = xor i64 %notmask.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.bl, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit unwind label %bb.w

bb.w:                                             ; preds = %.noexc.i, %bb.v
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #35
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.val2.i.i20 = load i64, ptr %5, align 16       ; 2 uses
  %i.bo = and i64 %.val2.i.i20, 255
  %i.bp = icmp ne i64 %i.bo, 0
  call void @llvm.assume(i1 %i.bp)
  %i.bq = and i64 %.val2.i.i20, 254
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit31, label %bb.x

bb.x:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  store ptr %5, ptr %1, align 8, !tbaa !376
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef 8, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINS3_12_GLOBAL__N_19PoisonSooEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSC_SD_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i22 unwind label %bb.y

.noexc.i22:                                       ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_153FlatHashSet_PoisonSooMoveAssignFullSooToEmptySoo_Test8TestBodyEv:bb.a
  %i.bv = icmp eq i64 %i.bu, -1
  call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %i.bw)
  %i.bx = icmp samesign ugt i64 %notmask.i.i.i.i.i.i24, -281474976710657
  call void @llvm.assume(i1 %i.bx)
  %i.by = and i64 %.val2.i.i.i23, 65536
  %.not.i.i.i.i.i25 = icmp ne i64 %i.by, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i26 = load ptr, ptr %i.bz, align 8, !tbaa !107
  %i.ca = xor i64 %notmask.i.i.i.i.i.i24, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.ca, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i26, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i25)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit31 unwind label %bb.y

bb.y:                                             ; preds = %.noexc.i22, %bb.x
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #35
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit31: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit, %.noexc.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.z:                                             ; preds = %_ZN7testing7MessageD2Ev.exit18, %bb.j
  %.pn9.pn.pn = phi { ptr, i32 } [ %.pn9.pn, %_ZN7testing7MessageD2Ev.exit18 ], [ %i.ac, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.i
  %.pn9.pn.pn.pn = phi { ptr, i32 } [ %.pn9.pn.pn, %bb.z ], [ %i.ab, %bb.i ]
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  resume { ptr, i32 } %.pn9.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_152FlatHashSet_PoisonSooMoveAssignFullSooToFullSoo_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_152FlatHashSet_PoisonSooMoveAssignFullSooToFullSoo_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_152FlatHashSet_PoisonSooMoveAssignFullSooToFullSoo_TestE, i64 16), ptr %i.a, align 8, !tbaa !119
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_152FlatHashSet_PoisonSooMoveAssignFullSooToFullSoo_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_152FlatHashSet_PoisonSooMoveAssignFullSooToFullSoo_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.520, align 8            ; 4 uses
  %2 = alloca %class.anon.520, align 8            ; 4 uses
  %3 = alloca %class.anon.520, align 8            ; 4 uses
  %4 = alloca %"class.absl::lts_20260526::container_internal::(anonymous namespace)::PoisonSoo", align 8 ; 7 uses
  %5 = alloca %"class.absl::lts_20260526::container_internal::(anonymous namespace)::PoisonSoo", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20260526::flat_hash_set.435", align 16 ; 16 uses
  %7 = alloca %"class.absl::lts_20260526::flat_hash_set.435", align 16 ; 21 uses
  %8 = alloca %"struct.std::pair.447", align 8    ; 6 uses
  %9 = alloca %"struct.std::pair.447", align 8    ; 6 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.451", align 8 ; 5 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i64 0, ptr %4, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i64 1, ptr %5, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i64 1, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store i64 1, ptr %7, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2310)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2313)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE22find_or_prepare_insertIS5_EESt4pairINS7_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !350, !range !98, !alias.scope !2314, !noundef !99
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit

bb.b:                                             ; preds = %.noexc
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !2314
  %.val.i.i.i.i.i.i = load i64, ptr %4, align 8, !tbaa !347, !noalias !2314
  store i64 %.val.i.i.i.i.i.i, ptr %.sroa.2.0.copyload.i.i.i.i.i.i, align 8, !tbaa !347, !noalias !2314
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit: ; preds = %bb.b, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  call void @llvm.experimental.noalias.scope.decl(metadata !2315)
  call void @llvm.experimental.noalias.scope.decl(metadata !2316)
  call void @llvm.experimental.noalias.scope.decl(metadata !2317)
  call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  invoke fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE22find_or_prepare_insertIS5_EESt4pairINS7_8iteratorEbERKT_(ptr dead_on_unwind noalias nonnull writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %.noexc20 unwind label %bb.k

.noexc20:                                         ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !350, !range !98, !alias.scope !2321, !noundef !99
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit21

bb.c:                                             ; preds = %.noexc20
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i17 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i.i18 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i17, align 8, !alias.scope !2321
  %.val.i.i.i.i.i.i19 = load i64, ptr %5, align 8, !tbaa !347, !noalias !2321
  store i64 %.val.i.i.i.i.i.i19, ptr %.sroa.2.0.copyload.i.i.i.i.i.i18, align 8, !tbaa !347, !noalias !2321
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit21

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit21: ; preds = %bb.c, %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  %.val2.i.i.i.i.i = load i64, ptr %7, align 16   ; 2 uses
  %i.g = and i64 %.val2.i.i.i.i.i, 255
  %i.h = icmp ne i64 %i.g, 0
  call void @llvm.assume(i1 %i.h)
  %i.i = and i64 %.val2.i.i.i.i.i, 254
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE15destructor_implEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store ptr %7, ptr %3, align 8, !tbaa !376
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 8, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINS3_12_GLOBAL__N_19PoisonSooEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSC_SD_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i.i unwind label %bb.g

.noexc.i.i:                                       ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %.val2.i.i.i.i.i.i = load i64, ptr %7, align 16 ; 2 uses
  %i.k = and i64 %.val2.i.i.i.i.i.i, 255          ; 2 uses
  %notmask.i.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.k ; 4 uses
  %i.l = add nsw i64 %notmask.i.i.i.i.i.i.i.i.i, 281474976710655
  %i.m = or i64 %i.l, %notmask.i.i.i.i.i.i.i.i.i
  %i.n = icmp eq i64 %i.m, -1
  call void @llvm.assume(i1 %i.n)
  %i.o = icmp ne i64 %i.k, 0
  call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.p)
  %i.q = and i64 %.val2.i.i.i.i.i.i, 65536
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !107
  %i.s = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.s, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE15destructor_implEv.exit.i.i.i.i unwind label %bb.g

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE15destructor_implEv.exit.i.i.i.i: ; preds = %.noexc.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit21
  %.val.i.i.i.i = load i64, ptr %6, align 16      ; 3 uses
  %i.t = trunc i64 %.val.i.i.i.i to i8
  %i.u = icmp ult i8 %i.t, -100
  %i.v = and i64 %.val.i.i.i.i, 255
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.v
  %i.w = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i, -3
  %i.x = select i1 %i.u, i1 %i.w, i1 false
  %.not.i.i.i.i.i.i = icmp ugt i64 %.val.i.i.i.i, 131071
  %i.y = and i1 %.not.i.i.i.i.i.i, %i.x
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE15destructor_implEv.exit.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, ptr noundef nonnull readonly align 16 dereferenceable(24) %6, i64 24, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE15destructor_implEv.exit.i.i.i.i
  %i.z = load <2 x i64>, ptr %6, align 16, !tbaa !347
  store <2 x i64> %i.z, ptr %7, align 16, !tbaa !107
  br label %bb.h

bb.g:                                             ; preds = %.noexc.i.i, %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #35
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f
  store i64 1, ptr %6, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %.val = load i64, ptr %4, align 8, !tbaa !347
  store i64 %.val, ptr %11, align 8, !tbaa !347, !alias.scope !2322
  invoke fastcc void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_27UnorderedElementsAreMatcherISt5tupleIJN4absl12lts_2026052618container_internal12_GLOBAL__N_19PoisonSooEEEEEEclINS5_13flat_hash_setIS8_NS5_13hash_internal4HashIS8_EESt8equal_toIS8_ESaIS8_EEEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.178, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  %i.ac = load i8, ptr %10, align 8, !tbaa !161, !range !98, !noundef !99
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.v, label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  br label %bb.ac

bb.k:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEE6insertIS5_Li0EEESt4pairINS7_8iteratorEbERKT_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.ac

bb.l:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  br label %bb.ab

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !162 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !104
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.o, %bb.n
  %i.ak = phi ptr [ %i.aj, %bb.o ], [ @.str.175, %bb.n ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.108, i32 noundef 287, ptr noundef %i.ak)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.al = load ptr, ptr %12, align 8, !tbaa !164  ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.al, null
  br i1 %.not.i.i22, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(128) %i.al) #36, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.q, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  br label %bb.v

bb.r:                                             ; preds = %bb.m
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit25

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #36
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn10 = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %i.aq, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %i.as = load ptr, ptr %12, align 8, !tbaa !164  ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.as, null
  br i1 %.not.i.i23, label %_ZN7testing7MessageD2Ev.exit25, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24: ; preds = %bb.u
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !119
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(128) %i.as) #36, !inline_history !4
  br label %_ZN7testing7MessageD2Ev.exit25

_ZN7testing7MessageD2Ev.exit25:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24, %bb.u, %bb.r
  %.pn10.pn = phi { ptr, i32 } [ %i.ap, %bb.r ], [ %.pn10, %bb.u ], [ %.pn10, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #36
  br label %bb.ab

bb.v:                                             ; preds = %bb.i, %_ZN7testing7MessageD2Ev.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !162 ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i26, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !104 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.w
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !107
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.v, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  %.val2.i.i = load i64, ptr %7, align 16         ; 2 uses
  %i.bd = and i64 %.val2.i.i, 255
  %i.be = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %i.be)
  %i.bf = and i64 %.val2.i.i, 254
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  store ptr %7, ptr %2, align 8, !tbaa !376
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 8, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_17FlatHashSetPolicyINS3_12_GLOBAL__N_19PoisonSooEEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSC_SD_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.y

.noexc.i:                                         ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %.val2.i.i.i = load i64, ptr %7, align 16       ; 2 uses
  %i.bh = and i64 %.val2.i.i.i, 255               ; 2 uses
  %notmask.i.i.i.i.i.i = shl nsw i64 -1, %i.bh    ; 4 uses
  %i.bi = add nsw i64 %notmask.i.i.i.i.i.i, 281474976710655
  %i.bj = or i64 %i.bi, %notmask.i.i.i.i.i.i
  %i.bk = icmp eq i64 %i.bj, -1
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %i.bl)
  %i.bm = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.bm)
  %i.bn = and i64 %.val2.i.i.i, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.bn, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.bo, align 8, !tbaa !107
  %i.bp = xor i64 %notmask.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.bp, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %.noexc.i, %bb.x
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  call void @__clang_call_terminate(ptr %i.br) #35
  unreachable

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  %.val2.i.i27 = load i64, ptr %6, align 16       ; 2 uses
  %i.bs = and i64 %.val2.i.i27, 255
  %i.bt = icmp ne i64 %i.bs, 0
  call void @llvm.assume(i1 %i.bt)
  %i.bu = and i64 %.val2.i.i27, 254
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit38, label %bb.z

bb.z:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyINS1_12_GLOBAL__N_19PoisonSooEEEJEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
end_hunk_1
