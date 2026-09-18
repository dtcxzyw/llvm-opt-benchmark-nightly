Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btSliderConstraint?download=true
inline.NumInlined: 416
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN18btSliderConstraint8getInfo1EPN17btTypedConstraint17btConstraintInfo1E:bb.a
  store i8 1, ptr %i.ax, align 8, !tbaa !44
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread

_ZN18btSliderConstraint13testLinLimitsEv.exit.thread: ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread.sink.split, %_ZN18btSliderConstraint13testLinLimitsEv.exit
  %i.bm = load <2 x i32>, ptr %1, align 4, !tbaa !65
  %i.bn = add nsw <2 x i32> %i.bm, <i32 1, i32 -1>
  store <2 x i32> %i.bn, ptr %1, align 4, !tbaa !65
  br label %bb.h

bb.h:                                             ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit.thread, %_ZN18btSliderConstraint13testLinLimitsEv.exit
  %i.bo = load i8, ptr %i.l, align 1, !tbaa !40, !range !30, !noundef !26
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !48, !range !30, !noundef !26
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bt = load i32, ptr %1, align 4, !tbaa !37
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %1, align 4, !tbaa !37
  %i.bv = load i32, ptr %i.d, align 4, !tbaa !38
  %i.bw = add nsw i32 %i.bv, -1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.j
  %.sink = phi i32 [ %i.bw, %bb.j ], [ 0, %bb.b ]
  store i32 %.sink, ptr %i.d, align 4, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraint13testAngLimitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1152) initializes((321, 322), (1112, 1116)) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  store float 0.000000e+00, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 2 uses
  store i8 0, ptr %i.b, align 1, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !41 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.f = load float, ptr %i.e, align 4, !tbaa !42 ; 2 uses
  %i.g = fcmp ugt float %i.d, %i.f
  br i1 %i.g, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.k = load float, ptr %i.h, align 4, !tbaa !10
  %i.l = load float, ptr %i.i, align 4, !tbaa !10
  %i.m = load float, ptr %i.j, align 4, !tbaa !10
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.q = load float, ptr %i.n, align 8, !tbaa !10
  %i.r = load float, ptr %i.o, align 8, !tbaa !10
  %i.s = load float, ptr %i.p, align 8, !tbaa !10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 916
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 932
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 948
  %i.w = load float, ptr %i.t, align 4, !tbaa !10 ; 2 uses
  %i.x = load float, ptr %i.u, align 4, !tbaa !10 ; 2 uses
  %i.y = load float, ptr %i.v, align 4, !tbaa !10 ; 2 uses
  %i.z = fmul float %i.r, %i.x
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.w, float %i.q, float %i.z)
  %i.ab = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.s, float %i.aa)
  %i.ac = fmul float %i.l, %i.x
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.w, float %i.k, float %i.ac)
  %i.ae = tail call noundef float @llvm.fmuladd.f32(float %i.y, float %i.m, float %i.ad)
  %i.af = tail call noundef float @atan2f(float noundef %i.ab, float noundef %i.ae) #18
  %i.ag = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.af, float noundef %i.d, float noundef %i.f) ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1108
  store float %i.ag, ptr %i.ah, align 4, !tbaa !43
  %i.ai = load float, ptr %i.c, align 8, !tbaa !41 ; 2 uses
  %i.aj = fcmp olt float %i.ag, %i.ai
  br i1 %i.aj, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load float, ptr %i.e, align 4, !tbaa !42 ; 2 uses
  %i.al = fcmp ogt float %i.ag, %i.ak
  br i1 %i.al, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  %.sink32 = phi float [ %i.ai, %bb.b ], [ %i.ak, %bb.c ]
  %i.am = fsub float %i.ag, %.sink32
  store float %i.am, ptr %i.a, align 8, !tbaa !39
  store i8 1, ptr %i.b, align 1, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN18btSliderConstraint13testLinLimitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1152) initializes((320, 321), (1104, 1108)) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  store i8 0, ptr %i.a, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 5 uses
  %i.c = load float, ptr %i.b, align 8, !tbaa !10 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store float %i.c, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.f = load float, ptr %i.e, align 8, !tbaa !46 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.h = load float, ptr %i.g, align 4, !tbaa !47 ; 3 uses
  %i.i = fcmp ugt float %i.f, %i.h
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp ogt float %i.c, %i.h
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = fsub float %i.c, %i.h
  store float %i.k, ptr %i.b, align 8, !tbaa !10
  store i8 1, ptr %i.a, align 8, !tbaa !44
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.l = fcmp olt float %i.c, %i.f
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = fsub float %i.c, %i.f
  store float %i.m, ptr %i.b, align 8, !tbaa !10
  store i8 1, ptr %i.a, align 8, !tbaa !44
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !10
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %i.b, align 8, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1152) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #6 align 2 {
bb.a:
  store i32 6, ptr %1, align 4, !tbaa !37
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !38
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25, !nonnull !26, !align !27 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28, !nonnull !26, !align !27 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 420
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 420
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 452
  %i.j = load float, ptr %i.i, align 4, !tbaa !78
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 452
  %i.l = load float, ptr %i.k, align 4, !tbaa !78
  tail call void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, float noundef %i.j, float noundef %i.l)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1152) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, float noundef %6, float noundef %7) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !81   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.f = load i8, ptr %i.e, align 4, !tbaa !29, !range !30, !noundef !26
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = select i1 %i.g, float 1.000000e+00, float -1.000000e+00 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 964
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.m = load <3 x float>, ptr %i.i, align 8, !tbaa !10
  %i.n = load <3 x float>, ptr %i.j, align 8, !tbaa !10
  %i.o = fsub <3 x float> %i.m, %i.n              ; 3 uses
  %i.p = fcmp olt float %6, f0x34000000
  %i.q = fcmp olt float %7, f0x34000000
  %i.r = or i1 %i.p, %i.q                         ; 2 uses
  %i.s = fadd float %6, %7                        ; 2 uses
  %i.t = fcmp ogt float %i.s, 0.000000e+00
  %i.u = fdiv float %7, %i.s
  %storemerge = select i1 %i.t, float %i.u, float 5.000000e-01 ; 14 uses
  %i.v = fsub float 1.000000e+00, %storemerge     ; 14 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.y = load float, ptr %i.a, align 8, !tbaa !10 ; 4 uses
  %i.z = load float, ptr %i.w, align 8, !tbaa !10 ; 4 uses
  %i.aa = load float, ptr %i.x, align 8, !tbaa !10 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.ad = load float, ptr %i.b, align 8, !tbaa !10 ; 3 uses
  %i.ae = load float, ptr %i.ab, align 8, !tbaa !10 ; 3 uses
  %i.af = load float, ptr %i.ac, align 8, !tbaa !10 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !24, !range !30, !noundef !26
  %i.ai = trunc nuw i8 %i.ah to i1                ; 3 uses
  br i1 %i.ai, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.aj = fmul float %storemerge, %i.y
  %i.ak = fmul float %storemerge, %i.z
  %i.al = fmul float %storemerge, %i.aa
  %i.am = fmul float %i.v, %i.ad
  %i.an = fmul float %i.v, %i.ae
  %i.ao = fmul float %i.v, %i.af
  %i.ap = fadd float %i.aj, %i.am                 ; 3 uses
  %i.aq = fadd float %i.ak, %i.an                 ; 3 uses
  %i.ar = fadd float %i.al, %i.ao                 ; 3 uses
  %i.as = fmul float %i.aq, %i.aq
  %i.at = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.as)
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %i.at)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.au)
  %i.av = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.aw = fmul float %i.ap, %i.av                 ; 6 uses
  %i.ax = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.ay = fmul float %i.aq, %i.av                 ; 7 uses
  %.sroa.0822.4.vec.insert = insertelement <2 x float> %i.ax, float %i.ay, i64 1
  %i.az = fmul float %i.ar, %i.av                 ; 7 uses
  %.sroa.49.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.az, i64 0
  %i.ba = tail call noundef float @llvm.fabs.f32(float %i.az)
  %i.bb = fcmp ogt float %i.ba, f0x3F3504F3
  br i1 %i.bb, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bc = fmul nnan float %i.az, %i.az
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.bc) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.bd)
  %i.be = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %i.bf = fneg float %i.az
  %i.bg = fmul float %i.be, %i.bf                 ; 2 uses
  %.sroa.01139.4.vec.insert1157 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.bg, i64 1
  %i.bh = fmul float %i.ay, %i.be                 ; 2 uses
  %.sroa.25.8.vec.insert1174 = insertelement <2 x float> <float poison, float undef>, float %i.bh, i64 0
  %i.bi = fmul float %i.bd, %i.be
  %.sroa.01104.0.vec.insert1106 = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bj = fneg float %i.aw
  %i.bk = fmul float %i.bh, %i.bj
  %.sroa.01104.4.vec.insert1118 = insertelement <2 x float> %.sroa.01104.0.vec.insert1106, float %i.bk, i64 1
  %i.bl = fmul float %i.aw, %i.bg
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

bb.d:                                             ; preds = %bb.b
  %i.bm = fmul float %i.ay, %i.ay
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.aw, float %i.bm) ; 2 uses
  %sqrt43.i = tail call float @llvm.sqrt.f32(float %i.bn)
  %i.bo = fdiv float 1.000000e+00, %sqrt43.i      ; 3 uses
  %i.bp = fneg float %i.ay
  %i.bq = fmul float %i.bo, %i.bp                 ; 2 uses
  %.sroa.01139.0.vec.insert = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.br = fmul float %i.aw, %i.bo                 ; 2 uses
  %.sroa.01139.4.vec.insert = insertelement <2 x float> %.sroa.01139.0.vec.insert, float %i.br, i64 1
  %i.bs = fneg float %i.az
  %i.bt = fmul float %i.br, %i.bs
  %.sroa.01104.0.vec.insert = insertelement <2 x float> poison, float %i.bt, i64 0
  %i.bu = fmul float %i.az, %i.bq
  %.sroa.01104.4.vec.insert = insertelement <2 x float> %.sroa.01104.0.vec.insert, float %i.bu, i64 1
  %i.bv = fmul float %i.bn, %i.bo
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit:   ; preds = %bb.c, %bb.d
  %.sroa.25.0 = phi <2 x float> [ %.sroa.25.8.vec.insert1174, %bb.c ], [ <float 0.000000e+00, float undef>, %bb.d ]
  %.sroa.01139.0 = phi <2 x float> [ %.sroa.01139.4.vec.insert1157, %bb.c ], [ %.sroa.01139.4.vec.insert, %bb.d ]
  %.sroa.01104.0 = phi <2 x float> [ %.sroa.01104.4.vec.insert1118, %bb.c ], [ %.sroa.01104.4.vec.insert, %bb.d ]
  %.sink.i = phi float [ %i.bl, %bb.c ], [ %i.bv, %bb.d ]
  %.sroa.20.8.vec.insert = insertelement <2 x float> <float poison, float undef>, float %.sink.i, i64 0
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %.sroa.3.12.vec.insert.i450 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aa, i64 0
  %.sroa.0.0.vec.insert.i448 = insertelement <2 x float> poison, float %i.y, i64 0
  %.sroa.0.4.vec.insert.i449 = insertelement <2 x float> %.sroa.0.0.vec.insert.i448, float %i.z, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.bz = load float, ptr %i.bw, align 4, !tbaa !10
  %.sroa.0.0.vec.insert.i478 = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.ca = load float, ptr %i.bx, align 4, !tbaa !10
  %.sroa.0.4.vec.insert.i479 = insertelement <2 x float> %.sroa.0.0.vec.insert.i478, float %i.ca, i64 1
  %i.cb = load float, ptr %i.by, align 4, !tbaa !10
  %.sroa.3.12.vec.insert.i480 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cb, i64 0
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.cf = load float, ptr %i.cc, align 8, !tbaa !10
  %.sroa.0.0.vec.insert.i483 = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.cg = load float, ptr %i.cd, align 8, !tbaa !10
  %.sroa.0.4.vec.insert.i484 = insertelement <2 x float> %.sroa.0.0.vec.insert.i483, float %i.cg, i64 1
  %i.ch = load float, ptr %i.ce, align 8, !tbaa !10
  %.sroa.3.12.vec.insert.i485 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ch, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  %.sroa.25.1 = phi <2 x float> [ %.sroa.25.0, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.3.12.vec.insert.i480, %bb.e ] ; 4 uses
  %.sroa.01139.1 = phi <2 x float> [ %.sroa.01139.0, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.0.4.vec.insert.i479, %bb.e ] ; 8 uses
  %.sroa.20.0 = phi <2 x float> [ %.sroa.20.8.vec.insert, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.3.12.vec.insert.i485, %bb.e ] ; 5 uses
  %.sroa.01104.1 = phi <2 x float> [ %.sroa.01104.0, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.0.4.vec.insert.i484, %bb.e ] ; 8 uses
  %.sroa.0822.0 = phi <2 x float> [ %.sroa.0822.4.vec.insert, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.0.4.vec.insert.i449, %bb.e ] ; 13 uses
  %.sroa.49.0 = phi <2 x float> [ %.sroa.49.8.vec.insert, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit ], [ %.sroa.3.12.vec.insert.i450, %bb.e ] ; 6 uses
  %.sroa.01139.0.vec.extract = extractelement <2 x float> %.sroa.01139.1, i64 0
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !82 ; 15 uses
  %.sroa.01139.4.vec.extract = extractelement <2 x float> %.sroa.01139.1, i64 1 ; 2 uses
  store <2 x float> %.sroa.01139.1, ptr %i.cj, align 4, !tbaa !10
  %.sroa.25.8.vec.extract = extractelement <2 x float> %.sroa.25.1, i64 0 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store float %.sroa.25.8.vec.extract, ptr %i.ck, align 4, !tbaa !10
  %.sroa.01104.0.vec.extract = extractelement <2 x float> %.sroa.01104.1, i64 0 ; 2 uses
  %i.cl = sext i32 %i.d to i64                    ; 4 uses
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cl
  store float %.sroa.01104.0.vec.extract, ptr %i.cm, align 4, !tbaa !10
  %.sroa.01104.4.vec.extract = extractelement <2 x float> %.sroa.01104.1, i64 1 ; 2 uses
  %i.cn = add nsw i32 %i.d, 1
  %i.co = sext i32 %i.cn to i64                   ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.co
  store float %.sroa.01104.4.vec.extract, ptr %i.cp, align 4, !tbaa !10
  %.sroa.20.8.vec.extract = extractelement <2 x float> %.sroa.20.0, i64 0 ; 2 uses
  %i.cq = add nsw i32 %i.d, 2
  %i.cr = sext i32 %i.cq to i64                   ; 2 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.cr
  store float %.sroa.20.8.vec.extract, ptr %i.cs, align 4, !tbaa !10
  %i.ct = fneg float %.sroa.01139.0.vec.extract   ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !83 ; 18 uses
  store float %i.ct, ptr %i.cv, align 4, !tbaa !10
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4
  %i.cx = fneg float %.sroa.25.8.vec.extract      ; 3 uses
  %i.cy = fneg float %.sroa.01139.4.vec.extract   ; 3 uses
  store float %i.cy, ptr %i.cw, align 4, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store float %i.cx, ptr %i.cz, align 4, !tbaa !10
  %i.da = fneg float %.sroa.01104.0.vec.extract   ; 3 uses
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cl
  store float %i.da, ptr %i.db, align 4, !tbaa !10
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.co
  %i.dd = shufflevector <2 x float> %.sroa.01104.1, <2 x float> %.sroa.20.0, <2 x i32> <i32 1, i32 2>
  %i.de = fneg <2 x float> %i.dd                  ; 4 uses
  %i.df = extractelement <2 x float> %i.de, i64 0
  store float %i.df, ptr %i.dc, align 4, !tbaa !10
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.cr
  %i.dh = extractelement <2 x float> %i.de, i64 1
  store float %i.dh, ptr %i.dg, align 4, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 4 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !23 ; 6 uses
  %i.dk = and i32 %i.dj, 128
  %.not = icmp eq i32 %i.dk, 0
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !49 ; 2 uses
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.do = load float, ptr %i.dn, align 4, !tbaa !84
  %i.dp = fmul float %i.dm, %i.do
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.dq = phi float [ %i.dp, %bb.g ], [ %i.dm, %bb.f ]
  %i.dr = load float, ptr %1, align 8, !tbaa !85
  %i.ds = fmul float %i.dq, %i.dr
  %i.dt = insertelement <3 x float> poison, float %i.ad, i64 0
  %i.du = insertelement <3 x float> %i.dt, float %i.ae, i64 1
  %i.dv = insertelement <3 x float> %i.du, float %i.af, i64 2
  %i.dw = fneg <3 x float> %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !86 ; 7 uses
  %i.dz = insertelement <3 x float> poison, float %i.z, i64 0
  %i.ea = insertelement <3 x float> %i.dz, float %i.aa, i64 1
  %i.eb = insertelement <3 x float> %i.ea, float %i.y, i64 2
  %i.ec = fmul <3 x float> %i.eb, %i.dw
  %i.ed = insertelement <3 x float> poison, float %i.y, i64 0
  %i.ee = insertelement <3 x float> %i.ed, float %i.z, i64 1
  %i.ef = insertelement <3 x float> %i.ee, float %i.aa, i64 2
  %i.eg = insertelement <3 x float> poison, float %i.ae, i64 0
  %i.eh = insertelement <3 x float> %i.eg, float %i.af, i64 1
  %i.ei = insertelement <3 x float> %i.eh, float %i.ad, i64 2
  %i.ej = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ef, <3 x float> %i.ei, <3 x float> %i.ec) ; 3 uses
  %i.ek = shufflevector <3 x float> %i.ej, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.el = shufflevector <2 x float> %.sroa.01139.1, <2 x float> %.sroa.01104.1, <2 x i32> <i32 1, i32 3>
  %i.em = fmul <2 x float> %i.ek, %i.el
  %i.en = shufflevector <3 x float> %i.ej, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.eo = shufflevector <2 x float> %.sroa.01139.1, <2 x float> %.sroa.01104.1, <2 x i32> <i32 0, i32 2>
  %i.ep = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.eo, <2 x float> %i.em)
  %i.eq = shufflevector <3 x float> %i.ej, <3 x float> poison, <2 x i32> zeroinitializer
  %i.er = shufflevector <2 x float> %.sroa.25.1, <2 x float> %.sroa.20.0, <2 x i32> <i32 0, i32 2>
  %i.es = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eq, <2 x float> %i.er, <2 x float> %i.ep)
  %i.et = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %i.es, %i.eu           ; 2 uses
  %i.ew = extractelement <2 x float> %i.ev, i64 0
  store float %i.ew, ptr %i.dy, align 4, !tbaa !10
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.cl
  %i.ey = extractelement <2 x float> %i.ev, i64 1
  store float %i.ey, ptr %i.ex, align 4, !tbaa !10
  %i.ez = and i32 %i.dj, 64
  %.not435 = icmp eq i32 %i.ez, 0
  br i1 %.not435, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 316
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !50 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !87 ; 2 uses
  store float %i.fb, ptr %i.fd, align 4, !tbaa !10
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.cl
  store float %i.fb, ptr %i.fe, align 4, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.5787.48.copyload = load float, ptr %i.ff, align 4 ; 2 uses
  %.sroa.8789.48..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.8.48..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.fh = load <2 x float>, ptr %.sroa.8789.48..sroa_idx, align 4 ; 2 uses
  %.sroa.5782.48.copyload = load float, ptr %i.fg, align 4 ; 2 uses
  %i.fi = load <2 x float>, ptr %.sroa.8.48..sroa_idx, align 4 ; 2 uses
  %i.fj = shl i32 %i.d, 1                         ; 3 uses
  %i.fk = mul i32 %i.d, 3                         ; 3 uses
  br i1 %i.ai, label %bb.k, label %.preheader1001.preheader

bb.k:                                             ; preds = %bb.j
  %.sroa.0822.0.vec.extract833 = extractelement <2 x float> %.sroa.0822.0, i64 0 ; 2 uses
  %.sroa.49.8.vec.extract917 = extractelement <2 x float> %.sroa.49.0, i64 0
  %i.fl = load float, ptr %i.j, align 8, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.fn = load float, ptr %i.fm, align 8, !tbaa !45
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !10
  %i.fq = fsub float %i.fn, %i.fp                 ; 2 uses
  %i.fr = load float, ptr %i.i, align 8, !tbaa !10
  %i.fs = load <2 x float>, ptr %i.l, align 4, !tbaa !10
  %i.ft = fsub <2 x float> %i.fs, %i.fh           ; 3 uses
  %i.fu = shufflevector <2 x float> %.sroa.0822.0, <2 x float> %.sroa.49.0, <2 x i32> <i32 1, i32 2> ; 4 uses
  %i.fv = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fx = fmul <2 x float> %i.fu, %i.fw
  %i.fy = fmul float %.sroa.0822.0.vec.extract833, %i.fq
  %i.fz = insertelement <2 x float> poison, float %storemerge, i64 0 ; 2 uses
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gb = load <2 x float>, ptr %i.k, align 4, !tbaa !10
  %i.gc = fsub <2 x float> %i.gb, %i.fi           ; 3 uses
  %8 = insertelement <2 x float> poison, float %i.v, i64 0 ; 2 uses
  %9 = shufflevector <2 x float> %8, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gd = insertelement <2 x float> poison, float %i.fl, i64 0
  %i.ge = insertelement <2 x float> %i.gd, float %i.fr, i64 1
  %i.gf = insertelement <2 x float> poison, float %.sroa.5787.48.copyload, i64 0
  %i.gg = insertelement <2 x float> %i.gf, float %.sroa.5782.48.copyload, i64 1
  %i.gh = fsub <2 x float> %i.ge, %i.gg           ; 2 uses
  %i.gi = shufflevector <2 x float> %.sroa.0822.0, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gj = shufflevector <2 x float> %i.ft, <2 x float> %i.gc, <2 x i32> <i32 0, i32 2>
  %i.gk = fmul <2 x float> %i.gi, %i.gj
  %i.gl = shufflevector <2 x float> %.sroa.0822.0, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gl, <2 x float> %i.gk)
  %i.gn = shufflevector <2 x float> %i.ft, <2 x float> %i.gc, <2 x i32> <i32 1, i32 3>
  %i.go = shufflevector <2 x float> %.sroa.49.0, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gn, <2 x float> %i.go, <2 x float> %i.gm) ; 3 uses
  %i.gq = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gr = fmul <2 x float> %i.fu, %i.gq           ; 2 uses
  %i.gs = fsub <2 x float> %i.ft, %i.gr           ; 3 uses
  %10 = fadd <2 x float> %i.gr, %i.fx
  %11 = fmul <2 x float> %i.gl, %i.gp             ; 3 uses
  %12 = extractelement <2 x float> %11, i64 0
  %i.gt = fadd float %12, %i.fy
  %i.gu = shufflevector <2 x float> %i.gp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = fmul <2 x float> %i.fu, %i.gu           ; 2 uses
  %i.gw = fsub <2 x float> %i.gc, %i.gv           ; 3 uses
  %13 = fsub <2 x float> %i.gh, %11               ; 3 uses
  %i.gx = fsub <2 x float> %10, %i.gv             ; 2 uses
  %14 = extractelement <2 x float> %11, i64 1
  %15 = fsub float %i.gt, %14
  %16 = fmul <2 x float> %i.ga, %i.gx
  %i.gy = fadd <2 x float> %i.gs, %16             ; 6 uses
  %17 = insertelement <2 x float> %i.fz, float %i.v, i64 1
  %i.gz = insertelement <2 x float> poison, float %15, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x float> %17, %i.ha             ; 2 uses
  %18 = fadd <2 x float> %13, %i.hb               ; 2 uses
  %i.hc = fsub <2 x float> %13, %i.hb             ; 3 uses
  %19 = shufflevector <2 x float> %18, <2 x float> %i.hc, <4 x i32> <i32 0, i32 0, i32 3, i32 3> ; 2 uses
  %20 = shufflevector <4 x float> %19, <4 x float> poison, <2 x i32> <i32 0, i32 2> ; 2 uses
  %21 = shufflevector <2 x float> %20, <2 x float> %i.gy, <2 x i32> <i32 0, i32 2>
  %22 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.gy, <2 x i32> <i32 3, i32 1>
  %23 = fmul <2 x float> %9, %i.gx
  %i.hd = fsub <2 x float> %i.gw, %23             ; 7 uses
  %24 = shufflevector <2 x float> %i.hc, <2 x float> %i.hd, <2 x i32> <i32 1, i32 2>
  %25 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.hd, <2 x i32> <i32 3, i32 1>
  %i.he = extractelement <2 x float> %i.gw, i64 0
  %26 = fmul float %storemerge, %i.he
  %27 = extractelement <2 x float> %i.gw, i64 1
  %28 = fmul float %storemerge, %27
  %i.hf = insertelement <2 x float> %8, float %storemerge, i64 1
  %i.hg = fmul <2 x float> %i.hf, %13
  %i.hh = extractelement <2 x float> %i.gs, i64 0
  %i.hi = fmul float %i.v, %i.hh
  %i.hj = extractelement <2 x float> %i.gs, i64 1
  %i.hk = fmul float %i.v, %i.hj
  %i.hl = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.hg) ; 3 uses
  %i.hm = fadd float %26, %i.hi                   ; 3 uses
  %i.hn = fadd float %28, %i.hk                   ; 3 uses
  %i.ho = fmul float %i.hm, %i.hm
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.hl, float %i.ho)
  %i.hq = tail call noundef float @llvm.fmuladd.f32(float %i.hn, float %i.hn, float %i.hp) ; 2 uses
  %i.hr = fcmp ogt float %i.hq, f0x34000000
  br i1 %i.hr, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %sqrt = tail call float @llvm.sqrt.f32(float %i.hq)
  %i.hs = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.ht = fmul float %i.hl, %i.hs
  %i.hu = insertelement <2 x float> poison, float %i.ht, i64 0
  %i.hv = fmul float %i.hm, %i.hs
  %.sroa.01139.4.vec.insert1162 = insertelement <2 x float> %i.hu, float %i.hv, i64 1
  %i.hw = fmul float %i.hn, %i.hs
  br label %.preheader995.preheader

bb.m:                                             ; preds = %bb.k
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.ia = load float, ptr %i.hx, align 4, !tbaa !10
  %.sroa.0.0.vec.insert.i573 = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.ib = load float, ptr %i.hy, align 4, !tbaa !10
  %.sroa.0.4.vec.insert.i574 = insertelement <2 x float> %.sroa.0.0.vec.insert.i573, float %i.ib, i64 1
  %i.ic = load float, ptr %i.hz, align 4, !tbaa !10
  br label %.preheader995.preheader

.preheader995.preheader:                          ; preds = %bb.m, %bb.l
  %.sink = phi float [ %i.ic, %bb.m ], [ %i.hw, %bb.l ] ; 5 uses
  %.sroa.01139.2 = phi <2 x float> [ %.sroa.0.4.vec.insert.i574, %bb.m ], [ %.sroa.01139.4.vec.insert1162, %bb.l ] ; 5 uses
  %.sroa.3.12.vec.insert.i575 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.sink, i64 0
  %.sroa.01139.0.vec.extract1148 = extractelement <2 x float> %.sroa.01139.2, i64 0
  %i.id = sext i32 %i.fj to i64                   ; 5 uses
  %i.ie = shl nsw i64 %i.id, 2                    ; 2 uses
  %scevgep1027 = getelementptr i8, ptr %i.cj, i64 %i.ie ; 2 uses
  %.sroa.15.0.scevgep1027.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep1027, i64 8
  %i.if = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.id
  %i.ig = add nsw i64 %i.id, 2                    ; 2 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ig
  %i.ii = fneg <2 x float> %.sroa.01139.2         ; 5 uses
  %i.ij = fneg float %.sink                       ; 4 uses
  %i.ik = fmul <2 x float> %i.fu, %i.ii
  %i.il = fmul float %.sroa.0822.0.vec.extract833, %i.ij
  %i.im = shufflevector <2 x float> %.sroa.01139.2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.in = insertelement <2 x float> %i.im, float %.sink, i64 1
  %i.io = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %.sroa.0822.0, <2 x float> %i.in, <2 x float> %i.ik) ; 6 uses
  %i.ip = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.iq = insertelement <2 x float> %i.io, float 0.000000e+00, i64 1
  %i.ir = extractelement <2 x float> %i.gy, i64 1 ; 2 uses
  %i.is = extractelement <2 x float> %i.ii, i64 1 ; 2 uses
  %i.it = extractelement <2 x float> %18, i64 0   ; 2 uses
  %i.iu = fmul float %i.it, %i.ij
  %i.iv = fmul float %i.ir, %i.is
  %i.iw = insertelement <2 x float> %i.im, float %.sink, i64 0 ; 2 uses
  %i.ix = insertelement <2 x float> poison, float %i.iv, i64 0
  %i.iy = insertelement <2 x float> %i.ix, float %i.iu, i64 1
  %i.iz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.iw, <2 x float> %i.iy)
  store <2 x float> %i.iz, ptr %scevgep1027, align 4, !tbaa !10
  %i.ja = extractelement <2 x float> %i.hc, i64 1
  %29 = fmul float %i.ja, %i.ij
  %foldExtExtBinop = fmul <2 x float> %i.hd, %i.ii
  %30 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %31 = insertelement <2 x float> %30, float %29, i64 1
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.iw, <2 x float> %31)
  %33 = fneg <2 x float> %32
  %i.jb = extractelement <2 x float> %i.io, i64 0 ; 2 uses
  %34 = extractelement <2 x float> %i.io, i64 1
  %35 = fneg float %i.jb                          ; 3 uses
  %36 = fmul float %i.it, %35
  %37 = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %38 = shufflevector <2 x float> %37, <2 x float> %20, <2 x i32> <i32 0, i32 3>
  %39 = tail call float @llvm.fmuladd.f32(float %.sroa.49.8.vec.extract917, float %.sroa.01139.0.vec.extract1148, float %i.il) ; 3 uses
  %i.jc = insertelement <2 x float> %i.ip, float %39, i64 1 ; 2 uses
  %40 = fneg float %34                            ; 2 uses
  %41 = shufflevector <2 x float> %i.gy, <2 x float> %i.hd, <4 x i32> <i32 0, i32 0, i32 2, i32 2>
  %42 = shufflevector <2 x float> %i.ii, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %43 = insertelement <4 x float> poison, float %40, i64 0
  %44 = shufflevector <4 x float> %43, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %45 = shufflevector <4 x float> %42, <4 x float> %44, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %46 = fmul <4 x float> %41, %45
  %47 = insertelement <2 x float> %i.im, float %39, i64 1
  %48 = shufflevector <2 x float> %47, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %49 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %19, <4 x float> %48, <4 x float> %46) ; 6 uses
  %50 = extractelement <4 x float> %49, i64 0
  store float %50, ptr %.sroa.15.0.scevgep1027.sroa_idx, align 4, !tbaa !10
  store <2 x float> %33, ptr %i.if, align 4, !tbaa !10
  %51 = extractelement <4 x float> %49, i64 2
  %52 = fneg float %51
  store float %52, ptr %i.ih, align 4, !tbaa !10
  %53 = shufflevector <4 x float> %49, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %54 = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %49, <2 x i32> <i32 5, i32 1> ; 3 uses
  %55 = fneg float %39                            ; 3 uses
  %56 = fmul float %i.ir, %55
  %i.jd = insertelement <2 x float> poison, float %56, i64 0
  %i.je = insertelement <2 x float> %i.jd, float %36, i64 1
  %57 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.io, <2 x float> %i.je) ; 3 uses
  %58 = insertelement <2 x float> poison, float %55, i64 0
  %59 = insertelement <2 x float> %58, float %35, i64 1
  %60 = fmul <2 x float> %38, %59
  %61 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hd, <2 x float> %i.io, <2 x float> %60) ; 3 uses
  %.sroa.3.12.vec.insert.i600 = insertelement <2 x float> %53, float 0.000000e+00, i64 1 ; 3 uses
  br i1 %i.r, label %bb.n, label %.preheader994.preheader

bb.n:                                             ; preds = %.preheader995.preheader
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 321
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !40, !range !30, !noundef !26
  %i.jh = trunc nuw i8 %i.jg to i1
  br i1 %i.jh, label %bb.o, label %.preheader994.preheader

bb.o:                                             ; preds = %bb.n
  %i.ji = fmul <2 x float> %9, %61
  %62 = extractelement <4 x float> %49, i64 3
  %i.jj = fmul float %i.v, %62
  %.sroa.17.8.vec.insert1077 = insertelement <2 x float> %.sroa.3.12.vec.insert.i600, float %i.jj, i64 0
  %i.jk = fmul <2 x float> %i.ga, %57
  %63 = extractelement <4 x float> %49, i64 1
  %i.jl = fmul float %storemerge, %63
  %.sroa.15.8.vec.insert1100 = insertelement <2 x float> %54, float %i.jl, i64 0
  br label %.preheader994.preheader

.preheader994.preheader:                          ; preds = %bb.o, %bb.n, %.preheader995.preheader
  %.sroa.15.0 = phi <2 x float> [ %.sroa.15.8.vec.insert1100, %bb.o ], [ %54, %bb.n ], [ %54, %.preheader995.preheader ]
  %.sroa.01085.0 = phi <2 x float> [ %i.jk, %bb.o ], [ %57, %bb.n ], [ %57, %.preheader995.preheader ]
  %.sroa.17.0 = phi <2 x float> [ %.sroa.17.8.vec.insert1077, %bb.o ], [ %.sroa.3.12.vec.insert.i600, %bb.n ], [ %.sroa.3.12.vec.insert.i600, %.preheader995.preheader ]
  %.sroa.01057.0 = phi <2 x float> [ %i.ji, %bb.o ], [ %61, %bb.n ], [ %61, %.preheader995.preheader ]
  %i.jm = sext i32 %i.fk to i64                   ; 5 uses
  %i.jn = shl nsw i64 %i.jm, 2                    ; 2 uses
  %scevgep1030 = getelementptr i8, ptr %i.cj, i64 %i.jn ; 2 uses
  store <2 x float> %.sroa.01085.0, ptr %scevgep1030, align 4, !tbaa !10
  %.sroa.15.0.scevgep1030.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep1030, i64 8
  %.sroa.15.0.vec.extract1098 = extractelement <2 x float> %.sroa.15.0, i64 0
  store float %.sroa.15.0.vec.extract1098, ptr %.sroa.15.0.scevgep1030.sroa_idx, align 4, !tbaa !10
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.jm
  %i.jp = fneg <2 x float> %.sroa.01057.0
  store <2 x float> %i.jp, ptr %i.jo, align 4, !tbaa !10
  %.sroa.17.8.vec.extract1084 = extractelement <2 x float> %.sroa.17.0, i64 0
  %i.jq = fneg float %.sroa.17.8.vec.extract1084
  %i.jr = add nsw i64 %i.jm, 2                    ; 2 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.jr
  store float %i.jq, ptr %i.js, align 4, !tbaa !10
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !88 ; 3 uses
  %scevgep1033 = getelementptr i8, ptr %i.ju, i64 %i.ie ; 2 uses
  store <2 x float> %.sroa.01139.2, ptr %scevgep1033, align 4, !tbaa !10
  %.sroa.25.0.scevgep1033.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep1033, i64 8
  store float %.sink, ptr %.sroa.25.0.scevgep1033.sroa_idx, align 4, !tbaa !10
  %scevgep1035 = getelementptr i8, ptr %i.ju, i64 %i.jn ; 2 uses
  store <2 x float> %i.jc, ptr %scevgep1035, align 4, !tbaa !10
  %.sroa.20.0.scevgep1035.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep1035, i64 8
  store float %i.jb, ptr %.sroa.20.0.scevgep1035.sroa_idx, align 4, !tbaa !10
  %i.jv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !89 ; 7 uses
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.id
  %64 = extractelement <2 x float> %i.ii, i64 0
  store float %64, ptr %i.jx, align 4, !tbaa !10
  %i.jy = getelementptr [4 x i8], ptr %i.jw, i64 %i.id
  %i.jz = getelementptr i8, ptr %i.jy, i64 4
  store float %i.is, ptr %i.jz, align 4, !tbaa !10
  %i.ka = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.ig
  store float %i.ij, ptr %i.ka, align 4, !tbaa !10
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.jm
  store float %40, ptr %i.kb, align 4, !tbaa !10
  %i.kc = getelementptr [4 x i8], ptr %i.jw, i64 %i.jm
  %i.kd = getelementptr i8, ptr %i.kc, i64 4
  store float %55, ptr %i.kd, align 4, !tbaa !10
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.jw, i64 %i.jr
  store float %35, ptr %i.ke, align 4, !tbaa !10
  br label %.loopexit

.preheader1001.preheader:                         ; preds = %bb.j
  %i.kf = sext i32 %i.fj to i64                   ; 6 uses
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.kf
  %i.kh = add nsw i64 %i.kf, 2                    ; 3 uses
  %i.ki = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.kh
  %i.kj = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.kf
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.kh
  %i.kl = sext i32 %i.fk to i64                   ; 6 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.kl
  %i.kn = fsub <2 x float> %i.fi, %i.fh           ; 7 uses
  %i.ko = fsub float %.sroa.5782.48.copyload, %.sroa.5787.48.copyload ; 5 uses
  %i.kp = extractelement <2 x float> %i.kn, i64 1
  %i.kq = extractelement <2 x float> %i.kn, i64 0 ; 2 uses
  %i.kr = fmul float %i.kq, %i.ct
  %i.ks = tail call float @llvm.fmuladd.f32(float %i.ko, float %.sroa.01139.4.vec.extract, float %i.kr) ; 2 uses
  %i.kt = fmul float %i.ko, %i.cx
  %i.ku = fmul float %i.kp, %i.cy
  %i.kv = shufflevector <2 x float> %.sroa.25.1, <2 x float> %.sroa.01139.1, <2 x i32> <i32 0, i32 2>
  %i.kw = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.kx = insertelement <2 x float> %i.kw, float %i.kt, i64 1
  %i.ky = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> %i.kv, <2 x float> %i.kx) ; 2 uses
  %i.kz = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lb = fmul <2 x float> %i.la, %i.ky
  store <2 x float> %i.lb, ptr %i.kg, align 4, !tbaa !10
  %i.lc = fmul float %storemerge, %i.ks
  store float %i.lc, ptr %i.ki, align 4, !tbaa !10
  %i.ld = insertelement <2 x float> poison, float %i.v, i64 0
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lf = fmul <2 x float> %i.le, %i.ky
  store <2 x float> %i.lf, ptr %i.kj, align 4, !tbaa !10
  %i.lg = fmul float %i.v, %i.ks
  store float %i.lg, ptr %i.kk, align 4, !tbaa !10
  %i.lh = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.li = insertelement <2 x float> %i.lh, float %i.ko, i64 1
  %i.lj = fmul <2 x float> %i.li, %i.de
  %i.lk = shufflevector <2 x float> %.sroa.20.0, <2 x float> %.sroa.01104.1, <2 x i32> <i32 0, i32 2>
  %i.ll = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kn, <2 x float> %i.lk, <2 x float> %i.lj) ; 2 uses
  %i.lm = fmul float %i.kq, %i.da
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.ko, float %.sroa.01104.4.vec.extract, float %i.lm) ; 2 uses
  %i.lo = fmul <2 x float> %i.la, %i.ll
  store <2 x float> %i.lo, ptr %i.km, align 4, !tbaa !10
  %i.lp = fmul float %storemerge, %i.ln
  %i.lq = add nsw i64 %i.kl, 2                    ; 2 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.lq
  store float %i.lp, ptr %i.lr, align 4, !tbaa !10
  %i.ls = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.kl
  %i.lt = fmul <2 x float> %i.le, %i.ll
  store <2 x float> %i.lt, ptr %i.ls, align 4, !tbaa !10
  %i.lu = fmul float %i.v, %i.ln
  %i.lv = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.lq
  store float %i.lu, ptr %i.lv, align 4, !tbaa !10
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !88 ; 3 uses
  %i.ly = shl nsw i64 %i.kf, 2
  %scevgep = getelementptr i8, ptr %i.lx, i64 %i.ly ; 2 uses
  store <2 x float> %.sroa.01139.1, ptr %scevgep, align 4, !tbaa !10
  %.sroa.25.0.scevgep.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep, i64 8
  store float %.sroa.25.8.vec.extract, ptr %.sroa.25.0.scevgep.sroa_idx, align 4, !tbaa !10
  %i.lz = shl nsw i64 %i.kl, 2
  %scevgep1023 = getelementptr i8, ptr %i.lx, i64 %i.lz ; 2 uses
  store <2 x float> %.sroa.01104.1, ptr %scevgep1023, align 4, !tbaa !10
  %.sroa.20.0.scevgep1023.sroa_idx = getelementptr inbounds nuw i8, ptr %scevgep1023, i64 8
  store float %.sroa.20.8.vec.extract, ptr %.sroa.20.0.scevgep1023.sroa_idx, align 4, !tbaa !10
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !89 ; 6 uses
  %i.mc = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.kf
  store float %i.ct, ptr %i.mc, align 4, !tbaa !10
  %i.md = getelementptr [4 x i8], ptr %i.mb, i64 %i.kf
  %i.me = getelementptr i8, ptr %i.md, i64 4
  store float %i.cy, ptr %i.me, align 4, !tbaa !10
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.kh
  store float %i.cx, ptr %i.mf, align 4, !tbaa !10
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.mb, i64 %i.kl
  store float %i.da, ptr %i.mg, align 4, !tbaa !10
  %i.mh = getelementptr [4 x i8], ptr %i.mb, i64 %i.kl
  %i.mi = getelementptr i8, ptr %i.mh, i64 4
  store <2 x float> %i.de, ptr %i.mi, align 4, !tbaa !10
  %.sroa.0.0.vec.insert.i603 = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.mj = shufflevector <2 x float> %.sroa.0.0.vec.insert.i603, <2 x float> %i.kn, <2 x i32> <i32 0, i32 2>
  %i.mk = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.kn, <2 x i32> <i32 3, i32 1>
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader994.preheader, %.preheader1001.preheader
  %i.ml = phi ptr [ %i.jw, %.preheader994.preheader ], [ %i.mb, %.preheader1001.preheader ] ; 3 uses
  %i.mm = phi ptr [ %i.ju, %.preheader994.preheader ], [ %i.lx, %.preheader1001.preheader ] ; 3 uses
  %.sroa.25.3 = phi <2 x float> [ %.sroa.3.12.vec.insert.i575, %.preheader994.preheader ], [ %.sroa.25.1, %.preheader1001.preheader ]
  %.sroa.01139.3 = phi <2 x float> [ %.sroa.01139.2, %.preheader994.preheader ], [ %.sroa.01139.1, %.preheader1001.preheader ] ; 2 uses
  %.sroa.20.1 = phi <2 x float> [ %i.iq, %.preheader994.preheader ], [ %.sroa.20.0, %.preheader1001.preheader ]
  %.sroa.01104.2 = phi <2 x float> [ %i.jc, %.preheader994.preheader ], [ %.sroa.01104.1, %.preheader1001.preheader ] ; 2 uses
  %.sroa.0715.0 = phi <2 x float> [ %24, %.preheader994.preheader ], [ zeroinitializer, %.preheader1001.preheader ] ; 4 uses
  %.sroa.16.0 = phi <2 x float> [ %25, %.preheader994.preheader ], [ zeroinitializer, %.preheader1001.preheader ] ; 2 uses
  %.sroa.0746.0 = phi <2 x float> [ %21, %.preheader994.preheader ], [ zeroinitializer, %.preheader1001.preheader ] ; 3 uses
  %.sroa.16765.0 = phi <2 x float> [ %22, %.preheader994.preheader ], [ zeroinitializer, %.preheader1001.preheader ] ; 2 uses
  %.sroa.11.0 = phi <2 x float> [ zeroinitializer, %.preheader994.preheader ], [ %i.mk, %.preheader1001.preheader ] ; 2 uses
  %.sroa.0696.0 = phi <2 x float> [ zeroinitializer, %.preheader994.preheader ], [ %i.mj, %.preheader1001.preheader ] ; 3 uses
  %i.mn = and i32 %i.dj, 32
  %.not436 = icmp eq i32 %i.mn, 0
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.mp = load float, ptr %i.mo, align 8, !tbaa !51 ; 2 uses
  br i1 %.not436, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !84
  %i.ms = fmul float %i.mp, %i.mr
  br label %bb.q

bb.q:                                             ; preds = %.loopexit, %bb.p
  %i.mt = phi float [ %i.ms, %bb.p ], [ %i.mp, %.loopexit ]
  %i.mu = load float, ptr %1, align 8, !tbaa !85
  %i.mv = fmul float %i.mt, %i.mu
  %i.mw = sext i32 %i.fj to i64                   ; 2 uses
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.mw
  %i.my = shufflevector <3 x float> %i.o, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mz = shufflevector <2 x float> %.sroa.01139.3, <2 x float> %.sroa.01104.2, <2 x i32> <i32 1, i32 3>
  %i.na = fmul <2 x float> %i.my, %i.mz
  %i.nb = shufflevector <2 x float> %.sroa.01139.3, <2 x float> %.sroa.01104.2, <2 x i32> <i32 0, i32 2>
  %i.nc = shufflevector <3 x float> %i.o, <3 x float> poison, <2 x i32> zeroinitializer
  %i.nd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nb, <2 x float> %i.nc, <2 x float> %i.na)
  %i.ne = shufflevector <2 x float> %.sroa.25.3, <2 x float> %.sroa.20.1, <2 x i32> <i32 0, i32 2>
  %i.nf = shufflevector <3 x float> %i.o, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ng = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ne, <2 x float> %i.nf, <2 x float> %i.nd)
  %i.nh = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.ni = shufflevector <2 x float> %i.nh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nj = fmul <2 x float> %i.ni, %i.ng           ; 2 uses
  %i.nk = extractelement <2 x float> %i.nj, i64 0
  store float %i.nk, ptr %i.mx, align 4, !tbaa !10
  %i.nl = sext i32 %i.fk to i64                   ; 2 uses
  %i.nm = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.nl
  %i.nn = extractelement <2 x float> %i.nj, i64 1
  store float %i.nn, ptr %i.nm, align 4, !tbaa !10
  %i.no = and i32 %i.dj, 16
  %.not437 = icmp eq i32 %i.no, 0
  br i1 %.not437, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.nq = load float, ptr %i.np, align 4, !tbaa !52 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !87 ; 2 uses
  %i.nt = getelementptr inbounds [4 x i8], ptr %i.ns, i64 %i.mw
  store float %i.nq, ptr %i.nt, align 4, !tbaa !10
  %i.nu = getelementptr inbounds [4 x i8], ptr %i.ns, i64 %i.nl
  store float %i.nq, ptr %i.nu, align 4, !tbaa !10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.nw = load i8, ptr %i.nv, align 8, !tbaa !44, !range !30, !noundef !26
  %i.nx = trunc nuw i8 %i.nw to i1                ; 3 uses
  br i1 %i.nx, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.s
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.nz = load float, ptr %i.ny, align 8, !tbaa !10
  %i.oa = fmul float %i.h, %i.nz                  ; 2 uses
  %i.ob = fcmp ule float %i.oa, 0.000000e+00
  %i.oc = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.od = load i8, ptr %i.oc, align 8, !tbaa !21, !range !30, !noundef !26
  %i.oe = trunc nuw i8 %i.od to i1
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.og = load i8, ptr %i.of, align 8, !tbaa !21, !range !30, !noundef !26
  %i.oh = trunc nuw i8 %i.og to i1
  br i1 %i.oh, label %bb.u, label %bb.at

bb.u:                                             ; preds = %.thread, %bb.t
  %i.oi = phi i1 [ %i.oe, %.thread ], [ true, %bb.t ]
  %.0419984 = phi float [ %i.oa, %.thread ], [ 0.000000e+00, %bb.t ]
  %.0421983 = phi i1 [ %i.ob, %.thread ], [ false, %bb.t ] ; 2 uses
  %i.oj = shl nsw i32 %i.d, 2                     ; 3 uses
  %.sroa.0822.0.vec.extract845 = extractelement <2 x float> %.sroa.0822.0, i64 0 ; 3 uses
  %i.ok = sext i32 %i.oj to i64                   ; 18 uses
  %i.ol = getelementptr inbounds [4 x i8], ptr %i.mm, i64 %i.ok
  store float %.sroa.0822.0.vec.extract845, ptr %i.ol, align 4, !tbaa !10
  %.sroa.0822.4.vec.extract886 = extractelement <2 x float> %.sroa.0822.0, i64 1 ; 5 uses
  %i.om = or disjoint i32 %i.oj, 1
  %i.on = sext i32 %i.om to i64                   ; 5 uses
  %i.oo = getelementptr inbounds [4 x i8], ptr %i.mm, i64 %i.on
  store float %.sroa.0822.4.vec.extract886, ptr %i.oo, align 4, !tbaa !10
  %.sroa.49.8.vec.extract929 = extractelement <2 x float> %.sroa.49.0, i64 0 ; 5 uses
  %i.op = or disjoint i32 %i.oj, 2
  %i.oq = sext i32 %i.op to i64                   ; 3 uses
  %i.or = getelementptr inbounds [4 x i8], ptr %i.mm, i64 %i.oq
  store float %.sroa.49.8.vec.extract929, ptr %i.or, align 4, !tbaa !10
  %i.os = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.ok
  %i.ot = fneg float %.sroa.0822.4.vec.extract886 ; 4 uses
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.on
  store float %i.ot, ptr %i.ou, align 4, !tbaa !10
  %i.ov = shufflevector <2 x float> %.sroa.49.0, <2 x float> %.sroa.0822.0, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ow = fneg <2 x float> %i.ov                  ; 6 uses
  %i.ox = extractelement <2 x float> %i.ow, i64 1
  store float %i.ox, ptr %i.os, align 4, !tbaa !10
  %i.oy = getelementptr inbounds [4 x i8], ptr %i.ml, i64 %i.oq
  %i.oz = extractelement <2 x float> %i.ow, i64 0
  store float %i.oz, ptr %i.oy, align 4, !tbaa !10
  br i1 %i.ai, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  br i1 %i.r, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.sroa.0746.4.vec.extract764 = extractelement <2 x float> %.sroa.0746.0, i64 1
  %.sroa.16765.8.vec.extract774 = extractelement <2 x float> %.sroa.16765.0, i64 0
  %i.pa = fmul float %.sroa.16765.8.vec.extract774, %i.ot
  %i.pb = tail call float @llvm.fmuladd.f32(float %.sroa.0746.4.vec.extract764, float %.sroa.49.8.vec.extract929, float %i.pa)
  %.sroa.16.8.vec.extract742 = extractelement <2 x float> %.sroa.16.0, i64 0
  %.sroa.0715.0.vec.extract724 = extractelement <2 x float> %.sroa.0715.0, i64 0
  %foldExtExtBinop1215 = fmul <2 x float> %.sroa.0715.0, %i.ow
  %i.pc = extractelement <2 x float> %foldExtExtBinop1215, i64 1
  %i.pd = tail call float @llvm.fmuladd.f32(float %.sroa.0715.0.vec.extract724, float %.sroa.0822.4.vec.extract886, float %i.pc)
  %i.pe = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ok
  store float %i.pb, ptr %i.pe, align 4, !tbaa !10
  %i.pf = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.on
  %i.pg = fmul <2 x float> %.sroa.0746.0, %i.ow
  %i.ph = shufflevector <2 x float> %.sroa.16765.0, <2 x float> %.sroa.0746.0, <2 x i32> <i32 0, i32 2>
  %i.pi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ph, <2 x float> %.sroa.0822.0, <2 x float> %i.pg)
  store <2 x float> %i.pi, ptr %i.pf, align 4, !tbaa !10
  %i.pj = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ok
  %foldExtExtBinop1217 = fmul <2 x float> %.sroa.0715.0, %i.ow
  %i.pk = fmul float %.sroa.16.8.vec.extract742, %i.ot
  %i.pl = shufflevector <2 x float> %.sroa.0715.0, <2 x float> %.sroa.16.0, <2 x i32> <i32 1, i32 2>
  %i.pm = insertelement <2 x float> poison, float %i.pk, i64 0
  %i.pn = shufflevector <2 x float> %i.pm, <2 x float> %foldExtExtBinop1217, <2 x i32> <i32 0, i32 2>
  %i.po = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> %i.ov, <2 x float> %i.pn)
  %i.pp = fneg <2 x float> %i.po
  store <2 x float> %i.pp, ptr %i.pj, align 4, !tbaa !10
  %i.pq = fneg float %i.pd
  br label %.sink.split

bb.x:                                             ; preds = %bb.u
  %.sroa.0696.4.vec.extract706 = extractelement <2 x float> %.sroa.0696.0, i64 1
  %.sroa.11.8.vec.extract711 = extractelement <2 x float> %.sroa.11.0, i64 0
  %i.pr = fmul float %.sroa.11.8.vec.extract711, %i.ot
  %i.ps = tail call float @llvm.fmuladd.f32(float %.sroa.0696.4.vec.extract706, float %.sroa.49.8.vec.extract929, float %i.pr) ; 2 uses
  %i.pt = fmul float %storemerge, %i.ps
  %i.pu = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ok
  store float %i.pt, ptr %i.pu, align 4, !tbaa !10
  %i.pv = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.on
  %i.pw = fmul <2 x float> %.sroa.0696.0, %i.ow
  %i.px = shufflevector <2 x float> %.sroa.11.0, <2 x float> %.sroa.0696.0, <2 x i32> <i32 0, i32 2>
  %i.py = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.px, <2 x float> %.sroa.0822.0, <2 x float> %i.pw) ; 3 uses
  %i.pz = insertelement <2 x float> poison, float %storemerge, i64 0
  %i.qa = shufflevector <2 x float> %i.pz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qb = fmul <2 x float> %i.qa, %i.py
  store <2 x float> %i.qb, ptr %i.pv, align 4, !tbaa !10
  %i.qc = fmul float %i.v, %i.ps
  %i.qd = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.ok
  store float %i.qc, ptr %i.qd, align 4, !tbaa !10
  %i.qe = extractelement <2 x float> %i.py, i64 0
  %i.qf = fmul float %i.v, %i.qe
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.on
  store float %i.qf, ptr %i.qg, align 4, !tbaa !10
  %i.qh = extractelement <2 x float> %i.py, i64 1
  %i.qi = fmul float %i.v, %i.qh
  br label %.sink.split

.sink.split:                                      ; preds = %bb.x, %bb.w
  %.sink1203 = phi float [ %i.pq, %bb.w ], [ %i.qi, %bb.x ]
  %i.qj = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.oq
  store float %.sink1203, ptr %i.qj, align 4, !tbaa !10
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %bb.v
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.ql = load float, ptr %i.qk, align 8, !tbaa !46
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.qn = load float, ptr %i.qm, align 4, !tbaa !47
  %i.qo = fcmp oeq float %i.ql, %i.qn             ; 2 uses
  %or.cond445 = and i1 %i.qo, %i.nx
  %not.or.cond445 = xor i1 %or.cond445, true
  %spec.select = select i1 %not.or.cond445, i1 %i.oi, i1 false
  %i.qp = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.ok
  store float 0.000000e+00, ptr %i.qp, align 4, !tbaa !10
  %i.qq = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.qr = load ptr, ptr %i.qq, align 8, !tbaa !90 ; 2 uses
  %i.qs = getelementptr inbounds [4 x i8], ptr %i.qr, i64 %i.ok
  store float 0.000000e+00, ptr %i.qs, align 4, !tbaa !10
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !91 ; 2 uses
  %i.qv = getelementptr inbounds [4 x i8], ptr %i.qu, i64 %i.ok
  store float 0.000000e+00, ptr %i.qv, align 4, !tbaa !10
  %i.qw = and i32 %i.dj, 512
  %.not438 = icmp eq i32 %i.qw, 0
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.in = select i1 %.not438, ptr %i.qy, ptr %i.qx
  %i.qz = load float, ptr %.in, align 4, !tbaa !10 ; 2 uses
  br i1 %spec.select, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
end_hunk_0
