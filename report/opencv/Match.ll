Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/Match?download=true
inline.NumInlined: 67
inline.NumDeleted: 26
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [23 x i8] c"Relative Orientation: \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Relative Scale: \00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Inter Orientation: \00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Inter Scale: \00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Global Relative Orientation: \00", align 1

@_ZN5logos5MatchC1EPNS_9PointPairES2_ = hidden unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN5logos5MatchC2EPNS_9PointPairES2_

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN5logos5MatchC2EPNS_9PointPairES2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 16), (40, 56)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !14
  %i.b = load ptr, ptr %1, align 8, !tbaa !17
  %i.c = load ptr, ptr %2, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = load <2 x float>, ptr %i.b, align 8, !tbaa !19
  %i.j = load <2 x float>, ptr %i.c, align 8, !tbaa !19
  %i.k = load <2 x float>, ptr %i.f, align 8, !tbaa !19
  %i.l = load <2 x float>, ptr %i.h, align 8, !tbaa !19
  %i.m = shufflevector <2 x float> %i.i, <2 x float> %i.k, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.n = shufflevector <2 x float> %i.j, <2 x float> %i.l, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.o = fsub <4 x float> %i.m, %i.n
  store <4 x float> %i.o, ptr %i.d, align 8, !tbaa !19
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.q = load float, ptr %i.p, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !20
  %i.t = fsub float %i.q, %i.s
  %i.u = tail call noundef float @llvm.fabs.f32(float %i.t) ; 2 uses
  %i.v = fpext float %i.u to double               ; 3 uses
  %i.w = fcmp ogt double %i.v, f0x401921FB54442D18
  br i1 %i.w, label %.lr.ph.i.i, label %_ZN5logos5Match17setRelOrientationEv.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %i.x = phi double [ %i.aa, %.lr.ph.i.i ], [ %i.v, %bb.a ]
  %i.y = fadd double %i.x, f0xC01921FB54442D18
  %i.z = fptrunc double %i.y to float             ; 2 uses
  %i.aa = fpext float %i.z to double              ; 2 uses
  %i.ab = fcmp ogt double %i.aa, f0x401921FB54442D18
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.ac = tail call float @llvm.fabs.f32(float %i.z) ; 2 uses
  %.pre.i = fpext float %i.ac to double
  br label %_ZN5logos5Match17setRelOrientationEv.exit

_ZN5logos5Match17setRelOrientationEv.exit:        ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.pre-phi.i = phi double [ %i.v, %bb.a ], [ %.pre.i, %._crit_edge.loopexit.i.i ]
  %.0.lcssa.i.i = phi float [ %i.u, %bb.a ], [ %i.ac, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.ad = fsub double f0x401921FB54442D18, %.pre-phi.i
  %i.ae = fptrunc double %i.ad to float
  %i.af = tail call noundef float @llvm.fabs.f32(float %i.ae) ; 2 uses
  %i.ag = fcmp olt float %i.af, %.0.lcssa.i.i
  %.sroa.speculated.i.i = select i1 %i.ag, float %i.af, float %.0.lcssa.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sroa.speculated.i.i, ptr %i.ah, align 8, !tbaa !22
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.al = load float, ptr %i.ak, align 8, !tbaa !23
  %i.am = fsub float %i.aj, %i.al
  %i.an = tail call noundef float @llvm.fabs.f32(float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.an, ptr %i.ao, align 4, !tbaa !24
  tail call void @_ZN5logos5Match24interOrientationAndScaleEv(ptr noundef nonnull align 8 dereferenceable(56) %0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5logos5Match26calculateInternalVariablesEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((40, 56)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = load <2 x float>, ptr %i.b, align 8, !tbaa !19
  %i.l = load <2 x float>, ptr %i.e, align 8, !tbaa !19
  %i.m = load <2 x float>, ptr %i.h, align 8, !tbaa !19
  %i.n = load <2 x float>, ptr %i.j, align 8, !tbaa !19
  %i.o = shufflevector <2 x float> %i.k, <2 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.p = shufflevector <2 x float> %i.l, <2 x float> %i.n, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.q = fsub <4 x float> %i.o, %i.p
  store <4 x float> %i.q, ptr %i.f, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5logos5Match17setRelOrientationEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.c = load float, ptr %i.b, align 4, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.g = load float, ptr %i.f, align 4, !tbaa !20
  %i.h = fsub float %i.c, %i.g
  %i.i = tail call noundef float @llvm.fabs.f32(float %i.h) ; 2 uses
  %i.j = fpext float %i.i to double               ; 3 uses
  %i.k = fcmp ogt double %i.j, f0x401921FB54442D18
  br i1 %i.k, label %.lr.ph.i, label %_ZN5logos5Match12angleAbsDiffEff.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.l = phi double [ %i.o, %.lr.ph.i ], [ %i.j, %bb.a ]
  %i.m = fadd double %i.l, f0xC01921FB54442D18
  %i.n = fptrunc double %i.m to float             ; 2 uses
  %i.o = fpext float %i.n to double               ; 2 uses
  %i.p = fcmp ogt double %i.o, f0x401921FB54442D18
  br i1 %i.p, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.q = tail call float @llvm.fabs.f32(float %i.n) ; 2 uses
  %.pre = fpext float %i.q to double
  br label %_ZN5logos5Match12angleAbsDiffEff.exit

_ZN5logos5Match12angleAbsDiffEff.exit:            ; preds = %bb.a, %._crit_edge.loopexit.i
  %.pre-phi = phi double [ %i.j, %bb.a ], [ %.pre, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi float [ %i.i, %bb.a ], [ %i.q, %._crit_edge.loopexit.i ] ; 2 uses
  %i.r = fsub double f0x401921FB54442D18, %.pre-phi
  %i.s = fptrunc double %i.r to float
  %i.t = tail call noundef float @llvm.fabs.f32(float %i.s) ; 2 uses
  %i.u = fcmp olt float %i.t, %.0.lcssa.i
  %.sroa.speculated.i = select i1 %i.u, float %i.t, float %.0.lcssa.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %.sroa.speculated.i, ptr %i.v, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5logos5Match11setRelScaleEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((20, 24)) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load float, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load float, ptr %i.f, align 8, !tbaa !23
  %i.h = fsub float %i.c, %i.g
  %i.i = tail call noundef float @llvm.fabs.f32(float %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.i, ptr %i.j, align 4, !tbaa !24
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN5logos5Match24interOrientationAndScaleEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((32, 40)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load <4 x float>, ptr %i.a, align 8, !tbaa !19 ; 3 uses
  %i.e = load float, ptr %i.b, align 4, !tbaa !27 ; 2 uses
  %i.f = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.g = fmul <2 x float> %i.f, %i.f
  %i.h = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.i = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.h, <2 x float> %i.h, <2 x float> %i.g)
  %1 = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.i) ; 2 uses
  %i.j = load <2 x float>, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.k = extractelement <2 x float> %i.j, i64 0
  %i.l = fneg float %i.k
  %i.m = fmul float %i.e, %i.l
  %i.n = extractelement <2 x float> %i.j, i64 1
  %i.o = fmul float %i.n, %i.e
  %i.p = shufflevector <4 x float> %i.d, <4 x float> poison, <2 x i32> zeroinitializer
  %i.q = insertelement <2 x float> poison, float %i.o, i64 0
  %i.r = insertelement <2 x float> %i.q, float %i.m, i64 1
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.j, <2 x float> %i.r) ; 2 uses
  %2 = extractelement <2 x float> %1, i64 0       ; 2 uses
  %3 = extractelement <2 x float> %1, i64 1       ; 2 uses
  %i.t = fmul float %2, %3
  %i.u = extractelement <2 x float> %i.s, i64 0
  %i.v = fdiv float %i.u, %i.t                    ; 2 uses
  %i.w = fcmp olt float %i.v, -1.000000e+00
  %.sroa.speculated7 = select i1 %i.w, float -1.000000e+00, float %i.v ; 2 uses
  %i.x = fcmp ogt float %.sroa.speculated7, 1.000000e+00
  %.sroa.speculated = select i1 %i.x, float 1.000000e+00, float %.sroa.speculated7
  %i.y = tail call noundef float @acosf(float noundef %.sroa.speculated) #9
  %i.z = extractelement <2 x float> %i.s, i64 1   ; 2 uses
  %i.aa = fcmp ogt float %i.z, 0.000000e+00
  %i.ab = zext i1 %i.aa to i32
  %i.ac = fcmp olt float %i.z, 0.000000e+00
  %.neg.i = sext i1 %i.ac to i32
  %i.ad = add nsw i32 %.neg.i, %i.ab
  %i.ae = sitofp i32 %i.ad to float
  %i.af = fmul float %i.y, %i.ae                  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.af, ptr %i.ag, align 8, !tbaa !28
  %i.ah = tail call noundef float @logf(float noundef %2) #9
  %i.ai = tail call noundef float @logf(float noundef %3) #9
  %i.aj = fsub float %i.ah, %i.ai                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.aj, ptr %i.ak, align 4, !tbaa !29
  %i.al = load ptr, ptr %0, align 8, !tbaa !13    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.an = load float, ptr %i.am, align 4, !tbaa !20
  %i.ao = fsub float %i.an, %i.af
  %i.ap = tail call noundef float @llvm.fabs.f32(float %i.ao) ; 2 uses
  %i.aq = fpext float %i.ap to double             ; 3 uses
  %i.ar = fcmp ogt double %i.aq, f0x401921FB54442D18
  br i1 %i.ar, label %.lr.ph.i, label %_ZN5logos5Match12angleAbsDiffEff.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.as = phi double [ %i.av, %.lr.ph.i ], [ %i.aq, %bb.a ]
  %i.at = fadd double %i.as, f0xC01921FB54442D18
  %i.au = fptrunc double %i.at to float           ; 2 uses
  %i.av = fpext float %i.au to double             ; 2 uses
  %i.aw = fcmp ogt double %i.av, f0x401921FB54442D18
  br i1 %i.aw, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.ax = tail call float @llvm.fabs.f32(float %i.au) ; 2 uses
  %.pre = fpext float %i.ax to double
  br label %_ZN5logos5Match12angleAbsDiffEff.exit

_ZN5logos5Match12angleAbsDiffEff.exit:            ; preds = %bb.a, %._crit_edge.loopexit.i
  %.pre-phi = phi double [ %i.aq, %bb.a ], [ %.pre, %._crit_edge.loopexit.i ]
  %.0.lcssa.i = phi float [ %i.ap, %bb.a ], [ %i.ax, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ay = fsub double f0x401921FB54442D18, %.pre-phi
  %i.az = fptrunc double %i.ay to float
  %i.ba = tail call noundef float @llvm.fabs.f32(float %i.az) ; 2 uses
  %i.bb = fcmp olt float %i.ba, %.0.lcssa.i
  %.sroa.speculated.i = select i1 %i.bb, float %i.ba, float %.0.lcssa.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %.sroa.speculated.i, ptr %i.bc, align 8, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.be = load float, ptr %i.bd, align 8, !tbaa !23
  %i.bf = fsub float %i.be, %i.aj
  %i.bg = tail call noundef float @llvm.fabs.f32(float %i.bf)
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.bg, ptr %i.bh, align 4, !tbaa !26
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef float @_ZN5logos5Match12angleAbsDiffEff(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(56) %0, float noundef %1, float noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fsub float %1, %2
  %i.b = tail call noundef float @llvm.fabs.f32(float %i.a) ; 2 uses
  %i.c = fpext float %i.b to double               ; 2 uses
  %i.d = fcmp ogt double %i.c, f0x401921FB54442D18
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.e = phi double [ %i.h, %.lr.ph ], [ %i.c, %bb.a ]
  %i.f = fadd double %i.e, f0xC01921FB54442D18
  %i.g = fptrunc double %i.f to float             ; 2 uses
  %i.h = fpext float %i.g to double               ; 2 uses
  %i.i = fcmp ogt double %i.h, f0x401921FB54442D18
  br i1 %i.i, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !0

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.j = tail call float @llvm.fabs.f32(float %i.g)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0.lcssa = phi float [ %i.b, %bb.a ], [ %i.j, %._crit_edge.loopexit ] ; 3 uses
  %i.k = fpext float %.0.lcssa to double
  %i.l = fsub double f0x401921FB54442D18, %i.k
  %i.m = fptrunc double %i.l to float
  %i.n = tail call noundef float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.o = fcmp olt float %i.n, %.0.lcssa
  %.sroa.speculated = select i1 %i.o, float %i.n, float %.0.lcssa
  ret float %.sroa.speculated
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN5logos5Match4signEf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(56) %0, float noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = fcmp ogt float %1, 0.000000e+00
  %i.b = zext i1 %i.a to i32
  %i.c = fcmp olt float %1, 0.000000e+00
  %.neg = sext i1 %i.c to i32
  %i.d = add nsw i32 %.neg, %i.b
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK5logos5Match10printMatchEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 22) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load float, ptr %i.b, align 8, !tbaa !22
  %i.d = fpext float %i.c to double
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.d) ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i8, ptr %i.l, align 8, !tbaa !55
  %.not.i1.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i1.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 67
  %i.o = load i8, ptr %i.n, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.d:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.k)
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !32
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef signext i8 %i.r(ptr noundef nonnull align 8 dereferenceable(570) %i.k, i8 noundef signext 10), !inline_history !30
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi i8 [ %i.o, %bb.c ], [ %i.s, %bb.d ]
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i8 noundef signext %.0.i.i.i)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t) ; 0 uses
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 16) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load float, ptr %i.w, align 4, !tbaa !24
  %i.y = fpext float %i.x to double
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.y) ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ab = getelementptr i8, ptr %i.aa, i64 -24
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !49 ; 6 uses
  %.not.i.i.i1 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i1, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2

bb.e:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  tail call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 56
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !55
  %.not.i1.i.i3 = icmp eq i8 %i.ah, 0
  br i1 %.not.i1.i.i3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 67
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i2
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.af)
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef signext i8 %i.am(ptr noundef nonnull align 8 dereferenceable(570) %i.af, i8 noundef signext 10), !inline_history !30
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5: ; preds = %bb.f, %bb.g
  %.0.i.i.i4 = phi i8 [ %i.aj, %bb.f ], [ %i.an, %bb.g ]
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, i8 noundef signext %.0.i.i.i4)
  %i.ap = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) ; 0 uses
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 19) ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load float, ptr %i.ar, align 8, !tbaa !25
  %i.at = fpext float %i.as to double
  %i.au = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.at) ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !32
  %i.aw = getelementptr i8, ptr %i.av, i64 -24
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 240
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !49 ; 6 uses
  %.not.i.i.i6 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i6, label %bb.h, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7

bb.h:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5
  tail call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit5
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !55
  %.not.i1.i.i8 = icmp eq i8 %i.bc, 0
  br i1 %.not.i1.i.i8, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 67
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i7
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ba)
  %i.bf = load ptr, ptr %i.ba, align 8, !tbaa !32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef signext i8 %i.bh(ptr noundef nonnull align 8 dereferenceable(570) %i.ba, i8 noundef signext 10), !inline_history !30
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10: ; preds = %bb.i, %bb.j
  %.0.i.i.i9 = phi i8 [ %i.be, %bb.i ], [ %i.bi, %bb.j ]
  %i.bj = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.au, i8 noundef signext %.0.i.i.i9)
  %i.bk = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) ; 0 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 13) ; 0 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !26
  %i.bo = fpext float %i.bn to double
  %i.bp = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.bo) ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !32
  %i.br = getelementptr i8, ptr %i.bq, i64 -24
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = getelementptr inbounds i8, ptr %i.bp, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 240
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !49 ; 6 uses
  %.not.i.i.i11 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i11, label %bb.k, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12

bb.k:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10
  tail call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !55
  %.not.i1.i.i13 = icmp eq i8 %i.bx, 0
  br i1 %.not.i1.i.i13, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 67
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15

bb.m:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i12
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bv)
  %i.ca = load ptr, ptr %i.bv, align 8, !tbaa !32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef signext i8 %i.cc(ptr noundef nonnull align 8 dereferenceable(570) %i.bv, i8 noundef signext 10), !inline_history !30
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15: ; preds = %bb.l, %bb.m
  %.0.i.i.i14 = phi i8 [ %i.bz, %bb.l ], [ %i.cd, %bb.m ]
  %i.ce = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bp, i8 noundef signext %.0.i.i.i14)
  %i.cf = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce) ; 0 uses
  %i.cg = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 29) ; 0 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !13
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 20
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !20
  %i.ck = fpext float %i.cj to double
  %i.cl = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.ck) ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !32
  %i.cn = getelementptr i8, ptr %i.cm, i64 -24
  %i.co = load i64, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 240
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !49 ; 6 uses
  %.not.i.i.i16 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i16, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17

bb.n:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15
  tail call void @_ZSt16__throw_bad_castv() #10
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17: ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit15
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !55
  %.not.i1.i.i18 = icmp eq i8 %i.ct, 0
  br i1 %.not.i1.i.i18, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 67
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !56
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit20

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.cr)
  %i.cw = load ptr, ptr %i.cr, align 8, !tbaa !32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = tail call noundef signext i8 %i.cy(ptr noundef nonnull align 8 dereferenceable(570) %i.cr, i8 noundef signext 10), !inline_history !30
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit20

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit20: ; preds = %bb.o, %bb.p
  %.0.i.i.i19 = phi i8 [ %i.cv, %bb.o ], [ %i.cz, %bb.p ]
  %i.da = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i8 noundef signext %.0.i.i.i19)
  %i.db = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !21}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTSN5logos9PointPairE", !9, i64 0}
!11 = !{!"float", !5, i64 0}
!12 = !{!"_ZTSN5logos5MatchE", !10, i64 0, !10, i64 8, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !10, i64 8}
!15 = !{!"p1 _ZTSN5logos5PointE", !9, i64 0}
!16 = !{!"_ZTSN5logos9PointPairE", !15, i64 0, !15, i64 8, !6, i64 16, !11, i64 20, !11, i64 24, !6, i64 28, !6, i64 32}
!17 = !{!16, !15, i64 0}
!18 = !{!16, !15, i64 8}
!19 = !{!11, !11, i64 0}
!20 = !{!16, !11, i64 20}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!12, !11, i64 16}
!23 = !{!16, !11, i64 24}
!24 = !{!12, !11, i64 20}
!25 = !{!12, !11, i64 24}
!26 = !{!12, !11, i64 28}
!27 = !{!12, !11, i64 44}
!28 = !{!12, !11, i64 32}
!29 = !{!12, !11, i64 36}
!30 = distinct !{null, null, null, null}
!31 = !{!"vtable pointer", !4, i64 0}
!32 = !{!31, !31, i64 0}
!33 = !{!"long", !5, i64 0}
!34 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!35 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!36 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !9, i64 0}
!37 = !{!"_ZTSNSt8ios_base6_WordsE", !9, i64 0, !33, i64 8}
!38 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !9, i64 0}
!39 = !{!"p1 _ZTSNSt6locale5_ImplE", !9, i64 0}
!40 = !{!"_ZTSSt6locale", !39, i64 0}
!41 = !{!"_ZTSSt8ios_base", !33, i64 8, !33, i64 16, !34, i64 24, !35, i64 28, !35, i64 32, !36, i64 40, !37, i64 48, !5, i64 64, !6, i64 192, !38, i64 200, !40, i64 208}
!42 = !{!"p1 _ZTSSo", !9, i64 0}
!43 = !{!"bool", !5, i64 0}
!44 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !9, i64 0}
!45 = !{!"p1 _ZTSSt5ctypeIcE", !9, i64 0}
!46 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!47 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !9, i64 0}
!48 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !41, i64 0, !42, i64 216, !5, i64 224, !43, i64 225, !44, i64 232, !45, i64 240, !46, i64 248, !47, i64 256}
!49 = !{!48, !45, i64 240}
!50 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!51 = !{!"p1 _ZTS15__locale_struct", !9, i64 0}
!52 = !{!"p1 int", !9, i64 0}
!53 = !{!"p1 short", !9, i64 0}
!54 = !{!"_ZTSSt5ctypeIcE", !50, i64 0, !51, i64 16, !43, i64 24, !52, i64 32, !52, i64 40, !53, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!55 = !{!54, !5, i64 56}
!56 = !{!5, !5, i64 0}
end_hunk_0
