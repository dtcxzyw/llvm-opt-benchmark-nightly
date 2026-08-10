inline.NumInlined: 940
inline.NumDeleted: 548
begin_hunk_0_@_ZN3gmx15analysismodules12_GLOBAL__N_13Rdf12analyzeFrameEiRK10t_trxframeP5t_pbcPNS_28TrajectoryAnalysisModuleDataE:bb.a

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.iz) #23
  br label %_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit

_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit:     ; preds = %bb.bg, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i130, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.jp = load ptr, ptr %8, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.jp, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !99
  %i.js = ptrtoint ptr %i.jr to i64
  %i.jt = ptrtoint ptr %i.jp to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %i.jp, i64 noundef %i.ju) #26
  br label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit:   ; preds = %_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  ret void

bb.bo:                                            ; preds = %bb.bf, %.split158.us
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bp:                                            ; preds = %.split160, %.split160.us, %bb.be, %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit122, %bb.bo
  %.pn100.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jv, %bb.bo ], [ %.pn.pn, %bb.be ], [ %.pn100.pn, %_ZN3gmx30AnalysisNeighborhoodPairSearchD2Ev.exit122 ], [ %i.ez, %.split160 ], [ %i.eh, %.split160.us ] ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !77 ; 8 uses
  %.not.i.i.i133 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i133, label %_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit137, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8 ; 4 uses
  %i.jz = load atomic i64, ptr %i.jy acquire, align 8 ; 2 uses
  %i.ka = icmp eq i64 %i.jz, 4294967297
  %i.kb = trunc i64 %i.jz to i32                  ; 2 uses
  br i1 %i.ka, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.jy, align 8, !tbaa !79
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  store i32 0, ptr %i.kc, align 4, !tbaa !81
  %i.kd = load ptr, ptr %i.jx, align 8, !tbaa !9
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #23, !inline_history !244
  %i.kg = load ptr, ptr %i.jx, align 8, !tbaa !9
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 24
  %i.ki = load ptr, ptr %i.kh, align 8
  call void %i.ki(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #23, !inline_history !244
  br label %_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit137

bb.bs:                                            ; preds = %bb.bq
  %i.kj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i134 = icmp eq i8 %i.kj, 0
  br i1 %.not.i.i.i.i134, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kk = add nsw i32 %i.kb, -1
  store i32 %i.kk, ptr %i.jy, align 8, !tbaa !95
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i135

bb.bu:                                            ; preds = %bb.bs
  %i.kl = atomicrmw volatile add ptr %i.jy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i135

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i135: ; preds = %bb.bu, %bb.bt
  %.0.i.i.i.i.i136 = phi i32 [ %i.kb, %bb.bt ], [ %i.kl, %bb.bu ]
  %i.km = icmp eq i32 %.0.i.i.i.i.i136, 1
  br i1 %i.km, label %bb.bv, label %_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit137, !prof !97

bb.bv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i135
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jx) #23
  br label %_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit137

_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit137:  ; preds = %bb.bv, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i135, %bb.br, %bb.bp, %bb.ab
  %.pn100.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.es, %bb.ab ], [ %.pn100.pn.pn.pn.pn, %bb.bp ], [ %.pn100.pn.pn.pn.pn, %bb.br ], [ %.pn100.pn.pn.pn.pn, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i135 ], [ %.pn100.pn.pn.pn.pn, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.bw

bb.bw:                                            ; preds = %bb.d, %_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit137, %bb.e
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.e ], [ %i.cc, %bb.d ], [ %.pn100.pn.pn.pn.pn.pn, %_ZN3gmx26AnalysisNeighborhoodSearchD2Ev.exit137 ]
  %i.kn = load ptr, ptr %8, align 8, !tbaa !98    ; 3 uses
  %.not.i.i.i138 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit139, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ko = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !99
  %i.kq = ptrtoint ptr %i.kp to i64
  %i.kr = ptrtoint ptr %i.kn to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.ks) #26
  br label %_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit139

_ZNSt6vectorIN3gmx9SelectionESaIS1_EED2Ev.exit139: ; preds = %bb.bw, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %.pn107.pn.pn.pn
}

declare void @_ZN3gmx24TrajectoryAnalysisModule12finishFramesEPNS_28TrajectoryAnalysisModuleDataE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN3gmx15analysismodules12_GLOBAL__N_13Rdf14finishAnalysisEi(ptr noundef nonnull align 8 dereferenceable(276) %0, i32 %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::unique_ptr.221", align 8 ; 10 uses
  %3 = alloca %"class.std::shared_ptr.229", align 8 ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.66", align 8 ; 7 uses
  %6 = alloca %"class.std::unique_ptr.221", align 8 ; 9 uses
  %7 = alloca %"class.std::shared_ptr.229", align 8 ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::shared_ptr.66", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.c = tail call noundef float @_ZNK3gmx25AnalysisDataAverageModule7averageEii(ptr noundef nonnull align 8 dereferenceable(120) %i.b, i32 noundef 0, i32 noundef 0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.f = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN3gmx33AnalysisDataSimpleHistogramModule8averagerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.e)
  %i.g = fdiv float 1.000000e+00, %i.c
  tail call void @_ZN3gmx24AbstractAverageHistogram8scaleAllEf(ptr noundef nonnull align 8 dereferenceable(136) %i.f, float noundef %i.g)
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.i = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN3gmx33AnalysisDataSimpleHistogramModule8averagerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.h)
  tail call void @_ZN3gmx25AbstractAnalysisArrayData11valuesReadyEv(ptr noundef nonnull align 8 dereferenceable(136) %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.k = tail call noundef nonnull align 8 dereferenceable(136) ptr @_ZN3gmx33AnalysisDataSimpleHistogramModule8averagerEv(ptr noundef nonnull align 8 dereferenceable(32) %i.j)
  call void @_ZNK3gmx24AbstractAverageHistogram22resampleDoubleBinWidthEb(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.221") align 8 %2, ptr noundef nonnull align 8 dereferenceable(136) %i.k, i1 noundef zeroext true)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !169
  %.not = icmp eq i32 %i.m, 2
  %i.n = load ptr, ptr %2, align 8, !tbaa !245    ; 3 uses
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = load i64, ptr %i.o, align 8, !tbaa !247  ; 5 uses
  %i.q = trunc i64 %i.p to i32
  %sext = shl i64 %i.p, 32                        ; 3 uses
  %i.r = ashr exact i64 %sext, 32                 ; 3 uses
  %.not122 = icmp eq i64 %sext, 0
  br i1 %.not122, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ugt i64 %i.r, 2305843009213693951
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #24
          to label %.noexc107 unwind label %.thread

.noexc107:                                        ; preds = %bb.d
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.c
  %i.t = ashr exact i64 %sext, 30
  %i.u = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #22
          to label %.noexc108 unwind label %.thread ; 4 uses

.noexc108:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  store float 0.000000e+00, ptr %i.u, align 4, !tbaa !90
  %i.v = add nsw i64 %i.r, -1                     ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.noexc, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc108
  %i.x = getelementptr i8, ptr %i.u, i64 4
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.v, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.x, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !90
  br label %.noexc

.noexc:                                           ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i, %.noexc108
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.r
  %i.z = ptrtoint ptr %i.y to i64
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.b, %.noexc
  %.sroa.0.1 = phi ptr [ %i.u, %.noexc ], [ null, %bb.b ] ; 11 uses
  %.sroa.16.1 = phi i64 [ %i.z, %.noexc ], [ 0, %bb.b ] ; 2 uses
  %i.aa = icmp sgt i32 %i.q, 0
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !89 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 261
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !178, !range !167, !noundef !168
  %i.af = trunc nuw i8 %i.ae to i1
  %wide.trip.count143 = and i64 %i.p, 2147483647  ; 5 uses
  %min.iters.check172 = icmp samesign ult i64 %wide.trip.count143, 16 ; 2 uses
  br i1 %i.af, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check172, label %.lr.ph.split.preheader192, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %i.p, 2147483632               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.ac, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph ], [ %45, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add.2 = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.3 = add <4 x i32> %vec.ind, splat (i32 12)
  %10 = uitofp nneg <4 x i32> %vec.ind to <4 x double>
  %11 = uitofp nneg <4 x i32> %step.add to <4 x double>
  %12 = uitofp nneg <4 x i32> %step.add.2 to <4 x double>
  %13 = uitofp nneg <4 x i32> %step.add.3 to <4 x double>
  %14 = fadd nnan <4 x double> %10, splat (double 5.000000e-01)
  %15 = fadd nnan <4 x double> %11, splat (double 5.000000e-01)
  %16 = fadd nnan <4 x double> %12, splat (double 5.000000e-01)
  %17 = fadd nnan <4 x double> %13, splat (double 5.000000e-01)
  %18 = fmul <4 x double> %14, %broadcast.splat
  %19 = fmul <4 x double> %15, %broadcast.splat
  %20 = fmul <4 x double> %16, %broadcast.splat
  %21 = fmul <4 x double> %17, %broadcast.splat
  %22 = fptrunc <4 x double> %18 to <4 x float>
  %23 = fptrunc <4 x double> %19 to <4 x float>
  %24 = fptrunc <4 x double> %20 to <4 x float>
  %25 = fptrunc <4 x double> %21 to <4 x float>
  %26 = fpext <4 x float> %22 to <4 x double>     ; 3 uses
  %27 = fpext <4 x float> %23 to <4 x double>     ; 3 uses
  %28 = fpext <4 x float> %24 to <4 x double>     ; 3 uses
  %29 = fpext <4 x float> %25 to <4 x double>     ; 3 uses
  %30 = fmul <4 x double> %26, splat (double f0x4010C152382D7365)
  %31 = fmul <4 x double> %27, splat (double f0x4010C152382D7365)
  %32 = fmul <4 x double> %28, splat (double f0x4010C152382D7365)
  %33 = fmul <4 x double> %29, splat (double f0x4010C152382D7365)
  %34 = fmul <4 x double> %30, %26
  %35 = fmul <4 x double> %31, %27
  %36 = fmul <4 x double> %32, %28
  %37 = fmul <4 x double> %33, %29
  %38 = fmul <4 x double> %34, %26
  %39 = fmul <4 x double> %35, %27
  %40 = fmul <4 x double> %36, %28
  %41 = fmul <4 x double> %37, %29
  %42 = fptrunc <4 x double> %38 to <4 x float>   ; 3 uses
  %43 = fptrunc <4 x double> %39 to <4 x float>   ; 3 uses
  %44 = fptrunc <4 x double> %40 to <4 x float>   ; 3 uses
  %45 = fptrunc <4 x double> %41 to <4 x float>   ; 4 uses
  %46 = shufflevector <4 x float> %vector.recur, <4 x float> %42, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %47 = shufflevector <4 x float> %42, <4 x float> %43, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %48 = shufflevector <4 x float> %43, <4 x float> %44, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %49 = shufflevector <4 x float> %44, <4 x float> %45, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %50 = fsub <4 x float> %42, %46
  %51 = fsub <4 x float> %43, %47
  %52 = fsub <4 x float> %44, %48
  %53 = fsub <4 x float> %45, %49
  %54 = fdiv <4 x float> splat (float 1.000000e+00), %50
  %55 = fdiv <4 x float> splat (float 1.000000e+00), %51
  %56 = fdiv <4 x float> splat (float 1.000000e+00), %52
  %57 = fdiv <4 x float> splat (float 1.000000e+00), %53
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1, i64 %index ; 4 uses
  %58 = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %59 = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %60 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  store <4 x float> %54, ptr %i.ag, align 4, !tbaa !90
  store <4 x float> %55, ptr %58, align 4, !tbaa !90
  store <4 x float> %56, ptr %59, align 4, !tbaa !90
  store <4 x float> %57, ptr %60, align 4, !tbaa !90
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 16)
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x float> %45, i64 3
  %cmp.n = icmp eq i64 %wide.trip.count143, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader192

.lr.ph.split.preheader192:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ]
  %.042129.ph = phi float [ 0.000000e+00, %.lr.ph.split.preheader ], [ %vector.recur.extract, %middle.block ]
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  br i1 %min.iters.check172, label %.lr.ph.split.us.preheader191, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.split.us.preheader
  %n.vec174 = and i64 %i.p, 2147483632            ; 3 uses
  %broadcast.splatinsert175 = insertelement <4 x double> poison, double %i.ac, i64 0
  %broadcast.splat176 = shufflevector <4 x double> %broadcast.splatinsert175, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph173
  %index178 = phi i64 [ 0, %vector.ph173 ], [ %index.next184, %vector.body177 ] ; 2 uses
  %vector.recur179 = phi <4 x float> [ <float poison, float poison, float poison, float 0.000000e+00>, %vector.ph173 ], [ %92, %vector.body177 ]
  %vec.ind180 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph173 ], [ %vec.ind.next185, %vector.body177 ] ; 5 uses
  %step.add181 = add <4 x i32> %vec.ind180, splat (i32 4)
  %step.add.2182 = add <4 x i32> %vec.ind180, splat (i32 8)
  %step.add.3183 = add <4 x i32> %vec.ind180, splat (i32 12)
  %61 = uitofp nneg <4 x i32> %vec.ind180 to <4 x double>
  %62 = uitofp nneg <4 x i32> %step.add181 to <4 x double>
  %63 = uitofp nneg <4 x i32> %step.add.2182 to <4 x double>
  %64 = uitofp nneg <4 x i32> %step.add.3183 to <4 x double>
  %65 = fadd nnan <4 x double> %61, splat (double 5.000000e-01)
  %66 = fadd nnan <4 x double> %62, splat (double 5.000000e-01)
  %67 = fadd nnan <4 x double> %63, splat (double 5.000000e-01)
  %68 = fadd nnan <4 x double> %64, splat (double 5.000000e-01)
  %69 = fmul <4 x double> %65, %broadcast.splat176
  %70 = fmul <4 x double> %66, %broadcast.splat176
  %71 = fmul <4 x double> %67, %broadcast.splat176
  %72 = fmul <4 x double> %68, %broadcast.splat176
  %73 = fptrunc <4 x double> %69 to <4 x float>
  %74 = fptrunc <4 x double> %70 to <4 x float>
  %75 = fptrunc <4 x double> %71 to <4 x float>
  %76 = fptrunc <4 x double> %72 to <4 x float>
  %77 = fpext <4 x float> %73 to <4 x double>     ; 2 uses
  %78 = fpext <4 x float> %74 to <4 x double>     ; 2 uses
  %79 = fpext <4 x float> %75 to <4 x double>     ; 2 uses
  %80 = fpext <4 x float> %76 to <4 x double>     ; 2 uses
  %81 = fmul <4 x double> %77, splat (double f0x400921FB54442D18)
  %82 = fmul <4 x double> %78, splat (double f0x400921FB54442D18)
  %83 = fmul <4 x double> %79, splat (double f0x400921FB54442D18)
  %84 = fmul <4 x double> %80, splat (double f0x400921FB54442D18)
  %85 = fmul <4 x double> %81, %77
  %86 = fmul <4 x double> %82, %78
  %87 = fmul <4 x double> %83, %79
  %88 = fmul <4 x double> %84, %80
  %89 = fptrunc <4 x double> %85 to <4 x float>   ; 3 uses
  %90 = fptrunc <4 x double> %86 to <4 x float>   ; 3 uses
  %91 = fptrunc <4 x double> %87 to <4 x float>   ; 3 uses
  %92 = fptrunc <4 x double> %88 to <4 x float>   ; 4 uses
  %93 = shufflevector <4 x float> %vector.recur179, <4 x float> %89, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %94 = shufflevector <4 x float> %89, <4 x float> %90, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %95 = shufflevector <4 x float> %90, <4 x float> %91, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %96 = shufflevector <4 x float> %91, <4 x float> %92, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %97 = fsub <4 x float> %89, %93
  %98 = fsub <4 x float> %90, %94
  %99 = fsub <4 x float> %91, %95
  %100 = fsub <4 x float> %92, %96
  %101 = fdiv <4 x float> splat (float 1.000000e+00), %97
  %102 = fdiv <4 x float> splat (float 1.000000e+00), %98
  %103 = fdiv <4 x float> splat (float 1.000000e+00), %99
  %104 = fdiv <4 x float> splat (float 1.000000e+00), %100
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1, i64 %index178 ; 4 uses
  %105 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %106 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %107 = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store <4 x float> %101, ptr %i.ai, align 4, !tbaa !90
  store <4 x float> %102, ptr %105, align 4, !tbaa !90
  store <4 x float> %103, ptr %106, align 4, !tbaa !90
  store <4 x float> %104, ptr %107, align 4, !tbaa !90
  %index.next184 = add nuw i64 %index178, 16      ; 2 uses
  %vec.ind.next185 = add <4 x i32> %vec.ind180, splat (i32 16)
  %i.aj = icmp eq i64 %index.next184, %n.vec174
  br i1 %i.aj, label %middle.block186, label %vector.body177, !llvm.loop !250

middle.block186:                                  ; preds = %vector.body177
  %vector.recur.extract187 = extractelement <4 x float> %92, i64 3
  %cmp.n188 = icmp eq i64 %wide.trip.count143, %n.vec174
  br i1 %cmp.n188, label %._crit_edge, label %.lr.ph.split.us.preheader191

.lr.ph.split.us.preheader191:                     ; preds = %.lr.ph.split.us.preheader, %middle.block186
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec174, %middle.block186 ]
  %.042129.us.ph = phi float [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %vector.recur.extract187, %middle.block186 ]
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader191, %.lr.ph.split.us
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %.lr.ph.split.us ], [ %indvars.iv140.ph, %.lr.ph.split.us.preheader191 ] ; 3 uses
  %.042129.us = phi float [ %i.as, %.lr.ph.split.us ], [ %.042129.us.ph, %.lr.ph.split.us.preheader191 ]
  %i.ak = trunc nuw nsw i64 %indvars.iv140 to i32
  %i.al = uitofp nneg i32 %i.ak to double
  %i.am = fadd nnan double %i.al, 5.000000e-01
  %i.an = fmul double %i.am, %i.ac
  %i.ao = fptrunc double %i.an to float
  %i.ap = fpext float %i.ao to double             ; 2 uses
  %i.aq = fmul double %i.ap, f0x400921FB54442D18
  %i.ar = fmul double %i.aq, %i.ap
  %i.as = fptrunc double %i.ar to float           ; 2 uses
  %i.at = fsub float %i.as, %.042129.us
  %i.au = fdiv float 1.000000e+00, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1, i64 %indvars.iv140
  store float %i.au, ptr %i.av, align 4, !tbaa !90
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !251

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block, %middle.block186, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  invoke void @_ZN3gmx24AbstractAverageHistogram16scaleAllByVectorEPKf(ptr noundef nonnull align 8 dereferenceable(136) %i.n, ptr noundef %.sroa.0.1)
          to label %bb.e unwind label %bb.g

.thread:                                          ; preds = %bb.d, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit60

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader192, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader192 ] ; 3 uses
  %.042129 = phi float [ %i.bg, %.lr.ph.split ], [ %.042129.ph, %.lr.ph.split.preheader192 ]
  %i.ax = trunc nuw nsw i64 %indvars.iv to i32
  %i.ay = uitofp nneg i32 %i.ax to double
  %i.az = fadd nnan double %i.ay, 5.000000e-01
  %i.ba = fmul double %i.az, %i.ac
  %i.bb = fptrunc double %i.ba to float
  %i.bc = fpext float %i.bb to double             ; 3 uses
  %i.bd = fmul double %i.bc, f0x4010C152382D7365
  %i.be = fmul double %i.bd, %i.bc
  %i.bf = fmul double %i.be, %i.bc
  %i.bg = fptrunc double %i.bf to float           ; 2 uses
  %i.bh = fsub float %i.bg, %.042129
  %i.bi = fdiv float 1.000000e+00, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.1, i64 %indvars.iv
  store float %i.bi, ptr %i.bj, align 4, !tbaa !90
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count143
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !252

bb.e:                                             ; preds = %._crit_edge
  %i.bk = load i32, ptr %i.l, align 8, !tbaa !169
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %.preheader124, label %.loopexit

.preheader124:                                    ; preds = %bb.e
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %bb.f

bb.f:                                             ; preds = %.preheader124, %bb.i
  %.029 = phi i64 [ %i.by, %bb.i ], [ 0, %.preheader124 ] ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !173
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !98
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = icmp ult i64 %.029, %i.bt
  br i1 %i.bu, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.bw = load ptr, ptr %2, align 8, !tbaa !245
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !84
  %i.by = add nuw i64 %.029, 1                    ; 2 uses
  %i.bz = trunc i64 %i.by to i32
  %i.ca = invoke noundef float @_ZNK3gmx25AnalysisDataAverageModule7averageEii(ptr noundef nonnull align 8 dereferenceable(120) %i.bx, i32 noundef 0, i32 noundef %i.bz)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cb = fdiv float 1.000000e+00, %i.ca
  invoke void @_ZN3gmx24AbstractAverageHistogram11scaleSingleEmf(ptr noundef nonnull align 8 dereferenceable(136) %i.bw, i64 noundef %.029, float noundef %i.cb)
          to label %bb.f unwind label %bb.j, !llvm.loop !253

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit:                                        ; preds = %bb.f, %bb.e
  %.not.i.i.i = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.cd = ptrtoint ptr %.sroa.0.1 to i64
  %i.ce = sub i64 %.sroa.16.1, %i.cd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.ce) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.l:                                             ; preds = %bb.g, %bb.j
  %.pn55.pn = phi { ptr, i32 } [ %i.bv, %bb.g ], [ %i.cc, %bb.j ] ; 2 uses
  %.not.i.i.i59 = icmp eq ptr %.sroa.0.1, null
  br i1 %.not.i.i.i59, label %_ZNSt6vectorIfSaIfEED2Ev.exit60, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = ptrtoint ptr %.sroa.0.1 to i64
  %i.cg = sub i64 %.sroa.16.1, %i.cf
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.1, i64 noundef %i.cg) #26
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit60

bb.n:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !89
  %i.cj = fdiv double 1.000000e+00, %i.ci
  %i.ck = fptrunc double %i.cj to float
  invoke void @_ZN3gmx24AbstractAverageHistogram8scaleAllEf(ptr noundef nonnull align 8 dereferenceable(136) %i.n, float noundef %i.ck)
          to label %_ZNSt6vectorIfSaIfEED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.n
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit60

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.k, %.loopexit, %bb.n
  %i.cm = load ptr, ptr %2, align 8, !tbaa !245
  invoke void @_ZN3gmx25AbstractAnalysisArrayData11valuesReadyEv(ptr noundef nonnull align 8 dereferenceable(136) %i.cm)
          to label %_ZN3gmx24AbstractAverageHistogram4doneEv.exit unwind label %bb.o

_ZN3gmx24AbstractAverageHistogram4doneEv.exit:    ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.cn = invoke noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22
          to label %bb.p unwind label %bb.af      ; 15 uses

bb.p:                                             ; preds = %_ZN3gmx24AbstractAverageHistogram4doneEv.exit
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  invoke void @_ZN3gmx22AnalysisDataPlotModuleC1ERKNS_24AnalysisDataPlotSettingsE(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(16) %i.co)
          to label %bb.q unwind label %bb.ag

bb.q:                                             ; preds = %bb.p
  store ptr %i.cn, ptr %3, align 8, !tbaa !254
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cq = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22
          to label %bb.v unwind label %bb.r       ; 6 uses

bb.r:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          catch ptr null
  %i.cs = extractvalue { ptr, i32 } %i.cr, 0
  %i.ct = call ptr @__cxa_begin_catch(ptr %i.cs) #23 ; 0 uses
  %i.cu = load ptr, ptr %i.cn, align 8, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.cn) #23, !inline_history !257
  invoke void @__cxa_rethrow() #24
          to label %bb.u unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = landingpad { ptr, i32 }
          catch ptr null
  %i.cz = extractvalue { ptr, i32 } %i.cy, 0
  call void @__clang_call_terminate(ptr %i.cz) #25
  unreachable

bb.u:                                             ; preds = %bb.r
  unreachable

bb.v:                                             ; preds = %bb.q
  %i.da = getelementptr inbounds nuw i8, ptr %i.cq, i64 8 ; 4 uses
  store i32 1, ptr %i.da, align 8, !tbaa !79
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  store i32 1, ptr %i.db, align 4, !tbaa !81
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN3gmx22AnalysisDataPlotModuleELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cq, align 8, !tbaa !9
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  store ptr %i.cn, ptr %i.dc, align 8, !tbaa !258
  store ptr %i.cq, ptr %i.cp, align 8, !tbaa !77
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN3gmx18AbstractPlotModule11setFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) %i.dd)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN3gmx18AbstractPlotModule8setTitleEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, ptr noundef nonnull @.str.84)
end_hunk_0
