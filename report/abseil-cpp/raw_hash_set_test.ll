Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/raw_hash_set_test?download=true
inline.NumInlined: 72231
inline.NumDeleted: 15383
loop-unroll.NumCompletelyUnrolled: 68
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 113
begin_hunk_0_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_130SooTest_ClearAfterReserve_TestINS2_10ValueTableIlLb1ELb1ESaIlEEEE8TestBodyEv:bb.a
  %i.pp = or i64 %i.po, %notmask.i.i.i.i.i.i
  %i.pq = icmp eq i64 %i.pp, -1
  call void @llvm.assume(i1 %i.pq)
  %i.pr = icmp ne i64 %i.pn, 0
  call void @llvm.assume(i1 %i.pr)
  %i.ps = icmp samesign ugt i64 %notmask.i.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.ps)
  %i.pt = and i64 %.val1.i.i.i, 65536
  %.not.i.i.i.i.i263 = icmp ne i64 %i.pt, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.pu = xor i64 %notmask.i.i.i.i.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.pu, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i263)
          to label %_ZNSt6vectorImSaImEED2Ev.exit292.sink.split unwind label %bb.dl

bb.dl:                                            ; preds = %.noexc.i, %bb.dk
  %i.pv = landingpad { ptr, i32 }
          catch ptr null
  %i.pw = extractvalue { ptr, i32 } %i.pv, 0
  call void @__clang_call_terminate(ptr %i.pw) #48
  unreachable

.critedge118:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit161, %.critedge112.preheader
  %.val1.i.i264.pre553 = phi i64 [ %.val1.i.i264.pre, %.critedge112.preheader ], [ %.val1.i.i264.pre552, %_ZN7testing15AssertionResultD2Ev.exit161 ] ; 2 uses
  %.pre477 = and i64 %.val1.i.i264.pre553, 255
  %.pre479 = and i64 %.val1.i.i264.pre553, 254
  %i.px = icmp eq i64 %.pre479, 0
  %i.py = icmp ne i64 %.pre477, 0
  call void @llvm.assume(i1 %i.py)
  br i1 %i.px, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %.critedge118.thread557, %.critedge118
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  store ptr %7, ptr %4, align 8, !tbaa !602
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 8, ptr nonnull %4, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSB_SC_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i266 unwind label %bb.dn

.noexc.i266:                                      ; preds = %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  %.val1.i.i.i267 = load i64, ptr %7, align 8     ; 2 uses
  %i.pz = and i64 %.val1.i.i.i267, 255            ; 2 uses
  %notmask.i.i.i.i.i.i268 = shl nsw i64 -1, %i.pz ; 4 uses
  %i.qa = add nsw i64 %notmask.i.i.i.i.i.i268, 281474976710655
  %i.qb = or i64 %i.qa, %notmask.i.i.i.i.i.i268
  %i.qc = icmp eq i64 %i.qb, -1
  call void @llvm.assume(i1 %i.qc)
  %i.qd = icmp ne i64 %i.pz, 0
  call void @llvm.assume(i1 %i.qd)
  %i.qe = icmp samesign ugt i64 %notmask.i.i.i.i.i.i268, -281474976710657
  call void @llvm.assume(i1 %i.qe)
  %i.qf = and i64 %.val1.i.i.i267, 65536
  %.not.i.i.i.i.i269 = icmp ne i64 %i.qf, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i270 = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.qg = xor i64 %notmask.i.i.i.i.i.i268, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.qg, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i270, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i269)
          to label %bb.do unwind label %bb.dn

bb.dn:                                            ; preds = %.noexc.i266, %bb.dm
  %i.qh = landingpad { ptr, i32 }
          catch ptr null
  %i.qi = extractvalue { ptr, i32 } %i.qh, 0
  call void @__clang_call_terminate(ptr %i.qi) #48
  unreachable

bb.do:                                            ; preds = %.critedge118.thread, %.noexc.i266, %.critedge118
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  %.sroa.0367.0.add = add nuw nsw i64 %.sroa.0367.0.idx454, 8 ; 2 uses
  %.not414 = icmp eq i64 %.sroa.0367.0.add, 88
  br i1 %.not414, label %_ZNSt6vectorImSaImEED2Ev.exit292, label %bb.b

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN7testing7MessageD2Ev.exit257, %bb.cs, %_ZN7testing7MessageD2Ev.exit181, %bb.bg, %bb.as, %bb.w, %bb.d
  %.pn94.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn94.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit257 ], [ %.pn86.pn.pn.pn.pn, %bb.cs ], [ %.pn78.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit181 ], [ %.pn74.pn.pn, %bb.bg ], [ %i.y, %bb.d ], [ %.pn68.pn.pn, %bb.as ], [ %.pn.pn.pn.pn, %bb.w ]
  call fastcc void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 88) #44
  resume { ptr, i32 } %.pn94.pn.pn.pn.pn.pn

.critedge116:                                     ; preds = %bb.ct, %bb.bx, %bb.x
  %.val1.i.i278 = load i64, ptr %7, align 8       ; 2 uses
  %i.qj = and i64 %.val1.i.i278, 255
  %i.qk = icmp ne i64 %i.qj, 0
  call void @llvm.assume(i1 %i.qk)
  %i.ql = and i64 %.val1.i.i278, 254
  %i.qm = icmp eq i64 %i.ql, 0
  br i1 %i.qm, label %_ZNSt6vectorImSaImEED2Ev.exit292.sink.split, label %bb.dp

bb.dp:                                            ; preds = %.critedge116
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  store ptr %7, ptr %3, align 8, !tbaa !602
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 8, ptr nonnull %3, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyIlLb1ELb1EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSB_SC_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i280 unwind label %bb.dq

.noexc.i280:                                      ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  %.val1.i.i.i281 = load i64, ptr %7, align 8     ; 2 uses
  %i.qn = and i64 %.val1.i.i.i281, 255            ; 2 uses
  %notmask.i.i.i.i.i.i282 = shl nsw i64 -1, %i.qn ; 4 uses
  %i.qo = add nsw i64 %notmask.i.i.i.i.i.i282, 281474976710655
  %i.qp = or i64 %i.qo, %notmask.i.i.i.i.i.i282
  %i.qq = icmp eq i64 %i.qp, -1
  call void @llvm.assume(i1 %i.qq)
  %i.qr = icmp ne i64 %i.qn, 0
  call void @llvm.assume(i1 %i.qr)
  %i.qs = icmp samesign ugt i64 %notmask.i.i.i.i.i.i282, -281474976710657
  call void @llvm.assume(i1 %i.qs)
  %i.qt = and i64 %.val1.i.i.i281, 65536
  %.not.i.i.i.i.i283 = icmp ne i64 %i.qt, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i284 = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.qu = xor i64 %notmask.i.i.i.i.i.i282, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.qu, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i284, i64 noundef 8, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i283)
          to label %_ZNSt6vectorImSaImEED2Ev.exit292.sink.split unwind label %bb.dq

bb.dq:                                            ; preds = %.noexc.i280, %bb.dp
  %i.qv = landingpad { ptr, i32 }
          catch ptr null
  %i.qw = extractvalue { ptr, i32 } %i.qv, 0
  call void @__clang_call_terminate(ptr %i.qw) #48
  unreachable

_ZNSt6vectorImSaImEED2Ev.exit292.sink.split:      ; preds = %.noexc.i280, %.critedge116, %.noexc.i, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit292

_ZNSt6vectorImSaImEED2Ev.exit292:                 ; preds = %bb.do, %_ZNSt6vectorImSaImEED2Ev.exit292.sink.split
  call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 88) #44
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_130SooTest_ClearAfterReserve_TestINS5_10ValueTableINS5_10SizedValueILi24EEELb0ELb0ESaIS9_EEEEEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618container_internal12_GLOBAL__N_130SooTest_ClearAfterReserve_TestINS5_10ValueTableINS5_10SizedValueILi24EEELb0ELb0ESaIS9_EEEEEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #47 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618container_internal12_GLOBAL__N_130SooTest_ClearAfterReserve_TestINS2_10ValueTableINS2_10SizedValueILi24EEELb0ELb0ESaIS6_EEEEE, i64 16), ptr %i.a, align 8, !tbaa !141
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #44
  resume { ptr, i32 } %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_130SooTest_ClearAfterReserve_TestINS2_10ValueTableINS2_10SizedValueILi24EEELb0ELb0ESaIS6_EEEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #43
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_130SooTest_ClearAfterReserve_TestINS2_10ValueTableINS2_10SizedValueILi24EEELb0ELb0ESaIS6_EEEE8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.654", align 8 ; 5 uses
  %2 = alloca %"struct.absl::lts_20260526::container_internal::HashKey.654", align 8 ; 5 uses
  %3 = alloca %class.anon.648, align 8            ; 4 uses
  %4 = alloca %class.anon.648, align 8            ; 4 uses
  %5 = alloca %class.anon.648, align 8            ; 4 uses
  %6 = alloca %class.anon.648, align 8            ; 4 uses
  %i.a = alloca i64, align 8                      ; 10 uses
  %7 = alloca %"struct.absl::lts_20260526::container_internal::(anonymous namespace)::ValueTable.630", align 8 ; 41 uses
  %8 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %13 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 10 uses
  %20 = alloca %"class.testing::Message", align 8 ; 8 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %24 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %25 = alloca %"class.testing::Message", align 8 ; 8 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 12 uses
  %30 = alloca %"class.testing::Message", align 8 ; 8 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #47 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.g, ptr noundef nonnull align 8 dereferenceable(88) @constinit.783, i64 88, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.dt
  %.sroa.0388.0.idx466 = phi i64 [ 0, %bb.a ], [ %.sroa.0388.0.add, %bb.dt ] ; 2 uses
  %.sroa.0388.0.ptr = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.0388.0.idx466
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  %i.v = load i64, ptr %.sroa.0388.0.ptr, align 8, !tbaa !166 ; 3 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #43
  store i64 0, ptr %7, align 8
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %._crit_edge, label %bb.c, !prof !233

bb.c:                                             ; preds = %bb.b
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.v, i64 140737488355327)
  invoke void @_ZN4absl12lts_2026052618container_internal24ReserveTableToFitNewSizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %.sroa.speculated.i)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7reserveEm.exit unwind label %bb.d

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7reserveEm.exit: ; preds = %bb.c
  %.pre = load i64, ptr %i.a, align 8, !tbaa !166
  %i.w = icmp eq i64 %.pre, 0
  br i1 %i.w, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.noexc145, %bb.aq, %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7reserveEm.exit, %bb.w
  %.0453 = phi i64 [ %i.cz, %bb.w ], [ 0, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7reserveEm.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #43
  %i.y = trunc i64 %.0453 to i32
  store i32 %i.y, ptr %i.b, align 4, !tbaa !188
  %.val.i = load i64, ptr %7, align 8, !noalias !11822 ; 4 uses
  %i.z = and i64 %.val.i, 254
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph
  %.not.i.i.i285 = icmp ult i64 %.val.i, 131072
  br i1 %.not.i.i.i285, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val3.i.i = load ptr, ptr %i.i, align 8, !tbaa !161, !noalias !11823
  %.val6.i.i = load i64, ptr %.val3.i.i, align 8, !tbaa !166, !noalias !11823
  %sext433 = shl i64 %.0453, 32
  %i.ab = ashr exact i64 %sext433, 32
  %i.ac = icmp eq i64 %.val6.i.i, %i.ab
  br i1 %i.ac, label %.noexc122.thread403, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43, !noalias !11823
  store ptr %7, ptr %2, align 8, !tbaa !443, !noalias !11823
  store ptr %i.b, ptr %i.j, align 8, !tbaa !248, !noalias !11823
  %i.ad = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %2, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashINS3_12_GLOBAL__N_110SizedValueILi24EEEEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc122.thread unwind label %bb.l

.noexc122.thread:                                 ; preds = %bb.g
  %i.ae = extractvalue { ptr, ptr } %i.ad, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43, !noalias !11823
  br label %bb.w

bb.h:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !161, !noalias !11824 ; 2 uses
  %i.af = and i64 %.val.i, 255
  %notmask.i.i.i.i.i.i.i = shl nsw i64 -1, %i.af
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i32 0, i32 1, i32 1), !noalias !11824
  %i.ag = lshr i64 %.val.i, 8
  %i.ah = and i64 %i.ag, 255
  %sext432 = shl i64 %.0453, 32
  %i.ai = ashr exact i64 %sext432, 32             ; 2 uses
  %i.aj = xor i64 %i.ah, %i.ai
  %i.ak = zext i64 %i.aj to i128
  %i.al = mul nuw nsw i128 %i.ak, 8779197792823184629 ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = xor i128 %i.am, %i.al
  %i.ao = trunc i128 %i.an to i64                 ; 3 uses
  %i.ap = xor i64 %notmask.i.i.i.i.i.i.i, -1      ; 2 uses
  %i.aq = lshr i64 %i.ao, 57
  %i.ar = trunc nuw nsw i64 %i.aq to i8
  %.val3.i4.i = load ptr, ptr %i.i, align 8, !tbaa !161, !noalias !11824 ; 2 uses
  %i.as = insertelement <16 x i8> poison, i8 %i.ar, i64 0
  %i.at = shufflevector <16 x i8> %i.as, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.pn.i.i = phi i64 [ %i.ao, %bb.h ], [ %i.bq, %bb.k ]
  %.sroa.14.0.i.i = phi i64 [ 0, %bb.h ], [ %i.bp, %bb.k ] ; 2 uses
  %.sroa.642.0.i.i = and i64 %.pn.i.i, %i.ap      ; 5 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %.val3.i4.i, i64 %.sroa.642.0.i.i
  call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1), !noalias !11824
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i, i64 %.sroa.642.0.i.i
  %i.aw = load <16 x i8>, ptr %i.av, align 1, !tbaa !161, !noalias !11824 ; 2 uses
  %i.ax = icmp eq <16 x i8> %i.at, %i.aw
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %i.az = zext i16 %i.ay to i32
  %i.ba = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.az) #49, !srcloc !240 ; 2 uses
  %.not70.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not70.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.critedge.i.i.i
  %.sroa.027.071.i.i = phi i32 [ %i.bi, %.critedge.i.i.i ], [ %i.ba, %bb.i ] ; 3 uses
  %i.bb = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.027.071.i.i, i1 true)
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = add nuw i64 %.sroa.642.0.i.i, %i.bc
  %i.be = and i64 %i.bd, %i.ap
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %.val3.i4.i, i64 %i.be
  %.val5.i.i = load i64, ptr %i.bf, align 8, !tbaa !166, !noalias !11824
  %i.bg = icmp eq i64 %.val5.i.i, %i.ai
  br i1 %i.bg, label %.noexc122.thread403, label %.critedge.i.i.i, !prof !241

.critedge.i.i.i:                                  ; preds = %.lr.ph.i.i
  %i.bh = add i32 %.sroa.027.071.i.i, -1
  %i.bi = and i32 %i.bh, %.sroa.027.071.i.i       ; 2 uses
  %.not.i.i283 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i283, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.critedge.i.i.i, %bb.i
  %i.bj = icmp eq <16 x i8> %i.aw, splat (i8 -128)
  %i.bk = bitcast <16 x i1> %i.bj to i16
  %i.bl = zext i16 %i.bk to i32
  %i.bm = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.bl) #49, !srcloc !240 ; 2 uses
  %.not64.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not64.i.i, label %bb.k, label %bb.j, !prof !233

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.bn = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.ao, i32 %i.bm, i64 %.sroa.642.0.i.i, i64 %.sroa.14.0.i.i)
          to label %.noexc122.thread406 unwind label %bb.l

.noexc122.thread406:                              ; preds = %bb.j
  %.val.i.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !161, !noalias !11824
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %.val.i.pre.i.i, i64 %i.bn
  br label %bb.w

bb.k:                                             ; preds = %._crit_edge.i.i
  %i.bp = add i64 %.sroa.14.0.i.i, 16             ; 2 uses
  %i.bq = add i64 %i.bp, %.sroa.642.0.i.i
  br label %bb.i

bb.l:                                             ; preds = %bb.j, %bb.g
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  br label %bb.x

.noexc122.thread403:                              ; preds = %bb.f, %.lr.ph.i.i
  store i8 0, ptr %8, align 8, !tbaa !179
  store ptr null, ptr %i.k, align 8, !tbaa !189
  store i8 1, ptr %i.l, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %.noexc122.thread403
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #43
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.776, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319)
          to label %bb.n unwind label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %12, align 8, !tbaa !160
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !165
  store i64 %i.bu, ptr %11, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.bs, ptr %i.bv, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, i64 82, ptr nonnull @.str.2, i32 noundef 1246, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %11)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #43
  %i.bw = load ptr, ptr %12, align 8, !tbaa !160  ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052618container_internal12_GLOBAL__N_130SooTest_ClearAfterReserve_TestINS2_10ValueTableINS2_10SizedValueILi24EEELb0ELb0ESaIS6_EEEE8TestBodyEv:bb.a
  store i8 1, ptr %19, align 8, !tbaa !179
  store ptr null, ptr %i.o, align 8, !tbaa !189
  store i8 0, ptr %i.p, align 8, !tbaa !191
  br label %.loopexit

bb.bm:                                            ; preds = %.lr.ph.i.i289
  %i.gu = add i32 %.sroa.020.051.i.i, -1
  %i.gv = and i32 %i.gu, %.sroa.020.051.i.i       ; 2 uses
  %.not.i.i290 = icmp eq i32 %i.gv, 0
  br i1 %.not.i.i290, label %._crit_edge.i.i291, label %.lr.ph.i.i289

._crit_edge.i.i291:                               ; preds = %bb.bm, %bb.bl
  %i.gw = icmp eq <16 x i8> %i.gj, splat (i8 -128)
  %i.gx = bitcast <16 x i1> %i.gw to i16
  %i.gy = zext i16 %i.gx to i32
  %i.gz = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gy) #49, !srcloc !240
  %.not48.i.i = icmp eq i32 %i.gz, 0
  br i1 %.not48.i.i, label %bb.bn, label %.critedge, !prof !233

bb.bn:                                            ; preds = %._crit_edge.i.i291
  %i.ha = add i64 %.sroa.13.0.i.i, 16             ; 2 uses
  %i.hb = add i64 %i.ha, %.sroa.629.0.i.i
  br label %bb.bl, !llvm.loop !58

.loopexit:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE10find_largeIS6_EENS8_8iteratorERKS6_m.exit.i, %.thread37.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bo unwind label %bb.bt

bb.bo:                                            ; preds = %.loopexit
  %i.hc = load ptr, ptr %20, align 8, !tbaa !170
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  %i.he = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.hd, i64 noundef %storemerge456)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit unwind label %bb.bu ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit:           ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #43
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull @.str.778, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.318)
          to label %bb.bp unwind label %bb.bv

bb.bp:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit
  %i.hf = load ptr, ptr %23, align 8, !tbaa !160
  %i.hg = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !165
  store i64 %i.hh, ptr %22, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %i.hf, ptr %i.hi, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, i64 82, ptr nonnull @.str.2, i32 noundef 1252, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %22)
          to label %bb.bq unwind label %bb.bw

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.br unwind label %bb.bx

bb.br:                                            ; preds = %bb.bq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #43
  %i.hj = load ptr, ptr %23, align 8, !tbaa !160  ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165: ; preds = %bb.br
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !161
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i165
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  %i.ho = load ptr, ptr %20, align 8, !tbaa !170  ; 3 uses
  %.not.i.i168 = icmp eq ptr %i.ho, null
  br i1 %.not.i.i168, label %_ZN7testing7MessageD2Ev.exit170, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !141
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load ptr, ptr %i.hq, align 8
  call void %i.hr(ptr noundef nonnull align 8 dereferenceable(128) %i.ho) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit170

_ZN7testing7MessageD2Ev.exit170:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit167, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  %i.hs = load ptr, ptr %i.o, align 8, !tbaa !182 ; 4 uses
  %.not.i.i.i171 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i171, label %bb.ca, label %bb.bs

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit170
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !160 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i172: ; preds = %bb.bs
  %i.hw = load i64, ptr %i.hu, align 8, !tbaa !161
  %i.hx = add i64 %i.hw, 1
  call void @_ZdlPvm(ptr noundef %i.ht, i64 noundef %i.hx) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i173

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i173: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i172
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef 32) #44
  br label %bb.ca

bb.bt:                                            ; preds = %.loopexit
  %i.hy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit181

bb.bu:                                            ; preds = %bb.bo
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.bv:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

bb.bw:                                            ; preds = %bb.bp
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.bx:                                            ; preds = %bb.bq
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #43
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.pn78 = phi { ptr, i32 } [ %i.ic, %bb.bx ], [ %i.ib, %bb.bw ] ; 2 uses
  %i.id = load ptr, ptr %23, align 8, !tbaa !160  ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.if = icmp eq ptr %i.id, %i.ie
  br i1 %i.if, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176: ; preds = %bb.by
  %i.ig = load i64, ptr %i.ie, align 8, !tbaa !161
  %i.ih = add i64 %i.ig, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ih) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176, %bb.bv
  %.pn78.pn = phi { ptr, i32 } [ %i.ia, %bb.bv ], [ %.pn78, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i176 ], [ %.pn78, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #43
  br label %bb.bz

bb.bz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178, %bb.bu
  %.pn78.pn.pn = phi { ptr, i32 } [ %.pn78.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit178 ], [ %i.hz, %bb.bu ] ; 2 uses
  %i.ii = load ptr, ptr %20, align 8, !tbaa !170  ; 3 uses
  %.not.i.i179 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i179, label %_ZN7testing7MessageD2Ev.exit181, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180: ; preds = %bb.bz
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !141
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(128) %i.ii) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit181

_ZN7testing7MessageD2Ev.exit181:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180, %bb.bz, %bb.bt
  %.pn78.pn.pn.pn = phi { ptr, i32 } [ %i.hy, %bb.bt ], [ %.pn78.pn.pn, %bb.bz ], [ %.pn78.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #43
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %19) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit

.critedge:                                        ; preds = %._crit_edge.i.i291, %bb.bj, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE10find_largeIS6_EENS8_8iteratorERKS6_m.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  %i.im = add nuw i64 %storemerge456, 1           ; 2 uses
  %exitcond.not = icmp eq i64 %i.im, %i.fm
  br i1 %exitcond.not, label %.lr.ph462, label %bb.bi, !llvm.loop !11801

bb.ca:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i173, %_ZN7testing7MessageD2Ev.exit170
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #43
  br label %.critedge116

.critedge112.preheader:                           ; preds = %.critedge108
  %.not102.not463.not = icmp eq i64 %i.me, 0
  %.val1.i.i244.pre = load i64, ptr %7, align 8   ; 7 uses
  br i1 %.not102.not463.not, label %.critedge112.preheader..critedge118_crit_edge, label %.lr.ph465

.critedge112.preheader..critedge118_crit_edge:    ; preds = %_ZN7testing15AssertionResultD2Ev.exit161, %.critedge112.preheader
  %.val1.i.i244.pre564.a = phi i64 [ %.val1.i.i244.pre, %.critedge112.preheader ], [ %.val1.i.i244.pre562, %_ZN7testing15AssertionResultD2Ev.exit161 ] ; 2 uses
  %.pre490 = and i64 %.val1.i.i244.pre564.a, 255  ; 2 uses
  %.pre491 = shl nsw i64 -1, %.pre490
  br label %.critedge118

.lr.ph465:                                        ; preds = %.critedge112.preheader
  %i.in = and i64 %.val1.i.i244.pre, 254
  %i.io = icmp eq i64 %i.in, 0
  %.sroa.0.0.copyload.i.i.i.i.i335 = load ptr, ptr %i.h, align 8 ; 3 uses
  %i.ip = and i64 %.val1.i.i244.pre, 255          ; 3 uses
  %notmask.i.i.i.i.i.i336 = shl nsw i64 -1, %i.ip ; 3 uses
  %i.iq = lshr i64 %.val1.i.i244.pre, 8
  %i.ir = and i64 %i.iq, 255
  %i.is = xor i64 %notmask.i.i.i.i.i.i336, -1     ; 2 uses
  %.val14.i.i337 = load ptr, ptr %i.i, align 8    ; 3 uses
  %.not.i.i.i355 = icmp ult i64 %.val1.i.i244.pre, 131072
  br i1 %i.io, label %.lr.ph465.split.us.a, label %.lr.ph465.split

.lr.ph465.split.us.a:                             ; preds = %.lr.ph465, %.critedge112.us
  %storemerge93464.us = phi i64 [ %i.ix, %.critedge112.us ], [ 0, %.lr.ph465 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #43
  br i1 %.not.i.i.i355, label %.split.us.sink.split, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE10find_largeIS6_EENS8_8iteratorERKS6_m.exit.i348.us

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE10find_largeIS6_EENS8_8iteratorERKS6_m.exit.i348.us: ; preds = %.lr.ph465.split.us.a
  %i.it = shl i64 %storemerge93464.us, 32
  %i.iu = ashr exact i64 %i.it, 32
  %.val5.i.i357.us = load i64, ptr %.val14.i.i337, align 8, !tbaa !166
  %i.iv = icmp eq i64 %.val5.i.i357.us, %i.iu     ; 2 uses
  %i.iw = zext i1 %i.iv to i8
  store i8 %i.iw, ptr %29, align 8, !tbaa !179
  store ptr null, ptr %i.t, align 8, !tbaa !189
  store i8 1, ptr %i.u, align 8, !tbaa !191
  br i1 %i.iv, label %.critedge112.us, label %.split.us

.critedge112.us:                                  ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE10find_largeIS6_EENS8_8iteratorERKS6_m.exit.i348.us
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  %i.ix = add nuw i64 %storemerge93464.us, 1      ; 2 uses
  %exitcond488.not = icmp eq i64 %i.ix, %i.me
  br i1 %exitcond488.not, label %.critedge118, label %.lr.ph465.split.us.a, !llvm.loop !11802

.lr.ph462:                                        ; preds = %.critedge, %.critedge108
  %storemerge85460 = phi i64 [ %i.md, %.critedge108 ], [ 0, %.critedge ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #43
  %i.iy = trunc i64 %storemerge85460 to i32
  store i32 %i.iy, ptr %i.f, align 4, !tbaa !188
  %.val.i295 = load i64, ptr %7, align 8, !noalias !11826 ; 4 uses
  %i.iz = and i64 %.val.i295, 254
  %i.ja = icmp eq i64 %i.iz, 0
  br i1 %i.ja, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %.lr.ph462
  %.not.i.i.i325 = icmp ult i64 %.val.i295, 131072
  br i1 %.not.i.i.i325, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.val3.i.i326 = load ptr, ptr %i.i, align 8, !tbaa !161, !noalias !11827
  %.val6.i.i327 = load i64, ptr %.val3.i.i326, align 8, !tbaa !166, !noalias !11827
  %sext431 = shl i64 %storemerge85460, 32
  %i.jb = ashr exact i64 %sext431, 32
  %i.jc = icmp eq i64 %.val6.i.i327, %i.jb
  br i1 %i.jc, label %.noexc190.thread419, label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43, !noalias !11827
  store ptr %7, ptr %1, align 8, !tbaa !443, !noalias !11827
  store ptr %i.f, ptr %i.q, align 8, !tbaa !248, !noalias !11827
  %i.jd = invoke { ptr, ptr } @_ZN4absl12lts_2026052618container_internal24PrepareInsertSmallNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %1, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashINS3_12_GLOBAL__N_110SizedValueILi24EEEEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc190.thread unwind label %bb.ci

.noexc190.thread:                                 ; preds = %bb.cd
  %i.je = extractvalue { ptr, ptr } %i.jd, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43, !noalias !11827
  br label %.critedge108

bb.ce:                                            ; preds = %.lr.ph462
  %.sroa.0.0.copyload.i.i.i.i.i.i296 = load ptr, ptr %i.h, align 8, !tbaa !161, !noalias !11828 ; 2 uses
  %i.jf = and i64 %.val.i295, 255
  %notmask.i.i.i.i.i.i.i297 = shl nsw i64 -1, %i.jf
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i.i296, i32 0, i32 1, i32 1), !noalias !11828
  %i.jg = lshr i64 %.val.i295, 8
  %i.jh = and i64 %i.jg, 255
  %sext = shl i64 %storemerge85460, 32
  %i.ji = ashr exact i64 %sext, 32                ; 2 uses
  %i.jj = xor i64 %i.jh, %i.ji
  %i.jk = zext i64 %i.jj to i128
  %i.jl = mul nuw nsw i128 %i.jk, 8779197792823184629 ; 2 uses
  %i.jm = lshr i128 %i.jl, 64
  %i.jn = xor i128 %i.jm, %i.jl
  %i.jo = trunc i128 %i.jn to i64                 ; 3 uses
  %i.jp = xor i64 %notmask.i.i.i.i.i.i.i297, -1   ; 2 uses
  %i.jq = lshr i64 %i.jo, 57
  %i.jr = trunc nuw nsw i64 %i.jq to i8
  %.val3.i4.i299 = load ptr, ptr %i.i, align 8, !tbaa !161, !noalias !11828 ; 2 uses
  %i.js = insertelement <16 x i8> poison, i8 %i.jr, i64 0
  %i.jt = shufflevector <16 x i8> %i.js, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.pn.i.i300 = phi i64 [ %i.jo, %bb.ce ], [ %i.kq, %bb.ch ]
  %.sroa.14.0.i.i301 = phi i64 [ 0, %bb.ce ], [ %i.kp, %bb.ch ] ; 2 uses
  %.sroa.642.0.i.i302 = and i64 %.pn.i.i300, %i.jp ; 5 uses
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %.val3.i4.i299, i64 %.sroa.642.0.i.i302
  call void @llvm.prefetch.p0(ptr %i.ju, i32 0, i32 3, i32 1), !noalias !11828
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i296, i64 %.sroa.642.0.i.i302
  %i.jw = load <16 x i8>, ptr %i.jv, align 1, !tbaa !161, !noalias !11828 ; 2 uses
  %i.jx = icmp eq <16 x i8> %i.jt, %i.jw
  %i.jy = bitcast <16 x i1> %i.jx to i16
  %i.jz = zext i16 %i.jy to i32
  %i.ka = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.jz) #49, !srcloc !240 ; 2 uses
  %.not70.i.i303 = icmp eq i32 %i.ka, 0
  br i1 %.not70.i.i303, label %._crit_edge.i.i309, label %.lr.ph.i.i304

.lr.ph.i.i304:                                    ; preds = %bb.cf, %.critedge.i.i.i307
  %.sroa.027.071.i.i305 = phi i32 [ %i.ki, %.critedge.i.i.i307 ], [ %i.ka, %bb.cf ] ; 3 uses
  %i.kb = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.027.071.i.i305, i1 true)
  %i.kc = zext nneg i32 %i.kb to i64
  %i.kd = add nuw i64 %.sroa.642.0.i.i302, %i.kc
  %i.ke = and i64 %i.kd, %i.jp
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %.val3.i4.i299, i64 %i.ke
  %.val5.i.i306 = load i64, ptr %i.kf, align 8, !tbaa !166, !noalias !11828
  %i.kg = icmp eq i64 %.val5.i.i306, %i.ji
  br i1 %i.kg, label %.noexc190.thread419, label %.critedge.i.i.i307, !prof !241

.critedge.i.i.i307:                               ; preds = %.lr.ph.i.i304
  %i.kh = add i32 %.sroa.027.071.i.i305, -1
  %i.ki = and i32 %i.kh, %.sroa.027.071.i.i305    ; 2 uses
  %.not.i.i308 = icmp eq i32 %i.ki, 0
  br i1 %.not.i.i308, label %._crit_edge.i.i309, label %.lr.ph.i.i304

._crit_edge.i.i309:                               ; preds = %.critedge.i.i.i307, %bb.cf
  %i.kj = icmp eq <16 x i8> %i.jw, splat (i8 -128)
  %i.kk = bitcast <16 x i1> %i.kj to i16
  %i.kl = zext i16 %i.kk to i32
  %i.km = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.kl) #49, !srcloc !240 ; 2 uses
  %.not64.i.i310 = icmp eq i32 %i.km, 0
  br i1 %.not64.i.i310, label %bb.ch, label %bb.cg, !prof !233

bb.cg:                                            ; preds = %._crit_edge.i.i309
  %i.kn = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal18PrepareInsertLargeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_18NonIterableBitMaskIjLi16ELi0EEENS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %i.jo, i32 %i.km, i64 %.sroa.642.0.i.i302, i64 %.sroa.14.0.i.i301)
          to label %.noexc190.thread422 unwind label %bb.ci

.noexc190.thread422:                              ; preds = %bb.cg
  %.val.i.pre.i.i313 = load ptr, ptr %i.i, align 8, !tbaa !161, !noalias !11828
  %i.ko = getelementptr inbounds nuw [24 x i8], ptr %.val.i.pre.i.i313, i64 %i.kn
  br label %.critedge108

bb.ch:                                            ; preds = %._crit_edge.i.i309
  %i.kp = add i64 %.sroa.14.0.i.i301, 16          ; 2 uses
  %i.kq = add i64 %i.kp, %.sroa.642.0.i.i302
  br label %bb.cf

bb.ci:                                            ; preds = %bb.cg, %bb.cd
  %i.kr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  br label %bb.cv

.noexc190.thread419:                              ; preds = %bb.cc, %.lr.ph.i.i304
  store i8 0, ptr %24, align 8, !tbaa !179
  store ptr null, ptr %i.r, align 8, !tbaa !189
  store i8 1, ptr %i.s, align 8, !tbaa !191
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cj unwind label %bb.co

bb.cj:                                            ; preds = %.noexc190.thread419
  %i.ks = load ptr, ptr %25, align 8, !tbaa !170
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %i.ku = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.kt, i64 noundef %storemerge85460)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit193 unwind label %bb.cp ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit193:        ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #43
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %28, ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull @.str.776, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319)
          to label %bb.ck unwind label %bb.cq

bb.ck:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit193
  %i.kv = load ptr, ptr %28, align 8, !tbaa !160
  %i.kw = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !165
  store i64 %i.kx, ptr %27, align 8
  %i.ky = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr %i.kv, ptr %i.ky, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 2, i64 82, ptr nonnull @.str.2, i32 noundef 1255, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %27)
          to label %bb.cl unwind label %bb.cr

bb.cl:                                            ; preds = %bb.ck
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.cm unwind label %bb.cs

bb.cm:                                            ; preds = %bb.cl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #43
  %i.kz = load ptr, ptr %28, align 8, !tbaa !160  ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.lb = icmp eq ptr %i.kz, %i.la
  br i1 %i.lb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196: ; preds = %bb.cm
  %i.lc = load i64, ptr %i.la, align 8, !tbaa !161
  %i.ld = add i64 %i.lc, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.ld) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198: ; preds = %bb.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i196
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  %i.le = load ptr, ptr %25, align 8, !tbaa !170  ; 3 uses
  %.not.i.i199 = icmp eq ptr %i.le, null
  br i1 %.not.i.i199, label %_ZN7testing7MessageD2Ev.exit201, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !141
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 8
  %i.lh = load ptr, ptr %i.lg, align 8
  call void %i.lh(ptr noundef nonnull align 8 dereferenceable(128) %i.le) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit201

_ZN7testing7MessageD2Ev.exit201:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit198, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i200
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  %i.li = load ptr, ptr %i.r, align 8, !tbaa !182 ; 4 uses
  %.not.i.i.i202 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i202, label %bb.cw, label %bb.cn

bb.cn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit201
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !160 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.li, i64 16 ; 2 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203: ; preds = %bb.cn
  %i.lm = load i64, ptr %i.lk, align 8, !tbaa !161
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.ln) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i204

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i204: ; preds = %bb.cn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i203
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef 32) #44
  br label %bb.cw

bb.co:                                            ; preds = %.noexc190.thread419
  %i.lo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit212

bb.cp:                                            ; preds = %bb.cj
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cq:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit193
  %i.lq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

bb.cr:                                            ; preds = %bb.ck
  %i.lr = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cl
  %i.ls = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #43
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.pn86 = phi { ptr, i32 } [ %i.ls, %bb.cs ], [ %i.lr, %bb.cr ] ; 2 uses
  %i.lt = load ptr, ptr %28, align 8, !tbaa !160  ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207: ; preds = %bb.ct
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !161
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lx) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207, %bb.cq
  %.pn86.pn = phi { ptr, i32 } [ %i.lq, %bb.cq ], [ %.pn86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i207 ], [ %.pn86, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #43
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209, %bb.cp
  %.pn86.pn.pn = phi { ptr, i32 } [ %.pn86.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit209 ], [ %i.lp, %bb.cp ] ; 2 uses
  %i.ly = load ptr, ptr %25, align 8, !tbaa !170  ; 3 uses
  %.not.i.i210 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i210, label %_ZN7testing7MessageD2Ev.exit212, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211: ; preds = %bb.cu
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !141
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(128) %i.ly) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit212

_ZN7testing7MessageD2Ev.exit212:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211, %bb.cu, %bb.co
  %.pn86.pn.pn.pn = phi { ptr, i32 } [ %i.lo, %bb.co ], [ %.pn86.pn.pn, %bb.cu ], [ %.pn86.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #43
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %24) #43
  br label %bb.cv

.critedge108:                                     ; preds = %.noexc190.thread422, %.noexc190.thread
  %.sroa.6.0418 = phi ptr [ %i.je, %.noexc190.thread ], [ %i.ko, %.noexc190.thread422 ]
  %.val.i.i.i.i.i.i189 = load i32, ptr %i.f, align 4, !tbaa !188, !noalias !11829
  %i.mc = sext i32 %.val.i.i.i.i.i.i189 to i64
  store i64 %i.mc, ptr %.sroa.6.0418, align 8, !tbaa !166, !noalias !11829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  %i.md = add nuw i64 %storemerge85460, 1         ; 2 uses
  %i.me = load i64, ptr %i.a, align 8, !tbaa !166 ; 4 uses
  %.not92 = icmp ult i64 %i.md, %i.me
  br i1 %.not92, label %.lr.ph462, label %.critedge112.preheader, !llvm.loop !11821

bb.cv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit212, %bb.ci
  %.pn86.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn86.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit212 ], [ %i.kr, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.cw:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i204, %_ZN7testing7MessageD2Ev.exit201
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #43
  br label %.critedge116

.lr.ph465.split:                                  ; preds = %.lr.ph465, %.thread37.i.i354
  %storemerge93464 = phi i64 [ %i.ne, %.thread37.i.i354 ], [ 0, %.lr.ph465 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #43
  %i.mf = shl i64 %storemerge93464, 32
  %i.mg = ashr exact i64 %i.mf, 32                ; 2 uses
  call void @llvm.prefetch.p0(ptr %.sroa.0.0.copyload.i.i.i.i.i335, i32 0, i32 1, i32 1)
  %i.mh = xor i64 %i.ir, %i.mg
  %i.mi = zext i64 %i.mh to i128
  %i.mj = mul nuw nsw i128 %i.mi, 8779197792823184629 ; 2 uses
  %i.mk = lshr i128 %i.mj, 64
  %i.ml = xor i128 %i.mk, %i.mj
  %i.mm = trunc i128 %i.ml to i64                 ; 2 uses
  %i.mn = lshr i64 %i.mm, 57
  %i.mo = trunc nuw nsw i64 %i.mn to i8
  %i.mp = insertelement <16 x i8> poison, i8 %i.mo, i64 0
  %i.mq = shufflevector <16 x i8> %i.mp, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cz, %.lr.ph465.split
  %.pn.i9.i338 = phi i64 [ %i.mm, %.lr.ph465.split ], [ %i.nm, %bb.cz ]
  %.sroa.13.0.i.i339 = phi i64 [ 0, %.lr.ph465.split ], [ %i.nl, %bb.cz ]
  %.sroa.629.0.i.i340 = and i64 %.pn.i9.i338, %i.is ; 4 uses
  %i.mr = getelementptr inbounds nuw [24 x i8], ptr %.val14.i.i337, i64 %.sroa.629.0.i.i340
  call void @llvm.prefetch.p0(ptr %i.mr, i32 0, i32 3, i32 1)
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i335, i64 %.sroa.629.0.i.i340
  %i.mt = load <16 x i8>, ptr %i.ms, align 1, !tbaa !161 ; 2 uses
  %i.mu = icmp eq <16 x i8> %i.mq, %i.mt
  %i.mv = bitcast <16 x i1> %i.mu to i16
  %i.mw = zext i16 %i.mv to i32
  %i.mx = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.mw) #49, !srcloc !240 ; 2 uses
  %.not50.i.i341 = icmp eq i32 %i.mx, 0
  br i1 %.not50.i.i341, label %._crit_edge.i.i346, label %.lr.ph.i.i342

.lr.ph.i.i342:                                    ; preds = %bb.cx, %bb.cy
  %.sroa.020.051.i.i343 = phi i32 [ %i.ng, %bb.cy ], [ %i.mx, %bb.cx ] ; 3 uses
  %i.my = call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.020.051.i.i343, i1 true)
  %i.mz = zext nneg i32 %i.my to i64
  %i.na = add nuw i64 %.sroa.629.0.i.i340, %i.mz
  %i.nb = and i64 %i.na, %i.is
  %i.nc = getelementptr inbounds nuw [24 x i8], ptr %.val14.i.i337, i64 %i.nb
  %.val16.i.i344 = load i64, ptr %i.nc, align 8, !tbaa !166
  %i.nd = icmp eq i64 %.val16.i.i344, %i.mg
  br i1 %i.nd, label %.thread37.i.i354, label %bb.cy, !prof !241

.thread37.i.i354:                                 ; preds = %.lr.ph.i.i342
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i335) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  %i.ne = add nuw i64 %storemerge93464, 1         ; 2 uses
  %exitcond487.not = icmp eq i64 %i.ne, %i.me
  br i1 %exitcond487.not, label %.critedge118, label %.lr.ph465.split, !llvm.loop !11802

bb.cy:                                            ; preds = %.lr.ph.i.i342
  %i.nf = add i32 %.sroa.020.051.i.i343, -1
  %i.ng = and i32 %i.nf, %.sroa.020.051.i.i343    ; 2 uses
  %.not.i.i345 = icmp eq i32 %i.ng, 0
  br i1 %.not.i.i345, label %._crit_edge.i.i346, label %.lr.ph.i.i342

._crit_edge.i.i346:                               ; preds = %bb.cy, %bb.cx
  %i.nh = icmp eq <16 x i8> %i.mt, splat (i8 -128)
  %i.ni = bitcast <16 x i1> %i.nh to i16
  %i.nj = zext i16 %i.ni to i32
  %i.nk = call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.nj) #49, !srcloc !240
  %.not48.i.i347 = icmp eq i32 %i.nk, 0
  br i1 %.not48.i.i347, label %bb.cz, label %.split.us.sink.split, !prof !233

bb.cz:                                            ; preds = %._crit_edge.i.i346
  %i.nl = add i64 %.sroa.13.0.i.i339, 16          ; 2 uses
  %i.nm = add i64 %i.nl, %.sroa.629.0.i.i340
  br label %bb.cx, !llvm.loop !58

.split.us.sink.split:                             ; preds = %.lr.ph465.split.us.a, %._crit_edge.i.i346
  %.us-phi.ph = phi i64 [ %storemerge93464, %._crit_edge.i.i346 ], [ 0, %.lr.ph465.split.us.a ]
  store i8 0, ptr %29, align 8, !tbaa !179
  store ptr null, ptr %i.t, align 8, !tbaa !189
  store i8 1, ptr %i.u, align 8, !tbaa !191
  br label %.split.us

.split.us:                                        ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE10find_largeIS6_EENS8_8iteratorERKS6_m.exit.i348.us, %.split.us.sink.split
  %.us-phi = phi i64 [ %.us-phi.ph, %.split.us.sink.split ], [ %storemerge93464.us, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE10find_largeIS6_EENS8_8iteratorERKS6_m.exit.i348.us ]
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #43
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.da unwind label %bb.df

bb.da:                                            ; preds = %.split.us
  %i.nn = load ptr, ptr %30, align 8, !tbaa !170
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %i.np = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.no, i64 noundef %.us-phi)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit219 unwind label %bb.dg ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit219:        ; preds = %bb.da
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #43
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %33, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull @.str.778, ptr noundef nonnull @.str.318, ptr noundef nonnull @.str.319)
          to label %bb.db unwind label %bb.dh

bb.db:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit219
  %i.nq = load ptr, ptr %33, align 8, !tbaa !160
  %i.nr = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !165
  store i64 %i.ns, ptr %32, align 8
  %i.nt = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %i.nq, ptr %i.nt, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 2, i64 82, ptr nonnull @.str.2, i32 noundef 1258, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %32)
          to label %bb.dc unwind label %bb.di

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %bb.dd unwind label %bb.dj

bb.dd:                                            ; preds = %bb.dc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #43
  %i.nu = load ptr, ptr %33, align 8, !tbaa !160  ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.nw = icmp eq ptr %i.nu, %i.nv
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222: ; preds = %bb.dd
  %i.nx = load i64, ptr %i.nv, align 8, !tbaa !161
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nu, i64 noundef %i.ny) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i222
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #43
  %i.nz = load ptr, ptr %30, align 8, !tbaa !170  ; 3 uses
  %.not.i.i225 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i225, label %_ZN7testing7MessageD2Ev.exit227, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !141
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.oc = load ptr, ptr %i.ob, align 8
  call void %i.oc(ptr noundef nonnull align 8 dereferenceable(128) %i.nz) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit227

_ZN7testing7MessageD2Ev.exit227:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit224, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #43
  %i.od = load ptr, ptr %i.t, align 8, !tbaa !182 ; 4 uses
  %.not.i.i.i228 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i228, label %bb.dm, label %bb.de

bb.de:                                            ; preds = %_ZN7testing7MessageD2Ev.exit227
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !160 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 16 ; 2 uses
  %i.og = icmp eq ptr %i.oe, %i.of
  br i1 %i.og, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i230, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i229: ; preds = %bb.de
  %i.oh = load i64, ptr %i.of, align 8, !tbaa !161
  %i.oi = add i64 %i.oh, 1
  call void @_ZdlPvm(ptr noundef %i.oe, i64 noundef %i.oi) #44
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i230

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i230: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i229
  call void @_ZdlPvm(ptr noundef nonnull %i.od, i64 noundef 32) #44
  br label %bb.dm

bb.df:                                            ; preds = %.split.us
  %i.oj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit238

bb.dg:                                            ; preds = %bb.da
  %i.ok = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.dh:                                            ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit219
  %i.ol = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

bb.di:                                            ; preds = %bb.db
  %i.om = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.dc
  %i.on = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %31) #43
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.pn94 = phi { ptr, i32 } [ %i.on, %bb.dj ], [ %i.om, %bb.di ] ; 2 uses
  %i.oo = load ptr, ptr %33, align 8, !tbaa !160  ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.oq = icmp eq ptr %i.oo, %i.op
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233: ; preds = %bb.dk
  %i.or = load i64, ptr %i.op, align 8, !tbaa !161
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #44
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233, %bb.dh
  %.pn94.pn = phi { ptr, i32 } [ %i.ol, %bb.dh ], [ %.pn94, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i233 ], [ %.pn94, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #43
  br label %bb.dl

bb.dl:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, %bb.dg
  %.pn94.pn.pn = phi { ptr, i32 } [ %.pn94.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235 ], [ %i.ok, %bb.dg ] ; 2 uses
  %i.ot = load ptr, ptr %30, align 8, !tbaa !170  ; 3 uses
  %.not.i.i236 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i236, label %_ZN7testing7MessageD2Ev.exit238, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237: ; preds = %bb.dl
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !141
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(128) %i.ot) #43, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit238

_ZN7testing7MessageD2Ev.exit238:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237, %bb.dl, %bb.df
  %.pn94.pn.pn.pn = phi { ptr, i32 } [ %i.oj, %bb.df ], [ %.pn94.pn.pn, %bb.dl ], [ %.pn94.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i237 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #43
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %29) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.dm:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i230, %_ZN7testing7MessageD2Ev.exit227
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #43
  %.val1.i.i = load i64, ptr %7, align 8          ; 3 uses
  %i.ox = and i64 %.val1.i.i, 255                 ; 2 uses
  %notmask.i.i.i.i.i = shl nsw i64 -1, %i.ox      ; 4 uses
  %i.oy = add nsw i64 %notmask.i.i.i.i.i, 281474976710655 ; 2 uses
  %i.oz = or i64 %i.oy, %notmask.i.i.i.i.i
  %i.pa = icmp eq i64 %i.oz, -1
  call void @llvm.assume(i1 %i.pa)
  %i.pb = icmp samesign ugt i64 %notmask.i.i.i.i.i, -281474976710657
  call void @llvm.assume(i1 %i.pb)
  %i.pc = icmp eq i64 %i.ox, 0
  br i1 %i.pc, label %_ZNSt6vectorImSaImEED2Ev.exit282.sink.split, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.pd = and i64 %.val1.i.i, 254
  %i.pe = icmp eq i64 %i.pd, 0
  br i1 %i.pe, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7deallocEv.exit.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #43
  store ptr %7, ptr %5, align 8, !tbaa !437
  invoke void @_ZN4absl12lts_2026052618container_internal20IterateOverFullSlotsERKNS1_12CommonFieldsEmNS0_11FunctionRefIFvPKNS1_6ctrl_tEPvEEE(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef 24, ptr nonnull %5, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRZNS0_18container_internal12raw_hash_setINS3_12_GLOBAL__N_111ValuePolicyINS5_10SizedValueILi24EEELb0ELb0EEEJEE13destroy_slotsEvEUlPKNS3_6ctrl_tEPvE_vJSD_SE_EEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE)
          to label %.noexc.i unwind label %bb.dp

.noexc.i:                                         ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #43
  %.val1.i.pre.i.i = load i64, ptr %7, align 8    ; 2 uses
  %.pre.i.i = and i64 %.val1.i.pre.i.i, 255
  %.pre5.i.i = shl nsw i64 -1, %.pre.i.i          ; 2 uses
  %.pre6.i.i = add nsw i64 %.pre5.i.i, 281474976710655
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7deallocEv.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_12_GLOBAL__N_111ValuePolicyINS3_10SizedValueILi24EEELb0ELb0EEEJEE7deallocEv.exit.i.i: ; preds = %.noexc.i, %bb.dn
  %.pre-phi7.i.i = phi i64 [ %i.oy, %bb.dn ], [ %.pre6.i.i, %.noexc.i ]
  %notmask.i.i.i.i.pre-phi.i.i = phi i64 [ %notmask.i.i.i.i.i, %bb.dn ], [ %.pre5.i.i, %.noexc.i ] ; 3 uses
  %.val1.i.i.i = phi i64 [ %.val1.i.i, %bb.dn ], [ %.val1.i.pre.i.i, %.noexc.i ]
  %i.pf = or i64 %notmask.i.i.i.i.pre-phi.i.i, %.pre-phi7.i.i
  %i.pg = icmp eq i64 %i.pf, -1
  call void @llvm.assume(i1 %i.pg)
  %i.ph = icmp samesign ugt i64 %notmask.i.i.i.i.pre-phi.i.i, -281474976710657
  call void @llvm.assume(i1 %i.ph)
  %i.pi = and i64 %.val1.i.i.i, 65536
  %.not.i.i.i.i.i = icmp ne i64 %i.pi, 0
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !161
  %i.pj = xor i64 %notmask.i.i.i.i.pre-phi.i.i, -1
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %7, i64 noundef %i.pj, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, i64 noundef 24, i64 noundef 8, i1 noundef zeroext %.not.i.i.i.i.i)
          to label %_ZNSt6vectorImSaImEED2Ev.exit282.sink.split unwind label %bb.dp

end_hunk_1
