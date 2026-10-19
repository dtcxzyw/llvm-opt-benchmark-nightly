Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/cord_test?download=true
inline.NumInlined: 17616
inline.NumDeleted: 3823
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZN46CordTest_TryFlatCommonlyAssumedInvariants_Test13AddToRegistryEv:._crit_edge.i.i
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  ret i32 0

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

bb.f:                                             ; preds = %bb.b, %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.g:                                             ; preds = %.noexc.i14
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

bb.h:                                             ; preds = %_ZN7testing8internal12CodeLocationC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi.exit18
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.ad
  br i1 %i.bm, label %_ZN7testing8internal12CodeLocationD2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.h
  %i.bn = load i64, ptr %i.ad, align 8, !tbaa !78
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit31

_ZN7testing8internal12CodeLocationD2Ev.exit31:    ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29
  %i.bp = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.y
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit31
  %i.br = load i64, ptr %i.y, align 8, !tbaa !78
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit31, %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.bi, %bb.f ], [ %i.bj, %bb.g ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32 ], [ %i.bk, %_ZN7testing8internal12CodeLocationD2Ev.exit31 ] ; 2 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !74    ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.m
  br i1 %i.bu, label %_ZN7testing8internal12CodeLocationD2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.bv = load i64, ptr %i.m, align 8, !tbaa !78
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #40
  br label %_ZN7testing8internal12CodeLocationD2Ev.exit37

_ZN7testing8internal12CodeLocationD2Ev.exit37:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  %i.bx = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.by = icmp eq ptr %i.bx, %i.h
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit37
  %i.bz = load i64, ptr %i.h, align 8, !tbaa !78
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.ca) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZN7testing8internal12CodeLocationD2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.e ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38 ], [ %.pn.pn, %_ZN7testing8internal12CodeLocationD2Ev.exit37 ]
  %i.cb = load ptr, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.e
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %i.cd = load i64, ptr %i.e, align 8, !tbaa !78
  %i.ce = add i64 %i.cd, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.ce) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN46CordTest_TryFlatCommonlyAssumedInvariants_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %3 = alloca [8 x %"class.std::basic_string_view"], align 16 ; 6 uses
  %4 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 13 uses
  %5 = alloca %"class.absl::lts_20260526::Cord::CharIterator", align 8 ; 5 uses
  %6 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 17 uses
  %7 = alloca %"class.std::basic_string_view", align 8 ; 9 uses
  %8 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 10 uses
  %9 = alloca %"class.absl::lts_20260526::Cord", align 8 ; 10 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %11 = alloca %"class.std::optional.83", align 8 ; 9 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %15 = alloca %"class.std::optional.83", align 8 ; 9 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(128) @constinit.281, i64 128, i1 false), !tbaa.struct !167
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @_ZN4absl12lts_2026052618MakeFragmentedCordIA8_St17basic_string_viewIcSt11char_traitsIcEEEENS0_4CordERKT_(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %4, ptr noundef nonnull align 8 dereferenceable(128) %3)
  %i.a = invoke noundef nonnull align 1 dereferenceable(1) ptr @_ZN7testing18WithParamInterfaceIbE8GetParamEv()
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.a
  %i.b = load i8, ptr %i.a, align 1, !tbaa !92, !range !111, !noundef !112
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN8CordTest11MaybeHardenERN4absl12lts_202605264CordE.exit

bb.b:                                             ; preds = %.noexc
  invoke void @_ZN4absl12lts_202605264Cord19SetExpectedChecksumEj(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef 1)
          to label %_ZN8CordTest11MaybeHardenERN4absl12lts_202605264CordE.exit unwind label %bb.s

_ZN8CordTest11MaybeHardenERN4absl12lts_202605264CordE.exit: ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  invoke void @_ZN4absl12lts_202605264Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit unwind label %bb.t

_ZNK4absl12lts_202605264Cord10char_beginEv.exit:  ; preds = %_ZN8CordTest11MaybeHardenERN4absl12lts_202605264CordE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, i8 0, i64 40, i1 false), !alias.scope !1228
  store i32 -1, ptr %i.g, align 8, !tbaa !151, !alias.scope !1228
  %i.h = load i8, ptr %4, align 8, !tbaa !78, !noalias !1228 ; 4 uses
  %i.i = trunc i8 %i.h to i1                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !noalias !1228 ; 5 uses
  %.not8.i.i.i = icmp ne ptr %i.k, null
  %.not.not.i.i.i = select i1 %i.i, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.c, label %bb.p

bb.c:                                             ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit
  %i.l = load i64, ptr %i.k, align 8, !tbaa !129, !noalias !1228 ; 3 uses
  store i64 %i.l, ptr %i.e, align 8, !tbaa !150, !alias.scope !1228
  %.not7.i.i.i = icmp eq i64 %i.l, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.d, !prof !90

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.n = load i8, ptr %i.m, align 4, !tbaa !122, !noalias !1228 ; 2 uses
  %i.o = icmp eq i8 %i.n, 2
  br i1 %i.o, label %bb.e, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !90

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !206, !noalias !1228 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !122, !noalias !1228
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.r = phi i8 [ %.pre.i.i.i.i, %bb.e ], [ %i.n, %bb.d ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.q, %bb.e ], [ %i.k, %bb.d ] ; 11 uses
  %i.s = icmp eq i8 %i.r, 3
  br i1 %i.s, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.u = load i8, ptr %i.t, align 1, !tbaa !78, !noalias !1228 ; 4 uses
  %i.v = zext i8 %i.u to i32
  store i32 %i.v, ptr %i.g, align 8, !tbaa !151, !alias.scope !1228
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.x = load i8, ptr %i.w, align 1, !noalias !1228 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  %i.z = zext i8 %i.u to i64                      ; 5 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  store ptr %.0.i.i.i.i.i, ptr %i.aa, align 8, !tbaa !212, !alias.scope !1228
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 %i.x, ptr %i.ac, align 1, !tbaa !78, !alias.scope !1228
  %.018.i.i.i.i.i.i.i = zext i8 %i.x to i64       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.f
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.z, -1 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.018.i.i.i.i.i.i.i
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !152, !noalias !1228 ; 3 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !212, !alias.scope !1228
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !1228 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !78, !alias.scope !1228
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.ai to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ak = icmp eq i8 %i.u, 1
  br i1 %i.ak, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.021.i.i.i.i.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !152, !noalias !1228 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !212, !alias.scope !1228
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 14
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !1228 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !78, !alias.scope !1228
  %.0.i.i.i.i.i.i.i = zext i8 %i.aq to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.0.i.i.i.i.i.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !152, !noalias !1228 ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.au, ptr %i.av, align 8, !tbaa !212, !alias.scope !1228
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 14
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !1228 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !78, !alias.scope !1228
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.ax to i64      ; 2 uses
  %i.az = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.az, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.f ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ba = load ptr, ptr %i.y, align 8, !tbaa !212, !alias.scope !1228
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !152, !noalias !1228 ; 5 uses
  %i.be = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !1228
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !129, !noalias !1228 ; 2 uses
  %i.bg = sub i64 %i.be, %i.bf                    ; 2 uses
  store i64 %i.bg, ptr %i.f, align 8, !tbaa !213, !alias.scope !1228
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 12
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !122, !noalias !1228 ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 1
  br i1 %i.bj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !208, !noalias !1228
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !209, !noalias !1228 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !122, !noalias !1228
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bo = phi i8 [ %.pre.i.i.i.i.i.i, %bb.g ], [ %i.bi, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.bn, %bb.g ], [ %i.bd, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.bl, %bb.g ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.bp = icmp ugt i8 %i.bo, 5
  br i1 %i.bp, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !214, !noalias !1228
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bq, %bb.i ], [ %i.bs, %bb.j ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.e, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  store ptr %.0.i.i.i.i.i, ptr %i.d, align 8, !tbaa !215, !alias.scope !1228
  %i.bt = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !1228
  %i.bu = icmp eq i8 %i.r, 1
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !208, !noalias !1228
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !209, !noalias !1228 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !122, !noalias !1228
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bz = phi i8 [ %.pre.i.i.i.i.i, %bb.l ], [ %i.r, %bb.k ]
  %.010.i.i.i.i.i = phi ptr [ %i.by, %bb.l ], [ %.0.i.i.i.i.i, %bb.k ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.bw, %bb.l ], [ 0, %bb.k ]
  %i.ca = icmp ugt i8 %i.bz, 5
  br i1 %i.ca, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !214, !noalias !1228
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.pn.i.i.i.i.i = phi ptr [ %i.cb, %bb.n ], [ %i.cd, %bb.o ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.p:                                             ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit
  %i.ce = sext i8 %i.h to i64
  %i.cf = lshr i64 %i.ce, 1                       ; 3 uses
  store i64 %i.cf, ptr %i.e, align 8, !tbaa !150, !alias.scope !1228
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 1
  %spec.select.i.i.i.i = select i1 %i.i, ptr null, ptr %i.cg
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.p
  %.sink = phi i64 [ %i.cf, %bb.p ], [ %i.bt, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bf, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %spec.select.i.i.i.i.sink = phi ptr [ %spec.select.i.i.i.i, %bb.p ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.ch = phi i64 [ 0, %bb.p ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bg, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.ci = phi i64 [ %i.cf, %bb.p ], [ %i.l, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  store i64 %.sink, ptr %6, align 8, !tbaa !77, !alias.scope !1228
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %spec.select.i.i.i.i.sink, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !140, !alias.scope !1228
  %.not98 = icmp eq i64 %i.ci, 0
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %8, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 1
  %.sroa.4.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 5 uses
  br label %bb.u

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_202605264CordD2Ev.exit86, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %.pre109 = load i8, ptr %4, align 8, !tbaa !78
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.loopexit, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %i.ct = phi i8 [ %.pre109, %._crit_edge.loopexit ], [ %i.h, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.cu = trunc i8 %i.ct to i1
  br i1 %i.cu, label %bb.q, label %_ZN4absl12lts_202605264CordD2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  invoke void @_ZN4absl12lts_202605264Cord15DestroyCordSlowEv(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %_ZN4absl12lts_202605264CordD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  call void @__clang_call_terminate(ptr %i.cw) #42
  unreachable

_ZN4absl12lts_202605264CordD2Ev.exit:             ; preds = %._crit_edge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void

bb.s:                                             ; preds = %bb.b, %bb.a
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.t:                                             ; preds = %_ZN8CordTest11MaybeHardenERN4absl12lts_202605264CordE.exit
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.u:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.cz = phi i64 [ %i.ch, %.lr.ph ], [ %i.io, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.da = phi i64 [ %i.ci, %.lr.ph ], [ %i.in, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %i.db = phi i64 [ %.sink, %.lr.ph ], [ %i.ip, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN21CordTest_Flatten_Test8TestBodyEv:bb.a
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.al ], [ %i.bs, %bb.ak ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #38
  br label %bb.ay

bb.an:                                            ; preds = %bb.l, %_ZN4absl12lts_202605264CordD2Ev.exit19
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ao:                                            ; preds = %bb.m
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #38
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.pn9 = phi { ptr, i32 } [ %i.bv, %bb.ao ], [ %i.bu, %bb.an ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #38
  br label %bb.ay

bb.aq:                                            ; preds = %bb.s, %_ZN4absl12lts_202605264CordD2Ev.exit24
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #38
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn11 = phi { ptr, i32 } [ %i.bx, %bb.ar ], [ %i.bw, %bb.aq ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  br label %bb.ay

bb.at:                                            ; preds = %_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEC2Em.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.au:                                            ; preds = %bb.ac, %bb.ab
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.av:                                            ; preds = %bb.ad
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #38
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pn13 = phi { ptr, i32 } [ %i.ca, %bb.av ], [ %i.bz, %bb.au ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %12) #38
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.at
  %.pn13.pn = phi { ptr, i32 } [ %.pn13, %bb.aw ], [ %i.by, %bb.at ]
  %i.cb = load ptr, ptr %13, align 8, !tbaa !74   ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %bb.ax
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !78
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %bb.ay

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %bb.as, %bb.ap, %bb.am, %bb.aj
  %.pn13.pn.pn = phi { ptr, i32 } [ %.pn13.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ], [ %.pn11, %bb.as ], [ %.pn9, %bb.ap ], [ %.pn, %bb.am ], [ %i.br, %bb.aj ]
  resume { ptr, i32 } %.pn13.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL13VerifyFlattenN4absl12lts_202605264CordE(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 5 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %13 = alloca %"class.testing::Message", align 8 ; 8 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @_ZNK4absl12lts_202605264CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.c = call fastcc noundef zeroext i1 @_ZL6IsFlatRKN4absl12lts_202605264CordE(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %.pre = load i8, ptr %0, align 8, !tbaa !78     ; 3 uses
  %i.d = trunc i8 %.pre to i1                     ; 6 uses
  br i1 %i.c, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = load i64, ptr %i.f, align 8, !tbaa !129
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = sext i8 %.pre to i64
  %i.i = lshr exact i64 %i.h, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.j = phi i64 [ %i.g, %bb.c ], [ %i.i, %bb.d ]
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1258)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !noalias !1258 ; 5 uses
  %.not8.i.i = icmp ne ptr %i.m, null
  %.not.not.i.i = select i1 %i.d, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  %i.n = load i64, ptr %i.m, align 8, !tbaa !129, !noalias !1258
  %.not7.i.i = icmp eq i64 %i.n, 0
  br i1 %.not7.i.i, label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i, label %bb.h, !prof !90

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.p = load i8, ptr %i.o, align 4, !tbaa !122, !noalias !1258 ; 2 uses
  %i.q = icmp eq i8 %i.p, 2
  br i1 %i.q, label %bb.i, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !90

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !206, !noalias !1258 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !122, !noalias !1258
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.i, %bb.h
  %i.t = phi i8 [ %.pre.i.i.i, %bb.i ], [ %i.p, %bb.h ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.i ], [ %i.m, %bb.h ] ; 8 uses
  switch i8 %i.t, label %bb.p [
    i8 3, label %bb.j
    i8 1, label %bb.o
  ]

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.v = load i8, ptr %i.u, align 1, !tbaa !78, !noalias !1258 ; 4 uses
  %i.w = zext i8 %i.v to i32
  store i32 %i.w, ptr %i.k, align 8, !tbaa !151, !alias.scope !1258
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.y = load i8, ptr %i.x, align 1, !noalias !1258 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.aa = zext i8 %i.v to i64                     ; 5 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.aa
  store ptr %.0.i.i.i.i, ptr %i.ab, align 8, !tbaa !212, !alias.scope !1258
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 %i.y, ptr %i.ad, align 1, !tbaa !78, !alias.scope !1258
  %.018.i.i.i.i.i.i = zext i8 %i.y to i64         ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.j
  %xtraiter = and i64 %i.aa, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.aa, -1 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.018.i.i.i.i.i.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !152, !noalias !1258 ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !212, !alias.scope !1258
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 14
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !1258 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !78, !alias.scope !1258
  %.0.i.i.i.i.i.i.prol = zext i8 %i.aj to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.aa, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.al = icmp eq i8 %i.v, 1
  br i1 %i.al, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.021.i.i.i.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !152, !noalias !1258 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !212, !alias.scope !1258
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !1258 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !78, !alias.scope !1258
  %.0.i.i.i.i.i.i = zext i8 %i.ar to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.0.i.i.i.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !152, !noalias !1258 ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !212, !alias.scope !1258
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 14
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !1258 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !78, !alias.scope !1258
  %.0.i.i.i.i.i.i.1 = zext i8 %i.ay to i64        ; 2 uses
  %i.ba = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.j
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.j ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.bb = load ptr, ptr %i.z, align 8, !tbaa !212, !alias.scope !1258
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.0.lcssa.i.i.i.i.i.i
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !152, !noalias !1258 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i8, ptr %i.bf, align 4, !tbaa !122, !noalias !1258 ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 1
  br i1 %i.bh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !208, !noalias !1258
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !209, !noalias !1258 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !122, !noalias !1258
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.bm = phi i8 [ %.pre.i.i.i.i.i, %bb.k ], [ %i.bg, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i = phi ptr [ %i.bl, %bb.k ], [ %i.be, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ %i.bj, %bb.k ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.bn = icmp ugt i8 %i.bm, 5
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !214, !noalias !1258
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i.i = phi ptr [ %i.bo, %bb.m ], [ %i.bq, %bb.n ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i.i.i.i.i
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

bb.o:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !208, !noalias !1258
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !209, !noalias !1258 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !122, !noalias !1258
  br label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, %bb.o
  %i.bv = phi i8 [ %.pre.i.i.i.i, %bb.o ], [ %i.t, %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.bu, %bb.o ], [ %.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.bs, %bb.o ], [ 0, %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i ]
  %i.bw = icmp ugt i8 %i.bv, 5
  br i1 %i.bw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !214, !noalias !1258
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.pn.i.i.i.i = phi ptr [ %i.bx, %bb.q ], [ %i.bz, %bb.r ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i8.i.i.i
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

bb.s:                                             ; preds = %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i = select i1 %i.d, ptr null, ptr %i.ca
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i: ; preds = %bb.g, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.s
  %.sroa.2.0.copyload.i = phi ptr [ %spec.select.i.i.i, %bb.s ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %.thread

.thread:                                          ; preds = %bb.a, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i, %bb.e
  %i.cb = phi i1 [ false, %bb.e ], [ true, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i ], [ false, %bb.a ]
  %.sroa.5.0 = phi ptr [ null, %bb.e ], [ %.sroa.2.0.copyload.i, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i ], [ null, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  %i.ce = icmp ne ptr %i.cd, null
  %.not3.i = select i1 %i.d, i1 %i.ce, i1 false
  br i1 %.not3.i, label %bb.w, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i = select i1 %i.d, ptr null, ptr %i.cf
  br i1 %i.d, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cg = load i64, ptr %i.cd, align 8, !tbaa !129
  br label %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ch = sext i8 %.pre to i64
  %i.ci = lshr exact i64 %i.ch, 1
  br label %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i

_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i: ; preds = %bb.v, %bb.u
  %i.cj = phi i64 [ %i.cg, %bb.u ], [ %i.ci, %bb.v ]
  %i.ck = insertvalue { i64, ptr } poison, i64 %i.cj, 0
  %i.cl = insertvalue { i64, ptr } %i.ck, ptr %spec.select.i.i, 1
  br label %bb.y

bb.w:                                             ; preds = %.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.cm = invoke noundef zeroext i1 @_ZN4absl12lts_202605264Cord10GetFlatAuxEPNS0_13cord_internal7CordRepEPSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull %i.cd, ptr noundef nonnull %1)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.w
  br i1 %i.cm, label %._crit_edge.i, label %bb.x

._crit_edge.i:                                    ; preds = %.noexc
  %.fca.0.load.pre.i = load i64, ptr %1, align 8
  %.fca.1.gep.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.fca.1.load.pre.i = load ptr, ptr %.fca.1.gep.phi.trans.insert.i, align 8
  %i.cn = insertvalue { i64, ptr } poison, i64 %.fca.0.load.pre.i, 0
  %i.co = insertvalue { i64, ptr } %i.cn, ptr %.fca.1.load.pre.i, 1
  br label %bb.y

bb.x:                                             ; preds = %.noexc
  %i.cp = invoke { i64, ptr } @_ZN4absl12lts_202605264Cord15FlattenSlowPathEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.y unwind label %bb.ab

bb.y:                                             ; preds = %._crit_edge.i, %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i, %bb.x
  %.fca.1.insert.merged.i = phi { i64, ptr } [ %i.co, %._crit_edge.i ], [ %i.cl, %_ZNK4absl12lts_202605264Cord9InlineRep4sizeEv.exit.i ], [ %i.cp, %bb.x ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.cq = extractvalue { i64, ptr } %.fca.1.insert.merged.i, 0 ; 4 uses
  store i64 %i.cq, ptr %4, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cs = extractvalue { i64, ptr } %.fca.1.insert.merged.i, 1 ; 2 uses
  store ptr %i.cs, ptr %i.cr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.ct = load ptr, ptr %2, align 8, !tbaa !74, !noalias !1259
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !76, !noalias !1259
  %i.cw = icmp eq i64 %i.cq, %i.cv
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cx = icmp eq i64 %i.cq, 0
  br i1 %i.cx, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.z
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.cs, ptr %i.ct, i64 %i.cq), !noalias !1259
  %i.cy = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.cy, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i, label %bb.aa

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.z
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS5_SaIcEEETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSK_RKSC_RKSD_.exit unwind label %bb.ac

end_hunk_1
begin_hunk_2_@_ZN51CordTest_MakeFragmentedCordFromInitializerList_Test8TestBodyEv:bb.a
bb.e:                                             ; preds = %.noexc91
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
          to label %_ZN7testing8internal8EqHelper7CompareIA18_cN4absl12lts_202605264CordETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.g

_ZN4absl12lts_20260526eqESt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordE.exit.thread.i.i: ; preds = %.noexc91, %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i.i
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA18_cN4absl12lts_202605264CordEEENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(18) @.str.377, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA18_cN4absl12lts_202605264CordETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.g

_ZN7testing8internal8EqHelper7CompareIA18_cN4absl12lts_202605264CordETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit: ; preds = %bb.e, %_ZN4absl12lts_20260526eqESt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordE.exit.thread.i.i
  %i.n = load i8, ptr %4, align 8, !tbaa !110, !range !111, !noundef !112
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.q, label %bb.h

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.ev

bb.g:                                             ; preds = %_ZN4absl12lts_20260526eqESt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordE.exit.thread.i.i, %bb.e, %_ZN4absl12lts_20260526eqESt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordE.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.h:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA18_cN4absl12lts_202605264CordETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.u = phi ptr [ %i.t, %bb.j ], [ @.str.57, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2329, ptr noundef %i.u)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.v = load ptr, ptr %5, align 8, !tbaa !115    ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.v, null
  br i1 %.not.i.i94, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit97

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #38
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ab, %bb.o ], [ %i.aa, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.ac = load ptr, ptr %5, align 8, !tbaa !115   ; 3 uses
  %.not.i.i95 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i95, label %_ZN7testing7MessageD2Ev.exit97, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96: ; preds = %bb.p
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !73
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(128) %i.ac) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit97

_ZN7testing7MessageD2Ev.exit97:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #38
  br label %bb.ag

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA18_cN4absl12lts_202605264CordETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !113 ; 4 uses
  %.not.i.i98 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i98, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !74 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.al = load i64, ptr %i.aj, align 8, !tbaa !78
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.am) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %7, i8 0, i64 40, i1 false), !alias.scope !1447
  store i32 -1, ptr %i.aq, align 8, !tbaa !151, !alias.scope !1447
  %i.ar = load i8, ptr %2, align 8, !tbaa !78, !noalias !1447 ; 2 uses
  %i.as = trunc i8 %i.ar to i1                    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !1447 ; 5 uses
  %.not8.i.i = icmp ne ptr %i.au, null
  %.not.not.i.i = select i1 %i.as, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.s, label %bb.af

bb.s:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.av = load i64, ptr %i.au, align 8, !tbaa !129, !noalias !1447 ; 3 uses
  store i64 %i.av, ptr %i.ao, align 8, !tbaa !150, !alias.scope !1447
  %.not7.i.i = icmp eq i64 %i.av, 0
  br i1 %.not7.i.i, label %.thread, label %bb.t, !prof !90

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  %i.ax = load i8, ptr %i.aw, align 4, !tbaa !122, !noalias !1447 ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 2
  br i1 %i.ay, label %bb.u, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !90

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !206, !noalias !1447 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !122, !noalias !1447
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.u, %bb.t
  %i.bb = phi i8 [ %.pre.i.i.i, %bb.u ], [ %i.ax, %bb.t ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.ba, %bb.u ], [ %i.au, %bb.t ] ; 11 uses
  %i.bc = icmp eq i8 %i.bb, 3
  br i1 %i.bc, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !78, !noalias !1447 ; 4 uses
  %i.bf = zext i8 %i.be to i32
  store i32 %i.bf, ptr %i.aq, align 8, !tbaa !151, !alias.scope !1447
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !1447 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 5 uses
  %i.bj = zext i8 %i.be to i64                    ; 5 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bj
  store ptr %.0.i.i.i.i, ptr %i.bk, align 8, !tbaa !212, !alias.scope !1447
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bj
  store i8 %i.bh, ptr %i.bm, align 1, !tbaa !78, !alias.scope !1447
  %.018.i.i.i.i.i.i = zext i8 %i.bh to i64        ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.be, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.v
  %xtraiter = and i64 %i.bj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.bj, -1 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.018.i.i.i.i.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !152, !noalias !1447 ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !212, !alias.scope !1447
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 14
  %i.bs = load i8, ptr %i.br, align 1, !noalias !1447 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !78, !alias.scope !1447
  %.0.i.i.i.i.i.i.prol = zext i8 %i.bs to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bu = icmp eq i8 %i.be, 1
  br i1 %i.bu, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.021.i.i.i.i.i.i
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !152, !noalias !1447 ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !212, !alias.scope !1447
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 14
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !1447 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !78, !alias.scope !1447
  %.0.i.i.i.i.i.i = zext i8 %i.ca to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.0.i.i.i.i.i.i
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !152, !noalias !1447 ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.ce, ptr %i.cf, align 8, !tbaa !212, !alias.scope !1447
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 14
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !1447 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !78, !alias.scope !1447
  %.0.i.i.i.i.i.i.1 = zext i8 %i.ch to i64        ; 2 uses
  %i.cj = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.v
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.v ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.ck = load ptr, ptr %i.bi, align 8, !tbaa !212, !alias.scope !1447
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %.0.lcssa.i.i.i.i.i.i
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !152, !noalias !1447 ; 5 uses
  %i.co = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !129, !noalias !1447
  %i.cp = load i64, ptr %i.cn, align 8, !tbaa !129, !noalias !1447 ; 2 uses
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  store i64 %i.cq, ptr %i.ap, align 8, !tbaa !213, !alias.scope !1447
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cs = load i8, ptr %i.cr, align 4, !tbaa !122, !noalias !1447 ; 2 uses
  %i.ct = icmp eq i8 %i.cs, 1
  br i1 %i.ct, label %bb.w, label %bb.x

bb.w:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !208, !noalias !1447
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !209, !noalias !1447 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !122, !noalias !1447
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.cy = phi i8 [ %.pre.i.i.i.i.i, %bb.w ], [ %i.cs, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i = phi ptr [ %i.cx, %bb.w ], [ %i.cn, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ %i.cv, %bb.w ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.cz = icmp ugt i8 %i.cy, 5
  br i1 %i.cz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.da = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !214, !noalias !1447
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.z, %bb.y
  %.pn.i.i.i.i.i = phi ptr [ %i.da, %bb.y ], [ %i.dc, %bb.z ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i.i.i.i.i
  %.pr.pre.pre = load i64, ptr %i.ao, align 8, !tbaa !150
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

bb.aa:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.an, align 8, !tbaa !215, !alias.scope !1447
  %i.dd = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !129, !noalias !1447
  %i.de = icmp eq i8 %i.bb, 1
  br i1 %i.de, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !208, !noalias !1447
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !209, !noalias !1447 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !122, !noalias !1447
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dj = phi i8 [ %.pre.i.i.i.i, %bb.ab ], [ %i.bb, %bb.aa ]
  %.010.i.i.i.i = phi ptr [ %i.di, %bb.ab ], [ %.0.i.i.i.i, %bb.aa ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.dg, %bb.ab ], [ 0, %bb.aa ]
  %i.dk = icmp ugt i8 %i.dj, 5
  br i1 %i.dk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dl = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.dm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !214, !noalias !1447
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.ae, %bb.ad
  %.pn.i.i.i.i = phi ptr [ %i.dl, %bb.ad ], [ %i.dn, %bb.ae ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i8.i.i.i
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

.thread:                                          ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  store i8 0, ptr %8, align 8, !tbaa !110
  %i.do = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr null, ptr %i.do, align 8, !tbaa !133
  %i.dp = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 1, ptr %i.dp, align 8, !tbaa !135
  br label %bb.ah

bb.af:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.dq = sext i8 %i.ar to i64
  %i.dr = lshr i64 %i.dq, 1                       ; 3 uses
  store i64 %i.dr, ptr %i.ao, align 8, !tbaa !150, !alias.scope !1447
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 1
  %spec.select.i.i.i = select i1 %i.as, ptr null, ptr %i.ds
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.af
  %.sink.i.i.i.sink = phi i64 [ %i.dr, %bb.af ], [ %i.dd, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.cp, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 5 uses
  %.sroa.3.0.i.sink.i.i.i.sink = phi ptr [ %spec.select.i.i.i, %bb.af ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 3 uses
  %i.dt = phi i64 [ 0, %bb.af ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.cq, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 3 uses
  %.pr = phi i64 [ %i.dr, %bb.af ], [ %i.av, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.pr.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 3 uses
  store i64 %.sink.i.i.i.sink, ptr %7, align 8, !tbaa !77, !alias.scope !1447
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.sroa.3.0.i.sink.i.i.i.sink, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !140, !alias.scope !1447
  %i.du = icmp ne i64 %.pr, 0                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  %i.dv = zext i1 %i.du to i8
  store i8 %i.dv, ptr %8, align 8, !tbaa !110
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr null, ptr %i.dw, align 8, !tbaa !133
  %i.dx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 1, ptr %i.dx, align 8, !tbaa !135
  br i1 %i.du, label %bb.as, label %bb.ah

bb.ag:                                            ; preds = %_ZN7testing7MessageD2Ev.exit97, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit97 ], [ %i.q, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.ev

bb.ah:                                            ; preds = %.thread, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i
  %i.dy = phi ptr [ %i.do, %.thread ], [ %i.dw, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.ai unwind label %bb.an

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
          to label %bb.aj unwind label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  %i.dz = load ptr, ptr %12, align 8, !tbaa !74
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !76
  store i64 %i.eb, ptr %11, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.dz, ptr %i.ec, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 2, i64 63, ptr nonnull @.str.1, i32 noundef 2333, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %11)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #38
  %i.ed = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ef = icmp eq ptr %i.ed, %i.ee
  br i1 %i.ef, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.al
  %i.eg = load i64, ptr %i.ee, align 8, !tbaa !78
  %i.eh = add i64 %i.eg, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eh) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_2
begin_hunk_3_@_ZN42CordTest_MakeFragmentedCordFromVector_Test8TestBodyEv:bb.a
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIA18_cN4absl12lts_202605264CordEEENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %3, ptr noundef nonnull @.str.376, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(18) @.str.377, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN7testing8internal8EqHelper7CompareIA18_cN4absl12lts_202605264CordETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit unwind label %bb.i

_ZN7testing8internal8EqHelper7CompareIA18_cN4absl12lts_202605264CordETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit: ; preds = %bb.f, %_ZN4absl12lts_20260526eqESt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordE.exit.thread.i.i
  %i.q = load i8, ptr %3, align 8, !tbaa !110, !range !111, !noundef !112
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.s, label %bb.j

bb.g:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ey

bb.i:                                             ; preds = %_ZN4absl12lts_20260526eqESt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordE.exit.thread.i.i, %bb.f, %_ZN4absl12lts_20260526eqESt17basic_string_viewIcSt11char_traitsIcEERKNS0_4CordE.exit.i.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.j:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA18_cN4absl12lts_202605264CordETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !113  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.l, %bb.k
  %i.y = phi ptr [ %i.x, %bb.l ], [ @.str.57, %bb.k ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2351, ptr noundef %i.y)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.z = load ptr, ptr %4, align 8, !tbaa !115    ; 3 uses
  %.not.i.i98 = icmp eq ptr %i.z, null
  br i1 %.not.i.i98, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.n
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !73
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.n, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.s

bb.o:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit101

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #38
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.af, %bb.q ], [ %i.ae, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.ag = load ptr, ptr %4, align 8, !tbaa !115   ; 3 uses
  %.not.i.i99 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i99, label %_ZN7testing7MessageD2Ev.exit101, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100: ; preds = %bb.r
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(128) %i.ag) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit101

_ZN7testing7MessageD2Ev.exit101:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100, %bb.r, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.ad, %bb.o ], [ %.pn, %bb.r ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i100 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #38
  br label %bb.ai

bb.s:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIA18_cN4absl12lts_202605264CordETnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !113 ; 4 uses
  %.not.i.i102 = icmp eq ptr %i.al, null
  br i1 %.not.i.i102, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !74 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.t
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !78
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.s, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1459)
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, i8 0, i64 40, i1 false), !alias.scope !1459
  store i32 -1, ptr %i.au, align 8, !tbaa !151, !alias.scope !1459
  %i.av = load i8, ptr %2, align 8, !tbaa !78, !noalias !1459 ; 2 uses
  %i.aw = trunc i8 %i.av to i1                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !1459 ; 5 uses
  %.not8.i.i = icmp ne ptr %i.ay, null
  %.not.not.i.i = select i1 %i.aw, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.u, label %bb.ah

bb.u:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !129, !noalias !1459 ; 3 uses
  store i64 %i.az, ptr %i.as, align 8, !tbaa !150, !alias.scope !1459
  %.not7.i.i = icmp eq i64 %i.az, 0
  br i1 %.not7.i.i, label %.thread, label %bb.v, !prof !90

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !122, !noalias !1459 ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 2
  br i1 %i.bc, label %bb.w, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !90

bb.w:                                             ; preds = %bb.v
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !206, !noalias !1459 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !122, !noalias !1459
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.w, %bb.v
  %i.bf = phi i8 [ %.pre.i.i.i, %bb.w ], [ %i.bb, %bb.v ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %i.be, %bb.w ], [ %i.ay, %bb.v ] ; 11 uses
  %i.bg = icmp eq i8 %i.bf, 3
  br i1 %i.bg, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !78, !noalias !1459 ; 4 uses
  %i.bj = zext i8 %i.bi to i32
  store i32 %i.bj, ptr %i.au, align 8, !tbaa !151, !alias.scope !1459
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !1459 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 5 uses
  %i.bn = zext i8 %i.bi to i64                    ; 5 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  store ptr %.0.i.i.i.i, ptr %i.bo, align 8, !tbaa !212, !alias.scope !1459
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 %i.bl, ptr %i.bq, align 1, !tbaa !78, !alias.scope !1459
  %.018.i.i.i.i.i.i = zext i8 %i.bl to i64        ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.x
  %xtraiter = and i64 %i.bn, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.bn, -1 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.018.i.i.i.i.i.i
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !152, !noalias !1459 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !212, !alias.scope !1459
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 14
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !1459 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !78, !alias.scope !1459
  %.0.i.i.i.i.i.i.prol = zext i8 %i.bw to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.by = icmp eq i8 %i.bi, 1
  br i1 %i.by, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.021.i.i.i.i.i.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !152, !noalias !1459 ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !212, !alias.scope !1459
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 14
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !1459 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !78, !alias.scope !1459
  %.0.i.i.i.i.i.i = zext i8 %i.ce to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.0.i.i.i.i.i.i
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !152, !noalias !1459 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !212, !alias.scope !1459
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 14
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !1459 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !78, !alias.scope !1459
  %.0.i.i.i.i.i.i.1 = zext i8 %i.cl to i64        ; 2 uses
  %i.cn = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.x
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.x ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.co = load ptr, ptr %i.bm, align 8, !tbaa !212, !alias.scope !1459
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.0.lcssa.i.i.i.i.i.i
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !152, !noalias !1459 ; 5 uses
  %i.cs = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !129, !noalias !1459
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !129, !noalias !1459 ; 2 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 2 uses
  store i64 %i.cu, ptr %i.at, align 8, !tbaa !213, !alias.scope !1459
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  %i.cw = load i8, ptr %i.cv, align 4, !tbaa !122, !noalias !1459 ; 2 uses
  %i.cx = icmp eq i8 %i.cw, 1
  br i1 %i.cx, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !208, !noalias !1459
  %i.da = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !209, !noalias !1459 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !122, !noalias !1459
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.dc = phi i8 [ %.pre.i.i.i.i.i, %bb.y ], [ %i.cw, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i = phi ptr [ %i.db, %bb.y ], [ %i.cr, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i = phi i64 [ %i.cz, %bb.y ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.dd = icmp ugt i8 %i.dc, 5
  br i1 %i.dd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.ab:                                            ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !214, !noalias !1459
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.ab, %bb.aa
  %.pn.i.i.i.i.i = phi ptr [ %i.de, %bb.aa ], [ %i.dg, %bb.ab ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i.i.i.i.i
  %.pr.pre.pre = load i64, ptr %i.as, align 8, !tbaa !150
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.ar, align 8, !tbaa !215, !alias.scope !1459
  %i.dh = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !129, !noalias !1459
  %i.di = icmp eq i8 %i.bf, 1
  br i1 %i.di, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !208, !noalias !1459
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !209, !noalias !1459 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !122, !noalias !1459
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dn = phi i8 [ %.pre.i.i.i.i, %bb.ad ], [ %i.bf, %bb.ac ]
  %.010.i.i.i.i = phi ptr [ %i.dm, %bb.ad ], [ %.0.i.i.i.i, %bb.ac ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.dk, %bb.ad ], [ 0, %bb.ac ]
  %i.do = icmp ugt i8 %i.dn, 5
  br i1 %i.do, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.dq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !214, !noalias !1459
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.ag, %bb.af
  %.pn.i.i.i.i = phi ptr [ %i.dp, %bb.af ], [ %i.dr, %bb.ag ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i8.i.i.i
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

.thread:                                          ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  store i8 0, ptr %7, align 8, !tbaa !110
  %i.ds = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.ds, align 8, !tbaa !133
  %i.dt = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 1, ptr %i.dt, align 8, !tbaa !135
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.du = sext i8 %i.av to i64
  %i.dv = lshr i64 %i.du, 1                       ; 3 uses
  store i64 %i.dv, ptr %i.as, align 8, !tbaa !150, !alias.scope !1459
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 1
  %spec.select.i.i.i = select i1 %i.aw, ptr null, ptr %i.dw
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.ah
  %.sink.i.i.i.sink = phi i64 [ %i.dv, %bb.ah ], [ %i.dh, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.ct, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 5 uses
  %.sroa.3.0.i.sink.i.i.i.sink = phi ptr [ %spec.select.i.i.i, %bb.ah ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 3 uses
  %i.dx = phi i64 [ 0, %bb.ah ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.cu, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 3 uses
  %.pr = phi i64 [ %i.dv, %bb.ah ], [ %i.az, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %.pr.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 3 uses
  store i64 %.sink.i.i.i.sink, ptr %6, align 8, !tbaa !77, !alias.scope !1459
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.sroa.3.0.i.sink.i.i.i.sink, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !140, !alias.scope !1459
  %i.dy = icmp ne i64 %.pr, 0                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.dz = zext i1 %i.dy to i8
  store i8 %i.dz, ptr %7, align 8, !tbaa !110
  %i.ea = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr null, ptr %i.ea, align 8, !tbaa !133
  %i.eb = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i8 1, ptr %i.eb, align 8, !tbaa !135
  br i1 %i.dy, label %bb.au, label %bb.aj

bb.ai:                                            ; preds = %_ZN7testing7MessageD2Ev.exit101, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit101 ], [ %i.u, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.ey

bb.aj:                                            ; preds = %.thread, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i
  %i.ec = phi ptr [ %i.ds, %.thread ], [ %i.ea, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.ak unwind label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.378, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.ed = load ptr, ptr %11, align 8, !tbaa !74
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !76
  store i64 %i.ef, ptr %10, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.ed, ptr %i.eg, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 2, i64 63, ptr nonnull @.str.1, i32 noundef 2355, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %10)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.an unwind label %bb.as

bb.an:                                            ; preds = %bb.am
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #38
  %i.eh = load ptr, ptr %11, align 8, !tbaa !74   ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ej = icmp eq ptr %i.eh, %i.ei
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.an
  %i.ek = load i64, ptr %i.ei, align 8, !tbaa !78
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.eh, i64 noundef %i.el) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
end_hunk_3
begin_hunk_4_@_ZN41CordTest_CordChunkIteratorOperations_Test8TestBodyEv:bb.a
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #38
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.cy ], [ %.pn34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.aj, %bb.ae
  %.pn49.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn, %bb.cz ], [ %.pn.pn, %bb.aj ], [ %i.bi, %bb.ae ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #38
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.ad
  %.pn49.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn, %bb.da ], [ %i.bh, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.ac
  %.pn49.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn, %bb.db ], [ %i.bg, %bb.ac ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #38
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.ab
  %.pn49.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn.pn, %bb.dc ], [ %i.bf, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.aa
  %.pn49.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn49.pn.pn.pn.pn.pn.pn, %bb.dd ], [ %i.be, %bb.aa ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  resume { ptr, i32 } %.pn49.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL19VerifyChunkIteratorRKN4absl12lts_202605264CordEm(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %3 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 9 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 9 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %10 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %11 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 9 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %12 = alloca %"class.testing::Message", align 8 ; 7 uses
  %13 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %15 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 9 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.j = alloca i64, align 8                      ; 10 uses
  %19 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 24 uses
  %20 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 28 uses
  %i.k = alloca i64, align 8                      ; 7 uses
  %21 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %22 = alloca %"class.testing::Message", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %24 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %25 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %30 = alloca %"class.testing::Message", align 8 ; 7 uses
  %31 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %32 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.std::basic_string_view", align 8 ; 11 uses
  %36 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %37 = alloca %"class.testing::Message", align 8 ; 7 uses
  %38 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %39 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %41 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %45 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %46 = alloca %"class.testing::Message", align 8 ; 7 uses
  %47 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.n = alloca i32, align 4                      ; 6 uses
  %48 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 11 uses
  %49 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.o = alloca i32, align 4                      ; 7 uses
  %50 = alloca %"class.testing::Message", align 8 ; 7 uses
  %51 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %52 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %53 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %54 = alloca %"class.testing::Message", align 8 ; 7 uses
  %55 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %56 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %57 = alloca %"class.testing::Message", align 8 ; 7 uses
  %58 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.p = alloca i64, align 8                      ; 5 uses
  %60 = alloca %"class.testing::Message", align 8 ; 7 uses
  %61 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %62 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %63 = alloca %"class.testing::Message", align 8 ; 7 uses
  %64 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %65 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %66 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %67 = alloca %"struct.testing::internal::AssertionResultExpectation", align 8 ; 8 uses
  %68 = alloca %"class.testing::Message", align 8 ; 7 uses
  %69 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %70 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1513)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %3, i8 0, i64 24, i1 false), !alias.scope !1513
  %i.u = load i8, ptr %0, align 8, !tbaa !78, !noalias !1513 ; 3 uses
  %i.v = trunc i8 %i.u to i1                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1513 ; 6 uses
  %.not8.i.i = icmp ne ptr %i.x, null
  %.not.not.i.i = select i1 %i.v, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.y = load i64, ptr %i.x, align 8, !tbaa !129, !noalias !1513 ; 2 uses
  store i64 %i.y, ptr %i.r, align 8, !tbaa !150, !alias.scope !1513
  %.not7.i.i = icmp eq i64 %i.y, 0
  br i1 %.not7.i.i, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit, label %bb.c, !prof !90

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !122, !noalias !1513 ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 2
  br i1 %i.ab, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !90

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !206, !noalias !1513 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !122, !noalias !1513
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.ae = phi i8 [ %.pre.i.i.i, %bb.d ], [ %i.aa, %bb.c ]
  %.0.i.i.i.i = phi ptr [ %i.ad, %bb.d ], [ %i.x, %bb.c ] ; 7 uses
  %i.af = icmp eq i8 %i.ae, 3
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !78, !noalias !1513 ; 4 uses
  %i.ai = zext i8 %i.ah to i32
  store i32 %i.ai, ptr %i.t, align 8, !tbaa !151, !alias.scope !1513
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !1513 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  %i.am = zext i8 %i.ah to i64                    ; 5 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.am
  store ptr %.0.i.i.i.i, ptr %i.an, align 8, !tbaa !212, !alias.scope !1513
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.am
  store i8 %i.ak, ptr %i.ap, align 1, !tbaa !78, !alias.scope !1513
  %.018.i.i.i.i.i.i = zext i8 %i.ak to i64        ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %xtraiter = and i64 %i.am, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.am, -1 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.018.i.i.i.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !152, !noalias !1513 ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.as, ptr %i.at, align 8, !tbaa !212, !alias.scope !1513
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 14
  %i.av = load i8, ptr %i.au, align 1, !noalias !1513 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !78, !alias.scope !1513
  %.0.i.i.i.i.i.i.prol = zext i8 %i.av to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ax = icmp eq i8 %i.ah, 1
  br i1 %i.ax, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.021.i.i.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !152, !noalias !1513 ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !212, !alias.scope !1513
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !1513 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !78, !alias.scope !1513
  %.0.i.i.i.i.i.i = zext i8 %i.bd to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.0.i.i.i.i.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !152, !noalias !1513 ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !212, !alias.scope !1513
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 14
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !1513 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !78, !alias.scope !1513
  %.0.i.i.i.i.i.i.1 = zext i8 %i.bk to i64        ; 2 uses
  %i.bm = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.bm, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.bn = load ptr, ptr %i.al, align 8, !tbaa !212, !alias.scope !1513
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.0.lcssa.i.i.i.i.i.i
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !152, !noalias !1513
  %i.br = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !129, !noalias !1513
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !129, !noalias !1513
  %i.bt = sub i64 %i.br, %i.bs
  store i64 %i.bt, ptr %i.s, align 8, !tbaa !213, !alias.scope !1513
  %.pre.pre = load i64, ptr %i.r, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.q, align 8, !tbaa !215, !alias.scope !1513
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.g:                                             ; preds = %bb.a
  %i.bu = sext i8 %i.u to i64
  %i.bv = lshr i64 %i.bu, 1                       ; 2 uses
  store i64 %i.bv, ptr %i.r, align 8, !tbaa !150, !alias.scope !1513
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit: ; preds = %bb.f, %bb.b, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, %bb.g
  %i.bw = phi i64 [ %i.bv, %bb.g ], [ 0, %bb.b ], [ %.pre.pre, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ], [ 1, %bb.f ]
  %i.bx = icmp eq i64 %i.bw, 0                    ; 2 uses
  %i.by = zext i1 %i.bx to i8
  store i8 %i.by, ptr %i.b, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit
  %i.bz = load i64, ptr %i.x, align 8, !tbaa !129
  br label %_ZNK4absl12lts_202605264Cord5emptyEv.exit

bb.i:                                             ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit
  %i.ca = sext i8 %i.u to i64
  %i.cb = lshr exact i64 %i.ca, 1
  br label %_ZNK4absl12lts_202605264Cord5emptyEv.exit

_ZNK4absl12lts_202605264Cord5emptyEv.exit:        ; preds = %bb.h, %bb.i
  %i.cc = phi i64 [ %i.bz, %bb.h ], [ %i.cb, %bb.i ]
  %i.cd = icmp eq i64 %i.cc, 0                    ; 2 uses
  %i.ce = zext i1 %i.cd to i8
  store i8 %i.ce, ptr %i.c, align 1, !tbaa !92
  %i.cf = xor i1 %i.bx, %i.cd
  br i1 %i.cf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
  br label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.k:                                             ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit
  call void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.873, ptr noundef nonnull @.str.230, ptr noundef nonnull align 1 dereferenceable(1) %i.b, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
  br label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  %i.cg = load i8, ptr %2, align 8, !tbaa !110, !range !111, !noundef !112
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.w, label %bb.l

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ci = load ptr, ptr %4, align 8, !tbaa !115
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_20260526lsERSoRKNS0_4CordE(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZN7testing7MessagelsIN4absl12lts_202605264CordEEERS0_RKT_.exit unwind label %bb.r ; 0 uses

_ZN7testing7MessagelsIN4absl12lts_202605264CordEEERS0_RKT_.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !113 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN7testing7MessagelsIN4absl12lts_202605264CordEEERS0_RKT_.exit
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.n, %_ZN7testing7MessagelsIN4absl12lts_202605264CordEEERS0_RKT_.exit
  %i.co = phi ptr [ %i.cn, %bb.n ], [ @.str.57, %_ZN7testing7MessagelsIN4absl12lts_202605264CordEEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2403, ptr noundef %i.co)
          to label %bb.o unwind label %bb.s

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  %i.cp = load ptr, ptr %4, align 8, !tbaa !115   ; 3 uses
  %.not.i.i169 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i169, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !73
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(128) %i.cp) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %bb.w

bb.q:                                             ; preds = %bb.l
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit172

bb.r:                                             ; preds = %bb.m
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #38
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.t ], [ %i.cv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.u ], [ %i.cu, %bb.r ] ; 2 uses
  %i.cx = load ptr, ptr %4, align 8, !tbaa !115   ; 3 uses
  %.not.i.i170 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i170, label %_ZN7testing7MessageD2Ev.exit172, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171: ; preds = %bb.v
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !73
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(128) %i.cx) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit172

_ZN7testing7MessageD2Ev.exit172:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171, %bb.v, %bb.q
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ct, %bb.q ], [ %.pn.pn, %bb.v ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %bb.mc

bb.w:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !113 ; 4 uses
  %.not.i.i173 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i173, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !74 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16 ; 2 uses
  %i.df = icmp eq ptr %i.dd, %i.de
  br i1 %i.df, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.x
  %i.dg = load i64, ptr %i.de, align 8, !tbaa !78
  %i.dh = add i64 %i.dg, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dh) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.w, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1514)
  %i.di = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.dl = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %7, i8 0, i64 24, i1 false), !alias.scope !1514
  %i.dm = load i8, ptr %0, align 8, !tbaa !78, !noalias !1514 ; 3 uses
  %i.dn = trunc i8 %i.dm to i1                    ; 2 uses
  %i.do = load ptr, ptr %i.w, align 8, !noalias !1514 ; 6 uses
  %.not8.i.i174 = icmp ne ptr %i.do, null
  %.not.not.i.i175 = select i1 %i.dn, i1 %.not8.i.i174, i1 false
  br i1 %.not.not.i.i175, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !129, !noalias !1514 ; 2 uses
  store i64 %i.dp, ptr %i.dj, align 8, !tbaa !150, !alias.scope !1514
  %.not7.i.i178 = icmp eq i64 %i.dp, 0
  br i1 %.not7.i.i178, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit211, label %bb.z, !prof !90

bb.z:                                             ; preds = %bb.y
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 12
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !122, !noalias !1514 ; 2 uses
  %i.ds = icmp eq i8 %i.dr, 2
  br i1 %i.ds, label %bb.aa, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i179, !prof !90

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !206, !noalias !1514 ; 2 uses
  %.phi.trans.insert.i.i.i209 = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  %.pre.i.i.i210 = load i8, ptr %.phi.trans.insert.i.i.i209, align 4, !tbaa !122, !noalias !1514
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i179

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i179: ; preds = %bb.aa, %bb.z
  %i.dv = phi i8 [ %.pre.i.i.i210, %bb.aa ], [ %i.dr, %bb.z ]
  %.0.i.i.i.i180 = phi ptr [ %i.du, %bb.aa ], [ %i.do, %bb.z ] ; 7 uses
  %i.dw = icmp eq i8 %i.dv, 3
  br i1 %i.dw, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i179
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i180, i64 13
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !78, !noalias !1514 ; 4 uses
  %i.dz = zext i8 %i.dy to i32
  store i32 %i.dz, ptr %i.dl, align 8, !tbaa !151, !alias.scope !1514
  %i.ea = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i180, i64 14
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !1514 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 5 uses
  %i.ed = zext i8 %i.dy to i64                    ; 5 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %i.ed
  store ptr %.0.i.i.i.i180, ptr %i.ee, align 8, !tbaa !212, !alias.scope !1514
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 44 ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ed
  store i8 %i.eb, ptr %i.eg, align 1, !tbaa !78, !alias.scope !1514
  %.018.i.i.i.i.i.i192 = zext i8 %i.eb to i64     ; 3 uses
  %.not.i.i.i.i.i.i193 = icmp eq i8 %i.dy, 0
  br i1 %.not.i.i.i.i.i.i193, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i200, label %.lr.ph.i.i.i.i.i.i194.preheader

.lr.ph.i.i.i.i.i.i194.preheader:                  ; preds = %bb.ab
  %xtraiter1104 = and i64 %i.ed, 1
  %lcmp.mod1105.not = icmp eq i64 %xtraiter1104, 0
  br i1 %lcmp.mod1105.not, label %.lr.ph.i.i.i.i.i.i194.prol.loopexit, label %.lr.ph.i.i.i.i.i.i194.prol

.lr.ph.i.i.i.i.i.i194.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i194.preheader
  %indvars.iv.next.i.i.i.i.i.i198.prol = add nsw i64 %i.ed, -1 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i180, i64 16
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %.018.i.i.i.i.i.i192
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !152, !noalias !1514 ; 3 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.next.i.i.i.i.i.i198.prol
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !212, !alias.scope !1514
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 14
  %i.em = load i8, ptr %i.el, align 1, !noalias !1514 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv.next.i.i.i.i.i.i198.prol
  store i8 %i.em, ptr %i.en, align 1, !tbaa !78, !alias.scope !1514
  %.0.i.i.i.i.i.i199.prol = zext i8 %i.em to i64  ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i194.prol.loopexit

.lr.ph.i.i.i.i.i.i194.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i194.prol, %.lr.ph.i.i.i.i.i.i194.preheader
  %indvars.iv.i.i.i.i.i.i195.unr = phi i64 [ %i.ed, %.lr.ph.i.i.i.i.i.i194.preheader ], [ %indvars.iv.next.i.i.i.i.i.i198.prol, %.lr.ph.i.i.i.i.i.i194.prol ]
  %.021.i.i.i.i.i.i196.unr = phi i64 [ %.018.i.i.i.i.i.i192, %.lr.ph.i.i.i.i.i.i194.preheader ], [ %.0.i.i.i.i.i.i199.prol, %.lr.ph.i.i.i.i.i.i194.prol ]
  %.01619.i.i.i.i.i.i197.unr = phi ptr [ %.0.i.i.i.i180, %.lr.ph.i.i.i.i.i.i194.preheader ], [ %i.ej, %.lr.ph.i.i.i.i.i.i194.prol ]
  %.0.i.i.i.i.i.i199.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i194.preheader ], [ %.0.i.i.i.i.i.i199.prol, %.lr.ph.i.i.i.i.i.i194.prol ]
  %i.eo = icmp eq i8 %i.dy, 1
  br i1 %i.eo, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i200, label %.lr.ph.i.i.i.i.i.i194

.lr.ph.i.i.i.i.i.i194:                            ; preds = %.lr.ph.i.i.i.i.i.i194.prol.loopexit, %.lr.ph.i.i.i.i.i.i194
  %indvars.iv.i.i.i.i.i.i195 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i198.1, %.lr.ph.i.i.i.i.i.i194 ], [ %indvars.iv.i.i.i.i.i.i195.unr, %.lr.ph.i.i.i.i.i.i194.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i196 = phi i64 [ %.0.i.i.i.i.i.i199.1, %.lr.ph.i.i.i.i.i.i194 ], [ %.021.i.i.i.i.i.i196.unr, %.lr.ph.i.i.i.i.i.i194.prol.loopexit ]
  %.01619.i.i.i.i.i.i197 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i.i194 ], [ %.01619.i.i.i.i.i.i197.unr, %.lr.ph.i.i.i.i.i.i194.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i198 = add nsw i64 %indvars.iv.i.i.i.i.i.i195, -1 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i197, i64 16
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.021.i.i.i.i.i.i196
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !152, !noalias !1514 ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.next.i.i.i.i.i.i198
  store ptr %i.er, ptr %i.es, align 8, !tbaa !212, !alias.scope !1514
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 14
  %i.eu = load i8, ptr %i.et, align 1, !noalias !1514 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv.next.i.i.i.i.i.i198
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !78, !alias.scope !1514
  %.0.i.i.i.i.i.i199 = zext i8 %i.eu to i64
  %indvars.iv.next.i.i.i.i.i.i198.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i195, -2 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %.0.i.i.i.i.i.i199
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !152, !noalias !1514 ; 3 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %indvars.iv.next.i.i.i.i.i.i198.1
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !212, !alias.scope !1514
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 14
  %i.fb = load i8, ptr %i.fa, align 1, !noalias !1514 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv.next.i.i.i.i.i.i198.1
  store i8 %i.fb, ptr %i.fc, align 1, !tbaa !78, !alias.scope !1514
  %.0.i.i.i.i.i.i199.1 = zext i8 %i.fb to i64     ; 2 uses
  %i.fd = icmp sgt i64 %indvars.iv.i.i.i.i.i.i195, 2
  br i1 %i.fd, label %.lr.ph.i.i.i.i.i.i194, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i200, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i200: ; preds = %.lr.ph.i.i.i.i.i.i194.prol.loopexit, %.lr.ph.i.i.i.i.i.i194, %bb.ab
  %.0.lcssa.i.i.i.i.i.i201 = phi i64 [ %.018.i.i.i.i.i.i192, %bb.ab ], [ %.0.i.i.i.i.i.i199.lcssa.unr, %.lr.ph.i.i.i.i.i.i194.prol.loopexit ], [ %.0.i.i.i.i.i.i199.1, %.lr.ph.i.i.i.i.i.i194 ]
  %i.fe = load ptr, ptr %i.ec, align 8, !tbaa !212, !alias.scope !1514
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.0.lcssa.i.i.i.i.i.i201
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !152, !noalias !1514
  %i.fi = load i64, ptr %.0.i.i.i.i180, align 8, !tbaa !129, !noalias !1514
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !129, !noalias !1514
  %i.fk = sub i64 %i.fi, %i.fj
  store i64 %i.fk, ptr %i.dk, align 8, !tbaa !213, !alias.scope !1514
  %.pre879.pre = load i64, ptr %i.dj, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit211

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i179
  store ptr %.0.i.i.i.i180, ptr %i.di, align 8, !tbaa !215, !alias.scope !1514
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit211

bb.ad:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.fl = sext i8 %i.dm to i64
  %i.fm = lshr i64 %i.fl, 1                       ; 2 uses
  store i64 %i.fm, ptr %i.dj, align 8, !tbaa !150, !alias.scope !1514
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit211

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit211: ; preds = %bb.ac, %bb.y, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i200, %bb.ad
  %i.fn = phi i64 [ %i.fm, %bb.ad ], [ 0, %bb.y ], [ %.pre879.pre, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i200 ], [ 1, %bb.ac ]
  %i.fo = icmp ne i64 %i.fn, 0                    ; 2 uses
  %i.fp = zext i1 %i.fo to i8
  store i8 %i.fp, ptr %i.d, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #38
  br i1 %i.dn, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit211
  %i.fq = load i64, ptr %i.do, align 8, !tbaa !129
  br label %_ZNK4absl12lts_202605264Cord5emptyEv.exit212

bb.af:                                            ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit211
  %i.fr = sext i8 %i.dm to i64
  %i.fs = lshr exact i64 %i.fr, 1
  br label %_ZNK4absl12lts_202605264Cord5emptyEv.exit212

_ZNK4absl12lts_202605264Cord5emptyEv.exit212:     ; preds = %bb.ae, %bb.af
  %i.ft = phi i64 [ %i.fq, %bb.ae ], [ %i.fs, %bb.af ]
  %i.fu = icmp ne i64 %i.ft, 0                    ; 2 uses
  %i.fv = zext i1 %i.fu to i8
  store i8 %i.fv, ptr %i.e, align 1, !tbaa !92
  %i.fw = xor i1 %i.fo, %i.fu
  br i1 %i.fw, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit212
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6)
  br label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit213

bb.ah:                                            ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit212
  call void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %6, ptr noundef nonnull @.str.874, ptr noundef nonnull @.str.875, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 1 dereferenceable(1) %i.e)
  br label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit213

_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit213: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #38
  %i.fx = load i8, ptr %6, align 8, !tbaa !110, !range !111, !noundef !112
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %bb.ar, label %bb.ai

bb.ai:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit213
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.aj unwind label %bb.an

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !113 ; 2 uses
  %.not.i.i214 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i214, label %_ZNK7testing15AssertionResult15failure_messageEv.exit215, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit215

_ZNK7testing15AssertionResult15failure_messageEv.exit215: ; preds = %bb.ak, %bb.aj
  %i.gc = phi ptr [ %i.gb, %bb.ak ], [ @.str.57, %bb.aj ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %9, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2404, ptr noundef %i.gc)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit215
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.am unwind label %bb.ap

bb.am:                                            ; preds = %bb.al
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.gd = load ptr, ptr %8, align 8, !tbaa !115   ; 3 uses
  %.not.i.i216 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i216, label %_ZN7testing7MessageD2Ev.exit218, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i217

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i217: ; preds = %bb.am
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !73
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(128) %i.gd) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit218

_ZN7testing7MessageD2Ev.exit218:                  ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i217
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br label %bb.ar

bb.an:                                            ; preds = %bb.ai
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit221

bb.ao:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit215
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.gj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %9) #38
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pn87 = phi { ptr, i32 } [ %i.gj, %bb.ap ], [ %i.gi, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  %i.gk = load ptr, ptr %8, align 8, !tbaa !115   ; 3 uses
  %.not.i.i219 = icmp eq ptr %i.gk, null
  br i1 %.not.i.i219, label %_ZN7testing7MessageD2Ev.exit221, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220: ; preds = %bb.aq
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !73
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8
  call void %i.gn(ptr noundef nonnull align 8 dereferenceable(128) %i.gk) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit221

_ZN7testing7MessageD2Ev.exit221:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220, %bb.aq, %bb.an
  %.pn87.pn = phi { ptr, i32 } [ %i.gh, %bb.an ], [ %.pn87, %bb.aq ], [ %.pn87, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i220 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.mc

bb.ar:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit213, %_ZN7testing7MessageD2Ev.exit218
  %i.go = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !113 ; 4 uses
  %.not.i.i222 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i222, label %_ZN7testing15AssertionResultD2Ev.exit226, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !74 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223: ; preds = %bb.as
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !78
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224: ; preds = %bb.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i223
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit226

_ZN7testing15AssertionResultD2Ev.exit226:         ; preds = %bb.ar, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i224
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1515)
  call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  %i.gv = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gw = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %11, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %11, i8 0, i64 24, i1 false), !alias.scope !1517
  %i.gz = load i8, ptr %0, align 8, !tbaa !78, !noalias !1517 ; 3 uses
  %i.ha = trunc i8 %i.gz to i1                    ; 2 uses
  %i.hb = load ptr, ptr %i.w, align 8, !noalias !1517 ; 6 uses
  %.not8.i.i.i = icmp ne ptr %i.hb, null
  %.not.not.i.i.i = select i1 %i.ha, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.at, label %bb.ay

bb.at:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit226
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !129, !noalias !1517 ; 2 uses
  store i64 %i.hc, ptr %i.gw, align 8, !tbaa !150, !alias.scope !1517
  %.not7.i.i.i = icmp eq i64 %i.hc, 0
  br i1 %.not7.i.i.i, label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit, label %bb.au, !prof !90

bb.au:                                            ; preds = %bb.at
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 12
  %i.he = load i8, ptr %i.hd, align 4, !tbaa !122, !noalias !1517 ; 2 uses
  %i.hf = icmp eq i8 %i.he, 2
  br i1 %i.hf, label %bb.av, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !90

bb.av:                                            ; preds = %bb.au
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !206, !noalias !1517 ; 2 uses
  %.phi.trans.insert.i.i.i.i235 = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %.pre.i.i.i.i236 = load i8, ptr %.phi.trans.insert.i.i.i.i235, align 4, !tbaa !122, !noalias !1517
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.av, %bb.au
  %i.hi = phi i8 [ %.pre.i.i.i.i236, %bb.av ], [ %i.he, %bb.au ]
  %.0.i.i.i.i.i228 = phi ptr [ %i.hh, %bb.av ], [ %i.hb, %bb.au ] ; 7 uses
  %i.hj = icmp eq i8 %i.hi, 3
  br i1 %i.hj, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i228, i64 13
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !78, !noalias !1517 ; 4 uses
  %i.hm = zext i8 %i.hl to i32
  store i32 %i.hm, ptr %i.gy, align 8, !tbaa !151, !alias.scope !1517
  %i.hn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i228, i64 14
  %i.ho = load i8, ptr %i.hn, align 1, !noalias !1517 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %11, i64 56 ; 5 uses
  %i.hq = zext i8 %i.hl to i64                    ; 5 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hq
  store ptr %.0.i.i.i.i.i228, ptr %i.hr, align 8, !tbaa !212, !alias.scope !1517
  %i.hs = getelementptr inbounds nuw i8, ptr %11, i64 44 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hq
  store i8 %i.ho, ptr %i.ht, align 1, !tbaa !78, !alias.scope !1517
  %.018.i.i.i.i.i.i.i = zext i8 %i.ho to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.aw
  %xtraiter1106 = and i64 %i.hq, 1
  %lcmp.mod1107.not = icmp eq i64 %xtraiter1106, 0
  br i1 %lcmp.mod1107.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.hq, -1 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i228, i64 16
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.hu, i64 %.018.i.i.i.i.i.i.i
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !152, !noalias !1517 ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.hw, ptr %i.hx, align 8, !tbaa !212, !alias.scope !1517
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hw, i64 14
  %i.hz = load i8, ptr %i.hy, align 1, !noalias !1517 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hs, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !78, !alias.scope !1517
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.hz to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.hq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i228, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.hw, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ib = icmp eq i8 %i.hl, 1
  br i1 %i.ib, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.il, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %.021.i.i.i.i.i.i.i
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !152, !noalias !1517 ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.ie, ptr %i.if, align 8, !tbaa !212, !alias.scope !1517
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 14
  %i.ih = load i8, ptr %i.ig, align 1, !noalias !1517 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hs, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !78, !alias.scope !1517
  %.0.i.i.i.i.i.i.i = zext i8 %i.ih to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.ij, i64 %.0.i.i.i.i.i.i.i
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !152, !noalias !1517 ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.il, ptr %i.im, align 8, !tbaa !212, !alias.scope !1517
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 14
  %i.io = load i8, ptr %i.in, align 1, !noalias !1517 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hs, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !78, !alias.scope !1517
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.io to i64      ; 2 uses
  %i.iq = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.iq, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.aw
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.aw ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ir = load ptr, ptr %i.hp, align 8, !tbaa !212, !alias.scope !1517
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !152, !noalias !1517
  %i.iv = load i64, ptr %.0.i.i.i.i.i228, align 8, !tbaa !129, !noalias !1517
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !129, !noalias !1517
  %i.ix = sub i64 %i.iv, %i.iw
  store i64 %i.ix, ptr %i.gx, align 8, !tbaa !213, !alias.scope !1517
  %.pre880.pre = load i64, ptr %i.gw, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.ax:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  store ptr %.0.i.i.i.i.i228, ptr %i.gv, align 8, !tbaa !215, !alias.scope !1517
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.ay:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit226
  %i.iy = sext i8 %i.gz to i64
  %i.iz = lshr i64 %i.iy, 1                       ; 2 uses
  store i64 %i.iz, ptr %i.gw, align 8, !tbaa !150, !alias.scope !1517
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %bb.ax, %bb.at, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, %bb.ay
  %i.ja = phi i64 [ %i.iz, %bb.ay ], [ 0, %bb.at ], [ %.pre880.pre, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ], [ 1, %bb.ax ]
  %i.jb = icmp eq i64 %i.ja, 0                    ; 2 uses
  %i.jc = zext i1 %i.jb to i8
  store i8 %i.jc, ptr %i.f, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #38
  br i1 %i.ha, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %i.jd = load i64, ptr %i.hb, align 8, !tbaa !129
  br label %_ZNK4absl12lts_202605264Cord5emptyEv.exit237

bb.ba:                                            ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %i.je = sext i8 %i.gz to i64
  %i.jf = lshr exact i64 %i.je, 1
  br label %_ZNK4absl12lts_202605264Cord5emptyEv.exit237

_ZNK4absl12lts_202605264Cord5emptyEv.exit237:     ; preds = %bb.az, %bb.ba
  %i.jg = phi i64 [ %i.jd, %bb.az ], [ %i.jf, %bb.ba ]
  %i.jh = icmp eq i64 %i.jg, 0                    ; 2 uses
  %i.ji = zext i1 %i.jh to i8
  store i8 %i.ji, ptr %i.g, align 1, !tbaa !92
  %i.jj = xor i1 %i.jb, %i.jh
  br i1 %i.jj, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit237
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10)
  br label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit238

bb.bc:                                            ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit237
  call void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %10, ptr noundef nonnull @.str.876, ptr noundef nonnull @.str.230, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.g)
  br label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit238

_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit238: ; preds = %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  %i.jk = load i8, ptr %10, align 8, !tbaa !110, !range !111, !noundef !112
  %i.jl = trunc nuw i8 %i.jk to i1
  br i1 %i.jl, label %bb.bm, label %bb.bd

bb.bd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit238
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.be unwind label %bb.bi

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38
  %i.jm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !113 ; 2 uses
  %.not.i.i239 = icmp eq ptr %i.jn, null
  br i1 %.not.i.i239, label %_ZNK7testing15AssertionResult15failure_messageEv.exit240, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit240

_ZNK7testing15AssertionResult15failure_messageEv.exit240: ; preds = %bb.bf, %bb.be
  %i.jp = phi ptr [ %i.jo, %bb.bf ], [ @.str.57, %bb.be ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %13, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2407, ptr noundef %i.jp)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit240
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %bb.bh unwind label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  %i.jq = load ptr, ptr %12, align 8, !tbaa !115  ; 3 uses
  %.not.i.i241 = icmp eq ptr %i.jq, null
  br i1 %.not.i.i241, label %_ZN7testing7MessageD2Ev.exit243, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242: ; preds = %bb.bh
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !73
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(128) %i.jq) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit243

_ZN7testing7MessageD2Ev.exit243:                  ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  br label %bb.bm

bb.bi:                                            ; preds = %bb.bd
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit246

bb.bj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit240
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bg
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %13) #38
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.pn90 = phi { ptr, i32 } [ %i.jw, %bb.bk ], [ %i.jv, %bb.bj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  %i.jx = load ptr, ptr %12, align 8, !tbaa !115  ; 3 uses
  %.not.i.i244 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i244, label %_ZN7testing7MessageD2Ev.exit246, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245: ; preds = %bb.bl
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !73
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(128) %i.jx) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit246

_ZN7testing7MessageD2Ev.exit246:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245, %bb.bl, %bb.bi
  %.pn90.pn = phi { ptr, i32 } [ %i.ju, %bb.bi ], [ %.pn90, %bb.bl ], [ %.pn90, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i245 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %bb.mc

bb.bm:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit238, %_ZN7testing7MessageD2Ev.exit243
  %i.kb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !113 ; 4 uses
  %.not.i.i247 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i247, label %_ZN7testing15AssertionResultD2Ev.exit251, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !74 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kc, i64 16 ; 2 uses
  %i.kf = icmp eq ptr %i.kd, %i.ke
  br i1 %i.kf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i248: ; preds = %bb.bn
  %i.kg = load i64, ptr %i.ke, align 8, !tbaa !78
  %i.kh = add i64 %i.kg, 1
  call void @_ZdlPvm(ptr noundef %i.kd, i64 noundef %i.kh) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i248
  call void @_ZdlPvm(ptr noundef nonnull %i.kc, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit251

_ZN7testing15AssertionResultD2Ev.exit251:         ; preds = %bb.bm, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i249
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.ki = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.kj = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.kl = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %15, i8 0, i64 24, i1 false), !alias.scope !1520
  %i.km = load i8, ptr %0, align 8, !tbaa !78, !noalias !1520 ; 3 uses
  %i.kn = trunc i8 %i.km to i1                    ; 2 uses
  %i.ko = load ptr, ptr %i.w, align 8, !noalias !1520 ; 6 uses
  %.not8.i.i.i252 = icmp ne ptr %i.ko, null
  %.not.not.i.i.i253 = select i1 %i.kn, i1 %.not8.i.i.i252, i1 false
  br i1 %.not.not.i.i.i253, label %bb.bo, label %bb.bt

bb.bo:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit251
  %i.kp = load i64, ptr %i.ko, align 8, !tbaa !129, !noalias !1520 ; 2 uses
  store i64 %i.kp, ptr %i.kj, align 8, !tbaa !150, !alias.scope !1520
  %.not7.i.i.i256 = icmp eq i64 %i.kp, 0
  br i1 %.not7.i.i.i256, label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit289, label %bb.bp, !prof !90

bb.bp:                                            ; preds = %bb.bo
  %i.kq = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  %i.kr = load i8, ptr %i.kq, align 4, !tbaa !122, !noalias !1520 ; 2 uses
  %i.ks = icmp eq i8 %i.kr, 2
  br i1 %i.ks, label %bb.bq, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i257, !prof !90

bb.bq:                                            ; preds = %bb.bp
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !206, !noalias !1520 ; 2 uses
  %.phi.trans.insert.i.i.i.i287 = getelementptr inbounds nuw i8, ptr %i.ku, i64 12
  %.pre.i.i.i.i288 = load i8, ptr %.phi.trans.insert.i.i.i.i287, align 4, !tbaa !122, !noalias !1520
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i257

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i257: ; preds = %bb.bq, %bb.bp
  %i.kv = phi i8 [ %.pre.i.i.i.i288, %bb.bq ], [ %i.kr, %bb.bp ]
  %.0.i.i.i.i.i258 = phi ptr [ %i.ku, %bb.bq ], [ %i.ko, %bb.bp ] ; 7 uses
  %i.kw = icmp eq i8 %i.kv, 3
  br i1 %i.kw, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i257
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i258, i64 13
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !78, !noalias !1520 ; 4 uses
  %i.kz = zext i8 %i.ky to i32
  store i32 %i.kz, ptr %i.kl, align 8, !tbaa !151, !alias.scope !1520
  %i.la = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i258, i64 14
  %i.lb = load i8, ptr %i.la, align 1, !noalias !1520 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %15, i64 56 ; 5 uses
  %i.ld = zext i8 %i.ky to i64                    ; 5 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.ld
  store ptr %.0.i.i.i.i.i258, ptr %i.le, align 8, !tbaa !212, !alias.scope !1520
  %i.lf = getelementptr inbounds nuw i8, ptr %15, i64 44 ; 4 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 %i.ld
  store i8 %i.lb, ptr %i.lg, align 1, !tbaa !78, !alias.scope !1520
  %.018.i.i.i.i.i.i.i270 = zext i8 %i.lb to i64   ; 3 uses
  %.not.i.i.i.i.i.i.i271 = icmp eq i8 %i.ky, 0
  br i1 %.not.i.i.i.i.i.i.i271, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i278, label %.lr.ph.i.i.i.i.i.i.i272.preheader

.lr.ph.i.i.i.i.i.i.i272.preheader:                ; preds = %bb.br
  %xtraiter1108 = and i64 %i.ld, 1
  %lcmp.mod1109.not = icmp eq i64 %xtraiter1108, 0
  br i1 %lcmp.mod1109.not, label %.lr.ph.i.i.i.i.i.i.i272.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i272.prol

.lr.ph.i.i.i.i.i.i.i272.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i272.preheader
  %indvars.iv.next.i.i.i.i.i.i.i276.prol = add nsw i64 %i.ld, -1 ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i258, i64 16
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %i.lh, i64 %.018.i.i.i.i.i.i.i270
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !152, !noalias !1520 ; 3 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv.next.i.i.i.i.i.i.i276.prol
  store ptr %i.lj, ptr %i.lk, align 8, !tbaa !212, !alias.scope !1520
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 14
  %i.lm = load i8, ptr %i.ll, align 1, !noalias !1520 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv.next.i.i.i.i.i.i.i276.prol
  store i8 %i.lm, ptr %i.ln, align 1, !tbaa !78, !alias.scope !1520
  %.0.i.i.i.i.i.i.i277.prol = zext i8 %i.lm to i64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i272.prol.loopexit

.lr.ph.i.i.i.i.i.i.i272.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i272.prol, %.lr.ph.i.i.i.i.i.i.i272.preheader
  %indvars.iv.i.i.i.i.i.i.i273.unr = phi i64 [ %i.ld, %.lr.ph.i.i.i.i.i.i.i272.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i276.prol, %.lr.ph.i.i.i.i.i.i.i272.prol ]
  %.021.i.i.i.i.i.i.i274.unr = phi i64 [ %.018.i.i.i.i.i.i.i270, %.lr.ph.i.i.i.i.i.i.i272.preheader ], [ %.0.i.i.i.i.i.i.i277.prol, %.lr.ph.i.i.i.i.i.i.i272.prol ]
  %.01619.i.i.i.i.i.i.i275.unr = phi ptr [ %.0.i.i.i.i.i258, %.lr.ph.i.i.i.i.i.i.i272.preheader ], [ %i.lj, %.lr.ph.i.i.i.i.i.i.i272.prol ]
  %.0.i.i.i.i.i.i.i277.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i272.preheader ], [ %.0.i.i.i.i.i.i.i277.prol, %.lr.ph.i.i.i.i.i.i.i272.prol ]
  %i.lo = icmp eq i8 %i.ky, 1
  br i1 %i.lo, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i278, label %.lr.ph.i.i.i.i.i.i.i272

.lr.ph.i.i.i.i.i.i.i272:                          ; preds = %.lr.ph.i.i.i.i.i.i.i272.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i272
  %indvars.iv.i.i.i.i.i.i.i273 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i276.1, %.lr.ph.i.i.i.i.i.i.i272 ], [ %indvars.iv.i.i.i.i.i.i.i273.unr, %.lr.ph.i.i.i.i.i.i.i272.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i274 = phi i64 [ %.0.i.i.i.i.i.i.i277.1, %.lr.ph.i.i.i.i.i.i.i272 ], [ %.021.i.i.i.i.i.i.i274.unr, %.lr.ph.i.i.i.i.i.i.i272.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i275 = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i.i.i272 ], [ %.01619.i.i.i.i.i.i.i275.unr, %.lr.ph.i.i.i.i.i.i.i272.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i276 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i273, -1 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i275, i64 16
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %.021.i.i.i.i.i.i.i274
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !152, !noalias !1520 ; 3 uses
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv.next.i.i.i.i.i.i.i276
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !212, !alias.scope !1520
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 14
  %i.lu = load i8, ptr %i.lt, align 1, !noalias !1520 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv.next.i.i.i.i.i.i.i276
  store i8 %i.lu, ptr %i.lv, align 1, !tbaa !78, !alias.scope !1520
  %.0.i.i.i.i.i.i.i277 = zext i8 %i.lu to i64
  %indvars.iv.next.i.i.i.i.i.i.i276.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i273, -2 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lr, i64 16
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %.0.i.i.i.i.i.i.i277
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !152, !noalias !1520 ; 3 uses
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %indvars.iv.next.i.i.i.i.i.i.i276.1
  store ptr %i.ly, ptr %i.lz, align 8, !tbaa !212, !alias.scope !1520
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ly, i64 14
  %i.mb = load i8, ptr %i.ma, align 1, !noalias !1520 ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lf, i64 %indvars.iv.next.i.i.i.i.i.i.i276.1
  store i8 %i.mb, ptr %i.mc, align 1, !tbaa !78, !alias.scope !1520
  %.0.i.i.i.i.i.i.i277.1 = zext i8 %i.mb to i64   ; 2 uses
  %i.md = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i273, 2
  br i1 %i.md, label %.lr.ph.i.i.i.i.i.i.i272, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i278, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i278: ; preds = %.lr.ph.i.i.i.i.i.i.i272.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i272, %bb.br
  %.0.lcssa.i.i.i.i.i.i.i279 = phi i64 [ %.018.i.i.i.i.i.i.i270, %bb.br ], [ %.0.i.i.i.i.i.i.i277.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i272.prol.loopexit ], [ %.0.i.i.i.i.i.i.i277.1, %.lr.ph.i.i.i.i.i.i.i272 ]
  %i.me = load ptr, ptr %i.lc, align 8, !tbaa !212, !alias.scope !1520
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 16
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.mf, i64 %.0.lcssa.i.i.i.i.i.i.i279
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !152, !noalias !1520
  %i.mi = load i64, ptr %.0.i.i.i.i.i258, align 8, !tbaa !129, !noalias !1520
  %i.mj = load i64, ptr %i.mh, align 8, !tbaa !129, !noalias !1520
  %i.mk = sub i64 %i.mi, %i.mj
  store i64 %i.mk, ptr %i.kk, align 8, !tbaa !213, !alias.scope !1520
  %.pre881.pre = load i64, ptr %i.kj, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit289

bb.bs:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i257
  store ptr %.0.i.i.i.i.i258, ptr %i.ki, align 8, !tbaa !215, !alias.scope !1520
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit289

bb.bt:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit251
  %i.ml = sext i8 %i.km to i64
  %i.mm = lshr i64 %i.ml, 1                       ; 2 uses
  store i64 %i.mm, ptr %i.kj, align 8, !tbaa !150, !alias.scope !1520
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit289

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit289: ; preds = %bb.bs, %bb.bo, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i278, %bb.bt
  %i.mn = phi i64 [ %i.mm, %bb.bt ], [ 0, %bb.bo ], [ %.pre881.pre, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i278 ], [ 1, %bb.bs ]
  %i.mo = icmp ne i64 %i.mn, 0                    ; 2 uses
  %i.mp = zext i1 %i.mo to i8
  store i8 %i.mp, ptr %i.h, align 1, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #38
  br i1 %i.kn, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit289
  %i.mq = load i64, ptr %i.ko, align 8, !tbaa !129
  br label %_ZNK4absl12lts_202605264Cord5emptyEv.exit290

bb.bv:                                            ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit289
  %i.mr = sext i8 %i.km to i64
  %i.ms = lshr exact i64 %i.mr, 1
  br label %_ZNK4absl12lts_202605264Cord5emptyEv.exit290

_ZNK4absl12lts_202605264Cord5emptyEv.exit290:     ; preds = %bb.bu, %bb.bv
  %i.mt = phi i64 [ %i.mq, %bb.bu ], [ %i.ms, %bb.bv ]
  %i.mu = icmp ne i64 %i.mt, 0                    ; 2 uses
  %i.mv = zext i1 %i.mu to i8
  store i8 %i.mv, ptr %i.i, align 1, !tbaa !92
  %i.mw = xor i1 %i.mo, %i.mu
  br i1 %i.mw, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit290
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14)
  br label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit291

bb.bx:                                            ; preds = %_ZNK4absl12lts_202605264Cord5emptyEv.exit290
  call void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %14, ptr noundef nonnull @.str.877, ptr noundef nonnull @.str.875, ptr noundef nonnull align 1 dereferenceable(1) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.i)
  br label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit291

_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit291: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #38
  %i.mx = load i8, ptr %14, align 8, !tbaa !110, !range !111, !noundef !112
  %i.my = trunc nuw i8 %i.mx to i1
  br i1 %i.my, label %bb.ch, label %bb.by

bb.by:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit291
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.bz unwind label %bb.cd

bb.bz:                                            ; preds = %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #38
  %i.mz = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !113 ; 2 uses
  %.not.i.i292 = icmp eq ptr %i.na, null
  br i1 %.not.i.i292, label %_ZNK7testing15AssertionResult15failure_messageEv.exit293, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit293

_ZNK7testing15AssertionResult15failure_messageEv.exit293: ; preds = %bb.ca, %bb.bz
  %i.nc = phi ptr [ %i.nb, %bb.ca ], [ @.str.57, %bb.bz ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %17, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2408, ptr noundef %i.nc)
          to label %bb.cb unwind label %bb.ce

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit293
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %bb.cc unwind label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  %i.nd = load ptr, ptr %16, align 8, !tbaa !115  ; 3 uses
  %.not.i.i294 = icmp eq ptr %i.nd, null
  br i1 %.not.i.i294, label %_ZN7testing7MessageD2Ev.exit296, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i295

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i295: ; preds = %bb.cc
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !73
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8
  %i.ng = load ptr, ptr %i.nf, align 8
  call void %i.ng(ptr noundef nonnull align 8 dereferenceable(128) %i.nd) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit296

_ZN7testing7MessageD2Ev.exit296:                  ; preds = %bb.cc, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i295
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  br label %bb.ch

bb.cd:                                            ; preds = %bb.by
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit299

bb.ce:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit293
  %i.ni = landingpad { ptr, i32 }
          cleanup
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cb
  %i.nj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #38
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %.pn93 = phi { ptr, i32 } [ %i.nj, %bb.cf ], [ %i.ni, %bb.ce ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  %i.nk = load ptr, ptr %16, align 8, !tbaa !115  ; 3 uses
  %.not.i.i297 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i297, label %_ZN7testing7MessageD2Ev.exit299, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298: ; preds = %bb.cg
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !73
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8
  call void %i.nn(ptr noundef nonnull align 8 dereferenceable(128) %i.nk) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit299

_ZN7testing7MessageD2Ev.exit299:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298, %bb.cg, %bb.cd
  %.pn93.pn = phi { ptr, i32 } [ %i.nh, %bb.cd ], [ %.pn93, %bb.cg ], [ %.pn93, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i298 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %bb.mc

bb.ch:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit291, %_ZN7testing7MessageD2Ev.exit296
  %i.no = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !113 ; 4 uses
  %.not.i.i300 = icmp eq ptr %i.np, null
  br i1 %.not.i.i300, label %_ZN7testing15AssertionResultD2Ev.exit304, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !74 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.np, i64 16 ; 2 uses
  %i.ns = icmp eq ptr %i.nq, %i.nr
  br i1 %i.ns, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301: ; preds = %bb.ci
  %i.nt = load i64, ptr %i.nr, align 8, !tbaa !78
  %i.nu = add i64 %i.nt, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nu) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i301
  call void @_ZdlPvm(ptr noundef nonnull %i.np, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit304

_ZN7testing15AssertionResultD2Ev.exit304:         ; preds = %bb.ch, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i302
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #38
  call void @_ZNK4absl12lts_202605264CordcvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(16) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #38
  store i64 0, ptr %i.j, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.nv = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.nw = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 8 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %19, i8 0, i64 40, i1 false), !alias.scope !1521
  store i32 -1, ptr %i.ny, align 8, !tbaa !151, !alias.scope !1521
  %i.nz = load i8, ptr %0, align 8, !tbaa !78, !noalias !1521 ; 2 uses
  %i.oa = trunc i8 %i.nz to i1                    ; 2 uses
  %i.ob = load ptr, ptr %i.w, align 8, !noalias !1521 ; 9 uses
  %.not8.i.i305 = icmp ne ptr %i.ob, null
  %.not.not.i.i306 = select i1 %i.oa, i1 %.not8.i.i305, i1 false
  br i1 %.not.not.i.i306, label %bb.cj, label %bb.dl

bb.cj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit304
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !129, !noalias !1521 ; 2 uses
  store i64 %i.oc, ptr %i.nw, align 8, !tbaa !150, !alias.scope !1521
  %.not7.i.i309 = icmp eq i64 %i.oc, 0
  br i1 %.not7.i.i309, label %bb.cw, label %bb.ck, !prof !90

bb.ck:                                            ; preds = %bb.cj
  %i.od = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  %i.oe = load i8, ptr %i.od, align 4, !tbaa !122, !noalias !1521 ; 2 uses
  %i.of = icmp eq i8 %i.oe, 2
  br i1 %i.of, label %bb.cl, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i310, !prof !90

bb.cl:                                            ; preds = %bb.ck
  %i.og = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !206, !noalias !1521 ; 2 uses
  %.phi.trans.insert.i.i.i340 = getelementptr inbounds nuw i8, ptr %i.oh, i64 12
  %.pre.i.i.i341 = load i8, ptr %.phi.trans.insert.i.i.i340, align 4, !tbaa !122, !noalias !1521
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i310

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i310: ; preds = %bb.cl, %bb.ck
  %i.oi = phi i8 [ %.pre.i.i.i341, %bb.cl ], [ %i.oe, %bb.ck ] ; 3 uses
  %.0.i.i.i.i311 = phi ptr [ %i.oh, %bb.cl ], [ %i.ob, %bb.ck ] ; 11 uses
  %i.oj = icmp eq i8 %i.oi, 3
  br i1 %i.oj, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i310
  %i.ok = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i311, i64 13
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !78, !noalias !1521 ; 4 uses
  %i.om = zext i8 %i.ol to i32
  store i32 %i.om, ptr %i.ny, align 8, !tbaa !151, !alias.scope !1521
  %i.on = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i311, i64 14
  %i.oo = load i8, ptr %i.on, align 1, !noalias !1521 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 5 uses
  %i.oq = zext i8 %i.ol to i64                    ; 5 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %i.oq
  store ptr %.0.i.i.i.i311, ptr %i.or, align 8, !tbaa !212, !alias.scope !1521
  %i.os = getelementptr inbounds nuw i8, ptr %19, i64 44 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 %i.oq
  store i8 %i.oo, ptr %i.ot, align 1, !tbaa !78, !alias.scope !1521
  %.018.i.i.i.i.i.i323 = zext i8 %i.oo to i64     ; 3 uses
  %.not.i.i.i.i.i.i324 = icmp eq i8 %i.ol, 0
  br i1 %.not.i.i.i.i.i.i324, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i331, label %.lr.ph.i.i.i.i.i.i325.preheader

.lr.ph.i.i.i.i.i.i325.preheader:                  ; preds = %bb.cm
  %xtraiter1110 = and i64 %i.oq, 1
  %lcmp.mod1111.not = icmp eq i64 %xtraiter1110, 0
  br i1 %lcmp.mod1111.not, label %.lr.ph.i.i.i.i.i.i325.prol.loopexit, label %.lr.ph.i.i.i.i.i.i325.prol

.lr.ph.i.i.i.i.i.i325.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i325.preheader
  %indvars.iv.next.i.i.i.i.i.i329.prol = add nsw i64 %i.oq, -1 ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i311, i64 16
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %.018.i.i.i.i.i.i323
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !152, !noalias !1521 ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %indvars.iv.next.i.i.i.i.i.i329.prol
  store ptr %i.ow, ptr %i.ox, align 8, !tbaa !212, !alias.scope !1521
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ow, i64 14
  %i.oz = load i8, ptr %i.oy, align 1, !noalias !1521 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.os, i64 %indvars.iv.next.i.i.i.i.i.i329.prol
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !78, !alias.scope !1521
  %.0.i.i.i.i.i.i330.prol = zext i8 %i.oz to i64  ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i325.prol.loopexit

.lr.ph.i.i.i.i.i.i325.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i325.prol, %.lr.ph.i.i.i.i.i.i325.preheader
  %indvars.iv.i.i.i.i.i.i326.unr = phi i64 [ %i.oq, %.lr.ph.i.i.i.i.i.i325.preheader ], [ %indvars.iv.next.i.i.i.i.i.i329.prol, %.lr.ph.i.i.i.i.i.i325.prol ]
  %.021.i.i.i.i.i.i327.unr = phi i64 [ %.018.i.i.i.i.i.i323, %.lr.ph.i.i.i.i.i.i325.preheader ], [ %.0.i.i.i.i.i.i330.prol, %.lr.ph.i.i.i.i.i.i325.prol ]
  %.01619.i.i.i.i.i.i328.unr = phi ptr [ %.0.i.i.i.i311, %.lr.ph.i.i.i.i.i.i325.preheader ], [ %i.ow, %.lr.ph.i.i.i.i.i.i325.prol ]
  %.0.i.i.i.i.i.i330.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i325.preheader ], [ %.0.i.i.i.i.i.i330.prol, %.lr.ph.i.i.i.i.i.i325.prol ]
  %i.pb = icmp eq i8 %i.ol, 1
  br i1 %i.pb, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i331, label %.lr.ph.i.i.i.i.i.i325

.lr.ph.i.i.i.i.i.i325:                            ; preds = %.lr.ph.i.i.i.i.i.i325.prol.loopexit, %.lr.ph.i.i.i.i.i.i325
  %indvars.iv.i.i.i.i.i.i326 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i329.1, %.lr.ph.i.i.i.i.i.i325 ], [ %indvars.iv.i.i.i.i.i.i326.unr, %.lr.ph.i.i.i.i.i.i325.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i327 = phi i64 [ %.0.i.i.i.i.i.i330.1, %.lr.ph.i.i.i.i.i.i325 ], [ %.021.i.i.i.i.i.i327.unr, %.lr.ph.i.i.i.i.i.i325.prol.loopexit ]
  %.01619.i.i.i.i.i.i328 = phi ptr [ %i.pl, %.lr.ph.i.i.i.i.i.i325 ], [ %.01619.i.i.i.i.i.i328.unr, %.lr.ph.i.i.i.i.i.i325.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i329 = add nsw i64 %indvars.iv.i.i.i.i.i.i326, -1 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i328, i64 16
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %.021.i.i.i.i.i.i327
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !152, !noalias !1521 ; 3 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %indvars.iv.next.i.i.i.i.i.i329
  store ptr %i.pe, ptr %i.pf, align 8, !tbaa !212, !alias.scope !1521
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 14
  %i.ph = load i8, ptr %i.pg, align 1, !noalias !1521 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.os, i64 %indvars.iv.next.i.i.i.i.i.i329
  store i8 %i.ph, ptr %i.pi, align 1, !tbaa !78, !alias.scope !1521
  %.0.i.i.i.i.i.i330 = zext i8 %i.ph to i64
  %indvars.iv.next.i.i.i.i.i.i329.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i326, -2 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.pj, i64 %.0.i.i.i.i.i.i330
  %i.pl = load ptr, ptr %i.pk, align 8, !tbaa !152, !noalias !1521 ; 3 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.op, i64 %indvars.iv.next.i.i.i.i.i.i329.1
  store ptr %i.pl, ptr %i.pm, align 8, !tbaa !212, !alias.scope !1521
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 14
  %i.po = load i8, ptr %i.pn, align 1, !noalias !1521 ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.os, i64 %indvars.iv.next.i.i.i.i.i.i329.1
  store i8 %i.po, ptr %i.pp, align 1, !tbaa !78, !alias.scope !1521
  %.0.i.i.i.i.i.i330.1 = zext i8 %i.po to i64     ; 2 uses
  %i.pq = icmp sgt i64 %indvars.iv.i.i.i.i.i.i326, 2
  br i1 %i.pq, label %.lr.ph.i.i.i.i.i.i325, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i331, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i331: ; preds = %.lr.ph.i.i.i.i.i.i325.prol.loopexit, %.lr.ph.i.i.i.i.i.i325, %bb.cm
  %.0.lcssa.i.i.i.i.i.i332 = phi i64 [ %.018.i.i.i.i.i.i323, %bb.cm ], [ %.0.i.i.i.i.i.i330.lcssa.unr, %.lr.ph.i.i.i.i.i.i325.prol.loopexit ], [ %.0.i.i.i.i.i.i330.1, %.lr.ph.i.i.i.i.i.i325 ]
  %i.pr = load ptr, ptr %i.op, align 8, !tbaa !212, !alias.scope !1521
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %.0.lcssa.i.i.i.i.i.i332
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !152, !noalias !1521 ; 5 uses
  %i.pv = load i64, ptr %.0.i.i.i.i311, align 8, !tbaa !129, !noalias !1521
  %i.pw = load i64, ptr %i.pu, align 8, !tbaa !129, !noalias !1521 ; 2 uses
  %i.px = sub i64 %i.pv, %i.pw
  store i64 %i.px, ptr %i.nx, align 8, !tbaa !213, !alias.scope !1521
  %i.py = getelementptr inbounds nuw i8, ptr %i.pu, i64 12
  %i.pz = load i8, ptr %i.py, align 4, !tbaa !122, !noalias !1521 ; 2 uses
  %i.qa = icmp eq i8 %i.pz, 1
  br i1 %i.qa, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i331
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pu, i64 16
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !208, !noalias !1521
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pu, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !209, !noalias !1521 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i338 = getelementptr inbounds nuw i8, ptr %i.qe, i64 12
  %.pre.i.i.i.i.i339 = load i8, ptr %.phi.trans.insert.i.i.i.i.i338, align 4, !tbaa !122, !noalias !1521
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i331
  %i.qf = phi i8 [ %.pre.i.i.i.i.i339, %bb.cn ], [ %i.pz, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i331 ]
  %.010.i.i.i.i.i333 = phi ptr [ %i.qe, %bb.cn ], [ %i.pu, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i331 ] ; 2 uses
  %.0.i.i.i.i.i334 = phi i64 [ %i.qc, %bb.cn ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i331 ]
  %i.qg = icmp ugt i8 %i.qf, 5
  br i1 %i.qg, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.qh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i333, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i335

bb.cq:                                            ; preds = %bb.co
  %i.qi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i333, i64 16
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !214, !noalias !1521
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i335

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i335: ; preds = %bb.cq, %bb.cp
  %.pn.i.i.i.i.i336 = phi ptr [ %i.qh, %bb.cp ], [ %i.qj, %bb.cq ]
  %.sroa.3.0.i.i.i.i.i337 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i336, i64 %.0.i.i.i.i.i334
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i317

bb.cr:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i310
  store ptr %.0.i.i.i.i311, ptr %i.nv, align 8, !tbaa !215, !alias.scope !1521
  %i.qk = load i64, ptr %.0.i.i.i.i311, align 8, !tbaa !129, !noalias !1521
  %i.ql = icmp eq i8 %i.oi, 1
  br i1 %i.ql, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.qm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i311, i64 16
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !208, !noalias !1521
  %i.qo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i311, i64 24
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !209, !noalias !1521 ; 2 uses
  %.phi.trans.insert.i.i.i.i321 = getelementptr inbounds nuw i8, ptr %i.qp, i64 12
  %.pre.i.i.i.i322 = load i8, ptr %.phi.trans.insert.i.i.i.i321, align 4, !tbaa !122, !noalias !1521
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.qq = phi i8 [ %.pre.i.i.i.i322, %bb.cs ], [ %i.oi, %bb.cr ]
  %.010.i.i.i.i312 = phi ptr [ %i.qp, %bb.cs ], [ %.0.i.i.i.i311, %bb.cr ] ; 2 uses
  %.0.i8.i.i.i313 = phi i64 [ %i.qn, %bb.cs ], [ 0, %bb.cr ]
  %i.qr = icmp ugt i8 %i.qq, 5
  br i1 %i.qr, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qs = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i312, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i314

bb.cv:                                            ; preds = %bb.ct
  %i.qt = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i312, i64 16
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !214, !noalias !1521
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i314

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i314: ; preds = %bb.cv, %bb.cu
  %.pn.i.i.i.i315 = phi ptr [ %i.qs, %bb.cu ], [ %i.qu, %bb.cv ]
  %.sroa.3.0.i.i.i.i316 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i315, i64 %.0.i8.i.i.i313
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i317

_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i317: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i314, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i335
  %.sink.i.i.i318 = phi i64 [ %i.qk, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i314 ], [ %i.pw, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i335 ]
  %.sroa.3.0.i.sink.i.i.i319 = phi ptr [ %.sroa.3.0.i.i.i.i316, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i314 ], [ %.sroa.3.0.i.i.i.i.i337, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i335 ]
  store i64 %.sink.i.i.i318, ptr %19, align 8, !tbaa !77, !alias.scope !1521
  %.sroa.4.0..sroa_idx.i.i.i320 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %.sroa.3.0.i.sink.i.i.i319, ptr %.sroa.4.0..sroa_idx.i.i.i320, align 8, !tbaa !140, !alias.scope !1521
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cj
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %19, i8 0, i64 16, i1 false), !alias.scope !1521
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i317
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  %i.qv = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.qw = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 3 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %20, i8 0, i64 40, i1 false), !alias.scope !1522
  store i32 -1, ptr %i.qy, align 8, !tbaa !151, !alias.scope !1522
  %i.qz = load i64, ptr %i.ob, align 8, !tbaa !129, !noalias !1523 ; 2 uses
  store i64 %i.qz, ptr %i.qw, align 8, !tbaa !150, !alias.scope !1523
  %.not7.i.i347 = icmp eq i64 %i.qz, 0
  br i1 %.not7.i.i347, label %bb.dk, label %bb.cy, !prof !90

bb.cy:                                            ; preds = %bb.cx
  %i.ra = getelementptr inbounds nuw i8, ptr %i.ob, i64 12
  %i.rb = load i8, ptr %i.ra, align 4, !tbaa !122, !noalias !1523 ; 2 uses
  %i.rc = icmp eq i8 %i.rb, 2
  br i1 %i.rc, label %bb.cz, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i348, !prof !90

bb.cz:                                            ; preds = %bb.cy
  %i.rd = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !206, !noalias !1523 ; 2 uses
  %.phi.trans.insert.i.i.i378 = getelementptr inbounds nuw i8, ptr %i.re, i64 12
  %.pre.i.i.i379 = load i8, ptr %.phi.trans.insert.i.i.i378, align 4, !tbaa !122, !noalias !1523
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i348

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i348: ; preds = %bb.cz, %bb.cy
  %i.rf = phi i8 [ %.pre.i.i.i379, %bb.cz ], [ %i.rb, %bb.cy ] ; 3 uses
  %.0.i.i.i.i349 = phi ptr [ %i.re, %bb.cz ], [ %i.ob, %bb.cy ] ; 11 uses
  %i.rg = icmp eq i8 %i.rf, 3
  br i1 %i.rg, label %bb.da, label %bb.df

bb.da:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i348
  %i.rh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i349, i64 13
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !78, !noalias !1523 ; 4 uses
  %i.rj = zext i8 %i.ri to i32
  store i32 %i.rj, ptr %i.qy, align 8, !tbaa !151, !alias.scope !1523
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i349, i64 14
  %i.rl = load i8, ptr %i.rk, align 1, !noalias !1523 ; 2 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 5 uses
  %i.rn = zext i8 %i.ri to i64                    ; 5 uses
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %i.rn
  store ptr %.0.i.i.i.i349, ptr %i.ro, align 8, !tbaa !212, !alias.scope !1523
  %i.rp = getelementptr inbounds nuw i8, ptr %20, i64 44 ; 4 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rn
  store i8 %i.rl, ptr %i.rq, align 1, !tbaa !78, !alias.scope !1523
  %.018.i.i.i.i.i.i361 = zext i8 %i.rl to i64     ; 3 uses
  %.not.i.i.i.i.i.i362 = icmp eq i8 %i.ri, 0
  br i1 %.not.i.i.i.i.i.i362, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i369, label %.lr.ph.i.i.i.i.i.i363.preheader

.lr.ph.i.i.i.i.i.i363.preheader:                  ; preds = %bb.da
  %xtraiter1112 = and i64 %i.rn, 1
  %lcmp.mod1113.not = icmp eq i64 %xtraiter1112, 0
  br i1 %lcmp.mod1113.not, label %.lr.ph.i.i.i.i.i.i363.prol.loopexit, label %.lr.ph.i.i.i.i.i.i363.prol

.lr.ph.i.i.i.i.i.i363.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i363.preheader
  %indvars.iv.next.i.i.i.i.i.i367.prol = add nsw i64 %i.rn, -1 ; 3 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i349, i64 16
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %.018.i.i.i.i.i.i361
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !152, !noalias !1523 ; 3 uses
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv.next.i.i.i.i.i.i367.prol
  store ptr %i.rt, ptr %i.ru, align 8, !tbaa !212, !alias.scope !1523
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 14
  %i.rw = load i8, ptr %i.rv, align 1, !noalias !1523 ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rp, i64 %indvars.iv.next.i.i.i.i.i.i367.prol
  store i8 %i.rw, ptr %i.rx, align 1, !tbaa !78, !alias.scope !1523
  %.0.i.i.i.i.i.i368.prol = zext i8 %i.rw to i64  ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i363.prol.loopexit

.lr.ph.i.i.i.i.i.i363.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i363.prol, %.lr.ph.i.i.i.i.i.i363.preheader
  %indvars.iv.i.i.i.i.i.i364.unr = phi i64 [ %i.rn, %.lr.ph.i.i.i.i.i.i363.preheader ], [ %indvars.iv.next.i.i.i.i.i.i367.prol, %.lr.ph.i.i.i.i.i.i363.prol ]
  %.021.i.i.i.i.i.i365.unr = phi i64 [ %.018.i.i.i.i.i.i361, %.lr.ph.i.i.i.i.i.i363.preheader ], [ %.0.i.i.i.i.i.i368.prol, %.lr.ph.i.i.i.i.i.i363.prol ]
  %.01619.i.i.i.i.i.i366.unr = phi ptr [ %.0.i.i.i.i349, %.lr.ph.i.i.i.i.i.i363.preheader ], [ %i.rt, %.lr.ph.i.i.i.i.i.i363.prol ]
  %.0.i.i.i.i.i.i368.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i363.preheader ], [ %.0.i.i.i.i.i.i368.prol, %.lr.ph.i.i.i.i.i.i363.prol ]
  %i.ry = icmp eq i8 %i.ri, 1
  br i1 %i.ry, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i369, label %.lr.ph.i.i.i.i.i.i363

.lr.ph.i.i.i.i.i.i363:                            ; preds = %.lr.ph.i.i.i.i.i.i363.prol.loopexit, %.lr.ph.i.i.i.i.i.i363
  %indvars.iv.i.i.i.i.i.i364 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i367.1, %.lr.ph.i.i.i.i.i.i363 ], [ %indvars.iv.i.i.i.i.i.i364.unr, %.lr.ph.i.i.i.i.i.i363.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i365 = phi i64 [ %.0.i.i.i.i.i.i368.1, %.lr.ph.i.i.i.i.i.i363 ], [ %.021.i.i.i.i.i.i365.unr, %.lr.ph.i.i.i.i.i.i363.prol.loopexit ]
  %.01619.i.i.i.i.i.i366 = phi ptr [ %i.si, %.lr.ph.i.i.i.i.i.i363 ], [ %.01619.i.i.i.i.i.i366.unr, %.lr.ph.i.i.i.i.i.i363.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i367 = add nsw i64 %indvars.iv.i.i.i.i.i.i364, -1 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i366, i64 16
  %i.sa = getelementptr inbounds nuw [8 x i8], ptr %i.rz, i64 %.021.i.i.i.i.i.i365
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !152, !noalias !1523 ; 3 uses
  %i.sc = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv.next.i.i.i.i.i.i367
  store ptr %i.sb, ptr %i.sc, align 8, !tbaa !212, !alias.scope !1523
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 14
  %i.se = load i8, ptr %i.sd, align 1, !noalias !1523 ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rp, i64 %indvars.iv.next.i.i.i.i.i.i367
  store i8 %i.se, ptr %i.sf, align 1, !tbaa !78, !alias.scope !1523
  %.0.i.i.i.i.i.i368 = zext i8 %i.se to i64
  %indvars.iv.next.i.i.i.i.i.i367.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i364, -2 ; 3 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sb, i64 16
  %i.sh = getelementptr inbounds nuw [8 x i8], ptr %i.sg, i64 %.0.i.i.i.i.i.i368
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !152, !noalias !1523 ; 3 uses
  %i.sj = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %indvars.iv.next.i.i.i.i.i.i367.1
  store ptr %i.si, ptr %i.sj, align 8, !tbaa !212, !alias.scope !1523
  %i.sk = getelementptr inbounds nuw i8, ptr %i.si, i64 14
  %i.sl = load i8, ptr %i.sk, align 1, !noalias !1523 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rp, i64 %indvars.iv.next.i.i.i.i.i.i367.1
  store i8 %i.sl, ptr %i.sm, align 1, !tbaa !78, !alias.scope !1523
  %.0.i.i.i.i.i.i368.1 = zext i8 %i.sl to i64     ; 2 uses
  %i.sn = icmp sgt i64 %indvars.iv.i.i.i.i.i.i364, 2
  br i1 %i.sn, label %.lr.ph.i.i.i.i.i.i363, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i369, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i369: ; preds = %.lr.ph.i.i.i.i.i.i363.prol.loopexit, %.lr.ph.i.i.i.i.i.i363, %bb.da
  %.0.lcssa.i.i.i.i.i.i370 = phi i64 [ %.018.i.i.i.i.i.i361, %bb.da ], [ %.0.i.i.i.i.i.i368.lcssa.unr, %.lr.ph.i.i.i.i.i.i363.prol.loopexit ], [ %.0.i.i.i.i.i.i368.1, %.lr.ph.i.i.i.i.i.i363 ]
  %i.so = load ptr, ptr %i.rm, align 8, !tbaa !212, !alias.scope !1523
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16
  %i.sq = getelementptr inbounds nuw [8 x i8], ptr %i.sp, i64 %.0.lcssa.i.i.i.i.i.i370
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !152, !noalias !1523 ; 5 uses
  %i.ss = load i64, ptr %.0.i.i.i.i349, align 8, !tbaa !129, !noalias !1523
  %i.st = load i64, ptr %i.sr, align 8, !tbaa !129, !noalias !1523 ; 2 uses
  %i.su = sub i64 %i.ss, %i.st
  store i64 %i.su, ptr %i.qx, align 8, !tbaa !213, !alias.scope !1523
  %i.sv = getelementptr inbounds nuw i8, ptr %i.sr, i64 12
  %i.sw = load i8, ptr %i.sv, align 4, !tbaa !122, !noalias !1523 ; 2 uses
  %i.sx = icmp eq i8 %i.sw, 1
  br i1 %i.sx, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i369
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  %i.sz = load i64, ptr %i.sy, align 8, !tbaa !208, !noalias !1523
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sr, i64 24
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !209, !noalias !1523 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i376 = getelementptr inbounds nuw i8, ptr %i.tb, i64 12
  %.pre.i.i.i.i.i377 = load i8, ptr %.phi.trans.insert.i.i.i.i.i376, align 4, !tbaa !122, !noalias !1523
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i369
  %i.tc = phi i8 [ %.pre.i.i.i.i.i377, %bb.db ], [ %i.sw, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i369 ]
  %.010.i.i.i.i.i371 = phi ptr [ %i.tb, %bb.db ], [ %i.sr, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i369 ] ; 2 uses
  %.0.i.i.i.i.i372 = phi i64 [ %i.sz, %bb.db ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i369 ]
  %i.td = icmp ugt i8 %i.tc, 5
  br i1 %i.td, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.te = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i371, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i373

bb.de:                                            ; preds = %bb.dc
  %i.tf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i371, i64 16
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !214, !noalias !1523
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i373

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i373: ; preds = %bb.de, %bb.dd
  %.pn.i.i.i.i.i374 = phi ptr [ %i.te, %bb.dd ], [ %i.tg, %bb.de ]
  %.sroa.3.0.i.i.i.i.i375 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i374, i64 %.0.i.i.i.i.i372
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i355

bb.df:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i348
  store ptr %.0.i.i.i.i349, ptr %i.qv, align 8, !tbaa !215, !alias.scope !1523
  %i.th = load i64, ptr %.0.i.i.i.i349, align 8, !tbaa !129, !noalias !1523
  %i.ti = icmp eq i8 %i.rf, 1
  br i1 %i.ti, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.tj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i349, i64 16
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !208, !noalias !1523
  %i.tl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i349, i64 24
  %i.tm = load ptr, ptr %i.tl, align 8, !tbaa !209, !noalias !1523 ; 2 uses
  %.phi.trans.insert.i.i.i.i359 = getelementptr inbounds nuw i8, ptr %i.tm, i64 12
  %.pre.i.i.i.i360 = load i8, ptr %.phi.trans.insert.i.i.i.i359, align 4, !tbaa !122, !noalias !1523
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.tn = phi i8 [ %.pre.i.i.i.i360, %bb.dg ], [ %i.rf, %bb.df ]
  %.010.i.i.i.i350 = phi ptr [ %i.tm, %bb.dg ], [ %.0.i.i.i.i349, %bb.df ] ; 2 uses
  %.0.i8.i.i.i351 = phi i64 [ %i.tk, %bb.dg ], [ 0, %bb.df ]
  %i.to = icmp ugt i8 %i.tn, 5
  br i1 %i.to, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.tp = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i350, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i352

bb.dj:                                            ; preds = %bb.dh
  %i.tq = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i350, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !214, !noalias !1523
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i352

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i352: ; preds = %bb.dj, %bb.di
  %.pn.i.i.i.i353 = phi ptr [ %i.tp, %bb.di ], [ %i.tr, %bb.dj ]
  %.sroa.3.0.i.i.i.i354 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i353, i64 %.0.i8.i.i.i351
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i355

_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i355: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i352, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i373
  %.sink.i.i.i356 = phi i64 [ %i.th, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i352 ], [ %i.st, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i373 ]
  %.sroa.3.0.i.sink.i.i.i357 = phi ptr [ %.sroa.3.0.i.i.i.i354, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i352 ], [ %.sroa.3.0.i.i.i.i.i375, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i373 ]
  store i64 %.sink.i.i.i356, ptr %20, align 8, !tbaa !77, !alias.scope !1523
  %.sroa.4.0..sroa_idx.i.i.i358 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %.sroa.3.0.i.sink.i.i.i357, ptr %.sroa.4.0..sroa_idx.i.i.i358, align 8, !tbaa !140, !alias.scope !1523
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit380

bb.dk:                                            ; preds = %bb.cx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %20, i8 0, i64 16, i1 false), !alias.scope !1523
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit380

bb.dl:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit304
  %i.ts = sext i8 %i.nz to i64
  %i.tt = lshr i64 %i.ts, 1                       ; 4 uses
  store i64 %i.tt, ptr %i.nw, align 8, !tbaa !150, !alias.scope !1521
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i307 = select i1 %i.oa, ptr null, ptr %i.tu ; 2 uses
  store i64 %i.tt, ptr %19, align 8, !tbaa !77, !alias.scope !1521
  %.sroa.4.0..sroa_idx.i.i308 = getelementptr inbounds nuw i8, ptr %19, i64 8
  store ptr %spec.select.i.i.i307, ptr %.sroa.4.0..sroa_idx.i.i308, align 8, !tbaa !140, !alias.scope !1521
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1523)
  %i.tv = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %20, i64 32
  %i.tx = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %20, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ty, i8 0, i64 24, i1 false), !alias.scope !1523
  store i32 -1, ptr %i.tx, align 8, !tbaa !151, !alias.scope !1523
  store i64 %i.tt, ptr %i.tv, align 8, !tbaa !150, !alias.scope !1523
  store i64 %i.tt, ptr %20, align 8, !tbaa !77, !alias.scope !1523
  %.sroa.4.0..sroa_idx.i.i346 = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %spec.select.i.i.i307, ptr %.sroa.4.0..sroa_idx.i.i346, align 8, !tbaa !140, !alias.scope !1523
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit380

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit380: ; preds = %bb.dl, %bb.dk, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i355
  %i.tz = phi ptr [ %i.qy, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i355 ], [ %i.qy, %bb.dk ], [ %i.tx, %bb.dl ]
  %i.ua = phi ptr [ %i.qx, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i355 ], [ %i.qx, %bb.dk ], [ %i.tw, %bb.dl ] ; 3 uses
  %i.ub = phi ptr [ %i.qw, %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i355 ], [ %i.qw, %bb.dk ], [ %i.tv, %bb.dl ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #38
  store i64 0, ptr %i.k, align 8, !tbaa !77
  %i.uc = load i64, ptr %i.nw, align 8, !tbaa !150 ; 2 uses
  %.not864 = icmp eq i64 %i.uc, 0
  br i1 %.not864, label %.critedge, label %.lr.ph865

.lr.ph865:                                        ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit380
  %i.ud = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.sroa.2.0..sroa_idx.i426 = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ug = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.ui = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 3 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %36, i64 16
  %i.um = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %39, i64 8
  %i.uo = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.up = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.uq = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.us = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %48, i64 16
  %i.uu = getelementptr inbounds nuw i8, ptr %48, i64 24 ; 4 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %48, i64 32 ; 3 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %48, i64 40 ; 3 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %48, i64 56 ; 9 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %48, i64 44 ; 9 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %19, i64 56 ; 4 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %19, i64 44 ; 5 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %20, i64 56 ; 4 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %20, i64 44 ; 5 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %53, i64 8
  %i.vf = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.vg = load i64, ptr %i.ub, align 8, !tbaa !150 ; 2 uses
  %.not8411088 = icmp eq i64 %i.vg, 0
end_hunk_4
begin_hunk_5_@_ZL19VerifyChunkIteratorRKN4absl12lts_202605264CordEm:bb.a
  %bcmp.i.i.i531 = call i32 @bcmp(ptr %i.abi, ptr %.sroa.2.0.copyload.i.i529, i64 %i.abj), !noalias !1525
  %i.abl = icmp eq i32 %bcmp.i.i.i531, 0
  br i1 %i.abl, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i532, label %bb.gw

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i532: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i530, %bb.gv
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %44)
          to label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit535 unwind label %bb.gy

bb.gw:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i530
  invoke void @_ZN7testing8internal18CmpHelperEQFailureISt17basic_string_viewIcSt11char_traitsIcEES5_EENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %44, ptr noundef nonnull @.str.891, ptr noundef nonnull @.str.892, ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull align 8 dereferenceable(16) %35)
          to label %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit535 unwind label %bb.gy

_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit535: ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i532, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  %i.abm = load i8, ptr %44, align 8, !tbaa !110, !range !111, !noundef !112
  %i.abn = trunc nuw i8 %i.abm to i1
  br i1 %i.abn, label %bb.hi, label %bb.gz

bb.gx:                                            ; preds = %_ZN7testing7MessageD2Ev.exit518, %bb.gj
  %.pn144.pn.pn = phi { ptr, i32 } [ %.pn144.pn, %_ZN7testing7MessageD2Ev.exit518 ], [ %i.aal, %bb.gj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #38
  br label %bb.jy

bb.gy:                                            ; preds = %bb.gw, %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit.i.i532
  %i.abo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #38
  br label %bb.hs

bb.gz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit535
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %bb.ha unwind label %bb.he

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #38
  %i.abp = load ptr, ptr %i.us, align 8, !tbaa !113 ; 2 uses
  %.not.i.i536 = icmp eq ptr %i.abp, null
  br i1 %.not.i.i536, label %_ZNK7testing15AssertionResult15failure_messageEv.exit537, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.abq = load ptr, ptr %i.abp, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit537

_ZNK7testing15AssertionResult15failure_messageEv.exit537: ; preds = %bb.hb, %bb.ha
  %i.abr = phi ptr [ %i.abq, %bb.hb ], [ @.str.57, %bb.ha ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %47, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2427, ptr noundef %i.abr)
          to label %bb.hc unwind label %bb.hf

bb.hc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit537
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %bb.hd unwind label %bb.hg

bb.hd:                                            ; preds = %bb.hc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %47) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #38
  %i.abs = load ptr, ptr %46, align 8, !tbaa !115 ; 3 uses
  %.not.i.i538 = icmp eq ptr %i.abs, null
  br i1 %.not.i.i538, label %_ZN7testing7MessageD2Ev.exit540, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i539

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i539: ; preds = %bb.hd
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !73
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abt, i64 8
  %i.abv = load ptr, ptr %i.abu, align 8
  call void %i.abv(ptr noundef nonnull align 8 dereferenceable(128) %i.abs) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit540

_ZN7testing7MessageD2Ev.exit540:                  ; preds = %bb.hd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i539
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  br label %bb.hi

bb.he:                                            ; preds = %bb.gz
  %i.abw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit543

bb.hf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit537
  %i.abx = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.hg:                                            ; preds = %bb.hc
  %i.aby = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %47) #38
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %.pn148 = phi { ptr, i32 } [ %i.aby, %bb.hg ], [ %i.abx, %bb.hf ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #38
  %i.abz = load ptr, ptr %46, align 8, !tbaa !115 ; 3 uses
  %.not.i.i541 = icmp eq ptr %i.abz, null
  br i1 %.not.i.i541, label %_ZN7testing7MessageD2Ev.exit543, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i542

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i542: ; preds = %bb.hh
  %i.aca = load ptr, ptr %i.abz, align 8, !tbaa !73
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 8
  %i.acc = load ptr, ptr %i.acb, align 8
  call void %i.acc(ptr noundef nonnull align 8 dereferenceable(128) %i.abz) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit543

_ZN7testing7MessageD2Ev.exit543:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i542, %bb.hh, %bb.he
  %.pn148.pn = phi { ptr, i32 } [ %i.abw, %bb.he ], [ %.pn148, %bb.hh ], [ %.pn148, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i542 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %44) #38
  br label %bb.hs

bb.hi:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareISt17basic_string_viewIcSt11char_traitsIcEES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit535, %_ZN7testing7MessageD2Ev.exit540
  %i.acd = load ptr, ptr %i.us, align 8, !tbaa !113 ; 4 uses
  %.not.i.i544 = icmp eq ptr %i.acd, null
  br i1 %.not.i.i544, label %_ZN7testing15AssertionResultD2Ev.exit548, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.ace = load ptr, ptr %i.acd, align 8, !tbaa !74 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acd, i64 16 ; 2 uses
  %i.acg = icmp eq ptr %i.ace, %i.acf
  br i1 %i.acg, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i546, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i545

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i545: ; preds = %bb.hj
  %i.ach = load i64, ptr %i.acf, align 8, !tbaa !78
  %i.aci = add i64 %i.ach, 1
  call void @_ZdlPvm(ptr noundef %i.ace, i64 noundef %i.aci) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i546

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i546: ; preds = %bb.hj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i545
  call void @_ZdlPvm(ptr noundef nonnull %i.acd, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit548

_ZN7testing15AssertionResultD2Ev.exit548:         ; preds = %bb.hi, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i546
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #38
  store i32 0, ptr %i.n, align 4, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1526)
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %48, i8 0, i64 40, i1 false), !alias.scope !1528
  store i32 -1, ptr %i.uw, align 8, !tbaa !151, !alias.scope !1528
  %i.acj = load i8, ptr %0, align 8, !tbaa !78, !noalias !1528 ; 2 uses
  %i.ack = trunc i8 %i.acj to i1
  %i.acl = load ptr, ptr %i.w, align 8, !noalias !1528 ; 5 uses
  %.not8.i.i.i549 = icmp ne ptr %i.acl, null
  %.not.not.i.i.i550 = select i1 %i.ack, i1 %.not8.i.i.i549, i1 false
  br i1 %.not.not.i.i.i550, label %bb.hk, label %bb.hp

bb.hk:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit548
  %i.acm = load i64, ptr %i.acl, align 8, !tbaa !129, !noalias !1528 ; 3 uses
  store i64 %i.acm, ptr %i.uu, align 8, !tbaa !150, !alias.scope !1528
  %.not7.i.i.i553 = icmp eq i64 %i.acm, 0
  br i1 %.not7.i.i.i553, label %.thread, label %bb.hl, !prof !90

bb.hl:                                            ; preds = %bb.hk
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acl, i64 12
  %i.aco = load i8, ptr %i.acn, align 4, !tbaa !122, !noalias !1528 ; 2 uses
  %i.acp = icmp eq i8 %i.aco, 2
  br i1 %i.acp, label %bb.hm, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i554, !prof !90

bb.hm:                                            ; preds = %bb.hl
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acl, i64 16
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !206, !noalias !1528 ; 2 uses
  %.phi.trans.insert.i.i.i.i584 = getelementptr inbounds nuw i8, ptr %i.acr, i64 12
  %.pre.i.i.i.i585 = load i8, ptr %.phi.trans.insert.i.i.i.i584, align 4, !tbaa !122, !noalias !1528
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i554

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i554: ; preds = %bb.hm, %bb.hl
  %i.acs = phi i8 [ %.pre.i.i.i.i585, %bb.hm ], [ %i.aco, %bb.hl ]
  %.0.i.i.i.i.i555 = phi ptr [ %i.acr, %bb.hm ], [ %i.acl, %bb.hl ] ; 8 uses
  %i.act = icmp eq i8 %i.acs, 3
  br i1 %i.act, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i554
  %i.acu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i555, i64 13
  %i.acv = load i8, ptr %i.acu, align 1, !tbaa !78, !noalias !1528 ; 4 uses
  %i.acw = zext i8 %i.acv to i32
  store i32 %i.acw, ptr %i.uw, align 8, !tbaa !151, !alias.scope !1528
  %i.acx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i555, i64 14
  %i.acy = load i8, ptr %i.acx, align 1, !noalias !1528 ; 2 uses
  %i.acz = zext i8 %i.acv to i64                  ; 5 uses
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.acz
  store ptr %.0.i.i.i.i.i555, ptr %i.ada, align 8, !tbaa !212, !alias.scope !1528
  %i.adb = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.acz
  store i8 %i.acy, ptr %i.adb, align 1, !tbaa !78, !alias.scope !1528
  %.018.i.i.i.i.i.i.i567 = zext i8 %i.acy to i64  ; 3 uses
  %.not.i.i.i.i.i.i.i568 = icmp eq i8 %i.acv, 0
  br i1 %.not.i.i.i.i.i.i.i568, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i575, label %.lr.ph.i.i.i.i.i.i.i569.preheader

.lr.ph.i.i.i.i.i.i.i569.preheader:                ; preds = %bb.hn
  %xtraiter1114 = and i64 %i.acz, 1
  %lcmp.mod1115.not = icmp eq i64 %xtraiter1114, 0
  br i1 %lcmp.mod1115.not, label %.lr.ph.i.i.i.i.i.i.i569.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i569.prol

.lr.ph.i.i.i.i.i.i.i569.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i569.preheader
  %indvars.iv.next.i.i.i.i.i.i.i573.prol = add nsw i64 %i.acz, -1 ; 3 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i555, i64 16
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %i.adc, i64 %.018.i.i.i.i.i.i.i567
  %i.ade = load ptr, ptr %i.add, align 8, !tbaa !152, !noalias !1528 ; 3 uses
  %i.adf = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %indvars.iv.next.i.i.i.i.i.i.i573.prol
  store ptr %i.ade, ptr %i.adf, align 8, !tbaa !212, !alias.scope !1528
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ade, i64 14
  %i.adh = load i8, ptr %i.adg, align 1, !noalias !1528 ; 2 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.uy, i64 %indvars.iv.next.i.i.i.i.i.i.i573.prol
  store i8 %i.adh, ptr %i.adi, align 1, !tbaa !78, !alias.scope !1528
  %.0.i.i.i.i.i.i.i574.prol = zext i8 %i.adh to i64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i569.prol.loopexit

.lr.ph.i.i.i.i.i.i.i569.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i569.prol, %.lr.ph.i.i.i.i.i.i.i569.preheader
  %indvars.iv.i.i.i.i.i.i.i570.unr = phi i64 [ %i.acz, %.lr.ph.i.i.i.i.i.i.i569.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i573.prol, %.lr.ph.i.i.i.i.i.i.i569.prol ]
  %.021.i.i.i.i.i.i.i571.unr = phi i64 [ %.018.i.i.i.i.i.i.i567, %.lr.ph.i.i.i.i.i.i.i569.preheader ], [ %.0.i.i.i.i.i.i.i574.prol, %.lr.ph.i.i.i.i.i.i.i569.prol ]
  %.01619.i.i.i.i.i.i.i572.unr = phi ptr [ %.0.i.i.i.i.i555, %.lr.ph.i.i.i.i.i.i.i569.preheader ], [ %i.ade, %.lr.ph.i.i.i.i.i.i.i569.prol ]
  %.0.i.i.i.i.i.i.i574.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i569.preheader ], [ %.0.i.i.i.i.i.i.i574.prol, %.lr.ph.i.i.i.i.i.i.i569.prol ]
  %i.adj = icmp eq i8 %i.acv, 1
  br i1 %i.adj, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i575, label %.lr.ph.i.i.i.i.i.i.i569

.lr.ph.i.i.i.i.i.i.i569:                          ; preds = %.lr.ph.i.i.i.i.i.i.i569.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i569
  %indvars.iv.i.i.i.i.i.i.i570 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i573.1, %.lr.ph.i.i.i.i.i.i.i569 ], [ %indvars.iv.i.i.i.i.i.i.i570.unr, %.lr.ph.i.i.i.i.i.i.i569.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i571 = phi i64 [ %.0.i.i.i.i.i.i.i574.1, %.lr.ph.i.i.i.i.i.i.i569 ], [ %.021.i.i.i.i.i.i.i571.unr, %.lr.ph.i.i.i.i.i.i.i569.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i572 = phi ptr [ %i.adt, %.lr.ph.i.i.i.i.i.i.i569 ], [ %.01619.i.i.i.i.i.i.i572.unr, %.lr.ph.i.i.i.i.i.i.i569.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i573 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i570, -1 ; 2 uses
  %i.adk = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i572, i64 16
  %i.adl = getelementptr inbounds nuw [8 x i8], ptr %i.adk, i64 %.021.i.i.i.i.i.i.i571
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !152, !noalias !1528 ; 3 uses
  %i.adn = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %indvars.iv.next.i.i.i.i.i.i.i573
  store ptr %i.adm, ptr %i.adn, align 8, !tbaa !212, !alias.scope !1528
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 14
  %i.adp = load i8, ptr %i.ado, align 1, !noalias !1528 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.uy, i64 %indvars.iv.next.i.i.i.i.i.i.i573
  store i8 %i.adp, ptr %i.adq, align 1, !tbaa !78, !alias.scope !1528
  %.0.i.i.i.i.i.i.i574 = zext i8 %i.adp to i64
  %indvars.iv.next.i.i.i.i.i.i.i573.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i570, -2 ; 3 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adm, i64 16
  %i.ads = getelementptr inbounds nuw [8 x i8], ptr %i.adr, i64 %.0.i.i.i.i.i.i.i574
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !152, !noalias !1528 ; 3 uses
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %indvars.iv.next.i.i.i.i.i.i.i573.1
  store ptr %i.adt, ptr %i.adu, align 8, !tbaa !212, !alias.scope !1528
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adt, i64 14
  %i.adw = load i8, ptr %i.adv, align 1, !noalias !1528 ; 2 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.uy, i64 %indvars.iv.next.i.i.i.i.i.i.i573.1
  store i8 %i.adw, ptr %i.adx, align 1, !tbaa !78, !alias.scope !1528
  %.0.i.i.i.i.i.i.i574.1 = zext i8 %i.adw to i64  ; 2 uses
  %i.ady = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i570, 2
  br i1 %i.ady, label %.lr.ph.i.i.i.i.i.i.i569, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i575, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i575: ; preds = %.lr.ph.i.i.i.i.i.i.i569.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i569, %bb.hn
  %.0.lcssa.i.i.i.i.i.i.i576 = phi i64 [ %.018.i.i.i.i.i.i.i567, %bb.hn ], [ %.0.i.i.i.i.i.i.i574.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i569.prol.loopexit ], [ %.0.i.i.i.i.i.i.i574.1, %.lr.ph.i.i.i.i.i.i.i569 ]
  %i.adz = load ptr, ptr %i.ux, align 8, !tbaa !212, !alias.scope !1528
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adz, i64 16
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %.0.lcssa.i.i.i.i.i.i.i576
  %i.aec = load ptr, ptr %i.aeb, align 8, !tbaa !152, !noalias !1528
  %i.aed = load i64, ptr %.0.i.i.i.i.i555, align 8, !tbaa !129, !noalias !1528
  %i.aee = load i64, ptr %i.aec, align 8, !tbaa !129, !noalias !1528 ; 2 uses
  %i.aef = sub i64 %i.aed, %i.aee                 ; 2 uses
  store i64 %i.aef, ptr %i.uv, align 8, !tbaa !213, !alias.scope !1528
  %.pre882.pre = load i64, ptr %i.uu, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit586

bb.ho:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i554
  store ptr %.0.i.i.i.i.i555, ptr %i.ut, align 8, !tbaa !215, !alias.scope !1528
  %i.aeg = load i64, ptr %.0.i.i.i.i.i555, align 8, !tbaa !129, !noalias !1528
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit586

bb.hp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit548
  %i.aeh = sext i8 %i.acj to i64
  %i.aei = lshr i64 %i.aeh, 1                     ; 2 uses
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit586

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit586: ; preds = %bb.ho, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i575, %bb.hp
  %.sink.i.i.i.i562.sink = phi i64 [ %i.aei, %bb.hp ], [ %i.aee, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i575 ], [ %i.aeg, %bb.ho ] ; 2 uses
  %i.aej = phi i64 [ 0, %bb.hp ], [ %i.aef, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i575 ], [ 0, %bb.ho ]
  %i.aek = phi i64 [ %i.aei, %bb.hp ], [ %.pre882.pre, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i575 ], [ %i.acm, %bb.ho ] ; 2 uses
  store i64 %.sink.i.i.i.i562.sink, ptr %48, align 8, !tbaa !77, !alias.scope !1528
  %.not842862 = icmp eq i64 %i.aek, 0
  br i1 %.not842862, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit586
  %i.ael = load i64, ptr %i.nw, align 8, !tbaa !150
  br label %bb.ht

.thread:                                          ; preds = %bb.hk, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit586
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #38
  store i32 1, ptr %i.o, align 4, !tbaa !86
  br label %bb.hr

_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread: ; preds = %bb.ht, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  store i32 %i.aet, ptr %i.n, align 4, !tbaa !86
  %i.aem = icmp eq i32 %i.aet, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #38
  store i32 1, ptr %i.o, align 4, !tbaa !86
  br i1 %i.aem, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ia

bb.hr:                                            ; preds = %.thread, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %49, ptr noundef nonnull @.str.893, ptr noundef nonnull @.str.178, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o)
          to label %_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.ia

bb.hs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit543, %bb.gy
  %.pn148.pn.pn = phi { ptr, i32 } [ %.pn148.pn, %_ZN7testing7MessageD2Ev.exit543 ], [ %i.abo, %bb.gy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #38
  br label %bb.jy

bb.ht:                                            ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.aen = phi i64 [ %i.aej, %.lr.ph ], [ %i.ago, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %i.aeo = phi i64 [ %.sink.i.i.i.i562.sink, %.lr.ph ], [ %i.agp, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %i.aep = phi i64 [ %i.aek, %.lr.ph ], [ %i.agn, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.aeq = phi i32 [ 0, %.lr.ph ], [ %i.aet, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ]
  %i.aer = icmp eq i64 %i.aep, %i.ael
  %i.aes = zext i1 %i.aer to i32
  %i.aet = add nuw nsw i32 %i.aeq, %i.aes         ; 3 uses
  %i.aeu = sub i64 %i.aep, %i.aeo                 ; 4 uses
  store i64 %i.aeu, ptr %i.uu, align 8, !tbaa !150
  %.not.i589 = icmp eq i64 %i.aep, %i.aeo
  br i1 %.not.i589, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit.thread, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.aev = load i32, ptr %i.uw, align 8, !tbaa !151 ; 2 uses
  %i.aew = icmp sgt i32 %i.aev, -1
  br i1 %i.aew, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.hu
  %i.aex = zext nneg i32 %i.aev to i64            ; 2 uses
  %i.aey = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %i.aex
  %i.aez = load ptr, ptr %i.aey, align 8, !tbaa !212
  %.not2.i = icmp eq ptr %i.aez, null
  br i1 %.not2.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.hv

bb.hv:                                            ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.afa = icmp eq i64 %i.aen, 0
  br i1 %i.afa, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.afb = load ptr, ptr %i.ux, align 8, !tbaa !212 ; 2 uses
  %i.afc = load i8, ptr %i.uy, align 4, !tbaa !78 ; 2 uses
  %i.afd = zext i8 %i.afc to i64
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afb, i64 15
  %i.aff = load i8, ptr %i.afe, align 1, !tbaa !78
  %i.afg = zext i8 %i.aff to i64
  %i.afh = add nsw i64 %i.afg, -1
  %i.afi = icmp eq i64 %i.afh, %i.afd
  br i1 %i.afi, label %.preheader, label %bb.hz

.preheader:                                       ; preds = %bb.hw, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.hw ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.hw ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.aex
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.afj = getelementptr inbounds nuw [8 x i8], ptr %i.ux, i64 %indvars.iv.next.i.i.i.i.i
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !212 ; 2 uses
  %i.afl = getelementptr inbounds nuw i8, ptr %i.uy, i64 %indvars.iv.next.i.i.i.i.i
  %i.afm = load i8, ptr %i.afl, align 1, !tbaa !78
  %i.afn = zext i8 %i.afm to i64
  %i.afo = add nuw nsw i64 %i.afn, 1              ; 3 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afk, i64 15
  %i.afq = load i8, ptr %i.afp, align 1, !tbaa !78
  %i.afr = zext i8 %i.afq to i64
  %i.afs = icmp eq i64 %i.afo, %i.afr
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.afs, label %.preheader, label %bb.hx, !llvm.loop !11

bb.hx:                                            ; preds = %.preheader
  %i.aft = getelementptr inbounds nuw i8, ptr %i.uy, i64 %indvars.iv.next.i.i.i.i.i
  %i.afu = trunc i64 %i.afo to i8
  store i8 %i.afu, ptr %i.aft, align 1, !tbaa !78
  %i.afv = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hy, %bb.hx
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i, %bb.hy ], [ %i.afv, %bb.hx ] ; 2 uses
  %.017.i.i.i.i.i = phi ptr [ %i.afy, %bb.hy ], [ %i.afk, %bb.hx ]
  %.016.i.i.i.i.i = phi i64 [ %i.agc, %bb.hy ], [ %i.afo, %bb.hx ]
  %i.afw = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 16
  %i.afx = getelementptr inbounds nuw [8 x i8], ptr %i.afw, i64 %.016.i.i.i.i.i
  %i.afy = load ptr, ptr %i.afx, align 8, !tbaa !152 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i, -1 ; 3 uses
  %i.afz = getelementptr inbounds [8 x i8], ptr %i.ux, i64 %indvars.iv.next41.i.i.i.i.i
  store ptr %i.afy, ptr %i.afz, align 8, !tbaa !212
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afy, i64 14
  %i.agb = load i8, ptr %i.aga, align 1, !tbaa !78 ; 2 uses
  %i.agc = zext i8 %i.agb to i64                  ; 2 uses
  %i.agd = getelementptr inbounds i8, ptr %i.uy, i64 %indvars.iv.next41.i.i.i.i.i
  store i8 %i.agb, ptr %i.agd, align 1, !tbaa !78
  %i.age = icmp sgt i64 %indvars.iv40.i.i.i.i.i, 1
  br i1 %i.age, label %bb.hy, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, !llvm.loop !12

bb.hz:                                            ; preds = %bb.hw
  %i.agf = add i8 %i.afc, 1                       ; 2 uses
  store i8 %i.agf, ptr %i.uy, align 4, !tbaa !78
  %i.agg = zext i8 %i.agf to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i: ; preds = %bb.hy
  %.pre.i.i.i598 = load i64, ptr %i.uv, align 8, !tbaa !213
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, %bb.hz
  %i.agh = phi i64 [ %i.aen, %bb.hz ], [ %.pre.i.i.i598, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
end_hunk_5
begin_hunk_6_@_ZL18VerifyCharIteratorRKN4absl12lts_202605264CordE:bb.a

bb.sb:                                            ; preds = %bb.rz, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i798, %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit781
  call void @llvm.lifetime.end.p0(ptr nonnull %109) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #38
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %114)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605264Cord12CharIteratorES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit804 unwind label %bb.sc

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605264Cord12CharIteratorES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit804: ; preds = %bb.sb
  %.pre1163 = load i8, ptr %114, align 8, !tbaa !110, !range !111
  %i.arj = trunc nuw i8 %.pre1163 to i1
  br i1 %i.arj, label %bb.sm, label %bb.sd

bb.sc:                                            ; preds = %bb.sb
  %i.ark = landingpad { ptr, i32 }
          cleanup
  br label %bb.tc

bb.sd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605264Cord12CharIteratorES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit804
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %115)
          to label %bb.se unwind label %bb.si

bb.se:                                            ; preds = %bb.sd
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #38
  %i.arl = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !113 ; 2 uses
  %.not.i.i805 = icmp eq ptr %i.arm, null
  br i1 %.not.i.i805, label %_ZNK7testing15AssertionResult15failure_messageEv.exit806, label %bb.sf

bb.sf:                                            ; preds = %bb.se
  %i.arn = load ptr, ptr %i.arm, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit806

_ZNK7testing15AssertionResult15failure_messageEv.exit806: ; preds = %bb.sf, %bb.se
  %i.aro = phi ptr [ %i.arn, %bb.sf ], [ @.str.57, %bb.se ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %116, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2665, ptr noundef %i.aro)
          to label %bb.sg unwind label %bb.sj

bb.sg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit806
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull align 8 dereferenceable(8) %115)
          to label %bb.sh unwind label %bb.sk

bb.sh:                                            ; preds = %bb.sg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %116) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #38
  %i.arp = load ptr, ptr %115, align 8, !tbaa !115 ; 3 uses
  %.not.i.i807 = icmp eq ptr %i.arp, null
  br i1 %.not.i.i807, label %_ZN7testing7MessageD2Ev.exit809, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i808

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i808: ; preds = %bb.sh
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !73
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.ars = load ptr, ptr %i.arr, align 8
  call void %i.ars(ptr noundef nonnull align 8 dereferenceable(128) %i.arp) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit809

_ZN7testing7MessageD2Ev.exit809:                  ; preds = %bb.sh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i808
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #38
  br label %bb.sm

bb.si:                                            ; preds = %bb.sd
  %i.art = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit812

bb.sj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit806
  %i.aru = landingpad { ptr, i32 }
          cleanup
  br label %bb.sl

bb.sk:                                            ; preds = %bb.sg
  %i.arv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %116) #38
  br label %bb.sl

bb.sl:                                            ; preds = %bb.sk, %bb.sj
  %.pn175 = phi { ptr, i32 } [ %i.arv, %bb.sk ], [ %i.aru, %bb.sj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #38
  %i.arw = load ptr, ptr %115, align 8, !tbaa !115 ; 3 uses
  %.not.i.i810 = icmp eq ptr %i.arw, null
  br i1 %.not.i.i810, label %_ZN7testing7MessageD2Ev.exit812, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i811

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i811: ; preds = %bb.sl
  %i.arx = load ptr, ptr %i.arw, align 8, !tbaa !73
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 8
  %i.arz = load ptr, ptr %i.ary, align 8
  call void %i.arz(ptr noundef nonnull align 8 dereferenceable(128) %i.arw) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit812

_ZN7testing7MessageD2Ev.exit812:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i811, %bb.sl, %bb.si
  %.pn175.pn = phi { ptr, i32 } [ %i.art, %bb.si ], [ %.pn175, %bb.sl ], [ %.pn175, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i811 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %114) #38
  br label %bb.tc

bb.sm:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_202605264Cord12CharIteratorES6_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSG_RKS8_RKS9_.exit804, %_ZN7testing7MessageD2Ev.exit809
  %i.asa = getelementptr inbounds nuw i8, ptr %114, i64 8
  %i.asb = load ptr, ptr %i.asa, align 8, !tbaa !113 ; 4 uses
  %.not.i.i813 = icmp eq ptr %i.asb, null
  br i1 %.not.i.i813, label %_ZN7testing15AssertionResultD2Ev.exit817, label %bb.sn

bb.sn:                                            ; preds = %bb.sm
  %i.asc = load ptr, ptr %i.asb, align 8, !tbaa !74 ; 2 uses
  %i.asd = getelementptr inbounds nuw i8, ptr %i.asb, i64 16 ; 2 uses
  %i.ase = icmp eq ptr %i.asc, %i.asd
  br i1 %i.ase, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i815, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i814

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i814: ; preds = %bb.sn
  %i.asf = load i64, ptr %i.asd, align 8, !tbaa !78
  %i.asg = add i64 %i.asf, 1
  call void @_ZdlPvm(ptr noundef %i.asc, i64 noundef %i.asg) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i815

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i815: ; preds = %bb.sn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i814
  call void @_ZdlPvm(ptr noundef nonnull %i.asb, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit817

_ZN7testing15AssertionResultD2Ev.exit817:         ; preds = %bb.sm, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i815
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #38
  invoke void @_ZN4absl12lts_202605264Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %117, ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit unwind label %bb.td

_ZNK4absl12lts_202605264Cord10char_beginEv.exit:  ; preds = %_ZN7testing15AssertionResultD2Ev.exit817
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !1688)
  call void @llvm.experimental.noalias.scope.decl(metadata !1689)
  %i.ash = getelementptr inbounds nuw i8, ptr %118, i64 16
  %i.asi = getelementptr inbounds nuw i8, ptr %118, i64 24 ; 5 uses
  %i.asj = getelementptr inbounds nuw i8, ptr %118, i64 32 ; 3 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %118, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %118, i8 0, i64 40, i1 false), !alias.scope !1690
  store i32 -1, ptr %i.ask, align 8, !tbaa !151, !alias.scope !1690
  %i.asl = load i8, ptr %0, align 8, !tbaa !78, !noalias !1690 ; 2 uses
  %i.asm = trunc i8 %i.asl to i1                  ; 2 uses
  %i.asn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aso = load ptr, ptr %i.asn, align 8, !noalias !1690 ; 5 uses
  %.not8.i.i.i = icmp ne ptr %i.aso, null
  %.not.not.i.i.i = select i1 %i.asm, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.so, label %bb.tb

bb.so:                                            ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit
  %i.asp = load i64, ptr %i.aso, align 8, !tbaa !129, !noalias !1690 ; 3 uses
  store i64 %i.asp, ptr %i.asi, align 8, !tbaa !150, !alias.scope !1690
  %.not7.i.i.i = icmp eq i64 %i.asp, 0
  br i1 %.not7.i.i.i, label %._crit_edge1143, label %bb.sp, !prof !90

bb.sp:                                            ; preds = %bb.so
  %i.asq = getelementptr inbounds nuw i8, ptr %i.aso, i64 12
  %i.asr = load i8, ptr %i.asq, align 4, !tbaa !122, !noalias !1690 ; 2 uses
  %i.ass = icmp eq i8 %i.asr, 2
  br i1 %i.ass, label %bb.sq, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !90

bb.sq:                                            ; preds = %bb.sp
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aso, i64 16
  %i.asu = load ptr, ptr %i.ast, align 8, !tbaa !206, !noalias !1690 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.asu, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !122, !noalias !1690
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.sq, %bb.sp
  %i.asv = phi i8 [ %.pre.i.i.i.i, %bb.sq ], [ %i.asr, %bb.sp ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.asu, %bb.sq ], [ %i.aso, %bb.sp ] ; 11 uses
  %i.asw = icmp eq i8 %i.asv, 3
  br i1 %i.asw, label %bb.sr, label %bb.sw

bb.sr:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.asx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.asy = load i8, ptr %i.asx, align 1, !tbaa !78, !noalias !1690 ; 4 uses
  %i.asz = zext i8 %i.asy to i32
  store i32 %i.asz, ptr %i.ask, align 8, !tbaa !151, !alias.scope !1690
  %i.ata = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.atb = load i8, ptr %i.ata, align 1, !noalias !1690 ; 2 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %118, i64 56 ; 5 uses
  %i.atd = zext i8 %i.asy to i64                  ; 5 uses
  %i.ate = getelementptr inbounds nuw [8 x i8], ptr %i.atc, i64 %i.atd
  store ptr %.0.i.i.i.i.i, ptr %i.ate, align 8, !tbaa !212, !alias.scope !1690
  %i.atf = getelementptr inbounds nuw i8, ptr %118, i64 44 ; 4 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.atf, i64 %i.atd
  store i8 %i.atb, ptr %i.atg, align 1, !tbaa !78, !alias.scope !1690
  %.018.i.i.i.i.i.i.i = zext i8 %i.atb to i64     ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.asy, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.sr
  %xtraiter = and i64 %i.atd, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.atd, -1 ; 3 uses
  %i.ath = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ati = getelementptr inbounds nuw [8 x i8], ptr %i.ath, i64 %.018.i.i.i.i.i.i.i
  %i.atj = load ptr, ptr %i.ati, align 8, !tbaa !152, !noalias !1690 ; 3 uses
  %i.atk = getelementptr inbounds nuw [8 x i8], ptr %i.atc, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.atj, ptr %i.atk, align 8, !tbaa !212, !alias.scope !1690
  %i.atl = getelementptr inbounds nuw i8, ptr %i.atj, i64 14
  %i.atm = load i8, ptr %i.atl, align 1, !noalias !1690 ; 2 uses
  %i.atn = getelementptr inbounds nuw i8, ptr %i.atf, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.atm, ptr %i.atn, align 1, !tbaa !78, !alias.scope !1690
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.atm to i64  ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.atd, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.atj, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ato = icmp eq i8 %i.asy, 1
  br i1 %i.ato, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.aty, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.atq = getelementptr inbounds nuw [8 x i8], ptr %i.atp, i64 %.021.i.i.i.i.i.i.i
  %i.atr = load ptr, ptr %i.atq, align 8, !tbaa !152, !noalias !1690 ; 3 uses
  %i.ats = getelementptr inbounds nuw [8 x i8], ptr %i.atc, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.atr, ptr %i.ats, align 8, !tbaa !212, !alias.scope !1690
  %i.att = getelementptr inbounds nuw i8, ptr %i.atr, i64 14
  %i.atu = load i8, ptr %i.att, align 1, !noalias !1690 ; 2 uses
  %i.atv = getelementptr inbounds nuw i8, ptr %i.atf, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.atu, ptr %i.atv, align 1, !tbaa !78, !alias.scope !1690
  %.0.i.i.i.i.i.i.i = zext i8 %i.atu to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.atw = getelementptr inbounds nuw i8, ptr %i.atr, i64 16
  %i.atx = getelementptr inbounds nuw [8 x i8], ptr %i.atw, i64 %.0.i.i.i.i.i.i.i
  %i.aty = load ptr, ptr %i.atx, align 8, !tbaa !152, !noalias !1690 ; 3 uses
  %i.atz = getelementptr inbounds nuw [8 x i8], ptr %i.atc, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.aty, ptr %i.atz, align 8, !tbaa !212, !alias.scope !1690
  %i.aua = getelementptr inbounds nuw i8, ptr %i.aty, i64 14
  %i.aub = load i8, ptr %i.aua, align 1, !noalias !1690 ; 2 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %i.atf, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.aub, ptr %i.auc, align 1, !tbaa !78, !alias.scope !1690
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.aub to i64     ; 2 uses
  %i.aud = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.aud, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.sr
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.sr ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aue = load ptr, ptr %i.atc, align 8, !tbaa !212, !alias.scope !1690
  %i.auf = getelementptr inbounds nuw i8, ptr %i.aue, i64 16
  %i.aug = getelementptr inbounds nuw [8 x i8], ptr %i.auf, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !152, !noalias !1690 ; 5 uses
  %i.aui = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !1690
  %i.auj = load i64, ptr %i.auh, align 8, !tbaa !129, !noalias !1690 ; 2 uses
  %i.auk = sub i64 %i.aui, %i.auj                 ; 2 uses
  store i64 %i.auk, ptr %i.asj, align 8, !tbaa !213, !alias.scope !1690
  %i.aul = getelementptr inbounds nuw i8, ptr %i.auh, i64 12
  %i.aum = load i8, ptr %i.aul, align 4, !tbaa !122, !noalias !1690 ; 2 uses
  %i.aun = icmp eq i8 %i.aum, 1
  br i1 %i.aun, label %bb.ss, label %bb.st

bb.ss:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.auo = getelementptr inbounds nuw i8, ptr %i.auh, i64 16
  %i.aup = load i64, ptr %i.auo, align 8, !tbaa !208, !noalias !1690
  %i.auq = getelementptr inbounds nuw i8, ptr %i.auh, i64 24
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !209, !noalias !1690 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aur, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !122, !noalias !1690
  br label %bb.st

bb.st:                                            ; preds = %bb.ss, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.aus = phi i8 [ %.pre.i.i.i.i.i.i, %bb.ss ], [ %i.aum, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.aur, %bb.ss ], [ %i.auh, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.aup, %bb.ss ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.aut = icmp ugt i8 %i.aus, 5
  br i1 %i.aut, label %bb.su, label %bb.sv

bb.su:                                            ; preds = %bb.st
  %i.auu = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.sv:                                            ; preds = %bb.st
  %i.auv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.auw = load ptr, ptr %i.auv, align 8, !tbaa !214, !noalias !1690
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.sv, %bb.su
  %.pn.i.i.i.i.i.i = phi ptr [ %i.auu, %bb.su ], [ %i.auw, %bb.sv ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre1164.pre = load i64, ptr %i.asi, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.sw:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  store ptr %.0.i.i.i.i.i, ptr %i.ash, align 8, !tbaa !215, !alias.scope !1690
  %i.aux = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !1690
  %i.auy = icmp eq i8 %i.asv, 1
  br i1 %i.auy, label %bb.sx, label %bb.sy

bb.sx:                                            ; preds = %bb.sw
  %i.auz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ava = load i64, ptr %i.auz, align 8, !tbaa !208, !noalias !1690
  %i.avb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.avc = load ptr, ptr %i.avb, align 8, !tbaa !209, !noalias !1690 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.avc, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !122, !noalias !1690
  br label %bb.sy

bb.sy:                                            ; preds = %bb.sx, %bb.sw
  %i.avd = phi i8 [ %.pre.i.i.i.i.i, %bb.sx ], [ %i.asv, %bb.sw ]
  %.010.i.i.i.i.i = phi ptr [ %i.avc, %bb.sx ], [ %.0.i.i.i.i.i, %bb.sw ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.ava, %bb.sx ], [ 0, %bb.sw ]
  %i.ave = icmp ugt i8 %i.avd, 5
  br i1 %i.ave, label %bb.sz, label %bb.ta

bb.sz:                                            ; preds = %bb.sy
  %i.avf = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.ta:                                            ; preds = %bb.sy
  %i.avg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !214, !noalias !1690
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.ta, %bb.sz
  %.pn.i.i.i.i.i = phi ptr [ %i.avf, %bb.sz ], [ %i.avh, %bb.ta ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.tb:                                            ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit
  %i.avi = sext i8 %i.asl to i64
  %i.avj = lshr i64 %i.avi, 1                     ; 3 uses
  store i64 %i.avj, ptr %i.asi, align 8, !tbaa !150, !alias.scope !1690
  %i.avk = getelementptr inbounds nuw i8, ptr %0, i64 1
  %spec.select.i.i.i.i = select i1 %i.asm, ptr null, ptr %i.avk
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.tb
  %.sink1444 = phi i64 [ %i.avj, %bb.tb ], [ %i.aux, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.auj, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %spec.select.i.i.i.i.sink = phi ptr [ %spec.select.i.i.i.i, %bb.tb ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %i.avl = phi i64 [ 0, %bb.tb ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.auk, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.avm = phi i64 [ %i.avj, %bb.tb ], [ %i.asp, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre1164.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  store i64 %.sink1444, ptr %118, align 8, !tbaa !77, !alias.scope !1690
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %118, i64 8
  store ptr %spec.select.i.i.i.i.sink, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !140, !alias.scope !1690
  %.not10161141 = icmp eq i64 %i.avm, 0
  br i1 %.not10161141, label %._crit_edge1143, label %.lr.ph1142

.lr.ph1142:                                       ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %118, i64 8
  %i.avn = getelementptr inbounds nuw i8, ptr %119, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %117, i64 8 ; 4 uses
  %i.avo = getelementptr inbounds nuw i8, ptr %121, i64 8
  %i.avp = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.avq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.avr = getelementptr inbounds nuw i8, ptr %120, i64 8 ; 2 uses
  %i.avs = getelementptr inbounds nuw i8, ptr %117, i64 24 ; 4 uses
  %i.avt = getelementptr inbounds nuw i8, ptr %117, i64 32 ; 3 uses
  %i.avu = getelementptr inbounds nuw i8, ptr %117, i64 40
  %i.avv = getelementptr inbounds nuw i8, ptr %117, i64 56 ; 4 uses
  %i.avw = getelementptr inbounds nuw i8, ptr %117, i64 44 ; 5 uses
  %i.avx = getelementptr inbounds nuw i8, ptr %118, i64 56 ; 4 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %118, i64 44 ; 5 uses
  br label %bb.te

._crit_edge1143:                                  ; preds = %._crit_edge, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, %bb.so, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #38
  %i.avz = load ptr, ptr %29, align 8, !tbaa !74  ; 2 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.awb = icmp eq ptr %i.avz, %i.awa
  br i1 %i.awb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819: ; preds = %._crit_edge1143
  %i.awc = load i64, ptr %i.awa, align 8, !tbaa !78
  %i.awd = add i64 %i.awc, 1
  call void @_ZdlPvm(ptr noundef %i.avz, i64 noundef %i.awd) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit821: ; preds = %._crit_edge1143, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i819
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #38
  ret void

bb.tc:                                            ; preds = %_ZN7testing7MessageD2Ev.exit812, %bb.sc
  %.pn175.pn.pn = phi { ptr, i32 } [ %.pn175.pn, %_ZN7testing7MessageD2Ev.exit812 ], [ %i.ark, %bb.sc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #38
  br label %bb.ut

bb.td:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit817
  %i.awe = landingpad { ptr, i32 }
          cleanup
  br label %bb.us

bb.te:                                            ; preds = %.lr.ph1142, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.awf = phi i64 [ %i.avl, %.lr.ph1142 ], [ %i.bda, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %.sroa.2.0.copyload.i = phi ptr [ %spec.select.i.i.i.i.sink, %.lr.ph1142 ], [ %.sroa.2.0.copyload.i1169, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.sroa.0.0.copyload.i = phi i64 [ %.sink1444, %.lr.ph1142 ], [ %.sroa.0.0.copyload.i1166, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 5 uses
  %i.awg = phi i64 [ %i.avm, %.lr.ph1142 ], [ %i.bcz, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #38
  store i64 %.sroa.0.0.copyload.i, ptr %119, align 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.avn, align 8
  %i.awh = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.awh, label %._crit_edge, label %.lr.ph1140.preheader

end_hunk_6
begin_hunk_7_@_ZN40CordTest_CharIteratorAdvanceAndRead_Test8TestBodyEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.dt, i64 noundef %i.dw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38, !noalias !1729
  br label %.body

.noexc115:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38, !noalias !1729
  br label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc115, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  %i.dx = load i8, ptr %19, align 8, !tbaa !110, !range !111, !noundef !112
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.am, label %bb.ad

bb.ab:                                            ; preds = %bb.r
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fh

bb.ac:                                            ; preds = %bb.x, %bb.w
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, %bb.ac
  %eh.lpad-body = phi { ptr, i32 } [ %i.ea, %bb.ac ], [ %.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #38
  br label %bb.az

bb.ad:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ae unwind label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #38
  %i.eb = load ptr, ptr %i.bn, align 8, !tbaa !113 ; 2 uses
  %.not.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.af, %bb.ae
  %i.ed = phi ptr [ %i.ec, %bb.af ], [ @.str.57, %bb.ae ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2743, ptr noundef %i.ed)
          to label %bb.ag unwind label %bb.aj

bb.ag:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  %i.ee = load ptr, ptr %20, align 8, !tbaa !115  ; 3 uses
  %.not.i.i116 = icmp eq ptr %i.ee, null
  br i1 %.not.i.i116, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.ah
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !73
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dereferenceable(128) %i.ee) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.ah, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  br label %bb.am

bb.ai:                                            ; preds = %bb.ad
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit119

bb.aj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ak:                                            ; preds = %bb.ag
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #38
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.pn = phi { ptr, i32 } [ %i.ek, %bb.ak ], [ %i.ej, %bb.aj ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #38
  %i.el = load ptr, ptr %20, align 8, !tbaa !115  ; 3 uses
  %.not.i.i117 = icmp eq ptr %i.el, null
  br i1 %.not.i.i117, label %_ZN7testing7MessageD2Ev.exit119, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118: ; preds = %bb.al
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !73
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(128) %i.el) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit119

_ZN7testing7MessageD2Ev.exit119:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %bb.al, %bb.ai
  %.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.ai ], [ %.pn, %bb.al ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #38
  br label %bb.az

bb.am:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ep = load ptr, ptr %i.bn, align 8, !tbaa !113 ; 4 uses
  %.not.i.i120 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i120, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !74 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %i.es = icmp eq ptr %i.eq, %i.er
  br i1 %i.es, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.an
  %i.et = load i64, ptr %i.er, align 8, !tbaa !78
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.eq, i64 noundef %i.eu) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ep, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.am, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %23, i8 0, i64 40, i1 false)
  %i.ev = load i8, ptr %15, align 8, !tbaa !78    ; 2 uses
  %i.ew = trunc i8 %i.ev to i1
  %i.ex = load ptr, ptr %i.bj, align 8            ; 5 uses
  %.not8.i.i = icmp ne ptr %i.ex, null
  %.not.not.i.i = select i1 %i.ew, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !129 ; 3 uses
  store i64 %i.ey, ptr %i.bp, align 8, !tbaa !150
  %.not7.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not7.i.i, label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit122, label %bb.ap, !prof !90

bb.ap:                                            ; preds = %bb.ao
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 12
  %i.fa = load i8, ptr %i.ez, align 4, !tbaa !122 ; 2 uses
  %i.fb = icmp eq i8 %i.fa, 2
  br i1 %i.fb, label %bb.aq, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !90

bb.aq:                                            ; preds = %bb.ap
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !206 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.fd, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !122
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.aq, %bb.ap
  %i.fe = phi i8 [ %.pre.i.i.i, %bb.aq ], [ %i.fa, %bb.ap ]
  %.0.i.i.i.i = phi ptr [ %i.fd, %bb.aq ], [ %i.ex, %bb.ap ] ; 7 uses
  %i.ff = icmp eq i8 %i.fe, 3
  br i1 %i.ff, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !78  ; 4 uses
  %i.fi = zext i8 %i.fh to i32
  store i32 %i.fi, ptr %i.br, align 8, !tbaa !151
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.fk = load i8, ptr %i.fj, align 1             ; 2 uses
  %i.fl = zext i8 %i.fh to i64                    ; 5 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.fl
  store ptr %.0.i.i.i.i, ptr %i.fm, align 8, !tbaa !212
  %i.fn = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.fl
  store i8 %i.fk, ptr %i.fn, align 1, !tbaa !78
  %.018.i.i.i.i.i.i = zext i8 %i.fk to i64        ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.fh, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.ar
  %xtraiter = and i64 %i.fl, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.fl, -1 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %.018.i.i.i.i.i.i
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !152 ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.fq, ptr %i.fr, align 8, !tbaa !212
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 14
  %i.ft = load i8, ptr %i.fs, align 1             ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.ft, ptr %i.fu, align 1, !tbaa !78
  %.0.i.i.i.i.i.i.prol = zext i8 %i.ft to i64     ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.fl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.fq, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.fv = icmp eq i8 %i.fh, 1
  br i1 %i.fv, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.021.i.i.i.i.i.i
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !152 ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.fy, ptr %i.fz, align 8, !tbaa !212
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 14
  %i.gb = load i8, ptr %i.ga, align 1             ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !78
  %.0.i.i.i.i.i.i = zext i8 %i.gb to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %.0.i.i.i.i.i.i
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !152 ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !212
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 14
  %i.gi = load i8, ptr %i.gh, align 1             ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !78
  %.0.i.i.i.i.i.i.1 = zext i8 %i.gi to i64        ; 2 uses
  %i.gk = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.gk, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.ar
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.ar ], [ %.0.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ]
  %i.gl = load ptr, ptr %i.bs, align 8, !tbaa !212
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %.0.lcssa.i.i.i.i.i.i
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !152
  %i.gp = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !129
  %i.gq = load i64, ptr %i.go, align 8, !tbaa !129
  %i.gr = sub i64 %i.gp, %i.gq
  store i64 %i.gr, ptr %i.bq, align 8, !tbaa !213
  %.pre.pre = load i64, ptr %i.bp, align 8, !tbaa !235
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit122

bb.as:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.bo, align 8, !tbaa !215
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit122

bb.at:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %i.gs = sext i8 %i.ev to i64
  %i.gt = lshr i64 %i.gs, 1                       ; 3 uses
  store i64 %i.gt, ptr %i.bp, align 8, !tbaa !150
  store i64 %i.gt, ptr %23, align 8, !tbaa !77
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit122

_ZNK4absl12lts_202605264Cord10char_beginEv.exit122: ; preds = %bb.as, %bb.ao, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, %bb.at
  %i.gu = phi i64 [ %i.gt, %bb.at ], [ 0, %bb.ao ], [ %.pre.pre, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ], [ %i.ey, %bb.as ]
  %i.gv = load i64, ptr %i.bk, align 8, !tbaa !235
  %i.gw = sub i64 %i.gu, %i.gv                    ; 2 uses
  store i64 %i.gw, ptr %i.f, align 8, !tbaa !77
  %i.gx = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !1730
  %i.gy = icmp eq i64 %i.gw, %i.gx
  br i1 %i.gy, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit122
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
          to label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125 unwind label %bb.ba

bb.av:                                            ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit122
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38, !noalias !1731
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %.noexc253 unwind label %bb.ba

.noexc253:                                        ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38, !noalias !1731
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i245 unwind label %bb.ax, !noalias !1731

_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i245: ; preds = %.noexc253
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.417, ptr noundef nonnull @.str.418, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext false)
          to label %bb.aw unwind label %bb.ay

bb.aw:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i245
  %i.gz = load ptr, ptr %10, align 8, !tbaa !74, !noalias !1731 ; 2 uses
  %i.ha = icmp eq ptr %i.gz, %i.bu
  br i1 %i.ha, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i249, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248: ; preds = %bb.aw
  %i.hb = load i64, ptr %i.bu, align 8, !tbaa !78, !noalias !1731
  %i.hc = add i64 %i.hb, 1
  call void @_ZdlPvm(ptr noundef %i.gz, i64 noundef %i.hc) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i249: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38, !noalias !1731
  %i.hd = load ptr, ptr %9, align 8, !tbaa !74, !noalias !1731 ; 2 uses
  %i.he = icmp eq ptr %i.hd, %i.bv
  br i1 %i.he, label %.noexc124, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i250

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i249
  %i.hf = load i64, ptr %i.bv, align 8, !tbaa !78, !noalias !1731
  %i.hg = add i64 %i.hf, 1
  call void @_ZdlPvm(ptr noundef %i.hd, i64 noundef %i.hg) #40
  br label %.noexc124

bb.ax:                                            ; preds = %.noexc253
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i240

bb.ay:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i245
  %i.hi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hj = load ptr, ptr %10, align 8, !tbaa !74, !noalias !1731 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.bu
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i240, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i246: ; preds = %bb.ay
  %i.hl = load i64, ptr %i.bu, align 8, !tbaa !78, !noalias !1731
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i240: ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i246, %bb.ax
  %.pn.i241 = phi { ptr, i32 } [ %i.hh, %bb.ax ], [ %i.hi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i246 ], [ %i.hi, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38, !noalias !1731
  %i.hn = load ptr, ptr %9, align 8, !tbaa !74, !noalias !1731 ; 2 uses
  %i.ho = icmp eq ptr %i.hn, %i.bv
  br i1 %i.ho, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i242: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i240
  %i.hp = load i64, ptr %i.bv, align 8, !tbaa !78, !noalias !1731
  %i.hq = add i64 %i.hp, 1
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef %i.hq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i243: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i240, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i242
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38, !noalias !1731
  br label %.body254

.noexc124:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i249, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i250
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38, !noalias !1731
  br label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125

_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125: ; preds = %.noexc124, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  %i.hr = load i8, ptr %22, align 8, !tbaa !110, !range !111, !noundef !112
  %i.hs = trunc nuw i8 %i.hr to i1
  br i1 %i.hs, label %bb.bk, label %bb.bb

bb.az:                                            ; preds = %_ZN7testing7MessageD2Ev.exit119, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit119 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #38
  br label %bb.fg

bb.ba:                                            ; preds = %bb.av, %bb.au
  %i.ht = landingpad { ptr, i32 }
          cleanup
  br label %.body254

.body254:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i243, %bb.ba
  %eh.lpad-body255 = phi { ptr, i32 } [ %i.ht, %bb.ba ], [ %.pn.i241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i243 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #38
  br label %bb.bt

bb.bb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit125
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bc unwind label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #38
  %i.hu = load ptr, ptr %i.bw, align 8, !tbaa !113 ; 2 uses
  %.not.i.i126 = icmp eq ptr %i.hu, null
  br i1 %.not.i.i126, label %_ZNK7testing15AssertionResult15failure_messageEv.exit127, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit127

_ZNK7testing15AssertionResult15failure_messageEv.exit127: ; preds = %bb.bd, %bb.bc
  %i.hw = phi ptr [ %i.hv, %bb.bd ], [ @.str.57, %bb.bc ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %25, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2744, ptr noundef %i.hw)
          to label %bb.be unwind label %bb.bh

bb.be:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit127
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %24)
          to label %bb.bf unwind label %bb.bi

end_hunk_7
begin_hunk_8_@_ZN40CordTest_CharIteratorAdvanceAndRead_Test8TestBodyEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.on, i64 noundef %i.oq) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !1736
  br label %.body301

.noexc197:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i297
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38, !noalias !1736
  br label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit198

_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit198: ; preds = %.noexc197, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #38
  %i.or = load i8, ptr %34, align 8, !tbaa !110, !range !111, !noundef !112
  %i.os = trunc nuw i8 %i.or to i1
  br i1 %i.os, label %bb.dy, label %bb.dp

bb.dn:                                            ; preds = %_ZN7testing7MessageD2Ev.exit190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %.pn80.pn.pn = phi { ptr, i32 } [ %.pn80.pn, %_ZN7testing7MessageD2Ev.exit190 ], [ %.pn77.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #38
  br label %bb.fc

bb.do:                                            ; preds = %bb.dj, %bb.di
  %i.ot = landingpad { ptr, i32 }
          cleanup
  br label %.body301

.body301:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i290, %bb.do
  %eh.lpad-body302 = phi { ptr, i32 } [ %i.ot, %bb.do ], [ %.pn.i288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i290 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #38
  br label %bb.el

bb.dp:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit198
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.dq unwind label %bb.du

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #38
  %i.ou = load ptr, ptr %i.ci, align 8, !tbaa !113 ; 2 uses
  %.not.i.i199 = icmp eq ptr %i.ou, null
  br i1 %.not.i.i199, label %_ZNK7testing15AssertionResult15failure_messageEv.exit200, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit200

_ZNK7testing15AssertionResult15failure_messageEv.exit200: ; preds = %bb.dr, %bb.dq
  %i.ow = phi ptr [ %i.ov, %bb.dr ], [ @.str.57, %bb.dq ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %36, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2752, ptr noundef %i.ow)
          to label %bb.ds unwind label %bb.dv

bb.ds:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit200
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.dt unwind label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #38
  %i.ox = load ptr, ptr %35, align 8, !tbaa !115  ; 3 uses
  %.not.i.i201 = icmp eq ptr %i.ox, null
  br i1 %.not.i.i201, label %_ZN7testing7MessageD2Ev.exit203, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202: ; preds = %bb.dt
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !73
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8
  call void %i.pa(ptr noundef nonnull align 8 dereferenceable(128) %i.ox) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit203

_ZN7testing7MessageD2Ev.exit203:                  ; preds = %bb.dt, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i202
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  br label %bb.dy

bb.du:                                            ; preds = %bb.dp
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit206

bb.dv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit200
  %i.pc = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.dw:                                            ; preds = %bb.ds
  %i.pd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %36) #38
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %.pn84 = phi { ptr, i32 } [ %i.pd, %bb.dw ], [ %i.pc, %bb.dv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #38
  %i.pe = load ptr, ptr %35, align 8, !tbaa !115  ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i204, label %_ZN7testing7MessageD2Ev.exit206, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %bb.dx
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !73
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(128) %i.pe) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit206

_ZN7testing7MessageD2Ev.exit206:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205, %bb.dx, %bb.du
  %.pn84.pn = phi { ptr, i32 } [ %i.pb, %bb.du ], [ %.pn84, %bb.dx ], [ %.pn84, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %34) #38
  br label %bb.el

bb.dy:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit198, %_ZN7testing7MessageD2Ev.exit203
  %i.pi = load ptr, ptr %i.ci, align 8, !tbaa !113 ; 4 uses
  %.not.i.i207 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i207, label %_ZN7testing15AssertionResultD2Ev.exit211, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !74 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 16 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208: ; preds = %bb.dz
  %i.pm = load i64, ptr %i.pk, align 8, !tbaa !78
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pn) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209: ; preds = %bb.dz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208
  call void @_ZdlPvm(ptr noundef nonnull %i.pi, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit211

_ZN7testing15AssertionResultD2Ev.exit211:         ; preds = %bb.dy, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %38, i8 0, i64 40, i1 false)
  %i.po = load i8, ptr %15, align 8, !tbaa !78    ; 2 uses
  %i.pp = trunc i8 %i.po to i1
  %i.pq = load ptr, ptr %i.bj, align 8            ; 5 uses
  %.not8.i.i304 = icmp ne ptr %i.pq, null
  %.not.not.i.i305 = select i1 %i.pp, i1 %.not8.i.i304, i1 false
  br i1 %.not.not.i.i305, label %bb.ea, label %bb.ef

bb.ea:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit211
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !129 ; 3 uses
  store i64 %i.pr, ptr %i.ck, align 8, !tbaa !150
  %.not7.i.i308 = icmp eq i64 %i.pr, 0
  br i1 %.not7.i.i308, label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit213, label %bb.eb, !prof !90

bb.eb:                                            ; preds = %bb.ea
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  %i.pt = load i8, ptr %i.ps, align 4, !tbaa !122 ; 2 uses
  %i.pu = icmp eq i8 %i.pt, 2
  br i1 %i.pu, label %bb.ec, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i309, !prof !90

bb.ec:                                            ; preds = %bb.eb
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !206 ; 2 uses
  %.phi.trans.insert.i.i.i339 = getelementptr inbounds nuw i8, ptr %i.pw, i64 12
  %.pre.i.i.i340 = load i8, ptr %.phi.trans.insert.i.i.i339, align 4, !tbaa !122
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i309

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i309: ; preds = %bb.ec, %bb.eb
  %i.px = phi i8 [ %.pre.i.i.i340, %bb.ec ], [ %i.pt, %bb.eb ]
  %.0.i.i.i.i310 = phi ptr [ %i.pw, %bb.ec ], [ %i.pq, %bb.eb ] ; 7 uses
  %i.py = icmp eq i8 %i.px, 3
  br i1 %i.py, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i309
  %i.pz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i310, i64 13
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !78  ; 4 uses
  %i.qb = zext i8 %i.qa to i32
  store i32 %i.qb, ptr %i.cm, align 8, !tbaa !151
  %i.qc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i310, i64 14
  %i.qd = load i8, ptr %i.qc, align 1             ; 2 uses
  %i.qe = zext i8 %i.qa to i64                    ; 5 uses
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.qe
  store ptr %.0.i.i.i.i310, ptr %i.qf, align 8, !tbaa !212
  %i.qg = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.qe
  store i8 %i.qd, ptr %i.qg, align 1, !tbaa !78
  %.018.i.i.i.i.i.i322 = zext i8 %i.qd to i64     ; 3 uses
  %.not.i.i.i.i.i.i323 = icmp eq i8 %i.qa, 0
  br i1 %.not.i.i.i.i.i.i323, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i330, label %.lr.ph.i.i.i.i.i.i324.preheader

.lr.ph.i.i.i.i.i.i324.preheader:                  ; preds = %bb.ed
  %xtraiter916 = and i64 %i.qe, 1
  %lcmp.mod917.not = icmp eq i64 %xtraiter916, 0
  br i1 %lcmp.mod917.not, label %.lr.ph.i.i.i.i.i.i324.prol.loopexit, label %.lr.ph.i.i.i.i.i.i324.prol

.lr.ph.i.i.i.i.i.i324.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i324.preheader
  %indvars.iv.next.i.i.i.i.i.i328.prol = add nsw i64 %i.qe, -1 ; 3 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i310, i64 16
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.qh, i64 %.018.i.i.i.i.i.i322
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !152 ; 3 uses
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i.i.i.i.i328.prol
  store ptr %i.qj, ptr %i.qk, align 8, !tbaa !212
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qj, i64 14
  %i.qm = load i8, ptr %i.ql, align 1             ; 2 uses
  %i.qn = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next.i.i.i.i.i.i328.prol
  store i8 %i.qm, ptr %i.qn, align 1, !tbaa !78
  %.0.i.i.i.i.i.i329.prol = zext i8 %i.qm to i64  ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i324.prol.loopexit

.lr.ph.i.i.i.i.i.i324.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i324.prol, %.lr.ph.i.i.i.i.i.i324.preheader
  %indvars.iv.i.i.i.i.i.i325.unr = phi i64 [ %i.qe, %.lr.ph.i.i.i.i.i.i324.preheader ], [ %indvars.iv.next.i.i.i.i.i.i328.prol, %.lr.ph.i.i.i.i.i.i324.prol ]
  %.021.i.i.i.i.i.i326.unr = phi i64 [ %.018.i.i.i.i.i.i322, %.lr.ph.i.i.i.i.i.i324.preheader ], [ %.0.i.i.i.i.i.i329.prol, %.lr.ph.i.i.i.i.i.i324.prol ]
  %.01619.i.i.i.i.i.i327.unr = phi ptr [ %.0.i.i.i.i310, %.lr.ph.i.i.i.i.i.i324.preheader ], [ %i.qj, %.lr.ph.i.i.i.i.i.i324.prol ]
  %.0.i.i.i.i.i.i329.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i324.preheader ], [ %.0.i.i.i.i.i.i329.prol, %.lr.ph.i.i.i.i.i.i324.prol ]
  %i.qo = icmp eq i8 %i.qa, 1
  br i1 %i.qo, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i330, label %.lr.ph.i.i.i.i.i.i324

.lr.ph.i.i.i.i.i.i324:                            ; preds = %.lr.ph.i.i.i.i.i.i324.prol.loopexit, %.lr.ph.i.i.i.i.i.i324
  %indvars.iv.i.i.i.i.i.i325 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i328.1, %.lr.ph.i.i.i.i.i.i324 ], [ %indvars.iv.i.i.i.i.i.i325.unr, %.lr.ph.i.i.i.i.i.i324.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i326 = phi i64 [ %.0.i.i.i.i.i.i329.1, %.lr.ph.i.i.i.i.i.i324 ], [ %.021.i.i.i.i.i.i326.unr, %.lr.ph.i.i.i.i.i.i324.prol.loopexit ]
  %.01619.i.i.i.i.i.i327 = phi ptr [ %i.qy, %.lr.ph.i.i.i.i.i.i324 ], [ %.01619.i.i.i.i.i.i327.unr, %.lr.ph.i.i.i.i.i.i324.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i328 = add nsw i64 %indvars.iv.i.i.i.i.i.i325, -1 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i327, i64 16
  %i.qq = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %.021.i.i.i.i.i.i326
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !152 ; 3 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i.i.i.i.i328
  store ptr %i.qr, ptr %i.qs, align 8, !tbaa !212
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 14
  %i.qu = load i8, ptr %i.qt, align 1             ; 2 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next.i.i.i.i.i.i328
  store i8 %i.qu, ptr %i.qv, align 1, !tbaa !78
  %.0.i.i.i.i.i.i329 = zext i8 %i.qu to i64
  %indvars.iv.next.i.i.i.i.i.i328.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i325, -2 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qx = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %.0.i.i.i.i.i.i329
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !152 ; 3 uses
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.next.i.i.i.i.i.i328.1
  store ptr %i.qy, ptr %i.qz, align 8, !tbaa !212
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qy, i64 14
  %i.rb = load i8, ptr %i.ra, align 1             ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next.i.i.i.i.i.i328.1
  store i8 %i.rb, ptr %i.rc, align 1, !tbaa !78
  %.0.i.i.i.i.i.i329.1 = zext i8 %i.rb to i64     ; 2 uses
  %i.rd = icmp sgt i64 %indvars.iv.i.i.i.i.i.i325, 2
  br i1 %i.rd, label %.lr.ph.i.i.i.i.i.i324, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i330, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i330: ; preds = %.lr.ph.i.i.i.i.i.i324.prol.loopexit, %.lr.ph.i.i.i.i.i.i324, %bb.ed
  %.0.lcssa.i.i.i.i.i.i331 = phi i64 [ %.018.i.i.i.i.i.i322, %bb.ed ], [ %.0.i.i.i.i.i.i329.lcssa.unr, %.lr.ph.i.i.i.i.i.i324.prol.loopexit ], [ %.0.i.i.i.i.i.i329.1, %.lr.ph.i.i.i.i.i.i324 ]
  %i.re = load ptr, ptr %i.cn, align 8, !tbaa !212
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 16
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %i.rf, i64 %.0.lcssa.i.i.i.i.i.i331
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !152
  %i.ri = load i64, ptr %.0.i.i.i.i310, align 8, !tbaa !129
  %i.rj = load i64, ptr %i.rh, align 8, !tbaa !129
  %i.rk = sub i64 %i.ri, %i.rj
  store i64 %i.rk, ptr %i.cl, align 8, !tbaa !213
  %.pre573.pre = load i64, ptr %i.ck, align 8, !tbaa !235
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit213

bb.ee:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i309
  store ptr %.0.i.i.i.i310, ptr %i.cj, align 8, !tbaa !215
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit213

bb.ef:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit211
  %i.rl = sext i8 %i.po to i64
  %i.rm = lshr i64 %i.rl, 1                       ; 3 uses
  store i64 %i.rm, ptr %i.ck, align 8, !tbaa !150
  store i64 %i.rm, ptr %38, align 8, !tbaa !77
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit213

_ZNK4absl12lts_202605264Cord10char_beginEv.exit213: ; preds = %bb.ee, %bb.ea, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i330, %bb.ef
  %i.rn = phi i64 [ %i.rm, %bb.ef ], [ 0, %bb.ea ], [ %.pre573.pre, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i330 ], [ %i.pr, %bb.ee ]
  %i.ro = load i64, ptr %i.bk, align 8, !tbaa !235
  %i.rp = sub i64 %i.rn, %i.ro                    ; 2 uses
  store i64 %i.rp, ptr %i.l, align 8, !tbaa !77
  %i.rq = load i64, ptr %i.d, align 8, !tbaa !77, !noalias !1737
  %i.rr = icmp eq i64 %i.rp, %i.rq
  br i1 %i.rr, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit213
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %37)
          to label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit216 unwind label %bb.em

bb.eh:                                            ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit213
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38, !noalias !1738
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %.noexc355 unwind label %bb.em

.noexc355:                                        ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !1738
  invoke void @_ZN7testing13PrintToStringImEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i347 unwind label %bb.ej, !noalias !1738

_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i347: ; preds = %.noexc355
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %37, ptr noundef nonnull @.str.417, ptr noundef nonnull @.str.418, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.ei unwind label %bb.ek

bb.ei:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i347
  %i.rs = load ptr, ptr %2, align 8, !tbaa !74, !noalias !1738 ; 2 uses
  %i.rt = icmp eq ptr %i.rs, %i.cp
  br i1 %i.rt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i351, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i350

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i350: ; preds = %bb.ei
  %i.ru = load i64, ptr %i.cp, align 8, !tbaa !78, !noalias !1738
  %i.rv = add i64 %i.ru, 1
  call void @_ZdlPvm(ptr noundef %i.rs, i64 noundef %i.rv) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i351

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i351: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i350
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !1738
  %i.rw = load ptr, ptr %1, align 8, !tbaa !74, !noalias !1738 ; 2 uses
  %i.rx = icmp eq ptr %i.rw, %i.cq
  br i1 %i.rx, label %.noexc215, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i352

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i352: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i351
  %i.ry = load i64, ptr %i.cq, align 8, !tbaa !78, !noalias !1738
  %i.rz = add i64 %i.ry, 1
  call void @_ZdlPvm(ptr noundef %i.rw, i64 noundef %i.rz) #40
  br label %.noexc215

bb.ej:                                            ; preds = %.noexc355
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i342

bb.ek:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageImlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i347
  %i.sb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sc = load ptr, ptr %2, align 8, !tbaa !74, !noalias !1738 ; 2 uses
  %i.sd = icmp eq ptr %i.sc, %i.cp
  br i1 %i.sd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i342, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i348: ; preds = %bb.ek
  %i.se = load i64, ptr %i.cp, align 8, !tbaa !78, !noalias !1738
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.sf) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i342

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i342: ; preds = %bb.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i348, %bb.ej
  %.pn.i343 = phi { ptr, i32 } [ %i.sa, %bb.ej ], [ %i.sb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i348 ], [ %i.sb, %bb.ek ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !1738
  %i.sg = load ptr, ptr %1, align 8, !tbaa !74, !noalias !1738 ; 2 uses
  %i.sh = icmp eq ptr %i.sg, %i.cq
  br i1 %i.sh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i345, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i344

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i344: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i342
  %i.si = load i64, ptr %i.cq, align 8, !tbaa !78, !noalias !1738
  %i.sj = add i64 %i.si, 1
  call void @_ZdlPvm(ptr noundef %i.sg, i64 noundef %i.sj) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i345

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i345: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i342, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i344
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38, !noalias !1738
  br label %.body356

.noexc215:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i351, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i352
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38, !noalias !1738
  br label %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit216

_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit216: ; preds = %.noexc215, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #38
  %i.sk = load i8, ptr %37, align 8, !tbaa !110, !range !111, !noundef !112
  %i.sl = trunc nuw i8 %i.sk to i1
  br i1 %i.sl, label %bb.ew, label %bb.en

bb.el:                                            ; preds = %_ZN7testing7MessageD2Ev.exit206, %.body301
  %.pn84.pn.pn = phi { ptr, i32 } [ %.pn84.pn, %_ZN7testing7MessageD2Ev.exit206 ], [ %eh.lpad-body302, %.body301 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #38
  br label %bb.fc

bb.em:                                            ; preds = %bb.eh, %bb.eg
  %i.sm = landingpad { ptr, i32 }
          cleanup
  br label %.body356

.body356:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i345, %bb.em
  %eh.lpad-body357 = phi { ptr, i32 } [ %i.sm, %bb.em ], [ %.pn.i343, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i345 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #38
  br label %bb.fb

bb.en:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIlmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit216
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.eo unwind label %bb.es

bb.eo:                                            ; preds = %bb.en
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #38
  %i.sn = load ptr, ptr %i.cr, align 8, !tbaa !113 ; 2 uses
  %.not.i.i217 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i217, label %_ZNK7testing15AssertionResult15failure_messageEv.exit218, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit218

_ZNK7testing15AssertionResult15failure_messageEv.exit218: ; preds = %bb.ep, %bb.eo
  %i.sp = phi ptr [ %i.so, %bb.ep ], [ @.str.57, %bb.eo ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %40, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 2753, ptr noundef %i.sp)
          to label %bb.eq unwind label %bb.et

bb.eq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit218
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull align 8 dereferenceable(8) %39)
          to label %bb.er unwind label %bb.eu

end_hunk_8
begin_hunk_9_@_ZN30CordTest_ExpectedChecksum_Test8TestBodyEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.bnu, i64 noundef %i.bnx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1776

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1776: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i1773, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i1775
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38, !noalias !2055
  br label %.body1787

.noexc1102:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1782, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1783
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38, !noalias !2055
  br label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit1103

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit1103: ; preds = %.noexc1102, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i1100
  %i.bny = load i8, ptr %181, align 8, !tbaa !110, !range !111, !noundef !112
  %i.bnz = trunc nuw i8 %i.bny to i1
  br i1 %i.bnz, label %bb.yw, label %bb.yn

bb.yk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit1091, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083
  %.pn396.pn.pn = phi { ptr, i32 } [ %.pn396.pn, %_ZN7testing7MessageD2Ev.exit1091 ], [ %.pn394, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1083 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %176) #38
  br label %bb.ant

bb.yl:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit1096
  %i.boa = landingpad { ptr, i32 }
          cleanup
  br label %bb.ans

bb.ym:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i1097, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i1100
  %i.bob = landingpad { ptr, i32 }
          cleanup
  br label %.body1787

bb.yn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit1103
  call void @llvm.lifetime.start.p0(ptr nonnull %182) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %182)
          to label %bb.yo unwind label %bb.ys

bb.yo:                                            ; preds = %bb.yn
  call void @llvm.lifetime.start.p0(ptr nonnull %183) #38
  %i.boc = load ptr, ptr %i.ff, align 8, !tbaa !113 ; 2 uses
  %.not.i.i1104 = icmp eq ptr %i.boc, null
  br i1 %.not.i.i1104, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1105, label %bb.yp

bb.yp:                                            ; preds = %bb.yo
  %i.bod = load ptr, ptr %i.boc, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1105

_ZNK7testing15AssertionResult15failure_messageEv.exit1105: ; preds = %bb.yp, %bb.yo
  %i.boe = phi ptr [ %i.bod, %bb.yp ], [ @.str.57, %bb.yo ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %183, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 3252, ptr noundef %i.boe)
          to label %bb.yq unwind label %bb.yt

bb.yq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1105
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %183, ptr noundef nonnull align 8 dereferenceable(8) %182)
          to label %bb.yr unwind label %bb.yu

bb.yr:                                            ; preds = %bb.yq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %183) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #38
  %i.bof = load ptr, ptr %182, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1106 = icmp eq ptr %i.bof, null
  br i1 %.not.i.i1106, label %_ZN7testing7MessageD2Ev.exit1108, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1107

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1107: ; preds = %bb.yr
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !73
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 8
  %i.boi = load ptr, ptr %i.boh, align 8
  call void %i.boi(ptr noundef nonnull align 8 dereferenceable(128) %i.bof) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit1108

_ZN7testing7MessageD2Ev.exit1108:                 ; preds = %bb.yr, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1107
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #38
  br label %bb.yw

bb.ys:                                            ; preds = %bb.yn
  %i.boj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1111

bb.yt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1105
  %i.bok = landingpad { ptr, i32 }
          cleanup
  br label %bb.yv

bb.yu:                                            ; preds = %bb.yq
  %i.bol = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %183) #38
  br label %bb.yv

bb.yv:                                            ; preds = %bb.yu, %bb.yt
  %.pn400 = phi { ptr, i32 } [ %i.bol, %bb.yu ], [ %i.bok, %bb.yt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %183) #38
  %i.bom = load ptr, ptr %182, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1109 = icmp eq ptr %i.bom, null
  br i1 %.not.i.i1109, label %_ZN7testing7MessageD2Ev.exit1111, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1110

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1110: ; preds = %bb.yv
  %i.bon = load ptr, ptr %i.bom, align 8, !tbaa !73
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 8
  %i.bop = load ptr, ptr %i.boo, align 8
  call void %i.bop(ptr noundef nonnull align 8 dereferenceable(128) %i.bom) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit1111

_ZN7testing7MessageD2Ev.exit1111:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1110, %bb.yv, %bb.ys
  %.pn400.pn = phi { ptr, i32 } [ %i.boj, %bb.ys ], [ %.pn400, %bb.yv ], [ %.pn400, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %182) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %181) #38
  br label %.body1787

bb.yw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit1103, %_ZN7testing7MessageD2Ev.exit1108
  %i.boq = load ptr, ptr %i.ff, align 8, !tbaa !113 ; 4 uses
  %.not.i.i1112 = icmp eq ptr %i.boq, null
  br i1 %.not.i.i1112, label %bb.yy, label %bb.yx

bb.yx:                                            ; preds = %bb.yw
  %i.bor = load ptr, ptr %i.boq, align 8, !tbaa !74 ; 2 uses
  %i.bos = getelementptr inbounds nuw i8, ptr %i.boq, i64 16 ; 2 uses
  %i.bot = icmp eq ptr %i.bor, %i.bos
  br i1 %i.bot, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1113: ; preds = %bb.yx
  %i.bou = load i64, ptr %i.bos, align 8, !tbaa !78
  %i.bov = add i64 %i.bou, 1
  call void @_ZdlPvm(ptr noundef %i.bor, i64 noundef %i.bov) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1114

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1114: ; preds = %bb.yx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1113
  call void @_ZdlPvm(ptr noundef nonnull %i.boq, i64 noundef 32) #40
  br label %bb.yy

bb.yy:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1114, %bb.yw
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %184) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2056)
  call void @llvm.experimental.noalias.scope.decl(metadata !2057)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %184, i8 0, i64 40, i1 false), !alias.scope !2058
  store i32 -1, ptr %i.fj, align 8, !tbaa !151, !alias.scope !2058
  %i.bow = load i8, ptr %129, align 8, !tbaa !78, !noalias !2058 ; 4 uses
  %i.box = trunc i8 %i.bow to i1                  ; 2 uses
  %i.boy = load ptr, ptr %i.cy, align 8, !noalias !2058 ; 7 uses
  %.not8.i.i.i = icmp ne ptr %i.boy, null
  %.not.not.i.i.i1117 = select i1 %i.box, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i1117, label %bb.yz, label %bb.zm

bb.yz:                                            ; preds = %bb.yy
  %i.boz = load i64, ptr %i.boy, align 8, !tbaa !129, !noalias !2058 ; 3 uses
  store i64 %i.boz, ptr %i.fh, align 8, !tbaa !150, !alias.scope !2058
  %.not7.i.i.i = icmp eq i64 %i.boz, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.za, !prof !90

bb.za:                                            ; preds = %bb.yz
  %i.bpa = getelementptr inbounds nuw i8, ptr %i.boy, i64 12
  %i.bpb = load i8, ptr %i.bpa, align 4, !tbaa !122, !noalias !2058 ; 2 uses
  %i.bpc = icmp eq i8 %i.bpb, 2
  br i1 %i.bpc, label %bb.zb, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !90

bb.zb:                                            ; preds = %bb.za
  %i.bpd = getelementptr inbounds nuw i8, ptr %i.boy, i64 16
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !206, !noalias !2058 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bpe, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !122, !noalias !2058
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.zb, %bb.za
  %i.bpf = phi i8 [ %.pre.i.i.i.i, %bb.zb ], [ %i.bpb, %bb.za ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.bpe, %bb.zb ], [ %i.boy, %bb.za ] ; 11 uses
  %i.bpg = icmp eq i8 %i.bpf, 3
  br i1 %i.bpg, label %bb.zc, label %bb.zh

bb.zc:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.bph = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.bpi = load i8, ptr %i.bph, align 1, !tbaa !78, !noalias !2058 ; 4 uses
  %i.bpj = zext i8 %i.bpi to i32
  store i32 %i.bpj, ptr %i.fj, align 8, !tbaa !151, !alias.scope !2058
  %i.bpk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.bpl = load i8, ptr %i.bpk, align 1, !noalias !2058 ; 2 uses
  %i.bpm = zext i8 %i.bpi to i64                  ; 5 uses
  %i.bpn = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.bpm
  store ptr %.0.i.i.i.i.i, ptr %i.bpn, align 8, !tbaa !212, !alias.scope !2058
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.bpm
  store i8 %i.bpl, ptr %i.bpo, align 1, !tbaa !78, !alias.scope !2058
  %.018.i.i.i.i.i.i.i = zext i8 %i.bpl to i64     ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bpi, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.zc
  %xtraiter = and i64 %i.bpm, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.bpm, -1 ; 3 uses
  %i.bpp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bpq = getelementptr inbounds nuw [8 x i8], ptr %i.bpp, i64 %.018.i.i.i.i.i.i.i
  %i.bpr = load ptr, ptr %i.bpq, align 8, !tbaa !152, !noalias !2058 ; 3 uses
  %i.bps = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.bpr, ptr %i.bps, align 8, !tbaa !212, !alias.scope !2058
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpr, i64 14
  %i.bpu = load i8, ptr %i.bpt, align 1, !noalias !2058 ; 2 uses
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.bpu, ptr %i.bpv, align 1, !tbaa !78, !alias.scope !2058
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.bpu to i64  ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.bpm, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bpr, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bpw = icmp eq i8 %i.bpi, 1
  br i1 %i.bpw, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.bqg, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.bpy = getelementptr inbounds nuw [8 x i8], ptr %i.bpx, i64 %.021.i.i.i.i.i.i.i
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !152, !noalias !2058 ; 3 uses
  %i.bqa = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.bpz, ptr %i.bqa, align 8, !tbaa !212, !alias.scope !2058
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bpz, i64 14
  %i.bqc = load i8, ptr %i.bqb, align 1, !noalias !2058 ; 2 uses
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.bqc, ptr %i.bqd, align 1, !tbaa !78, !alias.scope !2058
  %.0.i.i.i.i.i.i.i = zext i8 %i.bqc to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %i.bpz, i64 16
  %i.bqf = getelementptr inbounds nuw [8 x i8], ptr %i.bqe, i64 %.0.i.i.i.i.i.i.i
  %i.bqg = load ptr, ptr %i.bqf, align 8, !tbaa !152, !noalias !2058 ; 3 uses
  %i.bqh = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.bqg, ptr %i.bqh, align 8, !tbaa !212, !alias.scope !2058
  %i.bqi = getelementptr inbounds nuw i8, ptr %i.bqg, i64 14
  %i.bqj = load i8, ptr %i.bqi, align 1, !noalias !2058 ; 2 uses
  %i.bqk = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.bqj, ptr %i.bqk, align 1, !tbaa !78, !alias.scope !2058
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.bqj to i64     ; 2 uses
  %i.bql = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.bql, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.zc
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.zc ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bqm = load ptr, ptr %i.fk, align 8, !tbaa !212, !alias.scope !2058
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqm, i64 16
  %i.bqo = getelementptr inbounds nuw [8 x i8], ptr %i.bqn, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.bqp = load ptr, ptr %i.bqo, align 8, !tbaa !152, !noalias !2058 ; 5 uses
  %i.bqq = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !2058
  %i.bqr = load i64, ptr %i.bqp, align 8, !tbaa !129, !noalias !2058 ; 2 uses
  %i.bqs = sub i64 %i.bqq, %i.bqr                 ; 2 uses
  store i64 %i.bqs, ptr %i.fi, align 8, !tbaa !213, !alias.scope !2058
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.bqp, i64 12
  %i.bqu = load i8, ptr %i.bqt, align 4, !tbaa !122, !noalias !2058 ; 2 uses
  %i.bqv = icmp eq i8 %i.bqu, 1
  br i1 %i.bqv, label %bb.zd, label %bb.ze

bb.zd:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqp, i64 16
  %i.bqx = load i64, ptr %i.bqw, align 8, !tbaa !208, !noalias !2058
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bqp, i64 24
  %i.bqz = load ptr, ptr %i.bqy, align 8, !tbaa !209, !noalias !2058 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bqz, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !122, !noalias !2058
  br label %bb.ze

bb.ze:                                            ; preds = %bb.zd, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bra = phi i8 [ %.pre.i.i.i.i.i.i, %bb.zd ], [ %i.bqu, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.bqz, %bb.zd ], [ %i.bqp, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.bqx, %bb.zd ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.brb = icmp ugt i8 %i.bra, 5
  br i1 %i.brb, label %bb.zf, label %bb.zg

bb.zf:                                            ; preds = %bb.ze
  %i.brc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.zg:                                            ; preds = %bb.ze
  %i.brd = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.bre = load ptr, ptr %i.brd, align 8, !tbaa !214, !noalias !2058
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.zg, %bb.zf
  %.pn.i.i.i.i.i.i = phi ptr [ %i.brc, %bb.zf ], [ %i.bre, %bb.zg ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.fh, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.zh:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  store ptr %.0.i.i.i.i.i, ptr %i.fg, align 8, !tbaa !215, !alias.scope !2058
  %i.brf = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !2058
  %i.brg = icmp eq i8 %i.bpf, 1
  br i1 %i.brg, label %bb.zi, label %bb.zj

bb.zi:                                            ; preds = %bb.zh
  %i.brh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bri = load i64, ptr %i.brh, align 8, !tbaa !208, !noalias !2058
  %i.brj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.brk = load ptr, ptr %i.brj, align 8, !tbaa !209, !noalias !2058 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.brk, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !122, !noalias !2058
  br label %bb.zj

bb.zj:                                            ; preds = %bb.zi, %bb.zh
  %i.brl = phi i8 [ %.pre.i.i.i.i.i, %bb.zi ], [ %i.bpf, %bb.zh ]
  %.010.i.i.i.i.i = phi ptr [ %i.brk, %bb.zi ], [ %.0.i.i.i.i.i, %bb.zh ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.bri, %bb.zi ], [ 0, %bb.zh ]
  %i.brm = icmp ugt i8 %i.brl, 5
  br i1 %i.brm, label %bb.zk, label %bb.zl

bb.zk:                                            ; preds = %bb.zj
  %i.brn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.zl:                                            ; preds = %bb.zj
  %i.bro = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.brp = load ptr, ptr %i.bro, align 8, !tbaa !214, !noalias !2058
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.zl, %bb.zk
  %.pn.i.i.i.i.i = phi ptr [ %i.brn, %bb.zk ], [ %i.brp, %bb.zl ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.zm:                                            ; preds = %bb.yy
  %i.brq = sext i8 %i.bow to i64
  %i.brr = lshr i64 %i.brq, 1                     ; 3 uses
  store i64 %i.brr, ptr %i.fh, align 8, !tbaa !150, !alias.scope !2058
  %spec.select.i.i.i.i = select i1 %i.box, ptr null, ptr %i.dj
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.zm
  %.sink4039 = phi i64 [ %i.brr, %bb.zm ], [ %i.brf, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bqr, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %spec.select.i.i.i.i.sink = phi ptr [ %spec.select.i.i.i.i, %bb.zm ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %i.brs = phi i64 [ 0, %bb.zm ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bqs, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.brt = phi i64 [ %i.brr, %bb.zm ], [ %i.boz, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  store i64 %.sink4039, ptr %184, align 8, !tbaa !77, !alias.scope !2058
  store ptr %spec.select.i.i.i.i.sink, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !140, !alias.scope !2058
  %.not23113392 = icmp eq i64 %i.brt, 0
  br i1 %.not23113392, label %._crit_edge, label %.lr.ph

.body1787:                                        ; preds = %bb.ym, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1776, %_ZN7testing7MessageD2Ev.exit1111
  %.pn400.pn.pn = phi { ptr, i32 } [ %.pn400.pn, %_ZN7testing7MessageD2Ev.exit1111 ], [ %i.bob, %bb.ym ], [ %.pn.i1774, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1776 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %181) #38
  br label %bb.ans

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.bru = phi i64 [ %i.bvq, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ], [ %i.brs, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ] ; 3 uses
  %.sroa.2.0.copyload.i1120 = phi ptr [ %.sroa.2.0.copyload.i11203411, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ], [ %spec.select.i.i.i.i.sink, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ] ; 2 uses
  %.sroa.0.0.copyload.i1118 = phi i64 [ %.sroa.0.0.copyload.i11183408, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ], [ %.sink4039, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ] ; 3 uses
  %i.brv = phi i64 [ %i.bvp, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ], [ %i.brt, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ] ; 2 uses
  %.0783393 = phi i1 [ false, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ], [ true, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ]
  br i1 %.0783393, label %bb.zn, label %bb.aaa

bb.zn:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %185) #38
  %i.brw = icmp ult i64 %.sroa.0.0.copyload.i1118, 5
  br i1 %i.brw, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread2285, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread2285: ; preds = %bb.zn
  store i8 0, ptr %185, align 8, !tbaa !110
  store ptr null, ptr %i.fm, align 8, !tbaa !133
  store i8 1, ptr %i.fn, align 8, !tbaa !135
  br label %bb.zo

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit: ; preds = %bb.zn
  %i.brx = load i32, ptr %.sroa.2.0.copyload.i1120, align 1
  %i.bry = xor i32 %i.brx, 1684234849
  %i.brz = getelementptr i8, ptr %.sroa.2.0.copyload.i1120, i64 4
  %i.bsa = load i8, ptr %i.brz, align 1
  %i.bsb = zext i8 %i.bsa to i32
  %i.bsc = xor i32 %i.bsb, 101
  %i.bsd = or i32 %i.bry, %i.bsc
  %i.bse = icmp ne i32 %i.bsd, 0
  %i.bsf = zext i1 %i.bse to i32
  %i.bsg = icmp eq i32 %i.bsf, 0                  ; 2 uses
  %i.bsh = zext i1 %i.bsg to i8
  store i8 %i.bsh, ptr %185, align 8, !tbaa !110
  store ptr null, ptr %i.fm, align 8, !tbaa !133
  store i8 1, ptr %i.fn, align 8, !tbaa !135
  br i1 %i.bsg, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1142, label %bb.zo

bb.zo:                                            ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.thread2285, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %186) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %186)
          to label %bb.zp unwind label %bb.zt

bb.zp:                                            ; preds = %bb.zo
  call void @llvm.lifetime.start.p0(ptr nonnull %187) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %189) #38
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %189, ptr noundef nonnull align 8 dereferenceable(16) %185, ptr noundef nonnull @.str.494, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
          to label %bb.zq unwind label %bb.zu

bb.zq:                                            ; preds = %bb.zp
  %i.bsi = load ptr, ptr %189, align 8, !tbaa !74
  %i.bsj = load i64, ptr %i.fo, align 8, !tbaa !76
  store i64 %i.bsj, ptr %188, align 8
  store ptr %i.bsi, ptr %i.fp, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %187, i32 noundef 1, i64 63, ptr nonnull @.str.1, i32 noundef 3257, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %188)
          to label %bb.zr unwind label %bb.zv

bb.zr:                                            ; preds = %bb.zq
end_hunk_9
begin_hunk_10_@_ZN30CordTest_ExpectedChecksum_Test8TestBodyEv:bb.a
  %i.btu = load i8, ptr %i.btt, align 1, !tbaa !78
  %i.btv = zext i8 %i.btu to i64
  %i.btw = add nsw i64 %i.btv, -1
  %i.btx = icmp eq i64 %i.btw, %i.bts
  br i1 %i.btx, label %.preheader2313, label %bb.aag

.preheader2313:                                   ; preds = %bb.aad, %.preheader2313
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader2313 ], [ 1, %bb.aad ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader2313 ], [ 0, %bb.aad ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.btm
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.bty = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv.next.i.i.i.i.i
  %i.btz = load ptr, ptr %i.bty, align 8, !tbaa !212 ; 2 uses
  %i.bua = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next.i.i.i.i.i
  %i.bub = load i8, ptr %i.bua, align 1, !tbaa !78
  %i.buc = zext i8 %i.bub to i64
  %i.bud = add nuw nsw i64 %i.buc, 1              ; 3 uses
  %i.bue = getelementptr inbounds nuw i8, ptr %i.btz, i64 15
  %i.buf = load i8, ptr %i.bue, align 1, !tbaa !78
  %i.bug = zext i8 %i.buf to i64
  %i.buh = icmp eq i64 %i.bud, %i.bug
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.buh, label %.preheader2313, label %bb.aae, !llvm.loop !11

bb.aae:                                           ; preds = %.preheader2313
  %i.bui = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv.next.i.i.i.i.i
  %i.buj = trunc i64 %i.bud to i8
  store i8 %i.buj, ptr %i.bui, align 1, !tbaa !78
  %i.buk = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.aaf

bb.aaf:                                           ; preds = %bb.aaf, %bb.aae
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i, %bb.aaf ], [ %i.buk, %bb.aae ] ; 2 uses
  %.017.i.i.i.i.i = phi ptr [ %i.bun, %bb.aaf ], [ %i.btz, %bb.aae ]
  %.016.i.i.i.i.i = phi i64 [ %i.bur, %bb.aaf ], [ %i.bud, %bb.aae ]
  %i.bul = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 16
  %i.bum = getelementptr inbounds nuw [8 x i8], ptr %i.bul, i64 %.016.i.i.i.i.i
  %i.bun = load ptr, ptr %i.bum, align 8, !tbaa !152 ; 4 uses
  %indvars.iv.next41.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i, -1 ; 3 uses
  %i.buo = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %indvars.iv.next41.i.i.i.i.i
  store ptr %i.bun, ptr %i.buo, align 8, !tbaa !212
  %i.bup = getelementptr inbounds nuw i8, ptr %i.bun, i64 14
  %i.buq = load i8, ptr %i.bup, align 1, !tbaa !78 ; 2 uses
  %i.bur = zext i8 %i.buq to i64                  ; 2 uses
  %i.bus = getelementptr inbounds i8, ptr %i.fl, i64 %indvars.iv.next41.i.i.i.i.i
  store i8 %i.buq, ptr %i.bus, align 1, !tbaa !78
  %i.but = icmp sgt i64 %indvars.iv40.i.i.i.i.i, 1
  br i1 %i.but, label %bb.aaf, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, !llvm.loop !12

bb.aag:                                           ; preds = %bb.aad
  %i.buu = add i8 %i.btr, 1                       ; 2 uses
  store i8 %i.buu, ptr %i.fl, align 4, !tbaa !78
  %i.buv = zext i8 %i.buu to i64
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i: ; preds = %bb.aaf
  %.pre.i.i.i = load i64, ptr %i.fi, align 8, !tbaa !213
  br label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i, %bb.aag
  %i.buw = phi i64 [ %i.bru, %bb.aag ], [ %.pre.i.i.i, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa12.sink.i.i.i.i = phi ptr [ %i.btq, %bb.aag ], [ %i.bun, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %.lcssa.sink.i.i.i.i = phi i64 [ %i.buv, %bb.aag ], [ %i.bur, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.loopexit.i.i.i ]
  %i.bux = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i.i.i.i, i64 16
  %i.buy = getelementptr inbounds nuw [8 x i8], ptr %i.bux, i64 %.lcssa.sink.i.i.i.i
  %i.buz = load ptr, ptr %i.buy, align 8, !tbaa !152 ; 5 uses
  %i.bva = load i64, ptr %i.buz, align 8, !tbaa !129 ; 2 uses
  %i.bvb = sub i64 %i.buw, %i.bva                 ; 2 uses
  store i64 %i.bvb, ptr %i.fi, align 8, !tbaa !213
  %i.bvc = getelementptr inbounds nuw i8, ptr %i.buz, i64 12
  %i.bvd = load i8, ptr %i.bvc, align 4, !tbaa !122 ; 2 uses
  %i.bve = icmp eq i8 %i.bvd, 1
  br i1 %i.bve, label %bb.aah, label %bb.aai

bb.aah:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.bvf = getelementptr inbounds nuw i8, ptr %i.buz, i64 16
  %i.bvg = load i64, ptr %i.bvf, align 8, !tbaa !208
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.buz, i64 24
  %i.bvi = load ptr, ptr %i.bvh, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert.i.i.i.i1144 = getelementptr inbounds nuw i8, ptr %i.bvi, i64 12
  %.pre.i.i.i.i1145 = load i8, ptr %.phi.trans.insert.i.i.i.i1144, align 4, !tbaa !122
  br label %bb.aai

bb.aai:                                           ; preds = %bb.aah, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i
  %i.bvj = phi i8 [ %.pre.i.i.i.i1145, %bb.aah ], [ %i.bvd, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.bvi, %bb.aah ], [ %i.buz, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.bvg, %bb.aah ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ]
  %i.bvk = icmp ugt i8 %i.bvj, 5
  br i1 %i.bvk, label %bb.aaj, label %bb.aak

bb.aaj:                                           ; preds = %bb.aai
  %i.bvl = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

bb.aak:                                           ; preds = %bb.aai
  %i.bvm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.bvn = load ptr, ptr %i.bvm, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i: ; preds = %bb.aak, %bb.aaj
  %.pn.i.i.i.i = phi ptr [ %i.bvl, %bb.aaj ], [ %i.bvn, %bb.aak ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  %.pre3414.pre = load i64, ptr %i.fh, align 8, !tbaa !150
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i

_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i, %bb.aac
  %.pre3414 = phi i64 [ %.pre3414.pre, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ %i.btj, %bb.aac ]
  %i.bvo = phi i64 [ %i.bvb, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %bb.aac ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.bva, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ 0, %bb.aac ] ; 2 uses
  %.sroa.3.0.i.i.i = phi ptr [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i ], [ null, %bb.aac ] ; 2 uses
  store i64 %.sroa.0.0.i.i.i, ptr %184, align 8, !tbaa !77
  store ptr %.sroa.3.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !140
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i: ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, %bb.aab
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %184, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit: ; preds = %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i
  %i.bvp = phi i64 [ %i.btj, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.pre3414, %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i ] ; 2 uses
  %i.bvq = phi i64 [ %i.bru, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %i.bvo, %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.sroa.2.0.copyload.i11203411 = phi ptr [ null, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.sroa.0.0.copyload.i11183408 = phi i64 [ 0, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.thread.i ], [ %.sroa.0.0.i.i.i, %_ZN4absl12lts_202605264Cord13ChunkIterator12AdvanceBtreeEv.exit.i ]
  %.not2311 = icmp eq i64 %i.bvp, 0
  br i1 %.not2311, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.aaa, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %.pre3415 = load i8, ptr %129, align 8, !tbaa !78
  %.pre3416 = load ptr, ptr %i.cy, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.yz, %._crit_edge.loopexit, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %i.bvr = phi ptr [ %.pre3416, %._crit_edge.loopexit ], [ %i.boy, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %i.boy, %bb.yz ] ; 7 uses
  %i.bvs = phi i8 [ %.pre3415, %._crit_edge.loopexit ], [ %i.bow, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit ], [ %i.bow, %bb.yz ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %184) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %190) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %190, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.fu, align 8, !tbaa !151
  %i.bvt = trunc i8 %i.bvs to i1                  ; 2 uses
  %.not8.i.i1790 = icmp ne ptr %i.bvr, null
  %.not.not.i.i1791 = select i1 %i.bvt, i1 %.not8.i.i1790, i1 false
  br i1 %.not.not.i.i1791, label %bb.aal, label %bb.aay

bb.aal:                                           ; preds = %._crit_edge
  %i.bvu = load i64, ptr %i.bvr, align 8, !tbaa !129 ; 3 uses
  store i64 %i.bvu, ptr %i.fs, align 8, !tbaa !150
  %.not7.i.i1794 = icmp eq i64 %i.bvu, 0
  br i1 %.not7.i.i1794, label %._crit_edge3397, label %bb.aam, !prof !90

bb.aam:                                           ; preds = %bb.aal
  %i.bvv = getelementptr inbounds nuw i8, ptr %i.bvr, i64 12
  %i.bvw = load i8, ptr %i.bvv, align 4, !tbaa !122 ; 2 uses
  %i.bvx = icmp eq i8 %i.bvw, 2
  br i1 %i.bvx, label %bb.aan, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1795, !prof !90

bb.aan:                                           ; preds = %bb.aam
  %i.bvy = getelementptr inbounds nuw i8, ptr %i.bvr, i64 16
  %i.bvz = load ptr, ptr %i.bvy, align 8, !tbaa !206 ; 2 uses
  %.phi.trans.insert.i.i.i1825 = getelementptr inbounds nuw i8, ptr %i.bvz, i64 12
  %.pre.i.i.i1826 = load i8, ptr %.phi.trans.insert.i.i.i1825, align 4, !tbaa !122
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1795

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1795: ; preds = %bb.aan, %bb.aam
  %i.bwa = phi i8 [ %.pre.i.i.i1826, %bb.aan ], [ %i.bvw, %bb.aam ] ; 3 uses
  %.0.i.i.i.i1796 = phi ptr [ %i.bvz, %bb.aan ], [ %i.bvr, %bb.aam ] ; 11 uses
  %i.bwb = icmp eq i8 %i.bwa, 3
  br i1 %i.bwb, label %bb.aao, label %bb.aat

bb.aao:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1795
  %i.bwc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1796, i64 13
  %i.bwd = load i8, ptr %i.bwc, align 1, !tbaa !78 ; 4 uses
  %i.bwe = zext i8 %i.bwd to i32
  store i32 %i.bwe, ptr %i.fu, align 8, !tbaa !151
  %i.bwf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1796, i64 14
  %i.bwg = load i8, ptr %i.bwf, align 1           ; 2 uses
  %i.bwh = zext i8 %i.bwd to i64                  ; 5 uses
  %i.bwi = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.bwh
  store ptr %.0.i.i.i.i1796, ptr %i.bwi, align 8, !tbaa !212
  %i.bwj = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.bwh
  store i8 %i.bwg, ptr %i.bwj, align 1, !tbaa !78
  %.018.i.i.i.i.i.i1808 = zext i8 %i.bwg to i64   ; 3 uses
  %.not.i.i.i.i.i.i1809 = icmp eq i8 %i.bwd, 0
  br i1 %.not.i.i.i.i.i.i1809, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1816, label %.lr.ph.i.i.i.i.i.i1810.preheader

.lr.ph.i.i.i.i.i.i1810.preheader:                 ; preds = %bb.aao
  %xtraiter4055 = and i64 %i.bwh, 1
  %lcmp.mod4056.not = icmp eq i64 %xtraiter4055, 0
  br i1 %lcmp.mod4056.not, label %.lr.ph.i.i.i.i.i.i1810.prol.loopexit, label %.lr.ph.i.i.i.i.i.i1810.prol

.lr.ph.i.i.i.i.i.i1810.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i1810.preheader
  %indvars.iv.next.i.i.i.i.i.i1814.prol = add nsw i64 %i.bwh, -1 ; 3 uses
  %i.bwk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1796, i64 16
  %i.bwl = getelementptr inbounds nuw [8 x i8], ptr %i.bwk, i64 %.018.i.i.i.i.i.i1808
  %i.bwm = load ptr, ptr %i.bwl, align 8, !tbaa !152 ; 3 uses
  %i.bwn = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv.next.i.i.i.i.i.i1814.prol
  store ptr %i.bwm, ptr %i.bwn, align 8, !tbaa !212
  %i.bwo = getelementptr inbounds nuw i8, ptr %i.bwm, i64 14
  %i.bwp = load i8, ptr %i.bwo, align 1           ; 2 uses
  %i.bwq = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv.next.i.i.i.i.i.i1814.prol
  store i8 %i.bwp, ptr %i.bwq, align 1, !tbaa !78
  %.0.i.i.i.i.i.i1815.prol = zext i8 %i.bwp to i64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i1810.prol.loopexit

.lr.ph.i.i.i.i.i.i1810.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i1810.prol, %.lr.ph.i.i.i.i.i.i1810.preheader
  %indvars.iv.i.i.i.i.i.i1811.unr = phi i64 [ %i.bwh, %.lr.ph.i.i.i.i.i.i1810.preheader ], [ %indvars.iv.next.i.i.i.i.i.i1814.prol, %.lr.ph.i.i.i.i.i.i1810.prol ]
  %.021.i.i.i.i.i.i1812.unr = phi i64 [ %.018.i.i.i.i.i.i1808, %.lr.ph.i.i.i.i.i.i1810.preheader ], [ %.0.i.i.i.i.i.i1815.prol, %.lr.ph.i.i.i.i.i.i1810.prol ]
  %.01619.i.i.i.i.i.i1813.unr = phi ptr [ %.0.i.i.i.i1796, %.lr.ph.i.i.i.i.i.i1810.preheader ], [ %i.bwm, %.lr.ph.i.i.i.i.i.i1810.prol ]
  %.0.i.i.i.i.i.i1815.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i1810.preheader ], [ %.0.i.i.i.i.i.i1815.prol, %.lr.ph.i.i.i.i.i.i1810.prol ]
  %i.bwr = icmp eq i8 %i.bwd, 1
  br i1 %i.bwr, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1816, label %.lr.ph.i.i.i.i.i.i1810

.lr.ph.i.i.i.i.i.i1810:                           ; preds = %.lr.ph.i.i.i.i.i.i1810.prol.loopexit, %.lr.ph.i.i.i.i.i.i1810
  %indvars.iv.i.i.i.i.i.i1811 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i1814.1, %.lr.ph.i.i.i.i.i.i1810 ], [ %indvars.iv.i.i.i.i.i.i1811.unr, %.lr.ph.i.i.i.i.i.i1810.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i1812 = phi i64 [ %.0.i.i.i.i.i.i1815.1, %.lr.ph.i.i.i.i.i.i1810 ], [ %.021.i.i.i.i.i.i1812.unr, %.lr.ph.i.i.i.i.i.i1810.prol.loopexit ]
  %.01619.i.i.i.i.i.i1813 = phi ptr [ %i.bxb, %.lr.ph.i.i.i.i.i.i1810 ], [ %.01619.i.i.i.i.i.i1813.unr, %.lr.ph.i.i.i.i.i.i1810.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i1814 = add nsw i64 %indvars.iv.i.i.i.i.i.i1811, -1 ; 2 uses
  %i.bws = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i1813, i64 16
  %i.bwt = getelementptr inbounds nuw [8 x i8], ptr %i.bws, i64 %.021.i.i.i.i.i.i1812
  %i.bwu = load ptr, ptr %i.bwt, align 8, !tbaa !152 ; 3 uses
  %i.bwv = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv.next.i.i.i.i.i.i1814
  store ptr %i.bwu, ptr %i.bwv, align 8, !tbaa !212
  %i.bww = getelementptr inbounds nuw i8, ptr %i.bwu, i64 14
  %i.bwx = load i8, ptr %i.bww, align 1           ; 2 uses
  %i.bwy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv.next.i.i.i.i.i.i1814
  store i8 %i.bwx, ptr %i.bwy, align 1, !tbaa !78
  %.0.i.i.i.i.i.i1815 = zext i8 %i.bwx to i64
  %indvars.iv.next.i.i.i.i.i.i1814.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i1811, -2 ; 3 uses
  %i.bwz = getelementptr inbounds nuw i8, ptr %i.bwu, i64 16
  %i.bxa = getelementptr inbounds nuw [8 x i8], ptr %i.bwz, i64 %.0.i.i.i.i.i.i1815
  %i.bxb = load ptr, ptr %i.bxa, align 8, !tbaa !152 ; 3 uses
  %i.bxc = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %indvars.iv.next.i.i.i.i.i.i1814.1
  store ptr %i.bxb, ptr %i.bxc, align 8, !tbaa !212
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxb, i64 14
  %i.bxe = load i8, ptr %i.bxd, align 1           ; 2 uses
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv.next.i.i.i.i.i.i1814.1
  store i8 %i.bxe, ptr %i.bxf, align 1, !tbaa !78
  %.0.i.i.i.i.i.i1815.1 = zext i8 %i.bxe to i64   ; 2 uses
  %i.bxg = icmp sgt i64 %indvars.iv.i.i.i.i.i.i1811, 2
  br i1 %i.bxg, label %.lr.ph.i.i.i.i.i.i1810, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1816, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1816: ; preds = %.lr.ph.i.i.i.i.i.i1810.prol.loopexit, %.lr.ph.i.i.i.i.i.i1810, %bb.aao
  %.0.lcssa.i.i.i.i.i.i1817 = phi i64 [ %.018.i.i.i.i.i.i1808, %bb.aao ], [ %.0.i.i.i.i.i.i1815.lcssa.unr, %.lr.ph.i.i.i.i.i.i1810.prol.loopexit ], [ %.0.i.i.i.i.i.i1815.1, %.lr.ph.i.i.i.i.i.i1810 ]
  %i.bxh = load ptr, ptr %i.fv, align 8, !tbaa !212
  %i.bxi = getelementptr inbounds nuw i8, ptr %i.bxh, i64 16
  %i.bxj = getelementptr inbounds nuw [8 x i8], ptr %i.bxi, i64 %.0.lcssa.i.i.i.i.i.i1817
  %i.bxk = load ptr, ptr %i.bxj, align 8, !tbaa !152 ; 5 uses
  %i.bxl = load i64, ptr %.0.i.i.i.i1796, align 8, !tbaa !129
  %i.bxm = load i64, ptr %i.bxk, align 8, !tbaa !129 ; 2 uses
  %i.bxn = sub i64 %i.bxl, %i.bxm                 ; 2 uses
  store i64 %i.bxn, ptr %i.ft, align 8, !tbaa !213
  %i.bxo = getelementptr inbounds nuw i8, ptr %i.bxk, i64 12
  %i.bxp = load i8, ptr %i.bxo, align 4, !tbaa !122 ; 2 uses
  %i.bxq = icmp eq i8 %i.bxp, 1
  br i1 %i.bxq, label %bb.aap, label %bb.aaq

bb.aap:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1816
  %i.bxr = getelementptr inbounds nuw i8, ptr %i.bxk, i64 16
  %i.bxs = load i64, ptr %i.bxr, align 8, !tbaa !208
  %i.bxt = getelementptr inbounds nuw i8, ptr %i.bxk, i64 24
  %i.bxu = load ptr, ptr %i.bxt, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i1823 = getelementptr inbounds nuw i8, ptr %i.bxu, i64 12
  %.pre.i.i.i.i.i1824 = load i8, ptr %.phi.trans.insert.i.i.i.i.i1823, align 4, !tbaa !122
  br label %bb.aaq

bb.aaq:                                           ; preds = %bb.aap, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1816
  %i.bxv = phi i8 [ %.pre.i.i.i.i.i1824, %bb.aap ], [ %i.bxp, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1816 ]
  %.010.i.i.i.i.i1818 = phi ptr [ %i.bxu, %bb.aap ], [ %i.bxk, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1816 ] ; 2 uses
  %.0.i.i.i.i.i1819 = phi i64 [ %i.bxs, %bb.aap ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1816 ]
  %i.bxw = icmp ugt i8 %i.bxv, 5
  br i1 %i.bxw, label %bb.aar, label %bb.aas

bb.aar:                                           ; preds = %bb.aaq
  %i.bxx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i1818, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1820

bb.aas:                                           ; preds = %bb.aaq
  %i.bxy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i1818, i64 16
  %i.bxz = load ptr, ptr %i.bxy, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1820

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1820: ; preds = %bb.aas, %bb.aar
  %.pn.i.i.i.i.i1821 = phi ptr [ %i.bxx, %bb.aar ], [ %i.bxz, %bb.aas ]
  %.sroa.3.0.i.i.i.i.i1822 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i1821, i64 %.0.i.i.i.i.i1819
  %.pre3417.pre = load i64, ptr %i.fs, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit

bb.aat:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1795
  store ptr %.0.i.i.i.i1796, ptr %i.fr, align 8, !tbaa !215
  %i.bya = load i64, ptr %.0.i.i.i.i1796, align 8, !tbaa !129
  %i.byb = icmp eq i8 %i.bwa, 1
  br i1 %i.byb, label %bb.aau, label %bb.aav

bb.aau:                                           ; preds = %bb.aat
  %i.byc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1796, i64 16
  %i.byd = load i64, ptr %i.byc, align 8, !tbaa !208
  %i.bye = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1796, i64 24
  %i.byf = load ptr, ptr %i.bye, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert.i.i.i.i1806 = getelementptr inbounds nuw i8, ptr %i.byf, i64 12
  %.pre.i.i.i.i1807 = load i8, ptr %.phi.trans.insert.i.i.i.i1806, align 4, !tbaa !122
  br label %bb.aav

bb.aav:                                           ; preds = %bb.aau, %bb.aat
  %i.byg = phi i8 [ %.pre.i.i.i.i1807, %bb.aau ], [ %i.bwa, %bb.aat ]
  %.010.i.i.i.i1797 = phi ptr [ %i.byf, %bb.aau ], [ %.0.i.i.i.i1796, %bb.aat ] ; 2 uses
  %.0.i8.i.i.i1798 = phi i64 [ %i.byd, %bb.aau ], [ 0, %bb.aat ]
  %i.byh = icmp ugt i8 %i.byg, 5
  br i1 %i.byh, label %bb.aaw, label %bb.aax

bb.aaw:                                           ; preds = %bb.aav
  %i.byi = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1797, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1799

bb.aax:                                           ; preds = %bb.aav
  %i.byj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1797, i64 16
  %i.byk = load ptr, ptr %i.byj, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1799

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1799: ; preds = %bb.aax, %bb.aaw
  %.pn.i.i.i.i1800 = phi ptr [ %i.byi, %bb.aaw ], [ %i.byk, %bb.aax ]
  %.sroa.3.0.i.i.i.i1801 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i1800, i64 %.0.i8.i.i.i1798
  br label %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit

bb.aay:                                           ; preds = %._crit_edge
  %i.byl = sext i8 %i.bvs to i64
  %i.bym = lshr i64 %i.byl, 1                     ; 3 uses
  store i64 %i.bym, ptr %i.fs, align 8, !tbaa !150
  %spec.select.i.i.i1792 = select i1 %i.bvt, ptr null, ptr %i.dj
  br label %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit

_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1820, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1799, %bb.aay
  %.sink.i.i.i1803.sink = phi i64 [ %i.bym, %bb.aay ], [ %i.bya, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1799 ], [ %i.bxm, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1820 ] ; 2 uses
  %.sroa.3.0.i.sink.i.i.i1804.sink = phi ptr [ %spec.select.i.i.i1792, %bb.aay ], [ %.sroa.3.0.i.i.i.i1801, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1799 ], [ %.sroa.3.0.i.i.i.i.i1822, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1820 ] ; 2 uses
  %i.byn = phi i64 [ 0, %bb.aay ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1799 ], [ %i.bxn, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1820 ]
  %i.byo = phi i64 [ %i.bym, %bb.aay ], [ %i.bvu, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1799 ], [ %.pre3417.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1820 ] ; 2 uses
  store i64 %.sink.i.i.i1803.sink, ptr %190, align 8, !tbaa !77
  store ptr %.sroa.3.0.i.sink.i.i.i1804.sink, ptr %.sroa.4.0..sroa_idx.i.i1793, align 8, !tbaa !140
  %.not23123394 = icmp eq i64 %i.byo, 0
  br i1 %.not23123394, label %._crit_edge3397, label %.lr.ph3396

._crit_edge3397.loopexit:                         ; preds = %bb.aci, %_ZN4absl12lts_202605264Cord12CharIteratorppEv.exit
  %.pre3419 = load i8, ptr %129, align 8, !tbaa !78, !noalias !2059
  %.pre3420 = load ptr, ptr %i.cy, align 8, !noalias !2059
  br label %._crit_edge3397

._crit_edge3397:                                  ; preds = %bb.aal, %._crit_edge3397.loopexit, %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit
  %i.byp = phi ptr [ %.pre3420, %._crit_edge3397.loopexit ], [ %i.bvr, %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit ], [ %i.bvr, %bb.aal ] ; 5 uses
  %i.byq = phi i8 [ %.pre3419, %._crit_edge3397.loopexit ], [ %i.bvs, %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit ], [ %i.bvs, %bb.aal ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %190) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %194) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %195) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %195, i8 0, i64 40, i1 false), !alias.scope !2059
  store i32 -1, ptr %i.gd, align 8, !tbaa !151, !alias.scope !2059
  %i.byr = trunc i8 %i.byq to i1                  ; 2 uses
  %.not8.i.i = icmp ne ptr %i.byp, null
  %.not.not.i.i1147 = select i1 %i.byr, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i1147, label %bb.aaz, label %bb.abm

bb.aaz:                                           ; preds = %._crit_edge3397
  %i.bys = load i64, ptr %i.byp, align 8, !tbaa !129, !noalias !2059 ; 2 uses
  store i64 %i.bys, ptr %i.gb, align 8, !tbaa !150, !alias.scope !2059
  %.not7.i.i = icmp eq i64 %i.bys, 0
  br i1 %.not7.i.i, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit1189.thread2291, label %bb.aba, !prof !90

bb.aba:                                           ; preds = %bb.aaz
  %i.byt = getelementptr inbounds nuw i8, ptr %i.byp, i64 12
  %i.byu = load i8, ptr %i.byt, align 4, !tbaa !122, !noalias !2059 ; 2 uses
  %i.byv = icmp eq i8 %i.byu, 2
  br i1 %i.byv, label %bb.abb, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !90

bb.abb:                                           ; preds = %bb.aba
  %i.byw = getelementptr inbounds nuw i8, ptr %i.byp, i64 16
  %i.byx = load ptr, ptr %i.byw, align 8, !tbaa !206, !noalias !2059 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.byx, i64 12
  %.pre.i.i.i1164 = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !122, !noalias !2059
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.abb, %bb.aba
  %i.byy = phi i8 [ %.pre.i.i.i1164, %bb.abb ], [ %i.byu, %bb.aba ] ; 3 uses
  %.0.i.i.i.i1149 = phi ptr [ %i.byx, %bb.abb ], [ %i.byp, %bb.aba ] ; 11 uses
  %i.byz = icmp eq i8 %i.byy, 3
  br i1 %i.byz, label %bb.abc, label %bb.abh

bb.abc:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.bza = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1149, i64 13
  %i.bzb = load i8, ptr %i.bza, align 1, !tbaa !78, !noalias !2059 ; 4 uses
  %i.bzc = zext i8 %i.bzb to i32
  store i32 %i.bzc, ptr %i.gd, align 8, !tbaa !151, !alias.scope !2059
  %i.bzd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1149, i64 14
  %i.bze = load i8, ptr %i.bzd, align 1, !noalias !2059 ; 2 uses
  %i.bzf = zext i8 %i.bzb to i64                  ; 5 uses
  %i.bzg = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.bzf
  store ptr %.0.i.i.i.i1149, ptr %i.bzg, align 8, !tbaa !212, !alias.scope !2059
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.bzf
  store i8 %i.bze, ptr %i.bzh, align 1, !tbaa !78, !alias.scope !2059
  %.018.i.i.i.i.i.i = zext i8 %i.bze to i64       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bzb, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.abc
  %xtraiter4057 = and i64 %i.bzf, 1
  %lcmp.mod4058.not = icmp eq i64 %xtraiter4057, 0
  br i1 %lcmp.mod4058.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.bzf, -1 ; 3 uses
  %i.bzi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1149, i64 16
  %i.bzj = getelementptr inbounds nuw [8 x i8], ptr %i.bzi, i64 %.018.i.i.i.i.i.i
  %i.bzk = load ptr, ptr %i.bzj, align 8, !tbaa !152, !noalias !2059 ; 3 uses
  %i.bzl = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.bzk, ptr %i.bzl, align 8, !tbaa !212, !alias.scope !2059
  %i.bzm = getelementptr inbounds nuw i8, ptr %i.bzk, i64 14
  %i.bzn = load i8, ptr %i.bzm, align 1, !noalias !2059 ; 2 uses
  %i.bzo = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.bzn, ptr %i.bzo, align 1, !tbaa !78, !alias.scope !2059
  %.0.i.i.i.i.i.i1157.prol = zext i8 %i.bzn to i64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.bzf, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i1157.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i1149, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bzk, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i1157.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i1157.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.bzp = icmp eq i8 %i.bzb, 1
  br i1 %i.bzp, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i1157.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.bzz, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.bzq = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.bzr = getelementptr inbounds nuw [8 x i8], ptr %i.bzq, i64 %.021.i.i.i.i.i.i
  %i.bzs = load ptr, ptr %i.bzr, align 8, !tbaa !152, !noalias !2059 ; 3 uses
  %i.bzt = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.bzs, ptr %i.bzt, align 8, !tbaa !212, !alias.scope !2059
  %i.bzu = getelementptr inbounds nuw i8, ptr %i.bzs, i64 14
  %i.bzv = load i8, ptr %i.bzu, align 1, !noalias !2059 ; 2 uses
  %i.bzw = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.bzv, ptr %i.bzw, align 1, !tbaa !78, !alias.scope !2059
  %.0.i.i.i.i.i.i1157 = zext i8 %i.bzv to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.bzx = getelementptr inbounds nuw i8, ptr %i.bzs, i64 16
  %i.bzy = getelementptr inbounds nuw [8 x i8], ptr %i.bzx, i64 %.0.i.i.i.i.i.i1157
  %i.bzz = load ptr, ptr %i.bzy, align 8, !tbaa !152, !noalias !2059 ; 3 uses
  %i.caa = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.bzz, ptr %i.caa, align 8, !tbaa !212, !alias.scope !2059
  %i.cab = getelementptr inbounds nuw i8, ptr %i.bzz, i64 14
  %i.cac = load i8, ptr %i.cab, align 1, !noalias !2059 ; 2 uses
  %i.cad = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.cac, ptr %i.cad, align 1, !tbaa !78, !alias.scope !2059
  %.0.i.i.i.i.i.i1157.1 = zext i8 %i.cac to i64   ; 2 uses
  %i.cae = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.cae, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.abc
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.abc ], [ %.0.i.i.i.i.i.i1157.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i1157.1, %.lr.ph.i.i.i.i.i.i ]
  %i.caf = load ptr, ptr %i.ge, align 8, !tbaa !212, !alias.scope !2059
  %i.cag = getelementptr inbounds nuw i8, ptr %i.caf, i64 16
  %i.cah = getelementptr inbounds nuw [8 x i8], ptr %i.cag, i64 %.0.lcssa.i.i.i.i.i.i
  %i.cai = load ptr, ptr %i.cah, align 8, !tbaa !152, !noalias !2059 ; 5 uses
  %i.caj = load i64, ptr %.0.i.i.i.i1149, align 8, !tbaa !129, !noalias !2059
  %i.cak = load i64, ptr %i.cai, align 8, !tbaa !129, !noalias !2059 ; 2 uses
  %i.cal = sub i64 %i.caj, %i.cak
  store i64 %i.cal, ptr %i.gc, align 8, !tbaa !213, !alias.scope !2059
  %i.cam = getelementptr inbounds nuw i8, ptr %i.cai, i64 12
  %i.can = load i8, ptr %i.cam, align 4, !tbaa !122, !noalias !2059 ; 2 uses
  %i.cao = icmp eq i8 %i.can, 1
  br i1 %i.cao, label %bb.abd, label %bb.abe

bb.abd:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cai, i64 16
  %i.caq = load i64, ptr %i.cap, align 8, !tbaa !208, !noalias !2059
  %i.car = getelementptr inbounds nuw i8, ptr %i.cai, i64 24
  %i.cas = load ptr, ptr %i.car, align 8, !tbaa !209, !noalias !2059 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i1162 = getelementptr inbounds nuw i8, ptr %i.cas, i64 12
  %.pre.i.i.i.i.i1163 = load i8, ptr %.phi.trans.insert.i.i.i.i.i1162, align 4, !tbaa !122, !noalias !2059
  br label %bb.abe

bb.abe:                                           ; preds = %bb.abd, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.cat = phi i8 [ %.pre.i.i.i.i.i1163, %bb.abd ], [ %i.can, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.010.i.i.i.i.i1158 = phi ptr [ %i.cas, %bb.abd ], [ %i.cai, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i1159 = phi i64 [ %i.caq, %bb.abd ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.cau = icmp ugt i8 %i.cat, 5
  br i1 %i.cau, label %bb.abf, label %bb.abg

bb.abf:                                           ; preds = %bb.abe
  %i.cav = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i1158, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

bb.abg:                                           ; preds = %bb.abe
  %i.caw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i1158, i64 16
  %i.cax = load ptr, ptr %i.caw, align 8, !tbaa !214, !noalias !2059
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %bb.abg, %bb.abf
  %.pn.i.i.i.i.i1160 = phi ptr [ %i.cav, %bb.abf ], [ %i.cax, %bb.abg ]
  %.sroa.3.0.i.i.i.i.i1161 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i1160, i64 %.0.i.i.i.i.i1159 ; 2 uses
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

bb.abh:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i1149, ptr %i.ga, align 8, !tbaa !215, !alias.scope !2059
  %i.cay = load i64, ptr %.0.i.i.i.i1149, align 8, !tbaa !129, !noalias !2059
  %i.caz = icmp eq i8 %i.byy, 1
  br i1 %i.caz, label %bb.abi, label %bb.abj

bb.abi:                                           ; preds = %bb.abh
  %i.cba = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1149, i64 16
  %i.cbb = load i64, ptr %i.cba, align 8, !tbaa !208, !noalias !2059
  %i.cbc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1149, i64 24
  %i.cbd = load ptr, ptr %i.cbc, align 8, !tbaa !209, !noalias !2059 ; 2 uses
  %.phi.trans.insert.i.i.i.i1155 = getelementptr inbounds nuw i8, ptr %i.cbd, i64 12
  %.pre.i.i.i.i1156 = load i8, ptr %.phi.trans.insert.i.i.i.i1155, align 4, !tbaa !122, !noalias !2059
  br label %bb.abj

bb.abj:                                           ; preds = %bb.abi, %bb.abh
  %i.cbe = phi i8 [ %.pre.i.i.i.i1156, %bb.abi ], [ %i.byy, %bb.abh ]
  %.010.i.i.i.i1150 = phi ptr [ %i.cbd, %bb.abi ], [ %.0.i.i.i.i1149, %bb.abh ] ; 2 uses
  %.0.i8.i.i.i = phi i64 [ %i.cbb, %bb.abi ], [ 0, %bb.abh ]
  %i.cbf = icmp ugt i8 %i.cbe, 5
  br i1 %i.cbf, label %bb.abk, label %bb.abl

bb.abk:                                           ; preds = %bb.abj
  %i.cbg = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1150, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1151

bb.abl:                                           ; preds = %bb.abj
  %i.cbh = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1150, i64 16
  %i.cbi = load ptr, ptr %i.cbh, align 8, !tbaa !214, !noalias !2059
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1151

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1151: ; preds = %bb.abl, %bb.abk
  %.pn.i.i.i.i1152 = phi ptr [ %i.cbg, %bb.abk ], [ %i.cbi, %bb.abl ]
  %.sroa.3.0.i.i.i.i1153 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i1152, i64 %.0.i8.i.i.i ; 2 uses
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

bb.abm:                                           ; preds = %._crit_edge3397
  %i.cbj = sext i8 %i.byq to i64
  %i.cbk = lshr i64 %i.cbj, 1                     ; 2 uses
  store i64 %i.cbk, ptr %i.gb, align 8, !tbaa !150, !alias.scope !2059
  %spec.select.i.i.i = select i1 %i.byr, ptr null, ptr %i.dj
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i

.lr.ph3396:                                       ; preds = %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit, %_ZN4absl12lts_202605264Cord12CharIteratorppEv.exit
  %i.cbl = phi i64 [ %i.cfr, %_ZN4absl12lts_202605264Cord12CharIteratorppEv.exit ], [ %i.byn, %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit ] ; 4 uses
  %i.cbm = phi i64 [ %i.cfs, %_ZN4absl12lts_202605264Cord12CharIteratorppEv.exit ], [ %.sink.i.i.i1803.sink, %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit ] ; 4 uses
  %i.cbn = phi ptr [ %i.cft, %_ZN4absl12lts_202605264Cord12CharIteratorppEv.exit ], [ %.sroa.3.0.i.sink.i.i.i1804.sink, %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit ] ; 2 uses
  %i.cbo = phi i64 [ %i.cfq, %_ZN4absl12lts_202605264Cord12CharIteratorppEv.exit ], [ %i.byo, %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit ] ; 3 uses
  %.1793395 = phi i1 [ false, %_ZN4absl12lts_202605264Cord12CharIteratorppEv.exit ], [ true, %_ZNK4absl12lts_202605264Cord9CharRange5beginEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #38
  %i.cbp = load i8, ptr %i.cbn, align 1, !tbaa !78 ; 2 uses
  store i8 %i.cbp, ptr %i.ag, align 1, !tbaa !78
  br i1 %.1793395, label %bb.abn, label %bb.acg

bb.abn:                                           ; preds = %.lr.ph3396
  call void @llvm.lifetime.start.p0(ptr nonnull %191) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah) #38
  store i8 97, ptr %i.ah, align 1, !tbaa !78
  %i.cbq = icmp eq i8 %i.cbp, 97
  br i1 %i.cbq, label %bb.abo, label %bb.abp

bb.abo:                                           ; preds = %bb.abn
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %191)
          to label %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.abt

bb.abp:                                           ; preds = %bb.abn
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38, !noalias !2060
  invoke void @_ZN7testing13PrintToStringIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 1 dereferenceable(1) %i.ag)
          to label %.noexc1839 unwind label %bb.abt

.noexc1839:                                       ; preds = %bb.abp
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38, !noalias !2060
  invoke void @_ZN7testing13PrintToStringIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull align 1 dereferenceable(1) %i.ah)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIccEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.abr, !noalias !2060

_ZN7testing8internal33FormatForComparisonFailureMessageIccEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc1839
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %191, ptr noundef nonnull @.str.495, ptr noundef nonnull @.str.496, ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %16, i1 noundef zeroext false)
          to label %bb.abq unwind label %bb.abs

bb.abq:                                           ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIccEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.cbr = load ptr, ptr %16, align 8, !tbaa !74, !noalias !2060 ; 2 uses
  %i.cbs = icmp eq ptr %i.cbr, %i.fx
  br i1 %i.cbs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1835, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1834

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1834: ; preds = %bb.abq
  %i.cbt = load i64, ptr %i.fx, align 8, !tbaa !78, !noalias !2060
  %i.cbu = add i64 %i.cbt, 1
  call void @_ZdlPvm(ptr noundef %i.cbr, i64 noundef %i.cbu) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1835

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1835: ; preds = %bb.abq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1834
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #38, !noalias !2060
  %i.cbv = load ptr, ptr %15, align 8, !tbaa !74, !noalias !2060 ; 2 uses
  %i.cbw = icmp eq ptr %i.cbv, %i.fy
  br i1 %i.cbw, label %.noexc1166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1836

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1836: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1835
  %i.cbx = load i64, ptr %i.fy, align 8, !tbaa !78, !noalias !2060
  %i.cby = add i64 %i.cbx, 1
  call void @_ZdlPvm(ptr noundef %i.cbv, i64 noundef %i.cby) #40
  br label %.noexc1166

bb.abr:                                           ; preds = %.noexc1839
  %i.cbz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i1827

bb.abs:                                           ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIccEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.cca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ccb = load ptr, ptr %16, align 8, !tbaa !74, !noalias !2060 ; 2 uses
  %i.ccc = icmp eq ptr %i.ccb, %i.fx
  br i1 %i.ccc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i1827, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i1832

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i1832: ; preds = %bb.abs
end_hunk_10
begin_hunk_11_@_ZN30CordTest_ExpectedChecksum_Test8TestBodyEv:bb.a
  %i.cgf = zext i1 %i.cge to i8
  store i8 %i.cgf, ptr %194, align 8, !tbaa !110
  store ptr null, ptr %i.gg, align 8, !tbaa !133
  store i8 1, ptr %i.gh, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %195) #38
  br i1 %i.cge, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1208, label %bb.act

bb.act:                                           ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit1189.thread2291, %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit1189
  call void @llvm.lifetime.start.p0(ptr nonnull %196) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %196)
          to label %bb.acu unwind label %bb.acy

bb.acu:                                           ; preds = %bb.act
  call void @llvm.lifetime.start.p0(ptr nonnull %197) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %199) #38
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %199, ptr noundef nonnull align 8 dereferenceable(16) %194, ptr noundef nonnull @.str.497, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
          to label %bb.acv unwind label %bb.acz

bb.acv:                                           ; preds = %bb.acu
  %i.cgg = load ptr, ptr %199, align 8, !tbaa !74
  %i.cgh = load i64, ptr %i.gi, align 8, !tbaa !76
  store i64 %i.cgh, ptr %198, align 8
  store ptr %i.cgg, ptr %i.gj, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %197, i32 noundef 1, i64 63, ptr nonnull @.str.1, i32 noundef 3268, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %198)
          to label %bb.acw unwind label %bb.ada

bb.acw:                                           ; preds = %bb.acv
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %197, ptr noundef nonnull align 8 dereferenceable(8) %196)
          to label %bb.acx unwind label %bb.adb

bb.acx:                                           ; preds = %bb.acw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %197) #38
  %i.cgi = load ptr, ptr %199, align 8, !tbaa !74 ; 2 uses
  %i.cgj = icmp eq ptr %i.cgi, %i.gk
  br i1 %i.cgj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1192: ; preds = %bb.acx
  %i.cgk = load i64, ptr %i.gk, align 8, !tbaa !78
  %i.cgl = add i64 %i.cgk, 1
  call void @_ZdlPvm(ptr noundef %i.cgi, i64 noundef %i.cgl) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194: ; preds = %bb.acx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1192
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #38
  %i.cgm = load ptr, ptr %196, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1195 = icmp eq ptr %i.cgm, null
  br i1 %.not.i.i1195, label %bb.add, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1196

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194
  %i.cgn = load ptr, ptr %i.cgm, align 8, !tbaa !73
  %i.cgo = getelementptr inbounds nuw i8, ptr %i.cgn, i64 8
  %i.cgp = load ptr, ptr %i.cgo, align 8
  call void %i.cgp(ptr noundef nonnull align 8 dereferenceable(128) %i.cgm) #38, !inline_history !2
  br label %bb.add

bb.acy:                                           ; preds = %bb.act
  %i.cgq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1203

bb.acz:                                           ; preds = %bb.acu
  %i.cgr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1200

bb.ada:                                           ; preds = %bb.acv
  %i.cgs = landingpad { ptr, i32 }
          cleanup
  br label %bb.adc

bb.adb:                                           ; preds = %bb.acw
  %i.cgt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %197) #38
  br label %bb.adc

bb.adc:                                           ; preds = %bb.adb, %bb.ada
  %.pn404 = phi { ptr, i32 } [ %i.cgt, %bb.adb ], [ %i.cgs, %bb.ada ] ; 2 uses
  %i.cgu = load ptr, ptr %199, align 8, !tbaa !74 ; 2 uses
  %i.cgv = icmp eq ptr %i.cgu, %i.gk
  br i1 %i.cgv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1198: ; preds = %bb.adc
  %i.cgw = load i64, ptr %i.gk, align 8, !tbaa !78
  %i.cgx = add i64 %i.cgw, 1
  call void @_ZdlPvm(ptr noundef %i.cgu, i64 noundef %i.cgx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1200: ; preds = %bb.adc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1198, %bb.acz
  %.pn404.pn = phi { ptr, i32 } [ %i.cgr, %bb.acz ], [ %.pn404, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1198 ], [ %.pn404, %bb.adc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %199) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %197) #38
  %i.cgy = load ptr, ptr %196, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1201 = icmp eq ptr %i.cgy, null
  br i1 %.not.i.i1201, label %_ZN7testing7MessageD2Ev.exit1203, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1202

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1202: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1200
  %i.cgz = load ptr, ptr %i.cgy, align 8, !tbaa !73
  %i.cha = getelementptr inbounds nuw i8, ptr %i.cgz, i64 8
  %i.chb = load ptr, ptr %i.cha, align 8
  call void %i.chb(ptr noundef nonnull align 8 dereferenceable(128) %i.cgy) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit1203

_ZN7testing7MessageD2Ev.exit1203:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1202, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1200, %bb.acy
  %.pn404.pn.pn = phi { ptr, i32 } [ %i.cgq, %bb.acy ], [ %.pn404.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1200 ], [ %.pn404.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1202 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #38
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %194) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #38
  br label %bb.ans

bb.add:                                           ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1196, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1194
  call void @llvm.lifetime.end.p0(ptr nonnull %196) #38
  %.pr2293 = load ptr, ptr %i.gg, align 8, !tbaa !113 ; 4 uses
  %.not.i.i.i1204 = icmp eq ptr %.pr2293, null
  br i1 %.not.i.i.i1204, label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1208, label %bb.ade

bb.ade:                                           ; preds = %bb.add
  %i.chc = load ptr, ptr %.pr2293, align 8, !tbaa !74 ; 2 uses
  %i.chd = getelementptr inbounds nuw i8, ptr %.pr2293, i64 16 ; 2 uses
  %i.che = icmp eq ptr %i.chc, %i.chd
  br i1 %i.che, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1206, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1205

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1205: ; preds = %bb.ade
  %i.chf = load i64, ptr %i.chd, align 8, !tbaa !78
  %i.chg = add i64 %i.chf, 1
  call void @_ZdlPvm(ptr noundef %i.chc, i64 noundef %i.chg) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1206

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1206: ; preds = %bb.ade, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i1205
  call void @_ZdlPvm(ptr noundef nonnull %.pr2293, i64 noundef 32) #40
  br label %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1208

_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1208: ; preds = %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit1189, %bb.add, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i1206
  call void @llvm.lifetime.end.p0(ptr nonnull %194) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %200) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %201) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %201, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.go, align 8, !tbaa !151
  %i.chh = load i8, ptr %129, align 8, !tbaa !78  ; 2 uses
  %i.chi = trunc i8 %i.chh to i1                  ; 2 uses
  %i.chj = load ptr, ptr %i.cy, align 8           ; 5 uses
  %.not8.i.i1873 = icmp ne ptr %i.chj, null
  %.not.not.i.i1874 = select i1 %i.chi, i1 %.not8.i.i1873, i1 false
  br i1 %.not.not.i.i1874, label %bb.adf, label %bb.adr

bb.adf:                                           ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1208
  %i.chk = load i64, ptr %i.chj, align 8, !tbaa !129 ; 2 uses
  store i64 %i.chk, ptr %i.gm, align 8, !tbaa !150
  %.not7.i.i1877 = icmp ne i64 %i.chk, 0
  call void @llvm.assume(i1 %.not7.i.i1877)
  %i.chl = getelementptr inbounds nuw i8, ptr %i.chj, i64 12
  %i.chm = load i8, ptr %i.chl, align 4, !tbaa !122 ; 2 uses
  %i.chn = icmp eq i8 %i.chm, 2
  br i1 %i.chn, label %bb.adg, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1878, !prof !90

bb.adg:                                           ; preds = %bb.adf
  %i.cho = getelementptr inbounds nuw i8, ptr %i.chj, i64 16
  %i.chp = load ptr, ptr %i.cho, align 8, !tbaa !206 ; 2 uses
  %.phi.trans.insert.i.i.i1908 = getelementptr inbounds nuw i8, ptr %i.chp, i64 12
  %.pre.i.i.i1909 = load i8, ptr %.phi.trans.insert.i.i.i1908, align 4, !tbaa !122
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1878

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1878: ; preds = %bb.adg, %bb.adf
  %i.chq = phi i8 [ %.pre.i.i.i1909, %bb.adg ], [ %i.chm, %bb.adf ] ; 3 uses
  %.0.i.i.i.i1879 = phi ptr [ %i.chp, %bb.adg ], [ %i.chj, %bb.adf ] ; 11 uses
  %i.chr = icmp eq i8 %i.chq, 3
  br i1 %i.chr, label %bb.adh, label %bb.adm

bb.adh:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1878
  %i.chs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1879, i64 13
  %i.cht = load i8, ptr %i.chs, align 1, !tbaa !78 ; 4 uses
  %i.chu = zext i8 %i.cht to i32
  store i32 %i.chu, ptr %i.go, align 8, !tbaa !151
  %i.chv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1879, i64 14
  %i.chw = load i8, ptr %i.chv, align 1           ; 2 uses
  %i.chx = zext i8 %i.cht to i64                  ; 5 uses
  %i.chy = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %i.chx
  store ptr %.0.i.i.i.i1879, ptr %i.chy, align 8, !tbaa !212
  %i.chz = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.chx
  store i8 %i.chw, ptr %i.chz, align 1, !tbaa !78
  %.018.i.i.i.i.i.i1891 = zext i8 %i.chw to i64   ; 3 uses
  %.not.i.i.i.i.i.i1892 = icmp eq i8 %i.cht, 0
  br i1 %.not.i.i.i.i.i.i1892, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1899, label %.lr.ph.i.i.i.i.i.i1893.preheader

.lr.ph.i.i.i.i.i.i1893.preheader:                 ; preds = %bb.adh
  %xtraiter4059 = and i64 %i.chx, 1
  %lcmp.mod4060.not = icmp eq i64 %xtraiter4059, 0
  br i1 %lcmp.mod4060.not, label %.lr.ph.i.i.i.i.i.i1893.prol.loopexit, label %.lr.ph.i.i.i.i.i.i1893.prol

.lr.ph.i.i.i.i.i.i1893.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i1893.preheader
  %indvars.iv.next.i.i.i.i.i.i1897.prol = add nsw i64 %i.chx, -1 ; 3 uses
  %i.cia = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1879, i64 16
  %i.cib = getelementptr inbounds nuw [8 x i8], ptr %i.cia, i64 %.018.i.i.i.i.i.i1891
  %i.cic = load ptr, ptr %i.cib, align 8, !tbaa !152 ; 3 uses
  %i.cid = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.i.i.i.i.i1897.prol
  store ptr %i.cic, ptr %i.cid, align 8, !tbaa !212
  %i.cie = getelementptr inbounds nuw i8, ptr %i.cic, i64 14
  %i.cif = load i8, ptr %i.cie, align 1           ; 2 uses
  %i.cig = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next.i.i.i.i.i.i1897.prol
  store i8 %i.cif, ptr %i.cig, align 1, !tbaa !78
  %.0.i.i.i.i.i.i1898.prol = zext i8 %i.cif to i64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i1893.prol.loopexit

.lr.ph.i.i.i.i.i.i1893.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i1893.prol, %.lr.ph.i.i.i.i.i.i1893.preheader
  %indvars.iv.i.i.i.i.i.i1894.unr = phi i64 [ %i.chx, %.lr.ph.i.i.i.i.i.i1893.preheader ], [ %indvars.iv.next.i.i.i.i.i.i1897.prol, %.lr.ph.i.i.i.i.i.i1893.prol ]
  %.021.i.i.i.i.i.i1895.unr = phi i64 [ %.018.i.i.i.i.i.i1891, %.lr.ph.i.i.i.i.i.i1893.preheader ], [ %.0.i.i.i.i.i.i1898.prol, %.lr.ph.i.i.i.i.i.i1893.prol ]
  %.01619.i.i.i.i.i.i1896.unr = phi ptr [ %.0.i.i.i.i1879, %.lr.ph.i.i.i.i.i.i1893.preheader ], [ %i.cic, %.lr.ph.i.i.i.i.i.i1893.prol ]
  %.0.i.i.i.i.i.i1898.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i1893.preheader ], [ %.0.i.i.i.i.i.i1898.prol, %.lr.ph.i.i.i.i.i.i1893.prol ]
  %i.cih = icmp eq i8 %i.cht, 1
  br i1 %i.cih, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1899, label %.lr.ph.i.i.i.i.i.i1893

.lr.ph.i.i.i.i.i.i1893:                           ; preds = %.lr.ph.i.i.i.i.i.i1893.prol.loopexit, %.lr.ph.i.i.i.i.i.i1893
  %indvars.iv.i.i.i.i.i.i1894 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i1897.1, %.lr.ph.i.i.i.i.i.i1893 ], [ %indvars.iv.i.i.i.i.i.i1894.unr, %.lr.ph.i.i.i.i.i.i1893.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i1895 = phi i64 [ %.0.i.i.i.i.i.i1898.1, %.lr.ph.i.i.i.i.i.i1893 ], [ %.021.i.i.i.i.i.i1895.unr, %.lr.ph.i.i.i.i.i.i1893.prol.loopexit ]
  %.01619.i.i.i.i.i.i1896 = phi ptr [ %i.cir, %.lr.ph.i.i.i.i.i.i1893 ], [ %.01619.i.i.i.i.i.i1896.unr, %.lr.ph.i.i.i.i.i.i1893.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i1897 = add nsw i64 %indvars.iv.i.i.i.i.i.i1894, -1 ; 2 uses
  %i.cii = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i1896, i64 16
  %i.cij = getelementptr inbounds nuw [8 x i8], ptr %i.cii, i64 %.021.i.i.i.i.i.i1895
  %i.cik = load ptr, ptr %i.cij, align 8, !tbaa !152 ; 3 uses
  %i.cil = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.i.i.i.i.i1897
  store ptr %i.cik, ptr %i.cil, align 8, !tbaa !212
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cik, i64 14
  %i.cin = load i8, ptr %i.cim, align 1           ; 2 uses
  %i.cio = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next.i.i.i.i.i.i1897
  store i8 %i.cin, ptr %i.cio, align 1, !tbaa !78
  %.0.i.i.i.i.i.i1898 = zext i8 %i.cin to i64
  %indvars.iv.next.i.i.i.i.i.i1897.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i1894, -2 ; 3 uses
  %i.cip = getelementptr inbounds nuw i8, ptr %i.cik, i64 16
  %i.ciq = getelementptr inbounds nuw [8 x i8], ptr %i.cip, i64 %.0.i.i.i.i.i.i1898
  %i.cir = load ptr, ptr %i.ciq, align 8, !tbaa !152 ; 3 uses
  %i.cis = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.i.i.i.i.i1897.1
  store ptr %i.cir, ptr %i.cis, align 8, !tbaa !212
  %i.cit = getelementptr inbounds nuw i8, ptr %i.cir, i64 14
  %i.ciu = load i8, ptr %i.cit, align 1           ; 2 uses
  %i.civ = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.next.i.i.i.i.i.i1897.1
  store i8 %i.ciu, ptr %i.civ, align 1, !tbaa !78
  %.0.i.i.i.i.i.i1898.1 = zext i8 %i.ciu to i64   ; 2 uses
  %i.ciw = icmp sgt i64 %indvars.iv.i.i.i.i.i.i1894, 2
  br i1 %i.ciw, label %.lr.ph.i.i.i.i.i.i1893, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1899, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1899: ; preds = %.lr.ph.i.i.i.i.i.i1893.prol.loopexit, %.lr.ph.i.i.i.i.i.i1893, %bb.adh
  %.0.lcssa.i.i.i.i.i.i1900 = phi i64 [ %.018.i.i.i.i.i.i1891, %bb.adh ], [ %.0.i.i.i.i.i.i1898.lcssa.unr, %.lr.ph.i.i.i.i.i.i1893.prol.loopexit ], [ %.0.i.i.i.i.i.i1898.1, %.lr.ph.i.i.i.i.i.i1893 ]
  %i.cix = load ptr, ptr %i.gp, align 8, !tbaa !212
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cix, i64 16
  %i.ciz = getelementptr inbounds nuw [8 x i8], ptr %i.ciy, i64 %.0.lcssa.i.i.i.i.i.i1900
  %i.cja = load ptr, ptr %i.ciz, align 8, !tbaa !152 ; 5 uses
  %i.cjb = load i64, ptr %.0.i.i.i.i1879, align 8, !tbaa !129
  %i.cjc = load i64, ptr %i.cja, align 8, !tbaa !129 ; 2 uses
  %i.cjd = sub i64 %i.cjb, %i.cjc
  store i64 %i.cjd, ptr %i.gn, align 8, !tbaa !213
  %i.cje = getelementptr inbounds nuw i8, ptr %i.cja, i64 12
  %i.cjf = load i8, ptr %i.cje, align 4, !tbaa !122 ; 2 uses
  %i.cjg = icmp eq i8 %i.cjf, 1
  br i1 %i.cjg, label %bb.adi, label %bb.adj

bb.adi:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1899
  %i.cjh = getelementptr inbounds nuw i8, ptr %i.cja, i64 16
  %i.cji = load i64, ptr %i.cjh, align 8, !tbaa !208
  %i.cjj = getelementptr inbounds nuw i8, ptr %i.cja, i64 24
  %i.cjk = load ptr, ptr %i.cjj, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i1906 = getelementptr inbounds nuw i8, ptr %i.cjk, i64 12
  %.pre.i.i.i.i.i1907 = load i8, ptr %.phi.trans.insert.i.i.i.i.i1906, align 4, !tbaa !122
  br label %bb.adj

bb.adj:                                           ; preds = %bb.adi, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1899
  %i.cjl = phi i8 [ %.pre.i.i.i.i.i1907, %bb.adi ], [ %i.cjf, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1899 ]
  %.010.i.i.i.i.i1901 = phi ptr [ %i.cjk, %bb.adi ], [ %i.cja, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1899 ] ; 2 uses
  %.0.i.i.i.i.i1902 = phi i64 [ %i.cji, %bb.adi ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1899 ]
  %i.cjm = icmp ugt i8 %i.cjl, 5
  br i1 %i.cjm, label %bb.adk, label %bb.adl

bb.adk:                                           ; preds = %bb.adj
  %i.cjn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i1901, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1903

bb.adl:                                           ; preds = %bb.adj
  %i.cjo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i1901, i64 16
  %i.cjp = load ptr, ptr %i.cjo, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1903

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1903: ; preds = %bb.adl, %bb.adk
  %.pn.i.i.i.i.i1904 = phi ptr [ %i.cjn, %bb.adk ], [ %i.cjp, %bb.adl ]
  %.sroa.3.0.i.i.i.i.i1905 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i1904, i64 %.0.i.i.i.i.i1902
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit

bb.adm:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1878
  store ptr %.0.i.i.i.i1879, ptr %i.gl, align 8, !tbaa !215
  %i.cjq = load i64, ptr %.0.i.i.i.i1879, align 8, !tbaa !129
  %i.cjr = icmp eq i8 %i.chq, 1
  br i1 %i.cjr, label %bb.adn, label %bb.ado

bb.adn:                                           ; preds = %bb.adm
  %i.cjs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1879, i64 16
  %i.cjt = load i64, ptr %i.cjs, align 8, !tbaa !208
  %i.cju = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1879, i64 24
  %i.cjv = load ptr, ptr %i.cju, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert.i.i.i.i1889 = getelementptr inbounds nuw i8, ptr %i.cjv, i64 12
  %.pre.i.i.i.i1890 = load i8, ptr %.phi.trans.insert.i.i.i.i1889, align 4, !tbaa !122
  br label %bb.ado

bb.ado:                                           ; preds = %bb.adn, %bb.adm
  %i.cjw = phi i8 [ %.pre.i.i.i.i1890, %bb.adn ], [ %i.chq, %bb.adm ]
  %.010.i.i.i.i1880 = phi ptr [ %i.cjv, %bb.adn ], [ %.0.i.i.i.i1879, %bb.adm ] ; 2 uses
  %.0.i8.i.i.i1881 = phi i64 [ %i.cjt, %bb.adn ], [ 0, %bb.adm ]
  %i.cjx = icmp ugt i8 %i.cjw, 5
  br i1 %i.cjx, label %bb.adp, label %bb.adq

bb.adp:                                           ; preds = %bb.ado
  %i.cjy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1880, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1882

bb.adq:                                           ; preds = %bb.ado
  %i.cjz = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1880, i64 16
  %i.cka = load ptr, ptr %i.cjz, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1882

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1882: ; preds = %bb.adq, %bb.adp
  %.pn.i.i.i.i1883 = phi ptr [ %i.cjy, %bb.adp ], [ %i.cka, %bb.adq ]
  %.sroa.3.0.i.i.i.i1884 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i1883, i64 %.0.i8.i.i.i1881
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit

bb.adr:                                           ; preds = %_ZN7testing8internal26AssertionResultExpectationD2Ev.exit1208
  %i.ckb = sext i8 %i.chh to i64
  %i.ckc = lshr i64 %i.ckb, 1                     ; 2 uses
  store i64 %i.ckc, ptr %i.gm, align 8, !tbaa !150
  %spec.select.i.i.i1875 = select i1 %i.chi, ptr null, ptr %i.dj
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit

_ZNK4absl12lts_202605264Cord10char_beginEv.exit:  ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1903, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1882, %bb.adr
  %.sink.i.i.i1886.sink = phi i64 [ %i.ckc, %bb.adr ], [ %i.cjq, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1882 ], [ %i.cjc, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1903 ]
  %.sroa.3.0.i.sink.i.i.i1887.sink = phi ptr [ %spec.select.i.i.i1875, %bb.adr ], [ %.sroa.3.0.i.i.i.i1884, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1882 ], [ %.sroa.3.0.i.i.i.i.i1905, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1903 ] ; 3 uses
  store i64 %.sink.i.i.i1886.sink, ptr %201, align 8, !tbaa !77
  store ptr %.sroa.3.0.i.sink.i.i.i1887.sink, ptr %.sroa.4.0..sroa_idx.i.i1876, align 8, !tbaa !140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #38
  store i8 97, ptr %i.ai, align 1, !tbaa !78
  %i.ckd = load i8, ptr %.sroa.3.0.i.sink.i.i.i1887.sink, align 1, !tbaa !78, !noalias !2061
  %i.cke = icmp eq i8 %i.ckd, 97
  br i1 %i.cke, label %bb.ads, label %bb.adt

bb.ads:                                           ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %200)
          to label %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1212 unwind label %bb.adx

bb.adt:                                           ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #38, !noalias !2062
  invoke void @_ZN7testing13PrintToStringIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 1 dereferenceable(1) %.sroa.3.0.i.sink.i.i.i1887.sink)
          to label %.noexc1924 unwind label %bb.adx

.noexc1924:                                       ; preds = %bb.adt
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38, !noalias !2062
  invoke void @_ZN7testing13PrintToStringIcEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 1 dereferenceable(1) %i.ai)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIccEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i1916 unwind label %bb.adv, !noalias !2062

_ZN7testing8internal33FormatForComparisonFailureMessageIccEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i1916: ; preds = %.noexc1924
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %200, ptr noundef nonnull @.str.498, ptr noundef nonnull @.str.496, ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext false)
          to label %bb.adu unwind label %bb.adw

bb.adu:                                           ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIccEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i1916
  %i.ckf = load ptr, ptr %14, align 8, !tbaa !74, !noalias !2062 ; 2 uses
  %i.ckg = icmp eq ptr %i.ckf, %i.gr
  br i1 %i.ckg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1920, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1919

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1919: ; preds = %bb.adu
  %i.ckh = load i64, ptr %i.gr, align 8, !tbaa !78, !noalias !2062
  %i.cki = add i64 %i.ckh, 1
  call void @_ZdlPvm(ptr noundef %i.ckf, i64 noundef %i.cki) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1920

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1920: ; preds = %bb.adu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1919
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38, !noalias !2062
  %i.ckj = load ptr, ptr %13, align 8, !tbaa !74, !noalias !2062 ; 2 uses
  %i.ckk = icmp eq ptr %i.ckj, %i.gs
  br i1 %i.ckk, label %.noexc1211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1921

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1921: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1920
  %i.ckl = load i64, ptr %i.gs, align 8, !tbaa !78, !noalias !2062
  %i.ckm = add i64 %i.ckl, 1
  call void @_ZdlPvm(ptr noundef %i.ckj, i64 noundef %i.ckm) #40
  br label %.noexc1211

bb.adv:                                           ; preds = %.noexc1924
  %i.ckn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i1911

bb.adw:                                           ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIccEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i1916
  %i.cko = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ckp = load ptr, ptr %14, align 8, !tbaa !74, !noalias !2062 ; 2 uses
  %i.ckq = icmp eq ptr %i.ckp, %i.gr
  br i1 %i.ckq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i1911, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i1917

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i1917: ; preds = %bb.adw
  %i.ckr = load i64, ptr %i.gr, align 8, !tbaa !78, !noalias !2062
  %i.cks = add i64 %i.ckr, 1
  call void @_ZdlPvm(ptr noundef %i.ckp, i64 noundef %i.cks) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i1911

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i1911: ; preds = %bb.adw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i1917, %bb.adv
  %.pn.i1912 = phi { ptr, i32 } [ %i.ckn, %bb.adv ], [ %i.cko, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i1917 ], [ %i.cko, %bb.adw ]
end_hunk_11
begin_hunk_12_@_ZN30CordTest_ExpectedChecksum_Test8TestBodyEv:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i1913: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i1911
  %i.ckv = load i64, ptr %i.gs, align 8, !tbaa !78, !noalias !2062
  %i.ckw = add i64 %i.ckv, 1
  call void @_ZdlPvm(ptr noundef %i.ckt, i64 noundef %i.ckw) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1914

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1914: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i1911, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i1913
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38, !noalias !2062
  br label %.body1925

.noexc1211:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1920, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1921
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38, !noalias !2062
  br label %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1212

_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1212: ; preds = %.noexc1211, %bb.ads
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #38
  %i.ckx = load i8, ptr %200, align 8, !tbaa !110, !range !111, !noundef !112
  %i.cky = trunc nuw i8 %i.ckx to i1
  br i1 %i.cky, label %bb.aeh, label %bb.ady

bb.adx:                                           ; preds = %bb.adt, %bb.ads
  %i.ckz = landingpad { ptr, i32 }
          cleanup
  br label %.body1925

.body1925:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1914, %bb.adx
  %eh.lpad-body1926 = phi { ptr, i32 } [ %i.ckz, %bb.adx ], [ %.pn.i1912, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1914 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %201) #38
  br label %bb.afj

bb.ady:                                           ; preds = %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1212
  call void @llvm.lifetime.start.p0(ptr nonnull %202) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %202)
          to label %bb.adz unwind label %bb.aed

bb.adz:                                           ; preds = %bb.ady
  call void @llvm.lifetime.start.p0(ptr nonnull %203) #38
  %i.cla = load ptr, ptr %i.gt, align 8, !tbaa !113 ; 2 uses
  %.not.i.i1213 = icmp eq ptr %i.cla, null
  br i1 %.not.i.i1213, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1214, label %bb.aea

bb.aea:                                           ; preds = %bb.adz
  %i.clb = load ptr, ptr %i.cla, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1214

_ZNK7testing15AssertionResult15failure_messageEv.exit1214: ; preds = %bb.aea, %bb.adz
  %i.clc = phi ptr [ %i.clb, %bb.aea ], [ @.str.57, %bb.adz ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %203, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 3269, ptr noundef %i.clc)
          to label %bb.aeb unwind label %bb.aee

bb.aeb:                                           ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1214
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %203, ptr noundef nonnull align 8 dereferenceable(8) %202)
          to label %bb.aec unwind label %bb.aef

bb.aec:                                           ; preds = %bb.aeb
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %203) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #38
  %i.cld = load ptr, ptr %202, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1215 = icmp eq ptr %i.cld, null
  br i1 %.not.i.i1215, label %_ZN7testing7MessageD2Ev.exit1217, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1216

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1216: ; preds = %bb.aec
  %i.cle = load ptr, ptr %i.cld, align 8, !tbaa !73
  %i.clf = getelementptr inbounds nuw i8, ptr %i.cle, i64 8
  %i.clg = load ptr, ptr %i.clf, align 8
  call void %i.clg(ptr noundef nonnull align 8 dereferenceable(128) %i.cld) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit1217

_ZN7testing7MessageD2Ev.exit1217:                 ; preds = %bb.aec, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1216
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #38
  br label %bb.aeh

bb.aed:                                           ; preds = %bb.ady
  %i.clh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1220

bb.aee:                                           ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1214
  %i.cli = landingpad { ptr, i32 }
          cleanup
  br label %bb.aeg

bb.aef:                                           ; preds = %bb.aeb
  %i.clj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %203) #38
  br label %bb.aeg

bb.aeg:                                           ; preds = %bb.aef, %bb.aee
  %.pn411 = phi { ptr, i32 } [ %i.clj, %bb.aef ], [ %i.cli, %bb.aee ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %203) #38
  %i.clk = load ptr, ptr %202, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1218 = icmp eq ptr %i.clk, null
  br i1 %.not.i.i1218, label %_ZN7testing7MessageD2Ev.exit1220, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1219

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1219: ; preds = %bb.aeg
  %i.cll = load ptr, ptr %i.clk, align 8, !tbaa !73
  %i.clm = getelementptr inbounds nuw i8, ptr %i.cll, i64 8
  %i.cln = load ptr, ptr %i.clm, align 8
  call void %i.cln(ptr noundef nonnull align 8 dereferenceable(128) %i.clk) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit1220

_ZN7testing7MessageD2Ev.exit1220:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1219, %bb.aeg, %bb.aed
  %.pn411.pn = phi { ptr, i32 } [ %i.clh, %bb.aed ], [ %.pn411, %bb.aeg ], [ %.pn411, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1219 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %202) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %200) #38
  br label %bb.afj

bb.aeh:                                           ; preds = %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1212, %_ZN7testing7MessageD2Ev.exit1217
  %i.clo = load ptr, ptr %i.gt, align 8, !tbaa !113 ; 4 uses
  %.not.i.i1221 = icmp eq ptr %i.clo, null
  br i1 %.not.i.i1221, label %_ZN7testing15AssertionResultD2Ev.exit1225, label %bb.aei

bb.aei:                                           ; preds = %bb.aeh
  %i.clp = load ptr, ptr %i.clo, align 8, !tbaa !74 ; 2 uses
  %i.clq = getelementptr inbounds nuw i8, ptr %i.clo, i64 16 ; 2 uses
  %i.clr = icmp eq ptr %i.clp, %i.clq
  br i1 %i.clr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1222

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1222: ; preds = %bb.aei
  %i.cls = load i64, ptr %i.clq, align 8, !tbaa !78
  %i.clt = add i64 %i.cls, 1
  call void @_ZdlPvm(ptr noundef %i.clp, i64 noundef %i.clt) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1223

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1223: ; preds = %bb.aei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1222
  call void @_ZdlPvm(ptr noundef nonnull %i.clo, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit1225

_ZN7testing15AssertionResultD2Ev.exit1225:        ; preds = %bb.aeh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1223
  call void @llvm.lifetime.end.p0(ptr nonnull %200) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %204) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %204, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.gx, align 8, !tbaa !151
  %i.clu = load i8, ptr %129, align 8, !tbaa !78  ; 2 uses
  %i.clv = trunc i8 %i.clu to i1                  ; 2 uses
  %i.clw = load ptr, ptr %i.cy, align 8           ; 5 uses
  %.not8.i.i1928 = icmp ne ptr %i.clw, null
  %.not.not.i.i1929 = select i1 %i.clv, i1 %.not8.i.i1928, i1 false
  br i1 %.not.not.i.i1929, label %bb.aej, label %bb.aew

bb.aej:                                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit1225
  %i.clx = load i64, ptr %i.clw, align 8, !tbaa !129 ; 2 uses
  store i64 %i.clx, ptr %i.gv, align 8, !tbaa !150
  %.not7.i.i1932 = icmp eq i64 %i.clx, 0
  br i1 %.not7.i.i1932, label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1227.thread, label %bb.aek, !prof !90

bb.aek:                                           ; preds = %bb.aej
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clw, i64 12
  %i.clz = load i8, ptr %i.cly, align 4, !tbaa !122 ; 2 uses
  %i.cma = icmp eq i8 %i.clz, 2
  br i1 %i.cma, label %bb.ael, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1933, !prof !90

bb.ael:                                           ; preds = %bb.aek
  %i.cmb = getelementptr inbounds nuw i8, ptr %i.clw, i64 16
  %i.cmc = load ptr, ptr %i.cmb, align 8, !tbaa !206 ; 2 uses
  %.phi.trans.insert.i.i.i1963 = getelementptr inbounds nuw i8, ptr %i.cmc, i64 12
  %.pre.i.i.i1964 = load i8, ptr %.phi.trans.insert.i.i.i1963, align 4, !tbaa !122
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1933

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1933: ; preds = %bb.ael, %bb.aek
  %i.cmd = phi i8 [ %.pre.i.i.i1964, %bb.ael ], [ %i.clz, %bb.aek ] ; 3 uses
  %.0.i.i.i.i1934 = phi ptr [ %i.cmc, %bb.ael ], [ %i.clw, %bb.aek ] ; 11 uses
  %i.cme = icmp eq i8 %i.cmd, 3
  br i1 %i.cme, label %bb.aem, label %bb.aer

bb.aem:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1933
  %i.cmf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1934, i64 13
  %i.cmg = load i8, ptr %i.cmf, align 1, !tbaa !78 ; 4 uses
  %i.cmh = zext i8 %i.cmg to i32
  store i32 %i.cmh, ptr %i.gx, align 8, !tbaa !151
  %i.cmi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1934, i64 14
  %i.cmj = load i8, ptr %i.cmi, align 1           ; 2 uses
  %i.cmk = zext i8 %i.cmg to i64                  ; 5 uses
  %i.cml = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.cmk
  store ptr %.0.i.i.i.i1934, ptr %i.cml, align 8, !tbaa !212
  %i.cmm = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.cmk
  store i8 %i.cmj, ptr %i.cmm, align 1, !tbaa !78
  %.018.i.i.i.i.i.i1946 = zext i8 %i.cmj to i64   ; 3 uses
  %.not.i.i.i.i.i.i1947 = icmp eq i8 %i.cmg, 0
  br i1 %.not.i.i.i.i.i.i1947, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1954, label %.lr.ph.i.i.i.i.i.i1948.preheader

.lr.ph.i.i.i.i.i.i1948.preheader:                 ; preds = %bb.aem
  %xtraiter4061 = and i64 %i.cmk, 1
  %lcmp.mod4062.not = icmp eq i64 %xtraiter4061, 0
  br i1 %lcmp.mod4062.not, label %.lr.ph.i.i.i.i.i.i1948.prol.loopexit, label %.lr.ph.i.i.i.i.i.i1948.prol

.lr.ph.i.i.i.i.i.i1948.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i1948.preheader
  %indvars.iv.next.i.i.i.i.i.i1952.prol = add nsw i64 %i.cmk, -1 ; 3 uses
  %i.cmn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1934, i64 16
  %i.cmo = getelementptr inbounds nuw [8 x i8], ptr %i.cmn, i64 %.018.i.i.i.i.i.i1946
  %i.cmp = load ptr, ptr %i.cmo, align 8, !tbaa !152 ; 3 uses
  %i.cmq = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next.i.i.i.i.i.i1952.prol
  store ptr %i.cmp, ptr %i.cmq, align 8, !tbaa !212
  %i.cmr = getelementptr inbounds nuw i8, ptr %i.cmp, i64 14
  %i.cms = load i8, ptr %i.cmr, align 1           ; 2 uses
  %i.cmt = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv.next.i.i.i.i.i.i1952.prol
  store i8 %i.cms, ptr %i.cmt, align 1, !tbaa !78
  %.0.i.i.i.i.i.i1953.prol = zext i8 %i.cms to i64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i1948.prol.loopexit

.lr.ph.i.i.i.i.i.i1948.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i1948.prol, %.lr.ph.i.i.i.i.i.i1948.preheader
  %indvars.iv.i.i.i.i.i.i1949.unr = phi i64 [ %i.cmk, %.lr.ph.i.i.i.i.i.i1948.preheader ], [ %indvars.iv.next.i.i.i.i.i.i1952.prol, %.lr.ph.i.i.i.i.i.i1948.prol ]
  %.021.i.i.i.i.i.i1950.unr = phi i64 [ %.018.i.i.i.i.i.i1946, %.lr.ph.i.i.i.i.i.i1948.preheader ], [ %.0.i.i.i.i.i.i1953.prol, %.lr.ph.i.i.i.i.i.i1948.prol ]
  %.01619.i.i.i.i.i.i1951.unr = phi ptr [ %.0.i.i.i.i1934, %.lr.ph.i.i.i.i.i.i1948.preheader ], [ %i.cmp, %.lr.ph.i.i.i.i.i.i1948.prol ]
  %.0.i.i.i.i.i.i1953.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i1948.preheader ], [ %.0.i.i.i.i.i.i1953.prol, %.lr.ph.i.i.i.i.i.i1948.prol ]
  %i.cmu = icmp eq i8 %i.cmg, 1
  br i1 %i.cmu, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1954, label %.lr.ph.i.i.i.i.i.i1948

.lr.ph.i.i.i.i.i.i1948:                           ; preds = %.lr.ph.i.i.i.i.i.i1948.prol.loopexit, %.lr.ph.i.i.i.i.i.i1948
  %indvars.iv.i.i.i.i.i.i1949 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i1952.1, %.lr.ph.i.i.i.i.i.i1948 ], [ %indvars.iv.i.i.i.i.i.i1949.unr, %.lr.ph.i.i.i.i.i.i1948.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i1950 = phi i64 [ %.0.i.i.i.i.i.i1953.1, %.lr.ph.i.i.i.i.i.i1948 ], [ %.021.i.i.i.i.i.i1950.unr, %.lr.ph.i.i.i.i.i.i1948.prol.loopexit ]
  %.01619.i.i.i.i.i.i1951 = phi ptr [ %i.cne, %.lr.ph.i.i.i.i.i.i1948 ], [ %.01619.i.i.i.i.i.i1951.unr, %.lr.ph.i.i.i.i.i.i1948.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i1952 = add nsw i64 %indvars.iv.i.i.i.i.i.i1949, -1 ; 2 uses
  %i.cmv = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i1951, i64 16
  %i.cmw = getelementptr inbounds nuw [8 x i8], ptr %i.cmv, i64 %.021.i.i.i.i.i.i1950
  %i.cmx = load ptr, ptr %i.cmw, align 8, !tbaa !152 ; 3 uses
  %i.cmy = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next.i.i.i.i.i.i1952
  store ptr %i.cmx, ptr %i.cmy, align 8, !tbaa !212
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.cmx, i64 14
  %i.cna = load i8, ptr %i.cmz, align 1           ; 2 uses
  %i.cnb = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv.next.i.i.i.i.i.i1952
  store i8 %i.cna, ptr %i.cnb, align 1, !tbaa !78
  %.0.i.i.i.i.i.i1953 = zext i8 %i.cna to i64
  %indvars.iv.next.i.i.i.i.i.i1952.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i1949, -2 ; 3 uses
  %i.cnc = getelementptr inbounds nuw i8, ptr %i.cmx, i64 16
  %i.cnd = getelementptr inbounds nuw [8 x i8], ptr %i.cnc, i64 %.0.i.i.i.i.i.i1953
  %i.cne = load ptr, ptr %i.cnd, align 8, !tbaa !152 ; 3 uses
  %i.cnf = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %indvars.iv.next.i.i.i.i.i.i1952.1
  store ptr %i.cne, ptr %i.cnf, align 8, !tbaa !212
  %i.cng = getelementptr inbounds nuw i8, ptr %i.cne, i64 14
  %i.cnh = load i8, ptr %i.cng, align 1           ; 2 uses
  %i.cni = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv.next.i.i.i.i.i.i1952.1
  store i8 %i.cnh, ptr %i.cni, align 1, !tbaa !78
  %.0.i.i.i.i.i.i1953.1 = zext i8 %i.cnh to i64   ; 2 uses
  %i.cnj = icmp sgt i64 %indvars.iv.i.i.i.i.i.i1949, 2
  br i1 %i.cnj, label %.lr.ph.i.i.i.i.i.i1948, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1954, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1954: ; preds = %.lr.ph.i.i.i.i.i.i1948.prol.loopexit, %.lr.ph.i.i.i.i.i.i1948, %bb.aem
  %.0.lcssa.i.i.i.i.i.i1955 = phi i64 [ %.018.i.i.i.i.i.i1946, %bb.aem ], [ %.0.i.i.i.i.i.i1953.lcssa.unr, %.lr.ph.i.i.i.i.i.i1948.prol.loopexit ], [ %.0.i.i.i.i.i.i1953.1, %.lr.ph.i.i.i.i.i.i1948 ]
  %i.cnk = load ptr, ptr %i.gy, align 8, !tbaa !212
  %i.cnl = getelementptr inbounds nuw i8, ptr %i.cnk, i64 16
  %i.cnm = getelementptr inbounds nuw [8 x i8], ptr %i.cnl, i64 %.0.lcssa.i.i.i.i.i.i1955
  %i.cnn = load ptr, ptr %i.cnm, align 8, !tbaa !152 ; 5 uses
  %i.cno = load i64, ptr %.0.i.i.i.i1934, align 8, !tbaa !129
  %i.cnp = load i64, ptr %i.cnn, align 8, !tbaa !129 ; 2 uses
  %i.cnq = sub i64 %i.cno, %i.cnp
  store i64 %i.cnq, ptr %i.gw, align 8, !tbaa !213
  %i.cnr = getelementptr inbounds nuw i8, ptr %i.cnn, i64 12
  %i.cns = load i8, ptr %i.cnr, align 4, !tbaa !122 ; 2 uses
  %i.cnt = icmp eq i8 %i.cns, 1
  br i1 %i.cnt, label %bb.aen, label %bb.aeo

bb.aen:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1954
  %i.cnu = getelementptr inbounds nuw i8, ptr %i.cnn, i64 16
  %i.cnv = load i64, ptr %i.cnu, align 8, !tbaa !208
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.cnn, i64 24
  %i.cnx = load ptr, ptr %i.cnw, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i1961 = getelementptr inbounds nuw i8, ptr %i.cnx, i64 12
  %.pre.i.i.i.i.i1962 = load i8, ptr %.phi.trans.insert.i.i.i.i.i1961, align 4, !tbaa !122
  br label %bb.aeo

bb.aeo:                                           ; preds = %bb.aen, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1954
  %i.cny = phi i8 [ %.pre.i.i.i.i.i1962, %bb.aen ], [ %i.cns, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1954 ]
  %.010.i.i.i.i.i1956 = phi ptr [ %i.cnx, %bb.aen ], [ %i.cnn, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1954 ] ; 2 uses
  %.0.i.i.i.i.i1957 = phi i64 [ %i.cnv, %bb.aen ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i1954 ]
  %i.cnz = icmp ugt i8 %i.cny, 5
  br i1 %i.cnz, label %bb.aep, label %bb.aeq

bb.aep:                                           ; preds = %bb.aeo
  %i.coa = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i1956, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1958

bb.aeq:                                           ; preds = %bb.aeo
  %i.cob = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i1956, i64 16
  %i.coc = load ptr, ptr %i.cob, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1958

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1958: ; preds = %bb.aeq, %bb.aep
  %.pn.i.i.i.i.i1959 = phi ptr [ %i.coa, %bb.aep ], [ %i.coc, %bb.aeq ]
  %.sroa.3.0.i.i.i.i.i1960 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i1959, i64 %.0.i.i.i.i.i1957
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1227

bb.aer:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i1933
  store ptr %.0.i.i.i.i1934, ptr %i.gu, align 8, !tbaa !215
  %i.cod = load i64, ptr %.0.i.i.i.i1934, align 8, !tbaa !129
  %i.coe = icmp eq i8 %i.cmd, 1
  br i1 %i.coe, label %bb.aes, label %bb.aet

bb.aes:                                           ; preds = %bb.aer
  %i.cof = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1934, i64 16
  %i.cog = load i64, ptr %i.cof, align 8, !tbaa !208
  %i.coh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i1934, i64 24
  %i.coi = load ptr, ptr %i.coh, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert.i.i.i.i1944 = getelementptr inbounds nuw i8, ptr %i.coi, i64 12
  %.pre.i.i.i.i1945 = load i8, ptr %.phi.trans.insert.i.i.i.i1944, align 4, !tbaa !122
  br label %bb.aet

bb.aet:                                           ; preds = %bb.aes, %bb.aer
  %i.coj = phi i8 [ %.pre.i.i.i.i1945, %bb.aes ], [ %i.cmd, %bb.aer ]
  %.010.i.i.i.i1935 = phi ptr [ %i.coi, %bb.aes ], [ %.0.i.i.i.i1934, %bb.aer ] ; 2 uses
  %.0.i8.i.i.i1936 = phi i64 [ %i.cog, %bb.aes ], [ 0, %bb.aer ]
  %i.cok = icmp ugt i8 %i.coj, 5
  br i1 %i.cok, label %bb.aeu, label %bb.aev

bb.aeu:                                           ; preds = %bb.aet
  %i.col = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1935, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1937

bb.aev:                                           ; preds = %bb.aet
  %i.com = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i1935, i64 16
  %i.con = load ptr, ptr %i.com, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1937

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1937: ; preds = %bb.aev, %bb.aeu
  %.pn.i.i.i.i1938 = phi ptr [ %i.col, %bb.aeu ], [ %i.con, %bb.aev ]
  %.sroa.3.0.i.i.i.i1939 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i1938, i64 %.0.i8.i.i.i1936
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1227

_ZNK4absl12lts_202605264Cord10char_beginEv.exit1227.thread: ; preds = %bb.aej
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %204, i8 0, i64 16, i1 false)
  br label %bb.aey

bb.aew:                                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit1225
  %i.coo = sext i8 %i.clu to i64
  %i.cop = lshr i64 %i.coo, 1                     ; 2 uses
  store i64 %i.cop, ptr %i.gv, align 8, !tbaa !150
  %spec.select.i.i.i1930 = select i1 %i.clv, ptr null, ptr %i.dj
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1227

_ZNK4absl12lts_202605264Cord10char_beginEv.exit1227: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1958, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1937, %bb.aew
  %.sink.i.i.i1941.sink = phi i64 [ %i.cop, %bb.aew ], [ %i.cod, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1937 ], [ %i.cnp, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1958 ] ; 3 uses
  %.sroa.3.0.i.sink.i.i.i1942.sink = phi ptr [ %spec.select.i.i.i1930, %bb.aew ], [ %.sroa.3.0.i.i.i.i1939, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i1937 ], [ %.sroa.3.0.i.i.i.i.i1960, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i1958 ] ; 2 uses
  store i64 %.sink.i.i.i1941.sink, ptr %204, align 8, !tbaa !77
  store ptr %.sroa.3.0.i.sink.i.i.i1942.sink, ptr %.sroa.4.0..sroa_idx.i.i1931, align 8, !tbaa !140
  %i.coq = icmp ugt i64 %.sink.i.i.i1941.sink, 2
  br i1 %i.coq, label %bb.aex, label %bb.aey, !prof !2063

bb.aex:                                           ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1227
  %i.cor = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i.sink.i.i.i1942.sink, i64 2
  store ptr %i.cor, ptr %.sroa.4.0..sroa_idx.i.i1931, align 8, !tbaa !138
  %i.cos = add i64 %.sink.i.i.i1941.sink, -2
  store i64 %i.cos, ptr %204, align 8, !tbaa !137
  %i.cot = load i64, ptr %i.gv, align 8, !tbaa !150
  %i.cou = add i64 %i.cot, -2
  br label %_ZN4absl12lts_202605264Cord7AdvanceEPNS1_12CharIteratorEm.exit.sink.split

bb.aey:                                           ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1227.thread, %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1227
  %i.cov = load i32, ptr %i.gx, align 8, !tbaa !151 ; 2 uses
  %i.cow = icmp sgt i32 %i.cov, -1
  br i1 %i.cow, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, label %_ZN4absl12lts_202605264Cord7AdvanceEPNS1_12CharIteratorEm.exit.sink.split

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i: ; preds = %bb.aey
  %i.cox = zext nneg i32 %i.cov to i64
  %i.coy = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.cox
  %i.coz = load ptr, ptr %i.coy, align 8, !tbaa !212
  %.not4.i.i = icmp eq ptr %i.coz, null
  br i1 %.not4.i.i, label %_ZN4absl12lts_202605264Cord7AdvanceEPNS1_12CharIteratorEm.exit.sink.split, label %bb.aez

bb.aez:                                           ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i
  invoke void @_ZN4absl12lts_202605264Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %204, i64 noundef 2)
          to label %_ZN4absl12lts_202605264Cord7AdvanceEPNS1_12CharIteratorEm.exit unwind label %bb.afk

_ZN4absl12lts_202605264Cord7AdvanceEPNS1_12CharIteratorEm.exit.sink.split: ; preds = %bb.aey, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i, %bb.aex
  %.sink4040 = phi i64 [ %i.cou, %bb.aex ], [ 0, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i ], [ 0, %bb.aey ]
  store i64 %.sink4040, ptr %i.gv, align 8, !tbaa !150
  br label %_ZN4absl12lts_202605264Cord7AdvanceEPNS1_12CharIteratorEm.exit

_ZN4absl12lts_202605264Cord7AdvanceEPNS1_12CharIteratorEm.exit: ; preds = %_ZN4absl12lts_202605264Cord7AdvanceEPNS1_12CharIteratorEm.exit.sink.split, %bb.aez
  call void @llvm.lifetime.start.p0(ptr nonnull %205) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %206) #38
  invoke void @_ZN4absl12lts_202605264Cord13ChunkIterator19AdvanceAndReadBytesEm(ptr dead_on_unwind nonnull writable sret(%"class.absl::lts_20260526::Cord") align 8 %206, ptr noundef nonnull align 8 dereferenceable(152) %204, i64 noundef 2)
          to label %_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit unwind label %bb.afl

_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit: ; preds = %_ZN4absl12lts_202605264Cord7AdvanceEPNS1_12CharIteratorEm.exit
  %i.cpa = load i8, ptr %206, align 8, !tbaa !78, !noalias !2064 ; 2 uses
  %i.cpb = trunc i8 %i.cpa to i1
  br i1 %i.cpb, label %bb.afa, label %bb.afb

bb.afa:                                           ; preds = %_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit
  %i.cpc = load ptr, ptr %i.ha, align 8, !tbaa !78, !noalias !2064
  %i.cpd = load i64, ptr %i.cpc, align 8, !tbaa !129, !noalias !2064
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i1230

bb.afb:                                           ; preds = %_ZN4absl12lts_202605264Cord14AdvanceAndReadEPNS1_12CharIteratorEm.exit
  %i.cpe = sext i8 %i.cpa to i64
  %i.cpf = lshr exact i64 %i.cpe, 1
  br label %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i1230

_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i1230: ; preds = %bb.afb, %bb.afa
  %i.cpg = phi i64 [ %i.cpd, %bb.afa ], [ %i.cpf, %bb.afb ]
  %.not.i.i.i1231 = icmp eq i64 %i.cpg, 2
  br i1 %.not.i.i.i1231, label %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i, label %_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread.i.i

_ZN4absl12lts_20260526eqERKNS0_4CordESt17basic_string_viewIcSt11char_traitsIcEE.exit.i.i: ; preds = %_ZNK4absl12lts_202605264Cord4sizeEv.exit.i.i.i1230
  %i.cph = invoke noundef zeroext i1 @_ZNK4absl12lts_202605264Cord10EqualsImplESt17basic_string_viewIcSt11char_traitsIcEEm(ptr noundef nonnull align 8 dereferenceable(16) %206, i64 2, ptr nonnull align 1 dereferenceable(3) @.str.501, i64 noundef 2)
          to label %.noexc1232 unwind label %bb.afm

end_hunk_12
begin_hunk_13_@_ZN30CordTest_ExpectedChecksum_Test8TestBodyEv:bb.a
  %i.crx = add i64 %i.crw, 1
  call void @_ZdlPvm(ptr noundef %i.cru, i64 noundef %i.crx) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1984

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1984: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i1981, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i1983
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38, !noalias !2068
  br label %.body1995

.noexc1250:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1990, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i1991
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38, !noalias !2068
  br label %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1251

_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1251: ; preds = %.noexc1250, %bb.afz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #38
  %i.cry = load i8, ptr %209, align 8, !tbaa !110, !range !111, !noundef !112
  %i.crz = trunc nuw i8 %i.cry to i1
  br i1 %i.crz, label %bb.agp, label %bb.agg

bb.age:                                           ; preds = %_ZN7testing7MessageD2Ev.exit1243, %bb.afn
  %.pn417.pn.pn = phi { ptr, i32 } [ %.pn417.pn, %_ZN7testing7MessageD2Ev.exit1243 ], [ %.pn415, %bb.afn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %205) #38
  br label %bb.anr

bb.agf:                                           ; preds = %bb.aga, %bb.afz
  %i.csa = landingpad { ptr, i32 }
          cleanup
  br label %.body1995

.body1995:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1984, %bb.agf
  %eh.lpad-body1996 = phi { ptr, i32 } [ %i.csa, %bb.agf ], [ %.pn.i1982, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i1984 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj) #38
  br label %bb.ahk

bb.agg:                                           ; preds = %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1251
  call void @llvm.lifetime.start.p0(ptr nonnull %210) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %210)
          to label %bb.agh unwind label %bb.agl

bb.agh:                                           ; preds = %bb.agg
  call void @llvm.lifetime.start.p0(ptr nonnull %211) #38
  %i.csb = load ptr, ptr %i.hg, align 8, !tbaa !113 ; 2 uses
  %.not.i.i1252 = icmp eq ptr %i.csb, null
  br i1 %.not.i.i1252, label %_ZNK7testing15AssertionResult15failure_messageEv.exit1253, label %bb.agi

bb.agi:                                           ; preds = %bb.agh
  %i.csc = load ptr, ptr %i.csb, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit1253

_ZNK7testing15AssertionResult15failure_messageEv.exit1253: ; preds = %bb.agi, %bb.agh
  %i.csd = phi ptr [ %i.csc, %bb.agi ], [ @.str.57, %bb.agh ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %211, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 3274, ptr noundef %i.csd)
          to label %bb.agj unwind label %bb.agm

bb.agj:                                           ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1253
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %211, ptr noundef nonnull align 8 dereferenceable(8) %210)
          to label %bb.agk unwind label %bb.agn

bb.agk:                                           ; preds = %bb.agj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %211) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #38
  %i.cse = load ptr, ptr %210, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1254 = icmp eq ptr %i.cse, null
  br i1 %.not.i.i1254, label %_ZN7testing7MessageD2Ev.exit1256, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1255

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1255: ; preds = %bb.agk
  %i.csf = load ptr, ptr %i.cse, align 8, !tbaa !73
  %i.csg = getelementptr inbounds nuw i8, ptr %i.csf, i64 8
  %i.csh = load ptr, ptr %i.csg, align 8
  call void %i.csh(ptr noundef nonnull align 8 dereferenceable(128) %i.cse) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit1256

_ZN7testing7MessageD2Ev.exit1256:                 ; preds = %bb.agk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1255
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #38
  br label %bb.agp

bb.agl:                                           ; preds = %bb.agg
  %i.csi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit1259

bb.agm:                                           ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit1253
  %i.csj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ago

bb.agn:                                           ; preds = %bb.agj
  %i.csk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %211) #38
  br label %bb.ago

bb.ago:                                           ; preds = %bb.agn, %bb.agm
  %.pn421 = phi { ptr, i32 } [ %i.csk, %bb.agn ], [ %i.csj, %bb.agm ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %211) #38
  %i.csl = load ptr, ptr %210, align 8, !tbaa !115 ; 3 uses
  %.not.i.i1257 = icmp eq ptr %i.csl, null
  br i1 %.not.i.i1257, label %_ZN7testing7MessageD2Ev.exit1259, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1258

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1258: ; preds = %bb.ago
  %i.csm = load ptr, ptr %i.csl, align 8, !tbaa !73
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csm, i64 8
  %i.cso = load ptr, ptr %i.csn, align 8
  call void %i.cso(ptr noundef nonnull align 8 dereferenceable(128) %i.csl) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit1259

_ZN7testing7MessageD2Ev.exit1259:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1258, %bb.ago, %bb.agl
  %.pn421.pn = phi { ptr, i32 } [ %i.csi, %bb.agl ], [ %.pn421, %bb.ago ], [ %.pn421, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1258 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %210) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %209) #38
  br label %bb.ahk

bb.agp:                                           ; preds = %_ZN7testing8internal8EqHelper7CompareIccTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit1251, %_ZN7testing7MessageD2Ev.exit1256
  %i.csp = load ptr, ptr %i.hg, align 8, !tbaa !113 ; 4 uses
  %.not.i.i1260 = icmp eq ptr %i.csp, null
  br i1 %.not.i.i1260, label %_ZN7testing15AssertionResultD2Ev.exit1264, label %bb.agq

bb.agq:                                           ; preds = %bb.agp
  %i.csq = load ptr, ptr %i.csp, align 8, !tbaa !74 ; 2 uses
  %i.csr = getelementptr inbounds nuw i8, ptr %i.csp, i64 16 ; 2 uses
  %i.css = icmp eq ptr %i.csq, %i.csr
  br i1 %i.css, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1261

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1261: ; preds = %bb.agq
  %i.cst = load i64, ptr %i.csr, align 8, !tbaa !78
  %i.csu = add i64 %i.cst, 1
  call void @_ZdlPvm(ptr noundef %i.csq, i64 noundef %i.csu) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1262

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1262: ; preds = %bb.agq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1261
  call void @_ZdlPvm(ptr noundef nonnull %i.csp, i64 noundef 32) #40
  br label %_ZN7testing15AssertionResultD2Ev.exit1264

_ZN7testing15AssertionResultD2Ev.exit1264:        ; preds = %bb.agp, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i1262
  call void @llvm.lifetime.end.p0(ptr nonnull %209) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %212) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %212, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.hk, align 8, !tbaa !151
  %i.csv = load i8, ptr %129, align 8, !tbaa !78  ; 2 uses
  %i.csw = trunc i8 %i.csv to i1                  ; 2 uses
  %i.csx = load ptr, ptr %i.cy, align 8           ; 5 uses
  %.not8.i.i1998 = icmp ne ptr %i.csx, null
  %.not.not.i.i1999 = select i1 %i.csw, i1 %.not8.i.i1998, i1 false
  br i1 %.not.not.i.i1999, label %bb.agr, label %bb.ahf

bb.agr:                                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit1264
  %i.csy = load i64, ptr %i.csx, align 8, !tbaa !129 ; 2 uses
  store i64 %i.csy, ptr %i.hi, align 8, !tbaa !150
  %.not7.i.i2002 = icmp eq i64 %i.csy, 0
  br i1 %.not7.i.i2002, label %bb.ahe, label %bb.ags, !prof !90

bb.ags:                                           ; preds = %bb.agr
  %i.csz = getelementptr inbounds nuw i8, ptr %i.csx, i64 12
  %i.cta = load i8, ptr %i.csz, align 4, !tbaa !122 ; 2 uses
  %i.ctb = icmp eq i8 %i.cta, 2
  br i1 %i.ctb, label %bb.agt, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i2003, !prof !90

bb.agt:                                           ; preds = %bb.ags
  %i.ctc = getelementptr inbounds nuw i8, ptr %i.csx, i64 16
  %i.ctd = load ptr, ptr %i.ctc, align 8, !tbaa !206 ; 2 uses
  %.phi.trans.insert.i.i.i2033 = getelementptr inbounds nuw i8, ptr %i.ctd, i64 12
  %.pre.i.i.i2034 = load i8, ptr %.phi.trans.insert.i.i.i2033, align 4, !tbaa !122
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i2003

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i2003: ; preds = %bb.agt, %bb.ags
  %i.cte = phi i8 [ %.pre.i.i.i2034, %bb.agt ], [ %i.cta, %bb.ags ] ; 3 uses
  %.0.i.i.i.i2004 = phi ptr [ %i.ctd, %bb.agt ], [ %i.csx, %bb.ags ] ; 11 uses
  %i.ctf = icmp eq i8 %i.cte, 3
  br i1 %i.ctf, label %bb.agu, label %bb.agz

bb.agu:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i2003
  %i.ctg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2004, i64 13
  %i.cth = load i8, ptr %i.ctg, align 1, !tbaa !78 ; 4 uses
  %i.cti = zext i8 %i.cth to i32
  store i32 %i.cti, ptr %i.hk, align 8, !tbaa !151
  %i.ctj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2004, i64 14
  %i.ctk = load i8, ptr %i.ctj, align 1           ; 2 uses
  %i.ctl = zext i8 %i.cth to i64                  ; 5 uses
  %i.ctm = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %i.ctl
  store ptr %.0.i.i.i.i2004, ptr %i.ctm, align 8, !tbaa !212
  %i.ctn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.ctl
  store i8 %i.ctk, ptr %i.ctn, align 1, !tbaa !78
  %.018.i.i.i.i.i.i2016 = zext i8 %i.ctk to i64   ; 3 uses
  %.not.i.i.i.i.i.i2017 = icmp eq i8 %i.cth, 0
  br i1 %.not.i.i.i.i.i.i2017, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i2024, label %.lr.ph.i.i.i.i.i.i2018.preheader

.lr.ph.i.i.i.i.i.i2018.preheader:                 ; preds = %bb.agu
  %xtraiter4063 = and i64 %i.ctl, 1
  %lcmp.mod4064.not = icmp eq i64 %xtraiter4063, 0
  br i1 %lcmp.mod4064.not, label %.lr.ph.i.i.i.i.i.i2018.prol.loopexit, label %.lr.ph.i.i.i.i.i.i2018.prol

.lr.ph.i.i.i.i.i.i2018.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i2018.preheader
  %indvars.iv.next.i.i.i.i.i.i2022.prol = add nsw i64 %i.ctl, -1 ; 3 uses
  %i.cto = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2004, i64 16
  %i.ctp = getelementptr inbounds nuw [8 x i8], ptr %i.cto, i64 %.018.i.i.i.i.i.i2016
  %i.ctq = load ptr, ptr %i.ctp, align 8, !tbaa !152 ; 3 uses
  %i.ctr = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv.next.i.i.i.i.i.i2022.prol
  store ptr %i.ctq, ptr %i.ctr, align 8, !tbaa !212
  %i.cts = getelementptr inbounds nuw i8, ptr %i.ctq, i64 14
  %i.ctt = load i8, ptr %i.cts, align 1           ; 2 uses
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.hm, i64 %indvars.iv.next.i.i.i.i.i.i2022.prol
  store i8 %i.ctt, ptr %i.ctu, align 1, !tbaa !78
  %.0.i.i.i.i.i.i2023.prol = zext i8 %i.ctt to i64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i2018.prol.loopexit

.lr.ph.i.i.i.i.i.i2018.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i2018.prol, %.lr.ph.i.i.i.i.i.i2018.preheader
  %indvars.iv.i.i.i.i.i.i2019.unr = phi i64 [ %i.ctl, %.lr.ph.i.i.i.i.i.i2018.preheader ], [ %indvars.iv.next.i.i.i.i.i.i2022.prol, %.lr.ph.i.i.i.i.i.i2018.prol ]
  %.021.i.i.i.i.i.i2020.unr = phi i64 [ %.018.i.i.i.i.i.i2016, %.lr.ph.i.i.i.i.i.i2018.preheader ], [ %.0.i.i.i.i.i.i2023.prol, %.lr.ph.i.i.i.i.i.i2018.prol ]
  %.01619.i.i.i.i.i.i2021.unr = phi ptr [ %.0.i.i.i.i2004, %.lr.ph.i.i.i.i.i.i2018.preheader ], [ %i.ctq, %.lr.ph.i.i.i.i.i.i2018.prol ]
  %.0.i.i.i.i.i.i2023.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i2018.preheader ], [ %.0.i.i.i.i.i.i2023.prol, %.lr.ph.i.i.i.i.i.i2018.prol ]
  %i.ctv = icmp eq i8 %i.cth, 1
  br i1 %i.ctv, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i2024, label %.lr.ph.i.i.i.i.i.i2018

.lr.ph.i.i.i.i.i.i2018:                           ; preds = %.lr.ph.i.i.i.i.i.i2018.prol.loopexit, %.lr.ph.i.i.i.i.i.i2018
  %indvars.iv.i.i.i.i.i.i2019 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i2022.1, %.lr.ph.i.i.i.i.i.i2018 ], [ %indvars.iv.i.i.i.i.i.i2019.unr, %.lr.ph.i.i.i.i.i.i2018.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i2020 = phi i64 [ %.0.i.i.i.i.i.i2023.1, %.lr.ph.i.i.i.i.i.i2018 ], [ %.021.i.i.i.i.i.i2020.unr, %.lr.ph.i.i.i.i.i.i2018.prol.loopexit ]
  %.01619.i.i.i.i.i.i2021 = phi ptr [ %i.cuf, %.lr.ph.i.i.i.i.i.i2018 ], [ %.01619.i.i.i.i.i.i2021.unr, %.lr.ph.i.i.i.i.i.i2018.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i2022 = add nsw i64 %indvars.iv.i.i.i.i.i.i2019, -1 ; 2 uses
  %i.ctw = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i2021, i64 16
  %i.ctx = getelementptr inbounds nuw [8 x i8], ptr %i.ctw, i64 %.021.i.i.i.i.i.i2020
  %i.cty = load ptr, ptr %i.ctx, align 8, !tbaa !152 ; 3 uses
  %i.ctz = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv.next.i.i.i.i.i.i2022
  store ptr %i.cty, ptr %i.ctz, align 8, !tbaa !212
  %i.cua = getelementptr inbounds nuw i8, ptr %i.cty, i64 14
  %i.cub = load i8, ptr %i.cua, align 1           ; 2 uses
  %i.cuc = getelementptr inbounds nuw i8, ptr %i.hm, i64 %indvars.iv.next.i.i.i.i.i.i2022
  store i8 %i.cub, ptr %i.cuc, align 1, !tbaa !78
  %.0.i.i.i.i.i.i2023 = zext i8 %i.cub to i64
  %indvars.iv.next.i.i.i.i.i.i2022.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i2019, -2 ; 3 uses
  %i.cud = getelementptr inbounds nuw i8, ptr %i.cty, i64 16
  %i.cue = getelementptr inbounds nuw [8 x i8], ptr %i.cud, i64 %.0.i.i.i.i.i.i2023
  %i.cuf = load ptr, ptr %i.cue, align 8, !tbaa !152 ; 3 uses
  %i.cug = getelementptr inbounds nuw [8 x i8], ptr %i.hl, i64 %indvars.iv.next.i.i.i.i.i.i2022.1
  store ptr %i.cuf, ptr %i.cug, align 8, !tbaa !212
  %i.cuh = getelementptr inbounds nuw i8, ptr %i.cuf, i64 14
  %i.cui = load i8, ptr %i.cuh, align 1           ; 2 uses
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.hm, i64 %indvars.iv.next.i.i.i.i.i.i2022.1
  store i8 %i.cui, ptr %i.cuj, align 1, !tbaa !78
  %.0.i.i.i.i.i.i2023.1 = zext i8 %i.cui to i64   ; 2 uses
  %i.cuk = icmp sgt i64 %indvars.iv.i.i.i.i.i.i2019, 2
  br i1 %i.cuk, label %.lr.ph.i.i.i.i.i.i2018, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i2024, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i2024: ; preds = %.lr.ph.i.i.i.i.i.i2018.prol.loopexit, %.lr.ph.i.i.i.i.i.i2018, %bb.agu
  %.0.lcssa.i.i.i.i.i.i2025 = phi i64 [ %.018.i.i.i.i.i.i2016, %bb.agu ], [ %.0.i.i.i.i.i.i2023.lcssa.unr, %.lr.ph.i.i.i.i.i.i2018.prol.loopexit ], [ %.0.i.i.i.i.i.i2023.1, %.lr.ph.i.i.i.i.i.i2018 ]
  %i.cul = load ptr, ptr %i.hl, align 8, !tbaa !212
  %i.cum = getelementptr inbounds nuw i8, ptr %i.cul, i64 16
  %i.cun = getelementptr inbounds nuw [8 x i8], ptr %i.cum, i64 %.0.lcssa.i.i.i.i.i.i2025
  %i.cuo = load ptr, ptr %i.cun, align 8, !tbaa !152 ; 5 uses
  %i.cup = load i64, ptr %.0.i.i.i.i2004, align 8, !tbaa !129
  %i.cuq = load i64, ptr %i.cuo, align 8, !tbaa !129 ; 2 uses
  %i.cur = sub i64 %i.cup, %i.cuq
  store i64 %i.cur, ptr %i.hj, align 8, !tbaa !213
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cuo, i64 12
  %i.cut = load i8, ptr %i.cus, align 4, !tbaa !122 ; 2 uses
  %i.cuu = icmp eq i8 %i.cut, 1
  br i1 %i.cuu, label %bb.agv, label %bb.agw

bb.agv:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i2024
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cuo, i64 16
  %i.cuw = load i64, ptr %i.cuv, align 8, !tbaa !208
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cuo, i64 24
  %i.cuy = load ptr, ptr %i.cux, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i2031 = getelementptr inbounds nuw i8, ptr %i.cuy, i64 12
  %.pre.i.i.i.i.i2032 = load i8, ptr %.phi.trans.insert.i.i.i.i.i2031, align 4, !tbaa !122
  br label %bb.agw

bb.agw:                                           ; preds = %bb.agv, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i2024
  %i.cuz = phi i8 [ %.pre.i.i.i.i.i2032, %bb.agv ], [ %i.cut, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i2024 ]
  %.010.i.i.i.i.i2026 = phi ptr [ %i.cuy, %bb.agv ], [ %i.cuo, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i2024 ] ; 2 uses
  %.0.i.i.i.i.i2027 = phi i64 [ %i.cuw, %bb.agv ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i2024 ]
  %i.cva = icmp ugt i8 %i.cuz, 5
  br i1 %i.cva, label %bb.agx, label %bb.agy

bb.agx:                                           ; preds = %bb.agw
  %i.cvb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i2026, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i2028

bb.agy:                                           ; preds = %bb.agw
  %i.cvc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i2026, i64 16
  %i.cvd = load ptr, ptr %i.cvc, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i2028

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i2028: ; preds = %bb.agy, %bb.agx
  %.pn.i.i.i.i.i2029 = phi ptr [ %i.cvb, %bb.agx ], [ %i.cvd, %bb.agy ]
  %.sroa.3.0.i.i.i.i.i2030 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i2029, i64 %.0.i.i.i.i.i2027
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i2010

bb.agz:                                           ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i2003
  store ptr %.0.i.i.i.i2004, ptr %i.hh, align 8, !tbaa !215
  %i.cve = load i64, ptr %.0.i.i.i.i2004, align 8, !tbaa !129
  %i.cvf = icmp eq i8 %i.cte, 1
  br i1 %i.cvf, label %bb.aha, label %bb.ahb

bb.aha:                                           ; preds = %bb.agz
  %i.cvg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2004, i64 16
  %i.cvh = load i64, ptr %i.cvg, align 8, !tbaa !208
  %i.cvi = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i2004, i64 24
  %i.cvj = load ptr, ptr %i.cvi, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert.i.i.i.i2014 = getelementptr inbounds nuw i8, ptr %i.cvj, i64 12
  %.pre.i.i.i.i2015 = load i8, ptr %.phi.trans.insert.i.i.i.i2014, align 4, !tbaa !122
  br label %bb.ahb

bb.ahb:                                           ; preds = %bb.aha, %bb.agz
  %i.cvk = phi i8 [ %.pre.i.i.i.i2015, %bb.aha ], [ %i.cte, %bb.agz ]
  %.010.i.i.i.i2005 = phi ptr [ %i.cvj, %bb.aha ], [ %.0.i.i.i.i2004, %bb.agz ] ; 2 uses
  %.0.i8.i.i.i2006 = phi i64 [ %i.cvh, %bb.aha ], [ 0, %bb.agz ]
  %i.cvl = icmp ugt i8 %i.cvk, 5
  br i1 %i.cvl, label %bb.ahc, label %bb.ahd

bb.ahc:                                           ; preds = %bb.ahb
  %i.cvm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i2005, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i2007

bb.ahd:                                           ; preds = %bb.ahb
  %i.cvn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i2005, i64 16
  %i.cvo = load ptr, ptr %i.cvn, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i2007

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i2007: ; preds = %bb.ahd, %bb.ahc
  %.pn.i.i.i.i2008 = phi ptr [ %i.cvm, %bb.ahc ], [ %i.cvo, %bb.ahd ]
  %.sroa.3.0.i.i.i.i2009 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i2008, i64 %.0.i8.i.i.i2006
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i2010

_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i2010: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i2007, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i2028
  %.sink.i.i.i2011 = phi i64 [ %i.cve, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i2007 ], [ %i.cuq, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i2028 ]
  %.sroa.3.0.i.sink.i.i.i2012 = phi ptr [ %.sroa.3.0.i.i.i.i2009, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i2007 ], [ %.sroa.3.0.i.i.i.i.i2030, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i2028 ]
  store i64 %.sink.i.i.i2011, ptr %212, align 8, !tbaa !77
  store ptr %.sroa.3.0.i.sink.i.i.i2012, ptr %.sroa.4.0..sroa_idx.i.i2001, align 8, !tbaa !140
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1266

bb.ahe:                                           ; preds = %bb.agr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %212, i8 0, i64 16, i1 false)
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1266

bb.ahf:                                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit1264
  %i.cvp = sext i8 %i.csv to i64
  %i.cvq = lshr i64 %i.cvp, 1                     ; 2 uses
  store i64 %i.cvq, ptr %i.hi, align 8, !tbaa !150
  %spec.select.i.i.i2000 = select i1 %i.csw, ptr null, ptr %i.dj
  store i64 %i.cvq, ptr %212, align 8, !tbaa !77
  store ptr %spec.select.i.i.i2000, ptr %.sroa.4.0..sroa_idx.i.i2001, align 8, !tbaa !140
  br label %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1266

_ZNK4absl12lts_202605264Cord10char_beginEv.exit1266: ; preds = %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i.i2010, %bb.ahe, %bb.ahf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %204, ptr noundef nonnull align 8 dereferenceable(152) %212, i64 152, i1 false), !tbaa.struct !153
  call void @llvm.lifetime.end.p0(ptr nonnull %212) #38
  %i.cvr = load i64, ptr %204, align 8, !tbaa !137 ; 2 uses
  %i.cvs = icmp ugt i64 %i.cvr, 2
  br i1 %i.cvs, label %bb.ahg, label %bb.ahh, !prof !127

bb.ahg:                                           ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1266
  %i.cvt = load ptr, ptr %.sroa.4.0..sroa_idx.i.i1931, align 8, !tbaa !138
  %i.cvu = getelementptr inbounds nuw i8, ptr %i.cvt, i64 2
  store ptr %i.cvu, ptr %.sroa.4.0..sroa_idx.i.i1931, align 8, !tbaa !138
  %i.cvv = add i64 %i.cvr, -2                     ; 2 uses
  store i64 %i.cvv, ptr %204, align 8, !tbaa !137
  %i.cvw = load i64, ptr %i.gv, align 8, !tbaa !150
  %i.cvx = add i64 %i.cvw, -2
  store i64 %i.cvx, ptr %i.gv, align 8, !tbaa !150
  br label %bb.ahj

bb.ahh:                                           ; preds = %_ZNK4absl12lts_202605264Cord10char_beginEv.exit1266
  %i.cvy = load i32, ptr %i.gx, align 8, !tbaa !151 ; 2 uses
  %i.cvz = icmp sgt i32 %i.cvy, -1
  br i1 %i.cvz, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i1268, label %.thread4028

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i1268: ; preds = %bb.ahh
  %i.cwa = zext nneg i32 %i.cvy to i64
  %i.cwb = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.cwa
  %i.cwc = load ptr, ptr %i.cwb, align 8, !tbaa !212
  %.not4.i.i1269 = icmp eq ptr %i.cwc, null
  br i1 %.not4.i.i1269, label %.thread4028, label %bb.ahi

bb.ahi:                                           ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i1268
  invoke void @_ZN4absl12lts_202605264Cord13ChunkIterator17AdvanceBytesBtreeEm(ptr noundef nonnull align 8 dereferenceable(152) %204, i64 noundef 2)
          to label %._crit_edge3423 unwind label %bb.afk

._crit_edge3423:                                  ; preds = %bb.ahi
  %.sroa.0.0.copyload.i.i1272.pre = load i64, ptr %204, align 8, !tbaa !77
  br label %bb.ahj

.thread4028:                                      ; preds = %bb.ahh, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i.i1268
  store i64 0, ptr %i.gv, align 8, !tbaa !150
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #38
  br label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit1278.thread2298

bb.ahj:                                           ; preds = %._crit_edge3423, %bb.ahg
  %.sroa.0.0.copyload.i.i1272 = phi i64 [ %.sroa.0.0.copyload.i.i1272.pre, %._crit_edge3423 ], [ %i.cvv, %bb.ahg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %213) #38
  %i.cwd = icmp ult i64 %.sroa.0.0.copyload.i.i1272, 3
  br i1 %i.cwd, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit1278.thread2298, label %_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit1278

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit1278.thread2298: ; preds = %.thread4028, %bb.ahj
  store i8 0, ptr %213, align 8, !tbaa !110
  store ptr null, ptr %i.hn, align 8, !tbaa !133
  store i8 1, ptr %i.ho, align 8, !tbaa !135
  br label %bb.ahl

_ZN4absl12lts_2026052610StartsWithESt17basic_string_viewIcSt11char_traitsIcEES4_.exit1278: ; preds = %bb.ahj
  %.sroa.2.0.copyload.i.i1274 = load ptr, ptr %.sroa.4.0..sroa_idx.i.i1931, align 8, !tbaa !140 ; 2 uses
  %i.cwe = load i16, ptr %.sroa.2.0.copyload.i.i1274, align 1
  %i.cwf = xor i16 %i.cwe, 25699
end_hunk_13
begin_hunk_14_@_ZN34CordTest_ChecksummedEmptyCord_Test8TestBodyEv:bb.a

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i928: ; preds = %bb.so
  invoke void @_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cEENS_15AssertionResultEPKcSB_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %113, ptr noundef nonnull @.str.493, ptr noundef nonnull @.str.251, ptr noundef nonnull align 8 dereferenceable(32) %112, ptr noundef nonnull align 1 dereferenceable(1) @.str.57)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit934 unwind label %bb.sr

_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit934: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i931, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i928
  %i.anc = load i8, ptr %113, align 8, !tbaa !110, !range !111, !noundef !112
  %i.and = trunc nuw i8 %i.anc to i1
  br i1 %i.and, label %bb.tb, label %bb.ss

bb.sp:                                            ; preds = %_ZN7testing7MessageD2Ev.exit922, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit914
  %.pn332.pn.pn = phi { ptr, i32 } [ %.pn332.pn, %_ZN7testing7MessageD2Ev.exit922 ], [ %.pn330, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit914 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %108) #38
  br label %bb.ym

bb.sq:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit927
  %i.ane = landingpad { ptr, i32 }
          cleanup
  br label %bb.yl

bb.sr:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread6.i.i928, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread.i.i931
  %i.anf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ti

bb.ss:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit934
  call void @llvm.lifetime.start.p0(ptr nonnull %114) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %114)
          to label %bb.st unwind label %bb.sx

bb.st:                                            ; preds = %bb.ss
  call void @llvm.lifetime.start.p0(ptr nonnull %115) #38
  %i.ang = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !113 ; 2 uses
  %.not.i.i935 = icmp eq ptr %i.anh, null
  br i1 %.not.i.i935, label %_ZNK7testing15AssertionResult15failure_messageEv.exit936, label %bb.su

bb.su:                                            ; preds = %bb.st
  %i.ani = load ptr, ptr %i.anh, align 8, !tbaa !74
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit936

_ZNK7testing15AssertionResult15failure_messageEv.exit936: ; preds = %bb.su, %bb.st
  %i.anj = phi ptr [ %i.ani, %bb.su ], [ @.str.57, %bb.st ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %115, i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef 3363, ptr noundef %i.anj)
          to label %bb.sv unwind label %bb.sy

bb.sv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit936
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %115, ptr noundef nonnull align 8 dereferenceable(8) %114)
          to label %bb.sw unwind label %bb.sz

bb.sw:                                            ; preds = %bb.sv
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %115) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #38
  %i.ank = load ptr, ptr %114, align 8, !tbaa !115 ; 3 uses
  %.not.i.i937 = icmp eq ptr %i.ank, null
  br i1 %.not.i.i937, label %_ZN7testing7MessageD2Ev.exit939, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i938

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i938: ; preds = %bb.sw
  %i.anl = load ptr, ptr %i.ank, align 8, !tbaa !73
  %i.anm = getelementptr inbounds nuw i8, ptr %i.anl, i64 8
  %i.ann = load ptr, ptr %i.anm, align 8
  call void %i.ann(ptr noundef nonnull align 8 dereferenceable(128) %i.ank) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit939

_ZN7testing7MessageD2Ev.exit939:                  ; preds = %bb.sw, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i938
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #38
  br label %bb.tb

bb.sx:                                            ; preds = %bb.ss
  %i.ano = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit942

bb.sy:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit936
  %i.anp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ta

bb.sz:                                            ; preds = %bb.sv
  %i.anq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %115) #38
  br label %bb.ta

bb.ta:                                            ; preds = %bb.sz, %bb.sy
  %.pn336 = phi { ptr, i32 } [ %i.anq, %bb.sz ], [ %i.anp, %bb.sy ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %115) #38
  %i.anr = load ptr, ptr %114, align 8, !tbaa !115 ; 3 uses
  %.not.i.i940 = icmp eq ptr %i.anr, null
  br i1 %.not.i.i940, label %_ZN7testing7MessageD2Ev.exit942, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i941

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i941: ; preds = %bb.ta
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !73
  %i.ant = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  %i.anu = load ptr, ptr %i.ant, align 8
  call void %i.anu(ptr noundef nonnull align 8 dereferenceable(128) %i.anr) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit942

_ZN7testing7MessageD2Ev.exit942:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i941, %bb.ta, %bb.sx
  %.pn336.pn = phi { ptr, i32 } [ %i.ano, %bb.sx ], [ %.pn336, %bb.ta ], [ %.pn336, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i941 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %114) #38
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %113) #38
  br label %bb.ti

bb.tb:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA1_cTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSJ_RKSB_RKSC_.exit934, %_ZN7testing7MessageD2Ev.exit939
  %i.anv = getelementptr inbounds nuw i8, ptr %113, i64 8
  %i.anw = load ptr, ptr %i.anv, align 8, !tbaa !113 ; 4 uses
  %.not.i.i943 = icmp eq ptr %i.anw, null
  br i1 %.not.i.i943, label %bb.td, label %bb.tc

bb.tc:                                            ; preds = %bb.tb
  %i.anx = load ptr, ptr %i.anw, align 8, !tbaa !74 ; 2 uses
  %i.any = getelementptr inbounds nuw i8, ptr %i.anw, i64 16 ; 2 uses
  %i.anz = icmp eq ptr %i.anx, %i.any
  br i1 %i.anz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i945, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i944

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i944: ; preds = %bb.tc
  %i.aoa = load i64, ptr %i.any, align 8, !tbaa !78
  %i.aob = add i64 %i.aoa, 1
  call void @_ZdlPvm(ptr noundef %i.anx, i64 noundef %i.aob) #40
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i945

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i945: ; preds = %bb.tc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i944
  call void @_ZdlPvm(ptr noundef nonnull %i.anw, i64 noundef 32) #40
  br label %bb.td

bb.td:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i945, %bb.tb
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %116) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  call void @llvm.experimental.noalias.scope.decl(metadata !2132)
  %i.aoc = getelementptr inbounds nuw i8, ptr %116, i64 24 ; 2 uses
  %i.aod = getelementptr inbounds nuw i8, ptr %116, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %116, i8 0, i64 40, i1 false), !alias.scope !2133
  %i.aoe = load i8, ptr %58, align 8, !tbaa !78, !noalias !2133 ; 2 uses
  %i.aof = trunc i8 %i.aoe to i1
  %i.aog = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 4 uses
  %i.aoh = load ptr, ptr %i.aog, align 8, !noalias !2133 ; 9 uses
  %.not8.i.i.i = icmp ne ptr %i.aoh, null
  %.not.not.i.i.i = select i1 %i.aof, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.te, label %.thread1484

bb.te:                                            ; preds = %bb.td
  %i.aoi = load i64, ptr %i.aoh, align 8, !tbaa !129, !noalias !2133 ; 2 uses
  store i64 %i.aoi, ptr %i.aoc, align 8, !tbaa !150, !alias.scope !2133
  %.not7.i.i.i = icmp eq i64 %i.aoi, 0
  br i1 %.not7.i.i.i, label %.thread, label %bb.tf, !prof !90

bb.tf:                                            ; preds = %bb.te
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.aoh, i64 12
  %i.aok = load i8, ptr %i.aoj, align 4, !tbaa !122, !noalias !2133 ; 2 uses
  %i.aol = icmp eq i8 %i.aok, 2
  br i1 %i.aol, label %bb.tg, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !90

bb.tg:                                            ; preds = %bb.tf
  %i.aom = getelementptr inbounds nuw i8, ptr %i.aoh, i64 16
  %i.aon = load ptr, ptr %i.aom, align 8, !tbaa !206, !noalias !2133 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aon, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !122, !noalias !2133
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.tg, %bb.tf
  %i.aoo = phi i8 [ %.pre.i.i.i.i, %bb.tg ], [ %i.aok, %bb.tf ]
  %.0.i.i.i.i.i = phi ptr [ %i.aon, %bb.tg ], [ %i.aoh, %bb.tf ] ; 5 uses
  %cond = icmp eq i8 %i.aoo, 3
  br i1 %cond, label %bb.th, label %.thread1492

bb.th:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.aop = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.aoq = load i8, ptr %i.aop, align 1, !tbaa !78, !noalias !2133 ; 4 uses
  %i.aor = zext i8 %i.aoq to i32
  store i32 %i.aor, ptr %i.aod, align 8, !tbaa !151, !alias.scope !2133
  %i.aos = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.aot = load i8, ptr %i.aos, align 1, !noalias !2133 ; 3 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %116, i64 56 ; 4 uses
  %i.aov = zext i8 %i.aoq to i64                  ; 5 uses
  %i.aow = getelementptr inbounds nuw [8 x i8], ptr %i.aou, i64 %i.aov
  store ptr %.0.i.i.i.i.i, ptr %i.aow, align 8, !tbaa !212, !alias.scope !2133
  %i.aox = getelementptr inbounds nuw i8, ptr %116, i64 44 ; 4 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aox, i64 %i.aov
  store i8 %i.aot, ptr %i.aoy, align 1, !tbaa !78, !alias.scope !2133
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aoq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.th
  %xtraiter = and i64 %i.aov, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %.021.i.i.i.i.i.i.i.prol = zext i8 %i.aot to i64
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.aov, -1 ; 3 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.apa = getelementptr inbounds nuw [8 x i8], ptr %i.aoz, i64 %.021.i.i.i.i.i.i.i.prol
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !152, !noalias !2133 ; 3 uses
  %i.apc = getelementptr inbounds nuw [8 x i8], ptr %i.aou, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.apb, ptr %i.apc, align 8, !tbaa !212, !alias.scope !2133
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apb, i64 14
  %i.ape = load i8, ptr %i.apd, align 1, !noalias !2133 ; 2 uses
  %i.apf = getelementptr inbounds nuw i8, ptr %i.aox, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.ape, ptr %i.apf, align 1, !tbaa !78, !alias.scope !2133
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.aov, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.in.unr = phi i8 [ %i.aot, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ape, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.apb, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.apg = icmp eq i8 %i.aoq, 1
  br i1 %i.apg, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i.in = phi i8 [ %i.apt, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.in.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.apq, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.021.i.i.i.i.i.i.i = zext i8 %.021.i.i.i.i.i.i.i.in to i64
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.api = getelementptr inbounds nuw [8 x i8], ptr %i.aph, i64 %.021.i.i.i.i.i.i.i
  %i.apj = load ptr, ptr %i.api, align 8, !tbaa !152, !noalias !2133 ; 3 uses
  %i.apk = getelementptr inbounds nuw [8 x i8], ptr %i.aou, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.apj, ptr %i.apk, align 8, !tbaa !212, !alias.scope !2133
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apj, i64 14
  %i.apm = load i8, ptr %i.apl, align 1, !noalias !2133 ; 2 uses
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aox, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.apm, ptr %i.apn, align 1, !tbaa !78, !alias.scope !2133
  %.021.i.i.i.i.i.i.i.1 = zext i8 %i.apm to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apj, i64 16
  %i.app = getelementptr inbounds nuw [8 x i8], ptr %i.apo, i64 %.021.i.i.i.i.i.i.i.1
  %i.apq = load ptr, ptr %i.app, align 8, !tbaa !152, !noalias !2133 ; 3 uses
  %i.apr = getelementptr inbounds nuw [8 x i8], ptr %i.aou, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.apq, ptr %i.apr, align 8, !tbaa !212, !alias.scope !2133
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apq, i64 14
  %i.apt = load i8, ptr %i.aps, align 1, !noalias !2133 ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aox, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.apt, ptr %i.apu, align 1, !tbaa !78, !alias.scope !2133
  %i.apv = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.apv, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.th
  %.pr1217.pre.pre = load i64, ptr %i.aoc, align 8, !tbaa !150
  %.not1227 = icmp eq i64 %.pr1217.pre.pre, 0
  br i1 %.not1227, label %bb.ts, label %.thread1492

.thread:                                          ; preds = %bb.te
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #38
  br label %bb.tt

.thread1484:                                      ; preds = %bb.td
  %.not12271486 = icmp ult i8 %i.aoe, 2
  br i1 %.not12271486, label %.thread1488.critedge, label %.thread1492

bb.ti:                                            ; preds = %_ZN7testing7MessageD2Ev.exit942, %bb.sr
  %.pn336.pn.pn = phi { ptr, i32 } [ %.pn336.pn, %_ZN7testing7MessageD2Ev.exit942 ], [ %i.anf, %bb.sr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %113) #38
  br label %bb.yl

.thread1492:                                      ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, %.thread1484, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %117) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %117)
          to label %bb.tj unwind label %bb.tm

bb.tj:                                            ; preds = %.thread1492
  %i.apw = load ptr, ptr %117, align 8, !tbaa !115
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 16
  %i.apy = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.apx, ptr noundef nonnull @.str.520, i64 noundef 18)
          to label %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit unwind label %bb.tn ; 0 uses

_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit:       ; preds = %bb.tj
  call void @llvm.lifetime.start.p0(ptr nonnull %118) #38
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %118, i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef 3367, ptr noundef nonnull @.str.521)
          to label %bb.tk unwind label %bb.to

bb.tk:                                            ; preds = %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %118, ptr noundef nonnull align 8 dereferenceable(8) %117)
          to label %bb.tl unwind label %bb.tp

bb.tl:                                            ; preds = %bb.tk
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %118) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #38
  %i.apz = load ptr, ptr %117, align 8, !tbaa !115 ; 3 uses
  %.not.i.i951 = icmp eq ptr %i.apz, null
  br i1 %.not.i.i951, label %_ZN7testing7MessageD2Ev.exit953, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i952

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i952: ; preds = %bb.tl
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !73
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 8
  %i.aqc = load ptr, ptr %i.aqb, align 8
  call void %i.aqc(ptr noundef nonnull align 8 dereferenceable(128) %i.apz) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit953

_ZN7testing7MessageD2Ev.exit953:                  ; preds = %bb.tl, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i952
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #38
  br label %bb.xz

bb.tm:                                            ; preds = %.thread1492
  %i.aqd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit956

bb.tn:                                            ; preds = %bb.tj
  %i.aqe = landingpad { ptr, i32 }
          cleanup
  br label %bb.tr

bb.to:                                            ; preds = %_ZN7testing7MessagelsIA19_cEERS0_RKT_.exit
  %i.aqf = landingpad { ptr, i32 }
          cleanup
  br label %bb.tq

bb.tp:                                            ; preds = %bb.tk
  %i.aqg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %118) #38
  br label %bb.tq

bb.tq:                                            ; preds = %bb.tp, %bb.to
  %.pn340 = phi { ptr, i32 } [ %i.aqg, %bb.tp ], [ %i.aqf, %bb.to ]
  call void @llvm.lifetime.end.p0(ptr nonnull %118) #38
  br label %bb.tr

bb.tr:                                            ; preds = %bb.tq, %bb.tn
  %.pn340.pn = phi { ptr, i32 } [ %.pn340, %bb.tq ], [ %i.aqe, %bb.tn ] ; 2 uses
  %i.aqh = load ptr, ptr %117, align 8, !tbaa !115 ; 3 uses
  %.not.i.i954 = icmp eq ptr %i.aqh, null
  br i1 %.not.i.i954, label %_ZN7testing7MessageD2Ev.exit956, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i955

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i955: ; preds = %bb.tr
  %i.aqi = load ptr, ptr %i.aqh, align 8, !tbaa !73
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 8
  %i.aqk = load ptr, ptr %i.aqj, align 8
  call void %i.aqk(ptr noundef nonnull align 8 dereferenceable(128) %i.aqh) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit956

_ZN7testing7MessageD2Ev.exit956:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i955, %bb.tr, %bb.tm
  %.pn340.pn.pn = phi { ptr, i32 } [ %i.aqd, %bb.tm ], [ %.pn340.pn, %bb.tr ], [ %.pn340.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i955 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %117) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #38
  br label %bb.yl

bb.ts:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !2134)
  br label %bb.tt

bb.tt:                                            ; preds = %bb.ts, %.thread
  %i.aql = getelementptr inbounds nuw i8, ptr %120, i64 16
  %i.aqm = getelementptr inbounds nuw i8, ptr %120, i64 24 ; 2 uses
  %i.aqn = getelementptr inbounds nuw i8, ptr %120, i64 32
  %i.aqo = getelementptr inbounds nuw i8, ptr %120, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %120, i8 0, i64 40, i1 false)
  %i.aqp = load i64, ptr %i.aoh, align 8, !tbaa !129, !noalias !2134 ; 2 uses
  store i64 %i.aqp, ptr %i.aqm, align 8, !tbaa !150, !alias.scope !2134
  %.not7.i.i = icmp eq i64 %i.aqp, 0
  br i1 %.not7.i.i, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread, label %bb.tu, !prof !90

bb.tu:                                            ; preds = %bb.tt
  %i.aqq = getelementptr inbounds nuw i8, ptr %i.aoh, i64 12
  %i.aqr = load i8, ptr %i.aqq, align 4, !tbaa !122, !noalias !2134 ; 2 uses
  %i.aqs = icmp eq i8 %i.aqr, 2
  br i1 %i.aqs, label %bb.tv, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !90

bb.tv:                                            ; preds = %bb.tu
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aoh, i64 16
  %i.aqu = load ptr, ptr %i.aqt, align 8, !tbaa !206, !noalias !2134 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.aqu, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !122, !noalias !2134
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.tv, %bb.tu
  %i.aqv = phi i8 [ %.pre.i.i.i, %bb.tv ], [ %i.aqr, %bb.tu ]
  %.0.i.i.i.i = phi ptr [ %i.aqu, %bb.tv ], [ %i.aoh, %bb.tu ] ; 7 uses
  %i.aqw = icmp eq i8 %i.aqv, 3
  br i1 %i.aqw, label %bb.tw, label %bb.tx

bb.tw:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.aqx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.aqy = load i8, ptr %i.aqx, align 1, !tbaa !78, !noalias !2134 ; 4 uses
  %i.aqz = zext i8 %i.aqy to i32
  store i32 %i.aqz, ptr %i.aqo, align 8, !tbaa !151, !alias.scope !2134
  %i.ara = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.arb = load i8, ptr %i.ara, align 1, !noalias !2134 ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %120, i64 56 ; 5 uses
  %i.ard = zext i8 %i.aqy to i64                  ; 5 uses
  %i.are = getelementptr inbounds nuw [8 x i8], ptr %i.arc, i64 %i.ard
  store ptr %.0.i.i.i.i, ptr %i.are, align 8, !tbaa !212, !alias.scope !2134
  %i.arf = getelementptr inbounds nuw i8, ptr %120, i64 44 ; 4 uses
  %i.arg = getelementptr inbounds nuw i8, ptr %i.arf, i64 %i.ard
  store i8 %i.arb, ptr %i.arg, align 1, !tbaa !78, !alias.scope !2134
  %.018.i.i.i.i.i.i = zext i8 %i.arb to i64       ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aqy, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.tw
  %xtraiter1501 = and i64 %i.ard, 1
  %lcmp.mod1502.not = icmp eq i64 %xtraiter1501, 0
  br i1 %lcmp.mod1502.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.ard, -1 ; 3 uses
  %i.arh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.ari = getelementptr inbounds nuw [8 x i8], ptr %i.arh, i64 %.018.i.i.i.i.i.i
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !152, !noalias !2134 ; 3 uses
  %i.ark = getelementptr inbounds nuw [8 x i8], ptr %i.arc, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.arj, ptr %i.ark, align 8, !tbaa !212, !alias.scope !2134
  %i.arl = getelementptr inbounds nuw i8, ptr %i.arj, i64 14
  %i.arm = load i8, ptr %i.arl, align 1, !noalias !2134 ; 2 uses
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arf, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.arm, ptr %i.arn, align 1, !tbaa !78, !alias.scope !2134
  %.0.i.i.i.i.i.i961.prol = zext i8 %i.arm to i64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.ard, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i961.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.arj, %.lr.ph.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i961.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i961.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.aro = icmp eq i8 %i.aqy, 1
  br i1 %i.aro, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i961.1, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.ary, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.arq = getelementptr inbounds nuw [8 x i8], ptr %i.arp, i64 %.021.i.i.i.i.i.i
  %i.arr = load ptr, ptr %i.arq, align 8, !tbaa !152, !noalias !2134 ; 3 uses
  %i.ars = getelementptr inbounds nuw [8 x i8], ptr %i.arc, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.arr, ptr %i.ars, align 8, !tbaa !212, !alias.scope !2134
  %i.art = getelementptr inbounds nuw i8, ptr %i.arr, i64 14
  %i.aru = load i8, ptr %i.art, align 1, !noalias !2134 ; 2 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.arf, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.aru, ptr %i.arv, align 1, !tbaa !78, !alias.scope !2134
  %.0.i.i.i.i.i.i961 = zext i8 %i.aru to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arr, i64 16
  %i.arx = getelementptr inbounds nuw [8 x i8], ptr %i.arw, i64 %.0.i.i.i.i.i.i961
  %i.ary = load ptr, ptr %i.arx, align 8, !tbaa !152, !noalias !2134 ; 3 uses
  %i.arz = getelementptr inbounds nuw [8 x i8], ptr %i.arc, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.ary, ptr %i.arz, align 8, !tbaa !212, !alias.scope !2134
  %i.asa = getelementptr inbounds nuw i8, ptr %i.ary, i64 14
  %i.asb = load i8, ptr %i.asa, align 1, !noalias !2134 ; 2 uses
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arf, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.asb, ptr %i.asc, align 1, !tbaa !78, !alias.scope !2134
  %.0.i.i.i.i.i.i961.1 = zext i8 %i.asb to i64    ; 2 uses
  %i.asd = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.asd, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.tw
  %.0.lcssa.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i, %bb.tw ], [ %.0.i.i.i.i.i.i961.lcssa.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i961.1, %.lr.ph.i.i.i.i.i.i ]
  %i.ase = load ptr, ptr %i.arc, align 8, !tbaa !212, !alias.scope !2134
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 16
  %i.asg = getelementptr inbounds nuw [8 x i8], ptr %i.asf, i64 %.0.lcssa.i.i.i.i.i.i
  %i.ash = load ptr, ptr %i.asg, align 8, !tbaa !152, !noalias !2134
  %i.asi = load i64, ptr %.0.i.i.i.i, align 8, !tbaa !129, !noalias !2134
  %i.asj = load i64, ptr %i.ash, align 8, !tbaa !129, !noalias !2134
  %i.ask = sub i64 %i.asi, %i.asj
  store i64 %i.ask, ptr %i.aqn, align 8, !tbaa !213, !alias.scope !2134
  %.pr1219.pre.pre = load i64, ptr %i.aqm, align 8, !tbaa !150
  %i.asl = icmp eq i64 %.pr1219.pre.pre, 0
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

bb.tx:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.aql, align 8, !tbaa !215, !alias.scope !2134
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread: ; preds = %bb.tt
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #38
  br label %.thread1488

.thread1488.critedge:                             ; preds = %.thread1484
  call void @llvm.lifetime.end.p0(ptr nonnull %116) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %119) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %120) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %120, i8 0, i64 40, i1 false), !alias.scope !2135
  store i8 1, ptr %119, align 8, !tbaa !110
  %i.asm = getelementptr inbounds nuw i8, ptr %119, i64 8
  store ptr null, ptr %i.asm, align 8, !tbaa !133
  %i.asn = getelementptr inbounds nuw i8, ptr %119, i64 16
  store i8 1, ptr %i.asn, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #38
  br label %.thread1488

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit: ; preds = %bb.tx, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %.pr1219 = phi i1 [ false, %bb.tx ], [ %i.asl, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %i.aso = zext i1 %.pr1219 to i8
  store i8 %i.aso, ptr %119, align 8, !tbaa !110
  %i.asp = getelementptr inbounds nuw i8, ptr %119, i64 8 ; 2 uses
  store ptr null, ptr %i.asp, align 8, !tbaa !133
  %i.asq = getelementptr inbounds nuw i8, ptr %119, i64 16
  store i8 1, ptr %i.asq, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(ptr nonnull %120) #38
  br i1 %.pr1219, label %.thread1488, label %bb.ty

bb.ty:                                            ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %121) #38
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %121)
          to label %bb.tz unwind label %bb.ud

bb.tz:                                            ; preds = %bb.ty
  call void @llvm.lifetime.start.p0(ptr nonnull %122) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %124) #38
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %124, ptr noundef nonnull align 8 dereferenceable(16) %119, ptr noundef nonnull @.str.522, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38)
          to label %bb.ua unwind label %bb.ue

bb.ua:                                            ; preds = %bb.tz
  %i.asr = load ptr, ptr %124, align 8, !tbaa !74
  %i.ass = getelementptr inbounds nuw i8, ptr %124, i64 8
  %i.ast = load i64, ptr %i.ass, align 8, !tbaa !76
  store i64 %i.ast, ptr %123, align 8
  %i.asu = getelementptr inbounds nuw i8, ptr %123, i64 8
  store ptr %i.asr, ptr %i.asu, align 8
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeESt17basic_string_viewIcSt11char_traitsIcEEiS7_(ptr noundef nonnull align 8 dereferenceable(8) %122, i32 noundef 1, i64 63, ptr nonnull @.str.1, i32 noundef 3369, ptr noundef nonnull byval(%"class.std::basic_string_view") align 8 %123)
          to label %bb.ub unwind label %bb.uf

bb.ub:                                            ; preds = %bb.ua
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %122, ptr noundef nonnull align 8 dereferenceable(8) %121)
          to label %bb.uc unwind label %bb.ug

bb.uc:                                            ; preds = %bb.ub
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %122) #38
  %i.asv = load ptr, ptr %124, align 8, !tbaa !74 ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %124, i64 16 ; 2 uses
  %i.asx = icmp eq ptr %i.asv, %i.asw
  br i1 %i.asx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i970

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i970: ; preds = %bb.uc
  %i.asy = load i64, ptr %i.asw, align 8, !tbaa !78
  %i.asz = add i64 %i.asy, 1
  call void @_ZdlPvm(ptr noundef %i.asv, i64 noundef %i.asz) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972: ; preds = %bb.uc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i970
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #38
  %i.ata = load ptr, ptr %121, align 8, !tbaa !115 ; 3 uses
  %.not.i.i973 = icmp eq ptr %i.ata, null
  br i1 %.not.i.i973, label %bb.ui, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i974

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i974: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972
  %i.atb = load ptr, ptr %i.ata, align 8, !tbaa !73
  %i.atc = getelementptr inbounds nuw i8, ptr %i.atb, i64 8
  %i.atd = load ptr, ptr %i.atc, align 8
  call void %i.atd(ptr noundef nonnull align 8 dereferenceable(128) %i.ata) #38, !inline_history !2
  br label %bb.ui

bb.ud:                                            ; preds = %bb.ty
  %i.ate = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit981

bb.ue:                                            ; preds = %bb.tz
  %i.atf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978

bb.uf:                                            ; preds = %bb.ua
  %i.atg = landingpad { ptr, i32 }
          cleanup
  br label %bb.uh

bb.ug:                                            ; preds = %bb.ub
  %i.ath = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %122) #38
  br label %bb.uh

bb.uh:                                            ; preds = %bb.ug, %bb.uf
  %.pn348 = phi { ptr, i32 } [ %i.ath, %bb.ug ], [ %i.atg, %bb.uf ] ; 2 uses
  %i.ati = load ptr, ptr %124, align 8, !tbaa !74 ; 2 uses
  %i.atj = getelementptr inbounds nuw i8, ptr %124, i64 16 ; 2 uses
  %i.atk = icmp eq ptr %i.ati, %i.atj
  br i1 %i.atk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i976

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i976: ; preds = %bb.uh
  %i.atl = load i64, ptr %i.atj, align 8, !tbaa !78
  %i.atm = add i64 %i.atl, 1
  call void @_ZdlPvm(ptr noundef %i.ati, i64 noundef %i.atm) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978: ; preds = %bb.uh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i976, %bb.ue
  %.pn348.pn = phi { ptr, i32 } [ %i.atf, %bb.ue ], [ %.pn348, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i976 ], [ %.pn348, %bb.uh ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %124) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %122) #38
  %i.atn = load ptr, ptr %121, align 8, !tbaa !115 ; 3 uses
  %.not.i.i979 = icmp eq ptr %i.atn, null
  br i1 %.not.i.i979, label %_ZN7testing7MessageD2Ev.exit981, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i980

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i980: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978
  %i.ato = load ptr, ptr %i.atn, align 8, !tbaa !73
  %i.atp = getelementptr inbounds nuw i8, ptr %i.ato, i64 8
  %i.atq = load ptr, ptr %i.atp, align 8
  call void %i.atq(ptr noundef nonnull align 8 dereferenceable(128) %i.atn) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit981

_ZN7testing7MessageD2Ev.exit981:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i980, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978, %bb.ud
  %.pn348.pn.pn = phi { ptr, i32 } [ %i.ate, %bb.ud ], [ %.pn348.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit978 ], [ %.pn348.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i980 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #38
  call void @_ZN7testing8internal26AssertionResultExpectationD2Ev(ptr noundef nonnull align 8 dead_on_return(17) dereferenceable(17) %119) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %119) #38
  br label %bb.yl

bb.ui:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i974, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit972
  call void @llvm.lifetime.end.p0(ptr nonnull %121) #38
  %.pre = load ptr, ptr %i.asp, align 8, !tbaa !113 ; 4 uses
  %.not.i.i.i982 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i982, label %.thread1488, label %bb.uj

end_hunk_14
begin_hunk_15_@_ZN4absl12lts_2026052620MakeCordFromExternalIZNS0_18MakeFragmentedCordISt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEEEENS0_4CordERKT_EUlS7_E_EES9_S7_OSA_:bb.a
bb.h:                                             ; preds = %bb.g, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.p, %bb.g ]
  call void @_ZN4absl12lts_202605264CordD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613cord_internal14InvokeReleaserIZNS0_18MakeFragmentedCordISt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEEEENS0_4CordERKT_EUlS8_E_vEEvNS1_5Rank1EOSB_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 %1, ptr %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !316    ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_ZSt6invokeIZN4absl12lts_2026052618MakeFragmentedCordISt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEEEENS1_4CordERKT_EUlS7_E_JRS7_EENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSG_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !74   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.d, align 8, !tbaa !78
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #40
  br label %_ZSt6invokeIZN4absl12lts_2026052618MakeFragmentedCordISt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEEEENS1_4CordERKT_EUlS7_E_JRS7_EENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSG_.exit

_ZSt6invokeIZN4absl12lts_2026052618MakeFragmentedCordISt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEEEENS1_4CordERKT_EUlS7_E_JRS7_EENSt13invoke_resultISA_JDpT0_EE4typeEOSA_DpOSG_.exit: ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  ret void
}

declare void @_ZN4absl12lts_2026052613cord_internal9CordzInfo9TrackCordERNS1_10InlineDataENS1_18CordzUpdateTracker16MethodIdentifierEl(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #24

declare noundef i64 @_ZN4absl12lts_2026052613cord_internal25cordz_should_profile_slowERNS1_13SamplingStateE(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #0

declare void @_ZN4absl12lts_2026052613cord_internal25InitializeCordRepExternalESt17basic_string_viewIcSt11char_traitsIcEEPNS1_15CordRepExternalE(i64, ptr, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613cord_internal19CordRepExternalImplIZNS0_18MakeFragmentedCordISt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEEEENS0_4CordERKT_EUlS8_E_E7ReleaseEPNS1_15CordRepExternalE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !316  ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZN4absl12lts_2026052613cord_internal19CordRepExternalImplIZNS0_18MakeFragmentedCordISt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEEEENS0_4CordERKT_EUlS8_E_ED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !74   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !78
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 32) #40
  br label %_ZN4absl12lts_2026052613cord_internal19CordRepExternalImplIZNS0_18MakeFragmentedCordISt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEEEENS0_4CordERKT_EUlS8_E_ED2Ev.exit

_ZN4absl12lts_2026052613cord_internal19CordRepExternalImplIZNS0_18MakeFragmentedCordISt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEEEENS0_4CordERKT_EUlS8_E_ED2Ev.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #40
  br label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal19CordRepExternalImplIZNS0_18MakeFragmentedCordISt16initializer_listISt17basic_string_viewIcSt11char_traitsIcEEEEENS0_4CordERKT_EUlS8_E_ED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestMetaFactoryI18CordTest_Find_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestMetaFactoryI18CordTest_Find_TestE17CreateTestFactoryEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39 ; 3 uses
  %i.b = zext i1 %1 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryI18CordTest_Find_TestEE, i64 16), ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.b, ptr %i.c, align 8, !tbaa !2172
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24ParameterizedTestFactoryI18CordTest_Find_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal24ParameterizedTestFactoryI18CordTest_Find_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceIbE10parameter_E, align 8, !tbaa !131
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #39 ; 5 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV18CordTest_Find_Test, i64 16), ptr %i.b, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV18CordTest_Find_Test, i64 80), ptr %i.c, align 8, !tbaa !73
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #40
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_202605264Cord12CharIteratorC2EPKS1_(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 40, i1 false)
  store i32 -1, ptr %i.d, align 8, !tbaa !151
  %i.e = load i8, ptr %1, align 1, !tbaa !78      ; 2 uses
  %i.f = trunc i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %.not8.i = icmp ne ptr %i.h, null
  %.not.not.i = select i1 %i.f, i1 %.not8.i, i1 false
  br i1 %.not.not.i, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !tbaa !129  ; 2 uses
  store i64 %i.i, ptr %i.b, align 8, !tbaa !150
  %.not7.i = icmp eq i64 %i.i, 0
  br i1 %.not7.i, label %bb.o, label %bb.c, !prof !90

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.k = load i8, ptr %i.j, align 4, !tbaa !122   ; 2 uses
  %i.l = icmp eq i8 %i.k, 2
  br i1 %i.l, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i, !prof !90

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !206  ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 4, !tbaa !122
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i: ; preds = %bb.d, %bb.c
  %i.o = phi i8 [ %.pre.i.i, %bb.d ], [ %i.k, %bb.c ] ; 3 uses
  %.0.i.i.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.c ] ; 11 uses
  %i.p = icmp eq i8 %i.o, 3
  br i1 %i.p, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 13
  %i.r = load i8, ptr %i.q, align 1, !tbaa !78    ; 4 uses
  %i.s = zext i8 %i.r to i32
  store i32 %i.s, ptr %i.d, align 8, !tbaa !151
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 14
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.w = zext i8 %i.r to i64                      ; 5 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !212
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.u, ptr %i.z, align 1, !tbaa !78
  %.018.i.i.i.i.i = zext i8 %i.u to i64           ; 3 uses
  %.not.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.e
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.prol = add nsw i64 %i.w, -1 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.018.i.i.i.i.i
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !152 ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.prol
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !212
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 14
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.prol
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !78
  %.0.i.i.i.i.i.prol = zext i8 %i.af to i64       ; 2 uses
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.unr = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.prol ]
  %i.ah = icmp eq i8 %i.r, 1
  br i1 %i.ah, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ], [ %.021.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.01619.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i, -1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i, i64 16
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.021.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !152 ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !212
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 14
  %i.an = load i8, ptr %i.am, align 1             ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !78
  %.0.i.i.i.i.i = zext i8 %i.an to i64
  %indvars.iv.next.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i, -2 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i.i.i.i.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !152 ; 3 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.1
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !212
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 14
  %i.au = load i8, ptr %i.at, align 1             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.y, i64 %indvars.iv.next.i.i.i.i.i.1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !78
  %.0.i.i.i.i.i.1 = zext i8 %i.au to i64          ; 2 uses
  %i.aw = icmp sgt i64 %indvars.iv.i.i.i.i.i, 2
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i ]
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !212
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.0.lcssa.i.i.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !152 ; 5 uses
  %i.bb = load i64, ptr %.0.i.i.i, align 8, !tbaa !129
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !129 ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %i.c, align 8, !tbaa !213
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !122 ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 1
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !208
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !122
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i
  %i.bl = phi i8 [ %.pre.i.i.i.i, %bb.f ], [ %i.bf, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %.010.i.i.i.i = phi ptr [ %i.bk, %bb.f ], [ %i.ba, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi i64 [ %i.bi, %bb.f ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i ]
  %i.bm = icmp ugt i8 %i.bl, 5
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i = phi ptr [ %i.bn, %bb.h ], [ %i.bp, %bb.i ]
  %.sroa.3.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i, i64 %.0.i.i.i.i
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !215
  %i.bq = load i64, ptr %.0.i.i.i, align 8, !tbaa !129
  %i.br = icmp eq i8 %i.o, 1
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !208
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !209 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !122
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bw = phi i8 [ %.pre.i.i.i, %bb.k ], [ %i.o, %bb.j ]
  %.010.i.i.i = phi ptr [ %i.bv, %bb.k ], [ %.0.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.j ]
  %i.bx = icmp ugt i8 %i.bw, 5
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %.010.i.i.i, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !214
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i = phi ptr [ %i.by, %bb.m ], [ %i.ca, %bb.n ]
  %.sroa.3.0.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 %.0.i8.i.i
  br label %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i

_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i: ; preds = %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i
  %.sink.i.i = phi i64 [ %i.bq, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %i.bc, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  %.sroa.3.0.i.sink.i.i = phi ptr [ %.sroa.3.0.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i ], [ %.sroa.3.0.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i ]
  store i64 %.sink.i.i, ptr %0, align 8, !tbaa !77
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.3.0.i.sink.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !140
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPKS1_.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 16, i1 false)
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPKS1_.exit

bb.p:                                             ; preds = %bb.a
  %i.cb = sext i8 %i.e to i64
  %i.cc = lshr i64 %i.cb, 1                       ; 2 uses
  store i64 %i.cc, ptr %i.b, align 8, !tbaa !150
  %i.cd = load i8, ptr %1, align 8, !tbaa !78
  %i.ce = trunc i8 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i = select i1 %i.ce, ptr null, ptr %i.cf
  store i64 %i.cc, ptr %0, align 8, !tbaa !77
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %spec.select.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !140
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPKS1_.exit

_ZN4absl12lts_202605264Cord13ChunkIteratorC2EPKS1_.exit: ; preds = %_ZN4absl12lts_202605264Cord13ChunkIterator8InitTreeEPNS0_13cord_internal7CordRepE.exit.i, %bb.o, %bb.p
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestMetaFactoryI21CordTest_Subcord_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestMetaFactoryI21CordTest_Subcord_TestE17CreateTestFactoryEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39 ; 3 uses
  %i.b = zext i1 %1 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryI21CordTest_Subcord_TestEE, i64 16), ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.b, ptr %i.c, align 8, !tbaa !2174
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24ParameterizedTestFactoryI21CordTest_Subcord_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal24ParameterizedTestFactoryI21CordTest_Subcord_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceIbE10parameter_E, align 8, !tbaa !131
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #39 ; 5 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV21CordTest_Subcord_Test, i64 16), ptr %i.b, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV21CordTest_Subcord_Test, i64 80), ptr %i.c, align 8, !tbaa !73
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #40
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt23mersenne_twister_engineImLm64ELm312ELm156ELm31ELm13043109905998158313ELm29ELm6148914691236517205ELm17ELm8202884508482404352ELm37ELm18444473444759240704ELm43ELm6364136223846793005EEclEv(ptr noundef nonnull align 8 dereferenceable(2504) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
end_hunk_15
begin_hunk_16_@_ZN7testing8internal15TestMetaFactoryI35CordTest_TryFlatSubstrExternal_TestE17CreateTestFactoryEb:bb.a

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24ParameterizedTestFactoryI35CordTest_TryFlatSubstrExternal_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal24ParameterizedTestFactoryI35CordTest_TryFlatSubstrExternal_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceIbE10parameter_E, align 8, !tbaa !131
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #39 ; 5 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV35CordTest_TryFlatSubstrExternal_Test, i64 16), ptr %i.b, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV35CordTest_TryFlatSubstrExternal_Test, i64 80), ptr %i.c, align 8, !tbaa !73
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #40
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestMetaFactoryI46CordTest_TryFlatCommonlyAssumedInvariants_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestMetaFactoryI46CordTest_TryFlatCommonlyAssumedInvariants_TestE17CreateTestFactoryEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39 ; 3 uses
  %i.b = zext i1 %1 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryI46CordTest_TryFlatCommonlyAssumedInvariants_TestEE, i64 16), ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.b, ptr %i.c, align 8, !tbaa !2301
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24ParameterizedTestFactoryI46CordTest_TryFlatCommonlyAssumedInvariants_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal24ParameterizedTestFactoryI46CordTest_TryFlatCommonlyAssumedInvariants_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceIbE10parameter_E, align 8, !tbaa !131
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #39 ; 5 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV46CordTest_TryFlatCommonlyAssumedInvariants_Test, i64 16), ptr %i.b, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV46CordTest_TryFlatCommonlyAssumedInvariants_Test, i64 80), ptr %i.c, align 8, !tbaa !73
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #40
  resume { ptr, i32 } %i.d
}

declare void @_ZN4absl12lts_202605264Cord13ChunkIterator19AdvanceAndReadBytesEm(ptr dead_on_unwind writable sret(%"class.absl::lts_20260526::Cord") align 8, ptr noundef nonnull align 8 dereferenceable(152), i64 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal15TestMetaFactoryI21CordTest_Flatten_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal15TestMetaFactoryI21CordTest_Flatten_TestE17CreateTestFactoryEb(ptr noundef nonnull align 8 dereferenceable(8) %0, i1 noundef zeroext %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #39 ; 3 uses
  %i.b = zext i1 %1 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal24ParameterizedTestFactoryI21CordTest_Flatten_TestEE, i64 16), ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.b, ptr %i.c, align 8, !tbaa !2303
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal24ParameterizedTestFactoryI21CordTest_Flatten_TestED0Ev(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal24ParameterizedTestFactoryI21CordTest_Flatten_TestE10CreateTestEv(ptr noundef nonnull align 8 dereferenceable(9) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr @_ZN7testing18WithParamInterfaceIbE10parameter_E, align 8, !tbaa !131
  %i.b = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #39 ; 5 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV21CordTest_Flatten_Test, i64 16), ptr %i.b, align 8, !tbaa !73
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV21CordTest_Flatten_Test, i64 80), ptr %i.c, align 8, !tbaa !73
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 24) #40
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZL6IsFlatRKN4absl12lts_202605264CordE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #27 {
bb.a:
  %1 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 7 uses
  %2 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %1, i8 0, i64 40, i1 false), !alias.scope !2308
  %i.c = load i8, ptr %0, align 8, !tbaa !78, !noalias !2308 ; 2 uses
  %i.d = trunc i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !2308 ; 9 uses
  %.not8.i.i = icmp ne ptr %i.f, null
  %.not.not.i.i = select i1 %i.d, i1 %.not8.i.i, i1 false
  br i1 %.not.not.i.i, label %bb.b, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread81

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8, !tbaa !129, !noalias !2308 ; 2 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !150, !alias.scope !2308
  %.not7.i.i = icmp eq i64 %i.g, 0
  br i1 %.not7.i.i, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread, label %bb.c, !prof !90

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.i = load i8, ptr %i.h, align 4, !tbaa !122, !noalias !2308 ; 2 uses
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i, !prof !90

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !206, !noalias !2308 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %.pre.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !122, !noalias !2308
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.m = phi i8 [ %.pre.i.i.i, %bb.d ], [ %i.i, %bb.c ]
  %.0.i.i.i.i = phi ptr [ %i.l, %bb.d ], [ %i.f, %bb.c ] ; 6 uses
  %i.n = icmp eq i8 %i.m, 3
  br i1 %i.n, label %bb.e, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread88

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 13
  %i.p = load i8, ptr %i.o, align 1, !tbaa !78, !noalias !2308 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 14
  %i.r = load i8, ptr %i.q, align 1, !noalias !2308 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.t = zext i8 %i.p to i64                      ; 5 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %.0.i.i.i.i, ptr %i.u, align 8, !tbaa !212, !alias.scope !2308
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 %i.r, ptr %i.w, align 1, !tbaa !78, !alias.scope !2308
  %.not.i.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.e
  %xtraiter = and i64 %i.t, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %.021.i.i.i.i.i.i.prol = zext i8 %i.r to i64
  %indvars.iv.next.i.i.i.i.i.i.prol = add nsw i64 %i.t, -1 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.021.i.i.i.i.i.i.prol
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !152, !noalias !2308 ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !212, !alias.scope !2308
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !2308 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i.prol
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !78, !alias.scope !2308
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.unr = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.in.unr = phi i8 [ %i.r, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.z, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ae = icmp eq i8 %i.p, 1
  br i1 %i.ae, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.in = phi i8 [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.in.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ]
  %.021.i.i.i.i.i.i = zext i8 %.021.i.i.i.i.i.i.in to i64
  %indvars.iv.next.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i, -1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i, i64 16
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.021.i.i.i.i.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !152, !noalias !2308 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.i.i.i
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !212, !alias.scope !2308
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 14
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !2308 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !78, !alias.scope !2308
  %.021.i.i.i.i.i.i.1 = zext i8 %i.ak to i64
  %indvars.iv.next.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i, -2 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.021.i.i.i.i.i.i.1
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !152, !noalias !2308 ; 3 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !212, !alias.scope !2308
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !2308 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.next.i.i.i.i.i.i.1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !78, !alias.scope !2308
  %i.at = icmp sgt i64 %indvars.iv.i.i.i.i.i.i, 2
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.e
  %.pr.pre.pre = load i64, ptr %i.b, align 8, !tbaa !150
  %i.au = icmp eq i64 %.pr.pre.pre, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  br i1 %i.au, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.f

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread88: ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !215, !alias.scope !2308
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  br label %bb.f

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread81: ; preds = %bb.a
  %i.av = icmp ult i8 %i.c, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  br i1 %i.av, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.k

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 40, i1 false), !alias.scope !2309
  store i32 -1, ptr %i.ay, align 8, !tbaa !151, !alias.scope !2309
  %i.az = load i64, ptr %i.f, align 8, !tbaa !129, !noalias !2309 ; 3 uses
  store i64 %i.az, ptr %i.aw, align 8, !tbaa !150, !alias.scope !2309
  %.not7.i.i8 = icmp eq i64 %i.az, 0
  br i1 %.not7.i.i8, label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit41.thread, label %bb.g, !prof !90

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.bb = load i8, ptr %i.ba, align 4, !tbaa !122, !noalias !2309 ; 2 uses
  %i.bc = icmp eq i8 %i.bb, 2
  br i1 %i.bc, label %bb.h, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i9, !prof !90

bb.h:                                             ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !206, !noalias !2309 ; 2 uses
  %.phi.trans.insert.i.i.i39 = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %.pre.i.i.i40 = load i8, ptr %.phi.trans.insert.i.i.i39, align 4, !tbaa !122, !noalias !2309
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i9

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i9: ; preds = %bb.h, %bb.g
  %i.bf = phi i8 [ %.pre.i.i.i40, %bb.h ], [ %i.bb, %bb.g ]
  %.0.i.i.i.i10 = phi ptr [ %i.be, %bb.h ], [ %i.f, %bb.g ] ; 7 uses
  %i.bg = icmp eq i8 %i.bf, 3
  br i1 %i.bg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i9
  %i.bh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i10, i64 13
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !78, !noalias !2309 ; 4 uses
  %i.bj = zext i8 %i.bi to i32
  store i32 %i.bj, ptr %i.ay, align 8, !tbaa !151, !alias.scope !2309
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i10, i64 14
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !2309 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.bn = zext i8 %i.bi to i64                    ; 5 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bn
  store ptr %.0.i.i.i.i10, ptr %i.bo, align 8, !tbaa !212, !alias.scope !2309
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  store i8 %i.bl, ptr %i.bq, align 1, !tbaa !78, !alias.scope !2309
  %.018.i.i.i.i.i.i22 = zext i8 %i.bl to i64      ; 3 uses
  %.not.i.i.i.i.i.i23 = icmp eq i8 %i.bi, 0
  br i1 %.not.i.i.i.i.i.i23, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i30, label %.lr.ph.i.i.i.i.i.i24.preheader

.lr.ph.i.i.i.i.i.i24.preheader:                   ; preds = %bb.i
  %xtraiter99 = and i64 %i.bn, 1
  %lcmp.mod100.not = icmp eq i64 %xtraiter99, 0
  br i1 %lcmp.mod100.not, label %.lr.ph.i.i.i.i.i.i24.prol.loopexit, label %.lr.ph.i.i.i.i.i.i24.prol

.lr.ph.i.i.i.i.i.i24.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i24.preheader
  %indvars.iv.next.i.i.i.i.i.i28.prol = add nsw i64 %i.bn, -1 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i10, i64 16
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.018.i.i.i.i.i.i22
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !152, !noalias !2309 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next.i.i.i.i.i.i28.prol
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !212, !alias.scope !2309
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 14
  %i.bw = load i8, ptr %i.bv, align 1, !noalias !2309 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next.i.i.i.i.i.i28.prol
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !78, !alias.scope !2309
  %.0.i.i.i.i.i.i29.prol = zext i8 %i.bw to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i24.prol.loopexit

.lr.ph.i.i.i.i.i.i24.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i24.prol, %.lr.ph.i.i.i.i.i.i24.preheader
  %indvars.iv.i.i.i.i.i.i25.unr = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i24.preheader ], [ %indvars.iv.next.i.i.i.i.i.i28.prol, %.lr.ph.i.i.i.i.i.i24.prol ]
  %.021.i.i.i.i.i.i26.unr = phi i64 [ %.018.i.i.i.i.i.i22, %.lr.ph.i.i.i.i.i.i24.preheader ], [ %.0.i.i.i.i.i.i29.prol, %.lr.ph.i.i.i.i.i.i24.prol ]
  %.01619.i.i.i.i.i.i27.unr = phi ptr [ %.0.i.i.i.i10, %.lr.ph.i.i.i.i.i.i24.preheader ], [ %i.bt, %.lr.ph.i.i.i.i.i.i24.prol ]
  %.0.i.i.i.i.i.i29.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i24.preheader ], [ %.0.i.i.i.i.i.i29.prol, %.lr.ph.i.i.i.i.i.i24.prol ]
  %i.by = icmp eq i8 %i.bi, 1
  br i1 %i.by, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i30, label %.lr.ph.i.i.i.i.i.i24

.lr.ph.i.i.i.i.i.i24:                             ; preds = %.lr.ph.i.i.i.i.i.i24.prol.loopexit, %.lr.ph.i.i.i.i.i.i24
  %indvars.iv.i.i.i.i.i.i25 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i28.1, %.lr.ph.i.i.i.i.i.i24 ], [ %indvars.iv.i.i.i.i.i.i25.unr, %.lr.ph.i.i.i.i.i.i24.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i26 = phi i64 [ %.0.i.i.i.i.i.i29.1, %.lr.ph.i.i.i.i.i.i24 ], [ %.021.i.i.i.i.i.i26.unr, %.lr.ph.i.i.i.i.i.i24.prol.loopexit ]
  %.01619.i.i.i.i.i.i27 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i24 ], [ %.01619.i.i.i.i.i.i27.unr, %.lr.ph.i.i.i.i.i.i24.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i28 = add nsw i64 %indvars.iv.i.i.i.i.i.i25, -1 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i27, i64 16
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.021.i.i.i.i.i.i26
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !152, !noalias !2309 ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next.i.i.i.i.i.i28
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !212, !alias.scope !2309
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 14
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !2309 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next.i.i.i.i.i.i28
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !78, !alias.scope !2309
  %.0.i.i.i.i.i.i29 = zext i8 %i.ce to i64
  %indvars.iv.next.i.i.i.i.i.i28.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i25, -2 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %.0.i.i.i.i.i.i29
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !152, !noalias !2309 ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %indvars.iv.next.i.i.i.i.i.i28.1
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !212, !alias.scope !2309
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 14
  %i.cl = load i8, ptr %i.ck, align 1, !noalias !2309 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next.i.i.i.i.i.i28.1
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !78, !alias.scope !2309
  %.0.i.i.i.i.i.i29.1 = zext i8 %i.cl to i64      ; 2 uses
  %i.cn = icmp sgt i64 %indvars.iv.i.i.i.i.i.i25, 2
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.i24, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i30, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i30: ; preds = %.lr.ph.i.i.i.i.i.i24.prol.loopexit, %.lr.ph.i.i.i.i.i.i24, %bb.i
  %.0.lcssa.i.i.i.i.i.i31 = phi i64 [ %.018.i.i.i.i.i.i22, %bb.i ], [ %.0.i.i.i.i.i.i29.lcssa.unr, %.lr.ph.i.i.i.i.i.i24.prol.loopexit ], [ %.0.i.i.i.i.i.i29.1, %.lr.ph.i.i.i.i.i.i24 ]
  %i.co = load ptr, ptr %i.bm, align 8, !tbaa !212, !alias.scope !2309
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.0.lcssa.i.i.i.i.i.i31
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !152, !noalias !2309
  %i.cs = load i64, ptr %.0.i.i.i.i10, align 8, !tbaa !129, !noalias !2309 ; 2 uses
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !129, !noalias !2309 ; 3 uses
  %i.cu = sub i64 %i.cs, %i.ct
  store i64 %i.cu, ptr %i.ax, align 8, !tbaa !213, !alias.scope !2309
  %.pre.pre = load i64, ptr %i.aw, align 8, !tbaa !150
  %i.cv = icmp eq i64 %i.cs, %i.ct
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit41

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i9
  %i.cw = load i64, ptr %.0.i.i.i.i10, align 8, !tbaa !129, !noalias !2309
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit41

bb.k:                                             ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread81
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit41.thread

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit41.thread: ; preds = %bb.f, %bb.k
  %.ph84 = phi ptr [ %i.cx, %bb.k ], [ %i.aw, %bb.f ]
  store i64 0, ptr %.ph84, align 8, !tbaa !150
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit41: ; preds = %bb.j, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i30
  %.pre = phi i64 [ %.pre.pre, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i30 ], [ %i.az, %bb.j ] ; 2 uses
  %i.cy = phi i1 [ %i.cv, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i30 ], [ true, %bb.j ]
  %.sink.i.i.i17 = phi i64 [ %i.ct, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i30 ], [ %i.cw, %bb.j ] ; 2 uses
  %i.cz = sub i64 %.pre, %.sink.i.i.i17
  store i64 %i.cz, ptr %i.aw, align 8, !tbaa !150
  %.not.i = icmp eq i64 %.pre, %.sink.i.i.i17
  br i1 %.not.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit41
  %i.da = load i32, ptr %i.ay, align 8, !tbaa !151 ; 2 uses
  %i.db = icmp sgt i32 %i.da, -1
  br i1 %i.db, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.dd = zext nneg i32 %i.da to i64              ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !212
  %.not2.i = icmp eq ptr %i.df, null
  %brmerge = select i1 %.not2.i, i1 true, i1 %i.cy
  br i1 %brmerge, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.m

bb.m:                                             ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.dg = load ptr, ptr %i.dc, align 8, !tbaa !212
  %i.dh = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.di = load i8, ptr %i.dh, align 4, !tbaa !78
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 15
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !78
  %i.dm = zext i8 %i.dl to i64
  %i.dn = add nsw i64 %i.dm, -1
  %i.do = icmp eq i64 %i.dn, %i.dj
  br i1 %i.do, label %.preheader, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i

.preheader:                                       ; preds = %bb.m, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.m ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.m ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.dd
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next.i.i.i.i.i
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !212 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.next.i.i.i.i.i
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !78
  %i.dt = zext i8 %i.ds to i64
  %i.du = add nuw nsw i64 %i.dt, 1                ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 15
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !78
  %i.dx = zext i8 %i.dw to i64
  %i.dy = icmp eq i64 %i.du, %i.dx
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
  br i1 %i.dy, label %.preheader, label %bb.n, !llvm.loop !11

bb.n:                                             ; preds = %.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.next.i.i.i.i.i
  %i.ea = trunc i64 %i.du to i8
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !78
  %i.eb = sext i32 %indvars.iv37.i.i.i.i.i to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %bb.n
  %indvars.iv40.i.i.i.i.i = phi i64 [ %indvars.iv.next41.i.i.i.i.i, %bb.o ], [ %i.eb, %bb.n ] ; 2 uses
  %.017.i.i.i.i.i = phi ptr [ %i.ee, %bb.o ], [ %i.dq, %bb.n ]
  %.016.i.i.i.i.i = phi i64 [ %i.ei, %bb.o ], [ %i.du, %bb.n ]
  %i.ec = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i, i64 16
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.ec, i64 %.016.i.i.i.i.i
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !152 ; 3 uses
  %indvars.iv.next41.i.i.i.i.i = add nsw i64 %indvars.iv40.i.i.i.i.i, -1 ; 3 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %indvars.iv.next41.i.i.i.i.i
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !212
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 14
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !78  ; 2 uses
  %i.ei = zext i8 %i.eh to i64
  %i.ej = getelementptr inbounds i8, ptr %i.dh, i64 %indvars.iv.next41.i.i.i.i.i
  store i8 %i.eh, ptr %i.ej, align 1, !tbaa !78
  %i.ek = icmp sgt i64 %indvars.iv40.i.i.i.i.i, 1
  br i1 %i.ek, label %bb.o, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i, !llvm.loop !12

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i: ; preds = %bb.o, %bb.m
  %.pre65.pre = load i64, ptr %i.aw, align 8, !tbaa !150
  %i.el = icmp eq i64 %.pre65.pre, 0
  br label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit: ; preds = %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit41, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit41.thread, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i, %bb.l, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread81, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i
  %i.em = phi i1 [ true, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i ], [ true, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread81 ], [ true, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit.thread ], [ true, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit41 ], [ true, %_ZNK4absl12lts_202605264Cord11chunk_beginEv.exit41.thread ], [ false, %bb.l ], [ %i.el, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i.i.i.i ], [ false, %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  ret i1 %i.em
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIPKcS3_EENS_15AssertionResultES3_S3_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %i.c = load ptr, ptr %3, align 8, !tbaa !140, !noalias !2318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38, !noalias !2319
  store ptr %i.c, ptr %i.b, align 8, !tbaa !246, !noalias !2319
  call void @_ZN7testing13PrintToStringIPKvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38, !noalias !2319
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.d = load ptr, ptr %4, align 8, !tbaa !140, !noalias !2320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38, !noalias !2321
  store ptr %i.d, ptr %i.a, align 8, !tbaa !246, !noalias !2321
  invoke void @_ZN7testing13PrintToStringIPKvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !2321
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %6, align 8, !tbaa !74     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !78
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.j = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
end_hunk_16
begin_hunk_17_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605264Cord10ChunkRangeEE18DescribeNegationToEPSo:bb.a

bb.m:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE18DescribeNegationToEPSo.exit, %bb.l
  %.pre-phi25 = phi i64 [ %i.cb, %_ZNK7testing8internal11MatcherBaseIRKSt17basic_string_viewIcSt11char_traitsIcEEE18DescribeNegationToEPSo.exit ], [ %.pre24, %bb.l ]
  %.not = icmp eq i64 %i.bv, %.pre-phi25
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !3642

.loopexit:                                        ; preds = %bb.m, %_ZN7testing7MessageD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605264Cord10ChunkRangeEE15MatchAndExplainES7_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.testing::Message", align 8  ; 9 uses
  %6 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %7 = alloca %"class.testing::internal::DummyMatchResultListener", align 8 ; 6 uses
  %8 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %9 = alloca %"class.std::vector.95", align 8    ; 13 uses
  %10 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 24 uses
  %11 = alloca %"class.testing::StringMatchResultListener", align 8 ; 19 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %15 = alloca %"class.testing::Message", align 8 ; 7 uses
  %16 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 11 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 15 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  %i.c = icmp ne ptr %i.b, null                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !424  ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !423  ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 24                  ; 7 uses
  %i.l = icmp ugt i64 %i.k, 288230376151711743
  br i1 %i.l, label %.noexc, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.685) #37
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  br label %.loopexit294

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i
  %i.m = shl nuw nsw i64 %i.k, 5
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #39 ; 4 uses
  store ptr %i.n, ptr %9, align 8, !tbaa !221
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !220
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i.prol ], [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ] ; 4 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.prol ], [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16 ; 2 uses
  store ptr %i.q, ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !76
  store i8 0, ptr %i.q, align 8, !tbaa !78
  %i.s = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 32 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !3644

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i
  %.lcssa597.unr = phi ptr [ poison, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.08.i.i.i.i.i.unr = phi ptr [ %i.n, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.t, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.k, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.i ], [ %i.s, %.lr.ph.i.i.i.i.i.prol ]
  %i.u = icmp ult i64 %i.k, 4
  br i1 %i.u, label %.loopexit294, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 13 uses
  %.057.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16 ; 2 uses
  store ptr %i.v, ptr %.08.i.i.i.i.i, align 8, !tbaa !75
  %i.w = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %i.w, align 8, !tbaa !76
  store i8 0, ptr %i.v, align 8, !tbaa !78
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !75
  %i.z = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 40
  store i64 0, ptr %i.z, align 8, !tbaa !76
  store i8 0, ptr %i.y, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %i.ab = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 80 ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 72
  store i64 0, ptr %i.ac, align 8, !tbaa !76
  store i8 0, ptr %i.ab, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112 ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !75
  %i.af = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %i.af, align 8, !tbaa !76
  store i8 0, ptr %i.ae, align 8, !tbaa !78
  %i.ag = add nsw i64 %.057.i.i.i.i.i, -4         ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 128 ; 2 uses
  %.not.i.i.i.i.i.3 = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i.i.i.3, label %.loopexit294, label %.lr.ph.i.i.i.i.i, !llvm.loop !3645

.loopexit294:                                     ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2EmRKS6_.exit.thread.i ], [ %.lcssa597.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !219
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3668)
  %i.aj = load ptr, ptr %1, align 8, !tbaa !438, !noalias !3668 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3669)
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %10, i8 0, i64 40, i1 false), !alias.scope !3670
  store i32 -1, ptr %i.an, align 8, !tbaa !151, !alias.scope !3670
  %i.ao = load i8, ptr %i.aj, align 1, !tbaa !78, !noalias !3670 ; 2 uses
  %i.ap = trunc i8 %i.ao to i1                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !3670 ; 5 uses
  %.not8.i.i.i = icmp ne ptr %i.ar, null
  %.not.not.i.i.i = select i1 %i.ap, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %.loopexit294
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !129, !noalias !3670 ; 3 uses
  store i64 %i.as, ptr %i.al, align 8, !tbaa !150, !alias.scope !3670
  %.not7.i.i.i = icmp eq i64 %i.as, 0
  br i1 %.not7.i.i.i, label %._crit_edge.thread, label %bb.c, !prof !90

bb.c:                                             ; preds = %bb.b
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.au = load i8, ptr %i.at, align 4, !tbaa !122, !noalias !3670 ; 2 uses
  %i.av = icmp eq i8 %i.au, 2
  br i1 %i.av, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !90

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !206, !noalias !3670 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !122, !noalias !3670
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.ay = phi i8 [ %.pre.i.i.i.i, %bb.d ], [ %i.au, %bb.c ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ax, %bb.d ], [ %i.ar, %bb.c ] ; 11 uses
  %i.az = icmp eq i8 %i.ay, 3
  br i1 %i.az, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !78, !noalias !3670 ; 4 uses
  %i.bc = zext i8 %i.bb to i32
  store i32 %i.bc, ptr %i.an, align 8, !tbaa !151, !alias.scope !3670
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.be = load i8, ptr %i.bd, align 1, !noalias !3670 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 5 uses
  %i.bg = zext i8 %i.bb to i64                    ; 5 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bg
  store ptr %.0.i.i.i.i.i, ptr %i.bh, align 8, !tbaa !212, !alias.scope !3670
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 %i.be, ptr %i.bj, align 1, !tbaa !78, !alias.scope !3670
  %.018.i.i.i.i.i.i.i = zext i8 %i.be to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.e
  %xtraiter598 = and i64 %i.bg, 1
  %lcmp.mod599.not = icmp eq i64 %xtraiter598, 0
  br i1 %lcmp.mod599.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.bg, -1 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.018.i.i.i.i.i.i.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !152, !noalias !3670 ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !212, !alias.scope !3670
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 14
  %i.bp = load i8, ptr %i.bo, align 1, !noalias !3670 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !78, !alias.scope !3670
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.bp to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.bg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bm, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.br = icmp eq i8 %i.bb, 1
  br i1 %i.br, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %.021.i.i.i.i.i.i.i
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !152, !noalias !3670 ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !212, !alias.scope !3670
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 14
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !3670 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !78, !alias.scope !3670
  %.0.i.i.i.i.i.i.i = zext i8 %i.bx to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %.0.i.i.i.i.i.i.i
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !152, !noalias !3670 ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !212, !alias.scope !3670
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 14
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !3670 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.ce, ptr %i.cf, align 1, !tbaa !78, !alias.scope !3670
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.ce to i64      ; 2 uses
  %i.cg = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ch = load ptr, ptr %i.bf, align 8, !tbaa !212, !alias.scope !3670
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !152, !noalias !3670 ; 5 uses
  %i.cl = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !3670
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !129, !noalias !3670 ; 2 uses
  %i.cn = sub i64 %i.cl, %i.cm
  store i64 %i.cn, ptr %i.am, align 8, !tbaa !213, !alias.scope !3670
  %i.co = getelementptr inbounds nuw i8, ptr %i.ck, i64 12
  %i.cp = load i8, ptr %i.co, align 4, !tbaa !122, !noalias !3670 ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 1
  br i1 %i.cq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !208, !noalias !3670
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !209, !noalias !3670 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !122, !noalias !3670
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.cv = phi i8 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.cp, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.cu, %bb.f ], [ %i.ck, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.cs, %bb.f ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.cw = icmp ugt i8 %i.cv, 5
  br i1 %i.cw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !214, !noalias !3670
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i.i = phi ptr [ %i.cx, %bb.h ], [ %i.cz, %bb.i ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.al, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  store ptr %.0.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !215, !alias.scope !3670
  %i.da = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !3670
  %i.db = icmp eq i8 %i.ay, 1
  br i1 %i.db, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !208, !noalias !3670
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !209, !noalias !3670 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !122, !noalias !3670
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dg = phi i8 [ %.pre.i.i.i.i.i, %bb.k ], [ %i.ay, %bb.j ]
  %.010.i.i.i.i.i = phi ptr [ %i.df, %bb.k ], [ %.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.dd, %bb.k ], [ 0, %bb.j ]
  %i.dh = icmp ugt i8 %i.dg, 5
  br i1 %i.dh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.dj = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !214, !noalias !3670
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i.i = phi ptr [ %i.di, %bb.m ], [ %i.dk, %bb.n ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.o:                                             ; preds = %.loopexit294
  %i.dl = sext i8 %i.ao to i64
  %i.dm = lshr i64 %i.dl, 1                       ; 3 uses
  store i64 %i.dm, ptr %i.al, align 8, !tbaa !150, !alias.scope !3670
  %i.dn = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %spec.select.i.i.i.i = select i1 %i.ap, ptr null, ptr %i.dn
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.o
  %.sink = phi i64 [ %i.dm, %bb.o ], [ %i.da, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.cm, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %spec.select.i.i.i.i.sink = phi ptr [ %spec.select.i.i.i.i, %bb.o ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.pre360377 = phi i64 [ %i.dm, %bb.o ], [ %i.as, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  store i64 %.sink, ptr %10, align 8, !tbaa !77, !alias.scope !3670
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %spec.select.i.i.i.i.sink, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !140, !alias.scope !3670
  %.not289318 = icmp eq i64 %.pre360377, 0
  br i1 %.not289318, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %.sroa.2.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 12 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %11, i64 80
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.dz = getelementptr inbounds nuw i8, ptr %11, i64 112 ; 2 uses
  %i.ea = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.eb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ec = getelementptr i8, ptr %i.ea, i64 -24
  %i.ed = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %11, i64 40 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 128 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  %i.ei = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.ej = getelementptr i8, ptr %i.eh, i64 -24
  %i.ek = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.el = getelementptr inbounds nuw i8, ptr %11, i64 144
  %i.em = getelementptr inbounds nuw i8, ptr %10, i64 56 ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %10, i64 44 ; 5 uses
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %.pre360376 = phi i64 [ %.pre360377, %.lr.ph ], [ %i.jx, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.eo = phi i64 [ %.sink, %.lr.ph ], [ %i.jy, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %storemerge319 = phi i64 [ 0, %.lr.ph ], [ %i.jz, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 13 uses
  %i.ep = load ptr, ptr %i.e, align 8, !tbaa !424
  %i.eq = load ptr, ptr %i.d, align 8, !tbaa !423 ; 2 uses
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = ptrtoint ptr %i.eq to i64
  %i.et = sub i64 %i.er, %i.es
  %i.eu = sdiv exact i64 %i.et, 24
  %.not.not.not.not = icmp ne i64 %storemerge319, %i.eu ; 3 uses
  br i1 %.not.not.not.not, label %bb.q, label %.lr.ph331

bb.q:                                             ; preds = %bb.p
  br i1 %i.c, label %bb.r, label %bb.aj

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !176
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN7testing25StringMatchResultListenerE, i64 16), ptr %11, align 8, !tbaa !73
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.dq)
          to label %bb.s unwind label %bb.af

bb.s:                                             ; preds = %bb.r
  %i.ev = load ptr, ptr %i.d, align 8, !tbaa !423
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.ev, i64 %storemerge319 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i79, align 8, !tbaa !140
  store i64 %i.eo, ptr %12, align 8
  store ptr %.sroa.2.0.copyload.i, ptr %i.dt, align 8
end_hunk_17
begin_hunk_18_@_ZNK7testing8internal22ElementsAreMatcherImplIRKN4absl12lts_202605264Cord10ChunkRangeEE15MatchAndExplainES7_PNS_19MatchResultListenerE:bb.a
bb.bo:                                            ; preds = %_ZN7testing7MessagelsIKcEERS0_RKPT_.exit.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i124
  %i.ns = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn.i = phi { ptr, i32 } [ %i.ns, %bb.bo ], [ %i.nr, %bb.bn ]
  %i.nt = load ptr, ptr %5, align 8, !tbaa !115, !noalias !3676 ; 3 uses
  %.not.i.i4.i = icmp eq ptr %i.nt, null
  br i1 %.not.i.i4.i, label %_ZN7testing7MessageD2Ev.exit6.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i: ; preds = %bb.bp
  %i.nu = load ptr, ptr %i.nt, align 8, !tbaa !73
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 8
  %i.nw = load ptr, ptr %i.nv, align 8
  call void %i.nw(ptr noundef nonnull align 8 dereferenceable(128) %i.nt) #38, !inline_history !48
  br label %_ZN7testing7MessageD2Ev.exit6.i

_ZN7testing7MessageD2Ev.exit6.i:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i5.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38, !noalias !3676
  br label %.body127

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38, !noalias !3676
  %i.nx = load ptr, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %.not.i129 = icmp eq ptr %i.nx, null
  br i1 %.not.i129, label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %.noexc130 unwind label %bb.bu

.noexc130:                                        ; preds = %bb.br
  %i.ny = load ptr, ptr %4, align 8, !tbaa !74
  %i.nz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !76
  %i.ob = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.nx, ptr noundef %i.ny, i64 noundef %i.oa)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.bs ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %.noexc130
  %i.oc = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.oe = icmp eq ptr %i.oc, %i.od
  br i1 %i.oe, label %_ZN7testinglsERSoRKNS_7MessageE.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.of = load i64, ptr %i.od, align 8, !tbaa !78
  %i.og = add i64 %i.of, 1
  call void @_ZdlPvm(ptr noundef %i.oc, i64 noundef %i.og) #40
  br label %_ZN7testinglsERSoRKNS_7MessageE.exit.i

bb.bs:                                            ; preds = %.noexc130
  %i.oh = landingpad { ptr, i32 }
          cleanup
  %i.oi = load ptr, ptr %4, align 8, !tbaa !74    ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ok = icmp eq ptr %i.oi, %i.oj
  br i1 %i.ok, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i: ; preds = %bb.bs
  %i.ol = load i64, ptr %i.oj, align 8, !tbaa !78
  %i.om = add i64 %i.ol, 1
  call void @_ZdlPvm(ptr noundef %i.oi, i64 noundef %i.om) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %.body131

_ZN7testinglsERSoRKNS_7MessageE.exit.i:           ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit

_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit: ; preds = %_ZN7testinglsERSoRKNS_7MessageE.exit.i, %bb.bq
  %i.on = load ptr, ptr %15, align 8, !tbaa !115  ; 3 uses
  %.not.i.i = icmp eq ptr %i.on, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !73
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(128) %i.on) #38, !inline_history !2
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZN7testing19MatchResultListenerlsINS_7MessageEEERS0_RKT_.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %.loopexit

bb.bt:                                            ; preds = %_ZN7testing19MatchResultListenerlsIA11_cEERS0_RKT_.exit
  %i.or = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.bu:                                            ; preds = %bb.br
  %i.os = landingpad { ptr, i32 }
          cleanup
  br label %.body131

.body131:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i, %bb.bu
  %eh.lpad-body132 = phi { ptr, i32 } [ %i.os, %bb.bu ], [ %i.oh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i.i ] ; 2 uses
  %i.ot = load ptr, ptr %15, align 8, !tbaa !115  ; 3 uses
  %.not.i.i133 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i133, label %.body127, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134: ; preds = %.body131
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !73
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(128) %i.ot) #38, !inline_history !2
  br label %.body127

.body127:                                         ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134, %.body131, %bb.bt, %_ZN7testing7MessageD2Ev.exit6.i
  %.pn63 = phi { ptr, i32 } [ %.pn.i, %_ZN7testing7MessageD2Ev.exit6.i ], [ %i.or, %bb.bt ], [ %eh.lpad-body132, %.body131 ], [ %eh.lpad-body132, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i134 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.dt

bb.bv:                                            ; preds = %._crit_edge
  br i1 %.2455, label %bb.bw, label %.thread

bb.bw:                                            ; preds = %bb.bv
  br i1 %i.c, label %bb.bx, label %.loopexit

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !3677)
  %i.ox = load ptr, ptr %1, align 8, !tbaa !438, !noalias !3677 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3678)
  %i.oy = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 4 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %16, i8 0, i64 40, i1 false), !alias.scope !3679
  store i32 -1, ptr %i.pa, align 8, !tbaa !151, !alias.scope !3679
  %i.pb = load i8, ptr %i.ox, align 1, !tbaa !78, !noalias !3679 ; 2 uses
  %i.pc = trunc i8 %i.pb to i1                    ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.pe = load ptr, ptr %i.pd, align 8, !noalias !3679 ; 5 uses
  %.not8.i.i.i136 = icmp ne ptr %i.pe, null
  %.not.not.i.i.i137 = select i1 %i.pc, i1 %.not8.i.i.i136, i1 false
  br i1 %.not.not.i.i.i137, label %bb.by, label %bb.cl

bb.by:                                            ; preds = %bb.bx
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !129, !noalias !3679 ; 2 uses
  store i64 %i.pf, ptr %i.oy, align 8, !tbaa !150, !alias.scope !3679
  %.not7.i.i.i140 = icmp eq i64 %i.pf, 0
  br i1 %.not7.i.i.i140, label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit173, label %bb.bz, !prof !90

bb.bz:                                            ; preds = %bb.by
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 12
  %i.ph = load i8, ptr %i.pg, align 4, !tbaa !122, !noalias !3679 ; 2 uses
  %i.pi = icmp eq i8 %i.ph, 2
  br i1 %i.pi, label %bb.ca, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i141, !prof !90

bb.ca:                                            ; preds = %bb.bz
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !206, !noalias !3679 ; 2 uses
  %.phi.trans.insert.i.i.i.i171 = getelementptr inbounds nuw i8, ptr %i.pk, i64 12
  %.pre.i.i.i.i172 = load i8, ptr %.phi.trans.insert.i.i.i.i171, align 4, !tbaa !122, !noalias !3679
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i141

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i141: ; preds = %bb.ca, %bb.bz
  %i.pl = phi i8 [ %.pre.i.i.i.i172, %bb.ca ], [ %i.ph, %bb.bz ] ; 3 uses
  %.0.i.i.i.i.i142 = phi ptr [ %i.pk, %bb.ca ], [ %i.pe, %bb.bz ] ; 10 uses
  %i.pm = icmp eq i8 %i.pl, 3
  br i1 %i.pm, label %bb.cb, label %bb.cg

bb.cb:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i141
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i142, i64 13
  %i.po = load i8, ptr %i.pn, align 1, !tbaa !78, !noalias !3679 ; 4 uses
  %i.pp = zext i8 %i.po to i32
  store i32 %i.pp, ptr %i.pa, align 8, !tbaa !151, !alias.scope !3679
  %i.pq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i142, i64 14
  %i.pr = load i8, ptr %i.pq, align 1, !noalias !3679 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 5 uses
  %i.pt = zext i8 %i.po to i64                    ; 5 uses
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %i.pt
  store ptr %.0.i.i.i.i.i142, ptr %i.pu, align 8, !tbaa !212, !alias.scope !3679
  %i.pv = getelementptr inbounds nuw i8, ptr %16, i64 44 ; 4 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pt
  store i8 %i.pr, ptr %i.pw, align 1, !tbaa !78, !alias.scope !3679
  %.018.i.i.i.i.i.i.i154 = zext i8 %i.pr to i64   ; 3 uses
  %.not.i.i.i.i.i.i.i155 = icmp eq i8 %i.po, 0
  br i1 %.not.i.i.i.i.i.i.i155, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i162, label %.lr.ph.i.i.i.i.i.i.i156.preheader

.lr.ph.i.i.i.i.i.i.i156.preheader:                ; preds = %bb.cb
  %xtraiter601 = and i64 %i.pt, 1
  %lcmp.mod602.not = icmp eq i64 %xtraiter601, 0
  br i1 %lcmp.mod602.not, label %.lr.ph.i.i.i.i.i.i.i156.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i156.prol

.lr.ph.i.i.i.i.i.i.i156.prol:                     ; preds = %.lr.ph.i.i.i.i.i.i.i156.preheader
  %indvars.iv.next.i.i.i.i.i.i.i160.prol = add nsw i64 %i.pt, -1 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i142, i64 16
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %.018.i.i.i.i.i.i.i154
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !152, !noalias !3679 ; 3 uses
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.next.i.i.i.i.i.i.i160.prol
  store ptr %i.pz, ptr %i.qa, align 8, !tbaa !212, !alias.scope !3679
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pz, i64 14
  %i.qc = load i8, ptr %i.qb, align 1, !noalias !3679 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv.next.i.i.i.i.i.i.i160.prol
  store i8 %i.qc, ptr %i.qd, align 1, !tbaa !78, !alias.scope !3679
  %.0.i.i.i.i.i.i.i161.prol = zext i8 %i.qc to i64 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i156.prol.loopexit

.lr.ph.i.i.i.i.i.i.i156.prol.loopexit:            ; preds = %.lr.ph.i.i.i.i.i.i.i156.prol, %.lr.ph.i.i.i.i.i.i.i156.preheader
  %indvars.iv.i.i.i.i.i.i.i157.unr = phi i64 [ %i.pt, %.lr.ph.i.i.i.i.i.i.i156.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i160.prol, %.lr.ph.i.i.i.i.i.i.i156.prol ]
  %.021.i.i.i.i.i.i.i158.unr = phi i64 [ %.018.i.i.i.i.i.i.i154, %.lr.ph.i.i.i.i.i.i.i156.preheader ], [ %.0.i.i.i.i.i.i.i161.prol, %.lr.ph.i.i.i.i.i.i.i156.prol ]
  %.01619.i.i.i.i.i.i.i159.unr = phi ptr [ %.0.i.i.i.i.i142, %.lr.ph.i.i.i.i.i.i.i156.preheader ], [ %i.pz, %.lr.ph.i.i.i.i.i.i.i156.prol ]
  %.0.i.i.i.i.i.i.i161.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i156.preheader ], [ %.0.i.i.i.i.i.i.i161.prol, %.lr.ph.i.i.i.i.i.i.i156.prol ]
  %i.qe = icmp eq i8 %i.po, 1
  br i1 %i.qe, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i162, label %.lr.ph.i.i.i.i.i.i.i156

.lr.ph.i.i.i.i.i.i.i156:                          ; preds = %.lr.ph.i.i.i.i.i.i.i156.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i156
  %indvars.iv.i.i.i.i.i.i.i157 = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i160.1, %.lr.ph.i.i.i.i.i.i.i156 ], [ %indvars.iv.i.i.i.i.i.i.i157.unr, %.lr.ph.i.i.i.i.i.i.i156.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i158 = phi i64 [ %.0.i.i.i.i.i.i.i161.1, %.lr.ph.i.i.i.i.i.i.i156 ], [ %.021.i.i.i.i.i.i.i158.unr, %.lr.ph.i.i.i.i.i.i.i156.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i159 = phi ptr [ %i.qo, %.lr.ph.i.i.i.i.i.i.i156 ], [ %.01619.i.i.i.i.i.i.i159.unr, %.lr.ph.i.i.i.i.i.i.i156.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i160 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i157, -1 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i159, i64 16
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.qf, i64 %.021.i.i.i.i.i.i.i158
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !152, !noalias !3679 ; 3 uses
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.next.i.i.i.i.i.i.i160
  store ptr %i.qh, ptr %i.qi, align 8, !tbaa !212, !alias.scope !3679
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 14
  %i.qk = load i8, ptr %i.qj, align 1, !noalias !3679 ; 2 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv.next.i.i.i.i.i.i.i160
  store i8 %i.qk, ptr %i.ql, align 1, !tbaa !78, !alias.scope !3679
  %.0.i.i.i.i.i.i.i161 = zext i8 %i.qk to i64
  %indvars.iv.next.i.i.i.i.i.i.i160.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i157, -2 ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qh, i64 16
  %i.qn = getelementptr inbounds nuw [8 x i8], ptr %i.qm, i64 %.0.i.i.i.i.i.i.i161
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !152, !noalias !3679 ; 3 uses
  %i.qp = getelementptr inbounds nuw [8 x i8], ptr %i.ps, i64 %indvars.iv.next.i.i.i.i.i.i.i160.1
  store ptr %i.qo, ptr %i.qp, align 8, !tbaa !212, !alias.scope !3679
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qo, i64 14
  %i.qr = load i8, ptr %i.qq, align 1, !noalias !3679 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.pv, i64 %indvars.iv.next.i.i.i.i.i.i.i160.1
  store i8 %i.qr, ptr %i.qs, align 1, !tbaa !78, !alias.scope !3679
  %.0.i.i.i.i.i.i.i161.1 = zext i8 %i.qr to i64   ; 2 uses
  %i.qt = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i157, 2
  br i1 %i.qt, label %.lr.ph.i.i.i.i.i.i.i156, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i162, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i162: ; preds = %.lr.ph.i.i.i.i.i.i.i156.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i156, %bb.cb
  %.0.lcssa.i.i.i.i.i.i.i163 = phi i64 [ %.018.i.i.i.i.i.i.i154, %bb.cb ], [ %.0.i.i.i.i.i.i.i161.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i156.prol.loopexit ], [ %.0.i.i.i.i.i.i.i161.1, %.lr.ph.i.i.i.i.i.i.i156 ]
  %i.qu = load ptr, ptr %i.ps, align 8, !tbaa !212, !alias.scope !3679
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 16
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %.0.lcssa.i.i.i.i.i.i.i163
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !152, !noalias !3679 ; 5 uses
  %i.qy = load i64, ptr %.0.i.i.i.i.i142, align 8, !tbaa !129, !noalias !3679
  %i.qz = load i64, ptr %i.qx, align 8, !tbaa !129, !noalias !3679 ; 2 uses
  %i.ra = sub i64 %i.qy, %i.qz                    ; 2 uses
  store i64 %i.ra, ptr %i.oz, align 8, !tbaa !213, !alias.scope !3679
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qx, i64 12
  %i.rc = load i8, ptr %i.rb, align 4, !tbaa !122, !noalias !3679 ; 2 uses
  %i.rd = icmp eq i8 %i.rc, 1
  br i1 %i.rd, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i162
  %i.re = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %i.rf = load i64, ptr %i.re, align 8, !tbaa !208, !noalias !3679
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qx, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !209, !noalias !3679 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i169 = getelementptr inbounds nuw i8, ptr %i.rh, i64 12
  %.pre.i.i.i.i.i.i170 = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i169, align 4, !tbaa !122, !noalias !3679
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i162
  %i.ri = phi i8 [ %.pre.i.i.i.i.i.i170, %bb.cc ], [ %i.rc, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i162 ]
  %.010.i.i.i.i.i.i164 = phi ptr [ %i.rh, %bb.cc ], [ %i.qx, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i162 ] ; 2 uses
  %.0.i.i.i.i.i.i165 = phi i64 [ %i.rf, %bb.cc ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i162 ]
  %i.rj = icmp ugt i8 %i.ri, 5
  br i1 %i.rj, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.rk = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i164, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i166

bb.cf:                                            ; preds = %bb.cd
  %i.rl = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i164, i64 16
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !214, !noalias !3679
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i166

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i166: ; preds = %bb.cf, %bb.ce
  %.pn.i.i.i.i.i.i167 = phi ptr [ %i.rk, %bb.ce ], [ %i.rm, %bb.cf ]
  %.sroa.3.0.i.i.i.i.i.i168 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i167, i64 %.0.i.i.i.i.i.i165
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit173

bb.cg:                                            ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i141
  %i.rn = load i64, ptr %.0.i.i.i.i.i142, align 8, !tbaa !129, !noalias !3679
  %i.ro = icmp eq i8 %i.pl, 1
  br i1 %i.ro, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.rp = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i142, i64 16
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !208, !noalias !3679
  %i.rr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i142, i64 24
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !209, !noalias !3679 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i152 = getelementptr inbounds nuw i8, ptr %i.rs, i64 12
  %.pre.i.i.i.i.i153 = load i8, ptr %.phi.trans.insert.i.i.i.i.i152, align 4, !tbaa !122, !noalias !3679
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.rt = phi i8 [ %.pre.i.i.i.i.i153, %bb.ch ], [ %i.pl, %bb.cg ]
  %.010.i.i.i.i.i143 = phi ptr [ %i.rs, %bb.ch ], [ %.0.i.i.i.i.i142, %bb.cg ] ; 2 uses
  %.0.i8.i.i.i.i144 = phi i64 [ %i.rq, %bb.ch ], [ 0, %bb.cg ]
  %i.ru = icmp ugt i8 %i.rt, 5
  br i1 %i.ru, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.rv = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i143, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i145

bb.ck:                                            ; preds = %bb.ci
  %i.rw = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i143, i64 16
  %i.rx = load ptr, ptr %i.rw, align 8, !tbaa !214, !noalias !3679
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i145

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i145: ; preds = %bb.ck, %bb.cj
  %.pn.i.i.i.i.i146 = phi ptr [ %i.rv, %bb.cj ], [ %i.rx, %bb.ck ]
  %.sroa.3.0.i.i.i.i.i147 = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i146, i64 %.0.i8.i.i.i.i144
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit173

bb.cl:                                            ; preds = %bb.bx
  %i.ry = sext i8 %i.pb to i64
  %i.rz = lshr i64 %i.ry, 1                       ; 2 uses
  store i64 %i.rz, ptr %i.oy, align 8, !tbaa !150, !alias.scope !3679
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ox, i64 1
  %spec.select.i.i.i.i138 = select i1 %i.pc, ptr null, ptr %i.sa
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit173

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit173: ; preds = %bb.by, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i166, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i145, %bb.cl
  %.sroa.2.0.copyload.i213372 = phi ptr [ %spec.select.i.i.i.i138, %bb.cl ], [ %.sroa.3.0.i.i.i.i.i.i168, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i166 ], [ %.sroa.3.0.i.i.i.i.i147, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i145 ], [ null, %bb.by ] ; 2 uses
  %i.sb = phi i64 [ 0, %bb.cl ], [ %i.ra, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i166 ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i145 ], [ 0, %bb.by ]
  %i.sc = phi i64 [ %i.rz, %bb.cl ], [ %i.qz, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i166 ], [ %i.rn, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i145 ], [ 0, %bb.by ] ; 3 uses
  %.not58337 = icmp eq i64 %storemerge319, 0
  br i1 %.not58337, label %._crit_edge340, label %.lr.ph339

.lr.ph339:                                        ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit173
  %i.sd = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %16, i64 44 ; 5 uses
  br label %bb.co

._crit_edge340:                                   ; preds = %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit173
  %.sroa.2.0.copyload.i213 = phi ptr [ %.sroa.2.0.copyload.i213372, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit173 ], [ %.sroa.2.0.copyload.i213369, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206 ]
  %.sroa.0.0.copyload.i211 = phi i64 [ %i.sc, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit173 ], [ %.sroa.0.0.copyload.i211366, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206 ]
  %i.sf = load ptr, ptr %i.a, align 8, !tbaa !176 ; 2 uses
  %.not.i174 = icmp eq ptr %i.sf, null
  br i1 %.not.i174, label %_ZN7testing19MatchResultListenerlsImEERS0_RKT_.exit.thread, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge340
  %i.sg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.sf, ptr noundef nonnull @.str.1026, i64 noundef 15)
          to label %_ZN7testing19MatchResultListenerlsIA16_cEERS0_RKT_.exit unwind label %bb.cn ; 0 uses

bb.cn:                                            ; preds = %.noexc230, %bb.dh, %bb.dg, %bb.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit223, %bb.da, %bb.cz, %bb.cm
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %.body227

bb.co:                                            ; preds = %.lr.ph339, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206
  %.sroa.2.0.copyload.i213370 = phi ptr [ %.sroa.2.0.copyload.i213372, %.lr.ph339 ], [ %.sroa.2.0.copyload.i213369, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206 ]
  %.sroa.0.0.copyload.i211367 = phi i64 [ %i.sc, %.lr.ph339 ], [ %.sroa.0.0.copyload.i211366, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206 ]
  %i.si = phi i64 [ %i.sb, %.lr.ph339 ], [ %i.uq, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206 ] ; 5 uses
  %i.sj = phi i64 [ %i.sc, %.lr.ph339 ], [ %i.ur, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206 ] ; 3 uses
  %.032338 = phi i64 [ 0, %.lr.ph339 ], [ %i.us, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206 ]
  %i.sk = load i64, ptr %i.oy, align 8, !tbaa !150 ; 2 uses
  %i.sl = sub i64 %i.sk, %i.sj
  store i64 %i.sl, ptr %i.oy, align 8, !tbaa !150
  %.not.i176 = icmp eq i64 %i.sk, %i.sj
  br i1 %.not.i176, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.sm = load i32, ptr %i.pa, align 8, !tbaa !151 ; 2 uses
  %i.sn = icmp sgt i32 %i.sm, -1
  br i1 %i.sn, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i178, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i178: ; preds = %bb.cp
  %i.so = zext nneg i32 %i.sm to i64              ; 2 uses
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.sd, i64 %i.so
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !212
  %.not2.i179 = icmp eq ptr %i.sq, null
  br i1 %.not2.i179, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206, label %bb.cq

bb.cq:                                            ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i178
  %i.sr = icmp eq i64 %i.si, 0
  br i1 %i.sr, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit206, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.ss = load ptr, ptr %i.sd, align 8, !tbaa !212 ; 2 uses
  %i.st = load i8, ptr %i.se, align 4, !tbaa !78  ; 2 uses
  %i.su = zext i8 %i.st to i64
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 15
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !78
  %i.sx = zext i8 %i.sw to i64
  %i.sy = add nsw i64 %i.sx, -1
  %i.sz = icmp eq i64 %i.sy, %i.su
  br i1 %i.sz, label %.preheader, label %bb.cu

.preheader:                                       ; preds = %bb.cr, %.preheader
  %indvars.iv37.i.i.i.i.i195 = phi i32 [ %indvars.iv.next38.i.i.i.i.i199, %.preheader ], [ 1, %bb.cr ] ; 2 uses
  %indvars.iv.i.i.i.i.i196 = phi i64 [ %indvars.iv.next.i.i.i.i.i198, %.preheader ], [ 0, %bb.cr ] ; 2 uses
  %exitcond.not.i.i.i.i.i197 = icmp ne i64 %indvars.iv.i.i.i.i.i196, %i.so
  call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i197)
end_hunk_18
begin_hunk_19_@_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605264Cord10ChunkRangeEED0Ev:bb.a

bb.b:                                             ; preds = %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605264Cord10ChunkRangeEE8IsSharedEv.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !78
  %i.g = atomicrmw sub ptr %i.f, i32 1 acq_rel, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605264Cord10ChunkRangeEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !190
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !195
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !78
  invoke void %i.k(ptr noundef %i.l)
          to label %_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605264Cord10ChunkRangeEED2Ev.exit unwind label %bb.d, !inline_history !9

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #42, !inline_history !196
  unreachable

_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605264Cord10ChunkRangeEED2Ev.exit: ; preds = %bb.a, %_ZNK7testing8internal11MatcherBaseIRKN4absl12lts_202605264Cord10ChunkRangeEE8IsSharedEv.exit.i.i, %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605264Cord10ChunkRangeEE19MatchAndExplainImplINS8_11ValuePolicyIPKNS_16MatcherInterfaceIS7_EELb1EEEEEDTcldtclsrT_3Getfp_E15MatchAndExplainfp0_fp1_EERKS8_S7_PNS_19MatchResultListenerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !428  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2)
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605264Cord10ChunkRangeEE12DescribeImplINS8_11ValuePolicyIPKNS_16MatcherInterfaceIS7_EELb1EEEEEvRKS8_PSob(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i1 noundef zeroext %2) #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !428  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !73
  %. = select i1 %2, i64 24, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %.
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN7testing8internal11MatcherBaseIRKN4absl12lts_202605264Cord10ChunkRangeEE16GetDescriberImplINS8_11ValuePolicyIPKNS_16MatcherInterfaceIS7_EELb1EEEEEPKNS_25MatcherDescriberInterfaceERKS8_(ptr noundef nonnull align 8 dereferenceable(24) %0) #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !428
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605264Cord10ChunkRangeEEESt14default_deleteISB_EEE7DestroyEPNS0_17SharedPayloadBaseE(ptr noundef %0) #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !428  ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605264Cord10ChunkRangeEEESt14default_deleteISB_EEED2Ev.exit, label %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605264Cord10ChunkRangeEEEEclEPS9_.exit.i.i

_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605264Cord10ChunkRangeEEEEclEPS9_.exit.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #38, !inline_history !3681
  br label %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605264Cord10ChunkRangeEEESt14default_deleteISB_EEED2Ev.exit

_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605264Cord10ChunkRangeEEESt14default_deleteISB_EEED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIKN7testing16MatcherInterfaceIRKN4absl12lts_202605264Cord10ChunkRangeEEEEclEPS9_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #40
  br label %bb.c

bb.c:                                             ; preds = %_ZN7testing8internal13SharedPayloadISt10unique_ptrIKNS_16MatcherInterfaceIRKN4absl12lts_202605264Cord10ChunkRangeEEESt14default_deleteISB_EEED2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal16ContainerPrinter10PrintValueIN4absl12lts_202605264Cord10ChunkRangeEvEEvRKT_PSo(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 123, ptr %i.e, align 1, !tbaa !78
  %i.f = load ptr, ptr %1, align 8, !tbaa !73
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %1, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !420
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.c:                                             ; preds = %bb.a
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 123) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  %i.n = load ptr, ptr %0, align 8, !tbaa !438, !noalias !3686 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3687)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 40, i1 false), !alias.scope !3688
  store i32 -1, ptr %i.r, align 8, !tbaa !151, !alias.scope !3688
  %i.s = load i8, ptr %i.n, align 1, !tbaa !78, !noalias !3688 ; 2 uses
  %i.t = trunc i8 %i.s to i1                      ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !noalias !3688 ; 5 uses
  %.not8.i.i.i = icmp ne ptr %i.v, null
  %.not.not.i.i.i = select i1 %i.t, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.d, label %bb.q

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.w = load i64, ptr %i.v, align 8, !tbaa !129, !noalias !3688 ; 3 uses
  store i64 %i.w, ptr %i.p, align 8, !tbaa !150, !alias.scope !3688
  %.not7.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not7.i.i.i, label %._crit_edge.thread, label %bb.e, !prof !90

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.y = load i8, ptr %i.x, align 4, !tbaa !122, !noalias !3688 ; 2 uses
  %i.z = icmp eq i8 %i.y, 2
  br i1 %i.z, label %bb.f, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !90

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !206, !noalias !3688 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !122, !noalias !3688
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %i.ac = phi i8 [ %.pre.i.i.i.i, %bb.f ], [ %i.y, %bb.e ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.v, %bb.e ] ; 11 uses
  %i.ad = icmp eq i8 %i.ac, 3
  br i1 %i.ad, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !78, !noalias !3688 ; 4 uses
  %i.ag = zext i8 %i.af to i32
  store i32 %i.ag, ptr %i.r, align 8, !tbaa !151, !alias.scope !3688
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !3688 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.ak = zext i8 %i.af to i64                    ; 5 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ak
  store ptr %.0.i.i.i.i.i, ptr %i.al, align 8, !tbaa !212, !alias.scope !3688
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 %i.ai, ptr %i.an, align 1, !tbaa !78, !alias.scope !3688
  %.018.i.i.i.i.i.i.i = zext i8 %i.ai to i64      ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.af, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.g
  %xtraiter = and i64 %i.ak, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.ak, -1 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.018.i.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !152, !noalias !3688 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !212, !alias.scope !3688
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.at = load i8, ptr %i.as, align 1, !noalias !3688 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.at, ptr %i.au, align 1, !tbaa !78, !alias.scope !3688
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.at to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.av = icmp eq i8 %i.af, 1
  br i1 %i.av, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.021.i.i.i.i.i.i.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !152, !noalias !3688 ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !212, !alias.scope !3688
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 14
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !3688 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !78, !alias.scope !3688
  %.0.i.i.i.i.i.i.i = zext i8 %i.bb to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.0.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !152, !noalias !3688 ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !212, !alias.scope !3688
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 14
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !3688 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.bi, ptr %i.bj, align 1, !tbaa !78, !alias.scope !3688
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.bi to i64      ; 2 uses
  %i.bk = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.g
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.g ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bl = load ptr, ptr %i.aj, align 8, !tbaa !212, !alias.scope !3688
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !152, !noalias !3688 ; 5 uses
  %i.bp = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !3688
  %i.bq = load i64, ptr %i.bo, align 8, !tbaa !129, !noalias !3688 ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq
  store i64 %i.br, ptr %i.q, align 8, !tbaa !213, !alias.scope !3688
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !122, !noalias !3688 ; 2 uses
  %i.bu = icmp eq i8 %i.bt, 1
  br i1 %i.bu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !208, !noalias !3688
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !209, !noalias !3688 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !122, !noalias !3688
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bz = phi i8 [ %.pre.i.i.i.i.i.i, %bb.h ], [ %i.bt, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.by, %bb.h ], [ %i.bo, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.bw, %bb.h ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.ca = icmp ugt i8 %i.bz, 5
  br i1 %i.ca, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !214, !noalias !3688
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.pn.i.i.i.i.i.i = phi ptr [ %i.cb, %bb.j ], [ %i.cd, %bb.k ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.p, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  store ptr %.0.i.i.i.i.i, ptr %i.o, align 8, !tbaa !215, !alias.scope !3688
  %i.ce = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !3688
  %i.cf = icmp eq i8 %i.ac, 1
  br i1 %i.cf, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !208, !noalias !3688
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !209, !noalias !3688 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !122, !noalias !3688
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ck = phi i8 [ %.pre.i.i.i.i.i, %bb.m ], [ %i.ac, %bb.l ]
  %.010.i.i.i.i.i = phi ptr [ %i.cj, %bb.m ], [ %.0.i.i.i.i.i, %bb.l ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.ch, %bb.m ], [ 0, %bb.l ]
  %i.cl = icmp ugt i8 %i.ck, 5
  br i1 %i.cl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.cn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !214, !noalias !3688
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.p, %bb.o
  %.pn.i.i.i.i.i = phi ptr [ %i.cm, %bb.o ], [ %i.co, %bb.p ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.q:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.cp = sext i8 %i.s to i64
  %i.cq = lshr i64 %i.cp, 1                       ; 3 uses
  store i64 %i.cq, ptr %i.p, align 8, !tbaa !150, !alias.scope !3688
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %spec.select.i.i.i.i = select i1 %i.t, ptr null, ptr %i.cr
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.q
  %.sink.i.i.i.i.sink = phi i64 [ %i.cq, %bb.q ], [ %i.ce, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bq, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.sroa.3.0.i.sink.i.i.i.i.sink = phi ptr [ %spec.select.i.i.i.i, %bb.q ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %i.cs = phi i64 [ %i.cq, %bb.q ], [ %i.w, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  store i64 %.sink.i.i.i.i.sink, ptr %2, align 8, !tbaa !77, !alias.scope !3688
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.3.0.i.sink.i.i.i.i.sink, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !140, !alias.scope !3688
  %.not4147 = icmp eq i64 %i.cs, 0
  br i1 %.not4147, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.3.0.i.sink.i.i.i.i.sink, %.lr.ph ], [ %.sroa.2.0.copyload.i57, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sink.i.i.i.i.sink, %.lr.ph ], [ %.sroa.0.0.copyload.i54, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.cv = phi i64 [ %i.cs, %.lr.ph ], [ %i.fv, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  %.01548 = phi i64 [ 0, %.lr.ph ], [ %i.do, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %.not = icmp eq i64 %.01548, 0
  br i1 %.not, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 44, ptr %i.d, align 1, !tbaa !78
  %i.cw = load ptr, ptr %1, align 8, !tbaa !73
  %i.cx = getelementptr i8, ptr %i.cw, i64 -24
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = getelementptr inbounds i8, ptr %1, i64 %i.cy
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i64, ptr %i.da, align 8, !tbaa !420
  %.not.i17 = icmp eq i64 %i.db, 0
  br i1 %.not.i17, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

bb.u:                                             ; preds = %bb.s
  %i.dd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 44) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19: ; preds = %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.de = icmp eq i64 %.01548, 32
  br i1 %i.de, label %.thread38, label %bb.v

bb.v:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 32, ptr %i.c, align 1, !tbaa !78
  %i.df = load ptr, ptr %1, align 8, !tbaa !73
  %i.dg = getelementptr i8, ptr %i.df, i64 -24
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = getelementptr inbounds i8, ptr %1, i64 %i.dh
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !420
  %.not.i20 = icmp eq i64 %i.dk, 0
  br i1 %.not.i20, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dl = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef signext 32) ; 0 uses
  br label %bb.y

.thread38:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19
end_hunk_19
begin_hunk_20_@_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605264CordEA29_cEENS_15AssertionResultEPKcS8_RKT_RKT0_:bb.a
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !74     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !78
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.s = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !78
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_202605264CordEA46_cEENS_15AssertionResultEPKcS8_RKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(46) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  call void @_ZN7testing13PrintToStringIN4absl12lts_202605264CordEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38, !noalias !3866
  store ptr %4, ptr %i.a, align 8, !tbaa !246, !noalias !3866
  invoke void @_ZN7testing13PrintToStringIPKvEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38, !noalias !3866
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind writable sret(%"class.testing::AssertionResult") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr %6, align 8, !tbaa !74     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.e = load i64, ptr %i.c, align 8, !tbaa !78
  %i.f = add i64 %i.e, 1
  call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.g = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.j = load i64, ptr %i.h, align 8, !tbaa !78
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  ret void

bb.d:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %6, align 8, !tbaa !74     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !78
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.s = load ptr, ptr %5, align 8, !tbaa !74     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !78
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613AbslStringifyINS0_16strings_internal13StringifySinkEEEvRT_RKNS0_4CordE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::Cord::ChunkIterator", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3871)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3872)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %2, i8 0, i64 40, i1 false), !alias.scope !3873
  store i32 -1, ptr %i.c, align 8, !tbaa !151, !alias.scope !3873
  %i.d = load i8, ptr %1, align 8, !tbaa !78, !noalias !3873 ; 2 uses
  %i.e = trunc i8 %i.d to i1                      ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !noalias !3873 ; 5 uses
  %.not8.i.i.i = icmp ne ptr %i.g, null
  %.not.not.i.i.i = select i1 %i.e, i1 %.not8.i.i.i, i1 false
  br i1 %.not.not.i.i.i, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !tbaa !129, !noalias !3873 ; 3 uses
  store i64 %i.h, ptr %i.a, align 8, !tbaa !150, !alias.scope !3873
  %.not7.i.i.i = icmp eq i64 %i.h, 0
  br i1 %.not7.i.i.i, label %._crit_edge, label %bb.c, !prof !90

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.j = load i8, ptr %i.i, align 4, !tbaa !122, !noalias !3873 ; 2 uses
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i, !prof !90

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !206, !noalias !3873 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.pre.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !122, !noalias !3873
  br label %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %i.n = phi i8 [ %.pre.i.i.i.i, %bb.d ], [ %i.j, %bb.c ] ; 3 uses
  %.0.i.i.i.i.i = phi ptr [ %i.m, %bb.d ], [ %i.g, %bb.c ] ; 10 uses
  %i.o = icmp eq i8 %i.n, 3
  br i1 %i.o, label %bb.e, label %bb.j

bb.e:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 13
  %i.q = load i8, ptr %i.p, align 1, !tbaa !78, !noalias !3873 ; 4 uses
  %i.r = zext i8 %i.q to i32
  store i32 %i.r, ptr %i.c, align 8, !tbaa !151, !alias.scope !3873
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 14
  %i.t = load i8, ptr %i.s, align 1, !noalias !3873 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 5 uses
  %i.v = zext i8 %i.q to i64                      ; 5 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v
  store ptr %.0.i.i.i.i.i, ptr %i.w, align 8, !tbaa !212, !alias.scope !3873
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 %i.t, ptr %i.y, align 1, !tbaa !78, !alias.scope !3873
  %.018.i.i.i.i.i.i.i = zext i8 %i.t to i64       ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.e
  %xtraiter = and i64 %i.v, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.next.i.i.i.i.i.i.i.prol = add nsw i64 %i.v, -1 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.018.i.i.i.i.i.i.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !152, !noalias !3873 ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !212, !alias.scope !3873
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 14
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !3873 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !78, !alias.scope !3873
  %.0.i.i.i.i.i.i.i.prol = zext i8 %i.ae to i64   ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %indvars.iv.i.i.i.i.i.i.i.unr = phi i64 [ %i.v, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.021.i.i.i.i.i.i.i.unr = phi i64 [ %.018.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.01619.i.i.i.i.i.i.i.unr = phi ptr [ %.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ab, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.0.i.i.i.i.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %.0.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.ag = icmp eq i8 %i.q, 1
  br i1 %i.ag, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %indvars.iv.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.021.i.i.i.i.i.i.i = phi i64 [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ], [ %.021.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.01619.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i ], [ %.01619.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %indvars.iv.next.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.01619.i.i.i.i.i.i.i, i64 16
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.021.i.i.i.i.i.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !152, !noalias !3873 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !212, !alias.scope !3873
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 14
  %i.am = load i8, ptr %i.al, align 1, !noalias !3873 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !78, !alias.scope !3873
  %.0.i.i.i.i.i.i.i = zext i8 %i.am to i64
  %indvars.iv.next.i.i.i.i.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i.i.i.i.i, -2 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.0.i.i.i.i.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !152, !noalias !3873 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !212, !alias.scope !3873
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 14
  %i.at = load i8, ptr %i.as, align 1, !noalias !3873 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %indvars.iv.next.i.i.i.i.i.i.i.1
  store i8 %i.at, ptr %i.au, align 1, !tbaa !78, !alias.scope !3873
  %.0.i.i.i.i.i.i.i.1 = zext i8 %i.at to i64      ; 2 uses
  %i.av = icmp sgt i64 %indvars.iv.i.i.i.i.i.i.i, 2
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i, !llvm.loop !10

_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.e
  %.0.lcssa.i.i.i.i.i.i.i = phi i64 [ %.018.i.i.i.i.i.i.i, %bb.e ], [ %.0.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aw = load ptr, ptr %i.u, align 8, !tbaa !212, !alias.scope !3873
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.0.lcssa.i.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !152, !noalias !3873 ; 5 uses
  %i.ba = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !3873
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !129, !noalias !3873 ; 2 uses
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
  store i64 %i.bc, ptr %i.b, align 8, !tbaa !213, !alias.scope !3873
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.be = load i8, ptr %i.bd, align 4, !tbaa !122, !noalias !3873 ; 2 uses
  %i.bf = icmp eq i8 %i.be, 1
  br i1 %i.bf, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !208, !noalias !3873
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !209, !noalias !3873 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %.pre.i.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i.i, align 4, !tbaa !122, !noalias !3873
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i
  %i.bk = phi i8 [ %.pre.i.i.i.i.i.i, %bb.f ], [ %i.be, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %.010.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.f ], [ %i.az, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i64 [ %i.bh, %bb.f ], [ 0, %_ZN4absl12lts_2026052613cord_internal21CordRepBtreeNavigator9InitFirstEPNS1_12CordRepBtreeE.exit.i.i.i.i.i ]
  %i.bl = icmp ugt i8 %i.bk, 5
  br i1 %i.bl, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i.i, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !214, !noalias !3873
  br label %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.pn.i.i.i.i.i.i = phi ptr [ %i.bm, %bb.h ], [ %i.bo, %bb.i ]
  %.sroa.3.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i, i64 %.0.i.i.i.i.i.i
  %.pre.pre = load i64, ptr %i.a, align 8, !tbaa !150
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613cord_internal11SkipCrcNodeEPNS1_7CordRepE.exit.i.i.i.i
  %i.bp = load i64, ptr %.0.i.i.i.i.i, align 8, !tbaa !129, !noalias !3873
  %i.bq = icmp eq i8 %i.n, 1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !208, !noalias !3873
  %i.bt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !209, !noalias !3873 ; 2 uses
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 4, !tbaa !122, !noalias !3873
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bv = phi i8 [ %.pre.i.i.i.i.i, %bb.k ], [ %i.n, %bb.j ]
  %.010.i.i.i.i.i = phi ptr [ %i.bu, %bb.k ], [ %.0.i.i.i.i.i, %bb.j ] ; 2 uses
  %.0.i8.i.i.i.i = phi i64 [ %i.bs, %bb.k ], [ 0, %bb.j ]
  %i.bw = icmp ugt i8 %i.bv, 5
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 13
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %.010.i.i.i.i.i, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !214, !noalias !3873
  br label %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i

_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i: ; preds = %bb.n, %bb.m
  %.pn.i.i.i.i.i = phi ptr [ %i.bx, %bb.m ], [ %i.bz, %bb.n ]
  %.sroa.3.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 %.0.i8.i.i.i.i
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

bb.o:                                             ; preds = %bb.a
  %i.ca = sext i8 %i.d to i64
  %i.cb = lshr i64 %i.ca, 1                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %spec.select.i.i.i.i = select i1 %i.e, ptr null, ptr %i.cc
  br label %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit

_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit: ; preds = %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i, %bb.o
  %i.cd = phi i64 [ 0, %bb.o ], [ 0, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bc, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.2.0.copyload.i22 = phi ptr [ %spec.select.i.i.i.i, %bb.o ], [ %.sroa.3.0.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.sroa.3.0.i.i.i.i.i.i, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %.sroa.0.0.copyload.i19 = phi i64 [ %i.cb, %bb.o ], [ %i.bp, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %i.bb, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ]
  %i.ce = phi i64 [ %i.cb, %bb.o ], [ %i.h, %_ZN4absl12lts_2026052613cord_internal8EdgeDataEPKNS1_7CordRepE.exit.i.i.i.i ], [ %.pre.pre, %_ZN4absl12lts_2026052613cord_internal18CordRepBtreeReader4InitEPNS1_12CordRepBtreeE.exit.i.i.i.i ] ; 2 uses
  %.not13 = icmp eq i64 %i.ce, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  br label %bb.p

._crit_edge:                                      ; preds = %bb.p, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, %bb.b, %_ZNK4absl12lts_202605264Cord10ChunkRange5beginEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  ret void

bb.p:                                             ; preds = %.lr.ph, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit
  %i.ch = phi i64 [ %i.cd, %.lr.ph ], [ %i.ep, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 4 uses
  %.sroa.2.0.copyload.i = phi ptr [ %.sroa.2.0.copyload.i22, %.lr.ph ], [ %.sroa.2.0.copyload.i21, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ]
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i19, %.lr.ph ], [ %.sroa.0.0.copyload.i18, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 3 uses
  %i.ci = phi i64 [ %i.ce, %.lr.ph ], [ %i.eo, %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit ] ; 2 uses
  tail call void @_ZN4absl12lts_2026052616strings_internal13StringifySink6AppendESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 %.sroa.0.0.copyload.i, ptr %.sroa.2.0.copyload.i)
  %i.cj = sub i64 %i.ci, %.sroa.0.0.copyload.i    ; 4 uses
  store i64 %i.cj, ptr %i.a, align 8, !tbaa !150
  %.not.i = icmp eq i64 %i.ci, %.sroa.0.0.copyload.i
  br i1 %.not.i, label %._crit_edge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ck = load i32, ptr %i.c, align 8, !tbaa !151 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, -1
  br i1 %i.cl, label %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit

_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i: ; preds = %bb.q
  %i.cm = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !212
  %.not2.i = icmp eq ptr %i.co, null
  br i1 %.not2.i, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.r

bb.r:                                             ; preds = %_ZNK4absl12lts_2026052613cord_internal18CordRepBtreeReadercvbEv.exit.i
  %i.cp = icmp eq i64 %i.ch, 0
  br i1 %i.cp, label %_ZN4absl12lts_202605264Cord13ChunkIteratorppEv.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cq = load ptr, ptr %i.cf, align 8, !tbaa !212 ; 2 uses
  %i.cr = load i8, ptr %i.cg, align 4, !tbaa !78  ; 2 uses
  %i.cs = zext i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 15
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !78
  %i.cv = zext i8 %i.cu to i64
  %i.cw = add nsw i64 %i.cv, -1
  %i.cx = icmp eq i64 %i.cw, %i.cs
  br i1 %i.cx, label %.preheader, label %bb.v

.preheader:                                       ; preds = %bb.s, %.preheader
  %indvars.iv37.i.i.i.i.i = phi i32 [ %indvars.iv.next38.i.i.i.i.i, %.preheader ], [ 1, %bb.s ] ; 2 uses
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %.preheader ], [ 0, %bb.s ] ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp ne i64 %indvars.iv.i.i.i.i.i, %i.cm
  tail call void @llvm.assume(i1 %exitcond.not.i.i.i.i.i)
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1 ; 4 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next.i.i.i.i.i
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !212 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv.next.i.i.i.i.i
  %i.db = load i8, ptr %i.da, align 1, !tbaa !78
  %i.dc = zext i8 %i.db to i64
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 15
  %i.df = load i8, ptr %i.de, align 1, !tbaa !78
  %i.dg = zext i8 %i.df to i64
  %i.dh = icmp eq i64 %i.dd, %i.dg
  %indvars.iv.next38.i.i.i.i.i = add nuw i32 %indvars.iv37.i.i.i.i.i, 1
end_hunk_20
