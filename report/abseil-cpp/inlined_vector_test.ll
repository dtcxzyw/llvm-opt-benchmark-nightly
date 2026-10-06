Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 191
loop-unroll.NumUnrolled: 288
begin_hunk_0_@_ZN12_GLOBAL__N_125UniquePtr_EraseMulti_Test8TestBodyEv:bb.a
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !195 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 16 ; 2 uses
  %i.hz = icmp eq ptr %i.hx, %i.hy
  br i1 %i.hz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i203

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i203: ; preds = %bb.cg
  %i.ia = load i64, ptr %i.hy, align 8, !tbaa !198
  %i.ib = add i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ib) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i203
  call void @_ZdlPvm(ptr noundef nonnull %i.hw, i64 noundef 32) #39
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204, %.critedge95
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  %i.ic = add nuw nsw i64 %.035226, 1             ; 2 uses
  %exitcond232.not = icmp eq i64 %i.ic, %indvars.iv230
  br i1 %exitcond232.not, label %.critedge99, label %.lr.ph227, !llvm.loop !1454

bb.ci:                                            ; preds = %_ZN7testing7MessageD2Ev.exit201, %bb.bv
  %.pn78.pn.pn = phi { ptr, i32 } [ %.pn78.pn, %_ZN7testing7MessageD2Ev.exit201 ], [ %i.hb, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br label %bb.cp

bb.cj:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i196, %_ZN7testing7MessageD2Ev.exit193
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  %i.id = load i64, ptr %1, align 8, !tbaa !197
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %.loopexit.sink.split, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageISt10unique_ptrImSt14default_deleteImEELm8ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.loopexit.sink.split unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.if = landingpad { ptr, i32 }
          catch ptr null
  %i.ig = extractvalue { ptr, i32 } %i.if, 0
  call void @__clang_call_terminate(ptr %i.ig) #35
  unreachable

.critedge99:                                      ; preds = %bb.ch, %bb.bs
  %i.ih = load i64, ptr %1, align 8, !tbaa !197
  %i.ii = icmp eq i64 %i.ih, 0
  br i1 %i.ii, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %.critedge99
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageISt10unique_ptrImSt14default_deleteImEELm8ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %bb.co unwind label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ij = landingpad { ptr, i32 }
          catch ptr null
  %i.ik = extractvalue { ptr, i32 } %i.ij, 0
  call void @__clang_call_terminate(ptr %i.ik) #35
  unreachable

bb.co:                                            ; preds = %bb.cm, %.critedge99
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  %i.il = add nuw nsw i64 %.0228, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next231, 12
  br i1 %exitcond233.not, label %.loopexit, label %bb.b, !llvm.loop !1455

bb.cp:                                            ; preds = %bb.ci, %bb.bt, %bb.bf, %bb.am, %bb.x, %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit104
  %.pn83.pn = phi { ptr, i32 } [ %.pn83, %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit104 ], [ %.pn78.pn.pn, %bb.ci ], [ %.pn74.pn.pn, %bb.bt ], [ %.pn70.pn.pn, %bb.bf ], [ %.pn.pn.pn, %bb.x ], [ %.pn66.pn.pn, %bb.am ]
  call void @_ZN4absl12lts_2026052613InlinedVectorISt10unique_ptrImSt14default_deleteImEELm8ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn83.pn

.critedge97:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit180, %_ZN7testing15AssertionResultD2Ev.exit162, %bb.an, %_ZN7testing15AssertionResultD2Ev.exit
  %i.im = load i64, ptr %1, align 8, !tbaa !197
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %.loopexit.sink.split, label %bb.cq

bb.cq:                                            ; preds = %.critedge97
  invoke void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageISt10unique_ptrImSt14default_deleteImEELm8ESaIS6_EE15DestroyContentsEv(ptr noundef nonnull align 8 dereferenceable(72) %1)
          to label %.loopexit.sink.split unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.io = landingpad { ptr, i32 }
          catch ptr null
  %i.ip = extractvalue { ptr, i32 } %i.io, 0
  call void @__clang_call_terminate(ptr %i.ip) #35
  unreachable

.loopexit.sink.split:                             ; preds = %bb.cq, %.critedge97, %bb.ck, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  br label %.loopexit

.loopexit:                                        ; preds = %bb.co, %.loopexit.sink.split
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132RefCountedVec_EraseBeginEnd_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_132RefCountedVec_EraseBeginEnd_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_132RefCountedVec_EraseBeginEnd_TestE, i64 16), ptr %i.a, align 8, !tbaa !169
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_132RefCountedVec_EraseBeginEnd_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_132RefCountedVec_EraseBeginEnd_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.absl::lts_20260526::log_internal::LogMessageFatal", align 8 ; 5 uses
  %14 = alloca %"class.absl::lts_20260526::log_internal::LogMessageFatal", align 8 ; 5 uses
  %15 = alloca %"class.absl::lts_20260526::log_internal::LogMessageFatal", align 8 ; 5 uses
  %16 = alloca %"class.absl::lts_20260526::inlined_vector_internal::IteratorValueAdapter.256", align 8 ; 4 uses
  %17 = alloca %"class.absl::lts_20260526::InlinedVector.233", align 8 ; 19 uses
  %18 = alloca %"class.(anonymous namespace)::RefCounted", align 8 ; 6 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  br label %.preheader345

.preheader345:                                    ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 2, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %indvar = phi i64 [ 0, %bb.a ], [ %indvar.next, %bb.c ] ; 2 uses
  %.077475 = phi i64 [ 1, %bb.a ], [ %i.af, %bb.c ] ; 7 uses
  %i.ac = shl nuw nsw i64 %indvar, 2
  %i.ad = add nuw nsw i64 %i.ac, 4
  %i.ae = shl nuw nsw i64 %.077475, 2             ; 3 uses
  br label %.preheader344

bb.b:                                             ; preds = %bb.c
  ret void

.preheader344:                                    ; preds = %.preheader345, %bb.d
  %.076474 = phi i64 [ 0, %.preheader345 ], [ %i.ag, %bb.d ] ; 12 uses
  %.idx339 = shl nuw nsw i64 %.076474, 4
  %.not476 = icmp eq i64 %.076474, 0              ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.d
  %i.af = add nuw nsw i64 %.077475, 1
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond602.not = icmp eq i64 %indvar.next, 19
  br i1 %exitcond602.not, label %bb.b, label %.preheader345, !llvm.loop !1458

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ag = add nuw nsw i64 %.076474, 1             ; 2 uses
  %exitcond601.not = icmp eq i64 %i.ag, %.077475
  br i1 %exitcond601.not, label %bb.c, label %.preheader344, !llvm.loop !1459

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.preheader344, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %.075473 = phi i64 [ %.076474, %.preheader344 ], [ %i.mt, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 9 uses
  %i.ah = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #41 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ah, i8 0, i64 %i.ad, i1 false), !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  store i64 0, ptr %17, align 8, !tbaa !302
  br label %bb.i

bb.e:                                             ; preds = %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit
  %i.ai = sub nuw nsw i64 %.075473, %.076474
  %i.aj = freeze i64 %i.ai                        ; 8 uses
  %.val.i.i = load i64, ptr %17, align 8, !tbaa !197 ; 3 uses
  %i.ak = trunc i64 %.val.i.i to i1
  %.val1.i.i = load ptr, ptr %i.j, align 8
  %i.al = select i1 %i.ak, ptr %.val1.i.i, ptr %i.j ; 3 uses
  %.not.i = icmp samesign eq i64 %.076474, %.075473
  br i1 %.not.i, label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE5eraseEPKS3_S7_.exit, label %bb.f, !prof !212

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx339
  %i.an = lshr i64 %.val.i.i, 1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %.075473
  %i.ap = ptrtoint ptr %i.ao to i64
  store i64 %i.ap, ptr %16, align 8, !tbaa !304
  %i.aq = sub nsw i64 %i.an, %.075473
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE(ptr noundef %i.am, ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %i.aq)
          to label %.noexc110 unwind label %bb.w

.noexc110:                                        ; preds = %bb.f
  %i.ar = sub nsw i64 %i.an, %i.aj
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %i.ar ; 3 uses
  %xtraiter = and i64 %i.aj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.noexc110
  %i.at = add nsw i64 %i.aj, -1                   ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.val.i242.prol = load ptr, ptr %i.av, align 8, !tbaa !306 ; 2 uses
  %i.aw = load i32, ptr %.val.i242.prol, align 4, !tbaa !211 ; 2 uses
  %i.ax = add nsw i32 %i.aw, -1                   ; 2 uses
  store i32 %i.ax, ptr %.val.i242.prol, align 4, !tbaa !211
  %.not.i.i.i.i243.prol = icmp slt i32 %i.aw, 1
  br i1 %.not.i.i.i.i243.prol, label %.loopexit, label %.lr.ph.i.i.i.prol.loopexit, !prof !212

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.noexc110
  %.02.i.i.i.unr = phi i64 [ %i.aj, %.noexc110 ], [ %i.at, %.lr.ph.i.i.i.prol ]
  %i.ay = icmp eq i64 %i.aj, 1
  br i1 %i.ay, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE5EraseEPKS4_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit247.1
  %.02.i.i.i = phi i64 [ %i.bi, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit247.1 ], [ %.02.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.az = getelementptr [16 x i8], ptr %i.as, i64 %.02.i.i.i
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %.val.i242 = load ptr, ptr %i.ba, align 8, !tbaa !306 ; 2 uses
  %i.bb = load i32, ptr %.val.i242, align 4, !tbaa !211 ; 2 uses
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %.val.i242, align 4, !tbaa !211
  %.not.i.i.i.i243 = icmp slt i32 %i.bb, 1
  br i1 %.not.i.i.i.i243, label %.loopexit, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit247, !prof !212

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit247
  %.lcssa890 = phi i32 [ %i.bm, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit247 ], [ %i.bc, %.lr.ph.i.i.i ], [ %i.ax, %.lr.ph.i.i.i.prol ]
  %i.bd = sext i32 %.lcssa890 to i64
  %i.be = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.bd, i64 noundef 0, ptr noundef nonnull @.str.282)
          to label %.noexc.i244 unwind label %bb.h

.noexc.i244:                                      ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.3, i32 noundef 114, ptr noundef nonnull %i.be) #42
          to label %.noexc1.i245 unwind label %bb.h

.noexc1.i245:                                     ; preds = %.noexc.i244
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i246 unwind label %bb.g

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i246: ; preds = %.noexc1.i245
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #35
  unreachable

bb.g:                                             ; preds = %.noexc1.i245
  %i.bf = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #35
  unreachable

bb.h:                                             ; preds = %.noexc.i244, %.loopexit
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #35
  unreachable

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit247:        ; preds = %.lr.ph.i.i.i
  %i.bi = add nsw i64 %.02.i.i.i, -2              ; 3 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.as, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %.val.i242.1 = load ptr, ptr %i.bk, align 8, !tbaa !306 ; 2 uses
  %i.bl = load i32, ptr %.val.i242.1, align 4, !tbaa !211 ; 2 uses
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %.val.i242.1, align 4, !tbaa !211
  %.not.i.i.i.i243.1 = icmp slt i32 %i.bl, 1
  br i1 %.not.i.i.i.i243.1, label %.loopexit, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit247.1, !prof !212

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit247.1:      ; preds = %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit247
  %.not.i.i.i.1 = icmp eq i64 %i.bi, 0
  br i1 %.not.i.i.i.1, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE5EraseEPKS4_S8_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !21

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE5EraseEPKS4_S8_.exit.i: ; preds = %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit247.1, %.lr.ph.i.i.i.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  %.val.i12.i.i = load i64, ptr %17, align 8, !tbaa !197
  %i.bn = shl nuw nsw i64 %i.aj, 1
  %i.bo = sub i64 %.val.i12.i.i, %i.bn            ; 2 uses
  store i64 %i.bo, ptr %17, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE5eraseEPKS3_S7_.exit

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit
  %.051461 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.cg, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  %i.bp = trunc nuw nsw i64 %.051461 to i32       ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.051461 ; 10 uses
  store i32 %i.bp, ptr %18, align 8, !tbaa !307
  store ptr %i.bq, ptr %i.h, align 8, !tbaa !306
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !211
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !211
  %.val.i.i.i.i111 = load i64, ptr %17, align 8, !tbaa !197, !noalias !1501 ; 3 uses
  %i.bt = trunc i64 %.val.i.i.i.i111 to i1        ; 2 uses
  %.val4.i.i.i.i = load i64, ptr %i.i, align 8, !noalias !1501
  %.sink.i.i.i.i = select i1 %i.bt, i64 %.val4.i.i.i.i, i64 8
  %.sink5.i.i.i.i = lshr i64 %.val.i.i.i.i111, 1  ; 2 uses
  %.not.i.i.i112 = icmp eq i64 %.sink5.i.i.i.i, %.sink.i.i.i.i
  br i1 %.not.i.i.i112, label %bb.j, label %_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i.i, !prof !212

_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i.i: ; preds = %bb.i
  %.val1.i.i.i.i113 = load ptr, ptr %i.j, align 8, !noalias !1501
  %.sink6.i.i.i.i = select i1 %i.bt, ptr %.val1.i.i.i.i113, ptr %i.j
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %.sink6.i.i.i.i, i64 %.sink5.i.i.i.i ; 2 uses
  store i32 %i.bp, ptr %i.bu, align 8, !tbaa !307
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bq, ptr %i.bv, align 8, !tbaa !306
  %i.bw = load i32, ptr %i.bq, align 4, !tbaa !211
  %i.bx = add nsw i32 %i.bw, 1                    ; 2 uses
  store i32 %i.bx, ptr %i.bq, align 4, !tbaa !211
  %i.by = add i64 %.val.i.i.i.i111, 2
  store i64 %i.by, ptr %17, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exit

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE15EmplaceBackSlowIJS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(136) %17, ptr noundef nonnull readonly align 8 dereferenceable(16) %18)
          to label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exitthread-pre-split unwind label %bb.n

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exitthread-pre-split: ; preds = %bb.j
  %.pr = load i32, ptr %i.bq, align 4, !tbaa !211
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exit

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exitthread-pre-split, %_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i.i
  %i.bz = phi i32 [ %.pr, %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exitthread-pre-split ], [ %i.bx, %_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i.i ] ; 2 uses
  %i.ca = add nsw i32 %i.bz, -1                   ; 2 uses
  store i32 %i.ca, ptr %i.bq, align 4, !tbaa !211
  %.not.i.i.i.i = icmp slt i32 %i.bz, 1
  br i1 %.not.i.i.i.i, label %bb.k, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit, !prof !212

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exit
  %i.cb = sext i32 %i.ca to i64
  %i.cc = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.cb, i64 noundef 0, ptr noundef nonnull @.str.282)
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str.3, i32 noundef 114, ptr noundef nonnull %i.cc) #42
          to label %.noexc1.i unwind label %bb.m

.noexc1.i:                                        ; preds = %.noexc.i
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i unwind label %bb.l

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i: ; preds = %.noexc1.i
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #35
  unreachable

bb.l:                                             ; preds = %.noexc1.i
  %i.cd = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #35
  unreachable

bb.m:                                             ; preds = %.noexc.i, %bb.k
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_132RefCountedVec_EraseBeginEnd_Test8TestBodyEv:bb.a
  %i.ix = load i64, ptr %i.t, align 8, !tbaa !198, !noalias !1508
  %i.iy = add i64 %i.ix, 1
  call void @_ZdlPvm(ptr noundef %i.iv, i64 noundef %i.iy) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i290: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !1508
  %i.iz = load ptr, ptr %5, align 8, !tbaa !195, !noalias !1508 ; 2 uses
  %i.ja = icmp eq ptr %i.iz, %i.u
  br i1 %i.ja, label %.noexc176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i290
  %i.jb = load i64, ptr %i.u, align 8, !tbaa !198, !noalias !1508
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.jc) #39
  br label %.noexc176

bb.bx:                                            ; preds = %.noexc294
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i281

bb.by:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i286
  %i.je = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jf = load ptr, ptr %6, align 8, !tbaa !195, !noalias !1508 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.t
  br i1 %i.jg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i287

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i287: ; preds = %bb.by
  %i.jh = load i64, ptr %i.t, align 8, !tbaa !198, !noalias !1508
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.ji) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i281: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i287, %bb.bx
  %.pn.i282 = phi { ptr, i32 } [ %i.jd, %bb.bx ], [ %i.je, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i287 ], [ %i.je, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36, !noalias !1508
  %i.jj = load ptr, ptr %5, align 8, !tbaa !195, !noalias !1508 ; 2 uses
  %i.jk = icmp eq ptr %i.jj, %i.u
  br i1 %i.jk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i283

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i283: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i281
  %i.jl = load i64, ptr %i.u, align 8, !tbaa !198, !noalias !1508
  %i.jm = add i64 %i.jl, 1
  call void @_ZdlPvm(ptr noundef %i.jj, i64 noundef %i.jm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i284: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i283
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !1508
  br label %.body295

.noexc176:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36, !noalias !1508
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit177

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit177: ; preds = %.noexc176, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  %i.jn = load i8, ptr %28, align 8, !tbaa !220, !range !189, !noundef !190
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.ck, label %bb.ca

bb.bz:                                            ; preds = %bb.bv, %bb.bu
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %.body295

.body295:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i284, %bb.bz
  %eh.lpad-body296 = phi { ptr, i32 } [ %i.jp, %bb.bz ], [ %.pn.i282, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i284 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit190

bb.ca:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit177
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.cb unwind label %bb.cf

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #36
  %i.jq = load ptr, ptr %i.v, align 8, !tbaa !221 ; 2 uses
  %.not.i.i178 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i178, label %_ZNK7testing15AssertionResult15failure_messageEv.exit179, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit179

_ZNK7testing15AssertionResult15failure_messageEv.exit179: ; preds = %bb.cc, %bb.cb
  %i.js = phi ptr [ %i.jr, %bb.cc ], [ @.str.216, %bb.cb ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 420, ptr noundef %i.js)
          to label %bb.cd unwind label %bb.cg

bb.cd:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit179
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %bb.cd
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  %i.jt = load ptr, ptr %29, align 8, !tbaa !223  ; 3 uses
  %.not.i.i180 = icmp eq ptr %i.jt, null
  br i1 %.not.i.i180, label %_ZN7testing7MessageD2Ev.exit182, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181: ; preds = %bb.ce
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !169
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(128) %i.jt) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit182

_ZN7testing7MessageD2Ev.exit182:                  ; preds = %bb.ce, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i181
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  br label %bb.ck

bb.cf:                                            ; preds = %bb.ca
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit185

bb.cg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit179
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cd
  %i.jz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %30) #36
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %.pn89 = phi { ptr, i32 } [ %i.jz, %bb.ch ], [ %i.jy, %bb.cg ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  %i.ka = load ptr, ptr %29, align 8, !tbaa !223  ; 3 uses
  %.not.i.i183 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i183, label %_ZN7testing7MessageD2Ev.exit185, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184: ; preds = %bb.ci
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !169
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.kd = load ptr, ptr %i.kc, align 8
  call void %i.kd(ptr noundef nonnull align 8 dereferenceable(128) %i.ka) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit185

_ZN7testing7MessageD2Ev.exit185:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184, %bb.ci, %bb.cf
  %.pn89.pn = phi { ptr, i32 } [ %i.jx, %bb.cf ], [ %.pn89, %bb.ci ], [ %.pn89, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i184 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #36
  %i.ke = load ptr, ptr %i.v, align 8, !tbaa !221 ; 4 uses
  %.not.i.i186 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i186, label %_ZN7testing15AssertionResultD2Ev.exit190, label %bb.cj

bb.cj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit185
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !195 ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %i.kh = icmp eq ptr %i.kf, %i.kg
  br i1 %i.kh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187: ; preds = %bb.cj
  %i.ki = load i64, ptr %i.kg, align 8, !tbaa !198
  %i.kj = add i64 %i.ki, 1
  call void @_ZdlPvm(ptr noundef %i.kf, i64 noundef %i.kj) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i187
  call void @_ZdlPvm(ptr noundef nonnull %i.ke, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit190

bb.ck:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit177, %_ZN7testing7MessageD2Ev.exit182
  %i.kk = load ptr, ptr %i.v, align 8, !tbaa !221 ; 4 uses
  %.not.i.i191 = icmp eq ptr %i.kk, null
  br i1 %.not.i.i191, label %_ZN7testing15AssertionResultD2Ev.exit195, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !195 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kk, i64 16 ; 2 uses
  %i.kn = icmp eq ptr %i.kl, %i.km
  br i1 %i.kn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192: ; preds = %bb.cl
  %i.ko = load i64, ptr %i.km, align 8, !tbaa !198
  %i.kp = add i64 %i.ko, 1
  call void @_ZdlPvm(ptr noundef %i.kl, i64 noundef %i.kp) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193: ; preds = %bb.cl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192
  call void @_ZdlPvm(ptr noundef nonnull %i.kk, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit195

_ZN7testing15AssertionResultD2Ev.exit195:         ; preds = %bb.ck, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  %i.kq = add nuw nsw i64 %.048467, 1             ; 2 uses
  %exitcond597.not = icmp eq i64 %i.kq, %.076474
  br i1 %exitcond597.not, label %.preheader341, label %.lr.ph468, !llvm.loop !1485

_ZN7testing15AssertionResultD2Ev.exit190:         ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188, %_ZN7testing7MessageD2Ev.exit185, %.body295
  %.pn89.pn.pn = phi { ptr, i32 } [ %eh.lpad-body296, %.body295 ], [ %.pn89.pn, %_ZN7testing7MessageD2Ev.exit185 ], [ %.pn89.pn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #36
  br label %bb.dx

.preheader:                                       ; preds = %_ZN7testing15AssertionResultD2Ev.exit216, %.preheader341
  %i.kr = icmp samesign ult i64 %.075473, %.077475
  br i1 %i.kr, label %.lr.ph472, label %._crit_edge

.lr.ph470:                                        ; preds = %.preheader341, %_ZN7testing15AssertionResultD2Ev.exit216
  %.047469 = phi i64 [ %i.mq, %_ZN7testing15AssertionResultD2Ev.exit216 ], [ %.076474, %.preheader341 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #36
  store i32 0, ptr %i.f, align 4, !tbaa !211
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.047469 ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !211, !noalias !1509
  %i.ku = icmp eq i32 %i.kt, 0
  br i1 %i.ku, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.lr.ph470
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit198 unwind label %bb.cr

bb.cn:                                            ; preds = %.lr.ph470
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36, !noalias !1510
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 4 dereferenceable(4) %i.f)
          to label %.noexc311 unwind label %bb.cr

.noexc311:                                        ; preds = %bb.cn
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36, !noalias !1510
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 4 dereferenceable(4) %i.ks)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i303 unwind label %bb.cp, !noalias !1510

_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i303: ; preds = %.noexc311
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %31, ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.279, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i1 noundef zeroext false)
          to label %bb.co unwind label %bb.cq

bb.co:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i303
  %i.kv = load ptr, ptr %4, align 8, !tbaa !195, !noalias !1510 ; 2 uses
  %i.kw = icmp eq ptr %i.kv, %i.w
  br i1 %i.kw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i307, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i306: ; preds = %bb.co
  %i.kx = load i64, ptr %i.w, align 8, !tbaa !198, !noalias !1510
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.kv, i64 noundef %i.ky) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i307

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i307: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !1510
  %i.kz = load ptr, ptr %3, align 8, !tbaa !195, !noalias !1510 ; 2 uses
  %i.la = icmp eq ptr %i.kz, %i.x
  br i1 %i.la, label %.noexc197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i308

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i308: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i307
  %i.lb = load i64, ptr %i.x, align 8, !tbaa !198, !noalias !1510
  %i.lc = add i64 %i.lb, 1
  call void @_ZdlPvm(ptr noundef %i.kz, i64 noundef %i.lc) #39
  br label %.noexc197

bb.cp:                                            ; preds = %.noexc311
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i298

bb.cq:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i303
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lf = load ptr, ptr %4, align 8, !tbaa !195, !noalias !1510 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.w
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i298, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i304: ; preds = %bb.cq
  %i.lh = load i64, ptr %i.w, align 8, !tbaa !198, !noalias !1510
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i298

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i298: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i304, %bb.cp
  %.pn.i299 = phi { ptr, i32 } [ %i.ld, %bb.cp ], [ %i.le, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i304 ], [ %i.le, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !1510
  %i.lj = load ptr, ptr %3, align 8, !tbaa !195, !noalias !1510 ; 2 uses
  %i.lk = icmp eq ptr %i.lj, %i.x
  br i1 %i.lk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i301, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i298
  %i.ll = load i64, ptr %i.x, align 8, !tbaa !198, !noalias !1510
  %i.lm = add i64 %i.ll, 1
  call void @_ZdlPvm(ptr noundef %i.lj, i64 noundef %i.lm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i301

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i301: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i298, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i300
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !1510
  br label %.body312

.noexc197:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i307, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i308
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !1510
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit198

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit198: ; preds = %.noexc197, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  %i.ln = load i8, ptr %31, align 8, !tbaa !220, !range !189, !noundef !190
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.dc, label %bb.cs

bb.cr:                                            ; preds = %bb.cn, %bb.cm
  %i.lp = landingpad { ptr, i32 }
          cleanup
  br label %.body312

.body312:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i301, %bb.cr
  %eh.lpad-body313 = phi { ptr, i32 } [ %i.lp, %bb.cr ], [ %.pn.i299, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i301 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit211

bb.cs:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit198
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.ct unwind label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  %i.lq = load ptr, ptr %i.y, align 8, !tbaa !221 ; 2 uses
  %.not.i.i199 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i199, label %_ZNK7testing15AssertionResult15failure_messageEv.exit200, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit200

_ZNK7testing15AssertionResult15failure_messageEv.exit200: ; preds = %bb.cu, %bb.ct
  %i.ls = phi ptr [ %i.lr, %bb.cu ], [ @.str.216, %bb.ct ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 425, ptr noundef %i.ls)
          to label %bb.cv unwind label %bb.cy

bb.cv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit200
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cw unwind label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  %i.lt = load ptr, ptr %32, align 8, !tbaa !223  ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i201, label %_ZN7testing7MessageD2Ev.exit203, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202: ; preds = %bb.cw
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !169
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(128) %i.lt) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit203

_ZN7testing7MessageD2Ev.exit203:                  ; preds = %bb.cw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  br label %bb.dc

bb.cx:                                            ; preds = %bb.cs
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit206

bb.cy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit200
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.da

bb.cz:                                            ; preds = %bb.cv
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #36
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.pn85 = phi { ptr, i32 } [ %i.lz, %bb.cz ], [ %i.ly, %bb.cy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #36
  %i.ma = load ptr, ptr %32, align 8, !tbaa !223  ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i204, label %_ZN7testing7MessageD2Ev.exit206, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %bb.da
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !169
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(128) %i.ma) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit206

_ZN7testing7MessageD2Ev.exit206:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205, %bb.da, %bb.cx
  %.pn85.pn = phi { ptr, i32 } [ %i.lx, %bb.cx ], [ %.pn85, %bb.da ], [ %.pn85, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.me = load ptr, ptr %i.y, align 8, !tbaa !221 ; 4 uses
  %.not.i.i207 = icmp eq ptr %i.me, null
  br i1 %.not.i.i207, label %_ZN7testing15AssertionResultD2Ev.exit211, label %bb.db

bb.db:                                            ; preds = %_ZN7testing7MessageD2Ev.exit206
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !195 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208: ; preds = %bb.db
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !198
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208
  call void @_ZdlPvm(ptr noundef nonnull %i.me, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit211

bb.dc:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit198, %_ZN7testing7MessageD2Ev.exit203
  %i.mk = load ptr, ptr %i.y, align 8, !tbaa !221 ; 4 uses
  %.not.i.i212 = icmp eq ptr %i.mk, null
  br i1 %.not.i.i212, label %_ZN7testing15AssertionResultD2Ev.exit216, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !195 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mk, i64 16 ; 2 uses
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213: ; preds = %bb.dd
  %i.mo = load i64, ptr %i.mm, align 8, !tbaa !198
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.ml, i64 noundef %i.mp) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i213
  call void @_ZdlPvm(ptr noundef nonnull %i.mk, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit216

_ZN7testing15AssertionResultD2Ev.exit216:         ; preds = %bb.dc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  %i.mq = add nuw nsw i64 %.047469, 1             ; 2 uses
  %exitcond598.not = icmp eq i64 %i.mq, %.075473
  br i1 %exitcond598.not, label %.preheader, label %.lr.ph470, !llvm.loop !1492

_ZN7testing15AssertionResultD2Ev.exit211:         ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209, %_ZN7testing7MessageD2Ev.exit206, %.body312
  %.pn85.pn.pn = phi { ptr, i32 } [ %eh.lpad-body313, %.body312 ], [ %.pn85.pn, %_ZN7testing7MessageD2Ev.exit206 ], [ %.pn85.pn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br label %bb.dx

._crit_edge:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit238, %.preheader
  %i.mr = load i64, ptr %17, align 8, !tbaa !197
  %i.ms = icmp eq i64 %i.mr, 0
  br i1 %i.ms, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.de

bb.de:                                            ; preds = %._crit_edge
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull readonly align 8 dereferenceable(136) %17)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef %i.ae) #39
  %i.mt = add nuw nsw i64 %.075473, 1             ; 2 uses
  %exitcond600.not = icmp eq i64 %i.mt, %indvars.iv
  br i1 %exitcond600.not, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, !llvm.loop !1493

.lr.ph472:                                        ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit238
  %.0471 = phi i64 [ %i.os, %_ZN7testing15AssertionResultD2Ev.exit238 ], [ %.075473, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  store i32 1, ptr %i.g, align 4, !tbaa !211
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.0471 ; 2 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !211, !noalias !1511
  %i.mw = icmp eq i32 %i.mv, 1
  br i1 %i.mw, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %.lr.ph472
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %34)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit220 unwind label %bb.dk

bb.dg:                                            ; preds = %.lr.ph472
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36, !noalias !1512
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %.noexc328 unwind label %bb.dk

.noexc328:                                        ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !1512
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.mu)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i320 unwind label %bb.di, !noalias !1512

_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i320: ; preds = %.noexc328
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %34, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.279, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i320
  %i.mx = load ptr, ptr %2, align 8, !tbaa !195, !noalias !1512 ; 2 uses
  %i.my = icmp eq ptr %i.mx, %i.z
  br i1 %i.my, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i324, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323: ; preds = %bb.dh
  %i.mz = load i64, ptr %i.z, align 8, !tbaa !198, !noalias !1512
  %i.na = add i64 %i.mz, 1
  call void @_ZdlPvm(ptr noundef %i.mx, i64 noundef %i.na) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i324

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i324: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i323
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !1512
  %i.nb = load ptr, ptr %1, align 8, !tbaa !195, !noalias !1512 ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.aa
  br i1 %i.nc, label %.noexc219, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i325: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i324
  %i.nd = load i64, ptr %i.aa, align 8, !tbaa !198, !noalias !1512
  %i.ne = add i64 %i.nd, 1
  call void @_ZdlPvm(ptr noundef %i.nb, i64 noundef %i.ne) #39
  br label %.noexc219

bb.di:                                            ; preds = %.noexc328
  %i.nf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i315

bb.dj:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i320
  %i.ng = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nh = load ptr, ptr %2, align 8, !tbaa !195, !noalias !1512 ; 2 uses
  %i.ni = icmp eq ptr %i.nh, %i.z
  br i1 %i.ni, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i315, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i321

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i321: ; preds = %bb.dj
  %i.nj = load i64, ptr %i.z, align 8, !tbaa !198, !noalias !1512
  %i.nk = add i64 %i.nj, 1
  call void @_ZdlPvm(ptr noundef %i.nh, i64 noundef %i.nk) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i315

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i315: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i321, %bb.di
  %.pn.i316 = phi { ptr, i32 } [ %i.nf, %bb.di ], [ %i.ng, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i321 ], [ %i.ng, %bb.dj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !1512
  %i.nl = load ptr, ptr %1, align 8, !tbaa !195, !noalias !1512 ; 2 uses
  %i.nm = icmp eq ptr %i.nl, %i.aa
  br i1 %i.nm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i318, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i317

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i317: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i315
  %i.nn = load i64, ptr %i.aa, align 8, !tbaa !198, !noalias !1512
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nl, i64 noundef %i.no) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i318

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i318: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i315, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i317
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36, !noalias !1512
  br label %.body329

.noexc219:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i324, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36, !noalias !1512
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit220

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit220: ; preds = %.noexc219, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.np = load i8, ptr %34, align 8, !tbaa !220, !range !189, !noundef !190
  %i.nq = trunc nuw i8 %i.np to i1
  br i1 %i.nq, label %bb.dv, label %bb.dl

bb.dk:                                            ; preds = %bb.dg, %bb.df
  %i.nr = landingpad { ptr, i32 }
          cleanup
  br label %.body329

.body329:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i318, %bb.dk
  %eh.lpad-body330 = phi { ptr, i32 } [ %i.nr, %bb.dk ], [ %.pn.i316, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i318 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit233

bb.dl:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit220
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.dm unwind label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #36
  %i.ns = load ptr, ptr %i.ab, align 8, !tbaa !221 ; 2 uses
  %.not.i.i221 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i221, label %_ZNK7testing15AssertionResult15failure_messageEv.exit222, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !195
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit222

_ZNK7testing15AssertionResult15failure_messageEv.exit222: ; preds = %bb.dn, %bb.dm
  %i.nu = phi ptr [ %i.nt, %bb.dn ], [ @.str.216, %bb.dm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 430, ptr noundef %i.nu)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit222
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %bb.do
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  %i.nv = load ptr, ptr %35, align 8, !tbaa !223  ; 3 uses
  %.not.i.i223 = icmp eq ptr %i.nv, null
  br i1 %.not.i.i223, label %_ZN7testing7MessageD2Ev.exit225, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224: ; preds = %bb.dp
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !169
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 8
  %i.ny = load ptr, ptr %i.nx, align 8
  call void %i.ny(ptr noundef nonnull align 8 dereferenceable(128) %i.nv) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit225

_ZN7testing7MessageD2Ev.exit225:                  ; preds = %bb.dp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  br label %bb.dv

bb.dq:                                            ; preds = %bb.dl
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit228

bb.dr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit222
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %bb.do
  %i.ob = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #36
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn81 = phi { ptr, i32 } [ %i.ob, %bb.ds ], [ %i.oa, %bb.dr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #36
  %i.oc = load ptr, ptr %35, align 8, !tbaa !223  ; 3 uses
  %.not.i.i226 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i226, label %_ZN7testing7MessageD2Ev.exit228, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.dt
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !169
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %i.of = load ptr, ptr %i.oe, align 8
  call void %i.of(ptr noundef nonnull align 8 dereferenceable(128) %i.oc) #36, !inline_history !5
  br label %_ZN7testing7MessageD2Ev.exit228

_ZN7testing7MessageD2Ev.exit228:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, %bb.dt, %bb.dq
  %.pn81.pn = phi { ptr, i32 } [ %i.nz, %bb.dq ], [ %.pn81, %bb.dt ], [ %.pn81, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  %i.og = load ptr, ptr %i.ab, align 8, !tbaa !221 ; 4 uses
  %.not.i.i229 = icmp eq ptr %i.og, null
  br i1 %.not.i.i229, label %_ZN7testing15AssertionResultD2Ev.exit233, label %bb.du

bb.du:                                            ; preds = %_ZN7testing7MessageD2Ev.exit228
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !195 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 16 ; 2 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230: ; preds = %bb.du
  %i.ok = load i64, ptr %i.oi, align 8, !tbaa !198
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ol) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231: ; preds = %bb.du, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230
  call void @_ZdlPvm(ptr noundef nonnull %i.og, i64 noundef 32) #39
end_hunk_1
