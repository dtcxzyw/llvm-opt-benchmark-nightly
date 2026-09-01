Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3CpuNarrowPhase?download=true
inline.NumInlined: 585
inline.NumDeleted: 221
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN16b3CpuNarrowPhase23registerConvexHullShapeEPKfiiS1_:bb.a
  %.0.i12.i.i51 = phi ptr [ %.0.i12.i.i50, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.thread ], [ %.0.i12.i.i, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i ] ; 2 uses
  %.pre.i49 = phi i32 [ %.pre.i48, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.thread ], [ %.pre.i, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i ]
  store i8 1, ptr %i.a, align 8, !tbaa !50
  store ptr %.0.i12.i.i51, ptr %i.b, align 8, !tbaa !54
  store i32 %.0.i.i53, ptr %i.d, align 8, !tbaa !56
  br label %bb.f

bb.f:                                             ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i, %bb.c, %bb.b
  %i.am = phi ptr [ %.0.i12.i.i51, %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i ], [ %i.k, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.an = phi i32 [ %.0.i.i53, %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i ], [ %i.l, %bb.c ], [ %i.l, %bb.b ]
  %i.ao = phi i32 [ %.pre.i49, %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i ], [ %i.l, %bb.c ], [ %i.m, %bb.b ]
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr %i.am, i64 %i.ap ; 2 uses
  store <2 x float> %i.r, ptr %i.aq, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !89
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !55
  %i.as = add nsw i32 %i.ar, 1                    ; 3 uses
  store i32 %i.as, ptr %i.c, align 4, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !168

bb.g:                                             ; preds = %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.thread, %.noexc30, %.split7.i.i, %_ZN20b3AlignedObjectArrayI9b3Vector3E8allocateEi.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.h:                                             ; preds = %._crit_edge
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV15b3ConvexUtility, i64 16), ptr %i.j, align 16, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i8 1, ptr %i.au, align 16, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store ptr null, ptr %i.av, align 8, !tbaa !54
  %i.aw = getelementptr inbounds nuw i8, ptr %i.j, i64 92
  store i32 0, ptr %i.aw, align 4, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  store i32 0, ptr %i.ax, align 16, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  store i8 1, ptr %i.ay, align 16, !tbaa !169
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  store ptr null, ptr %i.az, align 8, !tbaa !149
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 124
  store i32 0, ptr %i.ba, align 4, !tbaa !143
  %i.bb = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i32 0, ptr %i.bb, align 16, !tbaa !170
  %i.bc = getelementptr inbounds nuw i8, ptr %i.j, i64 176
  store i8 1, ptr %i.bc, align 16, !tbaa !50
  %i.bd = getelementptr inbounds nuw i8, ptr %i.j, i64 168
  store ptr null, ptr %i.bd, align 8, !tbaa !54
  %i.be = getelementptr inbounds nuw i8, ptr %i.j, i64 156
  store i32 0, ptr %i.be, align 4, !tbaa !55
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 160
  store i32 0, ptr %i.bf, align 16, !tbaa !56
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = invoke noundef zeroext i1 @_ZN15b3ConvexUtility28initializePolyhedralFeaturesEPK9b3Vector3ib(ptr noundef nonnull align 16 dereferenceable(184) %i.j, ptr noundef nonnull %i.i, i32 noundef %i.h, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %._crit_edge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %bb.i, %bb.h
  %i.bj = invoke noundef i32 @_ZN16b3CpuNarrowPhase23registerConvexHullShapeEP15b3ConvexUtility(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %i.j)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bk = load ptr, ptr %i.j, align 16, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 16 dereferenceable(184) %i.j) #19
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !54  ; 2 uses
  %.not.i.i.i33 = icmp ne ptr %i.bn, null
  %i.bo = load i8, ptr %i.a, align 8, !range !81
  %i.bp = trunc nuw i8 %i.bo to i1
  %or.cond.i.i = select i1 %.not.i.i.i33, i1 %i.bp, i1 false
  br i1 %or.cond.i.i, label %bb.n, label %_ZN20b3AlignedObjectArrayI9b3Vector3ED2Ev.exit

bb.n:                                             ; preds = %bb.m
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.bn)
          to label %_ZN20b3AlignedObjectArrayI9b3Vector3ED2Ev.exit unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #21
  unreachable

_ZN20b3AlignedObjectArrayI9b3Vector3ED2Ev.exit:   ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  ret i32 %i.bj

bb.p:                                             ; preds = %bb.l
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.j, %bb.p, %bb.k, %bb.g
  %.pn28 = phi { ptr, i32 } [ %i.at, %bb.g ], [ %i.bh, %bb.j ], [ %i.bi, %bb.k ], [ %i.bs, %bb.p ]
  call void @_ZN20b3AlignedObjectArrayI9b3Vector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  resume { ptr, i32 } %.pn28
}

declare noundef zeroext i1 @_ZN15b3ConvexUtility28initializePolyhedralFeaturesEPK9b3Vector3ib(ptr noundef nonnull align 16 dereferenceable(184), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI9b3Vector3ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !81
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #21
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 16 dereferenceable(32) ptr @_ZNK16b3CpuNarrowPhase17getLocalSpaceAabbEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = sext i32 %1 to i64
  %i.f = getelementptr inbounds [32 x i8], ptr %i.d, i64 %i.e
  ret ptr %i.f
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #19 ; 0 uses
  tail call void @_ZSt9terminatev() #21
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

declare void @_Z21b3AlignedFreeInternalPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_Z20b3FindSeparatingAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_RK20b3AlignedObjectArrayIS2_ESB_RKS8_I9b3GpuFaceERKS8_IiESB_SB_SF_SI_RS2_(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef nonnull align 8 dereferenceable(25) %8, ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 8 dereferenceable(25) %11, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 16 dereferenceable(16) %14) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %15 = alloca %class.b3Vector3, align 16         ; 10 uses
  %16 = alloca %class.b3Vector3, align 16         ; 10 uses
  %17 = alloca %class.b3Vector3, align 16         ; 9 uses
  %i.a = alloca float, align 4                    ; 6 uses
  %18 = alloca %class.b3Vector3, align 16         ; 9 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %19 = alloca %class.b3Vector3, align 16         ; 10 uses
  %i.c = alloca float, align 4                    ; 6 uses
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !112
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 12
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !112
  %i.e = getelementptr inbounds nuw i8, ptr %16, i64 12
  store float 0.000000e+00, ptr %i.e, align 4, !tbaa !89
  %.sroa.6248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.6248.0.copyload = load float, ptr %.sroa.6248.0..sroa_idx, align 8
  %i.f = load <4 x float>, ptr %15, align 16
  %i.g = shufflevector <4 x float> %i.f, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.25.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %.sroa.5241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.6242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6242.0.copyload = load float, ptr %.sroa.6242.0..sroa_idx, align 8 ; 3 uses
  %.sroa.23.48.copyload.i164 = load float, ptr %16, align 16
  %.sroa.25.48..sroa_idx.i165 = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 3 uses
  %i.n = load <2 x float>, ptr %3, align 16, !tbaa !89 ; 4 uses
  %i.o = load float, ptr %i.h, align 4, !tbaa !89 ; 3 uses
  %i.p = load <2 x float>, ptr %i.i, align 8, !tbaa !89 ; 5 uses
  %i.q = load float, ptr %i.j, align 4, !tbaa !89 ; 2 uses
  %i.r = load <2 x float>, ptr %5, align 16, !tbaa !89 ; 3 uses
  %i.s = load float, ptr %i.k, align 4, !tbaa !89 ; 3 uses
  %i.t = shufflevector <2 x float> %i.n, <2 x float> %i.r, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.u = fmul <2 x float> %i.t, %i.t
  %i.v = shufflevector <2 x float> %i.n, <2 x float> %i.r, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.w = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.v, <2 x float> %i.u)
  %i.x = load <2 x float>, ptr %i.l, align 8, !tbaa !89 ; 3 uses
  %i.y = load float, ptr %i.m, align 4, !tbaa !89 ; 3 uses
  %i.z = shufflevector <2 x float> %i.p, <2 x float> %i.x, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.z, <2 x float> %i.w)
  %i.ab = shufflevector <2 x float> %i.p, <2 x float> %i.x, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ac = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ab, <2 x float> %i.aa)
  %i.ad = fdiv <2 x float> splat (float 2.000000e+00), %i.ac ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 1 ; 3 uses
  %i.af = extractelement <2 x float> %i.r, i64 0  ; 4 uses
  %i.ag = fmul float %i.af, %i.ae                 ; 2 uses
  %i.ah = extractelement <2 x float> %i.x, i64 0  ; 2 uses
  %i.ai = fmul float %i.af, %i.ag                 ; 2 uses
  %i.aj = load <2 x float>, ptr %0, align 16      ; 2 uses
  %i.ak = load <2 x float>, ptr %1, align 16      ; 3 uses
  %.sroa.5241.0.copyload = load float, ptr %.sroa.5241.0..sroa_idx, align 4 ; 2 uses
  %i.al = shufflevector <2 x float> %i.n, <2 x float> %i.p, <4 x i32> <i32 0, i32 2, i32 2, i32 poison>
  %i.am = insertelement <4 x float> %i.al, float %i.o, i64 3
  %i.an = shufflevector <2 x float> %i.ad, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ao = fmul <4 x float> %i.am, %i.an           ; 4 uses
  %i.ap = extractelement <4 x float> %i.ao, i64 1
  %i.aq = fmul float %i.o, %i.ap                  ; 2 uses
  %i.ar = shufflevector <2 x float> %i.n, <2 x float> %i.p, <4 x i32> <i32 0, i32 2, i32 0, i32 0>
  %i.as = fmul <4 x float> %i.ar, %i.ao           ; 3 uses
  %i.at = shufflevector <2 x float> %i.p, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.au = insertelement <4 x float> %i.at, float %i.o, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.q, i64 2
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ax = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 3, i32 1>
  %i.ay = fmul <4 x float> %i.aw, %i.ax           ; 3 uses
  %i.az = fadd <4 x float> %i.as, %i.ay           ; 3 uses
  %i.ba = shufflevector <4 x float> %i.as, <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x i32> <i32 2, i32 5, i32 6, i32 3>
  %i.bb = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 2, i32 5, i32 4, i32 3>
  %i.bc = fsub <4 x float> %i.ba, %i.bb           ; 2 uses
  %i.bd = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.be = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %i.bf = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.bg = shufflevector <4 x float> %i.bc, <4 x float> %i.az, <4 x i32> <i32 1, i32 7, i32 0, i32 poison>
  %i.bh = extractelement <2 x float> %i.ak, i64 0 ; 2 uses
  %i.bi = load <2 x float>, ptr %.sroa.25.48..sroa_idx.i, align 4
  %i.bj = load <2 x float>, ptr %.sroa.25.48..sroa_idx.i165, align 4
  %shift = shufflevector <4 x float> %i.ay, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.as, %shift
  %i.bk = extractelement <4 x float> %i.ao, i64 0
  %i.bl = fmul float %i.q, %i.bk                  ; 2 uses
  %i.bm = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.aq, i64 0
  %i.bn = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bo = shufflevector <4 x float> %foldExtExtBinop, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.bp = shufflevector <2 x float> %i.bn, <2 x float> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.bq = fsub <2 x float> %i.bm, %i.bp
  %i.br = fmul float %i.ah, %i.ae                 ; 4 uses
  %i.bs = fmul float %i.s, %i.ae                  ; 3 uses
  %i.bt = fmul float %i.y, %i.bs                  ; 2 uses
  %i.bu = fmul float %i.y, %i.br                  ; 2 uses
  %i.bv = fmul float %i.af, %i.br                 ; 2 uses
  %i.bw = fmul float %i.af, %i.bs                 ; 2 uses
  %i.bx = fmul float %i.s, %i.bs                  ; 2 uses
  %i.by = fmul float %i.s, %i.br                  ; 2 uses
  %i.bz = fmul float %i.ah, %i.br                 ; 2 uses
  %i.ca = fadd float %i.bv, %i.bt
  %i.cb = fadd float %i.ai, %i.bz
  %i.cc = fsub float %i.bv, %i.bt
  %i.cd = fadd float %i.bw, %i.bu
  %i.ce = fadd float %i.ai, %i.bx
  %i.cf = fmul float %i.y, %i.ag                  ; 2 uses
  %i.cg = fadd float %i.by, %i.cf
  %i.ch = fsub float 1.000000e+00, %i.cb
  %i.ci = fsub float 1.000000e+00, %i.ce
  %i.cj = fsub float %i.by, %i.cf
  %i.ck = fadd float %i.bx, %i.bz
  %i.cl = fadd float %i.aq, %i.bl
  %i.cm = fsub float 1.000000e+00, %i.ck
  %i.cn = fsub float %i.bw, %i.bu
  %i.co = insertelement <4 x float> %i.be, float %i.cl, i64 2
  %i.cp = insertelement <4 x float> %i.co, float %i.cn, i64 3
  %i.cq = fmul <4 x float> %i.bd, %i.cp
  %i.cr = insertelement <4 x float> %i.bg, float %i.cm, i64 3
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bf, <4 x float> %i.cr, <4 x float> %i.cq) ; 2 uses
  %i.ct = insertelement <2 x float> poison, float %.sroa.6248.0.copyload, i64 0 ; 2 uses
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.bq, <2 x float> %i.cv)
  %i.cx = fadd <2 x float> %i.bi, %i.cw
  %i.cy = fmul float %.sroa.5241.0.copyload, %i.cg
  %i.cz = fmul float %.sroa.5241.0.copyload, %i.ch
  %i.da = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.cc, float %i.cy)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.cd, float %i.cz)
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %.sroa.6242.0.copyload, float %i.ci, float %i.da)
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %.sroa.6242.0.copyload, float %i.cj, float %i.db)
  %i.de = insertelement <2 x float> %i.ct, float %.sroa.6242.0.copyload, i64 1
  %i.df = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.dg = insertelement <2 x float> %i.df, float %i.ca, i64 1
  %i.dh = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.dg, <2 x float> %i.dh)
  %i.dj = insertelement <2 x float> %i.g, float %.sroa.23.48.copyload.i164, i64 1
  %i.dk = fadd <2 x float> %i.dj, %i.di           ; 2 uses
  %i.dl = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.dc, i64 1
  %i.dn = fadd <2 x float> %i.bj, %i.dm
  %shift326 = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop327 = fsub <2 x float> %i.dk, %shift326
  %i.do = extractelement <2 x float> %foldExtExtBinop327, i64 0 ; 4 uses
  %i.dp = fsub <2 x float> %i.cx, %i.dn           ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !144 ; 2 uses
  %.not280 = icmp sgt i32 %i.dr, 0
  br i1 %.not280, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.dt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.dv = extractelement <2 x float> %i.dp, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.095282 = phi i32 [ 0, %.lr.ph ], [ %i.gh, %bb.i ] ; 2 uses
  %.099281 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.2101.ph, %bb.i ] ; 2 uses
  %i.dw = load i32, ptr %i.ds, align 4, !tbaa !142
  %i.dx = add nsw i32 %i.dw, %.095282
  %i.dy = load ptr, ptr %i.dt, align 8, !tbaa !68
  %i.dz = sext i32 %i.dx to i64
  %i.ea = getelementptr inbounds [32 x i8], ptr %i.dy, i64 %i.dz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.eb = load float, ptr %i.j, align 4, !tbaa !114 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ed = load <2 x float>, ptr %i.h, align 4, !tbaa !114 ; 4 uses
  %i.ee = load <2 x float>, ptr %i.ea, align 4, !tbaa !114 ; 5 uses
  %i.ef = load <2 x float>, ptr %i.ec, align 4, !tbaa !114 ; 3 uses
  %i.eg = load <2 x float>, ptr %3, align 16, !tbaa !114 ; 2 uses
  %i.eh = fmul <2 x float> %i.eg, %i.ef
  %i.ei = extractelement <2 x float> %i.ee, i64 0
  %shift329 = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop330 = fmul <2 x float> %i.ee, %shift329
  %i.ej = extractelement <2 x float> %foldExtExtBinop330, i64 0
  %i.ek = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.em = shufflevector <2 x float> %i.ef, <2 x float> %i.ee, <2 x i32> <i32 1, i32 2>
  %i.en = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.el, <2 x float> %i.em, <2 x float> %i.eh)
  %i.eo = extractelement <2 x float> %i.ee, i64 1 ; 2 uses
  %i.ep = call float @llvm.fmuladd.f32(float %i.eb, float %i.eo, float %i.ej)
  %i.eq = fneg <2 x float> %i.ed                  ; 4 uses
  %i.er = extractelement <2 x float> %i.eg, i64 0 ; 2 uses
  %i.es = fneg float %i.er                        ; 4 uses
  %i.et = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.ee, <2 x float> %i.en) ; 5 uses
  %i.eu = extractelement <2 x float> %i.ef, i64 1 ; 2 uses
  %i.ev = call float @llvm.fmuladd.f32(float %i.es, float %i.eu, float %i.ep) ; 3 uses
  %i.ew = fneg float %i.eo
  %i.ex = extractelement <2 x float> %i.ed, i64 0
  %i.ey = fmul float %i.ex, %i.ew
  %i.ez = call float @llvm.fmuladd.f32(float %i.es, float %i.ei, float %i.ey)
  %i.fa = extractelement <2 x float> %i.eq, i64 1 ; 2 uses
  %i.fb = call float @llvm.fmuladd.f32(float %i.fa, float %i.eu, float %i.ez) ; 2 uses
  %i.fc = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fd = insertelement <2 x float> %i.fc, float %i.ev, i64 1
  %i.fe = fmul <2 x float> %i.el, %i.fd
  %i.ff = insertelement <2 x float> poison, float %i.fb, i64 0
  %i.fg = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fh = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fi = insertelement <2 x float> %i.fh, float %i.es, i64 0
  %i.fj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fi, <2 x float> %i.fe)
  %i.fk = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> %i.et, <2 x i32> <i32 0, i32 2>
  %i.fm = insertelement <2 x float> %i.fh, float %i.es, i64 1
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fl, <2 x float> %i.fm, <2 x float> %i.fj)
  %i.fo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.et, <2 x float> %i.ed, <2 x float> %i.fn) ; 4 uses
  %i.fp = extractelement <2 x float> %i.et, i64 0
  %i.fq = fmul float %i.eb, %i.fp
  %i.fr = call float @llvm.fmuladd.f32(float %i.fb, float %i.fa, float %i.fq)
  %i.fs = extractelement <2 x float> %i.et, i64 1
  %i.ft = extractelement <2 x float> %i.eq, i64 0
  %i.fu = call float @llvm.fmuladd.f32(float %i.fs, float %i.ft, float %i.fr)
  %i.fv = call float @llvm.fmuladd.f32(float %i.ev, float %i.er, float %i.fu) ; 3 uses
  %.sroa.3.12.vec.insert.i11.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fv, i64 0
  store <2 x float> %i.fo, ptr %17, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i11.i, ptr %i.du, align 8
  %shift332 = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop333 = fmul <2 x float> %i.dp, %shift332
  %i.fw = extractelement <2 x float> %foldExtExtBinop333, i64 0
  %i.fx = extractelement <2 x float> %i.fo, i64 0
  %i.fy = call float @llvm.fmuladd.f32(float %i.do, float %i.fx, float %i.fw)
  %i.fz = call noundef float @llvm.fmuladd.f32(float %i.dv, float %i.fv, float %i.fy)
  %i.ga = fcmp olt float %i.fz, 0.000000e+00
  br i1 %i.ga, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.gb = fneg <2 x float> %i.fo
  store <2 x float> %i.gb, ptr %17, align 16, !tbaa !89
  %i.gc = fneg float %i.fv
  store float %i.gc, ptr %i.du, align 8, !tbaa !89
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.gd = invoke noundef zeroext i1 @_Z13b3TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.gd, label %bb.g, label %.thread253

bb.f:                                             ; preds = %bb.d
  %i.ge = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  %i.gf = load float, ptr %i.a, align 4, !tbaa !114 ; 2 uses
  %i.gg = fcmp olt float %i.gf, %.099281
  br i1 %i.gg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !112
  br label %bb.i

.thread253:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ac

bb.i:                                             ; preds = %bb.g, %bb.h
  %.2101.ph = phi float [ %.099281, %bb.g ], [ %i.gf, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.gh = add nuw nsw i32 %.095282, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gh, %i.dr
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.099.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %.2101.ph, %bb.i ] ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !144 ; 2 uses
  %.not150283 = icmp sgt i32 %i.gj, 0
  br i1 %.not150283, label %.lr.ph287, label %.preheader

.lr.ph287:                                        ; preds = %._crit_edge
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.gn = extractelement <2 x float> %i.dp, i64 1
  br label %bb.j

.preheader:                                       ; preds = %bb.q, %._crit_edge
  %.4103.lcssa = phi float [ %.099.lcssa, %._crit_edge ], [ %.6105.ph, %bb.q ]
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !136 ; 2 uses
  %.not156.not298 = icmp sgt i32 %i.gp, 0
  br i1 %.not156.not298, label %.lr.ph302, label %._crit_edge303

.lr.ph302:                                        ; preds = %.preheader
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.gu = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.gs, align 8, !tbaa !136 ; 2 uses
  %i.gw = extractelement <2 x float> %i.dp, i64 1
  br label %bb.r

bb.j:                                             ; preds = %.lr.ph287, %bb.q
  %.091285 = phi i32 [ 0, %.lr.ph287 ], [ %i.jh, %bb.q ] ; 2 uses
  %.4103284 = phi float [ %.099.lcssa, %.lr.ph287 ], [ %.6105.ph, %bb.q ] ; 2 uses
  %i.gx = load i32, ptr %i.gk, align 4, !tbaa !142
  %i.gy = add nsw i32 %i.gx, %.091285
  %i.gz = load ptr, ptr %i.gl, align 8, !tbaa !68
  %i.ha = sext i32 %i.gy to i64
  %i.hb = getelementptr inbounds [32 x i8], ptr %i.gz, i64 %i.ha ; 2 uses
end_hunk_0
begin_hunk_1_@_Z13b3TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf:bb.a
.lr.ph.i22:                                       ; preds = %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.dv = load i32, ptr %i.du, align 16, !tbaa !161
  %i.dw = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !54
  %i.dy = sext i32 %i.dv to i64
  %wide.trip.count.i23 = zext nneg i32 %i.bw to i64
  %invariant.gep.i24 = getelementptr [16 x i8], ptr %i.dx, i64 %i.dy
  br label %bb.d

._crit_edge.i20:                                  ; preds = %bb.d
  %i.dz = fcmp ogt float %.243, %.2
  br i1 %i.dz, label %bb.e, label %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30

bb.d:                                             ; preds = %bb.d, %.lr.ph.i22
  %.142 = phi float [ f0x7F7FFFFF, %.lr.ph.i22 ], [ %.243, %bb.d ] ; 2 uses
  %.1 = phi float [ f0xFF7FFFFF, %.lr.ph.i22 ], [ %.2, %bb.d ] ; 2 uses
  %indvars.iv.i25 = phi i64 [ 0, %.lr.ph.i22 ], [ %indvars.iv.next.i27, %bb.d ] ; 2 uses
  %gep.i26 = getelementptr [16 x i8], ptr %invariant.gep.i24, i64 %indvars.iv.i25 ; 3 uses
  %i.ea = load float, ptr %gep.i26, align 16, !tbaa !89
  %i.eb = getelementptr inbounds nuw i8, ptr %gep.i26, i64 4
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !89
  %i.ed = fmul float %i.dj, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.df, float %i.ed)
  %i.ef = getelementptr inbounds nuw i8, ptr %gep.i26, i64 8
  %i.eg = load float, ptr %i.ef, align 8, !tbaa !89
  %i.eh = tail call noundef float @llvm.fmuladd.f32(float %i.eg, float %i.dn, float %i.ee) ; 4 uses
  %i.ei = fcmp olt float %i.eh, %.142
  %.243 = select i1 %i.ei, float %i.eh, float %.142 ; 4 uses
  %i.ej = fcmp ogt float %i.eh, %.1
  %.2 = select i1 %i.ej, float %i.eh, float %.1   ; 4 uses
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i28 = icmp eq i64 %indvars.iv.next.i27, %wide.trip.count.i23
  br i1 %exitcond.not.i28, label %._crit_edge.i20, label %bb.d, !llvm.loop !183

bb.e:                                             ; preds = %._crit_edge.i20
  br label %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30

_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30: ; preds = %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit, %._crit_edge.i20, %bb.e
  %.3 = phi float [ %.2, %._crit_edge.i20 ], [ %.243, %bb.e ], [ f0x7F7FFFFF, %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit ]
  %i.ek = phi float [ %.243, %._crit_edge.i20 ], [ %.2, %bb.e ], [ f0xFF7FFFFF, %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit ]
  %i.el = fmul float %i.m, %i.dq
  %i.em = tail call float @llvm.fmuladd.f32(float %i.do, float %i.k, float %i.el)
  %i.en = tail call noundef float @llvm.fmuladd.f32(float %i.ds, float %i.l, float %i.em) ; 2 uses
  %i.eo = fadd float %i.en, %i.ek                 ; 2 uses
  %i.ep = fadd float %i.en, %.3                   ; 2 uses
  %i.eq = fcmp uge float %i.cs, %i.eo
  %i.er = fcmp uge float %i.ep, %i.cr
  %or.cond.not = select i1 %i.eq, i1 %i.er, i1 false ; 2 uses
  br i1 %or.cond.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30
  %i.es = fsub float %i.cs, %i.eo                 ; 2 uses
  %i.et = fsub float %i.ep, %i.cr                 ; 2 uses
  %i.eu = fcmp olt float %i.es, %i.et
  %i.ev = select i1 %i.eu, float %i.es, float %i.et
  store float %i.ev, ptr %9, align 4, !tbaa !114
  br label %bb.g

bb.g:                                             ; preds = %_Z13b3ProjectAxisRK22b3ConvexPolyhedronDataRK9b3Vector3RK12b3QuaternionS4_RK20b3AlignedObjectArrayIS2_ERfSC_.exit30, %bb.f
  ret i1 %or.cond.not
}

declare void @b3EnterProfileZone(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

declare void @b3LeaveProfileZone() local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z21b3ClipHullAgainstHullRK9b3Vector3RK22b3ConvexPolyhedronDataS4_S1_RK12b3QuaternionS1_S7_PS_S8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiESC_SG_SJ_S8_i(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(96) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, float noundef %10, float noundef %11, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef nonnull align 8 dereferenceable(25) %15, ptr noundef nonnull align 8 dereferenceable(25) %16, ptr noundef nonnull align 8 dereferenceable(25) %17, ptr noundef %18, i32 noundef %19) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.8)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !144  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !142  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !68   ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !114 ; 4 uses
  %i.j = load float, ptr %6, align 16, !tbaa !114 ; 2 uses
  %i.k = load <3 x float>, ptr %6, align 16, !tbaa !114 ; 3 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.m = extractelement <3 x float> %i.k, i64 2   ; 2 uses
  %i.n = fneg float %i.m                          ; 4 uses
  %i.o = fneg float %i.j                          ; 4 uses
  %i.p = extractelement <3 x float> %i.k, i64 1   ; 2 uses
  %i.q = fneg float %i.p                          ; 3 uses
  %i.r = load float, ptr %0, align 16, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load float, ptr %i.u, align 8, !tbaa !89
  %i.w = sext i32 %i.e to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  %invariant.gep = getelementptr [32 x i8], ptr %i.g, i64 %i.w
  %i.x = insertelement <4 x float> poison, float %i.i, i64 0
  %i.y = insertelement <4 x float> %i.x, float %i.o, i64 1
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.058.lcssa = phi i32 [ -1, %bb.a ], [ %.159, %bb.b ] ; 2 uses
  store i8 0, ptr @_ZZ21b3ClipHullAgainstHullRK9b3Vector3RK22b3ConvexPolyhedronDataS4_S1_RK12b3QuaternionS1_S7_PS_S8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiESC_SG_SJ_S8_iE4once, align 1, !tbaa !184
  %i.aa = add nsw i32 %i.e, %.058.lcssa
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [32 x i8], ptr %i.g, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !150 ; 3 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph74, label %._crit_edge75

.lr.ph74:                                         ; preds = %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 16
  %.sroa.26.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 12
  %wide.trip.count83 = zext nneg i32 %i.ae to i64
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.05769 = phi float [ f0xFF7FFFFF, %.lr.ph ], [ %.1, %bb.b ] ; 2 uses
  %.05868 = phi i32 [ -1, %.lr.ph ], [ %.159, %bb.b ]
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.an = load <3 x float>, ptr %gep, align 16, !tbaa !89 ; 4 uses
  %i.ao = shufflevector <3 x float> %i.an, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 0> ; 2 uses
  %i.ap = load float, ptr %gep, align 16, !tbaa !89
  %i.aq = extractelement <3 x float> %i.an, i64 1
  %i.ar = shufflevector <3 x float> %i.an, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %i.as = fneg <4 x float> %i.ao
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.au = fmul <4 x float> %i.l, %i.at
  %i.av = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.z, <4 x float> %i.ao, <4 x float> %i.au) ; 4 uses
  %i.aw = extractelement <4 x float> %i.av, i64 2
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.n, float %i.aq, float %i.aw) ; 3 uses
  %i.ay = extractelement <4 x float> %i.av, i64 0
  %i.az = extractelement <3 x float> %i.an, i64 2 ; 2 uses
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.o, float %i.az, float %i.ay) ; 3 uses
  %i.bb = extractelement <4 x float> %i.av, i64 1
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.q, float %i.ap, float %i.bb) ; 3 uses
  %i.bd = extractelement <4 x float> %i.av, i64 3
  %i.be = tail call float @llvm.fmuladd.f32(float %i.n, float %i.az, float %i.bd) ; 3 uses
  %i.bf = fmul float %i.i, %i.ax
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.be, float %i.o, float %i.bf)
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.n, float %i.bg)
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.p, float %i.bh)
  %i.bj = fmul float %i.i, %i.ba
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.be, float %i.q, float %i.bj)
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.o, float %i.bk)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.m, float %i.bl)
  %i.bn = fmul float %i.i, %i.bc
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.be, float %i.n, float %i.bn)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.q, float %i.bo)
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.ba, float %i.j, float %i.bp)
  %i.br = fmul float %i.t, %i.bm
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.r, float %i.br)
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.v, float %i.bs) ; 2 uses
  %i.bu = fcmp ogt float %i.bt, %.05769           ; 2 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %.159 = select i1 %i.bu, i32 %i.bv, i32 %.05868 ; 2 uses
  %.1 = select i1 %i.bu, float %i.bt, float %.05769
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !185

._crit_edge75:                                    ; preds = %bb.c, %._crit_edge
  %.060.lcssa = phi i32 [ 0, %._crit_edge ], [ %i.ae, %bb.c ]
  %i.bw = icmp sgt i32 %.058.lcssa, -1
  br i1 %i.bw, label %bb.d, label %bb.f

bb.c:                                             ; preds = %.lr.ph74, %bb.c
  %indvars.iv78 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next79, %bb.c ] ; 3 uses
  %indvars80 = trunc i64 %indvars.iv78 to i32
  %i.bx = load i32, ptr %i.ag, align 16, !tbaa !161
  %i.by = load i32, ptr %i.ah, align 16, !tbaa !152
  %i.bz = add nsw i32 %i.by, %indvars80
  %i.ca = load ptr, ptr %i.ai, align 8, !tbaa !61
  %i.cb = sext i32 %i.bz to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !40
  %i.ce = add nsw i32 %i.cd, %i.bx
  %i.cf = load ptr, ptr %i.aj, align 8, !tbaa !54
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr inbounds [16 x i8], ptr %i.cf, i64 %i.cg ; 3 uses
  %.sroa.26.48.copyload.i = load float, ptr %.sroa.26.48..sroa_idx.i, align 8
  %i.ci = load float, ptr %i.am, align 4, !tbaa !89 ; 5 uses
  %20 = load float, ptr %i.ch, align 16, !tbaa !89 ; 2 uses
  %21 = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %22 = load float, ptr %21, align 4, !tbaa !89   ; 2 uses
  %23 = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %24 = load float, ptr %23, align 8, !tbaa !89   ; 2 uses
  %i.cj = load <2 x float>, ptr %5, align 16
  %i.ck = load float, ptr %6, align 16, !tbaa !89 ; 6 uses
  %i.cl = load float, ptr %i.al, align 8, !tbaa !89 ; 4 uses
  %i.cm = load float, ptr %i.ak, align 4, !tbaa !89 ; 5 uses
  %i.cn = fmul float %i.cm, %i.cm
  %i.co = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.co)
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.cp)
  %i.cr = fdiv float 2.000000e+00, %i.cq          ; 3 uses
  %i.cs = fmul float %i.ck, %i.cr                 ; 2 uses
  %i.ct = fmul float %i.cm, %i.cr                 ; 3 uses
  %i.cu = fmul float %i.ci, %i.cs                 ; 2 uses
  %i.cv = fmul float %i.ci, %i.ct                 ; 2 uses
  %i.cw = fmul float %i.ck, %i.cs                 ; 2 uses
  %i.cx = fmul float %i.ck, %i.ct                 ; 2 uses
  %i.cy = fmul float %i.cl, %i.cr                 ; 4 uses
  %i.cz = fmul float %i.cm, %i.ct                 ; 2 uses
  %i.da = fmul float %i.cm, %i.cy                 ; 2 uses
  %i.db = fmul float %i.ck, %i.cy                 ; 2 uses
  %i.dc = fmul float %i.cl, %i.cy                 ; 2 uses
  %i.dd = fmul float %i.ci, %i.cy                 ; 2 uses
  %i.de = fadd float %i.cz, %i.dc
  %i.df = fadd float %i.cx, %i.dd
  %i.dg = fsub float 1.000000e+00, %i.de
  %i.dh = fadd float %i.cw, %i.dc
  %i.di = fsub float 1.000000e+00, %i.dh
  %i.dj = fsub float %i.cx, %i.dd
  %i.dk = fsub float %i.da, %i.cu
  %i.dl = fadd float %i.db, %i.cv
  %i.dm = fsub float %i.db, %i.cv
  %i.dn = fadd float %i.da, %i.cu
  %i.do = fadd float %i.cw, %i.cz
  %i.dp = fsub float 1.000000e+00, %i.do
  %25 = insertelement <2 x float> poison, float %22, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %27 = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dq = insertelement <2 x float> %27, float %i.di, i64 1
  %28 = fmul <2 x float> %26, %i.dq
  %29 = insertelement <2 x float> poison, float %20, i64 0
  %i.dr = shufflevector <2 x float> %29, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dt = insertelement <2 x float> %i.ds, float %i.df, i64 1
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.dt, <2 x float> %28)
  %30 = insertelement <2 x float> poison, float %24, i64 0
  %31 = shufflevector <2 x float> %30, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = insertelement <2 x float> poison, float %i.dl, i64 0
  %32 = insertelement <2 x float> %i.dv, float %i.dk, i64 1
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %32, <2 x float> %i.du)
  %i.dw = fmul float %22, %i.dn
  %i.dx = tail call float @llvm.fmuladd.f32(float %20, float %i.dm, float %i.dw)
  %i.dy = tail call noundef float @llvm.fmuladd.f32(float %24, float %i.dp, float %i.dx)
  %i.dz = fadd <2 x float> %i.cj, %33
  %i.ea = fadd float %.sroa.26.48.copyload.i, %i.dy
  %.sroa.3.12.vec.insert.i.i4.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ea, i64 0
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %indvars.iv78 ; 2 uses
  store <2 x float> %i.dz, ptr %i.eb, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i4.i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !89
  %exitcond84.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count83
  br i1 %exitcond84.not, label %._crit_edge75, label %bb.c, !llvm.loop !186

bb.d:                                             ; preds = %._crit_edge75
  %i.ec = invoke noundef i32 @_Z21b3ClipFaceAgainstHullRK9b3Vector3PK22b3ConvexPolyhedronDataS1_RK12b3QuaternionPS_iS8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiES8_i(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef %7, i32 noundef %.060.lcssa, ptr noundef %8, i32 noundef %9, float noundef %10, float noundef %11, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef %18, i32 noundef %19)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit64 unwind label %bb.h

bb.f:                                             ; preds = %bb.d, %._crit_edge75
  %.061 = phi i32 [ 0, %._crit_edge75 ], [ %i.ec, %bb.d ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  tail call void @__clang_call_terminate(ptr %i.ef) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.f
  ret i32 %.061

bb.h:                                             ; preds = %bb.e
  %i.eg = landingpad { ptr, i32 }
          catch ptr null
  %i.eh = extractvalue { ptr, i32 } %i.eg, 0
  tail call void @__clang_call_terminate(ptr %i.eh) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit64:                    ; preds = %bb.e
  resume { ptr, i32 } %i.ed
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z16b3ReduceContactsPK9b3Vector3iRS0_P6b3Int4(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef %3) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 5
  br i1 %i.b, label %bb.s, label %.new

.new:                                             ; preds = %bb.b
  %i.c = tail call i32 @llvm.umin.i32(i32 %1, i32 64) ; 3 uses
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 126
  br label %bb.d

.unr-lcssa:                                       ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.c, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod208 = trunc i32 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod208)
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.next.1 ; 2 uses
  %i.e = load <2 x float>, ptr %i.d, align 16, !tbaa !89
  %i.f = fadd <2 x float> %i.cl, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load float, ptr %i.g, align 8, !tbaa !89
  %.sroa.15.8.vec.extract171.epil = extractelement <2 x float> %.sroa.15.8.vec.insert173.1, i64 0
  %i.i = fadd float %.sroa.15.8.vec.extract171.epil, %i.h
  br label %bb.c

bb.c:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa205 = phi <2 x float> [ %i.cl, %.unr-lcssa ], [ %i.f, %.epil.preheader ] ; 2 uses
  %.lcssa = phi float [ %i.co, %.unr-lcssa ], [ %i.i, %.epil.preheader ] ; 2 uses
  %i.j = uitofp nneg i32 %i.c to float
  %i.k = fdiv float 1.000000e+00, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load float, ptr %2, align 16, !tbaa !89  ; 2 uses
  %i.o = insertelement <2 x float> poison, float %i.k, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.q = shufflevector <2 x float> %.lcssa205, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.r = insertelement <2 x float> %i.q, float %.lcssa, i64 0
  %i.s = fmul <2 x float> %i.p, %i.r              ; 3 uses
  %i.t = fmul <2 x float> %i.p, %.lcssa205
  %i.u = insertelement <2 x float> %i.q, float %.lcssa, i64 1
  %i.v = fmul <2 x float> %i.p, %i.u              ; 2 uses
  %i.w = load <2 x float>, ptr %i.l, align 4, !tbaa !89 ; 2 uses
  %i.x = load <2 x float>, ptr %0, align 16, !tbaa !89 ; 2 uses
  %i.y = load <2 x float>, ptr %i.m, align 4, !tbaa !89 ; 6 uses
  %i.z = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 1, i32 2>
  %i.aa = fsub <2 x float> %i.z, %i.s
  %i.ab = fsub <2 x float> %i.w, %i.v             ; 2 uses
  %i.ac = fsub <2 x float> %i.x, %i.t
  %i.ad = fneg <2 x float> %i.ab
  %i.ae = fneg <2 x float> %i.ac
  %i.af = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ag = insertelement <2 x float> %i.af, float %i.n, i64 1 ; 2 uses
  %i.ah = fmul <2 x float> %i.ag, %i.ad
  %i.ai = fmul <2 x float> %i.y, %i.ae
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.y, <2 x float> %i.aa, <2 x float> %i.ah) ; 5 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1 ; 2 uses
  %i.al = fneg float %i.ak
  %i.am = extractelement <2 x float> %i.y, i64 1
  %i.an = fmul float %i.am, %i.al
  %i.ao = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> %i.y, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ab, <2 x float> %i.ai) ; 4 uses
  %i.ar = extractelement <2 x float> %i.y, i64 0
  %i.as = extractelement <2 x float> %i.aq, i64 0
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.as, float %i.an) ; 2 uses
  %i.au = fneg <2 x float> %i.aq
  %i.av = fmul <2 x float> %i.ap, %i.au
  %i.aw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.aj, <2 x float> %i.av) ; 3 uses
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> %i.aj, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.ay = fmul <2 x float> %i.ax, %i.ax
  %i.az = insertelement <2 x float> %i.aj, float %i.at, i64 1 ; 2 uses
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.az, <2 x float> %i.ay)
  %i.bb = shufflevector <2 x float> %i.aq, <2 x float> %i.aw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.bb, <2 x float> %i.ba)
  %i.bd = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.bc)
  %i.be = fdiv <2 x float> splat (float 1.000000e+00), %i.bd ; 5 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.aj, %i.be
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bh = fmul float %i.ak, %i.bf                 ; 2 uses
  %foldExtExtBinop203 = fmul <2 x float> %i.aq, %i.be
  %i.bi = extractelement <2 x float> %foldExtExtBinop203, i64 0 ; 2 uses
  %i.bj = extractelement <2 x float> %i.be, i64 1
  %i.bk = fmul float %i.at, %i.bj                 ; 2 uses
  %i.bl = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bm = fmul <2 x float> %i.aw, %i.bl           ; 3 uses
  %i.bn = fneg float %i.bg
  %i.bo = fneg float %i.bh
  %i.bp = fneg float %i.bi
  %i.bq = fneg float %i.bk
  %i.br = fneg <2 x float> %i.bm                  ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bv = extractelement <2 x float> %i.br, i64 0
  %i.bw = extractelement <2 x float> %i.br, i64 1
  %i.bx = extractelement <2 x float> %i.bm, i64 0
  %i.by = extractelement <2 x float> %i.bm, i64 1
  %i.bz = extractelement <2 x float> %i.s, i64 0
  %i.ca = extractelement <2 x float> %i.s, i64 1
  %i.cb = extractelement <2 x float> %i.v, i64 0
  br label %bb.f

bb.d:                                             ; preds = %bb.d, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %.sroa.15.0177 = phi <2 x float> [ zeroinitializer, %.new ], [ %.sroa.15.8.vec.insert173.1, %bb.d ] ; 2 uses
  %.sroa.0148.0176 = phi <2 x float> [ zeroinitializer, %.new ], [ %i.cl, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.d ]
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cd = load <2 x float>, ptr %i.cc, align 16, !tbaa !89
  %i.ce = fadd <2 x float> %.sroa.0148.0176, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !89
  %.sroa.15.8.vec.extract171 = extractelement <2 x float> %.sroa.15.0177, i64 0
  %i.ch = fadd float %.sroa.15.8.vec.extract171, %i.cg
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load <2 x float>, ptr %i.cj, align 16, !tbaa !89
  %i.cl = fadd <2 x float> %i.ce, %i.ck           ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !89
  %i.co = fadd float %i.ch, %i.cn                 ; 2 uses
  %.sroa.15.8.vec.insert173.1 = insertelement <2 x float> %.sroa.15.0177, float %i.co, i64 0 ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.d, !llvm.loop !187

bb.e:                                             ; preds = %bb.n
  %i.cp = load i32, ptr %3, align 16, !tbaa !89
  %.not = icmp eq i32 %i.cp, %.1
  br i1 %.not, label %bb.s, label %bb.o

bb.f:                                             ; preds = %bb.c, %bb.n
  %indvars.iv189 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next190, %bb.n ] ; 3 uses
  %.sroa.0.0184 = phi float [ f0x00800000, %bb.c ], [ %.sroa.0.1, %bb.n ] ; 2 uses
  %.sroa.5.0183 = phi float [ f0x00800000, %bb.c ], [ %.sroa.5.1, %bb.n ] ; 2 uses
  %.sroa.8.0182 = phi float [ f0x00800000, %bb.c ], [ %.sroa.8.1, %bb.n ] ; 2 uses
  %.sroa.11.0181 = phi float [ f0x00800000, %bb.c ], [ %.sroa.11.1, %bb.n ] ; 2 uses
  %.053180 = phi i32 [ -1, %bb.c ], [ %.1, %bb.n ]
  %.054179 = phi float [ f0x7F7FFFFF, %bb.c ], [ %.155, %bb.n ] ; 2 uses
  %i.cq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv189 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !89 ; 2 uses
  %i.ct = fcmp olt float %i.cs, %.054179          ; 2 uses
  %.155 = select i1 %i.ct, float %i.cs, float %.054179
end_hunk_1
