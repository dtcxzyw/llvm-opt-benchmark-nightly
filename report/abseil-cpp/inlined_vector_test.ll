inline.NumInlined: 27469
inline.NumDeleted: 7596
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 191
loop-unroll.NumUnrolled: 289
begin_hunk_0_@_ZN12_GLOBAL__N_125UniquePtr_EraseMulti_Test8TestBodyEv:bb.a
  %i.id = load i64, ptr %1, align 8, !tbaa !45
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
  %i.ih = load i64, ptr %1, align 8, !tbaa !45
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
  br i1 %exitcond233.not, label %.loopexit, label %bb.b, !llvm.loop !861

bb.cp:                                            ; preds = %bb.ci, %bb.bt, %bb.bf, %bb.am, %bb.x, %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit104
  %.pn83.pn = phi { ptr, i32 } [ %.pn83, %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit104 ], [ %.pn78.pn.pn, %bb.ci ], [ %.pn74.pn.pn, %bb.bt ], [ %.pn70.pn.pn, %bb.bf ], [ %.pn.pn.pn, %bb.x ], [ %.pn66.pn.pn, %bb.am ]
  call void @_ZN4absl12lts_2026052613InlinedVectorISt10unique_ptrImSt14default_deleteImEELm8ESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36
  resume { ptr, i32 } %.pn83.pn

.critedge97:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit180, %_ZN7testing15AssertionResultD2Ev.exit162, %bb.an, %_ZN7testing15AssertionResultD2Ev.exit
  %i.im = load i64, ptr %1, align 8, !tbaa !45
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
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_132RefCountedVec_EraseBeginEnd_TestE, i64 16), ptr %i.a, align 8, !tbaa !16
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
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %31 = alloca %"class.testing::Message", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %33 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %34 = alloca %"class.testing::Message", align 8 ; 7 uses
  %35 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %33, i64 8 ; 3 uses
  br label %.preheader349

.preheader349:                                    ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 2, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %indvar = phi i64 [ 0, %bb.a ], [ %indvar.next, %bb.c ] ; 2 uses
  %.077479 = phi i64 [ 1, %bb.a ], [ %i.ae, %bb.c ] ; 7 uses
  %i.ab = shl nuw nsw i64 %indvar, 2
  %i.ac = add nuw nsw i64 %i.ab, 4
  %i.ad = shl nuw nsw i64 %.077479, 2             ; 3 uses
  br label %.preheader348

bb.b:                                             ; preds = %bb.c
  ret void

.preheader348:                                    ; preds = %.preheader349, %bb.d
  %.076478 = phi i64 [ 0, %.preheader349 ], [ %i.af, %bb.d ] ; 12 uses
  %.idx343 = shl nuw nsw i64 %.076478, 4
  %.not480 = icmp eq i64 %.076478, 0              ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.c:                                             ; preds = %bb.d
  %i.ae = add nuw nsw i64 %.077479, 1
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond606.not = icmp eq i64 %indvar.next, 19
  br i1 %exitcond606.not, label %bb.b, label %.preheader349, !llvm.loop !862

bb.d:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.af = add nuw nsw i64 %.076478, 1             ; 2 uses
  %exitcond605.not = icmp eq i64 %i.af, %.077479
  br i1 %exitcond605.not, label %bb.c, label %.preheader348, !llvm.loop !863

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.preheader348, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %indvar978 = phi i64 [ 0, %.preheader348 ], [ %indvar.next979, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.075477 = phi i64 [ %.076478, %.preheader348 ], [ %i.mr, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 9 uses
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #41 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ag, i8 0, i64 %i.ac, i1 false), !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #36
  store i64 0, ptr %17, align 8, !tbaa !864
  br label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exit
  %i.ah = add nuw nsw i64 %.051465, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ah, %.077479
  br i1 %exitcond.not, label %bb.f, label %bb.j, !llvm.loop !866

bb.f:                                             ; preds = %bb.e
  %i.ai = sub nuw nsw i64 %.075477, %.076478      ; 6 uses
  %.val.i.i = load i64, ptr %17, align 8, !tbaa !45 ; 3 uses
  %i.aj = trunc i64 %.val.i.i to i1
  %.val1.i.i = load ptr, ptr %i.i, align 8
  %i.ak = select i1 %i.aj, ptr %.val1.i.i, ptr %i.i ; 3 uses
  %.not.i = icmp samesign eq i64 %.076478, %.075477
  br i1 %.not.i, label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE5eraseEPKS3_S7_.exit, label %bb.g, !prof !136

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx343
  %i.am = lshr i64 %.val.i.i, 1                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %.075477
  %i.ao = ptrtoint ptr %i.an to i64
  store i64 %i.ao, ptr %16, align 8, !tbaa !867
  %i.ap = sub nsw i64 %i.am, %.075477
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIN12_GLOBAL__N_110RefCountedEENS1_20IteratorValueAdapterIS5_St13move_iteratorIPS4_EEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSD_9size_typeE(ptr noundef %i.al, ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef %i.ap)
          to label %.noexc112 unwind label %bb.x

.noexc112:                                        ; preds = %bb.g
  %i.aq = sub nsw i64 %i.am, %i.ai
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.aq ; 3 uses
  %xtraiter = and i64 %indvar978, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.noexc112
  %i.as = add nsw i64 %i.ai, -1                   ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.val.i244.prol = load ptr, ptr %i.au, align 8, !tbaa !869 ; 2 uses
  %i.av = load i32, ptr %.val.i244.prol, align 4, !tbaa !132 ; 2 uses
  %i.aw = add nsw i32 %i.av, -1                   ; 2 uses
  store i32 %i.aw, ptr %.val.i244.prol, align 4, !tbaa !132
  %.not.i.i.i.i245.prol = icmp slt i32 %i.av, 1
  br i1 %.not.i.i.i.i245.prol, label %.loopexit, label %.lr.ph.i.i.i.prol.loopexit, !prof !136

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.noexc112
  %.02.i.i.i.unr = phi i64 [ %i.ai, %.noexc112 ], [ %i.as, %.lr.ph.i.i.i.prol ]
  %i.ax = icmp eq i64 %indvar978, 1
  br i1 %i.ax, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE5EraseEPKS4_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit249.1
  %.02.i.i.i = phi i64 [ %i.bh, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit249.1 ], [ %.02.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 2 uses
  %i.ay = getelementptr [16 x i8], ptr %i.ar, i64 %.02.i.i.i
  %i.az = getelementptr i8, ptr %i.ay, i64 -8
  %.val.i244 = load ptr, ptr %i.az, align 8, !tbaa !869 ; 2 uses
  %i.ba = load i32, ptr %.val.i244, align 4, !tbaa !132 ; 2 uses
  %i.bb = add nsw i32 %i.ba, -1                   ; 2 uses
  store i32 %i.bb, ptr %.val.i244, align 4, !tbaa !132
  %.not.i.i.i.i245 = icmp slt i32 %i.ba, 1
  br i1 %.not.i.i.i.i245, label %.loopexit, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit249, !prof !136

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit249
  %.lcssa894 = phi i32 [ %i.bl, %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit249 ], [ %i.bb, %.lr.ph.i.i.i ], [ %i.aw, %.lr.ph.i.i.i.prol ]
  %i.bc = sext i32 %.lcssa894 to i64
  %i.bd = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.bc, i64 noundef 0, ptr noundef nonnull @.str.282)
          to label %.noexc.i246 unwind label %bb.i

.noexc.i246:                                      ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull @.str.3, i32 noundef 114, ptr noundef nonnull %i.bd) #42
          to label %.noexc1.i247 unwind label %bb.i

.noexc1.i247:                                     ; preds = %.noexc.i246
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %13)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i248 unwind label %bb.h

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i248: ; preds = %.noexc1.i247
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #35
  unreachable

bb.h:                                             ; preds = %.noexc1.i247
  %i.be = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #35
  unreachable

bb.i:                                             ; preds = %.noexc.i246, %.loopexit
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #35
  unreachable

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit249:        ; preds = %.lr.ph.i.i.i
  %i.bh = add nsw i64 %.02.i.i.i, -2              ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.val.i244.1 = load ptr, ptr %i.bj, align 8, !tbaa !869 ; 2 uses
  %i.bk = load i32, ptr %.val.i244.1, align 4, !tbaa !132 ; 2 uses
  %i.bl = add nsw i32 %i.bk, -1                   ; 2 uses
  store i32 %i.bl, ptr %.val.i244.1, align 4, !tbaa !132
  %.not.i.i.i.i245.1 = icmp slt i32 %i.bk, 1
  br i1 %.not.i.i.i.i245.1, label %.loopexit, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit249.1, !prof !136

_ZN12_GLOBAL__N_110RefCountedD2Ev.exit249.1:      ; preds = %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit249
  %.not.i.i.i.1 = icmp eq i64 %i.bh, 0
  br i1 %.not.i.i.i.1, label %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE5EraseEPKS4_S8_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !871

_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE5EraseEPKS4_S8_.exit.i: ; preds = %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit249.1, %.lr.ph.i.i.i.prol.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #36
  %.val.i12.i.i = load i64, ptr %17, align 8, !tbaa !45
  %i.bm = shl nuw nsw i64 %i.ai, 1
  %i.bn = sub i64 %.val.i12.i.i, %i.bm            ; 2 uses
  store i64 %i.bn, ptr %17, align 8, !tbaa !45
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE5eraseEPKS3_S7_.exit

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, %bb.e
  %.051465 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.ah, %bb.e ] ; 3 uses
  %i.bo = trunc nuw nsw i64 %.051465 to i32       ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.051465 ; 10 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !132
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !132
  %.val.i.i.i.i113 = load i64, ptr %17, align 8, !tbaa !45, !noalias !872 ; 3 uses
  %i.bs = trunc i64 %.val.i.i.i.i113 to i1        ; 2 uses
  %.val4.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !872
  %.sink.i.i.i.i = select i1 %i.bs, i64 %.val4.i.i.i.i, i64 8
  %.sink5.i.i.i.i = lshr i64 %.val.i.i.i.i113, 1  ; 2 uses
  %.not.i.i.i114 = icmp eq i64 %.sink5.i.i.i.i, %.sink.i.i.i.i
  br i1 %.not.i.i.i114, label %bb.k, label %_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i.i, !prof !136

_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i.i: ; preds = %bb.j
  %.val1.i.i.i.i115 = load ptr, ptr %i.i, align 8, !noalias !872
  %.sink6.i.i.i.i = select i1 %i.bs, ptr %.val1.i.i.i.i115, ptr %i.i
  %i.bt = getelementptr inbounds nuw [16 x i8], ptr %.sink6.i.i.i.i, i64 %.sink5.i.i.i.i ; 2 uses
  store i32 %i.bo, ptr %i.bt, align 8, !tbaa !875
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bp, ptr %i.bu, align 8, !tbaa !869
  %i.bv = load i32, ptr %i.bp, align 4, !tbaa !132
  %i.bw = add nsw i32 %i.bv, 1                    ; 2 uses
  store i32 %i.bw, ptr %i.bp, align 4, !tbaa !132
  %i.bx = add i64 %.val.i.i.i.i113, 2
  store i64 %i.bx, ptr %17, align 8, !tbaa !45
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exit

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE15EmplaceBackSlowIJS4_EEERS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(136) %17, i32 %i.bo, ptr nonnull %i.bp)
          to label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exitthread-pre-split unwind label %bb.o

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exitthread-pre-split: ; preds = %bb.k
  %.pr = load i32, ptr %i.bp, align 4, !tbaa !132
  br label %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exit

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exit: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exitthread-pre-split, %_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i.i
  %i.by = phi i32 [ %.pr, %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exitthread-pre-split ], [ %i.bw, %_ZN12_GLOBAL__N_110RefCountedC2ERKS0_.exit.i.i.i ] ; 2 uses
  %i.bz = add nsw i32 %i.by, -1                   ; 2 uses
  store i32 %i.bz, ptr %i.bp, align 4, !tbaa !132
  %.not.i.i.i.i = icmp slt i32 %i.by, 1
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.e, !prof !136

bb.l:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE9push_backEOS3_.exit
  %i.ca = sext i32 %i.bz to i64
  %i.cb = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.ca, i64 noundef 0, ptr noundef nonnull @.str.282)
          to label %.noexc.i unwind label %bb.n

.noexc.i:                                         ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull @.str.3, i32 noundef 114, ptr noundef nonnull %i.cb) #42
          to label %.noexc1.i unwind label %bb.n

.noexc1.i:                                        ; preds = %.noexc.i
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i unwind label %bb.m

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i: ; preds = %.noexc1.i
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #35
  unreachable

bb.m:                                             ; preds = %.noexc1.i
  %i.cc = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #35
  unreachable

bb.n:                                             ; preds = %.noexc.i, %bb.l
  %i.cd = landingpad { ptr, i32 }
          catch ptr null
  %i.ce = extractvalue { ptr, i32 } %i.cd, 0
  call void @__clang_call_terminate(ptr %i.ce) #35
  unreachable

bb.o:                                             ; preds = %bb.k
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load i32, ptr %i.bp, align 4, !tbaa !132 ; 2 uses
  %i.ch = add nsw i32 %i.cg, -1                   ; 2 uses
  store i32 %i.ch, ptr %i.bp, align 4, !tbaa !132
  %.not.i.i.i.i120 = icmp slt i32 %i.cg, 1
  br i1 %.not.i.i.i.i120, label %bb.p, label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit124, !prof !136

bb.p:                                             ; preds = %bb.o
  %i.ci = sext i32 %i.ch to i64
  %i.cj = invoke noundef nonnull ptr @_ZN4absl12lts_2026052612log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef %i.ci, i64 noundef 0, ptr noundef nonnull @.str.282)
          to label %.noexc.i121 unwind label %bb.r

.noexc.i121:                                      ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  invoke void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull @.str.3, i32 noundef 114, ptr noundef nonnull %i.cj) #42
          to label %.noexc1.i122 unwind label %bb.r

.noexc1.i122:                                     ; preds = %.noexc.i121
  invoke void @_ZN4absl12lts_2026052612log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %14)
          to label %_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i123 unwind label %bb.q

_ZNKO4absl12lts_2026052612log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i123: ; preds = %.noexc1.i122
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #35
  unreachable

bb.q:                                             ; preds = %.noexc1.i122
  %i.ck = landingpad { ptr, i32 }
          catch ptr null                          ; 0 uses
  call void @_ZN4absl12lts_2026052612log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #35
  unreachable

bb.r:                                             ; preds = %.noexc.i121, %bb.p
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  call void @__clang_call_terminate(ptr %i.cm) #35
  unreachable

_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE5eraseEPKS3_S7_.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE5EraseEPKS4_S8_.exit.i, %bb.f
  %.val106 = phi i64 [ %i.bn, %_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE5EraseEPKS4_S8_.exit.i ], [ %.val.i.i, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.cn = sub nsw i64 %.077479, %i.ai             ; 2 uses
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.co = lshr i64 %.val106, 1                    ; 2 uses
  store i64 %i.co, ptr %i.b, align 8, !tbaa !45
  %i.cp = icmp eq i64 %i.cn, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE5eraseEPKS3_S7_.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.y

bb.t:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIN12_GLOBAL__N_110RefCountedELm8ESaIS3_EE5eraseEPKS3_S7_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36, !noalias !876
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc250 unwind label %bb.y

.noexc250:                                        ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36, !noalias !876
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.v, !noalias !876

_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc250
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull @.str.275, ptr noundef nonnull @.str.197, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.cq = load ptr, ptr %12, align 8, !tbaa !41, !noalias !876 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.j
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.u
  %i.cs = load i64, ptr %i.j, align 8, !tbaa !46, !noalias !876
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !876
  %i.cu = load ptr, ptr %11, align 8, !tbaa !41, !noalias !876 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.k
  br i1 %i.cv, label %.noexc126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.cw = load i64, ptr %i.k, align 8, !tbaa !46, !noalias !876
  %i.cx = add i64 %i.cw, 1
  call void @_ZdlPvm(ptr noundef %i.cu, i64 noundef %i.cx) #39
  br label %.noexc126

bb.v:                                             ; preds = %.noexc250
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.w:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImmEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.cz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.da = load ptr, ptr %12, align 8, !tbaa !41, !noalias !876 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.j
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.w
  %i.dc = load i64, ptr %i.j, align 8, !tbaa !46, !noalias !876
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.cy, %bb.v ], [ %i.cz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.cz, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36, !noalias !876
  %i.de = load ptr, ptr %11, align 8, !tbaa !41, !noalias !876 ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.k
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.dg = load i64, ptr %i.k, align 8, !tbaa !46, !noalias !876
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.dh) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36, !noalias !876
  br label %.body

.noexc126:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36, !noalias !876
  br label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc126, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.di = load i8, ptr %18, align 8, !tbaa !143, !range !37, !noundef !38
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ai, label %bb.z

bb.x:                                             ; preds = %bb.g
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit124

bb.y:                                             ; preds = %bb.t, %bb.s
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %bb.y
  %eh.lpad-body = phi { ptr, i32 } [ %i.dl, %bb.y ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.ak

bb.z:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #36
  %i.dm = load ptr, ptr %i.l, align 8, !tbaa !151 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.ab, %bb.aa
  %i.do = phi ptr [ %i.dn, %bb.ab ], [ @.str.216, %bb.aa ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 406, ptr noundef %i.do)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %i.dp = load ptr, ptr %19, align 8, !tbaa !152  ; 3 uses
  %.not.i.i127 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i127, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ad
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(128) %i.dp) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ad, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  br label %bb.ai

bb.ae:                                            ; preds = %bb.z
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit130

bb.af:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #36
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.ag ], [ %i.du, %bb.af ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #36
  %i.dw = load ptr, ptr %19, align 8, !tbaa !152  ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.dw, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.ah
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(128) %i.dw) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, %bb.ah, %bb.ae
  %.pn.pn = phi { ptr, i32 } [ %i.dt, %bb.ae ], [ %.pn, %bb.ah ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #36
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #36
  br label %bb.ak

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ea = load ptr, ptr %i.l, align 8, !tbaa !151 ; 4 uses
  %.not.i.i131 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i131, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !41 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.aj
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_132RefCountedVec_EraseBeginEnd_Test8TestBodyEv:bb.a
  %i.es = load ptr, ptr %9, align 8, !tbaa !41, !noalias !884 ; 2 uses
  %i.et = icmp eq ptr %i.es, %i.n
  br i1 %i.et, label %.noexc135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i259
  %i.eu = load i64, ptr %i.n, align 8, !tbaa !46, !noalias !884
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ev) #39
  br label %.noexc135

bb.ao:                                            ; preds = %.noexc263
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i251

bb.ap:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ex = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ey = load ptr, ptr %10, align 8, !tbaa !41, !noalias !884 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %i.m
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i251, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i256

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i256: ; preds = %bb.ap
  %i.fa = load i64, ptr %i.m, align 8, !tbaa !46, !noalias !884
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ey, i64 noundef %i.fb) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i251

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i251: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i256, %bb.ao
  %.pn.i252 = phi { ptr, i32 } [ %i.ew, %bb.ao ], [ %i.ex, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i256 ], [ %i.ex, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36, !noalias !884
  %i.fc = load ptr, ptr %9, align 8, !tbaa !41, !noalias !884 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.n
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i253

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i251
  %i.fe = load i64, ptr %i.n, align 8, !tbaa !46, !noalias !884
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.ff) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i251, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i253
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36, !noalias !884
  br label %.body264

.noexc135:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i259, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i260
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36, !noalias !884
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc135, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  %i.fg = load i8, ptr %21, align 8, !tbaa !143, !range !37, !noundef !38
  %i.fh = trunc nuw i8 %i.fg to i1
  br i1 %i.fh, label %bb.bb, label %bb.ar

bb.aq:                                            ; preds = %bb.am, %bb.al
  %i.fi = landingpad { ptr, i32 }
          cleanup
  br label %.body264

.body264:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i254, %bb.aq
  %eh.lpad-body265 = phi { ptr, i32 } [ %i.fi, %bb.aq ], [ %.pn.i252, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i254 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit148

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #36
  %i.fj = load ptr, ptr %i.o, align 8, !tbaa !151 ; 2 uses
  %.not.i.i136 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i136, label %_ZNK7testing15AssertionResult15failure_messageEv.exit137, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit137

_ZNK7testing15AssertionResult15failure_messageEv.exit137: ; preds = %bb.at, %bb.as
  %i.fl = phi ptr [ %i.fk, %bb.at ], [ @.str.216, %bb.as ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 410, ptr noundef %i.fl)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit137
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %bb.au
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  %i.fm = load ptr, ptr %22, align 8, !tbaa !152  ; 3 uses
  %.not.i.i138 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i138, label %_ZN7testing7MessageD2Ev.exit140, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139: ; preds = %bb.av
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8
  call void %i.fp(ptr noundef nonnull align 8 dereferenceable(128) %i.fm) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit140

_ZN7testing7MessageD2Ev.exit140:                  ; preds = %bb.av, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  br label %bb.bb

bb.aw:                                            ; preds = %bb.ar
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit143

bb.ax:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit137
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.ay:                                            ; preds = %bb.au
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #36
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn97 = phi { ptr, i32 } [ %i.fs, %bb.ay ], [ %i.fr, %bb.ax ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #36
  %i.ft = load ptr, ptr %22, align 8, !tbaa !152  ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i141, label %_ZN7testing7MessageD2Ev.exit143, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142: ; preds = %bb.az
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !16
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(128) %i.ft) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit143

_ZN7testing7MessageD2Ev.exit143:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142, %bb.az, %bb.aw
  %.pn97.pn = phi { ptr, i32 } [ %i.fq, %bb.aw ], [ %.pn97, %bb.az ], [ %.pn97, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i142 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #36
  %i.fx = load ptr, ptr %i.o, align 8, !tbaa !151 ; 4 uses
  %.not.i.i144 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i144, label %_ZN7testing15AssertionResultD2Ev.exit148, label %bb.ba

bb.ba:                                            ; preds = %_ZN7testing7MessageD2Ev.exit143
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !41 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i145: ; preds = %bb.ba
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !46
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i145
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit148

bb.bb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit140
  %i.gd = load ptr, ptr %i.o, align 8, !tbaa !151 ; 4 uses
  %.not.i.i149 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i149, label %_ZN7testing15AssertionResultD2Ev.exit153, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !41 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %i.gg = icmp eq ptr %i.ge, %i.gf
  br i1 %i.gg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150: ; preds = %bb.bc
  %i.gh = load i64, ptr %i.gf, align 8, !tbaa !46
  %i.gi = add i64 %i.gh, 1
  call void @_ZdlPvm(ptr noundef %i.ge, i64 noundef %i.gi) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i150
  call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit153

_ZN7testing15AssertionResultD2Ev.exit153:         ; preds = %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i151
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  %i.gj = add nuw nsw i64 %.050466, 1             ; 2 uses
  %exitcond600.not = icmp eq i64 %i.gj, %.076478
  br i1 %exitcond600.not, label %.preheader347, label %.lr.ph, !llvm.loop !887

_ZN7testing15AssertionResultD2Ev.exit148:         ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146, %_ZN7testing7MessageD2Ev.exit143, %.body264
  %.pn97.pn.pn = phi { ptr, i32 } [ %eh.lpad-body265, %.body264 ], [ %.pn97.pn, %_ZN7testing7MessageD2Ev.exit143 ], [ %.pn97.pn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #36
  br label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit124

.preheader346:                                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit176, %.preheader347
  br i1 %.not480, label %.preheader345, label %.lr.ph472

.lr.ph470:                                        ; preds = %.preheader347, %_ZN7testing15AssertionResultD2Ev.exit176
  %.val469 = phi i64 [ %.val, %_ZN7testing15AssertionResultD2Ev.exit176 ], [ %.val467, %.preheader347 ]
  %.049468 = phi i64 [ %i.im, %_ZN7testing15AssertionResultD2Ev.exit176 ], [ %.076478, %.preheader347 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.gk = add nuw i64 %.049468, %i.ai
  %i.gl = trunc i64 %i.gk to i32                  ; 2 uses
  store i32 %i.gl, ptr %i.d, align 4, !tbaa !132
  %i.gm = trunc i64 %.val469 to i1
  %.val1.i.i155 = load ptr, ptr %i.i, align 8
  %i.gn = select i1 %i.gm, ptr %.val1.i.i155, ptr %i.i
  %i.go = getelementptr inbounds nuw [16 x i8], ptr %i.gn, i64 %.049468 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !132, !noalias !888
  %i.gq = icmp eq i32 %i.gp, %i.gl
  br i1 %i.gq, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph470
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit158 unwind label %bb.bi

bb.be:                                            ; preds = %.lr.ph470
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36, !noalias !893
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %.noexc279 unwind label %bb.bi

.noexc279:                                        ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36, !noalias !893
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr noundef nonnull align 4 dereferenceable(4) %i.go)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i271 unwind label %bb.bg, !noalias !893

_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i271: ; preds = %.noexc279
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %24, ptr noundef nonnull @.str.277, ptr noundef nonnull @.str.276, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8, i1 noundef zeroext false)
          to label %bb.bf unwind label %bb.bh

bb.bf:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i271
  %i.gr = load ptr, ptr %8, align 8, !tbaa !41, !noalias !893 ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.p
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274: ; preds = %bb.bf
  %i.gt = load i64, ptr %i.p, align 8, !tbaa !46, !noalias !893
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i274
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !893
  %i.gv = load ptr, ptr %7, align 8, !tbaa !41, !noalias !893 ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.q
  br i1 %i.gw, label %.noexc157, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i276

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i276: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275
  %i.gx = load i64, ptr %i.q, align 8, !tbaa !46, !noalias !893
  %i.gy = add i64 %i.gx, 1
  call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.gy) #39
  br label %.noexc157

bb.bg:                                            ; preds = %.noexc279
  %i.gz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i266

bb.bh:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i271
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hb = load ptr, ptr %8, align 8, !tbaa !41, !noalias !893 ; 2 uses
  %i.hc = icmp eq ptr %i.hb, %i.p
  br i1 %i.hc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i266, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i272: ; preds = %bb.bh
  %i.hd = load i64, ptr %i.p, align 8, !tbaa !46, !noalias !893
  %i.he = add i64 %i.hd, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.he) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i266

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i266: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i272, %bb.bg
  %.pn.i267 = phi { ptr, i32 } [ %i.gz, %bb.bg ], [ %i.ha, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i272 ], [ %i.ha, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36, !noalias !893
  %i.hf = load ptr, ptr %7, align 8, !tbaa !41, !noalias !893 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.q
  br i1 %i.hg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i269, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i268

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i268: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i266
  %i.hh = load i64, ptr %i.q, align 8, !tbaa !46, !noalias !893
  %i.hi = add i64 %i.hh, 1
  call void @_ZdlPvm(ptr noundef %i.hf, i64 noundef %i.hi) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i269

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i269: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i266, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i268
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !893
  br label %.body280

.noexc157:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i275, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36, !noalias !893
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit158

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit158: ; preds = %.noexc157, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %i.hj = load i8, ptr %24, align 8, !tbaa !143, !range !37, !noundef !38
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.bt, label %bb.bj

bb.bi:                                            ; preds = %bb.be, %bb.bd
  %i.hl = landingpad { ptr, i32 }
          cleanup
  br label %.body280

.body280:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i269, %bb.bi
  %eh.lpad-body281 = phi { ptr, i32 } [ %i.hl, %bb.bi ], [ %.pn.i267, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i269 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit171

bb.bj:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit158
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #36
  %i.hm = load ptr, ptr %i.r, align 8, !tbaa !151 ; 2 uses
  %.not.i.i159 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i159, label %_ZNK7testing15AssertionResult15failure_messageEv.exit160, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit160

_ZNK7testing15AssertionResult15failure_messageEv.exit160: ; preds = %bb.bl, %bb.bk
  %i.ho = phi ptr [ %i.hn, %bb.bl ], [ @.str.216, %bb.bk ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %26, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 415, ptr noundef %i.ho)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit160
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  %i.hp = load ptr, ptr %25, align 8, !tbaa !152  ; 3 uses
  %.not.i.i161 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i161, label %_ZN7testing7MessageD2Ev.exit163, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162: ; preds = %bb.bn
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8
  call void %i.hs(ptr noundef nonnull align 8 dereferenceable(128) %i.hp) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit163

_ZN7testing7MessageD2Ev.exit163:                  ; preds = %bb.bn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bj
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit166

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit160
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.bq:                                            ; preds = %bb.bm
  %i.hv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #36
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.pn93 = phi { ptr, i32 } [ %i.hv, %bb.bq ], [ %i.hu, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #36
  %i.hw = load ptr, ptr %25, align 8, !tbaa !152  ; 3 uses
  %.not.i.i164 = icmp eq ptr %i.hw, null
  br i1 %.not.i.i164, label %_ZN7testing7MessageD2Ev.exit166, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165: ; preds = %bb.br
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !16
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(128) %i.hw) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit166

_ZN7testing7MessageD2Ev.exit166:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165, %bb.br, %bb.bo
  %.pn93.pn = phi { ptr, i32 } [ %i.ht, %bb.bo ], [ %.pn93, %bb.br ], [ %.pn93, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i165 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #36
  %i.ia = load ptr, ptr %i.r, align 8, !tbaa !151 ; 4 uses
  %.not.i.i167 = icmp eq ptr %i.ia, null
  br i1 %.not.i.i167, label %_ZN7testing15AssertionResultD2Ev.exit171, label %bb.bs

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit166
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !41 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168: ; preds = %bb.bs
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !46
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i168
  call void @_ZdlPvm(ptr noundef nonnull %i.ia, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit171
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_132RefCountedVec_EraseBeginEnd_Test8TestBodyEv:bb.a
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kx, i64 noundef %i.la) #39
  br label %.noexc199

bb.cq:                                            ; preds = %.noexc313
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i300

bb.cr:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i305
  %i.lc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ld = load ptr, ptr %4, align 8, !tbaa !41, !noalias !911 ; 2 uses
  %i.le = icmp eq ptr %i.ld, %i.v
  br i1 %i.le, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i306: ; preds = %bb.cr
  %i.lf = load i64, ptr %i.v, align 8, !tbaa !46, !noalias !911
  %i.lg = add i64 %i.lf, 1
  call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lg) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i300: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i306, %bb.cq
  %.pn.i301 = phi { ptr, i32 } [ %i.lb, %bb.cq ], [ %i.lc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i306 ], [ %i.lc, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36, !noalias !911
  %i.lh = load ptr, ptr %3, align 8, !tbaa !41, !noalias !911 ; 2 uses
  %i.li = icmp eq ptr %i.lh, %i.w
  br i1 %i.li, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i303, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i302: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i300
  %i.lj = load i64, ptr %i.w, align 8, !tbaa !46, !noalias !911
  %i.lk = add i64 %i.lj, 1
  call void @_ZdlPvm(ptr noundef %i.lh, i64 noundef %i.lk) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i303

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i303: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i300, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !911
  br label %.body314

.noexc199:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i309, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i310
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36, !noalias !911
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit200

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit200: ; preds = %.noexc199, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  %i.ll = load i8, ptr %30, align 8, !tbaa !143, !range !37, !noundef !38
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.dd, label %bb.ct

bb.cs:                                            ; preds = %bb.co, %bb.cn
  %i.ln = landingpad { ptr, i32 }
          cleanup
  br label %.body314

.body314:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i303, %bb.cs
  %eh.lpad-body315 = phi { ptr, i32 } [ %i.ln, %bb.cs ], [ %.pn.i301, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i303 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit213

bb.ct:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit200
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cu unwind label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  %i.lo = load ptr, ptr %i.x, align 8, !tbaa !151 ; 2 uses
  %.not.i.i201 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i201, label %_ZNK7testing15AssertionResult15failure_messageEv.exit202, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit202

_ZNK7testing15AssertionResult15failure_messageEv.exit202: ; preds = %bb.cv, %bb.cu
  %i.lq = phi ptr [ %i.lp, %bb.cv ], [ @.str.216, %bb.cu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %32, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 425, ptr noundef %i.lq)
          to label %bb.cw unwind label %bb.cz

bb.cw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit202
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.cx unwind label %bb.da

bb.cx:                                            ; preds = %bb.cw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.lr = load ptr, ptr %31, align 8, !tbaa !152  ; 3 uses
  %.not.i.i203 = icmp eq ptr %i.lr, null
  br i1 %.not.i.i203, label %_ZN7testing7MessageD2Ev.exit205, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204: ; preds = %bb.cx
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !16
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(128) %i.lr) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit205

_ZN7testing7MessageD2Ev.exit205:                  ; preds = %bb.cx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i204
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  br label %bb.dd

bb.cy:                                            ; preds = %bb.ct
  %i.lv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit208

bb.cz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit202
  %i.lw = landingpad { ptr, i32 }
          cleanup
  br label %bb.db

bb.da:                                            ; preds = %bb.cw
  %i.lx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %32) #36
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz
  %.pn85 = phi { ptr, i32 } [ %i.lx, %bb.da ], [ %i.lw, %bb.cz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #36
  %i.ly = load ptr, ptr %31, align 8, !tbaa !152  ; 3 uses
  %.not.i.i206 = icmp eq ptr %i.ly, null
  br i1 %.not.i.i206, label %_ZN7testing7MessageD2Ev.exit208, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207: ; preds = %bb.db
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !16
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(128) %i.ly) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit208

_ZN7testing7MessageD2Ev.exit208:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207, %bb.db, %bb.cy
  %.pn85.pn = phi { ptr, i32 } [ %i.lv, %bb.cy ], [ %.pn85, %bb.db ], [ %.pn85, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i207 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #36
  %i.mc = load ptr, ptr %i.x, align 8, !tbaa !151 ; 4 uses
  %.not.i.i209 = icmp eq ptr %i.mc, null
  br i1 %.not.i.i209, label %_ZN7testing15AssertionResultD2Ev.exit213, label %bb.dc

bb.dc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit208
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !41 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %i.mf = icmp eq ptr %i.md, %i.me
  br i1 %i.mf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210: ; preds = %bb.dc
  %i.mg = load i64, ptr %i.me, align 8, !tbaa !46
  %i.mh = add i64 %i.mg, 1
  call void @_ZdlPvm(ptr noundef %i.md, i64 noundef %i.mh) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211: ; preds = %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i210
  call void @_ZdlPvm(ptr noundef nonnull %i.mc, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit213

bb.dd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit200, %_ZN7testing7MessageD2Ev.exit205
  %i.mi = load ptr, ptr %i.x, align 8, !tbaa !151 ; 4 uses
  %.not.i.i214 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i214, label %_ZN7testing15AssertionResultD2Ev.exit218, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !41 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 2 uses
  %i.ml = icmp eq ptr %i.mj, %i.mk
  br i1 %i.ml, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i215: ; preds = %bb.de
  %i.mm = load i64, ptr %i.mk, align 8, !tbaa !46
  %i.mn = add i64 %i.mm, 1
  call void @_ZdlPvm(ptr noundef %i.mj, i64 noundef %i.mn) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216: ; preds = %bb.de, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i215
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef 32) #39
  br label %_ZN7testing15AssertionResultD2Ev.exit218

_ZN7testing15AssertionResultD2Ev.exit218:         ; preds = %bb.dd, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i216
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  %i.mo = add nuw nsw i64 %.047473, 1             ; 2 uses
  %exitcond602.not = icmp eq i64 %i.mo, %.075477
  br i1 %exitcond602.not, label %.preheader, label %.lr.ph474, !llvm.loop !914

_ZN7testing15AssertionResultD2Ev.exit213:         ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211, %_ZN7testing7MessageD2Ev.exit208, %.body314
  %.pn85.pn.pn = phi { ptr, i32 } [ %eh.lpad-body315, %.body314 ], [ %.pn85.pn, %_ZN7testing7MessageD2Ev.exit208 ], [ %.pn85.pn, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i211 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #36
  br label %_ZN12_GLOBAL__N_110RefCountedD2Ev.exit124

._crit_edge:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit240, %.preheader
  %i.mp = load i64, ptr %17, align 8, !tbaa !45
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %._crit_edge
  call fastcc void @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIN12_GLOBAL__N_110RefCountedELm8ESaIS4_EE15DestroyContentsEv(ptr noundef nonnull readonly align 8 dereferenceable(136) %17)
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #36
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.ad) #39
  %i.mr = add nuw nsw i64 %.075477, 1             ; 2 uses
  %exitcond604.not = icmp eq i64 %i.mr, %indvars.iv
  %indvar.next979 = add i64 %indvar978, 1
  br i1 %exitcond604.not, label %bb.d, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i, !llvm.loop !915

.lr.ph476:                                        ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit240
  %.0475 = phi i64 [ %i.oq, %_ZN7testing15AssertionResultD2Ev.exit240 ], [ %.075477, %.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  store i32 1, ptr %i.g, align 4, !tbaa !132
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.0475 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !132, !noalias !916
  %i.mu = icmp eq i32 %i.mt, 1
  br i1 %i.mu, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %.lr.ph476
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit222 unwind label %bb.dl

bb.dh:                                            ; preds = %.lr.ph476
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36, !noalias !921
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %.noexc330 unwind label %bb.dl

.noexc330:                                        ; preds = %bb.dh
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36, !noalias !921
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(4) %i.ms)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i322 unwind label %bb.dj, !noalias !921

_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i322: ; preds = %.noexc330
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %33, ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.279, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i322
  %i.mv = load ptr, ptr %2, align 8, !tbaa !41, !noalias !921 ; 2 uses
  %i.mw = icmp eq ptr %i.mv, %i.y
  br i1 %i.mw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i325: ; preds = %bb.di
  %i.mx = load i64, ptr %i.y, align 8, !tbaa !46, !noalias !921
  %i.my = add i64 %i.mx, 1
  call void @_ZdlPvm(ptr noundef %i.mv, i64 noundef %i.my) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i326

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i326: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i325
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !921
  %i.mz = load ptr, ptr %1, align 8, !tbaa !41, !noalias !921 ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.z
  br i1 %i.na, label %.noexc221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i327: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i326
  %i.nb = load i64, ptr %i.z, align 8, !tbaa !46, !noalias !921
  %i.nc = add i64 %i.nb, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nc) #39
  br label %.noexc221

bb.dj:                                            ; preds = %.noexc330
  %i.nd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i317

bb.dk:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIiiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i322
  %i.ne = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nf = load ptr, ptr %2, align 8, !tbaa !41, !noalias !921 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, %i.y
  br i1 %i.ng, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i317, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i323

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i323: ; preds = %bb.dk
  %i.nh = load i64, ptr %i.y, align 8, !tbaa !46, !noalias !921
  %i.ni = add i64 %i.nh, 1
  call void @_ZdlPvm(ptr noundef %i.nf, i64 noundef %i.ni) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i317

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i317: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i323, %bb.dj
  %.pn.i318 = phi { ptr, i32 } [ %i.nd, %bb.dj ], [ %i.ne, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i323 ], [ %i.ne, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36, !noalias !921
  %i.nj = load ptr, ptr %1, align 8, !tbaa !41, !noalias !921 ; 2 uses
  %i.nk = icmp eq ptr %i.nj, %i.z
  br i1 %i.nk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i319

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i319: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i317
  %i.nl = load i64, ptr %i.z, align 8, !tbaa !46, !noalias !921
  %i.nm = add i64 %i.nl, 1
  call void @_ZdlPvm(ptr noundef %i.nj, i64 noundef %i.nm) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i320: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i317, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i319
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36, !noalias !921
  br label %.body331

.noexc221:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #36, !noalias !921
  br label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit222

_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit222: ; preds = %.noexc221, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.nn = load i8, ptr %33, align 8, !tbaa !143, !range !37, !noundef !38
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.dw, label %bb.dm

bb.dl:                                            ; preds = %bb.dh, %bb.dg
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %.body331

.body331:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i320, %bb.dl
  %eh.lpad-body332 = phi { ptr, i32 } [ %i.np, %bb.dl ], [ %.pn.i318, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i320 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  br label %_ZN7testing15AssertionResultD2Ev.exit235

bb.dm:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit222
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #36
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.dn unwind label %bb.dr

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #36
  %i.nq = load ptr, ptr %i.aa, align 8, !tbaa !151 ; 2 uses
  %.not.i.i223 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i223, label %_ZNK7testing15AssertionResult15failure_messageEv.exit224, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !41
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit224

_ZNK7testing15AssertionResult15failure_messageEv.exit224: ; preds = %bb.do, %bb.dn
  %i.ns = phi ptr [ %i.nr, %bb.do ], [ @.str.216, %bb.dn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %35, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef 430, ptr noundef %i.ns)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit224
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(8) %34)
          to label %bb.dq unwind label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  %i.nt = load ptr, ptr %34, align 8, !tbaa !152  ; 3 uses
  %.not.i.i225 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i225, label %_ZN7testing7MessageD2Ev.exit227, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226: ; preds = %bb.dq
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !16
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(128) %i.nt) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit227

_ZN7testing7MessageD2Ev.exit227:                  ; preds = %bb.dq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  br label %bb.dw

bb.dr:                                            ; preds = %bb.dm
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit230

bb.ds:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit224
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.du

bb.dt:                                            ; preds = %bb.dp
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #36
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %.pn81 = phi { ptr, i32 } [ %i.nz, %bb.dt ], [ %i.ny, %bb.ds ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #36
  %i.oa = load ptr, ptr %34, align 8, !tbaa !152  ; 3 uses
  %.not.i.i228 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i228, label %_ZN7testing7MessageD2Ev.exit230, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229: ; preds = %bb.du
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !16
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(128) %i.oa) #36, !inline_history !154
  br label %_ZN7testing7MessageD2Ev.exit230

_ZN7testing7MessageD2Ev.exit230:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229, %bb.du, %bb.dr
  %.pn81.pn = phi { ptr, i32 } [ %i.nx, %bb.dr ], [ %.pn81, %bb.du ], [ %.pn81, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #36
  %i.oe = load ptr, ptr %i.aa, align 8, !tbaa !151 ; 4 uses
  %.not.i.i231 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i231, label %_ZN7testing15AssertionResultD2Ev.exit235, label %bb.dv

bb.dv:                                            ; preds = %_ZN7testing7MessageD2Ev.exit230
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !41 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.oe, i64 16 ; 2 uses
  %i.oh = icmp eq ptr %i.of, %i.og
  br i1 %i.oh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i232: ; preds = %bb.dv
  %i.oi = load i64, ptr %i.og, align 8, !tbaa !46
  %i.oj = add i64 %i.oi, 1
  call void @_ZdlPvm(ptr noundef %i.of, i64 noundef %i.oj) #39
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i233

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i233: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i232
end_hunk_2
begin_hunk_3_@_ZN12_GLOBAL__N_118IntVec_Insert_TestD0Ev:bb.a
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 18 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 18 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.std::vector.231", align 8  ; 12 uses
  %30 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 18 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.std::vector.231", align 8  ; 12 uses
  %39 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 17 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %45 = alloca %"class.testing::Message", align 8 ; 7 uses
  %46 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %47 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 22 uses
  %i.r = alloca [3 x i32], align 4                ; 11 uses
  %48 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 32 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.s = alloca ptr, align 8                      ; 6 uses
  %50 = alloca %"class.std::istream_iterator", align 8 ; 6 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %53 = alloca %"class.testing::Message", align 8 ; 7 uses
  %54 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 18 uses
  %i.u = alloca [2 x i32], align 8                ; 10 uses
  %i.v = alloca ptr, align 8                      ; 6 uses
  %i.w = alloca [2 x i32], align 8                ; 9 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %61 = alloca %"class.testing::Message", align 8 ; 7 uses
  %62 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %63 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.x = alloca ptr, align 8                      ; 5 uses
  %64 = alloca %"class.testing::Message", align 8 ; 7 uses
  %65 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 9 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 17 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %48, i64 120 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %48, i64 336
  %i.bq = getelementptr inbounds nuw i8, ptr %48, i64 344
  %i.br = getelementptr inbounds nuw i8, ptr %48, i64 345
  %i.bs = getelementptr inbounds nuw i8, ptr %48, i64 352
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 4 uses
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 -24    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %48, i64 72 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %48, i64 80 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %48, i64 88 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %48, i64 104 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %48, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %50, i64 12 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.cm = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %scevgep9030 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %scevgep9035 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %49, i64 30
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv9040 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next9041, %bb.c ] ; 2 uses
  %.05516 = phi i64 [ 0, %bb.a ], [ %i.da, %bb.c ] ; 14 uses
  %.not.i = icmp eq i64 %.05516, 0                ; 6 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit805
  %i.da = add nuw nsw i64 %.05516, 1              ; 2 uses
  %indvars.iv.next9041 = add nuw nsw i64 %indvars.iv9040, 1
  %exitcond9042.not = icmp eq i64 %i.da, 20
  br i1 %exitcond9042.not, label %bb.b, label %.preheader, !llvm.loop !1035

bb.d:                                             ; preds = %.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit805
  %indvars.iv9036 = phi i64 [ 2, %.preheader ], [ %indvars.iv.next9037, %_ZNSt6vectorIiSaIiEED2Ev.exit805 ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEED2Ev.exit805 ] ; 2 uses
  %.0605515 = phi i64 [ 0, %.preheader ], [ %i.gj, %_ZNSt6vectorIiSaIiEED2Ev.exit805 ] ; 83 uses
  %i.db = shl nuw nsw i64 %.0605515, 2
  %i.dc = add nuw i64 %i.db, 4
  %i.dd = shl nuw nsw i64 %.0605515, 2
  %i.de = add nuw i64 %i.dd, 16
  %i.df = shl i64 %.0605515, 2
  %i.dg = shl nuw nsw i64 %.0605515, 2
  %i.dh = add nuw i64 %i.dg, 20
  %66 = shl nuw nsw i64 %.0605515, 2
  %i.di = shl nuw nsw i64 %.0605515, 2
  %i.dj = add nuw i64 %i.di, 12
  %i.dk = shl nuw nsw i64 %.0605515, 2
  %i.dl = add nuw i64 %i.dk, 12
  %i.dm = shl nuw nsw i64 %.0605515, 2
  %i.dn = add nuw i64 %i.dm, 8
  br i1 %.not.i, label %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread, label %.lr.ph.i

_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i64 0, ptr %13, align 8, !tbaa !130
  %i.do = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.0605515 ; 2 uses
  %i.dp = ptrtoint ptr %i.do to i64               ; 2 uses
  br label %bb.s

.lr.ph.i:                                         ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %.sroa.21.2 = phi ptr [ %.sroa.21.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ null, %bb.d ] ; 3 uses
  %.sroa.01199.2 = phi ptr [ %.sroa.01199.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ null, %bb.d ] ; 7 uses
  %i.dq = phi ptr [ %i.eh, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ null, %bb.d ] ; 3 uses
  %i.dr = phi ptr [ %.sroa.13.0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ null, %bb.d ] ; 3 uses
  %.06.i = phi i64 [ %i.ei, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ 0, %bb.d ] ; 2 uses
  %i.ds = trunc nuw nsw i64 %.06.i to i32         ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.dr, %i.dq
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  store i32 %i.ds, ptr %i.dr, align 4, !tbaa !132
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.dt = ptrtoint ptr %i.dq to i64
  %i.du = ptrtoint ptr %.sroa.01199.2 to i64
  %i.dv = sub i64 %i.dt, %i.du                    ; 6 uses
  %i.dw = icmp eq i64 %i.dv, 9223372036854775804
  br i1 %i.dw, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
          to label %.noexc unwind label %.loopexit.split-lp1299

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.dx = ashr exact i64 %i.dv, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dy = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.dx ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  %i.ea = call i64 @llvm.umin.i64(i64 %i.dy, i64 2305843009213693951)
  %i.eb = select i1 %i.dz, i64 2305843009213693951, i64 %i.ea ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.eb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.ec = shl nuw nsw i64 %i.eb, 2
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #41
          to label %.noexc228 unwind label %.loopexit1298 ; 4 uses

.noexc228:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.ee = getelementptr inbounds i8, ptr %i.ed, i64 %i.dv ; 2 uses
  store i32 %i.ds, ptr %i.ee, align 4, !tbaa !132
  %i.ef = icmp sgt i64 %i.dv, 0
  br i1 %i.ef, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.h:                                             ; preds = %.noexc228
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ed, ptr align 4 %.sroa.01199.2, i64 %i.dv, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.h, %.noexc228
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.01199.2, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01199.2, i64 noundef %i.dv) #39
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.eb ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.e
  %.sroa.21.3 = phi ptr [ %i.eg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.21.2, %bb.e ] ; 6 uses
  %.pn1247 = phi ptr [ %i.ee, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.dr, %bb.e ] ; 6 uses
  %.sroa.01199.3 = phi ptr [ %i.ed, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.01199.2, %bb.e ] ; 7 uses
  %i.eh = phi ptr [ %i.eg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.dq, %bb.e ]
  %.sroa.13.0 = getelementptr inbounds nuw i8, ptr %.pn1247, i64 4 ; 6 uses
  %i.ei = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ei, %.05516
  br i1 %exitcond.not.i, label %.lr.ph.i230, label %.lr.ph.i, !llvm.loop !1036

.lr.ph.i230:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i64 0, ptr %13, align 8, !tbaa !130
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i, %.lr.ph.i230
  %.05.i = phi i64 [ 0, %.lr.ph.i230 ], [ %i.er, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  %i.ej = trunc i64 %.05.i to i32                 ; 2 uses
  store i32 %i.ej, ptr %i.i, align 4, !tbaa !132
  %i.ek = load i64, ptr %13, align 8, !tbaa !45, !noalias !1037 ; 3 uses
  %i.el = trunc i64 %i.ek to i1                   ; 2 uses
  %i.em = load i64, ptr %i.y, align 8, !noalias !1037
  %.sink.i.i.i.i.i = select i1 %i.el, i64 %i.em, i64 8
  %.sink1.i.i.i.i.i = lshr i64 %i.ek, 1           ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sink1.i.i.i.i.i, %.sink.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k, !prof !136

bb.k:                                             ; preds = %bb.j
  %i.en = load ptr, ptr %i.z, align 8, !noalias !1037
  %.sink2.i.i.i.i.i = select i1 %i.el, ptr %i.en, ptr %i.z
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i.i.i, i64 %.sink1.i.i.i.i.i
  store i32 %i.ej, ptr %i.eo, align 4, !tbaa !132
  %i.ep = add i64 %i.ek, 2
  store i64 %i.ep, ptr %13, align 8, !tbaa !45
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i

bb.l:                                             ; preds = %bb.j
  %i.eq = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE15EmplaceBackSlowIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i unwind label %bb.ay ; 0 uses

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  %i.er = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %i.er, %.05516
  br i1 %exitcond.not.i231, label %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit, label %bb.j, !llvm.loop !137

_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01199.3, i64 %.0605515 ; 6 uses
  %i.et = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.eu = ptrtoint ptr %.sroa.01199.3 to i64
  %.idx = shl nuw nsw i64 %.0605515, 2            ; 3 uses
  %.not.i809 = icmp eq ptr %.sroa.13.0, %.sroa.21.3
  br i1 %.not.i809, label %bb.s, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit
  %i.ev = icmp eq ptr %i.es, %.sroa.13.0
  br i1 %i.ev, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 9999, ptr %.sroa.13.0, align 4, !tbaa !132
  %i.ew = getelementptr inbounds nuw i8, ptr %.pn1247, i64 8
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit

bb.o:                                             ; preds = %bb.m
  %i.ex = load i32, ptr %.pn1247, align 4, !tbaa !132
  store i32 %i.ex, ptr %.sroa.13.0, align 4, !tbaa !132
  %i.ey = getelementptr inbounds nuw i8, ptr %.pn1247, i64 8
  %i.ez = ptrtoint ptr %.pn1247 to i64
  %i.fa = sub i64 %i.ez, %i.et                    ; 3 uses
  %i.fb = ashr exact i64 %i.fa, 2                 ; 2 uses
  %i.fc = icmp sgt i64 %i.fb, 1
  br i1 %i.fc, label %bb.p, label %bb.q, !prof !166

bb.p:                                             ; preds = %bb.o
  %i.fd = sub nsw i64 0, %i.fb
  %i.fe = getelementptr inbounds [4 x i8], ptr %.sroa.13.0, i64 %i.fd
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fe, ptr align 4 %i.es, i64 %i.fa, i1 false)
  br label %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.ff = icmp eq i64 %i.fa, 4
  br i1 %i.ff, label %bb.r, label %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.fg = load i32, ptr %i.es, align 4, !tbaa !132
  store i32 %i.fg, ptr %.pn1247, align 4, !tbaa !132
  br label %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i

_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  store i32 9999, ptr %i.es, align 4, !tbaa !132
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit
  %i.fh = phi i64 [ %i.dp, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %.idx, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ] ; 3 uses
  %i.fi = phi i64 [ 0, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %i.eu, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ]
  %i.fj = phi i64 [ %i.dp, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %i.et, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ]
  %i.fk = phi ptr [ %i.do, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %i.es, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ]
  %.sroa.21.412141223 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %.sroa.21.3, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ] ; 3 uses
  %.sroa.01199.412161221 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %.sroa.01199.3, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ] ; 5 uses
  %i.fl = ptrtoint ptr %.sroa.21.412141223 to i64 ; 2 uses
  %i.fm = sub i64 %i.fl, %i.fi                    ; 3 uses
  %i.fn = icmp eq i64 %i.fm, 9223372036854775804
  br i1 %i.fn, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
          to label %.noexc812 unwind label %.loopexit.split-lp1304

.noexc812:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.fo = ashr exact i64 %i.fm, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fo, i64 1)
  %i.fp = add nsw i64 %.sroa.speculated.i.i.i, %i.fo ; 2 uses
  %i.fq = icmp ult i64 %i.fp, %i.fo
  %i.fr = call i64 @llvm.umin.i64(i64 %i.fp, i64 2305843009213693951)
  %i.fs = select i1 %i.fq, i64 2305843009213693951, i64 %i.fr ; 3 uses
  %.not.i.i.i811 = icmp ne i64 %i.fs, 0
  call void @llvm.assume(i1 %.not.i.i.i811)
  %i.ft = shl nuw nsw i64 %i.fs, 2
  %i.fu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #41
          to label %.noexc813 unwind label %.loopexit1303 ; 4 uses

.noexc813:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.fh ; 2 uses
  store i32 9999, ptr %i.fv, align 4, !tbaa !132
  %i.fw = icmp sgt i64 %i.fh, 0
  br i1 %i.fw, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

bb.u:                                             ; preds = %.noexc813
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fu, ptr align 4 %.sroa.01199.412161221, i64 %i.fh, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i: ; preds = %bb.u, %.noexc813
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %i.fy = sub i64 %i.fl, %i.fj                    ; 3 uses
  %i.fz = icmp sgt i64 %i.fy, 0
  br i1 %i.fz, label %bb.v, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fx, ptr align 4 %i.fk, i64 %i.fy, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.01199.412161221, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01199.412161221, i64 noundef %i.fm) #39
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.ga = getelementptr inbounds i8, ptr %i.fx, i64 %i.fy
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fs
  %.pre = shl nuw nsw i64 %.0605515, 2
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit

_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.idx1251.pre-phi = phi i64 [ %.idx, %bb.n ], [ %.idx, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 14 uses
  %.sroa.21.5 = phi ptr [ %.sroa.21.3, %bb.n ], [ %.sroa.21.3, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i ], [ %i.gb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %i.ew, %bb.n ], [ %i.ey, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i ], [ %i.ga, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.01199.5 = phi ptr [ %.sroa.01199.3, %bb.n ], [ %.sroa.01199.3, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i ], [ %i.fu, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  %i.gc = load i64, ptr %13, align 8, !tbaa !45   ; 2 uses
  %i.gd = trunc i64 %i.gc to i1                   ; 3 uses
  %i.ge = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.gf = select i1 %i.gd, ptr %i.ge, ptr %i.z    ; 7 uses
  %i.gg = ptrtoaddr ptr %i.gf to i64
  %i.gh = getelementptr i8, ptr %i.gf, i64 %.idx1251.pre-phi ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  store i32 9999, ptr %i.h, align 4, !tbaa !132
  %i.gi = load i64, ptr %i.y, align 8, !noalias !1040 ; 2 uses
  %.sink.i.i = select i1 %i.gd, i64 %i.gi, i64 8  ; 2 uses
  %.sink1.i.i = lshr i64 %i.gc, 1                 ; 11 uses
  %i.gj = add nuw nsw i64 %.0605515, 1            ; 5 uses
  %i.gk = add nuw i64 %.sink1.i.i, 1              ; 3 uses
  %.not1249 = icmp ult i64 %.sink1.i.i, %.sink.i.i
  br i1 %.not1249, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit
  %i.gl = shl nuw i64 %.sink.i.i, 1
  %.sroa.speculated.i.i = call noundef i64 @llvm.umax.i64(i64 %i.gl, i64 %i.gk) ; 4 uses
  %i.gm = icmp ugt i64 %.sroa.speculated.i.i, 2305843009213693951
  br i1 %i.gm, label %bb.y, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i, !prof !136

bb.y:                                             ; preds = %bb.x
  %i.gn = icmp ugt i64 %.sroa.speculated.i.i, 4611686018427387903
  br i1 %i.gn, label %.noexc.i817, label %.noexc44.i

.noexc.i817:                                      ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc818 unwind label %.loopexit.split-lp1309

.noexc818:                                        ; preds = %.noexc.i817
  unreachable

.noexc44.i:                                       ; preds = %bb.y
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc819 unwind label %.loopexit.split-lp1309

.noexc819:                                        ; preds = %.noexc44.i
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i: ; preds = %bb.x
  %i.go = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.gp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.go) #41
          to label %.noexc820 unwind label %.loopexit1308 ; 10 uses

.noexc820:                                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i
  %i.gq = ptrtoaddr ptr %i.gp to i64              ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gp, i64 %.idx1251.pre-phi ; 2 uses
  store i32 9999, ptr %i.gr, align 4, !tbaa !132
  %.not.i.i46.i = icmp eq i64 %.0605515, 0
  br i1 %.not.i.i46.i, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit53.i, label %.lr.ph.i.i49.i.preheader

.lr.ph.i.i49.i.preheader:                         ; preds = %.noexc820
  %min.iters.check15821 = icmp samesign ult i64 %.0605515, 8
  %i.gs = sub i64 %i.gg, %i.gq
  %diff.check15819 = icmp ugt i64 %i.gs, -32
  %or.cond = select i1 %min.iters.check15821, i1 true, i1 %diff.check15819
  br i1 %or.cond, label %.lr.ph.i.i49.i.preheader15868, label %vector.ph15822

vector.ph15822:                                   ; preds = %.lr.ph.i.i49.i.preheader
  %n.vec15823 = and i64 %.0605515, 9223372036854775800 ; 4 uses
  %i.gt = shl i64 %n.vec15823, 2
  %i.gu = getelementptr i8, ptr %i.gf, i64 %i.gt  ; 2 uses
  br label %vector.body15824

vector.body15824:                                 ; preds = %vector.body15824, %vector.ph15822
  %index15825 = phi i64 [ 0, %vector.ph15822 ], [ %index.next15829, %vector.body15824 ] ; 3 uses
  %i.gv = shl i64 %index15825, 2
  %next.gep15826 = getelementptr i8, ptr %i.gf, i64 %i.gv ; 2 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %index15825 ; 2 uses
  %i.gx = getelementptr i8, ptr %next.gep15826, i64 16
  %wide.load15827 = load <4 x i32>, ptr %next.gep15826, align 4, !tbaa !132
  %wide.load15828 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !132
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <4 x i32> %wide.load15827, ptr %i.gw, align 4, !tbaa !132
  store <4 x i32> %wide.load15828, ptr %i.gy, align 4, !tbaa !132
  %index.next15829 = add nuw i64 %index15825, 8   ; 2 uses
  %i.gz = icmp eq i64 %index.next15829, %n.vec15823
  br i1 %i.gz, label %middle.block15830, label %vector.body15824, !llvm.loop !1043

middle.block15830:                                ; preds = %vector.body15824
  %cmp.n15831 = icmp eq i64 %.0605515, %n.vec15823
  br i1 %cmp.n15831, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit53.i, label %.lr.ph.i.i49.i.preheader15868

.lr.ph.i.i49.i.preheader15868:                    ; preds = %.lr.ph.i.i49.i.preheader, %middle.block15830
  %.012.i.i50.i.ph = phi i64 [ 0, %.lr.ph.i.i49.i.preheader ], [ %n.vec15823, %middle.block15830 ] ; 3 uses
  %.ph15869 = phi ptr [ %i.gf, %.lr.ph.i.i49.i.preheader ], [ %i.gu, %middle.block15830 ] ; 2 uses
  %xtraiter = and i64 %.0605515, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i49.i.prol.loopexit, label %.lr.ph.i.i49.i.prol

.lr.ph.i.i49.i.prol:                              ; preds = %.lr.ph.i.i49.i.preheader15868, %.lr.ph.i.i49.i.prol
  %.012.i.i50.i.prol = phi i64 [ %i.he, %.lr.ph.i.i49.i.prol ], [ %.012.i.i50.i.ph, %.lr.ph.i.i49.i.preheader15868 ] ; 2 uses
  %i.ha = phi ptr [ %i.hd, %.lr.ph.i.i49.i.prol ], [ %.ph15869, %.lr.ph.i.i49.i.preheader15868 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i49.i.prol ], [ 0, %.lr.ph.i.i49.i.preheader15868 ]
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.012.i.i50.i.prol
  %i.hc = load i32, ptr %i.ha, align 4, !tbaa !132
  store i32 %i.hc, ptr %i.hb, align 4, !tbaa !132
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 4 ; 3 uses
  %i.he = add nuw nsw i64 %.012.i.i50.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i49.i.prol.loopexit, label %.lr.ph.i.i49.i.prol, !llvm.loop !1044

.lr.ph.i.i49.i.prol.loopexit:                     ; preds = %.lr.ph.i.i49.i.prol, %.lr.ph.i.i49.i.preheader15868
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i49.i.preheader15868 ], [ %i.hd, %.lr.ph.i.i49.i.prol ]
  %.012.i.i50.i.unr = phi i64 [ %.012.i.i50.i.ph, %.lr.ph.i.i49.i.preheader15868 ], [ %i.he, %.lr.ph.i.i49.i.prol ]
  %.unr = phi ptr [ %.ph15869, %.lr.ph.i.i49.i.preheader15868 ], [ %i.hd, %.lr.ph.i.i49.i.prol ]
  %i.hf = sub nsw i64 %.012.i.i50.i.ph, %.0605515
  %i.hg = icmp ugt i64 %i.hf, -4
  br i1 %i.hg, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit53.i, label %.lr.ph.i.i49.i

.lr.ph.i.i49.i:                                   ; preds = %.lr.ph.i.i49.i.prol.loopexit, %.lr.ph.i.i49.i
  %.012.i.i50.i = phi i64 [ %i.hx, %.lr.ph.i.i49.i ], [ %.012.i.i50.i.unr, %.lr.ph.i.i49.i.prol.loopexit ] ; 5 uses
  %i.hh = phi ptr [ %i.hw, %.lr.ph.i.i49.i ], [ %.unr, %.lr.ph.i.i49.i.prol.loopexit ] ; 5 uses
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.012.i.i50.i
  %i.hj = load i32, ptr %i.hh, align 4, !tbaa !132
  store i32 %i.hj, ptr %i.hi, align 4, !tbaa !132
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.012.i.i50.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = load i32, ptr %i.hk, align 4, !tbaa !132
  store i32 %i.hn, ptr %i.hm, align 4, !tbaa !132
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.012.i.i50.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i32, ptr %i.ho, align 4, !tbaa !132
  store i32 %i.hr, ptr %i.hq, align 4, !tbaa !132
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %.012.i.i50.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 12
  %i.hv = load i32, ptr %i.hs, align 4, !tbaa !132
  store i32 %i.hv, ptr %i.hu, align 4, !tbaa !132
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %i.hx = add nuw nsw i64 %.012.i.i50.i, 4        ; 2 uses
  %exitcond.not.i.i51.i.3 = icmp eq i64 %i.hx, %.0605515
  br i1 %exitcond.not.i.i51.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit53.i, label %.lr.ph.i.i49.i, !llvm.loop !1045

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit53.i: ; preds = %.lr.ph.i.i49.i.prol.loopexit, %.lr.ph.i.i49.i, %middle.block15830, %.noexc820
  %.sroa.094.0.i = phi ptr [ %i.gf, %.noexc820 ], [ %i.gu, %middle.block15830 ], [ %.lcssa.unr, %.lr.ph.i.i49.i.prol.loopexit ], [ %i.hw, %.lr.ph.i.i49.i ] ; 5 uses
  %.sroa.094.0.i15802 = ptrtoaddr ptr %.sroa.094.0.i to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gj ; 6 uses
  %i.hz = sub nsw i64 %.sink1.i.i, %.0605515      ; 4 uses
  %.not.i.i815 = icmp eq i64 %.sink1.i.i, %.0605515
  br i1 %.not.i.i815, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i.i816.preheader

.lr.ph.i.i816.preheader:                          ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit53.i
  %min.iters.check15805 = icmp ult i64 %i.hz, 8
  br i1 %min.iters.check15805, label %.lr.ph.i.i816.preheader15866, label %vector.memcheck15801

vector.memcheck15801:                             ; preds = %.lr.ph.i.i816.preheader
  %i.ia = add i64 %i.dc, %i.gq
  %i.ib = sub i64 %.sroa.094.0.i15802, %i.ia
  %diff.check15803 = icmp ugt i64 %i.ib, -32
  br i1 %diff.check15803, label %.lr.ph.i.i816.preheader15866, label %vector.ph15806

vector.ph15806:                                   ; preds = %vector.memcheck15801
  %n.vec15807 = and i64 %i.hz, -8                 ; 4 uses
  %i.ic = shl i64 %n.vec15807, 2
  %i.id = getelementptr i8, ptr %.sroa.094.0.i, i64 %i.ic
  br label %vector.body15808

vector.body15808:                                 ; preds = %vector.body15808, %vector.ph15806
  %index15809 = phi i64 [ 0, %vector.ph15806 ], [ %index.next15813, %vector.body15808 ] ; 3 uses
  %i.ie = shl i64 %index15809, 2
  %next.gep15810 = getelementptr i8, ptr %.sroa.094.0.i, i64 %i.ie ; 2 uses
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %index15809 ; 2 uses
  %i.ig = getelementptr i8, ptr %next.gep15810, i64 16
  %wide.load15811 = load <4 x i32>, ptr %next.gep15810, align 4, !tbaa !132
  %wide.load15812 = load <4 x i32>, ptr %i.ig, align 4, !tbaa !132
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  store <4 x i32> %wide.load15811, ptr %i.if, align 4, !tbaa !132
  store <4 x i32> %wide.load15812, ptr %i.ih, align 4, !tbaa !132
  %index.next15813 = add nuw i64 %index15809, 8   ; 2 uses
  %i.ii = icmp eq i64 %index.next15813, %n.vec15807
  br i1 %i.ii, label %middle.block15814, label %vector.body15808, !llvm.loop !1046

middle.block15814:                                ; preds = %vector.body15808
  %cmp.n15815 = icmp eq i64 %i.hz, %n.vec15807
  br i1 %cmp.n15815, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i.i816.preheader15866

.lr.ph.i.i816.preheader15866:                     ; preds = %vector.memcheck15801, %.lr.ph.i.i816.preheader, %middle.block15814
  %.012.i.i.ph = phi i64 [ 0, %vector.memcheck15801 ], [ 0, %.lr.ph.i.i816.preheader ], [ %n.vec15807, %middle.block15814 ] ; 3 uses
  %.ph15867 = phi ptr [ %.sroa.094.0.i, %vector.memcheck15801 ], [ %.sroa.094.0.i, %.lr.ph.i.i816.preheader ], [ %i.id, %middle.block15814 ] ; 2 uses
  %i.ij = sub nsw i64 %.sink1.i.i, %.0605515
  %xtraiter19007 = and i64 %i.ij, 3               ; 2 uses
  %lcmp.mod19008.not = icmp eq i64 %xtraiter19007, 0
  br i1 %lcmp.mod19008.not, label %.lr.ph.i.i816.prol.loopexit, label %.lr.ph.i.i816.prol

.lr.ph.i.i816.prol:                               ; preds = %.lr.ph.i.i816.preheader15866, %.lr.ph.i.i816.prol
  %.012.i.i.prol = phi i64 [ %i.io, %.lr.ph.i.i816.prol ], [ %.012.i.i.ph, %.lr.ph.i.i816.preheader15866 ] ; 2 uses
  %i.ik = phi ptr [ %i.in, %.lr.ph.i.i816.prol ], [ %.ph15867, %.lr.ph.i.i816.preheader15866 ] ; 2 uses
  %prol.iter19009 = phi i64 [ %prol.iter19009.next, %.lr.ph.i.i816.prol ], [ 0, %.lr.ph.i.i816.preheader15866 ]
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %.012.i.i.prol
  %i.im = load i32, ptr %i.ik, align 4, !tbaa !132
  store i32 %i.im, ptr %i.il, align 4, !tbaa !132
end_hunk_3
begin_hunk_4_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a
  br i1 %diff.check15662, label %.lr.ph.i.i890.preheader15851, label %vector.ph15665

vector.ph15665:                                   ; preds = %vector.memcheck15660
  %n.vec15666 = and i64 %i.ahd, -8                ; 4 uses
  %i.ahg = shl i64 %n.vec15666, 2
  %i.ahh = getelementptr i8, ptr %.sroa.090.0.i, i64 %i.ahg
  br label %vector.body15667

vector.body15667:                                 ; preds = %vector.body15667, %vector.ph15665
  %index15668 = phi i64 [ 0, %vector.ph15665 ], [ %index.next15672, %vector.body15667 ] ; 3 uses
  %i.ahi = shl i64 %index15668, 2
  %next.gep15669 = getelementptr i8, ptr %.sroa.090.0.i, i64 %i.ahi ; 2 uses
  %i.ahj = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %index15668 ; 2 uses
  %i.ahk = getelementptr i8, ptr %next.gep15669, i64 16
  %wide.load15670 = load <4 x i32>, ptr %next.gep15669, align 4, !tbaa !132
  %wide.load15671 = load <4 x i32>, ptr %i.ahk, align 4, !tbaa !132
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahj, i64 16
  store <4 x i32> %wide.load15670, ptr %i.ahj, align 4, !tbaa !132
  store <4 x i32> %wide.load15671, ptr %i.ahl, align 4, !tbaa !132
  %index.next15672 = add nuw i64 %index15668, 8   ; 2 uses
  %i.ahm = icmp eq i64 %index.next15672, %n.vec15666
  br i1 %i.ahm, label %middle.block15673, label %vector.body15667, !llvm.loop !1119

middle.block15673:                                ; preds = %vector.body15667
  %cmp.n15674 = icmp eq i64 %i.ahd, %n.vec15666
  br i1 %cmp.n15674, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i893, label %.lr.ph.i.i890.preheader15851

.lr.ph.i.i890.preheader15851:                     ; preds = %vector.memcheck15660, %.lr.ph.i.i890.preheader, %middle.block15673
  %.012.i.i891.ph = phi i64 [ 0, %vector.memcheck15660 ], [ 0, %.lr.ph.i.i890.preheader ], [ %n.vec15666, %middle.block15673 ] ; 3 uses
  %.ph15852 = phi ptr [ %.sroa.090.0.i, %vector.memcheck15660 ], [ %.sroa.090.0.i, %.lr.ph.i.i890.preheader ], [ %i.ahh, %middle.block15673 ] ; 2 uses
  %i.ahn = sub nsw i64 %.sink1.i.i874, %.0605515
  %xtraiter19045 = and i64 %i.ahn, 3              ; 2 uses
  %lcmp.mod19046.not = icmp eq i64 %xtraiter19045, 0
  br i1 %lcmp.mod19046.not, label %.lr.ph.i.i890.prol.loopexit, label %.lr.ph.i.i890.prol

.lr.ph.i.i890.prol:                               ; preds = %.lr.ph.i.i890.preheader15851, %.lr.ph.i.i890.prol
  %.012.i.i891.prol = phi i64 [ %i.ahs, %.lr.ph.i.i890.prol ], [ %.012.i.i891.ph, %.lr.ph.i.i890.preheader15851 ] ; 2 uses
  %i.aho = phi ptr [ %i.ahr, %.lr.ph.i.i890.prol ], [ %.ph15852, %.lr.ph.i.i890.preheader15851 ] ; 2 uses
  %prol.iter19047 = phi i64 [ %prol.iter19047.next, %.lr.ph.i.i890.prol ], [ 0, %.lr.ph.i.i890.preheader15851 ]
  %i.ahp = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %.012.i.i891.prol
  %i.ahq = load i32, ptr %i.aho, align 4, !tbaa !132
  store i32 %i.ahq, ptr %i.ahp, align 4, !tbaa !132
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.aho, i64 4 ; 2 uses
  %i.ahs = add nuw i64 %.012.i.i891.prol, 1       ; 2 uses
  %prol.iter19047.next = add i64 %prol.iter19047, 1 ; 2 uses
  %prol.iter19047.cmp.not = icmp eq i64 %prol.iter19047.next, %xtraiter19045
  br i1 %prol.iter19047.cmp.not, label %.lr.ph.i.i890.prol.loopexit, label %.lr.ph.i.i890.prol, !llvm.loop !1120

.lr.ph.i.i890.prol.loopexit:                      ; preds = %.lr.ph.i.i890.prol, %.lr.ph.i.i890.preheader15851
  %.012.i.i891.unr = phi i64 [ %.012.i.i891.ph, %.lr.ph.i.i890.preheader15851 ], [ %i.ahs, %.lr.ph.i.i890.prol ]
  %.unr19048 = phi ptr [ %.ph15852, %.lr.ph.i.i890.preheader15851 ], [ %i.ahr, %.lr.ph.i.i890.prol ]
  %i.aht = sub nsw i64 %.0605515, %.sink1.i.i874
  %i.ahu = add i64 %i.aht, %.012.i.i891.ph
  %i.ahv = icmp ugt i64 %i.ahu, -4
  br i1 %i.ahv, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i893, label %.lr.ph.i.i890

.lr.ph.i.i890:                                    ; preds = %.lr.ph.i.i890.prol.loopexit, %.lr.ph.i.i890
  %.012.i.i891 = phi i64 [ %i.aim, %.lr.ph.i.i890 ], [ %.012.i.i891.unr, %.lr.ph.i.i890.prol.loopexit ] ; 5 uses
  %i.ahw = phi ptr [ %i.ail, %.lr.ph.i.i890 ], [ %.unr19048, %.lr.ph.i.i890.prol.loopexit ] ; 5 uses
  %i.ahx = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %.012.i.i891
  %i.ahy = load i32, ptr %i.ahw, align 4, !tbaa !132
  store i32 %i.ahy, ptr %i.ahx, align 4, !tbaa !132
  %i.ahz = getelementptr inbounds nuw i8, ptr %i.ahw, i64 4
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %.012.i.i891
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 4
  %i.aic = load i32, ptr %i.ahz, align 4, !tbaa !132
  store i32 %i.aic, ptr %i.aib, align 4, !tbaa !132
  %i.aid = getelementptr inbounds nuw i8, ptr %i.ahw, i64 8
  %i.aie = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %.012.i.i891
  %i.aif = getelementptr inbounds nuw i8, ptr %i.aie, i64 8
  %i.aig = load i32, ptr %i.aid, align 4, !tbaa !132
  store i32 %i.aig, ptr %i.aif, align 4, !tbaa !132
  %i.aih = getelementptr inbounds nuw i8, ptr %i.ahw, i64 12
  %i.aii = getelementptr inbounds nuw [4 x i8], ptr %i.ahc, i64 %.012.i.i891
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 12
  %i.aik = load i32, ptr %i.aih, align 4, !tbaa !132
  store i32 %i.aik, ptr %i.aij, align 4, !tbaa !132
  %i.ail = getelementptr inbounds nuw i8, ptr %i.ahw, i64 16
  %i.aim = add nuw i64 %.012.i.i891, 4            ; 2 uses
  %exitcond.not.i.i892.3 = icmp eq i64 %i.aim, %i.ahd
  br i1 %exitcond.not.i.i892.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i893, label %.lr.ph.i.i890, !llvm.loop !1121

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i893: ; preds = %.lr.ph.i.i890.prol.loopexit, %.lr.ph.i.i890, %middle.block15673, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i888
  br i1 %i.afg, label %bb.gj, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i894

bb.gj:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i893
  %i.ain = shl i64 %i.afl, 2
  call void @_ZdlPvm(ptr noundef %i.afh, i64 noundef %i.ain) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i894

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i894: ; preds = %bb.gj, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i893
  store ptr %i.aft, ptr %i.ar, align 8, !tbaa !46
  store i64 %.sroa.speculated.i.i882, ptr %i.aq, align 8, !tbaa !46
  %i.aio = shl i64 %i.afn, 1
  %i.aip = or disjoint i64 %i.aio, 1
  br label %bb.gp

bb.gk:                                            ; preds = %bb.gg
  %.sroa.speculated.i875 = call i64 @llvm.umax.i64(i64 %i.afm, i64 %.sink1.i.i874) ; 7 uses
  %i.aiq = getelementptr [4 x i8], ptr %i.afi, i64 %.sroa.speculated.i875 ; 8 uses
  %i.air = sub i64 %i.afn, %.sroa.speculated.i875 ; 9 uses
  %i.ais = sub nsw i64 %.sroa.speculated.i875, %i.afm ; 4 uses
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %i.air ; 6 uses
  %i.aiu = sub i64 3, %i.air                      ; 4 uses
  %.not.i.i55.i = icmp eq i64 %.0605515, %.sink1.i.i874 ; 2 uses
  br i1 %.not.i.i55.i, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i58.preheader.i

.lr.ph.i.i58.preheader.i:                         ; preds = %bb.gk
  %i.aiv = getelementptr i8, ptr %i.aiq, i64 -12  ; 2 uses
  %i.aiw = add nuw i64 %.sink1.i.i874, 2
  %i.aix = sub i64 %i.aiw, %.sroa.speculated.i875
  %xtraiter19029 = and i64 %i.air, 3              ; 3 uses
  %i.aiy = icmp ult i64 %i.aix, 3
  br i1 %i.aiy, label %.lr.ph.i.i58.i.epil.preheader, label %.lr.ph.i.i58.preheader.i.new

.lr.ph.i.i58.preheader.i.new:                     ; preds = %.lr.ph.i.i58.preheader.i
  %unroll_iter19035 = and i64 %i.air, -4
  br label %.lr.ph.i.i58.i

.lr.ph.i.i58.i:                                   ; preds = %.lr.ph.i.i58.i, %.lr.ph.i.i58.preheader.i.new
  %.012.i.i59.i = phi i64 [ 0, %.lr.ph.i.i58.preheader.i.new ], [ %i.ajp, %.lr.ph.i.i58.i ] ; 5 uses
  %i.aiz = phi ptr [ %i.aiv, %.lr.ph.i.i58.preheader.i.new ], [ %i.ajo, %.lr.ph.i.i58.i ] ; 5 uses
  %niter19036 = phi i64 [ 0, %.lr.ph.i.i58.preheader.i.new ], [ %niter19036.next.3, %.lr.ph.i.i58.i ]
  %i.aja = getelementptr inbounds nuw [4 x i8], ptr %i.aiq, i64 %.012.i.i59.i
  %i.ajb = load i32, ptr %i.aiz, align 4, !tbaa !132
  store i32 %i.ajb, ptr %i.aja, align 4, !tbaa !132
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.aiz, i64 4
  %i.ajd = getelementptr inbounds nuw [4 x i8], ptr %i.aiq, i64 %.012.i.i59.i
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 4
  %i.ajf = load i32, ptr %i.ajc, align 4, !tbaa !132
  store i32 %i.ajf, ptr %i.aje, align 4, !tbaa !132
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aiz, i64 8
  %i.ajh = getelementptr inbounds nuw [4 x i8], ptr %i.aiq, i64 %.012.i.i59.i
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ajh, i64 8
  %i.ajj = load i32, ptr %i.ajg, align 4, !tbaa !132
  store i32 %i.ajj, ptr %i.aji, align 4, !tbaa !132
  %i.ajk = getelementptr inbounds nuw i8, ptr %i.aiz, i64 12
  %i.ajl = getelementptr inbounds nuw [4 x i8], ptr %i.aiq, i64 %.012.i.i59.i
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajl, i64 12
  %i.ajn = load i32, ptr %i.ajk, align 4, !tbaa !132
  store i32 %i.ajn, ptr %i.ajm, align 4, !tbaa !132
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.aiz, i64 16 ; 2 uses
  %i.ajp = add nuw i64 %.012.i.i59.i, 4           ; 2 uses
  %niter19036.next.3 = add i64 %niter19036, 4     ; 2 uses
  %niter19036.ncmp.3 = icmp eq i64 %niter19036.next.3, %unroll_iter19035
  br i1 %niter19036.ncmp.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, label %.lr.ph.i.i58.i, !llvm.loop !1049

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i58.i
  %lcmp.mod19033.not = icmp eq i64 %xtraiter19029, 0
  br i1 %lcmp.mod19033.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i58.i.epil.preheader

.lr.ph.i.i58.i.epil.preheader:                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, %.lr.ph.i.i58.preheader.i
  %.012.i.i59.i.epil.init = phi i64 [ 0, %.lr.ph.i.i58.preheader.i ], [ %i.ajp, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa ]
  %.epil.init19032 = phi ptr [ %i.aiv, %.lr.ph.i.i58.preheader.i ], [ %i.ajo, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa ]
  %lcmp.mod19034 = icmp ne i64 %xtraiter19029, 0
  call void @llvm.assume(i1 %lcmp.mod19034)
  br label %.lr.ph.i.i58.i.epil

.lr.ph.i.i58.i.epil:                              ; preds = %.lr.ph.i.i58.i.epil, %.lr.ph.i.i58.i.epil.preheader
  %.012.i.i59.i.epil = phi i64 [ %i.aju, %.lr.ph.i.i58.i.epil ], [ %.012.i.i59.i.epil.init, %.lr.ph.i.i58.i.epil.preheader ] ; 2 uses
  %i.ajq = phi ptr [ %i.ajt, %.lr.ph.i.i58.i.epil ], [ %.epil.init19032, %.lr.ph.i.i58.i.epil.preheader ] ; 2 uses
  %epil.iter19030 = phi i64 [ %epil.iter19030.next, %.lr.ph.i.i58.i.epil ], [ 0, %.lr.ph.i.i58.i.epil.preheader ]
  %i.ajr = getelementptr inbounds nuw [4 x i8], ptr %i.aiq, i64 %.012.i.i59.i.epil
  %i.ajs = load i32, ptr %i.ajq, align 4, !tbaa !132
  store i32 %i.ajs, ptr %i.ajr, align 4, !tbaa !132
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajq, i64 4
  %i.aju = add nuw i64 %.012.i.i59.i.epil, 1
  %epil.iter19030.next = add i64 %epil.iter19030, 1 ; 2 uses
  %epil.iter19030.cmp.not = icmp eq i64 %epil.iter19030.next, %xtraiter19029
  br i1 %epil.iter19030.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i58.i.epil, !llvm.loop !1122

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, %.lr.ph.i.i58.i.epil, %bb.gk
  %i.ajv = icmp sgt i64 %i.ais, 1
  br i1 %i.ajv, label %bb.gl, label %bb.gm, !prof !166

bb.gl:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i
  %.idx1258 = shl nuw nsw i64 %i.ais, 2
  %i.ajw = sub nsw i64 0, %i.ais
  %i.ajx = getelementptr inbounds [4 x i8], ptr %i.aiq, i64 %i.ajw
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ajx, ptr align 4 %i.afk, i64 %.idx1258, i1 false)
  br label %bb.go

bb.gm:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i
  %i.ajy = icmp eq i64 %i.ais, 1
  br i1 %i.ajy, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.ajz = getelementptr inbounds i8, ptr %i.aiq, i64 -4
  %i.aka = load i32, ptr %i.afk, align 4, !tbaa !132
  store i32 %i.aka, ptr %i.ajz, align 4, !tbaa !132
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %bb.gm, %bb.gl
  br i1 %.not.i.i55.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i66.i.preheader

.lr.ph.i66.i.preheader:                           ; preds = %bb.go
  %min.iters.check15713 = icmp ult i64 %i.air, 8
  br i1 %min.iters.check15713, label %.lr.ph.i66.i.preheader15857, label %vector.memcheck15710

vector.memcheck15710:                             ; preds = %.lr.ph.i66.i.preheader
  %i.akb = add i64 %66, %i.afj
  %i.akc = sub i64 %i.afb, %i.akb
  %diff.check15711 = icmp ugt i64 %i.akc, -32
  br i1 %diff.check15711, label %.lr.ph.i66.i.preheader15857, label %vector.ph15714

vector.ph15714:                                   ; preds = %vector.memcheck15710
  %n.vec15715 = and i64 %i.air, -8                ; 4 uses
  %i.akd = shl i64 %n.vec15715, 2
  %i.ake = getelementptr i8, ptr %i.afa, i64 %i.akd ; 2 uses
  br label %vector.body15716

vector.body15716:                                 ; preds = %vector.body15716, %vector.ph15714
  %index15717 = phi i64 [ 0, %vector.ph15714 ], [ %index.next15721, %vector.body15716 ] ; 3 uses
  %i.akf = shl i64 %index15717, 2
  %next.gep15718 = getelementptr i8, ptr %i.afa, i64 %i.akf ; 2 uses
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %index15717 ; 2 uses
  %i.akh = getelementptr i8, ptr %next.gep15718, i64 16
  %wide.load15719 = load <4 x i32>, ptr %next.gep15718, align 4, !tbaa !132
  %wide.load15720 = load <4 x i32>, ptr %i.akh, align 4, !tbaa !132
  %i.aki = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  store <4 x i32> %wide.load15719, ptr %i.akg, align 4, !tbaa !132
  store <4 x i32> %wide.load15720, ptr %i.aki, align 4, !tbaa !132
  %index.next15721 = add nuw i64 %index15717, 8   ; 2 uses
  %i.akj = icmp eq i64 %index.next15721, %n.vec15715
  br i1 %i.akj, label %middle.block15722, label %vector.body15716, !llvm.loop !1123

middle.block15722:                                ; preds = %vector.body15716
  %cmp.n15723 = icmp eq i64 %i.air, %n.vec15715
  br i1 %cmp.n15723, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i66.i.preheader15857

.lr.ph.i66.i.preheader15857:                      ; preds = %vector.memcheck15710, %.lr.ph.i66.i.preheader, %middle.block15722
  %.05.i.i876.ph = phi i64 [ 0, %vector.memcheck15710 ], [ 0, %.lr.ph.i66.i.preheader ], [ %n.vec15715, %middle.block15722 ]
  %.ph15858 = phi ptr [ %i.afa, %vector.memcheck15710 ], [ %i.afa, %.lr.ph.i66.i.preheader ], [ %i.ake, %middle.block15722 ]
  br label %.lr.ph.i66.i

.lr.ph.i66.i:                                     ; preds = %.lr.ph.i66.i.preheader15857, %.lr.ph.i66.i
  %.05.i.i876 = phi i64 [ %i.ako, %.lr.ph.i66.i ], [ %.05.i.i876.ph, %.lr.ph.i66.i.preheader15857 ] ; 2 uses
  %i.akk = phi ptr [ %i.akn, %.lr.ph.i66.i ], [ %.ph15858, %.lr.ph.i66.i.preheader15857 ] ; 2 uses
  %i.akl = getelementptr inbounds nuw [4 x i8], ptr %i.afk, i64 %.05.i.i876
  %i.akm = load i32, ptr %i.akk, align 4, !tbaa !132
  store i32 %i.akm, ptr %i.akl, align 4, !tbaa !132
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akk, i64 4 ; 2 uses
  %i.ako = add nuw i64 %.05.i.i876, 1             ; 2 uses
  %exitcond.not.i67.i877 = icmp eq i64 %i.ako, %i.air
  br i1 %exitcond.not.i67.i877, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i66.i, !llvm.loop !1124

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i: ; preds = %.lr.ph.i66.i, %middle.block15722, %bb.go
  %.sroa.0117.0.i = phi ptr [ %i.afa, %bb.go ], [ %i.ake, %middle.block15722 ], [ %i.akn, %.lr.ph.i66.i ] ; 5 uses
  %.sroa.0117.0.i15694 = ptrtoaddr ptr %.sroa.0117.0.i to i64
  %.not.i69.i = icmp eq i64 %i.air, 3
  br i1 %.not.i69.i, label %.loopexit.i879, label %.lr.ph.i72.i.preheader

.lr.ph.i72.i.preheader:                           ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i
  %min.iters.check15697 = icmp ult i64 %i.aiu, 12
  br i1 %min.iters.check15697, label %.lr.ph.i72.i.preheader15855, label %vector.memcheck15693

vector.memcheck15693:                             ; preds = %.lr.ph.i72.i.preheader
  %i.akp = add i64 %i.dj, %i.afj
  %i.akq = shl i64 %.sink1.i.i874, 2
  %i.akr = add i64 %i.akp, %i.akq
  %i.aks = shl i64 %.sroa.speculated.i875, 2
  %i.akt = add i64 %i.aks, %.sroa.0117.0.i15694
  %i.aku = sub i64 %i.akt, %i.akr
  %diff.check15695 = icmp ugt i64 %i.aku, -32
  br i1 %diff.check15695, label %.lr.ph.i72.i.preheader15855, label %vector.ph15698

vector.ph15698:                                   ; preds = %vector.memcheck15693
  %n.vec15699 = and i64 %i.aiu, -8                ; 4 uses
  %i.akv = shl i64 %n.vec15699, 2
  %i.akw = getelementptr i8, ptr %.sroa.0117.0.i, i64 %i.akv
  br label %vector.body15700

vector.body15700:                                 ; preds = %vector.body15700, %vector.ph15698
  %index15701 = phi i64 [ 0, %vector.ph15698 ], [ %index.next15705, %vector.body15700 ] ; 3 uses
  %i.akx = shl i64 %index15701, 2
  %next.gep15702 = getelementptr i8, ptr %.sroa.0117.0.i, i64 %i.akx ; 2 uses
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %index15701 ; 2 uses
  %i.akz = getelementptr i8, ptr %next.gep15702, i64 16
  %wide.load15703 = load <4 x i32>, ptr %next.gep15702, align 4, !tbaa !132
  %wide.load15704 = load <4 x i32>, ptr %i.akz, align 4, !tbaa !132
  %i.ala = getelementptr inbounds nuw i8, ptr %i.aky, i64 16
  store <4 x i32> %wide.load15703, ptr %i.aky, align 4, !tbaa !132
  store <4 x i32> %wide.load15704, ptr %i.ala, align 4, !tbaa !132
  %index.next15705 = add nuw i64 %index15701, 8   ; 2 uses
  %i.alb = icmp eq i64 %index.next15705, %n.vec15699
  br i1 %i.alb, label %middle.block15706, label %vector.body15700, !llvm.loop !1125

middle.block15706:                                ; preds = %vector.body15700
  %cmp.n15707 = icmp eq i64 %i.aiu, %n.vec15699
  br i1 %cmp.n15707, label %.loopexit.i879, label %.lr.ph.i72.i.preheader15855

.lr.ph.i72.i.preheader15855:                      ; preds = %vector.memcheck15693, %.lr.ph.i72.i.preheader, %middle.block15706
  %.06.i.i878.ph = phi i64 [ 0, %vector.memcheck15693 ], [ 0, %.lr.ph.i72.i.preheader ], [ %n.vec15699, %middle.block15706 ] ; 3 uses
  %.ph15856 = phi ptr [ %.sroa.0117.0.i, %vector.memcheck15693 ], [ %.sroa.0117.0.i, %.lr.ph.i72.i.preheader ], [ %i.akw, %middle.block15706 ] ; 2 uses
  %i.alc = sub nsw i64 %.sroa.speculated.i875, %.sink1.i.i874
  %xtraiter19037 = and i64 %i.alc, 3              ; 2 uses
  %lcmp.mod19038.not = icmp eq i64 %xtraiter19037, 0
  br i1 %lcmp.mod19038.not, label %.lr.ph.i72.i.prol.loopexit, label %.lr.ph.i72.i.prol

.lr.ph.i72.i.prol:                                ; preds = %.lr.ph.i72.i.preheader15855, %.lr.ph.i72.i.prol
  %.06.i.i878.prol = phi i64 [ %i.alh, %.lr.ph.i72.i.prol ], [ %.06.i.i878.ph, %.lr.ph.i72.i.preheader15855 ] ; 2 uses
  %i.ald = phi ptr [ %i.alg, %.lr.ph.i72.i.prol ], [ %.ph15856, %.lr.ph.i72.i.preheader15855 ] ; 2 uses
  %prol.iter19039 = phi i64 [ %prol.iter19039.next, %.lr.ph.i72.i.prol ], [ 0, %.lr.ph.i72.i.preheader15855 ]
  %i.ale = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.06.i.i878.prol
  %i.alf = load i32, ptr %i.ald, align 4, !tbaa !132
  store i32 %i.alf, ptr %i.ale, align 4, !tbaa !132
  %i.alg = getelementptr inbounds nuw i8, ptr %i.ald, i64 4 ; 2 uses
  %i.alh = add nuw i64 %.06.i.i878.prol, 1        ; 2 uses
  %prol.iter19039.next = add i64 %prol.iter19039, 1 ; 2 uses
  %prol.iter19039.cmp.not = icmp eq i64 %prol.iter19039.next, %xtraiter19037
  br i1 %prol.iter19039.cmp.not, label %.lr.ph.i72.i.prol.loopexit, label %.lr.ph.i72.i.prol, !llvm.loop !1126

.lr.ph.i72.i.prol.loopexit:                       ; preds = %.lr.ph.i72.i.prol, %.lr.ph.i72.i.preheader15855
  %.06.i.i878.unr = phi i64 [ %.06.i.i878.ph, %.lr.ph.i72.i.preheader15855 ], [ %i.alh, %.lr.ph.i72.i.prol ]
  %.unr19040 = phi ptr [ %.ph15856, %.lr.ph.i72.i.preheader15855 ], [ %i.alg, %.lr.ph.i72.i.prol ]
  %i.ali = sub i64 %.06.i.i878.ph, %.sroa.speculated.i875
  %i.alj = add i64 %i.ali, %.sink1.i.i874
  %i.alk = icmp ugt i64 %i.alj, -4
  br i1 %i.alk, label %.loopexit.i879, label %.lr.ph.i72.i

.lr.ph.i72.i:                                     ; preds = %.lr.ph.i72.i.prol.loopexit, %.lr.ph.i72.i
  %.06.i.i878 = phi i64 [ %i.amb, %.lr.ph.i72.i ], [ %.06.i.i878.unr, %.lr.ph.i72.i.prol.loopexit ] ; 5 uses
  %i.all = phi ptr [ %i.ama, %.lr.ph.i72.i ], [ %.unr19040, %.lr.ph.i72.i.prol.loopexit ] ; 5 uses
  %i.alm = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.06.i.i878
  %i.aln = load i32, ptr %i.all, align 4, !tbaa !132
  store i32 %i.aln, ptr %i.alm, align 4, !tbaa !132
  %i.alo = getelementptr inbounds nuw i8, ptr %i.all, i64 4
  %i.alp = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.06.i.i878
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 4
  %i.alr = load i32, ptr %i.alo, align 4, !tbaa !132
  store i32 %i.alr, ptr %i.alq, align 4, !tbaa !132
  %i.als = getelementptr inbounds nuw i8, ptr %i.all, i64 8
  %i.alt = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.06.i.i878
  %i.alu = getelementptr inbounds nuw i8, ptr %i.alt, i64 8
  %i.alv = load i32, ptr %i.als, align 4, !tbaa !132
  store i32 %i.alv, ptr %i.alu, align 4, !tbaa !132
  %i.alw = getelementptr inbounds nuw i8, ptr %i.all, i64 12
  %i.alx = getelementptr inbounds nuw [4 x i8], ptr %i.ait, i64 %.06.i.i878
  %i.aly = getelementptr inbounds nuw i8, ptr %i.alx, i64 12
  %i.alz = load i32, ptr %i.alw, align 4, !tbaa !132
  store i32 %i.alz, ptr %i.aly, align 4, !tbaa !132
  %i.ama = getelementptr inbounds nuw i8, ptr %i.all, i64 16
  %i.amb = add nuw i64 %.06.i.i878, 4             ; 2 uses
  %exitcond.not.i73.i.3 = icmp eq i64 %i.amb, %i.aiu
  br i1 %exitcond.not.i73.i.3, label %.loopexit.i879, label %.lr.ph.i72.i, !llvm.loop !1127

.loopexit.i879:                                   ; preds = %.lr.ph.i72.i.prol.loopexit, %.lr.ph.i72.i, %middle.block15706, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_N9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiS3_EEEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSF_9size_typeE.exit.i
  %i.amc = load i64, ptr %30, align 8, !tbaa !45
  %i.amd = add i64 %i.amc, 6
  br label %bb.gp

bb.gp:                                            ; preds = %.loopexit.i879, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i894
  %storemerge.i880 = phi i64 [ %i.amd, %.loopexit.i879 ], [ %i.aip, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i894 ]
  %.0.i881 = phi ptr [ %i.afk, %.loopexit.i879 ], [ %i.afv, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i894 ]
  store i64 %storemerge.i880, ptr %30, align 8, !tbaa !45
  store ptr %.0.i881, ptr %i.n, align 8, !tbaa !282
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #36
  %i.ame = load ptr, ptr %29, align 8, !tbaa !282, !noalias !1128 ; 4 uses
  %i.amf = load ptr, ptr %i.ao, align 8, !tbaa !282, !noalias !1128 ; 2 uses
  %i.amg = ptrtoint ptr %i.amf to i64
  %i.amh = ptrtoint ptr %i.ame to i64
  %i.ami = sub i64 %i.amg, %i.amh                 ; 7 uses
  %i.amj = icmp ugt i64 %i.ami, 9223372036854775804
  br i1 %i.amj, label %.noexc.i.i.i.i405, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i401

.noexc.i.i.i.i405:                                ; preds = %bb.gp
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.280) #38
          to label %.noexc406 unwind label %.loopexit.split-lp1359

.noexc406:                                        ; preds = %.noexc.i.i.i.i405
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i401: ; preds = %bb.gp
  %.not.i.i.i.i.i.i402 = icmp eq ptr %i.amf, %i.ame
  br i1 %.not.i.i.i.i.i.i402, label %.thread.i.i.i.i.i404, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i403

.thread.i.i.i.i.i404:                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i401
  %i.amk = getelementptr inbounds nuw i8, ptr null, i64 %i.ami
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit408

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i403: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i.i401
  %i.aml = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ami) #41
          to label %.noexc407 unwind label %.loopexit1358 ; 6 uses

.noexc407:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i.i403
  %i.amm = getelementptr inbounds nuw i8, ptr %i.aml, i64 %i.ami ; 3 uses
  %i.amn = icmp samesign ugt i64 %i.ami, 4
  br i1 %i.amn, label %bb.gq, label %bb.gr, !prof !1051

bb.gq:                                            ; preds = %.noexc407
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aml, ptr align 4 %i.ame, i64 %i.ami, i1 false), !noalias !1131
  br label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit408

bb.gr:                                            ; preds = %.noexc407
  %i.amo = icmp eq i64 %i.ami, 4
  br i1 %i.amo, label %bb.gs, label %_ZN7testing16ElementsAreArrayISt6vectorIiSaIiEEEEDTcl16ElementsAreArraycldtfp_5beginEcldtfp_3endEEERKT_.exit408

bb.gs:                                            ; preds = %bb.gr
  %i.amp = load i32, ptr %i.ame, align 4, !tbaa !132, !noalias !1131
  store i32 %i.amp, ptr %i.aml, align 4, !tbaa !132, !noalias !1131
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE6InsertINS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEPiPKiT_m:bb.a
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !132
  store i32 %i.fs, ptr %i.fq, align 4, !tbaa !132
  %i.ft = load ptr, ptr %i.fo, align 8, !tbaa !1148 ; 3 uses
  %i.fu = add nuw i64 %.05.i, 4                   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, label %.lr.ph.i66, !llvm.loop !1399

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i66
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i66.epil.preheader

.lr.ph.i66.epil.preheader:                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, %.lr.ph.i66.preheader
  %.05.i.epil.init = phi i64 [ 0, %.lr.ph.i66.preheader ], [ %i.fu, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ]
  %.epil.init = phi ptr [ %2, %.lr.ph.i66.preheader ], [ %i.ft, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ]
  %lcmp.mod167 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod167)
  br label %.lr.ph.i66.epil

.lr.ph.i66.epil:                                  ; preds = %.lr.ph.i66.epil, %.lr.ph.i66.epil.preheader
  %.05.i.epil = phi i64 [ %i.ga, %.lr.ph.i66.epil ], [ %.05.i.epil.init, %.lr.ph.i66.epil.preheader ] ; 2 uses
  %i.fv = phi ptr [ %i.fz, %.lr.ph.i66.epil ], [ %.epil.init, %.lr.ph.i66.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i66.epil ], [ 0, %.lr.ph.i66.epil.preheader ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %.05.i.epil
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !132
  store i32 %i.fy, ptr %i.fw, align 4, !tbaa !132
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !1148 ; 2 uses
  %i.ga = add nuw i64 %.05.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit, label %.lr.ph.i66.epil, !llvm.loop !1400

_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa, %.lr.ph.i66.epil, %bb.i
  %.sroa.0117.0 = phi ptr [ %2, %bb.i ], [ %i.ft, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit.loopexit.unr-lcssa ], [ %i.fz, %.lr.ph.i66.epil ] ; 2 uses
  %.not.i69 = icmp eq i64 %3, %i.ds
  br i1 %.not.i69, label %.loopexit, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit
  %xtraiter168 = and i64 %i.dw, 3                 ; 3 uses
  %i.gb = sub i64 %.sink1.i, %.sroa.speculated
  %i.gc = icmp ugt i64 %i.gb, -4
  br i1 %i.gc, label %.lr.ph.i72.epil.preheader, label %.lr.ph.i72.preheader.new

.lr.ph.i72.preheader.new:                         ; preds = %.lr.ph.i72.preheader
  %unroll_iter174 = and i64 %i.dw, -4
  br label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.lr.ph.i72, %.lr.ph.i72.preheader.new
  %.06.i = phi i64 [ 0, %.lr.ph.i72.preheader.new ], [ %i.gx, %.lr.ph.i72 ] ; 5 uses
  %i.gd = phi ptr [ %.sroa.0117.0, %.lr.ph.i72.preheader.new ], [ %i.gw, %.lr.ph.i72 ] ; 2 uses
  %niter175 = phi i64 [ 0, %.lr.ph.i72.preheader.new ], [ %niter175.next.3, %.lr.ph.i72 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.06.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !132
  store i32 %i.gg, ptr %i.ge, align 4, !tbaa !132
  %i.gh = load ptr, ptr %i.gd, align 8, !tbaa !1148 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.06.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !132
  store i32 %i.gl, ptr %i.gj, align 4, !tbaa !132
  %i.gm = load ptr, ptr %i.gh, align 8, !tbaa !1148 ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.06.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !132
  store i32 %i.gq, ptr %i.go, align 4, !tbaa !132
  %i.gr = load ptr, ptr %i.gm, align 8, !tbaa !1148 ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.06.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !132
  store i32 %i.gv, ptr %i.gt, align 4, !tbaa !132
  %i.gw = load ptr, ptr %i.gr, align 8, !tbaa !1148 ; 2 uses
  %i.gx = add nuw i64 %.06.i, 4                   ; 2 uses
  %niter175.next.3 = add i64 %niter175, 4         ; 2 uses
  %niter175.ncmp.3 = icmp eq i64 %niter175.next.3, %unroll_iter174
  br i1 %niter175.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i72, !llvm.loop !1389

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i72
  %lcmp.mod172.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod172.not, label %.loopexit, label %.lr.ph.i72.epil.preheader

.lr.ph.i72.epil.preheader:                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i72.preheader
  %.06.i.epil.init = phi i64 [ 0, %.lr.ph.i72.preheader ], [ %i.gx, %.loopexit.loopexit.unr-lcssa ]
  %.epil.init171 = phi ptr [ %.sroa.0117.0, %.lr.ph.i72.preheader ], [ %i.gw, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod173 = icmp ne i64 %xtraiter168, 0
  tail call void @llvm.assume(i1 %lcmp.mod173)
  br label %.lr.ph.i72.epil

.lr.ph.i72.epil:                                  ; preds = %.lr.ph.i72.epil, %.lr.ph.i72.epil.preheader
  %.06.i.epil = phi i64 [ %i.hd, %.lr.ph.i72.epil ], [ %.06.i.epil.init, %.lr.ph.i72.epil.preheader ] ; 2 uses
  %i.gy = phi ptr [ %i.hc, %.lr.ph.i72.epil ], [ %.epil.init171, %.lr.ph.i72.epil.preheader ] ; 2 uses
  %epil.iter169 = phi i64 [ %epil.iter169.next, %.lr.ph.i72.epil ], [ 0, %.lr.ph.i72.epil.preheader ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %.06.i.epil
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !132
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !132
  %i.hc = load ptr, ptr %i.gy, align 8, !tbaa !1148
  %i.hd = add nuw i64 %.06.i.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %.loopexit, label %.lr.ph.i72.epil, !llvm.loop !1401

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i72.epil, %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St24_Fwd_list_const_iteratorIiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSA_9size_typeE.exit
  %i.he = shl i64 %3, 1
  %i.hf = load i64, ptr %0, align 8, !tbaa !45
  %i.hg = add i64 %i.hf, %i.he
  br label %bb.j

bb.j:                                             ; preds = %.loopexit, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit
  %storemerge = phi i64 [ %i.hg, %.loopexit ], [ %i.dq, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit ]
  %.0 = phi ptr [ %i.dt, %.loopexit ], [ %i.t, %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit ]
  store i64 %storemerge, ptr %0, align 8, !tbaa !45
  ret ptr %.0
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE7_M_syncEPcmm(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122IntPairVec_Insert_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_122IntPairVec_Insert_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_122IntPairVec_Insert_TestE, i64 16), ptr %i.a, align 8, !tbaa !16
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #39
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_122IntPairVec_Insert_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_122IntPairVec_Insert_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.absl::lts_20260526::InlinedVector.404", align 8 ; 15 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %5 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.414", align 8 ; 11 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 1, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.0440 = phi i64 [ 0, %bb.a ], [ %i.l, %bb.c ]  ; 3 uses
  %.not441 = icmp eq i64 %.0440, 0
  br label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit
  %i.l = add nuw nsw i64 %.0440, 1                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond618.not = icmp eq i64 %i.l, 20
  br i1 %exitcond618.not, label %bb.b, label %.preheader, !llvm.loop !1402

.lr.ph.i.i:                                       ; preds = %.preheader, %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit
  %.023437 = phi i64 [ 0, %.preheader ], [ %i.tw, %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit ] ; 13 uses
  %11 = shl nuw nsw i64 %.023437, 3
  %12 = shl i64 %.023437, 3
  %13 = shl nuw nsw i64 %.023437, 3
  %i.m = shl nuw nsw i64 %.023437, 3
  %i.n = add nuw i64 %.023437, 2305843009213693951
  %i.o = and i64 %i.n, 2305843009213693951        ; 2 uses
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %i.q = shl i64 %.023437, 3
  %i.r = shl i64 %.023437, 3
  %i.s = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41 ; 14 uses
  store ptr null, ptr %i.s, align 8, !tbaa !1148
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 9999, ptr %i.t, align 8, !tbaa !132
  %i.u = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc.i.1 unwind label %.lr.ph.i.i.i.preheader ; 4 uses

.noexc.i.1:                                       ; preds = %.lr.ph.i.i
  store ptr null, ptr %i.u, align 8, !tbaa !1148
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 8888, ptr %i.v, align 8, !tbaa !132
  store ptr %i.u, ptr %i.s, align 8, !tbaa !1148
  %i.w = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #41
          to label %.noexc.i.2 unwind label %.lr.ph.i.i.i.preheader ; 3 uses

.noexc.i.2:                                       ; preds = %.noexc.i.1
  store ptr null, ptr %i.w, align 8, !tbaa !1148
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 7777, ptr %i.x, align 8, !tbaa !132
  store ptr %i.w, ptr %i.u, align 8, !tbaa !1148
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  store i64 0, ptr %3, align 8, !tbaa !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  store i64 0, ptr %i.a, align 8, !tbaa !45
  br i1 %.not441, label %._crit_edge, label %.lr.ph

.lr.ph.i.i.i.preheader:                           ; preds = %.noexc.i.1, %.lr.ph.i.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.s, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.y = load ptr, ptr %.013.i.i.i, align 8, !tbaa !1148 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.013.i.i.i, i64 noundef 16) #39
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt14_Fwd_list_baseIiSaIiEED2Ev.exit101, label %.lr.ph.i.i.i, !llvm.loop !1151

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit, %.noexc.i.2
  %.sroa.0155.0.lcssa = phi ptr [ null, %.noexc.i.2 ], [ %.sroa.0155.3, %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit ] ; 21 uses
  %.sroa.18.0.lcssa = phi ptr [ null, %.noexc.i.2 ], [ %.sroa.18.1, %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit ] ; 19 uses
  %.sroa.38.0.lcssa = phi ptr [ null, %.noexc.i.2 ], [ %.sroa.38.3, %_ZN4absl12lts_2026052613InlinedVectorISt4pairIiiELm8ESaIS3_EE12emplace_backIJRmS7_EEERS3_DpOT_.exit ] ; 13 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.idx = shl nuw nsw i64 %.023437, 3             ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0155.0.lcssa, i64 %.idx ; 23 uses
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = ptrtoint ptr %.sroa.0155.0.lcssa to i64 ; 9 uses
  %i.ac = icmp eq ptr %i.z, %.sroa.18.0.lcssa
  br i1 %i.ac, label %.lr.ph.i, label %.lr.ph.i119

.lr.ph.i:                                         ; preds = %._crit_edge, %.noexc104
  %.sroa.0155.4 = phi ptr [ %.sroa.0155.8, %.noexc104 ], [ %.sroa.0155.0.lcssa, %._crit_edge ] ; 10 uses
  %.sroa.18.2 = phi ptr [ %.sroa.18.5, %.noexc104 ], [ %.sroa.18.0.lcssa, %._crit_edge ] ; 8 uses
  %.sroa.38.4 = phi ptr [ %.sroa.38.8, %.noexc104 ], [ %.sroa.38.0.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.7.035.i = phi ptr [ %i.bl, %.noexc104 ], [ %i.s, %._crit_edge ] ; 2 uses
  %.sroa.024.034.i = phi ptr [ %i.bk, %.noexc104 ], [ %i.s, %._crit_edge ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.024.034.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.7.035.i, i64 8
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !132 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !132 ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.18.2 to i64         ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.0155.4 to i64       ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %.not.i136 = icmp eq ptr %.sroa.18.2, %.sroa.38.4
  br i1 %.not.i136, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %.sroa.6203.0.insert.ext = zext i32 %i.ag to i64
  %.sroa.6203.0.insert.shift = shl nuw i64 %.sroa.6203.0.insert.ext, 32
  %.sroa.0197.0.insert.ext = zext i32 %i.af to i64
  %.sroa.0197.0.insert.insert = or disjoint i64 %.sroa.6203.0.insert.shift, %.sroa.0197.0.insert.ext
  store i64 %.sroa.0197.0.insert.insert, ptr %.sroa.18.2, align 4
  br label %.noexc104

bb.e:                                             ; preds = %.lr.ph.i
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.f, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i138

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
          to label %.noexc147 unwind label %.loopexit.split-lp

.noexc147:                                        ; preds = %bb.f
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i138: ; preds = %bb.e
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i.i139 = call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i139, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i.i140 = icmp ne i64 %i.ap, 0
  call void @llvm.assume(i1 %.not.i.i.i140)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #41
          to label %.noexc148 unwind label %.loopexit ; 8 uses

.noexc148:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i138
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj
  %.sroa.6203.0.insert.ext205 = zext i32 %i.ag to i64
  %.sroa.6203.0.insert.shift206 = shl nuw i64 %.sroa.6203.0.insert.ext205, 32
  %.sroa.0197.0.insert.ext200 = zext i32 %i.af to i64
  %.sroa.0197.0.insert.insert202 = or disjoint i64 %.sroa.6203.0.insert.shift206, %.sroa.0197.0.insert.ext200
  store i64 %.sroa.0197.0.insert.insert202, ptr %i.as, align 4
  %.not10.i.i.i.i.i141 = icmp eq ptr %.sroa.0155.4, %.sroa.18.2
  br i1 %.not10.i.i.i.i.i141, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i142.preheader

.lr.ph.i.i.i.i.i142.preheader:                    ; preds = %.noexc148
  %i.at = ptrtoaddr ptr %i.ar to i64
  %i.au = add i64 %i.ah, -8
  %i.av = sub i64 %i.au, %i.ai                    ; 2 uses
  %i.aw = lshr i64 %i.av, 3
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.av, 24
  %i.ay = sub i64 %i.ai, %i.at
  %diff.check = icmp ugt i64 %i.ay, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i142.preheader1240, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i142.preheader
  %n.vec = and i64 %i.ax, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3                       ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ar, i64 %i.az  ; 2 uses
  %i.bb = getelementptr i8, ptr %.sroa.0155.4, i64 %i.az
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bc ; 2 uses
  %next.gep1039 = getelementptr i8, ptr %.sroa.0155.4, i64 %i.bc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.bd = getelementptr i8, ptr %next.gep1039, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1039, align 4, !alias.scope !1408, !noalias !1405
  %wide.load1040 = load <2 x i64>, ptr %i.bd, align 4, !alias.scope !1408, !noalias !1405
  %i.be = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4, !alias.scope !1405, !noalias !1408
  store <2 x i64> %wide.load1040, ptr %i.be, align 4, !alias.scope !1405, !noalias !1408
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1410

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i142.preheader1240

.lr.ph.i.i.i.i.i142.preheader1240:                ; preds = %.lr.ph.i.i.i.i.i142.preheader, %middle.block
  %.012.i.i.i.i.i143.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i142.preheader ], [ %i.ba, %middle.block ]
  %.0911.i.i.i.i.i144.ph = phi ptr [ %.sroa.0155.4, %.lr.ph.i.i.i.i.i142.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i142

.lr.ph.i.i.i.i.i142:                              ; preds = %.lr.ph.i.i.i.i.i142.preheader1240, %.lr.ph.i.i.i.i.i142
  %.012.i.i.i.i.i143 = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i142 ], [ %.012.i.i.i.i.i143.ph, %.lr.ph.i.i.i.i.i142.preheader1240 ] ; 2 uses
  %.0911.i.i.i.i.i144 = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i142 ], [ %.0911.i.i.i.i.i144.ph, %.lr.ph.i.i.i.i.i142.preheader1240 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1405)
  call void @llvm.experimental.noalias.scope.decl(metadata !1408)
  %i.bg = load i64, ptr %.0911.i.i.i.i.i144, align 4, !alias.scope !1408, !noalias !1405
  store i64 %i.bg, ptr %.012.i.i.i.i.i143, align 4, !alias.scope !1405, !noalias !1408
  %i.bh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i144, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i143, i64 8 ; 2 uses
  %.not.i.i.i.i.i145 = icmp eq ptr %i.bh, %.sroa.18.2
  br i1 %.not.i.i.i.i.i145, label %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i142, !llvm.loop !1411

_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i142, %middle.block, %.noexc148
  %.0.lcssa.i.i.i.i.i146 = phi ptr [ %i.ar, %.noexc148 ], [ %i.ba, %middle.block ], [ %i.bi, %.lr.ph.i.i.i.i.i142 ]
  %.not.i23.i.i = icmp eq ptr %.sroa.0155.4, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0155.4, i64 noundef %i.aj) #39
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt4pairIiiESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  br label %.noexc104

.noexc104:                                        ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.d
  %.sroa.0155.8 = phi ptr [ %i.ar, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0155.4, %bb.d ] ; 2 uses
  %.0.lcssa.i.i.i.i.i146.pn = phi ptr [ %.0.lcssa.i.i.i.i.i146, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.18.2, %bb.d ]
  %.sroa.38.8 = phi ptr [ %i.bj, %_ZNSt6vectorISt4pairIiiESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.38.4, %bb.d ] ; 2 uses
  %.sroa.18.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i146.pn, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %.sroa.024.034.i, align 8, !tbaa !1148 ; 2 uses
  %i.bl = load ptr, ptr %.sroa.7.035.i, align 8, !tbaa !1148 ; 2 uses
  %i.bm = icmp ne ptr %i.bk, null
  %i.bn = icmp ne ptr %i.bl, null
  %.not3.i.i103 = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %.not3.i.i103, label %.lr.ph.i, label %.lr.ph.i.i54.preheader, !llvm.loop !1412

.lr.ph.i119:                                      ; preds = %._crit_edge, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i
  %.sroa.17.0 = phi ptr [ %.sroa.17.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 2 uses
  %.sroa.0188.0 = phi ptr [ %.sroa.0188.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 10 uses
  %i.bo = phi ptr [ %i.db, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 5 uses
  %i.bp = phi ptr [ %.sroa.11.1, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ null, %._crit_edge ] ; 4 uses
  %.sroa.5.018.i = phi ptr [ %i.dd, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ %i.s, %._crit_edge ] ; 2 uses
  %.sroa.09.017.i = phi ptr [ %i.dc, %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i ], [ %i.s, %._crit_edge ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.09.017.i, i64 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.5.018.i, i64 8 ; 2 uses
  %.not.i.i121 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not.i.i121, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i119
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !132
  store i32 %i.bs, ptr %i.bp, align 4, !tbaa !1413
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !132
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !1415
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i

bb.i:                                             ; preds = %.lr.ph.i119
  %i.bv = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.bw = ptrtoint ptr %.sroa.0188.0 to i64       ; 4 uses
  %i.bx = sub i64 %i.bv, %i.bw                    ; 4 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.j, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i123

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
          to label %.noexc4.i unwind label %.loopexit.split-lp.i

.noexc4.i:                                        ; preds = %bb.j
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i123: ; preds = %bb.i
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i124 = call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i124, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i3.i = icmp ne i64 %i.cd, 0
  call void @llvm.assume(i1 %.not.i.i3.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #41
          to label %.noexc5.i unwind label %.loopexit.i ; 8 uses

.noexc5.i:                                        ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i.i123
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bx ; 2 uses
  %i.ch = load i32, ptr %i.bq, align 4, !tbaa !132
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !1413
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.cj = load i32, ptr %i.br, align 4, !tbaa !132
  store i32 %i.cj, ptr %i.ci, align 4, !tbaa !1415
end_hunk_5
begin_hunk_6_@_ZN12_GLOBAL__N_122IntPairVec_Insert_Test8TestBodyEv:bb.a
.loopexit.split-lp.i:                             ; preds = %bb.j
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i

_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i:  ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.0.i125 = extractvalue { ptr, i32 } %lpad.phi.i, 0
  %i.dg = call ptr @__cxa_begin_catch(ptr %.0.i125) #36 ; 0 uses
  invoke void @__cxa_rethrow() #38
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke void @__cxa_end_catch()
          to label %.body134 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #35
  unreachable

bb.n:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE5clearEv.exit.i
  unreachable

.body134:                                         ; preds = %bb.l
  %.not.i.i.i.i102 = icmp eq ptr %.sroa.0188.0, null
  br i1 %.not.i.i.i.i102, label %.body105, label %bb.o

bb.o:                                             ; preds = %.body134
  %i.dk = ptrtoint ptr %.sroa.17.0 to i64
  %i.dl = sub i64 %i.dk, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0188.0, i64 noundef %i.dl) #39
  br label %.body105

_ZNSt6vectorISt4pairIiiESaIS1_EE19_M_range_initializeIN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEvT_SC_St18input_iterator_tag.exit: ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE12emplace_backIJS0_IRKiS6_EEEERS1_DpOT_.exit.i
  %.sroa.0188.11061.le = ptrtoaddr ptr %.sroa.0188.1 to i64 ; 5 uses
  %.not101.i = icmp eq ptr %.sroa.0188.1, %.sroa.11.1
  br i1 %.not101.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorISt4pairIiiESaIS1_EE19_M_range_initializeIN4absl12lts_2026052613base_internal23Cpp20ForwardZipIteratorISt24_Fwd_list_const_iteratorIiEEEEEvT_SC_St18input_iterator_tag.exit
  %i.dm = ptrtoint ptr %.sroa.11.1 to i64
  %i.dn = ptrtoint ptr %.sroa.0188.1 to i64       ; 2 uses
  %i.do = sub i64 %i.dm, %i.dn                    ; 7 uses
  %i.dp = ashr exact i64 %i.do, 3                 ; 11 uses
  %i.dq = ptrtoint ptr %.sroa.38.0.lcssa to i64   ; 2 uses
  %i.dr = ptrtoint ptr %.sroa.18.0.lcssa to i64   ; 7 uses
  %i.ds = sub i64 %i.dq, %i.dr
  %.not.i110 = icmp ult i64 %i.ds, %i.do
  br i1 %.not.i110, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = sub i64 %i.dr, %i.aa                    ; 6 uses
  %i.du = ashr exact i64 %i.dt, 3                 ; 9 uses
  %i.dv = icmp ugt i64 %i.du, %i.dp
  br i1 %i.dv, label %bb.r, label %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i

bb.r:                                             ; preds = %bb.q
  %.idx.i = sub i64 0, %i.do
  %i.dw = getelementptr inbounds i8, ptr %.sroa.18.0.lcssa, i64 %.idx.i ; 6 uses
  %i.dx = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i132.pn to i64
  %i.dy = sub i64 %i.dx, %.sroa.0188.11061.le     ; 2 uses
  %i.dz = lshr i64 %i.dy, 3
  %i.ea = add nuw nsw i64 %i.dz, 1                ; 2 uses
  %min.iters.check1121 = icmp ult i64 %i.dy, 24
  %diff.check1119 = icmp ult i64 %i.do, 32
  %or.cond1234 = or i1 %min.iters.check1121, %diff.check1119
  br i1 %or.cond1234, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph1122

vector.ph1122:                                    ; preds = %bb.r
  %n.vec1123 = and i64 %i.ea, 4611686018427387900 ; 3 uses
  %i.eb = shl i64 %n.vec1123, 3                   ; 2 uses
  %i.ec = getelementptr i8, ptr %.sroa.18.0.lcssa, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.dw, i64 %i.eb
  br label %vector.body1124

vector.body1124:                                  ; preds = %vector.body1124, %vector.ph1122
  %index1125 = phi i64 [ 0, %vector.ph1122 ], [ %index.next1130, %vector.body1124 ] ; 2 uses
  %i.ee = shl i64 %index1125, 3                   ; 2 uses
  %next.gep1126 = getelementptr i8, ptr %.sroa.18.0.lcssa, i64 %i.ee ; 2 uses
  %next.gep1127 = getelementptr i8, ptr %i.dw, i64 %i.ee ; 2 uses
  %i.ef = getelementptr i8, ptr %next.gep1127, i64 16
  %wide.load1128 = load <2 x i64>, ptr %next.gep1127, align 4
  %wide.load1129 = load <2 x i64>, ptr %i.ef, align 4
  %i.eg = getelementptr i8, ptr %next.gep1126, i64 16
  store <2 x i64> %wide.load1128, ptr %next.gep1126, align 4
  store <2 x i64> %wide.load1129, ptr %i.eg, align 4
  %index.next1130 = add nuw i64 %index1125, 4     ; 2 uses
  %i.eh = icmp eq i64 %index.next1130, %n.vec1123
  br i1 %i.eh, label %middle.block1131, label %vector.body1124, !llvm.loop !1424

middle.block1131:                                 ; preds = %vector.body1124
  %cmp.n1132 = icmp eq i64 %i.ea, %n.vec1123
  br i1 %cmp.n1132, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.r, %middle.block1131
  %.013.i.i.i.i.i.i.ph = phi ptr [ %.sroa.18.0.lcssa, %bb.r ], [ %i.ec, %middle.block1131 ]
  %.sroa.08.012.i.i.i.i.i.i.ph = phi ptr [ %i.dw, %bb.r ], [ %i.ed, %middle.block1131 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.013.i.i.i.i.i.i = phi ptr [ %i.ek, %.lr.ph.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.08.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ei = load i64, ptr %.sroa.08.012.i.i.i.i.i.i, align 4
  store i64 %i.ei, ptr %.013.i.i.i.i.i.i, align 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i.i115 = icmp eq ptr %i.ej, %.sroa.18.0.lcssa
  br i1 %.not.i.i.i.i.i.i115, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1425

_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block1131
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.18.0.lcssa, i64 %i.do ; 3 uses
  %i.em = ptrtoint ptr %i.dw to i64
  %i.en = sub i64 %i.em, %i.aa
  %i.eo = ashr exact i64 %i.en, 3                 ; 5 uses
  %i.ep = icmp sgt i64 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.i.i.i.i.i51.i.preheader, label %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit.i

.lr.ph.i.i.i.i.i51.i.preheader:                   ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  %xtraiter1430 = and i64 %i.eo, 3                ; 2 uses
  %lcmp.mod1431.not = icmp eq i64 %xtraiter1430, 0
  br i1 %lcmp.mod1431.not, label %.lr.ph.i.i.i.i.i51.i.prol.loopexit, label %.lr.ph.i.i.i.i.i51.i.prol

.lr.ph.i.i.i.i.i51.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i51.i.preheader, %.lr.ph.i.i.i.i.i51.i.prol
  %.010.i.i.i.i.i.i.prol = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i51.i.prol ], [ %i.eo, %.lr.ph.i.i.i.i.i51.i.preheader ]
  %.069.i.i.i.i.i.i.prol = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i51.i.prol ], [ %.sroa.18.0.lcssa, %.lr.ph.i.i.i.i.i51.i.preheader ] ; 2 uses
  %.078.i.i.i.i.i.i.prol = phi ptr [ %i.eq, %.lr.ph.i.i.i.i.i51.i.prol ], [ %i.dw, %.lr.ph.i.i.i.i.i51.i.preheader ] ; 2 uses
  %prol.iter1432 = phi i64 [ %prol.iter1432.next, %.lr.ph.i.i.i.i.i51.i.prol ], [ 0, %.lr.ph.i.i.i.i.i51.i.preheader ]
  %i.eq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.er = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -8 ; 3 uses
  %i.es = load i32, ptr %i.eq, align 4, !tbaa !132
  store i32 %i.es, ptr %i.er, align 4, !tbaa !1413
  %i.et = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.prol, i64 -4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !132
  %i.ev = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.prol, i64 -4
  store i32 %i.eu, ptr %i.ev, align 4, !tbaa !1415
  %i.ew = add nsw i64 %.010.i.i.i.i.i.i.prol, -1  ; 2 uses
  %prol.iter1432.next = add i64 %prol.iter1432, 1 ; 2 uses
  %prol.iter1432.cmp.not = icmp eq i64 %prol.iter1432.next, %xtraiter1430
  br i1 %prol.iter1432.cmp.not, label %.lr.ph.i.i.i.i.i51.i.prol.loopexit, label %.lr.ph.i.i.i.i.i51.i.prol, !llvm.loop !1426

.lr.ph.i.i.i.i.i51.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i51.i.prol, %.lr.ph.i.i.i.i.i51.i.preheader
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.eo, %.lr.ph.i.i.i.i.i51.i.preheader ], [ %i.ew, %.lr.ph.i.i.i.i.i51.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %.sroa.18.0.lcssa, %.lr.ph.i.i.i.i.i51.i.preheader ], [ %i.er, %.lr.ph.i.i.i.i.i51.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %i.dw, %.lr.ph.i.i.i.i.i51.i.preheader ], [ %i.eq, %.lr.ph.i.i.i.i.i51.i.prol ]
  %i.ex = icmp ult i64 %i.eo, 4
  br i1 %i.ex, label %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit.i, label %.lr.ph.i.i.i.i.i51.i

.lr.ph.i.i.i.i.i51.i:                             ; preds = %.lr.ph.i.i.i.i.i51.i.prol.loopexit, %.lr.ph.i.i.i.i.i51.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.fw, %.lr.ph.i.i.i.i.i51.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i51.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.fr, %.lr.ph.i.i.i.i.i51.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i51.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.fq, %.lr.ph.i.i.i.i.i51.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i51.i.prol.loopexit ] ; 8 uses
  %i.ey = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ez = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  %i.fa = load i32, ptr %i.ey, align 4, !tbaa !132
  store i32 %i.fa, ptr %i.ez, align 4, !tbaa !1413
  %i.fb = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !132
  %i.fd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -4
  store i32 %i.fc, ptr %i.fd, align 4, !tbaa !1415
  %i.fe = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.ff = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  %i.fg = load i32, ptr %i.fe, align 4, !tbaa !132
  store i32 %i.fg, ptr %i.ff, align 4, !tbaa !1413
  %i.fh = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -12
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !132
  %i.fj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -12
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !1415
  %i.fk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.fl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.fm = load i32, ptr %i.fk, align 4, !tbaa !132
  store i32 %i.fm, ptr %i.fl, align 4, !tbaa !1413
  %i.fn = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -20
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !132
  %i.fp = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -20
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !1415
  %i.fq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32 ; 2 uses
  %i.fs = load i32, ptr %i.fq, align 4, !tbaa !132
  store i32 %i.fs, ptr %i.fr, align 4, !tbaa !1413
  %i.ft = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -28
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !132
  %i.fv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -28
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !1415
  %i.fw = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.fx = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.fx, label %.lr.ph.i.i.i.i.i51.i, label %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit.i, !llvm.loop !1427

_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit.i: ; preds = %.lr.ph.i.i.i.i.i51.i.prol.loopexit, %.lr.ph.i.i.i.i.i51.i, %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  %i.fy = icmp sgt i64 %i.dp, 0
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i52.i.preheader, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit

.lr.ph.i.i.i.i.i52.i.preheader:                   ; preds = %_ZSt13move_backwardIPSt4pairIiiES2_ET0_T_S4_S3_.exit.i
  %min.iters.check1098 = icmp ult i64 %i.dp, 4
  br i1 %min.iters.check1098, label %.lr.ph.i.i.i.i.i52.i.preheader1245, label %vector.memcheck1095

vector.memcheck1095:                              ; preds = %.lr.ph.i.i.i.i.i52.i.preheader
  %i.fz = getelementptr i8, ptr %.sroa.0155.0.lcssa, i64 %i.m
  %scevgep = getelementptr i8, ptr %i.fz, i64 %i.do
  %bound0 = icmp ult ptr %i.z, %.sroa.11.1
  %bound1 = icmp ult ptr %.sroa.0188.1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i52.i.preheader1245, label %vector.ph1099

vector.ph1099:                                    ; preds = %vector.memcheck1095
  %n.vec1100 = and i64 %i.dp, 9223372036854775804 ; 3 uses
  %i.ga = and i64 %i.dp, 3
  %i.gb = shl i64 %n.vec1100, 3                   ; 2 uses
  %i.gc = getelementptr i8, ptr %i.z, i64 %i.gb
  %i.gd = getelementptr i8, ptr %.sroa.0188.1, i64 %i.gb
  br label %vector.body1101

vector.body1101:                                  ; preds = %vector.body1101, %vector.ph1099
  %index1102 = phi i64 [ 0, %vector.ph1099 ], [ %index.next1112, %vector.body1101 ] ; 2 uses
  %i.ge = shl i64 %index1102, 3                   ; 3 uses
  %i.gf = or disjoint i64 %i.ge, 16               ; 2 uses
  %next.gep1103 = getelementptr i8, ptr %i.z, i64 %i.ge
  %next.gep1104 = getelementptr i8, ptr %i.z, i64 %i.gf
  %next.gep1105 = getelementptr i8, ptr %.sroa.0188.1, i64 %i.ge
  %next.gep1106 = getelementptr i8, ptr %.sroa.0188.1, i64 %i.gf
  %wide.vec = load <4 x i32>, ptr %next.gep1105, align 4, !tbaa !132, !alias.scope !1428
  %wide.vec1108 = load <4 x i32>, ptr %next.gep1106, align 4, !tbaa !132, !alias.scope !1428
  store <4 x i32> %wide.vec, ptr %next.gep1103, align 4, !tbaa !132, !alias.scope !1431, !noalias !1428
  store <4 x i32> %wide.vec1108, ptr %next.gep1104, align 4, !tbaa !132, !alias.scope !1431, !noalias !1428
  %index.next1112 = add nuw i64 %index1102, 4     ; 2 uses
  %i.gg = icmp eq i64 %index.next1112, %n.vec1100
  br i1 %i.gg, label %middle.block1113, label %vector.body1101, !llvm.loop !1433

middle.block1113:                                 ; preds = %vector.body1101
  %cmp.n1114 = icmp eq i64 %i.dp, %n.vec1100
  br i1 %cmp.n1114, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit, label %.lr.ph.i.i.i.i.i52.i.preheader1245

.lr.ph.i.i.i.i.i52.i.preheader1245:               ; preds = %vector.memcheck1095, %.lr.ph.i.i.i.i.i52.i.preheader, %middle.block1113
  %.012.i.i.i.i.i.i.ph = phi i64 [ %i.dp, %vector.memcheck1095 ], [ %i.dp, %.lr.ph.i.i.i.i.i52.i.preheader ], [ %i.ga, %middle.block1113 ]
  %.0811.i.i.i.i.i.i.ph = phi ptr [ %i.z, %vector.memcheck1095 ], [ %i.z, %.lr.ph.i.i.i.i.i52.i.preheader ], [ %i.gc, %middle.block1113 ]
  %.0910.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0188.1, %vector.memcheck1095 ], [ %.sroa.0188.1, %.lr.ph.i.i.i.i.i52.i.preheader ], [ %i.gd, %middle.block1113 ]
  br label %.lr.ph.i.i.i.i.i52.i

.lr.ph.i.i.i.i.i52.i:                             ; preds = %.lr.ph.i.i.i.i.i52.i.preheader1245, %.lr.ph.i.i.i.i.i52.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.gn, %.lr.ph.i.i.i.i.i52.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.i.preheader1245 ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.gm, %.lr.ph.i.i.i.i.i52.i ], [ %.0811.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.i.preheader1245 ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.gl, %.lr.ph.i.i.i.i.i52.i ], [ %.0910.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i52.i.preheader1245 ] ; 3 uses
  %i.gh = load i32, ptr %.0910.i.i.i.i.i.i, align 4, !tbaa !132
  store i32 %i.gh, ptr %.0811.i.i.i.i.i.i, align 4, !tbaa !1413
  %i.gi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !132
  %i.gk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 4
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !1415
  %i.gl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.gn = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.go = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.go, label %.lr.ph.i.i.i.i.i52.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit, !llvm.loop !1434

_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %bb.q
  %i.gp = getelementptr inbounds i8, ptr %.sroa.0188.1, i64 %i.dt ; 5 uses
  %.not10.i.i.i.i.i111 = icmp eq ptr %i.gp, %.sroa.11.1
  br i1 %.not10.i.i.i.i.i111, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i112.preheader:                    ; preds = %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.gq = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i132.pn to i64 ; 2 uses
  %i.gr = add i64 %i.gq, %i.ab
  %i.gs = add i64 %i.gr, %.idx
  %i.gt = add i64 %.sroa.0188.11061.le, %i.dr
  %i.gu = sub i64 %i.gs, %i.gt                    ; 2 uses
  %i.gv = lshr i64 %i.gu, 3
  %i.gw = add nuw nsw i64 %i.gv, 1                ; 2 uses
  %min.iters.check1185 = icmp ult i64 %i.gu, 56
  br i1 %min.iters.check1185, label %.lr.ph.i.i.i.i.i112.preheader1248, label %vector.memcheck1182

vector.memcheck1182:                              ; preds = %.lr.ph.i.i.i.i.i112.preheader
  %i.gx = add i64 %11, %i.ab
  %i.gy = sub i64 %.sroa.0188.11061.le, %i.gx
  %diff.check1183 = icmp ugt i64 %i.gy, -32
  br i1 %diff.check1183, label %.lr.ph.i.i.i.i.i112.preheader1248, label %vector.ph1186

vector.ph1186:                                    ; preds = %vector.memcheck1182
  %n.vec1187 = and i64 %i.gw, 4611686018427387900 ; 3 uses
  %i.gz = shl i64 %n.vec1187, 3                   ; 2 uses
  %i.ha = getelementptr i8, ptr %.sroa.18.0.lcssa, i64 %i.gz
  %i.hb = getelementptr i8, ptr %i.gp, i64 %i.gz
  br label %vector.body1188

vector.body1188:                                  ; preds = %vector.body1188, %vector.ph1186
  %index1189 = phi i64 [ 0, %vector.ph1186 ], [ %index.next1194, %vector.body1188 ] ; 2 uses
  %i.hc = shl i64 %index1189, 3                   ; 2 uses
  %next.gep1190 = getelementptr i8, ptr %.sroa.18.0.lcssa, i64 %i.hc ; 2 uses
  %next.gep1191 = getelementptr i8, ptr %i.gp, i64 %i.hc ; 2 uses
  %i.hd = getelementptr i8, ptr %next.gep1191, i64 16
  %wide.load1192 = load <2 x i64>, ptr %next.gep1191, align 4
  %wide.load1193 = load <2 x i64>, ptr %i.hd, align 4
  %i.he = getelementptr i8, ptr %next.gep1190, i64 16
  store <2 x i64> %wide.load1192, ptr %next.gep1190, align 4
  store <2 x i64> %wide.load1193, ptr %i.he, align 4
  %index.next1194 = add nuw i64 %index1189, 4     ; 2 uses
  %i.hf = icmp eq i64 %index.next1194, %n.vec1187
  br i1 %i.hf, label %middle.block1195, label %vector.body1188, !llvm.loop !1435

middle.block1195:                                 ; preds = %vector.body1188
  %cmp.n1196 = icmp eq i64 %i.gw, %n.vec1187
  br i1 %cmp.n1196, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i112.preheader1248

.lr.ph.i.i.i.i.i112.preheader1248:                ; preds = %vector.memcheck1182, %.lr.ph.i.i.i.i.i112.preheader, %middle.block1195
  %.012.i.i.i.i.i113.ph = phi ptr [ %.sroa.18.0.lcssa, %vector.memcheck1182 ], [ %.sroa.18.0.lcssa, %.lr.ph.i.i.i.i.i112.preheader ], [ %i.ha, %middle.block1195 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.ph = phi ptr [ %i.gp, %vector.memcheck1182 ], [ %i.gp, %.lr.ph.i.i.i.i.i112.preheader ], [ %i.hb, %middle.block1195 ] ; 3 uses
  %.sroa.08.011.i.i.i.i.i.ph1429 = ptrtoaddr ptr %.sroa.08.011.i.i.i.i.i.ph to i64
  %i.hg = sub i64 %i.gq, %.sroa.08.011.i.i.i.i.i.ph1429 ; 2 uses
  %i.hh = lshr i64 %i.hg, 3
  %i.hi = add nuw nsw i64 %i.hh, 1
  %xtraiter = and i64 %i.hi, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i112.prol

.lr.ph.i.i.i.i.i112.prol:                         ; preds = %.lr.ph.i.i.i.i.i112.preheader1248, %.lr.ph.i.i.i.i.i112.prol
  %.012.i.i.i.i.i113.prol = phi ptr [ %i.hl, %.lr.ph.i.i.i.i.i112.prol ], [ %.012.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i112.preheader1248 ] ; 2 uses
  %.sroa.08.011.i.i.i.i.i.prol = phi ptr [ %i.hk, %.lr.ph.i.i.i.i.i112.prol ], [ %.sroa.08.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i112.preheader1248 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i112.prol ], [ 0, %.lr.ph.i.i.i.i.i112.preheader1248 ]
  %i.hj = load i64, ptr %.sroa.08.011.i.i.i.i.i.prol, align 4
  store i64 %i.hj, ptr %.012.i.i.i.i.i113.prol, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i.prol, i64 8 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i112.prol.loopexit, label %.lr.ph.i.i.i.i.i112.prol, !llvm.loop !1436

.lr.ph.i.i.i.i.i112.prol.loopexit:                ; preds = %.lr.ph.i.i.i.i.i112.prol, %.lr.ph.i.i.i.i.i112.preheader1248
  %.012.i.i.i.i.i113.unr = phi ptr [ %.012.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i112.preheader1248 ], [ %i.hl, %.lr.ph.i.i.i.i.i112.prol ]
  %.sroa.08.011.i.i.i.i.i.unr = phi ptr [ %.sroa.08.011.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i112.preheader1248 ], [ %i.hk, %.lr.ph.i.i.i.i.i112.prol ]
  %i.hm = icmp ult i64 %i.hg, 56
  br i1 %i.hm, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i112

.lr.ph.i.i.i.i.i112:                              ; preds = %.lr.ph.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i112
  %.012.i.i.i.i.i113 = phi ptr [ %i.ik, %.lr.ph.i.i.i.i.i112 ], [ %.012.i.i.i.i.i113.unr, %.lr.ph.i.i.i.i.i112.prol.loopexit ] ; 9 uses
  %.sroa.08.011.i.i.i.i.i = phi ptr [ %i.ij, %.lr.ph.i.i.i.i.i112 ], [ %.sroa.08.011.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i112.prol.loopexit ] ; 9 uses
  %i.hn = load i64, ptr %.sroa.08.011.i.i.i.i.i, align 4
  store i64 %i.hn, ptr %.012.i.i.i.i.i113, align 4
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 8
  %i.hq = load i64, ptr %i.ho, align 4
  store i64 %i.hq, ptr %i.hp, align 4
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 16
  %i.hs = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 16
  %i.ht = load i64, ptr %i.hr, align 4
  store i64 %i.ht, ptr %i.hs, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 24
  %i.hv = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 24
  %i.hw = load i64, ptr %i.hu, align 4
  store i64 %i.hw, ptr %i.hv, align 4
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 32
  %i.hy = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 32
  %i.hz = load i64, ptr %i.hx, align 4
  store i64 %i.hz, ptr %i.hy, align 4
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 40
  %i.ib = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 40
  %i.ic = load i64, ptr %i.ia, align 4
  store i64 %i.ic, ptr %i.ib, align 4
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 48
  %i.ie = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 48
  %i.if = load i64, ptr %i.id, align 4
  store i64 %i.if, ptr %i.ie, align 4
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 56 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 56
  %i.ii = load i64, ptr %i.ig, align 4
  store i64 %i.ii, ptr %i.ih, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i.i, i64 64
  %i.ik = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i113, i64 64
  %.not.i.i.i.i.i114.7 = icmp eq ptr %i.ig, %.0.lcssa.i.i.i.i.i132.pn
  br i1 %.not.i.i.i.i.i114.7, label %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i, label %.lr.ph.i.i.i.i.i112, !llvm.loop !1437

_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i: ; preds = %.lr.ph.i.i.i.i.i112.prol.loopexit, %.lr.ph.i.i.i.i.i112, %middle.block1195, %_ZSt9__advanceISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %i.il = sub nuw nsw i64 %i.dp, %i.du
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %.sroa.18.0.lcssa, i64 %i.il ; 5 uses
  %i.in = add i64 %i.dr, -8
  %i.io = add i64 %12, %i.ab
  %i.ip = sub i64 %i.in, %i.io                    ; 2 uses
  %i.iq = lshr i64 %i.ip, 3
  %i.ir = add nuw nsw i64 %i.iq, 1                ; 2 uses
  %min.iters.check1168 = icmp ult i64 %i.ip, 72
  br i1 %min.iters.check1168, label %.lr.ph.i.i.i.i.i54.i.preheader, label %vector.memcheck1165

vector.memcheck1165:                              ; preds = %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i
  %i.is = shl i64 %.023437, 3
  %i.it = add i64 %i.do, %i.dr
  %i.iu = add i64 %i.is, %i.ab
  %i.iv = add i64 %i.iu, %i.dt
  %i.iw = sub i64 %i.iv, %i.it
  %diff.check1166 = icmp ugt i64 %i.iw, -32
  br i1 %diff.check1166, label %.lr.ph.i.i.i.i.i54.i.preheader, label %vector.ph1169

vector.ph1169:                                    ; preds = %vector.memcheck1165
  %n.vec1170 = and i64 %i.ir, 4611686018427387900 ; 3 uses
  %i.ix = shl i64 %n.vec1170, 3                   ; 2 uses
  %i.iy = getelementptr i8, ptr %i.im, i64 %i.ix
  %i.iz = getelementptr i8, ptr %i.z, i64 %i.ix
  br label %vector.body1171

vector.body1171:                                  ; preds = %vector.body1171, %vector.ph1169
  %index1172 = phi i64 [ 0, %vector.ph1169 ], [ %index.next1177, %vector.body1171 ] ; 2 uses
  %i.ja = shl i64 %index1172, 3                   ; 2 uses
  %next.gep1173 = getelementptr i8, ptr %i.im, i64 %i.ja ; 2 uses
  %next.gep1174 = getelementptr i8, ptr %i.z, i64 %i.ja ; 2 uses
  %i.jb = getelementptr i8, ptr %next.gep1174, i64 16
  %wide.load1175 = load <2 x i64>, ptr %next.gep1174, align 4
  %wide.load1176 = load <2 x i64>, ptr %i.jb, align 4
  %i.jc = getelementptr i8, ptr %next.gep1173, i64 16
  store <2 x i64> %wide.load1175, ptr %next.gep1173, align 4
  store <2 x i64> %wide.load1176, ptr %i.jc, align 4
  %index.next1177 = add nuw i64 %index1172, 4     ; 2 uses
  %i.jd = icmp eq i64 %index.next1177, %n.vec1170
  br i1 %i.jd, label %middle.block1178, label %vector.body1171, !llvm.loop !1438

middle.block1178:                                 ; preds = %vector.body1171
  %cmp.n1179 = icmp eq i64 %i.ir, %n.vec1170
  br i1 %cmp.n1179, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i, label %.lr.ph.i.i.i.i.i54.i.preheader

.lr.ph.i.i.i.i.i54.i.preheader:                   ; preds = %vector.memcheck1165, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i, %middle.block1178
  %.013.i.i.i.i.i55.i.ph = phi ptr [ %i.im, %vector.memcheck1165 ], [ %i.im, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i ], [ %i.iy, %middle.block1178 ]
  %.sroa.08.012.i.i.i.i.i56.i.ph = phi ptr [ %i.z, %vector.memcheck1165 ], [ %i.z, %_ZSt22__uninitialized_copy_aISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPSt4pairIiiESt6vectorIS4_SaIS4_EEEEES5_S4_ET0_T_SC_SB_RSaIT1_E.exit.i ], [ %i.iz, %middle.block1178 ]
  br label %.lr.ph.i.i.i.i.i54.i

.lr.ph.i.i.i.i.i54.i:                             ; preds = %.lr.ph.i.i.i.i.i54.i.preheader, %.lr.ph.i.i.i.i.i54.i
  %.013.i.i.i.i.i55.i = phi ptr [ %i.jg, %.lr.ph.i.i.i.i.i54.i ], [ %.013.i.i.i.i.i55.i.ph, %.lr.ph.i.i.i.i.i54.i.preheader ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i56.i = phi ptr [ %i.jf, %.lr.ph.i.i.i.i.i54.i ], [ %.sroa.08.012.i.i.i.i.i56.i.ph, %.lr.ph.i.i.i.i.i54.i.preheader ] ; 2 uses
  %i.je = load i64, ptr %.sroa.08.012.i.i.i.i.i56.i, align 4
  store i64 %i.je, ptr %.013.i.i.i.i.i55.i, align 4
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i56.i, i64 8 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i55.i, i64 8
  %.not.i.i.i.i.i57.i = icmp eq ptr %i.jf, %.sroa.18.0.lcssa
  br i1 %.not.i.i.i.i.i57.i, label %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i, label %.lr.ph.i.i.i.i.i54.i, !llvm.loop !1439

_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i: ; preds = %.lr.ph.i.i.i.i.i54.i, %middle.block1178
  %i.jh = getelementptr inbounds nuw i8, ptr %i.im, i64 %i.dt ; 3 uses
  %i.ji = icmp sgt i64 %i.du, 0
  br i1 %i.ji, label %.lr.ph.i.i.i.i.i61.i.preheader, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit

.lr.ph.i.i.i.i.i61.i.preheader:                   ; preds = %_ZSt22__uninitialized_move_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit59.i
  %min.iters.check1142 = icmp ult i64 %i.du, 4
  br i1 %min.iters.check1142, label %.lr.ph.i.i.i.i.i61.i.preheader1246, label %vector.memcheck1135

vector.memcheck1135:                              ; preds = %.lr.ph.i.i.i.i.i61.i.preheader
  %i.jj = getelementptr i8, ptr %.sroa.0155.0.lcssa, i64 %13
  %scevgep1136 = getelementptr i8, ptr %i.jj, i64 %i.dt
  %scevgep1137 = getelementptr i8, ptr %.sroa.0188.1, i64 %i.dt
  %bound01138 = icmp ult ptr %i.z, %scevgep1137
  %bound11139 = icmp ult ptr %.sroa.0188.1, %scevgep1136
  %found.conflict1140 = and i1 %bound01138, %bound11139
  br i1 %found.conflict1140, label %.lr.ph.i.i.i.i.i61.i.preheader1246, label %vector.ph1143

vector.ph1143:                                    ; preds = %vector.memcheck1135
  %n.vec1144 = and i64 %i.du, 9223372036854775804 ; 3 uses
  %i.jk = and i64 %i.du, 3
  %i.jl = shl i64 %n.vec1144, 3                   ; 2 uses
  %i.jm = getelementptr i8, ptr %i.z, i64 %i.jl
  %i.jn = getelementptr i8, ptr %.sroa.0188.1, i64 %i.jl
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %vector.ph1143
  %index1146 = phi i64 [ 0, %vector.ph1143 ], [ %index.next1159, %vector.body1145 ] ; 2 uses
  %i.jo = shl i64 %index1146, 3                   ; 3 uses
  %i.jp = or disjoint i64 %i.jo, 16               ; 2 uses
  %next.gep1147 = getelementptr i8, ptr %i.z, i64 %i.jo
  %next.gep1148 = getelementptr i8, ptr %i.z, i64 %i.jp
  %next.gep1149 = getelementptr i8, ptr %.sroa.0188.1, i64 %i.jo
  %next.gep1150 = getelementptr i8, ptr %.sroa.0188.1, i64 %i.jp
  %wide.vec1151 = load <4 x i32>, ptr %next.gep1149, align 4, !tbaa !132, !alias.scope !1440
  %wide.vec1154 = load <4 x i32>, ptr %next.gep1150, align 4, !tbaa !132, !alias.scope !1440
  store <4 x i32> %wide.vec1151, ptr %next.gep1147, align 4, !tbaa !132, !alias.scope !1443, !noalias !1440
  store <4 x i32> %wide.vec1154, ptr %next.gep1148, align 4, !tbaa !132, !alias.scope !1443, !noalias !1440
  %index.next1159 = add nuw i64 %index1146, 4     ; 2 uses
  %i.jq = icmp eq i64 %index.next1159, %n.vec1144
  br i1 %i.jq, label %middle.block1160, label %vector.body1145, !llvm.loop !1445

middle.block1160:                                 ; preds = %vector.body1145
  %cmp.n1161 = icmp eq i64 %i.du, %n.vec1144
  br i1 %cmp.n1161, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit, label %.lr.ph.i.i.i.i.i61.i.preheader1246

.lr.ph.i.i.i.i.i61.i.preheader1246:               ; preds = %vector.memcheck1135, %.lr.ph.i.i.i.i.i61.i.preheader, %middle.block1160
  %.012.i.i.i.i.i62.i.ph = phi i64 [ %i.du, %vector.memcheck1135 ], [ %i.du, %.lr.ph.i.i.i.i.i61.i.preheader ], [ %i.jk, %middle.block1160 ]
  %.0811.i.i.i.i.i63.i.ph = phi ptr [ %i.z, %vector.memcheck1135 ], [ %i.z, %.lr.ph.i.i.i.i.i61.i.preheader ], [ %i.jm, %middle.block1160 ]
  %.0910.i.i.i.i.i64.i.ph = phi ptr [ %.sroa.0188.1, %vector.memcheck1135 ], [ %.sroa.0188.1, %.lr.ph.i.i.i.i.i61.i.preheader ], [ %i.jn, %middle.block1160 ]
  br label %.lr.ph.i.i.i.i.i61.i

.lr.ph.i.i.i.i.i61.i:                             ; preds = %.lr.ph.i.i.i.i.i61.i.preheader1246, %.lr.ph.i.i.i.i.i61.i
  %.012.i.i.i.i.i62.i = phi i64 [ %i.jx, %.lr.ph.i.i.i.i.i61.i ], [ %.012.i.i.i.i.i62.i.ph, %.lr.ph.i.i.i.i.i61.i.preheader1246 ] ; 2 uses
  %.0811.i.i.i.i.i63.i = phi ptr [ %i.jw, %.lr.ph.i.i.i.i.i61.i ], [ %.0811.i.i.i.i.i63.i.ph, %.lr.ph.i.i.i.i.i61.i.preheader1246 ] ; 3 uses
  %.0910.i.i.i.i.i64.i = phi ptr [ %i.jv, %.lr.ph.i.i.i.i.i61.i ], [ %.0910.i.i.i.i.i64.i.ph, %.lr.ph.i.i.i.i.i61.i.preheader1246 ] ; 3 uses
  %i.jr = load i32, ptr %.0910.i.i.i.i.i64.i, align 4, !tbaa !132
  store i32 %i.jr, ptr %.0811.i.i.i.i.i63.i, align 4, !tbaa !1413
  %i.js = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64.i, i64 4
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !132
  %i.ju = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63.i, i64 4
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !1415
  %i.jv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i64.i, i64 8
  %i.jw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i63.i, i64 8
  %i.jx = add nsw i64 %.012.i.i.i.i.i62.i, -1
  %i.jy = icmp samesign ugt i64 %.012.i.i.i.i.i62.i, 1
  br i1 %i.jy, label %.lr.ph.i.i.i.i.i61.i, label %_ZNSt6vectorISt4pairIiiESaIS1_EE15_M_range_insertISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEEEEvS9_T_SB_St20forward_iterator_tag.exit, !llvm.loop !1446

bb.s:                                             ; preds = %bb.p
  %i.jz = sub i64 %i.dr, %i.ab
  %i.ka = ashr exact i64 %i.jz, 3                 ; 4 uses
  %i.kb = sub nsw i64 1152921504606846975, %i.ka
  %i.kc = icmp ult i64 %i.kb, %i.dp
  br i1 %i.kc, label %bb.t, label %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.331) #38
          to label %.noexc117 unwind label %.loopexit.split-lp246

.noexc117:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.s
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ka, i64 %i.dp)
  %i.kd = add nsw i64 %.sroa.speculated.i.i, %i.ka ; 2 uses
  %i.ke = icmp ult i64 %i.kd, %i.ka
  %i.kf = call i64 @llvm.umin.i64(i64 %i.kd, i64 1152921504606846975)
  %i.kg = select i1 %i.ke, i64 1152921504606846975, i64 %i.kf ; 3 uses
  %.not.i.i116 = icmp eq i64 %i.kg, 0
  br i1 %.not.i.i116, label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i, label %bb.u

bb.u:                                             ; preds = %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.kh = shl nuw nsw i64 %i.kg, 3
  %i.ki = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kh) #41
          to label %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i unwind label %.loopexit245

_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.u, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i
  %i.kj = phi ptr [ null, %_ZNKSt6vectorISt4pairIiiESaIS1_EE12_M_check_lenEmPKc.exit.i ], [ %i.ki, %bb.u ] ; 7 uses
  %.not11.i.i.i.i.i66.i = icmp eq i64 %.023437, 0
  br i1 %.not11.i.i.i.i.i66.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i67.i.preheader

.lr.ph.i.i.i.i.i67.i.preheader:                   ; preds = %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i
  %i.kk = ptrtoaddr ptr %i.kj to i64
  %min.iters.check1081 = icmp samesign ult i64 %i.o, 3
  %i.kl = sub i64 %i.ab, %i.kk
  %diff.check1079 = icmp ugt i64 %i.kl, -32
  %or.cond1235 = or i1 %min.iters.check1081, %diff.check1079
  br i1 %or.cond1235, label %.lr.ph.i.i.i.i.i67.i.preheader1244, label %vector.ph1082

vector.ph1082:                                    ; preds = %.lr.ph.i.i.i.i.i67.i.preheader
  %n.vec1083 = and i64 %i.p, 4611686018427387900  ; 3 uses
  %i.km = shl i64 %n.vec1083, 3                   ; 2 uses
  %i.kn = getelementptr i8, ptr %i.kj, i64 %i.km  ; 2 uses
  %i.ko = getelementptr i8, ptr %.sroa.0155.0.lcssa, i64 %i.km
  br label %vector.body1084

vector.body1084:                                  ; preds = %vector.body1084, %vector.ph1082
  %index1085 = phi i64 [ 0, %vector.ph1082 ], [ %index.next1090, %vector.body1084 ] ; 2 uses
  %i.kp = shl i64 %index1085, 3                   ; 2 uses
  %next.gep1086 = getelementptr i8, ptr %i.kj, i64 %i.kp ; 2 uses
  %next.gep1087 = getelementptr i8, ptr %.sroa.0155.0.lcssa, i64 %i.kp ; 2 uses
  %i.kq = getelementptr i8, ptr %next.gep1087, i64 16
  %wide.load1088 = load <2 x i64>, ptr %next.gep1087, align 4
  %wide.load1089 = load <2 x i64>, ptr %i.kq, align 4
  %i.kr = getelementptr i8, ptr %next.gep1086, i64 16
  store <2 x i64> %wide.load1088, ptr %next.gep1086, align 4
  store <2 x i64> %wide.load1089, ptr %i.kr, align 4
  %index.next1090 = add nuw i64 %index1085, 4     ; 2 uses
  %i.ks = icmp eq i64 %index.next1090, %n.vec1083
  br i1 %i.ks, label %middle.block1091, label %vector.body1084, !llvm.loop !1447

middle.block1091:                                 ; preds = %vector.body1084
  %cmp.n1092 = icmp eq i64 %i.p, %n.vec1083
  br i1 %cmp.n1092, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i67.i.preheader1244

.lr.ph.i.i.i.i.i67.i.preheader1244:               ; preds = %.lr.ph.i.i.i.i.i67.i.preheader, %middle.block1091
  %.013.i.i.i.i.i68.i.ph = phi ptr [ %i.kj, %.lr.ph.i.i.i.i.i67.i.preheader ], [ %i.kn, %middle.block1091 ]
  %.sroa.08.012.i.i.i.i.i69.i.ph = phi ptr [ %.sroa.0155.0.lcssa, %.lr.ph.i.i.i.i.i67.i.preheader ], [ %i.ko, %middle.block1091 ]
  br label %.lr.ph.i.i.i.i.i67.i

.lr.ph.i.i.i.i.i67.i:                             ; preds = %.lr.ph.i.i.i.i.i67.i.preheader1244, %.lr.ph.i.i.i.i.i67.i
  %.013.i.i.i.i.i68.i = phi ptr [ %i.kv, %.lr.ph.i.i.i.i.i67.i ], [ %.013.i.i.i.i.i68.i.ph, %.lr.ph.i.i.i.i.i67.i.preheader1244 ] ; 2 uses
  %.sroa.08.012.i.i.i.i.i69.i = phi ptr [ %i.ku, %.lr.ph.i.i.i.i.i67.i ], [ %.sroa.08.012.i.i.i.i.i69.i.ph, %.lr.ph.i.i.i.i.i67.i.preheader1244 ] ; 2 uses
  %i.kt = load i64, ptr %.sroa.08.012.i.i.i.i.i69.i, align 4
  store i64 %i.kt, ptr %.013.i.i.i.i.i68.i, align 4
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i69.i, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i68.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i70.i = icmp eq ptr %i.ku, %i.z
  br i1 %.not.i.i.i.i.i70.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, label %.lr.ph.i.i.i.i.i67.i, !llvm.loop !1448

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i: ; preds = %.lr.ph.i.i.i.i.i67.i, %middle.block1091, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i
  %.0.lcssa.i.i.i.i.i71.i = phi ptr [ %i.kj, %_ZNSt12_Vector_baseISt4pairIiiESaIS1_EE11_M_allocateEm.exit.i ], [ %i.kn, %middle.block1091 ], [ %i.kv, %.lr.ph.i.i.i.i.i67.i ] ; 4 uses
  %.0.lcssa.i.i.i.i.i71.i1043 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i71.i to i64 ; 3 uses
  %i.kw = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i132.pn to i64 ; 2 uses
  %i.kx = sub i64 %i.kw, %.sroa.0188.11061.le     ; 2 uses
  %i.ky = lshr i64 %i.kx, 3
  %i.kz = add nuw nsw i64 %i.ky, 1                ; 2 uses
  %min.iters.check1064 = icmp ult i64 %i.kx, 24
  %i.la = sub i64 %.sroa.0188.11061.le, %.0.lcssa.i.i.i.i.i71.i1043
  %diff.check1062 = icmp ugt i64 %i.la, -32
  %or.cond1236 = select i1 %min.iters.check1064, i1 true, i1 %diff.check1062
  br i1 %or.cond1236, label %.lr.ph.i.i.i.i73.i.preheader, label %vector.ph1065

vector.ph1065:                                    ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i
  %n.vec1066 = and i64 %i.kz, 4611686018427387900 ; 3 uses
  %i.lb = shl i64 %n.vec1066, 3                   ; 2 uses
  %i.lc = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71.i, i64 %i.lb ; 2 uses
  %i.ld = getelementptr i8, ptr %.sroa.0188.1, i64 %i.lb
  br label %vector.body1067

vector.body1067:                                  ; preds = %vector.body1067, %vector.ph1065
  %index1068 = phi i64 [ 0, %vector.ph1065 ], [ %index.next1073, %vector.body1067 ] ; 2 uses
  %i.le = shl i64 %index1068, 3                   ; 2 uses
  %next.gep1069 = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i71.i, i64 %i.le ; 2 uses
  %next.gep1070 = getelementptr i8, ptr %.sroa.0188.1, i64 %i.le ; 2 uses
  %i.lf = getelementptr i8, ptr %next.gep1070, i64 16
  %wide.load1071 = load <2 x i64>, ptr %next.gep1070, align 4
  %wide.load1072 = load <2 x i64>, ptr %i.lf, align 4
  %i.lg = getelementptr i8, ptr %next.gep1069, i64 16
  store <2 x i64> %wide.load1071, ptr %next.gep1069, align 4
  store <2 x i64> %wide.load1072, ptr %i.lg, align 4
  %index.next1073 = add nuw i64 %index1068, 4     ; 2 uses
  %i.lh = icmp eq i64 %index.next1073, %n.vec1066
  br i1 %i.lh, label %middle.block1074, label %vector.body1067, !llvm.loop !1449

middle.block1074:                                 ; preds = %vector.body1067
  %cmp.n1075 = icmp eq i64 %i.kz, %n.vec1066
  br i1 %cmp.n1075, label %.lr.ph.i.i.i.i.i80.i.preheader, label %.lr.ph.i.i.i.i73.i.preheader

.lr.ph.i.i.i.i73.i.preheader:                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i, %middle.block1074
  %.012.i.i.i.i74.i.ph = phi ptr [ %.0.lcssa.i.i.i.i.i71.i, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i ], [ %i.lc, %middle.block1074 ] ; 2 uses
  %.sroa.08.011.i.i.i.i75.i.ph = phi ptr [ %.sroa.0188.1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIiiES2_SaIS1_EET0_T_S5_S4_RT1_.exit.i ], [ %i.ld, %middle.block1074 ] ; 3 uses
  %.sroa.08.011.i.i.i.i75.i.ph1433 = ptrtoaddr ptr %.sroa.08.011.i.i.i.i75.i.ph to i64
  %i.li = sub i64 %i.kw, %.sroa.08.011.i.i.i.i75.i.ph1433 ; 2 uses
  %i.lj = lshr i64 %i.li, 3
  %i.lk = add nuw nsw i64 %i.lj, 1
  %xtraiter1434 = and i64 %i.lk, 7                ; 2 uses
  %lcmp.mod1435.not = icmp eq i64 %xtraiter1434, 0
  br i1 %lcmp.mod1435.not, label %.lr.ph.i.i.i.i73.i.prol.loopexit, label %.lr.ph.i.i.i.i73.i.prol

.lr.ph.i.i.i.i73.i.prol:                          ; preds = %.lr.ph.i.i.i.i73.i.preheader, %.lr.ph.i.i.i.i73.i.prol
  %.012.i.i.i.i74.i.prol = phi ptr [ %i.ln, %.lr.ph.i.i.i.i73.i.prol ], [ %.012.i.i.i.i74.i.ph, %.lr.ph.i.i.i.i73.i.preheader ] ; 2 uses
  %.sroa.08.011.i.i.i.i75.i.prol = phi ptr [ %i.lm, %.lr.ph.i.i.i.i73.i.prol ], [ %.sroa.08.011.i.i.i.i75.i.ph, %.lr.ph.i.i.i.i73.i.preheader ] ; 2 uses
  %prol.iter1436 = phi i64 [ %prol.iter1436.next, %.lr.ph.i.i.i.i73.i.prol ], [ 0, %.lr.ph.i.i.i.i73.i.preheader ]
  %i.ll = load i64, ptr %.sroa.08.011.i.i.i.i75.i.prol, align 4
  store i64 %i.ll, ptr %.012.i.i.i.i74.i.prol, align 4
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.08.011.i.i.i.i75.i.prol, i64 8 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i74.i.prol, i64 8 ; 3 uses
  %prol.iter1436.next = add i64 %prol.iter1436, 1 ; 2 uses
  %prol.iter1436.cmp.not = icmp eq i64 %prol.iter1436.next, %xtraiter1434
  br i1 %prol.iter1436.cmp.not, label %.lr.ph.i.i.i.i73.i.prol.loopexit, label %.lr.ph.i.i.i.i73.i.prol, !llvm.loop !1450
end_hunk_6
