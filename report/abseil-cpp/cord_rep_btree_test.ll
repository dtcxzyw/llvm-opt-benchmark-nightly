Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_rep_btree_test?download=true
inline.NumInlined: 12640
inline.NumDeleted: 3953
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK7testing8internal30ValuesInIteratorRangeGeneratorIbE8Iterator6EqualsERKNS0_22ParamIteratorInterfaceIbEE:bb.a
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !136
  %i.an = icmp eq ptr %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = icmp eq i32 %i.ap, %i.ar
  %i.at = select i1 %i.an, i1 %i.as, i1 false
  ret i1 %i.at
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

declare noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #0

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #12

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !133  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal14ParamGeneratorIbED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIKN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !111
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !112
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !721
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !96
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !721
  br label %_ZNSt12__shared_ptrIKN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIKN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !113

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIKN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

declare noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv() local_unnamed_addr #0

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr dso_local void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #31, !inline_history !722
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !109  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !109
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !96
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #31, !inline_history !722
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing5RangeIiiEENS_8internal14ParamGeneratorIT_EES3_S3_T0_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::ParamGenerator.29") align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal14RangeGeneratorIiiEE, i64 16), ptr %i.a, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %2, ptr %i.c, align 4, !tbaa !171
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %3, ptr %i.d, align 8, !tbaa !172
  %i.e = icmp slt i32 %1, %2
  br i1 %i.e, label %.lr.ph.i.i.preheader, label %.loopexit

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.f = add i32 %3, %1                           ; 3 uses
  %i.g = tail call i32 @llvm.smax.i32(i32 %2, i32 %i.f)
  %i.h = icmp slt i32 %i.f, %2
  %i.i = zext i1 %i.h to i32                      ; 2 uses
  %i.j = add i32 %i.f, %i.i
  %i.k = sub i32 %i.g, %i.j
  %i.l = udiv i32 %i.k, %3
  %i.m = add i32 %i.l, %i.i
  %i.n = add i32 %i.m, 1                          ; 3 uses
  %min.iters.check = icmp ult i32 %i.n, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader6, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.preheader
  %n.vec = and i32 %i.n, -8                       ; 3 uses
  %i.o = mul i32 %n.vec, %3
  %i.p = add i32 %1, %i.o
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %reduced.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %bin.rdx, %vector.body ]
  %bin.rdx = add <4 x i32> %reduced.phi, splat (i32 2) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.q = icmp eq i32 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !723

middle.block:                                     ; preds = %vector.body
  %i.r = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.n, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.preheader6

.lr.ph.i.i.preheader6:                            ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.08.i.i.ph = phi i32 [ %1, %.lr.ph.i.i.preheader ], [ %i.p, %middle.block ]
  %.067.i.i.ph = phi i32 [ 0, %.lr.ph.i.i.preheader ], [ %i.r, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader6, %.lr.ph.i.i
  %.08.i.i = phi i32 [ %i.t, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader6 ]
  %.067.i.i = phi i32 [ %i.s, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader6 ]
  %i.s = add nuw nsw i32 %.067.i.i, 1             ; 2 uses
  %i.t = add nsw i32 %.08.i.i, %3                 ; 2 uses
  %i.u = icmp slt i32 %i.t, %2
  br i1 %i.u, label %.lr.ph.i.i, label %.loopexit, !llvm.loop !724

.loopexit:                                        ; preds = %.lr.ph.i.i, %middle.block, %bb.a
  %.06.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.r, %middle.block ], [ %i.s, %.lr.ph.i.i ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %.06.lcssa.i.i, ptr %i.v, align 4, !tbaa !728
  store ptr %i.a, ptr %0, align 8, !tbaa !175
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.w, align 8, !tbaa !108
  %i.x = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #32
          to label %_ZN7testing8internal14ParamGeneratorIiEC2EPNS0_23ParamGeneratorInterfaceIiEE.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %.loopexit
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  %i.aa = tail call ptr @__cxa_begin_catch(ptr %i.z) #31 ; 0 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !96
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #31, !inline_history !725
  invoke void @__cxa_rethrow() #30
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.ae

bb.e:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  %i.ag = extractvalue { ptr, i32 } %i.af, 0
  tail call void @__clang_call_terminate(ptr %i.ag) #34
  unreachable

bb.f:                                             ; preds = %bb.b
  unreachable

_ZN7testing8internal14ParamGeneratorIiEC2EPNS0_23ParamGeneratorInterfaceIiEE.exit: ; preds = %.loopexit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 1, ptr %i.ah, align 8, !tbaa !111
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 1, ptr %i.ai, align 4, !tbaa !112
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIiEELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.x, align 8, !tbaa !96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store ptr %i.a, ptr %i.aj, align 8, !tbaa !177
  store ptr %i.x, ptr %i.w, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal23ParamGeneratorInterfaceIiED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal14RangeGeneratorIiiED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7testing8internal14RangeGeneratorIiiE5BeginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !172
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal14RangeGeneratorIiiE8IteratorE, i64 16), ptr %i.a, align 8, !tbaa !96
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.f, align 8, !tbaa !180
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.c, ptr %i.g, align 8, !tbaa !181
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 0, ptr %i.h, align 4, !tbaa !182
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.e, ptr %i.i, align 8, !tbaa !183
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7testing8internal14RangeGeneratorIiiE3EndEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !171
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal14RangeGeneratorIiiE8IteratorE, i64 16), ptr %i.a, align 8, !tbaa !96
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.e, align 8, !tbaa !180
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.c, ptr %i.f, align 8, !tbaa !181
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.h = load <2 x i32>, ptr %i.d, align 8, !tbaa !109
  %i.i = shufflevector <2 x i32> %i.h, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.i, ptr %i.g, align 4, !tbaa !109
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal22ParamIteratorInterfaceIiED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal14RangeGeneratorIiiE8IteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7testing8internal14RangeGeneratorIiiE8Iterator13BaseGeneratorEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal14RangeGeneratorIiiE8Iterator7AdvanceEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !181
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !183
  %i.e = add nsw i32 %i.d, %i.b
  store i32 %i.e, ptr %i.a, align 8, !tbaa !181
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !182
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !182
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK7testing8internal14RangeGeneratorIiiE8Iterator5CloneEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN7testing8internal14RangeGeneratorIiiE8IteratorE, i64 16), ptr %i.a, align 8, !tbaa !96
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !180
  store ptr %i.d, ptr %i.b, align 8, !tbaa !180
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <2 x i32>, ptr %i.f, align 8, !tbaa !109
  store <2 x i32> %i.g, ptr %i.e, align 8, !tbaa !109
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !183
  store i32 %i.j, ptr %i.h, align 8, !tbaa !183
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_0
begin_hunk_1_@_GLOBAL__sub_I_cord_rep_btree_test.cc:bb.a
  br i1 %i.fdi, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i1632

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i1632: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i1630
  %i.fdj = load i64, ptr %i.fbl, align 8, !tbaa !101
  br label %common.resume.sink.split

__cxx_global_var_init.86.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1646, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i1647
  store ptr %i.fck, ptr @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_148CordRepBtreeTest_ExtractAppendBufferNotFlat_Test10test_info_E, align 8, !tbaa !3599
  %i.fdk = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_148CordRepBtreeTest_ExtractAppendBufferNotFlat_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.fdl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.fdl, ptr %0, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #31
  store i64 16, ptr %i.b, align 8, !tbaa !100
  %i.fdm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.fdm, ptr %0, align 8, !tbaa !97
  %i.fdn = load i64, ptr %i.b, align 8, !tbaa !100 ; 3 uses
  store i64 %i.fdn, ptr %i.fdl, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fdm, ptr noundef nonnull align 1 dereferenceable(16) @.str, i64 16, i1 false)
  %i.fdo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.fdn, ptr %i.fdo, align 8, !tbaa !99
  %i.fdp = load ptr, ptr %0, align 8, !tbaa !97
  %i.fdq = getelementptr inbounds nuw i8, ptr %i.fdp, i64 %i.fdn
  store i8 0, ptr %i.fdq, align 1, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  %i.fdr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 11 uses
  store ptr %i.fdr, ptr %2, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 82, ptr %i.a, align 8, !tbaa !100
  %i.fds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %bb.td unwind label %bb.tk     ; 3 uses

bb.td:                                            ; preds = %__cxx_global_var_init.86.exit
  store ptr %i.fds, ptr %2, align 8, !tbaa !97
  %i.fdt = load i64, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  store i64 %i.fdt, ptr %i.fdr, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(82) %i.fds, ptr noundef nonnull align 1 dereferenceable(82) @.str.1, i64 82, i1 false)
  %i.fdu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.fdt, ptr %i.fdu, align 8, !tbaa !99
  %i.fdv = getelementptr inbounds nuw i8, ptr %i.fds, i64 %i.fdt
  store i8 0, ptr %i.fdv, align 1, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.fdw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.fdw, ptr %1, align 8, !tbaa !98
  %i.fdx = load ptr, ptr %2, align 8, !tbaa !97   ; 2 uses
  %i.fdy = icmp eq ptr %i.fdx, %i.fdr
  br i1 %i.fdy, label %bb.te, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1656

bb.te:                                            ; preds = %bb.td
  %i.fdz = load i64, ptr %i.fdu, align 8, !tbaa !99 ; 3 uses
  %i.fea = icmp ult i64 %i.fdz, 16
  call void @llvm.assume(i1 %i.fea)
  %i.feb = add nuw nsw i64 %i.fdz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fdw, ptr noundef nonnull align 8 dereferenceable(1) %i.fdr, i64 %i.feb, i1 false)
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i1658

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1656: ; preds = %bb.td
  store ptr %i.fdx, ptr %1, align 8, !tbaa !97
  %i.fec = load i64, ptr %i.fdr, align 8, !tbaa !101
  store i64 %i.fec, ptr %i.fdw, align 8, !tbaa !101
  %.pre.i1657 = load i64, ptr %i.fdu, align 8, !tbaa !99
  br label %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i1658

_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i1658: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1656, %bb.te
  %i.fed = phi i64 [ %i.fdz, %bb.te ], [ %.pre.i1657, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1656 ]
  %i.fee = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.fed, ptr %i.fee, align 8, !tbaa !99
  store ptr %i.fdr, ptr %2, align 8, !tbaa !97
  store i64 0, ptr %i.fdu, align 8, !tbaa !99
  store i8 0, ptr %i.fdr, align 8, !tbaa !101
  %i.fef = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 1545, ptr %i.fef, align 8, !tbaa !103
  %i.feg = invoke noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
          to label %bb.tf unwind label %bb.tl

bb.tf:                                            ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i1658
  %i.feh = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE19GetSetUpCaseOrSuiteEPKci(ptr noundef nonnull @.str.1, i32 noundef 1545)
          to label %bb.tg unwind label %bb.tl

bb.tg:                                            ; preds = %bb.tf
  %i.fei = invoke noundef ptr @_ZN7testing8internal16SuiteApiResolverINS_4TestEE22GetTearDownCaseOrSuiteEPKci(ptr noundef nonnull @.str.1, i32 noundef 1545)
          to label %bb.th unwind label %bb.tl

bb.th:                                            ; preds = %bb.tg
  %i.fej = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %bb.ti unwind label %bb.tl     ; 2 uses

bb.ti:                                            ; preds = %bb.th
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplIN4absl12lts_2026052613cord_internal12_GLOBAL__N_147CordRepBtreeTest_ExtractAppendBufferShared_TestEEE, i64 16), ptr %i.fej, align 8, !tbaa !96
  %i.fek = invoke noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcS8_S8_NS0_12CodeLocationEPKvPFvvESD_PNS0_15TestFactoryBaseE(ptr noundef nonnull align 8 %0, ptr noundef nonnull @.str.89, ptr noundef null, ptr noundef null, ptr noundef nonnull align 8 %1, ptr noundef %i.feg, ptr noundef %i.feh, ptr noundef %i.fei, ptr noundef nonnull %i.fej)
          to label %bb.tj unwind label %bb.tl

bb.tj:                                            ; preds = %bb.ti
  %i.fel = load ptr, ptr %1, align 8, !tbaa !97   ; 2 uses
  %i.fem = icmp eq ptr %i.fel, %i.fdw
  br i1 %i.fem, label %_ZN7testing8internal12CodeLocationD2Ev.exit.i1665, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1664

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1664: ; preds = %bb.tj
  %i.fen = load i64, ptr %i.fdw, align 8, !tbaa !101
  %i.feo = add i64 %i.fen, 1
  call void @_ZdlPvm(ptr noundef %i.fel, i64 noundef %i.feo) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit.i1665

_ZN7testing8internal12CodeLocationD2Ev.exit.i1665: ; preds = %bb.tj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1664
  %i.fep = load ptr, ptr %2, align 8, !tbaa !97   ; 2 uses
  %i.feq = icmp eq ptr %i.fep, %i.fdr
  br i1 %i.feq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1667, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1666

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1666: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i1665
  %i.fer = load i64, ptr %i.fdr, align 8, !tbaa !101
  %i.fes = add i64 %i.fer, 1
  call void @_ZdlPvm(ptr noundef %i.fep, i64 noundef %i.fes) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1667

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1667: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit.i1665, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1666
  %i.fet = load ptr, ptr %0, align 8, !tbaa !97   ; 2 uses
  %i.feu = icmp eq ptr %i.fet, %i.fdl
  br i1 %i.feu, label %__cxx_global_var_init.88.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i1668

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i1668: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1667
  %i.fev = load i64, ptr %i.fdl, align 8, !tbaa !101
  %i.few = add i64 %i.fev, 1
  call void @_ZdlPvm(ptr noundef %i.fet, i64 noundef %i.few) #33
  br label %__cxx_global_var_init.88.exit

bb.tk:                                            ; preds = %__cxx_global_var_init.86.exit
  %i.fex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i1651

bb.tl:                                            ; preds = %bb.ti, %bb.th, %bb.tg, %bb.tf, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit.i1658
  %i.fey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fez = load ptr, ptr %1, align 8, !tbaa !97   ; 2 uses
  %i.ffa = icmp eq ptr %i.fez, %i.fdw
  br i1 %i.ffa, label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i1660, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i1659

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i1659: ; preds = %bb.tl
  %i.ffb = load i64, ptr %i.fdw, align 8, !tbaa !101
  %i.ffc = add i64 %i.ffb, 1
  call void @_ZdlPvm(ptr noundef %i.fez, i64 noundef %i.ffc) #33
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit15.i1660

_ZN7testing8internal12CodeLocationD2Ev.exit15.i1660: ; preds = %bb.tl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i13.i1659
  %i.ffd = load ptr, ptr %2, align 8, !tbaa !97   ; 2 uses
  %i.ffe = icmp eq ptr %i.ffd, %i.fdr
  br i1 %i.ffe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i1651, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i1661

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i1661: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i1660
  %i.fff = load i64, ptr %i.fdr, align 8, !tbaa !101
  %i.ffg = add i64 %i.fff, 1
  call void @_ZdlPvm(ptr noundef %i.ffd, i64 noundef %i.ffg) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i1651

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i1651: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit15.i1660, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i1661, %bb.tk
  %.pn.i1652 = phi { ptr, i32 } [ %i.fex, %bb.tk ], [ %i.fey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i1661 ], [ %i.fey, %_ZN7testing8internal12CodeLocationD2Ev.exit15.i1660 ] ; 2 uses
  %i.ffh = load ptr, ptr %0, align 8, !tbaa !97   ; 2 uses
  %i.ffi = icmp eq ptr %i.ffh, %i.fdl
  br i1 %i.ffi, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i1653

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19.i1653: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i1651
  %i.ffj = load i64, ptr %i.fdl, align 8, !tbaa !101
  br label %common.resume.sink.split

__cxx_global_var_init.88.exit:                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1667, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10.i1668
  store ptr %i.fek, ptr @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_147CordRepBtreeTest_ExtractAppendBufferShared_Test10test_info_E, align 8, !tbaa !3599
  %i.ffk = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_147CordRepBtreeTest_ExtractAppendBufferShared_Test10test_info_E) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #27

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #13 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #30 = { noreturn }
attributes #31 = { nounwind }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { builtin nounwind }
attributes #34 = { noreturn nounwind }
attributes #35 = { allocsize(0) }
attributes #36 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!73, !74, !75}
!llvm.ident = !{!76}
!llvm.errno.tbaa = !{!81}

!0 = distinct !{ptr @_ZN7testing8internal14ParamGeneratorIbED2Ev, null, null, null}
!1 = distinct !{null, null, null, null}
!2 = distinct !{ptr @_ZN7testing8internal22CartesianProductHolderIJNS0_14ParamGeneratorIbEES3_EED2Ev, null, null, ptr @_ZN7testing8internal14ParamGeneratorIbED2Ev, null, null, null}
!3 = distinct !{ptr @_ZN7testing8internal22CartesianProductHolderIJNS0_14ParamGeneratorIbEES3_EED2Ev, null, null, ptr @_ZN7testing8internal14ParamGeneratorIbED2Ev, null, null, null}
!4 = distinct !{null, null, null, null}
!5 = distinct !{null, null, ptr @_ZN7testing8internal14ParamGeneratorIbED2Ev, null, null, null}
!6 = distinct !{null, null, ptr @_ZN7testing8internal14ParamGeneratorIbED2Ev, null, null, null}
!7 = distinct !{null}
!8 = distinct !{null, null, null}
!9 = distinct !{null}
!10 = distinct !{null, null, null, null, null}
!11 = distinct !{null, null}
!12 = distinct !{null, null, null, null, null, null}
!13 = distinct !{null, null, null, null, null}
!14 = distinct !{null, null, null, null, null}
!15 = distinct !{null, null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{null, null, null}
!19 = distinct !{null, null}
!20 = distinct !{null, null, null, null}
!21 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKmED2Ev, null}
!22 = distinct !{null, null}
!23 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKiED2Ev, null}
!24 = distinct !{null, null}
!25 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605264SpanIKPNS3_13cord_internal7CordRepEEEED2Ev, null}
!26 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEED2Ev, null}
!27 = distinct !{!27, !141}
!28 = distinct !{ptr @_ZNSt6vectorIN7testing7MatcherIRKPN4absl12lts_2026052613cord_internal7CordRepEEESaIS9_EED2Ev, null, null, null}
!29 = distinct !{null, null, null, null}
!30 = distinct !{!30, !141}
!31 = distinct !{null}
!32 = distinct !{null, null}
!33 = distinct !{!33, !141}
!34 = distinct !{!34, !141}
!35 = distinct !{null, null}
!36 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal12CordRepBtreeEED2Ev, null}
!37 = distinct !{null, null}
!38 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKPKN4absl12lts_2026052613cord_internal12CordRepBtreeEED2Ev, null}
!39 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIPKvED2Ev, null}
!40 = distinct !{null, null}
!41 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKPKcED2Ev, null}
!42 = distinct !{null, null}
!43 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEED2Ev, null}
!44 = distinct !{!44, !141}
!45 = distinct !{null, null}
!46 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS7_EEED2Ev, null}
!47 = distinct !{null, null, null, null}
!48 = distinct !{ptr @_ZN7testing8internal11MatcherBaseImED2Ev, null}
!49 = distinct !{null}
!50 = distinct !{!50, !141}
!51 = distinct !{!51, !141}
!52 = distinct !{!52, !141}
!53 = distinct !{null, null}
!54 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEED2Ev, null}
!55 = distinct !{null}
!56 = distinct !{null, null}
!57 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKhED2Ev, null}
!58 = distinct !{null, null}
!59 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKcED2Ev, null}
!60 = distinct !{null, null}
!61 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605264SpanIcEEED2Ev, null}
!62 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIPvED2Ev, null}
!63 = distinct !{null, null}
!64 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKPcED2Ev, null}
!65 = distinct !{ptr @_ZNSt6vectorIN7testing7MatcherIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESaISA_EED2Ev, null, null, null}
!66 = distinct !{!66, !141}
!67 = distinct !{null, null, null, null}
!68 = distinct !{null, null}
!69 = distinct !{ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_2026052613cord_internal7CordRep13ExtractResultEED2Ev, null}
!70 = distinct !{!70, !141}
!71 = distinct !{!71, !141}
!72 = distinct !{!72, !141}
!73 = !{i32 8, !"PIC Level", i32 2}
!74 = !{i32 7, !"PIE Level", i32 2}
!75 = !{i32 7, !"uwtable", i32 2}
!76 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!77 = !{!"Simple C++ TBAA"}
!78 = !{!"omnipotent char", !77, i64 0}
!79 = !{!"int", !78, i64 0}
!80 = !{!"__libc_errno", !79, i64 0}
!81 = !{!80, !79, i64 0}
!82 = !{!"any pointer", !78, i64 0}
!83 = !{!"p1 omnipotent char", !82, i64 0}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !83, i64 0}
!85 = !{!"long", !78, i64 0}
!86 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !84, i64 0, !85, i64 8, !78, i64 16}
!87 = !{!"_ZTSSt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmE", !86, i64 0, !85, i64 32}
!88 = !{!87, !85, i64 32}
!89 = !{!"any p2 pointer", !82, i64 0}
!90 = !{!"p2 _ZTSN7testing8internal30ParameterizedTestSuiteInfoBaseE", !89, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseIPN7testing8internal30ParameterizedTestSuiteInfoBaseESaIS3_EE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!91, !90, i64 0}
!93 = !{!"p1 _ZTSN7testing8internal30ParameterizedTestSuiteInfoBaseE", !82, i64 0}
!94 = !{!93, !93, i64 0}
!95 = !{!"vtable pointer", !77, i64 0}
!96 = !{!95, !95, i64 0}
!97 = !{!86, !83, i64 0}
!98 = !{!84, !83, i64 0}
!99 = !{!86, !85, i64 8}
!100 = !{!85, !85, i64 0}
!101 = !{!78, !78, i64 0}
!102 = !{!"_ZTSN7testing8internal12CodeLocationE", !86, i64 0, !79, i64 32}
!103 = !{!102, !79, i64 32}
!104 = !{!91, !90, i64 8}
!105 = !{!91, !90, i64 16}
!106 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !82, i64 0}
!107 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !106, i64 0}
!108 = !{!107, !106, i64 0}
!109 = !{!79, !79, i64 0}
!110 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !79, i64 8, !79, i64 12}
!111 = !{!110, !79, i64 8}
!112 = !{!110, !79, i64 12}
!113 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!114 = !{!"bool", !78, i64 0}
!115 = !{!114, !114, i64 0}
!116 = !{!"_ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !85, i64 0, !83, i64 8}
!117 = !{!116, !85, i64 0}
!118 = !{!116, !83, i64 8}
!119 = !{!82, !82, i64 0}
!120 = !{!"_ZTSSt13_Ios_Fmtflags", !78, i64 0}
!121 = !{!"_ZTSSt12_Ios_Iostate", !78, i64 0}
!122 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !82, i64 0}
!123 = !{!"_ZTSNSt8ios_base6_WordsE", !82, i64 0, !85, i64 8}
!124 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !82, i64 0}
!125 = !{!"p1 _ZTSNSt6locale5_ImplE", !82, i64 0}
!126 = !{!"_ZTSSt6locale", !125, i64 0}
!127 = !{!"_ZTSSt8ios_base", !85, i64 8, !85, i64 16, !120, i64 24, !121, i64 28, !121, i64 32, !122, i64 40, !123, i64 48, !78, i64 64, !79, i64 192, !124, i64 200, !126, i64 208}
!128 = !{!127, !121, i64 32}
!129 = !{!"p1 _ZTSN7testing8internal23ParamGeneratorInterfaceIbEE", !82, i64 0}
!130 = !{!"_ZTSSt12__shared_ptrIKN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EE", !129, i64 0, !107, i64 8}
!131 = !{!130, !129, i64 0}
!132 = !{!"_ZTSSt15_Sp_counted_ptrIPN7testing8internal23ParamGeneratorInterfaceIbEELN9__gnu_cxx12_Lock_policyE2EE", !110, i64 0, !129, i64 16}
!133 = !{!132, !129, i64 16}
!134 = !{!"p1 long", !82, i64 0}
!135 = !{!"_ZTSSt18_Bit_iterator_base", !134, i64 0, !79, i64 8}
!136 = !{!135, !134, i64 0}
!137 = !{!135, !79, i64 8}
!138 = !{!"_ZTSSt13_Bit_iterator", !135, i64 0}
!139 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !138, i64 0, !138, i64 16, !134, i64 32}
!140 = !{!139, !134, i64 32}
!141 = !{!"llvm.loop.mustprogress"}
!142 = !{!"_ZTSN7testing8internal22ParamIteratorInterfaceIbEE"}
!143 = !{!"_ZTSSt19_Bit_const_iterator", !135, i64 0}
!144 = !{!"p1 bool", !82, i64 0}
!145 = !{!"_ZTSSt10_Head_baseILm0EPKbLb0EE", !144, i64 0}
!146 = !{!"_ZTSSt11_Tuple_implILm0EJPKbSt14default_deleteIS0_EEE", !145, i64 0}
!147 = !{!"_ZTSSt5tupleIJPKbSt14default_deleteIS0_EEE", !146, i64 0}
!148 = !{!"_ZTSSt15__uniq_ptr_implIKbSt14default_deleteIS0_EE", !147, i64 0}
!149 = !{!"_ZTSSt15__uniq_ptr_dataIKbSt14default_deleteIS0_ELb1ELb1EE", !148, i64 0}
!150 = !{!"_ZTSSt10unique_ptrIKbSt14default_deleteIS0_EE", !149, i64 0}
!151 = !{!"_ZTSN7testing8internal30ValuesInIteratorRangeGeneratorIbE8IteratorE", !142, i64 0, !129, i64 8, !143, i64 16, !150, i64 32}
!152 = !{!151, !129, i64 8}
!153 = !{!145, !144, i64 0}
!154 = !{!144, !144, i64 0}
!155 = !{!"p1 _ZTSSo", !82, i64 0}
end_hunk_1
