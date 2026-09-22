Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pbc?download=true
inline.NumInlined: 412
inline.NumDeleted: 186
loop-unroll.NumCompletelyUnrolled: 90
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_Z15calc_box_centeriPA3_KfPf:bb.a
  store float %i.g, ptr %i.a, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load float, ptr %i.h, align 4, !tbaa !23
  %i.j = fmul float %i.i, 5.000000e-01
  br label %.loopexit.sink.split

.preheader.preheader:                             ; preds = %bb.a
  %i.k = load float, ptr %1, align 4, !tbaa !23
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float 5.000000e-01, float 0.000000e+00) ; 2 uses
  store float %i.l, ptr %2, align 4, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !23
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float 5.000000e-01, float 0.000000e+00) ; 2 uses
  store float %i.o, ptr %i.a, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !23
  %i.r = tail call float @llvm.fmuladd.f32(float %i.q, float 5.000000e-01, float 0.000000e+00) ; 2 uses
  store float %i.r, ptr %i.b, align 4, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load float, ptr %i.s, align 4, !tbaa !23
  %i.u = tail call float @llvm.fmuladd.f32(float %i.t, float 5.000000e-01, float %i.l) ; 2 uses
  store float %i.u, ptr %2, align 4, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load float, ptr %i.v, align 4, !tbaa !23
  %i.x = tail call float @llvm.fmuladd.f32(float %i.w, float 5.000000e-01, float %i.o) ; 2 uses
  store float %i.x, ptr %i.a, align 4, !tbaa !23
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.z = load float, ptr %i.y, align 4, !tbaa !23
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float 5.000000e-01, float %i.r) ; 2 uses
  store float %i.aa, ptr %i.b, align 4, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !23
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float 5.000000e-01, float %i.u)
  store float %i.ad, ptr %2, align 4, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.af = load float, ptr %i.ae, align 4, !tbaa !23
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.af, float 5.000000e-01, float %i.x)
  store float %i.ag, ptr %i.a, align 4, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !23
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float 5.000000e-01, float %i.aa)
  br label %.loopexit.sink.split

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 1270, ptr noundef nonnull @.str.48, i32 noundef %0) #28
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.ak

.loopexit.sink.split:                             ; preds = %.preheader.preheader, %.preheader22.preheader
  %.sink = phi float [ %i.j, %.preheader22.preheader ], [ %i.aj, %.preheader.preheader ]
  store float %.sink, ptr %i.b, align 4, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_Z21calc_triclinic_imagesPA3_KfPA3_f(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 168)) %1) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load float, ptr %0, align 4, !tbaa !23   ; 4 uses
  store float %i.b, ptr %1, align 4, !tbaa !23
  %i.c = load float, ptr %i.a, align 4, !tbaa !23 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.c, ptr %i.d, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !23 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.f, ptr %i.g, align 4, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.j = load float, ptr %i.h, align 4, !tbaa !23 ; 3 uses
  store float %i.j, ptr %i.i, align 4, !tbaa !23
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load float, ptr %i.k, align 4, !tbaa !23 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store float %i.l, ptr %i.m, align 4, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load float, ptr %i.n, align 4, !tbaa !23 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  store float %i.o, ptr %i.p, align 4, !tbaa !23
  %i.q = fcmp olt float %i.j, 0.000000e+00
  %i.r = insertelement <4 x float> poison, float %i.j, i64 0
  %i.s = insertelement <4 x float> %i.r, float %i.l, i64 1
  %i.t = insertelement <4 x float> %i.s, float %i.o, i64 2
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.v = fneg <4 x float> %i.u                    ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %i.w, ptr %i.i, align 4, !tbaa !23
  %i.x = extractelement <4 x float> %i.v, i64 2
  store float %i.x, ptr %i.p, align 4, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.y = phi <4 x float> [ %i.v, %bb.b ], [ %i.u, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = insertelement <4 x float> %i.y, float %i.b, i64 3
  %i.ab = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.b, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.c, i64 1
  %i.ad = insertelement <4 x float> %i.ac, float %i.f, i64 2
  %i.ae = fsub <4 x float> %i.aa, %i.ad           ; 4 uses
  %i.af = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.c, i64 3
  %i.ag = fsub <4 x float> %i.y, %i.af            ; 2 uses
  %i.ah = extractelement <4 x float> %i.ae, i64 0
  store float %i.ah, ptr %i.z, align 4, !tbaa !23
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.aj = extractelement <4 x float> %i.ag, i64 3
  store float %i.aj, ptr %i.ai, align 4, !tbaa !23
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.al = extractelement <4 x float> %i.ae, i64 2
  store float %i.al, ptr %i.ak, align 4, !tbaa !23
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.an = fneg float %i.b
  store float %i.an, ptr %i.am, align 4, !tbaa !23
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ap = shufflevector <4 x float> %i.ae, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 2>
  %i.aq = insertelement <8 x float> %i.ap, float %i.c, i64 0
  %i.ar = insertelement <8 x float> %i.aq, float %i.f, i64 1
  %i.as = shufflevector <4 x float> %i.ag, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 3, i32 poison, i32 poison, i32 poison>
  %i.at = shufflevector <8 x float> %i.ar, <8 x float> %i.as, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 5, i32 12, i32 7>
  %i.au = fneg <8 x float> %i.at
  store <8 x float> %i.au, ptr %i.ao, align 4, !tbaa !23
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 76 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ba = load float, ptr %i.av, align 4, !tbaa !23 ; 3 uses
  store float %i.ba, ptr %i.aw, align 4, !tbaa !23
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !23 ; 3 uses
  store float %i.bb, ptr %i.ay, align 4, !tbaa !23
  %i.bc = load float, ptr %i.az, align 4, !tbaa !23 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  store float %i.bc, ptr %i.bd, align 4, !tbaa !23
  %i.be = fcmp olt float %i.ba, 0.000000e+00
  %i.bf = insertelement <3 x float> poison, float %i.ba, i64 0
  %i.bg = insertelement <3 x float> %i.bf, float %i.bb, i64 1
  %i.bh = insertelement <3 x float> %i.bg, float %i.bc, i64 2 ; 2 uses
  br i1 %i.be, label %bb.d, label %.preheader.preheader

bb.d:                                             ; preds = %bb.c
  %i.bi = fneg <3 x float> %i.bh                  ; 3 uses
  %i.bj = extractelement <3 x float> %i.bi, i64 2 ; 2 uses
  %i.bk = extractelement <3 x float> %i.bi, i64 0
  store float %i.bk, ptr %i.aw, align 4, !tbaa !23
  %i.bl = fneg float %i.bb
  store float %i.bl, ptr %i.ay, align 4, !tbaa !23
  store float %i.bj, ptr %i.bd, align 4, !tbaa !23
  br label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d, %bb.c
  %i.bm = phi float [ %i.bj, %bb.d ], [ %i.bc, %bb.c ]
  %i.bn = phi <3 x float> [ %i.bi, %bb.d ], [ %i.bh, %bb.c ]
  %i.bo = shufflevector <3 x float> %i.bn, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1> ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.bq = shufflevector <4 x float> %i.y, <4 x float> %i.ae, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 5, i32 6, i32 7, i32 poison>
  %i.br = insertelement <8 x float> %i.bq, float %i.c, i64 7 ; 2 uses
  %i.bs = fadd <8 x float> %i.bo, %i.br
  %i.bt = fsub <8 x float> %i.bo, %i.br
  %i.bu = shufflevector <8 x float> %i.bs, <8 x float> %i.bt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15> ; 3 uses
  %i.bv = fsub float %i.bm, %i.f                  ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 116
  store float %i.bv, ptr %i.bw, align 4, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.by = shufflevector <8 x float> %i.bu, <8 x float> %i.bo, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 8, i32 9>
  %i.bz = insertelement <8 x float> %i.by, float %i.bv, i64 5
  %i.ca = fneg <8 x float> %i.bz
  store <8 x float> %i.ca, ptr %i.bx, align 4, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 152
  store <8 x float> %i.bu, ptr %i.bp, align 4, !tbaa !23
  %i.cc = shufflevector <8 x float> %i.bu, <8 x float> %i.bo, <4 x i32> <i32 10, i32 0, i32 1, i32 2>
  %i.cd = fneg <4 x float> %i.cc
  store <4 x float> %i.cd, ptr %i.cb, align 4, !tbaa !23
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z30calc_compact_unitcell_verticesiPA3_KfPA3_f(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 288)) %2) local_unnamed_addr #1 {
.preheader81.1142:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.l = load <4 x float>, ptr %1, align 4, !tbaa !23 ; 7 uses
  %4 = extractelement <4 x float> %i.l, i64 0     ; 6 uses
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.n = shufflevector <8 x float> %i.m, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float poison, float -0.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 15>
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.r = load <3 x float>, ptr %i.e, align 4, !tbaa !23 ; 3 uses
  %i.s = load <3 x float>, ptr %i.d, align 4, !tbaa !23 ; 3 uses
  %i.t = shufflevector <3 x float> %i.s, <3 x float> %i.r, <2 x i32> <i32 0, i32 3>
  %i.u = fcmp olt <2 x float> %i.t, zeroinitializer ; 2 uses
  %i.v = fneg <3 x float> %i.r
  %i.w = shufflevector <2 x i1> %i.u, <2 x i1> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.x = select <3 x i1> %i.w, <3 x float> %i.v, <3 x float> %i.r ; 16 uses
  %i.y = load <2 x float>, ptr %i.b, align 4, !tbaa !23 ; 8 uses
  %5 = load float, ptr %i.c, align 4, !tbaa !23   ; 8 uses
  %i.z = fneg <3 x float> %i.s
  %i.aa = shufflevector <2 x i1> %i.u, <2 x i1> poison, <3 x i32> zeroinitializer
  %i.ab = select <3 x i1> %i.aa, <3 x float> %i.z, <3 x float> %i.s ; 15 uses
  %6 = shufflevector <3 x float> %i.ab, <3 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <3 x float> %i.ab, <3 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %8 = extractelement <2 x float> %i.y, i64 0
  %9 = fadd <3 x float> %i.ab, %i.x               ; 4 uses
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1>
  %11 = shufflevector <3 x float> %i.ab, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 0, i32 poison> ; 3 uses
  %12 = shufflevector <8 x float> %i.n, <8 x float> %11, <8 x i32> <i32 10, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %13 = shufflevector <3 x float> %i.x, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %14 = shufflevector <8 x float> %12, <8 x float> %13, <8 x i32> <i32 0, i32 8, i32 poison, i32 10, i32 4, i32 5, i32 6, i32 7>
  %i.ac = shufflevector <2 x float> %i.y, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %15 = shufflevector <3 x float> %i.ac, <3 x float> %i.ab, <8 x i32> <i32 poison, i32 0, i32 1, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %16 = shufflevector <8 x float> %i.m, <8 x float> %15, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 poison, i32 poison>
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 128
  %17 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %18 = shufflevector <4 x float> %i.l, <4 x float> %17, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %19 = insertelement <4 x float> %18, float %5, i64 2 ; 2 uses
  %20 = shufflevector <3 x float> %9, <3 x float> %i.x, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %21 = shufflevector <3 x float> %9, <3 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 2>
  %22 = shufflevector <3 x float> %i.x, <3 x float> %i.ab, <8 x i32> <i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 4, i32 5, i32 poison>
  %23 = getelementptr inbounds nuw i8, ptr %2, i64 160
  %24 = shufflevector <3 x float> %i.ab, <3 x float> %i.x, <8 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 4, i32 5>
  %25 = shufflevector <3 x float> %9, <3 x float> poison, <3 x i32> <i32 poison, i32 2, i32 0>
  %26 = shufflevector <3 x float> %i.x, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison>
  %27 = shufflevector <4 x float> %26, <4 x float> %i.l, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 4, i32 poison, i32 poison> ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %2, i64 192
  %29 = getelementptr inbounds nuw i8, ptr %2, i64 200
  %30 = getelementptr inbounds nuw i8, ptr %2, i64 204
  %31 = getelementptr inbounds nuw i8, ptr %2, i64 208
  %32 = shufflevector <3 x float> %i.ab, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %33 = insertelement <2 x float> %i.y, float %5, i64 1 ; 4 uses
  %34 = fsub <2 x float> %32, %33                 ; 8 uses
  %35 = shufflevector <3 x float> %i.x, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %36 = fsub <2 x float> %35, %33                 ; 6 uses
  %37 = fadd <2 x float> %34, %35                 ; 6 uses
  %38 = extractelement <2 x float> %34, i64 1     ; 3 uses
  %39 = fsub float %38, %5
  %40 = shufflevector <2 x float> %37, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison> ; 5 uses
  %41 = shufflevector <2 x float> %37, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %42 = shufflevector <4 x float> %21, <4 x float> %41, <4 x i32> <i32 5, i32 1, i32 poison, i32 3>
  %43 = extractelement <2 x float> %36, i64 1
  %44 = fsub float %43, %5
  %45 = fadd <2 x float> %36, %37
  %46 = shufflevector <2 x float> %36, <2 x float> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %47 = shufflevector <2 x float> %45, <2 x float> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %48 = shufflevector <2 x float> %33, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %49 = shufflevector <8 x float> %27, <8 x float> %48, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 8, i32 9>
  %50 = shufflevector <3 x float> %i.ab, <3 x float> %i.x, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison>
  %51 = shufflevector <8 x float> %50, <8 x float> %49, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %52 = shufflevector <3 x float> %i.x, <3 x float> poison, <8 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %53 = shufflevector <8 x float> %52, <8 x float> %40, <8 x i32> <i32 0, i32 1, i32 poison, i32 11, i32 12, i32 poison, i32 poison, i32 poison>
  %54 = shufflevector <8 x float> %53, <8 x float> <float poison, float poison, float poison, float poison, float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <8 x i32> <i32 0, i32 1, i32 poison, i32 3, i32 4, i32 13, i32 14, i32 15>
  %55 = getelementptr inbounds nuw i8, ptr %2, i64 240
  %56 = extractelement <3 x float> %i.ab, i64 0   ; 4 uses
  %57 = extractelement <3 x float> %i.ab, i64 2   ; 2 uses
  %58 = shufflevector <8 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <8 x float> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 7>
  %59 = shufflevector <4 x float> %i.l, <4 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison>
  %60 = shufflevector <8 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <8 x float> %59, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 7>
  %61 = fsub <8 x float> %58, %60
  %62 = extractelement <3 x float> %i.x, i64 0    ; 3 uses
  %i.ae = extractelement <3 x float> %i.x, i64 2
  %i.af = fsub float %62, %4                      ; 6 uses
  %63 = shufflevector <3 x float> %i.ab, <3 x float> %i.x, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 3, i32 poison>
  %64 = shufflevector <8 x float> %63, <8 x float> %40, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8>
  %65 = fadd <8 x float> %61, %64                 ; 6 uses
  %66 = shufflevector <3 x float> %i.x, <3 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %67 = shufflevector <8 x float> %14, <8 x float> %66, <8 x i32> <i32 0, i32 1, i32 9, i32 3, i32 4, i32 5, i32 6, i32 7>
  %68 = shufflevector <8 x float> %16, <8 x float> %65, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 poison>
  %69 = fneg float %56
  %70 = shufflevector <4 x float> %19, <4 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %71 = fneg <4 x float> %70
  %72 = shufflevector <4 x float> %20, <4 x float> %71, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7> ; 2 uses
  %73 = shufflevector <4 x float> %19, <4 x float> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %74 = shufflevector <8 x float> %22, <8 x float> %73, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 4, i32 5, i32 6, i32 poison>
  %75 = shufflevector <8 x float> %74, <8 x float> %65, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 14> ; 2 uses
  %76 = shufflevector <8 x float> %24, <8 x float> %65, <8 x i32> <i32 0, i32 1, i32 14, i32 poison, i32 poison, i32 5, i32 6, i32 7>
  %foldExtExtBinop = fadd <3 x float> %i.ab, %i.x ; 2 uses
  %77 = shufflevector <3 x float> %foldExtExtBinop, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %78 = shufflevector <3 x float> %foldExtExtBinop, <3 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %79 = shufflevector <3 x float> %78, <3 x float> %25, <8 x i32> <i32 0, i32 4, i32 5, i32 0, i32 4, i32 5, i32 0, i32 4>
  %80 = fsub float %i.af, %56
  %81 = fadd float %80, %62
  store float %81, ptr %30, align 4, !tbaa !23
  %82 = fadd <2 x float> %34, %37
  %83 = fsub <2 x float> %82, %33
  store <2 x float> %83, ptr %i.g, align 4, !tbaa !23
  %84 = fsub float %39, %i.ae
  store float %84, ptr %i.i, align 4, !tbaa !23
  %85 = shufflevector <8 x float> %68, <8 x float> %40, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8> ; 2 uses
  %i.ag = fadd <8 x float> %10, %85
  %86 = shufflevector <8 x float> %85, <8 x float> %13, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 8, i32 9>
  %87 = fadd <2 x float> %34, %32
  %88 = fadd <2 x float> %87, %37
  store <2 x float> %88, ptr %3, align 4, !tbaa !23
  %89 = shufflevector <8 x float> %86, <8 x float> %40, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %90 = fadd <8 x float> %i.ag, %89
  store <8 x float> %90, ptr %i.q, align 4, !tbaa !23
  %91 = shufflevector <8 x float> %76, <8 x float> %40, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 9, i32 5, i32 6, i32 7> ; 2 uses
  %92 = fneg <8 x float> %91                      ; 6 uses
  %foldExtExtBinop202 = fsub <2 x float> %34, %i.y
  %93 = shufflevector <3 x float> %i.x, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %94 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %95 = shufflevector <3 x float> %i.ab, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %96 = fsub float %56, %4                        ; 8 uses
  %97 = fadd float %96, %62                       ; 4 uses
  %98 = fsub float %4, %96
  %99 = shufflevector <8 x float> %92, <8 x float> %13, <8 x i32> <i32 poison, i32 poison, i32 0, i32 1, i32 8, i32 9, i32 10, i32 poison>
  %100 = insertelement <8 x float> %99, float %38, i64 0
  %101 = insertelement <8 x float> %100, float %69, i64 1
  %102 = insertelement <8 x float> %101, float %98, i64 7
  %103 = shufflevector <2 x float> %34, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %104 = shufflevector <3 x float> %i.x, <3 x float> %103, <8 x i32> <i32 2, i32 poison, i32 3, i32 4, i32 poison, i32 3, i32 4, i32 poison>
  %105 = insertelement <8 x float> %104, float %96, i64 1
  %106 = insertelement <8 x float> %105, float %97, i64 7
  %107 = shufflevector <8 x float> %106, <8 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 5, i32 6, i32 7>
  %108 = fsub <8 x float> %102, %107
  %109 = fadd float %96, %56
  %110 = fadd float %109, %97
  store float %110, ptr %2, align 4, !tbaa !23
  %i.ah = fadd float %96, %97
  %111 = fsub float %i.ah, %4
  store float %111, ptr %i.f, align 4, !tbaa !23
  %112 = fsub float %96, %4
  %113 = insertelement <2 x float> poison, float %112, i64 0
  %114 = shufflevector <2 x float> %113, <2 x float> %foldExtExtBinop202, <2 x i32> <i32 0, i32 2>
  %115 = fsub <2 x float> %114, %93
  store <2 x float> %115, ptr %i.h, align 4, !tbaa !23
  %116 = insertelement <2 x float> %94, float %96, i64 0
  %117 = fsub <2 x float> %116, %93
  %118 = fadd <2 x float> %117, %95
  store <2 x float> %118, ptr %i.j, align 4, !tbaa !23
  %119 = fadd float %i.af, %97
  %120 = shufflevector <2 x float> %i.y, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %121 = shufflevector <8 x float> %120, <8 x float> %92, <4 x i32> <i32 0, i32 poison, i32 10, i32 11>
  %122 = insertelement <4 x float> %121, float %5, i64 1
  %123 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %124 = insertelement <4 x float> %123, float %96, i64 2
  %125 = fsub <4 x float> %122, %124
  %126 = shufflevector <2 x float> %37, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %127 = shufflevector <3 x float> %126, <3 x float> %i.ab, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %128 = fsub <4 x float> %125, %127
  store <4 x float> %128, ptr %i.o, align 4, !tbaa !23
  %i.ai = fadd <8 x float> %108, %67
  store <8 x float> %i.ai, ptr %i.k, align 4, !tbaa !23
  %129 = extractelement <8 x float> %92, i64 4
  %130 = fsub float %129, %38
  %131 = fsub float %130, %57
  store float %131, ptr %i.p, align 4, !tbaa !23
  %132 = shufflevector <4 x float> %42, <4 x float> %77, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %133 = shufflevector <4 x float> %132, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 1, i32 2, i32 3, i32 1> ; 2 uses
  %i.aj = fadd <8 x float> %72, %133
  %i.ak = fsub <8 x float> %72, %133
  %134 = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %135 = fadd <8 x float> %134, %75
  %136 = fsub <8 x float> %134, %75
  %137 = shufflevector <8 x float> %135, <8 x float> %136, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %137, ptr %i.ad, align 4, !tbaa !23
  %138 = fsub <8 x float> %92, %79
  %139 = shufflevector <8 x float> %27, <8 x float> %91, <8 x i32> <i32 11, i32 12, i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison>
  %140 = shufflevector <2 x float> %i.y, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %141 = shufflevector <8 x float> %139, <8 x float> %140, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 poison>
  %142 = insertelement <8 x float> %141, float %5, i64 7
  %143 = fsub <8 x float> %138, %142
  store <8 x float> %143, ptr %23, align 4, !tbaa !23
  %foldExtExtBinop204 = fsub <2 x float> %36, %i.y
  %144 = fsub float %i.af, %4
  %145 = insertelement <2 x float> poison, float %144, i64 0
  %146 = shufflevector <2 x float> %145, <2 x float> %foldExtExtBinop204, <2 x i32> <i32 0, i32 2>
  %147 = fsub <2 x float> %146, %95
  store <2 x float> %147, ptr %28, align 4, !tbaa !23
  %i.al = fsub float %44, %57
  store float %i.al, ptr %29, align 4, !tbaa !23
  %148 = insertelement <6 x float> %46, float %i.af, i64 2
  %149 = insertelement <6 x float> %148, float %119, i64 3
  %150 = shufflevector <6 x float> %149, <6 x float> %47, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 3, i32 6, i32 7> ; 2 uses
  %151 = fsub <8 x float> %150, %51
  %152 = fadd <8 x float> %150, %51
  %153 = shufflevector <8 x float> %151, <8 x float> %152, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 5, i32 6, i32 7>
  %154 = shufflevector <8 x float> %54, <8 x float> %65, <8 x i32> <i32 0, i32 1, i32 14, i32 3, i32 4, i32 5, i32 6, i32 7>
  %155 = fadd <8 x float> %153, %154
  store <8 x float> %155, ptr %31, align 4, !tbaa !23
  %156 = shufflevector <4 x float> %i.l, <4 x float> %17, <8 x i32> <i32 0, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %157 = insertelement <8 x float> %156, float %5, i64 2
  %158 = shufflevector <8 x float> %157, <8 x float> %6, <8 x i32> <i32 0, i32 1, i32 2, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %159 = shufflevector <8 x float> %11, <8 x float> %92, <8 x i32> <i32 1, i32 2, i32 13, i32 14, i32 poison, i32 poison, i32 poison, i32 poison>
  %160 = shufflevector <8 x float> %158, <8 x float> %159, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %161 = shufflevector <2 x float> %36, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %162 = insertelement <3 x float> poison, float %i.af, i64 0
  %163 = shufflevector <3 x float> %162, <3 x float> %161, <8 x i32> <i32 0, i32 4, i32 5, i32 0, i32 4, i32 5, i32 0, i32 4>
  %164 = fsub <8 x float> %160, %163              ; 2 uses
  %165 = fadd <8 x float> %164, %65
  %166 = fsub <8 x float> %164, %65
  %167 = shufflevector <8 x float> %165, <8 x float> %166, <8 x i32> <i32 0, i32 1, i32 2, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <8 x float> %167, ptr %55, align 4, !tbaa !23
  %168 = getelementptr inbounds nuw i8, ptr %2, i64 272
  %169 = shufflevector <8 x float> %92, <8 x float> poison, <4 x i32> <i32 7, i32 2, i32 3, i32 4>
  %170 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %171 = insertelement <4 x float> %170, float %i.af, i64 1
  %i.am = fsub <4 x float> %169, %171             ; 2 uses
  %172 = shufflevector <4 x float> %41, <4 x float> %i.l, <4 x i32> <i32 1, i32 4, i32 poison, i32 poison>
  %173 = insertelement <4 x float> %172, float %8, i64 2
  %174 = insertelement <4 x float> %173, float %5, i64 3 ; 2 uses
  %175 = fsub <4 x float> %i.am, %174
  %176 = fadd <4 x float> %i.am, %174
  %177 = shufflevector <4 x float> %175, <4 x float> %176, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  store <4 x float> %177, ptr %168, align 4, !tbaa !23
  call void @_Z15calc_box_centeriPA3_KfPf(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.a)
  %.phi.trans.insert191 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre192 = load float, ptr %.phi.trans.insert191, align 4, !tbaa !23
  %broadcast.splatinsert197 = insertelement <8 x float> poison, float %.pre192, i64 0
  %broadcast.splat198 = shufflevector <8 x float> %broadcast.splatinsert197, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre190 = load float, ptr %.phi.trans.insert, align 4, !tbaa !23
  %broadcast.splatinsert195 = insertelement <8 x float> poison, float %.pre190, i64 0
  %broadcast.splat196 = shufflevector <8 x float> %broadcast.splatinsert195, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %.pre = load float, ptr %i.a, align 4, !tbaa !23
  %broadcast.splatinsert = insertelement <8 x float> poison, float %.pre, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %wide.vec = load <24 x float>, ptr %2, align 4, !tbaa !23 ; 3 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec199 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec200 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.an = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.ao = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.ap = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.aq = shufflevector <8 x float> %i.an, <8 x float> %i.ao, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ar = shufflevector <8 x float> %i.ap, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.aq, <16 x float> %i.ar, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %2, align 4, !tbaa !23
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.vec.1 = load <24 x float>, ptr %i.as, align 4, !tbaa !23 ; 3 uses
  %strided.vec.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec199.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec200.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.at = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.au = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.av = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.aw = shufflevector <8 x float> %i.at, <8 x float> %i.au, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ax = shufflevector <8 x float> %i.av, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.1 = shufflevector <16 x float> %i.aw, <16 x float> %i.ax, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.1, ptr %i.as, align 4, !tbaa !23
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %wide.vec.2 = load <24 x float>, ptr %i.ay, align 4, !tbaa !23 ; 3 uses
  %strided.vec.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec199.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec200.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.az = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.ba = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.bb = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.bc = shufflevector <8 x float> %i.az, <8 x float> %i.ba, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.bd = shufflevector <8 x float> %i.bb, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.2 = shufflevector <16 x float> %i.bc, <16 x float> %i.bd, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.2, ptr %i.ay, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z22compact_unitcell_edgesv() local_unnamed_addr #1 {
.preheader20:
  %i.a = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.8, i32 noundef 1413, i64 noundef 72, i64 noundef 4) ; 8 uses
  store <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0>, ptr %i.a, align 4, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <8 x i32> <i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 4>, ptr %i.b, align 4, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <8 x i32> <i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 8>, ptr %i.c, align 4, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <8 x i32> <i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 12>, ptr %i.d, align 4, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <8 x i32> <i32 16, i32 17, i32 17, i32 18, i32 18, i32 19, i32 19, i32 16>, ptr %i.e, align 4, !tbaa !33
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <8 x i32> <i32 20, i32 21, i32 21, i32 22, i32 22, i32 23, i32 23, i32 20>, ptr %i.f, align 4, !tbaa !33
  %scevgep = getelementptr i8, ptr %i.a, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %scevgep, ptr noundef nonnull align 16 dereferenceable(96) @_ZZ22compact_unitcell_edgesvE6hexcon, i64 96, i1 false), !tbaa !33
  ret ptr %i.a
}

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z16put_atoms_in_box7PbcTypePA3_KfN3gmx8ArrayRefINS3_11BasicVectorIfEEEE(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %2, ptr %3) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %i.c
  tail call fastcc void @_ZL22putAtomsInBoxTemplatedILb0EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_(i32 noundef %0, ptr noundef %1, ptr %2, ptr %i.d)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL22putAtomsInBoxTemplatedILb0EEv7PbcTypePA3_KfS3_N3gmx8ArrayRefINS4_11BasicVectorIfEEEES8_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr %2, ptr %3) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %5 = alloca %"class.gmx::BasicVector.6", align 4 ; 7 uses
  switch i32 %0, label %bb.e [
    i32 3, label %bb.b
    i32 2, label %vector.ph
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 96), align 8, !tbaa !16
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %4, i32 noundef 1448, ptr noundef nonnull @.str.50, ptr noundef %i.a) #28
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.a
  br label %vector.ph

vector.ph:                                        ; preds = %bb.a, %bb.e
  %exitcond23.not.1 = phi i1 [ false, %bb.e ], [ true, %bb.a ]
  %.0 = phi i64 [ 3, %bb.e ], [ 2, %bb.a ]        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %trip.count.minus.1 = add nsw i64 %.0, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.c = icmp samesign uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.gep39 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep39, <4 x i1> %i.c, <4 x float> poison), !tbaa !23
  %i.d = fdiv <4 x float> splat (float 1.000000e+00), %wide.masked.gather
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.d, ptr align 4 %5, <4 x i1> %i.c), !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.f = load float, ptr %i.e, align 4, !tbaa !23
  %i.g = fcmp une float %i.f, 0.000000e+00
  br i1 %i.g, label %bb.h, label %bb.f

bb.f:                                             ; preds = %vector.ph
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load float, ptr %i.h, align 4, !tbaa !23
  %i.j = fcmp une float %i.i, 0.000000e+00
  br i1 %i.j, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.l = load float, ptr %i.k, align 4, !tbaa !23
  %i.m = fcmp une float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.h, label %.preheader7

.preheader7:                                      ; preds = %bb.g
  %i.n = ptrtoint ptr %3 to i64
  %i.o = ptrtoint ptr %2 to i64
  %i.p = sub i64 %i.n, %i.o                       ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.preheader6.preheader, label %.loopexit5

.preheader6.preheader:                            ; preds = %.preheader7
  %i.r = udiv exact i64 %i.p, 12
  %i.s = load float, ptr %5, align 4, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.u = load float, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load float, ptr %i.w, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %.preheader6

bb.h:                                             ; preds = %bb.g, %bb.f, %vector.ph
  %i.z = ptrtoint ptr %3 to i64
  %i.aa = ptrtoint ptr %2 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %.preheader.lr.ph, label %.loopexit5

.preheader.lr.ph:                                 ; preds = %bb.h
  %i.ad = udiv exact i64 %i.ab, 12
  %i.ae = shl nuw nsw i64 %.0, 2
  %i.af = shl nuw nsw i64 %.0, 4
  %i.ag = add nsw i64 %i.af, -12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.i
  %.04916 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.al, %bb.i ] ; 3 uses
  %i.ah = mul i64 %.04916, 12
  %i.ai = add i64 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.04916 ; 12 uses
  br label %bb.j

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block46
  %i.ak = icmp samesign ugt i64 %indvars.iv30, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ak, label %bb.j, label %bb.i, !llvm.loop !104

bb.i:                                             ; preds = %.loopexit
  %i.al = add nuw nsw i64 %.04916, 1              ; 2 uses
  %exitcond34.not = icmp eq i64 %i.al, %i.ad
  br i1 %exitcond34.not, label %.loopexit5, label %.preheader, !llvm.loop !105

bb.j:                                             ; preds = %.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv30 = phi i64 [ %.0, %.preheader ], [ %indvars.iv.next31, %.loopexit ] ; 7 uses
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, -1 ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.next31
  %i.an = load float, ptr %i.am, align 4, !tbaa !23
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.next31
end_hunk_0
