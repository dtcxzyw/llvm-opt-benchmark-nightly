inline.NumInlined: 9191
inline.NumDeleted: 3189
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128FixedArrayTest_Hardened_TestEE10CreateTestEv:bb.a
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_128FixedArrayTest_Hardened_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_128FixedArrayTest_Hardened_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN12_GLOBAL__N_128FixedArrayTest_Hardened_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #17 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142FixedArrayRelationalsTest_EqualArrays_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_142FixedArrayRelationalsTest_EqualArrays_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_142FixedArrayRelationalsTest_EqualArrays_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_142FixedArrayRelationalsTest_EqualArrays_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_142FixedArrayRelationalsTest_EqualArrays_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::FixedArray.141", align 8 ; 7 uses
  %2 = alloca %"class.absl::lts_20260526::FixedArray.141", align 8 ; 8 uses
  %3 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %34 = alloca %"class.testing::Message", align 8 ; 7 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %36 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %39 = alloca %"class.testing::Message", align 8 ; 7 uses
  %40 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %41 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %48 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %49 = alloca %"class.testing::Message", align 8 ; 7 uses
  %50 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %51 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %53 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %54 = alloca %"class.testing::Message", align 8 ; 7 uses
  %55 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %56 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %59 = alloca %"class.testing::Message", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %61 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 15 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 15 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit422
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit422
  %indvar = phi i64 [ 0, %bb.a ], [ %indvar.next, %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit422 ] ; 8 uses
  %i.bm = add nuw i64 %indvar, 4611686018427387903
  %i.bn = and i64 %i.bm, 4611686018427387903      ; 2 uses
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 %indvar, ptr %i.a, align 8, !tbaa !22
  %i.bp = icmp samesign ult i64 %indvar, 6        ; 2 uses
  %.pre = shl nuw nsw i64 %indvar, 2              ; 5 uses
  br i1 %i.bp, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.bq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre) #28 ; 2 uses
  store ptr %i.bq, ptr %i.b, align 8, !tbaa !343
  br label %.lr.ph.i.preheader

bb.d:                                             ; preds = %bb.c
  store ptr %1, ptr %i.b, align 8, !tbaa !343
  %.not6.i = icmp eq i64 %indvar, 0
  br i1 %.not6.i, label %.noexc127.thread, label %.lr.ph.i.preheader

.noexc127.thread:                                 ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i64 %indvar, ptr %i.c, align 8, !tbaa !22
  store ptr %2, ptr %i.d, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

.lr.ph.i.preheader:                               ; preds = %.thread, %bb.d
  %.0.i.i.i895 = phi ptr [ %i.bq, %.thread ], [ %1, %bb.d ] ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i895, i64 %.pre
  %min.iters.check = icmp samesign ult i64 %i.bn, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader946, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bo, 9223372036854775800     ; 4 uses
  %i.bs = trunc i64 %n.vec to i32
  %i.bt = shl i64 %n.vec, 2
  %i.bu = getelementptr i8, ptr %.0.i.i.i895, i64 %i.bt
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.bv = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i.i.i895, i64 %i.bv ; 2 uses
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !30
  store <4 x i32> %step.add, ptr %i.bw, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.preheader946

.lr.ph.i.preheader946:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bs, %middle.block ]
  %.057.i.ph = phi ptr [ %.0.i.i.i895, %.lr.ph.i.preheader ], [ %i.bu, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader946, %.lr.ph.i
  %.08.i = phi i32 [ %i.by, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader946 ] ; 2 uses
  %.057.i = phi ptr [ %i.bz, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader946 ] ; 2 uses
  store i32 %.08.i, ptr %.057.i, align 4, !tbaa !30
  %i.by = add nuw nsw i32 %.08.i, 1
  %i.bz = getelementptr inbounds nuw i8, ptr %.057.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bz, %i.br
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !349

.loopexit:                                        ; preds = %.lr.ph.i, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i64 %indvar, ptr %i.c, align 8, !tbaa !22
  br i1 %i.bp, label %.noexc127, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i: ; preds = %.loopexit
  %i.ca = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre) #28
          to label %.noexc127 unwind label %bb.e

.noexc127:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i, %.loopexit
  %.0.i.i.i125 = phi ptr [ %2, %.loopexit ], [ %i.ca, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i125, ptr %i.d, align 8, !tbaa !343
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.0.i.i.i125, ptr nonnull align 4 %.0.i.i.i895, i64 %.pre, i1 false), !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %.0.i.i.i895, ptr nonnull %.0.i.i.i125, i64 %.pre)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.cb = zext i1 %.not9.i.i.i.i.i.i.i to i8
  store i8 %i.cb, ptr %3, align 8, !tbaa !42
  store ptr null, ptr %i.e, align 8, !tbaa !64
  store i8 1, ptr %i.f, align 8, !tbaa !65
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.f

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423

bb.f:                                             ; preds = %.noexc127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.cd = load ptr, ptr %7, align 8, !tbaa !55
  %i.ce = load i64, ptr %i.g, align 8, !tbaa !67
  store i64 %i.ce, ptr %6, align 8
  store ptr %i.cd, ptr %i.h, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, i64 72, ptr nonnull @.str.2, i32 noundef 218, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %6)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  %i.cf = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.cg = icmp eq ptr %i.cf, %i.i
  br i1 %i.cg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ch = load i64, ptr %i.i, align 8, !tbaa !62
  %i.ci = add i64 %i.ch, 1
  call void @_ZdlPvm(ptr noundef %i.cf, i64 noundef %i.ci) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cj = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %.not.i.i129 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i129, label %bb.p, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(128) %i.cj) #25, !inline_history !61
  br label %bb.p

bb.k:                                             ; preds = %bb.f
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit135

bb.l:                                             ; preds = %bb.g
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.m:                                             ; preds = %bb.h
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.cq, %bb.n ], [ %i.cp, %bb.m ] ; 2 uses
  %i.cr = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.i
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.o
  %i.ct = load i64, ptr %i.i, align 8, !tbaa !62
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cu) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.co, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %.pn, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cv = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %.not.i.i133 = icmp eq ptr %i.cv, null
  br i1 %.not.i.i133, label %_ZN7testing7MessageD2Ev.exit135, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(128) %i.cv) #25, !inline_history !61
  br label %_ZN7testing7MessageD2Ev.exit135

_ZN7testing7MessageD2Ev.exit135:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cn, %bb.k ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.fo

bb.p:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !54   ; 4 uses
  %.not.i.i.i136 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i136, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load ptr, ptr %.pr, align 8, !tbaa !55  ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !62
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #27
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %.noexc127, %.noexc127.thread, %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.de = load ptr, ptr %i.b, align 8, !tbaa !343
  %i.df = load i64, ptr %i.a, align 8, !tbaa !63  ; 3 uses
  %i.dg = load ptr, ptr %i.d, align 8, !tbaa !343
  %i.dh = load i64, ptr %i.c, align 8, !tbaa !63
  %.idx.i.i = shl nuw nsw i64 %i.df, 2
  %.not.i.i.i.i = icmp eq i64 %i.df, %i.dh
  br i1 %.not.i.i.i.i, label %bb.r, label %_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit.thread913

_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit.thread913: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  store i8 1, ptr %8, align 8, !tbaa !42
  store ptr null, ptr %i.j, align 8, !tbaa !64
  store i8 0, ptr %i.k, align 8, !tbaa !65
  br label %bb.s

bb.r:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.df, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit155, label %_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit

_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit: ; preds = %bb.r
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.de, ptr %i.dg, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.di = zext i1 %.not9.i.i.i.i.i.i.i.i to i8
  store i8 %i.di, ptr %8, align 8, !tbaa !42
  store ptr null, ptr %i.j, align 8, !tbaa !64
  store i8 0, ptr %i.k, align 8, !tbaa !65
  br i1 %.not9.i.i.i.i.i.i.i.i, label %bb.s, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit155

bb.s:                                             ; preds = %_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit.thread913, %_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %12, align 8, !tbaa !55
  %i.dk = load i64, ptr %i.l, align 8, !tbaa !67
  store i64 %i.dk, ptr %11, align 8
  store ptr %i.dj, ptr %i.m, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, i64 72, ptr nonnull @.str.2, i32 noundef 219, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %11)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  %i.dl = load ptr, ptr %12, align 8, !tbaa !55   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.n
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.w
  %i.dn = load i64, ptr %i.n, align 8, !tbaa !62
  %i.do = add i64 %i.dn, 1
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_142FixedArrayRelationalsTest_EqualArrays_Test8TestBodyEv:bb.a
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !351

bb.fo:                                            ; preds = %_ZN7testing7MessageD2Ev.exit416, %_ZN7testing7MessageD2Ev.exit386, %_ZN7testing7MessageD2Ev.exit356, %_ZN7testing7MessageD2Ev.exit327, %_ZN7testing7MessageD2Ev.exit298, %_ZN7testing7MessageD2Ev.exit269, %_ZN7testing7MessageD2Ev.exit240, %_ZN7testing7MessageD2Ev.exit221, %_ZN7testing7MessageD2Ev.exit202, %_ZN7testing7MessageD2Ev.exit176, %_ZN7testing7MessageD2Ev.exit150, %_ZN7testing7MessageD2Ev.exit135
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn116.pn.pn, %_ZN7testing7MessageD2Ev.exit416 ], [ %.pn111.pn.pn, %_ZN7testing7MessageD2Ev.exit386 ], [ %.pn106.pn.pn, %_ZN7testing7MessageD2Ev.exit356 ], [ %.pn101.pn.pn, %_ZN7testing7MessageD2Ev.exit327 ], [ %.pn96.pn.pn, %_ZN7testing7MessageD2Ev.exit298 ], [ %.pn91.pn.pn, %_ZN7testing7MessageD2Ev.exit269 ], [ %.pn86.pn.pn, %_ZN7testing7MessageD2Ev.exit240 ], [ %.pn81.pn.pn, %_ZN7testing7MessageD2Ev.exit221 ], [ %.pn76.pn.pn, %_ZN7testing7MessageD2Ev.exit202 ], [ %.pn71.pn.pn, %_ZN7testing7MessageD2Ev.exit176 ], [ %.pn66.pn.pn, %_ZN7testing7MessageD2Ev.exit150 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit135 ] ; 2 uses
  %i.uo = load i64, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  %i.up = icmp ult i64 %i.uo, 6
  br i1 %i.up, label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.uq = load ptr, ptr %i.d, align 8, !tbaa !343
  %i.ur = shl i64 %i.uo, 2
  call void @_ZdlPvm(ptr noundef %i.uq, i64 noundef %i.ur) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423

_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423: ; preds = %bb.fp, %bb.fo, %bb.e
  %.pn116.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn116.pn.pn.pn.pn, %bb.fp ], [ %i.cc, %bb.e ], [ %.pn116.pn.pn.pn.pn, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.us = load i64, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.ut = icmp ult i64 %i.us, 6
  br i1 %i.ut, label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit424, label %bb.fq

bb.fq:                                            ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423
  %i.uu = load ptr, ptr %i.b, align 8, !tbaa !343
  %i.uv = shl i64 %i.us, 2
  call void @_ZdlPvm(ptr noundef %i.uu, i64 noundef %i.uv) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit424

_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit424: ; preds = %bb.fq, %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn116.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144FixedArrayRelationalsTest_UnequalArrays_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_144FixedArrayRelationalsTest_UnequalArrays_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_144FixedArrayRelationalsTest_UnequalArrays_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_144FixedArrayRelationalsTest_UnequalArrays_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_144FixedArrayRelationalsTest_UnequalArrays_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::FixedArray.141", align 8 ; 6 uses
  %2 = alloca %"class.absl::lts_20260526::FixedArray.141", align 8 ; 6 uses
  %3 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %18 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %23 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %34 = alloca %"class.testing::Message", align 8 ; 7 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %36 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %38 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %39 = alloca %"class.testing::Message", align 8 ; 7 uses
  %40 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %41 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %43 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %44 = alloca %"class.testing::Message", align 8 ; 7 uses
  %45 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %46 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %48 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %49 = alloca %"class.testing::Message", align 8 ; 7 uses
  %50 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %51 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %52 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %53 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %54 = alloca %"class.testing::Message", align 8 ; 7 uses
  %55 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %56 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %59 = alloca %"class.testing::Message", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %61 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %62 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 14 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %32, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %41, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %52, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %51, i64 8
  %i.bb = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %56, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %57, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %61, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %62, i64 16 ; 4 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit422
  ret void

bb.c:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit422
  %indvars.iv.a = phi i64 [ 0, %bb.a ], [ %indvar.next, %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit422 ] ; 3 uses
  %indvar = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit422 ] ; 6 uses
  %i.bm = add i64 %indvars.iv.a, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 %indvar, ptr %i.a, align 8, !tbaa !22
  %i.bn = icmp samesign ult i64 %indvar, 6        ; 2 uses
  %.pre = shl nuw nsw i64 %indvar, 2              ; 4 uses
  br i1 %i.bn, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre) #28
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.bo, %bb.d ], [ %1, %bb.c ] ; 5 uses
  store ptr %.0.i.i.i, ptr %i.b, align 8, !tbaa !343
  %xtraiter = and i64 %i.bm, 7                    ; 3 uses
  %i.bp = icmp ult i64 %indvars.iv.a, 7
  br i1 %i.bp, label %.lr.ph.i.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %i.bm, -8
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %._crit_edge.new
  %.08.i = phi i32 [ 0, %._crit_edge.new ], [ %i.ce, %.lr.ph.i ] ; 9 uses
  %.057.i = phi ptr [ %.0.i.i.i, %._crit_edge.new ], [ %i.cf, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.7, %.lr.ph.i ]
  store i32 %.08.i, ptr %.057.i, align 4, !tbaa !30
  %i.bq = or disjoint i32 %.08.i, 1
  %i.br = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !30
  %i.bs = or disjoint i32 %.08.i, 2
  %i.bt = getelementptr inbounds nuw i8, ptr %.057.i, i64 8
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !30
  %i.bu = or disjoint i32 %.08.i, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %.057.i, i64 12
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !30
  %i.bw = or disjoint i32 %.08.i, 4
  %i.bx = getelementptr inbounds nuw i8, ptr %.057.i, i64 16
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !30
  %i.by = or disjoint i32 %.08.i, 5
  %i.bz = getelementptr inbounds nuw i8, ptr %.057.i, i64 20
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !30
  %i.ca = or disjoint i32 %.08.i, 6
  %i.cb = getelementptr inbounds nuw i8, ptr %.057.i, i64 24
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !30
  %i.cc = or disjoint i32 %.08.i, 7
  %i.cd = getelementptr inbounds nuw i8, ptr %.057.i, i64 28
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !30
  %i.ce = add nuw nsw i32 %.08.i, 8               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.057.i, i64 32 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.unr-lcssa, label %.lr.ph.i, !llvm.loop !352

.unr-lcssa:                                       ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.unr-lcssa, %._crit_edge
  %.08.i.epil.init = phi i32 [ 0, %._crit_edge ], [ %i.ce, %.unr-lcssa ]
  %.057.i.epil.init = phi ptr [ %.0.i.i.i, %._crit_edge ], [ %i.cf, %.unr-lcssa ]
  %lcmp.mod929 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod929)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.08.i.epil = phi i32 [ %i.cg, %.lr.ph.i.epil ], [ %.08.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %.057.i.epil = phi ptr [ %i.ch, %.lr.ph.i.epil ], [ %.057.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  store i32 %.08.i.epil, ptr %.057.i.epil, align 4, !tbaa !30
  %i.cg = add nuw nsw i32 %.08.i.epil, 1
  %i.ch = getelementptr inbounds nuw i8, ptr %.057.i.epil, i64 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.lr.ph.i.epil, !llvm.loop !353

.epilog-lcssa:                                    ; preds = %.lr.ph.i.epil, %.unr-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i64 %indvar, ptr %i.c, align 8, !tbaa !22
  br i1 %i.bn, label %.noexc127, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i: ; preds = %.epilog-lcssa
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %.pre) #28
          to label %.noexc127 unwind label %bb.e

.noexc127:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i, %.epilog-lcssa
  %.0.i.i.i125 = phi ptr [ %2, %.epilog-lcssa ], [ %i.ci, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i ] ; 4 uses
  store ptr %.0.i.i.i125, ptr %i.d, align 8, !tbaa !343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.0.i.i.i125, ptr noundef nonnull align 4 dereferenceable(1) %.0.i.i.i, i64 %.pre, i1 false), !tbaa !30
  %i.cj = lshr i64 %indvar, 1
  %i.ck = and i64 %i.cj, 2147483647
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i125, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !30
  %i.cn = add nsw i32 %i.cm, -1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %.0.i.i.i, ptr noundef nonnull dereferenceable(1) %.0.i.i.i125, i64 %.pre)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.co = zext i1 %.not9.i.i.i.i.i.i.i to i8
  store i8 %i.co, ptr %3, align 8, !tbaa !42
  store ptr null, ptr %i.e, align 8, !tbaa !64
  store i8 0, ptr %i.f, align 8, !tbaa !65
  br i1 %.not9.i.i.i.i.i.i.i, label %bb.f, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423

bb.f:                                             ; preds = %.noexc127
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.cq = load ptr, ptr %7, align 8, !tbaa !55
  %i.cr = load i64, ptr %i.g, align 8, !tbaa !67
  store i64 %i.cr, ptr %6, align 8
  store ptr %i.cq, ptr %i.h, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, i64 72, ptr nonnull @.str.2, i32 noundef 240, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %6)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  %i.cs = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.i
  br i1 %i.ct, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.cu = load i64, ptr %i.i, align 8, !tbaa !62
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cw = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %.not.i.i129 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i129, label %bb.p, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #25, !inline_history !61
  br label %bb.p

bb.k:                                             ; preds = %bb.f
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit135

bb.l:                                             ; preds = %bb.g
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.m:                                             ; preds = %bb.h
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.n ], [ %i.dc, %bb.m ] ; 2 uses
  %i.de = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.i
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.o
  %i.dg = load i64, ptr %i.i, align 8, !tbaa !62
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.db, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %.pn, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.di = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %.not.i.i133 = icmp eq ptr %i.di, null
  br i1 %.not.i.i133, label %_ZN7testing7MessageD2Ev.exit135, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !9
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(128) %i.di) #25, !inline_history !61
  br label %_ZN7testing7MessageD2Ev.exit135

_ZN7testing7MessageD2Ev.exit135:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %i.da, %bb.k ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.fo

bb.p:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !54   ; 4 uses
  %.not.i.i.i136 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i136, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = load ptr, ptr %.pr, align 8, !tbaa !55  ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.do = icmp eq ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.dp = load i64, ptr %i.dn, align 8, !tbaa !62
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dq) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #27
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %.noexc127, %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !343
  %i.ds = load i64, ptr %i.a, align 8, !tbaa !63  ; 3 uses
  %i.dt = load ptr, ptr %i.d, align 8, !tbaa !343
  %i.du = load i64, ptr %i.c, align 8, !tbaa !63
  %.idx.i.i = shl nuw nsw i64 %i.ds, 2
  %.not.i.i.i.i = icmp eq i64 %i.ds, %i.du
  br i1 %.not.i.i.i.i, label %bb.r, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit155

bb.r:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ds, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit.thread462, label %_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit

_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit.thread462: ; preds = %bb.r
  store i8 0, ptr %8, align 8, !tbaa !42
  store ptr null, ptr %i.j, align 8, !tbaa !64
  store i8 1, ptr %i.k, align 8, !tbaa !65
  br label %bb.s

_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit: ; preds = %bb.r
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.dr, ptr %i.dt, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.dv = zext i1 %.not9.i.i.i.i.i.i.i.i to i8
  store i8 %i.dv, ptr %8, align 8, !tbaa !42
  store ptr null, ptr %i.j, align 8, !tbaa !64
  store i8 1, ptr %i.k, align 8, !tbaa !65
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit155, label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit.thread462, %_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.dw = load ptr, ptr %12, align 8, !tbaa !55
  %i.dx = load i64, ptr %i.l, align 8, !tbaa !67
  store i64 %i.dx, ptr %11, align 8
  store ptr %i.dw, ptr %i.m, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, i64 72, ptr nonnull @.str.2, i32 noundef 241, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %11)
          to label %bb.v unwind label %bb.z

bb.v:                                             ; preds = %bb.u
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.w unwind label %bb.aa

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_144FixedArrayRelationalsTest_UnequalArrays_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #25
  %i.tc = load ptr, ptr %i.d, align 8, !tbaa !343 ; 4 uses
  %i.td = load i64, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.tc, i64 %i.td
  %i.tf = load ptr, ptr %i.b, align 8, !tbaa !343 ; 3 uses
  %i.tg = load i64, ptr %i.a, align 8, !tbaa !63  ; 3 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.tf, i64 %i.tg
  %.idx4.i.i392 = shl nuw nsw i64 %i.tg, 2
  %i.ti = icmp ult i64 %i.tg, %i.td
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tc, i64 %.idx4.i.i392
  %i.tk = select i1 %i.ti, ptr %i.tj, ptr %i.te   ; 2 uses
  %.not22.i.i.i.i.i.i.i393 = icmp eq ptr %i.tc, %i.tk
  br i1 %.not22.i.i.i.i.i.i.i393, label %_ZN4absl12lts_20260526geERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit402, label %.lr.ph.i.i.i.i.i.i.i394

.lr.ph.i.i.i.i.i.i.i394:                          ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit391, %bb.ez
  %.01924.i.i.i.i.i.i.i395 = phi ptr [ %i.tp, %bb.ez ], [ %i.tf, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit391 ] ; 2 uses
  %.02023.i.i.i.i.i.i.i396 = phi ptr [ %i.to, %bb.ez ], [ %i.tc, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit391 ] ; 2 uses
  %i.tl = load i32, ptr %.02023.i.i.i.i.i.i.i396, align 4, !tbaa !30 ; 2 uses
  %i.tm = load i32, ptr %.01924.i.i.i.i.i.i.i395, align 4, !tbaa !30 ; 2 uses
  %.not.i397 = icmp slt i32 %i.tl, %i.tm
  br i1 %.not.i397, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit421, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i394
  %i.tn = icmp slt i32 %i.tm, %i.tl
  br i1 %i.tn, label %_ZN4absl12lts_20260526geERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit402.thread906, label %bb.ez

_ZN4absl12lts_20260526geERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit402.thread906: ; preds = %bb.ey
  store i8 1, ptr %58, align 8, !tbaa !42
  store ptr null, ptr %i.bh, align 8, !tbaa !64
  store i8 0, ptr %i.bi, align 8, !tbaa !65
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ey
  %i.to = getelementptr inbounds nuw i8, ptr %.02023.i.i.i.i.i.i.i396, i64 4 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %.01924.i.i.i.i.i.i.i395, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i398 = icmp eq ptr %i.to, %i.tk
  br i1 %.not.i.i.i.i.i.i.i398, label %_ZN4absl12lts_20260526geERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit402, label %.lr.ph.i.i.i.i.i.i.i394, !llvm.loop !350

_ZN4absl12lts_20260526geERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit402: ; preds = %bb.ez, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit391
  %.019.lcssa.i.i.i.i.i.i.i400 = phi ptr [ %i.tf, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit391 ], [ %i.tp, %bb.ez ]
  %i.tq = icmp eq ptr %.019.lcssa.i.i.i.i.i.i.i400, %i.th ; 2 uses
  %i.tr = zext i1 %i.tq to i8
  store i8 %i.tr, ptr %58, align 8, !tbaa !42
  store ptr null, ptr %i.bh, align 8, !tbaa !64
  store i8 0, ptr %i.bi, align 8, !tbaa !65
  br i1 %i.tq, label %bb.fa, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit421

bb.fa:                                            ; preds = %_ZN4absl12lts_20260526geERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit402.thread906, %_ZN4absl12lts_20260526geERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit402
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.fb unwind label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %62, ptr noundef nonnull align 8 dereferenceable(16) %58, ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84)
          to label %bb.fc unwind label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  %i.ts = load ptr, ptr %62, align 8, !tbaa !55
  %i.tt = load i64, ptr %i.bj, align 8, !tbaa !67
  store i64 %i.tt, ptr %61, align 8
  store ptr %i.ts, ptr %i.bk, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %60, i32 noundef 1, i64 72, ptr nonnull @.str.2, i32 noundef 251, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %61)
          to label %bb.fd unwind label %bb.fh

bb.fd:                                            ; preds = %bb.fc
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(8) %59)
          to label %bb.fe unwind label %bb.fi

bb.fe:                                            ; preds = %bb.fd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #25
  %i.tu = load ptr, ptr %62, align 8, !tbaa !55   ; 2 uses
  %i.tv = icmp eq ptr %i.tu, %i.bl
  br i1 %i.tv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405: ; preds = %bb.fe
  %i.tw = load i64, ptr %i.bl, align 8, !tbaa !62
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tu, i64 noundef %i.tx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407: ; preds = %bb.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i405
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #25
  %i.ty = load ptr, ptr %59, align 8, !tbaa !59   ; 3 uses
  %.not.i.i408 = icmp eq ptr %i.ty, null
  br i1 %.not.i.i408, label %bb.fk, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !9
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8
  call void %i.ub(ptr noundef nonnull align 8 dereferenceable(128) %i.ty) #25, !inline_history !61
  br label %bb.fk

bb.ff:                                            ; preds = %bb.fa
  %i.uc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit416

bb.fg:                                            ; preds = %bb.fb
  %i.ud = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413

bb.fh:                                            ; preds = %bb.fc
  %i.ue = landingpad { ptr, i32 }
          cleanup
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fd
  %i.uf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #25
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %.pn116 = phi { ptr, i32 } [ %i.uf, %bb.fi ], [ %i.ue, %bb.fh ] ; 2 uses
  %i.ug = load ptr, ptr %62, align 8, !tbaa !55   ; 2 uses
  %i.uh = icmp eq ptr %i.ug, %i.bl
  br i1 %i.uh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411: ; preds = %bb.fj
  %i.ui = load i64, ptr %i.bl, align 8, !tbaa !62
  %i.uj = add i64 %i.ui, 1
  call void @_ZdlPvm(ptr noundef %i.ug, i64 noundef %i.uj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413: ; preds = %bb.fj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411, %bb.fg
  %.pn116.pn = phi { ptr, i32 } [ %i.ud, %bb.fg ], [ %.pn116, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i411 ], [ %.pn116, %bb.fj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #25
  %i.uk = load ptr, ptr %59, align 8, !tbaa !59   ; 3 uses
  %.not.i.i414 = icmp eq ptr %i.uk, null
  br i1 %.not.i.i414, label %_ZN7testing7MessageD2Ev.exit416, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !9
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load ptr, ptr %i.um, align 8
  call void %i.un(ptr noundef nonnull align 8 dereferenceable(128) %i.uk) #25, !inline_history !61
  br label %_ZN7testing7MessageD2Ev.exit416

_ZN7testing7MessageD2Ev.exit416:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413, %bb.ff
  %.pn116.pn.pn = phi { ptr, i32 } [ %i.uc, %bb.ff ], [ %.pn116.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit413 ], [ %.pn116.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i415 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #25
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %58) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  br label %bb.fo

bb.fk:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i409, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit407
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #25
  %.pr514 = load ptr, ptr %i.bh, align 8, !tbaa !54 ; 4 uses
  %.not.i.i.i417 = icmp eq ptr %.pr514, null
  br i1 %.not.i.i.i417, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit421, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.uo = load ptr, ptr %.pr514, align 8, !tbaa !55 ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %.pr514, i64 16 ; 2 uses
  %i.uq = icmp eq ptr %i.uo, %i.up
  br i1 %i.uq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i419, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i418

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i418: ; preds = %bb.fl
  %i.ur = load i64, ptr %i.up, align 8, !tbaa !62
  %i.us = add i64 %i.ur, 1
  call void @_ZdlPvm(ptr noundef %i.uo, i64 noundef %i.us) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i419

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i419: ; preds = %bb.fl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i418
  call void @_ZdlPvm(ptr noundef nonnull %.pr514, i64 noundef 32) #27
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit421

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit421: ; preds = %.lr.ph.i.i.i.i.i.i.i394, %_ZN4absl12lts_20260526geERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit402, %bb.fk, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i419
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  %i.ut = load i64, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  %i.uu = icmp ult i64 %i.ut, 6
  br i1 %i.uu, label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit, label %bb.fm

bb.fm:                                            ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit421
  %i.uv = load ptr, ptr %i.d, align 8, !tbaa !343
  %i.uw = shl i64 %i.ut, 2
  call void @_ZdlPvm(ptr noundef %i.uv, i64 noundef %i.uw) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit

_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit421, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.ux = load i64, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.uy = icmp ult i64 %i.ux, 6
  br i1 %i.uy, label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit422, label %bb.fn

bb.fn:                                            ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit
  %i.uz = load ptr, ptr %i.b, align 8, !tbaa !343
  %i.va = shl i64 %i.ux, 2
  call void @_ZdlPvm(ptr noundef %i.uz, i64 noundef %i.va) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit422

_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit422: ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %indvars.iv.next = add nuw nsw i64 %indvar, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  %indvar.next = add i64 %indvars.iv.a, 1
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !354

bb.fo:                                            ; preds = %_ZN7testing7MessageD2Ev.exit416, %_ZN7testing7MessageD2Ev.exit386, %_ZN7testing7MessageD2Ev.exit356, %_ZN7testing7MessageD2Ev.exit327, %_ZN7testing7MessageD2Ev.exit298, %_ZN7testing7MessageD2Ev.exit269, %_ZN7testing7MessageD2Ev.exit240, %_ZN7testing7MessageD2Ev.exit221, %_ZN7testing7MessageD2Ev.exit202, %_ZN7testing7MessageD2Ev.exit176, %_ZN7testing7MessageD2Ev.exit150, %_ZN7testing7MessageD2Ev.exit135
  %.pn116.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn116.pn.pn, %_ZN7testing7MessageD2Ev.exit416 ], [ %.pn111.pn.pn, %_ZN7testing7MessageD2Ev.exit386 ], [ %.pn106.pn.pn, %_ZN7testing7MessageD2Ev.exit356 ], [ %.pn101.pn.pn, %_ZN7testing7MessageD2Ev.exit327 ], [ %.pn96.pn.pn, %_ZN7testing7MessageD2Ev.exit298 ], [ %.pn91.pn.pn, %_ZN7testing7MessageD2Ev.exit269 ], [ %.pn86.pn.pn, %_ZN7testing7MessageD2Ev.exit240 ], [ %.pn81.pn.pn, %_ZN7testing7MessageD2Ev.exit221 ], [ %.pn76.pn.pn, %_ZN7testing7MessageD2Ev.exit202 ], [ %.pn71.pn.pn, %_ZN7testing7MessageD2Ev.exit176 ], [ %.pn66.pn.pn, %_ZN7testing7MessageD2Ev.exit150 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit135 ] ; 2 uses
  %i.vb = load i64, ptr %i.c, align 8, !tbaa !63  ; 2 uses
  %i.vc = icmp ult i64 %i.vb, 6
  br i1 %i.vc, label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.vd = load ptr, ptr %i.d, align 8, !tbaa !343
  %i.ve = shl i64 %i.vb, 2
  call void @_ZdlPvm(ptr noundef %i.vd, i64 noundef %i.ve) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423

_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423: ; preds = %bb.fp, %bb.fo, %bb.e
  %.pn116.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn116.pn.pn.pn.pn, %bb.fp ], [ %i.cp, %bb.e ], [ %.pn116.pn.pn.pn.pn, %bb.fo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.vf = load i64, ptr %i.a, align 8, !tbaa !63  ; 2 uses
  %i.vg = icmp ult i64 %i.vf, 6
  br i1 %i.vg, label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit424, label %bb.fq

bb.fq:                                            ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423
  %i.vh = load ptr, ptr %i.b, align 8, !tbaa !343
  %i.vi = shl i64 %i.vf, 2
  call void @_ZdlPvm(ptr noundef %i.vh, i64 noundef %i.vi) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit424

_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit424: ; preds = %bb.fq, %_ZN4absl12lts_2026052610FixedArrayIiLm5ESaIiEED2Ev.exit423
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  resume { ptr, i32 } %.pn116.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_138IteratorConstructorTest_NonInline_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_138IteratorConstructorTest_NonInline_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_138IteratorConstructorTest_NonInline_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_138IteratorConstructorTest_NonInline_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_138IteratorConstructorTest_NonInline_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 12 uses
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %2 = alloca %"class.testing::Message", align 8  ; 7 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 39 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %i.a, ptr noundef nonnull align 16 dereferenceable(28) @_ZZN12_GLOBAL__N_124FixedArrayTest_Data_Test8TestBodyEvE6kInput, i64 28, i1 false)
  %i.b = tail call noalias noundef nonnull dereferenceable(28) ptr @_Znwm(i64 noundef 28) #28 ; 11 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.b, ptr noundef nonnull align 16 dereferenceable(28) @_ZZN12_GLOBAL__N_124FixedArrayTest_Data_Test8TestBodyEvE6kInput, i64 28, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.b

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.a
  %i.c = load i8, ptr %1, align 8, !tbaa !42, !range !52, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.critedge, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.c:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54   ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.g, null
  br i1 %.not.i.i35, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !55
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.i = phi ptr [ %i.h, %bb.e ], [ @.str.130, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 364, ptr noundef %i.i)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.j = load ptr, ptr %2, align 8, !tbaa !59     ; 3 uses
  %.not.i.i36 = icmp eq ptr %i.j, null
  br i1 %.not.i.i36, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(128) %i.j) #25, !inline_history !61
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !54   ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.n, null
  br i1 %.not.i.i37, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !55   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.r = load i64, ptr %i.p, align 8, !tbaa !62
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 32) #27
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm6ESaIiEED2Ev.exit

bb.i:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit40

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.v, %bb.k ], [ %i.u, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.w = load ptr, ptr %2, align 8, !tbaa !59     ; 3 uses
  %.not.i.i38 = icmp eq ptr %i.w, null
  br i1 %.not.i.i38, label %_ZN7testing7MessageD2Ev.exit40, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39: ; preds = %bb.l
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(128) %i.w) #25, !inline_history !61
  br label %_ZN7testing7MessageD2Ev.exit40

_ZN7testing7MessageD2Ev.exit40:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #25
  br label %bb.o

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !54 ; 4 uses
  %.not.i.i41 = icmp eq ptr %i.ab, null
  br i1 %.not.i.i41, label %bb.n, label %bb.m

end_hunk_2
