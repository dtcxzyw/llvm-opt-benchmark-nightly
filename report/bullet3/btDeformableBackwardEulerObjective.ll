Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDeformableBackwardEulerObjective?download=true
inline.NumInlined: 675
inline.NumDeleted: 267
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN20btAlignedObjectArrayIP27btDeformableLagrangianForceED2Ev:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN34btDeformableBackwardEulerObjectiveD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) initializes((0, 8)) %0) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV34btDeformableBackwardEulerObjective, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(112) %i.b) #22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !130  ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(48) %i.h) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !111  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.p = load i8, ptr %i.o, align 8, !range !38
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.q, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.n)
          to label %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #23
  unreachable

_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEED2Ev.exit: ; preds = %bb.e, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZN29btDeformableContactProjectionD2Ev(ptr noundef nonnull align 8 dead_on_return(369) dereferenceable(369) %i.t) #22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55   ; 2 uses
  %.not.i.i.i2 = icmp ne ptr %i.v, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load i8, ptr %i.w, align 8, !range !38
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i.i3 = select i1 %.not.i.i.i2, i1 %i.y, i1 false
  br i1 %or.cond.i.i3, label %bb.h, label %_ZN20btAlignedObjectArrayIP27btDeformableLagrangianForceED2Ev.exit

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.v)
          to label %_ZN20btAlignedObjectArrayIP27btDeformableLagrangianForceED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  tail call void @__clang_call_terminate(ptr %i.aa) #23
  unreachable

_ZN20btAlignedObjectArrayIP27btDeformableLagrangianForceED2Ev.exit: ; preds = %_ZN20btAlignedObjectArrayIPN10btSoftBody4NodeEED2Ev.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN34btDeformableBackwardEulerObjectiveD0Ev(ptr noundef nonnull align 8 dereferenceable(504) initializes((0, 8)) %0) unnamed_addr #9 align 2 {
bb.a:
  tail call void @_ZN34btDeformableBackwardEulerObjectiveD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 504) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN34btDeformableBackwardEulerObjective12reinitializeEbf(ptr noundef nonnull align 8 dereferenceable(504) %0, i1 noundef zeroext %1, float noundef %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.5)
  %i.a = fcmp ogt float %2, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %2, ptr %i.b, align 8, !tbaa !135
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %0, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(504) %0)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !56
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.f

.preheader:                                       ; preds = %bb.g, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !121, !nonnull !44, !align !122 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !139
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph45, label %._crit_edge46

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !55
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !141  ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  invoke void %i.t(ptr noundef nonnull align 8 dereferenceable(48) %i.q, i1 noundef zeroext %1)
          to label %bb.g unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.u = load i32, ptr %i.f, align 4, !tbaa !56
  %i.v = sext i32 %i.u to i64
  %i.w = icmp slt i64 %indvars.iv.next, %i.v
  br i1 %i.w, label %bb.f, label %.preheader, !llvm.loop !267

._crit_edge46:                                    ; preds = %._crit_edge, %.preheader
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke void @_ZN29btDeformableContactProjection12reinitializeEb(ptr noundef nonnull align 8 dereferenceable(369) %i.x, i1 noundef zeroext %1)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.d, %._crit_edge46
  %lpad.loopexit.split-lp60 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %lpad.loopexit.split-lp60

.lr.ph45:                                         ; preds = %.preheader, %._crit_edge
  %i.y = phi ptr [ %i.ah, %._crit_edge ], [ %i.k, %.preheader ] ; 2 uses
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !142
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv52
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !144 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 932 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !148 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph43, label %._crit_edge

.lr.ph43:                                         ; preds = %.lr.ph45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 944 ; 2 uses
  %.pre55 = load ptr, ptr %i.ag, align 8, !tbaa !149
  br label %bb.h

._crit_edge.loopexit:                             ; preds = %bb.j
  %.pre57 = load ptr, ptr %i.j, align 8, !tbaa !121
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph45
  %i.ah = phi ptr [ %.pre57, %._crit_edge.loopexit ], [ %i.y, %.lr.ph45 ] ; 2 uses
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !139
  %i.ak = sext i32 %i.aj to i64
  %i.al = icmp slt i64 %indvars.iv.next53, %i.ak
  br i1 %i.al, label %.lr.ph45, label %._crit_edge46, !llvm.loop !268

bb.h:                                             ; preds = %.lr.ph43, %bb.j
  %i.am = phi i32 [ %i.ae, %.lr.ph43 ], [ %i.au, %bb.j ]
  %i.an = phi ptr [ %.pre55, %.lr.ph43 ], [ %i.av, %bb.j ] ; 2 uses
  %indvars.iv49 = phi i64 [ 0, %.lr.ph43 ], [ %indvars.iv.next50, %bb.j ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [256 x i8], ptr %i.an, i64 %indvars.iv49 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 112
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !157 ; 2 uses
  %i.ar = fcmp ogt float %i.aq, 0.000000e+00
  br i1 %i.ar, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.as = fdiv float 1.000000e+00, %i.aq          ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.ao, i64 156
  store float %i.as, ptr %4, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 160
  %.scalar = fmul float %i.as, 0.000000e+00
  %5 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar, i64 0 ; 2 uses
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 0>
  store <4 x float> %6, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 176
  store float %i.as, ptr %.sroa.10.16..sroa_idx, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 180
  %7 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <4 x float> %7, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 5, i32 0, i32 0>
  store <4 x float> %8, ptr %.sroa.11.16..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 196
  %i.at = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  store <2 x float> %i.at, ptr %.sroa.16.32..sroa_idx, align 4
  %.pre = load ptr, ptr %i.ag, align 8, !tbaa !149
  %.pre56 = load i32, ptr %i.ad, align 4, !tbaa !148
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.au = phi i32 [ %i.am, %bb.h ], [ %.pre56, %bb.i ] ; 2 uses
  %i.av = phi ptr [ %i.an, %bb.h ], [ %.pre, %bb.i ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %i.aw = sext i32 %i.au to i64
  %i.ax = icmp slt i64 %indvars.iv.next50, %i.aw
  br i1 %i.ax, label %bb.h, label %._crit_edge.loopexit, !llvm.loop !269

bb.k:                                             ; preds = %._crit_edge46
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void
}

declare void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN34btDeformableBackwardEulerObjective5setDtEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(504) initializes((8, 12)) %0, float noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %1, ptr %i.a, align 8, !tbaa !135
  ret void
}

declare void @_ZN29btDeformableContactProjection12reinitializeEb(ptr noundef nonnull align 8 dereferenceable(369), i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #11

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK34btDeformableBackwardEulerObjective8multiplyERK20btAlignedObjectArrayI9btVector3ERS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(25) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.6)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121, !nonnull !44, !align !122 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !139
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph99, label %.preheader93

.lr.ph99:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

.preheader93:                                     ; preds = %._crit_edge, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !56
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %.preheader93
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 480
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph99, %._crit_edge
  %i.n = phi ptr [ %i.b, %.lr.ph99 ], [ %i.w, %._crit_edge ] ; 2 uses
  %indvars.iv120 = phi i64 [ 0, %.lr.ph99 ], [ %indvars.iv.next121, %._crit_edge ] ; 2 uses
  %.07996 = phi i64 [ 0, %.lr.ph99 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !142
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv120
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !144  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 932 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !148
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 944
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !121
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.w = phi ptr [ %i.n, %bb.b ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i64 [ %.07996, %bb.b ], [ %i.au, %._crit_edge.loopexit ]
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !139
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next121, %i.z
  br i1 %i.aa, label %bb.b, label %.preheader93, !llvm.loop !270

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %.194 = phi i64 [ %.07996, %.lr.ph ], [ %i.au, %bb.e ] ; 3 uses
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !149
  %i.ac = getelementptr inbounds nuw [256 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !157 ; 2 uses
  %i.af = fcmp oeq float %i.ae, 0.000000e+00
  br i1 %i.af, label %._crit_edge157, label %bb.d

._crit_edge157:                                   ; preds = %bb.c
  %.pre158 = shl i64 %.194, 32
  %.pre159 = ashr exact i64 %.pre158, 28
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.ah = shl i64 %.194, 32
  %i.ai = ashr exact i64 %i.ah, 28                ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ai ; 2 uses
  %i.ak = fdiv float 1.000000e+00, %i.ae          ; 2 uses
  %i.al = load <2 x float>, ptr %i.aj, align 4, !tbaa !48
  %i.am = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ao = fmul <2 x float> %i.an, %i.al
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !48
  %i.ar = fmul float %i.ak, %i.aq
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ar, i64 0
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge157, %bb.d
  %.pre-phi160 = phi i64 [ %.pre159, %._crit_edge157 ], [ %i.ai, %bb.d ]
  %.sroa.7.0 = phi <2 x float> [ zeroinitializer, %._crit_edge157 ], [ %.sroa.3.12.vec.insert.i.i, %bb.d ]
  %.sroa.089.0 = phi <2 x float> [ zeroinitializer, %._crit_edge157 ], [ %i.ao, %bb.d ]
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !35
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %.pre-phi160 ; 2 uses
  store <2 x float> %.sroa.089.0, ptr %i.at, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store <2 x float> %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !45
  %i.au = add i64 %.194, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.av = load i32, ptr %i.s, align 4, !tbaa !148
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next, %i.aw
  br i1 %i.ax, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !271

._crit_edge102:                                   ; preds = %bb.l, %.preheader93
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !112 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !36
  %i.bc = icmp slt i32 %i.az, %i.bb
  br i1 %i.bc, label %.lr.ph105, label %.preheader92

.lr.ph105:                                        ; preds = %._crit_edge102
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.be = sext i32 %i.az to i64
  br label %bb.m

bb.f:                                             ; preds = %bb.k, %bb.i, %bb.g
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.bf

bb.g:                                             ; preds = %.lr.ph101, %bb.l
  %indvars.iv123 = phi i64 [ 0, %.lr.ph101 ], [ %indvars.iv.next124, %bb.l ] ; 4 uses
  %i.bg = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %indvars.iv123
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !141 ; 2 uses
  %i.bj = load float, ptr %i.l, align 8, !tbaa !135
  %i.bk = fneg float %i.bj
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !50
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  invoke void %i.bn(ptr noundef nonnull align 8 dereferenceable(48) %i.bi, float noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(25) %2)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.bo = load i8, ptr %i.m, align 8, !tbaa !120, !range !38, !noundef !44
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv123
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !141 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !50
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef i32 %i.bv(ptr noundef nonnull align 8 dereferenceable(48) %i.bs)
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  %i.bx = icmp eq i32 %i.bw, 6
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.h
  %i.by = load ptr, ptr %i.k, align 8, !tbaa !55
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv123
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !141 ; 2 uses
end_hunk_0
