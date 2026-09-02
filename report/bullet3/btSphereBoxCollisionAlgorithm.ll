Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSphereBoxCollisionAlgorithm?download=true
inline.NumInlined: 151
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN29btSphereBoxCollisionAlgorithmD2Ev:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !18, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  tail call void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #12
  ret void

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #13
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #12 ; 0 uses
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN29btSphereBoxCollisionAlgorithmD0Ev(ptr noundef nonnull align 8 dereferenceable(33) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV29btSphereBoxCollisionAlgorithm, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !18, !range !28, !noundef !29
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN29btSphereBoxCollisionAlgorithmD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN29btSphereBoxCollisionAlgorithmD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e)
          to label %_ZN29btSphereBoxCollisionAlgorithmD2Ev.exit unwind label %bb.d, !inline_history !37

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #13, !inline_history !37
  unreachable

_ZN29btSphereBoxCollisionAlgorithmD2Ev.exit:      ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN30btActivatingCollisionAlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(33) %0) #12, !inline_history !37
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN29btSphereBoxCollisionAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(33) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %class.btVector3, align 4           ; 4 uses
  %6 = alloca %class.btVector3, align 4           ; 4 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %7 = alloca %class.btVector3, align 4           ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !20, !range !28, !noundef !29
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  %i.g = select i1 %i.f, ptr %2, ptr %1           ; 2 uses
  %i.h = select i1 %i.f, ptr %1, ptr %2
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30, !nonnull !29, !align !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load float, ptr %i.n, align 4, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.q = load float, ptr %i.p, align 4, !tbaa !36
  %i.r = fmul float %i.o, %i.q
  %i.s = tail call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880) %i.c)
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !40
  %i.v = call noundef zeroext i1 @_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEPK24btCollisionObjectWrapperR9btVector3S4_RfRKS3_ff(ptr nonnull align 8 poison, ptr noundef %i.h, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.r, float noundef %i.s)
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = load float, ptr %i.a, align 4, !tbaa !36
  %i.x = load ptr, ptr %4, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  call void %i.z(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %5, float noundef %i.w)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !18, !range !28, !noundef !29
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !19
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 856
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !43
  %.not14 = icmp eq i32 %i.af, 0
  br i1 %.not14, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.u, align 8, !tbaa !40  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 856
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !43
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 840
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !27 ; 3 uses
  %.not1.i = icmp eq ptr %i.ak, %i.ao             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !46
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !27 ; 2 uses
  %. = select i1 %.not1.i, ptr %i.as, ptr %i.ao
  %.16 = select i1 %.not1.i, ptr %i.ao, ptr %i.as
  %.sink.i = getelementptr inbounds nuw i8, ptr %.16, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %., i64 8
  call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880) %i.ag, ptr noundef nonnull align 4 dereferenceable(64) %.sink.i, ptr noundef nonnull align 4 dereferenceable(64) %i.at)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.sink.split.i, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN16btManifoldResult20refreshContactPointsEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN29btSphereBoxCollisionAlgorithm17getSphereDistanceEPK24btCollisionObjectWrapperR9btVector3S4_RfRKS3_ff(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(16) initializes((0, 16)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, float noundef %6, float noundef %7) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef float %i.f(ptr noundef nonnull align 8 dereferenceable(72) %i.b) ; 3 uses
  store float 1.000000e+00, ptr %4, align 4, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30, !nonnull !29, !align !31 ; 11 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 36 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  %i.r = load float, ptr %i.o, align 4, !tbaa !36, !noalias !49
  %i.s = load float, ptr %i.p, align 4, !tbaa !36, !noalias !49
  %i.t = load float, ptr %i.q, align 4, !tbaa !36, !noalias !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !36 ; 3 uses
  %i.x = fneg float %i.w                          ; 2 uses
  %i.y = fadd float %6, %i.g                      ; 2 uses
  %i.z = fadd float %7, %i.y                      ; 2 uses
  %i.aa = load <3 x float>, ptr %5, align 4, !tbaa !36
  %i.ab = load <3 x float>, ptr %i.j, align 4, !tbaa !36
  %i.ac = fsub <3 x float> %i.aa, %i.ab           ; 6 uses
  %i.ad = load <2 x float>, ptr %i.i, align 4, !tbaa !36, !noalias !49
  %i.ae = load <2 x float>, ptr %i.l, align 4, !tbaa !36, !noalias !49
  %i.af = load <2 x float>, ptr %i.m, align 4, !tbaa !36, !noalias !49
  %i.ag = shufflevector <3 x float> %i.ac, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ah = fmul <2 x float> %i.ag, %i.ae
  %i.ai = shufflevector <3 x float> %i.ac, <3 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ai, <2 x float> %i.ah)
  %i.ak = shufflevector <3 x float> %i.ac, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.al = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ak, <2 x float> %i.aj) ; 8 uses
  %i.am = extractelement <3 x float> %i.ac, i64 1
  %i.an = fmul float %i.am, %i.s
  %i.ao = extractelement <3 x float> %i.ac, i64 0
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.r, float %i.ao, float %i.an)
  %i.aq = extractelement <3 x float> %i.ac, i64 2
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.aq, float %i.ap) ; 8 uses
  %i.as = load <2 x float>, ptr %i.c, align 8, !tbaa !36 ; 3 uses
  %i.at = fcmp olt <2 x float> %i.as, %i.al
  %i.au = select <2 x i1> %i.at, <2 x float> %i.as, <2 x float> %i.al ; 2 uses
  %i.av = fneg <2 x float> %i.as                  ; 2 uses
  %i.aw = fcmp olt <2 x float> %i.au, %i.av
  %i.ax = select <2 x i1> %i.aw, <2 x float> %i.av, <2 x float> %i.au ; 3 uses
  %i.ay = fcmp olt float %i.w, %i.ar
  %.sroa.speculated123 = select i1 %i.ay, float %i.w, float %i.ar ; 2 uses
  %i.az = fcmp olt float %.sroa.speculated123, %i.x
  %.sroa.speculated = select i1 %i.az, float %i.x, float %.sroa.speculated123 ; 3 uses
  %i.ba = fsub <2 x float> %i.al, %i.ax           ; 5 uses
  %i.bb = fsub float %i.ar, %.sroa.speculated     ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bb, i64 0
  store <2 x float> %i.ba, ptr %3, align 4
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !32
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 4
  %foldExtExtBinop = fmul <2 x float> %i.ba, %i.ba
  %i.bd = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.be = extractelement <2 x float> %i.ba, i64 0 ; 2 uses
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.be, float %i.be, float %i.bd)
  %i.bg = tail call noundef float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.bf) ; 3 uses
  %i.bh = fmul float %i.z, %i.z
  %i.bi = fcmp ule float %i.bg, %i.bh             ; 2 uses
  br i1 %i.bi, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.bj = fcmp ugt float %i.bg, f0x34000000
  br i1 %i.bj, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bk = load float, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.bl = extractelement <2 x float> %i.al, i64 0 ; 4 uses
  %i.bm = fsub float %i.bk, %i.bl                 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !36
  %i.bn = load float, ptr %i.c, align 8, !tbaa !36 ; 2 uses
  %i.bo = fadd float %i.bl, %i.bn                 ; 2 uses
  %i.bp = fcmp olt float %i.bo, %i.bm
  %i.bq = extractelement <2 x float> %i.ax, i64 1
  br i1 %i.bp, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.br = fneg float %i.bn
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !36
  %i.bs = extractelement <2 x float> %i.al, i64 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bt = phi float [ -1.000000e+00, %bb.d ], [ 1.000000e+00, %bb.c ]
  %.sroa.28.1 = phi float [ %i.ar, %bb.d ], [ %.sroa.speculated, %bb.c ]
  %.sroa.18.1 = phi float [ %i.bs, %bb.d ], [ %i.bq, %bb.c ]
  %.sroa.077.1 = phi float [ %i.br, %bb.d ], [ %i.bk, %bb.c ]
  %.0.i = phi float [ %i.bo, %bb.d ], [ %i.bm, %bb.c ] ; 2 uses
  %i.bu = load float, ptr %i.u, align 4, !tbaa !36 ; 3 uses
  %i.bv = extractelement <2 x float> %i.al, i64 1 ; 2 uses
  %i.bw = fsub float %i.bu, %i.bv                 ; 2 uses
  %i.bx = fcmp olt float %i.bw, %.0.i
  %i.by = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bt, i64 0
  br i1 %i.bx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !36
  %.pre.i = load float, ptr %i.u, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.28.2 = phi float [ %i.ar, %bb.f ], [ %.sroa.28.1, %bb.e ]
  %.sroa.18.2 = phi float [ %i.bu, %bb.f ], [ %.sroa.18.1, %bb.e ]
  %.sroa.077.2 = phi float [ %i.bl, %bb.f ], [ %.sroa.077.1, %bb.e ]
  %i.bz = phi float [ %.pre.i, %bb.f ], [ %i.bu, %bb.e ] ; 2 uses
  %.1.i = phi float [ %i.bw, %bb.f ], [ %.0.i, %bb.e ] ; 2 uses
  %i.ca = phi <2 x float> [ <float 0.000000e+00, float 1.000000e+00>, %bb.f ], [ %i.by, %bb.e ]
  %i.cb = fadd float %i.bv, %i.bz                 ; 2 uses
  %i.cc = fcmp olt float %i.cb, %.1.i
  br i1 %i.cc, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cd = fneg float %i.bz
  store <4 x float> <float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.28.3 = phi float [ %i.ar, %bb.h ], [ %.sroa.28.2, %bb.g ]
  %.sroa.18.3 = phi float [ %i.cd, %bb.h ], [ %.sroa.18.2, %bb.g ]
  %.sroa.077.3 = phi float [ %i.bl, %bb.h ], [ %.sroa.077.2, %bb.g ]
  %.2.i = phi float [ %i.cb, %bb.h ], [ %.1.i, %bb.g ] ; 2 uses
  %i.ce = phi <2 x float> [ <float 0.000000e+00, float -1.000000e+00>, %bb.h ], [ %i.ca, %bb.g ]
  %i.cf = load float, ptr %i.v, align 8, !tbaa !36 ; 3 uses
  %i.cg = fsub float %i.cf, %i.ar                 ; 2 uses
  %i.ch = fcmp olt float %i.cg, %.2.i
  %i.ci = insertelement <2 x float> poison, float %.sroa.077.3, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %.sroa.18.3, i64 1
  br i1 %i.ch, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !36
  %.pre81.i = load float, ptr %i.v, align 8, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ck = phi float [ 1.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ]
  %.sroa.28.4 = phi float [ %i.cf, %bb.j ], [ %.sroa.28.3, %bb.i ]
  %i.cl = phi float [ %.pre81.i, %bb.j ], [ %i.cf, %bb.i ] ; 2 uses
  %.3.i = phi float [ %i.cg, %bb.j ], [ %.2.i, %bb.i ] ; 2 uses
  %i.cm = phi <2 x float> [ %i.al, %bb.j ], [ %i.cj, %bb.i ]
  %i.cn = phi <2 x float> [ zeroinitializer, %bb.j ], [ %i.ce, %bb.i ]
  %i.co = fadd float %i.ar, %i.cl                 ; 2 uses
  %i.cp = fcmp olt float %i.co, %.3.i
  br i1 %i.cp, label %bb.l, label %_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationERK9btVector3S2_RS0_S3_.exit

bb.l:                                             ; preds = %bb.k
  %i.cq = fneg float %i.cl
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !36
  br label %_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationERK9btVector3S2_RS0_S3_.exit

_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationERK9btVector3S2_RS0_S3_.exit: ; preds = %bb.k, %bb.l
  %i.cr = phi float [ -1.000000e+00, %bb.l ], [ %i.ck, %bb.k ]
  %.sroa.28.5 = phi float [ %i.cq, %bb.l ], [ %.sroa.28.4, %bb.k ]
  %.4.i = phi float [ %i.co, %bb.l ], [ %.3.i, %bb.k ]
  %i.cs = phi <2 x float> [ %i.al, %bb.l ], [ %i.cm, %bb.k ]
  %i.ct = phi <2 x float> [ zeroinitializer, %bb.l ], [ %i.cn, %bb.k ]
  %i.cu = fneg float %.4.i
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.bg) ; 2 uses
  %i.cv = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.cw = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cy = fmul <2 x float> %i.ba, %i.cx           ; 2 uses
  store <2 x float> %i.cy, ptr %3, align 4, !tbaa !36
  %i.cz = fmul float %i.bb, %i.cv                 ; 2 uses
  store float %i.cz, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !36
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationERK9btVector3S2_RS0_S3_.exit
  %i.da = phi float [ %i.cz, %bb.m ], [ %i.cr, %_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationERK9btVector3S2_RS0_S3_.exit ]
  %.sroa.28.0 = phi float [ %.sroa.speculated, %bb.m ], [ %.sroa.28.5, %_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationERK9btVector3S2_RS0_S3_.exit ]
  %.0 = phi float [ %sqrt.i, %bb.m ], [ %i.cu, %_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationERK9btVector3S2_RS0_S3_.exit ]
  %i.db = phi <2 x float> [ %i.ax, %bb.m ], [ %i.cs, %_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationERK9btVector3S2_RS0_S3_.exit ]
  %i.dc = phi <2 x float> [ %i.cy, %bb.m ], [ %i.ct, %_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationERK9btVector3S2_RS0_S3_.exit ]
  %i.dd = insertelement <2 x float> poison, float %i.g, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fmul <2 x float> %i.de, %i.dc
  %i.dg = fmul float %i.g, %i.da
  %i.dh = fadd <2 x float> %i.db, %i.df
  %i.di = fadd float %.sroa.28.0, %i.dg
  %.sroa.3.12.vec.insert.i54 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.di, i64 0
  store <2 x float> %i.dh, ptr %2, align 4
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i54, ptr %.sroa.46.0..sroa_idx, align 4, !tbaa !32
  %i.dj = fsub float %.0, %i.y
  store float %i.dj, ptr %4, align 4, !tbaa !36
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.dl = load float, ptr %i.o, align 4, !tbaa !36
  %i.dm = load float, ptr %i.p, align 4, !tbaa !36
  %i.dn = load float, ptr %i.m, align 4, !tbaa !36
  %i.do = load float, ptr %i.n, align 4, !tbaa !36
  %i.dp = load float, ptr %i.q, align 4, !tbaa !36
  %i.dq = load <2 x float>, ptr %i.i, align 4, !tbaa !36 ; 2 uses
  %i.dr = load float, ptr %i.dk, align 4, !tbaa !36 ; 2 uses
  %i.ds = load float, ptr %2, align 4, !tbaa !36  ; 2 uses
  %i.dt = load float, ptr %.sroa.46.0..sroa_idx, align 4, !tbaa !36 ; 2 uses
  %8 = load <2 x float>, ptr %i.l, align 4, !tbaa !36 ; 2 uses
  %9 = insertelement <2 x float> poison, float %i.dr, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <2 x float> %i.dq, <2 x float> %8, <2 x i32> <i32 1, i32 3>
  %12 = fmul <2 x float> %10, %11
  %i.du = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dv = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dw = shufflevector <2 x float> %i.dq, <2 x float> %8, <2 x i32> <i32 0, i32 2>
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dv, <2 x float> %i.dw, <2 x float> %12)
  %i.dy = insertelement <2 x float> poison, float %i.dt, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = insertelement <2 x float> poison, float %i.dl, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.dm, i64 1
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dz, <2 x float> %i.eb, <2 x float> %i.dx)
  %i.ed = fmul float %i.dr, %i.do
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ds, float %i.dn, float %i.ed)
  %i.ef = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.dp, float %i.ee)
  %i.eg = load <2 x float>, ptr %i.j, align 4, !tbaa !36
  %i.eh = fadd <2 x float> %i.ec, %i.eg
  %i.ei = load float, ptr %i.k, align 4, !tbaa !36
  %i.ej = fadd float %i.ef, %i.ei
  %.sroa.3.12.vec.insert.i4.i59 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ej, i64 0
  store <2 x float> %i.eh, ptr %2, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i4.i59, ptr %.sroa.46.0..sroa_idx, align 4, !tbaa !32
  %i.ek = load float, ptr %i.o, align 4, !tbaa !36
  %i.el = load float, ptr %i.p, align 4, !tbaa !36
  %i.em = load <2 x float>, ptr %i.i, align 4, !tbaa !36 ; 2 uses
  %i.en = load float, ptr %i.bc, align 4, !tbaa !36 ; 2 uses
  %i.eo = load float, ptr %3, align 4, !tbaa !36  ; 2 uses
  %i.ep = load float, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !36 ; 2 uses
  %i.eq = load <2 x float>, ptr %i.l, align 4, !tbaa !36 ; 2 uses
  %13 = insertelement <2 x float> poison, float %i.en, i64 0
  %14 = shufflevector <2 x float> %13, <2 x float> poison, <2 x i32> zeroinitializer
  %15 = shufflevector <2 x float> %i.em, <2 x float> %i.eq, <2 x i32> <i32 1, i32 3>
  %16 = fmul <2 x float> %14, %15
  %17 = shufflevector <2 x float> %i.em, <2 x float> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.er = insertelement <2 x float> poison, float %i.eo, i64 0
  %18 = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %17, <2 x float> %18, <2 x float> %16)
  %i.et = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.eu = insertelement <2 x float> %i.et, float %i.el, i64 1
  %i.ev = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.ew, <2 x float> %i.es)
  %i.ey = load float, ptr %i.m, align 4, !tbaa !36
  %i.ez = load float, ptr %i.n, align 4, !tbaa !36
  %i.fa = fmul float %i.en, %i.ez
  %i.fb = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.eo, float %i.fa)
  %i.fc = load float, ptr %i.q, align 4, !tbaa !36
  %i.fd = tail call noundef float @llvm.fmuladd.f32(float %i.fc, float %i.ep, float %i.fb)
  %.sroa.3.12.vec.insert.i64 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fd, i64 0
  store <2 x float> %i.ex, ptr %3, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i64, ptr %.sroa.49.0..sroa_idx, align 4, !tbaa !32
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  ret i1 %i.bi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN29btSphereBoxCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #9 align 2 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef float @_ZN29btSphereBoxCollisionAlgorithm20getSpherePenetrationERK9btVector3S2_RS0_S3_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(33) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %4) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !36   ; 2 uses
  %i.b = load float, ptr %2, align 4, !tbaa !36
  %i.c = fsub float %i.a, %i.b                    ; 2 uses
  store float %i.a, ptr %3, align 4, !tbaa !36
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 4, !tbaa !36
  %i.d = load float, ptr %1, align 4, !tbaa !36
  %i.e = load float, ptr %2, align 4, !tbaa !36
  %i.f = fadd float %i.d, %i.e                    ; 2 uses
  %i.g = fcmp olt float %i.f, %i.c
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !33
  %i.h = load float, ptr %1, align 4, !tbaa !36
  %i.i = fneg float %i.h
  store float %i.i, ptr %3, align 4, !tbaa !36
  store <4 x float> <float -1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 4, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ %i.f, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !36 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !36 ; 2 uses
  %i.n = fsub float %i.k, %i.m                    ; 2 uses
  %i.o = fcmp olt float %i.n, %.0
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !33
  %i.p = load float, ptr %i.j, align 4, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.p, ptr %i.q, align 4, !tbaa !36
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 4, !tbaa !36
  %.pre = load float, ptr %i.j, align 4, !tbaa !36
  %.pre80 = load float, ptr %i.l, align 4, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = phi float [ %.pre80, %bb.d ], [ %i.m, %bb.c ]
  %i.s = phi float [ %.pre, %bb.d ], [ %i.k, %bb.c ]
  %.1 = phi float [ %i.n, %bb.d ], [ %.0, %bb.c ] ; 2 uses
  %i.t = fadd float %i.s, %i.r                    ; 2 uses
  %i.u = fcmp olt float %i.t, %.1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !33
  %i.v = load float, ptr %i.j, align 4, !tbaa !36
  %i.w = fneg float %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.w, ptr %i.x, align 4, !tbaa !36
  store <4 x float> <float 0.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2 = phi float [ %i.t, %bb.f ], [ %.1, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.z = load float, ptr %i.y, align 4, !tbaa !36 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !36 ; 2 uses
  %i.ac = fsub float %i.z, %i.ab                  ; 2 uses
  %i.ad = fcmp olt float %i.ac, %.2
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !33
  %i.ae = load float, ptr %i.y, align 4, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.ae, ptr %i.af, align 4, !tbaa !36
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %4, align 4, !tbaa !36
  %.pre81 = load float, ptr %i.y, align 4, !tbaa !36
  %.pre82 = load float, ptr %i.aa, align 4, !tbaa !36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = phi float [ %.pre82, %bb.h ], [ %i.ab, %bb.g ]
  %i.ah = phi float [ %.pre81, %bb.h ], [ %i.z, %bb.g ]
  %.3 = phi float [ %i.ac, %bb.h ], [ %.2, %bb.g ] ; 2 uses
  %i.ai = fadd float %i.ah, %i.ag                 ; 2 uses
  %i.aj = fcmp olt float %i.ai, %.3
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !33
  %i.ak = load float, ptr %i.y, align 4, !tbaa !36
  %i.al = fneg float %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.al, ptr %i.am, align 4, !tbaa !36
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float -1.000000e+00, float 0.000000e+00>, ptr %4, align 4, !tbaa !36
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.4 = phi float [ %i.ai, %bb.j ], [ %.3, %bb.i ]
  ret float %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN29btSphereBoxCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !28
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !57   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !58
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.k = shl nsw i32 %i.g, 1
  %i.l = select i1 %.not.i.i, i32 1, i32 %i.k     ; 4 uses
  %i.m = icmp slt i32 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !57
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ] ; 8 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !59   ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %.0.i.i.i8 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.v = sub i64 %i.u, %.0.i.i.i8
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond10 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond10, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !60
  %wide.load9 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !60
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x ptr> %wide.load, ptr %i.w, align 8, !tbaa !60
  store <2 x ptr> %wide.load9, ptr %i.z, align 8, !tbaa !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
end_hunk_0
