Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/clientmap?download=true
inline.NumInlined: 4211
inline.NumDeleted: 1666
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 26
begin_hunk_0_@"_ZZN9ClientMap14updateDrawListEvENK3$_1clEa":bb.a
  br label %_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

bb.k:                                             ; preds = %_ZN4core8vector3dIsEixEj.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !819, !nonnull !153, !align !501 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !247
  %i.di = add i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 4, !tbaa !247
  br label %_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit

_ZNSt5queueIN4core8vector3dIsEESt5dequeIS2_SaIS2_EEE4pushERKS2_.exit: ; preds = %bb.j, %bb.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN13MapBlockFlagsD2Ev(ptr noundef nonnull align 8 dead_on_return(36) dereferenceable(36) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !762    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !765  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !779 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 512) #34
  br label %_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN13MapBlockFlags5ChunkEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !799

_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !762
  br label %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN13MapBlockFlags5ChunkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !766
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
  %i.a = load ptr, ptr %0, align 8, !tbaa !800    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZNSt5dequeIN4core8vector3dIsEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !783  ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !801  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = icmp ult ptr %i.d, %i.f
  br i1 %i.g, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.h = load ptr, ptr %.06.i.i.i, align 8, !tbaa !785
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef 510) #34
  %i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.j = icmp ult ptr %.06.i.i.i, %i.e
  br i1 %i.j, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !802

_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !800
  br label %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.b
  %i.k = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIN4core8vector3dIsEESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.a, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !803
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !142
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !41
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
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !500, !nonnull !153, !align !501
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i8, ptr %i.f, align 4, !tbaa !502, !range !152, !noundef !153
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 654
  %i.j = load i8, ptr %i.i, align 2, !range !152
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond = select i1 %i.h, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.q, label %.noexc.i

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #2
  %i.l = load ptr, ptr @g_profiler, align 8, !tbaa !511
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 20, ptr %i.c, align 8, !tbaa !156
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.n, ptr %2, align 8, !tbaa !37
  %i.o = load i64, ptr %i.c, align 8, !tbaa !156  ; 3 uses
  store i64 %i.o, ptr %i.m, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.n, ptr noundef nonnull align 1 dereferenceable(20) @.str.20, i64 20, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !154
  %i.q = load ptr, ptr %2, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %1, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.noexc
  %i.s = load ptr, ptr %2, align 8, !tbaa !37     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.m
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.u = load i64, ptr %i.m, align 8, !tbaa !41
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %.sroa.256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.sroa.256.0.copyload = load float, ptr %.sroa.256.0..sroa_idx, align 8, !tbaa !59 ; 2 uses
  %.sroa.256.0.copyload.a = load float, ptr %i.w, align 8
  %5 = insertelement <2 x float> poison, float %.sroa.256.0.copyload.a, i64 0
  %i.x = insertelement <2 x float> %5, float %.sroa.256.0.copyload, i64 1 ; 2 uses
  %i.y = fcmp nsz ogt <2 x float> %i.x, zeroinitializer
  %i.z = select <2 x i1> %i.y, <2 x float> splat (float 5.000000e+00), <2 x float> splat (float -5.000000e+00)
  %i.aa = fadd nsz <2 x float> %i.x, %i.z
  %i.ab = fdiv nsz <2 x float> %i.aa, splat (float 1.000000e+01)
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !500, !nonnull !153, !align !501 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !713 ; 2 uses
  %i.ae = fptosi float %i.ad to i16
  %i.af = sext i16 %i.ae to i32
  %i.ag = fptosi <2 x float> %i.ab to <2 x i16>
  %i.ah = sext <2 x i16> %i.ag to <2 x i32>       ; 2 uses
  %i.ai = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %i.aj = shufflevector <2 x i32> %i.ai, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ak = sub nsw <2 x i32> %i.ah, %i.aj
  %i.al = sdiv <2 x i32> %i.ak, splat (i32 16)    ; 2 uses
  %i.am = extractelement <2 x i32> %i.al, i64 0
  %i.an = add nsw i32 %i.am, -3
  %i.ao = extractelement <2 x i32> %i.al, i64 1
  %i.ap = add nsw i32 %i.ao, -3
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.0163.0178 = load ptr, ptr %i.aq, align 8, !tbaa !241 ; 2 uses
  %.not172179 = icmp eq ptr %.sroa.0163.0178, null
  br i1 %.not172179, label %.noexc.i108, label %.lr.ph183

.lr.ph183:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ar = add nsw <2 x i32> %i.aj, %i.ah
  %i.as = sdiv <2 x i32> %i.ar, splat (i32 16)
  %i.at = add nsw <2 x i32> %i.as, splat (i32 1)  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.av = load i8, ptr %i.au, align 4, !tbaa !502, !range !152, !noundef !153
  %i.aw = trunc nuw i8 %i.av to i1
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.ax = extractelement <2 x i32> %i.at, i64 0
  %i.ay = extractelement <2 x i32> %i.at, i64 1
  br label %bb.e

.noexc.i108.loopexit:                             ; preds = %.loopexit
  %i.az = uitofp nsz i32 %.375 to float
  %i.ba = uitofp nsz i32 %i.bu to float
  br label %.noexc.i108

.noexc.i108:                                      ; preds = %.noexc.i108.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %.072.lcssa = phi float [ 0.000000e+00, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.az, %.noexc.i108.loopexit ]
  %.071.lcssa = phi float [ 0.000000e+00, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ], [ %i.ba, %.noexc.i108.loopexit ]
  %i.bb = load ptr, ptr @g_profiler, align 8, !tbaa !511
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #2
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.bc, ptr %3, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #2
  store i64 22, ptr %i.b, align 8, !tbaa !156
  %i.bd = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc109 unwind label %bb.r  ; 2 uses

.noexc109:                                        ; preds = %.noexc.i108
  store ptr %i.bd, ptr %3, align 8, !tbaa !37
  %i.be = load i64, ptr %i.b, align 8, !tbaa !156 ; 3 uses
  store i64 %i.be, ptr %i.bc, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.bd, ptr noundef nonnull align 1 dereferenceable(22) @.str.13, i64 22, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !154
  %i.bg = load ptr, ptr %3, align 8, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #2
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %3, float noundef %.072.lcssa)
          to label %bb.o unwind label %bb.s

bb.c:                                             ; preds = %.noexc.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

bb.d:                                             ; preds = %.noexc
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bk = load ptr, ptr %2, align 8, !tbaa !37    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.m
  br i1 %i.bl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.d
  %i.bm = load i64, ptr %i.m, align 8, !tbaa !41
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bn) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111, %bb.c
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.c ], [ %i.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111 ], [ %i.bj, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
  br label %bb.w

bb.e:                                             ; preds = %.lr.ph183, %.loopexit
  %.sroa.0163.0182 = phi ptr [ %.sroa.0163.0178, %.lr.ph183 ], [ %.sroa.0163.0, %.loopexit ] ; 2 uses
  %.071181 = phi i32 [ 0, %.lr.ph183 ], [ %i.bu, %.loopexit ]
  %.072180 = phi i32 [ 0, %.lr.ph183 ], [ %.375, %.loopexit ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0163.0182, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !259 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 72
  %.sroa.0.0.copyload.i = load i32, ptr %i.bq, align 8 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !754
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = add i32 %.071181, %i.bt                 ; 2 uses
  br i1 %i.aw, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %sext = shl i32 %.sroa.0.0.copyload.i, 16
  %i.bv = ashr exact i32 %sext, 16                ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.an
  %i.bx = icmp sgt i32 %i.bv, %i.ax
  %or.cond102 = select i1 %i.bw, i1 true, i1 %i.bx
  br i1 %or.cond102, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.by = ashr i32 %.sroa.0.0.copyload.i, 16      ; 2 uses
  %i.bz = icmp slt i32 %i.by, %i.ap
  %i.ca = icmp sgt i32 %i.by, %i.ay
  %or.cond106 = select i1 %i.bz, i1 true, i1 %i.ca
  br i1 %or.cond106, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %.sroa.0159.0174 = load ptr, ptr %i.cb, align 8, !tbaa !241 ; 2 uses
  %.not173175 = icmp eq ptr %.sroa.0159.0174, null
  br i1 %.not173175, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.cc = load float, ptr %i.w, align 8, !tbaa !494
  %7 = load float, ptr %6, align 4, !tbaa !495
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.0159.0177 = phi ptr [ %.sroa.0159.0174, %.lr.ph ], [ %.sroa.0159.0, %bb.n ] ; 2 uses
  %.173176 = phi i32 [ %.072180, %.lr.ph ], [ %.274, %bb.n ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0159.0177, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !239 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !458 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %.sroa.0.0.copyload.i114 = load i48, ptr %i.cg, align 8 ; 3 uses
  %.not = icmp eq ptr %i.cf, null
  %.sroa.2.0.extract.shift.i120 = lshr i48 %.sroa.0.0.copyload.i114, 16
  %.sroa.3.0.extract.shift.i122 = lshr i48 %.sroa.0.0.copyload.i114, 32
  %.sroa.3.0.extract.trunc.i123 = trunc nuw i48 %.sroa.3.0.extract.shift.i122 to i16
  %i.ch = trunc i48 %.sroa.0.0.copyload.i114 to i16
  %i.ci = insertelement <2 x i16> poison, i16 %i.ch, i64 0
  %i.cj = trunc i48 %.sroa.2.0.extract.shift.i120 to i16
  %i.ck = insertelement <2 x i16> %i.ci, i16 %i.cj, i64 1
  %i.cl = sitofp <2 x i16> %i.ck to <2 x float>
  %i.cm = sitofp nsz i16 %.sroa.3.0.extract.trunc.i123 to float
  %i.cn = fmul nnan nsz <2 x float> %i.cl, splat (float 1.000000e+01) ; 2 uses
  %i.co = fmul nnan nsz float %i.cm, 1.000000e+01 ; 2 uses
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 60
  %.sroa.01.0.copyload.i = load <2 x float>, ptr %i.cp, align 4
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 68
  %.sroa.22.0.copyload.i = load float, ptr %.sroa.22.0..sroa_idx.i, align 4, !tbaa !59
  %i.cq = fadd nsz <2 x float> %i.cn, %.sroa.01.0.copyload.i
  %i.cr = fadd nsz float %i.co, %.sroa.22.0.copyload.i
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cf, i64 56
  %i.ct = load float, ptr %i.cs, align 8, !tbaa !459
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.cu = fadd nsz <2 x float> %i.cn, splat (float 7.500000e+01)
  %i.cv = fadd nsz float %i.co, 7.500000e+01
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sroa.0155.2 = phi nsz <2 x float> [ %i.cu, %bb.k ], [ %i.cq, %bb.j ] ; 2 uses
  %.sroa.9.0 = phi nsz float [ %i.cv, %bb.k ], [ %i.cr, %bb.j ]
  %.078 = phi nsz float [ 0.000000e+00, %bb.k ], [ %i.ct, %bb.j ]
  %.sroa.0155.0.vec.extract = extractelement <2 x float> %.sroa.0155.2, i64 0
  %i.cw = fsub nsz float %.sroa.0155.0.vec.extract, %i.cc ; 2 uses
  %.sroa.0155.4.vec.extract = extractelement <2 x float> %.sroa.0155.2, i64 1
  %i.cx = fsub nsz float %.sroa.0155.4.vec.extract, %7 ; 2 uses
  %8 = fsub nsz float %.sroa.9.0, %.sroa.256.0.copyload ; 2 uses
  %9 = fmul nsz float %i.cx, %i.cx
  %i.cy = call nsz float @llvm.fmuladd.f32(float %i.cw, float %i.cw, float %9)
  %i.cz = call nsz float @llvm.fmuladd.f32(float %8, float %8, float %i.cy)
  %i.da = call nsz noundef float @llvm.sqrt.f32(float %i.cz)
  %i.db = call nsz float @llvm.fmuladd.f32(float %i.ad, float 1.000000e+01, float %.078)
  %i.dc = fcmp nsz ogt float %i.da, %i.db
  br i1 %i.dc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store float 0.000000e+00, ptr %i.dd, align 8, !tbaa !756
  %i.de = add i32 %.173176, 1
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.274 = phi i32 [ %i.de, %bb.m ], [ %.173176, %bb.l ] ; 2 uses
  %.sroa.0159.0 = load ptr, ptr %.sroa.0159.0177, align 8, !tbaa !241 ; 2 uses
  %.not173 = icmp eq ptr %.sroa.0159.0, null
  br i1 %.not173, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %bb.n, %bb.h, %bb.f, %bb.g
  %.375 = phi i32 [ %.072180, %bb.f ], [ %.072180, %bb.g ], [ %.072180, %bb.h ], [ %.274, %bb.n ] ; 2 uses
  %.sroa.0163.0 = load ptr, ptr %.sroa.0163.0182, align 8, !tbaa !241 ; 2 uses
  %.not172 = icmp eq ptr %.sroa.0163.0, null
  br i1 %.not172, label %.noexc.i108.loopexit, label %bb.e

bb.o:                                             ; preds = %.noexc109
  %i.df = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.bc
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132: ; preds = %bb.o
  %i.dh = load i64, ptr %i.bc, align 8, !tbaa !41
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.df, i64 noundef %i.di) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i132
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  %i.dj = load ptr, ptr @g_profiler, align 8, !tbaa !511
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #2
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.dk, ptr %4, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #2
  store i64 20, ptr %i.a, align 8, !tbaa !156
  %i.dl = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc137 unwind label %bb.t  ; 2 uses

.noexc137:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  store ptr %i.dl, ptr %4, align 8, !tbaa !37
  %i.dm = load i64, ptr %i.a, align 8, !tbaa !156 ; 3 uses
  store i64 %i.dm, ptr %i.dk, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.dl, ptr noundef nonnull align 1 dereferenceable(20) @.str.14, i64 20, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !154
  %i.do = load ptr, ptr %4, align 8, !tbaa !37
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dm
  store i8 0, ptr %i.dp, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #2
  invoke void @_ZN8Profiler3avgERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEf(ptr noundef nonnull align 8 dereferenceable(144) %i.dj, ptr noundef nonnull align 8 dereferenceable(32) %4, float noundef %.071.lcssa)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %.noexc137
  %i.dq = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.dk
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139: ; preds = %bb.p
  %i.ds = load i64, ptr %i.dk, align 8, !tbaa !41
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i139
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  call void @_ZN13ScopeProfiler4stopEv(ptr noundef nonnull align 8 dereferenceable(50) %1) #2
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !37 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.dx = icmp eq ptr %i.dv, %i.dw
  br i1 %i.dx, label %_ZN13ScopeProfilerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !41
  %i.dz = add i64 %i.dy, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dz) #34
  br label %_ZN13ScopeProfilerD2Ev.exit

_ZN13ScopeProfilerD2Ev.exit:                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #2
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_ZN13ScopeProfilerD2Ev.exit
  ret void

bb.r:                                             ; preds = %.noexc.i108
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

bb.s:                                             ; preds = %.noexc109
  %i.eb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ec = load ptr, ptr %3, align 8, !tbaa !37    ; 2 uses
  %i.ed = icmp eq ptr %i.ec, %i.bc
  br i1 %i.ed, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142: ; preds = %bb.s
  %i.ee = load i64, ptr %i.bc, align 8, !tbaa !41
  %i.ef = add i64 %i.ee, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.ef) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142, %bb.r
  %.pn83 = phi { ptr, i32 } [ %i.ea, %bb.r ], [ %i.eb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i142 ], [ %i.eb, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #2
  br label %bb.v

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit134
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

bb.u:                                             ; preds = %.noexc137
  %i.eh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ei = load ptr, ptr %4, align 8, !tbaa !37    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.dk
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145: ; preds = %bb.u
  %i.ek = load i64, ptr %i.dk, align 8, !tbaa !41
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145, %bb.t
  %.pn85 = phi { ptr, i32 } [ %i.eg, %bb.t ], [ %i.eh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i145 ], [ %i.eh, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #2
  br label %bb.v

bb.v:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144
  %.pn92.pn.pn.pn = phi { ptr, i32 } [ %.pn83, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit144 ], [ %.pn85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit147 ]
  call void @_ZN13ScopeProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(50) dereferenceable(50) %1) #2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113
  %.pn92.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn92.pn.pn.pn, %bb.v ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #2
  resume { ptr, i32 } %.pn92.pn.pn.pn.pn
}

declare noundef i32 @_ZN6Client13getCrackLevelEv(ptr noundef nonnull align 8 dereferenceable(1674)) local_unnamed_addr #7

declare noundef i32 @_ZN11Environment16getDayNightRatioEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN9ClientMap28updateTransparentMeshBuffersEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(656) %0) local_unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %1 = alloca %class.ScopeProfiler, align 8       ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #2
  %i.d = load ptr, ptr @g_profiler, align 8, !tbaa !511
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #2
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #2
  store i64 32, ptr %i.c, align 8, !tbaa !156
  %i.f = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.f, ptr %2, align 8, !tbaa !37
  %i.g = load i64, ptr %i.c, align 8, !tbaa !156  ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull align 1 dereferenceable(32) @.str.43, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !154
  %i.i = load ptr, ptr %2, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #2
  invoke void @_ZN13ScopeProfilerC1EP8ProfilerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE17ScopeProfilerType13TimePrecision(ptr noundef nonnull align 8 dereferenceable(50) %1, ptr noundef %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef zeroext 2, i8 noundef signext 1)
          to label %bb.a unwind label %bb.g

bb.a:                                             ; preds = %.noexc
  %i.k = load ptr, ptr %2, align 8, !tbaa !37     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.e
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.m = load i64, ptr %i.e, align 8, !tbaa !41
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #2
end_hunk_0
