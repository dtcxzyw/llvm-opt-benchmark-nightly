Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/LWOAnimation?download=true
inline.NumInlined: 685
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolverC2ERNSt7__cxx114listINS0_8EnvelopeESaIS4_EEEd:bb.a
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.g, align 8
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.f, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.e, align 8
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.j, align 8
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.i, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.h, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.m, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.l, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  store ptr %i.q, ptr %i.k, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ag = load ptr, ptr %i.s, align 8             ; 3 uses
  %i.ah = load ptr, ptr %i.t, align 8
  %.not3033 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not3033, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.s, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.m
  %i.ai = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.ag, %bb.m ]
  %i.aj = load double, ptr %i.ai, align 8         ; 2 uses
  %i.ak = load double, ptr %i.o, align 8          ; 2 uses
  %i.al = fcmp olt double %i.aj, %i.ak
  %i.am = select i1 %i.al, double %i.aj, double %i.ak
  store double %i.am, ptr %i.o, align 8
  %i.an = load ptr, ptr %i.t, align 8
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -40
  %i.ap = load double, ptr %i.n, align 8          ; 2 uses
  %i.aq = load double, ptr %i.ao, align 8         ; 2 uses
  %i.ar = fcmp olt double %i.ap, %i.aq
  %i.as = select i1 %i.ar, double %i.aq, double %i.ap
  store double %i.as, ptr %i.n, align 8
  br label %bb.n

.lr.ph:                                           ; preds = %bb.m, %.lr.ph
  %.sroa.04.034 = phi ptr [ %i.av, %.lr.ph ], [ %i.ag, %bb.m ] ; 3 uses
  %i.at = load double, ptr %.sroa.04.034, align 8
  %i.au = fmul double %2, %i.at
  store double %i.au, ptr %.sroa.04.034, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.034, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.t, align 8
  %.not30 = icmp eq ptr %i.av, %i.aw
  br i1 %.not30, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !3

bb.n:                                             ; preds = %bb.c, %bb.b, %.lr.ph39, %._crit_edge
  %.sroa.08.0 = load ptr, ptr %.sroa.08.037, align 8 ; 2 uses
  %i.ax = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %.not = icmp eq ptr %.sroa.08.0, %i.ax
  br i1 %.not, label %._crit_edge40, label %.lr.ph39, !llvm.loop !7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver19ClearAnimRangeSetupEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %.sroa.019.029 = load ptr, ptr %i.a, align 8    ; 2 uses
  %.not30 = icmp eq ptr %.sroa.019.029, %i.a
  br i1 %.not30, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit7, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit7
  %.sroa.019.031 = phi ptr [ %.sroa.019.0, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit7 ], [ %.sroa.019.029, %bb.a ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.019.031, i64 32 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.019.031, i64 56
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.idx = mul nsw i64 %i.e, 40
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 %.idx ; 4 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.019.031, i64 40 ; 3 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not11.i.i = icmp eq ptr %i.f, %.pre
  br i1 %.not11.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %.pre to i64
  %i.i = sub i64 %i.h, %i.g                       ; 3 uses
  %i.j = icmp sgt i64 %i.i, 40
  br i1 %i.j, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.c, ptr nonnull align 8 %i.f, i64 %i.i, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i64 %i.i, 40
  br i1 %i.k, label %bb.f, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, ptr noundef nonnull align 8 dereferenceable(36) %i.f, i64 36, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %i.l = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.g
  %i.o = getelementptr inbounds i8, ptr %i.c, i64 %i.n ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, %i.o
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, label %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i
  store ptr %i.o, ptr %.phi.trans.insert, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit: ; preds = %.lr.ph, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i, %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i.i
  %i.p = phi ptr [ %i.o, %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i.i ], [ %i.l, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i.i ], [ %.pre, %.lr.ph ]
  %i.q = load ptr, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.019.031, i64 64
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds [40 x i8], ptr %i.q, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.u, %i.p
  br i1 %.not.i.i2, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit7, label %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i.i6

_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i.i6: ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.019.031, i64 40
  store ptr %i.u, ptr %i.v, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit7

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit7: ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS2_S4_EES9_.exit, %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i.i6
  %.sroa.019.0 = load ptr, ptr %.sroa.019.031, align 8 ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %.not = icmp eq ptr %.sroa.019.0, %i.w
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !9
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver20UpdateAnimRangeSetupEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.Assimp::LWO::Key", align 8 ; 4 uses
  %2 = alloca %"struct.Assimp::LWO::Key", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %.sroa.084.0132 = load ptr, ptr %i.a, align 8   ; 2 uses
  %.not133 = icmp eq ptr %.sroa.084.0132, %i.a
  br i1 %.not133, label %._crit_edge137, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

._crit_edge137:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph136, %.loopexit
  %.sroa.084.0134 = phi ptr [ %.sroa.084.0132, %.lr.ph136 ], [ %.sroa.084.0, %.loopexit ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.084.0134, i64 32 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.084.0134, i64 40 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = icmp eq ptr %i.g, %i.i
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load double, ptr %i.g, align 8           ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -40
  %i.m = load double, ptr %i.l, align 8
  %i.n = fsub double %i.m, %i.k                   ; 9 uses
  %i.o = fcmp oeq double %i.n, 0.000000e+00
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = ptrtoint ptr %i.i to i64                 ; 3 uses
  %i.q = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 7 uses
  %i.s = sdiv exact i64 %i.r, 40                  ; 4 uses
  %i.t = getelementptr inbounds i8, ptr %i.i, i64 -32
  %i.u = load float, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = load float, ptr %i.v, align 8
  %i.x = fsub float %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.084.0134, i64 24 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8
  %.off = add i32 %i.z, -2
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.aa = load double, ptr %i.b, align 8
  %i.ab = fsub double %i.k, %i.aa
  %i.ac = call double @fmod(double noundef %i.ab, double noundef %i.n) #16
  %i.ad = fsub double %i.n, %i.ac                 ; 7 uses
  %i.ae = ashr i64 %i.s, 2                        ; 3 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.e
  %i.ag = mul nuw nsw i64 %i.ae, 160
  %scevgep.i.i.i = getelementptr i8, ptr %i.g, i64 %i.ag ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.i, %.lr.ph.preheader.i.i.i
  %.052.i.i.i = phi i64 [ %i.at, %bb.i ], [ %i.ae, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.032.051.i.i.i = phi ptr [ %i.as, %bb.i ], [ %i.g, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %i.ah = load double, ptr %.sroa.032.051.i.i.i, align 8
  %i.ai = fcmp ogt double %i.ad, %i.ah
  br i1 %i.ai, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 40
  %i.ak = load double, ptr %i.aj, align 8
  %i.al = fcmp ogt double %i.ad, %i.ak
  br i1 %i.al, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 80
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp ogt double %i.ad, %i.an
  br i1 %i.ao, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit161", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 120
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fcmp ogt double %i.ad, %i.aq
  br i1 %i.ar, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit163", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 160
  %i.at = add nsw i64 %.052.i.i.i, -1
  %i.au = icmp sgt i64 %.052.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !10

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.i
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre57.i.i.i = sub i64 %i.p, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.e
  %.pre-phi58.i.i.i = phi i64 [ %.pre57.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.r, %bb.e ]
  %.sroa.032.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.e ] ; 5 uses
  %i.av = sdiv exact i64 %.pre-phi58.i.i.i, 40
  switch i64 %i.av, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit [
    i64 3, label %bb.j
    i64 2, label %bb.l
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = load double, ptr %.sroa.032.0.lcssa.i.i.i, align 8
  %i.ax = fcmp ogt double %i.ad, %i.aw
  br i1 %i.ax, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i, i64 40
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge.i.i.i
  %.sroa.032.1.i.i.i = phi ptr [ %i.ay, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.az = load double, ptr %.sroa.032.1.i.i.i, align 8
  %i.ba = fcmp ogt double %i.ad, %i.az
  br i1 %i.ba, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 40
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i
  %.sroa.032.2.i.i.i = phi ptr [ %i.bb, %bb.m ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bc = load double, ptr %.sroa.032.2.i.i.i, align 8
  %i.bd = fcmp ogt double %i.ad, %i.bc
  br i1 %i.bd, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit", label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 40
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit161": ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 80
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit163": ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 120
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit": ; preds = %.lr.ph.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit161", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit163", %bb.j, %bb.l, %bb.n
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %bb.l ], [ %.sroa.032.2.i.i.i, %bb.n ], [ %.sroa.032.0.lcssa.i.i.i, %bb.j ], [ %i.bg, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit163" ], [ %i.be, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit" ], [ %i.bf, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit.loopexit.split.loop.exit161" ], [ %.sroa.032.051.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not111 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.i
  br i1 %.not111, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit, label %bb.o

bb.o:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit"
  %i.bh = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.bi = sub i64 %i.p, %i.bh                     ; 4 uses
  %i.bj = sdiv exact i64 %i.bi, 40                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store double 0.000000e+00, ptr %2, align 8
  store float 0.000000e+00, ptr %i.c, align 8
  store i32 1, ptr %i.d, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.e, i8 0, i64 20, i1 false)
  %i.bk = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = sub i64 %i.q, %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 %i.bm
  call void @_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr %i.bn, i64 noundef %i.bj, ptr noundef nonnull align 8 dereferenceable(36) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %i.bo = load ptr, ptr %i.h, align 8
  %i.bp = sub nsw i64 0, %i.bj
  %i.bq = getelementptr inbounds [40 x i8], ptr %i.bo, i64 %i.bp ; 2 uses
  %i.br = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.bs = icmp sgt i64 %i.bi, 40
  br i1 %i.bs, label %bb.p, label %bb.q, !prof !8

bb.p:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.br, ptr nonnull align 8 %i.bq, i64 %i.bi, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.q:                                             ; preds = %bb.o
  %i.bt = icmp eq i64 %i.bi, 40
  br i1 %i.bt, label %bb.r, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

bb.r:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.br, ptr noundef nonnull align 8 dereferenceable(36) %i.bq, i64 36, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit: ; preds = %bb.n, %._crit_edge.i.i.i, %bb.r, %bb.q, %bb.p, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit"
  %.058 = phi i64 [ 1, %bb.r ], [ 0, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEZNS3_12AnimResolver20UpdateAnimRangeSetupEvE3$_0ET_SC_SC_T0_.exit" ], [ %i.bj, %bb.p ], [ %i.bj, %bb.q ], [ 0, %._crit_edge.i.i.i ], [ 0, %bb.n ]
  %i.bu = load double, ptr %i.b, align 8
  %i.bv = fsub double %i.k, %i.bu
  %i.bw = fdiv double %i.bv, %i.n
  %i.bx = fptoui double %i.bw to i32              ; 3 uses
  %i.by = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bz = load ptr, ptr %i.f, align 8             ; 5 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 40                ; 3 uses
  %i.ce = zext i32 %i.bx to i64                   ; 2 uses
  %i.cf = mul i64 %i.s, %i.ce                     ; 2 uses
  %i.cg = add i64 %i.cd, %i.cf                    ; 3 uses
  %i.ch = icmp ugt i64 %i.cg, %i.cd
  br i1 %i.ch, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  call void @_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.cf)
  %.pre = load ptr, ptr %i.f, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit

bb.t:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit
  %i.ci = icmp ult i64 %i.cg, %i.cd
  br i1 %i.ci, label %bb.u, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw [40 x i8], ptr %i.bz, i64 %i.cg ; 2 uses
  %.not.i.i = icmp eq ptr %i.by, %i.cj
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.u
  store ptr %i.cj, ptr %i.h, align 8
  br label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit: ; preds = %bb.s, %bb.t, %bb.u, %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ck = phi ptr [ %.pre, %bb.s ], [ %i.bz, %bb.t ], [ %i.bz, %bb.u ], [ %i.bz, %_ZSt8_DestroyIPN6Assimp3LWO3KeyES2_EvT_S4_RSaIT0_E.exit.i.i ]
  %i.cl = getelementptr inbounds [40 x i8], ptr %i.ck, i64 %.058 ; 3 uses
  %.not138 = icmp eq i32 %i.bx, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit
  %i.cm = icmp sgt i64 %i.r, 40
  %i.cn = icmp eq i64 %i.r, 40
  %i.co = icmp samesign ult i64 %i.r, 81
  br label %bb.v

._crit_edge:                                      ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE6resizeEm.exit
  %i.cp = xor i64 %i.s, -1                        ; 2 uses
  %i.cq = add i32 %i.bx, 1
  %i.cr = uitofp i32 %i.cq to double
  %i.cs = fmul double %i.n, %i.cr                 ; 3 uses
  %i.ct = fcmp ugt double %i.n, %i.cs
  br i1 %i.ct, label %.loopexit, label %.lr.ph131

.lr.ph131:                                        ; preds = %._crit_edge
  %i.cu = load ptr, ptr %i.h, align 8
  %i.cv = getelementptr inbounds [40 x i8], ptr %i.cu, i64 %i.cp
  %i.cw = fcmp oeq double %i.n, %i.cs
  br label %bb.y

bb.v:                                             ; preds = %.lr.ph, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ]
  %.059122 = phi i32 [ 0, %.lr.ph ], [ %i.cx, %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cx = add nuw i32 %.059122, 1
  %i.cy = mul i64 %i.s, %indvars.iv.next
  %i.cz = getelementptr inbounds [40 x i8], ptr %i.cl, i64 %i.cy ; 4 uses
  br i1 %i.cm, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64, label %bb.w, !prof !8

bb.w:                                             ; preds = %bb.v
  br i1 %i.cn, label %bb.x, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.cz, ptr noundef nonnull align 8 dereferenceable(36) %i.cl, i64 36, i1 false)
  br label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64: ; preds = %bb.v
  %indvars145 = trunc i32 %.059122 to i1
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cz, ptr align 8 %i.cl, i64 %i.r, i1 false)
  %i.da = load i32, ptr %i.y, align 8
  %i.db = icmp ne i32 %i.da, 3
  %or.cond.not = select i1 %i.db, i1 true, i1 %indvars145
  %or.cond.not140 = or i1 %i.co, %or.cond.not
  br i1 %or.cond.not140, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64
  %i.dc = getelementptr i8, ptr %i.cz, i64 %i.r
  %.sroa.0.08.i.i = getelementptr i8, ptr %i.dc, i64 -80
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.08.i.i, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %i.dd, %.lr.ph.i.i ], [ %i.cz, %.lr.ph.i.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.05.09.i.i, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.05.09.i.i, ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0.010.i.i, i64 36, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 36, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i, i64 40 ; 2 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -40 ; 2 uses
  %i.de = icmp ult ptr %i.dd, %.sroa.0.0.i.i
  br i1 %i.de, label %.lr.ph.i.i, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit, !llvm.loop !11

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %.lr.ph.i.i, %bb.x, %bb.w, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPN6Assimp3LWO3KeyESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit64
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ce
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !12

bb.y:                                             ; preds = %.lr.ph131, %._crit_edge126
  %.0129 = phi i32 [ 1, %.lr.ph131 ], [ %i.dt, %._crit_edge126 ] ; 2 uses
  %.057128 = phi double [ %i.n, %.lr.ph131 ], [ %i.ds, %._crit_edge126 ] ; 2 uses
  %.sroa.074.0127 = phi ptr [ %i.cv, %.lr.ph131 ], [ %.sroa.074.1.lcssa, %._crit_edge126 ] ; 4 uses
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.df = load ptr, ptr %i.f, align 8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  %i.dg = getelementptr inbounds [40 x i8], ptr %.sroa.074.0127, i64 %i.cp
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.sroa.0.0 = phi ptr [ %i.df, %bb.z ], [ %i.dg, %bb.aa ] ; 2 uses
  %i.dh = icmp ult ptr %.sroa.0.0, %.sroa.074.0127
  br i1 %i.dh, label %.lr.ph125, label %._crit_edge126

.lr.ph125:                                        ; preds = %bb.ab
  %i.di = uitofp i32 %.0129 to float
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph125, %bb.ae
  %.sroa.074.1123 = phi ptr [ %.sroa.074.0127, %.lr.ph125 ], [ %i.dq, %bb.ae ] ; 4 uses
  %i.dj = load double, ptr %.sroa.074.1123, align 8
  %i.dk = fsub double %i.dj, %.057128
  store double %i.dk, ptr %.sroa.074.1123, align 8
  %i.dl = load i32, ptr %i.y, align 8
  %i.dm = icmp eq i32 %i.dl, 4
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.074.1123, i64 8 ; 2 uses
  %i.do = load float, ptr %i.dn, align 8
  %i.dp = call float @llvm.fmuladd.f32(float %i.di, float %i.x, float %i.do)
  store float %i.dp, ptr %i.dn, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.dq = getelementptr inbounds i8, ptr %.sroa.074.1123, i64 -40 ; 3 uses
  %i.dr = icmp ult ptr %.sroa.0.0, %i.dq
  br i1 %i.dr, label %bb.ac, label %._crit_edge126, !llvm.loop !13

._crit_edge126:                                   ; preds = %bb.ae, %bb.ab
  %.sroa.074.1.lcssa = phi ptr [ %.sroa.074.0127, %bb.ab ], [ %i.dq, %bb.ae ]
  %i.ds = fadd double %i.n, %.057128              ; 2 uses
  %i.dt = add i32 %.0129, 1
  %i.du = fcmp ugt double %i.ds, %i.cs
  br i1 %i.du, label %.loopexit, label %bb.y, !llvm.loop !14

.loopexit:                                        ; preds = %._crit_edge126, %._crit_edge, %bb.d, %bb.c, %bb.b
  %.sroa.084.0 = load ptr, ptr %.sroa.084.0134, align 8 ; 2 uses
  %i.dv = load ptr, ptr %0, align 8, !nonnull !5, !align !6
  %.not = icmp eq ptr %.sroa.084.0, %i.dv
  br i1 %.not, label %._crit_edge137, label %bb.b, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN6Assimp3LWO12AnimResolver15ExtractBindPoseER12aiMatrix4x4tIfE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(64) initializes((0, 64)) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, %i.a
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.5192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  store float 1.000000e+00, ptr %.sroa.5192.0..sroa_idx, align 4
  %.sroa.6193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6193.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8194.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.8194.0..sroa_idx, i8 0, i64 16, i1 false)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
end_hunk_0
