Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3CpuNarrowPhase?download=true
inline.NumInlined: 585
inline.NumDeleted: 221
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN16b3CpuNarrowPhase23registerConvexHullShapeEPKfiiS1_:bb.a
_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.thread: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i
  %.0.i.i52 = phi i32 [ %.0.i.i, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i ], [ %i.y, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ]
  %.0.i12.i.i50 = phi ptr [ %.0.i12.i.i, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i ], [ %i.ac, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  %.pre.i48 = phi i32 [ %.pre.i, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i ], [ %i.l, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa ], [ %i.l, %.epil.preheader ]
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.k)
          to label %_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i unwind label %bb.g

_ZN20b3AlignedObjectArrayI9b3Vector3E10deallocateEv.exit.i.i: ; preds = %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.thread, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i
  %.0.i.i53 = phi i32 [ %.0.i.i52, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i.thread ], [ %.0.i.i, %_ZNK20b3AlignedObjectArrayI9b3Vector3E4copyEiiPS0_.exit.i.i ] ; 2 uses
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
  %i.al = shufflevector <2 x float> %i.n, <2 x float> %i.p, <4 x i32> <i32 0, i32 2, i32 poison, i32 2>
  %i.am = insertelement <4 x float> %i.al, float %i.o, i64 2
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
  %i.ax = shufflevector <4 x float> %i.ao, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.ay = fmul <4 x float> %i.aw, %i.ax           ; 3 uses
  %i.az = fadd <4 x float> %i.as, %i.ay           ; 3 uses
  %i.ba = shufflevector <4 x float> %i.as, <4 x float> <float poison, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x i32> <i32 3, i32 5, i32 6, i32 2>
  %i.bb = shufflevector <4 x float> %i.ay, <4 x float> %i.az, <4 x i32> <i32 3, i32 5, i32 4, i32 2>
  %i.bc = fsub <4 x float> %i.ba, %i.bb           ; 2 uses
  %i.bd = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.be = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %i.bf = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.bg = shufflevector <4 x float> %i.bc, <4 x float> %i.az, <4 x i32> <i32 1, i32 6, i32 0, i32 poison>
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
  %20 = insertelement <2 x float> poison, float %.sroa.6248.0.copyload, i64 0 ; 2 uses
  %i.ct = shufflevector <2 x float> %20, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.cv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.bq, <2 x float> %i.cu)
  %i.cw = fadd <2 x float> %i.bi, %i.cv
  %i.cx = fmul float %.sroa.5241.0.copyload, %i.cg
  %i.cy = fmul float %.sroa.5241.0.copyload, %i.ch
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.cc, float %i.cx)
  %i.da = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.cd, float %i.cy)
  %i.db = tail call noundef float @llvm.fmuladd.f32(float %.sroa.6242.0.copyload, float %i.ci, float %i.cz)
  %i.dc = tail call noundef float @llvm.fmuladd.f32(float %.sroa.6242.0.copyload, float %i.cj, float %i.da)
  %i.dd = insertelement <2 x float> %20, float %.sroa.6242.0.copyload, i64 1
  %i.de = shufflevector <4 x float> %i.az, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.df = insertelement <2 x float> %i.de, float %i.ca, i64 1
  %i.dg = shufflevector <4 x float> %i.cs, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.dh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.df, <2 x float> %i.dg)
  %i.di = insertelement <2 x float> %i.g, float %.sroa.23.48.copyload.i164, i64 1
  %i.dj = fadd <2 x float> %i.di, %i.dh           ; 2 uses
  %i.dk = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.db, i64 1
  %i.dm = fadd <2 x float> %i.bj, %i.dl
  %shift326 = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop327 = fsub <2 x float> %i.dj, %shift326
  %i.dn = extractelement <2 x float> %foldExtExtBinop327, i64 0 ; 4 uses
  %i.do = fsub <2 x float> %i.cw, %i.dm           ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !144 ; 2 uses
  %.not280 = icmp sgt i32 %i.dq, 0
  br i1 %.not280, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.ds = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.du = extractelement <2 x float> %i.do, i64 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.095282 = phi i32 [ 0, %.lr.ph ], [ %i.gg, %bb.i ] ; 2 uses
  %.099281 = phi float [ f0x7F7FFFFF, %.lr.ph ], [ %.2101.ph, %bb.i ] ; 2 uses
  %i.dv = load i32, ptr %i.dr, align 4, !tbaa !142
  %i.dw = add nsw i32 %i.dv, %.095282
  %i.dx = load ptr, ptr %i.ds, align 8, !tbaa !68
  %i.dy = sext i32 %i.dw to i64
  %i.dz = getelementptr inbounds [32 x i8], ptr %i.dx, i64 %i.dy ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #19
  %i.ea = load float, ptr %i.j, align 4, !tbaa !114 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ec = load <2 x float>, ptr %i.h, align 4, !tbaa !114 ; 4 uses
  %i.ed = load <2 x float>, ptr %i.dz, align 4, !tbaa !114 ; 5 uses
  %i.ee = load <2 x float>, ptr %i.eb, align 4, !tbaa !114 ; 3 uses
  %i.ef = load <2 x float>, ptr %3, align 16, !tbaa !114 ; 2 uses
  %i.eg = fmul <2 x float> %i.ef, %i.ee
  %i.eh = extractelement <2 x float> %i.ed, i64 0
  %shift329 = shufflevector <2 x float> %i.ec, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop330 = fmul <2 x float> %i.ed, %shift329
  %i.ei = extractelement <2 x float> %foldExtExtBinop330, i64 0
  %i.ej = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.el = shufflevector <2 x float> %i.ee, <2 x float> %i.ed, <2 x i32> <i32 1, i32 2>
  %i.em = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.eg)
  %i.en = extractelement <2 x float> %i.ed, i64 1 ; 2 uses
  %i.eo = call float @llvm.fmuladd.f32(float %i.ea, float %i.en, float %i.ei)
  %i.ep = fneg <2 x float> %i.ec                  ; 4 uses
  %i.eq = extractelement <2 x float> %i.ef, i64 0 ; 2 uses
  %i.er = fneg float %i.eq                        ; 4 uses
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.ed, <2 x float> %i.em) ; 5 uses
  %i.et = extractelement <2 x float> %i.ee, i64 1 ; 2 uses
  %i.eu = call float @llvm.fmuladd.f32(float %i.er, float %i.et, float %i.eo) ; 3 uses
  %i.ev = fneg float %i.en
  %i.ew = extractelement <2 x float> %i.ec, i64 0
  %i.ex = fmul float %i.ew, %i.ev
  %i.ey = call float @llvm.fmuladd.f32(float %i.er, float %i.eh, float %i.ex)
  %i.ez = extractelement <2 x float> %i.ep, i64 1 ; 2 uses
  %i.fa = call float @llvm.fmuladd.f32(float %i.ez, float %i.et, float %i.ey) ; 2 uses
  %i.fb = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fc = insertelement <2 x float> %i.fb, float %i.eu, i64 1
  %i.fd = fmul <2 x float> %i.ek, %i.fc
  %i.fe = insertelement <2 x float> poison, float %i.fa, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.fh = insertelement <2 x float> %i.fg, float %i.er, i64 0
  %i.fi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.fh, <2 x float> %i.fd)
  %i.fj = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> %i.es, <2 x i32> <i32 0, i32 2>
  %i.fl = insertelement <2 x float> %i.fg, float %i.er, i64 1
  %i.fm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fk, <2 x float> %i.fl, <2 x float> %i.fi)
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.es, <2 x float> %i.ec, <2 x float> %i.fm) ; 4 uses
  %i.fo = extractelement <2 x float> %i.es, i64 0
  %i.fp = fmul float %i.ea, %i.fo
  %i.fq = call float @llvm.fmuladd.f32(float %i.fa, float %i.ez, float %i.fp)
  %i.fr = extractelement <2 x float> %i.es, i64 1
  %i.fs = extractelement <2 x float> %i.ep, i64 0
  %i.ft = call float @llvm.fmuladd.f32(float %i.fr, float %i.fs, float %i.fq)
  %i.fu = call float @llvm.fmuladd.f32(float %i.eu, float %i.eq, float %i.ft) ; 3 uses
  %.sroa.3.12.vec.insert.i11.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fu, i64 0
  store <2 x float> %i.fn, ptr %17, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i11.i, ptr %i.dt, align 8
  %shift332 = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop333 = fmul <2 x float> %i.do, %shift332
  %i.fv = extractelement <2 x float> %foldExtExtBinop333, i64 0
  %i.fw = extractelement <2 x float> %i.fn, i64 0
  %i.fx = call float @llvm.fmuladd.f32(float %i.dn, float %i.fw, float %i.fv)
  %i.fy = call noundef float @llvm.fmuladd.f32(float %i.du, float %i.fu, float %i.fx)
  %i.fz = fcmp olt float %i.fy, 0.000000e+00
  br i1 %i.fz, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ga = fneg <2 x float> %i.fn
  store <2 x float> %i.ga, ptr %17, align 16, !tbaa !89
  %i.gb = fneg float %i.fu
  store float %i.gb, ptr %i.dt, align 8, !tbaa !89
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.gc = invoke noundef zeroext i1 @_Z13b3TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %17, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.gc, label %bb.g, label %.thread253

bb.f:                                             ; preds = %bb.d
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ag

bb.g:                                             ; preds = %bb.e
  %i.ge = load float, ptr %i.a, align 4, !tbaa !114 ; 2 uses
  %i.gf = fcmp olt float %i.ge, %.099281
  br i1 %i.gf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %17, i64 16, i1 false), !tbaa.struct !112
  br label %bb.i

.thread253:                                       ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  br label %bb.ae

bb.i:                                             ; preds = %bb.g, %bb.h
  %.2101.ph = phi float [ %.099281, %bb.g ], [ %i.ge, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #19
  %i.gg = add nuw nsw i32 %.095282, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.gg, %i.dq
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !171

._crit_edge:                                      ; preds = %bb.i, %bb.a
  %.099.lcssa = phi float [ f0x7F7FFFFF, %bb.a ], [ %.2101.ph, %bb.i ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !144 ; 2 uses
  %.not150283 = icmp sgt i32 %i.gi, 0
  br i1 %.not150283, label %.lr.ph287, label %.preheader

.lr.ph287:                                        ; preds = %._crit_edge
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.gm = extractelement <2 x float> %i.do, i64 1
  br label %bb.j

.preheader:                                       ; preds = %bb.q, %._crit_edge
  %.4103.lcssa = phi float [ %.099.lcssa, %._crit_edge ], [ %.6105.ph, %bb.q ]
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 8, !tbaa !136 ; 2 uses
  %.not156.not298 = icmp sgt i32 %i.go, 0
  br i1 %.not156.not298, label %.lr.ph302, label %._crit_edge303

.lr.ph302:                                        ; preds = %.preheader
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.gu = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %.pre = load i32, ptr %i.gr, align 8, !tbaa !136 ; 2 uses
  %i.gv = extractelement <2 x float> %i.do, i64 1
  br label %bb.r

bb.j:                                             ; preds = %.lr.ph287, %bb.q
  %.091285 = phi i32 [ 0, %.lr.ph287 ], [ %i.jg, %bb.q ] ; 2 uses
  %.4103284 = phi float [ %.099.lcssa, %.lr.ph287 ], [ %.6105.ph, %bb.q ] ; 2 uses
  %i.gw = load i32, ptr %i.gj, align 4, !tbaa !142
  %i.gx = add nsw i32 %i.gw, %.091285
  %i.gy = load ptr, ptr %i.gk, align 8, !tbaa !68
  %i.gz = sext i32 %i.gx to i64
  %i.ha = getelementptr inbounds [32 x i8], ptr %i.gy, i64 %i.gz ; 2 uses
  %.sroa.5213.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hb = load <2 x float>, ptr %i.ha, align 16   ; 5 uses
  %i.hc = load <2 x float>, ptr %.sroa.5213.0..sroa_idx, align 4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  %i.hd = load float, ptr %i.m, align 4, !tbaa !114 ; 3 uses
  %i.he = load <2 x float>, ptr %i.k, align 4, !tbaa !114 ; 4 uses
  %i.hf = load <2 x float>, ptr %5, align 16, !tbaa !114 ; 2 uses
  %i.hg = fmul <2 x float> %i.hc, %i.hf
  %i.hh = extractelement <2 x float> %i.hb, i64 0
  %shift335 = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop336 = fmul <2 x float> %i.hb, %shift335
  %i.hi = extractelement <2 x float> %foldExtExtBinop336, i64 0
  %i.hj = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.hl = shufflevector <2 x float> %i.hc, <2 x float> %i.hb, <2 x i32> <i32 1, i32 2>
  %i.hm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hk, <2 x float> %i.hl, <2 x float> %i.hg)
  %i.hn = extractelement <2 x float> %i.hb, i64 1 ; 2 uses
  %i.ho = call float @llvm.fmuladd.f32(float %i.hd, float %i.hn, float %i.hi)
  %i.hp = fneg <2 x float> %i.he                  ; 4 uses
  %i.hq = extractelement <2 x float> %i.hf, i64 0 ; 2 uses
  %i.hr = fneg float %i.hq                        ; 4 uses
  %i.hs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hp, <2 x float> %i.hb, <2 x float> %i.hm) ; 5 uses
  %i.ht = extractelement <2 x float> %i.hc, i64 1 ; 2 uses
  %i.hu = call float @llvm.fmuladd.f32(float %i.hr, float %i.ht, float %i.ho) ; 3 uses
  %i.hv = fneg float %i.hn
  %i.hw = extractelement <2 x float> %i.he, i64 0
  %i.hx = fmul float %i.hw, %i.hv
  %i.hy = call float @llvm.fmuladd.f32(float %i.hr, float %i.hh, float %i.hx)
  %i.hz = extractelement <2 x float> %i.hp, i64 1 ; 2 uses
  %i.ia = call float @llvm.fmuladd.f32(float %i.hz, float %i.ht, float %i.hy) ; 2 uses
  %i.ib = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ic = insertelement <2 x float> %i.ib, float %i.hu, i64 1
  %i.id = fmul <2 x float> %i.hk, %i.ic
  %i.ie = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = shufflevector <2 x float> %i.hp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ih = insertelement <2 x float> %i.ig, float %i.hr, i64 0
  %i.ii = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.ih, <2 x float> %i.id)
  %i.ij = insertelement <2 x float> poison, float %i.hu, i64 0
  %i.ik = shufflevector <2 x float> %i.ij, <2 x float> %i.hs, <2 x i32> <i32 0, i32 2>
  %i.il = insertelement <2 x float> %i.ig, float %i.hr, i64 1
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ik, <2 x float> %i.il, <2 x float> %i.ii)
  %i.in = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hs, <2 x float> %i.he, <2 x float> %i.im) ; 4 uses
  %i.io = extractelement <2 x float> %i.hs, i64 0
  %i.ip = fmul float %i.hd, %i.io
  %i.iq = call float @llvm.fmuladd.f32(float %i.ia, float %i.hz, float %i.ip)
  %i.ir = extractelement <2 x float> %i.hs, i64 1
  %i.is = extractelement <2 x float> %i.hp, i64 0
  %i.it = call float @llvm.fmuladd.f32(float %i.ir, float %i.is, float %i.iq)
  %i.iu = call float @llvm.fmuladd.f32(float %i.hu, float %i.hq, float %i.it) ; 3 uses
  %.sroa.3.12.vec.insert.i11.i176 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.iu, i64 0
  store <2 x float> %i.in, ptr %18, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i11.i176, ptr %i.gl, align 8
  %shift338 = shufflevector <2 x float> %i.in, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop339 = fmul <2 x float> %i.do, %shift338
  %i.iv = extractelement <2 x float> %foldExtExtBinop339, i64 0
  %i.iw = extractelement <2 x float> %i.in, i64 0
  %i.ix = call float @llvm.fmuladd.f32(float %i.dn, float %i.iw, float %i.iv)
  %i.iy = call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.iu, float %i.ix)
  %i.iz = fcmp olt float %i.iy, 0.000000e+00
  br i1 %i.iz, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ja = fneg <2 x float> %i.in
  store <2 x float> %i.ja, ptr %18, align 16, !tbaa !89
  %i.jb = fneg float %i.iu
  store float %i.jb, ptr %i.gl, align 8, !tbaa !89
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.jc = invoke noundef zeroext i1 @_Z13b3TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.jc, label %bb.o, label %.thread259

bb.n:                                             ; preds = %bb.l
  %i.jd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.ag

bb.o:                                             ; preds = %bb.m
  %i.je = load float, ptr %i.b, align 4, !tbaa !114 ; 2 uses
  %i.jf = fcmp olt float %i.je, %.4103284
  br i1 %i.jf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !112
  br label %bb.q

.thread259:                                       ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.ae

bb.q:                                             ; preds = %bb.o, %bb.p
  %.6105.ph = phi float [ %.4103284, %bb.o ], [ %i.je, %bb.p ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  %i.jg = add nuw nsw i32 %.091285, 1             ; 2 uses
  %exitcond306.not = icmp eq i32 %i.jg, %i.gi
  br i1 %exitcond306.not, label %.preheader, label %bb.j, !llvm.loop !172

bb.r:                                             ; preds = %.lr.ph302, %._crit_edge295
  %i.jh = phi i32 [ %i.go, %.lr.ph302 ], [ %i.ow, %._crit_edge295 ]
  %i.ji = phi i32 [ %.pre, %.lr.ph302 ], [ %i.ox, %._crit_edge295 ] ; 2 uses
  %i.jj = phi i32 [ %.pre, %.lr.ph302 ], [ %i.oy, %._crit_edge295 ] ; 2 uses
  %.089301 = phi i32 [ 0, %.lr.ph302 ], [ %i.oz, %._crit_edge295 ] ; 2 uses
  %.8299 = phi float [ %.4103.lcssa, %.lr.ph302 ], [ %.9.lcssa, %._crit_edge295 ] ; 2 uses
  %i.jk = load i32, ptr %i.gp, align 4, !tbaa !137
  %i.jl = add nsw i32 %i.jk, %.089301
  %i.jm = load ptr, ptr %i.gq, align 8, !tbaa !54
  %i.jn = sext i32 %i.jl to i64
  %i.jo = getelementptr inbounds [16 x i8], ptr %i.jm, i64 %i.jn ; 2 uses
  %i.jp = load float, ptr %i.j, align 4, !tbaa !114 ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.jr = load <2 x float>, ptr %i.h, align 4, !tbaa !114 ; 5 uses
  %i.js = load <2 x float>, ptr %i.jq, align 4, !tbaa !114 ; 4 uses
  %i.jt = load <2 x float>, ptr %i.jo, align 4, !tbaa !114 ; 4 uses
  %i.ju = load float, ptr %3, align 16, !tbaa !114 ; 3 uses
  %i.jv = shufflevector <2 x float> %i.js, <2 x float> %i.jt, <2 x i32> <i32 1, i32 2>
  %i.jw = fmul <2 x float> %i.jv, %i.jr
  %i.jx = extractelement <2 x float> %i.js, i64 0 ; 2 uses
  %i.jy = fmul float %i.jx, %i.ju
  %i.jz = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ka = insertelement <2 x float> %i.jz, float %i.ju, i64 1 ; 2 uses
  %i.kb = fneg <2 x float> %i.ka                  ; 3 uses
  %i.kc = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ke = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.jt, <2 x float> %i.jw) ; 2 uses
  %i.kf = extractelement <2 x float> %i.js, i64 1 ; 2 uses
  %i.kg = call float @llvm.fmuladd.f32(float %i.jp, float %i.kf, float %i.jy)
  %i.kh = fneg <2 x float> %i.jr                  ; 2 uses
  %i.ki = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> %i.jr, <2 x i32> <i32 0, i32 2>
  %i.kk = fneg <2 x float> %i.kj
  %i.kl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.js, <2 x float> %i.ke) ; 4 uses
  %i.km = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kn = insertelement <2 x float> %i.km, float %i.kg, i64 0
  %i.ko = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.jt, <2 x float> %i.kn) ; 3 uses
  %i.kp = fneg float %i.jx
  %i.kq = extractelement <2 x float> %i.jr, i64 0 ; 2 uses
  %i.kr = fmul float %i.kq, %i.kp
  %i.ks = extractelement <2 x float> %i.kb, i64 1 ; 2 uses
  %i.kt = extractelement <2 x float> %i.jt, i64 0
  %i.ku = call float @llvm.fmuladd.f32(float %i.ks, float %i.kt, float %i.kr)
  %i.kv = extractelement <2 x float> %i.kb, i64 0 ; 2 uses
  %i.kw = call float @llvm.fmuladd.f32(float %i.kv, float %i.kf, float %i.ku) ; 2 uses
  %i.kx = shufflevector <2 x float> %i.kl, <2 x float> %i.ko, <2 x i32> <i32 1, i32 2>
  %i.ky = fmul <2 x float> %i.kd, %i.kx
  %i.kz = extractelement <2 x float> %i.kl, i64 0
  %i.la = fmul float %i.jp, %i.kz
  %i.lb = insertelement <2 x float> poison, float %i.kw, i64 0
  %i.lc = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ld = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lc, <2 x float> %i.kh, <2 x float> %i.ky)
  %i.le = call float @llvm.fmuladd.f32(float %i.kw, float %i.ks, float %i.la)
  %i.lf = extractelement <2 x float> %i.kl, i64 1
  %i.lg = call float @llvm.fmuladd.f32(float %i.lf, float %i.kv, float %i.le)
  %i.lh = extractelement <2 x float> %i.ko, i64 0
  %i.li = call float @llvm.fmuladd.f32(float %i.lh, float %i.kq, float %i.lg) ; 2 uses
  %i.lj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.kk, <2 x float> %i.ld)
  %i.lk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kl, <2 x float> %i.ka, <2 x float> %i.lj) ; 3 uses
  %.not155289 = icmp sgt i32 %i.jj, 0
  br i1 %.not155289, label %.lr.ph294.preheader, label %._crit_edge295

.lr.ph294.preheader:                              ; preds = %bb.r
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lm = insertelement <2 x float> %i.ll, float %i.li, i64 1
  %i.ln = extractelement <2 x float> %i.lk, i64 0
  br label %.lr.ph294

.lr.ph294:                                        ; preds = %.lr.ph294.preheader, %bb.ab
  %i.lo = phi i32 [ %i.ou, %bb.ab ], [ %i.ji, %.lr.ph294.preheader ]
  %.0292 = phi i32 [ %i.ov, %bb.ab ], [ 0, %.lr.ph294.preheader ] ; 2 uses
  %.9290 = phi float [ %.13265, %bb.ab ], [ %.8299, %.lr.ph294.preheader ] ; 3 uses
  %i.lp = load i32, ptr %i.gs, align 4, !tbaa !137
  %i.lq = add nsw i32 %i.lp, %.0292
  %i.lr = load ptr, ptr %i.gt, align 8, !tbaa !54
  %i.ls = sext i32 %i.lq to i64
  %i.lt = getelementptr inbounds [16 x i8], ptr %i.lr, i64 %i.ls ; 2 uses
  %.sroa.5.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %21 = load float, ptr %i.m, align 4, !tbaa !114
  %.sroa.0204.0.copyload = load float, ptr %i.lt, align 16 ; 4 uses
  %i.lu = load <2 x float>, ptr %.sroa.5.0..sroa_idx205, align 4 ; 6 uses
  %i.lv = load <2 x float>, ptr %i.k, align 4, !tbaa !114 ; 3 uses
  %i.lw = load float, ptr %i.k, align 4, !tbaa !114
  %i.lx = load <2 x float>, ptr %5, align 16, !tbaa !114 ; 3 uses
  %i.ly = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lz = insertelement <2 x float> %i.ly, float %.sroa.0204.0.copyload, i64 0
  %i.ma = shufflevector <2 x float> %i.lv, <2 x float> %i.lx, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.mb = fmul <2 x float> %i.lz, %i.ma
  %i.mc = insertelement <2 x float> %i.ly, float %.sroa.0204.0.copyload, i64 1 ; 2 uses
  %i.md = fmul <2 x float> %i.mc, %i.lv
  %22 = insertelement <2 x float> poison, float %21, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.me = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %i.lu, <2 x float> %i.mb)
  %i.mf = insertelement <2 x float> poison, float %.sroa.0204.0.copyload, i64 0
  %i.mg = shufflevector <2 x float> %i.mf, <2 x float> %i.lu, <2 x i32> <i32 0, i32 2>
  %i.mh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> %i.mg, <2 x float> %i.md)
  %i.mi = fneg <2 x float> %i.lx                  ; 4 uses
  %i.mj = extractelement <2 x float> %i.lv, i64 1
  %i.mk = fneg float %i.mj                        ; 3 uses
  %i.ml = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mi, <2 x float> %i.mc, <2 x float> %i.me) ; 3 uses
  %i.mm = shufflevector <2 x float> %i.mi, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.mn = insertelement <2 x float> %i.mm, float %i.mk, i64 0 ; 2 uses
  %i.mo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mn, <2 x float> %i.lu, <2 x float> %i.mh) ; 3 uses
  %i.mp = extractelement <2 x float> %i.lu, i64 0
  %i.mq = fneg float %i.mp
  %i.mr = fmul float %i.lw, %i.mq
  %i.ms = extractelement <2 x float> %i.mi, i64 0
  %i.mt = call float @llvm.fmuladd.f32(float %i.ms, float %.sroa.0204.0.copyload, float %i.mr)
  %i.mu = extractelement <2 x float> %i.lu, i64 1
  %i.mv = call float @llvm.fmuladd.f32(float %i.mk, float %i.mu, float %i.mt)
  %i.mw = shufflevector <2 x float> %i.ml, <2 x float> %i.mo, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.mx = fmul <2 x float> %23, %i.mw
  %i.my = fmul <2 x float> %23, %i.ml
  %i.mz = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.na, <2 x float> %i.mn, <2 x float> %i.mx)
  %i.nc = insertelement <2 x float> %i.mm, float %i.mk, i64 1 ; 2 uses
  %i.nd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.na, <2 x float> %i.nc, <2 x float> %i.my)
  %i.ne = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mo, <2 x float> %i.nc, <2 x float> %i.nb)
  %i.nf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mw, <2 x float> %i.mi, <2 x float> %i.nd)
  %i.ng = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ml, <2 x float> %i.lx, <2 x float> %i.ne) ; 2 uses
  %i.nh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mo, <2 x float> %i.ma, <2 x float> %i.nf) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.ni = fneg <2 x float> %i.nh
  %i.nj = fmul <2 x float> %i.lm, %i.ni
  %i.nk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lk, <2 x float> %i.ng, <2 x float> %i.nj) ; 5 uses
  %i.nl = extractelement <2 x float> %i.ng, i64 1
  %i.nm = fneg float %i.nl
  %i.nn = fmul float %i.ln, %i.nm
  %i.no = extractelement <2 x float> %i.nh, i64 0
  %i.np = call float @llvm.fmuladd.f32(float %i.li, float %i.no, float %i.nn) ; 4 uses
  %i.nq = extractelement <2 x float> %i.nk, i64 0 ; 3 uses
  %i.nr = call noundef float @llvm.fabs.f32(float %i.nq)
  %i.ns = fpext float %i.nr to double
  %i.nt = fcmp ogt double %i.ns, f0x3EB0C6F7A0B5ED8D
  br i1 %i.nt, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph294
  %i.nu = extractelement <2 x float> %i.nk, i64 1
  %i.nv = call noundef float @llvm.fabs.f32(float %i.nu)
  %i.nw = fpext float %i.nv to double
  %i.nx = fcmp ogt double %i.nw, f0x3EB0C6F7A0B5ED8D
  br i1 %i.nx, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ny = call noundef float @llvm.fabs.f32(float %i.np)
  %i.nz = fpext float %i.ny to double
  %i.oa = fcmp ogt double %i.nz, f0x3EB0C6F7A0B5ED8D
  br i1 %i.oa, label %bb.u, label %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread262

_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread262:    ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.ab

bb.u:                                             ; preds = %.lr.ph294, %bb.s, %bb.t
  %foldExtExtBinop341 = fmul <2 x float> %i.nk, %i.nk
  %i.ob = extractelement <2 x float> %foldExtExtBinop341, i64 1
  %i.oc = call float @llvm.fmuladd.f32(float %i.nq, float %i.nq, float %i.ob)
  %i.od = call noundef float @llvm.fmuladd.f32(float %i.np, float %i.np, float %i.oc)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.od)
  %i.oe = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.of = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.og = shufflevector <2 x float> %i.of, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oh = fmul <2 x float> %i.nk, %i.og           ; 4 uses
  %i.oi = fmul float %i.np, %i.oe                 ; 3 uses
  %.sroa.3.12.vec.insert.i.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.oi, i64 0
  store <2 x float> %i.oh, ptr %19, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i.i.i, ptr %i.gu, align 8, !tbaa !89
  %shift343 = shufflevector <2 x float> %i.oh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop344 = fmul <2 x float> %i.do, %shift343
  %i.oj = extractelement <2 x float> %foldExtExtBinop344, i64 0
  %i.ok = extractelement <2 x float> %i.oh, i64 0
  %i.ol = call float @llvm.fmuladd.f32(float %i.dn, float %i.ok, float %i.oj)
  %i.om = call noundef float @llvm.fmuladd.f32(float %i.gv, float %i.oi, float %i.ol)
  %i.on = fcmp olt float %i.om, 0.000000e+00
  br i1 %i.on, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.oo = fneg <2 x float> %i.oh
  store <2 x float> %i.oo, ptr %19, align 16, !tbaa !89
  %i.op = fneg float %i.oi
  store float %i.op, ptr %i.gu, align 8, !tbaa !89
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.oq = invoke noundef zeroext i1 @_Z13b3TestSepAxisRK22b3ConvexPolyhedronDataS1_RK9b3Vector3RK12b3QuaternionS4_S7_S4_RK20b3AlignedObjectArrayIS2_ESB_Rf(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %1, ptr noundef nonnull align 16 dereferenceable(16) %15, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %16, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(25) %10, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  br i1 %i.oq, label %bb.z, label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.or = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.ag

bb.z:                                             ; preds = %bb.x
  %i.os = load float, ptr %i.c, align 4, !tbaa !114 ; 2 uses
  %i.ot = fcmp olt float %i.os, %.9290
  br i1 %i.ot, label %bb.aa, label %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread267

bb.aa:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !112
  br label %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread267

_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread267:    ; preds = %bb.aa, %bb.z
  %.11.ph = phi float [ %.9290, %bb.z ], [ %i.os, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %.pre307 = load i32, ptr %i.gr, align 8, !tbaa !136
  br label %bb.ab

bb.ab:                                            ; preds = %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread267, %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread262
  %i.ou = phi i32 [ %i.lo, %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread262 ], [ %.pre307, %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread267 ] ; 4 uses
  %.13265 = phi float [ %.9290, %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread262 ], [ %.11.ph, %_Z14b3IsAlmostZeroRK9b3Vector3.exit.thread267 ] ; 2 uses
  %i.ov = add nuw nsw i32 %.0292, 1               ; 2 uses
  %.not155 = icmp slt i32 %i.ov, %i.ou
  br i1 %.not155, label %.lr.ph294, label %._crit_edge295.loopexit, !llvm.loop !173

._crit_edge295.loopexit:                          ; preds = %bb.ab
  %.pre308 = load i32, ptr %i.gn, align 8, !tbaa !136
  br label %._crit_edge295

._crit_edge295:                                   ; preds = %._crit_edge295.loopexit, %bb.r
  %i.ow = phi i32 [ %i.jh, %bb.r ], [ %.pre308, %._crit_edge295.loopexit ] ; 2 uses
  %i.ox = phi i32 [ %i.ji, %bb.r ], [ %i.ou, %._crit_edge295.loopexit ]
  %i.oy = phi i32 [ %i.jj, %bb.r ], [ %i.ou, %._crit_edge295.loopexit ]
  %.9.lcssa = phi float [ %.8299, %bb.r ], [ %.13265, %._crit_edge295.loopexit ]
  %i.oz = add nuw nsw i32 %.089301, 1             ; 2 uses
  %.not156.not = icmp slt i32 %i.oz, %i.ow
  br i1 %.not156.not, label %bb.r, label %._crit_edge303, !llvm.loop !174

bb.ac:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %bb.ae

._crit_edge303:                                   ; preds = %._crit_edge295, %.preheader
  %i.pa = fneg float %i.dn
  %i.pb = fneg <2 x float> %i.do                  ; 2 uses
  %i.pc = load <2 x float>, ptr %14, align 16, !tbaa !89 ; 3 uses
  %shift346 = shufflevector <2 x float> %i.pc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop347 = fmul <2 x float> %shift346, %i.pb
  %i.pd = extractelement <2 x float> %foldExtExtBinop347, i64 0
  %i.pe = extractelement <2 x float> %i.pc, i64 0
  %i.pf = call float @llvm.fmuladd.f32(float %i.pa, float %i.pe, float %i.pd)
  %i.pg = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ph = load float, ptr %i.pg, align 8, !tbaa !89 ; 2 uses
  %i.pi = extractelement <2 x float> %i.pb, i64 1
  %i.pj = call noundef float @llvm.fmuladd.f32(float %i.pi, float %i.ph, float %i.pf)
  %i.pk = fcmp ogt float %i.pj, 0.000000e+00
  br i1 %i.pk, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge303
  %i.pl = fneg <2 x float> %i.pc
  %i.pm = fneg float %i.ph
  %.sroa.3.12.vec.insert.i.i196 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.pm, i64 0
  store <2 x float> %i.pl, ptr %14, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i196, ptr %i.pg, align 8, !tbaa !89
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %.thread259, %.thread253, %._crit_edge303, %bb.ad
  %.15 = phi i1 [ false, %.thread253 ], [ false, %.thread259 ], [ true, %._crit_edge303 ], [ true, %bb.ad ], [ false, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.pn = landingpad { ptr, i32 }
          catch ptr null
  %i.po = extractvalue { ptr, i32 } %i.pn, 0
  call void @__clang_call_terminate(ptr %i.po) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.ae
  ret i1 %.15

bb.ag:                                            ; preds = %bb.y, %bb.f, %bb.n
  %.pn157.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.f ], [ %i.or, %bb.y ], [ %i.jd, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit199 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.pp = landingpad { ptr, i32 }
          catch ptr null
  %i.pq = extractvalue { ptr, i32 } %i.pp, 0
  call void @__clang_call_terminate(ptr %i.pq) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit199:                   ; preds = %bb.ag
  resume { ptr, i32 } %.pn157.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_Z20b3ClipHullHullSingleiiRK9b3Vector3RK12b3QuaternionS1_S4_iiPK20b3AlignedObjectArrayI15b3RigidBodyDataEPS5_I14b3Contact4DataERiRKS5_I22b3ConvexPolyhedronDataESH_RKS5_IS_ESK_RKS5_I9b3GpuFaceERKS5_IiESK_SK_SO_SR_RKS5_I12b3CollidableESV_S1_i(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 16 dereferenceable(16) %2, ptr noundef nonnull align 16 dereferenceable(16) %3, ptr noundef nonnull align 16 dereferenceable(16) %4, ptr noundef nonnull align 16 dereferenceable(16) %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 8 dereferenceable(25) %11, ptr noundef nonnull align 8 dereferenceable(25) %12, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef nonnull align 8 dereferenceable(25) %15, ptr noundef nonnull align 8 dereferenceable(25) %16, ptr noundef nonnull align 8 dereferenceable(25) %17, ptr noundef nonnull align 8 dereferenceable(25) %18, ptr noundef nonnull align 8 dereferenceable(25) %19, ptr noundef nonnull align 8 dereferenceable(25) %20, ptr noundef nonnull align 8 dereferenceable(25) %21, ptr noundef nonnull align 8 dereferenceable(25) %22, ptr noundef nonnull align 16 dereferenceable(16) %23, i32 noundef %24) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %25 = alloca %class.b3Quaternion, align 16      ; 5 uses
  %26 = alloca %class.b3Quaternion, align 16      ; 5 uses
  %27 = alloca [1024 x %class.b3Vector3], align 16 ; 8 uses
  %28 = alloca [1024 x %class.b3Vector3], align 16 ; 4 uses
  %29 = alloca [1024 x %class.b3Vector3], align 16 ; 4 uses
  %30 = alloca %class.b3Vector3, align 16         ; 7 uses
  %31 = alloca %class.b3Transform, align 16       ; 18 uses
  %32 = alloca %class.b3Transform, align 16       ; 18 uses
  %33 = alloca %class.b3Quaternion, align 16      ; 6 uses
  %34 = alloca %class.b3Quaternion, align 16      ; 6 uses
  %35 = alloca %class.b3Vector3, align 16         ; 8 uses
  %36 = alloca %struct.b3Int4, align 16           ; 8 uses
  %37 = alloca %struct.b3Contact4Data, align 16   ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = sext i32 %6 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = sext i32 %7 to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.h
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #19
  %i.k = load <4 x float>, ptr %23, align 16      ; 2 uses
  %i.l = extractelement <4 x float> %i.k, i64 2
  %.sroa.0.4.vec.insert.i = shufflevector <4 x float> %i.k, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.l, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %30, align 16
  %i.m = getelementptr inbounds nuw i8, ptr %30, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.m, align 8
  %i.n = load i32, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !89
  %i.o = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #19
  %38 = load <2 x float>, ptr %2, align 16, !tbaa !89
  %39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %40 = load float, ptr %39, align 8, !tbaa !89
  %.sroa.3.12.vec.insert.i92 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %40, i64 0
  %i.p = getelementptr inbounds nuw i8, ptr %31, i64 48 ; 2 uses
  store <2 x float> %38, ptr %i.p, align 16
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %31, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i92, ptr %.sroa.4119.0..sroa_idx, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.t = getelementptr inbounds nuw i8, ptr %31, i64 4
  %i.u = getelementptr inbounds nuw i8, ptr %31, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %31, i64 12
  store float 0.000000e+00, ptr %i.v, align 4, !tbaa !89
  %i.w = getelementptr inbounds nuw i8, ptr %31, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %31, i64 20
  %i.y = getelementptr inbounds nuw i8, ptr %31, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %31, i64 28
  store float 0.000000e+00, ptr %i.z, align 4, !tbaa !89
  %i.aa = getelementptr inbounds nuw i8, ptr %31, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %31, i64 36
  %i.ac = getelementptr inbounds nuw i8, ptr %31, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %31, i64 44
  store float 0.000000e+00, ptr %i.ad, align 4, !tbaa !89
  %41 = load <2 x float>, ptr %4, align 16, !tbaa !89
  %42 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %43 = load float, ptr %42, align 8, !tbaa !89
  %.sroa.3.12.vec.insert.i97 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %43, i64 0
  %i.ae = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 2 uses
  store <2 x float> %41, ptr %i.ae, align 16
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %32, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i97, ptr %.sroa.4113.0..sroa_idx, align 8, !tbaa !89
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ai = load <2 x float>, ptr %3, align 16, !tbaa !114 ; 6 uses
  %i.aj = load float, ptr %i.q, align 4, !tbaa !114 ; 3 uses
  %i.ak = load <2 x float>, ptr %i.r, align 8, !tbaa !114 ; 4 uses
  %i.al = load float, ptr %i.s, align 4, !tbaa !114 ; 3 uses
  %i.am = load <2 x float>, ptr %5, align 16, !tbaa !114 ; 3 uses
  %i.an = load float, ptr %i.af, align 4, !tbaa !114 ; 3 uses
  %i.ao = load <2 x float>, ptr %i.ag, align 8, !tbaa !114 ; 3 uses
  %i.ap = load float, ptr %i.ah, align 4, !tbaa !114 ; 3 uses
  %i.aq = shufflevector <2 x float> %i.ai, <2 x float> %i.am, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ar = fmul <2 x float> %i.aq, %i.aq
  %i.as = shufflevector <2 x float> %i.ai, <2 x float> %i.am, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.as, <2 x float> %i.ar)
  %i.au = shufflevector <2 x float> %i.ak, <2 x float> %i.ao, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.av = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.au, <2 x float> %i.at)
  %i.aw = shufflevector <2 x float> %i.ak, <2 x float> %i.ao, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ax = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.aw, <2 x float> %i.av)
  %i.ay = fdiv <2 x float> splat (float 2.000000e+00), %i.ax ; 4 uses
  %i.az = extractelement <2 x float> %i.ay, i64 0
  %i.ba = extractelement <2 x float> %i.ai, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.ai, %i.ay ; 2 uses
  %i.bb = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bc = fmul float %i.aj, %i.az                 ; 3 uses
  %foldExtExtBinop128 = fmul <2 x float> %i.ak, %i.ay ; 3 uses
  %i.bd = extractelement <2 x float> %foldExtExtBinop128, i64 0 ; 2 uses
  %i.be = fmul float %i.al, %i.bb                 ; 2 uses
  %i.bf = fmul float %i.al, %i.bc                 ; 2 uses
  %i.bg = fmul float %i.al, %i.bd                 ; 2 uses
  %foldExtExtBinop130 = fmul <2 x float> %i.ai, %foldExtExtBinop ; 2 uses
  %i.bh = extractelement <2 x float> %foldExtExtBinop130, i64 0
  %i.bi = fmul float %i.ba, %i.bc                 ; 2 uses
  %foldExtExtBinop132 = fmul <2 x float> %i.ai, %foldExtExtBinop128
  %i.bj = extractelement <2 x float> %foldExtExtBinop132, i64 0 ; 2 uses
  %i.bk = fmul float %i.aj, %i.bc                 ; 2 uses
  %i.bl = fmul float %i.aj, %i.bd                 ; 2 uses
  %foldExtExtBinop134 = fmul <2 x float> %i.ak, %foldExtExtBinop128 ; 2 uses
  %i.bm = extractelement <2 x float> %foldExtExtBinop134, i64 0
  %i.bn = fadd float %i.bk, %i.bm
  %i.bo = fsub float 1.000000e+00, %i.bn
  %i.bp = fsub float %i.bi, %i.bg
  %i.bq = fadd float %i.bj, %i.bf
  %i.br = fadd float %i.bi, %i.bg
  %foldExtExtBinop136 = fadd <2 x float> %foldExtExtBinop130, %foldExtExtBinop134
  %i.bs = extractelement <2 x float> %foldExtExtBinop136, i64 0
  %i.bt = fsub float 1.000000e+00, %i.bs
  %i.bu = fsub float %i.bl, %i.be
  %i.bv = fsub float %i.bj, %i.bf
  %i.bw = fadd float %i.bl, %i.be
  %i.bx = fadd float %i.bh, %i.bk
  %i.by = fsub float 1.000000e+00, %i.bx
  store float %i.bo, ptr %31, align 16, !tbaa !89
  store float %i.bp, ptr %i.t, align 4, !tbaa !89
  store float %i.bq, ptr %i.u, align 8, !tbaa !89
  store float %i.br, ptr %i.w, align 16, !tbaa !89
  store float %i.bt, ptr %i.x, align 4, !tbaa !89
  store float %i.bu, ptr %i.y, align 8, !tbaa !89
  store float %i.bv, ptr %i.aa, align 16, !tbaa !89
  store float %i.bw, ptr %i.ab, align 4, !tbaa !89
  store float %i.by, ptr %i.ac, align 8, !tbaa !89
  %i.bz = extractelement <2 x float> %i.ay, i64 1 ; 3 uses
  %i.ca = extractelement <2 x float> %i.am, i64 0 ; 4 uses
  %i.cb = fmul float %i.ca, %i.bz                 ; 2 uses
  %i.cc = fmul float %i.an, %i.bz                 ; 3 uses
  %i.cd = extractelement <2 x float> %i.ao, i64 0 ; 2 uses
  %i.ce = fmul float %i.cd, %i.bz                 ; 4 uses
  %i.cf = fmul float %i.ap, %i.cb                 ; 2 uses
  %i.cg = fmul float %i.ap, %i.cc                 ; 2 uses
  %i.ch = fmul float %i.ap, %i.ce                 ; 2 uses
  %i.ci = fmul float %i.ca, %i.cb                 ; 2 uses
  %i.cj = fmul float %i.ca, %i.cc                 ; 2 uses
  %i.ck = fmul float %i.ca, %i.ce                 ; 2 uses
  %i.cl = fmul float %i.an, %i.cc                 ; 2 uses
  %i.cm = fmul float %i.an, %i.ce                 ; 2 uses
  %i.cn = fmul float %i.cd, %i.ce                 ; 2 uses
  %i.co = fadd float %i.cl, %i.cn
  %i.cp = fsub float 1.000000e+00, %i.co
  %i.cq = fsub float %i.cj, %i.ch
  %i.cr = fadd float %i.ck, %i.cg
  %i.cs = fadd float %i.cj, %i.ch
  %i.ct = fadd float %i.ci, %i.cn
  %i.cu = fsub float 1.000000e+00, %i.ct
  %i.cv = fsub float %i.cm, %i.cf
  %i.cw = fsub float %i.ck, %i.cg
  %i.cx = fadd float %i.cm, %i.cf
  %i.cy = fadd float %i.ci, %i.cl
  %i.cz = fsub float 1.000000e+00, %i.cy
  store float %i.cp, ptr %32, align 16, !tbaa !89
  %i.da = getelementptr inbounds nuw i8, ptr %32, i64 4
  store float %i.cq, ptr %i.da, align 4, !tbaa !89
  %i.db = getelementptr inbounds nuw i8, ptr %32, i64 8
  store float %i.cr, ptr %i.db, align 8, !tbaa !89
  %i.dc = getelementptr inbounds nuw i8, ptr %32, i64 12
  store float 0.000000e+00, ptr %i.dc, align 4, !tbaa !89
  %i.dd = getelementptr inbounds nuw i8, ptr %32, i64 16
  store float %i.cs, ptr %i.dd, align 16, !tbaa !89
  %i.de = getelementptr inbounds nuw i8, ptr %32, i64 20
  store float %i.cu, ptr %i.de, align 4, !tbaa !89
  %i.df = getelementptr inbounds nuw i8, ptr %32, i64 24
  store float %i.cv, ptr %i.df, align 8, !tbaa !89
  %i.dg = getelementptr inbounds nuw i8, ptr %32, i64 28
  store float 0.000000e+00, ptr %i.dg, align 4, !tbaa !89
  %i.dh = getelementptr inbounds nuw i8, ptr %32, i64 32
  store float %i.cw, ptr %i.dh, align 16, !tbaa !89
  %i.di = getelementptr inbounds nuw i8, ptr %32, i64 36
  store float %i.cx, ptr %i.di, align 4, !tbaa !89
  %i.dj = getelementptr inbounds nuw i8, ptr %32, i64 40
  store float %i.cz, ptr %i.dj, align 8, !tbaa !89
  %i.dk = getelementptr inbounds nuw i8, ptr %32, i64 44
  store float 0.000000e+00, ptr %i.dk, align 4, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %26)
  call void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(64) %31, ptr noundef nonnull align 16 dereferenceable(16) %26)
  %.fca.0.load.i = load <2 x float>, ptr %26, align 16
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %26, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %26)
  store <2 x float> %.fca.0.load.i, ptr %33, align 16
  %i.dl = getelementptr inbounds nuw i8, ptr %33, i64 8
  store <2 x float> %.fca.1.load.i, ptr %i.dl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %25)
  call void @_ZNK11b3Matrix3x311getRotationER12b3Quaternion(ptr noundef nonnull align 16 dereferenceable(64) %32, ptr noundef nonnull align 16 dereferenceable(16) %25)
  %.fca.0.load.i102 = load <2 x float>, ptr %25, align 16
  %.fca.1.gep.i104 = getelementptr inbounds nuw i8, ptr %25, i64 8
  %.fca.1.load.i105 = load <2 x float>, ptr %.fca.1.gep.i104, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %25)
  store <2 x float> %.fca.0.load.i102, ptr %34, align 16
  %i.dm = getelementptr inbounds nuw i8, ptr %34, i64 8
  store <2 x float> %.fca.1.load.i105, ptr %i.dm, align 8
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.do = sext i32 %i.n to i64
  %i.dp = getelementptr inbounds [96 x i8], ptr %i.dn, i64 %i.do
  %i.dq = load ptr, ptr %i.j, align 8, !tbaa !47
  %i.dr = sext i32 %i.o to i64
  %i.ds = getelementptr inbounds [96 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = call noundef i32 @_Z21b3ClipHullAgainstHullRK9b3Vector3RK22b3ConvexPolyhedronDataS4_S1_RK12b3QuaternionS1_S7_PS_S8_iffRK20b3AlignedObjectArrayIS_ERKS9_I9b3GpuFaceERKS9_IiESC_SG_SJ_S8_i(ptr noundef nonnull align 16 dereferenceable(16) %30, ptr noundef nonnull align 16 dereferenceable(96) %i.dp, ptr noundef nonnull align 16 dereferenceable(96) %i.ds, ptr noundef nonnull align 16 dereferenceable(16) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %33, ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull align 16 dereferenceable(16) %34, ptr noundef nonnull %28, ptr noundef nonnull %29, i32 noundef 1024, float noundef -1.000000e+00, float noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(25) %13, ptr noundef nonnull align 8 dereferenceable(25) %15, ptr noundef nonnull align 8 dereferenceable(25) %16, ptr noundef nonnull align 8 dereferenceable(25) %17, ptr noundef nonnull align 8 dereferenceable(25) %19, ptr noundef nonnull align 8 dereferenceable(25) %20, ptr noundef nonnull %27, i32 noundef 1024) ; 2 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %bb.b, label %_ZN13b3ProfileZoneD2Ev.exit108

bb.b:                                             ; preds = %bb.a
  call void @b3EnterProfileZone(ptr noundef nonnull @.str.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %35, ptr noundef nonnull align 16 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !112
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #19
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %36, align 16, !tbaa !89
  invoke void @b3EnterProfileZone(ptr noundef nonnull @.str.5)
          to label %_ZN13b3ProfileZoneC2EPKc.exit unwind label %bb.g

_ZN13b3ProfileZoneC2EPKc.exit:                    ; preds = %bb.b
  %i.dv = invoke noundef i32 @_Z16b3ReduceContactsPK9b3Vector3iRS0_P6b3Int4(ptr noundef nonnull %27, i32 noundef %i.dt, ptr noundef nonnull align 16 dereferenceable(16) %35, ptr noundef nonnull %36)
          to label %bb.c unwind label %bb.h       ; 5 uses

bb.c:                                             ; preds = %_ZN13b3ProfileZoneC2EPKc.exit
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #21
  unreachable

_ZN13b3ProfileZoneD2Ev.exit:                      ; preds = %bb.c
  %i.dy = load i32, ptr %10, align 4, !tbaa !40   ; 2 uses
  %i.dz = icmp slt i32 %i.dy, %24
  br i1 %i.dz, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_ZN13b3ProfileZoneD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %37, i8 0, i64 112, i1 false)
  %i.ea = invoke noundef nonnull align 16 dereferenceable(112) ptr @_ZN20b3AlignedObjectArrayI14b3Contact4DataE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %9, ptr noundef nonnull align 16 dereferenceable(112) %37)
          to label %bb.f unwind label %bb.j       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #19
  %i.eb = load i32, ptr %10, align 4, !tbaa !40
  %i.ec = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !75
  %i.ee = sext i32 %i.eb to i64
  %i.ef = getelementptr inbounds [112 x i8], ptr %i.ed, i64 %i.ee ; 10 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 84
  store i32 0, ptr %i.eg, align 4, !tbaa !175
  %i.eh = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !100 ; 2 uses
  %i.ej = sext i32 %0 to i64
  %i.ek = getelementptr inbounds [80 x i8], ptr %i.ei, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 68
  %i.em = load float, ptr %i.el, align 4, !tbaa !177
  %i.en = fcmp oeq float %i.em, 0.000000e+00
  %i.eo = sub nsw i32 0, %0
  %i.ep = select i1 %i.en, i32 %i.eo, i32 %0
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ef, i64 88
  store i32 %i.ep, ptr %i.eq, align 8, !tbaa !178
  %i.er = sext i32 %1 to i64
  %i.es = getelementptr inbounds [80 x i8], ptr %i.ei, i64 %i.er
end_hunk_0
