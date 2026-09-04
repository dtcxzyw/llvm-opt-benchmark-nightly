Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/hash_instantiated_test?download=true
inline.NumInlined: 29463
inline.NumDeleted: 10401
loop-unroll.NumCompletelyUnrolled: 582
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 594
begin_hunk_0_@_ZN12_GLOBAL__N_134gtest_suite_HashValueSequenceTest_10BasicUsageIN4absl12lts_2026052613flat_hash_setIiNS3_13hash_internal4HashIiEESt8equal_toIiESaIiEEEE8TestBodyEv:_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.lw = xor i64 %notmask.i.i.i.i.i.i.i.i.i, -1
  %i.lx = and i64 %i.lm, 65536
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !200
  %i.ly = icmp ne i64 %i.lx, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i.i, i64 noundef %i.lw, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i.i.i.i.i.i, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.ly)
          to label %_ZSt8_DestroyIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEvPT_.exit.i.i.i unwind label %bb.bc

bb.bc:                                            ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i.i.i.i.i
  %i.lz = landingpad { ptr, i32 }
          catch ptr null
  %i.ma = extractvalue { ptr, i32 } %i.lz, 0
  call void @__clang_call_terminate(ptr %i.ma) #29
  unreachable

_ZSt8_DestroyIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEvPT_.exit.i.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i.i.i.i.i, %bb.bb
  %i.mb = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i158 = icmp eq ptr %i.mb, %i.ll
  br i1 %.not.i.i.i158, label %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !77

_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !610
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit157
  %i.mc = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.lk, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit157 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.mc, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEESaIS9_EED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exit.i
  %i.md = load ptr, ptr %i.bb, align 8, !tbaa !611
  %i.me = ptrtoint ptr %i.md to i64
  %i.mf = ptrtoint ptr %i.mc to i64
  %i.mg = sub i64 %i.me, %i.mf
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef %i.mg) #33
  br label %_ZNSt6vectorIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEESaIS9_EED2Ev.exit

_ZNSt6vectorIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exit.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void

.body137:                                         ; preds = %bb.ao, %_ZNSt6vectorISt7variantIJPKN4absl12lts_2026052613flat_hash_setIiNS2_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEESaISD_EED2Ev.exit3.i, %_ZN7testing7MessageD2Ev.exit152
  %.pn113.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn, %_ZN7testing7MessageD2Ev.exit152 ], [ %i.kc, %bb.ao ], [ %i.is, %_ZNSt6vectorISt7variantIJPKN4absl12lts_2026052613flat_hash_setIiNS2_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEESaISD_EED2Ev.exit3.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @_ZNSt6vectorIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #30
  br label %bb.be

bb.be:                                            ; preds = %.body137, %.loopexit
  %.pn113.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn113.pn.pn.pn.pn, %.body137 ], [ %.pn101.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  resume { ptr, i32 } %.pn113.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 4 uses
  %i.b = and i64 %i.a, 255                        ; 2 uses
  %notmask.i.i.i.i = shl nsw i64 -1, %i.b         ; 4 uses
  %i.c = add nsw i64 %notmask.i.i.i.i, 8589934591
  %i.d = or i64 %i.c, %notmask.i.i.i.i
  %i.e = icmp eq i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp ne i64 %i.b, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %notmask.i.i.i.i, -8589934593
  tail call void @llvm.assume(i1 %i.g)
  %i.h = and i64 %i.a, 254
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %i.a, 562949953552384
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE15destructor_implEv.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i: ; preds = %bb.a
  %i.k = xor i64 %notmask.i.i.i.i, -1
  %i.l = and i64 %i.a, 65536
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !200
  %i.m = icmp ne i64 %i.l, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.m)
          to label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE15destructor_implEv.exit unwind label %bb.c

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE15destructor_implEv.exit: ; preds = %bb.b, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i
  ret void

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEESaIS9_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !610    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !612  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.s, %_ZSt8_DestroyIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = load i64, ptr %.05.i.i, align 8          ; 4 uses
  %i.e = and i64 %i.d, 255                        ; 2 uses
  %notmask.i.i.i.i.i.i.i.i = shl nsw i64 -1, %i.e ; 4 uses
  %i.f = add nsw i64 %notmask.i.i.i.i.i.i.i.i, 8589934591
  %i.g = or i64 %i.f, %notmask.i.i.i.i.i.i.i.i
  %i.h = icmp eq i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp ne i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp samesign ugt i64 %notmask.i.i.i.i.i.i.i.i, -8589934593
  tail call void @llvm.assume(i1 %i.j)
  %i.k = and i64 %i.d, 254
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.b, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.m = icmp ult i64 %i.d, 562949953552384
  tail call void @llvm.assume(i1 %i.m)
  br label %_ZSt8_DestroyIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEvPT_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.n = xor i64 %notmask.i.i.i.i.i.i.i.i, -1
  %i.o = and i64 %i.d, 65536
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %.sroa.0.0.copyload.i.i.i2.pre.i.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !tbaa !200
  %i.p = icmp ne i64 %i.o, 0
  invoke void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(24) %.05.i.i, i64 noundef %i.n, ptr noundef %.sroa.0.0.copyload.i.i.i2.pre.i.i.i.i.i.i, i64 noundef 4, i64 noundef 4, i1 noundef zeroext %i.p)
          to label %_ZSt8_DestroyIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEvPT_.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #29
  unreachable

_ZSt8_DestroyIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEvPT_.exit.i.i: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7deallocEv.exit.i.i.i.i.i, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !77

_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !610
  br label %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exit

_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.t = phi ptr [ %.pr, %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.t, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEESaIS9_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !611
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #33
  br label %_ZNSt12_Vector_baseIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEESaIS9_EED2Ev.exit

_ZNSt12_Vector_baseIN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4absl12lts_2026052613flat_hash_setIiNS1_13hash_internal4HashIiEESt8equal_toIiESaIiEEES9_EvT_SB_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2IPKiEET_S9_mRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.absl::lts_20260526::container_internal::HashKey", align 8 ; 5 uses
  %8 = alloca %"struct.std::pair.947", align 8    ; 6 uses
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %2, %1
  br i1 %i.a, label %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit.thread, label %bb.c

_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit.thread: ; preds = %bb.b
  store i64 1, ptr %0, align 8
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit

bb.c:                                             ; preds = %bb.b
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.c, %i.b
  %i.e = ashr exact i64 %i.d, 2                   ; 2 uses
  %i.f = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.e, i1 true) ; 2 uses
  %i.g = lshr i64 -2305843009213693952, %i.f
  %i.h = icmp ugt i64 %i.e, %i.g
  %.neg.i.i = sext i1 %i.h to i64
  %i.i = add nsw i64 %i.f, %.neg.i.i
  %9 = and i64 %i.i, 4294967295
  %i.j = lshr i64 -1, %9
  br label %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit

_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit: ; preds = %bb.a, %bb.c
  %.0.i = phi i64 [ %3, %bb.a ], [ %i.j, %bb.c ]  ; 2 uses
  store i64 1, ptr %0, align 8
  %i.k = icmp ugt i64 %.0.i, 1
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.0.i, i64 8589934591)
  tail call void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE18GetPolicyFunctionsEvE5value, i64 noundef %.sroa.speculated.i)
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit: ; preds = %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit.thread, %_ZN4absl12lts_2026052618container_internal29SelectBucketCountForIterRangeIPKiEEmT_S5_m.exit, %bb.d
  %.not5.i.i = icmp eq ptr %1, %2
  br i1 %.not5.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIPKiEEvT_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %1, %.lr.ph.i.i ], [ %i.ac, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.experimental.noalias.scope.decl(metadata !5077)
  call void @llvm.experimental.noalias.scope.decl(metadata !5078)
  call void @llvm.experimental.noalias.scope.decl(metadata !5079)
  call void @llvm.experimental.noalias.scope.decl(metadata !5080)
  call void @llvm.experimental.noalias.scope.decl(metadata !5081)
  call void @llvm.experimental.noalias.scope.decl(metadata !5082)
  %i.o = load i64, ptr %0, align 8, !noalias !5083 ; 4 uses
  %i.p = and i64 %i.o, 254
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !5084)
  call void @llvm.experimental.noalias.scope.decl(metadata !5085)
  %i.r = icmp ult i64 %i.o, 562949953552384
  call void @llvm.assume(i1 %i.r)
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ult i64 %i.o, 131072
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i, label %bb.g

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.s = or i64 %i.o, 131328
  store i64 %i.s, ptr %0, align 8, !noalias !5086
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.l, align 8, !tbaa !232, !noalias !5086
  %i.u = load i32, ptr %.06.i.i, align 4, !tbaa !232, !noalias !5086
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30, !noalias !5086
  store ptr %0, ptr %7, align 8, !tbaa !617, !noalias !5086
  store ptr %.06.i.i, ptr %i.m, align 8, !tbaa !246, !noalias !5086
  %i.w = invoke noundef i64 @_ZN4absl12lts_2026052618container_internal42GrowSooTableToNextCapacityAndPrepareInsertILm8ELb1EEEmRNS1_12CommonFieldsERKNS1_15PolicyFunctionsENS0_11FunctionRefIFmmEEEb(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE18GetPolicyFunctionsEvE5value, ptr nonnull %7, ptr nonnull @_ZN4absl12lts_2026052619functional_internal12InvokeObjectIRNS0_18container_internal7HashKeyINS0_13hash_internal4HashIiEEiLb1EEEmJmEEET0_NS1_7VoidPtrEDpNS1_8ForwardTIT1_E4typeE, i1 noundef zeroext false)
          to label %.noexc unwind label %bb.k     ; 2 uses

.noexc:                                           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30, !noalias !5086
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !200, !noalias !5086, !nonnull !192, !noundef !192
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.w
  %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !200, !noalias !5086
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload.i.i.i2.i.i.i.i.i.i.i.i.i.i.i, i64 %i.w
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc, %bb.g, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i
  %.sink18.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.noexc ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i ], [ @_ZN4absl12lts_2026052618container_internal11kSooControlE, %bb.g ]
  %.sink17.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %.noexc ], [ %i.l, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.l, %bb.g ]
  %.sink.i.i.i.i.i.i.i.i.i.i = phi i8 [ 1, %.noexc ], [ 1, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE17should_sample_sooEv.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.g ]
  store ptr %.sink18.i.i.i.i.i.i.i.i.i.i, ptr %8, align 8, !alias.scope !5086
  store ptr %.sink17.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5086
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.e
  invoke void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_largeIiEESt4pairINS5_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.947") align 8 %8, ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %.06.i.i)
          to label %.noexc10 unwind label %bb.k

.noexc10:                                         ; preds = %bb.i
  %.pre.i.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i.i, align 8, !tbaa !620, !range !191, !alias.scope !5087
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i: ; preds = %.noexc10, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i
  %i.z = phi i8 [ %.sink.i.i.i.i.i.i.i.i.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE28find_or_prepare_insert_smallIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %.noexc10 ]
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.j, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i

bb.j:                                             ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5087
  %i.ab = load i32, ptr %.06.i.i, align 4, !tbaa !232, !noalias !5087
  store i32 %i.ab, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i, align 4, !tbaa !232
  br label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i: ; preds = %bb.j, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE22find_or_prepare_insertIiEESt4pairINS5_8iteratorEbERKT_.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.ac = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, %2
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIPKiEEvT_S9_.exit, label %bb.e, !llvm.loop !5076

_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE6insertIPKiEEvT_S9_.exit: ; preds = %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE7emplaceIJRKiETnNSt9enable_ifIXsr14IsDecomposableIDpT_EE5valueEiE4typeELi0EEESt4pairINS5_8iteratorEbEDpOSA_.exit.i.i, %_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEEC2EmRKNS0_13hash_internal4HashIiEERKSt8equal_toIiERKSaIiE.exit
  ret void

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #30
  resume { ptr, i32 } %i.ad
}

declare void @_ZN4absl12lts_2026052618container_internal45ReserveEmptyNonAllocatedTableToFitBucketCountERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEm(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN4absl12lts_2026052618container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(24)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN4absl12lts_2026052618container_internal23TypeErasedApplyToSlotFnINS0_13hash_internal4HashIiEEiLb1EEEmPKvPvm(ptr noundef %0, ptr noundef %1, i64 noundef %2) #2 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !232
  %i.b = zext i32 %i.a to i64
  %i.c = xor i64 %2, %i.b
  %i.d = zext i64 %i.c to i128
  %i.e = mul nuw nsw i128 %i.d, 8779197792823184629 ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = xor i128 %i.f, %i.e
  %i.h = trunc i128 %i.g to i64
  ret i64 %i.h
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal20TransferNRelocatableILm4EEEvPvS3_S3_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #20 comdat {
bb.a:
  %i.a = shl i64 %3, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.a, i1 false)
  ret void
}

declare noundef ptr @_ZN4absl12lts_2026052618container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef, i64 noundef) #3

declare void @_ZN4absl12lts_2026052618container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef, i1 noundef zeroext) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIiEEJEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSB_PFvSB_hmmE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 255
  %notmask.i.i = shl nsw i64 -1, %i.b             ; 2 uses
  %i.c = xor i64 %notmask.i.i, -1                 ; 3 uses
  %i.d = lshr i64 %i.c, 1                         ; 4 uses
  %i.e = and i64 %notmask.i.i, 30
  %i.f = icmp eq i64 %i.e, 0
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.g, align 8, !tbaa !200 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !200
  %i.i = and i64 %i.d, 4611686018427387888
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.04962 = phi i64 [ 0, %bb.a ], [ %i.t, %._crit_edge ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 %.04962
  %i.k = load <16 x i8>, ptr %i.j, align 1, !tbaa !200
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 %.04962 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.l, i8 -128, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = icmp slt <16 x i8> %i.k, zeroinitializer
  %i.p = bitcast <16 x i1> %i.o to i16
  %i.q = zext i16 %i.p to i32
  %i.r = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.q) #36, !srcloc !621 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 65535
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.s = xor i32 %i.r, 65535
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.j, %bb.c
  %i.t = add nuw nsw i64 %.04962, 16              ; 2 uses
  %i.u = icmp samesign ult i64 %i.t, %i.d
  br i1 %i.u, label %bb.c, label %bb.b, !llvm.loop !5088

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.j
  %.sroa.052.061 = phi i32 [ %i.bh, %bb.j ], [ %i.s, %.lr.ph.preheader ] ; 3 uses
  %i.v = tail call noundef range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.sroa.052.061, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = add nuw i64 %.04962, %i.w                ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x ; 2 uses
  %i.z = load i64, ptr %0, align 8
  %i.aa = lshr i64 %i.z, 8
end_hunk_0
