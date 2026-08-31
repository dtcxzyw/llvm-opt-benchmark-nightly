Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/TiffImageLoader?download=true
inline.NumInlined: 18382
inline.NumDeleted: 4972
loop-unroll.NumCompletelyUnrolled: 111
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 175
begin_hunk_0_@"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_8EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESG_S4_S4_mSH_iENKUlvE_clEv":.from.
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 80) #44
  resume { ptr, i32 } %.merged11

bb.w:                                             ; preds = %bb.t
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  call void @__clang_call_terminate(ptr %i.dg) #48
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_8EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm"(ptr dead_on_unwind nofree writable writeonly sret(%"class.tev::Task") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #34 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %4 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #47 ; 11 uses
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_8EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_8EENS_4TaskIvEES4_S4_mT0_iENKUlmmE_clEmm.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.reload.addr59 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr59)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4057)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.53 ; 5 uses

.body.from.53:                                    ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr59) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false), !noalias !4060
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.b, align 8, !tbaa !33, !noalias !4060
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !noalias !4060
  store i32 2, ptr %i.g, align 8, !tbaa !35, !noalias !4060
  store ptr %i.f, ptr %i.d, align 8, !tbaa !37, !alias.scope !4061
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store ptr %i.b, ptr %i.h, align 8, !tbaa !44, !alias.scope !4061
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4064)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #44, !noalias !4064
  invoke void @_ZNSt3__17promiseIvE10get_futureEv(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::future") align 8 %4, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr59)
          to label %bb.b unwind label %bb.d, !noalias !4064

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !48, !alias.scope !4064
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %4, align 8, !tbaa !49, !noalias !4064
  store ptr %i.j, ptr %i.i, align 8, !tbaa !49, !alias.scope !4064
  store ptr null, ptr %4, align 8, !tbaa !49, !noalias !4064
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !44, !noalias !4064 ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.d, align 8, !tbaa !48, !noalias !4064
  store <2 x ptr> %i.m, ptr %i.k, align 8, !tbaa !48, !alias.scope !4064
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = atomicrmw add ptr %i.n, i64 1 monotonic, align 8, !noalias !4064 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #48, !noalias !4064
  unreachable

.body.from.:                                      ; preds = %.from.
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.b, %bb.c
  call void @_ZNSt3__16futureIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44, !noalias !4064
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44, !noalias !4064
  %i.s = icmp ult i64 %2, %3
  br i1 %i.s, label %.lr.ph, label %._crit_edge.split

.lr.ph:                                           ; preds = %bb.e
  %i.t = load ptr, ptr %1, align 8, !tbaa !4067, !nonnull !252, !align !1305 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !4069, !nonnull !252, !align !1305
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24   ; 3 uses
  %.not8.i = icmp eq i64 %i.v, 0
  br i1 %.not8.i, label %._crit_edge.split, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !4071, !nonnull !252, !align !1305 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.y, align 8, !tbaa !52  ; 2 uses
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !4072, !nonnull !252, !align !1305
  %.val.i = load ptr, ptr %i.ab, align 8, !tbaa !4073 ; 2 uses
  %.val.val.i = load ptr, ptr %.val.i, align 8, !tbaa !555 ; 8 uses
  %i.ac = getelementptr i8, ptr %.val.i, i64 8
  %.val.val6.i = load ptr, ptr %i.ac, align 8, !tbaa !559 ; 2 uses
  %.not3.i.i.i.i = icmp eq ptr %.val.val6.i, %.val.val.i
  %i.ad = ptrtoint ptr %.val.val6.i to i64
  %i.ae = ptrtoint ptr %.val.val.i to i64         ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = lshr exact i64 %i.af, 3
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -2
  %i.ak = getelementptr i8, ptr %.val.val.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %.val.val.i, i64 4
  %i.am = getelementptr i8, ptr %.val.val.i, i64 12
  br i1 %.not3.i.i.i.i, label %"._ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit_crit_edge.i.us.i.us.from..lr.ph.i.us", label %.lr.ph.preheader.i.i.i.i.from..lr.ph.i

"._ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit_crit_edge.i.us.i.us.from..lr.ph.i.us": ; preds = %.lr.ph.split, %"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_8clEm.exit.loopexit.us"
  %.025.us = phi i64 [ %i.bl, %"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_8clEm.exit.loopexit.us" ], [ %2, %.lr.ph.split ] ; 2 uses
  br label %"._ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit_crit_edge.i.us.i.us"

"._ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit_crit_edge.i.us.i.us": ; preds = %"._ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit_crit_edge.i.us.i.us", %"._ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit_crit_edge.i.us.i.us.from..lr.ph.i.us"
  %.07.us.i.us = phi i64 [ 0, %"._ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit_crit_edge.i.us.i.us.from..lr.ph.i.us" ], [ %i.bk, %"._ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit_crit_edge.i.us.i.us" ] ; 4 uses
  %i.an = and i64 %.07.us.i.us, 2147483648
  %.not.us.i.us = icmp eq i64 %i.an, 0
  %i.ao = load i64, ptr %i.z, align 8
  %sext.us.i.us = shl i64 %.07.us.i.us, 32
  %i.ap = ashr exact i64 %sext.us.i.us, 32
  %i.aq = add i64 %i.ap, %i.ao
  %i.ar = and i64 %.07.us.i.us, 4294967295
  %i.as = select i1 %.not.us.i.us, i64 %i.ar, i64 %i.aq
  %i.at = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.as ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !245
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !1217
  %i.ax = mul i64 %i.aw, %.025.us
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !10
  %i.ba = load float, ptr %.val.val.i, align 4, !tbaa !10 ; 2 uses
  %i.bb = fsub float %i.az, %i.ba
  %i.bc = load float, ptr %i.ak, align 4, !tbaa !10
  %i.bd = fsub float %i.bc, %i.ba
  %i.be = fdiv float %i.bb, %i.bd                 ; 2 uses
  %i.bf = fsub float 1.000000e+00, %i.be
  %i.bg = load float, ptr %i.al, align 4, !tbaa !10
  %i.bh = load float, ptr %i.am, align 4, !tbaa !10
  %i.bi = fmul float %i.be, %i.bh
  %i.bj = call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bg, float %i.bi)
  store float %i.bj, ptr %i.ay, align 4, !tbaa !10
  %i.bk = add nuw i64 %.07.us.i.us, 1             ; 2 uses
  %exitcond10.not.i.us = icmp eq i64 %i.bk, %i.v
  br i1 %exitcond10.not.i.us, label %"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_8clEm.exit.loopexit.us", label %"._ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit_crit_edge.i.us.i.us", !llvm.loop !4075

"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_8clEm.exit.loopexit.us": ; preds = %"._ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit_crit_edge.i.us.i.us"
  %i.bl = add nuw i64 %.025.us, 1                 ; 2 uses
  %exitcond29.not = icmp eq i64 %i.bl, %3
  br i1 %exitcond29.not, label %._crit_edge.split, label %"._ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit_crit_edge.i.us.i.us.from..lr.ph.i.us", !llvm.loop !4076

._crit_edge.split:                                ; preds = %"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_8clEm.exit.loopexit24", %"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_8clEm.exit.loopexit.us", %.lr.ph, %bb.e
  invoke void @_ZNSt3__17promiseIvE9set_valueEv(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr59)
          to label %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit unwind label %bb.f

bb.f:                                             ; preds = %._crit_edge.split
  %i.bm = landingpad { ptr, i32 }
          catch ptr null
  %i.bn = extractvalue { ptr, i32 } %i.bm, 0
  call void @__clang_call_terminate(ptr %i.bn) #48
  unreachable

.lr.ph.preheader.i.i.i.i.from..lr.ph.i:           ; preds = %.lr.ph.split, %"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_8clEm.exit.loopexit24"
  %.025 = phi i64 [ %i.cz, %"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_8clEm.exit.loopexit24" ], [ %2, %.lr.ph.split ] ; 2 uses
  br label %.lr.ph.i.i.i.i.from..lr.ph.preheader.i.i.i.i

.lr.ph.i.i.i.i.from..lr.ph.preheader.i.i.i.i:     ; preds = %"_ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit.loopexit.i.i", %.lr.ph.preheader.i.i.i.i.from..lr.ph.i
  %.07.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i.i.from..lr.ph.i ], [ %i.cy, %"_ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit.loopexit.i.i" ] ; 4 uses
  %i.bo = and i64 %.07.i, 2147483648
  %.not.i = icmp eq i64 %i.bo, 0
  %i.bp = load i64, ptr %i.z, align 8
  %sext.i = shl i64 %.07.i, 32
  %i.bq = ashr exact i64 %sext.i, 32
  %i.br = add i64 %i.bq, %i.bp
  %i.bs = and i64 %.07.i, 4294967295
  %i.bt = select i1 %.not.i, i64 %i.bs, i64 %i.br
  %i.bu = getelementptr inbounds [24 x i8], ptr %i.aa, i64 %i.bt ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !245
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !1217
  %i.by = mul i64 %i.bx, %.025
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.by ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !10 ; 2 uses
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.from..lr.ph.preheader.i.i.i.i
  %.sroa.010.05.i.i.i.i = phi ptr [ %.sroa.010.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val.val.i, %.lr.ph.i.i.i.i.from..lr.ph.preheader.i.i.i.i ] ; 2 uses
  %.04.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.ag, %.lr.ph.i.i.i.i.from..lr.ph.preheader.i.i.i.i ] ; 2 uses
  %i.cb = lshr i64 %.04.i.i.i.i, 1                ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.05.i.i.i.i, i64 %i.cb ; 2 uses
  %.val.i.i.i.i = load <2 x float>, ptr %i.cc, align 4, !tbaa !12
  %.sroa.0.0.vec.extract.i.i.i.i.i.i = extractelement <2 x float> %.val.i.i.i.i, i64 0
  %i.cd = fcmp olt float %.sroa.0.0.vec.extract.i.i.i.i.i.i, %i.ca ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %.neg.i.i.i.i = xor i64 %i.cb, -1
  %i.cf = add i64 %.04.i.i.i.i, %.neg.i.i.i.i
  %.1.i.i.i.i = select i1 %i.cd, i64 %i.cf, i64 %i.cb ; 2 uses
  %.sroa.010.1.i.i.i.i = select i1 %i.cd, ptr %i.ce, ptr %.sroa.010.05.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %"_ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit.loopexit.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !4077

"_ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit.loopexit.i.i": ; preds = %.lr.ph.i.i.i.i
  %.pre11.i.i = ptrtoint ptr %.sroa.010.1.i.i.i.i to i64
  %.pre13.i.i = sub i64 %.pre11.i.i, %i.ae
  %i.cg = lshr exact i64 %.pre13.i.i, 3
  %i.ch = trunc i64 %i.cg to i32                  ; 2 uses
  %i.ci = add nsw i32 %i.ch, -1
  %.sroa.speculate.load.false.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %i.aj, i32 %i.ci)
  %.inv.i.i = icmp sgt i32 %i.ch, 0
  %.sroa.speculated.i.i = select i1 %.inv.i.i, i32 %.sroa.speculate.load.false.sroa.speculated.i.i, i32 0
  %i.cj = sext i32 %.sroa.speculated.i.i to i64
  %i.ck = getelementptr [8 x i8], ptr %.val.val.i, i64 %i.cj ; 4 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !10 ; 2 uses
  %i.cm = fsub float %i.ca, %i.cl
  %i.cn = getelementptr i8, ptr %i.ck, i64 8
  %i.co = load float, ptr %i.cn, align 4, !tbaa !10
  %i.cp = fsub float %i.co, %i.cl
  %i.cq = fdiv float %i.cm, %i.cp                 ; 2 uses
  %i.cr = fsub float 1.000000e+00, %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !10
  %i.cu = getelementptr i8, ptr %i.ck, i64 12
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !10
  %i.cw = fmul float %i.cq, %i.cv
  %i.cx = call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.ct, float %i.cw)
  store float %i.cx, ptr %i.bz, align 4, !tbaa !10
  %i.cy = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cy, %i.v
  br i1 %exitcond.not.i, label %"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_8clEm.exit.loopexit24", label %.lr.ph.i.i.i.i.from..lr.ph.preheader.i.i.i.i, !llvm.loop !4075

"_ZZN3tev23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiENK3$_8clEm.exit.loopexit24": ; preds = %"_ZNSt3__111lower_boundB8ne180100INS_11__wrap_iterIPKN7nanogui5ArrayIfLm2EEEEEfZZN3tev23postprocessLinearRawDngEP4tiffRKNS8_16MultiChannelViewIfEERNS8_9ImageDataEbbiENK3$_7clEfEUlT_fE_EESI_SI_SI_RKT0_T1_.exit.loopexit.i.i"
  %i.cz = add nuw i64 %.025, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %3
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.preheader.i.i.i.i.from..lr.ph.i, !llvm.loop !4076

_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit:  ; preds = %._crit_edge.split
  %i.da = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = atomicrmw add ptr %i.db, i32 -1 acq_rel, align 4 ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 1
  br i1 %i.dd, label %bb.g, label %_ZN3tev5Latch9countDownEv.exit.i

bb.g:                                             ; preds = %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.de = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.g
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !70 ; 7 uses
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !72
  %i.dh = and i32 %i.dg, 8
  %.not.i.i.i.i20 = icmp eq i32 %i.dh, 0
  br i1 %.not.i.i.i.i20, label %bb.h, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit

bb.h:                                             ; preds = %.noexc.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !83 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !84 ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.dj, %i.dl
  br i1 %.not12.i.i.i.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.h
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 33
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.dj, %.from..lr.ph.i.i.i.i.i ], [ %i.eb, %.noexc2.i.i ] ; 2 uses
  %i.dq = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !85 ; 2 uses
  %i.dr = load i8, ptr %i.dm, align 8             ; 2 uses
  %i.ds = trunc i8 %i.dr to i1                    ; 2 uses
  %i.dt = load ptr, ptr %i.dn, align 8
  %i.du = select i1 %i.ds, ptr %i.dt, ptr %i.do
  %i.dv = load i64, ptr %i.dp, align 8
  %i.dw = lshr i8 %i.dr, 1
  %i.dx = zext nneg i8 %i.dw to i64
  %i.dy = select i1 %i.ds, i64 %i.dv, i64 %i.dx
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !33
  %i.ea = load ptr, ptr %i.dz, align 8
  invoke void %i.ea(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr %i.du, i64 %i.dy, i32 noundef 8, ptr nonnull @.str.187, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !88

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.eb, %i.dl
  br i1 %.not.i.i.i.i.i, label %_ZN3tev5Latch9countDownEv.exit.i, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

.from..loopexit.split-lp.i.i:                     ; preds = %bb.g
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.i

bb.i:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ec = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  call void @__clang_call_terminate(ptr %i.ec) #48
  unreachable

_ZN3tev5Latch9countDownEv.exit.i:                 ; preds = %.noexc2.i.i, %_ZN3tev15TaskPromiseBaseIvE11return_voidEv.exit
  %i.ed = icmp slt i32 %i.dc, 2
  br i1 %i.ed, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit: ; preds = %.noexc.i.i, %bb.h, %_ZN3tev5Latch9countDownEv.exit.i
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !48 ; 2 uses
  %i.eg = inttoptr i64 %i.ef to ptr               ; 3 uses
  store ptr %i.eg, ptr %.reload.addr, align 8
  %.not.i21 = icmp eq i64 %i.ef, 0
  br i1 %.not.i21, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, label %AfterCoroSuspend

AfterCoroSuspend:                                 ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  store ptr null, ptr %i.a, align 8
  %index.addr60 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i1 false, ptr %index.addr60, align 8
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr nonnull %i.eg)
  br label %AfterCoroEnd

_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread: ; preds = %_ZN3tev5Latch9countDownEv.exit.i, %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit
  %i.ei = load ptr, ptr %i.h, align 8, !tbaa !44  ; 5 uses
  %.not.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = atomicrmw add ptr %i.ej, i64 -1 acq_rel, align 8
  %i.el = icmp eq i64 %i.ek, 0
  br i1 %i.el, label %bb.k, label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #44, !inline_history !107
  call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.ei) #44
  br label %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit

_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit:     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvE13final_suspendEv.exit.thread, %bb.j, %bb.k
  call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr59) #44
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  br label %AfterCoroEnd

AfterCoroEnd:                                     ; preds = %_ZN3tev11TaskPromiseINS_4TaskIvEEvED2Ev.exit, %AfterCoroSuspend
  ret void

.body:                                            ; preds = %.body.from.53, %.body.from.
  %.merged18 = phi { ptr, i32 } [ %i.c, %.body.from.53 ], [ %i.r, %.body.from. ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 56) #44
  resume { ptr, i32 } %.merged18
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_9EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESG_S4_S4_mSH_i"(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr %5, i32 noundef %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %7 = alloca %"class.std::__1::future", align 8  ; 6 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.tev::Task", align 8         ; 11 uses
  %10 = alloca %class.anon.955, align 8           ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #47 ; 24 uses
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_9EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESG_S4_S4_mSH_i.resume", ptr %i.a, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN3tev10ThreadPool11parallelForITkNSt3__18integralEmTkNS2_9invocableIT_S4_EEZNS0_11parallelForITkNS2_8integralEmTkNS3_IS4_EEZNS_23postprocessLinearRawDngEP4tiffRKNS_16MultiChannelViewIfEERNS_9ImageDataEbbiE3$_9EENS_4TaskIvEES4_S4_mT0_iEUlmmE_EESG_S4_S4_mSH_i.destroy", ptr %destroy.addr, align 8
  %.reload.addr = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 8 uses
  %.reload.addr179 = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 7 uses
  %.reload.addr180 = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %.reload.addr182 = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store ptr %5, ptr %.reload.addr180, align 8, !tbaa !48
  invoke void @_ZNSt3__17promiseIvEC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr182)
          to label %.noexc unwind label %.body.from.

.noexc:                                           ; preds = %.from.
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4081)
  %i.b = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #46
          to label %bb.a unwind label %.body.from.172 ; 5 uses

.body.from.172:                                   ; preds = %.noexc
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseIvED1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr182) #44
  br label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
end_hunk_0
