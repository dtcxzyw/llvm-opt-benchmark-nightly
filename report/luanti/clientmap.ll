Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZZN9ClientMap14updateDrawListEvENK3$_1clEa":bb.a
_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit: ; preds = %bb.j, %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13MapBlockFlagsD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !608    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !609  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !623 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 512) #34
  br label %_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !18

_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !608
  br label %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !610
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #34
  br label %_ZNSt6vectorISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !635    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !625  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !636  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !627
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 510) #34
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !19

_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !635
  br label %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !637
  %i.n = shl i64 %i.m, 3
  tail call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #34
  br label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EED2Ev.exit

_ZNSt5dequeIN4core8vector3dIsEESaIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt3setIN4core8vector3dIsEESt4lessIS2_ESaIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !164
  invoke void @_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #35
  unreachable

_ZNSt8_Rb_treeIN4core8vector3dIsEES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %0) #2
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !65
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap14touchMapBlocksEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(656) %0) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %1 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !486, !nonnull !175, !align !487
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i8, ptr %i.f, align 4, !tbaa !489, !range !174, !noundef !175
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 654
  %i.j = load i8, ptr %i.i, align 2, !range !174
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.q, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #2
  %i.l = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 20, ptr %i.c, align 8, !tbaa !178
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.n, ptr %2, align 8, !tbaa !64
  %i.o = load i64, ptr %i.c, align 8, !tbaa !178  ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.n, ptr noundef nonnull align 1 dereferenceable(20) @.str.20, i64 20, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !176
  %i.q = load ptr, ptr %2, align 8, !tbaa !64
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %1, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.m
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.u = load i64, ptr %i.m, align 8, !tbaa !65
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 8, !tbaa !82 ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !486, !nonnull !175, !align !487 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !564 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0162.0177 = load ptr, ptr %i.z, align 8, !tbaa !243 ; 2 uses
  %.not171178 = icmp eq ptr %.sroa.0162.0177, null
  br i1 %.not171178, label %.noexc.i107, label %.lr.ph182

.lr.ph182:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %5 = load <4 x float>, ptr %i.w, align 8
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.aa = insertelement <2 x float> %6, float %.sroa.256.0.copyload, i64 1 ; 2 uses
  %i.ab = fcmp nsz ogt <2 x float> %i.aa, zeroinitializer
  %i.ac = select <2 x i1> %i.ab, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.ad = fadd nsz <2 x float> %i.aa, %i.ac
  %i.ae = fdiv nsz <2 x float> %i.ad, splat (float 1.000000e+01)
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ag = fptosi <4 x float> %i.af to <4 x i16>
  %i.ah = sext <4 x i16> %i.ag to <4 x i32>       ; 2 uses
  %i.ai = fptosi float %i.y to i16
  %i.aj = sext i16 %i.ai to i32
  %i.ak = insertelement <4 x i32> poison, i32 %i.aj, i64 0
  %i.al = shufflevector <4 x i32> %i.ak, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.am = sub nsw <4 x i32> %i.ah, %i.al
  %i.an = add nsw <4 x i32> %i.al, %i.ah
  %i.ao = shufflevector <4 x i32> %i.am, <4 x i32> %i.an, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ap = sdiv <4 x i32> %i.ao, splat (i32 16)
  %i.aq = add nsw <4 x i32> %i.ap, <i32 -3, i32 -3, i32 1, i32 1> ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !489, !range !174, !noundef !175
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.av = extractelement <4 x i32> %i.aq, i64 0
  %i.aw = extractelement <4 x i32> %i.aq, i64 1
  %i.ax = extractelement <4 x i32> %i.aq, i64 2
  %i.ay = extractelement <4 x i32> %i.aq, i64 3
  br label %bb.e

.noexc.i107.loopexit:                             ; preds = %.loopexit
  %i.az = uitofp nsz i32 %.375 to float
  %i.ba = uitofp nsz i32 %i.bu to float
  br label %.noexc.i107

.noexc.i107:                                      ; preds = %.noexc.i107.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.072.lcssa = phi float [ 0.000000e+00, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.az, %.noexc.i107.loopexit ]
  %.071.lcssa = phi float [ 0.000000e+00, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.ba, %.noexc.i107.loopexit ]
  %i.bb = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #2
  store i64 22, ptr %i.b, align 8, !tbaa !178
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc108 unwind label %bb.r  ; 2 uses

.noexc108:                                        ; preds = %.noexc.i107
  store ptr %i.bd, ptr %3, align 8, !tbaa !64
  %i.be = load i64, ptr %i.b, align 8, !tbaa !178 ; 3 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.bd, ptr noundef nonnull align 1 dereferenceable(22) @.str.13, i64 22, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !176
  %i.bg = load ptr, ptr %3, align 8, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %3, float noundef %.072.lcssa)
          to label %bb.o unwind label %bb.s

bb.c:                                             ; preds = %.noexc.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

bb.d:                                             ; preds = %.noexc
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.m
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110: ; preds = %bb.d
  %i.bm = load i64, ptr %i.m, align 8, !tbaa !65
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit112: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.c ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i110 ], [ %i.bj, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  br label %bb.w

bb.e:                                             ; preds = %.lr.ph182, %.loopexit
  %.sroa.0162.0181 = phi ptr [ %.sroa.0162.0177, %.lr.ph182 ], [ %.sroa.0162.0, %.loopexit ] ; 2 uses
  %.071180 = phi i32 [ 0, %.lr.ph182 ], [ %i.bu, %.loopexit ]
  %.072179 = phi i32 [ 0, %.lr.ph182 ], [ %.375, %.loopexit ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0162.0181, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !256 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %.sroa.0.0.copyload.i = load i32, ptr %i.bq, align 8, !tbaa !162 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !602
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = add i32 %.071180, %i.bt                 ; 2 uses
  br i1 %i.at, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = shl i32 %.sroa.0.0.copyload.i, 16
  %i.bw = ashr exact i32 %i.bv, 16                ; 2 uses
  %i.bx = icmp slt i32 %i.bw, %i.av
  %i.by = icmp sgt i32 %i.bw, %i.ax
  %or.cond101 = select i1 %i.bx, i1 true, i1 %i.by
  br i1 %or.cond101, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bz = ashr i32 %.sroa.0.0.copyload.i, 16      ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %i.aw
  %i.cb = icmp sgt i32 %i.bz, %i.ay
  %or.cond105 = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %or.cond105, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %.sroa.0158.0173 = load ptr, ptr %i.cc, align 8, !tbaa !243 ; 2 uses
  %.not172174 = icmp eq ptr %.sroa.0158.0173, null
  br i1 %.not172174, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.cd = load float, ptr %i.w, align 8, !tbaa !481
  %i.ce = load float, ptr %i.au, align 4, !tbaa !482
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.0158.0176 = phi ptr [ %.sroa.0158.0173, %.lr.ph ], [ %.sroa.0158.0, %bb.n ] ; 2 uses
  %.173175 = phi i32 [ %.072179, %.lr.ph ], [ %.274, %bb.n ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0158.0176, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !241 ; 3 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !445 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %.sroa.0.0.copyload.i113 = load i48, ptr %i.ci, align 8, !tbaa !162 ; 2 uses
  %.not = icmp eq ptr %i.ch, null
  %.sroa.3.0.extract.shift.i121 = lshr i48 %.sroa.0.0.copyload.i113, 32
  %.sroa.3.0.extract.trunc.i122 = trunc nuw i48 %.sroa.3.0.extract.shift.i121 to i16
  %i.cj = bitcast i48 %.sroa.0.0.copyload.i113 to <3 x i16>
  %i.ck = shufflevector <3 x i16> %i.cj, <3 x i16> poison, <2 x i32> <i32 0, i32 1>
  %i.cl = sitofp <2 x i16> %i.ck to <2 x float>
  %i.cm = sitofp nsz i16 %.sroa.3.0.extract.trunc.i122 to float
  %i.cn = fmul nnan nsz <2 x float> %i.cl, splat (float 1.000000e+01) ; 2 uses
  %i.co = fmul nnan nsz float %i.cm, 1.000000e+01 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 60
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.cp, align 4, !tbaa !82
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !82
  %i.cq = fadd nsz <2 x float> %i.cn, %.sroa.01.0.copyload.i
  %i.cr = fadd nsz float %i.co, %.sroa.22.0.copyload.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !480
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cu = fadd nsz <2 x float> %i.cn, splat (float 7.500000e+01)
  %i.cv = fadd nsz float %i.co, 7.500000e+01
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.9.0 = phi nsz float [ %i.cv, %bb.k ], [ %i.cr, %bb.j ]
  %.sroa.0154.0 = phi nsz <2 x float> [ %i.cu, %bb.k ], [ %i.cq, %bb.j ] ; 2 uses
  %.078 = phi nsz float [ 0.000000e+00, %bb.k ], [ %i.ct, %bb.j ]
  %.sroa.0154.0.vec.extract = extractelement <2 x float> %.sroa.0154.0, i64 0
  %i.cw = fsub nsz float %.sroa.0154.0.vec.extract, %i.cd ; 2 uses
  %.sroa.0154.4.vec.extract = extractelement <2 x float> %.sroa.0154.0, i64 1
  %i.cx = fsub nsz float %.sroa.0154.4.vec.extract, %i.ce ; 2 uses
  %i.cy = fsub nsz float %.sroa.9.0, %.sroa.256.0.copyload ; 2 uses
  %i.cz = fmul nsz float %i.cx, %i.cx
  %i.da = call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %i.cz)
  %i.db = call nsz float @llvm.fmuladd.f32(float %i.cy, float %i.cy, float %i.da)
  %i.dc = call nsz noundef float @llvm.sqrt.f32(float %i.db)
  %i.dd = call nsz float @llvm.fmuladd.f32(float %i.y, float 1.000000e+01, float %.078)
  %i.de = fcmp nsz ogt float %i.dc, %i.dd
  br i1 %i.de, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.df = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  store float 0.000000e+00, ptr %i.df, align 8, !tbaa !603
  %i.dg = add i32 %.173175, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.274 = phi i32 [ %i.dg, %bb.m ], [ %.173175, %bb.l ] ; 2 uses
  %.sroa.0158.0 = load ptr, ptr %.sroa.0158.0176, align 8, !tbaa !243 ; 2 uses
  %.not172 = icmp eq ptr %.sroa.0158.0, null
  br i1 %.not172, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.n, %bb.h, %bb.f, %bb.g
  %.375 = phi i32 [ %.072179, %bb.f ], [ %.072179, %bb.g ], [ %.072179, %bb.h ], [ %.274, %bb.n ] ; 2 uses
  %.sroa.0162.0 = load ptr, ptr %.sroa.0162.0181, align 8, !tbaa !243 ; 2 uses
  %.not171 = icmp eq ptr %.sroa.0162.0, null
  br i1 %.not171, label %.noexc.i107.loopexit, label %bb.e

bb.o:                                             ; preds = %.noexc108
  %i.dh = load ptr, ptr %3, align 8, !tbaa !64    ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bc
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.o
  %i.dj = load i64, ptr %i.bc, align 8, !tbaa !65
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
end_hunk_0
begin_hunk_1_@_ZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMesh:bb.a
  br i1 %i.ci, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !892
  %i.cl = icmp eq ptr %i.ck, %i.cc
  br i1 %i.cl, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit179, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !892
  %i.co = icmp eq ptr %i.cn, %i.cc
  br i1 %i.co, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit181, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.cq = add nsw i64 %.052.i.i.i.i, -1
  %i.cr = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.cr, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !889

._crit_edge.i.i.i.i:                              ; preds = %bb.s, %bb.o
  %.pre-phi61.i.i.i.i = phi i64 [ %i.bt, %bb.o ], [ %.pre60.i.i.i.i, %bb.s ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %.sroa.0.1.lcssa.1, %bb.o ], [ %scevgep.i.i.i.i, %bb.s ] ; 5 uses
  %i.cs = ashr exact i64 %.pre-phi61.i.i.i.i, 3
  switch i64 %i.cs, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.thread.i [
    i64 3, label %bb.t
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ct = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !892
  %i.cu = icmp eq ptr %i.ct, %i.cc
  br i1 %i.cu, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.u, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.cv, %bb.u ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.cw = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !892
  %i.cx = icmp eq ptr %i.cw, %i.cc
  br i1 %i.cx, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i, label %bb.v

bb.v:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 8
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.v, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.cy, %bb.v ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.cz = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !892
  %i.da = icmp eq ptr %i.cz, %i.cc
  %spec.select.i.i.i.i = select i1 %i.da, ptr %.sroa.032.2.i.i.i.i, ptr %.sroa.10.1.lcssa.1
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.p
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit179: ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit181: ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 24
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i: ; preds = %.lr.ph.i.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit179, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit181, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.t
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.t ], [ %i.dd, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit181 ], [ %i.db, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.dc, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i.loopexit.split.loop.exit179 ], [ %.sroa.032.051.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i32 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %.sroa.10.1.lcssa.1
  br i1 %.not.i32, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.thread.i, label %"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit"

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.thread.i: ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i, %._crit_edge.i.i.i.i
  %i.de = add i64 %.0816.i, 8                     ; 2 uses
  %i.df = icmp ult i64 %i.de, %.val30
  br i1 %i.df, label %.lr.ph.i, label %.loopexit, !llvm.loop !890

"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit": ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.039.0133, i64 40 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !51 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.039.0133, i64 48 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !51 ; 2 uses
  %.not7.i = icmp eq ptr %i.dh, %i.dj
  br i1 %.not7.i, label %_ZN16CachedMeshBuffer4dropEv.exit, label %.lr.ph.i33

._crit_edge.i:                                    ; preds = %_ZNK17IReferenceCounted4dropEv.exit.i
  %.pre.i = load ptr, ptr %i.dg, align 8, !tbaa !53 ; 2 uses
  %.pre9.i = load ptr, ptr %i.di, align 8, !tbaa !54
  %i.dk = icmp eq ptr %.pre9.i, %.pre.i
  br i1 %i.dk, label %_ZN16CachedMeshBuffer4dropEv.exit, label %_ZSt8_DestroyIPPN5scene11IMeshBufferES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPPN5scene11IMeshBufferES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %._crit_edge.i
  store ptr %.pre.i, ptr %i.di, align 8, !tbaa !54
  br label %_ZN16CachedMeshBuffer4dropEv.exit

.lr.ph.i33:                                       ; preds = %"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit", %_ZNK17IReferenceCounted4dropEv.exit.i
  %.sroa.04.08.i = phi ptr [ %i.dw, %_ZNK17IReferenceCounted4dropEv.exit.i ], [ %i.dh, %"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit" ] ; 2 uses
  %i.dl = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !56 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !58
  %i.dn = getelementptr i8, ptr %i.dm, i64 -24
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds i8, ptr %i.dl, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !60
  %i.ds = add nsw i32 %i.dr, -1                   ; 2 uses
  store i32 %i.ds, ptr %i.dq, align 8, !tbaa !60
  %.not.i.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i.i, label %bb.w, label %_ZNK17IReferenceCounted4dropEv.exit.i

bb.w:                                             ; preds = %.lr.ph.i33
  %i.dt = load ptr, ptr %i.dp, align 8, !tbaa !58
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(12) %i.dp) #2, !inline_history !3
  br label %_ZNK17IReferenceCounted4dropEv.exit.i

_ZNK17IReferenceCounted4dropEv.exit.i:            ; preds = %bb.w, %.lr.ph.i33
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8 ; 2 uses
  %.not.i34 = icmp eq ptr %i.dw, %i.dj
  br i1 %.not.i34, label %._crit_edge.i, label %.lr.ph.i33

_ZN16CachedMeshBuffer4dropEv.exit:                ; preds = %_ZSt8_DestroyIPPN5scene11IMeshBufferES2_EvT_S4_RSaIT0_E.exit.i.i.i, %._crit_edge.i, %"_ZZN9ClientMap22invalidateMapBlockMeshEP12MapBlockMeshENK3$_0clERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit"
  %i.dx = load i64, ptr %i.bx, align 8, !tbaa !169
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.039.0133, i64 72
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !254
  %i.ea = urem i64 %i.dz, %i.dx                   ; 2 uses
  %i.eb = load ptr, ptr %i.bo, align 8, !tbaa !168
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ea
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !252
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %_ZN16CachedMeshBuffer4dropEv.exit
  %.0.i.i.i.i = phi ptr [ %i.ed, %_ZN16CachedMeshBuffer4dropEv.exit ], [ %i.ee, %bb.x ] ; 2 uses
  %i.ee = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !243 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ee, %.sroa.039.0133
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i, label %bb.x, !llvm.loop !17

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i: ; preds = %bb.x
  %i.ef = invoke ptr @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE8_M_eraseEmPNSB_15_Hash_node_baseEPNSB_10_Hash_nodeIS9_Lb1EEE(ptr noundef nonnull align 8 dereferenceable(56) %i.bo, i64 noundef %i.ea, ptr noundef nonnull %.0.i.i.i.i, ptr noundef nonnull %.sroa.039.0133)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit unwind label %bb.y

bb.y:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit71

.loopexit:                                        ; preds = %.lr.ph.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPPvSt6vectorIS2_SaIS2_EEEES2_ET_S8_S8_RKT0_.exit.thread.i, %bb.n
  %i.eh = load ptr, ptr %.sroa.039.0133, align 8, !tbaa !243
  br label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i, %.loopexit
  %.sroa.039.1 = phi ptr [ %i.eh, %.loopexit ], [ %i.ef, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_16CachedMeshBufferESaIS9_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSB_18_Mod_range_hashingENSB_20_Default_ranged_hashENSB_20_Prime_rehash_policyENSB_17_Hashtable_traitsILb1ELb0ELb1EEEE5eraseENSB_14_Node_iteratorIS9_Lb0ELb1EEE.exit.i ] ; 2 uses
  %.not68 = icmp eq ptr %.sroa.039.1, null
  br i1 %.not68, label %.loopexit69, label %bb.n, !llvm.loop !891

.loopexit69:                                      ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE16CachedMeshBufferSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_S6_EEE5eraseENSt8__detail14_Node_iteratorISD_Lb0ELb1EEE.exit, %bb.m, %._crit_edge.1
  %.not.i.i.i36 = icmp eq ptr %.sroa.0.1.lcssa.1, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %.loopexit69
  %i.ei = ptrtoint ptr %.sroa.16.1.lcssa.1 to i64
  %i.ej = ptrtoint ptr %.sroa.0.1.lcssa.1 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1.lcssa.1, i64 noundef %i.ek) #34
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit

_ZNSt6vectorIPvSaIS0_EED2Ev.exit:                 ; preds = %.loopexit69, %bb.z
  call void @_ZNSt5arrayISt13unordered_mapIN5video9SMaterialESt6vectorISt4pairIN4core8vector3dIsEEPN5scene11IMeshBufferEESaISB_EESt4hashIS2_ESt8equal_toIS2_ESaIS4_IKS2_SD_EEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  ret void

.loopexit71:                                      ; preds = %.loopexit71.loopexit, %.loopexit71.loopexit.split-lp, %.loopexit.split-lp, %bb.y
  %.sroa.0.3 = phi ptr [ %.sroa.0.1.lcssa.1, %bb.y ], [ %.sroa.0.2100.lcssa, %.loopexit.split-lp ], [ %.sroa.0.2100, %.loopexit71.loopexit ], [ %.sroa.0.2100.1, %.loopexit71.loopexit.split-lp ] ; 3 uses
  %.sroa.16.3 = phi ptr [ %.sroa.16.1.lcssa.1, %bb.y ], [ %.sroa.16.2102.lcssa, %.loopexit.split-lp ], [ %.sroa.16.2102, %.loopexit71.loopexit ], [ %.sroa.16.2102.1, %.loopexit71.loopexit.split-lp ]
  %.pn25 = phi { ptr, i32 } [ %i.eg, %bb.y ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit148, %.loopexit71.loopexit ], [ %lpad.loopexit.split-lp149, %.loopexit71.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i37, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit38, label %bb.aa

bb.aa:                                            ; preds = %.loopexit71
  %i.el = ptrtoint ptr %.sroa.16.3 to i64
  %i.em = ptrtoint ptr %.sroa.0.3 to i64
  %i.en = sub i64 %i.el, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.en) #34
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit38

_ZNSt6vectorIPvSaIS0_EED2Ev.exit38:               ; preds = %bb.aa, %.loopexit71, %bb.d
  %.pn25.pn = phi { ptr, i32 } [ %i.t, %bb.d ], [ %.pn25, %.loopexit71 ], [ %.pn25, %bb.aa ]
  call void @_ZNSt5arrayISt13unordered_mapIN5video9SMaterialESt6vectorISt4pairIN4core8vector3dIsEEPN5scene11IMeshBufferEESaISB_EESt4hashIS2_ESt8equal_toIS2_ESaIS4_IKS2_SD_EEELm2EED2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %2) #2
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  resume { ptr, i32 } %.pn25.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN9ClientMap23getBackgroundBrightnessEfjiPb(ptr noundef nonnull align 8 dereferenceable(656) %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.core::vector3d", align 4    ; 6 uses
  %8 = alloca %"class.core::CMatrix4", align 16   ; 16 uses
  %9 = alloca %"class.core::vector3d", align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #2
  %i.b = load ptr, ptr @g_profiler, align 8, !tbaa !493
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #2
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 27, ptr %i.a, align 8, !tbaa !178
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.d, ptr %6, align 8, !tbaa !64
  %i.e = load i64, ptr %i.a, align 8, !tbaa !178  ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(27) %i.d, ptr noundef nonnull align 1 dereferenceable(27) @.str.33, i64 27, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !176
  %i.g = load ptr, ptr %6, align 8, !tbaa !64
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  store i8 0, ptr %i.h, align 1, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %5, ptr noundef %i.b, ptr noundef nonnull align 8 dereferenceable(32) %6, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %.noexc
  %i.i = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.c
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.c, align 8, !tbaa !65
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  %i.m = load float, ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, align 16, !tbaa !481
  %i.n = fcmp nsz olt float %i.m, -9.900000e+01
  br i1 %i.n, label %.preheader, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i

bb.b:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

bb.c:                                             ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103: ; preds = %bb.c
  %i.s = load i64, ptr %i.c, align 8, !tbaa !65
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit105: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103, %bb.b
  %.pn = phi { ptr, i32 } [ %i.o, %bb.b ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i103 ], [ %i.p, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #2
  br label %bb.aj

.preheader:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %i.u = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef -100, i32 noundef 100)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %.preheader
  %i.v = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef -100, i32 noundef 100)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = insertelement <2 x i32> poison, i32 %i.u, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %i.v, i64 1
  %i.y = sitofp <2 x i32> %i.x to <2 x double>
  %i.z = fmul nnan nsz <2 x double> %i.y, <double 2.000000e-02, double 1.000000e-02>
  %i.aa = fptrunc <2 x double> %i.z to <2 x float> ; 3 uses
  %i.ab = extractelement <2 x float> %i.aa, i64 0 ; 2 uses
  %i.ac = call nsz float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float 1.000000e+00)
  %i.ad = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ae = call nsz float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ac)
  %i.af = fpext nsz float %i.ae to double
  %i.ag = call nsz double @llvm.sqrt.f64(double %i.af)
  %i.ah = fdiv nsz double 1.000000e+00, %i.ag     ; 2 uses
  %i.ai = fpext nnan <2 x float> %i.aa to <2 x double>
  %i.aj = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul nsz <2 x double> %i.ak, %i.ai      ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 1
  %i.an = fptrunc nsz double %i.am to float
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, i64 %indvars.iv ; 2 uses
  %i.ap = insertelement <2 x double> %i.al, double %i.ah, i64 1
  %i.aq = fptrunc <2 x double> %i.ap to <2 x float>
  store <2 x float> %i.aq, ptr %i.ao, align 4, !tbaa !82
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store float %i.an, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !82
  %i.ar = invoke noundef i32 @_Z12myrand_rangeii(i32 noundef 0, i32 noundef 100)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.as = sitofp nsz i32 %i.ar to double
  %i.at = fmul nnan nsz double %i.as, 1.000000e-02
  %i.au = fptrunc nsz double %i.at to float
  %i.av = getelementptr inbounds nuw [4 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE9z_offsets, i64 %indvars.iv
  store float %i.au, ptr %i.av, align 4, !tbaa !82
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50
  br i1 %exitcond.not, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i, label %.preheader, !llvm.loop !893

bb.g:                                             ; preds = %bb.d, %.preheader
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

bb.h:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = fpext nsz float %1 to double            ; 2 uses
  %i.az = fmul nsz double %i.ay, 8.000000e-01
  %i.ba = fptrunc nsz double %i.az to float       ; 2 uses
  %i.bb = fcmp nsz ogt float %i.ba, 3.500000e+02
  %spec.store.select = select i1 %i.bb, float 3.500000e+02, float %i.ba
  %i.bc = invoke noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #38
          to label %_ZNSt6vectorIiSaIiEE7reserveEm.exit unwind label %.thread156 ; 3 uses

_ZNSt6vectorIiSaIiEE7reserveEm.exit:              ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 200
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 60
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 20 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.bn = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 36
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.br = fcmp nsz ogt float %1, 3.500000e+02
  %i.bs = fdiv nnan nsz float %1, 3.500000e+01
  %i.bt = fmul nnan nsz float %i.bs, 1.500000e+00
  %.085 = select nsz i1 %i.br, float %i.bt, float 1.500000e+01 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.bw = sub i32 1000, %2                        ; 2 uses
  %i.bx = insertelement <2 x float> poison, float %.085, i64 0
  %i.by = shufflevector <2 x float> %i.bx, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.i

.thread156:                                       ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit118

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE7reserveEm.exit, %bb.x
  %indvars.iv220 = phi i64 [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %indvars.iv.next221, %bb.x ] ; 3 uses
  %.074200 = phi i32 [ 0, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %spec.select146.ph, %bb.x ] ; 2 uses
  %.sroa.24.0198 = phi ptr [ %i.bd, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.24.1.ph, %bb.x ] ; 5 uses
  %.sroa.15.0197 = phi ptr [ %i.bc, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.15.1.ph, %bb.x ] ; 4 uses
  %.sroa.0122.0196 = phi ptr [ %i.bc, %_ZNSt6vectorIiSaIiEE7reserveEm.exit ], [ %.sroa.0122.1.ph, %bb.x ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #2
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE12z_directions, i64 %indvars.iv220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %7, ptr noundef nonnull align 4 dereferenceable(12) %i.ca, i64 12, i1 false), !tbaa.struct !501
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %i.be, i8 0, i64 56, i1 false)
  store float 1.000000e+00, ptr %i.bf, align 4, !tbaa !82
  store float 1.000000e+00, ptr %i.bg, align 8, !tbaa !82
  store float 1.000000e+00, ptr %i.bh, align 4, !tbaa !82
  store float 1.000000e+00, ptr %8, align 16, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #2
  store <2 x float> <float 0.000000e+00, float 1.000000e+00>, ptr %9, align 8, !tbaa !82
  store float 0.000000e+00, ptr %i.bi, align 8, !tbaa !483
  %i.cb = invoke noundef nonnull align 4 dereferenceable(64) ptr @_ZN4core8CMatrix4IfE17buildRotateFromToERKNS_8vector3dIfEES5_(ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(12) %9, ptr noundef nonnull align 4 dereferenceable(12) %7)
          to label %bb.j unwind label %bb.q       ; 0 uses

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #2
  %10 = load <4 x float>, ptr %8, align 16
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %12 = load <4 x float>, ptr %i.bl, align 16
  %13 = shufflevector <4 x float> %12, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %14 = load <4 x float>, ptr %i.bn, align 16
  %15 = shufflevector <4 x float> %14, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.cc = load float, ptr %i.be, align 4, !tbaa !82
  %i.cd = load float, ptr %i.bh, align 4, !tbaa !82
  %i.ce = load float, ptr %i.bo, align 4, !tbaa !82
  %i.cf = load float, ptr %i.bp, align 8, !tbaa !82
  %i.cg = load float, ptr %i.bq, align 8, !tbaa !82
  %i.ch = load float, ptr %i.bg, align 8, !tbaa !82
  %i.ci = load float, ptr %i.bj, align 4, !tbaa !481 ; 2 uses
  %i.cj = load float, ptr %i.bk, align 8, !tbaa !482 ; 2 uses
  %i.ck = load float, ptr %i.bm, align 4, !tbaa !483 ; 2 uses
  %i.cl = fmul nsz float %i.cj, %i.cd
  %i.cm = call nsz float @llvm.fmuladd.f32(float %i.ci, float %i.cc, float %i.cl)
  %i.cn = call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.ce, float %i.cm) ; 4 uses
  %i.co = insertelement <2 x float> poison, float %i.cj, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x float> %13, float %i.cg, i64 1
  %i.cr = fmul nsz <2 x float> %i.cp, %i.cq
  %i.cs = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = insertelement <2 x float> %11, float %i.cf, i64 1
  %i.cv = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cu, <2 x float> %i.cr)
  %i.cw = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = insertelement <2 x float> %15, float %i.ch, i64 1
  %i.cz = call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.cy, <2 x float> %i.cv) ; 4 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr @_ZZN9ClientMap23getBackgroundBrightnessEfjiPbE9z_offsets, i64 %indvars.iv220
  %i.db = load float, ptr %i.da, align 4, !tbaa !82
  %i.dc = fmul nsz float %.085, %i.db
  %i.dd = fpext nsz float %i.dc to double
  %i.de = call nsz double @llvm.fmuladd.f64(double %i.ay, double 6.000000e-01, double %i.dd)
  %i.df = fptrunc nsz double %i.de to float       ; 3 uses
  %i.dg = load ptr, ptr %i.bv, align 8, !tbaa !566
  %i.dh = fmul nsz float %i.cn, %i.cn
  %i.di = extractelement <2 x float> %i.cz, i64 0 ; 2 uses
  %i.dj = call nsz float @llvm.fmuladd.f32(float %i.di, float %i.di, float %i.dh)
  %i.dk = extractelement <2 x float> %i.cz, i64 1 ; 2 uses
  %i.dl = call nsz float @llvm.fmuladd.f32(float %i.dk, float %i.dk, float %i.dj) ; 2 uses
  %i.dm = fcmp nsz oeq float %i.dl, 0.000000e+00
  br i1 %i.dm, label %_ZN4core8vector3dIfE9normalizeEv.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dn = fpext nsz float %i.dl to double
  %i.do = call nsz double @llvm.sqrt.f64(double %i.dn)
  %i.dp = fdiv nsz double 1.000000e+00, %i.do     ; 2 uses
  %i.dq = fpext <2 x float> %i.cz to <2 x double>
  %i.dr = fpext nsz float %i.cn to double
  %i.ds = fmul nsz double %i.dp, %i.dr
  %i.dt = fptrunc nsz double %i.ds to float
  %i.du = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dv = shufflevector <2 x double> %i.du, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dw = fmul nsz <2 x double> %i.dv, %i.dq
  %i.dx = fptrunc <2 x double> %i.dw to <2 x float>
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i

_ZN4core8vector3dIfE9normalizeEv.exit.i:          ; preds = %bb.k, %bb.j
  %.sroa.0183.4.vec.extract193.pre-phi.i = phi float [ %i.cn, %bb.j ], [ %i.dt, %bb.k ] ; 3 uses
  %i.dy = phi <2 x float> [ %i.cz, %bb.j ], [ %i.dx, %bb.k ] ; 4 uses
  %.sroa.0169.0.copyload.i = load <2 x float>, ptr %i.bu, align 8, !tbaa !82 ; 2 uses
  %.sroa.14.0.copyload.i = load float, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !82
  %i.dz = fmul nsz float %.sroa.0183.4.vec.extract193.pre-phi.i, %i.df
  %.sroa.0169.4.vec.extract.i = extractelement <2 x float> %.sroa.0169.0.copyload.i, i64 1 ; 3 uses
  %i.ea = fadd nsz float %i.dz, %.sroa.0169.4.vec.extract.i ; 3 uses
  %i.eb = insertelement <2 x float> poison, float %i.df, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = fmul nsz <2 x float> %i.dy, %i.ec
  %i.ee = insertelement <2 x float> %.sroa.0169.0.copyload.i, float %.sroa.14.0.copyload.i, i64 1 ; 3 uses
  %i.ef = fadd nsz <2 x float> %i.ed, %i.ee       ; 4 uses
  %.sroa.0169.4.vec.insert.i = insertelement <2 x float> %i.ef, float %i.ea, i64 1
  %i.eg = fcmp nsz ogt float %.sroa.0169.4.vec.extract.i, 0.000000e+00
  %i.eh = select nsz i1 %i.eg, float 5.000000e+00, float -5.000000e+00
  %i.ei = fadd nsz float %.sroa.0169.4.vec.extract.i, %i.eh
  %i.ej = fdiv nsz float %i.ei, 1.000000e+01
  %i.ek = fptosi float %i.ej to i16
  %i.el = fcmp nsz ogt <2 x float> %i.ee, zeroinitializer
  %i.em = select <2 x i1> %i.el, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.en = fadd nsz <2 x float> %i.ee, %i.em
  %i.eo = fdiv nsz <2 x float> %i.en, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i.i = zext i16 %i.ek to i48
  %.sroa.2.0.insert.shift.i.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i.i, 16
  %i.ep = fptosi <2 x float> %i.eo to <2 x i16>   ; 2 uses
  %i.eq = extractelement <2 x i16> %i.ep, i64 1
  %i.er = zext i16 %i.eq to i48
  %.sroa.3.0.insert.shift.i.i = shl nuw i48 %i.er, 32
  %.sroa.2.0.insert.insert.i.i = or disjoint i48 %.sroa.3.0.insert.shift.i.i, %.sroa.2.0.insert.shift.i.i
  %i.es = extractelement <2 x i16> %i.ep, i64 0
  %i.et = zext i16 %i.es to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.2.0.insert.insert.i.i, %i.et
  %i.eu = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i.i, ptr noundef null)
          to label %.noexc107 unwind label %.loopexit.split-lp.loopexit

.noexc107:                                        ; preds = %_ZN4core8vector3dIfE9normalizeEv.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dg, i64 336 ; 2 uses
  %i.ew = and i32 %i.eu, 65535
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.ex
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.ey, align 1, !tbaa !65
  %i.ez = and i8 %.sroa.0.0.copyload.i.i.i, 80
  %.0107.i = icmp eq i8 %i.ez, 16
  %i.fa = fcmp nsz ogt <2 x float> %i.ef, zeroinitializer
  %i.fb = fcmp nsz ogt float %i.ea, 0.000000e+00
  %i.fc = select nsz i1 %i.fb, float 5.000000e+00, float -5.000000e+00
  %i.fd = fadd nsz float %i.ea, %i.fc
  %i.fe = fdiv nsz float %i.fd, 1.000000e+01
  %i.ff = fptosi float %i.fe to i16
  %i.fg = select <2 x i1> %i.fa, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.fh = fadd nsz <2 x float> %i.ef, %i.fg
  %i.fi = fdiv nsz <2 x float> %i.fh, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i125.i = zext i16 %i.ff to i48
  %.sroa.2.0.insert.shift.i126.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i125.i, 16
  %i.fj = fptosi <2 x float> %i.fi to <2 x i16>   ; 2 uses
  %i.fk = extractelement <2 x i16> %i.fj, i64 1
  %i.fl = zext i16 %i.fk to i48
  %.sroa.3.0.insert.shift.i124.i = shl nuw i48 %i.fl, 32
  %.sroa.2.0.insert.insert.i127.i = or disjoint i48 %.sroa.3.0.insert.shift.i124.i, %.sroa.2.0.insert.shift.i126.i
  %i.fm = extractelement <2 x i16> %i.fj, i64 0
  %i.fn = zext i16 %i.fm to i48
  %.sroa.0.0.insert.insert.i129.i = or disjoint i48 %.sroa.2.0.insert.insert.i127.i, %i.fn
  %i.fo = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i129.i, ptr noundef null)
          to label %.noexc108 unwind label %.loopexit.split-lp.loopexit

.noexc108:                                        ; preds = %.noexc107
  %i.fp = and i32 %i.fo, 65535
  %i.fq = icmp eq i32 %i.fp, 127
  %i.fr = extractelement <2 x float> %i.ef, i64 1
  br i1 %i.fq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.noexc108
  %i.fs = extractelement <2 x float> %i.dy, i64 1
  %i.ft = fmul nsz float %i.fs, 2.000000e+00
  %i.fu = fmul nsz float %i.ft, 2.000000e+01
  %i.fv = insertelement <2 x float> %i.dy, float %.sroa.0183.4.vec.extract193.pre-phi.i, i64 1
  %i.fw = fmul nsz <2 x float> %i.fv, splat (float 2.000000e+00)
  %i.fx = fmul nsz <2 x float> %i.fw, splat (float 2.000000e+01)
  %i.fy = load <2 x float>, ptr %i.bu, align 8, !tbaa !82
  %i.fz = fadd nsz <2 x float> %i.fx, %i.fy
  %i.ga = load float, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !483
  %i.gb = fadd nsz float %i.fu, %i.ga
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.noexc108
  %.sroa.0169.0.i = phi nsz <2 x float> [ %i.fz, %bb.l ], [ %.sroa.0169.4.vec.insert.i, %.noexc108 ]
  %.sroa.14.0.i = phi nsz float [ %i.gb, %bb.l ], [ %i.fr, %.noexc108 ]
  %.0101.i = phi nsz float [ 2.000000e+01, %bb.l ], [ %i.df, %.noexc108 ] ; 2 uses
  %.096.i = phi nsz float [ 0.000000e+00, %bb.l ], [ %spec.store.select, %.noexc108 ]
  %i.gc = fcmp nsz olt float %.0101.i, %1
  br i1 %i.gc, label %.lr.ph.i, label %_ZL20getVisibleBrightnessP3MapRKN4core8vector3dIfEES3_ffffPK14NodeDefManagerjfPiPb.exit.thread

.lr.ph.i:                                         ; preds = %bb.m
  %i.gd = fmul nsz float %.085, %.sroa.0183.4.vec.extract193.pre-phi.i
  %i.ge = fmul nsz <2 x float> %i.by, %i.dy
  br label %bb.n

bb.n:                                             ; preds = %bb.p, %.lr.ph.i
  %.0 = phi i8 [ 0, %.lr.ph.i ], [ %.1, %bb.p ]   ; 4 uses
  %.097224.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.ph.i, %bb.p ] ; 3 uses
  %.098223.i = phi i32 [ 0, %.lr.ph.i ], [ %.199.ph.i, %bb.p ] ; 3 uses
  %.1102222.i = phi float [ %.0101.i, %.lr.ph.i ], [ %i.gg, %bb.p ]
  %.0103221.i = phi i32 [ 0, %.lr.ph.i ], [ %.1104.ph.i, %bb.p ] ; 2 uses
  %.0105220.i = phi i1 [ false, %.lr.ph.i ], [ %.1106.ph.i, %bb.p ] ; 2 uses
  %.0108219.i = phi i1 [ false, %.lr.ph.i ], [ %.1109.i, %bb.p ]
  %.0111218.i = phi i32 [ 0, %.lr.ph.i ], [ %i.ic, %bb.p ] ; 2 uses
  %.sroa.14.1217.i = phi float [ %.sroa.14.0.i, %.lr.ph.i ], [ %i.ie, %bb.p ]
  %.sroa.0169.1216.i = phi <2 x float> [ %.sroa.0169.0.i, %.lr.ph.i ], [ %.sroa.0169.4.vec.insert181.i, %bb.p ] ; 2 uses
  %.sroa.0169.4.vec.extract179.i = extractelement <2 x float> %.sroa.0169.1216.i, i64 1
  %i.gf = fadd nsz float %i.gd, %.sroa.0169.4.vec.extract179.i ; 3 uses
  %i.gg = fadd nsz float %.085, %.1102222.i       ; 3 uses
  %i.gh = fcmp nsz ogt float %i.gf, 0.000000e+00
  %i.gi = select nsz i1 %i.gh, float 5.000000e+00, float -5.000000e+00
  %i.gj = fadd nsz float %i.gf, %i.gi
  %i.gk = fdiv nsz float %i.gj, 1.000000e+01
  %i.gl = fptosi float %i.gk to i16
  %i.gm = insertelement <2 x float> %.sroa.0169.1216.i, float %.sroa.14.1217.i, i64 1
  %i.gn = fadd nsz <2 x float> %i.ge, %i.gm       ; 4 uses
  %.sroa.0169.4.vec.insert181.i = insertelement <2 x float> %i.gn, float %i.gf, i64 1
  %i.go = fcmp nsz ogt <2 x float> %i.gn, zeroinitializer
  %i.gp = select <2 x i1> %i.go, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.gq = fadd nsz <2 x float> %i.gn, %i.gp
  %i.gr = fdiv nsz <2 x float> %i.gq, splat (float 1.000000e+01)
  %.sroa.2.0.insert.ext.i150.i = zext i16 %i.gl to i48
  %.sroa.2.0.insert.shift.i151.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i150.i, 16
  %i.gs = fptosi <2 x float> %i.gr to <2 x i16>   ; 2 uses
  %i.gt = extractelement <2 x i16> %i.gs, i64 1
  %i.gu = zext i16 %i.gt to i48
  %.sroa.3.0.insert.shift.i149.i = shl nuw i48 %i.gu, 32
  %.sroa.2.0.insert.insert.i152.i = or disjoint i48 %.sroa.2.0.insert.shift.i151.i, %.sroa.3.0.insert.shift.i149.i
  %i.gv = extractelement <2 x i16> %i.gs, i64 0
  %i.gw = zext i16 %i.gv to i48
  %.sroa.0.0.insert.insert.i154.i = or disjoint i48 %.sroa.2.0.insert.insert.i152.i, %i.gw
  %i.gx = invoke i32 @_ZN3Map7getNodeEN4core8vector3dIsEEPb(ptr noundef nonnull align 8 dereferenceable(144) %0, i48 %.sroa.0.0.insert.insert.i154.i, ptr noundef null)
          to label %.noexc109 unwind label %.loopexit ; 2 uses

.noexc109:                                        ; preds = %bb.n
  %i.gy = and i32 %i.gx, 65535
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.gz
  %.sroa.0.0.copyload.i.i155.i = load i8, ptr %i.ha, align 1, !tbaa !65 ; 4 uses
  %i.hb = icmp eq i32 %.0111218.i, 0
  %or.cond.not212.not215.i = select i1 %.0107.i, i1 %i.hb, i1 false
  %i.hc = and i8 %.sroa.0.0.copyload.i.i155.i, 16
  %.not115.i = icmp ne i8 %i.hc, 0
  %i.hd = and i8 %.sroa.0.0.copyload.i.i155.i, 64
  %i.he = and i8 %.sroa.0.0.copyload.i.i155.i, 80
  %i.hf = icmp eq i8 %i.he, 16
  %or.cond119.i = and i1 %or.cond.not212.not215.i, %i.hf
  %.1109.i = select i1 %or.cond119.i, i1 true, i1 %.0108219.i ; 2 uses
  %i.hg = icmp ne i8 %i.hd, 0
  %or.cond3.i = select i1 %i.hg, i1 true, i1 %.1109.i
  %or.cond211.i = select i1 %.not115.i, i1 %or.cond3.i, i1 false
  br i1 %or.cond211.i, label %_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i, label %bb.o

bb.o:                                             ; preds = %.noexc109
  %i.hh = add nsw i32 %.0103221.i, 1
  %i.hi = icmp sgt i32 %.0103221.i, 2
  br i1 %i.hi, label %._crit_edge.i, label %bb.p

_ZNK7MapNode13getLightBlendEj20ContentLightingFlags.exit.i: ; preds = %.noexc109
  %.sroa.4.0.extract.shift.i = lshr i32 %i.gx, 16
  %.sroa.4.0.extract.trunc.i = trunc i32 %.sroa.4.0.extract.shift.i to i8 ; 2 uses
  %i.hj = fcmp nsz ult float %i.gg, %.096.i
  %i.hk = trunc nuw i8 %.0 to i1
  %i.hl = select i1 %i.hj, i1 true, i1 %i.hk
  %or.cond = select i1 %i.hl, i1 true, i1 %.0105220.i
  %.pre = and i8 %.sroa.4.0.extract.trunc.i, 15
  %.pre228 = and i8 %.sroa.0.0.copyload.i.i155.i, 15 ; 2 uses
end_hunk_1
