Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/noise?download=true
inline.NumInlined: 150
inline.NumDeleted: 63
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z14NoiseFractal2DPK11NoiseParamsffi:bb.a
  %i.o = icmp ne i32 %i.n, 0                      ; 2 uses
  %i.p = and i32 %.fr36, 4
  %.not = icmp eq i32 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.r = load <2 x float>, ptr %i.q, align 4, !tbaa !27 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.02734.us = phi i64 [ %i.ad, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %.03031.us = phi float [ %i.ab, %.lr.ph.split.us ], [ 0.000000e+00, %.lr.ph ]
  %i.s = phi <2 x float> [ %i.ac, %.lr.ph.split.us ], [ splat (float 1.000000e+00), %.lr.ph ] ; 3 uses
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.u = fmul nsz <2 x float> %i.e, %i.t          ; 2 uses
  %i.v = trunc nuw nsw i64 %.02734.us to i32
  %i.w = add i32 %i.h, %i.v
  %i.x = extractelement <2 x float> %i.u, i64 0
  %i.y = extractelement <2 x float> %i.u, i64 1
  %i.z = tail call nsz noundef float @_Z13noise2d_valueffib(float noundef %i.x, float noundef %i.y, i32 noundef %i.w, i1 noundef zeroext %i.o)
  %i.aa = extractelement <2 x float> %i.s, i64 0
  %i.ab = tail call nsz float @llvm.fmuladd.f32(float %i.aa, float %i.z, float %.03031.us) ; 2 uses
  %i.ac = fmul nsz <2 x float> %i.s, %i.r
  %i.ad = add nuw nsw i64 %.02734.us, 1           ; 2 uses
  %exitcond39.not = icmp eq i64 %i.ad, %i.k
  br i1 %exitcond39.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !72

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %.030.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ab, %.lr.ph.split.us ], [ %i.as, %.lr.ph.split ]
  %i.ae = load float, ptr %0, align 4, !tbaa !34
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !35
  %i.ah = tail call nsz float @llvm.fmuladd.f32(float %.030.lcssa, float %i.ag, float %i.ae)
  ret float %i.ah

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.02734 = phi i64 [ %i.au, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %.03031 = phi float [ %i.as, %.lr.ph.split ], [ 0.000000e+00, %.lr.ph ]
  %i.ai = phi <2 x float> [ %i.at, %.lr.ph.split ], [ splat (float 1.000000e+00), %.lr.ph ] ; 3 uses
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fmul nsz <2 x float> %i.e, %i.aj        ; 2 uses
  %i.al = trunc nuw nsw i64 %.02734 to i32
  %i.am = add i32 %i.h, %i.al
  %i.an = extractelement <2 x float> %i.ak, i64 0
  %i.ao = extractelement <2 x float> %i.ak, i64 1
  %i.ap = tail call nsz noundef float @_Z13noise2d_valueffib(float noundef %i.an, float noundef %i.ao, i32 noundef %i.am, i1 noundef zeroext %i.o)
  %i.aq = tail call nsz float @llvm.fabs.f32(float %i.ap)
  %i.ar = extractelement <2 x float> %i.ai, i64 0
  %i.as = tail call nsz float @llvm.fmuladd.f32(float %i.ar, float %i.aq, float %.03031) ; 2 uses
  %i.at = fmul nsz <2 x float> %i.ai, %i.r
  %i.au = add nuw nsw i64 %.02734, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %i.k
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !72
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, float noundef %3, i32 noundef %4) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !74
  %i.c = fdiv nsz float %1, %i.b                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load <2 x float>, ptr %i.d, align 4, !tbaa !27
  %i.f = insertelement <2 x float> poison, float %2, i64 0
  %i.g = insertelement <2 x float> %i.f, float %3, i64 1
  %i.h = fdiv nsz <2 x float> %i.g, %i.e          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !31
  %i.k = add nsw i32 %i.j, %4                     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i16, ptr %i.l, align 4, !tbaa !32   ; 2 uses
  %i.n = zext i16 %i.m to i64                     ; 2 uses
  %.not39 = icmp eq i16 %i.m, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.p = load i32, ptr %i.o, align 4, !tbaa !33
  %.fr40 = freeze i32 %i.p                        ; 2 uses
  %i.q = and i32 %.fr40, 2
  %i.r = icmp ne i32 %i.q, 0                      ; 2 uses
  %i.s = and i32 %.fr40, 4
  %.not = icmp eq i32 %i.s, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load <2 x float>, ptr %i.t, align 4, !tbaa !27 ; 2 uses
  br i1 %.not, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %.03138.us = phi i64 [ %i.ai, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %.03435.us = phi float [ %i.ag, %.lr.ph.split.us ], [ 0.000000e+00, %.lr.ph ]
  %i.v = phi <2 x float> [ %i.ah, %.lr.ph.split.us ], [ splat (float 1.000000e+00), %.lr.ph ] ; 4 uses
  %i.w = extractelement <2 x float> %i.v, i64 1
  %i.x = fmul nsz float %i.c, %i.w
  %i.y = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.z = fmul nsz <2 x float> %i.h, %i.y          ; 2 uses
  %i.aa = trunc nuw nsw i64 %.03138.us to i32
  %i.ab = add i32 %i.k, %i.aa
  %i.ac = extractelement <2 x float> %i.z, i64 0
  %i.ad = extractelement <2 x float> %i.z, i64 1
  %i.ae = tail call nsz noundef float @_Z13noise3d_valuefffib(float noundef %i.x, float noundef %i.ac, float noundef %i.ad, i32 noundef %i.ab, i1 noundef zeroext %i.r)
  %i.af = extractelement <2 x float> %i.v, i64 0
  %i.ag = tail call nsz float @llvm.fmuladd.f32(float %i.af, float %i.ae, float %.03435.us) ; 2 uses
  %i.ah = fmul nsz <2 x float> %i.v, %i.u
  %i.ai = add nuw nsw i64 %.03138.us, 1           ; 2 uses
  %exitcond43.not = icmp eq i64 %i.ai, %i.n
  br i1 %exitcond43.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.us, %bb.a
  %.034.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.ag, %.lr.ph.split.us ], [ %i.az, %.lr.ph.split ]
  %i.aj = load float, ptr %0, align 4, !tbaa !34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !35
  %i.am = tail call nsz float @llvm.fmuladd.f32(float %.034.lcssa, float %i.al, float %i.aj)
  ret float %i.am

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %.03138 = phi i64 [ %i.bb, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %.03435 = phi float [ %i.az, %.lr.ph.split ], [ 0.000000e+00, %.lr.ph ]
  %i.an = phi <2 x float> [ %i.ba, %.lr.ph.split ], [ splat (float 1.000000e+00), %.lr.ph ] ; 4 uses
  %i.ao = extractelement <2 x float> %i.an, i64 1
  %i.ap = fmul nsz float %i.c, %i.ao
  %i.aq = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ar = fmul nsz <2 x float> %i.h, %i.aq        ; 2 uses
  %i.as = trunc nuw nsw i64 %.03138 to i32
  %i.at = add i32 %i.k, %i.as
  %i.au = extractelement <2 x float> %i.ar, i64 0
  %i.av = extractelement <2 x float> %i.ar, i64 1
  %i.aw = tail call nsz noundef float @_Z13noise3d_valuefffib(float noundef %i.ap, float noundef %i.au, float noundef %i.av, i32 noundef %i.at, i1 noundef zeroext %i.r)
  %i.ax = tail call nsz float @llvm.fabs.f32(float %i.aw)
  %i.ay = extractelement <2 x float> %i.an, i64 0
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.ax, float %.03435) ; 2 uses
  %i.ba = fmul nsz <2 x float> %i.an, %i.u
  %i.bb = add nuw nsw i64 %.03138, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !73
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5NoiseC2EPK11NoiseParamsijjj(ptr noundef nonnull align 8 dereferenceable(88) initializes((0, 88)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #4 align 2 {
bb.a:
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 2.500000e+02, float 2.500000e+02>, ptr %0, align 8, !tbaa !27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 2.500000e+02, ptr %i.a, align 8, !tbaa !75
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 12345, ptr %i.b, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i16 3, ptr %i.c, align 8, !tbaa !32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> <float 6.000000e-01, float 2.000000e+00>, ptr %i.d, align 4, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.e, align 4, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, i8 0, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 4 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !76
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %2, ptr %i.g, align 8, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %3, ptr %i.h, align 4, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %4, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %5, ptr %i.j, align 4, !tbaa !43
  tail call void @_ZN5Noise12allocBuffersEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Noise12allocBuffersEv(ptr noundef nonnull align 8 dereferenceable(88) initializes((56, 64)) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !42
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.d, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !43   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %i.g, align 4, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr null, ptr %i.j, align 8, !tbaa !44
  %i.k = icmp ugt i32 %i.h, 1
  tail call void @_ZN5Noise14resizeNoiseBufEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !46   ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #28
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = load i32, ptr %i.a, align 4, !tbaa !41
  %i.v = load i32, ptr %i.d, align 8, !tbaa !42
  %i.w = mul i32 %i.v, %i.u
  %i.x = load i32, ptr %i.g, align 4, !tbaa !43
  %i.y = mul i32 %i.w, %i.x
  %i.z = zext i32 %i.y to i64
  store ptr null, ptr %i.o, align 8, !tbaa !46
  %i.aa = shl nuw nsw i64 %i.z, 2                 ; 2 uses
  %i.ab = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #30
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  store ptr %i.ab, ptr %i.l, align 8, !tbaa !45
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aa) #30
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !47
  ret void

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.ae = extractvalue { ptr, i32 } %i.ad, 1
  %i.af = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #26
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.ah = extractvalue { ptr, i32 } %i.ad, 0
  %i.ai = tail call ptr @__cxa_begin_catch(ptr %i.ah) #26 ; 0 uses
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 40) #26 ; 3 uses
  invoke void @_ZN27InvalidNoiseParamsExceptionC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.aj)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTI27InvalidNoiseParamsException, ptr nonnull @_ZN13BaseExceptionD2Ev) #27
          to label %bb.x unwind label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.aj) #26
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.al, %bb.t ], [ %i.ak, %bb.s ]
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u, %bb.p
  %.merged = phi { ptr, i32 } [ %i.ad, %bb.p ], [ %.pn, %bb.u ]
  resume { ptr, i32 } %.merged

bb.w:                                             ; preds = %bb.u
  %i.am = landingpad { ptr, i32 }
          catch ptr null
  %i.an = extractvalue { ptr, i32 } %i.am, 0
  tail call void @__clang_call_terminate(ptr %i.an) #29
  unreachable

bb.x:                                             ; preds = %bb.r
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5NoiseD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(88) dereferenceable(88) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.b) #28
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: uwtable
define dso_local void @_ZN5Noise14resizeNoiseBufEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) local_unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load float, ptr %i.c, align 8, !tbaa !79 ; 3 uses
  %i.e = fcmp nsz ogt float %i.d, 1.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = fpext nsz float %i.d to double
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i16, ptr %i.g, align 8, !tbaa !48
  %i.i = zext i16 %i.h to i32
  %i.j = add nsw i32 %i.i, -1
  %i.k = sitofp nsz i32 %i.j to double
  %i.l = tail call nsz double @llvm.pow.f64(double %i.f, double %i.k)
  %i.m = fptrunc nsz double %i.l to float
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.n = phi float [ %i.m, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load <2 x float>, ptr %i.p, align 8, !tbaa !27 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.s = load i32, ptr %i.r, align 4, !tbaa !43
  %i.t = uitofp nsz i32 %i.s to float
  %i.u = fmul nsz float %i.n, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load float, ptr %i.v, align 8, !tbaa !80 ; 2 uses
  %i.x = fdiv nsz float %i.u, %i.w                ; 2 uses
  %i.y = load <2 x i32>, ptr %i.o, align 4, !tbaa !36
  %i.z = uitofp <2 x i32> %i.y to <2 x float>
  %i.aa = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ab = shufflevector <2 x float> %i.aa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ac = fmul nsz <2 x float> %i.ab, %i.z
  %i.ad = fdiv nsz <2 x float> %i.ac, %i.q        ; 3 uses
  %i.ae = fcmp nsz ogt <2 x float> %i.ad, splat (float 1.000000e+09) ; 2 uses
  %i.af = extractelement <2 x i1> %i.ae, i64 0
  %i.ag = extractelement <2 x i1> %i.ae, i64 1
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  %i.ah = fcmp nsz ogt float %i.x, 1.000000e+09
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ah
  br i1 %or.cond3, label %bb.d, label %bb.g

end_hunk_0
