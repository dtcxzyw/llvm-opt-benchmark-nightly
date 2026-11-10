Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/vm?download=true
inline.NumInlined: 28114
inline.NumDeleted: 15480
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN8WasmEdge2VM2VM22unsafeLoadBuiltInHostsEv:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge2VM2VM21unsafeLoadPlugInHostsEv(ptr noundef nonnull align 8 dereferenceable(1960) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %2 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %7 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %8 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %9 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %10 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %11 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %12 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %13 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %14 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %15 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %16 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %17 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %18 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %19 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %20 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %21 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %22 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %23 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %24 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %25 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %26 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %27 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %28 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %29 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %30 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %31 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %32 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %33 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %34 = alloca %"struct.spdlog::source_loc", align 8 ; 4 uses
  %35 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %36 = alloca %"class.std::basic_string_view", align 8 ; 5 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::unique_ptr.136", align 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1896 ; 27 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !308  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1904 ; 41 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !309  ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE5clearEv.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !191
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(952) %i.f) #27, !inline_history !8
  br label %_ZSt8_DestroyISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.e
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EEEvPT_.exit.i.i.i.i
  store ptr %i.c, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE5clearEv.exit

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE5clearEv.exit: ; preds = %bb.a, %_ZSt8_DestroyIPSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EES7_EvT_S9_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35)
  call void @llvm.lifetime.start.p0(ptr nonnull %36)
  store i64 7, ptr %35, align 8, !noalias !1350
  %i.k = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr @.str, ptr %i.k, align 8, !noalias !1350
  store i64 7, ptr %36, align 8, !noalias !1350
  %i.l = getelementptr inbounds nuw i8, ptr %36, i64 8
  store ptr @.str, ptr %i.l, align 8, !noalias !1350
  %i.m = tail call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 7, ptr nonnull @.str) #27, !noalias !1350 ; 2 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE5clearEv.exit
  %i.n = tail call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.m, i64 7, ptr nonnull @.str) #27, !noalias !1350 ; 2 uses
  %.not9.i = icmp eq ptr %i.n, null
  br i1 %.not9.i, label %bb.c, label %.critedge.i

.critedge.i:                                      ; preds = %bb.b
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1353, !noalias !1354, !nonnull !165, !noundef !165 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1356, !noalias !1354
  %i.r = tail call noundef ptr %i.q(ptr noundef nonnull %i.o) #27, !noalias !1354, !inline_history !1155
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host16WasiNNModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.c:                                             ; preds = %bb.b, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE5clearEv.exit
  %i.s = tail call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1350
  call void @llvm.lifetime.start.p0(ptr nonnull %34), !noalias !1350
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false), !noalias !1350
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.s, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %34, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %35, ptr noundef nonnull align 8 dereferenceable(16) %36), !noalias !1350
  call void @llvm.lifetime.end.p0(ptr nonnull %34), !noalias !1350
  %i.t = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1357 ; 3 uses
  invoke void @_ZN8WasmEdge4Host16WasiNNModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.t)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host16WasiNNModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.d, !noalias !1357

common.resume:                                    ; preds = %bb.ch, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i217, %bb.ci, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i220, %bb.cj, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i223, %bb.ck, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i226, %bb.cl, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i229, %bb.cm, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i232, %bb.cn, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i235, %bb.co, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i238, %bb.cp, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i241, %bb.cq, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i244, %bb.cr, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i247, %bb.cs, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i250, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i292, %.loopexit.split-lp647.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cc, %bb.bv, %bb.bo, %bb.bh, %bb.ba, %bb.at, %bb.am, %bb.af, %bb.y, %bb.r, %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.bs, %bb.k ], [ %i.dp, %bb.r ], [ %i.fm, %bb.y ], [ %i.hj, %bb.af ], [ %i.jg, %bb.am ], [ %i.ld, %bb.at ], [ %i.na, %bb.ba ], [ %i.ox, %bb.bh ], [ %i.qu, %bb.bo ], [ %i.sr, %bb.bv ], [ %i.uo, %bb.cc ], [ %i.xz, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i250 ], [ %i.xv, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i247 ], [ %i.xr, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i244 ], [ %i.xn, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i241 ], [ %i.xj, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i238 ], [ %i.xf, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i235 ], [ %i.xb, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i232 ], [ %i.wx, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i229 ], [ %i.wt, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i226 ], [ %i.wp, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i223 ], [ %i.wl, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i220 ], [ %i.wh, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i217 ], [ %i.wh, %bb.ch ], [ %i.wl, %bb.ci ], [ %i.wp, %bb.cj ], [ %i.wt, %bb.ck ], [ %i.wx, %bb.cl ], [ %i.xb, %bb.cm ], [ %i.xf, %bb.cn ], [ %i.xj, %bb.co ], [ %i.xn, %bb.cp ], [ %i.xr, %bb.cq ], [ %i.xv, %bb.cr ], [ %i.xz, %bb.cs ], [ %lpad.loopexit.split-lp1156, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i292 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp1156, %.loopexit.split-lp647.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 952) #30, !noalias !1357
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host16WasiNNModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i, %bb.c
  %storemerge.i = phi ptr [ %i.r, %.critedge.i ], [ %i.t, %bb.c ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %35)
  call void @llvm.lifetime.end.p0(ptr nonnull %36)
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !309  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1912 ; 26 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i104 = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i104, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host16WasiNNModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.y = ptrtoint ptr %storemerge.i to i64
  store i64 %i.y, ptr %i.v, align 8, !tbaa !189
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.z, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit

bb.f:                                             ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host16WasiNNModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.ab = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775800
  br i1 %i.ae, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc300 unwind label %bb.ch

.noexc300:                                        ; preds = %bb.g
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.af = ashr exact i64 %i.ad, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ag, i64 1152921504606846975)
  %i.aj = select i1 %i.ah, i64 1152921504606846975, i64 %i.ai ; 3 uses
  %.not.i.i297 = icmp ne i64 %i.aj, 0
  call void @llvm.assume(i1 %.not.i.i297)
  %i.ak = shl nuw nsw i64 %i.aj, 3
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #28
          to label %.noexc301 unwind label %bb.ch ; 10 uses

.noexc301:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ad
  %i.an = ptrtoint ptr %storemerge.i to i64
  store i64 %i.an, ptr %i.am, align 8, !tbaa !189
  %.not10.i.i.i.i = icmp eq ptr %i.aa, %i.v
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i298.preheader

.lr.ph.i.i.i.i298.preheader:                      ; preds = %.noexc301
  %i.ao = add i64 %i.ab, -8
  %i.ap = sub i64 %i.ao, %i.ac                    ; 3 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = add nuw nsw i64 %i.aq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ap, 136
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i298.preheader1187, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i298.preheader
  %i.as = and i64 %i.ap, -8
  %i.at = add i64 %i.as, 8                        ; 2 uses
  %i.au = getelementptr i8, ptr %i.al, i64 %i.at
  %i.av = getelementptr i8, ptr %i.aa, i64 %i.at
  %bound0 = icmp ult ptr %i.al, %i.av
  %bound1 = icmp ult ptr %i.aa, %i.au
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i298.preheader1187, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ar, 4611686018427387900     ; 3 uses
  %i.aw = shl i64 %n.vec, 3                       ; 2 uses
  %i.ax = getelementptr i8, ptr %i.al, i64 %i.aw  ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aa, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.az = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.al, i64 %i.az ; 2 uses
  %next.gep843 = getelementptr i8, ptr %i.aa, i64 %i.az ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.ba = getelementptr i8, ptr %next.gep843, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep843, align 8, !tbaa !189, !alias.scope !1360
  %wide.load844 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !189, !alias.scope !1360
  %i.bb = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !189, !alias.scope !1361, !noalias !1362
  store <2 x i64> %wide.load844, ptr %i.bb, align 8, !tbaa !189, !alias.scope !1361, !noalias !1362
  %39 = getelementptr i8, ptr %next.gep843, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep843, align 8, !tbaa !189, !alias.scope !1360
  store <2 x ptr> splat (ptr null), ptr %39, align 8, !tbaa !189, !alias.scope !1360
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ar, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i298.preheader1187

.lr.ph.i.i.i.i298.preheader1187:                  ; preds = %vector.memcheck, %.lr.ph.i.i.i.i298.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph.i.i.i.i298.preheader ], [ %i.ax, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.aa, %vector.memcheck ], [ %i.aa, %.lr.ph.i.i.i.i298.preheader ], [ %i.ay, %middle.block ]
  br label %.lr.ph.i.i.i.i298

.lr.ph.i.i.i.i298:                                ; preds = %.lr.ph.i.i.i.i298.preheader1187, %.lr.ph.i.i.i.i298
  %.012.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i298 ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i298.preheader1187 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i298 ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i298.preheader1187 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1358)
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  %i.bd = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !189, !alias.scope !1359
  store i64 %i.bd, ptr %.012.i.i.i.i, align 8, !tbaa !189, !alias.scope !1358
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !189, !alias.scope !1359
  %i.be = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i299 = icmp eq ptr %i.be, %i.v
  br i1 %.not.i.i.i.i299, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i298, !llvm.loop !1165

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i298, %middle.block, %.noexc301
  %.0.lcssa.i.i.i.i = phi ptr [ %i.al, %.noexc301 ], [ %i.ax, %middle.block ], [ %i.bf, %.lr.ph.i.i.i.i298 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.aa, null
  br i1 %.not.i23.i, label %.noexc, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #30
  br label %.noexc

.noexc:                                           ; preds = %bb.h, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  store ptr %i.al, ptr %i.b, align 8, !tbaa !308
  store ptr %i.bg, ptr %i.d, align 8, !tbaa !309
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.bh, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.e, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %32)
  call void @llvm.lifetime.start.p0(ptr nonnull %33)
  store i64 11, ptr %32, align 8, !noalias !1363
  %i.bi = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr @.str.1, ptr %i.bi, align 8, !noalias !1363
  store i64 18, ptr %33, align 8, !noalias !1363
  %i.bj = getelementptr inbounds nuw i8, ptr %33, i64 8
  store ptr @.str.2, ptr %i.bj, align 8, !noalias !1363
  %i.bk = call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 11, ptr nonnull @.str.1) #27, !noalias !1363 ; 2 uses
  %.not.i106 = icmp eq ptr %i.bk, null
  br i1 %.not.i106, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit
  %i.bl = call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.bk, i64 18, ptr nonnull @.str.2) #27, !noalias !1363 ; 2 uses
  %.not9.i107 = icmp eq ptr %i.bl, null
  br i1 %.not9.i107, label %bb.j, label %.critedge.i108

.critedge.i108:                                   ; preds = %bb.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1353, !noalias !1364, !nonnull !165, !noundef !165 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1356, !noalias !1364
  %i.bp = call noundef ptr %i.bo(ptr noundef nonnull %i.bm) #27, !noalias !1364, !inline_history !1170
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host26WasiCryptoCommonModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.j:                                             ; preds = %bb.i, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit
  %i.bq = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1363
  call void @llvm.lifetime.start.p0(ptr nonnull %31), !noalias !1363
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %31, i8 0, i64 24, i1 false), !noalias !1363
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.bq, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %31, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %33), !noalias !1363
  call void @llvm.lifetime.end.p0(ptr nonnull %31), !noalias !1363
  %i.br = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1365 ; 3 uses
  invoke void @_ZN8WasmEdge4Host26WasiCryptoCommonModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.br)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host26WasiCryptoCommonModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.k, !noalias !1365

bb.k:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 952) #30, !noalias !1365
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host26WasiCryptoCommonModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i108, %bb.j
  %storemerge.i109 = phi ptr [ %i.bp, %.critedge.i108 ], [ %i.br, %bb.j ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %32)
  call void @llvm.lifetime.end.p0(ptr nonnull %33)
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i110 = icmp eq ptr %i.bt, %i.bu
  br i1 %.not.i.i110, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host26WasiCryptoCommonModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.bv = ptrtoint ptr %storemerge.i109 to i64
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !189
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit115

bb.m:                                             ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host26WasiCryptoCommonModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.by = ptrtoint ptr %i.bt to i64               ; 2 uses
  %i.bz = ptrtoint ptr %i.bx to i64               ; 2 uses
  %i.ca = sub i64 %i.by, %i.bz                    ; 4 uses
  %i.cb = icmp eq i64 %i.ca, 9223372036854775800
  br i1 %i.cb, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i302

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc320 unwind label %bb.ci

.noexc320:                                        ; preds = %bb.n
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i302: ; preds = %bb.m
  %i.cc = ashr exact i64 %i.ca, 3                 ; 3 uses
  %.sroa.speculated.i.i303 = call i64 @llvm.umax.i64(i64 %i.cc, i64 1)
  %i.cd = add nsw i64 %.sroa.speculated.i.i303, %i.cc ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %i.cc
  %i.cf = call i64 @llvm.umin.i64(i64 %i.cd, i64 1152921504606846975)
  %i.cg = select i1 %i.ce, i64 1152921504606846975, i64 %i.cf ; 3 uses
  %.not.i.i304 = icmp ne i64 %i.cg, 0
  call void @llvm.assume(i1 %.not.i.i304)
  %i.ch = shl nuw nsw i64 %i.cg, 3
  %i.ci = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ch) #28
          to label %.noexc321 unwind label %bb.ci ; 10 uses

.noexc321:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i302
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.ca
  %i.ck = ptrtoint ptr %storemerge.i109 to i64
  store i64 %i.ck, ptr %i.cj, align 8, !tbaa !189
  %.not10.i.i.i.i305 = icmp eq ptr %i.bx, %i.bt
  br i1 %.not10.i.i.i.i305, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i317, label %.lr.ph.i.i.i.i306.preheader

.lr.ph.i.i.i.i306.preheader:                      ; preds = %.noexc321
  %i.cl = add i64 %i.by, -8
  %i.cm = sub i64 %i.cl, %i.bz                    ; 3 uses
  %i.cn = lshr i64 %i.cm, 3
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %min.iters.check852 = icmp ult i64 %i.cm, 136
  br i1 %min.iters.check852, label %.lr.ph.i.i.i.i306.preheader1185, label %vector.memcheck853

vector.memcheck853:                               ; preds = %.lr.ph.i.i.i.i306.preheader
  %i.cp = and i64 %i.cm, -8
  %i.cq = add i64 %i.cp, 8                        ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ci, i64 %i.cq
  %i.cs = getelementptr i8, ptr %i.bx, i64 %i.cq
  %bound0854 = icmp ult ptr %i.ci, %i.cs
  %bound1855 = icmp ult ptr %i.bx, %i.cr
  %found.conflict856 = and i1 %bound0854, %bound1855
  br i1 %found.conflict856, label %.lr.ph.i.i.i.i306.preheader1185, label %vector.ph857

vector.ph857:                                     ; preds = %vector.memcheck853
  %n.vec858 = and i64 %i.co, 4611686018427387900  ; 3 uses
  %i.ct = shl i64 %n.vec858, 3                    ; 2 uses
  %i.cu = getelementptr i8, ptr %i.ci, i64 %i.ct  ; 2 uses
  %i.cv = getelementptr i8, ptr %i.bx, i64 %i.ct
  br label %vector.body859

vector.body859:                                   ; preds = %vector.body859, %vector.ph857
  %index860 = phi i64 [ 0, %vector.ph857 ], [ %index.next865, %vector.body859 ] ; 2 uses
  %i.cw = shl i64 %index860, 3                    ; 2 uses
  %next.gep861 = getelementptr i8, ptr %i.ci, i64 %i.cw ; 2 uses
  %next.gep862 = getelementptr i8, ptr %i.bx, i64 %i.cw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.cx = getelementptr i8, ptr %next.gep862, i64 16
  %wide.load863 = load <2 x i64>, ptr %next.gep862, align 8, !tbaa !189, !alias.scope !1368
  %wide.load864 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !189, !alias.scope !1368
  %i.cy = getelementptr i8, ptr %next.gep861, i64 16
  store <2 x i64> %wide.load863, ptr %next.gep861, align 8, !tbaa !189, !alias.scope !1369, !noalias !1370
  store <2 x i64> %wide.load864, ptr %i.cy, align 8, !tbaa !189, !alias.scope !1369, !noalias !1370
  %40 = getelementptr i8, ptr %next.gep862, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep862, align 8, !tbaa !189, !alias.scope !1368
  store <2 x ptr> splat (ptr null), ptr %40, align 8, !tbaa !189, !alias.scope !1368
  %index.next865 = add nuw i64 %index860, 4       ; 2 uses
  %i.cz = icmp eq i64 %index.next865, %n.vec858
  br i1 %i.cz, label %middle.block866, label %vector.body859, !llvm.loop !1179

middle.block866:                                  ; preds = %vector.body859
  %cmp.n867 = icmp eq i64 %i.co, %n.vec858
  br i1 %cmp.n867, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i317, label %.lr.ph.i.i.i.i306.preheader1185

.lr.ph.i.i.i.i306.preheader1185:                  ; preds = %vector.memcheck853, %.lr.ph.i.i.i.i306.preheader, %middle.block866
  %.012.i.i.i.i307.ph = phi ptr [ %i.ci, %vector.memcheck853 ], [ %i.ci, %.lr.ph.i.i.i.i306.preheader ], [ %i.cu, %middle.block866 ]
  %.0911.i.i.i.i308.ph = phi ptr [ %i.bx, %vector.memcheck853 ], [ %i.bx, %.lr.ph.i.i.i.i306.preheader ], [ %i.cv, %middle.block866 ]
  br label %.lr.ph.i.i.i.i306

.lr.ph.i.i.i.i306:                                ; preds = %.lr.ph.i.i.i.i306.preheader1185, %.lr.ph.i.i.i.i306
  %.012.i.i.i.i307 = phi ptr [ %i.dc, %.lr.ph.i.i.i.i306 ], [ %.012.i.i.i.i307.ph, %.lr.ph.i.i.i.i306.preheader1185 ] ; 2 uses
  %.0911.i.i.i.i308 = phi ptr [ %i.db, %.lr.ph.i.i.i.i306 ], [ %.0911.i.i.i.i308.ph, %.lr.ph.i.i.i.i306.preheader1185 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  call void @llvm.experimental.noalias.scope.decl(metadata !1367)
  %i.da = load i64, ptr %.0911.i.i.i.i308, align 8, !tbaa !189, !alias.scope !1367
  store i64 %i.da, ptr %.012.i.i.i.i307, align 8, !tbaa !189, !alias.scope !1366
  store ptr null, ptr %.0911.i.i.i.i308, align 8, !tbaa !189, !alias.scope !1367
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i308, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i307, i64 8 ; 2 uses
  %.not.i.i.i.i309 = icmp eq ptr %i.db, %i.bt
  br i1 %.not.i.i.i.i309, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i317, label %.lr.ph.i.i.i.i306, !llvm.loop !1180

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i317: ; preds = %.lr.ph.i.i.i.i306, %middle.block866, %.noexc321
  %.0.lcssa.i.i.i.i311 = phi ptr [ %i.ci, %.noexc321 ], [ %i.cu, %middle.block866 ], [ %i.dc, %.lr.ph.i.i.i.i306 ]
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i311, i64 8
  %.not.i23.i319 = icmp eq ptr %i.bx, null
  br i1 %.not.i23.i319, label %.noexc111, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i317
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.ca) #30
  br label %.noexc111

.noexc111:                                        ; preds = %bb.o, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i317
  store ptr %i.ci, ptr %i.b, align 8, !tbaa !308
  store ptr %i.dd, ptr %i.d, align 8, !tbaa !309
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cg
  store ptr %i.de, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit115

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit115: ; preds = %bb.l, %.noexc111
  call void @llvm.lifetime.start.p0(ptr nonnull %29)
  call void @llvm.lifetime.start.p0(ptr nonnull %30)
  store i64 11, ptr %29, align 8, !noalias !1371
  %i.df = getelementptr inbounds nuw i8, ptr %29, i64 8
  store ptr @.str.1, ptr %i.df, align 8, !noalias !1371
  store i64 29, ptr %30, align 8, !noalias !1371
  %i.dg = getelementptr inbounds nuw i8, ptr %30, i64 8
  store ptr @.str.3, ptr %i.dg, align 8, !noalias !1371
  %i.dh = call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 11, ptr nonnull @.str.1) #27, !noalias !1371 ; 2 uses
  %.not.i116 = icmp eq ptr %i.dh, null
  br i1 %.not.i116, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit115
  %i.di = call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.dh, i64 29, ptr nonnull @.str.3) #27, !noalias !1371 ; 2 uses
  %.not9.i117 = icmp eq ptr %i.di, null
  br i1 %.not9.i117, label %bb.q, label %.critedge.i118

.critedge.i118:                                   ; preds = %bb.p
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !1353, !noalias !1372, !nonnull !165, !noundef !165 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !1356, !noalias !1372
  %i.dm = call noundef ptr %i.dl(ptr noundef nonnull %i.dj) #27, !noalias !1372, !inline_history !1185
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host36WasiCryptoAsymmetricCommonModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.q:                                             ; preds = %bb.p, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit115
  %i.dn = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1371
  call void @llvm.lifetime.start.p0(ptr nonnull %28), !noalias !1371
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false), !noalias !1371
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.dn, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %28, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %30), !noalias !1371
  call void @llvm.lifetime.end.p0(ptr nonnull %28), !noalias !1371
  %i.do = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1373 ; 3 uses
  invoke void @_ZN8WasmEdge4Host36WasiCryptoAsymmetricCommonModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.do)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host36WasiCryptoAsymmetricCommonModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.r, !noalias !1373

bb.r:                                             ; preds = %bb.q
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.do, i64 noundef 952) #30, !noalias !1373
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host36WasiCryptoAsymmetricCommonModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i118, %bb.q
  %storemerge.i119 = phi ptr [ %i.dm, %.critedge.i118 ], [ %i.do, %bb.q ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29)
  call void @llvm.lifetime.end.p0(ptr nonnull %30)
  %i.dq = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.dr = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i120 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not.i.i120, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host36WasiCryptoAsymmetricCommonModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.ds = ptrtoint ptr %storemerge.i119 to i64
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !189
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %i.dt, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit125

bb.t:                                             ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host36WasiCryptoAsymmetricCommonModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.dv = ptrtoint ptr %i.dq to i64               ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64               ; 2 uses
  %i.dx = sub i64 %i.dv, %i.dw                    ; 4 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775800
  br i1 %i.dy, label %bb.u, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i323

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc341 unwind label %bb.cj

.noexc341:                                        ; preds = %bb.u
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i323: ; preds = %bb.t
  %i.dz = ashr exact i64 %i.dx, 3                 ; 3 uses
  %.sroa.speculated.i.i324 = call i64 @llvm.umax.i64(i64 %i.dz, i64 1)
  %i.ea = add nsw i64 %.sroa.speculated.i.i324, %i.dz ; 2 uses
  %i.eb = icmp ult i64 %i.ea, %i.dz
  %i.ec = call i64 @llvm.umin.i64(i64 %i.ea, i64 1152921504606846975)
  %i.ed = select i1 %i.eb, i64 1152921504606846975, i64 %i.ec ; 3 uses
  %.not.i.i325 = icmp ne i64 %i.ed, 0
  call void @llvm.assume(i1 %.not.i.i325)
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #28
          to label %.noexc342 unwind label %bb.cj ; 10 uses

.noexc342:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i323
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.dx
  %i.eh = ptrtoint ptr %storemerge.i119 to i64
  store i64 %i.eh, ptr %i.eg, align 8, !tbaa !189
  %.not10.i.i.i.i326 = icmp eq ptr %i.du, %i.dq
  br i1 %.not10.i.i.i.i326, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i338, label %.lr.ph.i.i.i.i327.preheader

.lr.ph.i.i.i.i327.preheader:                      ; preds = %.noexc342
  %i.ei = add i64 %i.dv, -8
  %i.ej = sub i64 %i.ei, %i.dw                    ; 3 uses
  %i.ek = lshr i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %min.iters.check876 = icmp ult i64 %i.ej, 136
  br i1 %min.iters.check876, label %.lr.ph.i.i.i.i327.preheader1183, label %vector.memcheck877

vector.memcheck877:                               ; preds = %.lr.ph.i.i.i.i327.preheader
  %i.em = and i64 %i.ej, -8
  %i.en = add i64 %i.em, 8                        ; 2 uses
  %i.eo = getelementptr i8, ptr %i.ef, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.du, i64 %i.en
  %bound0878 = icmp ult ptr %i.ef, %i.ep
  %bound1879 = icmp ult ptr %i.du, %i.eo
  %found.conflict880 = and i1 %bound0878, %bound1879
  br i1 %found.conflict880, label %.lr.ph.i.i.i.i327.preheader1183, label %vector.ph881

vector.ph881:                                     ; preds = %vector.memcheck877
  %n.vec882 = and i64 %i.el, 4611686018427387900  ; 3 uses
  %i.eq = shl i64 %n.vec882, 3                    ; 2 uses
  %i.er = getelementptr i8, ptr %i.ef, i64 %i.eq  ; 2 uses
  %i.es = getelementptr i8, ptr %i.du, i64 %i.eq
  br label %vector.body883

vector.body883:                                   ; preds = %vector.body883, %vector.ph881
  %index884 = phi i64 [ 0, %vector.ph881 ], [ %index.next889, %vector.body883 ] ; 2 uses
  %i.et = shl i64 %index884, 3                    ; 2 uses
  %next.gep885 = getelementptr i8, ptr %i.ef, i64 %i.et ; 2 uses
  %next.gep886 = getelementptr i8, ptr %i.du, i64 %i.et ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  %i.eu = getelementptr i8, ptr %next.gep886, i64 16
  %wide.load887 = load <2 x i64>, ptr %next.gep886, align 8, !tbaa !189, !alias.scope !1376
  %wide.load888 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !189, !alias.scope !1376
  %i.ev = getelementptr i8, ptr %next.gep885, i64 16
  store <2 x i64> %wide.load887, ptr %next.gep885, align 8, !tbaa !189, !alias.scope !1377, !noalias !1378
  store <2 x i64> %wide.load888, ptr %i.ev, align 8, !tbaa !189, !alias.scope !1377, !noalias !1378
  %41 = getelementptr i8, ptr %next.gep886, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep886, align 8, !tbaa !189, !alias.scope !1376
  store <2 x ptr> splat (ptr null), ptr %41, align 8, !tbaa !189, !alias.scope !1376
  %index.next889 = add nuw i64 %index884, 4       ; 2 uses
  %i.ew = icmp eq i64 %index.next889, %n.vec882
  br i1 %i.ew, label %middle.block890, label %vector.body883, !llvm.loop !1194

middle.block890:                                  ; preds = %vector.body883
  %cmp.n891 = icmp eq i64 %i.el, %n.vec882
  br i1 %cmp.n891, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i338, label %.lr.ph.i.i.i.i327.preheader1183

.lr.ph.i.i.i.i327.preheader1183:                  ; preds = %vector.memcheck877, %.lr.ph.i.i.i.i327.preheader, %middle.block890
  %.012.i.i.i.i328.ph = phi ptr [ %i.ef, %vector.memcheck877 ], [ %i.ef, %.lr.ph.i.i.i.i327.preheader ], [ %i.er, %middle.block890 ]
  %.0911.i.i.i.i329.ph = phi ptr [ %i.du, %vector.memcheck877 ], [ %i.du, %.lr.ph.i.i.i.i327.preheader ], [ %i.es, %middle.block890 ]
  br label %.lr.ph.i.i.i.i327

.lr.ph.i.i.i.i327:                                ; preds = %.lr.ph.i.i.i.i327.preheader1183, %.lr.ph.i.i.i.i327
  %.012.i.i.i.i328 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i327 ], [ %.012.i.i.i.i328.ph, %.lr.ph.i.i.i.i327.preheader1183 ] ; 2 uses
  %.0911.i.i.i.i329 = phi ptr [ %i.ey, %.lr.ph.i.i.i.i327 ], [ %.0911.i.i.i.i329.ph, %.lr.ph.i.i.i.i327.preheader1183 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1374)
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  %i.ex = load i64, ptr %.0911.i.i.i.i329, align 8, !tbaa !189, !alias.scope !1375
  store i64 %i.ex, ptr %.012.i.i.i.i328, align 8, !tbaa !189, !alias.scope !1374
  store ptr null, ptr %.0911.i.i.i.i329, align 8, !tbaa !189, !alias.scope !1375
  %i.ey = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i329, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i328, i64 8 ; 2 uses
  %.not.i.i.i.i330 = icmp eq ptr %i.ey, %i.dq
  br i1 %.not.i.i.i.i330, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i338, label %.lr.ph.i.i.i.i327, !llvm.loop !1195

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i338: ; preds = %.lr.ph.i.i.i.i327, %middle.block890, %.noexc342
  %.0.lcssa.i.i.i.i332 = phi ptr [ %i.ef, %.noexc342 ], [ %i.er, %middle.block890 ], [ %i.ez, %.lr.ph.i.i.i.i327 ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i332, i64 8
  %.not.i23.i340 = icmp eq ptr %i.du, null
  br i1 %.not.i23.i340, label %.noexc121, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i338
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef %i.dx) #30
  br label %.noexc121

.noexc121:                                        ; preds = %bb.v, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i338
  store ptr %i.ef, ptr %i.b, align 8, !tbaa !308
  store ptr %i.fa, ptr %i.d, align 8, !tbaa !309
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.ed
  store ptr %i.fb, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit125

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit125: ; preds = %bb.s, %.noexc121
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @llvm.lifetime.start.p0(ptr nonnull %27)
  store i64 11, ptr %26, align 8, !noalias !1379
  %i.fc = getelementptr inbounds nuw i8, ptr %26, i64 8
  store ptr @.str.1, ptr %i.fc, align 8, !noalias !1379
  store i64 14, ptr %27, align 8, !noalias !1379
  %i.fd = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr @.str.4, ptr %i.fd, align 8, !noalias !1379
  %i.fe = call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 11, ptr nonnull @.str.1) #27, !noalias !1379 ; 2 uses
  %.not.i126 = icmp eq ptr %i.fe, null
  br i1 %.not.i126, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit125
  %i.ff = call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.fe, i64 14, ptr nonnull @.str.4) #27, !noalias !1379 ; 2 uses
  %.not9.i127 = icmp eq ptr %i.ff, null
  br i1 %.not9.i127, label %bb.x, label %.critedge.i128

.critedge.i128:                                   ; preds = %bb.w
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !1353, !noalias !1380, !nonnull !165, !noundef !165 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !1356, !noalias !1380
  %i.fj = call noundef ptr %i.fi(ptr noundef nonnull %i.fg) #27, !noalias !1380, !inline_history !1200
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host22WasiCryptoKxModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.x:                                             ; preds = %bb.w, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit125
  %i.fk = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1379
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !1379
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false), !noalias !1379
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.fk, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %25, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull align 8 dereferenceable(16) %27), !noalias !1379
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !1379
  %i.fl = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1381 ; 3 uses
  invoke void @_ZN8WasmEdge4Host22WasiCryptoKxModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.fl)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host22WasiCryptoKxModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.y, !noalias !1381

bb.y:                                             ; preds = %bb.x
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef 952) #30, !noalias !1381
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host22WasiCryptoKxModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i128, %bb.x
  %storemerge.i129 = phi ptr [ %i.fj, %.critedge.i128 ], [ %i.fl, %bb.x ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  call void @llvm.lifetime.end.p0(ptr nonnull %27)
  %i.fn = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.fo = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i130 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not.i.i130, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host22WasiCryptoKxModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.fp = ptrtoint ptr %storemerge.i129 to i64
  store i64 %i.fp, ptr %i.fn, align 8, !tbaa !189
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.fq, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit135

bb.aa:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host22WasiCryptoKxModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.fr = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.fs = ptrtoint ptr %i.fn to i64               ; 2 uses
  %i.ft = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fu = sub i64 %i.fs, %i.ft                    ; 4 uses
  %i.fv = icmp eq i64 %i.fu, 9223372036854775800
  br i1 %i.fv, label %bb.ab, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i344

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc362 unwind label %bb.ck

.noexc362:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i344: ; preds = %bb.aa
  %i.fw = ashr exact i64 %i.fu, 3                 ; 3 uses
  %.sroa.speculated.i.i345 = call i64 @llvm.umax.i64(i64 %i.fw, i64 1)
  %i.fx = add nsw i64 %.sroa.speculated.i.i345, %i.fw ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %i.fw
  %i.fz = call i64 @llvm.umin.i64(i64 %i.fx, i64 1152921504606846975)
  %i.ga = select i1 %i.fy, i64 1152921504606846975, i64 %i.fz ; 3 uses
  %.not.i.i346 = icmp ne i64 %i.ga, 0
  call void @llvm.assume(i1 %.not.i.i346)
  %i.gb = shl nuw nsw i64 %i.ga, 3
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gb) #28
          to label %.noexc363 unwind label %bb.ck ; 10 uses

.noexc363:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i344
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.fu
  %i.ge = ptrtoint ptr %storemerge.i129 to i64
  store i64 %i.ge, ptr %i.gd, align 8, !tbaa !189
  %.not10.i.i.i.i347 = icmp eq ptr %i.fr, %i.fn
  br i1 %.not10.i.i.i.i347, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i359, label %.lr.ph.i.i.i.i348.preheader

.lr.ph.i.i.i.i348.preheader:                      ; preds = %.noexc363
  %i.gf = add i64 %i.fs, -8
  %i.gg = sub i64 %i.gf, %i.ft                    ; 3 uses
  %i.gh = lshr i64 %i.gg, 3
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 2 uses
  %min.iters.check900 = icmp ult i64 %i.gg, 136
  br i1 %min.iters.check900, label %.lr.ph.i.i.i.i348.preheader1181, label %vector.memcheck901

vector.memcheck901:                               ; preds = %.lr.ph.i.i.i.i348.preheader
  %i.gj = and i64 %i.gg, -8
  %i.gk = add i64 %i.gj, 8                        ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gc, i64 %i.gk
  %i.gm = getelementptr i8, ptr %i.fr, i64 %i.gk
  %bound0902 = icmp ult ptr %i.gc, %i.gm
  %bound1903 = icmp ult ptr %i.fr, %i.gl
  %found.conflict904 = and i1 %bound0902, %bound1903
  br i1 %found.conflict904, label %.lr.ph.i.i.i.i348.preheader1181, label %vector.ph905

vector.ph905:                                     ; preds = %vector.memcheck901
  %n.vec906 = and i64 %i.gi, 4611686018427387900  ; 3 uses
  %i.gn = shl i64 %n.vec906, 3                    ; 2 uses
  %i.go = getelementptr i8, ptr %i.gc, i64 %i.gn  ; 2 uses
  %i.gp = getelementptr i8, ptr %i.fr, i64 %i.gn
  br label %vector.body907

vector.body907:                                   ; preds = %vector.body907, %vector.ph905
  %index908 = phi i64 [ 0, %vector.ph905 ], [ %index.next913, %vector.body907 ] ; 2 uses
  %i.gq = shl i64 %index908, 3                    ; 2 uses
  %next.gep909 = getelementptr i8, ptr %i.gc, i64 %i.gq ; 2 uses
  %next.gep910 = getelementptr i8, ptr %i.fr, i64 %i.gq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.gr = getelementptr i8, ptr %next.gep910, i64 16
  %wide.load911 = load <2 x i64>, ptr %next.gep910, align 8, !tbaa !189, !alias.scope !1384
  %wide.load912 = load <2 x i64>, ptr %i.gr, align 8, !tbaa !189, !alias.scope !1384
  %i.gs = getelementptr i8, ptr %next.gep909, i64 16
  store <2 x i64> %wide.load911, ptr %next.gep909, align 8, !tbaa !189, !alias.scope !1385, !noalias !1386
  store <2 x i64> %wide.load912, ptr %i.gs, align 8, !tbaa !189, !alias.scope !1385, !noalias !1386
  %42 = getelementptr i8, ptr %next.gep910, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep910, align 8, !tbaa !189, !alias.scope !1384
  store <2 x ptr> splat (ptr null), ptr %42, align 8, !tbaa !189, !alias.scope !1384
  %index.next913 = add nuw i64 %index908, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next913, %n.vec906
  br i1 %i.gt, label %middle.block914, label %vector.body907, !llvm.loop !1209

middle.block914:                                  ; preds = %vector.body907
  %cmp.n915 = icmp eq i64 %i.gi, %n.vec906
  br i1 %cmp.n915, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i359, label %.lr.ph.i.i.i.i348.preheader1181

.lr.ph.i.i.i.i348.preheader1181:                  ; preds = %vector.memcheck901, %.lr.ph.i.i.i.i348.preheader, %middle.block914
  %.012.i.i.i.i349.ph = phi ptr [ %i.gc, %vector.memcheck901 ], [ %i.gc, %.lr.ph.i.i.i.i348.preheader ], [ %i.go, %middle.block914 ]
  %.0911.i.i.i.i350.ph = phi ptr [ %i.fr, %vector.memcheck901 ], [ %i.fr, %.lr.ph.i.i.i.i348.preheader ], [ %i.gp, %middle.block914 ]
  br label %.lr.ph.i.i.i.i348

.lr.ph.i.i.i.i348:                                ; preds = %.lr.ph.i.i.i.i348.preheader1181, %.lr.ph.i.i.i.i348
  %.012.i.i.i.i349 = phi ptr [ %i.gw, %.lr.ph.i.i.i.i348 ], [ %.012.i.i.i.i349.ph, %.lr.ph.i.i.i.i348.preheader1181 ] ; 2 uses
  %.0911.i.i.i.i350 = phi ptr [ %i.gv, %.lr.ph.i.i.i.i348 ], [ %.0911.i.i.i.i350.ph, %.lr.ph.i.i.i.i348.preheader1181 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1382)
  call void @llvm.experimental.noalias.scope.decl(metadata !1383)
  %i.gu = load i64, ptr %.0911.i.i.i.i350, align 8, !tbaa !189, !alias.scope !1383
  store i64 %i.gu, ptr %.012.i.i.i.i349, align 8, !tbaa !189, !alias.scope !1382
  store ptr null, ptr %.0911.i.i.i.i350, align 8, !tbaa !189, !alias.scope !1383
  %i.gv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i350, i64 8 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i349, i64 8 ; 2 uses
  %.not.i.i.i.i351 = icmp eq ptr %i.gv, %i.fn
  br i1 %.not.i.i.i.i351, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i359, label %.lr.ph.i.i.i.i348, !llvm.loop !1210

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i359: ; preds = %.lr.ph.i.i.i.i348, %middle.block914, %.noexc363
  %.0.lcssa.i.i.i.i353 = phi ptr [ %i.gc, %.noexc363 ], [ %i.go, %middle.block914 ], [ %i.gw, %.lr.ph.i.i.i.i348 ]
  %i.gx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i353, i64 8
  %.not.i23.i361 = icmp eq ptr %i.fr, null
  br i1 %.not.i23.i361, label %.noexc131, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i359
  call void @_ZdlPvm(ptr noundef nonnull %i.fr, i64 noundef %i.fu) #30
  br label %.noexc131

.noexc131:                                        ; preds = %bb.ac, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i359
  store ptr %i.gc, ptr %i.b, align 8, !tbaa !308
  store ptr %i.gx, ptr %i.d, align 8, !tbaa !309
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %i.ga
  store ptr %i.gy, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit135

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit135: ; preds = %bb.z, %.noexc131
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %24)
  store i64 11, ptr %23, align 8, !noalias !1387
  %i.gz = getelementptr inbounds nuw i8, ptr %23, i64 8
  store ptr @.str.1, ptr %i.gz, align 8, !noalias !1387
  store i64 22, ptr %24, align 8, !noalias !1387
  %i.ha = getelementptr inbounds nuw i8, ptr %24, i64 8
  store ptr @.str.5, ptr %i.ha, align 8, !noalias !1387
  %i.hb = call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 11, ptr nonnull @.str.1) #27, !noalias !1387 ; 2 uses
  %.not.i136 = icmp eq ptr %i.hb, null
  br i1 %.not.i136, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit135
  %i.hc = call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.hb, i64 22, ptr nonnull @.str.5) #27, !noalias !1387 ; 2 uses
  %.not9.i137 = icmp eq ptr %i.hc, null
  br i1 %.not9.i137, label %bb.ae, label %.critedge.i138

.critedge.i138:                                   ; preds = %bb.ad
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !1353, !noalias !1388, !nonnull !165, !noundef !165 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 16
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !1356, !noalias !1388
  %i.hg = call noundef ptr %i.hf(ptr noundef nonnull %i.hd) #27, !noalias !1388, !inline_history !1215
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host30WasiCryptoSignaturesModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.ae:                                            ; preds = %bb.ad, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit135
  %i.hh = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1387
  call void @llvm.lifetime.start.p0(ptr nonnull %22), !noalias !1387
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false), !noalias !1387
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.hh, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %22, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(16) %24), !noalias !1387
  call void @llvm.lifetime.end.p0(ptr nonnull %22), !noalias !1387
  %i.hi = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1389 ; 3 uses
  invoke void @_ZN8WasmEdge4Host30WasiCryptoSignaturesModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.hi)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host30WasiCryptoSignaturesModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.af, !noalias !1389

bb.af:                                            ; preds = %bb.ae
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef 952) #30, !noalias !1389
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host30WasiCryptoSignaturesModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i138, %bb.ae
  %storemerge.i139 = phi ptr [ %i.hg, %.critedge.i138 ], [ %i.hi, %bb.ae ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23)
  call void @llvm.lifetime.end.p0(ptr nonnull %24)
  %i.hk = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.hl = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i140 = icmp eq ptr %i.hk, %i.hl
  br i1 %.not.i.i140, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host30WasiCryptoSignaturesModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.hm = ptrtoint ptr %storemerge.i139 to i64
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !189
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr %i.hn, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit145

bb.ah:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host30WasiCryptoSignaturesModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.ho = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.hp = ptrtoint ptr %i.hk to i64               ; 2 uses
  %i.hq = ptrtoint ptr %i.ho to i64               ; 2 uses
  %i.hr = sub i64 %i.hp, %i.hq                    ; 4 uses
  %i.hs = icmp eq i64 %i.hr, 9223372036854775800
  br i1 %i.hs, label %bb.ai, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i365

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc383 unwind label %bb.cl

.noexc383:                                        ; preds = %bb.ai
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i365: ; preds = %bb.ah
  %i.ht = ashr exact i64 %i.hr, 3                 ; 3 uses
  %.sroa.speculated.i.i366 = call i64 @llvm.umax.i64(i64 %i.ht, i64 1)
  %i.hu = add nsw i64 %.sroa.speculated.i.i366, %i.ht ; 2 uses
  %i.hv = icmp ult i64 %i.hu, %i.ht
  %i.hw = call i64 @llvm.umin.i64(i64 %i.hu, i64 1152921504606846975)
  %i.hx = select i1 %i.hv, i64 1152921504606846975, i64 %i.hw ; 3 uses
  %.not.i.i367 = icmp ne i64 %i.hx, 0
  call void @llvm.assume(i1 %.not.i.i367)
  %i.hy = shl nuw nsw i64 %i.hx, 3
  %i.hz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hy) #28
          to label %.noexc384 unwind label %bb.cl ; 10 uses

.noexc384:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i365
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.hr
  %i.ib = ptrtoint ptr %storemerge.i139 to i64
  store i64 %i.ib, ptr %i.ia, align 8, !tbaa !189
  %.not10.i.i.i.i368 = icmp eq ptr %i.ho, %i.hk
  br i1 %.not10.i.i.i.i368, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i380, label %.lr.ph.i.i.i.i369.preheader

.lr.ph.i.i.i.i369.preheader:                      ; preds = %.noexc384
  %i.ic = add i64 %i.hp, -8
  %i.id = sub i64 %i.ic, %i.hq                    ; 3 uses
  %i.ie = lshr i64 %i.id, 3
  %i.if = add nuw nsw i64 %i.ie, 1                ; 2 uses
  %min.iters.check924 = icmp ult i64 %i.id, 136
  br i1 %min.iters.check924, label %.lr.ph.i.i.i.i369.preheader1179, label %vector.memcheck925

vector.memcheck925:                               ; preds = %.lr.ph.i.i.i.i369.preheader
  %i.ig = and i64 %i.id, -8
  %i.ih = add i64 %i.ig, 8                        ; 2 uses
  %i.ii = getelementptr i8, ptr %i.hz, i64 %i.ih
  %i.ij = getelementptr i8, ptr %i.ho, i64 %i.ih
  %bound0926 = icmp ult ptr %i.hz, %i.ij
  %bound1927 = icmp ult ptr %i.ho, %i.ii
  %found.conflict928 = and i1 %bound0926, %bound1927
  br i1 %found.conflict928, label %.lr.ph.i.i.i.i369.preheader1179, label %vector.ph929

vector.ph929:                                     ; preds = %vector.memcheck925
  %n.vec930 = and i64 %i.if, 4611686018427387900  ; 3 uses
  %i.ik = shl i64 %n.vec930, 3                    ; 2 uses
  %i.il = getelementptr i8, ptr %i.hz, i64 %i.ik  ; 2 uses
  %i.im = getelementptr i8, ptr %i.ho, i64 %i.ik
  br label %vector.body931

vector.body931:                                   ; preds = %vector.body931, %vector.ph929
  %index932 = phi i64 [ 0, %vector.ph929 ], [ %index.next937, %vector.body931 ] ; 2 uses
  %i.in = shl i64 %index932, 3                    ; 2 uses
  %next.gep933 = getelementptr i8, ptr %i.hz, i64 %i.in ; 2 uses
  %next.gep934 = getelementptr i8, ptr %i.ho, i64 %i.in ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.io = getelementptr i8, ptr %next.gep934, i64 16
  %wide.load935 = load <2 x i64>, ptr %next.gep934, align 8, !tbaa !189, !alias.scope !1392
  %wide.load936 = load <2 x i64>, ptr %i.io, align 8, !tbaa !189, !alias.scope !1392
  %i.ip = getelementptr i8, ptr %next.gep933, i64 16
  store <2 x i64> %wide.load935, ptr %next.gep933, align 8, !tbaa !189, !alias.scope !1393, !noalias !1394
  store <2 x i64> %wide.load936, ptr %i.ip, align 8, !tbaa !189, !alias.scope !1393, !noalias !1394
  %43 = getelementptr i8, ptr %next.gep934, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep934, align 8, !tbaa !189, !alias.scope !1392
  store <2 x ptr> splat (ptr null), ptr %43, align 8, !tbaa !189, !alias.scope !1392
  %index.next937 = add nuw i64 %index932, 4       ; 2 uses
  %i.iq = icmp eq i64 %index.next937, %n.vec930
  br i1 %i.iq, label %middle.block938, label %vector.body931, !llvm.loop !1224

middle.block938:                                  ; preds = %vector.body931
  %cmp.n939 = icmp eq i64 %i.if, %n.vec930
  br i1 %cmp.n939, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i380, label %.lr.ph.i.i.i.i369.preheader1179

.lr.ph.i.i.i.i369.preheader1179:                  ; preds = %vector.memcheck925, %.lr.ph.i.i.i.i369.preheader, %middle.block938
  %.012.i.i.i.i370.ph = phi ptr [ %i.hz, %vector.memcheck925 ], [ %i.hz, %.lr.ph.i.i.i.i369.preheader ], [ %i.il, %middle.block938 ]
  %.0911.i.i.i.i371.ph = phi ptr [ %i.ho, %vector.memcheck925 ], [ %i.ho, %.lr.ph.i.i.i.i369.preheader ], [ %i.im, %middle.block938 ]
  br label %.lr.ph.i.i.i.i369

.lr.ph.i.i.i.i369:                                ; preds = %.lr.ph.i.i.i.i369.preheader1179, %.lr.ph.i.i.i.i369
  %.012.i.i.i.i370 = phi ptr [ %i.it, %.lr.ph.i.i.i.i369 ], [ %.012.i.i.i.i370.ph, %.lr.ph.i.i.i.i369.preheader1179 ] ; 2 uses
  %.0911.i.i.i.i371 = phi ptr [ %i.is, %.lr.ph.i.i.i.i369 ], [ %.0911.i.i.i.i371.ph, %.lr.ph.i.i.i.i369.preheader1179 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  call void @llvm.experimental.noalias.scope.decl(metadata !1391)
  %i.ir = load i64, ptr %.0911.i.i.i.i371, align 8, !tbaa !189, !alias.scope !1391
  store i64 %i.ir, ptr %.012.i.i.i.i370, align 8, !tbaa !189, !alias.scope !1390
  store ptr null, ptr %.0911.i.i.i.i371, align 8, !tbaa !189, !alias.scope !1391
  %i.is = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i371, i64 8 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i370, i64 8 ; 2 uses
  %.not.i.i.i.i372 = icmp eq ptr %i.is, %i.hk
  br i1 %.not.i.i.i.i372, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i380, label %.lr.ph.i.i.i.i369, !llvm.loop !1225

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i380: ; preds = %.lr.ph.i.i.i.i369, %middle.block938, %.noexc384
  %.0.lcssa.i.i.i.i374 = phi ptr [ %i.hz, %.noexc384 ], [ %i.il, %middle.block938 ], [ %i.it, %.lr.ph.i.i.i.i369 ]
  %i.iu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i374, i64 8
  %.not.i23.i382 = icmp eq ptr %i.ho, null
  br i1 %.not.i23.i382, label %.noexc141, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i380
  call void @_ZdlPvm(ptr noundef nonnull %i.ho, i64 noundef %i.hr) #30
  br label %.noexc141

.noexc141:                                        ; preds = %bb.aj, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i380
  store ptr %i.hz, ptr %i.b, align 8, !tbaa !308
  store ptr %i.iu, ptr %i.d, align 8, !tbaa !309
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.hz, i64 %i.hx
  store ptr %i.iv, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit145

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit145: ; preds = %bb.ag, %.noexc141
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  store i64 11, ptr %20, align 8, !noalias !1395
  %i.iw = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr @.str.1, ptr %i.iw, align 8, !noalias !1395
  store i64 21, ptr %21, align 8, !noalias !1395
  %i.ix = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr @.str.6, ptr %i.ix, align 8, !noalias !1395
  %i.iy = call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 11, ptr nonnull @.str.1) #27, !noalias !1395 ; 2 uses
  %.not.i146 = icmp eq ptr %i.iy, null
  br i1 %.not.i146, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit145
  %i.iz = call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.iy, i64 21, ptr nonnull @.str.6) #27, !noalias !1395 ; 2 uses
  %.not9.i147 = icmp eq ptr %i.iz, null
  br i1 %.not9.i147, label %bb.al, label %.critedge.i148

.critedge.i148:                                   ; preds = %bb.ak
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !1353, !noalias !1396, !nonnull !165, !noundef !165 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !1356, !noalias !1396
  %i.jd = call noundef ptr %i.jc(ptr noundef nonnull %i.ja) #27, !noalias !1396, !inline_history !1230
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host29WasiCryptoSymmetricModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.al:                                            ; preds = %bb.ak, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit145
  %i.je = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1395
  call void @llvm.lifetime.start.p0(ptr nonnull %19), !noalias !1395
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false), !noalias !1395
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.je, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %19, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21), !noalias !1395
  call void @llvm.lifetime.end.p0(ptr nonnull %19), !noalias !1395
  %i.jf = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1397 ; 3 uses
  invoke void @_ZN8WasmEdge4Host29WasiCryptoSymmetricModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.jf)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host29WasiCryptoSymmetricModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.am, !noalias !1397

bb.am:                                            ; preds = %bb.al
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef 952) #30, !noalias !1397
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host29WasiCryptoSymmetricModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i148, %bb.al
  %storemerge.i149 = phi ptr [ %i.jd, %.critedge.i148 ], [ %i.jf, %bb.al ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  %i.jh = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.ji = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i150 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not.i.i150, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host29WasiCryptoSymmetricModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.jj = ptrtoint ptr %storemerge.i149 to i64
  store i64 %i.jj, ptr %i.jh, align 8, !tbaa !189
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jh, i64 8
  store ptr %i.jk, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit155

bb.ao:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host29WasiCryptoSymmetricModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.jl = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.jm = ptrtoint ptr %i.jh to i64               ; 2 uses
  %i.jn = ptrtoint ptr %i.jl to i64               ; 2 uses
  %i.jo = sub i64 %i.jm, %i.jn                    ; 4 uses
  %i.jp = icmp eq i64 %i.jo, 9223372036854775800
  br i1 %i.jp, label %bb.ap, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i386

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc404 unwind label %bb.cm

.noexc404:                                        ; preds = %bb.ap
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i386: ; preds = %bb.ao
  %i.jq = ashr exact i64 %i.jo, 3                 ; 3 uses
  %.sroa.speculated.i.i387 = call i64 @llvm.umax.i64(i64 %i.jq, i64 1)
  %i.jr = add nsw i64 %.sroa.speculated.i.i387, %i.jq ; 2 uses
  %i.js = icmp ult i64 %i.jr, %i.jq
  %i.jt = call i64 @llvm.umin.i64(i64 %i.jr, i64 1152921504606846975)
  %i.ju = select i1 %i.js, i64 1152921504606846975, i64 %i.jt ; 3 uses
  %.not.i.i388 = icmp ne i64 %i.ju, 0
  call void @llvm.assume(i1 %.not.i.i388)
  %i.jv = shl nuw nsw i64 %i.ju, 3
  %i.jw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jv) #28
          to label %.noexc405 unwind label %bb.cm ; 10 uses

.noexc405:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i386
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 %i.jo
  %i.jy = ptrtoint ptr %storemerge.i149 to i64
  store i64 %i.jy, ptr %i.jx, align 8, !tbaa !189
  %.not10.i.i.i.i389 = icmp eq ptr %i.jl, %i.jh
  br i1 %.not10.i.i.i.i389, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i401, label %.lr.ph.i.i.i.i390.preheader

.lr.ph.i.i.i.i390.preheader:                      ; preds = %.noexc405
  %i.jz = add i64 %i.jm, -8
  %i.ka = sub i64 %i.jz, %i.jn                    ; 3 uses
  %i.kb = lshr i64 %i.ka, 3
  %i.kc = add nuw nsw i64 %i.kb, 1                ; 2 uses
  %min.iters.check948 = icmp ult i64 %i.ka, 136
  br i1 %min.iters.check948, label %.lr.ph.i.i.i.i390.preheader1177, label %vector.memcheck949

vector.memcheck949:                               ; preds = %.lr.ph.i.i.i.i390.preheader
  %i.kd = and i64 %i.ka, -8
  %i.ke = add i64 %i.kd, 8                        ; 2 uses
  %i.kf = getelementptr i8, ptr %i.jw, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.jl, i64 %i.ke
  %bound0950 = icmp ult ptr %i.jw, %i.kg
  %bound1951 = icmp ult ptr %i.jl, %i.kf
  %found.conflict952 = and i1 %bound0950, %bound1951
  br i1 %found.conflict952, label %.lr.ph.i.i.i.i390.preheader1177, label %vector.ph953

vector.ph953:                                     ; preds = %vector.memcheck949
  %n.vec954 = and i64 %i.kc, 4611686018427387900  ; 3 uses
  %i.kh = shl i64 %n.vec954, 3                    ; 2 uses
  %i.ki = getelementptr i8, ptr %i.jw, i64 %i.kh  ; 2 uses
  %i.kj = getelementptr i8, ptr %i.jl, i64 %i.kh
  br label %vector.body955

vector.body955:                                   ; preds = %vector.body955, %vector.ph953
  %index956 = phi i64 [ 0, %vector.ph953 ], [ %index.next961, %vector.body955 ] ; 2 uses
  %i.kk = shl i64 %index956, 3                    ; 2 uses
  %next.gep957 = getelementptr i8, ptr %i.jw, i64 %i.kk ; 2 uses
  %next.gep958 = getelementptr i8, ptr %i.jl, i64 %i.kk ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.kl = getelementptr i8, ptr %next.gep958, i64 16
  %wide.load959 = load <2 x i64>, ptr %next.gep958, align 8, !tbaa !189, !alias.scope !1400
  %wide.load960 = load <2 x i64>, ptr %i.kl, align 8, !tbaa !189, !alias.scope !1400
  %i.km = getelementptr i8, ptr %next.gep957, i64 16
  store <2 x i64> %wide.load959, ptr %next.gep957, align 8, !tbaa !189, !alias.scope !1401, !noalias !1402
  store <2 x i64> %wide.load960, ptr %i.km, align 8, !tbaa !189, !alias.scope !1401, !noalias !1402
  %44 = getelementptr i8, ptr %next.gep958, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep958, align 8, !tbaa !189, !alias.scope !1400
  store <2 x ptr> splat (ptr null), ptr %44, align 8, !tbaa !189, !alias.scope !1400
  %index.next961 = add nuw i64 %index956, 4       ; 2 uses
  %i.kn = icmp eq i64 %index.next961, %n.vec954
  br i1 %i.kn, label %middle.block962, label %vector.body955, !llvm.loop !1239

middle.block962:                                  ; preds = %vector.body955
  %cmp.n963 = icmp eq i64 %i.kc, %n.vec954
  br i1 %cmp.n963, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i401, label %.lr.ph.i.i.i.i390.preheader1177

.lr.ph.i.i.i.i390.preheader1177:                  ; preds = %vector.memcheck949, %.lr.ph.i.i.i.i390.preheader, %middle.block962
  %.012.i.i.i.i391.ph = phi ptr [ %i.jw, %vector.memcheck949 ], [ %i.jw, %.lr.ph.i.i.i.i390.preheader ], [ %i.ki, %middle.block962 ]
  %.0911.i.i.i.i392.ph = phi ptr [ %i.jl, %vector.memcheck949 ], [ %i.jl, %.lr.ph.i.i.i.i390.preheader ], [ %i.kj, %middle.block962 ]
  br label %.lr.ph.i.i.i.i390

.lr.ph.i.i.i.i390:                                ; preds = %.lr.ph.i.i.i.i390.preheader1177, %.lr.ph.i.i.i.i390
  %.012.i.i.i.i391 = phi ptr [ %i.kq, %.lr.ph.i.i.i.i390 ], [ %.012.i.i.i.i391.ph, %.lr.ph.i.i.i.i390.preheader1177 ] ; 2 uses
  %.0911.i.i.i.i392 = phi ptr [ %i.kp, %.lr.ph.i.i.i.i390 ], [ %.0911.i.i.i.i392.ph, %.lr.ph.i.i.i.i390.preheader1177 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1399)
  %i.ko = load i64, ptr %.0911.i.i.i.i392, align 8, !tbaa !189, !alias.scope !1399
  store i64 %i.ko, ptr %.012.i.i.i.i391, align 8, !tbaa !189, !alias.scope !1398
  store ptr null, ptr %.0911.i.i.i.i392, align 8, !tbaa !189, !alias.scope !1399
  %i.kp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i392, i64 8 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i391, i64 8 ; 2 uses
  %.not.i.i.i.i393 = icmp eq ptr %i.kp, %i.jh
  br i1 %.not.i.i.i.i393, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i401, label %.lr.ph.i.i.i.i390, !llvm.loop !1240

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i401: ; preds = %.lr.ph.i.i.i.i390, %middle.block962, %.noexc405
  %.0.lcssa.i.i.i.i395 = phi ptr [ %i.jw, %.noexc405 ], [ %i.ki, %middle.block962 ], [ %i.kq, %.lr.ph.i.i.i.i390 ]
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i395, i64 8
  %.not.i23.i403 = icmp eq ptr %i.jl, null
  br i1 %.not.i23.i403, label %.noexc151, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i401
  call void @_ZdlPvm(ptr noundef nonnull %i.jl, i64 noundef %i.jo) #30
  br label %.noexc151

.noexc151:                                        ; preds = %bb.aq, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i401
  store ptr %i.jw, ptr %i.b, align 8, !tbaa !308
  store ptr %i.kr, ptr %i.d, align 8, !tbaa !309
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.jw, i64 %i.ju
  store ptr %i.ks, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit155

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit155: ; preds = %bb.an, %.noexc151
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18)
  store i64 16, ptr %17, align 8, !noalias !1403
  %i.kt = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr @.str.7, ptr %i.kt, align 8, !noalias !1403
  store i64 16, ptr %18, align 8, !noalias !1403
  %i.ku = getelementptr inbounds nuw i8, ptr %18, i64 8
  store ptr @.str.7, ptr %i.ku, align 8, !noalias !1403
  %i.kv = call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 16, ptr nonnull @.str.7) #27, !noalias !1403 ; 2 uses
  %.not.i156 = icmp eq ptr %i.kv, null
  br i1 %.not.i156, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit155
  %i.kw = call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.kv, i64 16, ptr nonnull @.str.7) #27, !noalias !1403 ; 2 uses
  %.not9.i157 = icmp eq ptr %i.kw, null
  br i1 %.not9.i157, label %bb.as, label %.critedge.i158

.critedge.i158:                                   ; preds = %bb.ar
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !1353, !noalias !1404, !nonnull !165, !noundef !165 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !1356, !noalias !1404
  %i.la = call noundef ptr %i.kz(ptr noundef nonnull %i.kx) #27, !noalias !1404, !inline_history !1245
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host25WasmEdgeProcessModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.as:                                            ; preds = %bb.ar, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit155
  %i.lb = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1403
  call void @llvm.lifetime.start.p0(ptr nonnull %16), !noalias !1403
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !noalias !1403
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.lb, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %16, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(16) %18), !noalias !1403
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !1403
  %i.lc = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1405 ; 3 uses
  invoke void @_ZN8WasmEdge4Host25WasmEdgeProcessModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.lc)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host25WasmEdgeProcessModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.at, !noalias !1405

bb.at:                                            ; preds = %bb.as
  %i.ld = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.lc, i64 noundef 952) #30, !noalias !1405
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host25WasmEdgeProcessModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i158, %bb.as
  %storemerge.i159 = phi ptr [ %i.la, %.critedge.i158 ], [ %i.lc, %bb.as ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  %i.le = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.lf = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i160 = icmp eq ptr %i.le, %i.lf
  br i1 %.not.i.i160, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host25WasmEdgeProcessModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.lg = ptrtoint ptr %storemerge.i159 to i64
  store i64 %i.lg, ptr %i.le, align 8, !tbaa !189
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %i.lh, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit165

bb.av:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host25WasmEdgeProcessModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.li = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.lj = ptrtoint ptr %i.le to i64               ; 2 uses
  %i.lk = ptrtoint ptr %i.li to i64               ; 2 uses
  %i.ll = sub i64 %i.lj, %i.lk                    ; 4 uses
  %i.lm = icmp eq i64 %i.ll, 9223372036854775800
  br i1 %i.lm, label %bb.aw, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i407

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc425 unwind label %bb.cn

.noexc425:                                        ; preds = %bb.aw
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i407: ; preds = %bb.av
  %i.ln = ashr exact i64 %i.ll, 3                 ; 3 uses
  %.sroa.speculated.i.i408 = call i64 @llvm.umax.i64(i64 %i.ln, i64 1)
  %i.lo = add nsw i64 %.sroa.speculated.i.i408, %i.ln ; 2 uses
  %i.lp = icmp ult i64 %i.lo, %i.ln
  %i.lq = call i64 @llvm.umin.i64(i64 %i.lo, i64 1152921504606846975)
  %i.lr = select i1 %i.lp, i64 1152921504606846975, i64 %i.lq ; 3 uses
  %.not.i.i409 = icmp ne i64 %i.lr, 0
  call void @llvm.assume(i1 %.not.i.i409)
  %i.ls = shl nuw nsw i64 %i.lr, 3
  %i.lt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ls) #28
          to label %.noexc426 unwind label %bb.cn ; 10 uses

.noexc426:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i407
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.ll
  %i.lv = ptrtoint ptr %storemerge.i159 to i64
  store i64 %i.lv, ptr %i.lu, align 8, !tbaa !189
  %.not10.i.i.i.i410 = icmp eq ptr %i.li, %i.le
  br i1 %.not10.i.i.i.i410, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i422, label %.lr.ph.i.i.i.i411.preheader

.lr.ph.i.i.i.i411.preheader:                      ; preds = %.noexc426
  %i.lw = add i64 %i.lj, -8
  %i.lx = sub i64 %i.lw, %i.lk                    ; 3 uses
  %i.ly = lshr i64 %i.lx, 3
  %i.lz = add nuw nsw i64 %i.ly, 1                ; 2 uses
  %min.iters.check972 = icmp ult i64 %i.lx, 136
  br i1 %min.iters.check972, label %.lr.ph.i.i.i.i411.preheader1175, label %vector.memcheck973

vector.memcheck973:                               ; preds = %.lr.ph.i.i.i.i411.preheader
  %i.ma = and i64 %i.lx, -8
  %i.mb = add i64 %i.ma, 8                        ; 2 uses
  %i.mc = getelementptr i8, ptr %i.lt, i64 %i.mb
  %i.md = getelementptr i8, ptr %i.li, i64 %i.mb
  %bound0974 = icmp ult ptr %i.lt, %i.md
  %bound1975 = icmp ult ptr %i.li, %i.mc
  %found.conflict976 = and i1 %bound0974, %bound1975
  br i1 %found.conflict976, label %.lr.ph.i.i.i.i411.preheader1175, label %vector.ph977

vector.ph977:                                     ; preds = %vector.memcheck973
  %n.vec978 = and i64 %i.lz, 4611686018427387900  ; 3 uses
  %i.me = shl i64 %n.vec978, 3                    ; 2 uses
  %i.mf = getelementptr i8, ptr %i.lt, i64 %i.me  ; 2 uses
  %i.mg = getelementptr i8, ptr %i.li, i64 %i.me
  br label %vector.body979

vector.body979:                                   ; preds = %vector.body979, %vector.ph977
  %index980 = phi i64 [ 0, %vector.ph977 ], [ %index.next985, %vector.body979 ] ; 2 uses
  %i.mh = shl i64 %index980, 3                    ; 2 uses
  %next.gep981 = getelementptr i8, ptr %i.lt, i64 %i.mh ; 2 uses
  %next.gep982 = getelementptr i8, ptr %i.li, i64 %i.mh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %i.mi = getelementptr i8, ptr %next.gep982, i64 16
  %wide.load983 = load <2 x i64>, ptr %next.gep982, align 8, !tbaa !189, !alias.scope !1408
  %wide.load984 = load <2 x i64>, ptr %i.mi, align 8, !tbaa !189, !alias.scope !1408
  %i.mj = getelementptr i8, ptr %next.gep981, i64 16
  store <2 x i64> %wide.load983, ptr %next.gep981, align 8, !tbaa !189, !alias.scope !1409, !noalias !1410
  store <2 x i64> %wide.load984, ptr %i.mj, align 8, !tbaa !189, !alias.scope !1409, !noalias !1410
  %45 = getelementptr i8, ptr %next.gep982, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep982, align 8, !tbaa !189, !alias.scope !1408
  store <2 x ptr> splat (ptr null), ptr %45, align 8, !tbaa !189, !alias.scope !1408
  %index.next985 = add nuw i64 %index980, 4       ; 2 uses
  %i.mk = icmp eq i64 %index.next985, %n.vec978
  br i1 %i.mk, label %middle.block986, label %vector.body979, !llvm.loop !1254

middle.block986:                                  ; preds = %vector.body979
  %cmp.n987 = icmp eq i64 %i.lz, %n.vec978
  br i1 %cmp.n987, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i422, label %.lr.ph.i.i.i.i411.preheader1175

.lr.ph.i.i.i.i411.preheader1175:                  ; preds = %vector.memcheck973, %.lr.ph.i.i.i.i411.preheader, %middle.block986
  %.012.i.i.i.i412.ph = phi ptr [ %i.lt, %vector.memcheck973 ], [ %i.lt, %.lr.ph.i.i.i.i411.preheader ], [ %i.mf, %middle.block986 ]
  %.0911.i.i.i.i413.ph = phi ptr [ %i.li, %vector.memcheck973 ], [ %i.li, %.lr.ph.i.i.i.i411.preheader ], [ %i.mg, %middle.block986 ]
  br label %.lr.ph.i.i.i.i411

.lr.ph.i.i.i.i411:                                ; preds = %.lr.ph.i.i.i.i411.preheader1175, %.lr.ph.i.i.i.i411
  %.012.i.i.i.i412 = phi ptr [ %i.mn, %.lr.ph.i.i.i.i411 ], [ %.012.i.i.i.i412.ph, %.lr.ph.i.i.i.i411.preheader1175 ] ; 2 uses
  %.0911.i.i.i.i413 = phi ptr [ %i.mm, %.lr.ph.i.i.i.i411 ], [ %.0911.i.i.i.i413.ph, %.lr.ph.i.i.i.i411.preheader1175 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1406)
  call void @llvm.experimental.noalias.scope.decl(metadata !1407)
  %i.ml = load i64, ptr %.0911.i.i.i.i413, align 8, !tbaa !189, !alias.scope !1407
  store i64 %i.ml, ptr %.012.i.i.i.i412, align 8, !tbaa !189, !alias.scope !1406
  store ptr null, ptr %.0911.i.i.i.i413, align 8, !tbaa !189, !alias.scope !1407
  %i.mm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i413, i64 8 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i412, i64 8 ; 2 uses
  %.not.i.i.i.i414 = icmp eq ptr %i.mm, %i.le
  br i1 %.not.i.i.i.i414, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i422, label %.lr.ph.i.i.i.i411, !llvm.loop !1255

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i422: ; preds = %.lr.ph.i.i.i.i411, %middle.block986, %.noexc426
  %.0.lcssa.i.i.i.i416 = phi ptr [ %i.lt, %.noexc426 ], [ %i.mf, %middle.block986 ], [ %i.mn, %.lr.ph.i.i.i.i411 ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i416, i64 8
  %.not.i23.i424 = icmp eq ptr %i.li, null
  br i1 %.not.i23.i424, label %.noexc161, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i422
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.ll) #30
  br label %.noexc161

.noexc161:                                        ; preds = %bb.ax, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i422
  store ptr %i.lt, ptr %i.b, align 8, !tbaa !308
  store ptr %i.mo, ptr %i.d, align 8, !tbaa !309
  %i.mp = getelementptr inbounds nuw [8 x i8], ptr %i.lt, i64 %i.lr
  store ptr %i.mp, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit165

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit165: ; preds = %bb.au, %.noexc161
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  call void @llvm.lifetime.start.p0(ptr nonnull %15)
  store i64 12, ptr %14, align 8, !noalias !1411
  %i.mq = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @.str.8, ptr %i.mq, align 8, !noalias !1411
  store i64 20, ptr %15, align 8, !noalias !1411
  %i.mr = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr @.str.9, ptr %i.mr, align 8, !noalias !1411
  %i.ms = call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 12, ptr nonnull @.str.8) #27, !noalias !1411 ; 2 uses
  %.not.i166 = icmp eq ptr %i.ms, null
  br i1 %.not.i166, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit165
  %i.mt = call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.ms, i64 20, ptr nonnull @.str.9) #27, !noalias !1411 ; 2 uses
  %.not9.i167 = icmp eq ptr %i.mt, null
  br i1 %.not9.i167, label %bb.az, label %.critedge.i168

.critedge.i168:                                   ; preds = %bb.ay
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !1353, !noalias !1412, !nonnull !165, !noundef !165 ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !1356, !noalias !1412
  %i.mx = call noundef ptr %i.mw(ptr noundef nonnull %i.mu) #27, !noalias !1412, !inline_history !1260
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host21WasiLoggingModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.az:                                            ; preds = %bb.ay, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit165
  %i.my = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1411
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !1411
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false), !noalias !1411
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.my, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %13, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %15), !noalias !1411
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !1411
  %i.mz = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1413 ; 3 uses
  invoke void @_ZN8WasmEdge4Host21WasiLoggingModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.mz)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host21WasiLoggingModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.ba, !noalias !1413

bb.ba:                                            ; preds = %bb.az
  %i.na = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef 952) #30, !noalias !1413
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host21WasiLoggingModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i168, %bb.az
  %storemerge.i169 = phi ptr [ %i.mx, %.critedge.i168 ], [ %i.mz, %bb.az ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  %i.nb = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.nc = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i170 = icmp eq ptr %i.nb, %i.nc
  br i1 %.not.i.i170, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host21WasiLoggingModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.nd = ptrtoint ptr %storemerge.i169 to i64
  store i64 %i.nd, ptr %i.nb, align 8, !tbaa !189
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 8
  store ptr %i.ne, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit175

bb.bc:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host21WasiLoggingModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.nf = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.ng = ptrtoint ptr %i.nb to i64               ; 2 uses
  %i.nh = ptrtoint ptr %i.nf to i64               ; 2 uses
  %i.ni = sub i64 %i.ng, %i.nh                    ; 4 uses
  %i.nj = icmp eq i64 %i.ni, 9223372036854775800
  br i1 %i.nj, label %bb.bd, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i428

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc446 unwind label %bb.co

.noexc446:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i428: ; preds = %bb.bc
  %i.nk = ashr exact i64 %i.ni, 3                 ; 3 uses
  %.sroa.speculated.i.i429 = call i64 @llvm.umax.i64(i64 %i.nk, i64 1)
  %i.nl = add nsw i64 %.sroa.speculated.i.i429, %i.nk ; 2 uses
  %i.nm = icmp ult i64 %i.nl, %i.nk
  %i.nn = call i64 @llvm.umin.i64(i64 %i.nl, i64 1152921504606846975)
  %i.no = select i1 %i.nm, i64 1152921504606846975, i64 %i.nn ; 3 uses
  %.not.i.i430 = icmp ne i64 %i.no, 0
  call void @llvm.assume(i1 %.not.i.i430)
  %i.np = shl nuw nsw i64 %i.no, 3
  %i.nq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.np) #28
          to label %.noexc447 unwind label %bb.co ; 10 uses

.noexc447:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i428
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.ni
  %i.ns = ptrtoint ptr %storemerge.i169 to i64
  store i64 %i.ns, ptr %i.nr, align 8, !tbaa !189
  %.not10.i.i.i.i431 = icmp eq ptr %i.nf, %i.nb
  br i1 %.not10.i.i.i.i431, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i443, label %.lr.ph.i.i.i.i432.preheader

.lr.ph.i.i.i.i432.preheader:                      ; preds = %.noexc447
  %i.nt = add i64 %i.ng, -8
  %i.nu = sub i64 %i.nt, %i.nh                    ; 3 uses
  %i.nv = lshr i64 %i.nu, 3
  %i.nw = add nuw nsw i64 %i.nv, 1                ; 2 uses
  %min.iters.check996 = icmp ult i64 %i.nu, 136
  br i1 %min.iters.check996, label %.lr.ph.i.i.i.i432.preheader1173, label %vector.memcheck997

vector.memcheck997:                               ; preds = %.lr.ph.i.i.i.i432.preheader
  %i.nx = and i64 %i.nu, -8
  %i.ny = add i64 %i.nx, 8                        ; 2 uses
  %i.nz = getelementptr i8, ptr %i.nq, i64 %i.ny
  %i.oa = getelementptr i8, ptr %i.nf, i64 %i.ny
  %bound0998 = icmp ult ptr %i.nq, %i.oa
  %bound1999 = icmp ult ptr %i.nf, %i.nz
  %found.conflict1000 = and i1 %bound0998, %bound1999
  br i1 %found.conflict1000, label %.lr.ph.i.i.i.i432.preheader1173, label %vector.ph1001

vector.ph1001:                                    ; preds = %vector.memcheck997
  %n.vec1002 = and i64 %i.nw, 4611686018427387900 ; 3 uses
  %i.ob = shl i64 %n.vec1002, 3                   ; 2 uses
  %i.oc = getelementptr i8, ptr %i.nq, i64 %i.ob  ; 2 uses
  %i.od = getelementptr i8, ptr %i.nf, i64 %i.ob
  br label %vector.body1003

vector.body1003:                                  ; preds = %vector.body1003, %vector.ph1001
  %index1004 = phi i64 [ 0, %vector.ph1001 ], [ %index.next1009, %vector.body1003 ] ; 2 uses
  %i.oe = shl i64 %index1004, 3                   ; 2 uses
  %next.gep1005 = getelementptr i8, ptr %i.nq, i64 %i.oe ; 2 uses
  %next.gep1006 = getelementptr i8, ptr %i.nf, i64 %i.oe ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %i.of = getelementptr i8, ptr %next.gep1006, i64 16
  %wide.load1007 = load <2 x i64>, ptr %next.gep1006, align 8, !tbaa !189, !alias.scope !1416
  %wide.load1008 = load <2 x i64>, ptr %i.of, align 8, !tbaa !189, !alias.scope !1416
  %i.og = getelementptr i8, ptr %next.gep1005, i64 16
  store <2 x i64> %wide.load1007, ptr %next.gep1005, align 8, !tbaa !189, !alias.scope !1417, !noalias !1418
  store <2 x i64> %wide.load1008, ptr %i.og, align 8, !tbaa !189, !alias.scope !1417, !noalias !1418
  %46 = getelementptr i8, ptr %next.gep1006, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1006, align 8, !tbaa !189, !alias.scope !1416
  store <2 x ptr> splat (ptr null), ptr %46, align 8, !tbaa !189, !alias.scope !1416
  %index.next1009 = add nuw i64 %index1004, 4     ; 2 uses
  %i.oh = icmp eq i64 %index.next1009, %n.vec1002
  br i1 %i.oh, label %middle.block1010, label %vector.body1003, !llvm.loop !1269

middle.block1010:                                 ; preds = %vector.body1003
  %cmp.n1011 = icmp eq i64 %i.nw, %n.vec1002
  br i1 %cmp.n1011, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i443, label %.lr.ph.i.i.i.i432.preheader1173

.lr.ph.i.i.i.i432.preheader1173:                  ; preds = %vector.memcheck997, %.lr.ph.i.i.i.i432.preheader, %middle.block1010
  %.012.i.i.i.i433.ph = phi ptr [ %i.nq, %vector.memcheck997 ], [ %i.nq, %.lr.ph.i.i.i.i432.preheader ], [ %i.oc, %middle.block1010 ]
  %.0911.i.i.i.i434.ph = phi ptr [ %i.nf, %vector.memcheck997 ], [ %i.nf, %.lr.ph.i.i.i.i432.preheader ], [ %i.od, %middle.block1010 ]
  br label %.lr.ph.i.i.i.i432

.lr.ph.i.i.i.i432:                                ; preds = %.lr.ph.i.i.i.i432.preheader1173, %.lr.ph.i.i.i.i432
  %.012.i.i.i.i433 = phi ptr [ %i.ok, %.lr.ph.i.i.i.i432 ], [ %.012.i.i.i.i433.ph, %.lr.ph.i.i.i.i432.preheader1173 ] ; 2 uses
  %.0911.i.i.i.i434 = phi ptr [ %i.oj, %.lr.ph.i.i.i.i432 ], [ %.0911.i.i.i.i434.ph, %.lr.ph.i.i.i.i432.preheader1173 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1414)
  call void @llvm.experimental.noalias.scope.decl(metadata !1415)
  %i.oi = load i64, ptr %.0911.i.i.i.i434, align 8, !tbaa !189, !alias.scope !1415
  store i64 %i.oi, ptr %.012.i.i.i.i433, align 8, !tbaa !189, !alias.scope !1414
  store ptr null, ptr %.0911.i.i.i.i434, align 8, !tbaa !189, !alias.scope !1415
  %i.oj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i434, i64 8 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i433, i64 8 ; 2 uses
  %.not.i.i.i.i435 = icmp eq ptr %i.oj, %i.nb
  br i1 %.not.i.i.i.i435, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i443, label %.lr.ph.i.i.i.i432, !llvm.loop !1270

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i443: ; preds = %.lr.ph.i.i.i.i432, %middle.block1010, %.noexc447
  %.0.lcssa.i.i.i.i437 = phi ptr [ %i.nq, %.noexc447 ], [ %i.oc, %middle.block1010 ], [ %i.ok, %.lr.ph.i.i.i.i432 ]
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i437, i64 8
  %.not.i23.i445 = icmp eq ptr %i.nf, null
  br i1 %.not.i23.i445, label %.noexc171, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i443
  call void @_ZdlPvm(ptr noundef nonnull %i.nf, i64 noundef %i.ni) #30
  br label %.noexc171

.noexc171:                                        ; preds = %bb.be, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i443
  store ptr %i.nq, ptr %i.b, align 8, !tbaa !308
  store ptr %i.ol, ptr %i.d, align 8, !tbaa !309
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %i.no
  store ptr %i.om, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit175

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit175: ; preds = %bb.bb, %.noexc171
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  store i64 19, ptr %11, align 8, !noalias !1419
  %i.on = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr @.str.10, ptr %i.on, align 8, !noalias !1419
  store i64 19, ptr %12, align 8, !noalias !1419
  %i.oo = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr @.str.10, ptr %i.oo, align 8, !noalias !1419
  %i.op = call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 19, ptr nonnull @.str.10) #27, !noalias !1419 ; 2 uses
  %.not.i176 = icmp eq ptr %i.op, null
  br i1 %.not.i176, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit175
  %i.oq = call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.op, i64 19, ptr nonnull @.str.10) #27, !noalias !1419 ; 2 uses
  %.not9.i177 = icmp eq ptr %i.oq, null
  br i1 %.not9.i177, label %bb.bg, label %.critedge.i178

.critedge.i178:                                   ; preds = %bb.bf
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !1353, !noalias !1420, !nonnull !165, !noundef !165 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !1356, !noalias !1420
  %i.ou = call noundef ptr %i.ot(ptr noundef nonnull %i.or) #27, !noalias !1420, !inline_history !1275
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host28WasmEdgeTensorflowModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.bg:                                            ; preds = %bb.bf, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit175
  %i.ov = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1419
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !1419
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false), !noalias !1419
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.ov, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %10, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 8 dereferenceable(16) %12), !noalias !1419
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !1419
  %i.ow = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1421 ; 3 uses
  invoke void @_ZN8WasmEdge4Host28WasmEdgeTensorflowModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.ow)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host28WasmEdgeTensorflowModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.bh, !noalias !1421

bb.bh:                                            ; preds = %bb.bg
  %i.ox = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ow, i64 noundef 952) #30, !noalias !1421
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host28WasmEdgeTensorflowModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i178, %bb.bg
  %storemerge.i179 = phi ptr [ %i.ou, %.critedge.i178 ], [ %i.ow, %bb.bg ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  %i.oy = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.oz = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i180 = icmp eq ptr %i.oy, %i.oz
  br i1 %.not.i.i180, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host28WasmEdgeTensorflowModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.pa = ptrtoint ptr %storemerge.i179 to i64
  store i64 %i.pa, ptr %i.oy, align 8, !tbaa !189
  %i.pb = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store ptr %i.pb, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit185

bb.bj:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host28WasmEdgeTensorflowModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.pc = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.pd = ptrtoint ptr %i.oy to i64               ; 2 uses
  %i.pe = ptrtoint ptr %i.pc to i64               ; 2 uses
  %i.pf = sub i64 %i.pd, %i.pe                    ; 4 uses
  %i.pg = icmp eq i64 %i.pf, 9223372036854775800
  br i1 %i.pg, label %bb.bk, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i449

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc467 unwind label %bb.cp

.noexc467:                                        ; preds = %bb.bk
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i449: ; preds = %bb.bj
  %i.ph = ashr exact i64 %i.pf, 3                 ; 3 uses
  %.sroa.speculated.i.i450 = call i64 @llvm.umax.i64(i64 %i.ph, i64 1)
  %i.pi = add nsw i64 %.sroa.speculated.i.i450, %i.ph ; 2 uses
  %i.pj = icmp ult i64 %i.pi, %i.ph
  %i.pk = call i64 @llvm.umin.i64(i64 %i.pi, i64 1152921504606846975)
  %i.pl = select i1 %i.pj, i64 1152921504606846975, i64 %i.pk ; 3 uses
  %.not.i.i451 = icmp ne i64 %i.pl, 0
  call void @llvm.assume(i1 %.not.i.i451)
  %i.pm = shl nuw nsw i64 %i.pl, 3
  %i.pn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pm) #28
          to label %.noexc468 unwind label %bb.cp ; 10 uses

.noexc468:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i449
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 %i.pf
  %i.pp = ptrtoint ptr %storemerge.i179 to i64
  store i64 %i.pp, ptr %i.po, align 8, !tbaa !189
  %.not10.i.i.i.i452 = icmp eq ptr %i.pc, %i.oy
  br i1 %.not10.i.i.i.i452, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i464, label %.lr.ph.i.i.i.i453.preheader

.lr.ph.i.i.i.i453.preheader:                      ; preds = %.noexc468
  %i.pq = add i64 %i.pd, -8
  %i.pr = sub i64 %i.pq, %i.pe                    ; 3 uses
  %i.ps = lshr i64 %i.pr, 3
  %i.pt = add nuw nsw i64 %i.ps, 1                ; 2 uses
  %min.iters.check1020 = icmp ult i64 %i.pr, 136
  br i1 %min.iters.check1020, label %.lr.ph.i.i.i.i453.preheader1171, label %vector.memcheck1021

vector.memcheck1021:                              ; preds = %.lr.ph.i.i.i.i453.preheader
  %i.pu = and i64 %i.pr, -8
  %i.pv = add i64 %i.pu, 8                        ; 2 uses
  %i.pw = getelementptr i8, ptr %i.pn, i64 %i.pv
  %i.px = getelementptr i8, ptr %i.pc, i64 %i.pv
  %bound01022 = icmp ult ptr %i.pn, %i.px
  %bound11023 = icmp ult ptr %i.pc, %i.pw
  %found.conflict1024 = and i1 %bound01022, %bound11023
  br i1 %found.conflict1024, label %.lr.ph.i.i.i.i453.preheader1171, label %vector.ph1025

vector.ph1025:                                    ; preds = %vector.memcheck1021
  %n.vec1026 = and i64 %i.pt, 4611686018427387900 ; 3 uses
  %i.py = shl i64 %n.vec1026, 3                   ; 2 uses
  %i.pz = getelementptr i8, ptr %i.pn, i64 %i.py  ; 2 uses
  %i.qa = getelementptr i8, ptr %i.pc, i64 %i.py
  br label %vector.body1027

vector.body1027:                                  ; preds = %vector.body1027, %vector.ph1025
  %index1028 = phi i64 [ 0, %vector.ph1025 ], [ %index.next1033, %vector.body1027 ] ; 2 uses
  %i.qb = shl i64 %index1028, 3                   ; 2 uses
  %next.gep1029 = getelementptr i8, ptr %i.pn, i64 %i.qb ; 2 uses
  %next.gep1030 = getelementptr i8, ptr %i.pc, i64 %i.qb ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  %i.qc = getelementptr i8, ptr %next.gep1030, i64 16
  %wide.load1031 = load <2 x i64>, ptr %next.gep1030, align 8, !tbaa !189, !alias.scope !1424
  %wide.load1032 = load <2 x i64>, ptr %i.qc, align 8, !tbaa !189, !alias.scope !1424
  %i.qd = getelementptr i8, ptr %next.gep1029, i64 16
  store <2 x i64> %wide.load1031, ptr %next.gep1029, align 8, !tbaa !189, !alias.scope !1425, !noalias !1426
  store <2 x i64> %wide.load1032, ptr %i.qd, align 8, !tbaa !189, !alias.scope !1425, !noalias !1426
  %47 = getelementptr i8, ptr %next.gep1030, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1030, align 8, !tbaa !189, !alias.scope !1424
  store <2 x ptr> splat (ptr null), ptr %47, align 8, !tbaa !189, !alias.scope !1424
  %index.next1033 = add nuw i64 %index1028, 4     ; 2 uses
  %i.qe = icmp eq i64 %index.next1033, %n.vec1026
  br i1 %i.qe, label %middle.block1034, label %vector.body1027, !llvm.loop !1284

middle.block1034:                                 ; preds = %vector.body1027
  %cmp.n1035 = icmp eq i64 %i.pt, %n.vec1026
  br i1 %cmp.n1035, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i464, label %.lr.ph.i.i.i.i453.preheader1171

.lr.ph.i.i.i.i453.preheader1171:                  ; preds = %vector.memcheck1021, %.lr.ph.i.i.i.i453.preheader, %middle.block1034
  %.012.i.i.i.i454.ph = phi ptr [ %i.pn, %vector.memcheck1021 ], [ %i.pn, %.lr.ph.i.i.i.i453.preheader ], [ %i.pz, %middle.block1034 ]
  %.0911.i.i.i.i455.ph = phi ptr [ %i.pc, %vector.memcheck1021 ], [ %i.pc, %.lr.ph.i.i.i.i453.preheader ], [ %i.qa, %middle.block1034 ]
  br label %.lr.ph.i.i.i.i453

.lr.ph.i.i.i.i453:                                ; preds = %.lr.ph.i.i.i.i453.preheader1171, %.lr.ph.i.i.i.i453
  %.012.i.i.i.i454 = phi ptr [ %i.qh, %.lr.ph.i.i.i.i453 ], [ %.012.i.i.i.i454.ph, %.lr.ph.i.i.i.i453.preheader1171 ] ; 2 uses
  %.0911.i.i.i.i455 = phi ptr [ %i.qg, %.lr.ph.i.i.i.i453 ], [ %.0911.i.i.i.i455.ph, %.lr.ph.i.i.i.i453.preheader1171 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1422)
  call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  %i.qf = load i64, ptr %.0911.i.i.i.i455, align 8, !tbaa !189, !alias.scope !1423
  store i64 %i.qf, ptr %.012.i.i.i.i454, align 8, !tbaa !189, !alias.scope !1422
  store ptr null, ptr %.0911.i.i.i.i455, align 8, !tbaa !189, !alias.scope !1423
  %i.qg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i455, i64 8 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i454, i64 8 ; 2 uses
  %.not.i.i.i.i456 = icmp eq ptr %i.qg, %i.oy
  br i1 %.not.i.i.i.i456, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i464, label %.lr.ph.i.i.i.i453, !llvm.loop !1285

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i464: ; preds = %.lr.ph.i.i.i.i453, %middle.block1034, %.noexc468
  %.0.lcssa.i.i.i.i458 = phi ptr [ %i.pn, %.noexc468 ], [ %i.pz, %middle.block1034 ], [ %i.qh, %.lr.ph.i.i.i.i453 ]
  %i.qi = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i458, i64 8
  %.not.i23.i466 = icmp eq ptr %i.pc, null
  br i1 %.not.i23.i466, label %.noexc181, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i464
  call void @_ZdlPvm(ptr noundef nonnull %i.pc, i64 noundef %i.pf) #30
  br label %.noexc181

.noexc181:                                        ; preds = %bb.bl, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i464
  store ptr %i.pn, ptr %i.b, align 8, !tbaa !308
  store ptr %i.qi, ptr %i.d, align 8, !tbaa !309
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.pn, i64 %i.pl
  store ptr %i.qj, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit185

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit185: ; preds = %bb.bi, %.noexc181
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 23, ptr %8, align 8, !noalias !1427
  %i.qk = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr @.str.11, ptr %i.qk, align 8, !noalias !1427
  store i64 23, ptr %9, align 8, !noalias !1427
  %i.ql = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr @.str.11, ptr %i.ql, align 8, !noalias !1427
  %i.qm = call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 23, ptr nonnull @.str.11) #27, !noalias !1427 ; 2 uses
  %.not.i186 = icmp eq ptr %i.qm, null
  br i1 %.not.i186, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit185
  %i.qn = call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.qm, i64 23, ptr nonnull @.str.11) #27, !noalias !1427 ; 2 uses
  %.not9.i187 = icmp eq ptr %i.qn, null
  br i1 %.not9.i187, label %bb.bn, label %.critedge.i188

.critedge.i188:                                   ; preds = %bb.bm
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !1353, !noalias !1428, !nonnull !165, !noundef !165 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !1356, !noalias !1428
  %i.qr = call noundef ptr %i.qq(ptr noundef nonnull %i.qo) #27, !noalias !1428, !inline_history !1290
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host32WasmEdgeTensorflowLiteModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.bn:                                            ; preds = %bb.bm, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit185
  %i.qs = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1427
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !1427
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false), !noalias !1427
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.qs, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %7, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9), !noalias !1427
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !1427
  %i.qt = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1429 ; 3 uses
  invoke void @_ZN8WasmEdge4Host32WasmEdgeTensorflowLiteModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.qt)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host32WasmEdgeTensorflowLiteModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.bo, !noalias !1429

bb.bo:                                            ; preds = %bb.bn
  %i.qu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.qt, i64 noundef 952) #30, !noalias !1429
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host32WasmEdgeTensorflowLiteModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i188, %bb.bn
  %storemerge.i189 = phi ptr [ %i.qr, %.critedge.i188 ], [ %i.qt, %bb.bn ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.qv = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.qw = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i190 = icmp eq ptr %i.qv, %i.qw
  br i1 %.not.i.i190, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host32WasmEdgeTensorflowLiteModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.qx = ptrtoint ptr %storemerge.i189 to i64
  store i64 %i.qx, ptr %i.qv, align 8, !tbaa !189
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  store ptr %i.qy, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit195

bb.bq:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host32WasmEdgeTensorflowLiteModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.qz = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.ra = ptrtoint ptr %i.qv to i64               ; 2 uses
  %i.rb = ptrtoint ptr %i.qz to i64               ; 2 uses
  %i.rc = sub i64 %i.ra, %i.rb                    ; 4 uses
  %i.rd = icmp eq i64 %i.rc, 9223372036854775800
  br i1 %i.rd, label %bb.br, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i470

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc488 unwind label %bb.cq

.noexc488:                                        ; preds = %bb.br
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i470: ; preds = %bb.bq
  %i.re = ashr exact i64 %i.rc, 3                 ; 3 uses
  %.sroa.speculated.i.i471 = call i64 @llvm.umax.i64(i64 %i.re, i64 1)
  %i.rf = add nsw i64 %.sroa.speculated.i.i471, %i.re ; 2 uses
  %i.rg = icmp ult i64 %i.rf, %i.re
  %i.rh = call i64 @llvm.umin.i64(i64 %i.rf, i64 1152921504606846975)
  %i.ri = select i1 %i.rg, i64 1152921504606846975, i64 %i.rh ; 3 uses
  %.not.i.i472 = icmp ne i64 %i.ri, 0
  call void @llvm.assume(i1 %.not.i.i472)
  %i.rj = shl nuw nsw i64 %i.ri, 3
  %i.rk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rj) #28
          to label %.noexc489 unwind label %bb.cq ; 10 uses

.noexc489:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i470
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rc
  %i.rm = ptrtoint ptr %storemerge.i189 to i64
  store i64 %i.rm, ptr %i.rl, align 8, !tbaa !189
  %.not10.i.i.i.i473 = icmp eq ptr %i.qz, %i.qv
  br i1 %.not10.i.i.i.i473, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i485, label %.lr.ph.i.i.i.i474.preheader

.lr.ph.i.i.i.i474.preheader:                      ; preds = %.noexc489
  %i.rn = add i64 %i.ra, -8
  %i.ro = sub i64 %i.rn, %i.rb                    ; 3 uses
  %i.rp = lshr i64 %i.ro, 3
  %i.rq = add nuw nsw i64 %i.rp, 1                ; 2 uses
  %min.iters.check1044 = icmp ult i64 %i.ro, 136
  br i1 %min.iters.check1044, label %.lr.ph.i.i.i.i474.preheader1169, label %vector.memcheck1045

vector.memcheck1045:                              ; preds = %.lr.ph.i.i.i.i474.preheader
  %i.rr = and i64 %i.ro, -8
  %i.rs = add i64 %i.rr, 8                        ; 2 uses
  %i.rt = getelementptr i8, ptr %i.rk, i64 %i.rs
  %i.ru = getelementptr i8, ptr %i.qz, i64 %i.rs
  %bound01046 = icmp ult ptr %i.rk, %i.ru
  %bound11047 = icmp ult ptr %i.qz, %i.rt
  %found.conflict1048 = and i1 %bound01046, %bound11047
  br i1 %found.conflict1048, label %.lr.ph.i.i.i.i474.preheader1169, label %vector.ph1049

vector.ph1049:                                    ; preds = %vector.memcheck1045
  %n.vec1050 = and i64 %i.rq, 4611686018427387900 ; 3 uses
  %i.rv = shl i64 %n.vec1050, 3                   ; 2 uses
  %i.rw = getelementptr i8, ptr %i.rk, i64 %i.rv  ; 2 uses
  %i.rx = getelementptr i8, ptr %i.qz, i64 %i.rv
  br label %vector.body1051

vector.body1051:                                  ; preds = %vector.body1051, %vector.ph1049
  %index1052 = phi i64 [ 0, %vector.ph1049 ], [ %index.next1057, %vector.body1051 ] ; 2 uses
  %i.ry = shl i64 %index1052, 3                   ; 2 uses
  %next.gep1053 = getelementptr i8, ptr %i.rk, i64 %i.ry ; 2 uses
  %next.gep1054 = getelementptr i8, ptr %i.qz, i64 %i.ry ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %i.rz = getelementptr i8, ptr %next.gep1054, i64 16
  %wide.load1055 = load <2 x i64>, ptr %next.gep1054, align 8, !tbaa !189, !alias.scope !1432
  %wide.load1056 = load <2 x i64>, ptr %i.rz, align 8, !tbaa !189, !alias.scope !1432
  %i.sa = getelementptr i8, ptr %next.gep1053, i64 16
  store <2 x i64> %wide.load1055, ptr %next.gep1053, align 8, !tbaa !189, !alias.scope !1433, !noalias !1434
  store <2 x i64> %wide.load1056, ptr %i.sa, align 8, !tbaa !189, !alias.scope !1433, !noalias !1434
  %48 = getelementptr i8, ptr %next.gep1054, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1054, align 8, !tbaa !189, !alias.scope !1432
  store <2 x ptr> splat (ptr null), ptr %48, align 8, !tbaa !189, !alias.scope !1432
  %index.next1057 = add nuw i64 %index1052, 4     ; 2 uses
  %i.sb = icmp eq i64 %index.next1057, %n.vec1050
  br i1 %i.sb, label %middle.block1058, label %vector.body1051, !llvm.loop !1299

middle.block1058:                                 ; preds = %vector.body1051
  %cmp.n1059 = icmp eq i64 %i.rq, %n.vec1050
  br i1 %cmp.n1059, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i485, label %.lr.ph.i.i.i.i474.preheader1169

.lr.ph.i.i.i.i474.preheader1169:                  ; preds = %vector.memcheck1045, %.lr.ph.i.i.i.i474.preheader, %middle.block1058
  %.012.i.i.i.i475.ph = phi ptr [ %i.rk, %vector.memcheck1045 ], [ %i.rk, %.lr.ph.i.i.i.i474.preheader ], [ %i.rw, %middle.block1058 ]
  %.0911.i.i.i.i476.ph = phi ptr [ %i.qz, %vector.memcheck1045 ], [ %i.qz, %.lr.ph.i.i.i.i474.preheader ], [ %i.rx, %middle.block1058 ]
  br label %.lr.ph.i.i.i.i474

.lr.ph.i.i.i.i474:                                ; preds = %.lr.ph.i.i.i.i474.preheader1169, %.lr.ph.i.i.i.i474
  %.012.i.i.i.i475 = phi ptr [ %i.se, %.lr.ph.i.i.i.i474 ], [ %.012.i.i.i.i475.ph, %.lr.ph.i.i.i.i474.preheader1169 ] ; 2 uses
  %.0911.i.i.i.i476 = phi ptr [ %i.sd, %.lr.ph.i.i.i.i474 ], [ %.0911.i.i.i.i476.ph, %.lr.ph.i.i.i.i474.preheader1169 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %i.sc = load i64, ptr %.0911.i.i.i.i476, align 8, !tbaa !189, !alias.scope !1431
  store i64 %i.sc, ptr %.012.i.i.i.i475, align 8, !tbaa !189, !alias.scope !1430
  store ptr null, ptr %.0911.i.i.i.i476, align 8, !tbaa !189, !alias.scope !1431
  %i.sd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i476, i64 8 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i475, i64 8 ; 2 uses
  %.not.i.i.i.i477 = icmp eq ptr %i.sd, %i.qv
  br i1 %.not.i.i.i.i477, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i485, label %.lr.ph.i.i.i.i474, !llvm.loop !1300

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i485: ; preds = %.lr.ph.i.i.i.i474, %middle.block1058, %.noexc489
  %.0.lcssa.i.i.i.i479 = phi ptr [ %i.rk, %.noexc489 ], [ %i.rw, %middle.block1058 ], [ %i.se, %.lr.ph.i.i.i.i474 ]
  %i.sf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i479, i64 8
  %.not.i23.i487 = icmp eq ptr %i.qz, null
  br i1 %.not.i23.i487, label %.noexc191, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i485
  call void @_ZdlPvm(ptr noundef nonnull %i.qz, i64 noundef %i.rc) #30
  br label %.noexc191

.noexc191:                                        ; preds = %bb.bs, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i485
  store ptr %i.rk, ptr %i.b, align 8, !tbaa !308
  store ptr %i.sf, ptr %i.d, align 8, !tbaa !309
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %i.ri
  store ptr %i.sg, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit195

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit195: ; preds = %bb.bp, %.noexc191
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store i64 14, ptr %5, align 8, !noalias !1435
  %i.sh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @.str.12, ptr %i.sh, align 8, !noalias !1435
  store i64 14, ptr %6, align 8, !noalias !1435
  %i.si = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr @.str.12, ptr %i.si, align 8, !noalias !1435
  %i.sj = call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 14, ptr nonnull @.str.12) #27, !noalias !1435 ; 2 uses
  %.not.i196 = icmp eq ptr %i.sj, null
  br i1 %.not.i196, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit195
  %i.sk = call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.sj, i64 14, ptr nonnull @.str.12) #27, !noalias !1435 ; 2 uses
  %.not9.i197 = icmp eq ptr %i.sk, null
  br i1 %.not9.i197, label %bb.bu, label %.critedge.i198

.critedge.i198:                                   ; preds = %bb.bt
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !1353, !noalias !1436, !nonnull !165, !noundef !165 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %i.sn = load ptr, ptr %i.sm, align 8, !tbaa !1356, !noalias !1436
  %i.so = call noundef ptr %i.sn(ptr noundef nonnull %i.sl) #27, !noalias !1436, !inline_history !1305
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host23WasmEdgeImageModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.bu:                                            ; preds = %bb.bt, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit195
  %i.sp = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1435
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1435
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !noalias !1435
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.sp, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %4, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6), !noalias !1435
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1435
  %i.sq = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1437 ; 3 uses
  invoke void @_ZN8WasmEdge4Host23WasmEdgeImageModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.sq)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host23WasmEdgeImageModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.bv, !noalias !1437

bb.bv:                                            ; preds = %bb.bu
  %i.sr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.sq, i64 noundef 952) #30, !noalias !1437
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host23WasmEdgeImageModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i198, %bb.bu
  %storemerge.i199 = phi ptr [ %i.so, %.critedge.i198 ], [ %i.sq, %bb.bu ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.ss = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.st = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i200 = icmp eq ptr %i.ss, %i.st
  br i1 %.not.i.i200, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host23WasmEdgeImageModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.su = ptrtoint ptr %storemerge.i199 to i64
  store i64 %i.su, ptr %i.ss, align 8, !tbaa !189
  %i.sv = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  store ptr %i.sv, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit205

bb.bx:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host23WasmEdgeImageModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.sw = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.sx = ptrtoint ptr %i.ss to i64               ; 2 uses
  %i.sy = ptrtoint ptr %i.sw to i64               ; 2 uses
  %i.sz = sub i64 %i.sx, %i.sy                    ; 4 uses
  %i.ta = icmp eq i64 %i.sz, 9223372036854775800
  br i1 %i.ta, label %bb.by, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i491

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc509 unwind label %bb.cr

.noexc509:                                        ; preds = %bb.by
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i491: ; preds = %bb.bx
  %i.tb = ashr exact i64 %i.sz, 3                 ; 3 uses
  %.sroa.speculated.i.i492 = call i64 @llvm.umax.i64(i64 %i.tb, i64 1)
  %i.tc = add nsw i64 %.sroa.speculated.i.i492, %i.tb ; 2 uses
  %i.td = icmp ult i64 %i.tc, %i.tb
  %i.te = call i64 @llvm.umin.i64(i64 %i.tc, i64 1152921504606846975)
  %i.tf = select i1 %i.td, i64 1152921504606846975, i64 %i.te ; 3 uses
  %.not.i.i493 = icmp ne i64 %i.tf, 0
  call void @llvm.assume(i1 %.not.i.i493)
  %i.tg = shl nuw nsw i64 %i.tf, 3
  %i.th = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tg) #28
          to label %.noexc510 unwind label %bb.cr ; 10 uses

.noexc510:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i491
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.sz
  %i.tj = ptrtoint ptr %storemerge.i199 to i64
  store i64 %i.tj, ptr %i.ti, align 8, !tbaa !189
  %.not10.i.i.i.i494 = icmp eq ptr %i.sw, %i.ss
  br i1 %.not10.i.i.i.i494, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i506, label %.lr.ph.i.i.i.i495.preheader

.lr.ph.i.i.i.i495.preheader:                      ; preds = %.noexc510
  %i.tk = add i64 %i.sx, -8
  %i.tl = sub i64 %i.tk, %i.sy                    ; 3 uses
  %i.tm = lshr i64 %i.tl, 3
  %i.tn = add nuw nsw i64 %i.tm, 1                ; 2 uses
  %min.iters.check1068 = icmp ult i64 %i.tl, 136
  br i1 %min.iters.check1068, label %.lr.ph.i.i.i.i495.preheader1167, label %vector.memcheck1069

vector.memcheck1069:                              ; preds = %.lr.ph.i.i.i.i495.preheader
  %i.to = and i64 %i.tl, -8
  %i.tp = add i64 %i.to, 8                        ; 2 uses
  %i.tq = getelementptr i8, ptr %i.th, i64 %i.tp
  %i.tr = getelementptr i8, ptr %i.sw, i64 %i.tp
  %bound01070 = icmp ult ptr %i.th, %i.tr
  %bound11071 = icmp ult ptr %i.sw, %i.tq
  %found.conflict1072 = and i1 %bound01070, %bound11071
  br i1 %found.conflict1072, label %.lr.ph.i.i.i.i495.preheader1167, label %vector.ph1073

vector.ph1073:                                    ; preds = %vector.memcheck1069
  %n.vec1074 = and i64 %i.tn, 4611686018427387900 ; 3 uses
  %i.ts = shl i64 %n.vec1074, 3                   ; 2 uses
  %i.tt = getelementptr i8, ptr %i.th, i64 %i.ts  ; 2 uses
  %i.tu = getelementptr i8, ptr %i.sw, i64 %i.ts
  br label %vector.body1075

vector.body1075:                                  ; preds = %vector.body1075, %vector.ph1073
  %index1076 = phi i64 [ 0, %vector.ph1073 ], [ %index.next1081, %vector.body1075 ] ; 2 uses
  %i.tv = shl i64 %index1076, 3                   ; 2 uses
  %next.gep1077 = getelementptr i8, ptr %i.th, i64 %i.tv ; 2 uses
  %next.gep1078 = getelementptr i8, ptr %i.sw, i64 %i.tv ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.tw = getelementptr i8, ptr %next.gep1078, i64 16
  %wide.load1079 = load <2 x i64>, ptr %next.gep1078, align 8, !tbaa !189, !alias.scope !1440
  %wide.load1080 = load <2 x i64>, ptr %i.tw, align 8, !tbaa !189, !alias.scope !1440
  %i.tx = getelementptr i8, ptr %next.gep1077, i64 16
  store <2 x i64> %wide.load1079, ptr %next.gep1077, align 8, !tbaa !189, !alias.scope !1441, !noalias !1442
  store <2 x i64> %wide.load1080, ptr %i.tx, align 8, !tbaa !189, !alias.scope !1441, !noalias !1442
  %49 = getelementptr i8, ptr %next.gep1078, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1078, align 8, !tbaa !189, !alias.scope !1440
  store <2 x ptr> splat (ptr null), ptr %49, align 8, !tbaa !189, !alias.scope !1440
  %index.next1081 = add nuw i64 %index1076, 4     ; 2 uses
  %i.ty = icmp eq i64 %index.next1081, %n.vec1074
  br i1 %i.ty, label %middle.block1082, label %vector.body1075, !llvm.loop !1314

middle.block1082:                                 ; preds = %vector.body1075
  %cmp.n1083 = icmp eq i64 %i.tn, %n.vec1074
  br i1 %cmp.n1083, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i506, label %.lr.ph.i.i.i.i495.preheader1167

.lr.ph.i.i.i.i495.preheader1167:                  ; preds = %vector.memcheck1069, %.lr.ph.i.i.i.i495.preheader, %middle.block1082
  %.012.i.i.i.i496.ph = phi ptr [ %i.th, %vector.memcheck1069 ], [ %i.th, %.lr.ph.i.i.i.i495.preheader ], [ %i.tt, %middle.block1082 ]
  %.0911.i.i.i.i497.ph = phi ptr [ %i.sw, %vector.memcheck1069 ], [ %i.sw, %.lr.ph.i.i.i.i495.preheader ], [ %i.tu, %middle.block1082 ]
  br label %.lr.ph.i.i.i.i495

.lr.ph.i.i.i.i495:                                ; preds = %.lr.ph.i.i.i.i495.preheader1167, %.lr.ph.i.i.i.i495
  %.012.i.i.i.i496 = phi ptr [ %i.ub, %.lr.ph.i.i.i.i495 ], [ %.012.i.i.i.i496.ph, %.lr.ph.i.i.i.i495.preheader1167 ] ; 2 uses
  %.0911.i.i.i.i497 = phi ptr [ %i.ua, %.lr.ph.i.i.i.i495 ], [ %.0911.i.i.i.i497.ph, %.lr.ph.i.i.i.i495.preheader1167 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1438)
  call void @llvm.experimental.noalias.scope.decl(metadata !1439)
  %i.tz = load i64, ptr %.0911.i.i.i.i497, align 8, !tbaa !189, !alias.scope !1439
  store i64 %i.tz, ptr %.012.i.i.i.i496, align 8, !tbaa !189, !alias.scope !1438
  store ptr null, ptr %.0911.i.i.i.i497, align 8, !tbaa !189, !alias.scope !1439
  %i.ua = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i497, i64 8 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i496, i64 8 ; 2 uses
  %.not.i.i.i.i498 = icmp eq ptr %i.ua, %i.ss
  br i1 %.not.i.i.i.i498, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i506, label %.lr.ph.i.i.i.i495, !llvm.loop !1315

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i506: ; preds = %.lr.ph.i.i.i.i495, %middle.block1082, %.noexc510
  %.0.lcssa.i.i.i.i500 = phi ptr [ %i.th, %.noexc510 ], [ %i.tt, %middle.block1082 ], [ %i.ub, %.lr.ph.i.i.i.i495 ]
  %i.uc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i500, i64 8
  %.not.i23.i508 = icmp eq ptr %i.sw, null
  br i1 %.not.i23.i508, label %.noexc201, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i506
  call void @_ZdlPvm(ptr noundef nonnull %i.sw, i64 noundef %i.sz) #30
  br label %.noexc201

.noexc201:                                        ; preds = %bb.bz, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i506
  store ptr %i.th, ptr %i.b, align 8, !tbaa !308
  store ptr %i.uc, ptr %i.d, align 8, !tbaa !309
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.tf
  store ptr %i.ud, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit205

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit205: ; preds = %bb.bw, %.noexc201
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store i64 24, ptr %2, align 8, !noalias !1443
  %i.ue = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.13, ptr %i.ue, align 8, !noalias !1443
  store i64 24, ptr %3, align 8, !noalias !1443
  %i.uf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr @.str.13, ptr %i.uf, align 8, !noalias !1443
  %i.ug = call noundef ptr @_ZN8WasmEdge6Plugin6Plugin4findESt17basic_string_viewIcSt11char_traitsIcEE(i64 24, ptr nonnull @.str.13) #27, !noalias !1443 ; 2 uses
  %.not.i206 = icmp eq ptr %i.ug, null
  br i1 %.not.i206, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit205
  %i.uh = call noundef ptr @_ZNK8WasmEdge6Plugin6Plugin10findModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(224) %i.ug, i64 24, ptr nonnull @.str.13) #27, !noalias !1443 ; 2 uses
  %.not9.i207 = icmp eq ptr %i.uh, null
  br i1 %.not9.i207, label %bb.cb, label %.critedge.i208

.critedge.i208:                                   ; preds = %bb.ca
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !1353, !noalias !1444, !nonnull !165, !noundef !165 ; 2 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  %i.uk = load ptr, ptr %i.uj, align 8, !tbaa !1356, !noalias !1444
  %i.ul = call noundef ptr %i.uk(ptr noundef nonnull %i.ui) #27, !noalias !1444, !inline_history !1320
  br label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host33WasmEdgeStableDiffusionModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit

bb.cb:                                            ; preds = %bb.ca, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit205
  %i.um = call noundef ptr @_ZN6spdlog18default_logger_rawEv(), !noalias !1443
  call void @llvm.lifetime.start.p0(ptr nonnull %1), !noalias !1443
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false), !noalias !1443
  call void @_ZN6spdlog6logger4log_IJRSt17basic_string_viewIcSt11char_traitsIcEES6_EEEvNS_10source_locENS_5level10level_enumEN3fmt3v1117basic_string_viewIcEEDpOT_(ptr noundef nonnull align 8 dereferenceable(208) %i.um, ptr noundef nonnull byval(%"struct.spdlog::source_loc") align 8 %1, i32 noundef 1, ptr nonnull @.str.216, i64 53, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %1), !noalias !1443
  %i.un = call noalias noundef nonnull dereferenceable(952) ptr @_Znwm(i64 noundef 952) #28, !noalias !1445 ; 3 uses
  invoke void @_ZN8WasmEdge4Host33WasmEdgeStableDiffusionModuleMockC2Ev(ptr noundef nonnull align 8 dereferenceable(952) %i.un)
          to label %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host33WasmEdgeStableDiffusionModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit unwind label %bb.cc, !noalias !1445

bb.cc:                                            ; preds = %bb.cb
  %i.uo = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.un, i64 noundef 952) #30, !noalias !1445
  br label %common.resume

_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host33WasmEdgeStableDiffusionModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit: ; preds = %.critedge.i208, %bb.cb
  %storemerge.i209 = phi ptr [ %i.ul, %.critedge.i208 ], [ %i.un, %bb.cb ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.up = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.uq = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i210 = icmp eq ptr %i.up, %i.uq
  br i1 %.not.i.i210, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host33WasmEdgeStableDiffusionModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.ur = ptrtoint ptr %storemerge.i209 to i64
  store i64 %i.ur, ptr %i.up, align 8, !tbaa !189
  %i.us = getelementptr inbounds nuw i8, ptr %i.up, i64 8
  store ptr %i.us, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit215

bb.ce:                                            ; preds = %_ZN8WasmEdge2VM12_GLOBAL__N_118createPluginModuleINS_4Host33WasmEdgeStableDiffusionModuleMockEEESt10unique_ptrINS_7Runtime8Instance14ModuleInstanceESt14default_deleteIS8_EESt17basic_string_viewIcSt11char_traitsIcEESF_.exit
  %i.ut = load ptr, ptr %i.b, align 8, !tbaa !308 ; 7 uses
  %i.uu = ptrtoint ptr %i.up to i64               ; 2 uses
  %i.uv = ptrtoint ptr %i.ut to i64               ; 2 uses
  %i.uw = sub i64 %i.uu, %i.uv                    ; 4 uses
  %i.ux = icmp eq i64 %i.uw, 9223372036854775800
  br i1 %i.ux, label %bb.cf, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i512

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc530 unwind label %bb.cs

.noexc530:                                        ; preds = %bb.cf
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i512: ; preds = %bb.ce
  %i.uy = ashr exact i64 %i.uw, 3                 ; 3 uses
  %.sroa.speculated.i.i513 = call i64 @llvm.umax.i64(i64 %i.uy, i64 1)
  %i.uz = add nsw i64 %.sroa.speculated.i.i513, %i.uy ; 2 uses
  %i.va = icmp ult i64 %i.uz, %i.uy
  %i.vb = call i64 @llvm.umin.i64(i64 %i.uz, i64 1152921504606846975)
  %i.vc = select i1 %i.va, i64 1152921504606846975, i64 %i.vb ; 3 uses
  %.not.i.i514 = icmp ne i64 %i.vc, 0
  call void @llvm.assume(i1 %.not.i.i514)
  %i.vd = shl nuw nsw i64 %i.vc, 3
  %i.ve = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vd) #28
          to label %.noexc531 unwind label %bb.cs ; 7 uses

.noexc531:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i512
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 %i.uw
  %i.vg = ptrtoint ptr %storemerge.i209 to i64
  store i64 %i.vg, ptr %i.vf, align 8, !tbaa !189
  %.not10.i.i.i.i515 = icmp eq ptr %i.ut, %i.up
  br i1 %.not10.i.i.i.i515, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i527, label %.lr.ph.i.i.i.i516.preheader

.lr.ph.i.i.i.i516.preheader:                      ; preds = %.noexc531
  %i.vh = add i64 %i.uu, -8
  %i.vi = sub i64 %i.vh, %i.uv                    ; 2 uses
  %i.vj = lshr i64 %i.vi, 3
  %i.vk = add nuw nsw i64 %i.vj, 1                ; 2 uses
  %min.iters.check1087 = icmp ult i64 %i.vi, 24
  br i1 %min.iters.check1087, label %.lr.ph.i.i.i.i516.preheader1165, label %vector.ph1088

vector.ph1088:                                    ; preds = %.lr.ph.i.i.i.i516.preheader
  %n.vec1089 = and i64 %i.vk, 4611686018427387900 ; 3 uses
  %i.vl = shl i64 %n.vec1089, 3                   ; 2 uses
  %i.vm = getelementptr i8, ptr %i.ve, i64 %i.vl  ; 2 uses
  %i.vn = getelementptr i8, ptr %i.ut, i64 %i.vl
  br label %vector.body1090

vector.body1090:                                  ; preds = %vector.body1090, %vector.ph1088
  %index1091 = phi i64 [ 0, %vector.ph1088 ], [ %index.next1096, %vector.body1090 ] ; 2 uses
  %i.vo = shl i64 %index1091, 3                   ; 2 uses
  %next.gep1092 = getelementptr i8, ptr %i.ve, i64 %i.vo ; 2 uses
  %next.gep1093 = getelementptr i8, ptr %i.ut, i64 %i.vo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.vp = getelementptr i8, ptr %next.gep1093, i64 16
  %wide.load1094 = load <2 x i64>, ptr %next.gep1093, align 8, !tbaa !189, !alias.scope !1447
  %wide.load1095 = load <2 x i64>, ptr %i.vp, align 8, !tbaa !189, !alias.scope !1447
  %i.vq = getelementptr i8, ptr %next.gep1092, i64 16
  store <2 x i64> %wide.load1094, ptr %next.gep1092, align 8, !tbaa !189, !alias.scope !1446
  store <2 x i64> %wide.load1095, ptr %i.vq, align 8, !tbaa !189, !alias.scope !1446
  %50 = getelementptr i8, ptr %next.gep1093, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1093, align 8, !tbaa !189, !alias.scope !1447
  store <2 x ptr> splat (ptr null), ptr %50, align 8, !tbaa !189, !alias.scope !1447
  %index.next1096 = add nuw i64 %index1091, 4     ; 2 uses
  %i.vr = icmp eq i64 %index.next1096, %n.vec1089
  br i1 %i.vr, label %middle.block1097, label %vector.body1090, !llvm.loop !1326

middle.block1097:                                 ; preds = %vector.body1090
  %cmp.n1098 = icmp eq i64 %i.vk, %n.vec1089
  br i1 %cmp.n1098, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i527, label %.lr.ph.i.i.i.i516.preheader1165

.lr.ph.i.i.i.i516.preheader1165:                  ; preds = %.lr.ph.i.i.i.i516.preheader, %middle.block1097
  %.012.i.i.i.i517.ph = phi ptr [ %i.ve, %.lr.ph.i.i.i.i516.preheader ], [ %i.vm, %middle.block1097 ]
  %.0911.i.i.i.i518.ph = phi ptr [ %i.ut, %.lr.ph.i.i.i.i516.preheader ], [ %i.vn, %middle.block1097 ]
  br label %.lr.ph.i.i.i.i516

.lr.ph.i.i.i.i516:                                ; preds = %.lr.ph.i.i.i.i516.preheader1165, %.lr.ph.i.i.i.i516
  %.012.i.i.i.i517 = phi ptr [ %i.vu, %.lr.ph.i.i.i.i516 ], [ %.012.i.i.i.i517.ph, %.lr.ph.i.i.i.i516.preheader1165 ] ; 2 uses
  %.0911.i.i.i.i518 = phi ptr [ %i.vt, %.lr.ph.i.i.i.i516 ], [ %.0911.i.i.i.i518.ph, %.lr.ph.i.i.i.i516.preheader1165 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1446)
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %i.vs = load i64, ptr %.0911.i.i.i.i518, align 8, !tbaa !189, !alias.scope !1447
  store i64 %i.vs, ptr %.012.i.i.i.i517, align 8, !tbaa !189, !alias.scope !1446
  store ptr null, ptr %.0911.i.i.i.i518, align 8, !tbaa !189, !alias.scope !1447
  %i.vt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i518, i64 8 ; 2 uses
  %i.vu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i517, i64 8 ; 2 uses
  %.not.i.i.i.i519 = icmp eq ptr %i.vt, %i.up
  br i1 %.not.i.i.i.i519, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i527, label %.lr.ph.i.i.i.i516, !llvm.loop !1327

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i527: ; preds = %.lr.ph.i.i.i.i516, %middle.block1097, %.noexc531
  %.0.lcssa.i.i.i.i521 = phi ptr [ %i.ve, %.noexc531 ], [ %i.vm, %middle.block1097 ], [ %i.vu, %.lr.ph.i.i.i.i516 ]
  %i.vv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i521, i64 8
  %.not.i23.i529 = icmp eq ptr %i.ut, null
  br i1 %.not.i23.i529, label %.noexc211, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i527
  call void @_ZdlPvm(ptr noundef nonnull %i.ut, i64 noundef %i.uw) #30
  br label %.noexc211

.noexc211:                                        ; preds = %bb.cg, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i527
  store ptr %i.ve, ptr %i.b, align 8, !tbaa !308
  store ptr %i.vv, ptr %i.d, align 8, !tbaa !309
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %i.ve, i64 %i.vc
  store ptr %i.vw, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit215

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit215: ; preds = %bb.cd, %.noexc211
  %i.vx = call { ptr, i64 } @_ZN8WasmEdge6Plugin6Plugin7pluginsEv() #27 ; 2 uses
  %i.vy = extractvalue { ptr, i64 } %i.vx, 0      ; 2 uses
  %i.vz = extractvalue { ptr, i64 } %i.vx, 1      ; 2 uses
  %.idx = mul nuw nsw i64 %i.vz, 224
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vy, i64 %.idx
  %.not677 = icmp eq i64 %i.vz, 0
  br i1 %.not677, label %._crit_edge680, label %.lr.ph679

.lr.ph679:                                        ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit215
  %i.wb = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 5 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %37, i64 8
  %i.wd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 1920 ; 2 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %0, i64 1928 ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %0, i64 1936 ; 2 uses
  br label %bb.ct

._crit_edge680:                                   ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit215
  ret void

bb.ch:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.g
  %i.wh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i216 = icmp eq ptr %storemerge.i, null
  br i1 %.not.i216, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i217

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i217: ; preds = %bb.ch
  %i.wi = load ptr, ptr %storemerge.i, align 8, !tbaa !191
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wk = load ptr, ptr %i.wj, align 8
  call void %i.wk(ptr noundef nonnull align 8 dereferenceable(952) %storemerge.i) #27, !inline_history !0
  br label %common.resume

bb.ci:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i302, %bb.n
  %i.wl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i219 = icmp eq ptr %storemerge.i109, null
  br i1 %.not.i219, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i220

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i220: ; preds = %bb.ci
  %i.wm = load ptr, ptr %storemerge.i109, align 8, !tbaa !191
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8
  call void %i.wo(ptr noundef nonnull align 8 dereferenceable(952) %storemerge.i109) #27, !inline_history !0
  br label %common.resume

bb.cj:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i323, %bb.u
  %i.wp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i222 = icmp eq ptr %storemerge.i119, null
  br i1 %.not.i222, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i223

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i223: ; preds = %bb.cj
  %i.wq = load ptr, ptr %storemerge.i119, align 8, !tbaa !191
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 8
  %i.ws = load ptr, ptr %i.wr, align 8
  call void %i.ws(ptr noundef nonnull align 8 dereferenceable(952) %storemerge.i119) #27, !inline_history !0
  br label %common.resume

bb.ck:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i344, %bb.ab
  %i.wt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i225 = icmp eq ptr %storemerge.i129, null
  br i1 %.not.i225, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i226

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i226: ; preds = %bb.ck
  %i.wu = load ptr, ptr %storemerge.i129, align 8, !tbaa !191
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8
  call void %i.ww(ptr noundef nonnull align 8 dereferenceable(952) %storemerge.i129) #27, !inline_history !0
  br label %common.resume

bb.cl:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i365, %bb.ai
  %i.wx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i228 = icmp eq ptr %storemerge.i139, null
  br i1 %.not.i228, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i229

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i229: ; preds = %bb.cl
  %i.wy = load ptr, ptr %storemerge.i139, align 8, !tbaa !191
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 8
  %i.xa = load ptr, ptr %i.wz, align 8
  call void %i.xa(ptr noundef nonnull align 8 dereferenceable(952) %storemerge.i139) #27, !inline_history !0
  br label %common.resume

bb.cm:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i386, %bb.ap
  %i.xb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i231 = icmp eq ptr %storemerge.i149, null
  br i1 %.not.i231, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i232

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i232: ; preds = %bb.cm
  %i.xc = load ptr, ptr %storemerge.i149, align 8, !tbaa !191
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 8
  %i.xe = load ptr, ptr %i.xd, align 8
  call void %i.xe(ptr noundef nonnull align 8 dereferenceable(952) %storemerge.i149) #27, !inline_history !0
  br label %common.resume

bb.cn:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i407, %bb.aw
  %i.xf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i234 = icmp eq ptr %storemerge.i159, null
  br i1 %.not.i234, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i235

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i235: ; preds = %bb.cn
  %i.xg = load ptr, ptr %storemerge.i159, align 8, !tbaa !191
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8
  call void %i.xi(ptr noundef nonnull align 8 dereferenceable(952) %storemerge.i159) #27, !inline_history !0
  br label %common.resume

bb.co:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i428, %bb.bd
  %i.xj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i237 = icmp eq ptr %storemerge.i169, null
  br i1 %.not.i237, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i238

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i238: ; preds = %bb.co
  %i.xk = load ptr, ptr %storemerge.i169, align 8, !tbaa !191
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  %i.xm = load ptr, ptr %i.xl, align 8
  call void %i.xm(ptr noundef nonnull align 8 dereferenceable(952) %storemerge.i169) #27, !inline_history !0
  br label %common.resume

bb.cp:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i449, %bb.bk
  %i.xn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i240 = icmp eq ptr %storemerge.i179, null
  br i1 %.not.i240, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i241

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i241: ; preds = %bb.cp
  %i.xo = load ptr, ptr %storemerge.i179, align 8, !tbaa !191
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xq = load ptr, ptr %i.xp, align 8
  call void %i.xq(ptr noundef nonnull align 8 dereferenceable(952) %storemerge.i179) #27, !inline_history !0
  br label %common.resume

bb.cq:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i470, %bb.br
  %i.xr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i243 = icmp eq ptr %storemerge.i189, null
  br i1 %.not.i243, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i244

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i244: ; preds = %bb.cq
  %i.xs = load ptr, ptr %storemerge.i189, align 8, !tbaa !191
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 8
  %i.xu = load ptr, ptr %i.xt, align 8
  call void %i.xu(ptr noundef nonnull align 8 dereferenceable(952) %storemerge.i189) #27, !inline_history !0
  br label %common.resume

bb.cr:                                            ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i491, %bb.by
  %i.xv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i246 = icmp eq ptr %storemerge.i199, null
  br i1 %.not.i246, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i247

end_hunk_0
begin_hunk_1_@_ZN8WasmEdge2VM2VM21unsafeLoadPlugInHostsEv:bb.a
    i64 7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i255
    i64 12, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i259
    i64 16, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i263
    i64 19, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i267
    i64 23, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i271
    i64 14, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i275
    i64 24, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i279
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.da
  %i.zb = load i64, ptr %i.yz, align 1
  %i.zc = xor i64 %i.zb, 8751166287376507255
  %i.zd = getelementptr i8, ptr %i.yz, i64 3
  %i.ze = load i64, ptr %i.zd, align 1
  %i.zf = xor i64 %i.ze, 8031167702420905833
  %i.zg = or i64 %i.zc, %i.zf
  %i.zh = icmp ne i64 %i.zg, 0
  %i.zi = zext i1 %i.zh to i32
  %i.zj = icmp eq i32 %i.zi, 0
  br i1 %i.zj, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i255: ; preds = %bb.da
  %i.zk = load i32, ptr %i.yz, align 1
  %i.zl = xor i32 %i.zk, 1769169271
  %i.zm = getelementptr i8, ptr %i.yz, i64 3
  %i.zn = load i32, ptr %i.zm, align 1
  %i.zo = xor i32 %i.zn, 1852727145
  %i.zp = or i32 %i.zl, %i.zo
  %i.zq = icmp ne i32 %i.zp, 0
  %i.zr = zext i1 %i.zq to i32
  %i.zs = icmp eq i32 %i.zr, 0
  br i1 %i.zs, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i259: ; preds = %bb.da
  %i.zt = load i64, ptr %i.yz, align 1
  %i.zu = xor i64 %i.zt, 7453295065368322423
  %i.zv = getelementptr i8, ptr %i.yz, i64 8
  %i.zw = load i32, ptr %i.zv, align 1
  %i.zx = zext i32 %i.zw to i64
  %i.zy = xor i64 %i.zx, 1735289191
  %i.zz = or i64 %i.zu, %i.zy
  %i.aaa = icmp ne i64 %i.zz, 0
  %i.aab = zext i1 %i.aaa to i32
  %i.aac = icmp eq i32 %i.aab, 0
  br i1 %i.aac, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i263: ; preds = %bb.da
  %i.aad = load i128, ptr %i.yz, align 1
  %i.aae = icmp ne i128 %i.aad, 153460390055446072590500117507592118647
  %i.aaf = zext i1 %i.aae to i32
  %i.aag = icmp eq i32 %i.aaf, 0
  br i1 %i.aag, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i267: ; preds = %bb.da
  %i.aah = load i128, ptr %i.yz, align 1
  %i.aai = xor i128 %i.aah, 136175437904805086004045332427419378039
  %i.aaj = getelementptr i8, ptr %i.yz, i64 3
  %i.aak = load i128, ptr %i.aaj, align 1
  %i.aal = xor i128 %i.aak, 158756675066628152571896658885054063981
  %i.aam = or i128 %i.aai, %i.aal
  %i.aan = icmp ne i128 %i.aam, 0
  %i.aao = zext i1 %i.aan to i32
  %i.aap = icmp eq i32 %i.aao, 0
  br i1 %i.aap, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i271: ; preds = %bb.da
  %i.aaq = load i128, ptr %i.yz, align 1
  %i.aar = xor i128 %i.aaq, 136175437904805086004045332427419378039
  %i.aas = getelementptr i8, ptr %i.yz, i64 7
  %i.aat = load i128, ptr %i.aas, align 1
  %i.aau = xor i128 %i.aat, 134856472256479896974248294044059066213
  %i.aav = or i128 %i.aar, %i.aau
  %i.aaw = icmp ne i128 %i.aav, 0
  %i.aax = zext i1 %i.aaw to i32
  %i.aay = icmp eq i32 %i.aax, 0
  br i1 %i.aay, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i275: ; preds = %bb.da
  %i.aaz = load i64, ptr %i.yz, align 1
  %i.aba = xor i64 %i.aaz, 7306919307222671735
  %i.abb = getelementptr i8, ptr %i.yz, i64 6
  %i.abc = load i64, ptr %i.abb, align 1
  %i.abd = xor i64 %i.abc, 7306916042979108199
  %i.abe = or i64 %i.aba, %i.abd
  %i.abf = icmp ne i64 %i.abe, 0
  %i.abg = zext i1 %i.abf to i32
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i279: ; preds = %bb.da
  %i.abi = load i128, ptr %i.yz, align 1
  %i.abj = xor i128 %i.abi, 133449419855961551838812061597131039095
  %i.abk = getelementptr i8, ptr %i.yz, i64 16
  %i.abl = load i64, ptr %i.abk, align 1
  %i.abm = zext i64 %i.abl to i128
  %i.abn = xor i128 %i.abm, 7957695011198756457
  %i.abo = or i128 %i.abj, %i.abn
  %i.abp = icmp ne i128 %i.abo, 0
  %i.abq = zext i1 %i.abp to i32
  %i.abr = icmp eq i32 %i.abq, 0
  br i1 %i.abr, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.thread642

.thread642:                                       ; preds = %bb.da, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i255, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i259, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i263, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i267, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i271, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i275, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i279
  %i.abs = getelementptr inbounds nuw i8, ptr %.099678, i64 64
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !1470 ; 2 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %.099678, i64 72
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !1471 ; 2 uses
  %.not100671 = icmp eq ptr %i.abt, %i.abv
  br i1 %.not100671, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290, %.thread642
  %i.abw = getelementptr inbounds nuw i8, ptr %.099678, i64 88
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !1472 ; 2 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %.099678, i64 96
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !1473 ; 2 uses
  %.not101673 = icmp eq ptr %i.abx, %i.abz
  br i1 %.not101673, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.lr.ph676

.lr.ph:                                           ; preds = %.thread642, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290
  %.095672 = phi ptr [ %i.adq, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290 ], [ %i.abt, %.thread642 ] ; 2 uses
  %i.aca = load ptr, ptr %.095672, align 8, !tbaa !1353, !noalias !1474, !nonnull !165, !noundef !165 ; 2 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.aca, i64 16
  %i.acc = load ptr, ptr %i.acb, align 8, !tbaa !1356, !noalias !1474
  %i.acd = call noundef ptr %i.acc(ptr noundef nonnull %i.aca) #27, !noalias !1474, !inline_history !1330 ; 5 uses
  %i.ace = load ptr, ptr %i.d, align 8, !tbaa !309 ; 6 uses
  %i.acf = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i285 = icmp eq ptr %i.ace, %i.acf
  br i1 %.not.i.i285, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %.lr.ph
  %i.acg = ptrtoint ptr %i.acd to i64
  store i64 %i.acg, ptr %i.ace, align 8, !tbaa !189
  %i.ach = getelementptr inbounds nuw i8, ptr %i.ace, i64 8
  store ptr %i.ach, ptr %i.d, align 8, !tbaa !309
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290

bb.dc:                                            ; preds = %.lr.ph
  %i.aci = load ptr, ptr %i.b, align 8, !tbaa !308 ; 10 uses
  %i.acj = ptrtoint ptr %i.ace to i64             ; 2 uses
  %i.ack = ptrtoint ptr %i.aci to i64             ; 2 uses
  %i.acl = sub i64 %i.acj, %i.ack                 ; 4 uses
  %i.acm = icmp eq i64 %i.acl, 9223372036854775800
  br i1 %i.acm, label %bb.dd, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i533

bb.dd:                                            ; preds = %bb.dc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc551 unwind label %.loopexit.split-lp647.loopexit.split-lp

.noexc551:                                        ; preds = %bb.dd
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i533: ; preds = %bb.dc
  %i.acn = ashr exact i64 %i.acl, 3               ; 3 uses
  %.sroa.speculated.i.i534 = call i64 @llvm.umax.i64(i64 %i.acn, i64 1)
  %i.aco = add nsw i64 %.sroa.speculated.i.i534, %i.acn ; 2 uses
  %i.acp = icmp ult i64 %i.aco, %i.acn
  %i.acq = call i64 @llvm.umin.i64(i64 %i.aco, i64 1152921504606846975)
  %i.acr = select i1 %i.acp, i64 1152921504606846975, i64 %i.acq ; 3 uses
  %.not.i.i535 = icmp ne i64 %i.acr, 0
  call void @llvm.assume(i1 %.not.i.i535)
  %i.acs = shl nuw nsw i64 %i.acr, 3
  %i.act = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.acs) #28
          to label %.noexc552 unwind label %.loopexit.split-lp647.loopexit.split-lp ; 10 uses

.noexc552:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i533
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 %i.acl
  %i.acv = ptrtoint ptr %i.acd to i64
  store i64 %i.acv, ptr %i.acu, align 8, !tbaa !189
  %.not10.i.i.i.i536 = icmp eq ptr %i.aci, %i.ace
  br i1 %.not10.i.i.i.i536, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548, label %.lr.ph.i.i.i.i537.preheader

.lr.ph.i.i.i.i537.preheader:                      ; preds = %.noexc552
  %i.acw = add i64 %i.acj, -8
  %i.acx = sub i64 %i.acw, %i.ack                 ; 3 uses
  %i.acy = lshr i64 %i.acx, 3
  %i.acz = add nuw nsw i64 %i.acy, 1              ; 2 uses
  %min.iters.check1135 = icmp ult i64 %i.acx, 56
  br i1 %min.iters.check1135, label %.lr.ph.i.i.i.i537.preheader1154, label %vector.memcheck1136

vector.memcheck1136:                              ; preds = %.lr.ph.i.i.i.i537.preheader
  %i.ada = and i64 %i.acx, -8
  %i.adb = add i64 %i.ada, 8                      ; 2 uses
  %i.adc = getelementptr i8, ptr %i.act, i64 %i.adb
  %i.add = getelementptr i8, ptr %i.aci, i64 %i.adb
  %bound01137 = icmp ult ptr %i.act, %i.add
  %bound11138 = icmp ult ptr %i.aci, %i.adc
  %found.conflict1139 = and i1 %bound01137, %bound11138
  br i1 %found.conflict1139, label %.lr.ph.i.i.i.i537.preheader1154, label %vector.ph1140

vector.ph1140:                                    ; preds = %vector.memcheck1136
  %n.vec1141 = and i64 %i.acz, 4611686018427387900 ; 3 uses
  %i.ade = shl i64 %n.vec1141, 3                  ; 2 uses
  %i.adf = getelementptr i8, ptr %i.act, i64 %i.ade ; 2 uses
  %i.adg = getelementptr i8, ptr %i.aci, i64 %i.ade
  br label %vector.body1142

vector.body1142:                                  ; preds = %vector.body1142, %vector.ph1140
  %index1143 = phi i64 [ 0, %vector.ph1140 ], [ %index.next1148, %vector.body1142 ] ; 2 uses
  %i.adh = shl i64 %index1143, 3                  ; 2 uses
  %next.gep1144 = getelementptr i8, ptr %i.act, i64 %i.adh ; 2 uses
  %next.gep1145 = getelementptr i8, ptr %i.aci, i64 %i.adh ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  %i.adi = getelementptr i8, ptr %next.gep1145, i64 16
  %wide.load1146 = load <2 x i64>, ptr %next.gep1145, align 8, !tbaa !189, !alias.scope !1477
  %wide.load1147 = load <2 x i64>, ptr %i.adi, align 8, !tbaa !189, !alias.scope !1477
  %i.adj = getelementptr i8, ptr %next.gep1144, i64 16
  store <2 x i64> %wide.load1146, ptr %next.gep1144, align 8, !tbaa !189, !alias.scope !1478, !noalias !1479
  store <2 x i64> %wide.load1147, ptr %i.adj, align 8, !tbaa !189, !alias.scope !1478, !noalias !1479
  %51 = getelementptr i8, ptr %next.gep1145, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1145, align 8, !tbaa !189, !alias.scope !1477
  store <2 x ptr> splat (ptr null), ptr %51, align 8, !tbaa !189, !alias.scope !1477
  %index.next1148 = add nuw i64 %index1143, 4     ; 2 uses
  %i.adk = icmp eq i64 %index.next1148, %n.vec1141
  br i1 %i.adk, label %middle.block1149, label %vector.body1142, !llvm.loop !1337

middle.block1149:                                 ; preds = %vector.body1142
  %cmp.n1150 = icmp eq i64 %i.acz, %n.vec1141
  br i1 %cmp.n1150, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548, label %.lr.ph.i.i.i.i537.preheader1154

.lr.ph.i.i.i.i537.preheader1154:                  ; preds = %vector.memcheck1136, %.lr.ph.i.i.i.i537.preheader, %middle.block1149
  %.012.i.i.i.i538.ph = phi ptr [ %i.act, %vector.memcheck1136 ], [ %i.act, %.lr.ph.i.i.i.i537.preheader ], [ %i.adf, %middle.block1149 ]
  %.0911.i.i.i.i539.ph = phi ptr [ %i.aci, %vector.memcheck1136 ], [ %i.aci, %.lr.ph.i.i.i.i537.preheader ], [ %i.adg, %middle.block1149 ]
  br label %.lr.ph.i.i.i.i537

.lr.ph.i.i.i.i537:                                ; preds = %.lr.ph.i.i.i.i537.preheader1154, %.lr.ph.i.i.i.i537
  %.012.i.i.i.i538 = phi ptr [ %i.adn, %.lr.ph.i.i.i.i537 ], [ %.012.i.i.i.i538.ph, %.lr.ph.i.i.i.i537.preheader1154 ] ; 2 uses
  %.0911.i.i.i.i539 = phi ptr [ %i.adm, %.lr.ph.i.i.i.i537 ], [ %.0911.i.i.i.i539.ph, %.lr.ph.i.i.i.i537.preheader1154 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1475)
  call void @llvm.experimental.noalias.scope.decl(metadata !1476)
  %i.adl = load i64, ptr %.0911.i.i.i.i539, align 8, !tbaa !189, !alias.scope !1476
  store i64 %i.adl, ptr %.012.i.i.i.i538, align 8, !tbaa !189, !alias.scope !1475
  store ptr null, ptr %.0911.i.i.i.i539, align 8, !tbaa !189, !alias.scope !1476
  %i.adm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i539, i64 8 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i538, i64 8 ; 2 uses
  %.not.i.i.i.i540 = icmp eq ptr %i.adm, %i.ace
  br i1 %.not.i.i.i.i540, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548, label %.lr.ph.i.i.i.i537, !llvm.loop !1338

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548: ; preds = %.lr.ph.i.i.i.i537, %middle.block1149, %.noexc552
  %.0.lcssa.i.i.i.i542 = phi ptr [ %i.act, %.noexc552 ], [ %i.adf, %middle.block1149 ], [ %i.adn, %.lr.ph.i.i.i.i537 ]
  %i.ado = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i542, i64 8
  %.not.i23.i550 = icmp eq ptr %i.aci, null
  br i1 %.not.i23.i550, label %.noexc286, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548
  call void @_ZdlPvm(ptr noundef nonnull %i.aci, i64 noundef %i.acl) #30
  br label %.noexc286

.noexc286:                                        ; preds = %bb.de, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i548
  store ptr %i.act, ptr %i.b, align 8, !tbaa !308
  store ptr %i.ado, ptr %i.d, align 8, !tbaa !309
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.act, i64 %i.acr
  store ptr %i.adp, ptr %i.w, align 8, !tbaa !310
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit290: ; preds = %bb.db, %.noexc286
  %i.adq = getelementptr inbounds nuw i8, ptr %.095672, i64 8 ; 2 uses
  %.not100 = icmp eq ptr %i.adq, %i.abv
  br i1 %.not100, label %._crit_edge, label %.lr.ph

.loopexit.split-lp647.loopexit.split-lp:          ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i533, %bb.dd
  %lpad.loopexit.split-lp1156 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i291 = icmp eq ptr %i.acd, null
  br i1 %.not.i291, label %common.resume, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i292

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i292: ; preds = %.loopexit.split-lp647.loopexit.split-lp
  %i.adr = load ptr, ptr %i.acd, align 8, !tbaa !191
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 8
  %i.adt = load ptr, ptr %i.ads, align 8
  call void %i.adt(ptr noundef nonnull align 8 dereferenceable(952) %i.acd) #27, !inline_history !0
  br label %common.resume

.lr.ph676:                                        ; preds = %._crit_edge, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit
  %.0674 = phi ptr [ %i.afj, %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit ], [ %i.abx, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  %i.adu = load ptr, ptr %.0674, align 8, !tbaa !1482, !noalias !1480, !nonnull !165, !noundef !165 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 16
  %i.adw = load ptr, ptr %i.adv, align 8, !tbaa !1484, !noalias !1480
  %i.adx = call noundef ptr %i.adw(ptr noundef nonnull %i.adu) #27, !noalias !1480, !inline_history !1341 ; 2 uses
  store ptr %i.adx, ptr %38, align 8, !tbaa !304, !alias.scope !1480
  %i.ady = load ptr, ptr %i.wf, align 8, !tbaa !306 ; 6 uses
  %i.adz = load ptr, ptr %i.wg, align 8, !tbaa !307
  %.not.i.i294 = icmp eq ptr %i.ady, %i.adz
  %i.aea = ptrtoint ptr %i.adx to i64             ; 2 uses
  br i1 %.not.i.i294, label %bb.df, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread: ; preds = %.lr.ph676
  store i64 %i.aea, ptr %i.ady, align 8, !tbaa !304
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  store ptr %i.aeb, ptr %i.wf, align 8, !tbaa !306
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit

bb.df:                                            ; preds = %.lr.ph676
  %i.aec = load ptr, ptr %i.we, align 8, !tbaa !305 ; 10 uses
  %i.aed = ptrtoint ptr %i.ady to i64             ; 2 uses
  %i.aee = ptrtoint ptr %i.aec to i64             ; 2 uses
  %i.aef = sub i64 %i.aed, %i.aee                 ; 4 uses
  %i.aeg = icmp eq i64 %i.aef, 9223372036854775800
  br i1 %i.aeg, label %bb.dg, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.dg:                                            ; preds = %bb.df
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc569 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc569:                                        ; preds = %bb.dg
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.df
  %i.aeh = ashr exact i64 %i.aef, 3               ; 3 uses
  %.sroa.speculated.i.i554 = call i64 @llvm.umax.i64(i64 %i.aeh, i64 1)
  %i.aei = add nsw i64 %.sroa.speculated.i.i554, %i.aeh ; 2 uses
  %i.aej = icmp ult i64 %i.aei, %i.aeh
  %i.aek = call i64 @llvm.umin.i64(i64 %i.aei, i64 1152921504606846975)
  %i.ael = select i1 %i.aej, i64 1152921504606846975, i64 %i.aek ; 3 uses
  %.not.i.i555 = icmp ne i64 %i.ael, 0
  call void @llvm.assume(i1 %.not.i.i555)
  %i.aem = shl nuw nsw i64 %i.ael, 3
  %i.aen = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aem) #28
          to label %.noexc570 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 10 uses

.noexc570:                                        ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 %i.aef
  store i64 %i.aea, ptr %i.aeo, align 8, !tbaa !304
  %.not10.i.i.i.i556 = icmp eq ptr %i.aec, %i.ady
  br i1 %.not10.i.i.i.i556, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i557.preheader

.lr.ph.i.i.i.i557.preheader:                      ; preds = %.noexc570
  %i.aep = add i64 %i.aed, -8
  %i.aeq = sub i64 %i.aep, %i.aee                 ; 3 uses
  %i.aer = lshr i64 %i.aeq, 3
  %i.aes = add nuw nsw i64 %i.aer, 1              ; 2 uses
  %min.iters.check1109 = icmp ult i64 %i.aeq, 56
  br i1 %min.iters.check1109, label %.lr.ph.i.i.i.i557.preheader1153, label %vector.memcheck1110

vector.memcheck1110:                              ; preds = %.lr.ph.i.i.i.i557.preheader
  %i.aet = and i64 %i.aeq, -8
  %i.aeu = add i64 %i.aet, 8                      ; 2 uses
  %i.aev = getelementptr i8, ptr %i.aen, i64 %i.aeu
  %i.aew = getelementptr i8, ptr %i.aec, i64 %i.aeu
  %bound01111 = icmp ult ptr %i.aen, %i.aew
  %bound11112 = icmp ult ptr %i.aec, %i.aev
  %found.conflict1113 = and i1 %bound01111, %bound11112
  br i1 %found.conflict1113, label %.lr.ph.i.i.i.i557.preheader1153, label %vector.ph1114

vector.ph1114:                                    ; preds = %vector.memcheck1110
  %n.vec1115 = and i64 %i.aes, 4611686018427387900 ; 3 uses
  %i.aex = shl i64 %n.vec1115, 3                  ; 2 uses
  %i.aey = getelementptr i8, ptr %i.aen, i64 %i.aex ; 2 uses
  %i.aez = getelementptr i8, ptr %i.aec, i64 %i.aex
  br label %vector.body1116

vector.body1116:                                  ; preds = %vector.body1116, %vector.ph1114
  %index1117 = phi i64 [ 0, %vector.ph1114 ], [ %index.next1122, %vector.body1116 ] ; 2 uses
  %i.afa = shl i64 %index1117, 3                  ; 2 uses
  %next.gep1118 = getelementptr i8, ptr %i.aen, i64 %i.afa ; 2 uses
  %next.gep1119 = getelementptr i8, ptr %i.aec, i64 %i.afa ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.afb = getelementptr i8, ptr %next.gep1119, i64 16
  %wide.load1120 = load <2 x i64>, ptr %next.gep1119, align 8, !tbaa !304, !alias.scope !1487
  %wide.load1121 = load <2 x i64>, ptr %i.afb, align 8, !tbaa !304, !alias.scope !1487
  %i.afc = getelementptr i8, ptr %next.gep1118, i64 16
  store <2 x i64> %wide.load1120, ptr %next.gep1118, align 8, !tbaa !304, !alias.scope !1488, !noalias !1489
  store <2 x i64> %wide.load1121, ptr %i.afc, align 8, !tbaa !304, !alias.scope !1488, !noalias !1489
  %52 = getelementptr i8, ptr %next.gep1119, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1119, align 8, !tbaa !304, !alias.scope !1487
  store <2 x ptr> splat (ptr null), ptr %52, align 8, !tbaa !304, !alias.scope !1487
  %index.next1122 = add nuw i64 %index1117, 4     ; 2 uses
  %i.afd = icmp eq i64 %index.next1122, %n.vec1115
  br i1 %i.afd, label %middle.block1123, label %vector.body1116, !llvm.loop !1348

middle.block1123:                                 ; preds = %vector.body1116
  %cmp.n1124 = icmp eq i64 %i.aes, %n.vec1115
  br i1 %cmp.n1124, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i557.preheader1153

.lr.ph.i.i.i.i557.preheader1153:                  ; preds = %vector.memcheck1110, %.lr.ph.i.i.i.i557.preheader, %middle.block1123
  %.012.i.i.i.i558.ph = phi ptr [ %i.aen, %vector.memcheck1110 ], [ %i.aen, %.lr.ph.i.i.i.i557.preheader ], [ %i.aey, %middle.block1123 ]
  %.0911.i.i.i.i559.ph = phi ptr [ %i.aec, %vector.memcheck1110 ], [ %i.aec, %.lr.ph.i.i.i.i557.preheader ], [ %i.aez, %middle.block1123 ]
  br label %.lr.ph.i.i.i.i557

.lr.ph.i.i.i.i557:                                ; preds = %.lr.ph.i.i.i.i557.preheader1153, %.lr.ph.i.i.i.i557
  %.012.i.i.i.i558 = phi ptr [ %i.afg, %.lr.ph.i.i.i.i557 ], [ %.012.i.i.i.i558.ph, %.lr.ph.i.i.i.i557.preheader1153 ] ; 2 uses
  %.0911.i.i.i.i559 = phi ptr [ %i.aff, %.lr.ph.i.i.i.i557 ], [ %.0911.i.i.i.i559.ph, %.lr.ph.i.i.i.i557.preheader1153 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1485)
  call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.afe = load i64, ptr %.0911.i.i.i.i559, align 8, !tbaa !304, !alias.scope !1486
  store i64 %i.afe, ptr %.012.i.i.i.i558, align 8, !tbaa !304, !alias.scope !1485
  store ptr null, ptr %.0911.i.i.i.i559, align 8, !tbaa !304, !alias.scope !1486
  %i.aff = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i559, i64 8 ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i558, i64 8 ; 2 uses
  %.not.i.i.i.i560 = icmp eq ptr %i.aff, %i.ady
  br i1 %.not.i.i.i.i560, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i557, !llvm.loop !1349

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i557, %middle.block1123, %.noexc570
  %.0.lcssa.i.i.i.i561 = phi ptr [ %i.aen, %.noexc570 ], [ %i.aey, %middle.block1123 ], [ %i.afg, %.lr.ph.i.i.i.i557 ]
  %i.afh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i561, i64 8
  %.not.i23.i568 = icmp eq ptr %i.aec, null
  br i1 %.not.i23.i568, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aec, i64 noundef %i.aef) #30
  br label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, %bb.dh
  store ptr %i.aen, ptr %i.we, align 8, !tbaa !305
  store ptr %i.afh, ptr %i.wf, align 8, !tbaa !306
  %i.afi = getelementptr inbounds nuw [8 x i8], ptr %i.aen, i64 %i.ael
  store ptr %i.afi, ptr %i.wg, align 8, !tbaa !307
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE9push_backEOS7_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  %i.afj = getelementptr inbounds nuw i8, ptr %.0674, i64 8 ; 2 uses
  %.not101 = icmp eq ptr %i.afj, %i.abz
  br i1 %.not101, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit, label %.lr.ph676

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.dg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %38) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #27
  br label %common.resume

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance17ComponentInstanceESt14default_deleteIS3_EED2Ev.exit, %._crit_edge, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i279, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i275, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i271, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i267, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i263, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i259, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i255, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.afk = getelementptr inbounds nuw i8, ptr %.099678, i64 224 ; 2 uses
  %.not = icmp eq ptr %i.afk, %i.wa
  br i1 %.not, label %._crit_edge680, label %bb.ct
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge2VM2VM26unsafeRegisterBuiltInHostsEv(ptr noundef nonnull align 8 dereferenceable(1960) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.cxx20::expected", align 4   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1856
  %.sroa.04.07 = load ptr, ptr %i.a, align 8, !tbaa !194 ; 2 uses
  %.not8 = icmp eq ptr %.sroa.04.07, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1952
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.04.09 = phi ptr [ %.sroa.04.07, %.lr.ph ], [ %.sroa.04.0, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !300, !nonnull !165, !align !301
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN8WasmEdge8Executor8Executor14registerModuleERNS_7Runtime12StoreManagerERKNS2_8Instance14ModuleInstanceE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %1, ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(952) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %.sroa.04.0 = load ptr, ptr %.sroa.04.09, align 8, !tbaa !194 ; 2 uses
  %.not = icmp eq ptr %.sroa.04.0, null
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge2VM2VM25unsafeRegisterPlugInHostsEv(ptr noundef nonnull align 8 dereferenceable(1960) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.cxx20::expected", align 4   ; 3 uses
  %2 = alloca %"class.cxx20::expected", align 4   ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !302  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !302  ; 2 uses
  %.not15 = icmp eq ptr %i.b, %i.d
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1952
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1920
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !303  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1928
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !303  ; 2 uses
  %.not1417 = icmp eq ptr %i.h, %i.j
  br i1 %.not1417, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %._crit_edge
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1952
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.011.016 = phi ptr [ %i.b, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !300, !nonnull !165, !align !301
  %i.n = load ptr, ptr %.sroa.011.016, align 8, !tbaa !189
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  call void @_ZN8WasmEdge8Executor8Executor14registerModuleERNS_7Runtime12StoreManagerERKNS2_8Instance14ModuleInstanceE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %1, ptr noundef nonnull align 8 dereferenceable(328) %i.e, ptr noundef nonnull align 8 dereferenceable(160) %i.m, ptr noundef nonnull align 8 dereferenceable(952) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.011.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.o, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge21:                                    ; preds = %bb.c, %._crit_edge
  ret void

bb.c:                                             ; preds = %.lr.ph20, %bb.c
  %.sroa.07.018 = phi ptr [ %i.h, %.lr.ph20 ], [ %i.r, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !300, !nonnull !165, !align !301
  %i.q = load ptr, ptr %.sroa.07.018, align 8, !tbaa !304
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN8WasmEdge8Executor8Executor17registerComponentERNS_7Runtime12StoreManagerERKNS2_8Instance17ComponentInstanceE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %2, ptr noundef nonnull align 8 dereferenceable(328) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.p, ptr noundef nonnull align 8 dereferenceable(800) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.07.018, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.r, %i.j
  br i1 %.not14, label %._crit_edge21, label %bb.c
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare { ptr, i64 } @_ZN8WasmEdge6Plugin6Plugin7pluginsEv() local_unnamed_addr #4

declare void @_ZN8WasmEdge8Executor8Executor14registerModuleERNS_7Runtime12StoreManagerERKNS2_8Instance14ModuleInstanceE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(952)) local_unnamed_addr #5

declare void @_ZN8WasmEdge8Executor8Executor17registerComponentERNS_7Runtime12StoreManagerERKNS2_8Instance17ComponentInstanceE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(160), ptr noundef nonnull align 8 dereferenceable(800)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge2VM2VM20unsafeRegisterModuleESt17basic_string_viewIcSt11char_traitsIcEERKNSt10filesystem7__cxx114pathE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1960) %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cxx20::expected.430", align 8 ; 10 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !337
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %i.a, align 8, !tbaa !337
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @_ZN8WasmEdge6Loader6Loader11parseModuleERKNSt10filesystem7__cxx114pathE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.430") align 8 %5, ptr noundef nonnull align 8 dereferenceable(368) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %4)
  %i.e = load i8, ptr %5, align 8, !tbaa !339, !range !164, !noundef !165
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !319
  store i8 0, ptr %0, align 4, !tbaa !341
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !319
  br label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !313  ; 2 uses
  store i64 %i.k, ptr %6, align 8, !tbaa !313
  store ptr null, ptr %i.j, align 8, !tbaa !313
  %.cast = inttoptr i64 %i.k to ptr               ; 3 uses
  invoke void @_ZN8WasmEdge2VM2VM20unsafeRegisterModuleESt17basic_string_viewIcSt11char_traitsIcEERKNS_3AST6ModuleE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(1960) %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(705) %.cast)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.d
  call void @_ZN8WasmEdge3AST6ModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(705) dereferenceable(705) %.cast) #27
  call void @_ZdlPvm(ptr noundef nonnull %.cast, i64 noundef 712) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  %.pre = load i8, ptr %5, align 8, !tbaa !339, !range !164
  %i.m = trunc nuw i8 %.pre to i1
  br i1 %i.m, label %bb.g, label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !313  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit, label %_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit.i.i.i: ; preds = %bb.g
  call void @_ZN8WasmEdge3AST6ModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(705) dereferenceable(705) %i.o) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 712) #30
  br label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit: ; preds = %.thread, %bb.f, %bb.g, %_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

declare void @_ZN8WasmEdge6Loader6Loader11parseModuleERKNSt10filesystem7__cxx114pathE(ptr dead_on_unwind writable sret(%"class.cxx20::expected.430") align 8, ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge2VM2VM20unsafeRegisterModuleESt17basic_string_viewIcSt11char_traitsIcEERKNS_3AST6ModuleE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1960) %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(705) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cxx20::expected", align 4   ; 6 uses
  %6 = alloca %"class.cxx20::expected.516", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !337
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %i.a, align 8, !tbaa !337
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 832
  call void @_ZN8WasmEdge9Validator9Validator8validateERKNS_3AST6ModuleE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected") align 4 %5, ptr noundef nonnull align 8 dereferenceable(624) %i.d, ptr noundef nonnull align 8 dereferenceable(705) %4)
  %i.e = load i8, ptr %5, align 4, !tbaa !341, !range !164, !noundef !165
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !319
  store i8 0, ptr %0, align 4, !tbaa !341
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !319
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1456
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1952
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !300, !nonnull !165, !align !301
  call void @_ZN8WasmEdge8Executor8Executor14registerModuleERNS_7Runtime12StoreManagerERKNS_3AST6ModuleESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.516") align 8 %6, ptr noundef nonnull align 8 dereferenceable(328) %i.j, ptr noundef nonnull align 8 dereferenceable(160) %i.l, ptr noundef nonnull align 8 dereferenceable(705) %4, i64 %2, ptr %3)
  %i.m = load i8, ptr %6, align 8, !tbaa !343, !range !164, !noundef !165
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  br i1 %i.n, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  %i.p = load i32, ptr %i.o, align 8, !tbaa !319
  store i8 0, ptr %0, align 4, !tbaa !341
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.p, ptr %i.q, align 4, !tbaa !319
  br label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS6_EENS3_7ErrCodeELb0ELb1EED2Ev.exit16

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.o, align 8, !tbaa !189  ; 4 uses
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !189
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 1816 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1824 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !309  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1832 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !310
  %.not.i.i = icmp eq ptr %i.v, %i.x
  br i1 %.not.i.i, label %bb.g, label %.thread31

.thread31:                                        ; preds = %bb.f
  store i64 %i.r, ptr %i.v, align 8, !tbaa !189
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr %i.y, ptr %i.u, align 8, !tbaa !309
  br label %.sink.split

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !308  ; 7 uses
  %i.aa = ptrtoint ptr %i.v to i64                ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.h, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
          to label %.noexc18 unwind label %bb.i

.noexc18:                                         ; preds = %bb.h
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.g
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 4 uses
  %.not.i.i17 = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %.not.i.i17)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #28
          to label %.noexc19 unwind label %bb.i   ; 9 uses

.noexc19:                                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ac
  store i64 %i.r, ptr %i.al, align 8, !tbaa !189
  %.not10.i.i.i.i = icmp eq ptr %i.z, %i.v
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %.noexc19
  %i.am = add i64 %i.aa, -8
  %i.an = sub i64 %i.am, %i.ab                    ; 2 uses
  %i.ao = lshr i64 %i.an, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.an, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.aq = shl i64 %n.vec, 3                       ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ak, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %i.z, i64 %i.aq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ak, i64 %i.at ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.z, i64 %i.at ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %i.au = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !189, !alias.scope !1496
  %wide.load36 = load <2 x i64>, ptr %i.au, align 8, !tbaa !189, !alias.scope !1496
  %i.av = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !189, !alias.scope !1495
  store <2 x i64> %wide.load36, ptr %i.av, align 8, !tbaa !189, !alias.scope !1495
  %7 = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !189, !alias.scope !1496
  store <2 x ptr> splat (ptr null), ptr %7, align 8, !tbaa !189, !alias.scope !1496
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !1493

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i.preheader38

.lr.ph.i.i.i.i.preheader38:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.ar, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader38, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader38 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader38 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1495)
  call void @llvm.experimental.noalias.scope.decl(metadata !1496)
  %i.ax = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !189, !alias.scope !1496
  store i64 %i.ax, ptr %.012.i.i.i.i, align 8, !tbaa !189, !alias.scope !1495
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !189, !alias.scope !1496
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ay, %i.v
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !1494

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %.noexc19
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ak, %.noexc19 ], [ %i.ar, %middle.block ], [ %i.az, %.lr.ph.i.i.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %i.z, null
  br i1 %.not.i23.i, label %.thread33, label %bb.k

.thread33:                                        ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  store ptr %i.ak, ptr %i.t, align 8, !tbaa !308
  store ptr %i.ba, ptr %i.u, align 8, !tbaa !309
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bb, ptr %i.w, align 8, !tbaa !310
  br label %.sink.split

bb.i:                                             ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit.i, %bb.h
  %i.bc = landingpad { ptr, i32 }
          cleanup
  %.not.i11 = icmp eq i64 %i.r, 0
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit13, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i12

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i12: ; preds = %bb.i
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !191
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(952) %i.s) #27, !inline_history !0
  br label %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit13

_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit13: ; preds = %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i12, %bb.i
  %i.bg = load i8, ptr %6, align 8, !tbaa !343, !range !164, !noundef !165
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.j, label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS6_EENS3_7ErrCodeELb0ELb1EED2Ev.exit

bb.j:                                             ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit13
  %i.bi = load ptr, ptr %i.o, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i, label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS6_EENS3_7ErrCodeELb0ELb1EED2Ev.exit, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i.i.i: ; preds = %bb.j
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !191
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(952) %i.bi) #27, !inline_history !9
  br label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS6_EENS3_7ErrCodeELb0ELb1EED2Ev.exit

_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS6_EENS3_7ErrCodeELb0ELb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS3_EED2Ev.exit13, %bb.j, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %i.bc

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #30
  %.pre.pre.pre = load i8, ptr %6, align 8, !tbaa !343, !range !164
  %i.bm = trunc nuw i8 %.pre.pre.pre to i1
  store ptr %i.ak, ptr %i.t, align 8, !tbaa !308
  store ptr %i.ba, ptr %i.u, align 8, !tbaa !309
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.bn, ptr %i.w, align 8, !tbaa !310
  store i64 1, ptr %0, align 4
  br i1 %i.bm, label %bb.l, label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS6_EENS3_7ErrCodeELb0ELb1EED2Ev.exit16

.sink.split:                                      ; preds = %.thread31, %.thread33
  store i64 1, ptr %0, align 4
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !189 ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i14, label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS6_EENS3_7ErrCodeELb0ELb1EED2Ev.exit16, label %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i.i.i15

_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i.i.i15: ; preds = %bb.l
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !191
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(952) %i.bp) #27, !inline_history !9
  br label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS6_EENS3_7ErrCodeELb0ELb1EED2Ev.exit16

_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS6_EENS3_7ErrCodeELb0ELb1EED2Ev.exit16: ; preds = %.thread, %bb.k, %bb.l, %_ZNKSt14default_deleteIN8WasmEdge7Runtime8Instance14ModuleInstanceEEclEPS3_.exit.i.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance14ModuleInstanceESt14default_deleteIS6_EENS3_7ErrCodeELb0ELb1EED2Ev.exit16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !339, !range !164, !noundef !165
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EE14destruct_valueEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !313  ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EE14destruct_valueEv.exit, label %_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit.i.i: ; preds = %bb.b
  tail call void @_ZN8WasmEdge3AST6ModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(705) dereferenceable(705) %i.d) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 712) #30
  br label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EE14destruct_valueEv.exit

_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EE14destruct_valueEv.exit: ; preds = %_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit.i.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8WasmEdge2VM2VM20unsafeRegisterModuleESt17basic_string_viewIcSt11char_traitsIcEEN5cxx204spanIKhLm18446744073709551615EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cxx20::expected") align 4 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1960) %1, i64 %2, ptr %3, ptr %4, i64 %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.cxx20::expected.430", align 8 ; 10 uses
  %7 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !337
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 2, ptr %i.a, align 8, !tbaa !337
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @_ZN8WasmEdge6Loader6Loader11parseModuleEN5cxx204spanIKhLm18446744073709551615EEE(ptr dead_on_unwind nonnull writable sret(%"class.cxx20::expected.430") align 8 %6, ptr noundef nonnull align 8 dereferenceable(368) %i.d, ptr %4, i64 %5)
  %i.e = load i8, ptr %6, align 8, !tbaa !339, !range !164, !noundef !165
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !319
  store i8 0, ptr %0, align 4, !tbaa !341
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.h, ptr %i.i, align 4, !tbaa !319
  br label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !313  ; 2 uses
  store i64 %i.k, ptr %7, align 8, !tbaa !313
  store ptr null, ptr %i.j, align 8, !tbaa !313
  %.cast = inttoptr i64 %i.k to ptr               ; 3 uses
  invoke void @_ZN8WasmEdge2VM2VM20unsafeRegisterModuleESt17basic_string_viewIcSt11char_traitsIcEERKNS_3AST6ModuleE(ptr dead_on_unwind writable sret(%"class.cxx20::expected") align 4 %0, ptr noundef nonnull align 8 dereferenceable(1960) %1, i64 %2, ptr %3, ptr noundef nonnull align 8 dereferenceable(705) %.cast)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  resume { ptr, i32 } %i.l

bb.f:                                             ; preds = %bb.d
  call void @_ZN8WasmEdge3AST6ModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(705) dereferenceable(705) %.cast) #27
  call void @_ZdlPvm(ptr noundef nonnull %.cast, i64 noundef 712) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %.pre = load i8, ptr %6, align 8, !tbaa !339, !range !164
  %i.m = trunc nuw i8 %.pre to i1
  br i1 %i.m, label %bb.g, label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !313  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %_ZN5cxx206detail21expected_storage_baseISt10unique_ptrIN8WasmEdge3AST6ModuleESt14default_deleteIS5_EENS3_7ErrCodeELb0ELb1EED2Ev.exit, label %_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN8WasmEdge3AST6ModuleEEclEPS2_.exit.i.i.i: ; preds = %bb.g
  call void @_ZN8WasmEdge3AST6ModuleD2Ev(ptr noundef nonnull align 8 dead_on_return(705) dereferenceable(705) %i.o) #27
  call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 712) #30
end_hunk_1
begin_hunk_2_@_ZN8WasmEdge7Runtime8Instance14ModuleInstance21unsafeAddHostInstanceINS1_16FunctionInstanceEJEEENSt9enable_ifIX9IsEntityVIT_EEvE4typeESt17basic_string_viewIcSt11char_traitsIcEERSt6vectorISt10unique_ptrIS6_St14default_deleteIS6_EESaISH_EERSD_IPS6_SaISL_EERSt3mapINSt7__cxx1112basic_stringIcSB_SaIcEEESL_St4lessIvESaISt4pairIKST_SL_EEEOSH_:bb.a
  store i8 0, ptr %i.aq, align 1, !tbaa !319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.ar = load ptr, ptr %i.k, align 8, !tbaa !1044
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -8
  %i.at = invoke { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE16insert_or_assignIRSA_EESD_ISt17_Rb_tree_iteratorISF_EbEOS5_OT_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %7, align 8, !tbaa !318   ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.af
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.m
  %i.aw = load i64, ptr %i.af, align 8, !tbaa !319
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.n:                                             ; preds = %bb.l
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %7, align 8, !tbaa !318   ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.af
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.n
  %i.bb = load i64, ptr %i.af, align 8, !tbaa !319
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  resume { ptr, i32 } %i.ay
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE16insert_or_assignIRSA_EESD_ISt17_Rb_tree_iteratorISF_EbEOS5_OT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::tuple.2030", align 8   ; 4 uses
  %4 = alloca %"class.std::tuple.2033", align 8   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !336  ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !336  ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !318
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i.i, 0        ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 8 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !548 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit, label %bb.b, !llvm.loop !2179

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !336  ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !318
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNKSt4lessIvEclIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSB_OSC_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSB_OSC_.exit

_ZNKSt4lessIvEclIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSB_OSC_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ], [ %.0.i6.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit, %_ZNKSt4lessIvEclIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSB_OSC_.exit
  %.08.lcssa.i.i.i16 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessIvEclIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSB_OSC_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPN8WasmEdge7Runtime8Instance16FunctionInstanceESt4lessIvESaISt4pairIKS5_SA_EEE11lower_boundERSE_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store ptr %1, ptr %3, align 8, !tbaa !1045, !alias.scope !2184
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %2, ptr %4, align 8, !tbaa !1044, !alias.scope !2185
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESO_IJRSC_EEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i16, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.e

bb.d:                                             ; preds = %_ZNKSt4lessIvEclIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSB_OSC_.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !747
  %i.z = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  store ptr %i.y, ptr %i.z, align 8, !tbaa !572
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %.sroa.014.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %bb.d ]
  %.sroa.3.0 = phi i8 [ 1, %.critedge ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.014.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !746  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !745    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #31
  unreachable

_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 3                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 1152921504606846975)
  %i.l = select i1 %i.j, i64 1152921504606846975, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  %i.r = load i64, ptr %2, align 8, !tbaa !747
  store i64 %i.r, ptr %i.q, align 8, !tbaa !747
  store ptr null, ptr %2, align 8, !tbaa !747
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit
  %i.s = add i64 %i.m, -8
  %i.t = sub i64 %i.s, %i.e                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.c, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.z ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.c, i64 %i.z ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  %i.aa = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !tbaa !747, !alias.scope !2200
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !747, !alias.scope !2200
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !747, !alias.scope !2199
  store <2 x i64> %wide.load36, ptr %i.ab, align 8, !tbaa !747, !alias.scope !2199
  %3 = getelementptr i8, ptr %next.gep35, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep35, align 8, !tbaa !747, !alias.scope !2200
  store <2 x ptr> splat (ptr null), ptr %3, align 8, !tbaa !747, !alias.scope !2200
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !2189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i.preheader55

.lr.ph.i.i.i.preheader55:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.012.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader55, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader55 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  %i.ad = load i64, ptr %.0911.i.i.i, align 8, !tbaa !747, !alias.scope !2200
  store i64 %i.ad, ptr %.012.i.i.i, align 8, !tbaa !747, !alias.scope !2199
  store ptr null, ptr %.0911.i.i.i, align 8, !tbaa !747, !alias.scope !2200
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit, label %.lr.ph.i.i.i, !llvm.loop !2190

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE12_M_check_lenEmPKc.exit ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i ] ; 2 uses
  %i.ag = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i16, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %i.ah = add i64 %i.d, -8
  %i.ai = sub i64 %i.ah, %i.m                     ; 3 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check40 = icmp ult i64 %i.ai, 152
  br i1 %min.iters.check40, label %.lr.ph.i.i.i17.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i17.preheader
  %i.al = and i64 %i.ai, -8                       ; 2 uses
  %i.am = getelementptr i8, ptr %.0.lcssa.i.i.i, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %i.ao = getelementptr i8, ptr %1, i64 %i.al
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %bound0 = icmp ult ptr %i.ag, %i.ap
  %bound1 = icmp ult ptr %1, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i17.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %vector.memcheck
  %n.vec42 = and i64 %i.ak, 4611686018427387900   ; 3 uses
  %i.aq = shl i64 %n.vec42, 3                     ; 2 uses
  %i.ar = getelementptr i8, ptr %i.ag, i64 %i.aq  ; 2 uses
  %i.as = getelementptr i8, ptr %1, i64 %i.aq
  br label %vector.body43

vector.body43:                                    ; preds = %vector.body43, %vector.ph41
  %index44 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body43 ] ; 2 uses
  %i.at = shl i64 %index44, 3                     ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.ag, i64 %i.at ; 2 uses
  %next.gep46 = getelementptr i8, ptr %1, i64 %i.at ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  %i.au = getelementptr i8, ptr %next.gep46, i64 16
  %wide.load47 = load <2 x i64>, ptr %next.gep46, align 8, !tbaa !747, !alias.scope !2203
  %wide.load48 = load <2 x i64>, ptr %i.au, align 8, !tbaa !747, !alias.scope !2203
  %i.av = getelementptr i8, ptr %next.gep45, i64 16
  store <2 x i64> %wide.load47, ptr %next.gep45, align 8, !tbaa !747, !alias.scope !2204, !noalias !2205
  store <2 x i64> %wide.load48, ptr %i.av, align 8, !tbaa !747, !alias.scope !2204, !noalias !2205
  %4 = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep46, align 8, !tbaa !747, !alias.scope !2203
  store <2 x ptr> splat (ptr null), ptr %4, align 8, !tbaa !747, !alias.scope !2203
  %index.next49 = add nuw i64 %index44, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next49, %n.vec42
  br i1 %i.aw, label %middle.block50, label %vector.body43, !llvm.loop !2197

middle.block50:                                   ; preds = %vector.body43
  %cmp.n51 = icmp eq i64 %i.ak, %n.vec42
  br i1 %cmp.n51, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17.preheader54

.lr.ph.i.i.i17.preheader54:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i17.preheader, %middle.block50
  %.012.i.i.i18.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i17.preheader ], [ %i.ar, %middle.block50 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i17.preheader ], [ %i.as, %middle.block50 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader54, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.az, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader54 ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.ay, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader54 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  %i.ax = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !747, !alias.scope !2202
  store i64 %i.ax, ptr %.012.i.i.i18, align 8, !tbaa !747, !alias.scope !2201
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !747, !alias.scope !2202
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !2198

_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block50, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ag, %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit ], [ %i.ar, %middle.block50 ], [ %i.az, %.lr.ph.i.i.i17 ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !749
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bd) #30
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE13_M_deallocateEPS7_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8WasmEdge7Runtime8Instance16FunctionInstanceESt14default_deleteIS4_EESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !745
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !746
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.be, ptr %i.ba, align 8, !tbaa !749
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOS5_EESO_IJRSC_EEEEESt17_Rb_tree_iteratorISD_ESt23_Rb_tree_const_iteratorISD_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.std::_Rb_tree<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, WasmEdge::Runtime::Instance::FunctionInstance *>, std::_Select1st<std::pair<const std::__cxx11::basic_string<char>, WasmEdge::Runtime::Instance::FunctionInstance *>>, std::less<void>>::_Auto_node", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %0, ptr %5, align 8, !tbaa !2206
  %i.a = tail call noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #28 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 5 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !1045
  %i.d = inttoptr i64 %i.c to ptr                 ; 6 uses
  %i.e = load i64, ptr %4, align 8, !tbaa !1044
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 5 uses
  store ptr %i.f, ptr %i.b, align 8, !tbaa !335
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !318  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !336  ; 3 uses
  %i.l = icmp ult i64 %i.k, 16
  tail call void @llvm.assume(i1 %i.l)
  %i.m = add nuw nsw i64 %i.k, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.f, ptr noundef nonnull align 8 dereferenceable(1) %i.h, i64 %i.m, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.b, align 8, !tbaa !318
  %i.n = load i64, ptr %i.h, align 8, !tbaa !319
  store i64 %i.n, ptr %i.f, align 8, !tbaa !319
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !336
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i, %bb.b
  %i.o = phi i64 [ %i.k, %bb.b ], [ %.pre.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.q = inttoptr i64 %i.e to ptr
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  store i64 %i.o, ptr %i.s, align 8, !tbaa !336
  store ptr %i.h, ptr %i.d, align 8, !tbaa !318
  store i64 0, ptr %i.r, align 8, !tbaa !336
  store i8 0, ptr %i.h, align 8, !tbaa !319
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !747
  store ptr %i.u, ptr %i.t, align 8, !tbaa !572
  store ptr %i.a, ptr %i.p, align 8, !tbaa !1049
  %i.v = invoke { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.d unwind label %bb.g       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.w = extractvalue { ptr, ptr } %i.v, 0        ; 2 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1        ; 5 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp ne ptr %i.w, null
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  %or.cond.i.i = select i1 %.not.i.i, i1 true, i1 %i.z
  br i1 %or.cond.i.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i64, ptr %i.s, align 8, !tbaa !336 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !336 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.aa) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.ad, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !318
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !318
  %i.ah = tail call i32 @memcmp(ptr noundef %i.ag, ptr noundef %i.af, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.f
  %i.ai = sub i64 %i.aa, %i.ac
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.aj = icmp slt i32 %.0.i.i.i.i.i.i, 0
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i
  %i.ak = phi i1 [ %i.aj, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i ], [ true, %bb.e ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.ak, ptr noundef nonnull %i.a, ptr noundef nonnull %i.x, ptr noundef nonnull align 8 dereferenceable(32) %i.y) #27
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !639
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !639
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE10_Auto_nodeD2Ev.exit

bb.g:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  resume { ptr, i32 } %i.ao

bb.h:                                             ; preds = %bb.d
  %i.ap = load ptr, ptr %i.b, align 8, !tbaa !318 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.f
  br i1 %i.aq, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8: ; preds = %bb.h
  %i.ar = load i64, ptr %i.f, align 8, !tbaa !319
  %i.as = add i64 %i.ar, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #30
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #30
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE10_Auto_nodeD2Ev.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE10_Auto_nodeD2Ev.exit: ; preds = %.thread, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i
  %.sroa.0.011 = phi ptr [ %i.a, %.thread ], [ %i.w, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret ptr %.sroa.0.011
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PN8WasmEdge7Runtime8Instance16FunctionInstanceEESt10_Select1stISD_ESt4lessIvESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %1, %i.a
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i64, ptr %i.c, align 8, !tbaa !639
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !548  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.h = load i64, ptr %i.g, align 8, !tbaa !336  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !336  ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.h) ; 2 uses
  %i.k = icmp eq i64 %.sroa.speculated.i.i.i.i, 0
  br i1 %i.k, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
end_hunk_2
