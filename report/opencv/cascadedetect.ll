Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cascadedetect?download=true
inline.NumInlined: 2811
inline.NumDeleted: 1260
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK2cv16FeatureEvaluator7calcOrdEi
define hidden noundef float @_ZNK2cv16FeatureEvaluator7calcOrdEi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #9 align 2 {
bb.a:
  ret float 0.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef i32 @_ZNK2cv16FeatureEvaluator7calcCatEi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 %1) unnamed_addr #9 align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv16FeatureEvaluator15updateScaleDataENS_5Size_IiEERKSt6vectorIfSaIfEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1216) %0, i64 %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.034.0.extract.trunc = trunc i64 %1 to i32
  %.sroa.3.0.extract.shift = lshr i64 %1, 32
  %.sroa.3.0.extract.trunc = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_ZNSt12__shared_ptrISt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS3_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #31, !noalias !353 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !76, !noalias !353
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !77, !noalias !353
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceISt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS3_EESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !71, !noalias !353
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false), !noalias !353
  store ptr %i.g, ptr %i.a, align 8, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.i
  br i1 %.not.i.i.i.i, label %_ZN2cv3PtrISt6vectorINS_16FeatureEvaluator9ScaleDataESaIS3_EEEaSERKS6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !36
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !74
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.l = phi ptr [ %.pr.pre.i.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 8 uses
  %.not8.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not8.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.n = load atomic i64, ptr %i.m acquire, align 8 ; 2 uses
  %i.o = icmp eq i64 %i.n, 4294967297
  %i.p = trunc i64 %i.n to i32                    ; 2 uses
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.m, align 8, !tbaa !76
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.q, align 4, !tbaa !77
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29, !inline_history !2
  %i.u = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29, !inline_history !2
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i9.i.i.i.i = icmp eq i8 %i.x, 0
  br i1 %.not.i9.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.i ], [ %i.z, %bb.j ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !78

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #29
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.d, ptr %i.h, align 8, !tbaa !74
  br label %_ZN2cv3PtrISt6vectorINS_16FeatureEvaluator9ScaleDataESaIS3_EEEaSERKS6_.exit

_ZN2cv3PtrISt6vectorINS_16FeatureEvaluator9ScaleDataESaIS3_EEEaSERKS6_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, %bb.b
  %i.ab = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 4294967297
  %i.ad = trunc i64 %i.ab to i32                  ; 2 uses
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN2cv3PtrISt6vectorINS_16FeatureEvaluator9ScaleDataESaIS3_EEEaSERKS6_.exit
  store i32 0, ptr %i.e, align 8, !tbaa !76
  store i32 0, ptr %i.f, align 4, !tbaa !77
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29, !inline_history !1
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29, !inline_history !1
  br label %_ZNSt12__shared_ptrISt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS3_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.m:                                             ; preds = %_ZN2cv3PtrISt6vectorINS_16FeatureEvaluator9ScaleDataESaIS3_EEEaSERKS6_.exit
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !62
  %.not.i.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = add nsw i32 %i.ad, -1
  store i32 %i.al, ptr %i.e, align 8, !tbaa !36
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.am = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.n ], [ %i.am, %bb.o ]
  %i.an = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.an, label %bb.p, label %_ZNSt12__shared_ptrISt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS3_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !78

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #29
  br label %_ZNSt12__shared_ptrISt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS3_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrISt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS3_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !109 ; 2 uses
  %i.aq = load ptr, ptr %2, align 8, !tbaa !110   ; 5 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = ashr exact i64 %i.at, 2                 ; 6 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !81  ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !85 ; 2 uses
  %i.ay = load ptr, ptr %i.av, align 8, !tbaa !84 ; 2 uses
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = sdiv exact i64 %i.bb, 20                ; 4 uses
  %.not = icmp ne i64 %i.au, %i.bc
  %i.bd = icmp ugt i64 %i.au, %i.bc
  br i1 %i.bd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNSt12__shared_ptrISt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS3_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.be = sub nuw nsw i64 %i.au, %i.bc
  tail call void @_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 noundef %i.be)
  %.pre = load ptr, ptr %2, align 8, !tbaa !110
  br label %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE6resizeEm.exit

bb.r:                                             ; preds = %_ZNSt12__shared_ptrISt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS3_EELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.bf = icmp ult i64 %i.au, %i.bc
  br i1 %i.bf, label %bb.s, label %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE6resizeEm.exit

bb.s:                                             ; preds = %bb.r
  %i.bg = getelementptr inbounds nuw [20 x i8], ptr %i.ay, i64 %i.au ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.ax, %i.bg
  br i1 %.not.i.i40, label %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv16FeatureEvaluator9ScaleDataES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv16FeatureEvaluator9ScaleDataES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.s
  store ptr %i.bg, ptr %i.aw, align 8, !tbaa !85
  br label %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE6resizeEm.exit: ; preds = %bb.q, %bb.r, %bb.s, %_ZSt8_DestroyIPN2cv16FeatureEvaluator9ScaleDataES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.bh = phi ptr [ %.pre, %bb.q ], [ %i.aq, %bb.r ], [ %i.aq, %bb.s ], [ %i.aq, %_ZSt8_DestroyIPN2cv16FeatureEvaluator9ScaleDataES2_EvT_S4_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %i.bi, align 4, !tbaa !36 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36 ; 2 uses
  %i.bj = sitofp i32 %.sroa.034.0.extract.trunc to float ; 2 uses
  %i.bk = load float, ptr %i.bh, align 4, !tbaa !112 ; 6 uses
  %i.bl = fdiv float %i.bj, %i.bk
  %i.bm = insertelement <4 x float> poison, float %i.bl, i64 0
  %i.bn = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.bm) ; 3 uses
  %i.bo = add i32 %i.bn, 62
  %i.bp = and i32 %i.bo, -32                      ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.sroa.0.0.copyload, i32 %i.bp)
  store i32 %.sroa.speculated, ptr %i.bi, align 4, !tbaa !113
  %i.bq = icmp slt i32 %.sroa.0.0.copyload, %i.bp
  %narrow = select i1 %.not, i1 true, i1 %i.bq    ; 2 uses
  %.not72 = icmp eq ptr %i.ap, %i.aq
  br i1 %.not72, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE6resizeEm.exit
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !81  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !85 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !84 ; 8 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = sdiv exact i64 %i.bx, 20                ; 3 uses
  %i.bz = sitofp i32 %.sroa.3.0.extract.trunc to float ; 2 uses
  %exitcond.peel.not = icmp eq ptr %i.bt, %i.bu
  br i1 %exitcond.peel.not, label %.loopexit, label %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit.peel

_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit.peel: ; preds = %.lr.ph
  br i1 %narrow, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit.peel
  %i.ca = load float, ptr %i.bu, align 4, !tbaa !115
  %i.cb = fsub float %i.ca, %i.bk
  %i.cc = tail call float @llvm.fabs.f32(float %i.cb)
  %i.cd = fmul float %i.bk, f0x37480000
  %i.ce = fcmp ogt float %i.cc, %i.cd
  %spec.select.peel = zext i1 %i.ce to i8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit.peel
  %.137.peel = phi i8 [ 1, %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit.peel ], [ %spec.select.peel, %bb.t ] ; 2 uses
  %i.cf = fdiv float %i.bz, %i.bk
  %i.cg = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ch = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.cg)
  %i.ci = fcmp oge float %i.bk, 2.000000e+00
  %i.cj = select i1 %i.ci, i32 1, i32 2
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !116
  store float %i.bk, ptr %i.bu, align 4, !tbaa !115
  %i.cl = add nsw i32 %i.bn, 1                    ; 2 uses
  %i.cm = add nsw i32 %i.ch, 1                    ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.sroa.444.0.insert.ext.peel = zext i32 %i.cm to i64
  %.sroa.444.0.insert.shift.peel = shl nuw i64 %.sroa.444.0.insert.ext.peel, 32
  %.sroa.043.0.insert.ext.peel = zext i32 %i.cl to i64
  %.sroa.043.0.insert.insert.peel = or disjoint i64 %.sroa.444.0.insert.shift.peel, %.sroa.043.0.insert.ext.peel
  store i64 %.sroa.043.0.insert.insert.peel, ptr %i.cn, align 4, !tbaa !36
  %i.co = load i32, ptr %i.bi, align 4, !tbaa !113 ; 2 uses
  %.not87 = icmp slt i32 %i.bn, %i.co
  %spec.select92 = select i1 %.not87, i32 0, i32 %i.cm ; 3 uses
  %i.cp = mul nsw i32 %spec.select92, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !117
  %exitcond74.peel.not = icmp eq i64 %i.at, 4
  br i1 %exitcond74.peel.not, label %._crit_edge.loopexit, label %.peel.next

.peel.next:                                       ; preds = %bb.u, %bb.w
  %.069 = phi i32 [ %.2, %bb.w ], [ %i.cm, %bb.u ] ; 2 uses
  %.03668 = phi i8 [ %.137, %bb.w ], [ %.137.peel, %bb.u ]
  %.03867 = phi i64 [ %i.dv, %bb.w ], [ 1, %bb.u ] ; 5 uses
  %.sroa.7.066 = phi i32 [ %.sroa.7.1, %bb.w ], [ %spec.select92, %bb.u ]
  %.sroa.047.065 = phi i32 [ %i.du, %bb.w ], [ %i.cl, %bb.u ] ; 2 uses
  %exitcond.not = icmp eq i64 %.03867, %i.by
  br i1 %exitcond.not, label %.loopexit, label %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit

.loopexit:                                        ; preds = %.peel.next, %.lr.ph
  %.03867.lcssa = phi i64 [ 0, %.lr.ph ], [ %i.by, %.peel.next ]
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.76, i64 noundef %.03867.lcssa, i64 noundef %i.by) #30
  unreachable

_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit: ; preds = %.peel.next
  %i.cr = getelementptr inbounds nuw [20 x i8], ptr %i.bu, i64 %.03867 ; 5 uses
  %i.cs = trunc nuw i8 %.03668 to i1
  br i1 %i.cs, label %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit._crit_edge, label %bb.v

_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit._crit_edge: ; preds = %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.03867
  %.pre77 = load float, ptr %.phi.trans.insert, align 4, !tbaa !112
  br label %bb.w

bb.v:                                             ; preds = %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit
  %i.ct = load float, ptr %i.cr, align 4, !tbaa !115
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %.03867
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !112 ; 3 uses
  %i.cw = fsub float %i.ct, %i.cv
  %i.cx = tail call float @llvm.fabs.f32(float %i.cw)
  %i.cy = fmul float %i.cv, f0x37480000
  %i.cz = fcmp ogt float %i.cx, %i.cy
  %spec.select = zext i1 %i.cz to i8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit._crit_edge
  %i.da = phi float [ %.pre77, %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit._crit_edge ], [ %i.cv, %bb.v ] ; 4 uses
  %.137 = phi i8 [ 1, %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit._crit_edge ], [ %spec.select, %bb.v ] ; 2 uses
  %i.db = fdiv float %i.bj, %i.da
  %i.dc = insertelement <4 x float> poison, float %i.db, i64 0
  %i.dd = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.dc)
  %i.de = fdiv float %i.bz, %i.da
  %i.df = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dg = tail call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.df)
  %i.dh = fcmp oge float %i.da, 2.000000e+00
  %i.di = select i1 %i.dh, i32 1, i32 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !116
  store float %i.da, ptr %i.cr, align 4, !tbaa !115
  %i.dk = add nsw i32 %i.dd, 1                    ; 3 uses
  %i.dl = add nsw i32 %i.dg, 1                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cr, i64 4
  %.sroa.444.0.insert.ext = zext i32 %i.dl to i64
  %.sroa.444.0.insert.shift = shl nuw i64 %.sroa.444.0.insert.ext, 32
  %.sroa.043.0.insert.ext = zext i32 %i.dk to i64
  %.sroa.043.0.insert.insert = or disjoint i64 %.sroa.444.0.insert.shift, %.sroa.043.0.insert.ext
  store i64 %.sroa.043.0.insert.insert, ptr %i.dm, align 4, !tbaa !36
  %i.dn = add nsw i32 %i.dk, %.sroa.047.065
  %i.do = load i32, ptr %i.bi, align 4, !tbaa !113 ; 2 uses
  %i.dp = icmp sgt i32 %i.dn, %i.do               ; 3 uses
  %.sroa.047.1 = select i1 %i.dp, i32 0, i32 %.sroa.047.065 ; 2 uses
  %i.dq = select i1 %i.dp, i32 %.069, i32 0
  %.sroa.7.1 = add nsw i32 %.sroa.7.066, %i.dq    ; 3 uses
  %.2 = select i1 %i.dp, i32 %i.dl, i32 %.069     ; 2 uses
  %i.dr = mul nsw i32 %.sroa.7.1, %i.do
  %i.ds = add nsw i32 %i.dr, %.sroa.047.1
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cr, i64 12
  store i32 %i.ds, ptr %i.dt, align 4, !tbaa !117
  %i.du = add nsw i32 %.sroa.047.1, %i.dk
  %i.dv = add nuw i64 %.03867, 1                  ; 2 uses
  %exitcond74.not = icmp eq i64 %i.dv, %i.au
  br i1 %exitcond74.not, label %._crit_edge.loopexit, label %.peel.next, !llvm.loop !352

._crit_edge.loopexit:                             ; preds = %bb.w, %bb.u
  %.sroa.7.1.lcssa = phi i32 [ %spec.select92, %bb.u ], [ %.sroa.7.1, %bb.w ]
  %.2.lcssa = phi i32 [ %i.cm, %bb.u ], [ %.2, %bb.w ]
  %.137.lcssa = phi i8 [ %.137.peel, %bb.u ], [ %.137, %bb.w ]
  %.pre78 = load i32, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %i.dw = add nsw i32 %.2.lcssa, %.sroa.7.1.lcssa
  %i.dx = trunc nuw i8 %.137.lcssa to i1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE6resizeEm.exit
  %i.dy = phi i32 [ %.sroa.4.0.copyload, %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE6resizeEm.exit ], [ %.pre78, %._crit_edge.loopexit ]
  %.036.lcssa = phi i1 [ %narrow, %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE6resizeEm.exit ], [ %i.dx, %._crit_edge.loopexit ]
  %i.dz = phi i32 [ 0, %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE6resizeEm.exit ], [ %i.dw, %._crit_edge.loopexit ]
  %.sroa.speculated53 = tail call i32 @llvm.smax.i32(i32 %i.dy, i32 %i.dz) ; 2 uses
  store i32 %.sroa.speculated53, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !118
  %i.ea = icmp ne i32 %.sroa.speculated53, %.sroa.4.0.copyload
  %spec.select39 = select i1 %.036.lcssa, i1 true, i1 %i.ea
  ret i1 %spec.select39
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv16FeatureEvaluator8setImageERKNS_11_InputArrayERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(1216) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator.37", align 1 ; 3 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %9 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %10 = alloca %"class.cv::UMat", align 8         ; 11 uses
  %11 = alloca %"class.cv::Rect_", align 4        ; 7 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 8 uses
  %15 = alloca %"class.cv::Mat", align 8          ; 11 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %9, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv16FeatureEvaluator8setImageERKNS_11_InputArrayERKSt6vectorIfSaIfEEE25__cv_trace_location_fn489)
  %i.a = invoke i64 @_ZNK2cv11_InputArray4sizeEi(ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.b unwind label %bb.aa

bb.b:                                             ; preds = %bb.a
  %i.b = invoke noundef zeroext i1 @_ZN2cv16FeatureEvaluator15updateScaleDataENS_5Size_IiEERKSt6vectorIfSaIfEE(ptr noundef nonnull align 8 dereferenceable(1216) %0, i64 %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.c unwind label %bb.aa

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !81   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !85   ; 2 uses
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !84   ; 4 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 20                  ; 2 uses
  %i.l = icmp ne ptr %i.f, %i.g                   ; 2 uses
  br i1 %i.l, label %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit, label %bb.be

_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.o = load i32, ptr %.sroa_idx, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.r = add i32 %i.n, 15
  %i.s = and i32 %i.r, -16
  %i.t = load i32, ptr %i.q, align 4, !tbaa !36
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.t, i32 %i.s) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load i32, ptr %i.u, align 8, !tbaa !36
  %.sroa.speculated114 = call i32 @llvm.smax.i32(i32 %i.v, i32 %i.o) ; 2 uses
  br i1 %i.b, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZNSt6vectorIN2cv16FeatureEvaluator9ScaleDataESaIS2_EE2atEm.exit
  %i.w = load ptr, ptr %0, align 8, !tbaa !71
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(1216) %0)
          to label %bb.e unwind label %bb.aa

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !81   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 2 uses
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !359 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !359 ; 2 uses
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN2cv4UMat7releaseEv(ptr noundef nonnull align 8 dereferenceable(184) %i.aa)
          to label %.noexc73 unwind label %bb.aa

.noexc73:                                         ; preds = %bb.f
end_hunk_0
