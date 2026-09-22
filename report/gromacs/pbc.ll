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
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.l = load <4 x float>, ptr %1, align 4, !tbaa !23 ; 11 uses
  %i.m = shufflevector <4 x float> %i.l, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.n = shufflevector <8 x float> %i.m, <8 x float> <float poison, float poison, float poison, float poison, float poison, float poison, float poison, float -0.000000e+00>, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 15>
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 96
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.r = load <3 x float>, ptr %i.e, align 4, !tbaa !23 ; 3 uses
  %i.s = load <3 x float>, ptr %i.d, align 4, !tbaa !23 ; 3 uses
  %i.t = shufflevector <3 x float> %i.s, <3 x float> %i.r, <2 x i32> <i32 0, i32 3>
  %i.u = fcmp olt <2 x float> %i.t, zeroinitializer ; 2 uses
  %i.v = fneg <3 x float> %i.r
  %i.w = shufflevector <2 x i1> %i.u, <2 x i1> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.x = select <3 x i1> %i.w, <3 x float> %i.v, <3 x float> %i.r ; 12 uses
  %4 = shufflevector <3 x float> %i.x, <3 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %5 = extractelement <3 x float> %i.x, i64 0     ; 2 uses
  %6 = extractelement <3 x float> %i.x, i64 1
  %i.y = load <2 x float>, ptr %i.b, align 4, !tbaa !23 ; 6 uses
  %7 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.z = fneg <3 x float> %i.s
  %i.aa = shufflevector <2 x i1> %i.u, <2 x i1> poison, <3 x i32> zeroinitializer
  %i.ab = select <3 x i1> %i.aa, <3 x float> %i.z, <3 x float> %i.s ; 15 uses
  %8 = extractelement <3 x float> %i.ab, i64 2
  %9 = fadd <3 x float> %i.ab, %i.x               ; 4 uses
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2> ; 2 uses
  %11 = extractelement <3 x float> %i.x, i64 2    ; 2 uses
  %12 = shufflevector <3 x float> %i.ab, <3 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %13 = shufflevector <8 x float> %i.n, <8 x float> %12, <8 x i32> <i32 10, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %14 = shufflevector <3 x float> %i.x, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %15 = shufflevector <8 x float> %13, <8 x float> %14, <8 x i32> <i32 0, i32 poison, i32 9, i32 10, i32 4, i32 5, i32 6, i32 7>
  %16 = shufflevector <8 x float> %15, <8 x float> %4, <8 x i32> <i32 0, i32 8, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ac = shufflevector <2 x float> %i.y, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %17 = shufflevector <3 x float> %i.ac, <3 x float> %i.ab, <8 x i32> <i32 0, i32 1, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison> ; 2 uses
  %18 = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 140
  %19 = getelementptr inbounds nuw i8, ptr %2, i64 144
  %20 = getelementptr inbounds nuw i8, ptr %2, i64 148
  %21 = shufflevector <3 x float> %i.ab, <3 x float> %i.x, <8 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 4, i32 5>
  %22 = getelementptr inbounds nuw i8, ptr %2, i64 180
  %23 = load float, ptr %i.c, align 4, !tbaa !23  ; 9 uses
  %24 = extractelement <3 x float> %i.ab, i64 0   ; 2 uses
  %25 = extractelement <2 x float> %i.y, i64 0    ; 2 uses
  %26 = extractelement <3 x float> %i.ab, i64 1
  %27 = fneg float %5                             ; 2 uses
  %28 = extractelement <3 x float> %9, i64 2
  %29 = fadd float %28, %11
  %30 = fadd float %29, %23
  store float %30, ptr %i.ad, align 4, !tbaa !23
  %31 = shufflevector <3 x float> %9, <3 x float> poison, <8 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %32 = shufflevector <3 x float> %i.ab, <3 x float> %9, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %33 = shufflevector <3 x float> %i.ac, <3 x float> %i.ab, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 3, i32 4>
  %34 = insertelement <8 x float> %33, float %23, i64 5
  %35 = shufflevector <8 x float> %14, <8 x float> <float poison, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %36 = insertelement <8 x float> %17, float %23, i64 1
  %37 = insertelement <8 x float> poison, float %27, i64 0
  %38 = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %39 = shufflevector <4 x float> %i.l, <4 x float> %38, <8 x i32> <i32 0, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %40 = shufflevector <3 x float> %i.ab, <3 x float> %i.x, <8 x i32> <i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison>
  %41 = getelementptr inbounds nuw i8, ptr %2, i64 212
  %42 = extractelement <4 x float> %i.l, i64 0    ; 3 uses
  %43 = fneg float %42
  %44 = shufflevector <3 x float> %i.x, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 6 uses
  %45 = shufflevector <4 x float> %44, <4 x float> %i.l, <4 x i32> <i32 2, i32 0, i32 1, i32 4>
  %46 = shufflevector <4 x float> %i.l, <4 x float> %38, <4 x i32> <i32 poison, i32 0, i32 4, i32 poison>
  %47 = insertelement <4 x float> %46, float 0.000000e+00, i64 3
  %48 = insertelement <4 x float> poison, float %23, i64 0
  %49 = insertelement <4 x float> %47, float %23, i64 0 ; 2 uses
  %50 = fsub <4 x float> %45, %49                 ; 7 uses
  %51 = shufflevector <4 x float> %50, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %52 = shufflevector <3 x float> %i.ab, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %53 = insertelement <4 x float> %52, float -0.000000e+00, i64 3 ; 2 uses
  %54 = shufflevector <4 x float> %i.l, <4 x float> %38, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %55 = insertelement <4 x float> %54, float 0.000000e+00, i64 3
  %56 = shufflevector <4 x float> %48, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 poison> ; 2 uses
  %57 = shufflevector <4 x float> %55, <4 x float> %56, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %58 = fsub <4 x float> %53, %57                 ; 10 uses
  %59 = fsub float %26, %25                       ; 5 uses
  %60 = insertelement <4 x float> %44, float -0.000000e+00, i64 3
  %61 = fadd <4 x float> %58, %60                 ; 9 uses
  %62 = extractelement <4 x float> %58, i64 2     ; 2 uses
  %foldExtExtBinop = fadd <4 x float> %58, %61
  %i.ae = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.af = fsub float %i.ae, %23
  store float %i.af, ptr %i.g, align 4, !tbaa !23
  %63 = fsub float %62, %23
  %64 = fsub float %63, %11
  store float %64, ptr %i.i, align 4, !tbaa !23
  %foldExtExtBinop202 = fadd <4 x float> %58, %61
  %foldExtExtBinop204 = fsub <4 x float> %foldExtExtBinop202, %i.l
  %65 = shufflevector <4 x float> %58, <4 x float> %foldExtExtBinop204, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %66 = fadd <4 x float> %65, %53
  %67 = fadd <4 x float> %66, %61
  store <4 x float> %67, ptr %2, align 4, !tbaa !23
  %68 = shufflevector <4 x float> %58, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %69 = insertelement <2 x float> %68, float %59, i64 1 ; 2 uses
  %70 = shufflevector <4 x float> %i.l, <4 x float> %38, <2 x i32> <i32 0, i32 4> ; 2 uses
  %71 = fsub <2 x float> %69, %70
  %72 = shufflevector <3 x float> %i.x, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %73 = fsub <2 x float> %71, %72
  store <2 x float> %73, ptr %i.h, align 4, !tbaa !23
  %74 = fsub <2 x float> %69, %72
  %75 = shufflevector <3 x float> %i.ab, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %76 = fadd <2 x float> %74, %75
  store <2 x float> %76, ptr %i.j, align 4, !tbaa !23
  %77 = shufflevector <4 x float> %61, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %78 = shufflevector <8 x float> %17, <8 x float> %77, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 10> ; 2 uses
  %79 = fadd <8 x float> %10, %78
  %80 = shufflevector <8 x float> %78, <8 x float> %14, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10>
  %81 = fadd <8 x float> %79, %80
  store <8 x float> %81, ptr %3, align 4, !tbaa !23
  %82 = shufflevector <4 x float> %32, <4 x float> %i.l, <8 x i32> <i32 0, i32 1, i32 2, i32 4, i32 poison, i32 poison, i32 poison, i32 poison>
  %83 = shufflevector <8 x float> %82, <8 x float> %34, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.ag = fadd <8 x float> %83, %35               ; 4 uses
  %84 = shufflevector <8 x float> %36, <8 x float> %77, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 10> ; 2 uses
  %85 = fneg <8 x float> %84                      ; 5 uses
  %86 = fneg <2 x float> %75
  %87 = shufflevector <8 x float> %85, <8 x float> %i.m, <4 x i32> <i32 poison, i32 poison, i32 4, i32 8>
  %88 = shufflevector <2 x float> %86, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %89 = shufflevector <4 x float> %58, <4 x float> %44, <8 x i32> <i32 2, i32 poison, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 poison>
  %90 = shufflevector <4 x float> %87, <4 x float> %88, <8 x i32> <i32 4, i32 5, i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 poison>
  %91 = shufflevector <4 x float> %58, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <8 x i32> <i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 0, i32 poison>
  %92 = fsub <8 x float> %90, %91
  %93 = shufflevector <8 x float> %89, <8 x float> %92, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 4, i32 5, i32 6, i32 14>
  %94 = shufflevector <4 x float> %44, <4 x float> %58, <8 x i32> <i32 2, i32 4, i32 poison, i32 6, i32 4, i32 poison, i32 6, i32 poison>
  %95 = insertelement <8 x float> %94, float %59, i64 2
  %96 = shufflevector <4 x float> %61, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %97 = shufflevector <8 x float> %95, <8 x float> %96, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 2, i32 6, i32 8>
  %98 = fsub <8 x float> %93, %97
  %99 = fadd <8 x float> %98, %16
  store <8 x float> %99, ptr %i.k, align 4, !tbaa !23
  %100 = shufflevector <2 x float> %i.y, <2 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %101 = shufflevector <8 x float> %100, <8 x float> %85, <4 x i32> <i32 0, i32 poison, i32 13, i32 14>
  %102 = shufflevector <4 x float> %101, <4 x float> %56, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  %103 = insertelement <4 x float> poison, float %59, i64 0
  %104 = shufflevector <4 x float> %103, <4 x float> %58, <4 x i32> <i32 0, i32 6, i32 4, i32 0>
  %105 = fsub <4 x float> %102, %104
  %106 = shufflevector <4 x float> %61, <4 x float> %52, <4 x i32> <i32 poison, i32 2, i32 4, i32 5>
  %107 = extractelement <8 x float> %85, i64 7    ; 2 uses
  %108 = fsub float %107, %62
  %109 = fsub float %108, %8
  store float %109, ptr %i.p, align 4, !tbaa !23
  %110 = extractelement <8 x float> %i.ag, i64 0  ; 2 uses
  %i.ah = fadd float %110, %42
  %111 = fadd float %i.ah, %24
  store float %111, ptr %i.q, align 4, !tbaa !23
  %112 = shufflevector <8 x float> %i.ag, <8 x float> %31, <2 x i32> <i32 0, i32 9>
  %113 = fadd <2 x float> %112, %72
  %114 = fadd <2 x float> %113, %70
  store <2 x float> %114, ptr %18, align 4, !tbaa !23
  %115 = fsub float %43, %110
  %116 = fsub float %115, %24
  store float %116, ptr %19, align 4, !tbaa !23
  %117 = shufflevector <8 x float> %i.ag, <8 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %118 = shufflevector <8 x float> %10, <8 x float> %117, <8 x i32> <i32 0, i32 1, i32 10, i32 0, i32 1, i32 10, i32 0, i32 1>
  %119 = fsub <8 x float> %85, %118
  %120 = shufflevector <8 x float> %21, <8 x float> %84, <8 x i32> <i32 0, i32 1, i32 13, i32 14, i32 15, i32 5, i32 6, i32 7>
  %121 = fsub <8 x float> %119, %120
  store <8 x float> %121, ptr %20, align 4, !tbaa !23
  %122 = shufflevector <4 x float> %50, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %123 = shufflevector <8 x float> %39, <8 x float> %83, <8 x i32> <i32 0, i32 1, i32 13, i32 8, i32 poison, i32 poison, i32 poison, i32 poison>
  %124 = shufflevector <8 x float> %123, <8 x float> %40, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11> ; 2 uses
  %125 = shufflevector <4 x float> %61, <4 x float> %50, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 2, i32 5>
  %126 = shufflevector <3 x float> %i.ab, <3 x float> %i.x, <8 x i32> <i32 2, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison>
  %127 = shufflevector <8 x float> %126, <8 x float> %125, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15> ; 3 uses
  %128 = fsub <8 x float> %51, %127
  %i.ai = fadd <8 x float> %51, %127
  %129 = shufflevector <8 x float> %128, <8 x float> %i.ai, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 7> ; 2 uses
  %130 = shufflevector <4 x float> %44, <4 x float> %i.l, <8 x i32> <i32 2, i32 poison, i32 poison, i32 poison, i32 4, i32 poison, i32 poison, i32 poison>
  %131 = shufflevector <4 x float> %49, <4 x float> poison, <8 x i32> <i32 0, i32 poison, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %132 = shufflevector <8 x float> %127, <8 x float> %131, <8 x i32> <i32 poison, i32 4, i32 5, i32 6, i32 poison, i32 10, i32 8, i32 poison>
  %133 = shufflevector <8 x float> %130, <8 x float> %132, <8 x i32> <i32 0, i32 9, i32 10, i32 11, i32 4, i32 13, i32 14, i32 poison>
  %134 = shufflevector <3 x float> %i.ab, <3 x float> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %135 = shufflevector <8 x float> %133, <8 x float> %134, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8> ; 2 uses
  %i.aj = fadd <8 x float> %129, %135
  %i.ak = fsub <8 x float> %129, %135
  %136 = shufflevector <8 x float> %i.aj, <8 x float> %i.ak, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 7>
  store <8 x float> %136, ptr %41, align 4, !tbaa !23
  %137 = getelementptr inbounds nuw i8, ptr %2, i64 244
  %138 = extractelement <4 x float> %50, i64 0
  %139 = insertelement <2 x float> %i.y, float %23, i64 1
  %140 = shufflevector <4 x float> %50, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %141 = fsub <2 x float> %139, %140
  %142 = shufflevector <3 x float> %i.ab, <3 x float> poison, <2 x i32> <i32 1, i32 2>
  %143 = fadd <2 x float> %141, %142
  store <2 x float> %143, ptr %137, align 4, !tbaa !23
  %144 = getelementptr inbounds nuw i8, ptr %2, i64 252
  %145 = insertelement <4 x float> %52, float %27, i64 3
  %146 = shufflevector <4 x float> %44, <4 x float> %61, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %147 = getelementptr inbounds nuw i8, ptr %2, i64 268
  %148 = fneg <3 x float> %i.x
  %149 = shufflevector <3 x float> %148, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %150 = shufflevector <2 x float> %149, <2 x float> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %151 = shufflevector <8 x float> %37, <8 x float> %150, <8 x i32> <i32 0, i32 8, i32 9, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.al = fsub float %5, %42
  %152 = fadd float %59, %6                       ; 3 uses
  %153 = fadd float %59, %152
  %154 = fsub float %153, %25
  store float %154, ptr %i.f, align 4, !tbaa !23
  %155 = insertelement <4 x float> %106, float %152, i64 0
  %156 = fsub <4 x float> %105, %155
  store <4 x float> %156, ptr %i.o, align 4, !tbaa !23
  %157 = shufflevector <8 x float> %151, <8 x float> %122, <8 x i32> <i32 0, i32 1, i32 2, i32 9, i32 10, i32 8, i32 9, i32 10>
  %158 = fsub <8 x float> %157, %i.ag             ; 2 uses
  %159 = fsub <8 x float> %158, %124
  %160 = fadd <8 x float> %158, %124
  %161 = shufflevector <8 x float> %159, <8 x float> %160, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 14, i32 15>
  store <8 x float> %161, ptr %22, align 4, !tbaa !23
  %162 = insertelement <4 x float> poison, float %i.al, i64 0 ; 2 uses
  %163 = shufflevector <4 x float> %162, <4 x float> %50, <4 x i32> <i32 0, i32 6, i32 4, i32 0>
  %164 = fsub <4 x float> %145, %163
  %165 = fsub <4 x float> %164, %146
  store <4 x float> %165, ptr %144, align 4, !tbaa !23
  %166 = shufflevector <8 x float> %85, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 5, i32 6>
  %167 = shufflevector <2 x float> %149, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %168 = shufflevector <4 x float> %167, <4 x float> %166, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %169 = shufflevector <4 x float> %50, <4 x float> %162, <4 x i32> <i32 2, i32 0, i32 4, i32 2>
  %170 = fsub <4 x float> %168, %169              ; 2 uses
  %171 = shufflevector <4 x float> %61, <4 x float> %i.l, <4 x i32> <i32 poison, i32 2, i32 4, i32 poison>
  %172 = insertelement <4 x float> %171, float %152, i64 0
  %173 = shufflevector <4 x float> %172, <4 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.am = fsub <4 x float> %170, %173
  %174 = fadd <4 x float> %170, %173
  %175 = shufflevector <4 x float> %i.am, <4 x float> %174, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %175, ptr %147, align 4, !tbaa !23
  %176 = fsub float %107, %138
  %177 = fadd float %176, %23
  %178 = getelementptr inbounds nuw i8, ptr %2, i64 284
  store float %177, ptr %178, align 4, !tbaa !23
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
