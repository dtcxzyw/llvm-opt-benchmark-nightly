Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_rep_btree_navigator_test?download=true
inline.NumInlined: 3288
inline.NumDeleted: 1198
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestC2Ev:bb.a
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i unwind label %.loopexit.split-lp

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i
  %i.ff = phi i64 [ %i.ek, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i ], [ %i.fd, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i ] ; 2 uses
  %i.fg = phi ptr [ %i.el, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i ], [ %i.fc, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i ]
  %.0.i.i = phi ptr [ %i.en, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i.i ], [ %i.fe, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread5.i.i ] ; 2 uses
  %i.fh = icmp ugt i64 %i.ff, 1
  br i1 %i.fh, label %.lr.ph.i31, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit

.lr.ph.i31:                                       ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i
  %.013.i = phi i64 [ %i.fs, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ 1, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %.0412.i = phi ptr [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ], [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.013.i
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !156 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 12
  %i.fl = load i8, ptr %i.fk, align 4, !tbaa !162 ; 2 uses
  %or.cond.i.i5.i = icmp ugt i8 %i.fl, 4
  br i1 %or.cond.i.i5.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i31
  %i.fm = icmp eq i8 %i.fl, 1
  br i1 %i.fm, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !169

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i: ; preds = %bb.w
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !167
  %.phi.trans.insert.i.i8.i = getelementptr inbounds nuw i8, ptr %i.fo, i64 12
  %.pre.i.i9.i = load i8, ptr %.phi.trans.insert.i.i8.i, align 4, !tbaa !162
  %i.fp = icmp ugt i8 %.pre.i.i9.i, 4
  br i1 %i.fp, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, !prof !170

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %.lr.ph.i31
  %i.fq = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.fj)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i7.i, %bb.w
  %i.fr = invoke noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepE(ptr noundef %.0412.i, ptr noundef nonnull %i.fj)
          to label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i unwind label %.loopexit

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i
  %.0.i6.i = phi ptr [ %i.fq, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i10.i ], [ %i.fr, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i.i ] ; 2 uses
  %i.fs = add nuw i64 %.013.i, 1                  ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %i.fs, %i.ff
  br i1 %exitcond.not.i32, label %_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit, label %.lr.ph.i31, !llvm.loop !342

_ZN4absl12lts_2026052615cordrep_testing21CordRepBtreeFromFlatsENS0_4SpanIKPNS0_13cord_internal7CordRepEEE.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i
  %.04.lcssa.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit.i ], [ %.0.i6.i, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit.i ]
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.04.lcssa.i, ptr %i.ft, align 8, !tbaa !185
  ret void

bb.x:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.p, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ci, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.fu = load ptr, ptr %i.e, align 8, !tbaa !152 ; 3 uses
  %.not.i.i.i37 = icmp eq ptr %i.fu, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit38, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !153
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = sub i64 %i.fx, %i.fy
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef %i.fz) #34
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit38

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit38: ; preds = %bb.x, %bb.y
  %i.ga = load ptr, ptr %i.b, align 8, !tbaa !38  ; 2 uses
  %i.gb = icmp eq ptr %i.ga, %i.c
  br i1 %i.gb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit38
  %i.gc = load i64, ptr %i.c, align 8, !tbaa !42
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.gd) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit38, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %0) #32
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_140CordRepBtreeNavigatorTest_InitFirst_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8), (16, 24)) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 80), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !157

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.c)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i unwind label %bb.d, !inline_history !186

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #34, !inline_history !186
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34, !inline_history !186
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #35, !inline_history !186
  unreachable

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(88) %0) #32, !inline_history !186
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_140CordRepBtreeNavigatorTest_InitFirst_Test8TestBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeNavigator", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.99", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %16 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.val29 = load ptr, ptr %i.d, align 8, !tbaa !185 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val29, i64 13
  %i.f = load i8, ptr %i.e, align 1, !tbaa !42    ; 4 uses
  %i.g = zext i8 %i.f to i32
  store i32 %i.g, ptr %1, align 8, !tbaa !188
  %i.h = getelementptr inbounds nuw i8, ptr %.val29, i64 14
  %i.i = load i8, ptr %i.h, align 1               ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.k = zext i8 %i.f to i64                      ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  store ptr %.val29, ptr %i.l, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 %i.i, ptr %i.n, align 1, !tbaa !42
  %.018.i.i = zext i8 %i.i to i64                 ; 3 uses
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %indvars.iv.next.i.i.prol = add nsw i64 %i.k, -1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val29, i64 16
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.018.i.i
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156  ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.prol
  store ptr %i.q, ptr %i.r, align 8, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i.i.prol
  store i8 %i.t, ptr %i.u, align 1, !tbaa !42
  %.0.i.i.prol = zext i8 %i.t to i64              ; 2 uses
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %i.k, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.021.i.i.unr = phi i64 [ %.018.i.i, %.lr.ph.i.i.preheader ], [ %.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.01619.i.i.unr = phi ptr [ %.val29, %.lr.ph.i.i.preheader ], [ %i.q, %.lr.ph.i.i.prol ]
  %.0.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %.0.i.i.prol, %.lr.ph.i.i.prol ]
  %i.v = icmp eq i8 %i.f, 1
  br i1 %i.v, label %.loopexit.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.021.i.i = phi i64 [ %.0.i.i.1, %.lr.ph.i.i ], [ %.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01619.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.01619.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 16
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.021.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !156  ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i
  store ptr %i.y, ptr %i.z, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 14
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !42
  %.0.i.i = zext i8 %i.ab to i64
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !156 ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i.i.1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !42
  %.0.i.i.1 = zext i8 %i.ai to i64                ; 2 uses
  %i.ak = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.ak, label %.lr.ph.i.i, label %.loopexit.loopexit, !llvm.loop !5

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.0.i.i.lcssa = phi i64 [ %.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.0.i.i.1, %.lr.ph.i.i ]
  %.pre = load i32, ptr %1, align 8, !tbaa !188
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.al = phi i32 [ 0, %bb.a ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %.018.i.i, %bb.a ], [ %.0.i.i.lcssa, %.loopexit.loopexit ]
  %i.am = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0.lcssa.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !156
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.aq = icmp sgt i32 %i.al, -1                  ; 2 uses
  %i.ar = zext i1 %i.aq to i8
  store i8 %i.ar, ptr %2, align 8, !tbaa !106
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.as, align 8, !tbaa !189
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.at, align 8, !tbaa !191
  br i1 %i.aq, label %bb.n, label %bb.b

bb.b:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.au = load ptr, ptr %6, align 8, !tbaa !38
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !40
  store i64 %i.aw, ptr %5, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.au, ptr %i.ax, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, i64 92, ptr nonnull @.str.1, i32 noundef 112, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %5)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  %i.ay = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !42
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bd = load ptr, ptr %3, align 8, !tbaa !111   ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i30, label %bb.l, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !37
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(128) %i.bd) #32, !inline_history !1
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit36

bb.h:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.i:                                             ; preds = %bb.d
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.j ], [ %i.bj, %bb.i ] ; 2 uses
  %i.bl = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.k
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !42
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bq = load ptr, ptr %3, align 8, !tbaa !111   ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(128) %i.bq) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit36

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.g ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.av

bb.l:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.pr = load ptr, ptr %i.as, align 8, !tbaa !109 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load ptr, ptr %.pr, align 8, !tbaa !38  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.bw = icmp eq ptr %i.bu, %i.bv
  br i1 %i.bw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !42
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.by) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #34
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.thread

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.thread: ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %.val72 = load ptr, ptr %i.d, align 8, !tbaa !185
  store ptr %.val72, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
end_hunk_0
begin_hunk_1_@_ZN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE12DescribeImplINS9_11ValuePolicyINS0_9EqMatcherIS6_EELb1EEEEEvRKS9_PSob:bb.a
  br label %_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEES7_St8equal_toIvEE18DescribeNegationToEPSo.exit

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d) ; 0 uses
  br label %_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEES7_St8equal_toIvEE18DescribeNegationToEPSo.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.43, i64 noundef 11) ; 0 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !156  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.47, i64 noundef 4) ; 0 uses
  br label %_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEES7_St8equal_toIvEE18DescribeNegationToEPSo.exit

bb.g:                                             ; preds = %bb.e
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIPKvEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.j) ; 0 uses
  br label %_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEES7_St8equal_toIvEE18DescribeNegationToEPSo.exit

_ZNK7testing8internal14ComparisonBaseINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEES7_St8equal_toIvEE18DescribeNegationToEPSo.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE16GetDescriberImplINS9_11ValuePolicyINS0_9EqMatcherIS6_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_InitLast_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_InitLast_TestEE17CreateTestFactoryEm(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_InitLast_TestEEE, i64 16), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !421
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_InitLast_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_InitLast_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceImE10parameter_E, align 8, !tbaa !69
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #33 ; 5 uses
  invoke fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_InitLast_TestE, i64 16), ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_InitLast_TestE, i64 80), ptr %i.c, align 8, !tbaa !37
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #34
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_InitLast_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8), (16, 24)) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 80), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !157

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.c)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i unwind label %bb.d, !inline_history !186

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #34, !inline_history !186
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34, !inline_history !186
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #35, !inline_history !186
  unreachable

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(88) %0) #32, !inline_history !186
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_InitLast_Test8TestBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeNavigator", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %8 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.99", align 8 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %12 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %16 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.val29 = load ptr, ptr %i.d, align 8, !tbaa !185 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val29, i64 13
  %i.f = load i8, ptr %i.e, align 1, !tbaa !42    ; 4 uses
  %i.g = zext i8 %i.f to i32
  store i32 %i.g, ptr %1, align 8, !tbaa !188
  %i.h = getelementptr inbounds nuw i8, ptr %.val29, i64 15
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = add nsw i64 %i.j, -1                     ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.m = zext i8 %i.f to i64                      ; 5 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.m
  store ptr %.val29, ptr %i.n, align 8, !tbaa !97
  %i.o = trunc i64 %i.k to i8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  store i8 %i.o, ptr %i.q, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.m, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %indvars.iv.next.i.i.prol = add nsw i64 %i.m, -1 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val29, i64 16
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.k
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !156  ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i.i.prol
  store ptr %i.t, ptr %i.u, align 8, !tbaa !97
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 15
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = add nsw i64 %i.x, -1                     ; 3 uses
  %i.z = trunc i64 %i.y to i8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next.i.i.prol
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !42
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %i.m, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.020.i.i.unr = phi i64 [ %i.k, %.lr.ph.i.i.preheader ], [ %i.y, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %.val29, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %i.y, %.lr.ph.i.i.prol ]
  %i.ab = icmp eq i8 %i.f, 1
  br i1 %i.ab, label %.loopexit.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.020.i.i = phi i64 [ %i.at, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01618.i.i = phi ptr [ %i.ao, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.020.i.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !156 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.next.i.i
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !97
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 15
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i64
  %i.aj = add nsw i64 %i.ai, -1                   ; 2 uses
  %i.ak = trunc i64 %i.aj to i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next.i.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !42
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aj
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !156 ; 3 uses
  %i.ap = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !97
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 15
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = zext i8 %i.ar to i64
  %i.at = add nsw i64 %i.as, -1                   ; 3 uses
  %i.au = trunc i64 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !42
  %i.aw = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.aw, label %.lr.ph.i.i, label %.loopexit.loopexit, !llvm.loop !8

.loopexit.loopexit:                               ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.lcssa = phi i64 [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.at, %.lr.ph.i.i ]
  %.pre = load i32, ptr %1, align 8, !tbaa !188
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.ax = phi i32 [ 0, %bb.a ], [ %.pre, %.loopexit.loopexit ] ; 2 uses
  %.0.lcssa.i.i = phi i64 [ %i.k, %bb.a ], [ %.lcssa, %.loopexit.loopexit ]
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !97
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.0.lcssa.i.i
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !156
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.bc = icmp sgt i32 %i.ax, -1                  ; 2 uses
  %i.bd = zext i1 %i.bc to i8
  store i8 %i.bd, ptr %2, align 8, !tbaa !106
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.be, align 8, !tbaa !189
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.bf, align 8, !tbaa !191
  br i1 %i.bc, label %bb.n, label %bb.b

bb.b:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.bg = load ptr, ptr %6, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !40
  store i64 %i.bi, ptr %5, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.bg, ptr %i.bj, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, i64 92, ptr nonnull @.str.1, i32 noundef 121, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %5)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  %i.bk = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !42
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bp = load ptr, ptr %3, align 8, !tbaa !111   ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i30, label %bb.l, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(128) %i.bp) #32, !inline_history !1
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit36

bb.h:                                             ; preds = %bb.c
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

bb.i:                                             ; preds = %bb.d
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.bw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bw, %bb.j ], [ %i.bv, %bb.i ] ; 2 uses
  %i.bx = load ptr, ptr %6, align 8, !tbaa !38    ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.k
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !42
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.h ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %.pn, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.cc = load ptr, ptr %3, align 8, !tbaa !111   ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !37
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(128) %i.cc) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit36

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bt, %bb.g ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.av

bb.l:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %.pr = load ptr, ptr %i.be, align 8, !tbaa !109 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = load ptr, ptr %.pr, align 8, !tbaa !38  ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.pr, i64 16 ; 2 uses
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.m
  %i.cj = load i64, ptr %i.ch, align 8, !tbaa !42
  %i.ck = add i64 %i.cj, 1
  call void @_ZdlPvm(ptr noundef %i.cg, i64 noundef %i.ck) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef 32) #34
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.thread

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit.thread: ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
end_hunk_1
begin_hunk_2_@_ZThn16_N4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_InitLast_TestD0Ev:bb.a

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_InitLast_TestD0Ev.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(88) %i.a) #32, !inline_history !186
  tail call void @_ZdlPvm(ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 noundef 88) #34
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_NextPrev_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_NextPrev_TestEE17CreateTestFactoryEm(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_NextPrev_TestEEE, i64 16), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !423
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_NextPrev_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_NextPrev_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceImE10parameter_E, align 8, !tbaa !69
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #33 ; 5 uses
  invoke fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_NextPrev_TestE, i64 16), ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_NextPrev_TestE, i64 80), ptr %i.c, align 8, !tbaa !37
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #34
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_NextPrev_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8), (16, 24)) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 80), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !157

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.c)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i unwind label %bb.d, !inline_history !186

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #34, !inline_history !186
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34, !inline_history !186
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #35, !inline_history !186
  unreachable

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(88) %0) #32, !inline_history !186
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_NextPrev_Test8TestBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeNavigator", align 8 ; 17 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %19 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %27 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %35 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %39 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.k, align 8, !tbaa !185 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 13
  %i.m = load i8, ptr %i.l, align 1, !tbaa !42    ; 4 uses
  %i.n = zext i8 %i.m to i32
  store i32 %i.n, ptr %1, align 8, !tbaa !188
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 14
  %i.p = load i8, ptr %i.o, align 1               ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 24 uses
  %i.r = zext i8 %i.m to i64                      ; 5 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r
  store ptr %.val, ptr %i.s, align 8, !tbaa !97
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 40 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 %i.p, ptr %i.u, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.r, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %.021.i.i.prol = zext i8 %i.p to i64
  %indvars.iv.next.i.i.prol = add nsw i64 %i.r, -1 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %.021.i.i.prol
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !156  ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i.prol
  store ptr %i.x, ptr %i.y, align 8, !tbaa !97
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 14
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i.prol
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !42
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %i.r, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.021.i.i.in.unr = phi i8 [ %i.p, %.lr.ph.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.prol ]
  %.01619.i.i.unr = phi ptr [ %.val, %.lr.ph.i.i.preheader ], [ %i.x, %.lr.ph.i.i.prol ]
  %i.ac = icmp eq i8 %i.m, 1
  br i1 %i.ac, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.021.i.i.in = phi i8 [ %i.ap, %.lr.ph.i.i ], [ %.021.i.i.in.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01619.i.i = phi ptr [ %i.am, %.lr.ph.i.i ], [ %.01619.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.021.i.i = zext i8 %.021.i.i.in to i64
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.021.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !156 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !42
  %.021.i.i.1 = zext i8 %i.ai to i64
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.021.i.i.1
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !156 ; 3 uses
  %i.an = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i
  store ptr %i.am, ptr %i.an, align 8, !tbaa !97
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 14
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i.1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !42
  %i.ar = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, !llvm.loop !5

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !97  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i64 0, ptr %3, align 8, !alias.scope !432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.au = load i8, ptr %i.t, align 4, !tbaa !42   ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 14
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !42
  %i.ax = icmp eq i8 %i.aw, %i.au
  br i1 %i.ax, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit
  %i.ay = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 0)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  %exitcond.not.i.i529 = icmp slt i32 %i.ay, 1
  br i1 %exitcond.not.i.i529, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit, label %.lr.ph532

bb.c:                                             ; preds = %.lr.ph532
  %indvars.iv.next38.i.i = add nuw i32 %indvars.iv37.i.i530, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i101, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit, label %.lr.ph532, !llvm.loop !9

.lr.ph532:                                        ; preds = %bb.b, %bb.c
  %indvars.iv.i.i100531 = phi i64 [ %indvars.iv.next.i.i101, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %indvars.iv37.i.i530 = phi i32 [ %indvars.iv.next38.i.i, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %indvars.iv.next.i.i101 = add nuw nsw i64 %indvars.iv.i.i100531, 1 ; 5 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i101
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !97 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i101
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !42  ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !42
  %i.bf = icmp eq i8 %i.be, %i.bc
  br i1 %i.bf, label %bb.c, label %bb.d, !llvm.loop !9

bb.d:                                             ; preds = %.lr.ph532
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i101
  %i.bh = zext i8 %i.bc to i64
  %i.bi = add nsw i64 %i.bh, -1                   ; 3 uses
  %i.bj = trunc i64 %i.bi to i8
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !42
  %i.bk = sext i32 %indvars.iv37.i.i530 to i64    ; 2 uses
  %i.bl = and i32 %indvars.iv37.i.i530, 1
  %lcmp.mod610.not = icmp eq i32 %i.bl, 0
  br i1 %lcmp.mod610.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bi
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i.prol = add nsw i64 %i.bk, -1 ; 3 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i.prol
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !97
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 15
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !42
  %i.bs = zext i8 %i.br to i64
  %i.bt = add nsw i64 %i.bs, -1                   ; 3 uses
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i.prol
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !42
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.d
  %indvars.iv40.i.i.unr = phi i64 [ %i.bk, %bb.d ], [ %indvars.iv.next41.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.017.i.i.unr = phi ptr [ %i.ba, %bb.d ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %.016.i.i.unr = phi i64 [ %i.bi, %bb.d ], [ %i.bt, %.prol.loopexit.unr-lcssa ]
  %.lcssa601.unr = phi ptr [ poison, %bb.d ], [ %i.bo, %.prol.loopexit.unr-lcssa ]
  %.lcssa600.unr = phi i64 [ poison, %bb.d ], [ %i.bt, %.prol.loopexit.unr-lcssa ]
  %i.bw = icmp eq i64 %indvars.iv.i.i100531, 0
  br i1 %i.bw, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i.1, %.new ], [ %indvars.iv40.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.017.i.i = phi ptr [ %i.cj, %.new ], [ %.017.i.i.unr, %.prol.loopexit ]
  %.016.i.i = phi i64 [ %i.co, %.new ], [ %.016.i.i.unr, %.prol.loopexit ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 16
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.016.i.i
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i = add nsw i64 %indvars.iv40.i.i, -1 ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !97
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 15
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !42
  %i.cd = zext i8 %i.cc to i64
  %i.ce = add nsw i64 %i.cd, -1                   ; 2 uses
  %i.cf = trunc i64 %i.ce to i8
  %i.cg = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !42
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.ce
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i.1 = add nsw i64 %indvars.iv40.i.i, -2 ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !97
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 15
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !42
  %i.cn = zext i8 %i.cm to i64
  %i.co = add nsw i64 %i.cn, -1                   ; 3 uses
  %i.cp = trunc i64 %i.co to i8
  %i.cq = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i.1
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !42
  %i.cr = icmp sgt i64 %indvars.iv40.i.i, 2
  br i1 %i.cr, label %.new, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i, !llvm.loop !10

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit
  %i.cs = add i8 %i.au, -1                        ; 2 uses
  store i8 %i.cs, ptr %i.t, align 4, !tbaa !42
  %i.ct = zext i8 %i.cs to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i: ; preds = %.prol.loopexit, %.new, %bb.e
  %.lcssa13.sink.i = phi ptr [ %i.as, %bb.e ], [ %.lcssa601.unr, %.prol.loopexit ], [ %i.cj, %.new ]
  %.lcssa.sink.i = phi i64 [ %i.ct, %bb.e ], [ %.lcssa600.unr, %.prol.loopexit ], [ %i.co, %.new ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.lcssa13.sink.i, i64 16
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.lcssa.sink.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit: ; preds = %bb.c, %bb.b, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i
  %i.cx = phi ptr [ %i.cw, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i ], [ null, %bb.b ], [ null, %bb.c ]
  store ptr %i.cx, ptr %i.a, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cy = load i8, ptr %2, align 8, !tbaa !106, !range !107, !noundef !108
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.o, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !109 ; 2 uses
  %.not.i.i102 = icmp eq ptr %i.db, null
  br i1 %.not.i.i102, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.h, %bb.g
  %i.dd = phi ptr [ %i.dc, %bb.h ], [ @.str.56, %bb.g ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 132, ptr noundef %i.dd)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.de = load ptr, ptr %4, align 8, !tbaa !111   ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.de, null
  br i1 %.not.i.i103, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.j
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !37
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(128) %i.de) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.o

bb.k:                                             ; preds = %bb.f
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit106

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.dk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.m ], [ %i.dj, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.dl = load ptr, ptr %4, align 8, !tbaa !111   ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i104, label %_ZN7testing7MessageD2Ev.exit106, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %bb.n
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !37
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(128) %i.dl) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit106

_ZN7testing7MessageD2Ev.exit106:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105, %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.di, %bb.k ], [ %.pn, %bb.n ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.ei

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit, %_ZN7testing7MessageD2Ev.exit
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !109 ; 4 uses
  %.not.i.i107 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i107, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !38 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 16 ; 2 uses
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.du = load i64, ptr %i.ds, align 8, !tbaa !42
  %i.dv = add i64 %i.du, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.dv) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.o, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.dw = load ptr, ptr %i.at, align 8, !tbaa !154
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !156
  store ptr %i.dx, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.dy = load ptr, ptr %i.q, align 8, !tbaa !97  ; 3 uses
  %i.dz = load i8, ptr %i.t, align 4, !tbaa !42   ; 3 uses
  %i.ea = zext i8 %i.dz to i64                    ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !156
  store ptr %i.ed, ptr %i.b, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.ee = load i8, ptr %6, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ef = trunc nuw i8 %i.ee to i1
  br i1 %i.ef, label %bb.z, label %bb.q

bb.q:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !109 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i108, label %_ZNK7testing15AssertionResult15failure_messageEv.exit109, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit109

_ZNK7testing15AssertionResult15failure_messageEv.exit109: ; preds = %bb.s, %bb.r
  %i.ej = phi ptr [ %i.ei, %bb.s ], [ @.str.56, %bb.r ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 133, ptr noundef %i.ej)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit109
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.ek = load ptr, ptr %8, align 8, !tbaa !111   ; 3 uses
  %.not.i.i110 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i110, label %_ZN7testing7MessageD2Ev.exit112, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111: ; preds = %bb.u
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !37
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(128) %i.ek) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit112

_ZN7testing7MessageD2Ev.exit112:                  ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit115

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit109
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.eq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn63 = phi { ptr, i32 } [ %i.eq, %bb.x ], [ %i.ep, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.er = load ptr, ptr %8, align 8, !tbaa !111   ; 3 uses
  %.not.i.i113 = icmp eq ptr %i.er, null
  br i1 %.not.i.i113, label %_ZN7testing7MessageD2Ev.exit115, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114: ; preds = %bb.y
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !37
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(128) %i.er) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit115

_ZN7testing7MessageD2Ev.exit115:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114, %bb.y, %bb.v
  %.pn63.pn = phi { ptr, i32 } [ %i.eo, %bb.v ], [ %.pn63, %bb.y ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ei

bb.z:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit112
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !109 ; 4 uses
  %.not.i.i116 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i116, label %_ZN7testing15AssertionResultD2Ev.exit120, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !38 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.aa
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !42
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.ew, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit120

_ZN7testing15AssertionResultD2Ev.exit120:         ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !168
  %i.fe = load ptr, ptr %i.at, align 8, !tbaa !152 ; 2 uses
  %i.ff = ptrtoint ptr %i.fd to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %.not331 = icmp ugt i64 %i.fh, 8
  br i1 %.not331, label %.lr.ph, label %.critedge95

.lr.ph:                                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit120
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %_ZN7testing15AssertionResultD2Ev.exit163
  %i.fk = phi i8 [ %i.dz, %.lr.ph ], [ %i.iw, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  %i.fl = phi ptr [ %i.dy, %.lr.ph ], [ %i.iv, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  %i.fm = phi ptr [ %i.fe, %.lr.ph ], [ %i.jz, %_ZN7testing15AssertionResultD2Ev.exit163 ]
  %.056332 = phi i64 [ 1, %.lr.ph ], [ %i.jx, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.056332
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !156
  store ptr %i.fo, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.fp = zext i8 %i.fk to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fl, i64 15
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !42
  %i.fs = zext i8 %i.fr to i64
  %i.ft = add nsw i64 %i.fs, -1
  %i.fu = icmp eq i64 %i.ft, %i.fp
  br i1 %i.fu, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.fv = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i122 = call i32 @llvm.smax.i32(i32 %i.fv, i32 0)
  %wide.trip.count.i.i123 = zext nneg i32 %smax.i.i122 to i64
  %exitcond.not.i.i126533 = icmp slt i32 %i.fv, 1
  br i1 %exitcond.not.i.i126533, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit, label %.lr.ph536

bb.ad:                                            ; preds = %.lr.ph536
  %indvars.iv.next38.i.i128 = add nuw i32 %indvars.iv37.i.i124534, 1
  %exitcond.not.i.i126 = icmp eq i64 %indvars.iv.next.i.i127, %wide.trip.count.i.i123
  br i1 %exitcond.not.i.i126, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit, label %.lr.ph536, !llvm.loop !11

.lr.ph536:                                        ; preds = %bb.ac, %bb.ad
  %indvars.iv.i.i125535 = phi i64 [ %indvars.iv.next.i.i127, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %indvars.iv37.i.i124534 = phi i32 [ %indvars.iv.next38.i.i128, %bb.ad ], [ 1, %bb.ac ] ; 3 uses
  %indvars.iv.next.i.i127 = add nuw nsw i64 %indvars.iv.i.i125535, 1 ; 5 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i127
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !97 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i127
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !42
  %i.ga = zext i8 %i.fz to i64
  %i.gb = add nuw nsw i64 %i.ga, 1                ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 15
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !42
  %i.ge = zext i8 %i.gd to i64
  %i.gf = icmp eq i64 %i.gb, %i.ge
  br i1 %i.gf, label %bb.ad, label %bb.ae, !llvm.loop !11

bb.ae:                                            ; preds = %.lr.ph536
  %i.gg = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i127
  %i.gh = trunc i64 %i.gb to i8
  store i8 %i.gh, ptr %i.gg, align 1, !tbaa !42
  %i.gi = sext i32 %indvars.iv37.i.i124534 to i64 ; 2 uses
  %i.gj = and i32 %indvars.iv37.i.i124534, 1
  %lcmp.mod616.not = icmp eq i32 %i.gj, 0
  br i1 %lcmp.mod616.not, label %.prol.loopexit612, label %.prol.loopexit612.unr-lcssa

.prol.loopexit612.unr-lcssa:                      ; preds = %bb.ae
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gb
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i132.prol = add nsw i64 %i.gi, -1 ; 3 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i132.prol
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !97
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 14
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !42  ; 2 uses
  %i.gq = zext i8 %i.gp to i64                    ; 2 uses
  %i.gr = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i132.prol
  store i8 %i.gp, ptr %i.gr, align 1, !tbaa !42
  br label %.prol.loopexit612

.prol.loopexit612:                                ; preds = %.prol.loopexit612.unr-lcssa, %bb.ae
  %indvars.iv40.i.i129.unr = phi i64 [ %i.gi, %bb.ae ], [ %indvars.iv.next41.i.i132.prol, %.prol.loopexit612.unr-lcssa ]
  %.017.i.i130.unr = phi ptr [ %i.fx, %bb.ae ], [ %i.gm, %.prol.loopexit612.unr-lcssa ]
  %.016.i.i131.unr = phi i64 [ %i.gb, %bb.ae ], [ %i.gq, %.prol.loopexit612.unr-lcssa ]
  %.lcssa587.unr = phi ptr [ poison, %bb.ae ], [ %i.gm, %.prol.loopexit612.unr-lcssa ]
  %.lcssa586.unr = phi i64 [ poison, %bb.ae ], [ %i.gq, %.prol.loopexit612.unr-lcssa ]
  %i.gs = icmp eq i64 %indvars.iv.i.i125535, 0
  br i1 %i.gs, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i, label %.new613

.new613:                                          ; preds = %.prol.loopexit612, %.new613
  %indvars.iv40.i.i129 = phi i64 [ %indvars.iv.next41.i.i132.1, %.new613 ], [ %indvars.iv40.i.i129.unr, %.prol.loopexit612 ] ; 4 uses
  %.017.i.i130 = phi ptr [ %i.hd, %.new613 ], [ %.017.i.i130.unr, %.prol.loopexit612 ]
  %.016.i.i131 = phi i64 [ %i.hh, %.new613 ], [ %.016.i.i131.unr, %.prol.loopexit612 ]
  %i.gt = getelementptr inbounds nuw i8, ptr %.017.i.i130, i64 16
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %.016.i.i131
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i132 = add nsw i64 %indvars.iv40.i.i129, -1 ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i132
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !97
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 14
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !42  ; 2 uses
  %i.gz = zext i8 %i.gy to i64
  %i.ha = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i132
  store i8 %i.gy, ptr %i.ha, align 1, !tbaa !42
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gz
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i132.1 = add nsw i64 %indvars.iv40.i.i129, -2 ; 2 uses
  %i.he = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i129
  store ptr %i.hd, ptr %i.he, align 8, !tbaa !97
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 14
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !42  ; 2 uses
  %i.hh = zext i8 %i.hg to i64                    ; 2 uses
  %i.hi = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i132.1
  store i8 %i.hg, ptr %i.hi, align 1, !tbaa !42
  %i.hj = icmp sgt i64 %indvars.iv40.i.i129, 2
  br i1 %i.hj, label %.new613, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i, !llvm.loop !12

bb.af:                                            ; preds = %bb.ab
  %i.hk = add i8 %i.fk, 1                         ; 2 uses
  store i8 %i.hk, ptr %i.t, align 4, !tbaa !42
  %i.hl = zext i8 %i.hk to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i: ; preds = %.prol.loopexit612, %.new613, %bb.af
  %.lcssa12.sink.i = phi ptr [ %i.fl, %bb.af ], [ %.lcssa587.unr, %.prol.loopexit612 ], [ %i.hd, %.new613 ]
  %.lcssa.sink.i121 = phi i64 [ %i.hl, %bb.af ], [ %.lcssa586.unr, %.prol.loopexit612 ], [ %i.hh, %.new613 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i, i64 16
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hm, i64 %.lcssa.sink.i121
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit: ; preds = %bb.ad, %bb.ac, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i
  %i.hp = phi ptr [ %i.ho, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i ], [ null, %bb.ac ], [ null, %bb.ad ]
  store ptr %i.hp, ptr %i.c, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.hq = load i8, ptr %10, align 8, !tbaa !106, !range !107, !noundef !108
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.hs = load ptr, ptr %i.fi, align 8, !tbaa !109 ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.hs, null
  br i1 %.not.i.i133, label %_ZNK7testing15AssertionResult15failure_messageEv.exit134, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit134

_ZNK7testing15AssertionResult15failure_messageEv.exit134: ; preds = %bb.ai, %bb.ah
  %i.hu = phi ptr [ %i.ht, %bb.ai ], [ @.str.56, %bb.ah ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 135, ptr noundef %i.hu)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit134
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.hv = load ptr, ptr %12, align 8, !tbaa !111  ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.hv, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.ak
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !37
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = load ptr, ptr %i.hx, align 8
  call void %i.hy(ptr noundef nonnull align 8 dereferenceable(128) %i.hv) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %bb.ak, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.hz = load ptr, ptr %i.fi, align 8, !tbaa !109 ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i138, label %bb.bd, label %bb.al

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !38 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 16 ; 2 uses
  %i.ic = icmp eq ptr %i.ia, %i.ib
  br i1 %i.ic, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.al
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !42
  %i.ie = add i64 %i.id, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.ie) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 32) #34
  br label %bb.bd

bb.am:                                            ; preds = %bb.ag
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit145

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit134
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.ih = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn66 = phi { ptr, i32 } [ %i.ih, %bb.ao ], [ %i.ig, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.ii = load ptr, ptr %12, align 8, !tbaa !111  ; 3 uses
  %.not.i.i143 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i143, label %_ZN7testing7MessageD2Ev.exit145, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144: ; preds = %bb.ap
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !37
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %i.il = load ptr, ptr %i.ik, align 8
  call void %i.il(ptr noundef nonnull align 8 dereferenceable(128) %i.ii) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit145

_ZN7testing7MessageD2Ev.exit145:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, %bb.ap, %bb.am
  %.pn66.pn = phi { ptr, i32 } [ %i.if, %bb.am ], [ %.pn66, %bb.ap ], [ %.pn66, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.ei

.critedge:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit
  %i.im = load ptr, ptr %i.fi, align 8, !tbaa !109 ; 4 uses
  %.not.i.i146 = icmp eq ptr %i.im, null
  br i1 %.not.i.i146, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !38 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.im, i64 16 ; 2 uses
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147: ; preds = %bb.aq
  %i.iq = load i64, ptr %i.io, align 8, !tbaa !42
  %i.ir = add i64 %i.iq, 1
  call void @_ZdlPvm(ptr noundef %i.in, i64 noundef %i.ir) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147
  call void @_ZdlPvm(ptr noundef nonnull %i.im, i64 noundef 32) #34
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.is = load ptr, ptr %i.at, align 8, !tbaa !152
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.056332
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !156
  store ptr %i.iu, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.iv = load ptr, ptr %i.q, align 8, !tbaa !97  ; 3 uses
  %i.iw = load i8, ptr %i.t, align 4, !tbaa !42   ; 3 uses
  %i.ix = zext i8 %i.iw to i64                    ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %i.ix
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !156
  store ptr %i.ja, ptr %i.d, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.jb = load i8, ptr %14, align 8, !tbaa !106, !range !107, !noundef !108
  %i.jc = trunc nuw i8 %i.jb to i1
  br i1 %i.jc, label %bb.bb, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.jd = load ptr, ptr %i.fj, align 8, !tbaa !109 ; 2 uses
  %.not.i.i151 = icmp eq ptr %i.jd, null
  br i1 %.not.i.i151, label %_ZNK7testing15AssertionResult15failure_messageEv.exit152, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit152

_ZNK7testing15AssertionResult15failure_messageEv.exit152: ; preds = %bb.au, %bb.at
  %i.jf = phi ptr [ %i.je, %bb.au ], [ @.str.56, %bb.at ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 136, ptr noundef %i.jf)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit152
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.jg = load ptr, ptr %16, align 8, !tbaa !111  ; 3 uses
  %.not.i.i153 = icmp eq ptr %i.jg, null
  br i1 %.not.i.i153, label %_ZN7testing7MessageD2Ev.exit155, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154: ; preds = %bb.aw
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !37
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  %i.jj = load ptr, ptr %i.ji, align 8
  call void %i.jj(ptr noundef nonnull align 8 dereferenceable(128) %i.jg) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit155

_ZN7testing7MessageD2Ev.exit155:                  ; preds = %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.bb

bb.ax:                                            ; preds = %bb.as
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit158

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit152
  %i.jl = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.jm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn89 = phi { ptr, i32 } [ %i.jm, %bb.az ], [ %i.jl, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.jn = load ptr, ptr %16, align 8, !tbaa !111  ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %bb.ba
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !37
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(128) %i.jn) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157, %bb.ba, %bb.ax
  %.pn89.pn = phi { ptr, i32 } [ %i.jk, %bb.ax ], [ %.pn89, %bb.ba ], [ %.pn89, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.ei

bb.bb:                                            ; preds = %bb.ar, %_ZN7testing7MessageD2Ev.exit155
  %i.jr = load ptr, ptr %i.fj, align 8, !tbaa !109 ; 4 uses
  %.not.i.i159 = icmp eq ptr %i.jr, null
  br i1 %.not.i.i159, label %_ZN7testing15AssertionResultD2Ev.exit163, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !38 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160: ; preds = %bb.bc
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !42
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jw) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160
  call void @_ZdlPvm(ptr noundef nonnull %i.jr, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit163

_ZN7testing15AssertionResultD2Ev.exit163:         ; preds = %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.jx = add nuw i64 %.056332, 1                 ; 2 uses
  %i.jy = load ptr, ptr %i.fc, align 8, !tbaa !168
  %i.jz = load ptr, ptr %i.at, align 8, !tbaa !152 ; 2 uses
  %i.ka = ptrtoint ptr %i.jy to i64
  %i.kb = ptrtoint ptr %i.jz to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = ashr exact i64 %i.kc, 3
  %.not = icmp ult i64 %i.jx, %i.kd
  br i1 %.not, label %bb.ab, label %.critedge95, !llvm.loop !426

bb.bd:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %_ZN7testing7MessageD2Ev.exit137
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.eh

.critedge95:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit163, %_ZN7testing15AssertionResultD2Ev.exit120
  %.pre-phi = phi i64 [ %i.ea, %_ZN7testing15AssertionResultD2Ev.exit120 ], [ %i.ix, %_ZN7testing15AssertionResultD2Ev.exit163 ]
  %i.ke = phi i8 [ %i.dz, %_ZN7testing15AssertionResultD2Ev.exit120 ], [ %i.iw, %_ZN7testing15AssertionResultD2Ev.exit163 ]
  %i.kf = phi ptr [ %i.dy, %_ZN7testing15AssertionResultD2Ev.exit120 ], [ %i.iv, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  store i64 0, ptr %19, align 8, !alias.scope !433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 15
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !42
  %i.ki = zext i8 %i.kh to i64
  %i.kj = add nsw i64 %i.ki, -1
  %i.kk = icmp eq i64 %i.kj, %.pre-phi
  br i1 %i.kk, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %.critedge95
  %i.kl = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i167 = call i32 @llvm.smax.i32(i32 %i.kl, i32 0)
  %wide.trip.count.i.i168 = zext nneg i32 %smax.i.i167 to i64
  %exitcond.not.i.i171537 = icmp slt i32 %i.kl, 1
  br i1 %exitcond.not.i.i171537, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit178, label %.lr.ph540

bb.bf:                                            ; preds = %.lr.ph540
  %indvars.iv.next38.i.i173 = add nuw i32 %indvars.iv37.i.i169538, 1
  %exitcond.not.i.i171 = icmp eq i64 %indvars.iv.next.i.i172, %wide.trip.count.i.i168
  br i1 %exitcond.not.i.i171, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit178, label %.lr.ph540, !llvm.loop !11

.lr.ph540:                                        ; preds = %bb.be, %bb.bf
  %indvars.iv.i.i170539 = phi i64 [ %indvars.iv.next.i.i172, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %indvars.iv37.i.i169538 = phi i32 [ %indvars.iv.next38.i.i173, %bb.bf ], [ 1, %bb.be ] ; 3 uses
  %indvars.iv.next.i.i172 = add nuw nsw i64 %indvars.iv.i.i170539, 1 ; 5 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i172
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !97 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i172
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !42
  %i.kq = zext i8 %i.kp to i64
  %i.kr = add nuw nsw i64 %i.kq, 1                ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 15
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !42
  %i.ku = zext i8 %i.kt to i64
  %i.kv = icmp eq i64 %i.kr, %i.ku
  br i1 %i.kv, label %bb.bf, label %bb.bg, !llvm.loop !11

bb.bg:                                            ; preds = %.lr.ph540
  %i.kw = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i172
  %i.kx = trunc i64 %i.kr to i8
  store i8 %i.kx, ptr %i.kw, align 1, !tbaa !42
  %i.ky = sext i32 %indvars.iv37.i.i169538 to i64 ; 2 uses
  %i.kz = and i32 %indvars.iv37.i.i169538, 1
  %lcmp.mod622.not = icmp eq i32 %i.kz, 0
  br i1 %lcmp.mod622.not, label %.prol.loopexit618, label %.prol.loopexit618.unr-lcssa

.prol.loopexit618.unr-lcssa:                      ; preds = %bb.bg
  %i.la = getelementptr inbounds nuw i8, ptr %i.kn, i64 16
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.la, i64 %i.kr
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i177.prol = add nsw i64 %i.ky, -1 ; 3 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i177.prol
  store ptr %i.lc, ptr %i.ld, align 8, !tbaa !97
  %i.le = getelementptr inbounds nuw i8, ptr %i.lc, i64 14
  %i.lf = load i8, ptr %i.le, align 1, !tbaa !42  ; 2 uses
  %i.lg = zext i8 %i.lf to i64                    ; 2 uses
  %i.lh = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i177.prol
  store i8 %i.lf, ptr %i.lh, align 1, !tbaa !42
  br label %.prol.loopexit618

.prol.loopexit618:                                ; preds = %.prol.loopexit618.unr-lcssa, %bb.bg
  %indvars.iv40.i.i174.unr = phi i64 [ %i.ky, %bb.bg ], [ %indvars.iv.next41.i.i177.prol, %.prol.loopexit618.unr-lcssa ]
  %.017.i.i175.unr = phi ptr [ %i.kn, %bb.bg ], [ %i.lc, %.prol.loopexit618.unr-lcssa ]
  %.016.i.i176.unr = phi i64 [ %i.kr, %bb.bg ], [ %i.lg, %.prol.loopexit618.unr-lcssa ]
  %.lcssa573.unr = phi ptr [ poison, %bb.bg ], [ %i.lc, %.prol.loopexit618.unr-lcssa ]
  %.lcssa572.unr = phi i64 [ poison, %bb.bg ], [ %i.lg, %.prol.loopexit618.unr-lcssa ]
  %i.li = icmp eq i64 %indvars.iv.i.i170539, 0
  br i1 %i.li, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i164, label %.new619

.new619:                                          ; preds = %.prol.loopexit618, %.new619
  %indvars.iv40.i.i174 = phi i64 [ %indvars.iv.next41.i.i177.1, %.new619 ], [ %indvars.iv40.i.i174.unr, %.prol.loopexit618 ] ; 4 uses
  %.017.i.i175 = phi ptr [ %i.lt, %.new619 ], [ %.017.i.i175.unr, %.prol.loopexit618 ]
  %.016.i.i176 = phi i64 [ %i.lx, %.new619 ], [ %.016.i.i176.unr, %.prol.loopexit618 ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.017.i.i175, i64 16
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.016.i.i176
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i177 = add nsw i64 %indvars.iv40.i.i174, -1 ; 2 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i177
  store ptr %i.ll, ptr %i.lm, align 8, !tbaa !97
  %i.ln = getelementptr inbounds nuw i8, ptr %i.ll, i64 14
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !42  ; 2 uses
  %i.lp = zext i8 %i.lo to i64
  %i.lq = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i177
  store i8 %i.lo, ptr %i.lq, align 1, !tbaa !42
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lr, i64 %i.lp
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i177.1 = add nsw i64 %indvars.iv40.i.i174, -2 ; 2 uses
  %i.lu = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i174
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !97
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lt, i64 14
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !42  ; 2 uses
  %i.lx = zext i8 %i.lw to i64                    ; 2 uses
  %i.ly = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i177.1
  store i8 %i.lw, ptr %i.ly, align 1, !tbaa !42
  %i.lz = icmp sgt i64 %indvars.iv40.i.i174, 2
  br i1 %i.lz, label %.new619, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i164, !llvm.loop !12

bb.bh:                                            ; preds = %.critedge95
  %i.ma = add i8 %i.ke, 1                         ; 2 uses
  store i8 %i.ma, ptr %i.t, align 4, !tbaa !42
  %i.mb = zext i8 %i.ma to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i164

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i164: ; preds = %.prol.loopexit618, %.new619, %bb.bh
  %.lcssa12.sink.i165 = phi ptr [ %i.kf, %bb.bh ], [ %.lcssa573.unr, %.prol.loopexit618 ], [ %i.lt, %.new619 ]
  %.lcssa.sink.i166 = phi i64 [ %i.mb, %bb.bh ], [ %.lcssa572.unr, %.prol.loopexit618 ], [ %i.lx, %.new619 ]
  %i.mc = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i165, i64 16
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %.lcssa.sink.i166
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit178

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit178: ; preds = %bb.bf, %bb.be, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i164
  %i.mf = phi ptr [ %i.me, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i164 ], [ null, %bb.be ], [ null, %bb.bf ]
  store ptr %i.mf, ptr %i.e, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.mg = load i8, ptr %18, align 8, !tbaa !106, !range !107, !noundef !108
  %i.mh = trunc nuw i8 %i.mg to i1
  br i1 %i.mh, label %bb.br, label %bb.bi

bb.bi:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit178
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.mi = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !109 ; 2 uses
  %.not.i.i179 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i179, label %_ZNK7testing15AssertionResult15failure_messageEv.exit180, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit180

_ZNK7testing15AssertionResult15failure_messageEv.exit180: ; preds = %bb.bk, %bb.bj
  %i.ml = phi ptr [ %i.mk, %bb.bk ], [ @.str.56, %bb.bj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 138, ptr noundef %i.ml)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit180
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.mm = load ptr, ptr %20, align 8, !tbaa !111  ; 3 uses
  %.not.i.i181 = icmp eq ptr %i.mm, null
  br i1 %.not.i.i181, label %_ZN7testing7MessageD2Ev.exit183, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182: ; preds = %bb.bm
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !37
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(128) %i.mm) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit183

_ZN7testing7MessageD2Ev.exit183:                  ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.br

bb.bn:                                            ; preds = %bb.bi
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit186

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit180
  %i.mr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.ms = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn69 = phi { ptr, i32 } [ %i.ms, %bb.bp ], [ %i.mr, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.mt = load ptr, ptr %20, align 8, !tbaa !111  ; 3 uses
  %.not.i.i184 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i184, label %_ZN7testing7MessageD2Ev.exit186, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185: ; preds = %bb.bq
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !37
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(128) %i.mt) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit186

_ZN7testing7MessageD2Ev.exit186:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185, %bb.bq, %bb.bn
  %.pn69.pn = phi { ptr, i32 } [ %i.mq, %bb.bn ], [ %.pn69, %bb.bq ], [ %.pn69, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.ei

bb.br:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit178, %_ZN7testing7MessageD2Ev.exit183
  %i.mx = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !109 ; 4 uses
  %.not.i.i187 = icmp eq ptr %i.my, null
  br i1 %.not.i.i187, label %_ZN7testing15AssertionResultD2Ev.exit191, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !38 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.my, i64 16 ; 2 uses
  %i.nb = icmp eq ptr %i.mz, %i.na
  br i1 %i.nb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188: ; preds = %bb.bs
  %i.nc = load i64, ptr %i.na, align 8, !tbaa !42
  %i.nd = add i64 %i.nc, 1
  call void @_ZdlPvm(ptr noundef %i.mz, i64 noundef %i.nd) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit191

_ZN7testing15AssertionResultD2Ev.exit191:         ; preds = %bb.br, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.ne = load ptr, ptr %i.fc, align 8, !tbaa !154
  %i.nf = getelementptr inbounds i8, ptr %i.ne, i64 -8
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !156
  store ptr %i.ng, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.nh = load ptr, ptr %i.q, align 8, !tbaa !97  ; 3 uses
  %i.ni = load i8, ptr %i.t, align 4, !tbaa !42   ; 3 uses
  %i.nj = zext i8 %i.ni to i64
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 16
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.nj
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !156
  store ptr %i.nm, ptr %i.f, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  %i.nn = load i8, ptr %22, align 8, !tbaa !106, !range !107, !noundef !108
  %i.no = trunc nuw i8 %i.nn to i1
  br i1 %i.no, label %bb.cc, label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit191
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.np = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !109 ; 2 uses
  %.not.i.i192 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i192, label %_ZNK7testing15AssertionResult15failure_messageEv.exit193, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit193

_ZNK7testing15AssertionResult15failure_messageEv.exit193: ; preds = %bb.bv, %bb.bu
  %i.ns = phi ptr [ %i.nr, %bb.bv ], [ @.str.56, %bb.bu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 139, ptr noundef %i.ns)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit193
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %i.nt = load ptr, ptr %24, align 8, !tbaa !111  ; 3 uses
  %.not.i.i194 = icmp eq ptr %i.nt, null
  br i1 %.not.i.i194, label %_ZN7testing7MessageD2Ev.exit196, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195: ; preds = %bb.bx
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !37
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(128) %i.nt) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit196

_ZN7testing7MessageD2Ev.exit196:                  ; preds = %bb.bx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.cc

bb.by:                                            ; preds = %bb.bt
  %i.nx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit199

bb.bz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit193
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bw
  %i.nz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn72 = phi { ptr, i32 } [ %i.nz, %bb.ca ], [ %i.ny, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %i.oa = load ptr, ptr %24, align 8, !tbaa !111  ; 3 uses
  %.not.i.i197 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i197, label %_ZN7testing7MessageD2Ev.exit199, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198: ; preds = %bb.cb
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !37
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(128) %i.oa) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit199

_ZN7testing7MessageD2Ev.exit199:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198, %bb.cb, %bb.by
  %.pn72.pn = phi { ptr, i32 } [ %i.nx, %bb.by ], [ %.pn72, %bb.cb ], [ %.pn72, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.ei

bb.cc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit191, %_ZN7testing7MessageD2Ev.exit196
  %i.oe = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !109 ; 4 uses
  %.not.i.i200 = icmp eq ptr %i.of, null
  br i1 %.not.i.i200, label %_ZN7testing15AssertionResultD2Ev.exit204, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !38 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.of, i64 16 ; 2 uses
  %i.oi = icmp eq ptr %i.og, %i.oh
  br i1 %i.oi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i201: ; preds = %bb.cd
  %i.oj = load i64, ptr %i.oh, align 8, !tbaa !42
  %i.ok = add i64 %i.oj, 1
  call void @_ZdlPvm(ptr noundef %i.og, i64 noundef %i.ok) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i201
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit204

_ZN7testing15AssertionResultD2Ev.exit204:         ; preds = %bb.cc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %i.ol = load ptr, ptr %i.fc, align 8, !tbaa !168
  %i.om = load ptr, ptr %i.at, align 8, !tbaa !152
  %i.on = ptrtoint ptr %i.ol to i64
  %i.oo = ptrtoint ptr %i.om to i64
  %i.op = sub i64 %i.on, %i.oo
  %i.oq = ashr exact i64 %i.op, 3                 ; 2 uses
  %.055333 = add nsw i64 %i.oq, -1                ; 2 uses
  %.not75334 = icmp eq i64 %.055333, 0
  br i1 %.not75334, label %.critedge99, label %.lr.ph337

.lr.ph337:                                        ; preds = %_ZN7testing15AssertionResultD2Ev.exit204
  %i.or = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.os = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph337, %_ZN7testing15AssertionResultD2Ev.exit250
  %i.ot = phi i8 [ %i.ni, %.lr.ph337 ], [ %i.si, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  %i.ou = phi ptr [ %i.nh, %.lr.ph337 ], [ %i.sh, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  %.055336 = phi i64 [ %.055333, %.lr.ph337 ], [ %.055, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  %.055.in335 = phi i64 [ %i.oq, %.lr.ph337 ], [ %.055336, %_ZN7testing15AssertionResultD2Ev.exit250 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  %i.ov = add i64 %.055.in335, -2                 ; 2 uses
  %i.ow = load ptr, ptr %i.at, align 8, !tbaa !152
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ow, i64 %i.ov
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !156
  store ptr %i.oy, ptr %27, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 14
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !42
  %i.pb = icmp eq i8 %i.pa, %i.ot
  br i1 %i.pb, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.pc = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i208 = call i32 @llvm.smax.i32(i32 %i.pc, i32 0)
  %wide.trip.count.i.i209 = zext nneg i32 %smax.i.i208 to i64
  %exitcond.not.i.i212541 = icmp slt i32 %i.pc, 1
  br i1 %exitcond.not.i.i212541, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219, label %.lr.ph544

bb.cg:                                            ; preds = %.lr.ph544
  %indvars.iv.next38.i.i214 = add nuw i32 %indvars.iv37.i.i210542, 1
  %exitcond.not.i.i212 = icmp eq i64 %indvars.iv.next.i.i213, %wide.trip.count.i.i209
  br i1 %exitcond.not.i.i212, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219, label %.lr.ph544, !llvm.loop !9

.lr.ph544:                                        ; preds = %bb.cf, %bb.cg
  %indvars.iv.i.i211543 = phi i64 [ %indvars.iv.next.i.i213, %bb.cg ], [ 0, %bb.cf ] ; 2 uses
  %indvars.iv37.i.i210542 = phi i32 [ %indvars.iv.next38.i.i214, %bb.cg ], [ 1, %bb.cf ] ; 3 uses
  %indvars.iv.next.i.i213 = add nuw nsw i64 %indvars.iv.i.i211543, 1 ; 5 uses
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i213
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !97 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i213
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !42  ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 14
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !42
  %i.pj = icmp eq i8 %i.pi, %i.pg
  br i1 %i.pj, label %bb.cg, label %bb.ch, !llvm.loop !9

bb.ch:                                            ; preds = %.lr.ph544
  %i.pk = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i213
  %i.pl = zext i8 %i.pg to i64
  %i.pm = add nsw i64 %i.pl, -1                   ; 3 uses
  %i.pn = trunc i64 %i.pm to i8
  store i8 %i.pn, ptr %i.pk, align 1, !tbaa !42
  %i.po = sext i32 %indvars.iv37.i.i210542 to i64 ; 2 uses
  %i.pp = and i32 %indvars.iv37.i.i210542, 1
  %lcmp.mod628.not = icmp eq i32 %i.pp, 0
  br i1 %lcmp.mod628.not, label %.prol.loopexit624, label %.prol.loopexit624.unr-lcssa

.prol.loopexit624.unr-lcssa:                      ; preds = %bb.ch
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %i.pm
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i218.prol = add nsw i64 %i.po, -1 ; 3 uses
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i218.prol
  store ptr %i.ps, ptr %i.pt, align 8, !tbaa !97
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 15
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !42
  %i.pw = zext i8 %i.pv to i64
  %i.px = add nsw i64 %i.pw, -1                   ; 3 uses
  %i.py = trunc i64 %i.px to i8
  %i.pz = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i218.prol
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !42
  br label %.prol.loopexit624

.prol.loopexit624:                                ; preds = %.prol.loopexit624.unr-lcssa, %bb.ch
  %indvars.iv40.i.i215.unr = phi i64 [ %i.po, %bb.ch ], [ %indvars.iv.next41.i.i218.prol, %.prol.loopexit624.unr-lcssa ]
  %.017.i.i216.unr = phi ptr [ %i.pe, %bb.ch ], [ %i.ps, %.prol.loopexit624.unr-lcssa ]
  %.016.i.i217.unr = phi i64 [ %i.pm, %bb.ch ], [ %i.px, %.prol.loopexit624.unr-lcssa ]
  %.lcssa563.unr = phi ptr [ poison, %bb.ch ], [ %i.ps, %.prol.loopexit624.unr-lcssa ]
  %.lcssa562.unr = phi i64 [ poison, %bb.ch ], [ %i.px, %.prol.loopexit624.unr-lcssa ]
  %i.qa = icmp eq i64 %indvars.iv.i.i211543, 0
  br i1 %i.qa, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205, label %.new625

.new625:                                          ; preds = %.prol.loopexit624, %.new625
  %indvars.iv40.i.i215 = phi i64 [ %indvars.iv.next41.i.i218.1, %.new625 ], [ %indvars.iv40.i.i215.unr, %.prol.loopexit624 ] ; 4 uses
  %.017.i.i216 = phi ptr [ %i.qn, %.new625 ], [ %.017.i.i216.unr, %.prol.loopexit624 ]
  %.016.i.i217 = phi i64 [ %i.qs, %.new625 ], [ %.016.i.i217.unr, %.prol.loopexit624 ]
  %i.qb = getelementptr inbounds nuw i8, ptr %.017.i.i216, i64 16
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.qb, i64 %.016.i.i217
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i218 = add nsw i64 %indvars.iv40.i.i215, -1 ; 2 uses
  %i.qe = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i218
  store ptr %i.qd, ptr %i.qe, align 8, !tbaa !97
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qd, i64 15
  %i.qg = load i8, ptr %i.qf, align 1, !tbaa !42
  %i.qh = zext i8 %i.qg to i64
  %i.qi = add nsw i64 %i.qh, -1                   ; 2 uses
  %i.qj = trunc i64 %i.qi to i8
  %i.qk = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i218
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !42
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %i.qi
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i218.1 = add nsw i64 %indvars.iv40.i.i215, -2 ; 2 uses
  %i.qo = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i215
  store ptr %i.qn, ptr %i.qo, align 8, !tbaa !97
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 15
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !42
  %i.qr = zext i8 %i.qq to i64
  %i.qs = add nsw i64 %i.qr, -1                   ; 3 uses
  %i.qt = trunc i64 %i.qs to i8
  %i.qu = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i218.1
  store i8 %i.qt, ptr %i.qu, align 1, !tbaa !42
  %i.qv = icmp sgt i64 %indvars.iv40.i.i215, 2
  br i1 %i.qv, label %.new625, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205, !llvm.loop !10

bb.ci:                                            ; preds = %bb.ce
  %i.qw = add i8 %i.ot, -1                        ; 2 uses
  store i8 %i.qw, ptr %i.t, align 4, !tbaa !42
  %i.qx = zext i8 %i.qw to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205: ; preds = %.prol.loopexit624, %.new625, %bb.ci
  %.lcssa13.sink.i206 = phi ptr [ %i.ou, %bb.ci ], [ %.lcssa563.unr, %.prol.loopexit624 ], [ %i.qn, %.new625 ]
  %.lcssa.sink.i207 = phi i64 [ %i.qx, %bb.ci ], [ %.lcssa562.unr, %.prol.loopexit624 ], [ %i.qs, %.new625 ]
  %i.qy = getelementptr inbounds nuw i8, ptr %.lcssa13.sink.i206, i64 16
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %.lcssa.sink.i207
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219: ; preds = %bb.cg, %bb.cf, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205
  %i.rb = phi ptr [ %i.ra, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i205 ], [ null, %bb.cf ], [ null, %bb.cg ]
  store ptr %i.rb, ptr %i.g, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  %i.rc = load i8, ptr %26, align 8, !tbaa !106, !range !107, !noundef !108
  %i.rd = trunc nuw i8 %i.rc to i1
  br i1 %i.rd, label %.critedge97, label %bb.cj

bb.cj:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  %i.re = load ptr, ptr %i.or, align 8, !tbaa !109 ; 2 uses
  %.not.i.i220 = icmp eq ptr %i.re, null
  br i1 %.not.i.i220, label %_ZNK7testing15AssertionResult15failure_messageEv.exit221, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit221

_ZNK7testing15AssertionResult15failure_messageEv.exit221: ; preds = %bb.cl, %bb.ck
  %i.rg = phi ptr [ %i.rf, %bb.cl ], [ @.str.56, %bb.ck ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef %i.rg)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit221
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.cn unwind label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.rh = load ptr, ptr %28, align 8, !tbaa !111  ; 3 uses
  %.not.i.i222 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i222, label %_ZN7testing7MessageD2Ev.exit224, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223: ; preds = %bb.cn
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !37
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(128) %i.rh) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit224

_ZN7testing7MessageD2Ev.exit224:                  ; preds = %bb.cn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  %i.rl = load ptr, ptr %i.or, align 8, !tbaa !109 ; 4 uses
  %.not.i.i225 = icmp eq ptr %i.rl, null
  br i1 %.not.i.i225, label %bb.dg, label %bb.co

bb.co:                                            ; preds = %_ZN7testing7MessageD2Ev.exit224
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !38 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rl, i64 16 ; 2 uses
  %i.ro = icmp eq ptr %i.rm, %i.rn
  br i1 %i.ro, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226: ; preds = %bb.co
  %i.rp = load i64, ptr %i.rn, align 8, !tbaa !42
  %i.rq = add i64 %i.rp, 1
  call void @_ZdlPvm(ptr noundef %i.rm, i64 noundef %i.rq) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226
  call void @_ZdlPvm(ptr noundef nonnull %i.rl, i64 noundef 32) #34
  br label %bb.dg

bb.cp:                                            ; preds = %bb.cj
  %i.rr = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit232

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit221
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cm
  %i.rt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #32
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn76 = phi { ptr, i32 } [ %i.rt, %bb.cr ], [ %i.rs, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.ru = load ptr, ptr %28, align 8, !tbaa !111  ; 3 uses
  %.not.i.i230 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i230, label %_ZN7testing7MessageD2Ev.exit232, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231: ; preds = %bb.cs
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !37
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(128) %i.ru) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit232

_ZN7testing7MessageD2Ev.exit232:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231, %bb.cs, %bb.cp
  %.pn76.pn = phi { ptr, i32 } [ %i.rr, %bb.cp ], [ %.pn76, %bb.cs ], [ %.pn76, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  br label %bb.ei

.critedge97:                                      ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit219
  %i.ry = load ptr, ptr %i.or, align 8, !tbaa !109 ; 4 uses
  %.not.i.i233 = icmp eq ptr %i.ry, null
  br i1 %.not.i.i233, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.critedge97
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !38 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ry, i64 16 ; 2 uses
  %i.sb = icmp eq ptr %i.rz, %i.sa
  br i1 %i.sb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234: ; preds = %bb.ct
  %i.sc = load i64, ptr %i.sa, align 8, !tbaa !42
  %i.sd = add i64 %i.sc, 1
  call void @_ZdlPvm(ptr noundef %i.rz, i64 noundef %i.sd) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234
  call void @_ZdlPvm(ptr noundef nonnull %i.ry, i64 noundef 32) #34
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, %.critedge97
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  %i.se = load ptr, ptr %i.at, align 8, !tbaa !152
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.se, i64 %i.ov
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !156
  store ptr %i.sg, ptr %31, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  %i.sh = load ptr, ptr %i.q, align 8, !tbaa !97  ; 3 uses
  %i.si = load i8, ptr %i.t, align 4, !tbaa !42   ; 3 uses
  %i.sj = zext i8 %i.si to i64
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 16
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %i.sj
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !156
  store ptr %i.sm, ptr %i.h, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  %i.sn = load i8, ptr %30, align 8, !tbaa !106, !range !107, !noundef !108
  %i.so = trunc nuw i8 %i.sn to i1
  br i1 %i.so, label %bb.de, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  %i.sp = load ptr, ptr %i.os, align 8, !tbaa !109 ; 2 uses
  %.not.i.i238 = icmp eq ptr %i.sp, null
  br i1 %.not.i.i238, label %_ZNK7testing15AssertionResult15failure_messageEv.exit239, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit239

_ZNK7testing15AssertionResult15failure_messageEv.exit239: ; preds = %bb.cx, %bb.cw
  %i.sr = phi ptr [ %i.sq, %bb.cx ], [ @.str.56, %bb.cw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef %i.sr)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit239
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.ss = load ptr, ptr %32, align 8, !tbaa !111  ; 3 uses
  %.not.i.i240 = icmp eq ptr %i.ss, null
  br i1 %.not.i.i240, label %_ZN7testing7MessageD2Ev.exit242, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241: ; preds = %bb.cz
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !37
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(128) %i.ss) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit242

_ZN7testing7MessageD2Ev.exit242:                  ; preds = %bb.cz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  br label %bb.de

bb.da:                                            ; preds = %bb.cv
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit245

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit239
  %i.sx = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cy
  %i.sy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #32
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn85 = phi { ptr, i32 } [ %i.sy, %bb.dc ], [ %i.sx, %bb.db ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.sz = load ptr, ptr %32, align 8, !tbaa !111  ; 3 uses
  %.not.i.i243 = icmp eq ptr %i.sz, null
  br i1 %.not.i.i243, label %_ZN7testing7MessageD2Ev.exit245, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244: ; preds = %bb.dd
  %i.ta = load ptr, ptr %i.sz, align 8, !tbaa !37
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8
  call void %i.tc(ptr noundef nonnull align 8 dereferenceable(128) %i.sz) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit245

_ZN7testing7MessageD2Ev.exit245:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244, %bb.dd, %bb.da
  %.pn85.pn = phi { ptr, i32 } [ %i.sw, %bb.da ], [ %.pn85, %bb.dd ], [ %.pn85, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %bb.ei

bb.de:                                            ; preds = %bb.cu, %_ZN7testing7MessageD2Ev.exit242
  %i.td = load ptr, ptr %i.os, align 8, !tbaa !109 ; 4 uses
  %.not.i.i246 = icmp eq ptr %i.td, null
  br i1 %.not.i.i246, label %_ZN7testing15AssertionResultD2Ev.exit250, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !38 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 16 ; 2 uses
  %i.tg = icmp eq ptr %i.te, %i.tf
  br i1 %i.tg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i247: ; preds = %bb.df
  %i.th = load i64, ptr %i.tf, align 8, !tbaa !42
  %i.ti = add i64 %i.th, 1
  call void @_ZdlPvm(ptr noundef %i.te, i64 noundef %i.ti) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i247
  call void @_ZdlPvm(ptr noundef nonnull %i.td, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit250

_ZN7testing15AssertionResultD2Ev.exit250:         ; preds = %bb.de, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  %.055 = add i64 %.055336, -1                    ; 2 uses
  %.not75 = icmp eq i64 %.055, 0
  br i1 %.not75, label %.critedge99, label %bb.ce, !llvm.loop !429

bb.dg:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, %_ZN7testing7MessageD2Ev.exit224
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  br label %bb.eh

.critedge99:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit250, %_ZN7testing15AssertionResultD2Ev.exit204
  %i.tj = phi i8 [ %i.ni, %_ZN7testing15AssertionResultD2Ev.exit204 ], [ %i.si, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  %i.tk = phi ptr [ %i.nh, %_ZN7testing15AssertionResultD2Ev.exit204 ], [ %i.sh, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  store i64 0, ptr %35, align 8, !alias.scope !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 14
  %i.tm = load i8, ptr %i.tl, align 1, !tbaa !42
  %i.tn = icmp eq i8 %i.tm, %i.tj
  br i1 %i.tn, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %.critedge99
  %i.to = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i254 = call i32 @llvm.smax.i32(i32 %i.to, i32 0)
  %wide.trip.count.i.i255 = zext nneg i32 %smax.i.i254 to i64
  %exitcond.not.i.i258545 = icmp slt i32 %i.to, 1
  br i1 %exitcond.not.i.i258545, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit265, label %.lr.ph548

bb.di:                                            ; preds = %.lr.ph548
  %indvars.iv.next38.i.i260 = add nuw i32 %indvars.iv37.i.i256546, 1
  %exitcond.not.i.i258 = icmp eq i64 %indvars.iv.next.i.i259, %wide.trip.count.i.i255
  br i1 %exitcond.not.i.i258, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit265, label %.lr.ph548, !llvm.loop !9

.lr.ph548:                                        ; preds = %bb.dh, %bb.di
  %indvars.iv.i.i257547 = phi i64 [ %indvars.iv.next.i.i259, %bb.di ], [ 0, %bb.dh ] ; 2 uses
  %indvars.iv37.i.i256546 = phi i32 [ %indvars.iv.next38.i.i260, %bb.di ], [ 1, %bb.dh ] ; 3 uses
  %indvars.iv.next.i.i259 = add nuw nsw i64 %indvars.iv.i.i257547, 1 ; 5 uses
  %i.tp = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i.i259
  %i.tq = load ptr, ptr %i.tp, align 8, !tbaa !97 ; 3 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i259
  %i.ts = load i8, ptr %i.tr, align 1, !tbaa !42  ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 14
  %i.tu = load i8, ptr %i.tt, align 1, !tbaa !42
  %i.tv = icmp eq i8 %i.tu, %i.ts
  br i1 %i.tv, label %bb.di, label %bb.dj, !llvm.loop !9

bb.dj:                                            ; preds = %.lr.ph548
  %i.tw = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv.next.i.i259
  %i.tx = zext i8 %i.ts to i64
  %i.ty = add nsw i64 %i.tx, -1                   ; 3 uses
  %i.tz = trunc i64 %i.ty to i8
  store i8 %i.tz, ptr %i.tw, align 1, !tbaa !42
  %i.ua = sext i32 %indvars.iv37.i.i256546 to i64 ; 2 uses
  %i.ub = and i32 %indvars.iv37.i.i256546, 1
  %lcmp.mod634.not = icmp eq i32 %i.ub, 0
  br i1 %lcmp.mod634.not, label %.prol.loopexit630, label %.prol.loopexit630.unr-lcssa

.prol.loopexit630.unr-lcssa:                      ; preds = %bb.dj
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %i.ty
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i264.prol = add nsw i64 %i.ua, -1 ; 3 uses
  %i.uf = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i264.prol
  store ptr %i.ue, ptr %i.uf, align 8, !tbaa !97
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ue, i64 15
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !42
  %i.ui = zext i8 %i.uh to i64
  %i.uj = add nsw i64 %i.ui, -1                   ; 3 uses
  %i.uk = trunc i64 %i.uj to i8
  %i.ul = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i264.prol
  store i8 %i.uk, ptr %i.ul, align 1, !tbaa !42
  br label %.prol.loopexit630

.prol.loopexit630:                                ; preds = %.prol.loopexit630.unr-lcssa, %bb.dj
  %indvars.iv40.i.i261.unr = phi i64 [ %i.ua, %bb.dj ], [ %indvars.iv.next41.i.i264.prol, %.prol.loopexit630.unr-lcssa ]
  %.017.i.i262.unr = phi ptr [ %i.tq, %bb.dj ], [ %i.ue, %.prol.loopexit630.unr-lcssa ]
  %.016.i.i263.unr = phi i64 [ %i.ty, %bb.dj ], [ %i.uj, %.prol.loopexit630.unr-lcssa ]
  %.lcssa549.unr = phi ptr [ poison, %bb.dj ], [ %i.ue, %.prol.loopexit630.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.dj ], [ %i.uj, %.prol.loopexit630.unr-lcssa ]
  %i.um = icmp eq i64 %indvars.iv.i.i257547, 0
  br i1 %i.um, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251, label %.new631

.new631:                                          ; preds = %.prol.loopexit630, %.new631
  %indvars.iv40.i.i261 = phi i64 [ %indvars.iv.next41.i.i264.1, %.new631 ], [ %indvars.iv40.i.i261.unr, %.prol.loopexit630 ] ; 4 uses
  %.017.i.i262 = phi ptr [ %i.uz, %.new631 ], [ %.017.i.i262.unr, %.prol.loopexit630 ]
  %.016.i.i263 = phi i64 [ %i.ve, %.new631 ], [ %.016.i.i263.unr, %.prol.loopexit630 ]
  %i.un = getelementptr inbounds nuw i8, ptr %.017.i.i262, i64 16
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %i.un, i64 %.016.i.i263
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i264 = add nsw i64 %indvars.iv40.i.i261, -1 ; 2 uses
  %i.uq = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next41.i.i264
  store ptr %i.up, ptr %i.uq, align 8, !tbaa !97
  %i.ur = getelementptr inbounds nuw i8, ptr %i.up, i64 15
  %i.us = load i8, ptr %i.ur, align 1, !tbaa !42
  %i.ut = zext i8 %i.us to i64
  %i.uu = add nsw i64 %i.ut, -1                   ; 2 uses
  %i.uv = trunc i64 %i.uu to i8
  %i.uw = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i264
  store i8 %i.uv, ptr %i.uw, align 1, !tbaa !42
  %i.ux = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %i.uy = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.uu
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i264.1 = add nsw i64 %indvars.iv40.i.i261, -2 ; 2 uses
  %i.va = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i261
  store ptr %i.uz, ptr %i.va, align 8, !tbaa !97
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 15
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !42
  %i.vd = zext i8 %i.vc to i64
  %i.ve = add nsw i64 %i.vd, -1                   ; 3 uses
  %i.vf = trunc i64 %i.ve to i8
  %i.vg = getelementptr inbounds i8, ptr %i.t, i64 %indvars.iv.next41.i.i264.1
  store i8 %i.vf, ptr %i.vg, align 1, !tbaa !42
  %i.vh = icmp sgt i64 %indvars.iv40.i.i261, 2
  br i1 %i.vh, label %.new631, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251, !llvm.loop !10

bb.dk:                                            ; preds = %.critedge99
  %i.vi = add i8 %i.tj, -1                        ; 2 uses
  store i8 %i.vi, ptr %i.t, align 4, !tbaa !42
  %i.vj = zext i8 %i.vi to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251: ; preds = %.prol.loopexit630, %.new631, %bb.dk
  %.lcssa13.sink.i252 = phi ptr [ %i.tk, %bb.dk ], [ %.lcssa549.unr, %.prol.loopexit630 ], [ %i.uz, %.new631 ]
  %.lcssa.sink.i253 = phi i64 [ %i.vj, %bb.dk ], [ %.lcssa.unr, %.prol.loopexit630 ], [ %i.ve, %.new631 ]
  %i.vk = getelementptr inbounds nuw i8, ptr %.lcssa13.sink.i252, i64 16
  %i.vl = getelementptr inbounds nuw [8 x i8], ptr %i.vk, i64 %.lcssa.sink.i253
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit265

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit265: ; preds = %bb.di, %bb.dh, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251
  %i.vn = phi ptr [ %i.vm, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i251 ], [ null, %bb.dh ], [ null, %bb.di ]
  store ptr %i.vn, ptr %i.i, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  %i.vo = load i8, ptr %34, align 8, !tbaa !106, !range !107, !noundef !108
  %i.vp = trunc nuw i8 %i.vo to i1
  br i1 %i.vp, label %bb.du, label %bb.dl

bb.dl:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit265
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.dm unwind label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #32
  %i.vq = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !109 ; 2 uses
  %.not.i.i266 = icmp eq ptr %i.vr, null
  br i1 %.not.i.i266, label %_ZNK7testing15AssertionResult15failure_messageEv.exit267, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit267

_ZNK7testing15AssertionResult15failure_messageEv.exit267: ; preds = %bb.dn, %bb.dm
  %i.vt = phi ptr [ %i.vs, %bb.dn ], [ @.str.56, %bb.dm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 144, ptr noundef %i.vt)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit267
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %bb.do
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  %i.vu = load ptr, ptr %36, align 8, !tbaa !111  ; 3 uses
  %.not.i.i268 = icmp eq ptr %i.vu, null
  br i1 %.not.i.i268, label %_ZN7testing7MessageD2Ev.exit270, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269: ; preds = %bb.dp
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !37
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  %i.vx = load ptr, ptr %i.vw, align 8
  call void %i.vx(ptr noundef nonnull align 8 dereferenceable(128) %i.vu) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit270

_ZN7testing7MessageD2Ev.exit270:                  ; preds = %bb.dp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #32
  br label %bb.du

bb.dq:                                            ; preds = %bb.dl
  %i.vy = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit273

bb.dr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit267
  %i.vz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %bb.do
  %i.wa = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #32
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn79 = phi { ptr, i32 } [ %i.wa, %bb.ds ], [ %i.vz, %bb.dr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  %i.wb = load ptr, ptr %36, align 8, !tbaa !111  ; 3 uses
  %.not.i.i271 = icmp eq ptr %i.wb, null
  br i1 %.not.i.i271, label %_ZN7testing7MessageD2Ev.exit273, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272: ; preds = %bb.dt
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !37
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 8
  %i.we = load ptr, ptr %i.wd, align 8
  call void %i.we(ptr noundef nonnull align 8 dereferenceable(128) %i.wb) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit273

_ZN7testing7MessageD2Ev.exit273:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272, %bb.dt, %bb.dq
  %.pn79.pn = phi { ptr, i32 } [ %i.vy, %bb.dq ], [ %.pn79, %bb.dt ], [ %.pn79, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  br label %bb.ei

bb.du:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit265, %_ZN7testing7MessageD2Ev.exit270
  %i.wf = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !109 ; 4 uses
  %.not.i.i274 = icmp eq ptr %i.wg, null
  br i1 %.not.i.i274, label %_ZN7testing15AssertionResultD2Ev.exit278, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.wh = load ptr, ptr %i.wg, align 8, !tbaa !38 ; 2 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 16 ; 2 uses
  %i.wj = icmp eq ptr %i.wh, %i.wi
  br i1 %i.wj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275: ; preds = %bb.dv
  %i.wk = load i64, ptr %i.wi, align 8, !tbaa !42
  %i.wl = add i64 %i.wk, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wl) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275
  call void @_ZdlPvm(ptr noundef nonnull %i.wg, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit278

_ZN7testing15AssertionResultD2Ev.exit278:         ; preds = %bb.du, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #32
  %i.wm = load ptr, ptr %i.at, align 8, !tbaa !154
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !156
  store ptr %i.wn, ptr %39, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32
  %i.wo = load ptr, ptr %i.q, align 8, !tbaa !97
  %i.wp = load i8, ptr %i.t, align 4, !tbaa !42
  %i.wq = zext i8 %i.wp to i64
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %i.wq
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !156
  store ptr %i.wt, ptr %i.j, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %38, ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #32
  %i.wu = load i8, ptr %38, align 8, !tbaa !106, !range !107, !noundef !108
  %i.wv = trunc nuw i8 %i.wu to i1
  br i1 %i.wv, label %bb.ef, label %bb.dw

bb.dw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit278
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.dx unwind label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #32
  %i.ww = getelementptr inbounds nuw i8, ptr %38, i64 8
end_hunk_2
begin_hunk_3_@_ZN7testing8internal11MatcherBaseIRKPN4absl12lts_2026052613cord_internal7CordRepEE16GetDescriberImplINS9_11ValuePolicyINS0_9EqMatcherIDnEELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS9_:bb.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_PrevNext_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_PrevNext_TestEE17CreateTestFactoryEm(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_PrevNext_TestEEE, i64 16), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !466
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_PrevNext_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_PrevNext_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceImE10parameter_E, align 8, !tbaa !69
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #33 ; 5 uses
  invoke fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_PrevNext_TestE, i64 16), ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_PrevNext_TestE, i64 80), ptr %i.c, align 8, !tbaa !37
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #34
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_PrevNext_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8), (16, 24)) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 80), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !157

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.c)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i unwind label %bb.d, !inline_history !186

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #34, !inline_history !186
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34, !inline_history !186
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #35, !inline_history !186
  unreachable

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(88) %0) #32, !inline_history !186
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_139CordRepBtreeNavigatorTest_PrevNext_Test8TestBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeNavigator", align 8 ; 17 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %19 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %27 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %35 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %39 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.k, align 8, !tbaa !185 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 13
  %i.m = load i8, ptr %i.l, align 1, !tbaa !42    ; 4 uses
  %i.n = zext i8 %i.m to i32
  store i32 %i.n, ptr %1, align 8, !tbaa !188
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 15
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = add nsw i64 %i.q, -1                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 24 uses
  %i.t = zext i8 %i.m to i64                      ; 5 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %.val, ptr %i.u, align 8, !tbaa !97
  %i.v = trunc i64 %i.r to i8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 40 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t
  store i8 %i.v, ptr %i.x, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8InitLastEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.t, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %indvars.iv.next.i.i.prol = add nsw i64 %i.t, -1 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.r
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !156 ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.prol
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 15
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = add nsw i64 %i.ae, -1                   ; 2 uses
  %i.ag = trunc i64 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i.prol
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !42
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.020.i.i.unr = phi i64 [ %i.r, %.lr.ph.i.i.preheader ], [ %i.af, %.lr.ph.i.i.prol ]
  %.01618.i.i.unr = phi ptr [ %.val, %.lr.ph.i.i.preheader ], [ %i.aa, %.lr.ph.i.i.prol ]
  %i.ai = icmp eq i8 %i.m, 1
  br i1 %i.ai, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8InitLastEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.020.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01618.i.i = phi ptr [ %i.av, %.lr.ph.i.i ], [ %.01618.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.01618.i.i, i64 16
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.020.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !156 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i
  store ptr %i.al, ptr %i.am, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 15
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext i8 %i.ao to i64
  %i.aq = add nsw i64 %i.ap, -1                   ; 2 uses
  %i.ar = trunc i64 %i.aq to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !42
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.aq
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !156 ; 3 uses
  %i.aw = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !97
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 15
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = zext i8 %i.ay to i64
  %i.ba = add nsw i64 %i.az, -1                   ; 2 uses
  %i.bb = trunc i64 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i.1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !42
  %i.bd = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8InitLastEPNS1_12CordRepBtreeE.exit, !llvm.loop !8

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8InitLastEPNS1_12CordRepBtreeE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  %i.be = load ptr, ptr %i.s, align 8, !tbaa !97  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i64 0, ptr %3, align 8, !alias.scope !475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.bg = load i8, ptr %i.w, align 4, !tbaa !42   ; 2 uses
  %i.bh = zext i8 %i.bg to i64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 15
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !42
  %i.bk = zext i8 %i.bj to i64
  %i.bl = add nsw i64 %i.bk, -1
  %i.bm = icmp eq i64 %i.bl, %i.bh
  br i1 %i.bm, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8InitLastEPNS1_12CordRepBtreeE.exit
  %i.bn = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.bn, i32 0)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  %exitcond.not.i.i523 = icmp slt i32 %i.bn, 1
  br i1 %exitcond.not.i.i523, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit, label %.lr.ph526

bb.c:                                             ; preds = %.lr.ph526
  %indvars.iv.next38.i.i = add nuw i32 %indvars.iv37.i.i524, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i101, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit, label %.lr.ph526, !llvm.loop !11

.lr.ph526:                                        ; preds = %bb.b, %bb.c
  %indvars.iv.i.i100525 = phi i64 [ %indvars.iv.next.i.i101, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %indvars.iv37.i.i524 = phi i32 [ %indvars.iv.next38.i.i, %bb.c ], [ 1, %bb.b ] ; 3 uses
  %indvars.iv.next.i.i101 = add nuw nsw i64 %indvars.iv.i.i100525, 1 ; 5 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i101
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !97 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i101
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !42
  %i.bs = zext i8 %i.br to i64
  %i.bt = add nuw nsw i64 %i.bs, 1                ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bp, i64 15
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !42
  %i.bw = zext i8 %i.bv to i64
  %i.bx = icmp eq i64 %i.bt, %i.bw
  br i1 %i.bx, label %bb.c, label %bb.d, !llvm.loop !11

bb.d:                                             ; preds = %.lr.ph526
  %i.by = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i101
  %i.bz = trunc i64 %i.bt to i8
  store i8 %i.bz, ptr %i.by, align 1, !tbaa !42
  %i.ca = sext i32 %indvars.iv37.i.i524 to i64    ; 2 uses
  %i.cb = and i32 %indvars.iv37.i.i524, 1
  %lcmp.mod604.not = icmp eq i32 %i.cb, 0
  br i1 %lcmp.mod604.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.bt
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i.prol = add nsw i64 %i.ca, -1 ; 3 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i.prol
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !97
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 14
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !42  ; 2 uses
  %i.ci = zext i8 %i.ch to i64                    ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i.prol
  store i8 %i.ch, ptr %i.cj, align 1, !tbaa !42
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.d
  %indvars.iv40.i.i.unr = phi i64 [ %i.ca, %bb.d ], [ %indvars.iv.next41.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.017.i.i.unr = phi ptr [ %i.bp, %bb.d ], [ %i.ce, %.prol.loopexit.unr-lcssa ]
  %.016.i.i.unr = phi i64 [ %i.bt, %bb.d ], [ %i.ci, %.prol.loopexit.unr-lcssa ]
  %.lcssa595.unr = phi ptr [ poison, %bb.d ], [ %i.ce, %.prol.loopexit.unr-lcssa ]
  %.lcssa594.unr = phi i64 [ poison, %bb.d ], [ %i.ci, %.prol.loopexit.unr-lcssa ]
  %i.ck = icmp eq i64 %indvars.iv.i.i100525, 0
  br i1 %i.ck, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i.1, %.new ], [ %indvars.iv40.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.017.i.i = phi ptr [ %i.cv, %.new ], [ %.017.i.i.unr, %.prol.loopexit ]
  %.016.i.i = phi i64 [ %i.cz, %.new ], [ %.016.i.i.unr, %.prol.loopexit ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 16
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.016.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i = add nsw i64 %indvars.iv40.i.i, -1 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !97
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 14
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !42  ; 2 uses
  %i.cr = zext i8 %i.cq to i64
  %i.cs = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !42
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cr
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i.1 = add nsw i64 %indvars.iv40.i.i, -2 ; 2 uses
  %i.cw = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !97
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 14
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !42  ; 2 uses
  %i.cz = zext i8 %i.cy to i64                    ; 2 uses
  %i.da = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i.1
  store i8 %i.cy, ptr %i.da, align 1, !tbaa !42
  %i.db = icmp sgt i64 %indvars.iv40.i.i, 2
  br i1 %i.db, label %.new, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i, !llvm.loop !12

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8InitLastEPNS1_12CordRepBtreeE.exit
  %i.dc = add i8 %i.bg, 1                         ; 2 uses
  store i8 %i.dc, ptr %i.w, align 4, !tbaa !42
  %i.dd = zext i8 %i.dc to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i: ; preds = %.prol.loopexit, %.new, %bb.e
  %.lcssa12.sink.i = phi ptr [ %i.be, %bb.e ], [ %.lcssa595.unr, %.prol.loopexit ], [ %i.cv, %.new ]
  %.lcssa.sink.i = phi i64 [ %i.dd, %bb.e ], [ %.lcssa594.unr, %.prol.loopexit ], [ %i.cz, %.new ]
  %i.de = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i, i64 16
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %.lcssa.sink.i
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit: ; preds = %bb.c, %bb.b, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i
  %i.dh = phi ptr [ %i.dg, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i ], [ null, %bb.b ], [ null, %bb.c ]
  store ptr %i.dh, ptr %i.a, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.di = load i8, ptr %2, align 8, !tbaa !106, !range !107, !noundef !108
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.o, label %bb.f

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !109 ; 2 uses
  %.not.i.i102 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i102, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.h, %bb.g
  %i.dn = phi ptr [ %i.dm, %bb.h ], [ @.str.56, %bb.g ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 153, ptr noundef %i.dn)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.do = load ptr, ptr %4, align 8, !tbaa !111   ; 3 uses
  %.not.i.i103 = icmp eq ptr %i.do, null
  br i1 %.not.i.i103, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.j
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !37
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(128) %i.do) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.o

bb.k:                                             ; preds = %bb.f
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit106

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.du, %bb.m ], [ %i.dt, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.dv = load ptr, ptr %4, align 8, !tbaa !111   ; 3 uses
  %.not.i.i104 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i104, label %_ZN7testing7MessageD2Ev.exit106, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105: ; preds = %bb.n
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !37
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(128) %i.dv) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit106

_ZN7testing7MessageD2Ev.exit106:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105, %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.ds, %bb.k ], [ %.pn, %bb.n ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i105 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.ei

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit, %_ZN7testing7MessageD2Ev.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !109 ; 4 uses
  %.not.i.i107 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i107, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !38 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 2 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !42
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.eb, i64 noundef %i.ef) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.o, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !154
  %i.ei = getelementptr inbounds i8, ptr %i.eh, i64 -8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !156
  store ptr %i.ej, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.ek = load ptr, ptr %i.s, align 8, !tbaa !97  ; 3 uses
  %i.el = load i8, ptr %i.w, align 4, !tbaa !42   ; 3 uses
  %i.em = zext i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.em
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !156
  store ptr %i.ep, ptr %i.b, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.eq = load i8, ptr %6, align 8, !tbaa !106, !range !107, !noundef !108
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.z, label %bb.q

bb.q:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.es = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !109 ; 2 uses
  %.not.i.i108 = icmp eq ptr %i.et, null
  br i1 %.not.i.i108, label %_ZNK7testing15AssertionResult15failure_messageEv.exit109, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit109

_ZNK7testing15AssertionResult15failure_messageEv.exit109: ; preds = %bb.s, %bb.r
  %i.ev = phi ptr [ %i.eu, %bb.s ], [ @.str.56, %bb.r ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 154, ptr noundef %i.ev)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit109
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.ew = load ptr, ptr %8, align 8, !tbaa !111   ; 3 uses
  %.not.i.i110 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i110, label %_ZN7testing7MessageD2Ev.exit112, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111: ; preds = %bb.u
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !37
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(128) %i.ew) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit112

_ZN7testing7MessageD2Ev.exit112:                  ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.z

bb.v:                                             ; preds = %bb.q
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit115

bb.w:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit109
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn63 = phi { ptr, i32 } [ %i.fc, %bb.x ], [ %i.fb, %bb.w ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.fd = load ptr, ptr %8, align 8, !tbaa !111   ; 3 uses
  %.not.i.i113 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i113, label %_ZN7testing7MessageD2Ev.exit115, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114: ; preds = %bb.y
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !37
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  call void %i.fg(ptr noundef nonnull align 8 dereferenceable(128) %i.fd) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit115

_ZN7testing7MessageD2Ev.exit115:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114, %bb.y, %bb.v
  %.pn63.pn = phi { ptr, i32 } [ %i.fa, %bb.v ], [ %.pn63, %bb.y ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.ei

bb.z:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit112
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !109 ; 4 uses
  %.not.i.i116 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i116, label %_ZN7testing15AssertionResultD2Ev.exit120, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !38 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 16 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117: ; preds = %bb.aa
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !42
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i117
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit120

_ZN7testing15AssertionResultD2Ev.exit120:         ; preds = %bb.z, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.fo = load ptr, ptr %i.eg, align 8, !tbaa !168
  %i.fp = load ptr, ptr %i.bf, align 8, !tbaa !152
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = ptrtoint ptr %i.fp to i64
  %i.fs = sub i64 %i.fq, %i.fr
  %i.ft = ashr exact i64 %i.fs, 3                 ; 2 uses
  %.056326 = add nsw i64 %i.ft, -1                ; 2 uses
  %.not327 = icmp eq i64 %.056326, 0
  br i1 %.not327, label %.critedge95, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit120
  %i.fu = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %_ZN7testing15AssertionResultD2Ev.exit163
  %i.fw = phi i8 [ %i.el, %.lr.ph ], [ %i.jl, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  %i.fx = phi ptr [ %i.ek, %.lr.ph ], [ %i.jk, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  %.056329 = phi i64 [ %.056326, %.lr.ph ], [ %.056, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  %.056.in328 = phi i64 [ %i.ft, %.lr.ph ], [ %.056329, %_ZN7testing15AssertionResultD2Ev.exit163 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.fy = add i64 %.056.in328, -2                 ; 2 uses
  %i.fz = load ptr, ptr %i.bf, align 8, !tbaa !152
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fz, i64 %i.fy
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !156
  store ptr %i.gb, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fx, i64 14
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !42
  %i.ge = icmp eq i8 %i.gd, %i.fw
  br i1 %i.ge, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.gf = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i122 = call i32 @llvm.smax.i32(i32 %i.gf, i32 0)
  %wide.trip.count.i.i123 = zext nneg i32 %smax.i.i122 to i64
  %exitcond.not.i.i126527 = icmp slt i32 %i.gf, 1
  br i1 %exitcond.not.i.i126527, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit, label %.lr.ph530

bb.ad:                                            ; preds = %.lr.ph530
  %indvars.iv.next38.i.i128 = add nuw i32 %indvars.iv37.i.i124528, 1
  %exitcond.not.i.i126 = icmp eq i64 %indvars.iv.next.i.i127, %wide.trip.count.i.i123
  br i1 %exitcond.not.i.i126, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit, label %.lr.ph530, !llvm.loop !9

.lr.ph530:                                        ; preds = %bb.ac, %bb.ad
  %indvars.iv.i.i125529 = phi i64 [ %indvars.iv.next.i.i127, %bb.ad ], [ 0, %bb.ac ] ; 2 uses
  %indvars.iv37.i.i124528 = phi i32 [ %indvars.iv.next38.i.i128, %bb.ad ], [ 1, %bb.ac ] ; 3 uses
  %indvars.iv.next.i.i127 = add nuw nsw i64 %indvars.iv.i.i125529, 1 ; 5 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i127
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !97 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i127
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !42  ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 14
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !42
  %i.gm = icmp eq i8 %i.gl, %i.gj
  br i1 %i.gm, label %bb.ad, label %bb.ae, !llvm.loop !9

bb.ae:                                            ; preds = %.lr.ph530
  %i.gn = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i127
  %i.go = zext i8 %i.gj to i64
  %i.gp = add nsw i64 %i.go, -1                   ; 3 uses
  %i.gq = trunc i64 %i.gp to i8
  store i8 %i.gq, ptr %i.gn, align 1, !tbaa !42
  %i.gr = sext i32 %indvars.iv37.i.i124528 to i64 ; 2 uses
  %i.gs = and i32 %indvars.iv37.i.i124528, 1
  %lcmp.mod610.not = icmp eq i32 %i.gs, 0
  br i1 %lcmp.mod610.not, label %.prol.loopexit606, label %.prol.loopexit606.unr-lcssa

.prol.loopexit606.unr-lcssa:                      ; preds = %bb.ae
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gp
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i132.prol = add nsw i64 %i.gr, -1 ; 3 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i132.prol
  store ptr %i.gv, ptr %i.gw, align 8, !tbaa !97
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 15
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !42
  %i.gz = zext i8 %i.gy to i64
  %i.ha = add nsw i64 %i.gz, -1                   ; 3 uses
  %i.hb = trunc i64 %i.ha to i8
  %i.hc = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i132.prol
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !42
  br label %.prol.loopexit606

.prol.loopexit606:                                ; preds = %.prol.loopexit606.unr-lcssa, %bb.ae
  %indvars.iv40.i.i129.unr = phi i64 [ %i.gr, %bb.ae ], [ %indvars.iv.next41.i.i132.prol, %.prol.loopexit606.unr-lcssa ]
  %.017.i.i130.unr = phi ptr [ %i.gh, %bb.ae ], [ %i.gv, %.prol.loopexit606.unr-lcssa ]
  %.016.i.i131.unr = phi i64 [ %i.gp, %bb.ae ], [ %i.ha, %.prol.loopexit606.unr-lcssa ]
  %.lcssa585.unr = phi ptr [ poison, %bb.ae ], [ %i.gv, %.prol.loopexit606.unr-lcssa ]
  %.lcssa584.unr = phi i64 [ poison, %bb.ae ], [ %i.ha, %.prol.loopexit606.unr-lcssa ]
  %i.hd = icmp eq i64 %indvars.iv.i.i125529, 0
  br i1 %i.hd, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i, label %.new607

.new607:                                          ; preds = %.prol.loopexit606, %.new607
  %indvars.iv40.i.i129 = phi i64 [ %indvars.iv.next41.i.i132.1, %.new607 ], [ %indvars.iv40.i.i129.unr, %.prol.loopexit606 ] ; 4 uses
  %.017.i.i130 = phi ptr [ %i.hq, %.new607 ], [ %.017.i.i130.unr, %.prol.loopexit606 ]
  %.016.i.i131 = phi i64 [ %i.hv, %.new607 ], [ %.016.i.i131.unr, %.prol.loopexit606 ]
  %i.he = getelementptr inbounds nuw i8, ptr %.017.i.i130, i64 16
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %.016.i.i131
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i132 = add nsw i64 %indvars.iv40.i.i129, -1 ; 2 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i132
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !97
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 15
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !42
  %i.hk = zext i8 %i.hj to i64
  %i.hl = add nsw i64 %i.hk, -1                   ; 2 uses
  %i.hm = trunc i64 %i.hl to i8
  %i.hn = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i132
  store i8 %i.hm, ptr %i.hn, align 1, !tbaa !42
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hl
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i132.1 = add nsw i64 %indvars.iv40.i.i129, -2 ; 2 uses
  %i.hr = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i129
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !97
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hq, i64 15
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !42
  %i.hu = zext i8 %i.ht to i64
  %i.hv = add nsw i64 %i.hu, -1                   ; 3 uses
  %i.hw = trunc i64 %i.hv to i8
  %i.hx = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i132.1
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !42
  %i.hy = icmp sgt i64 %indvars.iv40.i.i129, 2
  br i1 %i.hy, label %.new607, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i, !llvm.loop !10

bb.af:                                            ; preds = %bb.ab
  %i.hz = add i8 %i.fw, -1                        ; 2 uses
  store i8 %i.hz, ptr %i.w, align 4, !tbaa !42
  %i.ia = zext i8 %i.hz to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i: ; preds = %.prol.loopexit606, %.new607, %bb.af
  %.lcssa13.sink.i = phi ptr [ %i.fx, %bb.af ], [ %.lcssa585.unr, %.prol.loopexit606 ], [ %i.hq, %.new607 ]
  %.lcssa.sink.i121 = phi i64 [ %i.ia, %bb.af ], [ %.lcssa584.unr, %.prol.loopexit606 ], [ %i.hv, %.new607 ]
  %i.ib = getelementptr inbounds nuw i8, ptr %.lcssa13.sink.i, i64 16
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %.lcssa.sink.i121
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit: ; preds = %bb.ad, %bb.ac, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i
  %i.ie = phi ptr [ %i.id, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i ], [ null, %bb.ac ], [ null, %bb.ad ]
  store ptr %i.ie, ptr %i.c, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.if = load i8, ptr %10, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %.critedge, label %bb.ag

bb.ag:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ah unwind label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.ih = load ptr, ptr %i.fu, align 8, !tbaa !109 ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.ih, null
  br i1 %.not.i.i133, label %_ZNK7testing15AssertionResult15failure_messageEv.exit134, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit134

_ZNK7testing15AssertionResult15failure_messageEv.exit134: ; preds = %bb.ai, %bb.ah
  %i.ij = phi ptr [ %i.ii, %bb.ai ], [ @.str.56, %bb.ah ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 156, ptr noundef %i.ij)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit134
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ak unwind label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.ik = load ptr, ptr %12, align 8, !tbaa !111  ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.ik, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.ak
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !37
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8
  call void %i.in(ptr noundef nonnull align 8 dereferenceable(128) %i.ik) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %bb.ak, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.io = load ptr, ptr %i.fu, align 8, !tbaa !109 ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.io, null
  br i1 %.not.i.i138, label %bb.bd, label %bb.al

bb.al:                                            ; preds = %_ZN7testing7MessageD2Ev.exit137
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !38 ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.al
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !42
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef 32) #34
  br label %bb.bd

bb.am:                                            ; preds = %bb.ag
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit145

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit134
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.aj
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn66 = phi { ptr, i32 } [ %i.iw, %bb.ao ], [ %i.iv, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.ix = load ptr, ptr %12, align 8, !tbaa !111  ; 3 uses
  %.not.i.i143 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i143, label %_ZN7testing7MessageD2Ev.exit145, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144: ; preds = %bb.ap
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !37
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(128) %i.ix) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit145

_ZN7testing7MessageD2Ev.exit145:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144, %bb.ap, %bb.am
  %.pn66.pn = phi { ptr, i32 } [ %i.iu, %bb.am ], [ %.pn66, %bb.ap ], [ %.pn66, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i144 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.ei

.critedge:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit
  %i.jb = load ptr, ptr %i.fu, align 8, !tbaa !109 ; 4 uses
  %.not.i.i146 = icmp eq ptr %i.jb, null
  br i1 %.not.i.i146, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !38 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 16 ; 2 uses
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147: ; preds = %bb.aq
  %i.jf = load i64, ptr %i.jd, align 8, !tbaa !42
  %i.jg = add i64 %i.jf, 1
  call void @_ZdlPvm(ptr noundef %i.jc, i64 noundef %i.jg) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i147
  call void @_ZdlPvm(ptr noundef nonnull %i.jb, i64 noundef 32) #34
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i148, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.jh = load ptr, ptr %i.bf, align 8, !tbaa !152
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jh, i64 %i.fy
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !156
  store ptr %i.jj, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.jk = load ptr, ptr %i.s, align 8, !tbaa !97  ; 3 uses
  %i.jl = load i8, ptr %i.w, align 4, !tbaa !42   ; 3 uses
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 16
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jn, i64 %i.jm
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !156
  store ptr %i.jp, ptr %i.d, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.jq = load i8, ptr %14, align 8, !tbaa !106, !range !107, !noundef !108
  %i.jr = trunc nuw i8 %i.jq to i1
  br i1 %i.jr, label %bb.bb, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.at unwind label %bb.ax

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.js = load ptr, ptr %i.fv, align 8, !tbaa !109 ; 2 uses
  %.not.i.i151 = icmp eq ptr %i.js, null
  br i1 %.not.i.i151, label %_ZNK7testing15AssertionResult15failure_messageEv.exit152, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit152

_ZNK7testing15AssertionResult15failure_messageEv.exit152: ; preds = %bb.au, %bb.at
  %i.ju = phi ptr [ %i.jt, %bb.au ], [ @.str.56, %bb.at ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 157, ptr noundef %i.ju)
          to label %bb.av unwind label %bb.ay

bb.av:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit152
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.aw unwind label %bb.az

bb.aw:                                            ; preds = %bb.av
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.jv = load ptr, ptr %16, align 8, !tbaa !111  ; 3 uses
  %.not.i.i153 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i153, label %_ZN7testing7MessageD2Ev.exit155, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154: ; preds = %bb.aw
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !37
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load ptr, ptr %i.jx, align 8
  call void %i.jy(ptr noundef nonnull align 8 dereferenceable(128) %i.jv) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit155

_ZN7testing7MessageD2Ev.exit155:                  ; preds = %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i154
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.bb

bb.ax:                                            ; preds = %bb.as
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit158

bb.ay:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit152
  %i.ka = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.az:                                            ; preds = %bb.av
  %i.kb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #32
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.pn89 = phi { ptr, i32 } [ %i.kb, %bb.az ], [ %i.ka, %bb.ay ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.kc = load ptr, ptr %16, align 8, !tbaa !111  ; 3 uses
  %.not.i.i156 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i156, label %_ZN7testing7MessageD2Ev.exit158, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157: ; preds = %bb.ba
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !37
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit158

_ZN7testing7MessageD2Ev.exit158:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157, %bb.ba, %bb.ax
  %.pn89.pn = phi { ptr, i32 } [ %i.jz, %bb.ax ], [ %.pn89, %bb.ba ], [ %.pn89, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.ei

bb.bb:                                            ; preds = %bb.ar, %_ZN7testing7MessageD2Ev.exit155
  %i.kg = load ptr, ptr %i.fv, align 8, !tbaa !109 ; 4 uses
  %.not.i.i159 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i159, label %_ZN7testing15AssertionResultD2Ev.exit163, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !38 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160: ; preds = %bb.bc
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !42
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i160
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit163

_ZN7testing15AssertionResultD2Ev.exit163:         ; preds = %bb.bb, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i161
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %.056 = add i64 %.056329, -1                    ; 2 uses
  %.not = icmp eq i64 %.056, 0
  br i1 %.not, label %.critedge95, label %bb.ab, !llvm.loop !469

bb.bd:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, %_ZN7testing7MessageD2Ev.exit137
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.eh

.critedge95:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit163, %_ZN7testing15AssertionResultD2Ev.exit120
  %i.km = phi i8 [ %i.el, %_ZN7testing15AssertionResultD2Ev.exit120 ], [ %i.jl, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  %i.kn = phi ptr [ %i.ek, %_ZN7testing15AssertionResultD2Ev.exit120 ], [ %i.jk, %_ZN7testing15AssertionResultD2Ev.exit163 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  store i64 0, ptr %19, align 8, !alias.scope !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 14
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !42
  %i.kq = icmp eq i8 %i.kp, %i.km
  br i1 %i.kq, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %.critedge95
  %i.kr = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i167 = call i32 @llvm.smax.i32(i32 %i.kr, i32 0)
  %wide.trip.count.i.i168 = zext nneg i32 %smax.i.i167 to i64
  %exitcond.not.i.i171531 = icmp slt i32 %i.kr, 1
  br i1 %exitcond.not.i.i171531, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit178, label %.lr.ph534

bb.bf:                                            ; preds = %.lr.ph534
  %indvars.iv.next38.i.i173 = add nuw i32 %indvars.iv37.i.i169532, 1
  %exitcond.not.i.i171 = icmp eq i64 %indvars.iv.next.i.i172, %wide.trip.count.i.i168
  br i1 %exitcond.not.i.i171, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit178, label %.lr.ph534, !llvm.loop !9

.lr.ph534:                                        ; preds = %bb.be, %bb.bf
  %indvars.iv.i.i170533 = phi i64 [ %indvars.iv.next.i.i172, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %indvars.iv37.i.i169532 = phi i32 [ %indvars.iv.next38.i.i173, %bb.bf ], [ 1, %bb.be ] ; 3 uses
  %indvars.iv.next.i.i172 = add nuw nsw i64 %indvars.iv.i.i170533, 1 ; 5 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i172
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !97 ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i172
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !42  ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 14
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !42
  %i.ky = icmp eq i8 %i.kx, %i.kv
  br i1 %i.ky, label %bb.bf, label %bb.bg, !llvm.loop !9

bb.bg:                                            ; preds = %.lr.ph534
  %i.kz = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i172
  %i.la = zext i8 %i.kv to i64
  %i.lb = add nsw i64 %i.la, -1                   ; 3 uses
  %i.lc = trunc i64 %i.lb to i8
  store i8 %i.lc, ptr %i.kz, align 1, !tbaa !42
  %i.ld = sext i32 %indvars.iv37.i.i169532 to i64 ; 2 uses
  %i.le = and i32 %indvars.iv37.i.i169532, 1
  %lcmp.mod616.not = icmp eq i32 %i.le, 0
  br i1 %lcmp.mod616.not, label %.prol.loopexit612, label %.prol.loopexit612.unr-lcssa

.prol.loopexit612.unr-lcssa:                      ; preds = %bb.bg
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %i.lb
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i177.prol = add nsw i64 %i.ld, -1 ; 3 uses
  %i.li = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i177.prol
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !97
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lh, i64 15
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !42
  %i.ll = zext i8 %i.lk to i64
  %i.lm = add nsw i64 %i.ll, -1                   ; 3 uses
  %i.ln = trunc i64 %i.lm to i8
  %i.lo = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i177.prol
  store i8 %i.ln, ptr %i.lo, align 1, !tbaa !42
  br label %.prol.loopexit612

.prol.loopexit612:                                ; preds = %.prol.loopexit612.unr-lcssa, %bb.bg
  %indvars.iv40.i.i174.unr = phi i64 [ %i.ld, %bb.bg ], [ %indvars.iv.next41.i.i177.prol, %.prol.loopexit612.unr-lcssa ]
  %.017.i.i175.unr = phi ptr [ %i.kt, %bb.bg ], [ %i.lh, %.prol.loopexit612.unr-lcssa ]
  %.016.i.i176.unr = phi i64 [ %i.lb, %bb.bg ], [ %i.lm, %.prol.loopexit612.unr-lcssa ]
  %.lcssa571.unr = phi ptr [ poison, %bb.bg ], [ %i.lh, %.prol.loopexit612.unr-lcssa ]
  %.lcssa570.unr = phi i64 [ poison, %bb.bg ], [ %i.lm, %.prol.loopexit612.unr-lcssa ]
  %i.lp = icmp eq i64 %indvars.iv.i.i170533, 0
  br i1 %i.lp, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164, label %.new613

.new613:                                          ; preds = %.prol.loopexit612, %.new613
  %indvars.iv40.i.i174 = phi i64 [ %indvars.iv.next41.i.i177.1, %.new613 ], [ %indvars.iv40.i.i174.unr, %.prol.loopexit612 ] ; 4 uses
  %.017.i.i175 = phi ptr [ %i.mc, %.new613 ], [ %.017.i.i175.unr, %.prol.loopexit612 ]
  %.016.i.i176 = phi i64 [ %i.mh, %.new613 ], [ %.016.i.i176.unr, %.prol.loopexit612 ]
  %i.lq = getelementptr inbounds nuw i8, ptr %.017.i.i175, i64 16
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %.016.i.i176
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i177 = add nsw i64 %indvars.iv40.i.i174, -1 ; 2 uses
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i177
  store ptr %i.ls, ptr %i.lt, align 8, !tbaa !97
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 15
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !42
  %i.lw = zext i8 %i.lv to i64
  %i.lx = add nsw i64 %i.lw, -1                   ; 2 uses
  %i.ly = trunc i64 %i.lx to i8
  %i.lz = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i177
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !42
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.ma, i64 %i.lx
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i177.1 = add nsw i64 %indvars.iv40.i.i174, -2 ; 2 uses
  %i.md = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i174
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !97
  %i.me = getelementptr inbounds nuw i8, ptr %i.mc, i64 15
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !42
  %i.mg = zext i8 %i.mf to i64
  %i.mh = add nsw i64 %i.mg, -1                   ; 3 uses
  %i.mi = trunc i64 %i.mh to i8
  %i.mj = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i177.1
  store i8 %i.mi, ptr %i.mj, align 1, !tbaa !42
  %i.mk = icmp sgt i64 %indvars.iv40.i.i174, 2
  br i1 %i.mk, label %.new613, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164, !llvm.loop !10

bb.bh:                                            ; preds = %.critedge95
  %i.ml = add i8 %i.km, -1                        ; 2 uses
  store i8 %i.ml, ptr %i.w, align 4, !tbaa !42
  %i.mm = zext i8 %i.ml to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164: ; preds = %.prol.loopexit612, %.new613, %bb.bh
  %.lcssa13.sink.i165 = phi ptr [ %i.kn, %bb.bh ], [ %.lcssa571.unr, %.prol.loopexit612 ], [ %i.mc, %.new613 ]
  %.lcssa.sink.i166 = phi i64 [ %i.mm, %bb.bh ], [ %.lcssa570.unr, %.prol.loopexit612 ], [ %i.mh, %.new613 ]
  %i.mn = getelementptr inbounds nuw i8, ptr %.lcssa13.sink.i165, i64 16
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.mn, i64 %.lcssa.sink.i166
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit178

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit178: ; preds = %bb.bf, %bb.be, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164
  %i.mq = phi ptr [ %i.mp, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i164 ], [ null, %bb.be ], [ null, %bb.bf ]
  store ptr %i.mq, ptr %i.e, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.mr = load i8, ptr %18, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ms = trunc nuw i8 %i.mr to i1
  br i1 %i.ms, label %bb.br, label %bb.bi

bb.bi:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit178
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.mt = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !109 ; 2 uses
  %.not.i.i179 = icmp eq ptr %i.mu, null
  br i1 %.not.i.i179, label %_ZNK7testing15AssertionResult15failure_messageEv.exit180, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit180

_ZNK7testing15AssertionResult15failure_messageEv.exit180: ; preds = %bb.bk, %bb.bj
  %i.mw = phi ptr [ %i.mv, %bb.bk ], [ @.str.56, %bb.bj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 159, ptr noundef %i.mw)
          to label %bb.bl unwind label %bb.bo

bb.bl:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit180
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bm unwind label %bb.bp

bb.bm:                                            ; preds = %bb.bl
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.mx = load ptr, ptr %20, align 8, !tbaa !111  ; 3 uses
  %.not.i.i181 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i181, label %_ZN7testing7MessageD2Ev.exit183, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182: ; preds = %bb.bm
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !37
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(128) %i.mx) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit183

_ZN7testing7MessageD2Ev.exit183:                  ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i182
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.br

bb.bn:                                            ; preds = %bb.bi
  %i.nb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit186

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit180
  %i.nc = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bl
  %i.nd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #32
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.pn69 = phi { ptr, i32 } [ %i.nd, %bb.bp ], [ %i.nc, %bb.bo ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.ne = load ptr, ptr %20, align 8, !tbaa !111  ; 3 uses
  %.not.i.i184 = icmp eq ptr %i.ne, null
  br i1 %.not.i.i184, label %_ZN7testing7MessageD2Ev.exit186, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185: ; preds = %bb.bq
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !37
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %i.nh = load ptr, ptr %i.ng, align 8
  call void %i.nh(ptr noundef nonnull align 8 dereferenceable(128) %i.ne) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit186

_ZN7testing7MessageD2Ev.exit186:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185, %bb.bq, %bb.bn
  %.pn69.pn = phi { ptr, i32 } [ %i.nb, %bb.bn ], [ %.pn69, %bb.bq ], [ %.pn69, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i185 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.ei

bb.br:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit178, %_ZN7testing7MessageD2Ev.exit183
  %i.ni = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !109 ; 4 uses
  %.not.i.i187 = icmp eq ptr %i.nj, null
  br i1 %.not.i.i187, label %_ZN7testing15AssertionResultD2Ev.exit191, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !38 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 16 ; 2 uses
  %i.nm = icmp eq ptr %i.nk, %i.nl
  br i1 %i.nm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188: ; preds = %bb.bs
  %i.nn = load i64, ptr %i.nl, align 8, !tbaa !42
  %i.no = add i64 %i.nn, 1
  call void @_ZdlPvm(ptr noundef %i.nk, i64 noundef %i.no) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i188
  call void @_ZdlPvm(ptr noundef nonnull %i.nj, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit191

_ZN7testing15AssertionResultD2Ev.exit191:         ; preds = %bb.br, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  %i.np = load ptr, ptr %i.bf, align 8, !tbaa !154
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !156
  store ptr %i.nq, ptr %23, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  %i.nr = load ptr, ptr %i.s, align 8, !tbaa !97  ; 3 uses
  %i.ns = load i8, ptr %i.w, align 4, !tbaa !42   ; 3 uses
  %i.nt = zext i8 %i.ns to i64                    ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %i.nu, i64 %i.nt
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !156
  store ptr %i.nw, ptr %i.f, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #32
  %i.nx = load i8, ptr %22, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ny = trunc nuw i8 %i.nx to i1
  br i1 %i.ny, label %bb.cc, label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit191
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bu unwind label %bb.by

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #32
  %i.nz = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !109 ; 2 uses
  %.not.i.i192 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i192, label %_ZNK7testing15AssertionResult15failure_messageEv.exit193, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit193

_ZNK7testing15AssertionResult15failure_messageEv.exit193: ; preds = %bb.bv, %bb.bu
  %i.oc = phi ptr [ %i.ob, %bb.bv ], [ @.str.56, %bb.bu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 160, ptr noundef %i.oc)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit193
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %bb.bw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %i.od = load ptr, ptr %24, align 8, !tbaa !111  ; 3 uses
  %.not.i.i194 = icmp eq ptr %i.od, null
  br i1 %.not.i.i194, label %_ZN7testing7MessageD2Ev.exit196, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195: ; preds = %bb.bx
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !37
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.og = load ptr, ptr %i.of, align 8
  call void %i.og(ptr noundef nonnull align 8 dereferenceable(128) %i.od) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit196

_ZN7testing7MessageD2Ev.exit196:                  ; preds = %bb.bx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  br label %bb.cc

bb.by:                                            ; preds = %bb.bt
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit199

bb.bz:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit193
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.ca:                                            ; preds = %bb.bw
  %i.oj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #32
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.pn72 = phi { ptr, i32 } [ %i.oj, %bb.ca ], [ %i.oi, %bb.bz ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #32
  %i.ok = load ptr, ptr %24, align 8, !tbaa !111  ; 3 uses
  %.not.i.i197 = icmp eq ptr %i.ok, null
  br i1 %.not.i.i197, label %_ZN7testing7MessageD2Ev.exit199, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198: ; preds = %bb.cb
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !37
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(128) %i.ok) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit199

_ZN7testing7MessageD2Ev.exit199:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198, %bb.cb, %bb.by
  %.pn72.pn = phi { ptr, i32 } [ %i.oh, %bb.by ], [ %.pn72, %bb.cb ], [ %.pn72, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i198 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  br label %bb.ei

bb.cc:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit191, %_ZN7testing7MessageD2Ev.exit196
  %i.oo = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !109 ; 4 uses
  %.not.i.i200 = icmp eq ptr %i.op, null
  br i1 %.not.i.i200, label %_ZN7testing15AssertionResultD2Ev.exit204, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !38 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 16 ; 2 uses
  %i.os = icmp eq ptr %i.oq, %i.or
  br i1 %i.os, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i201

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i201: ; preds = %bb.cd
  %i.ot = load i64, ptr %i.or, align 8, !tbaa !42
  %i.ou = add i64 %i.ot, 1
  call void @_ZdlPvm(ptr noundef %i.oq, i64 noundef %i.ou) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i201
  call void @_ZdlPvm(ptr noundef nonnull %i.op, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit204

_ZN7testing15AssertionResultD2Ev.exit204:         ; preds = %bb.cc, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %i.ov = load ptr, ptr %i.eg, align 8, !tbaa !168
  %i.ow = load ptr, ptr %i.bf, align 8, !tbaa !152 ; 2 uses
  %i.ox = ptrtoint ptr %i.ov to i64
  %i.oy = ptrtoint ptr %i.ow to i64
  %i.oz = sub i64 %i.ox, %i.oy
  %.not78330 = icmp ugt i64 %i.oz, 8
  br i1 %.not78330, label %.lr.ph332, label %.critedge99

.lr.ph332:                                        ; preds = %_ZN7testing15AssertionResultD2Ev.exit204
  %i.pa = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 2 uses
  br label %bb.ce

bb.ce:                                            ; preds = %.lr.ph332, %_ZN7testing15AssertionResultD2Ev.exit250
  %i.pc = phi i8 [ %i.ns, %.lr.ph332 ], [ %i.so, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  %i.pd = phi ptr [ %i.nr, %.lr.ph332 ], [ %i.sn, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  %i.pe = phi ptr [ %i.ow, %.lr.ph332 ], [ %i.tr, %_ZN7testing15AssertionResultD2Ev.exit250 ]
  %.055331 = phi i64 [ 1, %.lr.ph332 ], [ %i.tp, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #32
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.pe, i64 %.055331
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !156
  store ptr %i.pg, ptr %27, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  %i.ph = zext i8 %i.pc to i64
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pd, i64 15
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !42
  %i.pk = zext i8 %i.pj to i64
  %i.pl = add nsw i64 %i.pk, -1
  %i.pm = icmp eq i64 %i.pl, %i.ph
  br i1 %i.pm, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.pn = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i208 = call i32 @llvm.smax.i32(i32 %i.pn, i32 0)
  %wide.trip.count.i.i209 = zext nneg i32 %smax.i.i208 to i64
  %exitcond.not.i.i212535 = icmp slt i32 %i.pn, 1
  br i1 %exitcond.not.i.i212535, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit219, label %.lr.ph538

bb.cg:                                            ; preds = %.lr.ph538
  %indvars.iv.next38.i.i214 = add nuw i32 %indvars.iv37.i.i210536, 1
  %exitcond.not.i.i212 = icmp eq i64 %indvars.iv.next.i.i213, %wide.trip.count.i.i209
  br i1 %exitcond.not.i.i212, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit219, label %.lr.ph538, !llvm.loop !11

.lr.ph538:                                        ; preds = %bb.cf, %bb.cg
  %indvars.iv.i.i211537 = phi i64 [ %indvars.iv.next.i.i213, %bb.cg ], [ 0, %bb.cf ] ; 2 uses
  %indvars.iv37.i.i210536 = phi i32 [ %indvars.iv.next38.i.i214, %bb.cg ], [ 1, %bb.cf ] ; 3 uses
  %indvars.iv.next.i.i213 = add nuw nsw i64 %indvars.iv.i.i211537, 1 ; 5 uses
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i213
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !97 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i213
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !42
  %i.ps = zext i8 %i.pr to i64
  %i.pt = add nuw nsw i64 %i.ps, 1                ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pp, i64 15
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !42
  %i.pw = zext i8 %i.pv to i64
  %i.px = icmp eq i64 %i.pt, %i.pw
  br i1 %i.px, label %bb.cg, label %bb.ch, !llvm.loop !11

bb.ch:                                            ; preds = %.lr.ph538
  %i.py = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i213
  %i.pz = trunc i64 %i.pt to i8
  store i8 %i.pz, ptr %i.py, align 1, !tbaa !42
  %i.qa = sext i32 %indvars.iv37.i.i210536 to i64 ; 2 uses
  %i.qb = and i32 %indvars.iv37.i.i210536, 1
  %lcmp.mod622.not = icmp eq i32 %i.qb, 0
  br i1 %lcmp.mod622.not, label %.prol.loopexit618, label %.prol.loopexit618.unr-lcssa

.prol.loopexit618.unr-lcssa:                      ; preds = %bb.ch
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %i.pt
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i218.prol = add nsw i64 %i.qa, -1 ; 3 uses
  %i.qf = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i218.prol
  store ptr %i.qe, ptr %i.qf, align 8, !tbaa !97
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qe, i64 14
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !42  ; 2 uses
  %i.qi = zext i8 %i.qh to i64                    ; 2 uses
  %i.qj = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i218.prol
  store i8 %i.qh, ptr %i.qj, align 1, !tbaa !42
  br label %.prol.loopexit618

.prol.loopexit618:                                ; preds = %.prol.loopexit618.unr-lcssa, %bb.ch
  %indvars.iv40.i.i215.unr = phi i64 [ %i.qa, %bb.ch ], [ %indvars.iv.next41.i.i218.prol, %.prol.loopexit618.unr-lcssa ]
  %.017.i.i216.unr = phi ptr [ %i.pp, %bb.ch ], [ %i.qe, %.prol.loopexit618.unr-lcssa ]
  %.016.i.i217.unr = phi i64 [ %i.pt, %bb.ch ], [ %i.qi, %.prol.loopexit618.unr-lcssa ]
  %.lcssa557.unr = phi ptr [ poison, %bb.ch ], [ %i.qe, %.prol.loopexit618.unr-lcssa ]
  %.lcssa556.unr = phi i64 [ poison, %bb.ch ], [ %i.qi, %.prol.loopexit618.unr-lcssa ]
  %i.qk = icmp eq i64 %indvars.iv.i.i211537, 0
  br i1 %i.qk, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i205, label %.new619

.new619:                                          ; preds = %.prol.loopexit618, %.new619
  %indvars.iv40.i.i215 = phi i64 [ %indvars.iv.next41.i.i218.1, %.new619 ], [ %indvars.iv40.i.i215.unr, %.prol.loopexit618 ] ; 4 uses
  %.017.i.i216 = phi ptr [ %i.qv, %.new619 ], [ %.017.i.i216.unr, %.prol.loopexit618 ]
  %.016.i.i217 = phi i64 [ %i.qz, %.new619 ], [ %.016.i.i217.unr, %.prol.loopexit618 ]
  %i.ql = getelementptr inbounds nuw i8, ptr %.017.i.i216, i64 16
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %i.ql, i64 %.016.i.i217
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i218 = add nsw i64 %indvars.iv40.i.i215, -1 ; 2 uses
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i218
  store ptr %i.qn, ptr %i.qo, align 8, !tbaa !97
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 14
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !42  ; 2 uses
  %i.qr = zext i8 %i.qq to i64
  %i.qs = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i218
  store i8 %i.qq, ptr %i.qs, align 1, !tbaa !42
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qt, i64 %i.qr
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i218.1 = add nsw i64 %indvars.iv40.i.i215, -2 ; 2 uses
  %i.qw = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i215
  store ptr %i.qv, ptr %i.qw, align 8, !tbaa !97
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 14
  %i.qy = load i8, ptr %i.qx, align 1, !tbaa !42  ; 2 uses
  %i.qz = zext i8 %i.qy to i64                    ; 2 uses
  %i.ra = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i218.1
  store i8 %i.qy, ptr %i.ra, align 1, !tbaa !42
  %i.rb = icmp sgt i64 %indvars.iv40.i.i215, 2
  br i1 %i.rb, label %.new619, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i205, !llvm.loop !12

bb.ci:                                            ; preds = %bb.ce
  %i.rc = add i8 %i.pc, 1                         ; 2 uses
  store i8 %i.rc, ptr %i.w, align 4, !tbaa !42
  %i.rd = zext i8 %i.rc to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i205

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i205: ; preds = %.prol.loopexit618, %.new619, %bb.ci
  %.lcssa12.sink.i206 = phi ptr [ %i.pd, %bb.ci ], [ %.lcssa557.unr, %.prol.loopexit618 ], [ %i.qv, %.new619 ]
  %.lcssa.sink.i207 = phi i64 [ %i.rd, %bb.ci ], [ %.lcssa556.unr, %.prol.loopexit618 ], [ %i.qz, %.new619 ]
  %i.re = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i206, i64 16
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %.lcssa.sink.i207
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit219

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit219: ; preds = %bb.cg, %bb.cf, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i205
  %i.rh = phi ptr [ %i.rg, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i205 ], [ null, %bb.cf ], [ null, %bb.cg ]
  store ptr %i.rh, ptr %i.g, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %26, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #32
  %i.ri = load i8, ptr %26, align 8, !tbaa !106, !range !107, !noundef !108
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %.critedge97, label %bb.cj

bb.cj:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit219
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.ck unwind label %bb.cp

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #32
  %i.rk = load ptr, ptr %i.pa, align 8, !tbaa !109 ; 2 uses
  %.not.i.i220 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i220, label %_ZNK7testing15AssertionResult15failure_messageEv.exit221, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit221

_ZNK7testing15AssertionResult15failure_messageEv.exit221: ; preds = %bb.cl, %bb.ck
  %i.rm = phi ptr [ %i.rl, %bb.cl ], [ @.str.56, %bb.ck ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 162, ptr noundef %i.rm)
          to label %bb.cm unwind label %bb.cq

bb.cm:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit221
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %bb.cn unwind label %bb.cr

bb.cn:                                            ; preds = %bb.cm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.rn = load ptr, ptr %28, align 8, !tbaa !111  ; 3 uses
  %.not.i.i222 = icmp eq ptr %i.rn, null
  br i1 %.not.i.i222, label %_ZN7testing7MessageD2Ev.exit224, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223: ; preds = %bb.cn
  %i.ro = load ptr, ptr %i.rn, align 8, !tbaa !37
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rq = load ptr, ptr %i.rp, align 8
  call void %i.rq(ptr noundef nonnull align 8 dereferenceable(128) %i.rn) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit224

_ZN7testing7MessageD2Ev.exit224:                  ; preds = %bb.cn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i223
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  %i.rr = load ptr, ptr %i.pa, align 8, !tbaa !109 ; 4 uses
  %.not.i.i225 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i225, label %bb.dg, label %bb.co

bb.co:                                            ; preds = %_ZN7testing7MessageD2Ev.exit224
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !38 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 16 ; 2 uses
  %i.ru = icmp eq ptr %i.rs, %i.rt
  br i1 %i.ru, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226: ; preds = %bb.co
  %i.rv = load i64, ptr %i.rt, align 8, !tbaa !42
  %i.rw = add i64 %i.rv, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rw) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i226
  call void @_ZdlPvm(ptr noundef nonnull %i.rr, i64 noundef 32) #34
  br label %bb.dg

bb.cp:                                            ; preds = %bb.cj
  %i.rx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit232

bb.cq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit221
  %i.ry = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cm
  %i.rz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %29) #32
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.pn75 = phi { ptr, i32 } [ %i.rz, %bb.cr ], [ %i.ry, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #32
  %i.sa = load ptr, ptr %28, align 8, !tbaa !111  ; 3 uses
  %.not.i.i230 = icmp eq ptr %i.sa, null
  br i1 %.not.i.i230, label %_ZN7testing7MessageD2Ev.exit232, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231: ; preds = %bb.cs
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !37
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(128) %i.sa) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit232

_ZN7testing7MessageD2Ev.exit232:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231, %bb.cs, %bb.cp
  %.pn75.pn = phi { ptr, i32 } [ %i.rx, %bb.cp ], [ %.pn75, %bb.cs ], [ %.pn75, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %26) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  br label %bb.ei

.critedge97:                                      ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit219
  %i.se = load ptr, ptr %i.pa, align 8, !tbaa !109 ; 4 uses
  %.not.i.i233 = icmp eq ptr %i.se, null
  br i1 %.not.i.i233, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %.critedge97
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !38 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 16 ; 2 uses
  %i.sh = icmp eq ptr %i.sf, %i.sg
  br i1 %i.sh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234: ; preds = %bb.ct
  %i.si = load i64, ptr %i.sg, align 8, !tbaa !42
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sf, i64 noundef %i.sj) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234
  call void @_ZdlPvm(ptr noundef nonnull %i.se, i64 noundef 32) #34
  br label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, %.critedge97
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #32
  %i.sk = load ptr, ptr %i.bf, align 8, !tbaa !152
  %i.sl = getelementptr inbounds nuw [8 x i8], ptr %i.sk, i64 %.055331
  %i.sm = load ptr, ptr %i.sl, align 8, !tbaa !156
  store ptr %i.sm, ptr %31, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #32
  %i.sn = load ptr, ptr %i.s, align 8, !tbaa !97  ; 3 uses
  %i.so = load i8, ptr %i.w, align 4, !tbaa !42   ; 3 uses
  %i.sp = zext i8 %i.so to i64                    ; 2 uses
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.sp
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !156
  store ptr %i.ss, ptr %i.h, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30, ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #32
  %i.st = load i8, ptr %30, align 8, !tbaa !106, !range !107, !noundef !108
  %i.su = trunc nuw i8 %i.st to i1
  br i1 %i.su, label %bb.de, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #32
  %i.sv = load ptr, ptr %i.pb, align 8, !tbaa !109 ; 2 uses
  %.not.i.i238 = icmp eq ptr %i.sv, null
  br i1 %.not.i.i238, label %_ZNK7testing15AssertionResult15failure_messageEv.exit239, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit239

_ZNK7testing15AssertionResult15failure_messageEv.exit239: ; preds = %bb.cx, %bb.cw
  %i.sx = phi ptr [ %i.sw, %bb.cx ], [ @.str.56, %bb.cw ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %33, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 163, ptr noundef %i.sx)
          to label %bb.cy unwind label %bb.db

bb.cy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit239
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %bb.cz unwind label %bb.dc

bb.cz:                                            ; preds = %bb.cy
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.sy = load ptr, ptr %32, align 8, !tbaa !111  ; 3 uses
  %.not.i.i240 = icmp eq ptr %i.sy, null
  br i1 %.not.i.i240, label %_ZN7testing7MessageD2Ev.exit242, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241: ; preds = %bb.cz
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !37
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8
  call void %i.tb(ptr noundef nonnull align 8 dereferenceable(128) %i.sy) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit242

_ZN7testing7MessageD2Ev.exit242:                  ; preds = %bb.cz, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  br label %bb.de

bb.da:                                            ; preds = %bb.cv
  %i.tc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit245

bb.db:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit239
  %i.td = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dc:                                            ; preds = %bb.cy
  %i.te = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #32
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.pn85 = phi { ptr, i32 } [ %i.te, %bb.dc ], [ %i.td, %bb.db ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #32
  %i.tf = load ptr, ptr %32, align 8, !tbaa !111  ; 3 uses
  %.not.i.i243 = icmp eq ptr %i.tf, null
  br i1 %.not.i.i243, label %_ZN7testing7MessageD2Ev.exit245, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244: ; preds = %bb.dd
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !37
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 8
  %i.ti = load ptr, ptr %i.th, align 8
  call void %i.ti(ptr noundef nonnull align 8 dereferenceable(128) %i.tf) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit245

_ZN7testing7MessageD2Ev.exit245:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244, %bb.dd, %bb.da
  %.pn85.pn = phi { ptr, i32 } [ %i.tc, %bb.da ], [ %.pn85, %bb.dd ], [ %.pn85, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i244 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %30) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  br label %bb.ei

bb.de:                                            ; preds = %bb.cu, %_ZN7testing7MessageD2Ev.exit242
  %i.tj = load ptr, ptr %i.pb, align 8, !tbaa !109 ; 4 uses
  %.not.i.i246 = icmp eq ptr %i.tj, null
  br i1 %.not.i.i246, label %_ZN7testing15AssertionResultD2Ev.exit250, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !38 ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tj, i64 16 ; 2 uses
  %i.tm = icmp eq ptr %i.tk, %i.tl
  br i1 %i.tm, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i247

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i247: ; preds = %bb.df
  %i.tn = load i64, ptr %i.tl, align 8, !tbaa !42
  %i.to = add i64 %i.tn, 1
  call void @_ZdlPvm(ptr noundef %i.tk, i64 noundef %i.to) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248: ; preds = %bb.df, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i247
  call void @_ZdlPvm(ptr noundef nonnull %i.tj, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit250

_ZN7testing15AssertionResultD2Ev.exit250:         ; preds = %bb.de, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #32
  %i.tp = add nuw i64 %.055331, 1                 ; 2 uses
  %i.tq = load ptr, ptr %i.eg, align 8, !tbaa !168
  %i.tr = load ptr, ptr %i.bf, align 8, !tbaa !152 ; 2 uses
  %i.ts = ptrtoint ptr %i.tq to i64
  %i.tt = ptrtoint ptr %i.tr to i64
  %i.tu = sub i64 %i.ts, %i.tt
  %i.tv = ashr exact i64 %i.tu, 3
  %.not78 = icmp ult i64 %i.tp, %i.tv
  br i1 %.not78, label %bb.ce, label %.critedge99, !llvm.loop !472

bb.dg:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, %_ZN7testing7MessageD2Ev.exit224
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #32
  br label %bb.eh

.critedge99:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit250, %_ZN7testing15AssertionResultD2Ev.exit204
  %.pre-phi = phi i64 [ %i.nt, %_ZN7testing15AssertionResultD2Ev.exit204 ], [ %i.sp, %_ZN7testing15AssertionResultD2Ev.exit250 ]
  %i.tw = phi i8 [ %i.ns, %_ZN7testing15AssertionResultD2Ev.exit204 ], [ %i.so, %_ZN7testing15AssertionResultD2Ev.exit250 ]
  %i.tx = phi ptr [ %i.nr, %_ZN7testing15AssertionResultD2Ev.exit204 ], [ %i.sn, %_ZN7testing15AssertionResultD2Ev.exit250 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #32
  store i64 0, ptr %35, align 8, !alias.scope !477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #32
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 15
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !42
  %i.ua = zext i8 %i.tz to i64
  %i.ub = add nsw i64 %i.ua, -1
  %i.uc = icmp eq i64 %i.ub, %.pre-phi
  br i1 %i.uc, label %bb.dh, label %bb.dk

bb.dh:                                            ; preds = %.critedge99
  %i.ud = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i254 = call i32 @llvm.smax.i32(i32 %i.ud, i32 0)
  %wide.trip.count.i.i255 = zext nneg i32 %smax.i.i254 to i64
  %exitcond.not.i.i258539 = icmp slt i32 %i.ud, 1
  br i1 %exitcond.not.i.i258539, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit265, label %.lr.ph542

bb.di:                                            ; preds = %.lr.ph542
  %indvars.iv.next38.i.i260 = add nuw i32 %indvars.iv37.i.i256540, 1
  %exitcond.not.i.i258 = icmp eq i64 %indvars.iv.next.i.i259, %wide.trip.count.i.i255
  br i1 %exitcond.not.i.i258, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit265, label %.lr.ph542, !llvm.loop !11

.lr.ph542:                                        ; preds = %bb.dh, %bb.di
  %indvars.iv.i.i257541 = phi i64 [ %indvars.iv.next.i.i259, %bb.di ], [ 0, %bb.dh ] ; 2 uses
  %indvars.iv37.i.i256540 = phi i32 [ %indvars.iv.next38.i.i260, %bb.di ], [ 1, %bb.dh ] ; 3 uses
  %indvars.iv.next.i.i259 = add nuw nsw i64 %indvars.iv.i.i257541, 1 ; 5 uses
  %i.ue = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i259
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !97 ; 3 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i259
  %i.uh = load i8, ptr %i.ug, align 1, !tbaa !42
  %i.ui = zext i8 %i.uh to i64
  %i.uj = add nuw nsw i64 %i.ui, 1                ; 4 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uf, i64 15
  %i.ul = load i8, ptr %i.uk, align 1, !tbaa !42
  %i.um = zext i8 %i.ul to i64
  %i.un = icmp eq i64 %i.uj, %i.um
  br i1 %i.un, label %bb.di, label %bb.dj, !llvm.loop !11

bb.dj:                                            ; preds = %.lr.ph542
  %i.uo = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.next.i.i259
  %i.up = trunc i64 %i.uj to i8
  store i8 %i.up, ptr %i.uo, align 1, !tbaa !42
  %i.uq = sext i32 %indvars.iv37.i.i256540 to i64 ; 2 uses
  %i.ur = and i32 %indvars.iv37.i.i256540, 1
  %lcmp.mod628.not = icmp eq i32 %i.ur, 0
  br i1 %lcmp.mod628.not, label %.prol.loopexit624, label %.prol.loopexit624.unr-lcssa

.prol.loopexit624.unr-lcssa:                      ; preds = %bb.dj
  %i.us = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.us, i64 %i.uj
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i264.prol = add nsw i64 %i.uq, -1 ; 3 uses
  %i.uv = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i264.prol
  store ptr %i.uu, ptr %i.uv, align 8, !tbaa !97
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uu, i64 14
  %i.ux = load i8, ptr %i.uw, align 1, !tbaa !42  ; 2 uses
  %i.uy = zext i8 %i.ux to i64                    ; 2 uses
  %i.uz = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i264.prol
  store i8 %i.ux, ptr %i.uz, align 1, !tbaa !42
  br label %.prol.loopexit624

.prol.loopexit624:                                ; preds = %.prol.loopexit624.unr-lcssa, %bb.dj
  %indvars.iv40.i.i261.unr = phi i64 [ %i.uq, %bb.dj ], [ %indvars.iv.next41.i.i264.prol, %.prol.loopexit624.unr-lcssa ]
  %.017.i.i262.unr = phi ptr [ %i.uf, %bb.dj ], [ %i.uu, %.prol.loopexit624.unr-lcssa ]
  %.016.i.i263.unr = phi i64 [ %i.uj, %bb.dj ], [ %i.uy, %.prol.loopexit624.unr-lcssa ]
  %.lcssa543.unr = phi ptr [ poison, %bb.dj ], [ %i.uu, %.prol.loopexit624.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.dj ], [ %i.uy, %.prol.loopexit624.unr-lcssa ]
  %i.va = icmp eq i64 %indvars.iv.i.i257541, 0
  br i1 %i.va, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i251, label %.new625

.new625:                                          ; preds = %.prol.loopexit624, %.new625
  %indvars.iv40.i.i261 = phi i64 [ %indvars.iv.next41.i.i264.1, %.new625 ], [ %indvars.iv40.i.i261.unr, %.prol.loopexit624 ] ; 4 uses
  %.017.i.i262 = phi ptr [ %i.vl, %.new625 ], [ %.017.i.i262.unr, %.prol.loopexit624 ]
  %.016.i.i263 = phi i64 [ %i.vp, %.new625 ], [ %.016.i.i263.unr, %.prol.loopexit624 ]
  %i.vb = getelementptr inbounds nuw i8, ptr %.017.i.i262, i64 16
  %i.vc = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %.016.i.i263
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i264 = add nsw i64 %indvars.iv40.i.i261, -1 ; 2 uses
  %i.ve = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next41.i.i264
  store ptr %i.vd, ptr %i.ve, align 8, !tbaa !97
  %i.vf = getelementptr inbounds nuw i8, ptr %i.vd, i64 14
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !42  ; 2 uses
  %i.vh = zext i8 %i.vg to i64
  %i.vi = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i264
  store i8 %i.vg, ptr %i.vi, align 1, !tbaa !42
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %i.vk = getelementptr inbounds nuw [8 x i8], ptr %i.vj, i64 %i.vh
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i264.1 = add nsw i64 %indvars.iv40.i.i261, -2 ; 2 uses
  %i.vm = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i261
  store ptr %i.vl, ptr %i.vm, align 8, !tbaa !97
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vl, i64 14
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !42  ; 2 uses
  %i.vp = zext i8 %i.vo to i64                    ; 2 uses
  %i.vq = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next41.i.i264.1
  store i8 %i.vo, ptr %i.vq, align 1, !tbaa !42
  %i.vr = icmp sgt i64 %indvars.iv40.i.i261, 2
  br i1 %i.vr, label %.new625, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i251, !llvm.loop !12

bb.dk:                                            ; preds = %.critedge99
  %i.vs = add i8 %i.tw, 1                         ; 2 uses
  store i8 %i.vs, ptr %i.w, align 4, !tbaa !42
  %i.vt = zext i8 %i.vs to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i251

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i251: ; preds = %.prol.loopexit624, %.new625, %bb.dk
  %.lcssa12.sink.i252 = phi ptr [ %i.tx, %bb.dk ], [ %.lcssa543.unr, %.prol.loopexit624 ], [ %i.vl, %.new625 ]
  %.lcssa.sink.i253 = phi i64 [ %i.vt, %bb.dk ], [ %.lcssa.unr, %.prol.loopexit624 ], [ %i.vp, %.new625 ]
  %i.vu = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i252, i64 16
  %i.vv = getelementptr inbounds nuw [8 x i8], ptr %i.vu, i64 %.lcssa.sink.i253
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit265

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit265: ; preds = %bb.di, %bb.dh, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i251
  %i.vx = phi ptr [ %i.vw, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i251 ], [ null, %bb.dh ], [ null, %bb.di ]
  store ptr %i.vx, ptr %i.i, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %34, ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #32
  %i.vy = load i8, ptr %34, align 8, !tbaa !106, !range !107, !noundef !108
  %i.vz = trunc nuw i8 %i.vy to i1
  br i1 %i.vz, label %bb.du, label %bb.dl

bb.dl:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit265
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.dm unwind label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #32
  %i.wa = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.wb = load ptr, ptr %i.wa, align 8, !tbaa !109 ; 2 uses
  %.not.i.i266 = icmp eq ptr %i.wb, null
  br i1 %.not.i.i266, label %_ZNK7testing15AssertionResult15failure_messageEv.exit267, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit267

_ZNK7testing15AssertionResult15failure_messageEv.exit267: ; preds = %bb.dn, %bb.dm
  %i.wd = phi ptr [ %i.wc, %bb.dn ], [ @.str.56, %bb.dm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 165, ptr noundef %i.wd)
          to label %bb.do unwind label %bb.dr

bb.do:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit267
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(8) %36)
          to label %bb.dp unwind label %bb.ds

bb.dp:                                            ; preds = %bb.do
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  %i.we = load ptr, ptr %36, align 8, !tbaa !111  ; 3 uses
  %.not.i.i268 = icmp eq ptr %i.we, null
  br i1 %.not.i.i268, label %_ZN7testing7MessageD2Ev.exit270, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269: ; preds = %bb.dp
  %i.wf = load ptr, ptr %i.we, align 8, !tbaa !37
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 8
  %i.wh = load ptr, ptr %i.wg, align 8
  call void %i.wh(ptr noundef nonnull align 8 dereferenceable(128) %i.we) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit270

_ZN7testing7MessageD2Ev.exit270:                  ; preds = %bb.dp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i269
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #32
  br label %bb.du

bb.dq:                                            ; preds = %bb.dl
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit273

bb.dr:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit267
  %i.wj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dt

bb.ds:                                            ; preds = %bb.do
  %i.wk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %37) #32
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.pn79 = phi { ptr, i32 } [ %i.wk, %bb.ds ], [ %i.wj, %bb.dr ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #32
  %i.wl = load ptr, ptr %36, align 8, !tbaa !111  ; 3 uses
  %.not.i.i271 = icmp eq ptr %i.wl, null
  br i1 %.not.i.i271, label %_ZN7testing7MessageD2Ev.exit273, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272: ; preds = %bb.dt
  %i.wm = load ptr, ptr %i.wl, align 8, !tbaa !37
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8
  call void %i.wo(ptr noundef nonnull align 8 dereferenceable(128) %i.wl) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit273

_ZN7testing7MessageD2Ev.exit273:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272, %bb.dt, %bb.dq
  %.pn79.pn = phi { ptr, i32 } [ %i.wi, %bb.dq ], [ %.pn79, %bb.dt ], [ %.pn79, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i272 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  br label %bb.ei

bb.du:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit265, %_ZN7testing7MessageD2Ev.exit270
  %i.wp = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.wq = load ptr, ptr %i.wp, align 8, !tbaa !109 ; 4 uses
  %.not.i.i274 = icmp eq ptr %i.wq, null
  br i1 %.not.i.i274, label %_ZN7testing15AssertionResultD2Ev.exit278, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !38 ; 2 uses
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wq, i64 16 ; 2 uses
  %i.wt = icmp eq ptr %i.wr, %i.ws
  br i1 %i.wt, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275: ; preds = %bb.dv
  %i.wu = load i64, ptr %i.ws, align 8, !tbaa !42
  %i.wv = add i64 %i.wu, 1
  call void @_ZdlPvm(ptr noundef %i.wr, i64 noundef %i.wv) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276: ; preds = %bb.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i275
  call void @_ZdlPvm(ptr noundef nonnull %i.wq, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit278

_ZN7testing15AssertionResultD2Ev.exit278:         ; preds = %bb.du, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i276
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #32
  %i.ww = load ptr, ptr %i.eg, align 8, !tbaa !154
  %i.wx = getelementptr inbounds i8, ptr %i.ww, i64 -8
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !156
  store ptr %i.wy, ptr %39, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #32
  %i.wz = load ptr, ptr %i.s, align 8, !tbaa !97
  %i.xa = load i8, ptr %i.w, align 4, !tbaa !42
  %i.xb = zext i8 %i.xa to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %i.wz, i64 16
  %i.xd = getelementptr inbounds nuw [8 x i8], ptr %i.xc, i64 %i.xb
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !156
  store ptr %i.xe, ptr %i.j, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %38, ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #32
  %i.xf = load i8, ptr %38, align 8, !tbaa !106, !range !107, !noundef !108
  %i.xg = trunc nuw i8 %i.xf to i1
  br i1 %i.xg, label %bb.ef, label %bb.dw

bb.dw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit278
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %bb.dx unwind label %bb.eb

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #32
  %i.xh = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !109 ; 2 uses
  %.not.i.i279 = icmp eq ptr %i.xi, null
  br i1 %.not.i.i279, label %_ZNK7testing15AssertionResult15failure_messageEv.exit280, label %bb.dy
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_136CordRepBtreeNavigatorTest_Reset_Test8TestBodyEv:_ZNK4absl12lts_2026052613cord_internal21CordRepBtreeNavigator5btreeEv.exit
_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.j, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.ag = atomicrmw sub ptr %i.f, i32 2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.ag, 2
  br i1 %.not.i, label %bb.l, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit, !prof !157

bb.l:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %i.e)
  br label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %bb.l
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Skip_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Skip_TestEE17CreateTestFactoryEm(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Skip_TestEEE, i64 16), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !482
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Skip_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Skip_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceImE10parameter_E, align 8, !tbaa !69
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #33 ; 5 uses
  invoke fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Skip_TestE, i64 16), ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Skip_TestE, i64 80), ptr %i.c, align 8, !tbaa !37
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #34
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Skip_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8), (16, 24)) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 80), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !157

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.c)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i unwind label %bb.d, !inline_history !186

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #34, !inline_history !186
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34, !inline_history !186
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #35, !inline_history !186
  unreachable

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(88) %0) #32, !inline_history !186
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Skip_Test8TestBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeNavigator", align 8 ; 8 uses
  %2 = alloca %"struct.absl::lts_20260526::cord_internal::CordRepBtreeNavigator::Position", align 8 ; 7 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %4 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %8 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.133", align 8 ; 4 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeNavigator", align 8 ; 10 uses
  %16 = alloca %"struct.absl::lts_20260526::cord_internal::CordRepBtreeNavigator::Position", align 8 ; 8 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %18 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %22 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %26 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.133", align 8 ; 4 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"struct.absl::lts_20260526::cord_internal::CordRepBtreeNavigator::Position", align 8 ; 9 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %31 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %35 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %39 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.133", align 8 ; 4 uses
  %40 = alloca %"class.testing::Message", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing18WithParamInterfaceImE8GetParamEv()
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %.val143 = load ptr, ptr %i.d, align 8, !tbaa !185 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val143, i64 13
  %i.f = load i8, ptr %i.e, align 1, !tbaa !42    ; 4 uses
  %i.g = zext i8 %i.f to i32
  store i32 %i.g, ptr %1, align 8, !tbaa !188
  %i.h = getelementptr inbounds nuw i8, ptr %.val143, i64 14
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = zext i8 %i.f to i64                      ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  store ptr %.val143, ptr %i.l, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 %i.i, ptr %i.n, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %.021.i.i.prol = zext i8 %i.i to i64
  %indvars.iv.next.i.i.prol = add nsw i64 %i.k, -1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val143, i64 16
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.021.i.i.prol
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156  ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.prol
  store ptr %i.q, ptr %i.r, align 8, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i.i.prol
  store i8 %i.t, ptr %i.u, align 1, !tbaa !42
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %i.k, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.021.i.i.in.unr = phi i8 [ %i.i, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.01619.i.i.unr = phi ptr [ %.val143, %.lr.ph.i.i.preheader ], [ %i.q, %.lr.ph.i.i.prol ]
  %i.v = icmp eq i8 %i.f, 1
  br i1 %i.v, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.021.i.i.in = phi i8 [ %i.ai, %.lr.ph.i.i ], [ %.021.i.i.in.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01619.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.01619.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.021.i.i = zext i8 %.021.i.i.in to i64
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 16
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.021.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !156  ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i
  store ptr %i.y, ptr %i.z, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 14
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !42
  %.021.i.i.1 = zext i8 %i.ab to i64
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.021.i.i.1
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !156 ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i.i.1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !42
  %i.ak = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, !llvm.loop !5

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br label %bb.b

.preheader295:                                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit175
  %.not300 = icmp eq i64 %i.b, 0
  br i1 %.not300, label %.loopexit, label %.preheader294.lr.ph

.preheader294.lr.ph:                              ; preds = %.preheader295
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  br label %.preheader294

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, %_ZN7testing15AssertionResultD2Ev.exit175
  %.0296 = phi i64 [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit ], [ %i.dy, %_ZN7testing15AssertionResultD2Ev.exit175 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.az = call { ptr, i64 } @_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SkipEm(ptr noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %.0296) ; 2 uses
  %i.ba = extractvalue { ptr, i64 } %i.az, 0
  store ptr %i.ba, ptr %2, align 8
  %i.bb = extractvalue { ptr, i64 } %i.az, 1
  store i64 %i.bb, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.bc = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.bd = load i8, ptr %i.m, align 4, !tbaa !42
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.be
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !156
  store ptr %i.bh, ptr %4, align 8
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.75, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bi = load i8, ptr %3, align 8, !tbaa !106, !range !107, !noundef !108
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.bk = load ptr, ptr %i.am, align 8, !tbaa !109 ; 2 uses
  %.not.i.i144 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i144, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.bm = phi ptr [ %i.bl, %bb.e ], [ @.str.56, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 190, ptr noundef %i.bm)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.bn = load ptr, ptr %5, align 8, !tbaa !111   ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !37
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(128) %i.bn) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit148

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn114 = phi { ptr, i32 } [ %i.bt, %bb.j ], [ %i.bs, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.bu = load ptr, ptr %5, align 8, !tbaa !111   ; 3 uses
  %.not.i.i146 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i146, label %_ZN7testing7MessageD2Ev.exit148, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i147

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i147: ; preds = %bb.k
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(128) %i.bu) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit148

_ZN7testing7MessageD2Ev.exit148:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i147, %bb.k, %bb.h
  %.pn114.pn = phi { ptr, i32 } [ %i.br, %bb.h ], [ %.pn114, %bb.k ], [ %.pn114, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i147 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.aj

bb.l:                                             ; preds = %bb.b, %_ZN7testing7MessageD2Ev.exit
  %i.by = load ptr, ptr %i.am, align 8, !tbaa !109 ; 4 uses
  %.not.i.i149 = icmp eq ptr %i.by, null
  br i1 %.not.i.i149, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !38 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.m
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !42
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.bz, i64 noundef %i.cd) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.by, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.ce = load ptr, ptr %i.c, align 8, !tbaa !152
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !156
  store ptr %i.cf, ptr %8, align 8
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.75, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.cg = load i8, ptr %7, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.w, label %bb.n

bb.n:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Skip_Test8TestBodyEv:bb.a
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(128) %i.cs) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit157

_ZN7testing7MessageD2Ev.exit157:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156, %bb.v, %bb.s
  %.pn117.pn = phi { ptr, i32 } [ %i.cp, %bb.s ], [ %.pn117, %bb.v ], [ %.pn117, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i156 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  br label %bb.aj

bb.w:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing7MessageD2Ev.exit154
  %i.cw = load ptr, ptr %i.an, align 8, !tbaa !109 ; 4 uses
  %.not.i.i158 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i158, label %_ZN7testing15AssertionResultD2Ev.exit162, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !38 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159: ; preds = %bb.x
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !42
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i159
  call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit162

_ZN7testing15AssertionResultD2Ev.exit162:         ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i160
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store i64 %.0296, ptr %12, align 8
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherImEEEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull @.str.76, ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  %i.dc = load i8, ptr %11, align 8, !tbaa !106, !range !107, !noundef !108
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.ah, label %bb.y

bb.y:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit162
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.de = load ptr, ptr %i.ao, align 8, !tbaa !109 ; 2 uses
  %.not.i.i163 = icmp eq ptr %i.de, null
  br i1 %.not.i.i163, label %_ZNK7testing15AssertionResult15failure_messageEv.exit164, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit164

_ZNK7testing15AssertionResult15failure_messageEv.exit164: ; preds = %bb.aa, %bb.z
  %i.dg = phi ptr [ %i.df, %bb.aa ], [ @.str.56, %bb.z ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 192, ptr noundef %i.dg)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit164
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ac unwind label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.dh = load ptr, ptr %13, align 8, !tbaa !111  ; 3 uses
  %.not.i.i165 = icmp eq ptr %i.dh, null
  br i1 %.not.i.i165, label %_ZN7testing7MessageD2Ev.exit167, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166: ; preds = %bb.ac
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !37
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(128) %i.dh) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit167

_ZN7testing7MessageD2Ev.exit167:                  ; preds = %bb.ac, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i166
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  br label %bb.ah

bb.ad:                                            ; preds = %bb.y
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit170

bb.ae:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit164
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.ab
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn120 = phi { ptr, i32 } [ %i.dn, %bb.af ], [ %i.dm, %bb.ae ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  %i.do = load ptr, ptr %13, align 8, !tbaa !111  ; 3 uses
  %.not.i.i168 = icmp eq ptr %i.do, null
  br i1 %.not.i.i168, label %_ZN7testing7MessageD2Ev.exit170, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169: ; preds = %bb.ag
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !37
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(128) %i.do) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit170

_ZN7testing7MessageD2Ev.exit170:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169, %bb.ag, %bb.ad
  %.pn120.pn = phi { ptr, i32 } [ %i.dl, %bb.ad ], [ %.pn120, %bb.ag ], [ %.pn120, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i169 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit162, %_ZN7testing7MessageD2Ev.exit167
  %i.ds = load ptr, ptr %i.ao, align 8, !tbaa !109 ; 4 uses
  %.not.i.i171 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i171, label %_ZN7testing15AssertionResultD2Ev.exit175, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !38 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %i.dv = icmp eq ptr %i.dt, %i.du
  br i1 %i.dv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i172: ; preds = %bb.ai
  %i.dw = load i64, ptr %i.du, align 8, !tbaa !42
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dx) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i172
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit175

_ZN7testing15AssertionResultD2Ev.exit175:         ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i173
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.dy = add nuw nsw i64 %.0296, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, 3
  br i1 %exitcond.not, label %.preheader295, label %bb.b, !llvm.loop !483

bb.aj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit170, %_ZN7testing7MessageD2Ev.exit157, %_ZN7testing7MessageD2Ev.exit148
  %.pn120.pn.pn = phi { ptr, i32 } [ %.pn120.pn, %_ZN7testing7MessageD2Ev.exit170 ], [ %.pn117.pn, %_ZN7testing7MessageD2Ev.exit157 ], [ %.pn114.pn, %_ZN7testing7MessageD2Ev.exit148 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.dh

.preheader294:                                    ; preds = %.preheader294.lr.ph, %.critedge138
  %.080299 = phi i64 [ 0, %.preheader294.lr.ph ], [ %i.mv, %.critedge138 ] ; 5 uses
  %i.dz = mul i64 %.080299, 3
  br label %.preheader

.preheader:                                       ; preds = %.preheader294, %.critedge136
  %.082298 = phi i64 [ %.080299, %.preheader294 ], [ %i.mu, %.critedge136 ] ; 3 uses
  %i.ea = sub nuw i64 %.082298, %.080299
  %i.eb = mul i64 %i.ea, 3
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader, %bb.de
  %.081297 = phi i64 [ 0, %.preheader ], [ %i.mt, %bb.de ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %.val = load ptr, ptr %i.d, align 8, !tbaa !185 ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val, i64 13
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !42  ; 4 uses
  %i.ee = zext i8 %i.ed to i32
  store i32 %i.ee, ptr %15, align 8, !tbaa !188
  %i.ef = getelementptr inbounds nuw i8, ptr %.val, i64 14
  %i.eg = load i8, ptr %i.ef, align 1             ; 3 uses
  %i.eh = zext i8 %i.ed to i64                    ; 5 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.eh
  store ptr %.val, ptr %i.ei, align 8, !tbaa !97
  %i.ej = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.eh
  store i8 %i.eg, ptr %i.ej, align 1, !tbaa !42
  %.not.i.i177 = icmp eq i8 %i.ed, 0
  br i1 %.not.i.i177, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185, label %.lr.ph.i.i178.preheader

.lr.ph.i.i178.preheader:                          ; preds = %bb.ak
  %xtraiter380 = and i64 %i.eh, 1
  %lcmp.mod381.not = icmp eq i64 %xtraiter380, 0
  br i1 %lcmp.mod381.not, label %.lr.ph.i.i178.prol.loopexit, label %.lr.ph.i.i178.prol

.lr.ph.i.i178.prol:                               ; preds = %.lr.ph.i.i178.preheader
  %.021.i.i180.prol = zext i8 %i.eg to i64
  %indvars.iv.next.i.i182.prol = add nsw i64 %i.eh, -1 ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %.021.i.i180.prol
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !156 ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i182.prol
  store ptr %i.em, ptr %i.en, align 8, !tbaa !97
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 14
  %i.ep = load i8, ptr %i.eo, align 1             ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next.i.i182.prol
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !42
  br label %.lr.ph.i.i178.prol.loopexit

.lr.ph.i.i178.prol.loopexit:                      ; preds = %.lr.ph.i.i178.prol, %.lr.ph.i.i178.preheader
  %indvars.iv.i.i179.unr = phi i64 [ %i.eh, %.lr.ph.i.i178.preheader ], [ %indvars.iv.next.i.i182.prol, %.lr.ph.i.i178.prol ]
  %.021.i.i180.in.unr = phi i8 [ %i.eg, %.lr.ph.i.i178.preheader ], [ %i.ep, %.lr.ph.i.i178.prol ]
  %.01619.i.i181.unr = phi ptr [ %.val, %.lr.ph.i.i178.preheader ], [ %i.em, %.lr.ph.i.i178.prol ]
  %i.er = icmp eq i8 %i.ed, 1
  br i1 %i.er, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185, label %.lr.ph.i.i178

.lr.ph.i.i178:                                    ; preds = %.lr.ph.i.i178.prol.loopexit, %.lr.ph.i.i178
  %indvars.iv.i.i179 = phi i64 [ %indvars.iv.next.i.i182.1, %.lr.ph.i.i178 ], [ %indvars.iv.i.i179.unr, %.lr.ph.i.i178.prol.loopexit ] ; 4 uses
  %.021.i.i180.in = phi i8 [ %i.fe, %.lr.ph.i.i178 ], [ %.021.i.i180.in.unr, %.lr.ph.i.i178.prol.loopexit ]
  %.01619.i.i181 = phi ptr [ %i.fb, %.lr.ph.i.i178 ], [ %.01619.i.i181.unr, %.lr.ph.i.i178.prol.loopexit ]
  %.021.i.i180 = zext i8 %.021.i.i180.in to i64
  %indvars.iv.next.i.i182 = add nsw i64 %indvars.iv.i.i179, -1 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.01619.i.i181, i64 16
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.021.i.i180
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !156 ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next.i.i182
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !97
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 14
  %i.ex = load i8, ptr %i.ew, align 1             ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next.i.i182
  store i8 %i.ex, ptr %i.ey, align 1, !tbaa !42
  %.021.i.i180.1 = zext i8 %i.ex to i64
  %indvars.iv.next.i.i182.1 = add nsw i64 %indvars.iv.i.i179, -2 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %.021.i.i180.1
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !156 ; 3 uses
  %i.fc = getelementptr [8 x i8], ptr %15, i64 %indvars.iv.i.i179
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !97
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 14
  %i.fe = load i8, ptr %i.fd, align 1             ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aq, i64 %indvars.iv.next.i.i182.1
  store i8 %i.fe, ptr %i.ff, align 1, !tbaa !42
  %i.fg = icmp sgt i64 %indvars.iv.i.i179, 2
  br i1 %i.fg, label %.lr.ph.i.i178, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185, !llvm.loop !5

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185: ; preds = %.lr.ph.i.i178.prol.loopexit, %.lr.ph.i.i178, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.fh = add i64 %.081297, %i.dz
  %i.fi = call { ptr, i64 } @_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SkipEm(ptr noundef nonnull align 8 dereferenceable(112) %15, i64 noundef %i.fh) ; 2 uses
  %i.fj = extractvalue { ptr, i64 } %i.fi, 0
  store ptr %i.fj, ptr %16, align 8
  %i.fk = extractvalue { ptr, i64 } %i.fi, 1
  store i64 %i.fk, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  %i.fl = load ptr, ptr %i.c, align 8, !tbaa !152
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %.080299
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !156
  store ptr %i.fn, ptr %18, align 8
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull @.str.77, ptr noundef nonnull align 8 dereferenceable(8) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.fo = load i8, ptr %17, align 8, !tbaa !106, !range !107, !noundef !108
  %i.fp = trunc nuw i8 %i.fo to i1
  br i1 %i.fp, label %.critedge, label %bb.al

bb.al:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  %i.fq = load ptr, ptr %i.as, align 8, !tbaa !109 ; 2 uses
  %.not.i.i186 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i186, label %_ZNK7testing15AssertionResult15failure_messageEv.exit187, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit187

_ZNK7testing15AssertionResult15failure_messageEv.exit187: ; preds = %bb.an, %bb.am
  %i.fs = phi ptr [ %i.fr, %bb.an ], [ @.str.56, %bb.am ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 203, ptr noundef %i.fs)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit187
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.ap unwind label %bb.at

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.ft = load ptr, ptr %19, align 8, !tbaa !111  ; 3 uses
  %.not.i.i188 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i188, label %_ZN7testing7MessageD2Ev.exit190, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189: ; preds = %bb.ap
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !37
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(128) %i.ft) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit190

_ZN7testing7MessageD2Ev.exit190:                  ; preds = %bb.ap, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i189
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.fx = load ptr, ptr %i.as, align 8, !tbaa !109 ; 4 uses
  %.not.i.i191 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i191, label %_ZN7testing15AssertionResultD2Ev.exit195, label %bb.aq

bb.aq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit190
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !38 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fx, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192: ; preds = %bb.aq
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !42
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193: ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i192
  call void @_ZdlPvm(ptr noundef nonnull %i.fx, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit195

_ZN7testing15AssertionResultD2Ev.exit195:         ; preds = %_ZN7testing7MessageD2Ev.exit190, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i193
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %.loopexit.sink.split

bb.ar:                                            ; preds = %bb.al
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit198

bb.as:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit187
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.at:                                            ; preds = %bb.ao
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn = phi { ptr, i32 } [ %i.gf, %bb.at ], [ %i.ge, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  %i.gg = load ptr, ptr %19, align 8, !tbaa !111  ; 3 uses
  %.not.i.i196 = icmp eq ptr %i.gg, null
  br i1 %.not.i.i196, label %_ZN7testing7MessageD2Ev.exit198, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197: ; preds = %bb.au
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !37
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(128) %i.gg) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit198

_ZN7testing7MessageD2Ev.exit198:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197, %bb.au, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.ar ], [ %.pn, %bb.au ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i197 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  br label %bb.dg

.critedge:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit185
  %i.gk = load ptr, ptr %i.as, align 8, !tbaa !109 ; 4 uses
  %.not.i.i199 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i199, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.critedge
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !38 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 16 ; 2 uses
  %i.gn = icmp eq ptr %i.gl, %i.gm
  br i1 %i.gn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i200

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i200: ; preds = %bb.av
  %i.go = load i64, ptr %i.gm, align 8, !tbaa !42
  %i.gp = add i64 %i.go, 1
  call void @_ZdlPvm(ptr noundef %i.gl, i64 noundef %i.gp) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i200
  call void @_ZdlPvm(ptr noundef nonnull %i.gk, i64 noundef 32) #34
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i201, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #32
  %i.gq = load ptr, ptr %i.ap, align 8, !tbaa !97
  %i.gr = load i8, ptr %i.aq, align 4, !tbaa !42
  %i.gs = zext i8 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %i.gs
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !156
  store ptr %i.gv, ptr %22, align 8
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef nonnull @.str.77, ptr noundef nonnull align 8 dereferenceable(8) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #32
  %i.gw = load i8, ptr %21, align 8, !tbaa !106, !range !107, !noundef !108
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %.critedge126, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
end_hunk_5
begin_hunk_6_@_ZN7testing8internal11MatcherBaseIRKmE12DescribeImplINS4_11ValuePolicyINS0_9EqMatcherImEELb1EEEEEvRKS4_PSob
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKmE12DescribeImplINS4_11ValuePolicyINS0_9EqMatcherImEELb1EEEEEvRKS4_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.41, i64 noundef 14) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.43, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !41
  %i.f = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKmE16GetDescriberImplINS4_11ValuePolicyINS0_9EqMatcherImEELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Seek_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Seek_TestEE17CreateTestFactoryEm(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Seek_TestEEE, i64 16), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !531
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Seek_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Seek_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceImE10parameter_E, align 8, !tbaa !69
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #33 ; 5 uses
  invoke fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Seek_TestE, i64 16), ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Seek_TestE, i64 80), ptr %i.c, align 8, !tbaa !37
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #34
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Seek_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8), (16, 24)) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 80), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !157

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.c)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i unwind label %bb.d, !inline_history !186

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #34, !inline_history !186
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34, !inline_history !186
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #35, !inline_history !186
  unreachable

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(88) %0) #32, !inline_history !186
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Seek_Test8TestBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeNavigator", align 8 ; 9 uses
  %2 = alloca %"struct.absl::lts_20260526::cord_internal::CordRepBtreeNavigator::Position", align 8 ; 7 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %4 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %8 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.133", align 8 ; 4 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"struct.absl::lts_20260526::cord_internal::CordRepBtreeNavigator::Position", align 8 ; 8 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.133", align 8 ; 4 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN7testing18WithParamInterfaceImE8GetParamEv()
  %i.b = load i64, ptr %i.a, align 8, !tbaa !41   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.d, align 8, !tbaa !185 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 13
  %i.f = load i8, ptr %i.e, align 1, !tbaa !42    ; 4 uses
  %i.g = zext i8 %i.f to i32
  store i32 %i.g, ptr %1, align 8, !tbaa !188
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 14
  %i.i = load i8, ptr %i.h, align 1               ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.k = zext i8 %i.f to i64                      ; 5 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.k
  store ptr %.val, ptr %i.l, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 %i.i, ptr %i.n, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.k, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %.021.i.i.prol = zext i8 %i.i to i64
  %indvars.iv.next.i.i.prol = add nsw i64 %i.k, -1 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %.021.i.i.prol
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !156  ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i.prol
  store ptr %i.q, ptr %i.r, align 8, !tbaa !97
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 14
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i.i.prol
  store i8 %i.t, ptr %i.u, align 1, !tbaa !42
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %i.k, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.021.i.i.in.unr = phi i8 [ %i.i, %.lr.ph.i.i.preheader ], [ %i.t, %.lr.ph.i.i.prol ]
  %.01619.i.i.unr = phi ptr [ %.val, %.lr.ph.i.i.preheader ], [ %i.q, %.lr.ph.i.i.prol ]
  %i.v = icmp eq i8 %i.f, 1
  br i1 %i.v, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.021.i.i.in = phi i8 [ %i.ai, %.lr.ph.i.i ], [ %.021.i.i.in.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01619.i.i = phi ptr [ %i.af, %.lr.ph.i.i ], [ %.01619.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.021.i.i = zext i8 %.021.i.i.in to i64
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 16
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.021.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !156  ; 3 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i.i
  store ptr %i.y, ptr %i.z, align 8, !tbaa !97
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 14
  %i.ab = load i8, ptr %i.aa, align 1             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !42
  %.021.i.i.1 = zext i8 %i.ab to i64
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.021.i.i.1
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !156 ; 3 uses
  %i.ag = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.ai = load i8, ptr %i.ah, align 1             ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i.i.1
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !42
  %i.ak = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.ak, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, !llvm.loop !5

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  br label %bb.b

.preheader209:                                    ; preds = %_ZN7testing15AssertionResultD2Ev.exit121
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader209
  %i.ap = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  br label %.preheader

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, %_ZN7testing15AssertionResultD2Ev.exit121
  %.0219 = phi i64 [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit ], [ %i.fi, %_ZN7testing15AssertionResultD2Ev.exit121 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.at = load i32, ptr %1, align 8, !tbaa !188   ; 3 uses
  %i.au = sext i32 %i.at to i64                   ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !97 ; 5 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !163
  %.not.i = icmp ult i64 %.0219, %i.ax
  br i1 %.not.i, label %bb.c, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit, !prof !210

bb.c:                                             ; preds = %bb.b
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !42
  %i.ba = zext i8 %i.az to i64                    ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !156
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !163 ; 2 uses
  %.not8.i.i = icmp ult i64 %.0219, %i.be
  br i1 %.not8.i.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i, label %.lr.ph.i.i87

.lr.ph.i.i87:                                     ; preds = %bb.c, %.lr.ph.i.i87
  %i.bf = phi i64 [ %i.bk, %.lr.ph.i.i87 ], [ %i.be, %bb.c ]
  %.010.i.i = phi i64 [ %i.bg, %.lr.ph.i.i87 ], [ %i.ba, %bb.c ]
  %.069.i.i = phi i64 [ %i.bh, %.lr.ph.i.i87 ], [ %.0219, %bb.c ]
  %i.bg = add i64 %.010.i.i, 1                    ; 3 uses
  %i.bh = sub nuw i64 %.069.i.i, %i.bf            ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bg
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !156
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !163 ; 2 uses
  %.not.i.i88 = icmp ult i64 %i.bh, %i.bk
  br i1 %.not.i.i88, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i, label %.lr.ph.i.i87, !llvm.loop !15

_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i: ; preds = %.lr.ph.i.i87, %bb.c
  %.06.lcssa.i.i = phi i64 [ %.0219, %bb.c ], [ %i.bh, %.lr.ph.i.i87 ] ; 2 uses
  %.0.lcssa.i.i89 = phi i64 [ %i.ba, %bb.c ], [ %i.bg, %.lr.ph.i.i87 ] ; 3 uses
  %i.bl = trunc i64 %.0.lcssa.i.i89 to i8
  %i.bm = getelementptr inbounds i8, ptr %i.m, i64 %i.au
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !42
  %i.bn = icmp sgt i32 %i.at, 0
  br i1 %i.bn, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i
  %i.bo = zext nneg i32 %i.at to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bo, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ] ; 2 uses
  %.sroa.01.039.i = phi i64 [ %.0.lcssa.i.i89, %.lr.ph.preheader.i ], [ %.0.lcssa.i28.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ]
  %.06.lcssa.i.pn38.i = phi i64 [ %.06.lcssa.i.i, %.lr.ph.preheader.i ], [ %.06.lcssa.i27.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ] ; 3 uses
  %.037.i = phi ptr [ %i.aw, %.lr.ph.preheader.i ], [ %i.br, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.sroa.01.039.i
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !156 ; 5 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.next.i
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !97
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 14
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !42
  %i.bv = zext i8 %i.bu to i64                    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !156
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !163 ; 2 uses
  %.not8.i22.i = icmp ult i64 %.06.lcssa.i.pn38.i, %i.bz
  br i1 %.not8.i22.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i23.i
  %i.ca = phi i64 [ %i.cf, %.lr.ph.i23.i ], [ %i.bz, %.lr.ph.i ]
  %.010.i24.i = phi i64 [ %i.cb, %.lr.ph.i23.i ], [ %i.bv, %.lr.ph.i ]
  %.069.i25.i = phi i64 [ %i.cc, %.lr.ph.i23.i ], [ %.06.lcssa.i.pn38.i, %.lr.ph.i ]
  %i.cb = add i64 %.010.i24.i, 1                  ; 3 uses
  %i.cc = sub nuw i64 %.069.i25.i, %i.ca          ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cb
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !156
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !163 ; 2 uses
  %.not.i26.i = icmp ult i64 %i.cc, %i.cf
  br i1 %.not.i26.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i, label %.lr.ph.i23.i, !llvm.loop !15

_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i: ; preds = %.lr.ph.i23.i, %.lr.ph.i
  %.06.lcssa.i27.i = phi i64 [ %.06.lcssa.i.pn38.i, %.lr.ph.i ], [ %i.cc, %.lr.ph.i23.i ] ; 2 uses
  %.0.lcssa.i28.i = phi i64 [ %i.bv, %.lr.ph.i ], [ %i.cb, %.lr.ph.i23.i ] ; 3 uses
  %i.cg = trunc i64 %.0.lcssa.i28.i to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv.next.i
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !42
  %i.ci = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ci, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i
  %.0.lcssa.i = phi ptr [ %i.aw, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i ], [ %i.br, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ]
  %.06.lcssa.i.pn.lcssa.i = phi i64 [ %.06.lcssa.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i ], [ %.06.lcssa.i27.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ]
  %.sroa.01.0.lcssa.i = phi i64 [ %.0.lcssa.i.i89, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i ], [ %.0.lcssa.i28.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cj, i64 %.sroa.01.0.lcssa.i
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit: ; preds = %bb.b, %._crit_edge.i
  %.sroa.018.0.i = phi ptr [ %i.cl, %._crit_edge.i ], [ null, %bb.b ]
  %.sroa.3.0.i = phi i64 [ %.06.lcssa.i.pn.lcssa.i, %._crit_edge.i ], [ 0, %bb.b ]
  store ptr %.sroa.018.0.i, ptr %2, align 8
  store i64 %.sroa.3.0.i, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.cm = load ptr, ptr %i.j, align 8, !tbaa !97
  %i.cn = load i8, ptr %i.m, align 4, !tbaa !42
  %i.co = zext i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.co
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !156
  store ptr %i.cr, ptr %4, align 8
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal7CordRepEEEEclIS7_EENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.75, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.cs = load i8, ptr %3, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.cu = load ptr, ptr %i.am, align 8, !tbaa !109 ; 2 uses
  %.not.i.i90 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i90, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.cw = phi ptr [ %i.cv, %bb.f ], [ @.str.56, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 225, ptr noundef %i.cw)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
end_hunk_6
begin_hunk_7_@_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIjEEEclImEENS_15AssertionResultEPKcRKT_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  resume { ptr, i32 } %.pn21
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKmE19MatchAndExplainImplINS4_11ValuePolicyINS0_9EqMatcherIjEELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_clptfp1_6streamEEERKS4_S3_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %1, align 8, !tbaa !41
  %i.c = load i32, ptr %i.a, align 8, !tbaa !130
  %i.d = zext i32 %i.c to i64
  %i.e = icmp eq i64 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKmE12DescribeImplINS4_11ValuePolicyINS0_9EqMatcherIjEELb1EEEEEvRKS4_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.41, i64 noundef 14) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.43, i64 noundef 11) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.40, i64 noundef 1) ; 0 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !130
  %i.f = zext i32 %i.e to i64
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.f) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKmE16GetDescriberImplINS4_11ValuePolicyINS0_9EqMatcherIjEELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052613cord_internal12_GLOBAL__N_160CordRepBtreeNavigatorTest_InitOffsetAndSeekBeyondLength_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052613cord_internal12_GLOBAL__N_160CordRepBtreeNavigatorTest_InitOffsetAndSeekBeyondLength_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_160CordRepBtreeNavigatorTest_InitOffsetAndSeekBeyondLength_TestE, i64 16), ptr %i.a, align 8, !tbaa !37
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_160CordRepBtreeNavigatorTest_InitOffsetAndSeekBeyondLength_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_160CordRepBtreeNavigatorTest_InitOffsetAndSeekBeyondLength_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i:
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeNavigator", align 8 ; 13 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %4 = alloca %"struct.absl::lts_20260526::cord_internal::CordRepBtreeNavigator::Position", align 8 ; 5 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %9 = alloca %"struct.absl::lts_20260526::cord_internal::CordRepBtreeNavigator::Position", align 8 ; 5 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %13 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.99", align 8 ; 4 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %14 = alloca %"class.testing::Message", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %18 = alloca %"class.testing::Message", align 8 ; 7 uses
  %19 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %21 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %22 = alloca %"struct.absl::lts_20260526::cord_internal::CordRepBtreeNavigator::Position", align 8 ; 5 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %26 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %27 = alloca %"struct.absl::lts_20260526::cord_internal::CordRepBtreeNavigator::Position", align 8 ; 5 uses
  %28 = alloca %"class.testing::Message", align 8 ; 7 uses
  %29 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %30 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %31 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.99", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %35 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.e = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 25769803778, ptr %i.f, align 8
  store i64 3, ptr %i.e, align 8, !tbaa !163
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.g, ptr noundef nonnull align 1 dereferenceable(3) @.str.73, i64 3, i1 false)
  %i.h = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 2, ptr %i.i, align 4, !tbaa !164
  store i64 3, ptr %i.h, align 8, !tbaa !163
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 13
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 14 ; 3 uses
  store <4 x i8> <i8 3, i8 0, i8 0, i8 1>, ptr %i.j, align 4, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.m, align 8, !tbaa !156
  %i.n = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 25769803778, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i64 3, ptr %i.n, align 8, !tbaa !163
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.q, ptr noundef nonnull align 1 dereferenceable(3) @.str.82, i64 3, i1 false)
  %i.r = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 16 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store i32 2, ptr %i.s, align 4, !tbaa !164
  %i.t = load i8, ptr %i.p, align 4, !tbaa !162
  %i.u = icmp eq i8 %i.t, 3
  br i1 %i.u, label %bb.a, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i66

bb.a:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i
  %i.v = load i8, ptr %i.q, align 1, !tbaa !42
  %i.w = add i8 %i.v, 1
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i66

_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i66: ; preds = %bb.a, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i
  %i.x = phi i8 [ %i.w, %bb.a ], [ 0, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i ]
  %i.y = load i64, ptr %i.n, align 8, !tbaa !163
  store i64 %i.y, ptr %i.r, align 8, !tbaa !163
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i8 3, ptr %i.z, align 4, !tbaa !162
  %i.aa = getelementptr inbounds nuw i8, ptr %i.r, i64 13 ; 3 uses
  store i8 %i.x, ptr %i.aa, align 1, !tbaa !42
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 14 ; 3 uses
  store i8 0, ptr %i.ab, align 2, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 15
  store i8 1, ptr %i.ac, align 1, !tbaa !42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  store ptr %i.n, ptr %i.ad, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.ae = load i8, ptr %i.k, align 1, !tbaa !42   ; 4 uses
  %i.af = zext i8 %i.ae to i32
  store i32 %i.af, ptr %1, align 8, !tbaa !188
  %i.ag = load i8, ptr %i.l, align 2              ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 15 uses
  %i.ai = zext i8 %i.ae to i64                    ; 5 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  store ptr %i.h, ptr %i.aj, align 8, !tbaa !97
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 14 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 %i.ag, ptr %i.al, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i66
  %xtraiter = and i64 %i.ai, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %.021.i.i.prol = zext i8 %i.ag to i64
  %indvars.iv.next.i.i.prol = add nsw i64 %i.ai, -1 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.021.i.i.prol
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !156 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i.prol
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !97
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  %i.ar = load i8, ptr %i.aq, align 1             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.i.i.prol
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !42
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %i.ai, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.021.i.i.in.unr = phi i8 [ %i.ag, %.lr.ph.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.prol ]
  %.01619.i.i.unr = phi ptr [ %i.h, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.at = icmp eq i8 %i.ae, 1
  br i1 %i.at, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.021.i.i.in = phi i8 [ %i.bg, %.lr.ph.i.i ], [ %.021.i.i.in.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01619.i.i = phi ptr [ %i.bd, %.lr.ph.i.i ], [ %.01619.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.021.i.i = zext i8 %.021.i.i.in to i64
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 16
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.021.i.i
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !156 ; 3 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i.i
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  %i.az = load i8, ptr %i.ay, align 1             ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.i.i
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !42
  %.021.i.i.1 = zext i8 %i.az to i64
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.021.i.i.1
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !156 ; 3 uses
  %i.be = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 14
  %i.bg = load i8, ptr %i.bf, align 1             ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.i.i.1
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !42
  %i.bi = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.loopexit, !llvm.loop !5

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.loopexit: ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre = load i32, ptr %1, align 8, !tbaa !188
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.loopexit, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i66
  %i.bj = phi i32 [ %.pre, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.loopexit ], [ 0, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit.i66 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i64 0, ptr %3, align 8, !alias.scope !573
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.bk = sext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !97 ; 5 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !163
  %.not.i = icmp ugt i64 %i.bn, 3
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit, !prof !210

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %i.bp = load i8, ptr %i.bo, align 2, !tbaa !42
  %i.bq = zext i8 %i.bp to i64                    ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bq
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !156
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !163 ; 2 uses
  %.not8.i.i = icmp ugt i64 %i.bu, 3
  br i1 %.not8.i.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i, label %.lr.ph.i.i68

.lr.ph.i.i68:                                     ; preds = %bb.b, %.lr.ph.i.i68
  %i.bv = phi i64 [ %i.ca, %.lr.ph.i.i68 ], [ %i.bu, %bb.b ]
  %.010.i.i = phi i64 [ %i.bw, %.lr.ph.i.i68 ], [ %i.bq, %bb.b ]
  %.069.i.i = phi i64 [ %i.bx, %.lr.ph.i.i68 ], [ 3, %bb.b ]
  %i.bw = add i64 %.010.i.i, 1                    ; 3 uses
  %i.bx = sub nuw i64 %.069.i.i, %i.bv            ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !156
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !163 ; 2 uses
  %.not.i.i69 = icmp ult i64 %i.bx, %i.ca
  br i1 %.not.i.i69, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i, label %.lr.ph.i.i68, !llvm.loop !15

_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i: ; preds = %.lr.ph.i.i68, %bb.b
  %.06.lcssa.i.i = phi i64 [ 3, %bb.b ], [ %i.bx, %.lr.ph.i.i68 ] ; 2 uses
  %.0.lcssa.i.i70 = phi i64 [ %i.bq, %bb.b ], [ %i.bw, %.lr.ph.i.i68 ] ; 3 uses
  %i.cb = trunc i64 %.0.lcssa.i.i70 to i8
  %i.cc = getelementptr inbounds i8, ptr %i.ak, i64 %i.bk
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !42
  %i.cd = icmp sgt i32 %i.bj, 0
  br i1 %i.cd, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i
  %i.ce = zext nneg i32 %i.bj to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ce, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ] ; 2 uses
  %.sroa.01.039.i = phi i64 [ %.0.lcssa.i.i70, %.lr.ph.preheader.i ], [ %.0.lcssa.i28.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ]
  %.06.lcssa.i.pn38.i = phi i64 [ %.06.lcssa.i.i, %.lr.ph.preheader.i ], [ %.06.lcssa.i27.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ] ; 3 uses
  %.037.i = phi ptr [ %i.bm, %.lr.ph.preheader.i ], [ %i.ch, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.037.i, i64 16
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.sroa.01.039.i
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !156 ; 5 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %indvars.iv.next.i
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !97
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 14
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !42
  %i.cl = zext i8 %i.ck to i64                    ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cl
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !156
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !163 ; 2 uses
  %.not8.i22.i = icmp ult i64 %.06.lcssa.i.pn38.i, %i.cp
  br i1 %.not8.i22.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i23.i
  %i.cq = phi i64 [ %i.cv, %.lr.ph.i23.i ], [ %i.cp, %.lr.ph.i ]
  %.010.i24.i = phi i64 [ %i.cr, %.lr.ph.i23.i ], [ %i.cl, %.lr.ph.i ]
  %.069.i25.i = phi i64 [ %i.cs, %.lr.ph.i23.i ], [ %.06.lcssa.i.pn38.i, %.lr.ph.i ]
  %i.cr = add i64 %.010.i24.i, 1                  ; 3 uses
  %i.cs = sub nuw i64 %.069.i25.i, %i.cq          ; 3 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.cr
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !156
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !163 ; 2 uses
  %.not.i26.i = icmp ult i64 %i.cs, %i.cv
  br i1 %.not.i26.i, label %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i, label %.lr.ph.i23.i, !llvm.loop !15

_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i: ; preds = %.lr.ph.i23.i, %.lr.ph.i
  %.06.lcssa.i27.i = phi i64 [ %.06.lcssa.i.pn38.i, %.lr.ph.i ], [ %i.cs, %.lr.ph.i23.i ] ; 2 uses
  %.0.lcssa.i28.i = phi i64 [ %i.cl, %.lr.ph.i ], [ %i.cr, %.lr.ph.i23.i ] ; 3 uses
  %i.cw = trunc i64 %.0.lcssa.i28.i to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next.i
  store i8 %i.cw, ptr %i.cx, align 1, !tbaa !42
  %i.cy = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.cy, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i
  %.0.lcssa.i = phi ptr [ %i.bm, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i ], [ %i.ch, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ]
  %.06.lcssa.i.pn.lcssa.i = phi i64 [ %.06.lcssa.i.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i ], [ %.06.lcssa.i27.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ]
  %.sroa.01.0.lcssa.i = phi i64 [ %.0.lcssa.i.i70, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit.i ], [ %.0.lcssa.i28.i, %_ZNK4absl12lts_2026052613cord_internal12CordRepBtree7IndexOfEm.exit31.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %.sroa.01.0.lcssa.i
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, %._crit_edge.i
  %.sroa.018.0.i = phi ptr [ %i.db, %._crit_edge.i ], [ null, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit ]
  %.sroa.3.0.i = phi i64 [ %.06.lcssa.i.pn.lcssa.i, %._crit_edge.i ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit ]
  store ptr %.sroa.018.0.i, ptr %4, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.3.0.i, ptr %i.dc, align 8
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.83, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.dd = load i8, ptr %2, align 8, !tbaa !106, !range !107, !noundef !108
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.l, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SeekEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !109 ; 2 uses
  %.not.i.i71 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i71, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.e, %bb.d
  %i.di = phi ptr [ %i.dh, %bb.e ], [ @.str.56, %bb.d ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 262, ptr noundef %i.di)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.dj = load ptr, ptr %5, align 8, !tbaa !111   ; 3 uses
  %.not.i.i72 = icmp eq ptr %i.dj, null
  br i1 %.not.i.i72, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !37
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(128) %i.dj) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.g, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.l

bb.h:                                             ; preds = %bb.c
  %i.dn = landingpad { ptr, i32 }
end_hunk_7
begin_hunk_8_@_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Read_TestEE17CreateTestFactoryEm:bb.a
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Read_TestEEE, i64 16), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !578
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Read_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Read_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceImE10parameter_E, align 8, !tbaa !69
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #33 ; 5 uses
  invoke fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Read_TestE, i64 16), ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Read_TestE, i64 80), ptr %i.c, align 8, !tbaa !37
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #34
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Read_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8), (16, 24)) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 80), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !157

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.c)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i unwind label %bb.d, !inline_history !186

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #34, !inline_history !186
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34, !inline_history !186
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #35, !inline_history !186
  unreachable

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(88) %0) #32, !inline_history !186
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_135CordRepBtreeNavigatorTest_Read_Test8TestBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeNavigator", align 8 ; 10 uses
  %2 = alloca %"struct.absl::lts_20260526::cord_internal::CordRepBtreeNavigator::ReadResult", align 8 ; 11 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.158", align 8 ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %8 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.133", align 8 ; 4 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 9 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %17 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.160", align 8 ; 9 uses
  %19 = alloca %"class.testing::internal::EqMatcher.161", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %24 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.133", align 8 ; 5 uses
  %25 = alloca %"class.testing::Message", align 8 ; 7 uses
  %26 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %27 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.102", align 8 ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !40   ; 2 uses
  %.not358 = icmp eq i64 %i.g, 0
  br i1 %.not358, label %.loopexit231, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge113
  %i.aa = phi i64 [ %i.g, %.preheader.lr.ph ], [ %i.lk, %.critedge113 ] ; 2 uses
  %.0357 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ll, %.critedge113 ] ; 9 uses
  %.not355 = icmp eq i64 %i.aa, %.0357
  br i1 %.not355, label %.critedge113, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i219
  %.072356 = phi i64 [ %i.ky, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i219 ], [ 1, %.preheader ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %.val = load ptr, ptr %i.h, align 8, !tbaa !185 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 13
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !42  ; 4 uses
  %i.ad = zext i8 %i.ac to i32
  store i32 %i.ad, ptr %1, align 8, !tbaa !188
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 14
  %i.af = load i8, ptr %i.ae, align 1             ; 3 uses
  %i.ag = zext i8 %i.ac to i64                    ; 5 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ag
  store ptr %.val, ptr %i.ah, align 8, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ag
  store i8 %i.af, ptr %i.ai, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph
  %xtraiter = and i64 %i.ag, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %.021.i.i.prol = zext i8 %i.af to i64
  %indvars.iv.next.i.i.prol = add nsw i64 %i.ag, -1 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %.021.i.i.prol
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !156 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i.prol
  store ptr %i.al, ptr %i.am, align 8, !tbaa !97
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 14
  %i.ao = load i8, ptr %i.an, align 1             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i.prol
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !42
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %i.ag, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.021.i.i.in.unr = phi i8 [ %i.af, %.lr.ph.i.i.preheader ], [ %i.ao, %.lr.ph.i.i.prol ]
  %.01619.i.i.unr = phi ptr [ %.val, %.lr.ph.i.i.preheader ], [ %i.al, %.lr.ph.i.i.prol ]
  %i.aq = icmp eq i8 %i.ac, 1
  br i1 %i.aq, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.021.i.i.in = phi i8 [ %i.bd, %.lr.ph.i.i ], [ %.021.i.i.in.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01619.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %.01619.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.021.i.i = zext i8 %.021.i.i.in to i64
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 16
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.021.i.i
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !156 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.i.i
  store ptr %i.at, ptr %i.au, align 8, !tbaa !97
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 14
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !42
  %.021.i.i.1 = zext i8 %i.aw to i64
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.021.i.i.1
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !156 ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !97
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %i.bd = load i8, ptr %i.bc, align 1             ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i.1
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !42
  %i.bf = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.bf, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, !llvm.loop !5

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %.lr.ph
  %i.bg = call { ptr, i64 } @_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4SkipEm(ptr noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %.0357)
  %i.bh = extractvalue { ptr, i64 } %i.bg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.bi = call { ptr, i64 } @_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4ReadEmm(ptr noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %i.bh, i64 noundef %.072356) ; 2 uses
  %i.bj = extractvalue { ptr, i64 } %i.bi, 0
  store ptr %i.bj, ptr %2, align 8
  %i.bk = extractvalue { ptr, i64 } %i.bi, 1
  store i64 %i.bk, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i64 0, ptr %4, align 8, !alias.scope !591
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9NeMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.88, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.bl = load i8, ptr %3, align 8, !tbaa !106, !range !107, !noundef !108
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.bn = load ptr, ptr %i.l, align 8, !tbaa !109 ; 2 uses
  %.not.i.i116 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i116, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.d, %bb.c
  %i.bp = phi ptr [ %i.bo, %bb.d ], [ @.str.56, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 290, ptr noundef %i.bp)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.bq = load ptr, ptr %5, align 8, !tbaa !111   ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.f
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !37
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(128) %i.bq) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.f, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.bu = load ptr, ptr %i.l, align 8, !tbaa !109 ; 4 uses
  %.not.i.i118 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i118, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !38 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !42
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %_ZN7testing7MessageD2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %.loopexit231.sink.split

bb.h:                                             ; preds = %bb.b
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit121

bb.i:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.j ], [ %i.cb, %bb.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.cd = load ptr, ptr %5, align 8, !tbaa !111   ; 3 uses
  %.not.i.i119 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i119, label %_ZN7testing7MessageD2Ev.exit121, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120: ; preds = %bb.k
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !37
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(128) %i.cd) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit121

_ZN7testing7MessageD2Ev.exit121:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120, %bb.k, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ca, %bb.h ], [ %.pn, %bb.k ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i120 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.ct

.critedge:                                        ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit
  %i.ch = load ptr, ptr %i.l, align 8, !tbaa !109 ; 4 uses
  %.not.i.i122 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i122, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.critedge
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !38 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123: ; preds = %bb.l
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !42
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i123
  call void @_ZdlPvm(ptr noundef nonnull %i.ch, i64 noundef 32) #34
  br label %bb.m

bb.m:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i124, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  store i64 %.072356, ptr %8, align 8
  %i.cn = load ptr, ptr %2, align 8, !tbaa !593
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherImEEEclImEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull @.str.89, ptr noundef nonnull align 8 dereferenceable(8) %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.co = load i8, ptr %7, align 8, !tbaa !106, !range !107, !noundef !108
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.w, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.cq = load ptr, ptr %i.m, align 8, !tbaa !109 ; 2 uses
  %.not.i.i127 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i127, label %_ZNK7testing15AssertionResult15failure_messageEv.exit128, label %bb.p
end_hunk_8
begin_hunk_9_@_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_153CordRepBtreeNavigatorTest_ReadBeyondLengthOfTree_TestEED0Ev:bb.a
}

; Function Attrs: mustprogress uwtable
define internal noalias noundef nonnull ptr @_ZN7testing8internal15TestMetaFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_153CordRepBtreeNavigatorTest_ReadBeyondLengthOfTree_TestEE17CreateTestFactoryEm(ptr nofree nonnull readnone align 8 captures(none) %0, i64 noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_153CordRepBtreeNavigatorTest_ReadBeyondLengthOfTree_TestEEE, i64 16), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.b, align 8, !tbaa !677
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_153CordRepBtreeNavigatorTest_ReadBeyondLengthOfTree_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #14 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal24ParameterizedTestFactoryIN4absl12lts_2026052613cord_internal12_GLOBAL__N_153CordRepBtreeNavigatorTest_ReadBeyondLengthOfTree_TestEE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceImE10parameter_E, align 8, !tbaa !69
  %i.b = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #33 ; 5 uses
  invoke fastcc void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestC2Ev(ptr noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_153CordRepBtreeNavigatorTest_ReadBeyondLengthOfTree_TestE, i64 16), ptr %i.b, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_153CordRepBtreeNavigatorTest_ReadBeyondLengthOfTree_TestE, i64 80), ptr %i.c, align 8, !tbaa !37
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #34
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) initializes((0, 8), (16, 24)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 80), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.e, 2
  br i1 %.not.i, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit, !prof !157

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.c)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit unwind label %bb.d

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #34
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %0) #32
  ret void

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #35
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_153CordRepBtreeNavigatorTest_ReadBeyondLengthOfTree_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 8), (16, 24)) %0) unnamed_addr #14 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 16), ptr %0, align 8, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 80), ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !157

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.c)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i unwind label %bb.d, !inline_history !186

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #34, !inline_history !186
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !42
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #34, !inline_history !186
  br label %_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #35, !inline_history !186
  unreachable

_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestD2Ev.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(88) %0) #32, !inline_history !186
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_153CordRepBtreeNavigatorTest_ReadBeyondLengthOfTree_Test8TestBodyEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeNavigator", align 8 ; 8 uses
  %2 = alloca %"struct.absl::lts_20260526::cord_internal::CordRepBtreeNavigator::ReadResult", align 8 ; 6 uses
  %3 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %4 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val8 = load ptr, ptr %i.a, align 8, !tbaa !185 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val8, i64 13
  %i.c = load i8, ptr %i.b, align 1, !tbaa !42    ; 4 uses
  %i.d = zext i8 %i.c to i32
  store i32 %i.d, ptr %1, align 8, !tbaa !188
  %i.e = getelementptr inbounds nuw i8, ptr %.val8, i64 14
  %i.f = load i8, ptr %i.e, align 1               ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.h = zext i8 %i.c to i64                      ; 5 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  store ptr %.val8, ptr %i.i, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.h
  store i8 %i.f, ptr %i.k, align 1, !tbaa !42
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %xtraiter = and i64 %i.h, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %.021.i.i.prol = zext i8 %i.f to i64
  %indvars.iv.next.i.i.prol = add nsw i64 %i.h, -1 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val8, i64 16
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.021.i.i.prol
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !156  ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.prol
  store ptr %i.n, ptr %i.o, align 8, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  %i.q = load i8, ptr %i.p, align 1               ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i.prol
  store i8 %i.q, ptr %i.r, align 1, !tbaa !42
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %i.h, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.021.i.i.in.unr = phi i8 [ %i.f, %.lr.ph.i.i.preheader ], [ %i.q, %.lr.ph.i.i.prol ]
  %.01619.i.i.unr = phi ptr [ %.val8, %.lr.ph.i.i.preheader ], [ %i.n, %.lr.ph.i.i.prol ]
  %i.s = icmp eq i8 %i.c, 1
  br i1 %i.s, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.021.i.i.in = phi i8 [ %i.af, %.lr.ph.i.i ], [ %.021.i.i.in.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01619.i.i = phi ptr [ %i.ac, %.lr.ph.i.i ], [ %.01619.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.021.i.i = zext i8 %.021.i.i.in to i64
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 16
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.021.i.i
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !156  ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i
  store ptr %i.v, ptr %i.w, align 8, !tbaa !97
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 14
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i
  store i8 %i.y, ptr %i.z, align 1, !tbaa !42
  %.021.i.i.1 = zext i8 %i.y to i64
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.021.i.i.1
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !156 ; 3 uses
  %i.ad = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !97
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv.next.i.i.1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !42
  %i.ah = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, !llvm.loop !5

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.ai = load i64, ptr %.val8, align 8, !tbaa !163
  %i.aj = call { ptr, i64 } @_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4ReadEmm(ptr noundef nonnull align 8 dereferenceable(112) %1, i64 noundef 2, i64 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  store ptr %i.ak, ptr %2, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = extractvalue { ptr, i64 } %i.aj, 1
  store i64 %i.am, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i64 0, ptr %4, align 8, !alias.scope !680
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull @.str.88, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.an = load i8, ptr %3, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.k, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !109 ; 2 uses
  %.not.i.i9 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i9, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.d, %bb.c
  %i.as = phi ptr [ %i.ar, %bb.d ], [ @.str.56, %bb.c ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 319, ptr noundef %i.as)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.at = load ptr, ptr %5, align 8, !tbaa !111   ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.at, null
  br i1 %.not.i.i10, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.f
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8
  call void %i.aw(ptr noundef nonnull align 8 dereferenceable(128) %i.at) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.f, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit13

bb.h:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #32
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.ay, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.ba = load ptr, ptr %5, align 8, !tbaa !111   ; 3 uses
  %.not.i.i11 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i11, label %_ZN7testing7MessageD2Ev.exit13, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i12

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i12: ; preds = %bb.j
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(128) %i.ba) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit13

_ZN7testing7MessageD2Ev.exit13:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i12, %bb.j, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.g ], [ %.pn, %bb.j ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %.pn.pn

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, %_ZN7testing7MessageD2Ev.exit
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !109 ; 4 uses
  %.not.i.i14 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i14, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !38 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.l
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !42
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.k, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_ZThn16_N4absl12lts_2026052613cord_internal12_GLOBAL__N_153CordRepBtreeNavigatorTest_ReadBeyondLengthOfTree_TestD1Ev(ptr noundef initializes((-16, -8), (0, 8)) %0) unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 16), ptr %i.a, align 8, !tbaa !37
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_125CordRepBtreeNavigatorTestE, i64 80), ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !185  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = atomicrmw sub ptr %i.d, i32 2 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.e, 2
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i, !prof !157

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef %i.c)
          to label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i unwind label %bb.d, !inline_history !186

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i: ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !152  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !153
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #34, !inline_history !186
  br label %_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i

_ZNSt6vectorIPN4absl12lts_2026052613cord_internal7CordRepESaIS4_EED2Ev.exit.i: ; preds = %bb.c, %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit.i
end_hunk_9
begin_hunk_10_@_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052613cord_internal12_GLOBAL__N_155CordRepBtreeNavigatorTest_NavigateMaximumTreeDepth_TestEE10CreateTestEv
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052613cord_internal12_GLOBAL__N_155CordRepBtreeNavigatorTest_NavigateMaximumTreeDepth_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #33 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052613cord_internal12_GLOBAL__N_155CordRepBtreeNavigatorTest_NavigateMaximumTreeDepth_TestE, i64 16), ptr %i.a, align 8, !tbaa !37
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #34
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_155CordRepBtreeNavigatorTest_NavigateMaximumTreeDepth_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #32
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052613cord_internal12_GLOBAL__N_155CordRepBtreeNavigatorTest_NavigateMaximumTreeDepth_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i:
  %1 = alloca %"class.absl::lts_20260526::cord_internal::CordRepBtreeNavigator", align 8 ; 15 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.181", align 8 ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 7 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %7 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.181", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.181", align 8 ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %19 = alloca %"class.testing::internal::PredicateFormatterFromMatcher", align 8 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 25769803778, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i64 11, ptr %i.f, align 8, !tbaa !163
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 13 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.i, ptr noundef nonnull align 1 dereferenceable(11) @.str.98, i64 11, i1 false)
  %i.j = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #36 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 25769803778, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i64 11, ptr %i.j, align 8, !tbaa !163
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.m, ptr noundef nonnull align 1 dereferenceable(11) @.str.99, i64 11, i1 false)
  %i.n = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 9 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 2, ptr %i.o, align 4, !tbaa !164
  %i.p = load i8, ptr %i.h, align 4, !tbaa !162
  %i.q = icmp eq i8 %i.p, 3
  br i1 %i.q, label %bb.a, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit

bb.a:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i
  %i.r = load i8, ptr %i.i, align 1, !tbaa !42
  %i.s = add i8 %i.r, 1
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i, %bb.a
  %i.t = phi i8 [ %i.s, %bb.a ], [ 0, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i ]
  %i.u = load i64, ptr %i.f, align 8, !tbaa !163
  store i64 %i.u, ptr %i.n, align 8, !tbaa !163
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i8 3, ptr %i.v, align 4, !tbaa !162
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 13
  store i8 %i.t, ptr %i.w, align 1, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 14
  store i8 0, ptr %i.x, align 2, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 15
  store i8 1, ptr %i.y, align 1, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.f, ptr %i.z, align 8, !tbaa !156
  %.pre = load i8, ptr %i.l, align 4, !tbaa !162  ; 2 uses
  %or.cond.i.i45 = icmp ugt i8 %.pre, 4
  br i1 %or.cond.i.i45, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i50, label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit
  %i.aa = icmp eq i8 %.pre, 1
  br i1 %i.aa, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i47, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, !prof !169

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i47: ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167
  %.phi.trans.insert.i.i48 = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %.pre.i.i49 = load i8, ptr %.phi.trans.insert.i.i48, align 4, !tbaa !162
  %i.ad = icmp ugt i8 %.pre.i.i49, 4
  br i1 %i.ad, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i50, label %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i, !prof !170

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i50: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i47, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6CreateEPNS1_7CordRepE.exit
  %i.ae = tail call noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AddCordRepILNS2_8EdgeTypeE1EEEPS2_S5_PNS1_7CordRepE(ptr noundef nonnull %i.n, ptr noundef nonnull %i.j)
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit

_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.i47, %bb.b
  %i.af = tail call noundef ptr @_ZN4absl12lts_2026052613cord_internal12CordRepBtree10AppendSlowEPS2_PNS1_7CordRepE(ptr noundef nonnull %i.n, ptr noundef nonnull %i.j)
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit

_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i50, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i
  %.0.i46 = phi ptr [ %i.ae, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread.i50 ], [ %i.af, %_ZN4absl12lts_2026052613cord_internal10IsDataEdgeEPKNS1_7CordRepE.exit.thread7.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i46, i64 13 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !42  ; 2 uses
  %i.ai = icmp ult i8 %i.ah, 11
  br i1 %i.ai, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit
  %i.aj = phi ptr [ %i.au, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit ], [ %i.ag, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit ]
  %.024183 = phi ptr [ %i.ak, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit ], [ %.0.i46, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit ] ; 3 uses
  %i.ak = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33 ; 9 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 2, ptr %i.al, align 4, !tbaa !164
  %i.am = getelementptr inbounds nuw i8, ptr %.024183, i64 12
  %i.an = load i8, ptr %i.am, align 4, !tbaa !162
  %i.ao = icmp eq i8 %i.an, 3
  br i1 %i.ao, label %bb.c, label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit

bb.c:                                             ; preds = %.lr.ph
  %i.ap = load i8, ptr %i.aj, align 1, !tbaa !42
  %i.aq = add i8 %i.ap, 1
  br label %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit

_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit: ; preds = %.lr.ph, %bb.c
  %i.ar = phi i8 [ %i.aq, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %i.as = load i64, ptr %.024183, align 8, !tbaa !163
  store i64 %i.as, ptr %i.ak, align 8, !tbaa !163
  %i.at = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i8 3, ptr %i.at, align 4, !tbaa !162
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 13 ; 3 uses
  store i8 %i.ar, ptr %i.au, align 1, !tbaa !42
  %i.av = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  store i8 0, ptr %i.av, align 2, !tbaa !42
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ak, i64 15
  store i8 1, ptr %i.aw, align 1, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %.024183, ptr %i.ax, align 8, !tbaa !156
  %i.ay = icmp ult i8 %i.ar, 11
  br i1 %i.ay, label %.lr.ph, label %._crit_edgethread-pre-split, !llvm.loop !681

._crit_edgethread-pre-split:                      ; preds = %_ZN4absl12lts_2026052613cord_internal12CordRepBtree3NewEPNS1_7CordRepE.exit
  %.pr = load i8, ptr %i.au, align 1, !tbaa !42
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edgethread-pre-split, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit
  %i.az = phi i8 [ %.pr, %._crit_edgethread-pre-split ], [ %i.ah, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit ] ; 4 uses
  %.024.lcssa = phi ptr [ %i.ak, %._crit_edgethread-pre-split ], [ %.0.i46, %_ZN4absl12lts_2026052613cord_internal12CordRepBtree6AppendEPS2_PNS1_7CordRepE.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.ba = zext i8 %i.az to i32
  store i32 %i.ba, ptr %1, align 8, !tbaa !188
  %i.bb = getelementptr inbounds nuw i8, ptr %.024.lcssa, i64 14
  %i.bc = load i8, ptr %i.bb, align 1             ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 19 uses
  %i.be = zext i8 %i.az to i64                    ; 5 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  store ptr %.024.lcssa, ptr %i.bf, align 8, !tbaa !97
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 32 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 %i.bc, ptr %i.bh, align 1, !tbaa !42
  %.018.i.i = zext i8 %i.bc to i64                ; 3 uses
  %.not.i.i = icmp eq i8 %i.az, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %._crit_edge
  %xtraiter = and i64 %i.be, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader
  %indvars.iv.next.i.i.prol = add nsw i64 %i.be, -1 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.024.lcssa, i64 16
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.018.i.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !156 ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i.prol
  store ptr %i.bk, ptr %i.bl, align 8, !tbaa !97
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 14
  %i.bn = load i8, ptr %i.bm, align 1             ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i.prol
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !42
  %.0.i.i.prol = zext i8 %i.bn to i64             ; 2 uses
  br label %.lr.ph.i.i.prol.loopexit

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %i.be, %.lr.ph.i.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %.021.i.i.unr = phi i64 [ %.018.i.i, %.lr.ph.i.i.preheader ], [ %.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.01619.i.i.unr = phi ptr [ %.024.lcssa, %.lr.ph.i.i.preheader ], [ %i.bk, %.lr.ph.i.i.prol ]
  %.0.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader ], [ %.0.i.i.prol, %.lr.ph.i.i.prol ]
  %i.bp = icmp eq i8 %i.az, 1
  br i1 %i.bp, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 4 uses
  %.021.i.i = phi i64 [ %.0.i.i.1, %.lr.ph.i.i ], [ %.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.01619.i.i = phi ptr [ %i.bz, %.lr.ph.i.i ], [ %.01619.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01619.i.i, i64 16
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.021.i.i
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !156 ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !97
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 14
  %i.bv = load i8, ptr %i.bu, align 1             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !42
  %.0.i.i = zext i8 %i.bv to i64
  %indvars.iv.next.i.i.1 = add nsw i64 %indvars.iv.i.i, -2 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.0.i.i
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !156 ; 3 uses
  %i.ca = getelementptr [8 x i8], ptr %1, i64 %indvars.iv.i.i
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !97
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 14
  %i.cc = load i8, ptr %i.cb, align 1             ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i.1
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !42
  %.0.i.i.1 = zext i8 %i.cc to i64                ; 2 uses
  %i.ce = icmp sgt i64 %indvars.iv.i.i, 2
  br i1 %i.ce, label %.lr.ph.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, !llvm.loop !5

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %._crit_edge
  %.0.lcssa.i.i = phi i64 [ %.018.i.i, %._crit_edge ], [ %.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.0.i.i.1, %.lr.ph.i.i ]
  %i.cf = load ptr, ptr %i.bd, align 8, !tbaa !97 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.0.lcssa.i.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !156
  store ptr %i.ci, ptr %i.a, align 8, !tbaa !156
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store ptr %i.f, ptr %3, align 8
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal11CordRepFlatEEEEclIPNS5_7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull @.str.67, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.cj = load i8, ptr %2, align 8, !tbaa !106, !range !107, !noundef !108
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.m, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !109 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i51, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %bb.e
  %i.co = phi ptr [ %i.cn, %bb.f ], [ @.str.56, %bb.e ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 334, ptr noundef %i.co)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.cp = load ptr, ptr %4, align 8, !tbaa !111   ; 3 uses
  %.not.i.i52 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i52, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !37
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit55

bb.j:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.cv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.cv, %bb.k ], [ %i.cu, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.cw = load ptr, ptr %4, align 8, !tbaa !111   ; 3 uses
  %.not.i.i53 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i53, label %_ZN7testing7MessageD2Ev.exit55, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54: ; preds = %bb.l
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !37
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(128) %i.cw) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit55

_ZN7testing7MessageD2Ev.exit55:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54, %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.i ], [ %.pn, %bb.l ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i54 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %bb.bx

bb.m:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit, %_ZN7testing7MessageD2Ev.exit
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !109 ; 4 uses
  %.not.i.i56 = icmp eq ptr %i.db, null
  br i1 %.not.i.i56, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !38 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 2 uses
  %i.de = icmp eq ptr %i.dc, %i.dd
  br i1 %i.de, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.n
  %i.df = load i64, ptr %i.dd, align 8, !tbaa !42
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.dg) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.m, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #32
  store ptr %i.j, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  %i.dh = load i8, ptr %i.bg, align 4, !tbaa !42  ; 2 uses
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cf, i64 15
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !42
  %i.dl = zext i8 %i.dk to i64
  %i.dm = add nsw i64 %i.dl, -1
  %i.dn = icmp eq i64 %i.dm, %i.di
  br i1 %i.dn, label %bb.o, label %bb.r

bb.o:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.do = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.do, i32 0)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  %exitcond.not.i.i288 = icmp slt i32 %i.do, 1
  br i1 %exitcond.not.i.i288, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit, label %.lr.ph292

bb.p:                                             ; preds = %.lr.ph292
  %indvars.iv.next38.i.i = add nuw i32 %indvars.iv37.i.i289, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i58, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit, label %.lr.ph292, !llvm.loop !11

.lr.ph292:                                        ; preds = %bb.o, %bb.p
  %indvars.iv.i.i57290 = phi i64 [ %indvars.iv.next.i.i58, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %indvars.iv37.i.i289 = phi i32 [ %indvars.iv.next38.i.i, %bb.p ], [ 1, %bb.o ] ; 3 uses
  %indvars.iv.next.i.i58 = add nuw nsw i64 %indvars.iv.i.i57290, 1 ; 5 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i58
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !97 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i58
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !42
  %i.dt = zext i8 %i.ds to i64
  %i.du = add nuw nsw i64 %i.dt, 1                ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 15
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !42
  %i.dx = zext i8 %i.dw to i64
  %i.dy = icmp eq i64 %i.du, %i.dx
  br i1 %i.dy, label %bb.p, label %bb.q, !llvm.loop !11

bb.q:                                             ; preds = %.lr.ph292
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i58
  %i.ea = trunc i64 %i.du to i8
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !42
  %i.eb = sext i32 %indvars.iv37.i.i289 to i64    ; 2 uses
  %i.ec = and i32 %indvars.iv37.i.i289, 1
  %lcmp.mod343.not = icmp eq i32 %i.ec, 0
  br i1 %lcmp.mod343.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.q
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.du
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i.prol = add nsw i64 %i.eb, -1 ; 3 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next41.i.i.prol
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !97
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 14
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !42  ; 2 uses
  %i.ej = zext i8 %i.ei to i64                    ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i.prol
  store i8 %i.ei, ptr %i.ek, align 1, !tbaa !42
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.q
  %indvars.iv40.i.i.unr = phi i64 [ %i.eb, %bb.q ], [ %indvars.iv.next41.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.017.i.i.unr = phi ptr [ %i.dq, %bb.q ], [ %i.ef, %.prol.loopexit.unr-lcssa ]
  %.016.i.i.unr = phi i64 [ %i.du, %bb.q ], [ %i.ej, %.prol.loopexit.unr-lcssa ]
  %.lcssa332.unr = phi ptr [ poison, %bb.q ], [ %i.ef, %.prol.loopexit.unr-lcssa ]
  %.lcssa331.unr = phi i64 [ poison, %bb.q ], [ %i.ej, %.prol.loopexit.unr-lcssa ]
  %i.el = icmp eq i64 %indvars.iv.i.i57290, 0
  br i1 %i.el, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i.1, %.new ], [ %indvars.iv40.i.i.unr, %.prol.loopexit ] ; 4 uses
  %.017.i.i = phi ptr [ %i.ew, %.new ], [ %.017.i.i.unr, %.prol.loopexit ]
  %.016.i.i = phi i64 [ %i.fa, %.new ], [ %.016.i.i.unr, %.prol.loopexit ]
  %i.em = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 16
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.016.i.i
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i = add nsw i64 %indvars.iv40.i.i, -1 ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next41.i.i
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !97
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 14
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !42  ; 2 uses
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i
  store i8 %i.er, ptr %i.et, align 1, !tbaa !42
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.eu, i64 %i.es
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i.1 = add nsw i64 %indvars.iv40.i.i, -2 ; 2 uses
  %i.ex = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !97
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 14
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !42  ; 2 uses
  %i.fa = zext i8 %i.ez to i64                    ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i.1
  store i8 %i.ez, ptr %i.fb, align 1, !tbaa !42
  %i.fc = icmp sgt i64 %indvars.iv40.i.i, 2
  br i1 %i.fc, label %.new, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i, !llvm.loop !12

bb.r:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.fd = add i8 %i.dh, 1                         ; 2 uses
  store i8 %i.fd, ptr %i.bg, align 4, !tbaa !42
  %i.fe = zext i8 %i.fd to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i: ; preds = %.prol.loopexit, %.new, %bb.r
  %.lcssa12.sink.i = phi ptr [ %i.cf, %bb.r ], [ %.lcssa332.unr, %.prol.loopexit ], [ %i.ew, %.new ]
  %.lcssa.sink.i = phi i64 [ %i.fe, %bb.r ], [ %.lcssa331.unr, %.prol.loopexit ], [ %i.fa, %.new ]
  %i.ff = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i, i64 16
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.lcssa.sink.i
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit: ; preds = %bb.p, %bb.o, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i
  %i.fi = phi ptr [ %i.fh, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i ], [ null, %bb.o ], [ null, %bb.p ]
  store ptr %i.fi, ptr %i.b, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal11CordRepFlatEEEEclIPNS5_7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #32
  %i.fj = load i8, ptr %6, align 8, !tbaa !106, !range !107, !noundef !108
  %i.fk = trunc nuw i8 %i.fj to i1
  br i1 %i.fk, label %bb.ab, label %bb.s

bb.s:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.t unwind label %bb.x

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.fl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !109 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.fm, null
  br i1 %.not.i.i59, label %_ZNK7testing15AssertionResult15failure_messageEv.exit60, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit60

_ZNK7testing15AssertionResult15failure_messageEv.exit60: ; preds = %bb.u, %bb.t
  %i.fo = phi ptr [ %i.fn, %bb.u ], [ @.str.56, %bb.t ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 335, ptr noundef %i.fo)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit60
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.fp = load ptr, ptr %8, align 8, !tbaa !111   ; 3 uses
  %.not.i.i61 = icmp eq ptr %i.fp, null
  br i1 %.not.i.i61, label %_ZN7testing7MessageD2Ev.exit63, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62: ; preds = %bb.w
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !37
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(128) %i.fp) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit63

_ZN7testing7MessageD2Ev.exit63:                   ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.ab

bb.x:                                             ; preds = %bb.s
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit66

bb.y:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit60
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.z:                                             ; preds = %bb.v
  %i.fv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pn27 = phi { ptr, i32 } [ %i.fv, %bb.z ], [ %i.fu, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  %i.fw = load ptr, ptr %8, align 8, !tbaa !111   ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i64, label %_ZN7testing7MessageD2Ev.exit66, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65: ; preds = %bb.aa
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !37
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8
  call void %i.fz(ptr noundef nonnull align 8 dereferenceable(128) %i.fw) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit66

_ZN7testing7MessageD2Ev.exit66:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65, %bb.aa, %bb.x
  %.pn27.pn = phi { ptr, i32 } [ %i.ft, %bb.x ], [ %.pn27, %bb.aa ], [ %.pn27, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.bx

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit, %_ZN7testing7MessageD2Ev.exit63
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !109 ; 4 uses
  %.not.i.i67 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i67, label %_ZN7testing15AssertionResultD2Ev.exit71, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !38 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68: ; preds = %bb.ac
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !42
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i68
  call void @_ZdlPvm(ptr noundef nonnull %i.gb, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit71

_ZN7testing15AssertionResultD2Ev.exit71:          ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store i64 0, ptr %11, align 8, !alias.scope !686
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.gh = load ptr, ptr %i.bd, align 8, !tbaa !97 ; 2 uses
  %i.gi = load i8, ptr %i.bg, align 4, !tbaa !42  ; 2 uses
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 15
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !42
  %i.gm = zext i8 %i.gl to i64
  %i.gn = add nsw i64 %i.gm, -1
  %i.go = icmp eq i64 %i.gn, %i.gj
  br i1 %i.go, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit71
  %i.gp = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i75 = call i32 @llvm.smax.i32(i32 %i.gp, i32 0)
  %wide.trip.count.i.i76 = zext nneg i32 %smax.i.i75 to i64
  %exitcond.not.i.i79293 = icmp slt i32 %i.gp, 1
  br i1 %exitcond.not.i.i79293, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit86, label %.lr.ph297

bb.ae:                                            ; preds = %.lr.ph297
  %indvars.iv.next38.i.i81 = add nuw i32 %indvars.iv37.i.i77294, 1
  %exitcond.not.i.i79 = icmp eq i64 %indvars.iv.next.i.i80, %wide.trip.count.i.i76
  br i1 %exitcond.not.i.i79, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit86, label %.lr.ph297, !llvm.loop !11

.lr.ph297:                                        ; preds = %bb.ad, %bb.ae
  %indvars.iv.i.i78295 = phi i64 [ %indvars.iv.next.i.i80, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %indvars.iv37.i.i77294 = phi i32 [ %indvars.iv.next38.i.i81, %bb.ae ], [ 1, %bb.ad ] ; 3 uses
  %indvars.iv.next.i.i80 = add nuw nsw i64 %indvars.iv.i.i78295, 1 ; 5 uses
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i80
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !97 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i80
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !42
  %i.gu = zext i8 %i.gt to i64
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gr, i64 15
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !42
  %i.gy = zext i8 %i.gx to i64
  %i.gz = icmp eq i64 %i.gv, %i.gy
  br i1 %i.gz, label %bb.ae, label %bb.af, !llvm.loop !11

bb.af:                                            ; preds = %.lr.ph297
  %i.ha = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i80
  %i.hb = trunc i64 %i.gv to i8
  store i8 %i.hb, ptr %i.ha, align 1, !tbaa !42
  %i.hc = sext i32 %indvars.iv37.i.i77294 to i64  ; 2 uses
  %i.hd = and i32 %indvars.iv37.i.i77294, 1
  %lcmp.mod349.not = icmp eq i32 %i.hd, 0
  br i1 %lcmp.mod349.not, label %.prol.loopexit345, label %.prol.loopexit345.unr-lcssa

.prol.loopexit345.unr-lcssa:                      ; preds = %bb.af
  %i.he = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.gv
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i85.prol = add nsw i64 %i.hc, -1 ; 3 uses
  %i.hh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next41.i.i85.prol
  store ptr %i.hg, ptr %i.hh, align 8, !tbaa !97
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 14
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !42  ; 2 uses
  %i.hk = zext i8 %i.hj to i64                    ; 2 uses
  %i.hl = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i85.prol
  store i8 %i.hj, ptr %i.hl, align 1, !tbaa !42
  br label %.prol.loopexit345

.prol.loopexit345:                                ; preds = %.prol.loopexit345.unr-lcssa, %bb.af
  %indvars.iv40.i.i82.unr = phi i64 [ %i.hc, %bb.af ], [ %indvars.iv.next41.i.i85.prol, %.prol.loopexit345.unr-lcssa ]
  %.017.i.i83.unr = phi ptr [ %i.gr, %bb.af ], [ %i.hg, %.prol.loopexit345.unr-lcssa ]
  %.016.i.i84.unr = phi i64 [ %i.gv, %bb.af ], [ %i.hk, %.prol.loopexit345.unr-lcssa ]
  %.lcssa324.unr = phi ptr [ poison, %bb.af ], [ %i.hg, %.prol.loopexit345.unr-lcssa ]
  %.lcssa323.unr = phi i64 [ poison, %bb.af ], [ %i.hk, %.prol.loopexit345.unr-lcssa ]
  %i.hm = icmp eq i64 %indvars.iv.i.i78295, 0
  br i1 %i.hm, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i72, label %.new346

.new346:                                          ; preds = %.prol.loopexit345, %.new346
  %indvars.iv40.i.i82 = phi i64 [ %indvars.iv.next41.i.i85.1, %.new346 ], [ %indvars.iv40.i.i82.unr, %.prol.loopexit345 ] ; 4 uses
  %.017.i.i83 = phi ptr [ %i.hx, %.new346 ], [ %.017.i.i83.unr, %.prol.loopexit345 ]
  %.016.i.i84 = phi i64 [ %i.ib, %.new346 ], [ %.016.i.i84.unr, %.prol.loopexit345 ]
  %i.hn = getelementptr inbounds nuw i8, ptr %.017.i.i83, i64 16
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %.016.i.i84
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i85 = add nsw i64 %indvars.iv40.i.i82, -1 ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next41.i.i85
  store ptr %i.hp, ptr %i.hq, align 8, !tbaa !97
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 14
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !42  ; 2 uses
  %i.ht = zext i8 %i.hs to i64
  %i.hu = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i85
  store i8 %i.hs, ptr %i.hu, align 1, !tbaa !42
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %i.ht
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i85.1 = add nsw i64 %indvars.iv40.i.i82, -2 ; 2 uses
  %i.hy = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i82
  store ptr %i.hx, ptr %i.hy, align 8, !tbaa !97
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 14
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !42  ; 2 uses
  %i.ib = zext i8 %i.ia to i64                    ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i85.1
  store i8 %i.ia, ptr %i.ic, align 1, !tbaa !42
  %i.id = icmp sgt i64 %indvars.iv40.i.i82, 2
  br i1 %i.id, label %.new346, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i72, !llvm.loop !12

bb.ag:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit71
  %i.ie = add i8 %i.gi, 1                         ; 2 uses
  store i8 %i.ie, ptr %i.bg, align 4, !tbaa !42
  %i.if = zext i8 %i.ie to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i72

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i72: ; preds = %.prol.loopexit345, %.new346, %bb.ag
  %.lcssa12.sink.i73 = phi ptr [ %i.gh, %bb.ag ], [ %.lcssa324.unr, %.prol.loopexit345 ], [ %i.hx, %.new346 ]
  %.lcssa.sink.i74 = phi i64 [ %i.if, %bb.ag ], [ %.lcssa323.unr, %.prol.loopexit345 ], [ %i.ib, %.new346 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i73, i64 16
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ig, i64 %.lcssa.sink.i74
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit86

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit86: ; preds = %bb.ae, %bb.ad, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i72
  %i.ij = phi ptr [ %i.ii, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i72 ], [ null, %bb.ad ], [ null, %bb.ae ]
  store ptr %i.ij, ptr %i.c, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull @.str.71, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  %i.ik = load i8, ptr %10, align 8, !tbaa !106, !range !107, !noundef !108
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.aq, label %bb.ah

bb.ah:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit86
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.im = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !109 ; 2 uses
  %.not.i.i87 = icmp eq ptr %i.in, null
  br i1 %.not.i.i87, label %_ZNK7testing15AssertionResult15failure_messageEv.exit88, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit88

_ZNK7testing15AssertionResult15failure_messageEv.exit88: ; preds = %bb.aj, %bb.ai
  %i.ip = phi ptr [ %i.io, %bb.aj ], [ @.str.56, %bb.ai ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 336, ptr noundef %i.ip)
          to label %bb.ak unwind label %bb.an

bb.ak:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit88
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.iq = load ptr, ptr %12, align 8, !tbaa !111  ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.iq, null
  br i1 %.not.i.i89, label %_ZN7testing7MessageD2Ev.exit91, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90: ; preds = %bb.al
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !37
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.it = load ptr, ptr %i.is, align 8
  call void %i.it(ptr noundef nonnull align 8 dereferenceable(128) %i.iq) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit91

_ZN7testing7MessageD2Ev.exit91:                   ; preds = %bb.al, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i90
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  br label %bb.aq

bb.am:                                            ; preds = %bb.ah
  %i.iu = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit94

bb.an:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit88
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.ak
  %i.iw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn30 = phi { ptr, i32 } [ %i.iw, %bb.ao ], [ %i.iv, %bb.an ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  %i.ix = load ptr, ptr %12, align 8, !tbaa !111  ; 3 uses
  %.not.i.i92 = icmp eq ptr %i.ix, null
  br i1 %.not.i.i92, label %_ZN7testing7MessageD2Ev.exit94, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93: ; preds = %bb.ap
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !37
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.ja = load ptr, ptr %i.iz, align 8
  call void %i.ja(ptr noundef nonnull align 8 dereferenceable(128) %i.ix) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit94

_ZN7testing7MessageD2Ev.exit94:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93, %bb.ap, %bb.am
  %.pn30.pn = phi { ptr, i32 } [ %i.iu, %bb.am ], [ %.pn30, %bb.ap ], [ %.pn30, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i93 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.bx

bb.aq:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator4NextEv.exit86, %_ZN7testing7MessageD2Ev.exit91
  %i.jb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !109 ; 4 uses
  %.not.i.i95 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i95, label %_ZN7testing15AssertionResultD2Ev.exit99, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !38 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 16 ; 2 uses
  %i.jf = icmp eq ptr %i.jd, %i.je
  br i1 %i.jf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96: ; preds = %bb.ar
  %i.jg = load i64, ptr %i.je, align 8, !tbaa !42
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.jd, i64 noundef %i.jh) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i96
  call void @_ZdlPvm(ptr noundef nonnull %i.jc, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit99

_ZN7testing15AssertionResultD2Ev.exit99:          ; preds = %bb.aq, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i97
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store ptr %i.f, ptr %15, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  %i.ji = load ptr, ptr %i.bd, align 8, !tbaa !97 ; 2 uses
  %i.jj = load i8, ptr %i.bg, align 4, !tbaa !42  ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.ji, i64 14
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !42
  %i.jm = icmp eq i8 %i.jl, %i.jj
  br i1 %i.jm, label %bb.as, label %bb.av

bb.as:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit99
  %i.jn = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i101 = call i32 @llvm.smax.i32(i32 %i.jn, i32 0)
  %wide.trip.count.i.i102 = zext nneg i32 %smax.i.i101 to i64
  %exitcond.not.i.i105298 = icmp slt i32 %i.jn, 1
  br i1 %exitcond.not.i.i105298, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit, label %.lr.ph302

bb.at:                                            ; preds = %.lr.ph302
  %indvars.iv.next38.i.i107 = add nuw i32 %indvars.iv37.i.i103299, 1
  %exitcond.not.i.i105 = icmp eq i64 %indvars.iv.next.i.i106, %wide.trip.count.i.i102
  br i1 %exitcond.not.i.i105, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit, label %.lr.ph302, !llvm.loop !9

.lr.ph302:                                        ; preds = %bb.as, %bb.at
  %indvars.iv.i.i104300 = phi i64 [ %indvars.iv.next.i.i106, %bb.at ], [ 0, %bb.as ] ; 2 uses
  %indvars.iv37.i.i103299 = phi i32 [ %indvars.iv.next38.i.i107, %bb.at ], [ 1, %bb.as ] ; 3 uses
  %indvars.iv.next.i.i106 = add nuw nsw i64 %indvars.iv.i.i104300, 1 ; 5 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i106
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !97 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i106
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !42  ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 14
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !42
  %i.ju = icmp eq i8 %i.jt, %i.jr
  br i1 %i.ju, label %bb.at, label %bb.au, !llvm.loop !9

bb.au:                                            ; preds = %.lr.ph302
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i106
  %i.jw = zext i8 %i.jr to i64
  %i.jx = add nsw i64 %i.jw, -1                   ; 3 uses
  %i.jy = trunc i64 %i.jx to i8
  store i8 %i.jy, ptr %i.jv, align 1, !tbaa !42
  %i.jz = sext i32 %indvars.iv37.i.i103299 to i64 ; 2 uses
  %i.ka = and i32 %indvars.iv37.i.i103299, 1
  %lcmp.mod355.not = icmp eq i32 %i.ka, 0
  br i1 %lcmp.mod355.not, label %.prol.loopexit351, label %.prol.loopexit351.unr-lcssa

.prol.loopexit351.unr-lcssa:                      ; preds = %bb.au
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.kb, i64 %i.jx
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i111.prol = add nsw i64 %i.jz, -1 ; 3 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next41.i.i111.prol
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !97
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 15
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !42
  %i.kh = zext i8 %i.kg to i64
  %i.ki = add nsw i64 %i.kh, -1                   ; 3 uses
  %i.kj = trunc i64 %i.ki to i8
  %i.kk = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i111.prol
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !42
  br label %.prol.loopexit351

.prol.loopexit351:                                ; preds = %.prol.loopexit351.unr-lcssa, %bb.au
  %indvars.iv40.i.i108.unr = phi i64 [ %i.jz, %bb.au ], [ %indvars.iv.next41.i.i111.prol, %.prol.loopexit351.unr-lcssa ]
  %.017.i.i109.unr = phi ptr [ %i.jp, %bb.au ], [ %i.kd, %.prol.loopexit351.unr-lcssa ]
  %.016.i.i110.unr = phi i64 [ %i.jx, %bb.au ], [ %i.ki, %.prol.loopexit351.unr-lcssa ]
  %.lcssa316.unr = phi ptr [ poison, %bb.au ], [ %i.kd, %.prol.loopexit351.unr-lcssa ]
  %.lcssa315.unr = phi i64 [ poison, %bb.au ], [ %i.ki, %.prol.loopexit351.unr-lcssa ]
  %i.kl = icmp eq i64 %indvars.iv.i.i104300, 0
  br i1 %i.kl, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i, label %.new352

.new352:                                          ; preds = %.prol.loopexit351, %.new352
  %indvars.iv40.i.i108 = phi i64 [ %indvars.iv.next41.i.i111.1, %.new352 ], [ %indvars.iv40.i.i108.unr, %.prol.loopexit351 ] ; 4 uses
  %.017.i.i109 = phi ptr [ %i.ky, %.new352 ], [ %.017.i.i109.unr, %.prol.loopexit351 ]
  %.016.i.i110 = phi i64 [ %i.ld, %.new352 ], [ %.016.i.i110.unr, %.prol.loopexit351 ]
  %i.km = getelementptr inbounds nuw i8, ptr %.017.i.i109, i64 16
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %.016.i.i110
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i111 = add nsw i64 %indvars.iv40.i.i108, -1 ; 2 uses
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next41.i.i111
  store ptr %i.ko, ptr %i.kp, align 8, !tbaa !97
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 15
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !42
  %i.ks = zext i8 %i.kr to i64
  %i.kt = add nsw i64 %i.ks, -1                   ; 2 uses
  %i.ku = trunc i64 %i.kt to i8
  %i.kv = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i111
  store i8 %i.ku, ptr %i.kv, align 1, !tbaa !42
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %i.kw, i64 %i.kt
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i111.1 = add nsw i64 %indvars.iv40.i.i108, -2 ; 2 uses
  %i.kz = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i108
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !97
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 15
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !42
  %i.lc = zext i8 %i.lb to i64
  %i.ld = add nsw i64 %i.lc, -1                   ; 3 uses
  %i.le = trunc i64 %i.ld to i8
  %i.lf = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i111.1
  store i8 %i.le, ptr %i.lf, align 1, !tbaa !42
  %i.lg = icmp sgt i64 %indvars.iv40.i.i108, 2
  br i1 %i.lg, label %.new352, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i, !llvm.loop !10

bb.av:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit99
  %i.lh = add i8 %i.jj, -1                        ; 2 uses
  store i8 %i.lh, ptr %i.bg, align 4, !tbaa !42
  %i.li = zext i8 %i.lh to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i: ; preds = %.prol.loopexit351, %.new352, %bb.av
  %.lcssa13.sink.i = phi ptr [ %i.ji, %bb.av ], [ %.lcssa316.unr, %.prol.loopexit351 ], [ %i.ky, %.new352 ]
  %.lcssa.sink.i100 = phi i64 [ %i.li, %bb.av ], [ %.lcssa315.unr, %.prol.loopexit351 ], [ %i.ld, %.new352 ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.lcssa13.sink.i, i64 16
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %.lcssa.sink.i100
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit: ; preds = %bb.at, %bb.as, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i
  %i.lm = phi ptr [ %i.ll, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i ], [ null, %bb.as ], [ null, %bb.at ]
  store ptr %i.lm, ptr %i.d, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal11CordRepFlatEEEEclIPNS5_7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.ln = load i8, ptr %14, align 8, !tbaa !106, !range !107, !noundef !108
  %i.lo = trunc nuw i8 %i.ln to i1
  br i1 %i.lo, label %bb.bf, label %bb.aw

bb.aw:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ax unwind label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #32
  %i.lp = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !109 ; 2 uses
  %.not.i.i112 = icmp eq ptr %i.lq, null
  br i1 %.not.i.i112, label %_ZNK7testing15AssertionResult15failure_messageEv.exit113, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit113

_ZNK7testing15AssertionResult15failure_messageEv.exit113: ; preds = %bb.ay, %bb.ax
  %i.ls = phi ptr [ %i.lr, %bb.ay ], [ @.str.56, %bb.ax ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 337, ptr noundef %i.ls)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit113
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.ba unwind label %bb.bd

bb.ba:                                            ; preds = %bb.az
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.lt = load ptr, ptr %16, align 8, !tbaa !111  ; 3 uses
  %.not.i.i114 = icmp eq ptr %i.lt, null
  br i1 %.not.i.i114, label %_ZN7testing7MessageD2Ev.exit116, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115: ; preds = %bb.ba
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !37
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8
  call void %i.lw(ptr noundef nonnull align 8 dereferenceable(128) %i.lt) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit116

_ZN7testing7MessageD2Ev.exit116:                  ; preds = %bb.ba, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  br label %bb.bf

bb.bb:                                            ; preds = %bb.aw
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit119

bb.bc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit113
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.be

bb.bd:                                            ; preds = %bb.az
  %i.lz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #32
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.pn33 = phi { ptr, i32 } [ %i.lz, %bb.bd ], [ %i.ly, %bb.bc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #32
  %i.ma = load ptr, ptr %16, align 8, !tbaa !111  ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.be
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !37
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load ptr, ptr %i.mc, align 8
  call void %i.md(ptr noundef nonnull align 8 dereferenceable(128) %i.ma) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %bb.be, %bb.bb
  %.pn33.pn = phi { ptr, i32 } [ %i.lx, %bb.bb ], [ %.pn33, %bb.be ], [ %.pn33, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  br label %bb.bx

bb.bf:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit, %_ZN7testing7MessageD2Ev.exit116
  %i.me = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !109 ; 4 uses
  %.not.i.i120 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i120, label %_ZN7testing15AssertionResultD2Ev.exit124, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !38 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 16 ; 2 uses
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121: ; preds = %bb.bg
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !42
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mg, i64 noundef %i.mk) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122: ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i121
  call void @_ZdlPvm(ptr noundef nonnull %i.mf, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit124

_ZN7testing15AssertionResultD2Ev.exit124:         ; preds = %bb.bf, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i122
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #32
  store i64 0, ptr %19, align 8, !alias.scope !687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  %i.ml = load ptr, ptr %i.bd, align 8, !tbaa !97 ; 2 uses
  %i.mm = load i8, ptr %i.bg, align 4, !tbaa !42  ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ml, i64 14
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !42
  %i.mp = icmp eq i8 %i.mo, %i.mm
  br i1 %i.mp, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit124
  %i.mq = load i32, ptr %1, align 8, !tbaa !188   ; 2 uses
  %smax.i.i128 = call i32 @llvm.smax.i32(i32 %i.mq, i32 0)
  %wide.trip.count.i.i129 = zext nneg i32 %smax.i.i128 to i64
  %exitcond.not.i.i132303 = icmp slt i32 %i.mq, 1
  br i1 %exitcond.not.i.i132303, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit139, label %.lr.ph307

bb.bi:                                            ; preds = %.lr.ph307
  %indvars.iv.next38.i.i134 = add nuw i32 %indvars.iv37.i.i130304, 1
  %exitcond.not.i.i132 = icmp eq i64 %indvars.iv.next.i.i133, %wide.trip.count.i.i129
  br i1 %exitcond.not.i.i132, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit139, label %.lr.ph307, !llvm.loop !9

.lr.ph307:                                        ; preds = %bb.bh, %bb.bi
  %indvars.iv.i.i131305 = phi i64 [ %indvars.iv.next.i.i133, %bb.bi ], [ 0, %bb.bh ] ; 2 uses
  %indvars.iv37.i.i130304 = phi i32 [ %indvars.iv.next38.i.i134, %bb.bi ], [ 1, %bb.bh ] ; 3 uses
  %indvars.iv.next.i.i133 = add nuw nsw i64 %indvars.iv.i.i131305, 1 ; 5 uses
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.next.i.i133
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !97 ; 3 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i133
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !42  ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ms, i64 14
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !42
  %i.mx = icmp eq i8 %i.mw, %i.mu
  br i1 %i.mx, label %bb.bi, label %bb.bj, !llvm.loop !9

bb.bj:                                            ; preds = %.lr.ph307
  %i.my = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i133
  %i.mz = zext i8 %i.mu to i64
  %i.na = add nsw i64 %i.mz, -1                   ; 3 uses
  %i.nb = trunc i64 %i.na to i8
  store i8 %i.nb, ptr %i.my, align 1, !tbaa !42
  %i.nc = sext i32 %indvars.iv37.i.i130304 to i64 ; 2 uses
  %i.nd = and i32 %indvars.iv37.i.i130304, 1
  %lcmp.mod361.not = icmp eq i32 %i.nd, 0
  br i1 %lcmp.mod361.not, label %.prol.loopexit357, label %.prol.loopexit357.unr-lcssa

.prol.loopexit357.unr-lcssa:                      ; preds = %bb.bj
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ms, i64 16
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.ne, i64 %i.na
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i138.prol = add nsw i64 %i.nc, -1 ; 3 uses
  %i.nh = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next41.i.i138.prol
  store ptr %i.ng, ptr %i.nh, align 8, !tbaa !97
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 15
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !42
  %i.nk = zext i8 %i.nj to i64
  %i.nl = add nsw i64 %i.nk, -1                   ; 3 uses
  %i.nm = trunc i64 %i.nl to i8
  %i.nn = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i138.prol
  store i8 %i.nm, ptr %i.nn, align 1, !tbaa !42
  br label %.prol.loopexit357

.prol.loopexit357:                                ; preds = %.prol.loopexit357.unr-lcssa, %bb.bj
  %indvars.iv40.i.i135.unr = phi i64 [ %i.nc, %bb.bj ], [ %indvars.iv.next41.i.i138.prol, %.prol.loopexit357.unr-lcssa ]
  %.017.i.i136.unr = phi ptr [ %i.ms, %bb.bj ], [ %i.ng, %.prol.loopexit357.unr-lcssa ]
  %.016.i.i137.unr = phi i64 [ %i.na, %bb.bj ], [ %i.nl, %.prol.loopexit357.unr-lcssa ]
  %.lcssa308.unr = phi ptr [ poison, %bb.bj ], [ %i.ng, %.prol.loopexit357.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.bj ], [ %i.nl, %.prol.loopexit357.unr-lcssa ]
  %i.no = icmp eq i64 %indvars.iv.i.i131305, 0
  br i1 %i.no, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i125, label %.new358

.new358:                                          ; preds = %.prol.loopexit357, %.new358
  %indvars.iv40.i.i135 = phi i64 [ %indvars.iv.next41.i.i138.1, %.new358 ], [ %indvars.iv40.i.i135.unr, %.prol.loopexit357 ] ; 4 uses
  %.017.i.i136 = phi ptr [ %i.ob, %.new358 ], [ %.017.i.i136.unr, %.prol.loopexit357 ]
  %.016.i.i137 = phi i64 [ %i.og, %.new358 ], [ %.016.i.i137.unr, %.prol.loopexit357 ]
  %i.np = getelementptr inbounds nuw i8, ptr %.017.i.i136, i64 16
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %.016.i.i137
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !156 ; 3 uses
  %indvars.iv.next41.i.i138 = add nsw i64 %indvars.iv40.i.i135, -1 ; 2 uses
  %i.ns = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %indvars.iv.next41.i.i138
  store ptr %i.nr, ptr %i.ns, align 8, !tbaa !97
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 15
  %i.nu = load i8, ptr %i.nt, align 1, !tbaa !42
  %i.nv = zext i8 %i.nu to i64
  %i.nw = add nsw i64 %i.nv, -1                   ; 2 uses
  %i.nx = trunc i64 %i.nw to i8
  %i.ny = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i138
  store i8 %i.nx, ptr %i.ny, align 1, !tbaa !42
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %i.oa = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %i.nw
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !156 ; 4 uses
  %indvars.iv.next41.i.i138.1 = add nsw i64 %indvars.iv40.i.i135, -2 ; 2 uses
  %i.oc = getelementptr [8 x i8], ptr %1, i64 %indvars.iv40.i.i135
  store ptr %i.ob, ptr %i.oc, align 8, !tbaa !97
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 15
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !42
  %i.of = zext i8 %i.oe to i64
  %i.og = add nsw i64 %i.of, -1                   ; 3 uses
  %i.oh = trunc i64 %i.og to i8
  %i.oi = getelementptr inbounds i8, ptr %i.bg, i64 %indvars.iv.next41.i.i138.1
  store i8 %i.oh, ptr %i.oi, align 1, !tbaa !42
  %i.oj = icmp sgt i64 %indvars.iv40.i.i135, 2
  br i1 %i.oj, label %.new358, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i125, !llvm.loop !10

bb.bk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit124
  %i.ok = add i8 %i.mm, -1                        ; 2 uses
  store i8 %i.ok, ptr %i.bg, align 4, !tbaa !42
  %i.ol = zext i8 %i.ok to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i125

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i125: ; preds = %.prol.loopexit357, %.new358, %bb.bk
  %.lcssa13.sink.i126 = phi ptr [ %i.ml, %bb.bk ], [ %.lcssa308.unr, %.prol.loopexit357 ], [ %i.ob, %.new358 ]
  %.lcssa.sink.i127 = phi i64 [ %i.ol, %bb.bk ], [ %.lcssa.unr, %.prol.loopexit357 ], [ %i.og, %.new358 ]
  %i.om = getelementptr inbounds nuw i8, ptr %.lcssa13.sink.i126, i64 16
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.om, i64 %.lcssa.sink.i127
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !156
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit139

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit139: ; preds = %bb.bi, %bb.bh, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i125
  %i.op = phi ptr [ %i.oo, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator10PreviousUpEv.exit.sink.split.i125 ], [ null, %bb.bh ], [ null, %bb.bi ]
  store ptr %i.op, ptr %i.e, align 8, !tbaa !156
  call void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIDnEEEclIPN4absl12lts_2026052613cord_internal7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %18, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull @.str.70, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #32
  %i.oq = load i8, ptr %18, align 8, !tbaa !106, !range !107, !noundef !108
  %i.or = trunc nuw i8 %i.oq to i1
  br i1 %i.or, label %bb.bu, label %bb.bl

bb.bl:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit139
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #32
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #32
  %i.os = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !109 ; 2 uses
  %.not.i.i140 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i140, label %_ZNK7testing15AssertionResult15failure_messageEv.exit141, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !38
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit141

_ZNK7testing15AssertionResult15failure_messageEv.exit141: ; preds = %bb.bn, %bb.bm
  %i.ov = phi ptr [ %i.ou, %bb.bn ], [ @.str.56, %bb.bm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 338, ptr noundef %i.ov)
          to label %bb.bo unwind label %bb.br

bb.bo:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit141
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bp unwind label %bb.bs

bb.bp:                                            ; preds = %bb.bo
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.ow = load ptr, ptr %20, align 8, !tbaa !111  ; 3 uses
  %.not.i.i142 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i142, label %_ZN7testing7MessageD2Ev.exit144, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143: ; preds = %bb.bp
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !37
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(128) %i.ow) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit144

_ZN7testing7MessageD2Ev.exit144:                  ; preds = %bb.bp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  br label %bb.bu

bb.bq:                                            ; preds = %bb.bl
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit147

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit141
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bo
  %i.pc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #32
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  %.pn36 = phi { ptr, i32 } [ %i.pc, %bb.bs ], [ %i.pb, %bb.br ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #32
  %i.pd = load ptr, ptr %20, align 8, !tbaa !111  ; 3 uses
  %.not.i.i145 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i145, label %_ZN7testing7MessageD2Ev.exit147, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146: ; preds = %bb.bt
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !37
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8
  call void %i.pg(ptr noundef nonnull align 8 dereferenceable(128) %i.pd) #32, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit147

_ZN7testing7MessageD2Ev.exit147:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146, %bb.bt, %bb.bq
  %.pn36.pn = phi { ptr, i32 } [ %i.pa, %bb.bq ], [ %.pn36, %bb.bt ], [ %.pn36, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i146 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #32
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  br label %bb.bx

bb.bu:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator8PreviousEv.exit139, %_ZN7testing7MessageD2Ev.exit144
  %i.ph = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.pi = load ptr, ptr %i.ph, align 8, !tbaa !109 ; 4 uses
  %.not.i.i148 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i148, label %_ZN7testing15AssertionResultD2Ev.exit152, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !38 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 16 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149: ; preds = %bb.bv
  %i.pm = load i64, ptr %i.pk, align 8, !tbaa !42
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pn) #34
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i149
  call void @_ZdlPvm(ptr noundef nonnull %i.pi, i64 noundef 32) #34
  br label %_ZN7testing15AssertionResultD2Ev.exit152

_ZN7testing15AssertionResultD2Ev.exit152:         ; preds = %bb.bu, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #32
  %i.po = getelementptr inbounds nuw i8, ptr %.024.lcssa, i64 8
  %i.pp = atomicrmw sub ptr %i.po, i32 2 acq_rel, align 4
  %.not.i = icmp eq i32 %i.pp, 2
  br i1 %.not.i, label %bb.bw, label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit, !prof !157

bb.bw:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit152
  call void @_ZN4absl12lts_2026052613cord_internal7CordRep7DestroyEPS2_(ptr noundef nonnull %.024.lcssa)
  br label %_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit

_ZN4absl12lts_2026052613cord_internal7CordRep5UnrefEPS2_.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit152, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  ret void

bb.bx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit147, %_ZN7testing7MessageD2Ev.exit119, %_ZN7testing7MessageD2Ev.exit94, %_ZN7testing7MessageD2Ev.exit66, %_ZN7testing7MessageD2Ev.exit55
  %.pn36.pn.pn = phi { ptr, i32 } [ %.pn36.pn, %_ZN7testing7MessageD2Ev.exit147 ], [ %.pn33.pn, %_ZN7testing7MessageD2Ev.exit119 ], [ %.pn30.pn, %_ZN7testing7MessageD2Ev.exit94 ], [ %.pn27.pn, %_ZN7testing7MessageD2Ev.exit66 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit55 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  resume { ptr, i32 } %.pn36.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK7testing8internal29PredicateFormatterFromMatcherINS0_9EqMatcherIPN4absl12lts_2026052613cord_internal11CordRepFlatEEEEclIPNS5_7CordRepEEENS_15AssertionResultEPKcRKT_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
end_hunk_10
