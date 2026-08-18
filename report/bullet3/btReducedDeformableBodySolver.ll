inline.NumInlined: 765
inline.NumDeleted: 282
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 49
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN15btReducedVector8simplifyEv:bb.a
  %i.gl = load i32, ptr %i.aq, align 4, !tbaa !32
  %i.gm = add nsw i32 %i.gl, 1
  store i32 %i.gm, ptr %i.aq, align 4, !tbaa !32
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN20btAlignedObjectArrayI9btVector3E9push_backERKS0_.exit, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gn = icmp samesign ult i64 %indvars.iv.next, %i.cu
  br i1 %i.gn, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !448

bb.af:                                            ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.pn = phi { ptr, i32 } [ %i.dd, %bb.r ], [ %i.dc, %bb.q ], [ %i.db, %bb.p ], [ %i.da, %bb.o ]
  call void @_ZN20btAlignedObjectArrayI9btVector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #19
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.n
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.af ], [ %i.cz, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @_ZN20btAlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %1) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %.pn.pn
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN23btMultiBodyJacobianDataD2Ev(ptr noundef nonnull align 8 dead_on_return(204) dereferenceable(204) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !449  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.d = load i8, ptr %i.c, align 8, !range !34
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable

_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.k = load i8, ptr %i.j, align 8, !range !34
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #20
  unreachable

_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit:   ; preds = %_ZN20btAlignedObjectArrayI11btMatrix3x3ED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !450  ; 2 uses
  %.not.i.i.i3 = icmp ne ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load i8, ptr %i.q, align 8, !range !34
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i4 = select i1 %.not.i.i.i3, i1 %i.s, i1 false
  br i1 %or.cond.i.i4, label %bb.f, label %_ZN20btAlignedObjectArrayIfED2Ev.exit

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit:            ; preds = %_ZN20btAlignedObjectArrayI9btVector3ED2Ev.exit, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !450  ; 2 uses
  %.not.i.i.i5 = icmp ne ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i8, ptr %i.x, align 8, !range !34
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i.i6 = select i1 %.not.i.i.i5, i1 %i.z, i1 false
  br i1 %or.cond.i.i6, label %bb.h, label %_ZN20btAlignedObjectArrayIfED2Ev.exit7

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit7 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit7:           ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !450 ; 2 uses
  %.not.i.i.i8 = icmp ne ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.af = load i8, ptr %i.ae, align 8, !range !34
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond.i.i9 = select i1 %.not.i.i.i8, i1 %i.ag, i1 false
  br i1 %or.cond.i.i9, label %bb.j, label %_ZN20btAlignedObjectArrayIfED2Ev.exit10

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit7
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ad)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit10 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit10:          ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit7, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !450 ; 2 uses
  %.not.i.i.i11 = icmp ne ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = load i8, ptr %i.al, align 8, !range !34
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond.i.i12 = select i1 %.not.i.i.i11, i1 %i.an, i1 false
  br i1 %or.cond.i.i12, label %bb.l, label %_ZN20btAlignedObjectArrayIfED2Ev.exit13

bb.l:                                             ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit10
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ak)
          to label %_ZN20btAlignedObjectArrayIfED2Ev.exit13 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #20
  unreachable

_ZN20btAlignedObjectArrayIfED2Ev.exit13:          ; preds = %_ZN20btAlignedObjectArrayIfED2Ev.exit10, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIfED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !450  ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !34
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody10updateNodeEP10btDbvtNodebb(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 8 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.g = load float, ptr %i.f, align 4
  %i.h = select i1 %3, float %i.g, float f0x37480000 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %2, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.i, label %bb.c

_Z8btSetMinIfEvRT_RKS0_.exit.i.i:                 ; preds = %bb.b
  %.sroa.5.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx80, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.sroa.6.0.copyload = load float, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !51 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.l = load float, ptr %i.j, align 8, !tbaa !68 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.n = load float, ptr %i.m, align 8, !tbaa !68
  %i.o = fmul float %i.l, %i.n
  %i.p = fadd float %i.o, %.sroa.5.0.copyload     ; 4 uses
  %i.q = fcmp olt float %i.p, %.sroa.5.0.copyload
  %i.r = select i1 %i.q, float %i.p, float %.sroa.5.0.copyload
  %i.s = fcmp ogt float %.sroa.6.0.copyload, 0.000000e+00
  %i.t = select i1 %i.s, float 0.000000e+00, float %.sroa.6.0.copyload
  %i.u = fcmp olt float %.sroa.5.0.copyload, %i.p
  %i.v = select i1 %i.u, float %i.p, float %.sroa.5.0.copyload
  %i.w = fcmp olt float %.sroa.6.0.copyload, 0.000000e+00
  %i.x = select i1 %i.w, float 0.000000e+00, float %.sroa.6.0.copyload
  %i.y = fsub float %i.r, %i.h
  %i.z = insertelement <2 x float> poison, float %i.y, i64 0
  %.sroa.1051.8.vec.insert = insertelement <2 x float> %i.z, float %i.t, i64 1
  %i.aa = load <2 x float>, ptr %i.i, align 8     ; 5 uses
  %i.ab = load <2 x float>, ptr %i.k, align 8, !tbaa !68
  %i.ac = insertelement <2 x float> poison, float %i.l, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.ad, %i.ab
  %i.af = fadd <2 x float> %i.ae, %i.aa           ; 4 uses
  %i.ag = fcmp olt <2 x float> %i.aa, %i.af
  %i.ah = select <2 x i1> %i.ag, <2 x float> %i.af, <2 x float> %i.aa
  %i.ai = fcmp olt <2 x float> %i.af, %i.aa
  %i.aj = select <2 x i1> %i.ai, <2 x float> %i.af, <2 x float> %i.aa
  %i.ak = insertelement <2 x float> poison, float %i.h, i64 0
  %i.al = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = fsub <2 x float> %i.aj, %i.al
  %i.an = fadd <2 x float> %i.al, %i.ah
  %i.ao = fadd float %i.h, %i.v
  %i.ap = insertelement <2 x float> poison, float %i.ao, i64 0
  %.sroa.22.24.vec.insert = insertelement <2 x float> %i.ap, float %i.x, i64 1
  br label %common.ret

bb.c:                                             ; preds = %bb.b
  %4 = load float, ptr %i.i, align 4, !tbaa !68, !noalias !451 ; 2 uses
  %5 = fsub float %4, %i.h
  %6 = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %7 = load float, ptr %6, align 4, !tbaa !68, !noalias !451 ; 2 uses
  %8 = fsub float %7, %i.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !68, !noalias !451 ; 2 uses
  %i.as = fsub float %i.ar, %i.h
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %5, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %8, i64 1
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.as, i64 0
  %9 = fadd float %i.h, %4
  %10 = fadd float %i.h, %7
  %11 = fadd float %i.h, %i.ar
  %.sroa.0.0.vec.insert.i6.i.i = insertelement <2 x float> poison, float %9, i64 0
  %.sroa.0.4.vec.insert.i7.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i6.i.i, float %10, i64 1
  %.sroa.3.12.vec.insert.i8.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %11, i64 0
  br label %common.ret

common.ret:                                       ; preds = %bb.c, %_Z8btSetMinIfEvRT_RKS0_.exit.i.i
  %.sroa.044.0 = phi <2 x float> [ %i.am, %_Z8btSetMinIfEvRT_RKS0_.exit.i.i ], [ %.sroa.0.4.vec.insert.i.i.i, %bb.c ]
  %.sroa.1051.0 = phi <2 x float> [ %.sroa.1051.8.vec.insert, %_Z8btSetMinIfEvRT_RKS0_.exit.i.i ], [ %.sroa.3.12.vec.insert.i.i.i, %bb.c ]
  %.sroa.1555.0 = phi <2 x float> [ %i.an, %_Z8btSetMinIfEvRT_RKS0_.exit.i.i ], [ %.sroa.0.4.vec.insert.i7.i.i, %bb.c ]
  %.sroa.22.0 = phi <2 x float> [ %.sroa.22.24.vec.insert, %_Z8btSetMinIfEvRT_RKS0_.exit.i.i ], [ %.sroa.3.12.vec.insert.i8.i.i, %bb.c ]
  store <2 x float> %.sroa.044.0, ptr %1, align 8
  %.sroa.1051.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %.sroa.1051.0, ptr %.sroa.1051.0..sroa_idx, align 8, !tbaa !51
  %.sroa.1555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store <2 x float> %.sroa.1555.0, ptr %.sroa.1555.0..sroa_idx, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store <2 x float> %.sroa.22.0, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !51
  br label %common.ret81

common.ret81:                                     ; preds = %bb.d, %common.ret
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN10btSoftBody10updateNodeEP10btDbvtNodebb(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %i.e, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !51
  tail call void @_ZN10btSoftBody10updateNodeEP10btDbvtNodebb(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %i.at, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %i.au = load ptr, ptr %i.d, align 8, !tbaa !51  ; 4 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !51  ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !68 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !68 ; 2 uses
  %i.bc = fcmp olt float %i.az, %i.bb
  %.sink28.i = select i1 %i.bc, float %i.az, float %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.be = load float, ptr %i.bd, align 4, !tbaa !68 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !68 ; 2 uses
  %i.bh = fcmp ogt float %i.be, %i.bg
  %.sink42.i = select i1 %i.bh, float %i.be, float %i.bg
  %i.bi = load <2 x float>, ptr %i.au, align 4, !tbaa !68 ; 2 uses
  %i.bj = load <2 x float>, ptr %i.av, align 4, !tbaa !68 ; 2 uses
  %i.bk = fcmp olt <2 x float> %i.bi, %i.bj
  %i.bl = select <2 x i1> %i.bk, <2 x float> %i.bi, <2 x float> %i.bj
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bm = load <2 x float>, ptr %i.aw, align 4, !tbaa !68 ; 2 uses
  %i.bn = load <2 x float>, ptr %i.ax, align 4, !tbaa !68 ; 2 uses
  %i.bo = fcmp ogt <2 x float> %i.bm, %i.bn
  %i.bp = select <2 x i1> %i.bo, <2 x float> %i.bm, <2 x float> %i.bn
  store <2 x float> %i.bl, ptr %1, align 8
  store float %.sink28.i, ptr %.sroa.5.0..sroa_idx, align 8
  store <2 x float> %i.bp, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  store float %.sink42.i, ptr %.sroa.8.0..sroa_idx, align 8
  br label %common.ret81
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10btSoftBody10updateFaceI10btDbvtNodeEEvPT_bb(ptr noundef nonnull align 8 dereferenceable(2064) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51   ; 6 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.g = load float, ptr %i.f, align 4
  %i.h = select i1 %3, float %i.g, float f0x37480000 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !456  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load <2 x float>, ptr %i.k, align 8      ; 9 uses
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.m = load <2 x float>, ptr %.sroa.5138.0..sroa_idx, align 8 ; 4 uses
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  br i1 %2, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.i, label %_Z8btSetMinIfEvRT_RKS0_.exit.i.i54

_Z8btSetMinIfEvRT_RKS0_.exit.i.i:                 ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.q = load float, ptr %i.o, align 8, !tbaa !68 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.s = load float, ptr %i.r, align 8, !tbaa !68
  %i.t = fmul float %i.q, %i.s
  %i.u = extractelement <2 x float> %i.m, i64 0
  %i.v = fadd float %i.t, %i.u                    ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !456  ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.16143.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !68
  %i.ac = fmul float %i.q, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !456 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.27.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !68
  %i.aj = fmul float %i.q, %i.ai
  %i.ak = load <2 x float>, ptr %i.p, align 8, !tbaa !68
  %i.al = insertelement <2 x float> poison, float %i.q, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.an = fmul <2 x float> %i.am, %i.ak
  %i.ao = fadd <2 x float> %i.an, %i.l            ; 4 uses
  %i.ap = load <2 x float>, ptr %i.y, align 8     ; 5 uses
  %i.aq = load <2 x float>, ptr %i.z, align 8, !tbaa !68
  %i.ar = fmul <2 x float> %i.am, %i.aq
  %i.as = fadd <2 x float> %i.ar, %i.ap           ; 4 uses
  %i.at = load <2 x float>, ptr %i.af, align 8    ; 5 uses
  %i.au = load <2 x float>, ptr %i.ag, align 8, !tbaa !68
  %i.av = fmul <2 x float> %i.am, %i.au
  %i.aw = fadd <2 x float> %i.av, %i.at           ; 4 uses
  %i.ax = fcmp olt <2 x float> %i.ao, %i.l
  %i.ay = select <2 x i1> %i.ax, <2 x float> %i.ao, <2 x float> %i.l ; 2 uses
  %i.az = fcmp olt <2 x float> %i.ap, %i.ay
  %i.ba = select <2 x i1> %i.az, <2 x float> %i.ap, <2 x float> %i.ay ; 2 uses
  %i.bb = fcmp olt <2 x float> %i.as, %i.ba
  %i.bc = select <2 x i1> %i.bb, <2 x float> %i.as, <2 x float> %i.ba ; 2 uses
  %i.bd = fcmp olt <2 x float> %i.at, %i.bc
  %i.be = select <2 x i1> %i.bd, <2 x float> %i.at, <2 x float> %i.bc ; 2 uses
  %i.bf = fcmp olt <2 x float> %i.aw, %i.be
  %i.bg = select <2 x i1> %i.bf, <2 x float> %i.aw, <2 x float> %i.be
  %i.bh = fcmp olt <2 x float> %i.l, %i.ao
  %i.bi = select <2 x i1> %i.bh, <2 x float> %i.ao, <2 x float> %i.l ; 2 uses
  %i.bj = fcmp olt <2 x float> %i.bi, %i.ap
  %i.bk = select <2 x i1> %i.bj, <2 x float> %i.ap, <2 x float> %i.bi ; 2 uses
  %i.bl = fcmp olt <2 x float> %i.bk, %i.as
  %i.bm = select <2 x i1> %i.bl, <2 x float> %i.as, <2 x float> %i.bk ; 2 uses
  %i.bn = fcmp olt <2 x float> %i.bm, %i.at
  %i.bo = select <2 x i1> %i.bn, <2 x float> %i.at, <2 x float> %i.bm ; 2 uses
  %i.bp = fcmp olt <2 x float> %i.bo, %i.aw
  %i.bq = select <2 x i1> %i.bp, <2 x float> %i.aw, <2 x float> %i.bo
  %i.br = load <2 x float>, ptr %.sroa.16143.32..sroa_idx, align 8 ; 2 uses
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.bt = extractelement <2 x float> %i.br, i64 0
  %i.bu = fadd float %i.ac, %i.bt                 ; 2 uses
  %i.bv = load <2 x float>, ptr %.sroa.27.64..sroa_idx, align 8 ; 2 uses
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.bx = extractelement <2 x float> %i.bv, i64 0
  %i.by = fadd float %i.aj, %i.bx                 ; 2 uses
  %i.bz = shufflevector <4 x float> %i.n, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 poison, i32 5, i32 0, i32 1>
  %i.ca = insertelement <4 x float> poison, float %i.v, i64 0
  %i.cb = insertelement <4 x float> %i.bz, float %i.v, i64 0 ; 2 uses
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 3, i32 0, i32 7>
  %i.cd = fcmp olt <4 x float> %i.cb, %i.cc
  %i.ce = shufflevector <4 x float> %i.ca, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 0, i32 7>
  %i.cf = select <4 x i1> %i.cd, <4 x float> %i.ce, <4 x float> %i.n ; 3 uses
  %i.cg = shufflevector <4 x float> %i.bs, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ch = shufflevector <4 x float> %i.cf, <4 x float> %i.bs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ci = fcmp olt <4 x float> %i.cg, %i.ch
  %i.cj = select <4 x i1> %i.ci, <4 x float> %i.bs, <4 x float> %i.cf ; 3 uses
  %i.ck = insertelement <4 x float> %i.cj, float 0.000000e+00, i64 1
  %i.cl = insertelement <4 x float> %i.ck, float %i.bu, i64 0 ; 2 uses
  %i.cm = insertelement <4 x float> %i.cj, float 0.000000e+00, i64 3
  %i.cn = insertelement <4 x float> %i.cm, float %i.bu, i64 2
  %i.co = fcmp olt <4 x float> %i.cl, %i.cn
  %i.cp = shufflevector <4 x float> %i.cl, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 0, i32 7>
  %i.cq = select <4 x i1> %i.co, <4 x float> %i.cp, <4 x float> %i.cj ; 3 uses
  %i.cr = shufflevector <4 x float> %i.bw, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cs = shufflevector <4 x float> %i.cq, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ct = fcmp olt <4 x float> %i.cr, %i.cs
  %i.cu = select <4 x i1> %i.ct, <4 x float> %i.bw, <4 x float> %i.cq ; 3 uses
  %i.cv = insertelement <4 x float> %i.cu, float 0.000000e+00, i64 1
  %i.cw = insertelement <4 x float> %i.cv, float %i.by, i64 0 ; 2 uses
  %i.cx = insertelement <4 x float> %i.cu, float 0.000000e+00, i64 3
  %i.cy = insertelement <4 x float> %i.cx, float %i.by, i64 2
  %i.cz = fcmp olt <4 x float> %i.cw, %i.cy
  %i.da = shufflevector <4 x float> %i.cw, <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 0, i32 7>
  %i.db = select <4 x i1> %i.cz, <4 x float> %i.da, <4 x float> %i.cu
  br label %common.ret

_Z8btSetMinIfEvRT_RKS0_.exit.i.i54:               ; preds = %bb.b
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !456 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !456 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load <2 x float>, ptr %i.de, align 8    ; 4 uses
  %i.dj = load <2 x float>, ptr %i.dh, align 8    ; 4 uses
  %i.dk = fcmp olt <2 x float> %i.di, %i.l
  %i.dl = select <2 x i1> %i.dk, <2 x float> %i.di, <2 x float> %i.l ; 2 uses
  %i.dm = fcmp olt <2 x float> %i.dj, %i.dl
  %i.dn = select <2 x i1> %i.dm, <2 x float> %i.dj, <2 x float> %i.dl
  %i.do = fcmp olt <2 x float> %i.l, %i.di
  %i.dp = select <2 x i1> %i.do, <2 x float> %i.di, <2 x float> %i.l ; 2 uses
  %i.dq = fcmp olt <2 x float> %i.dp, %i.dj
  %i.dr = select <2 x i1> %i.dq, <2 x float> %i.dj, <2 x float> %i.dp
  %i.ds = load <2 x float>, ptr %.sroa.10.16..sroa_idx, align 8 ; 3 uses
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.du = load <2 x float>, ptr %.sroa.15.32..sroa_idx, align 8
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.dw = shufflevector <2 x float> %i.m, <2 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dx = shufflevector <2 x float> %i.ds, <2 x float> %i.m, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.dy = fcmp olt <4 x float> %i.dw, %i.dx
  %i.dz = shufflevector <4 x i1> %i.dy, <4 x i1> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ea = select <4 x i1> %i.dz, <4 x float> %i.dt, <4 x float> %i.n ; 3 uses
  %i.eb = shufflevector <4 x float> %i.dv, <4 x float> %i.ea, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
end_hunk_0
