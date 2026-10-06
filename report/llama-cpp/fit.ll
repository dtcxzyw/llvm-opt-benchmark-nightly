Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/fit?download=true
inline.NumInlined: 1715
inline.NumDeleted: 635
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_Z29common_get_device_memory_dataPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_level:bb.a
  br i1 %i.m, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc22, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.l, %.noexc22 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.06.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.i, i64 40, i1 false), !tbaa.struct !163
  %i.n = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !157

.lr.ph:                                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.noexc22
  %.0.i.i.i.i.i.ph = phi ptr [ %i.l, %.noexc22 ], [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i.ph, ptr %i.o, align 8, !tbaa !164
  %xtraiter = and i64 %i.g, 1
  %i.p = icmp eq i64 %i.f, 40
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.g, 288230376151711742
  br label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = sub i64 %i.t, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.u) #27
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  resume { ptr, i32 } %i.q

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %.025 = phi i64 [ 0, %.lr.ph.new ], [ %i.ao, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.025 ; 3 uses
  %i.w = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.025 ; 3 uses
  %i.x = load <2 x i64>, ptr %i.v, align 8, !tbaa !19
  store <2 x i64> %i.x, ptr %i.w, align 8, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.aa = load <2 x i64>, ptr %i.y, align 8, !tbaa !19
  store <2 x i64> %i.aa, ptr %i.z, align 8, !tbaa !19
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !166
  %i.ae = or disjoint i64 %.025, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.ae ; 3 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.ae ; 3 uses
  %i.ah = load <2 x i64>, ptr %i.af, align 8, !tbaa !19
  store <2 x i64> %i.ah, ptr %i.ag, align 8, !tbaa !19
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !19
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !tbaa !19
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.am = load i64, ptr %i.al, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  store i64 %i.am, ptr %i.an, align 8, !tbaa !166
  %i.ao = add nuw nsw i64 %.025, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.thread.loopexit.unr-lcssa, label %bb.f, !llvm.loop !158

._crit_edge:                                      ; preds = %_ZNSt6vectorI25common_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %.not.i.i.i23 = icmp eq ptr %i.c, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i23, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit24, label %._crit_edge.thread

._crit_edge.thread.loopexit.unr-lcssa:            ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph
  %.025.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ao, %._crit_edge.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.ap = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %.025.epil.init ; 3 uses
  %i.aq = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %.025.epil.init ; 3 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !tbaa !19
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load <2 x i64>, ptr %i.as, align 8, !tbaa !19
  store <2 x i64> %i.au, ptr %i.at, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !166
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.epil.preheader, %._crit_edge.thread.loopexit.unr-lcssa, %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bb) #27
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit24

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit24: ; preds = %._crit_edge, %._crit_edge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL34common_get_device_memory_data_implPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_level(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %7, i32 noundef %8) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %struct.user_data_t, align 8        ; 10 uses
  %10 = alloca %struct.llama_model_params, align 8 ; 6 uses
  %11 = alloca %"class.std::map", align 8         ; 9 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  call void @llama_log_get(ptr noundef nonnull %9, ptr noundef nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 %8, ptr %i.f, align 8, !tbaa !28
  call void @llama_log_set(ptr noundef nonnull @"_ZZL34common_get_device_memory_data_implPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_levelEN3$_08__invokeESE_S0_Pv", ptr noundef nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 77 ; 2 uses
  %.sroa.7.0..sroa_idx67 = getelementptr inbounds nuw i8, ptr %10, i64 77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7.0..sroa_idx67, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.7.0..sroa_idx, i64 3, i1 false)
  %.sroa.5.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i32 0, ptr %.sroa.5.0..sroa_idx61, align 8, !tbaa !30
  %.sroa.6.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %10, i64 28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %.sroa.6.0..sroa_idx63, ptr noundef nonnull align 4 dereferenceable(48) %.sroa.6.0..sroa_idx, i64 48, i1 false)
  %.sroa.664.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %10, i64 76
  store i8 1, ptr %.sroa.664.0..sroa_idx65, align 4, !tbaa !32
  %i.g = call ptr @llama_model_load_from_file(ptr noundef %1, ptr noundef nonnull byval(%struct.llama_model_params) align 8 %10) ; 13 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %9, align 8, !tbaa !33
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !34
  call void @llama_log_set(ptr noundef %i.i, ptr noundef %i.j)
  %i.k = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.33)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.k) #24
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit

bb.e:                                             ; preds = %bb.a
  %i.m = call ptr @llama_init_from_model(ptr noundef nonnull %i.g, ptr noundef nonnull byval(%struct.llama_context_params) align 8 %3) ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llama_model_free(ptr noundef nonnull %i.g)
  %i.o = load ptr, ptr %9, align 8, !tbaa !33
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !34
  call void @llama_log_set(ptr noundef %i.o, ptr noundef %i.p)
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @.str.34)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #25
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #24
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit

bb.i:                                             ; preds = %bb.e
  %i.s = call noundef i32 @_Z21llama_model_n_devicesPK11llama_model(ptr noundef nonnull %i.g) ; 3 uses
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = add nsw i64 %i.t, 1                      ; 4 uses
  %i.v = icmp ugt i64 %i.u, 230584300921369395
  br i1 %i.v, label %.noexc, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i

.noexc:                                           ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i: ; preds = %bb.i
  store i64 0, ptr %0, align 8
  %.not.i.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseI24llama_device_memory_dataSaIS0_EEC2EmRKS1_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i
  %i.w = mul nuw nsw i64 %i.u, 40                 ; 3 uses
  %i.x = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #26 ; 5 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw [40 x i8], ptr %i.x, i64 %i.u
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.w, i1 false)
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.x, i64 %i.w
  br label %_ZNSt12_Vector_baseI24llama_device_memory_dataSaIS0_EEC2EmRKS1_.exit.thread.i

_ZNSt12_Vector_baseI24llama_device_memory_dataSaIS0_EEC2EmRKS1_.exit.thread.i: ; preds = %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i, %.lr.ph.preheader.i.i.i.i.i
  %i.z = phi ptr [ %i.x, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i ] ; 5 uses
  %i.aa = phi ptr [ %i.y, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i ] ; 2 uses
  %.0.lcssa.i.i.i.i.i = phi ptr [ %scevgep.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ], [ null, %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit.i ] ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.aa, ptr %i.ac, align 8, !tbaa !21
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.ab, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  invoke void @_Z26llama_get_memory_breakdownPK13llama_context(ptr dead_on_unwind nonnull writable sret(%"class.std::map") align 8 %11, ptr noundef nonnull %i.m)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %_ZNSt12_Vector_baseI24llama_device_memory_dataSaIS0_EEC2EmRKS1_.exit.thread.i
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %.not126131 = icmp eq ptr %i.ae, %i.af
  br i1 %.not126131, label %._crit_edge, label %.lr.ph134

.lr.ph134:                                        ; preds = %bb.j
  %.not = icmp eq i32 %i.s, 0
  %i.ag = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i.i.i, i64 -24 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i.i.i, i64 -8 ; 4 uses
  br i1 %.not, label %.lr.ph134.split, label %.lr.ph134.split.us

.lr.ph134.split.us:                               ; preds = %.lr.ph134, %..loopexit127_crit_edge.us
  %.sroa.0121.0132.us = phi ptr [ %i.bj, %..loopexit127_crit_edge.us ], [ %i.ae, %.lr.ph134 ] ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0121.0132.us, i64 32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0121.0132.us, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.al = invoke zeroext i1 @ggml_backend_buft_is_host(ptr noundef %i.ak)
          to label %bb.k unwind label %.split.us

bb.k:                                             ; preds = %.lr.ph134.split.us
  br i1 %i.al, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.an = invoke ptr @ggml_backend_buft_get_device(ptr noundef %i.am)
          to label %bb.m unwind label %.split136.us ; 2 uses

bb.m:                                             ; preds = %bb.l
  %.not.us = icmp eq ptr %i.an, null
  br i1 %.not.us, label %..loopexit127_crit_edge.us, label %.preheader.us

.preheader.us:                                    ; preds = %bb.m, %bb.o
  %.080130.us = phi i64 [ %i.ar, %bb.o ], [ 0, %bb.m ] ; 3 uses
  %i.ao = trunc i64 %.080130.us to i32
  %i.ap = invoke noundef ptr @_Z22llama_model_get_devicePK11llama_modeli(ptr noundef nonnull %i.g, i32 noundef %i.ao)
          to label %bb.n unwind label %.split139.us

bb.n:                                             ; preds = %.preheader.us
  %i.aq = icmp eq ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = add nuw i64 %.080130.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, %i.t
  br i1 %exitcond.not, label %..loopexit127_crit_edge.us, label %.preheader.us, !llvm.loop !167

bb.p:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw [40 x i8], ptr %i.z, i64 %.080130.us ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.au = load <2 x i64>, ptr %i.aj, align 8, !tbaa !19
  %i.av = load <2 x i64>, ptr %i.at, align 8, !tbaa !19
  %i.aw = add <2 x i64> %i.av, %i.au
  store <2 x i64> %i.aw, ptr %i.at, align 8, !tbaa !19
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0121.0132.us, i64 56
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !24
  %i.bb = add i64 %i.ba, %i.ay
  store i64 %i.bb, ptr %i.az, align 8, !tbaa !24
  br label %..loopexit127_crit_edge.us

bb.q:                                             ; preds = %bb.k
  %i.bc = load <2 x i64>, ptr %i.aj, align 8, !tbaa !19
  %i.bd = load <2 x i64>, ptr %i.ag, align 8, !tbaa !19
  %i.be = add <2 x i64> %i.bd, %i.bc
  store <2 x i64> %i.be, ptr %i.ag, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0121.0132.us, i64 56
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !42
  %i.bh = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.bi = add i64 %i.bh, %i.bg
  store i64 %i.bi, ptr %i.ah, align 8, !tbaa !24
  br label %..loopexit127_crit_edge.us

..loopexit127_crit_edge.us:                       ; preds = %bb.o, %bb.q, %bb.p, %bb.m
  %i.bj = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.0121.0132.us) #28 ; 2 uses
  %.not126.us = icmp eq ptr %i.bj, %i.af
  br i1 %.not126.us, label %._crit_edge, label %.lr.ph134.split.us

.split.us:                                        ; preds = %.lr.ph134.split.us
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.split136.us:                                     ; preds = %bb.l
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.split139.us:                                     ; preds = %.preheader.us
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

._crit_edge:                                      ; preds = %..loopexit127_crit_edge.us, %.preheader, %bb.j
  %i.bn = invoke ptr @ggml_backend_dev_by_type(i32 noundef 0)
          to label %bb.v unwind label %bb.y       ; 2 uses

bb.r:                                             ; preds = %_ZNSt12_Vector_baseI24llama_device_memory_dataSaIS0_EEC2EmRKS1_.exit.thread.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.lr.ph134.split:                                  ; preds = %.lr.ph134, %.preheader
  %.sroa.0121.0132 = phi ptr [ %i.ce, %.preheader ], [ %i.ae, %.lr.ph134 ] ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0121.0132, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0121.0132, i64 40
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !41
  %i.bs = invoke zeroext i1 @ggml_backend_buft_is_host(ptr noundef %i.br)
          to label %bb.s unwind label %.split

bb.s:                                             ; preds = %.lr.ph134.split
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = load <2 x i64>, ptr %i.bq, align 8, !tbaa !19
  %i.bu = load <2 x i64>, ptr %i.ag, align 8, !tbaa !19
  %i.bv = add <2 x i64> %i.bu, %i.bt
  store <2 x i64> %i.bv, ptr %i.ag, align 8, !tbaa !19
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0121.0132, i64 56
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !42
  %i.by = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.bz = add i64 %i.by, %i.bx
  store i64 %i.bz, ptr %i.ah, align 8, !tbaa !24
  br label %.preheader

.split:                                           ; preds = %.lr.ph134.split
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.u:                                             ; preds = %bb.s
  %i.cb = load ptr, ptr %i.bp, align 8, !tbaa !41
  %i.cc = invoke ptr @ggml_backend_buft_get_device(ptr noundef %i.cb)
          to label %.preheader unwind label %.split136 ; 0 uses

.split136:                                        ; preds = %bb.u
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

.preheader:                                       ; preds = %bb.u, %bb.t
  %i.ce = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0121.0132) #28 ; 2 uses
  %.not126 = icmp eq ptr %i.ce, %i.af
  br i1 %.not126, label %._crit_edge, label %.lr.ph134.split

bb.v:                                             ; preds = %._crit_edge
  %i.cf = icmp eq ptr %i.bn, null
  br i1 %i.cf, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cg = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull @.str.35)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %bb.w
  invoke void @__cxa_throw(ptr nonnull %i.cg, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #25
          to label %bb.bs unwind label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.z:                                             ; preds = %bb.w
  %i.ci = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.cg) #24
  br label %bb.bp

bb.aa:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  invoke void @ggml_backend_dev_memory(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !19
  %i.ck = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i.i.i, i64 -40 ; 2 uses
  %i.cl = getelementptr inbounds i8, ptr %.0.lcssa.i.i.i.i.i, i64 -32 ; 2 uses
  store i64 %i.cj, ptr %i.cl, align 8, !tbaa !43
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !19
  store i64 %i.cm, ptr %i.ck, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not144 = icmp eq i32 %i.s, 0
  br i1 %.not144, label %._crit_edge143, label %.lr.ph

._crit_edge143:                                   ; preds = %bb.aq, %bb.ab
  %i.cn = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
end_hunk_0
begin_hunk_1_@_Z16common_fit_printPKcP18llama_model_paramsP20llama_context_params:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 4 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !17     ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 3 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 40
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49   ; 2 uses
  %i.m = load ptr, ptr %3, align 8, !tbaa !48     ; 7 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 3                   ; 2 uses
  %i.r = add nsw i64 %i.q, 1
  %i.s = icmp eq i64 %i.j, %i.r
  br i1 %i.s, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %.not = icmp eq ptr %i.l, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  invoke void (ptr, i32, ptr, ...) @ggml_abort(ptr noundef nonnull @.str.26, i32 noundef 1057, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #25
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %3, align 8, !tbaa !48
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit18

bb.f:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32) ; 0 uses
  %i.w = getelementptr inbounds i8, ptr %i.e, i64 -24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !109
  %i.y = lshr i64 %i.x, 20
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %i.y) ; 0 uses
  %i.aa = getelementptr inbounds i8, ptr %i.e, i64 -16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !296
  %i.ac = lshr i64 %i.ab, 20
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %i.ac) ; 0 uses
  %i.ae = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ag = lshr i64 %i.af, 20
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %i.ag) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !21
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.al) #27
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit: ; preds = %._crit_edge, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not.i.i.i16 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIP19ggml_backend_deviceSaIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !50
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = sub i64 %i.ao, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.ap) #27
  br label %_ZNSt6vectorIP19ggml_backend_deviceSaIS1_EED2Ev.exit

_ZNSt6vectorIP19ggml_backend_deviceSaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

.lr.ph:                                           ; preds = %.preheader, %bb.i
  %.021 = phi i64 [ %i.bh, %bb.i ], [ 0, %.preheader ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.021
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !52
  %i.as = invoke ptr @ggml_backend_dev_name(ptr noundef %i.ar)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, ptr noundef %i.as) ; 0 uses
  %i.au = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %.021 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !109
  %i.ax = lshr i64 %i.aw, 20
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %i.ax) ; 0 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !296
  %i.bb = lshr i64 %i.ba, 20
  %i.bc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %i.bb) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !24
  %i.bf = lshr i64 %i.be, 20
  %i.bg = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i64 noundef %i.bf) ; 0 uses
  %putchar15 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.bh = add nuw i64 %.021, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, %i.q
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !295

bb.j:                                             ; preds = %.lr.ph
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.bi, %bb.j ], [ %i.u, %bb.f ] ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit18, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.bl, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.bm) #27
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit18

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit18: ; preds = %bb.l, %bb.k, %bb.e
  %i.bn = phi ptr [ %.pre, %bb.e ], [ %i.m, %bb.k ], [ %i.m, %bb.l ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.e ], [ %.pn, %bb.k ], [ %.pn, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %.not.i.i.i19 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i19, label %_ZNSt6vectorIP19ggml_backend_deviceSaIS1_EED2Ev.exit20, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit18
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bn to i64
  %i.bs = sub i64 %i.bq, %i.br
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bn, i64 noundef %i.bs) #27
  br label %_ZNSt6vectorIP19ggml_backend_deviceSaIS1_EED2Ev.exit20

_ZNSt6vectorIP19ggml_backend_deviceSaIS1_EED2Ev.exit20: ; preds = %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit18, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: noreturn
declare void @ggml_abort(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @llama_log_get(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @llama_log_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @llama_model_load_from_file(ptr noundef, ptr noundef byval(%struct.llama_model_params) align 8) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

declare ptr @llama_init_from_model(ptr noundef, ptr noundef byval(%struct.llama_context_params) align 8) local_unnamed_addr #2

declare void @llama_model_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI24llama_device_memory_dataSaIS0_EEC2EmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 230584300921369395
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseI24llama_device_memory_dataSaIS0_EEC2EmRKS1_.exit.thread, label %.lr.ph.preheader.i.i.i.i

_ZNSt12_Vector_baseI24llama_device_memory_dataSaIS0_EEC2EmRKS1_.exit.thread: ; preds = %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE17_S_check_init_lenEmRKS1_.exit
  %i.b = mul nuw nsw i64 %1, 40                   ; 3 uses
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #26 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.c, i8 0, i64 %i.b, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.c, i64 %i.b
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i.i, %_ZNSt12_Vector_baseI24llama_device_memory_dataSaIS0_EEC2EmRKS1_.exit.thread
  %.sink = phi ptr [ null, %_ZNSt12_Vector_baseI24llama_device_memory_dataSaIS0_EEC2EmRKS1_.exit.thread ], [ %i.d, %.lr.ph.preheader.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseI24llama_device_memory_dataSaIS0_EEC2EmRKS1_.exit.thread ], [ %scevgep.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.f, align 8, !tbaa !21
  store ptr %.0.lcssa.i.i.i.i, ptr %i.e, align 8, !tbaa !16
  ret void
}

declare ptr @ggml_backend_dev_by_type(i32 noundef) local_unnamed_addr #2

declare i32 @ggml_backend_dev_type(ptr noundef) local_unnamed_addr #2

declare i32 @llama_model_n_layer(ptr noundef) local_unnamed_addr #2

declare i32 @llama_model_n_layer_nextn(ptr noundef) local_unnamed_addr #2

declare i32 @llama_model_n_ctx_train(ptr noundef) local_unnamed_addr #2

declare noundef i32 @_Z20llama_model_n_expertPK11llama_model(ptr noundef) local_unnamed_addr #2

declare void @llama_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZL34common_get_device_memory_data_implPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_levelEN3$_08__invokeESE_S0_Pv"(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !28
  %.not.i = icmp slt i32 %0, %i.b
  %i.c = select i1 %.not.i, i32 1, i32 %0
  %i.d = load ptr, ptr %2, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34
  tail call void %i.d(i32 noundef %i.c, ptr noundef %1, ptr noundef %i.f), !inline_history !297
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #13

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN27common_params_fit_exceptionCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV27common_params_fit_exception, i64 16), ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

declare void @llama_model_default_params(ptr dead_on_unwind writable sret(%struct.llama_model_params) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorI24llama_device_memory_dataSaIS0_EEaSEOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !93
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !93
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
  store ptr %i.f, ptr %i.b, align 8, !tbaa !21
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.i) #27
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE.exit

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EE14_M_move_assignEOS2_St17integral_constantIbLb1EE.exit: ; preds = %bb.a, %bb.b
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_0clERSt6vectorI24llama_device_memory_dataSaISF_EE"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.5", align 8     ; 11 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %4 = alloca %"class.std::vector.0", align 8     ; 7 uses
  %5 = alloca %"class.std::allocator.2", align 1  ; 4 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !302, !nonnull !61, !align !153
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !303, !nonnull !61, !align !153 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !93
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %._crit_edge109, label %bb.c

._crit_edge109:                                   ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !304
  %.pre110 = load ptr, ptr %.pre, align 8, !tbaa !70
  %.pre111 = load i32, ptr %.pre110, align 8, !tbaa !86
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !305, !nonnull !61, !align !154
  %i.o = load i32, ptr %i.n, align 4, !tbaa !53
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !304, !nonnull !61, !align !153
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !70
  %i.s = load i32, ptr %i.r, align 8, !tbaa !86   ; 2 uses
  %.not = icmp eq i32 %i.o, %i.s
  br i1 %.not, label %bb.ag, label %bb.d

bb.d:                                             ; preds = %._crit_edge109, %bb.c
  %i.t = phi i32 [ %.pre111, %._crit_edge109 ], [ %i.s, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !307
  store i32 %i.t, ptr %i.w, align 8, !tbaa !86
  %i.x = invoke noundef i32 @_Z30common_log_get_verbosity_tholdv()
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = icmp sgt i32 %i.x, 3
  br i1 %i.y, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.z = invoke noundef ptr @_Z15common_log_mainv()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !304, !nonnull !61, !align !153
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !70
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !86
  invoke void (ptr, i32, ptr, ...) @_Z14common_log_addP10common_log14ggml_log_levelPKcz(ptr noundef %i.z, i32 noundef 2, ptr noundef nonnull @.str.85, ptr noundef nonnull @"__func__._ZZL22common_params_fit_implPKcP18llama_model_paramsP20llama_context_paramsPfP32llama_model_tensor_buft_overridePmjPK22common_fit_extra_model14ggml_log_levelENK3$_0clERSt6vectorI24llama_device_memory_dataSaISF_EE", i32 noundef %i.ac)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit57

bb.i:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.ae = load ptr, ptr %0, align 8, !tbaa !302, !nonnull !61, !align !153
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !74 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !308
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !309
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !307
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !310, !nonnull !61, !align !154
  %i.an = load i32, ptr %i.am, align 4, !tbaa !75
  invoke fastcc void @_ZL34common_get_device_memory_data_implPKcPK18llama_model_paramsPK20llama_context_paramsRSt6vectorIP19ggml_backend_deviceSaIS9_EERjSD_SD_14ggml_log_level(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %i.ag, ptr noundef %i.ai, ptr noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, i32 noundef %i.an)
          to label %_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit unwind label %bb.k

_ZNSt6vectorI24llama_device_memory_dataSaIS0_EED2Ev.exit: ; preds = %bb.i
  %i.ao = load ptr, ptr %3, align 8, !tbaa !17    ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
end_hunk_1
