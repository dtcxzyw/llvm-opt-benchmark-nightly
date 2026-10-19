Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_threaded_index?download=true
inline.NumInlined: 1596
inline.NumDeleted: 738
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN34ThreadedIndex_SingleException_Test8TestBodyEv:bb.a
  %1 = alloca %"class.std::vector", align 8       ; 9 uses
  %2 = alloca %"struct.(anonymous namespace)::MockThreadedIndex", align 8 ; 20 uses
  %3 = alloca %"struct.testing::internal::TrueWithString", align 8 ; 17 uses
  %4 = alloca %"class.std::function", align 8     ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i unwind label %.loopexit ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 1, ptr %i.g, align 1, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 1, ptr %i.h, align 4, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store float 0.000000e+00, ptr %i.i, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.c, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i8 0, ptr %i.j, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i8 0, i64 40, i1 false)
  %i.l = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit unwind label %.loopexit ; 7 uses

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %i.c, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !40
  store ptr %i.m, ptr %i.b, align 8, !tbaa !41
  %i.n = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1 unwind label %.loopexit ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %i.p, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i8 0, ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 25
  store i8 1, ptr %i.r, align 1, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i32 1, ptr %i.s, align 4, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store float 0.000000e+00, ptr %i.t, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.n, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  store i8 0, ptr %i.u, align 4, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32
          to label %.lr.ph.i.i.i.i.i.preheader.1 unwind label %.loopexit ; 9 uses

.lr.ph.i.i.i.i.i.preheader.1:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.n, ptr %i.x, align 8, !tbaa !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %.val.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.l, align 8, !tbaa !37, !alias.scope !181
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.1, ptr %i.w, align 8, !tbaa !37, !alias.scope !180
  store ptr null, ptr %i.l, align 8, !tbaa !37, !alias.scope !181
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 8) #31
  store ptr %i.y, ptr %i.a, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.z, ptr %i.b, align 8, !tbaa !41
  %i.aa = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2 unwind label %.loopexit ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 1, ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %i.ac, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i8 0, ptr %i.ad, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 25
  store i8 1, ptr %i.ae, align 1, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store i32 1, ptr %i.af, align 4, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store float 0.000000e+00, ptr %i.ag, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.aa, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i8 0, ptr %i.ah, align 4, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i8 0, i64 40, i1 false)
  %i.aj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %.noexc89.2 unwind label %.loopexit ; 17 uses

.noexc89.2:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.aa, ptr %i.ak, align 8, !tbaa !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !tbaa !37, !alias.scope !183
  store <2 x i64> %wide.load, ptr %i.aj, align 8, !tbaa !37, !alias.scope !182
  store <2 x ptr> splat (ptr null), ptr %i.w, align 8, !tbaa !37, !alias.scope !183
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 16) #31
  store ptr %i.al, ptr %i.a, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.am, ptr %i.b, align 8, !tbaa !41
  store ptr %i.aj, ptr %1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.0136.0188.ptr.1 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.0136.0188.ptr.2 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.0134.0189.ptr.1 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.0134.0189.ptr.2 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2, %.lr.ph.i.i.i.i.i.preheader.1, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %bb.a, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.lcssa194 = phi ptr [ null, %bb.a ], [ null, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.l, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ], [ %i.l, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1 ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader.1 ], [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %.lcssa194, ptr %1, align 8
  br label %bb.bm

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit133
  %.0.val.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bh = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  call void %i.bj(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.05.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.0.val.i.i.i.1 = load ptr, ptr %.05.i.i.i.ptr.1, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %.0.val.i.i.i.1, null
  br i1 %.not.i.i.i.i.i.i.1, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i.1, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.1

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.1: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %i.bk = load ptr, ptr %.0.val.i.i.i.1, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  call void %i.bm(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i.1) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i.1

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i.1: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.1, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.0.val.i.i.i.2 = load ptr, ptr %.05.i.i.i.ptr.2, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.2 = icmp eq ptr %.0.val.i.i.i.2, null
  br i1 %.not.i.i.i.i.i.i.2, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.2

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.2: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i.1
  %i.bn = load ptr, ptr %.0.val.i.i.i.2, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i.2) #30, !inline_history !0
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i.1, %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.2
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 32) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

.lr.ph.preheader:                                 ; preds = %.noexc89.2, %_ZN7testing15AssertionResultD2Ev.exit133
  %not..026.ptr.sroa.idx = phi i8 [ 1, %.noexc89.2 ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit133 ]
  %.not = phi i1 [ false, %.noexc89.2 ], [ true, %_ZN7testing15AssertionResultD2Ev.exit133 ]
  %.val86 = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val86, i64 36
  store i8 0, ptr %i.bq, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %.val86, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, i8 0, i64 40, i1 false)
  %.val86.1 = load ptr, ptr %.sroa.0136.0188.ptr.1, align 8, !tbaa !37 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val86.1, i64 36
  store i8 0, ptr %i.bs, align 4, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %.val86.1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i8 0, i64 40, i1 false)
  %.val86.2 = load ptr, ptr %.sroa.0136.0188.ptr.2, align 8, !tbaa !37 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.val86.2, i64 36
  store i8 0, ptr %i.bu, align 4, !tbaa !35
  %i.bv = getelementptr inbounds nuw i8, ptr %.val86.2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i32 0, ptr %i.an, align 8, !tbaa !23
  store i64 0, ptr %i.ao, align 8, !tbaa !24
  store i8 0, ptr %i.ap, align 8, !tbaa !25
  store i8 1, ptr %i.aq, align 1, !tbaa !26
  store i32 1, ptr %i.ar, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.as, align 8, !tbaa !28
  store i8 0, ptr %i.at, align 4, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.au, i8 0, i64 41, i1 false)
  store i8 %not..026.ptr.sroa.idx, ptr %i.aw, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 264) (i8, ptr @_ZTVN12_GLOBAL__N_117MockThreadedIndexINS_9MockIndexEEE, i64 16), ptr %2, align 8, !tbaa !30
  %.val83 = load ptr, ptr %i.aj, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexIN12_GLOBAL__N_19MockIndexEE8addIndexEPS2_(ptr noundef nonnull align 8 dereferenceable(113) %2, ptr noundef %.val83)
          to label %.lr.ph191.1 unwind label %bb.b

.lr.ph191.1:                                      ; preds = %.lr.ph.preheader
  %.val83.1 = load ptr, ptr %.sroa.0134.0189.ptr.1, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexIN12_GLOBAL__N_19MockIndexEE8addIndexEPS2_(ptr noundef nonnull align 8 dereferenceable(113) %2, ptr noundef %.val83.1)
          to label %.lr.ph191.2 unwind label %bb.b

.lr.ph191.2:                                      ; preds = %.lr.ph191.1
  %.val83.2 = load ptr, ptr %.sroa.0134.0189.ptr.2, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexIN12_GLOBAL__N_19MockIndexEE8addIndexEPS2_(ptr noundef nonnull align 8 dereferenceable(113) %2, ptr noundef %.val83.2)
          to label %._crit_edge192 unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph191.2, %.lr.ph191.1, %.lr.ph.preheader
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

._crit_edge192:                                   ; preds = %.lr.ph191.2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  store ptr %i.ax, ptr %3, align 8, !tbaa !51
  store i64 0, ptr %i.ay, align 8, !tbaa !53
  %i.bx = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %._crit_edge192
  br i1 %i.bx, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFviPN12_GLOBAL__N_19MockIndexEEZN34ThreadedIndex_SingleException_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFviPN12_GLOBAL__N_19MockIndexEEZN34ThreadedIndex_SingleException_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOiOS2_">, ptr %i.az, align 8, !tbaa !54
  invoke fastcc void @_ZN5faiss13ThreadedIndexIN12_GLOBAL__N_19MockIndexEE10runOnIndexESt8functionIFviPS2_EE(ptr noundef nonnull align 8 dereferenceable(113) %2, ptr noundef align 8 %4)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.by = load ptr, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %.not.i91 = icmp eq ptr %i.by, null
  br i1 %.not.i91, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bz = invoke noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.critedge unwind label %bb.g  ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ca = landingpad { ptr, i32 }
          catch ptr null
  %i.cb = extractvalue { ptr, i32 } %i.ca, 0
  call void @__clang_call_terminate(ptr %i.cb) #33
  unreachable

bb.h:                                             ; preds = %._crit_edge192
  %i.cc = landingpad { ptr, i32 }
          catch ptr @_ZTIN12_GLOBAL__N_113TestExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt14_Function_baseD2Ev.exit93

bb.i:                                             ; preds = %bb.d
  %i.cd = landingpad { ptr, i32 }
          catch ptr @_ZTIN12_GLOBAL__N_113TestExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.ce = load ptr, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %.not.i92 = icmp eq ptr %i.ce, null
  br i1 %.not.i92, label %_ZNSt14_Function_baseD2Ev.exit93, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cf = invoke noundef zeroext i1 %i.ce(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit93 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  call void @__clang_call_terminate(ptr %i.ch) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit93:                 ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.cc, %bb.h ], [ %i.cd, %bb.i ], [ %i.cd, %bb.j ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn, 1         ; 2 uses
  %.129 = extractvalue { ptr, i32 } %.pn, 0       ; 2 uses
  %i.ci = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN12_GLOBAL__N_113TestExceptionE) #30
  %i.cj = icmp eq i32 %.1, %i.ci
  br i1 %i.cj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit93
  %i.ck = call ptr @__cxa_begin_catch(ptr %.129) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ad

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.c
  %i.cl = load i64, ptr %i.ay, align 8, !tbaa !53
  %i.cm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.cl, ptr noundef nonnull @.str.14, i64 noundef 99)
          to label %bb.ae unwind label %bb.x      ; 0 uses

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit93
  %i.cn = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #30
  %i.co = icmp eq i32 %.1, %i.cn
  %i.cp = call ptr @__cxa_begin_catch(ptr %.129) #30 ; 3 uses
  br i1 %i.co, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.cq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.11)
          to label %bb.o unwind label %bb.y       ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !30
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -8
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void @_ZN7testing8internal11GetTypeNameB5cxx11ERKSt9type_info(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ct)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.aa      ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.ba
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.cx = load i64, ptr %i.ba, align 8, !tbaa !58
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12)
          to label %bb.r unwind label %bb.y       ; 0 uses

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef ptr %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %i.cp) #30
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.dd)
          to label %bb.s unwind label %bb.y       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.df = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.13)
          to label %bb.t unwind label %bb.y       ; 0 uses

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.ab

bb.u:                                             ; preds = %bb.m
  %i.dg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.10)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.am unwind label %bb.bn

bb.x:                                             ; preds = %.critedge, %bb.v
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.y:                                             ; preds = %bb.s, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.o
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

bb.aa:                                            ; preds = %bb.p
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.ba
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95: ; preds = %bb.aa
  %i.do = load i64, ptr %i.ba, align 8, !tbaa !58
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit97: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95, %bb.z
  %.pn47 = phi { ptr, i32 } [ %i.dk, %bb.z ], [ %i.dl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i95 ], [ %i.dl, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ac

bb.ab:                                            ; preds = %bb.t
end_hunk_0
begin_hunk_1_@_ZN36ThreadedIndex_MultipleException_TestD0Ev:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN36ThreadedIndex_MultipleException_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector", align 8       ; 9 uses
  %2 = alloca %"struct.(anonymous namespace)::MockThreadedIndex", align 8 ; 20 uses
  %3 = alloca %"struct.testing::internal::TrueWithString", align 8 ; 17 uses
  %4 = alloca %"class.std::function", align 8     ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %8 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %9 = alloca %"class.testing::Message", align 8  ; 7 uses
  %10 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.c = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i unwind label %.loopexit ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 1, ptr %i.d, align 8, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 25
  store i8 1, ptr %i.g, align 1, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 1, ptr %i.h, align 4, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store float 0.000000e+00, ptr %i.i, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.c, align 8, !tbaa !30
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i8 0, ptr %i.j, align 4, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, i8 0, i64 40, i1 false)
  %i.l = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #32
          to label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit unwind label %.loopexit ; 7 uses

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  store ptr %i.c, ptr %i.l, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !40
  store ptr %i.m, ptr %i.b, align 8, !tbaa !41
  %i.n = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1 unwind label %.loopexit ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1: ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 1, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 0, ptr %i.p, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i8 0, ptr %i.q, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 25
  store i8 1, ptr %i.r, align 1, !tbaa !26
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i32 1, ptr %i.s, align 4, !tbaa !27
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store float 0.000000e+00, ptr %i.t, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.n, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  store i8 0, ptr %i.u, align 4, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, i8 0, i64 40, i1 false)
  %i.w = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #32
          to label %.lr.ph.i.i.i.i.i.preheader.1 unwind label %.loopexit ; 9 uses

.lr.ph.i.i.i.i.i.preheader.1:                     ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.n, ptr %i.x, align 8, !tbaa !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %.val.i.i.i.i.i.i.i.i.i.i.1 = load i64, ptr %i.l, align 8, !tbaa !37, !alias.scope !191
  store i64 %.val.i.i.i.i.i.i.i.i.i.i.1, ptr %i.w, align 8, !tbaa !37, !alias.scope !190
  store ptr null, ptr %i.l, align 8, !tbaa !37, !alias.scope !191
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 8) #31
  store ptr %i.y, ptr %i.a, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.z, ptr %i.b, align 8, !tbaa !41
  %i.aa = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2 unwind label %.loopexit ; 10 uses

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2: ; preds = %.lr.ph.i.i.i.i.i.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 1, ptr %i.ab, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %i.ac, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i8 0, ptr %i.ad, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 25
  store i8 1, ptr %i.ae, align 1, !tbaa !26
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store i32 1, ptr %i.af, align 4, !tbaa !27
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store float 0.000000e+00, ptr %i.ag, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.aa, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 36
  store i8 0, ptr %i.ah, align 4, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, i8 0, i64 40, i1 false)
  %i.aj = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #32
          to label %.noexc80.2 unwind label %.loopexit ; 16 uses

.noexc80.2:                                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.aa, ptr %i.ak, align 8, !tbaa !37
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %wide.load = load <2 x i64>, ptr %i.w, align 8, !tbaa !37, !alias.scope !193
  store <2 x i64> %wide.load, ptr %i.aj, align 8, !tbaa !37, !alias.scope !192
  store <2 x ptr> splat (ptr null), ptr %i.w, align 8, !tbaa !37, !alias.scope !193
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef 16) #31
  store ptr %i.al, ptr %i.a, align 8, !tbaa !40
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.am, ptr %i.b, align 8, !tbaa !41
  store ptr %i.aj, ptr %1, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.0110.0151.ptr.1 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.0110.0151.ptr.2 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.0108.0152.ptr.1 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.0108.0152.ptr.2 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  br label %.lr.ph.preheader

.loopexit:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2, %.lr.ph.i.i.i.i.i.preheader.1, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit, %bb.a, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.lcssa157 = phi ptr [ null, %bb.a ], [ null, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.l, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit ], [ %i.l, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.1 ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader.1 ], [ %i.w, %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i.2 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %.lcssa157, ptr %1, align 8
  br label %bb.ba

.lr.ph.i.i.i:                                     ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  %.0.val.i.i.i = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bf = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.05.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.0.val.i.i.i.1 = load ptr, ptr %.05.i.i.i.ptr.1, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.1 = icmp eq ptr %.0.val.i.i.i.1, null
  br i1 %.not.i.i.i.i.i.i.1, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i.1, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.1

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.1: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %i.bi = load ptr, ptr %.0.val.i.i.i.1, align 8, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i.1) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i.1

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i.1: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.1, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.0.val.i.i.i.2 = load ptr, ptr %.05.i.i.i.ptr.2, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i.2 = icmp eq ptr %.0.val.i.i.i.2, null
  br i1 %.not.i.i.i.i.i.i.2, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.2

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.2: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i.1
  %i.bl = load ptr, ptr %.0.val.i.i.i.2, align 8, !tbaa !30
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i.2) #30, !inline_history !0
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i.1, %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i.2
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 32) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  ret void

.lr.ph.preheader:                                 ; preds = %.noexc80.2, %_ZN7testing15AssertionResultD2Ev.exit
  %not..026.ptr.sroa.idx = phi i8 [ 1, %.noexc80.2 ], [ 0, %_ZN7testing15AssertionResultD2Ev.exit ]
  %.not = phi i1 [ false, %.noexc80.2 ], [ true, %_ZN7testing15AssertionResultD2Ev.exit ]
  %.val78 = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val78, i64 36
  store i8 0, ptr %i.bo, align 4, !tbaa !35
  %i.bp = getelementptr inbounds nuw i8, ptr %.val78, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bp, i8 0, i64 40, i1 false)
  %.val78.1 = load ptr, ptr %.sroa.0110.0151.ptr.1, align 8, !tbaa !37 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.val78.1, i64 36
  store i8 0, ptr %i.bq, align 4, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %.val78.1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, i8 0, i64 40, i1 false)
  %.val78.2 = load ptr, ptr %.sroa.0110.0151.ptr.2, align 8, !tbaa !37 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.val78.2, i64 36
  store i8 0, ptr %i.bs, align 4, !tbaa !35
  %i.bt = getelementptr inbounds nuw i8, ptr %.val78.2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bt, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  store i32 0, ptr %i.an, align 8, !tbaa !23
  store i64 0, ptr %i.ao, align 8, !tbaa !24
  store i8 0, ptr %i.ap, align 8, !tbaa !25
  store i8 1, ptr %i.aq, align 1, !tbaa !26
  store i32 1, ptr %i.ar, align 4, !tbaa !27
  store float 0.000000e+00, ptr %i.as, align 8, !tbaa !28
  store i8 0, ptr %i.at, align 4, !tbaa !35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.au, i8 0, i64 41, i1 false)
  store i8 %not..026.ptr.sroa.idx, ptr %i.aw, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 264) (i8, ptr @_ZTVN12_GLOBAL__N_117MockThreadedIndexINS_9MockIndexEEE, i64 16), ptr %2, align 8, !tbaa !30
  %.val76 = load ptr, ptr %i.aj, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexIN12_GLOBAL__N_19MockIndexEE8addIndexEPS2_(ptr noundef nonnull align 8 dereferenceable(113) %2, ptr noundef %.val76)
          to label %.lr.ph154.1 unwind label %bb.b

.lr.ph154.1:                                      ; preds = %.lr.ph.preheader
  %.val76.1 = load ptr, ptr %.sroa.0108.0152.ptr.1, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexIN12_GLOBAL__N_19MockIndexEE8addIndexEPS2_(ptr noundef nonnull align 8 dereferenceable(113) %2, ptr noundef %.val76.1)
          to label %.lr.ph154.2 unwind label %bb.b

.lr.ph154.2:                                      ; preds = %.lr.ph154.1
  %.val76.2 = load ptr, ptr %.sroa.0108.0152.ptr.2, align 8, !tbaa !37
  invoke void @_ZN5faiss13ThreadedIndexIN12_GLOBAL__N_19MockIndexEE8addIndexEPS2_(ptr noundef nonnull align 8 dereferenceable(113) %2, ptr noundef %.val76.2)
          to label %._crit_edge155 unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph154.2, %.lr.ph154.1, %.lr.ph.preheader
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

._crit_edge155:                                   ; preds = %.lr.ph154.2
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  store ptr %i.ax, ptr %3, align 8, !tbaa !51
  store i64 0, ptr %i.ay, align 8, !tbaa !53
  %i.bv = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %._crit_edge155
  br i1 %i.bv, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 16, i1 false)
  store <2 x ptr> <ptr @"_ZNSt17_Function_handlerIFviPN12_GLOBAL__N_19MockIndexEEZN36ThreadedIndex_MultipleException_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS7_St18_Manager_operation", ptr @"_ZNSt17_Function_handlerIFviPN12_GLOBAL__N_19MockIndexEEZN36ThreadedIndex_MultipleException_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataOiOS2_">, ptr %i.az, align 8, !tbaa !54
  invoke fastcc void @_ZN5faiss13ThreadedIndexIN12_GLOBAL__N_19MockIndexEE10runOnIndexESt8functionIFviPS2_EE(ptr noundef nonnull align 8 dereferenceable(113) %2, ptr noundef align 8 %4)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.bw = load ptr, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %.not.i82 = icmp eq ptr %i.bw, null
  br i1 %.not.i82, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bx = invoke noundef zeroext i1 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %.critedge unwind label %bb.g  ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.by = landingpad { ptr, i32 }
          catch ptr null
  %i.bz = extractvalue { ptr, i32 } %i.by, 0
  call void @__clang_call_terminate(ptr %i.bz) #33
  unreachable

bb.h:                                             ; preds = %._crit_edge155
  %i.ca = landingpad { ptr, i32 }
          catch ptr @_ZTIN5faiss14FaissExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt14_Function_baseD2Ev.exit84

bb.i:                                             ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          catch ptr @_ZTIN5faiss14FaissExceptionE
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.cc = load ptr, ptr %i.az, align 8, !tbaa !56 ; 2 uses
  %.not.i83 = icmp eq ptr %i.cc, null
  br i1 %.not.i83, label %_ZNSt14_Function_baseD2Ev.exit84, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cd = invoke noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit84 unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          catch ptr null
  %i.cf = extractvalue { ptr, i32 } %i.ce, 0
  call void @__clang_call_terminate(ptr %i.cf) #33
  unreachable

_ZNSt14_Function_baseD2Ev.exit84:                 ; preds = %bb.j, %bb.i, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ca, %bb.h ], [ %i.cb, %bb.i ], [ %i.cb, %bb.j ] ; 2 uses
  %.1 = extractvalue { ptr, i32 } %.pn, 1         ; 2 uses
  %.129 = extractvalue { ptr, i32 } %.pn, 0       ; 2 uses
  %i.cg = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN5faiss14FaissExceptionE) #30
  %i.ch = icmp eq i32 %.1, %i.cg
  br i1 %i.ch, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit84
  %i.ci = call ptr @__cxa_begin_catch(ptr %.129) #30 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.ad

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.c
  %i.cj = load i64, ptr %i.ay, align 8, !tbaa !53
  %i.ck = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef 0, i64 noundef %i.cj, ptr noundef nonnull @.str.48, i64 noundef 107)
          to label %bb.ae unwind label %bb.x      ; 0 uses

bb.m:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit84
  %i.cl = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #30
  %i.cm = icmp eq i32 %.1, %i.cl
  %i.cn = call ptr @__cxa_begin_catch(ptr %.129) #30 ; 3 uses
  br i1 %i.cm, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.co = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.47)
          to label %bb.o unwind label %bb.y       ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !30
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 -8
  %i.cr = load ptr, ptr %i.cq, align 8
  invoke void @_ZN7testing8internal11GetTypeNameB5cxx11ERKSt9type_info(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(16) %i.cr)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.cs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.q unwind label %bb.aa      ; 0 uses

bb.q:                                             ; preds = %bb.p
  %i.ct = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %i.cu = icmp eq ptr %i.ct, %i.ba
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.cv = load i64, ptr %i.ba, align 8, !tbaa !58
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.ct, i64 noundef %i.cw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.cx = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.12)
          to label %bb.r unwind label %bb.y       ; 0 uses

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = call noundef ptr %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cn) #30
  %i.dc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.db)
          to label %bb.s unwind label %bb.y       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.dd = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.13)
          to label %bb.t unwind label %bb.y       ; 0 uses

bb.t:                                             ; preds = %bb.s
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.ab

bb.u:                                             ; preds = %bb.m
  %i.de = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.46)
          to label %bb.v unwind label %bb.w       ; 0 uses

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_end_catch()
          to label %bb.ae unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.am unwind label %bb.bb

bb.x:                                             ; preds = %.critedge, %bb.v
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.y:                                             ; preds = %bb.s, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.n
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.z:                                             ; preds = %bb.o
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

bb.aa:                                            ; preds = %bb.p
  %i.dj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dk = load ptr, ptr %5, align 8, !tbaa !57    ; 2 uses
  %i.dl = icmp eq ptr %i.dk, %i.ba
  br i1 %i.dl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.aa
  %i.dm = load i64, ptr %i.ba, align 8, !tbaa !58
  %i.dn = add i64 %i.dm, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.dn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86, %bb.z
  %.pn44 = phi { ptr, i32 } [ %i.di, %bb.z ], [ %i.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86 ], [ %i.dj, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.ac

bb.ab:                                            ; preds = %bb.t
end_hunk_1
begin_hunk_2_@_ZN30ThreadedIndex_TestReplica_Test8TestBodyEv:bb.a
  %i.sz = icmp eq ptr %i.sx, %i.sy
  br i1 %i.sz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251: ; preds = %bb.ej
  %i.ta = load i64, ptr %i.sy, align 8, !tbaa !58
  %i.tb = add i64 %i.ta, 1
  call void @_ZdlPvm(ptr noundef %i.sx, i64 noundef %i.tb) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252: ; preds = %bb.ej, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i251
  call void @_ZdlPvm(ptr noundef nonnull %i.sw, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit254

_ZN7testing15AssertionResultD2Ev.exit254:         ; preds = %bb.ei, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  %i.tc = add nuw i64 %.01218, 1                  ; 2 uses
  %exitcond1973.not = icmp eq i64 %i.tc, %i.eh
  br i1 %exitcond1973.not, label %._crit_edge1220, label %.lr.ph1219, !llvm.loop !256

bb.ek:                                            ; preds = %_ZN7testing7MessageD2Ev.exit249, %.body369
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn82.pn, %_ZN7testing7MessageD2Ev.exit249 ], [ %eh.lpad-body370, %.body369 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #30
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.dx, %.body338, %bb.co, %.body305
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn, %bb.ek ], [ %.pn78.pn.pn, %bb.dx ], [ %.pn74.pn.pn, %.body338 ], [ %.pn70.pn.pn, %bb.co ], [ %.pn.pn.pn, %.body305 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %bb.em

bb.em:                                            ; preds = %.body, %bb.ax, %bb.el, %bb.o
  %.pn91.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ei, %bb.o ], [ %.pn82.pn.pn.pn, %bb.el ], [ %.pn91.pn.pn, %bb.ax ], [ %.pn87.pn.pn, %.body ] ; 2 uses
  %.not.i.i.i255 = icmp eq ptr %.sroa.0373.0, null
  br i1 %.not.i.i.i255, label %_ZNSt6vectorIlSaIlEED2Ev.exit256, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.td = ptrtoint ptr %.sroa.11.0 to i64
  %i.te = ptrtoint ptr %.sroa.0373.0 to i64
  %i.tf = sub i64 %i.td, %i.te
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0373.0, i64 noundef %i.tf) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit256

_ZNSt6vectorIlSaIlEED2Ev.exit256:                 ; preds = %.loopexit426, %.loopexit.split-lp427, %bb.en, %bb.em
  %.pn91.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn, %bb.en ], [ %.pn91.pn.pn.pn.pn, %bb.em ], [ %lpad.loopexit428, %.loopexit426 ], [ %lpad.loopexit.split-lp429, %.loopexit.split-lp427 ] ; 2 uses
  %.not.i.i.i257 = icmp eq ptr %.sroa.0379.0, null
  br i1 %.not.i.i.i257, label %_ZNSt6vectorIfSaIfEED2Ev.exit258, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit256
  %i.tg = ptrtoint ptr %.sroa.11384.0 to i64
  %i.th = ptrtoint ptr %.sroa.0379.0 to i64
  %i.ti = sub i64 %i.tg, %i.th
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0379.0, i64 noundef %i.ti) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit258

_ZNSt6vectorIfSaIfEED2Ev.exit258:                 ; preds = %.loopexit421, %.loopexit.split-lp422, %bb.eo, %_ZNSt6vectorIlSaIlEED2Ev.exit256
  %.pn91.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn, %bb.eo ], [ %.pn91.pn.pn.pn.pn.pn, %_ZNSt6vectorIlSaIlEED2Ev.exit256 ], [ %lpad.loopexit423, %.loopexit421 ], [ %lpad.loopexit.split-lp424, %.loopexit.split-lp422 ] ; 2 uses
  %.not.i.i.i259 = icmp eq ptr %.sroa.0387.0, null
  br i1 %.not.i.i.i259, label %.loopexit, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit258
  %i.tj = ptrtoint ptr %.sroa.0387.0 to i64
  %i.tk = sub i64 %.sroa.13.0, %i.tj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0387.0, i64 noundef %i.tk) #31
  br label %.loopexit

.loopexit:                                        ; preds = %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp, %.split.loop.exit, %.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit, %.loopexit.split.loop.exit.split-lp.split.loop.exit, %.loopexit416, %.loopexit.split-lp417, %bb.ep, %_ZNSt6vectorIfSaIfEED2Ev.exit258
  %.sroa.21.1 = phi ptr [ %.sroa.21.3.4, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %.sroa.21.3.4, %.split.loop.exit ], [ %.sroa.21.3.le2871, %.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.4, %bb.ep ], [ %.sroa.21.3.4, %.loopexit.split-lp417 ], [ %.sroa.21.3.4, %.loopexit416 ], [ %i.cv, %.loopexit.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.3.le6428, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.1.le, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %.sroa.21.3.le, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.2, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cz, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.da, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.3.le, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.1.le6447, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %.sroa.21.3.2, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ] ; 2 uses
  %.sroa.31.1 = phi ptr [ %i.cq, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %i.cq, %.split.loop.exit ], [ %i.dc, %.split.loop.exit.split-lp.split.loop.exit ], [ %i.cq, %bb.ep ], [ %i.cq, %.loopexit.split-lp417 ], [ %i.cq, %.loopexit416 ], [ %i.cv, %.loopexit.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %i.cw, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.db, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %i.cx, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cy, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.cz, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.da, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.dd, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.de, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.df, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ]
  %.sroa.0394.1 = phi ptr [ %i.ch, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %i.ch, %.split.loop.exit ], [ %i.aq, %.split.loop.exit.split-lp.split.loop.exit ], [ %i.ch, %bb.ep ], [ %i.ch, %.loopexit.split-lp417 ], [ %i.ch, %.loopexit416 ], [ %i.bm, %.loopexit.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %i.bm, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ null, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.ba, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.aq, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.bm, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.aq, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.ba, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %i.bm, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.ba, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %i.bm, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ] ; 5 uses
  %.pn102.pn = phi { ptr, i32 } [ %.pn91.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit258 ], [ %lpad.split.loop.exit, %.split.loop.exit ], [ %lpad.split.loop.exit2834, %.split.loop.exit.split-lp.split.loop.exit ], [ %.pn91.pn.pn.pn.pn.pn.pn, %bb.ep ], [ %lpad.loopexit.split-lp419, %.loopexit.split-lp417 ], [ %lpad.loopexit418, %.loopexit416 ], [ %lpad.split.loop.exit2840, %.loopexit.split.loop.exit ], [ %lpad.split.loop.exit2845, %.loopexit.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2851, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2856, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit.split-lp, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ], [ %lpad.split.loop.exit2867, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2876, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit2881, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit6444, %.loopexit.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit6426, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit6433, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit ], [ %lpad.split.loop.exit.split-lp6434, %.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp.split.loop.exit.split-lp ]
  call void @_ZN5faiss13ThreadedIndexINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(65) dereferenceable(65) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  %.not4.i.i.i261 = icmp eq ptr %.sroa.0394.1, %.sroa.21.1
  br i1 %.not4.i.i.i261, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271, label %.lr.ph.i.i.i262

.lr.ph.i.i.i262:                                  ; preds = %.loopexit, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267
  %.05.i.i.i263 = phi ptr [ %i.to, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267 ], [ %.sroa.0394.1, %.loopexit ] ; 2 uses
  %.0.val.i.i.i264 = load ptr, ptr %.05.i.i.i263, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i265 = icmp eq ptr %.0.val.i.i.i264, null
  br i1 %.not.i.i.i.i.i.i265, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i266

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i266: ; preds = %.lr.ph.i.i.i262
  %i.tl = load ptr, ptr %.0.val.i.i.i264, align 8, !tbaa !30
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tl, i64 8
  %i.tn = load ptr, ptr %i.tm, align 8
  call void %i.tn(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i264) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i266, %.lr.ph.i.i.i262
  %i.to = getelementptr inbounds nuw i8, ptr %.05.i.i.i263, i64 8 ; 2 uses
  %.not.i.i.i268 = icmp eq ptr %i.to, %.sroa.21.1
  br i1 %.not.i.i.i268, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271, label %.lr.ph.i.i.i262, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i267, %.loopexit
  %.not.i.i2.i273 = icmp eq ptr %.sroa.0394.1, null
  br i1 %.not.i.i2.i273, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit275, label %bb.eq

bb.eq:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271
  %i.tp = ptrtoint ptr %.sroa.31.1 to i64
  %i.tq = ptrtoint ptr %.sroa.0394.1 to i64
  %i.tr = sub i64 %i.tp, %i.tq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0394.1, i64 noundef %i.tr) #31
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit275

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit275: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i271, %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %.pn102.pn
}

; Function Attrs: nounwind
declare void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN29ThreadedIndex_TestShards_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN29ThreadedIndex_TestShards_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
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
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 14 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %15 = alloca %"struct.faiss::IndexShardsTemplate", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %20 = alloca %"class.testing::Message", align 8 ; 7 uses
  %21 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %23 = alloca %"class.testing::Message", align 8 ; 7 uses
  %24 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %25 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %26 = alloca %"class.testing::Message", align 8 ; 7 uses
  %27 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %28 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %29 = alloca %"class.testing::Message", align 8 ; 7 uses
  %30 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %32 = alloca %"class.testing::Message", align 8 ; 7 uses
  %33 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %34 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %35 = alloca %"class.testing::Message", align 8 ; 7 uses
  %36 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 70, ptr %i.a, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i32 6, ptr %i.b, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit
  %.not.a = phi i1 [ true, %bb.a ], [ false, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit ]
  %.067.idx1224.sroa.phi.sroa.speculated = phi i1 [ false, %bb.a ], [ true, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #30
  call void @_ZN5faiss19IndexShardsTemplateINS_5IndexEEC1Eibb(ptr noundef nonnull align 8 dereferenceable(66) %15, i32 noundef 3, i1 noundef zeroext %.not.a, i1 noundef zeroext true)
  br label %bb.g

bb.d:                                             ; preds = %bb.m
  %.0.lcssa.i.i.i.i.i.pn.lcssa43274328 = ptrtoaddr ptr %.0.lcssa.i.i.i.i.i.pn to i64
  %.sroa.0397.3.lcssa43304331 = ptrtoaddr ptr %.sroa.0397.3 to i64
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !75  ; 3 uses
  %i.ad = mul nsw i32 %i.ac, 3
  %i.ae = sext i32 %i.ad to i64                   ; 2 uses
  %i.af = icmp slt i32 %i.ac, 0
  br i1 %i.af, label %bb.e, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.63) #34
          to label %.noexc unwind label %.loopexit.split-lp420

.noexc:                                           ; preds = %bb.e
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.d
  %.not.i.i.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ag = shl nuw nsw i64 %i.ae, 2                ; 2 uses
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #32
          to label %.noexc139 unwind label %.loopexit419 ; 4 uses

.noexc139:                                        ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ae
  store float 0.000000e+00, ptr %i.ah, align 4, !tbaa !76
  %i.aj = getelementptr i8, ptr %i.ah, i64 4
  %.idx.i.i.i.i.i.i.i = add nsw i64 %i.ag, -4
  call void @llvm.memset.p0.i64(ptr align 4 %i.aj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !76
  %i.ak = ptrtoint ptr %i.ai to i64
  %.pre = load i32, ptr %i.a, align 4, !tbaa !75
  br label %_ZNSt6vectorIfSaIfEEC2EmRKS0_.exit

bb.g:                                             ; preds = %bb.c, %bb.m
  %.0341216 = phi i32 [ 0, %bb.c ], [ %i.bz, %bb.m ]
  %.sroa.0397.01215 = phi ptr [ null, %bb.c ], [ %.sroa.0397.3, %bb.m ] ; 13 uses
  %.sroa.33.01214 = phi ptr [ null, %bb.c ], [ %.sroa.33.3, %bb.m ] ; 9 uses
  %.sroa.23.01213 = phi ptr [ null, %bb.c ], [ %.sroa.23.3, %bb.m ] ; 4 uses
  %i.al = invoke noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #32
          to label %bb.h unwind label %.loopexit  ; 12 uses

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 3, ptr %i.am, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 0, ptr %i.an, align 8, !tbaa !24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i8 0, ptr %i.ao, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 25
  store i8 1, ptr %i.ap, align 1, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  store i32 1, ptr %i.aq, align 4, !tbaa !27
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store float 0.000000e+00, ptr %i.ar, align 8, !tbaa !28
  store ptr getelementptr inbounds nuw inrange(-16, 240) (i8, ptr @_ZTVN12_GLOBAL__N_19MockIndexE, i64 16), ptr %i.al, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  store i8 0, ptr %i.as, align 4, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.at, i8 0, i64 40, i1 false)
  %.not.i = icmp eq ptr %.sroa.23.01213, %.sroa.33.01214
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.al, ptr %.sroa.23.01213, align 8, !tbaa !37
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

bb.j:                                             ; preds = %bb.h
  %i.au = ptrtoint ptr %.sroa.33.01214 to i64     ; 3 uses
  %i.av = ptrtoint ptr %.sroa.0397.01215 to i64   ; 3 uses
  %i.aw = sub i64 %i.au, %i.av                    ; 4 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #34
          to label %.noexc140 unwind label %.loopexit.split-lp

.noexc140:                                        ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %i.az = icmp eq ptr %.sroa.33.01214, %.sroa.0397.01215 ; 2 uses
  %.sroa.speculated.i.i.i = select i1 %i.az, i64 1, i64 %i.ay
  %i.ba = add nsw i64 %.sroa.speculated.i.i.i, %i.ay ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ay
  %i.bc = call i64 @llvm.umin.i64(i64 %i.ba, i64 1152921504606846975)
  %i.bd = select i1 %i.bb, i64 1152921504606846975, i64 %i.bc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bd, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.be) #32
          to label %.noexc141 unwind label %.loopexit ; 10 uses

.noexc141:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.aw
  store ptr %i.al, ptr %i.bg, align 8, !tbaa !37
  br i1 %i.az, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %.noexc141
  %i.bh = add i64 %i.au, -8
  %i.bi = sub i64 %i.bh, %i.av                    ; 2 uses
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = add nuw nsw i64 %i.bj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bi, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader3581, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bf, i64 8
  %i.bl = add i64 %i.au, -8
  %i.bm = sub i64 %i.bl, %i.av
  %i.bn = and i64 %i.bm, -8                       ; 2 uses
  %scevgep3575 = getelementptr i8, ptr %scevgep, i64 %i.bn
  %scevgep3576 = getelementptr i8, ptr %.sroa.0397.01215, i64 8
  %scevgep3577 = getelementptr i8, ptr %scevgep3576, i64 %i.bn
  %bound0 = icmp ult ptr %i.bf, %scevgep3577
  %bound1 = icmp ult ptr %.sroa.0397.01215, %scevgep3575
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader3581, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bk, 4611686018427387900     ; 3 uses
  %i.bo = shl i64 %n.vec, 3                       ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bf, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %.sroa.0397.01215, i64 %i.bo
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.br = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bf, i64 %i.br ; 2 uses
  %next.gep3578 = getelementptr i8, ptr %.sroa.0397.01215, i64 %i.br ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %i.bs = getelementptr i8, ptr %next.gep3578, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep3578, align 8, !tbaa !37, !alias.scope !339
  %wide.load3579 = load <2 x i64>, ptr %i.bs, align 8, !tbaa !37, !alias.scope !339
  %i.bt = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !37, !alias.scope !340, !noalias !341
  store <2 x i64> %wide.load3579, ptr %i.bt, align 8, !tbaa !37, !alias.scope !340, !noalias !341
  %i.bu = getelementptr i8, ptr %next.gep3578, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep3578, align 8, !tbaa !37, !alias.scope !339
  store <2 x ptr> splat (ptr null), ptr %i.bu, align 8, !tbaa !37, !alias.scope !339
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bk, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i, label %.lr.ph.i.i.i.i.i.preheader3581

.lr.ph.i.i.i.i.i.preheader3581:                   ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.03.i.i.i.i.i.ph = phi ptr [ %i.bf, %vector.memcheck ], [ %i.bf, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bp, %middle.block ]
  %.092.i.i.i.i.i.ph = phi ptr [ %.sroa.0397.01215, %vector.memcheck ], [ %.sroa.0397.01215, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bq, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader3581, %.lr.ph.i.i.i.i.i
  %.03.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i ], [ %.03.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader3581 ] ; 2 uses
  %.092.i.i.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader3581 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !337)
  call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %.val.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.092.i.i.i.i.i, align 8, !tbaa !37, !alias.scope !338
  store i64 %.val.i.i.i.i.i.i.i.i.i.i, ptr %.03.i.i.i.i.i, align 8, !tbaa !37, !alias.scope !337
  store ptr null, ptr %.092.i.i.i.i.i, align 8, !tbaa !37, !alias.scope !338
  %i.bw = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bw, %.sroa.33.01214
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !290

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %.noexc141
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bf, %.noexc141 ], [ %i.bp, %middle.block ], [ %i.bx, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.not.i29.i.i = icmp eq ptr %.sroa.0397.01215, null
  br i1 %.not.i29.i.i, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0397.01215, i64 noundef %i.aw) #31
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit28.i.i
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.bd
  %.val119.pre = load ptr, ptr %.0.lcssa.i.i.i.i.i, align 8, !tbaa !37
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.i
  %.val119 = phi ptr [ %.val119.pre, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.al, %bb.i ]
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.23.01213, %bb.i ] ; 4 uses
  %.sroa.33.3 = phi ptr [ %i.by, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.33.01214, %bb.i ] ; 7 uses
  %.sroa.0397.3 = phi ptr [ %i.bf, %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJPS2_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %.sroa.0397.01215, %bb.i ] ; 18 uses
  %.sroa.23.3 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 8 ; 8 uses
  invoke void @_ZN5faiss13ThreadedIndexINS_5IndexEE8addIndexEPS1_(ptr noundef nonnull align 8 dereferenceable(65) %15, ptr noundef %.val119)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EE12emplace_backIJPS2_EEERS5_DpOT_.exit
  %i.bz = add nuw nsw i32 %.0341216, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bz, 7
  br i1 %exitcond.not, label %bb.d, label %bb.g, !llvm.loop !291
end_hunk_2
begin_hunk_3_@_ZN29ThreadedIndex_TestShards_Test8TestBodyEv:bb.a
_ZN7testing7MessageD2Ev.exit172:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171, %bb.ay, %bb.av
  %.pn92.pn = phi { ptr, i32 } [ %i.gi, %bb.av ], [ %.pn92, %bb.ay ], [ %.pn92, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i171 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #30
  br label %bb.bb

bb.az:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIPKfPfTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit, %_ZN7testing7MessageD2Ev.exit169
  %i.gp = load ptr, ptr %i.m, align 8, !tbaa !74  ; 4 uses
  %.not.i.i173 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i173, label %_ZN7testing15AssertionResultD2Ev.exit177, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !57 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i174

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i174: ; preds = %bb.ba
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !58
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i174
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef 32) #31
  br label %_ZN7testing15AssertionResultD2Ev.exit177

_ZN7testing15AssertionResultD2Ev.exit177:         ; preds = %bb.az, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  %i.gv = add nuw i64 %.0331217, 1                ; 2 uses
  %exitcond1975.not = icmp eq i64 %i.gv, %i.dc
  br i1 %exitcond1975.not, label %.lr.ph1220.preheader, label %.lr.ph, !llvm.loop !304

.lr.ph1220.preheader:                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit177
  %i.gw = sub i64 %.0.lcssa.i.i.i.i.i.pn.lcssa43274328, %.sroa.0397.3.lcssa43304331 ; 2 uses
  %i.gx = lshr i64 %i.gw, 3
  %i.gy = add nuw nsw i64 %i.gx, 1
  %xtraiter = and i64 %i.gy, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph1220.prol.loopexit, label %.lr.ph1220.prol

.lr.ph1220.prol:                                  ; preds = %.lr.ph1220.preheader, %.lr.ph1220.prol
  %.sroa.0376.01219.prol = phi ptr [ %i.hb, %.lr.ph1220.prol ], [ %.sroa.0397.3, %.lr.ph1220.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph1220.prol ], [ 0, %.lr.ph1220.preheader ]
  %.val127.prol = load ptr, ptr %.sroa.0376.01219.prol, align 8, !tbaa !37 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.val127.prol, i64 36
  store i8 0, ptr %i.gz, align 4, !tbaa !35
  %i.ha = getelementptr inbounds nuw i8, ptr %.val127.prol, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ha, i8 0, i64 40, i1 false)
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph1220.prol.loopexit, label %.lr.ph1220.prol, !llvm.loop !305

.lr.ph1220.prol.loopexit:                         ; preds = %.lr.ph1220.prol, %.lr.ph1220.preheader
  %.sroa.0376.01219.unr = phi ptr [ %.sroa.0397.3, %.lr.ph1220.preheader ], [ %i.hb, %.lr.ph1220.prol ]
  %i.hc = icmp ult i64 %i.gw, 56
  br i1 %i.hc, label %._crit_edge, label %.lr.ph1220

bb.bb:                                            ; preds = %_ZN7testing7MessageD2Ev.exit172, %.body295
  %.pn92.pn.pn = phi { ptr, i32 } [ %.pn92.pn, %_ZN7testing7MessageD2Ev.exit172 ], [ %eh.lpad-body296, %.body295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #30
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %.body
  %.pn92.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn, %bb.bb ], [ %.pn88.pn.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.er

._crit_edge:                                      ; preds = %.lr.ph1220.prol.loopexit, %.lr.ph1220, %.preheader418
  %i.hd = load i32, ptr %i.a, align 4, !tbaa !75
  %i.he = sext i32 %i.hd to i64
  %i.hf = load i32, ptr %i.b, align 4, !tbaa !75
  %i.hg = sext i32 %i.hf to i64
  invoke void @_ZNK5faiss19IndexShardsTemplateINS_5IndexEE6searchElPKflPfPlPKNS_16SearchParametersE(ptr noundef nonnull align 8 dereferenceable(66) %15, i64 noundef %i.he, ptr noundef %.sroa.0390.0, i64 noundef %i.hg, ptr noundef %.sroa.0383.0, ptr noundef %.sroa.0378.0, ptr noundef null)
          to label %.preheader unwind label %bb.s

.preheader:                                       ; preds = %._crit_edge
  br i1 %.not1225, label %._crit_edge1223, label %.lr.ph1222

.lr.ph1220:                                       ; preds = %.lr.ph1220.prol.loopexit, %.lr.ph1220
  %.sroa.0376.01219 = phi ptr [ %i.ie, %.lr.ph1220 ], [ %.sroa.0376.01219.unr, %.lr.ph1220.prol.loopexit ] ; 9 uses
  %.val127 = load ptr, ptr %.sroa.0376.01219, align 8, !tbaa !37 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.val127, i64 36
  store i8 0, ptr %i.hh, align 4, !tbaa !35
  %i.hi = getelementptr inbounds nuw i8, ptr %.val127, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hi, i8 0, i64 40, i1 false)
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 8
  %.val127.1 = load ptr, ptr %i.hj, align 8, !tbaa !37 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.val127.1, i64 36
  store i8 0, ptr %i.hk, align 4, !tbaa !35
  %i.hl = getelementptr inbounds nuw i8, ptr %.val127.1, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hl, i8 0, i64 40, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 16
  %.val127.2 = load ptr, ptr %i.hm, align 8, !tbaa !37 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.val127.2, i64 36
  store i8 0, ptr %i.hn, align 4, !tbaa !35
  %i.ho = getelementptr inbounds nuw i8, ptr %.val127.2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ho, i8 0, i64 40, i1 false)
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 24
  %.val127.3 = load ptr, ptr %i.hp, align 8, !tbaa !37 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.val127.3, i64 36
  store i8 0, ptr %i.hq, align 4, !tbaa !35
  %i.hr = getelementptr inbounds nuw i8, ptr %.val127.3, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hr, i8 0, i64 40, i1 false)
  %i.hs = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 32
  %.val127.4 = load ptr, ptr %i.hs, align 8, !tbaa !37 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %.val127.4, i64 36
  store i8 0, ptr %i.ht, align 4, !tbaa !35
  %i.hu = getelementptr inbounds nuw i8, ptr %.val127.4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hu, i8 0, i64 40, i1 false)
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 40
  %.val127.5 = load ptr, ptr %i.hv, align 8, !tbaa !37 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.val127.5, i64 36
  store i8 0, ptr %i.hw, align 4, !tbaa !35
  %i.hx = getelementptr inbounds nuw i8, ptr %.val127.5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hx, i8 0, i64 40, i1 false)
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 48
  %.val127.6 = load ptr, ptr %i.hy, align 8, !tbaa !37 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.val127.6, i64 36
  store i8 0, ptr %i.hz, align 4, !tbaa !35
  %i.ia = getelementptr inbounds nuw i8, ptr %.val127.6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ia, i8 0, i64 40, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 56 ; 2 uses
  %.val127.7 = load ptr, ptr %i.ib, align 8, !tbaa !37 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.val127.7, i64 36
  store i8 0, ptr %i.ic, align 4, !tbaa !35
  %i.id = getelementptr inbounds nuw i8, ptr %.val127.7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.id, i8 0, i64 40, i1 false)
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0376.01219, i64 64
  %i.if = icmp eq ptr %i.ib, %.0.lcssa.i.i.i.i.i.pn
  br i1 %i.if, label %._crit_edge, label %.lr.ph1220

._crit_edge1223:                                  ; preds = %_ZN7testing15AssertionResultD2Ev.exit259, %.preheader
  %.not.i.i.i178 = icmp eq ptr %.sroa.0378.0, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge1223
  %i.ig = ptrtoint ptr %.sroa.10.0 to i64
  %i.ih = ptrtoint ptr %.sroa.0378.0 to i64
  %i.ii = sub i64 %i.ig, %i.ih
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0378.0, i64 noundef %i.ii) #31
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge1223, %bb.bd
  %.not.i.i.i179 = icmp eq ptr %.sroa.0383.0, null
  br i1 %.not.i.i.i179, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.ij = ptrtoint ptr %.sroa.10387.0 to i64
  %i.ik = ptrtoint ptr %.sroa.0383.0 to i64
  %i.il = sub i64 %i.ij, %i.ik
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0383.0, i64 noundef %i.il) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.be
  %.not.i.i.i180 = icmp eq ptr %.sroa.0390.0, null
  br i1 %.not.i.i.i180, label %_ZNSt6vectorIfSaIfEED2Ev.exit181, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.im = ptrtoint ptr %.sroa.0390.0 to i64
  %i.in = sub i64 %.sroa.13.0, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0390.0, i64 noundef %i.in) #31
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit181

_ZNSt6vectorIfSaIfEED2Ev.exit181:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.bf
  call void @_ZN5faiss13ThreadedIndexINS_5IndexEED2Ev(ptr noundef nonnull align 8 dead_on_return(66) dereferenceable(66) %15) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #30
  br i1 %.not1225, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit181, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ir, %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %.sroa.0397.3, %_ZNSt6vectorIfSaIfEED2Ev.exit181 ] ; 3 uses
  %.0.val.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.0.val.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.io = load ptr, ptr %.0.val.i.i.i, align 8, !tbaa !30
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  call void %i.iq(ptr noundef nonnull align 8 dereferenceable(80) %.0.val.i.i.i) #30, !inline_history !0
  br label %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN12_GLOBAL__N_19MockIndexEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %.not.i.i.i182 = icmp eq ptr %.05.i.i.i, %.0.lcssa.i.i.i.i.i.pn
  br i1 %.not.i.i.i182, label %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EEEvPT_.exit.i.i.i, %_ZNSt6vectorIfSaIfEED2Ev.exit181
  %.not.i.i2.i = icmp eq ptr %.sroa.0397.3, null
  br i1 %.not.i.i2.i, label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.bg

bb.bg:                                            ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.is = ptrtoint ptr %.sroa.33.3 to i64
  %i.it = sub i64 %i.is, %i.da
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0397.3, i64 noundef %i.it) #31
  br label %_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN12_GLOBAL__N_19MockIndexESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.bg
  br i1 %.067.idx1224.sroa.phi.sroa.speculated, label %bb.b, label %bb.c

.lr.ph1222:                                       ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit259
  %.01221 = phi i64 [ %i.sd, %_ZN7testing15AssertionResultD2Ev.exit259 ], [ 0, %.preheader ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #30
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0397.3, i64 %.01221 ; 5 uses
  %.val126 = load ptr, ptr %i.iu, align 8, !tbaa !37
  %i.iv = getelementptr inbounds nuw i8, ptr %.val126, i64 40 ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8, !tbaa !77, !noalias !348
  %i.ix = load i32, ptr %i.a, align 4, !tbaa !75, !noalias !348
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp eq i64 %i.iw, %i.iy
  br i1 %i.iz, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.lr.ph1222
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
          to label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.bm

bb.bi:                                            ; preds = %.lr.ph1222
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30, !noalias !349
  invoke void @_ZN7testing13PrintToStringIlEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %i.iv)
          to label %.noexc309 unwind label %bb.bm

.noexc309:                                        ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30, !noalias !349
  invoke void @_ZN7testing13PrintToStringIiEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.bk, !noalias !349

_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc309
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %10, i1 noundef zeroext false)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ja = load ptr, ptr %10, align 8, !tbaa !57, !noalias !349 ; 2 uses
  %i.jb = icmp eq ptr %i.ja, %i.n
  br i1 %i.jb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304: ; preds = %bb.bj
  %i.jc = load i64, ptr %i.n, align 8, !tbaa !58, !noalias !349
  %i.jd = add i64 %i.jc, 1
  call void @_ZdlPvm(ptr noundef %i.ja, i64 noundef %i.jd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i304
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !349
  %i.je = load ptr, ptr %9, align 8, !tbaa !57, !noalias !349 ; 2 uses
  %i.jf = icmp eq ptr %i.je, %i.o
  br i1 %i.jf, label %.noexc184, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i306

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i306: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305
  %i.jg = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !349
  %i.jh = add i64 %i.jg, 1
  call void @_ZdlPvm(ptr noundef %i.je, i64 noundef %i.jh) #31
  br label %.noexc184

bb.bk:                                            ; preds = %.noexc309
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297

bb.bl:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIilEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.jj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jk = load ptr, ptr %10, align 8, !tbaa !57, !noalias !349 ; 2 uses
  %i.jl = icmp eq ptr %i.jk, %i.n
  br i1 %i.jl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302: ; preds = %bb.bl
  %i.jm = load i64, ptr %i.n, align 8, !tbaa !58, !noalias !349
  %i.jn = add i64 %i.jm, 1
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jn) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302, %bb.bk
  %.pn.i298 = phi { ptr, i32 } [ %i.ji, %bb.bk ], [ %i.jj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i302 ], [ %i.jj, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30, !noalias !349
  %i.jo = load ptr, ptr %9, align 8, !tbaa !57, !noalias !349 ; 2 uses
  %i.jp = icmp eq ptr %i.jo, %i.o
  br i1 %i.jp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i300, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i299

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297
  %i.jq = load i64, ptr %i.o, align 8, !tbaa !58, !noalias !349
  %i.jr = add i64 %i.jq, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.jr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i300

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i297, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i299
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !349
  br label %.body310

.noexc184:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i305, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i306
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30, !noalias !349
  br label %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %.noexc184, %bb.bh
  %i.js = load i8, ptr %22, align 8, !tbaa !72, !range !62, !noundef !63
  %i.jt = trunc nuw i8 %i.js to i1
  br i1 %i.jt, label %bb.bw, label %bb.bn

bb.bm:                                            ; preds = %bb.bi, %bb.bh
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body310

bb.bn:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #30
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bo unwind label %bb.bs

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #30
  %i.jv = load ptr, ptr %i.p, align 8, !tbaa !74  ; 2 uses
  %.not.i.i185 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i185, label %_ZNK7testing15AssertionResult15failure_messageEv.exit186, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !57
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit186

_ZNK7testing15AssertionResult15failure_messageEv.exit186: ; preds = %bb.bp, %bb.bo
  %i.jx = phi ptr [ %i.jw, %bb.bp ], [ @.str.65, %bb.bo ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 250, ptr noundef %i.jx)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit186
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %bb.bq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.jy = load ptr, ptr %23, align 8, !tbaa !60   ; 3 uses
  %.not.i.i187 = icmp eq ptr %i.jy, null
  br i1 %.not.i.i187, label %_ZN7testing7MessageD2Ev.exit189, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188: ; preds = %bb.br
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !30
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(128) %i.jy) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit189

_ZN7testing7MessageD2Ev.exit189:                  ; preds = %bb.br, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i188
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  br label %bb.bw

bb.bs:                                            ; preds = %bb.bn
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit192

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit186
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #30
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn = phi { ptr, i32 } [ %i.ke, %bb.bu ], [ %i.kd, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #30
  %i.kf = load ptr, ptr %23, align 8, !tbaa !60   ; 3 uses
  %.not.i.i190 = icmp eq ptr %i.kf, null
  br i1 %.not.i.i190, label %_ZN7testing7MessageD2Ev.exit192, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191: ; preds = %bb.bv
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !30
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(128) %i.kf) #30, !inline_history !1
  br label %_ZN7testing7MessageD2Ev.exit192

_ZN7testing7MessageD2Ev.exit192:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191, %bb.bv, %bb.bs
  %.pn.pn = phi { ptr, i32 } [ %i.kc, %bb.bs ], [ %.pn, %bb.bv ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #30
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #30
  br label %.body310

bb.bw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIliTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit189
  %i.kj = load ptr, ptr %i.p, align 8, !tbaa !74  ; 4 uses
  %.not.i.i193 = icmp eq ptr %i.kj, null
  br i1 %.not.i.i193, label %_ZN7testing15AssertionResultD2Ev.exit197, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !57 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %i.km = icmp eq ptr %i.kk, %i.kl
  br i1 %i.km, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194: ; preds = %bb.bx
  %i.kn = load i64, ptr %i.kl, align 8, !tbaa !58
  %i.ko = add i64 %i.kn, 1
  call void @_ZdlPvm(ptr noundef %i.kk, i64 noundef %i.ko) #31
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195: ; preds = %bb.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef 32) #31
end_hunk_3
