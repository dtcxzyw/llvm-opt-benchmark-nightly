Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bsdfs_test?download=true
inline.NumInlined: 3152
inline.NumDeleted: 1010
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_Z15AdaptiveSimpsonRKSt8functionIFffEEfffi:bb.a
  store float %i.ab, ptr %i.d, align 4, !tbaa !28
  store float %i.ae, ptr %i.e, align 4, !tbaa !28
  store float %i.ah, ptr %i.f, align 4, !tbaa !28
  store float %i.an, ptr %i.g, align 4, !tbaa !28
  store float %3, ptr %i.h, align 4, !tbaa !28
  store i32 %4, ptr %i.i, align 4, !tbaa !14
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !17
  %.not.i.i42 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i42, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt25__throw_bad_function_callv() #32
          to label %.noexc43 unwind label %bb.v

.noexc43:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !26
  %i.aq = invoke noundef float %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %bb.p unwind label %bb.v, !inline_history !185

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ar = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.as = invoke noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.r ; 0 uses

bb.r:                                             ; preds = %bb.q
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  ret float %i.aq

bb.s:                                             ; preds = %bb.f, %bb.e
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.t:                                             ; preds = %bb.i, %bb.h
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %bb.l, %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.o, %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v, %bb.u, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.s ], [ %i.aw, %bb.t ], [ %i.ay, %bb.v ], [ %i.ax, %bb.u ]
  %i.az = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %.not.i45 = icmp eq ptr %i.az, null
  br i1 %.not.i45, label %_ZNSt14_Function_baseD2Ev.exit46, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ba = invoke noundef zeroext i1 %i.az(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %5, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit46 unwind label %bb.y ; 0 uses

bb.y:                                             ; preds = %bb.x
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  call void @__clang_call_terminate(ptr %i.bc) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit46:                 ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #31
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef float @_Z17AdaptiveSimpson2DRKSt8functionIFfffEEfffffi(ptr noundef nonnull align 8 dereferenceable(32) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, float noundef %5, i32 noundef %6) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
"_ZNSt8functionIFffEEC2IRZ17AdaptiveSimpson2DRKS_IFfffEEfffffiE3$_0vEEOT_.exit":
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca float, align 4                    ; 2 uses
  %i.c = alloca float, align 4                    ; 2 uses
  %i.d = alloca i32, align 4                      ; 2 uses
  %7 = alloca %"class.std::function.3", align 8   ; 12 uses
  store float %1, ptr %i.a, align 4, !tbaa !28
  store float %3, ptr %i.b, align 4, !tbaa !28
  store float %5, ptr %i.c, align 4, !tbaa !28
  store i32 %6, ptr %i.d, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.f, align 8
  %i.g = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #33 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %i.g, align 16, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.a, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !34
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !34
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !34
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %i.d, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !21
  store ptr %i.g, ptr %7, align 8, !tbaa !24
  store ptr @"_ZNSt17_Function_handlerIFffEZ17AdaptiveSimpson2DRKSt8functionIFfffEEfffffiE3$_0E9_M_invokeERKSt9_Any_dataOf", ptr %i.h, align 8, !tbaa !30
  store ptr @"_ZNSt17_Function_handlerIFffEZ17AdaptiveSimpson2DRKSt8functionIFfffEEfffffiE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation", ptr %i.e, align 8, !tbaa !17
  %i.i = invoke noundef float @_Z15AdaptiveSimpsonRKSt8functionIFffEEfffi(ptr noundef nonnull align 8 dereferenceable(32) %7, float noundef %2, float noundef %4, float noundef %5, i32 noundef %6)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %"_ZNSt8functionIFffEEC2IRZ17AdaptiveSimpson2DRKS_IFfffEEfffffiE3$_0vEEOT_.exit"
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = invoke noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  call void @__clang_call_terminate(ptr %i.m) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  ret float %i.i

bb.d:                                             ; preds = %"_ZNSt8functionIFffEEC2IRZ17AdaptiveSimpson2DRKS_IFfffEEfffffiE3$_0vEEOT_.exit"
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.e, align 8, !tbaa !17   ; 2 uses
  %.not.i5 = icmp eq ptr %i.o, null
  br i1 %.not.i5, label %_ZNSt14_Function_baseD2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %7, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit6 unwind label %bb.f ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #34
  unreachable

_ZNSt14_Function_baseD2Ev.exit6:                  ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z14FrequencyTablePKN4pbrt4BSDFERKNS_7Vector3IfEERNS_3RNGEiiiPf(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.pstd::optional", align 4    ; 7 uses
  %i.a = mul nsw i32 %5, %4
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %i.c, i1 false)
  %i.d = sitofp i32 %4 to float
  %i.e = fdiv nnan float %i.d, f0x40490FDB
  %i.f = sitofp i32 %5 to float
  %i.g = fdiv float %i.f, f0x40C90FDB             ; 2 uses
  %i.h = icmp sgt i32 %3, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 16
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.222.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.214.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = fmul nnan float %i.g, f0x40C90FDB
  %8 = add nsw i32 %4, -1
  %9 = add nsw i32 %5, -1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.072 = phi i32 [ 0, %.lr.ph ], [ %i.by, %bb.d ]
  %i.q = load i64, ptr %2, align 8, !tbaa !37     ; 4 uses
  %i.r = mul i64 %i.q, 6364136223846793005
  %i.s = load i64, ptr %i.i, align 8, !tbaa !38   ; 3 uses
  %i.t = lshr i64 %i.q, 45
  %i.u = lshr i64 %i.q, 27
  %i.v = xor i64 %i.t, %i.u
  %i.w = trunc i64 %i.v to i32                    ; 2 uses
  %i.x = lshr i64 %i.q, 59
  %i.y = trunc nuw nsw i64 %i.x to i32
  %i.z = call noundef i32 @llvm.fshr.i32(i32 %i.w, i32 %i.w, i32 %i.y)
  %i.aa = uitofp i32 %i.z to float
  %i.ab = fmul nnan float %i.aa, f0x2F800000      ; 2 uses
  %i.ac = fcmp olt float %i.ab, f0x3F7FFFFF
  %.sroa.speculated.i = select i1 %i.ac, float %i.ab, float f0x3F7FFFFF
  %i.ad = add i64 %i.r, %i.s                      ; 2 uses
  %i.ae = mul i64 %i.ad, 6364136223846793005
  %i.af = add i64 %i.ae, %i.s                     ; 2 uses
  %i.ag = mul i64 %i.af, 6364136223846793005
  %i.ah = add i64 %i.ag, %i.s
  store i64 %i.ah, ptr %2, align 8, !tbaa !37
  %i.ai = insertelement <2 x i64> poison, i64 %i.ad, i64 0
  %i.aj = insertelement <2 x i64> %i.ai, i64 %i.af, i64 1 ; 3 uses
  %i.ak = lshr <2 x i64> %i.aj, splat (i64 45)
  %i.al = lshr <2 x i64> %i.aj, splat (i64 27)
  %i.am = xor <2 x i64> %i.ak, %i.al
  %i.an = trunc <2 x i64> %i.am to <2 x i32>      ; 2 uses
  %i.ao = lshr <2 x i64> %i.aj, splat (i64 59)
  %i.ap = trunc nuw nsw <2 x i64> %i.ao to <2 x i32>
  %i.aq = call <2 x i32> @llvm.fshr.v2i32(<2 x i32> %i.an, <2 x i32> %i.an, <2 x i32> %i.ap)
  %i.ar = uitofp <2 x i32> %i.aq to <2 x float>
  %i.as = fmul nnan <2 x float> %i.ar, splat (float f0x2F800000) ; 2 uses
  %i.at = fcmp olt <2 x float> %i.as, splat (float f0x3F7FFFFF)
  %i.au = select <2 x i1> %i.at, <2 x float> %i.as, <2 x float> splat (float f0x3F7FFFFF)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %.sroa.011.0.copyload = load <2 x float>, ptr %1, align 4
  %.sroa.212.0.copyload = load float, ptr %.sroa.212.0..sroa_idx, align 4
  call void @_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %7, ptr noundef nonnull align 8 dereferenceable(44) %0, <2 x float> %.sroa.011.0.copyload, float %.sroa.212.0.copyload, float noundef %.sroa.speculated.i, <2 x float> %i.au, i32 noundef 0, i32 noundef 3)
  %i.av = load i8, ptr %i.j, align 4, !tbaa !41, !range !42, !noundef !43
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, label %bb.d

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit:  ; preds = %bb.b
  %i.ax = load i32, ptr %i.k, align 4, !tbaa !50
  %i.ay = and i32 %i.ax, 16
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit
  %.sroa.04.0.copyload = load <2 x float>, ptr %i.l, align 4 ; 3 uses
  %.sroa.25.0.copyload = load float, ptr %.sroa.25.0..sroa_idx, align 4 ; 3 uses
  %.sroa.021.0.copyload.i.i = load <2 x float>, ptr %i.m, align 4
  %.sroa.222.0.copyload.i.i = load float, ptr %.sroa.222.0..sroa_idx.i.i, align 4
  %i.az = fmul <2 x float> %.sroa.04.0.copyload, %.sroa.021.0.copyload.i.i ; 2 uses
  %shift = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.az, %shift
  %i.ba = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bb = fmul float %.sroa.25.0.copyload, %.sroa.222.0.copyload.i.i
  %i.bc = fadd float %i.bb, %i.ba
  %.sroa.013.0.copyload.i.i = load <2 x float>, ptr %i.n, align 4
  %.sroa.214.0.copyload.i.i = load float, ptr %.sroa.214.0..sroa_idx.i.i, align 4
  %i.bd = fmul <2 x float> %.sroa.04.0.copyload, %.sroa.013.0.copyload.i.i ; 2 uses
  %shift75 = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop76 = fadd <2 x float> %i.bd, %shift75
  %i.be = extractelement <2 x float> %foldExtExtBinop76, i64 0
  %i.bf = fmul float %.sroa.25.0.copyload, %.sroa.214.0.copyload.i.i
  %i.bg = fadd float %i.bf, %i.be
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %i.o, align 4
  %.sroa.26.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i, align 4
  %i.bh = fmul <2 x float> %.sroa.04.0.copyload, %.sroa.05.0.copyload.i.i ; 2 uses
  %shift78 = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop79 = fadd <2 x float> %i.bh, %shift78
  %i.bi = extractelement <2 x float> %foldExtExtBinop79, i64 0
  %i.bj = fmul float %.sroa.25.0.copyload, %.sroa.26.0.copyload.i.i
  %i.bk = fadd float %i.bj, %i.bi                 ; 3 uses
  %i.bl = fcmp olt float %i.bk, -1.000000e+00
  %i.bm = fcmp ogt float %i.bk, 1.000000e+00
  %..i.i = select i1 %i.bm, float 1.000000e+00, float %i.bk
  %.0.i.i = select i1 %i.bl, float -1.000000e+00, float %..i.i
  %i.bn = call noundef float @acosf(float noundef %.0.i.i) #31
  %i.bo = fmul float %i.e, %i.bn
  %i.bp = call noundef float @atan2f(float noundef %i.bg, float noundef %i.bc) #31
  %i.bq = fmul float %i.g, %i.bp                  ; 3 uses
  %i.br = fcmp olt float %i.bq, 0.000000e+00
  %i.bs = fadd float %i.p, %i.bq
  %.sroa.5.0 = select i1 %i.br, float %i.bs, float %i.bq
  %10 = call noundef float @llvm.floor.f32(float %i.bo)
  %11 = fptosi float %10 to i32
  %.sroa.speculated60 = call i32 @llvm.smax.i32(i32 %11, i32 0)
  %.sroa.speculated56 = call i32 @llvm.smin.i32(i32 %8, i32 %.sroa.speculated60)
  %12 = call noundef float @llvm.floor.f32(float %.sroa.5.0)
  %13 = fptosi float %12 to i32
  %.sroa.speculated49 = call i32 @llvm.smax.i32(i32 %13, i32 0)
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %9, i32 %.sroa.speculated49)
  %14 = mul nsw i32 %.sroa.speculated56, %5
  %i.bt = add nsw i32 %.sroa.speculated, %14
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %6, i64 %i.bu ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !28
  %i.bx = fadd float %i.bw, 1.000000e+00
  store float %i.bx, ptr %i.bv, align 4, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.by = add nuw nsw i32 %.072, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !186
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt4BSDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 4 %0, ptr noundef nonnull align 8 dereferenceable(44) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.pbrt::Vector3", align 8     ; 5 uses
  %9 = alloca %"class.pbrt::Point2", align 8      ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %10 = alloca %class.anon.68, align 8            ; 8 uses
  %11 = alloca %class.anon.63, align 1            ; 3 uses
  %12 = alloca %"class.pstd::optional", align 16  ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.021.0.copyload.i.i = load <2 x float>, ptr %i.d, align 8 ; 2 uses
  %.sroa.222.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.013.0.copyload.i.i = load <2 x float>, ptr %i.e, align 4 ; 2 uses
  %i.f = load <4 x float>, ptr %.sroa.222.0..sroa_idx.i.i, align 8
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.h = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.i = shufflevector <2 x float> %.sroa.013.0.copyload.i.i, <2 x float> %.sroa.021.0.copyload.i.i, <2 x i32> <i32 3, i32 0>
  %i.j = fmul <2 x float> %i.h, %i.i
  %i.k = shufflevector <2 x float> %.sroa.021.0.copyload.i.i, <2 x float> %.sroa.013.0.copyload.i.i, <2 x i32> <i32 0, i32 3>
  %i.l = fmul <2 x float> %2, %i.k
  %i.m = fadd <2 x float> %i.j, %i.l
  %i.n = insertelement <2 x float> poison, float %3, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.o, %i.g
  %i.q = fadd <2 x float> %i.p, %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.05.0.copyload.i.i = load <2 x float>, ptr %i.r, align 8
  %.sroa.26.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.26.0.copyload.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i, align 8
  %i.s = fmul <2 x float> %2, %.sroa.05.0.copyload.i.i ; 2 uses
  %shift = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.s, %shift
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = fmul float %3, %.sroa.26.0.copyload.i.i
  %i.v = fadd float %i.u, %i.t                    ; 2 uses
  %i.w = fcmp oeq float %i.v, 0.000000e+00
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  %i.x = load i64, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.y = and i64 %i.x, 144115188075855871
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = lshr i64 %i.x, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i32
  %i.ac = add nsw i32 %i.ab, -1
  %i.ad = call noundef i32 @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF5FlagsEvEUlT_E_NS_9BxDFFlagsENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS3_PKvi(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef %i.z, i32 noundef %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  %i.ae = and i32 %i.ad, %7
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store <2 x float> %i.q, ptr %8, align 8, !noalias !191
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store float %i.v, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !191
  store <2 x float> %5, ptr %9, align 8, !noalias !191
  store float %4, ptr %i.a, align 4, !tbaa !28, !noalias !191
  store i32 %6, ptr %i.b, align 4, !tbaa !54, !noalias !191
  store i32 %7, ptr %i.c, align 4, !tbaa !56, !noalias !191
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31, !noalias !191
  store ptr %8, ptr %10, align 8, !tbaa !58, !noalias !191
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.a, ptr %i.af, align 8, !tbaa !34, !noalias !191
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %9, ptr %i.ag, align 8, !tbaa !60, !noalias !191
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.b, ptr %i.ah, align 8, !tbaa !24, !noalias !191
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !24, !noalias !191
  %i.aj = load i64, ptr %1, align 8, !tbaa !52, !noalias !192 ; 2 uses
  %i.ak = and i64 %i.aj, 144115188075855871
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = lshr i64 %i.aj, 57
  %i.an = trunc nuw nsw i64 %i.am to i32
  %i.ao = add nsw i32 %i.an, -1
  call void @_ZN4pbrt6detail8DispatchIRZNKS_4BxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsEEUlT_E_N4pstd8optionalINS_10BSDFSampleEEENS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFEJNS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEvEET0_OS9_PKvi(ptr dead_on_unwind nonnull writable sret(%"class.pstd::optional") align 4 %12, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %i.al, i32 noundef %i.ao)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #31, !noalias !191
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 44 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !41, !range !42, !noundef !43
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, label %bb.e

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit:  ; preds = %bb.d
  %i.as = load <4 x float>, ptr %12, align 16
  %.fr = freeze <4 x float> %i.as
  %i.at = fcmp une <4 x float> %.fr, zeroinitializer
  %i.au = bitcast <4 x i1> %i.at to i4
  %i.av = icmp eq i4 %i.au, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 28
  %i.ax = load float, ptr %i.aw, align 4
  %i.ay = fcmp oeq float %i.ax, 0.000000e+00
  %or.cond = select i1 %i.av, i1 true, i1 %i.ay
  br i1 %or.cond, label %bb.e, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit
  %i.az = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.ba = load float, ptr %i.az, align 8, !tbaa !61 ; 2 uses
  %i.bb = fcmp oeq float %i.ba, 0.000000e+00
  br i1 %i.bb, label %bb.e, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38

bb.e:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36, %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit, %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.f

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit36
  %i.bc = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.bc, align 16
  %i.bd = call { <2 x float>, float } @_ZNK4pbrt4BSDF13LocalToRenderENS_7Vector3IfEE(ptr noundef nonnull align 8 dereferenceable(44) %1, <2 x float> %.sroa.03.0.copyload, float %i.ba) ; 2 uses
  %i.be = load i8, ptr %i.ap, align 4, !tbaa !41, !range !42, !noundef !43
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEC2EOS3_.exit, label %.noexc39

.noexc39:                                         ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38
  call void @_ZN4pbrt8LogFatalIJRA4_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef 235, ptr noundef nonnull @.str.67, ptr noundef nonnull align 1 dereferenceable(4) @.str.79) #32
  unreachable

_ZN4pstd8optionalIN4pbrt10BSDFSampleEEC2EOS3_.exit: ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEptEv.exit38
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.bd, 1
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.bd, 0
  store <2 x float> %.fca.0.extract, ptr %i.bc, align 16
  store float %.fca.1.extract, ptr %i.az, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.bg, align 4, !tbaa !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(45) %0, ptr noundef nonnull align 16 dereferenceable(45) %12, i64 44, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %_ZN4pstd8optionalIN4pbrt10BSDFSampleEEC2EOS3_.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: mustprogress uwtable
define dso_local void @_Z23IntegrateFrequencyTablePKN4pbrt4BSDFERKNS_7Vector3IfEEiiiPf(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::function.3", align 8   ; 11 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %7 = alloca %"class.std::function.6", align 8   ; 11 uses
  store ptr %0, ptr %i.e, align 8, !tbaa !63
  %i.f = mul nsw i32 %4, %3
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %5, i8 0, i64 %i.h, i1 false)
  %i.i = sitofp i32 %3 to float
  %i.j = fdiv float f0x40490FDB, %i.i             ; 2 uses
  %i.k = sitofp i32 %4 to float
  %i.l = fdiv float f0x40C90FDB, %i.k             ; 2 uses
  %i.m = icmp sgt i32 %3, 0
  br i1 %i.m, label %.preheader.lr.ph, label %._crit_edge42.split

.preheader.lr.ph:                                 ; preds = %bb.a
  %i.n = icmp sgt i32 %4, 0
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZNK4pbrt18ThinDielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE:bb.a
  store i32 17, ptr %.sroa.872.0..sroa_idx, align 4
  %.sroa.973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.973.0..sroa_idx, align 4
  %.sroa.1074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.1074.0..sroa_idx, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = fneg float %3
  %i.aq = fdiv float %.055, %i.a
  %.sroa.063.0.vec.insert = insertelement <2 x float> poison, float %i.aq, i64 0
  %.sroa.063.4.vec.insert = shufflevector <2 x float> %.sroa.063.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = fdiv float %.057, %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.as, align 4, !tbaa !41
  store <2 x float> %.sroa.063.4.vec.insert, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.063.4.vec.insert, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.am, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ap, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ar, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 18, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

declare void @_ZNK4pbrt12MeasuredBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind writable sret(%"class.pstd::optional") align 4, ptr noundef nonnull align 8 dereferenceable(40), <2 x float>, float, float noundef, <2 x float>, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt21NormalizedFresnelBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::BSDFSample") align 4 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = and i32 %7, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !392
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = fmul <2 x float> %5, splat (float 2.000000e+00)
  %i.d = fadd <2 x float> %i.c, splat (float -1.000000e+00) ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0   ; 4 uses
  %i.f = fcmp oeq float %i.e, 0.000000e+00
  %i.g = extractelement <2 x float> %i.d, i64 1   ; 4 uses
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  %or.cond.i.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond.i.i, label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.d) ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.j = fcmp ogt <2 x float> %i.i, %shift
  %i.k = extractelement <2 x i1> %i.j, i64 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = fdiv float %i.g, %i.e
  %i.m = fmul float %i.l, f0x3F490FDB
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = fdiv float %i.e, %i.g
  %i.o = fmul float %i.n, f0x3F490FDB
  %i.p = fsub float f0x3FC90FDB, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.024.i.i = phi float [ %i.m, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %.0.i.i = phi float [ %i.e, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %i.q = tail call noundef float @cosf(float noundef %.024.i.i) #31
  %i.r = tail call noundef float @sinf(float noundef %.024.i.i) #31
  %i.s = fmul float %.0.i.i, %i.q
  %i.t = fmul float %.0.i.i, %i.r
  %.sroa.0.0.vec.insert.i.i29.i.i = insertelement <2 x float> poison, float %i.s, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i, float %i.t, i64 1
  br label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit

_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit: ; preds = %bb.c, %bb.g
  %.sroa.035.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i, %bb.g ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.u = fmul <2 x float> %.sroa.035.0.i.i, %.sroa.035.0.i.i ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = fsub float 1.000000e+00, %i.v
  %i.x = extractelement <2 x float> %i.u, i64 1
  %i.y = fsub float %i.w, %i.x                    ; 2 uses
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.z, float %i.y, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.aa = fcmp olt float %3, 0.000000e+00
  %i.ab = fneg float %sqrt.i.i
  %spec.select = select i1 %i.aa, float %i.ab, float %sqrt.i.i ; 5 uses
  %i.ac = fmul float %3, %spec.select
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00      ; 2 uses
  br i1 %i.ad, label %bb.h, label %_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit

bb.h:                                             ; preds = %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit
  %i.ae = load float, ptr %1, align 4, !tbaa !394
  %i.af = fdiv float 1.000000e+00, %i.ae
  %i.ag = tail call noundef float @_ZN4pbrt14FresnelMoment1Ef(float noundef %i.af)
  %i.ah = fmul float %i.ag, 2.000000e+00
  %i.ai = fsub float 1.000000e+00, %i.ah
  %i.aj = load float, ptr %1, align 4, !tbaa !394 ; 4 uses
  %i.ak = fcmp olt float %spec.select, -1.000000e+00
  %i.al = fcmp ogt float %spec.select, 1.000000e+00
  %..i.i.i = select i1 %i.al, float 1.000000e+00, float %spec.select
  %.0.i.i.i = select i1 %i.ak, float -1.000000e+00, float %..i.i.i ; 3 uses
  %i.am = fcmp olt float %.0.i.i.i, 0.000000e+00  ; 2 uses
  %i.an = fdiv float 1.000000e+00, %i.aj
  %i.ao = fneg float %.0.i.i.i
  %.025.i.i = select i1 %i.am, float %i.an, float %i.aj ; 4 uses
  %.024.i.i37 = select i1 %i.am, float %i.ao, float %.0.i.i.i ; 5 uses
  %i.ap = fmul float %.024.i.i37, %.024.i.i37
  %i.aq = fsub float 1.000000e+00, %i.ap
  %i.ar = fmul float %.025.i.i, %.025.i.i
  %i.as = fdiv float %i.aq, %i.ar                 ; 2 uses
  %i.at = fcmp ult float %i.as, 1.000000e+00
  br i1 %i.at, label %bb.i, label %_ZN4pbrt12FrDielectricEff.exit.i

bb.i:                                             ; preds = %bb.h
  %i.au = fsub float 1.000000e+00, %i.as          ; 2 uses
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.av, float %i.au, float 0.000000e+00
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 3 uses
  %i.aw = fmul float %.024.i.i37, %.025.i.i       ; 2 uses
  %i.ax = fsub float %i.aw, %sqrt.i.i.i
  %i.ay = fadd float %i.aw, %sqrt.i.i.i
  %i.az = fdiv float %i.ax, %i.ay                 ; 2 uses
  %i.ba = fmul float %.025.i.i, %sqrt.i.i.i       ; 2 uses
  %i.bb = fsub float %.024.i.i37, %i.ba
  %i.bc = fadd float %.024.i.i37, %i.ba
  %i.bd = fdiv float %i.bb, %i.bc                 ; 2 uses
  %i.be = fmul float %i.az, %i.az
  %i.bf = fmul float %i.bd, %i.bd
  %i.bg = fadd float %i.be, %i.bf
  %i.bh = fmul float %i.bg, 5.000000e-01
  br label %_ZN4pbrt12FrDielectricEff.exit.i

_ZN4pbrt12FrDielectricEff.exit.i:                 ; preds = %bb.i, %bb.h
  %.0.i.i38 = phi float [ %i.bh, %bb.i ], [ 1.000000e+00, %bb.h ]
  %i.bi = fsub float 1.000000e+00, %.0.i.i38
  %i.bj = fmul float %i.ai, f0x40490FDB
  %i.bk = fdiv float %i.bi, %i.bj                 ; 2 uses
  %.sroa.0.0.vec.insert22.i = insertelement <2 x float> poison, float %i.bk, i64 0
  %.sroa.0.4.vec.insert27.i = shufflevector <2 x float> %.sroa.0.0.vec.insert22.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bl = icmp eq i32 %6, 0
  br i1 %i.bl, label %bb.j, label %_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit

bb.j:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.i
  %i.bm = fmul float %i.aj, %i.aj
  %i.bn = fmul float %i.bm, %i.bk
  %.sroa.0.0.vec.insert25.i = insertelement <2 x float> poison, float %i.bn, i64 0
  %.sroa.0.4.vec.insert30.i = shufflevector <2 x float> %.sroa.0.0.vec.insert25.i, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit

_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit: ; preds = %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit, %_ZN4pbrt12FrDielectricEff.exit.i, %bb.j
  %.sroa.9.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert30.i, %bb.j ], [ %.sroa.0.4.vec.insert27.i, %_ZN4pbrt12FrDielectricEff.exit.i ], [ zeroinitializer, %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit ] ; 2 uses
  %i.bo = tail call float @llvm.fabs.f32(float %sqrt.i.i)
  %i.bp = fmul float %i.bo, f0x3EA2F983
  %.0.i = select i1 %i.ad, float %i.bp, float 0.000000e+00
  store <2 x float> %.sroa.9.0.i, ptr %0, align 4
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.9.0.i, ptr %.sroa.27.0..sroa_idx.i, align 4, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.035.0.i.i, ptr %i.bq, align 4
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %spec.select, ptr %.sroa.25.0..sroa_idx.i, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %.0.i, ptr %i.br, align 4, !tbaa !156
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 5, ptr %i.bs, align 4, !tbaa !50
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %i.bt, align 4, !tbaa !392
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.bu, align 4, !tbaa !395
  br label %bb.k

bb.k:                                             ; preds = %_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit, %bb.b
  ret void
}

declare noundef float @_ZN4pbrt14FresnelMoment1Ef(float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt4Disk14BasicIntersectERKNS_3RayEf(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional.93") align 4 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, float noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.pbrt::Point3fi", align 16   ; 7 uses
  %5 = alloca %"class.pbrt::Point3fi", align 8    ; 6 uses
  %6 = alloca %"class.pbrt::Vector3fi", align 16  ; 7 uses
  %7 = alloca %"class.pbrt::Vector3fi", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  %i.c = load <1 x float>, ptr %2, align 8
  %.sroa.07.4.vec.insert.i = shufflevector <1 x float> %i.c, <1 x float> poison, <2 x i32> zeroinitializer
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load <1 x float>, ptr %i.d, align 4
  %.sroa.05.4.vec.insert.i = shufflevector <1 x float> %i.e, <1 x float> poison, <2 x i32> zeroinitializer
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load <1 x float>, ptr %i.f, align 8
  %.sroa.0.4.vec.insert.i = shufflevector <1 x float> %i.g, <1 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.07.4.vec.insert.i, ptr %5, align 8, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %.sroa.05.4.vec.insert.i, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.i, align 8, !tbaa !28
  call void @_ZNK4pbrt9TransformclERKNS_8Point3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Point3fi") align 4 %4, ptr noundef nonnull align 4 dereferenceable(128) %i.b, ptr noundef nonnull align 4 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.029.0.copyload = load <2 x float>, ptr %i.k, align 4 ; 2 uses
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 20
  %.sroa.230.0.copyload = load float, ptr %.sroa.230.0..sroa_idx, align 4
  %.sroa.05.4.vec.insert.i38 = shufflevector <2 x float> %.sroa.029.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
  %.sroa.03.4.vec.insert.i = shufflevector <2 x float> %.sroa.029.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %.sroa.0.0.vec.insert.i39 = insertelement <2 x float> poison, float %.sroa.230.0.copyload, i64 0
  %.sroa.0.4.vec.insert.i40 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i39, <2 x float> poison, <2 x i32> zeroinitializer
  store <2 x float> %.sroa.05.4.vec.insert.i38, ptr %7, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.03.4.vec.insert.i, ptr %i.l, align 8, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x float> %.sroa.0.4.vec.insert.i40, ptr %i.m, align 8, !tbaa !28
  call void @_ZNK4pbrt9TransformclERKNS_9Vector3fiE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Vector3fi") align 4 %6, ptr noundef nonnull align 4 dereferenceable(128) %i.j, ptr noundef nonnull align 4 dereferenceable(24) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = load float, ptr %i.n, align 16, !tbaa !166
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !167
  %i.r = fadd float %i.o, %i.q
  %i.s = fmul float %i.r, 5.000000e-01            ; 3 uses
  %i.t = fcmp oeq float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !396
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load float, ptr %i.w, align 16, !tbaa !166
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !167
  %i.aa = fadd float %i.x, %i.z
  %i.ab = fmul float %i.aa, 5.000000e-01          ; 2 uses
  %i.ac = fsub float %i.v, %i.ab
  %i.ad = fdiv float %i.ac, %i.s                  ; 5 uses
  %i.ae = fcmp ugt float %i.ad, 0.000000e+00
  %i.af = fcmp ult float %i.ad, %3
  %or.cond = and i1 %i.ae, %i.af
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %.sroa.047.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.043.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ag = fmul float %i.ad, %i.s
  %i.ah = load <2 x float>, ptr %.sroa.047.sroa.2.0..sroa_idx, align 4
  %i.ai = load <4 x float>, ptr %4, align 16
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ak = fadd <2 x float> %i.ah, %i.aj
  %i.al = fmul <2 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = load <2 x float>, ptr %.sroa.043.sroa.2.0..sroa_idx, align 4
  %i.an = load <4 x float>, ptr %6, align 16
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ap = fadd <2 x float> %i.am, %i.ao
  %i.aq = fmul <2 x float> %i.ap, splat (float 5.000000e-01)
  %i.ar = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.as, %i.aq
  %i.au = fadd <2 x float> %i.al, %i.at           ; 5 uses
  %i.av = fadd float %i.ab, %i.ag
  %i.aw = fmul <2 x float> %i.au, %i.au           ; 2 uses
  %shift = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.aw, %shift
  %i.ax = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.az = load float, ptr %i.ay, align 8, !tbaa !168 ; 2 uses
  %i.ba = fmul float %i.az, %i.az
  %i.bb = fcmp ogt float %i.ax, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !169 ; 2 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = fcmp olt float %i.ax, %i.be
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.bg = extractelement <2 x float> %i.au, i64 0
  %i.bh = extractelement <2 x float> %i.au, i64 1
  %i.bi = call noundef float @atan2f(float noundef %i.bh, float noundef %i.bg) #31 ; 3 uses
  %i.bj = fcmp olt float %i.bi, 0.000000e+00
  %i.bk = fadd float %i.bi, f0x40C90FDB
  %spec.select = select i1 %i.bj, float %i.bk, float %i.bi ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !170
  %i.bn = fcmp ogt float %spec.select, %i.bm
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 1, ptr %i.bo, align 4, !tbaa !112
  store float %i.ad, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store <2 x float> %i.au, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.av, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %spec.select, ptr %.sroa.6.0..sroa_idx, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.d, %bb.i, %bb.j, %bb.g, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt4Disk27InteractionFromIntersectionERKNS_19QuadricIntersectionENS_7Vector3IfEEf(ptr dead_on_unwind noalias writable sret(%"class.pbrt::SurfaceInteraction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(20) %2, <2 x float> %3, float %4, float noundef %5) local_unnamed_addr #6 comdat align 2 {
_ZN4pbrt8Point3fiC2ENS_6Point3IfEENS_7Vector3IfEE.exit:
  %6 = alloca %"class.pbrt::SurfaceInteraction", align 8 ; 27 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.040.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load float, ptr %i.b, align 4, !tbaa !397
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load float, ptr %i.d, align 8, !tbaa !170 ; 2 uses
  %i.f = fmul <2 x float> %.sroa.040.0.copyload, %.sroa.040.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.f, %shift
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load float, ptr %i.h, align 8, !tbaa !168 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.k = load float, ptr %i.j, align 4, !tbaa !169 ; 2 uses
  %i.l = fsub float %i.i, %i.k
  %i.m = fneg float %i.e
  %i.n = fsub float %i.k, %i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.p = load <4 x float>, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i8, ptr %i.q, align 8, !tbaa !105, !range !42, !noundef !43
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.t = load i8, ptr %i.s, align 1, !tbaa !106, !range !42, !noundef !43
  %.not = icmp eq i8 %i.r, %i.t
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !104  ; 4 uses
  %i.w = shufflevector <2 x float> %3, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load <2 x float>, ptr %i.y, align 4, !tbaa !28
  %i.aa = fmul <2 x float> %3, %i.z               ; 2 uses
  %shift103 = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop104 = fadd <2 x float> %i.aa, %shift103
  %i.ab = extractelement <2 x float> %foldExtExtBinop104, i64 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !28
  %i.ae = fmul float %4, %i.ad
  %i.af = fadd float %i.ab, %i.ae                 ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !103
  %.sroa.0.0.vec.insert.i.i = shufflevector <2 x float> %.sroa.040.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer
end_hunk_1
begin_hunk_2_@"_ZNSt17_Function_handlerIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataS5_OSA_"
define internal noundef ptr @"_ZNSt17_Function_handlerIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E9_M_invokeERKSt9_Any_dataS5_OSA_"(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(248) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) #6 align 2 {
bb.a:
  %.val = load ptr, ptr %2, align 8, !tbaa !181   ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.c = load ptr, ptr %.val, align 8, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef 16, i64 noundef 4), !inline_history !553 ; 3 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.f, align 4
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store <2 x float> splat (float 1.000000e+00), ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 4, !tbaa !77
  %i.g = load ptr, ptr %.val, align 8, !tbaa !68
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(8) %.val, i64 noundef 48, i64 noundef 8), !inline_history !554 ; 8 uses
  %.sroa.05.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.a, align 8 ; 3 uses
  %.sroa.26.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.26.0.copyload.i.i.i.i.i = load float, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i, align 8 ; 4 uses
  %.sroa.03.0.copyload.i.i.i.i.i = load <2 x float>, ptr %i.b, align 4 ; 3 uses
  %.sroa.24.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 148
  %.sroa.24.0.copyload.i.i.i.i.i = load float, ptr %.sroa.24.0..sroa_idx.i.i.i.i.i, align 4 ; 3 uses
  %i.k = ptrtoint ptr %i.f to i64
  %i.l = or i64 %i.k, 288230376151711744
  store i64 %i.l, ptr %i.j, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = fmul <2 x float> %.sroa.03.0.copyload.i.i.i.i.i, %.sroa.03.0.copyload.i.i.i.i.i ; 2 uses
  %shift = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.n, %shift
  %i.o = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.p = fmul float %.sroa.24.0.copyload.i.i.i.i.i, %.sroa.24.0.copyload.i.i.i.i.i
  %i.q = fadd float %i.p, %i.o
  %sqrt.i.i.i.i.i.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.q) ; 2 uses
  %i.r = insertelement <2 x float> poison, float %sqrt.i.i.i.i.i.i.i.i, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fdiv <2 x float> %.sroa.03.0.copyload.i.i.i.i.i, %i.s ; 3 uses
  %i.u = fdiv float %.sroa.24.0.copyload.i.i.i.i.i, %sqrt.i.i.i.i.i.i.i.i ; 4 uses
  %.sroa.01.0.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i.i.i, i64 0 ; 3 uses
  %.sroa.01.4.vec.extract.i.i.i.i.i.i.i = extractelement <2 x float> %.sroa.05.0.copyload.i.i.i.i.i, i64 1 ; 3 uses
  %i.v = extractelement <2 x float> %i.t, i64 1   ; 3 uses
  %i.w = fmul float %.sroa.26.0.copyload.i.i.i.i.i, %i.v ; 2 uses
  %i.x = fneg float %i.w
  %i.y = tail call noundef float @llvm.fma.f32(float %.sroa.01.4.vec.extract.i.i.i.i.i.i.i, float %i.u, float %i.x)
  %i.z = fneg float %.sroa.26.0.copyload.i.i.i.i.i
  %i.aa = tail call noundef float @llvm.fma.f32(float %i.z, float %i.v, float %i.w)
  %i.ab = fadd float %i.y, %i.aa
  %i.ac = fmul float %.sroa.01.0.vec.extract.i.i.i.i.i.i.i, %i.u ; 2 uses
  %i.ad = fneg float %i.ac
  %i.ae = extractelement <2 x float> %i.t, i64 0  ; 3 uses
  %i.af = tail call noundef float @llvm.fma.f32(float %.sroa.26.0.copyload.i.i.i.i.i, float %i.ae, float %i.ad)
  %i.ag = fneg float %.sroa.01.0.vec.extract.i.i.i.i.i.i.i
  %i.ah = tail call noundef float @llvm.fma.f32(float %i.ag, float %i.u, float %i.ac)
  %i.ai = fadd float %i.af, %i.ah
  %i.aj = fmul float %.sroa.01.4.vec.extract.i.i.i.i.i.i.i, %i.ae ; 2 uses
  %i.ak = fneg float %i.aj
  %i.al = tail call noundef float @llvm.fma.f32(float %.sroa.01.0.vec.extract.i.i.i.i.i.i.i, float %i.v, float %i.ak)
  %i.am = fneg float %.sroa.01.4.vec.extract.i.i.i.i.i.i.i
  %i.an = tail call noundef float @llvm.fma.f32(float %i.am, float %i.ae, float %i.aj)
  %i.ao = fadd float %i.al, %i.an
  %.sroa.0.0.vec.insert.i.i23.i.i.i.i.i.i = insertelement <2 x float> poison, float %i.ab, i64 0
  %.sroa.0.4.vec.insert.i.i24.i.i.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i23.i.i.i.i.i.i, float %i.ai, i64 1
  store <2 x float> %i.t, ptr %i.m, align 8, !alias.scope !557
  %.sroa.210.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store float %i.u, ptr %.sroa.210.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !557
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store <2 x float> %.sroa.0.4.vec.insert.i.i24.i.i.i.i.i.i, ptr %i.ap, align 4, !alias.scope !557
  %.sroa.26.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store float %i.ao, ptr %.sroa.26.0..sroa_idx.i.i.i.i.i.i.i.i, align 4, !alias.scope !557
  %i.aq = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store <2 x float> %.sroa.05.0.copyload.i.i.i.i.i, ptr %i.aq, align 8, !alias.scope !557
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store float %.sroa.26.0.copyload.i.i.i.i.i, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !557
  ret ptr %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN4pbrt4BSDFERKNS0_18SurfaceInteractionEN4pstd3pmr21polymorphic_allocatorISt4byteEEEZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #26 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit" [
    i32 0, label %"_ZNSt14_Function_base13_Base_managerIZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %"_ZNSt14_Function_base13_Base_managerIZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split"

"_ZNSt14_Function_base13_Base_managerIZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split": ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %1, %bb.b ], [ @"_ZTIZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0", %bb.a ]
  store ptr %.sink, ptr %0, align 8, !tbaa !24
  br label %"_ZNSt14_Function_base13_Base_managerIZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit": ; preds = %"_ZNSt14_Function_base13_Base_managerIZN48BSDFEnergyConservation_LambertianReflection_Test8TestBodyEvE3$_0E10_M_managerERSt9_Any_dataRKS4_St18_Manager_operation.exit.sink.split", %bb.a
  ret i1 false
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_bsdfs_test.cpp() #27 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store <8 x float> <float f0x3F652546, float 2.664000e-01, float -1.614000e-01, float f0xBF400D1B, float 1.713500e+00, float 3.670000e-02, float 3.890000e-02, float -6.850000e-02>, ptr @_ZN4pbrtL10LMSFromXYZE, align 32, !tbaa !28
  store float 1.029600e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10LMSFromXYZE, i64 32), align 32, !tbaa !28
  %i.a = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10LMSFromXYZE) ; 0 uses
  store <8 x float> <float 9.869930e-01, float -1.470540e-01, float 1.599630e-01, float 4.323050e-01, float 5.183600e-01, float 4.929120e-02, float -8.528660e-03, float 4.004280e-02>, ptr @_ZN4pbrtL10XYZFromLMSE, align 32, !tbaa !28
  store float 9.684870e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN4pbrtL10XYZFromLMSE, i64 32), align 32, !tbaa !28
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 36, ptr nonnull @_ZN4pbrtL10XYZFromLMSE) ; 0 uses
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL29STATS_REGredundantBufferBytesE, ptr noundef nonnull @"_ZN4pbrt3$_08__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  tail call void @_ZN4pbrt14StatRegistererC1EPFvRNS_16StatsAccumulatorEEPFvNS_6Point2IiEEiRNS_21PixelStatsAccumulatorEE(ptr noundef nonnull align 1 dereferenceable(1) @_ZN4pbrtL25STATS_REGnBufferCacheHitsE, ptr noundef nonnull @"_ZN4pbrt3$_18__invokeERNS_16StatsAccumulatorE", ptr noundef null)
  %i.c = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.d = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI28BSDFSampling_Lambertian_TestEE, i64 16), ptr %i.d, align 8, !tbaa !68
  %i.e = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef null, ptr noundef %i.c, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.d)
  store ptr %i.e, ptr @_ZN28BSDFSampling_Lambertian_Test10test_info_E, align 8, !tbaa !559
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN28BSDFSampling_Lambertian_Test10test_info_E) ; 0 uses
  %i.g = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.h = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI27BSDFSampling_TRCondIso_TestEE, i64 16), ptr %i.h, align 8, !tbaa !68
  %i.i = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.32, ptr noundef null, ptr noundef null, ptr noundef %i.g, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.h)
  store ptr %i.i, ptr @_ZN27BSDFSampling_TRCondIso_Test10test_info_E, align 8, !tbaa !559
  %i.j = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN27BSDFSampling_TRCondIso_Test10test_info_E) ; 0 uses
  %i.k = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.l = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI29BSDFSampling_TRCondAniso_TestEE, i64 16), ptr %i.l, align 8, !tbaa !68
  %i.m = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.34, ptr noundef null, ptr noundef null, ptr noundef %i.k, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.l)
  store ptr %i.m, ptr @_ZN29BSDFSampling_TRCondAniso_Test10test_info_E, align 8, !tbaa !559
  %i.n = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN29BSDFSampling_TRCondAniso_Test10test_info_E) ; 0 uses
  %i.o = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.p = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI27BSDFSampling_TRDielIso_TestEE, i64 16), ptr %i.p, align 8, !tbaa !68
  %i.q = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef null, ptr noundef %i.o, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.p)
  store ptr %i.q, ptr @_ZN27BSDFSampling_TRDielIso_Test10test_info_E, align 8, !tbaa !559
  %i.r = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN27BSDFSampling_TRDielIso_Test10test_info_E) ; 0 uses
  %i.s = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.t = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI29BSDFSampling_TRDielAniso_TestEE, i64 16), ptr %i.t, align 8, !tbaa !68
  %i.u = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.38, ptr noundef null, ptr noundef null, ptr noundef %i.s, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.t)
  store ptr %i.u, ptr @_ZN29BSDFSampling_TRDielAniso_Test10test_info_E, align 8, !tbaa !559
  %i.v = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN29BSDFSampling_TRDielAniso_Test10test_info_E) ; 0 uses
  %i.w = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.x = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI30BSDFSampling_TRDielIsoInv_TestEE, i64 16), ptr %i.x, align 8, !tbaa !68
  %i.y = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.40, ptr noundef null, ptr noundef null, ptr noundef %i.w, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.x)
  store ptr %i.y, ptr @_ZN30BSDFSampling_TRDielIsoInv_Test10test_info_E, align 8, !tbaa !559
  %i.z = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN30BSDFSampling_TRDielIsoInv_Test10test_info_E) ; 0 uses
  %i.aa = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ab = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI32BSDFSampling_TRDielAnisoInv_TestEE, i64 16), ptr %i.ab, align 8, !tbaa !68
  %i.ac = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.42, ptr noundef null, ptr noundef null, ptr noundef %i.aa, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ab)
  store ptr %i.ac, ptr @_ZN32BSDFSampling_TRDielAnisoInv_Test10test_info_E, align 8, !tbaa !559
  %i.ad = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN32BSDFSampling_TRDielAnisoInv_Test10test_info_E) ; 0 uses
  %i.ae = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.af = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI48BSDFEnergyConservation_LambertianReflection_TestEE, i64 16), ptr %i.af, align 8, !tbaa !68
  %i.ag = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.45, ptr noundef null, ptr noundef null, ptr noundef %i.ae, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.af)
  store ptr %i.ag, ptr @_ZN48BSDFEnergyConservation_LambertianReflection_Test10test_info_E, align 8, !tbaa !559
  %i.ah = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN48BSDFEnergyConservation_LambertianReflection_Test10test_info_E) ; 0 uses
  %i.ai = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.aj = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI22Hair_WhiteFurnace_TestEE, i64 16), ptr %i.aj, align 8, !tbaa !68
  %i.ak = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef null, ptr noundef null, ptr noundef %i.ai, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.aj)
  store ptr %i.ak, ptr @_ZN22Hair_WhiteFurnace_Test10test_info_E, align 8, !tbaa !559
  %i.al = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN22Hair_WhiteFurnace_Test10test_info_E) ; 0 uses
  %i.am = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.an = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI20Hair_HOnTheEdge_TestEE, i64 16), ptr %i.an, align 8, !tbaa !68
  %i.ao = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.51, ptr noundef null, ptr noundef null, ptr noundef %i.am, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.an)
  store ptr %i.ao, ptr @_ZN20Hair_HOnTheEdge_Test10test_info_E, align 8, !tbaa !559
  %i.ap = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN20Hair_HOnTheEdge_Test10test_info_E) ; 0 uses
  %i.aq = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.ar = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI29Hair_WhiteFurnaceSampled_TestEE, i64 16), ptr %i.ar, align 8, !tbaa !68
  %i.as = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.53, ptr noundef null, ptr noundef null, ptr noundef %i.aq, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.ar)
  store ptr %i.as, ptr @_ZN29Hair_WhiteFurnaceSampled_Test10test_info_E, align 8, !tbaa !559
  %i.at = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN29Hair_WhiteFurnaceSampled_Test10test_info_E) ; 0 uses
  %i.au = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.av = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI25Hair_SamplingWeights_TestEE, i64 16), ptr %i.av, align 8, !tbaa !68
  %i.aw = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.56, ptr noundef null, ptr noundef null, ptr noundef %i.au, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.av)
  store ptr %i.aw, ptr @_ZN25Hair_SamplingWeights_Test10test_info_E, align 8, !tbaa !559
  %i.ax = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN25Hair_SamplingWeights_Test10test_info_E) ; 0 uses
  %i.ay = tail call noundef ptr @_ZN7testing8internal13GetTestTypeIdEv()
  %i.az = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7testing8internal15TestFactoryImplI29Hair_SamplingConsistency_TestEE, i64 16), ptr %i.az, align 8, !tbaa !68
  %i.ba = tail call noundef ptr @_ZN7testing8internal23MakeAndRegisterTestInfoEPKcS2_S2_S2_PKvPFvvES6_PNS0_15TestFactoryBaseE(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.61, ptr noundef null, ptr noundef null, ptr noundef %i.ay, ptr noundef nonnull @_ZN7testing4Test13SetUpTestCaseEv, ptr noundef nonnull @_ZN7testing4Test16TearDownTestCaseEv, ptr noundef nonnull %i.az)
  store ptr %i.ba, ptr @_ZN29Hair_SamplingConsistency_Test10test_info_E, align 8, !tbaa !559
  %i.bb = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN29Hair_SamplingConsistency_Test10test_info_E) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.fshr.v2i32(<2 x i32>, <2 x i32>, <2 x i32>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4f32.v4p0(<4 x float>, <4 x ptr>, <4 x i1>) #29

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v4i64.v4p0(<4 x i64>, <4 x ptr>, <4 x i1>) #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.masked.store.v3f32.p0(<3 x float>, ptr captures(none), <3 x i1>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fma.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #30

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { cold noreturn }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { cold nofree noreturn }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nofree nounwind }
attributes #20 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #25 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #31 = { nounwind }
attributes #32 = { noreturn }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn nounwind }
attributes #35 = { builtin nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{ptr @_ZN7testing7MessageD2Ev, null, null}
!1 = distinct !{null}
!2 = distinct !{null, null}
!3 = distinct !{!3, !13}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!10, !10, i64 0}
!15 = !{!"any pointer", !9, i64 0}
!16 = !{!"_ZTSSt14_Function_base", !9, i64 0, !15, i64 16}
!17 = !{!16, !15, i64 16}
!18 = !{!"p1 _ZTSSt8functionIFffEE", !15, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 int", !15, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"p1 _ZTSSt8functionIFfffffffffiEE", !15, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!15, !15, i64 0}
!25 = !{!"_ZTSSt8functionIFfffffffffiEE", !16, i64 0, !15, i64 24}
!26 = !{!25, !15, i64 24}
!27 = !{!"float", !9, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"_ZTSSt8functionIFffEE", !16, i64 0, !15, i64 24}
!30 = !{!29, !15, i64 24}
!31 = !{!"p1 _ZTSSt8functionIFfffEE", !15, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"p1 float", !15, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"long", !9, i64 0}
!36 = !{!"_ZTSN4pbrt3RNGE", !35, i64 0, !35, i64 8}
!37 = !{!36, !35, i64 0}
!38 = !{!36, !35, i64 8}
!39 = !{!"bool", !9, i64 0}
!40 = !{!"_ZTSN4pstd8optionalIN4pbrt10BSDFSampleEEE", !9, i64 0, !39, i64 44}
!41 = !{!40, !39, i64 44}
!42 = !{i8 0, i8 2}
!43 = !{}
!44 = !{!"_ZTSN4pstd5arrayIfLi4EEE", !9, i64 0}
!45 = !{!"_ZTSN4pbrt15SampledSpectrumE", !44, i64 0}
!46 = !{!"_ZTSN4pbrt6Tuple3INS_7Vector3EfEE", !27, i64 0, !27, i64 4, !27, i64 8}
!47 = !{!"_ZTSN4pbrt7Vector3IfEE", !46, i64 0}
!48 = !{!"_ZTSN4pbrt9BxDFFlagsE", !9, i64 0}
!49 = !{!"_ZTSN4pbrt10BSDFSampleE", !45, i64 0, !47, i64 16, !27, i64 28, !48, i64 32, !27, i64 36, !39, i64 40}
!50 = !{!49, !48, i64 32}
!51 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_23DiffuseTransmissionBxDFENS_11DiffuseBxDFENS_17CoatedDiffuseBxDFENS_19CoatedConductorBxDFENS_14DielectricBxDFENS_18ThinDielectricBxDFENS_8HairBxDFENS_12MeasuredBxDFENS_13ConductorBxDFENS_21NormalizedFresnelBxDFEEEE", !35, i64 0}
!52 = !{!51, !35, i64 0}
!53 = !{!"_ZTSN4pbrt13TransportModeE", !9, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"_ZTSN4pbrt18BxDFReflTransFlagsE", !9, i64 0}
!56 = !{!55, !55, i64 0}
!57 = !{!"p1 _ZTSN4pbrt7Vector3IfEE", !15, i64 0}
!58 = !{!57, !57, i64 0}
!59 = !{!"p1 _ZTSN4pbrt6Point2IfEE", !15, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!46, !27, i64 8}
!62 = !{!"p1 _ZTSN4pbrt4BSDFE", !15, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!"any p2 pointer", !15, i64 0}
!65 = !{!"p2 _ZTSN4pbrt4BSDFE", !64, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!"vtable pointer", !8, i64 0}
!68 = !{!67, !67, i64 0}
!69 = !{!"_ZTSSt13_Ios_Fmtflags", !9, i64 0}
!70 = !{!"_ZTSSt12_Ios_Iostate", !9, i64 0}
!71 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!72 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !35, i64 8}
!73 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!74 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!75 = !{!"_ZTSSt6locale", !74, i64 0}
!76 = !{!"_ZTSSt8ios_base", !35, i64 8, !35, i64 16, !69, i64 24, !70, i64 28, !70, i64 32, !71, i64 40, !72, i64 48, !9, i64 64, !10, i64 192, !73, i64 200, !75, i64 208}
!77 = !{!9, !9, i64 0}
!78 = !{!76, !70, i64 32}
!79 = !{!35, !35, i64 0}
!80 = !{i64 0, i64 4, !28, i64 8, i64 8, !79}
!81 = !{!"_ZTSZ8Chi2TestB5cxx11PKfS0_iiiffiE4Cell", !27, i64 0, !35, i64 8}
!82 = !{!81, !27, i64 0}
!83 = !{!"p1 omnipotent char", !15, i64 0}
!84 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !83, i64 0}
!85 = !{!84, !83, i64 0}
!86 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !84, i64 0, !35, i64 8, !9, i64 16}
!87 = !{!86, !35, i64 8}
!88 = !{!86, !83, i64 0}
!89 = !{!"_ZTSSt4pairIbNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !39, i64 0, !86, i64 8}
!90 = !{!89, !39, i64 0}
!91 = !{!83, !83, i64 0}
!92 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 8, !10, i64 12}
!93 = !{!92, !10, i64 8}
!94 = !{!92, !10, i64 12}
!95 = !{i64 0, i64 64, !77, i64 64, i64 64, !77}
!96 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !15, i64 0}
!97 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !96, i64 0}
!98 = !{!97, !96, i64 0}
!99 = !{!"p1 _ZTSN4pbrt9TransformE", !15, i64 0}
!100 = !{!99, !99, i64 0}
!101 = !{i64 0, i64 64, !77}
!102 = !{!"_ZTSN4pbrt4DiskE", !99, i64 0, !99, i64 8, !39, i64 16, !39, i64 17, !27, i64 20, !27, i64 24, !27, i64 28, !27, i64 32}
!103 = !{!102, !99, i64 0}
!104 = !{!102, !99, i64 8}
!105 = !{!102, !39, i64 16}
!106 = !{!102, !39, i64 17}
!107 = !{!"p1 _ZTSN4pbrt4DiskE", !15, i64 0}
!108 = !{!107, !107, i64 0}
!109 = !{!"_ZTSN4pbrt13TaggedPointerIJNS_17HomogeneousMediumENS_10GridMediumENS_13RGBGridMediumENS_11CloudMediumENS_13NanoVDBMediumEEEE", !35, i64 0}
!110 = !{!109, !35, i64 0}
!111 = !{!"_ZTSN4pstd8optionalIN4pbrt19QuadricIntersectionEEE", !9, i64 0, !39, i64 20}
!112 = !{!111, !39, i64 20}
!113 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3EfEE", !27, i64 0, !27, i64 4, !27, i64 8}
!114 = !{!"_ZTSN4pbrt6Point3IfEE", !113, i64 0}
!115 = !{!"_ZTSN4pbrt6MediumE", !109, i64 0}
!116 = !{!"_ZTSN4pbrt3RayE", !114, i64 0, !47, i64 12, !27, i64 24, !115, i64 32}
!117 = !{!116, !27, i64 24}
!118 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!119 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !118, i64 0}
!120 = !{!"_ZTSN7testing15AssertionResultE", !39, i64 0, !119, i64 8}
!121 = !{!120, !39, i64 0}
!122 = !{!119, !118, i64 0}
!123 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!124 = !{!"_ZTSN7testing8internal10scoped_ptrINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEE", !123, i64 0}
!125 = !{!124, !123, i64 0}
!126 = !{!"_ZTSN4pbrt19QuadricIntersectionE", !27, i64 0, !114, i64 4, !27, i64 16}
!127 = !{!126, !27, i64 0}
!128 = !{!"_ZTSN4pstd8optionalIN4pbrt17ShapeIntersectionEEE", !9, i64 0, !39, i64 256}
!129 = !{!128, !39, i64 256}
!130 = !{!"_ZTSN4pbrt8IntervalE", !27, i64 0, !27, i64 4}
!131 = !{!"_ZTSN4pbrt6Tuple3INS_6Point3ENS_8IntervalEEE", !130, i64 0, !130, i64 8, !130, i64 16}
!132 = !{!"_ZTSN4pbrt6Point3INS_8IntervalEEE", !131, i64 0}
!133 = !{!"_ZTSN4pbrt8Point3fiE", !132, i64 0}
!134 = !{!"_ZTSN4pbrt6Tuple3INS_7Normal3EfEE", !27, i64 0, !27, i64 4, !27, i64 8}
!135 = !{!"_ZTSN4pbrt7Normal3IfEE", !134, i64 0}
!136 = !{!"_ZTSN4pbrt6Tuple2INS_6Point2EfEE", !27, i64 0, !27, i64 4}
end_hunk_2
