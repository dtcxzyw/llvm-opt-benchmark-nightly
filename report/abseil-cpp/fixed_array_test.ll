inline.NumInlined: 9191
inline.NumDeleted: 3189
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128FixedArrayTest_Hardened_TestEE10CreateTestEv
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_128FixedArrayTest_Hardened_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
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
  %63 = add nuw i64 %indvar, 4611686018427387903
  %64 = and i64 %63, 4611686018427387903          ; 2 uses
  %i.bm = add nuw nsw i64 %64, 1                  ; 2 uses
  %i.bn = shl nuw nsw i64 %indvar, 2              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store i64 %indvar, ptr %i.a, align 8, !tbaa !22
  %i.bo = icmp samesign ult i64 %indvar, 6        ; 2 uses
  br i1 %i.bo, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.bp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #28 ; 2 uses
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !343
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
  %.0.i.i.i895 = phi ptr [ %i.bp, %.thread ], [ %1, %bb.d ] ; 6 uses
  %65 = getelementptr inbounds nuw i8, ptr %.0.i.i.i895, i64 %i.bn
  %min.iters.check = icmp samesign ult i64 %64, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader946, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.bm, 9223372036854775800     ; 4 uses
  %i.bq = trunc i64 %n.vec to i32
  %i.br = shl i64 %n.vec, 2
  %i.bs = getelementptr i8, ptr %.0.i.i.i895, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.bt = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.i.i.i895, i64 %i.bt ; 2 uses
  %i.bu = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep, align 4, !tbaa !30
  store <4 x i32> %step.add, ptr %i.bu, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !346

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.preheader946

.lr.ph.i.preheader946:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.08.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.bq, %middle.block ]
  %.057.i.ph = phi ptr [ %.0.i.i.i895, %.lr.ph.i.preheader ], [ %i.bs, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader946, %.lr.ph.i
  %.08.i = phi i32 [ %i.bw, %.lr.ph.i ], [ %.08.i.ph, %.lr.ph.i.preheader946 ] ; 2 uses
  %.057.i = phi ptr [ %i.bx, %.lr.ph.i ], [ %.057.i.ph, %.lr.ph.i.preheader946 ] ; 2 uses
  store i32 %.08.i, ptr %.057.i, align 4, !tbaa !30
  %i.bw = add nuw nsw i32 %.08.i, 1
  %i.bx = getelementptr inbounds nuw i8, ptr %.057.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bx, %65
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !349

.loopexit:                                        ; preds = %.lr.ph.i, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store i64 %indvar, ptr %i.c, align 8, !tbaa !22
  br i1 %i.bo, label %.noexc127, label %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i: ; preds = %.loopexit
  %i.by = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #28
          to label %.noexc127 unwind label %bb.e

.noexc127:                                        ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i, %.loopexit
  %.0.i.i.i125 = phi ptr [ %2, %.loopexit ], [ %i.by, %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i ] ; 3 uses
  store ptr %.0.i.i.i125, ptr %i.d, align 8, !tbaa !343
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.0.i.i.i125, ptr nonnull align 4 %.0.i.i.i895, i64 %i.bn, i1 false), !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %.0.i.i.i895, ptr nonnull %.0.i.i.i125, i64 %i.bn)
  %.not9.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.bz = zext i1 %.not9.i.i.i.i.i.i.i to i8
  store i8 %i.bz, ptr %3, align 8, !tbaa !42
  store ptr null, ptr %i.e, align 8, !tbaa !64
  store i8 1, ptr %i.f, align 8, !tbaa !65
  br i1 %.not9.i.i.i.i.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit, label %bb.f

bb.e:                                             ; preds = %_ZNSt15__new_allocatorIiE8allocateEmPKv.exit.i.i.i
  %i.ca = landingpad { ptr, i32 }
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
  %i.cb = load ptr, ptr %7, align 8, !tbaa !55
  %i.cc = load i64, ptr %i.g, align 8, !tbaa !67
  store i64 %i.cc, ptr %6, align 8
  store ptr %i.cb, ptr %i.h, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, i64 72, ptr nonnull @.str.2, i32 noundef 218, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %6)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  %i.cd = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.ce = icmp eq ptr %i.cd, %i.i
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.cf = load i64, ptr %i.i, align 8, !tbaa !62
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ch = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %.not.i.i129 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i129, label %bb.p, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  call void %i.ck(ptr noundef nonnull align 8 dereferenceable(128) %i.ch) #25, !inline_history !61
  br label %bb.p

bb.k:                                             ; preds = %bb.f
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit135

bb.l:                                             ; preds = %bb.g
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

bb.m:                                             ; preds = %bb.h
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.co, %bb.n ], [ %i.cn, %bb.m ] ; 2 uses
  %i.cp = load ptr, ptr %7, align 8, !tbaa !55    ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.i
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.o
  %i.cr = load i64, ptr %i.i, align 8, !tbaa !62
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.cm, %bb.l ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130 ], [ %.pn, %bb.o ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.ct = load ptr, ptr %4, align 8, !tbaa !59    ; 3 uses
  %.not.i.i133 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i133, label %_ZN7testing7MessageD2Ev.exit135, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #25, !inline_history !61
  br label %_ZN7testing7MessageD2Ev.exit135

_ZN7testing7MessageD2Ev.exit135:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.k ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134 ]
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
  %i.cx = load ptr, ptr %.pr, align 8, !tbaa !55  ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.q
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !62
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #27
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #27
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit: ; preds = %.noexc127, %.noexc127.thread, %bb.p, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !343
  %i.dd = load i64, ptr %i.a, align 8, !tbaa !63  ; 3 uses
  %i.de = load ptr, ptr %i.d, align 8, !tbaa !343
  %i.df = load i64, ptr %i.c, align 8, !tbaa !63
  %.idx.i.i = shl nuw nsw i64 %i.dd, 2
  %.not.i.i.i.i = icmp eq i64 %i.dd, %i.df
  br i1 %.not.i.i.i.i, label %bb.r, label %_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit.thread913

_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit.thread913: ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  store i8 1, ptr %8, align 8, !tbaa !42
  store ptr null, ptr %i.j, align 8, !tbaa !64
  store i8 0, ptr %i.k, align 8, !tbaa !65
  br label %bb.s

bb.r:                                             ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dd, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit155, label %_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit

_ZN4absl12lts_20260526neERKNS0_10FixedArrayIiLm5ESaIiEEES5_.exit: ; preds = %bb.r
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.dc, ptr %i.de, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i.i.i = icmp ne i32 %bcmp.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.dg = zext i1 %.not9.i.i.i.i.i.i.i.i to i8
  store i8 %i.dg, ptr %8, align 8, !tbaa !42
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
  %i.dh = load ptr, ptr %12, align 8, !tbaa !55
  %i.di = load i64, ptr %i.l, align 8, !tbaa !67
  store i64 %i.di, ptr %11, align 8
end_hunk_0
begin_hunk_1_@_ZN7testing13PrintToStringIN4absl12lts_2026052610FixedArrayIiLm4ENS2_18container_internal17CountingAllocatorIiEEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121, !noalias !1851 ; 3 uses
  %.not.i.not.i.i = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1851 ; 2 uses
  %i.h = icmp ugt ptr %i.e, %i.g
  %.08.i.i.i = select i1 %i.h, ptr %i.e, ptr %i.g ; 2 uses
  %.not5.i.i = icmp eq ptr %.08.i.i.i, null
  %.not.i.i = select i1 %.not.i.not.i.i, i1 true, i1 %.not5.i.i
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052610FixedArrayIiLm4ENS3_18container_internal17CountingAllocatorIiEEEEE5PrintERKS8_PSo.exit
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123, !noalias !1851 ; 2 uses
  %i.k = ptrtoint ptr %.08.i.i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.j, i64 noundef %i.m)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !55, !alias.scope !1851 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.b
  br i1 %i.q, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8, !tbaa !62, !alias.scope !1851
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #27
  br label %.body

bb.d:                                             ; preds = %_ZN7testing8internal21UniversalTersePrinterIN4absl12lts_2026052610FixedArrayIiLm4ENS3_18container_internal17CountingAllocatorIiEEEEE5PrintERKS8_PSo.exit
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.t)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.c

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.d, %bb.b
  %i.u = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.u, ptr %2, align 8, !tbaa !9
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr %2, i64 %i.x
  store ptr %i.v, ptr %i.y, align 8, !tbaa !9
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.z, ptr %i.a, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.aa, align 8, !tbaa !9
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !55 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !62
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.aa, align 8, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ah) #25
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ai, ptr %2, align 8, !tbaa !9
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ak = getelementptr i8, ptr %i.ai, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %2, i64 %i.al
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !133
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ao) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ap, %bb.e ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.o, %bb.c ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestFactoryBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_138FixedArrayTest_AbslHashValueWorks_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_138FixedArrayTest_AbslHashValueWorks_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_138FixedArrayTest_AbslHashValueWorks_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #27
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_138FixedArrayTest_AbslHashValueWorks_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #25
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_138FixedArrayTest_AbslHashValueWorks_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.520", align 8   ; 9 uses
  %2 = alloca %"class.std::vector.514", align 8   ; 11 uses
  %3 = alloca %"class.absl::lts_20260526::FixedArray.118", align 8 ; 21 uses
  %i.a = ptrtoaddr ptr %3 to i64
  %4 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 264 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.g

bb.b:                                             ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25, !noalias !1852
  invoke void @_ZN4absl12lts_2026052613hash_internal17ContainerAsVectorISt6vectorINS0_10FixedArrayIiLm18446744073709551615ESaIiEEESaIS6_EEE2DoERKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.520") align 8 %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN4absl12lts_2026052613hash_internal37VerifyTypeImplementsAbslHashCorrectlyISt6vectorISt7variantIJPKNS0_10FixedArrayIiLm18446744073709551615ESaIiEEEEESaISA_EENS1_13DefaultEqualsEEEN7testing15AssertionResultERKT_T0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.noexc
  %i.f = load ptr, ptr %1, align 8, !tbaa !1855, !noalias !1852 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1858, !noalias !1852
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %bb.m

bb.e:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %1, align 8, !tbaa !1855, !noalias !1852 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorISt7variantIJPKN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEEEESaIS8_EED2Ev.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1858, !noalias !1852
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #27
  br label %_ZNSt6vectorISt7variantIJPKN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEEEESaIS8_EED2Ev.exit3.i

_ZNSt6vectorISt7variantIJPKN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEEEESaIS8_EED2Ev.exit3.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !1852
  br label %.body

bb.g:                                             ; preds = %bb.a, %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit
  %indvars.iv44 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next45, %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit ] ; 10 uses
  %9 = add nuw i64 %indvars.iv44, 4611686018427387903
  %10 = and i64 %9, 4611686018427387903           ; 2 uses
  %i.s = add nuw nsw i64 %10, 1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i64 %indvars.iv44, ptr %i.b, align 8, !tbaa !22
  store ptr %3, ptr %i.c, align 8, !tbaa !287
  %.not42 = icmp eq i64 %indvars.iv44, 0
  br i1 %.not42, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %xtraiter = and i64 %indvars.iv44, 7            ; 3 uses
  %i.t = icmp samesign ult i64 %indvars.iv44, 8
  br i1 %i.t, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %indvars.iv44, 9223372036854775800
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !1859 ; 6 uses
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !1862
  %.not.i = icmp eq ptr %i.u, %i.v
  br i1 %.not.i, label %bb.i, label %bb.h

._crit_edge.thread.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.thread.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.thread.unr-lcssa ]
  %lcmp.mod73 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod73)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil
  %i.x = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.x, ptr %i.w, align 4, !tbaa !30
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread, label %.lr.ph.epil, !llvm.loop !1863

._crit_edge.thread:                               ; preds = %.lr.ph.epil, %._crit_edge.thread.unr-lcssa
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !1859 ; 11 uses
  %i.z = load ptr, ptr %i.e, align 8, !tbaa !1862
  %.not.i67 = icmp eq ptr %i.y, %i.z
  br i1 %.not.i67, label %bb.i, label %.lr.ph.i.i.i.i.i.preheader

bb.h:                                             ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 256
  store i64 %indvars.iv44, ptr %i.aa, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 264
  store ptr %i.u, ptr %i.ab, align 8, !tbaa !287
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %._crit_edge.thread
  %i.ac = ptrtoaddr ptr %i.y to i64
  %.idx4.i.i.i68 = shl nuw nsw i64 %indvars.iv44, 2
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %.idx4.i.i.i68
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 256
  store i64 %indvars.iv44, ptr %i.ae, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 264
  store ptr %i.y, ptr %i.af, align 8, !tbaa !287
  %min.iters.check = icmp samesign ult i64 %10, 7
  %i.ag = sub i64 %i.a, %i.ac
  %diff.check = icmp ugt i64 %i.ag, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader72, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.s, 9223372036854775800      ; 3 uses
  %i.ah = shl i64 %n.vec, 2                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 %i.ah
  %i.aj = getelementptr i8, ptr %3, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ak ; 2 uses
  %next.gep69 = getelementptr i8, ptr %3, i64 %i.ak ; 2 uses
  %i.al = getelementptr i8, ptr %next.gep69, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep69, align 8, !tbaa !30
  %wide.load70 = load <4 x i32>, ptr %i.al, align 8, !tbaa !30
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !30
  store <4 x i32> %wide.load70, ptr %i.am, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !1864

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i.preheader72

.lr.ph.i.i.i.i.i.preheader72:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0810.i.i.i.i.i.ph = phi ptr [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader72, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader72 ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0810.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader72 ] ; 2 uses
  %i.ao = load i32, ptr %.0810.i.i.i.i.i, align 4, !tbaa !30
  store i32 %i.ao, ptr %.011.i.i.i.i.i, align 4, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.ad
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1865

_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.h
  %i.ar = phi ptr [ %i.u, %bb.h ], [ %i.y, %middle.block ], [ %i.y, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 272
  store ptr %i.as, ptr %i.d, align 8, !tbaa !1859
  br label %_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE9push_backERKS4_.exit

bb.i:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.at = phi ptr [ %i.y, %._crit_edge.thread ], [ %i.u, %._crit_edge ]
  invoke void @_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.at, ptr noundef nonnull align 8 dereferenceable(272) %3)
          to label %_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE9push_backERKS4_.exit unwind label %bb.k

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 10 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.av = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.av, ptr %i.au, align 8, !tbaa !30
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.ax = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.ax, ptr %i.aw, align 4, !tbaa !30
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.az = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.az, ptr %i.ay, align 8, !tbaa !30
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.bb = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !30
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.3
  %i.bd = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.bd, ptr %i.bc, align 8, !tbaa !30
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.4
  %i.bf = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.bf, ptr %i.be, align 4, !tbaa !30
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.5
  %i.bh = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.bh, ptr %i.bg, align 8, !tbaa !30
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.6
  %i.bj = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.bj, ptr %i.bi, align 4, !tbaa !30
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.unr-lcssa, label %.lr.ph, !llvm.loop !1866

_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEC2ERKS3_.exit.i, %bb.i
  %i.bk = load i64, ptr %i.b, align 8, !tbaa !63  ; 2 uses
  %i.bl = icmp ult i64 %i.bk, 65
  br i1 %i.bl, label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE9push_backERKS4_.exit
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !287
  %i.bn = shl i64 %i.bk, 2
  call void @_ZdlPvm(ptr noundef %i.bm, i64 noundef %i.bn) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit

_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit: ; preds = %_ZNSt6vectorIN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEEESaIS4_EE9push_backERKS4_.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next45, 10
  br i1 %exitcond47.not, label %bb.b, label %bb.g, !llvm.loop !1867

bb.k:                                             ; preds = %bb.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !63  ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 65
  br i1 %i.bq, label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit30, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !287
  %i.bs = shl i64 %i.bp, 2
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bs) #27
  br label %_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit30

_ZN4absl12lts_2026052610FixedArrayIiLm18446744073709551615ESaIiEED2Ev.exit30: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %bb.ac

bb.m:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25, !noalias !1852
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i8 1, ptr %i.bt, align 8, !tbaa !65
  %i.bu = load i8, ptr %4, align 8, !tbaa !42, !range !52, !noundef !53
  %.not = icmp eq i8 %i.bu, 0
  br i1 %.not, label %bb.o, label %bb.y

bb.n:                                             ; preds = %bb.b
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull @.str.267, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.85)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %8, align 8, !tbaa !55
  %i.bx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !67
  store i64 %i.by, ptr %7, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.bw, ptr %i.bz, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, i64 72, ptr nonnull @.str.2, i32 noundef 871, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %7)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #25
  %i.ca = load ptr, ptr %8, align 8, !tbaa !55    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.cc = icmp eq ptr %i.ca, %i.cb
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !62
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.ce) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cf = load ptr, ptr %5, align 8, !tbaa !59    ; 3 uses
  %.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(128) %i.cf) #25, !inline_history !61
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.y

bb.t:                                             ; preds = %bb.o
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit36

bb.u:                                             ; preds = %bb.p
  %i.ck = landingpad { ptr, i32 }
          cleanup
end_hunk_1
