inline.NumInlined: 412
inline.NumDeleted: 186
loop-unroll.NumCompletelyUnrolled: 90
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_Z15calc_box_centeriPA3_KfPf:bb.a
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
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 100
  %i.r = load <2 x float>, ptr %i.b, align 4, !tbaa !23 ; 7 uses
  %i.s = load float, ptr %i.c, align 4, !tbaa !23 ; 11 uses
  %i.t = load <3 x float>, ptr %i.d, align 4, !tbaa !23 ; 3 uses
  %i.u = extractelement <3 x float> %i.t, i64 0
  %i.v = fcmp olt float %i.u, 0.000000e+00
  %i.w = fneg <3 x float> %i.t
  %i.x = insertelement <3 x i1> poison, i1 %i.v, i64 0
  %i.y = shufflevector <3 x i1> %i.x, <3 x i1> poison, <3 x i32> zeroinitializer
  %i.z = select <3 x i1> %i.y, <3 x float> %i.w, <3 x float> %i.t ; 10 uses
  %3 = extractelement <3 x float> %i.z, i64 0     ; 2 uses
  %i.aa = extractelement <2 x float> %i.r, i64 0  ; 4 uses
  %i.ab = extractelement <3 x float> %i.z, i64 2  ; 2 uses
  %i.ac = load <3 x float>, ptr %i.e, align 4, !tbaa !23 ; 3 uses
  %i.ad = extractelement <3 x float> %i.ac, i64 0
  %i.ae = fcmp olt float %i.ad, 0.000000e+00
  %i.af = fneg <3 x float> %i.ac
  %i.ag = insertelement <3 x i1> poison, i1 %i.ae, i64 0
  %i.ah = shufflevector <3 x i1> %i.ag, <3 x i1> poison, <3 x i32> zeroinitializer
  %i.ai = select <3 x i1> %i.ah, <3 x float> %i.af, <3 x float> %i.ac ; 13 uses
  %i.aj = extractelement <3 x float> %i.ai, i64 0 ; 3 uses
  %i.ak = fadd <3 x float> %i.z, %i.ai
  %i.al = shufflevector <3 x float> %i.ak, <3 x float> poison, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2> ; 3 uses
  %i.am = extractelement <3 x float> %i.ai, i64 1 ; 2 uses
  %i.an = extractelement <3 x float> %i.ai, i64 2 ; 2 uses
  %i.ao = fneg float %i.aj                        ; 2 uses
  %i.ap = load float, ptr %1, align 4, !tbaa !23  ; 14 uses
  %i.aq = fneg float %i.ap
  %i.ar = shufflevector <3 x float> %i.z, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0> ; 5 uses
  %4 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison> ; 2 uses
  %i.as = insertelement <4 x float> %4, float %i.ap, i64 0
  %i.at = insertelement <4 x float> %i.as, float %i.s, i64 2
  %i.au = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.av = fsub <4 x float> %i.ar, %i.au           ; 9 uses
  %i.aw = insertelement <4 x float> %i.ar, float %i.ap, i64 3
  %i.ax = insertelement <4 x float> %4, float 0.000000e+00, i64 3
  %i.ay = insertelement <4 x float> %i.ax, float %i.ap, i64 0
  %i.az = insertelement <4 x float> %i.ay, float %i.s, i64 2
  %i.ba = fsub <4 x float> %i.aw, %i.az
  %i.bb = shufflevector <3 x float> %i.ai, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 4 uses
  %i.bc = insertelement <4 x float> %i.bb, float -0.000000e+00, i64 3
  %i.bd = fadd <4 x float> %i.ba, %i.bc           ; 9 uses
  %i.be = shufflevector <4 x float> %i.ar, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bf = fadd <4 x float> %i.av, %i.be           ; 2 uses
  %i.bg = fadd <4 x float> %i.bf, %i.bd
  %i.bh = fsub <4 x float> %i.bf, %i.bd
  %i.bi = shufflevector <4 x float> %i.bg, <4 x float> %i.bh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  store <4 x float> %i.bi, ptr %2, align 4, !tbaa !23
  %i.bj = extractelement <4 x float> %i.av, i64 1 ; 4 uses
  %i.bk = fadd float %i.bj, %i.am                 ; 3 uses
  %i.bl = fadd float %i.bj, %i.bk
  %i.bm = fsub float %i.bl, %i.aa
  store float %i.bm, ptr %i.f, align 4, !tbaa !23
  %5 = extractelement <4 x float> %i.av, i64 2
  %foldExtExtBinop = fadd <4 x float> %i.av, %i.bd
  %i.bn = extractelement <4 x float> %foldExtExtBinop, i64 2
  %6 = fsub float %i.bn, %i.s
  store float %6, ptr %i.g, align 4, !tbaa !23
  %i.bo = extractelement <4 x float> %i.av, i64 0
  %i.bp = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.bq = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.br = insertelement <2 x float> %i.bq, float %i.ap, i64 0
  %i.bs = fsub <2 x float> %i.bp, %i.br
  %i.bt = shufflevector <3 x float> %i.ai, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.bu = fsub <2 x float> %i.bs, %i.bt
  store <2 x float> %i.bu, ptr %i.h, align 4, !tbaa !23
  %i.bv = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bw = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.s, i64 2
  %i.bx = fsub <4 x float> %i.bv, %i.bw
  %i.by = fsub <4 x float> %i.bx, %i.bb
  %7 = shufflevector <3 x float> %i.z, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 2>
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ca = shufflevector <4 x float> %7, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 6, i32 0, i32 1, i32 3>
  %i.cb = fadd <4 x float> %i.bz, %i.ca
  store <4 x float> %i.cb, ptr %i.i, align 4, !tbaa !23
  %i.cc = fsub float %i.am, %i.bj
  %i.cd = fadd float %i.cc, %i.aa
  store float %i.cd, ptr %i.k, align 4, !tbaa !23
  %i.ce = fsub float %i.an, %5
  %i.cf = fadd float %i.ce, %i.s
  store float %i.cf, ptr %i.l, align 4, !tbaa !23
  %i.cg = fsub float %i.ap, %i.bo
  %i.ch = extractelement <4 x float> %i.bd, i64 0 ; 2 uses
  %i.ci = fsub float %i.cg, %i.ch
  store float %i.ci, ptr %i.m, align 4, !tbaa !23
  %i.cj = fsub float %i.aa, %i.bj
  %i.ck = fsub float %i.cj, %i.bk
  store float %i.ck, ptr %i.n, align 4, !tbaa !23
  %i.cl = shufflevector <2 x float> %i.r, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 3 uses
  %i.cm = shufflevector <3 x float> %i.cl, <3 x float> %i.z, <8 x i32> <i32 0, i32 1, i32 3, i32 4, i32 5, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cn = shufflevector <4 x float> %i.bd, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison> ; 3 uses
  %i.co = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 10> ; 2 uses
  %i.cp = fadd <8 x float> %i.al, %i.co
  %i.cq = shufflevector <3 x float> %i.ai, <3 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison> ; 2 uses
  %i.cr = shufflevector <8 x float> %i.co, <8 x float> %i.cq, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10>
  %i.cs = fadd <8 x float> %i.cp, %i.cr
  store <8 x float> %i.cs, ptr %i.q, align 4, !tbaa !23
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 132
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.cv = shufflevector <8 x float> %i.al, <8 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.cw = shufflevector <3 x float> %i.ai, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.cx = fadd <2 x float> %i.cv, %i.cw
  %i.cy = insertelement <2 x float> %i.r, float %i.s, i64 1 ; 2 uses
  %i.cz = fadd <2 x float> %i.cx, %i.cy
  store <2 x float> %i.cz, ptr %i.cu, align 4, !tbaa !23
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 144
  %8 = getelementptr inbounds nuw i8, ptr %2, i64 148
  %foldExtExtBinop202 = fadd <3 x float> %i.z, %i.ai ; 3 uses
  %9 = extractelement <3 x float> %foldExtExtBinop202, i64 0 ; 3 uses
  %i.db = insertelement <8 x float> %i.cm, float %i.s, i64 1
  %i.dc = shufflevector <8 x float> %i.db, <8 x float> %i.cn, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 8, i32 9, i32 10> ; 2 uses
  %i.dd = fneg <8 x float> %i.dc                  ; 5 uses
  %i.de = shufflevector <3 x float> %i.z, <3 x float> poison, <2 x i32> <i32 0, i32 1> ; 3 uses
  %i.df = fneg <2 x float> %i.de
  %i.dg = shufflevector <8 x float> %i.dd, <8 x float> %i.cq, <4 x i32> <i32 poison, i32 poison, i32 4, i32 8>
  %i.dh = shufflevector <2 x float> %i.df, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.di = shufflevector <4 x float> %i.dh, <4 x float> %i.dg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.dj = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.dk = fsub <4 x float> %i.di, %i.dj
  %i.dl = insertelement <4 x float> %i.bb, float %i.ap, i64 3
  %i.dm = fadd <4 x float> %i.dk, %i.dl
  store <4 x float> %i.dm, ptr %i.j, align 4, !tbaa !23
  %i.dn = shufflevector <8 x float> %i.dd, <8 x float> poison, <4 x i32> <i32 poison, i32 5, i32 6, i32 7>
  %i.do = insertelement <4 x float> %i.dn, float %i.s, i64 0
  %i.dp = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.dq = fsub <4 x float> %i.do, %i.dp
  %i.dr = shufflevector <4 x float> %i.bd, <4 x float> %i.ar, <4 x i32> <i32 2, i32 4, i32 5, i32 6>
  %i.ds = fsub <4 x float> %i.dq, %i.dr
  store <4 x float> %i.ds, ptr %i.o, align 4, !tbaa !23
  %10 = fadd float %9, %i.ap
  %11 = fadd float %10, %3
  store float %11, ptr %i.p, align 4, !tbaa !23
  %foldExtExtBinop204 = fadd <3 x float> %foldExtExtBinop202, %i.ai
  %12 = extractelement <3 x float> %foldExtExtBinop204, i64 0
  %13 = fadd float %12, %i.ap
  store float %13, ptr %i.ct, align 4, !tbaa !23
  %14 = fsub float %i.aq, %9
  %15 = fsub float %14, %3
  store float %15, ptr %i.da, align 4, !tbaa !23
  %i.dt = shufflevector <3 x float> %foldExtExtBinop202, <3 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.du = shufflevector <8 x float> %i.al, <8 x float> %i.dt, <8 x i32> <i32 0, i32 1, i32 10, i32 0, i32 1, i32 10, i32 0, i32 1>
  %i.dv = fsub <8 x float> %i.dd, %i.du
  %i.dw = shufflevector <3 x float> %i.z, <3 x float> %i.ai, <8 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 3, i32 4, i32 5>
  %i.dx = shufflevector <8 x float> %i.dw, <8 x float> %i.dc, <8 x i32> <i32 0, i32 1, i32 13, i32 14, i32 15, i32 5, i32 6, i32 7>
  %i.dy = fsub <8 x float> %i.dv, %i.dx
  store <8 x float> %i.dy, ptr %8, align 4, !tbaa !23
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.ea = fsub float %i.ao, %9
  %i.eb = fsub float %i.ea, %i.ap
  store float %i.eb, ptr %i.dz, align 4, !tbaa !23
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.ed = fneg <2 x float> %i.cw                  ; 2 uses
  %i.ee = fsub <2 x float> %i.ed, %i.cv
  %i.ef = fsub <2 x float> %i.ee, %i.cy
  store <2 x float> %i.ef, ptr %i.ec, align 4, !tbaa !23
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 192
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 200
  %16 = getelementptr inbounds nuw i8, ptr %2, i64 204
  %17 = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 220
  %18 = fsub float %i.aj, %i.ap                   ; 4 uses
  %i.ek = shufflevector <2 x float> %i.r, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 poison>
  %i.el = insertelement <3 x float> %i.ek, float %i.ap, i64 0
  %i.em = insertelement <3 x float> %i.el, float %i.s, i64 2 ; 2 uses
  %i.en = fsub <3 x float> %i.ai, %i.em           ; 6 uses
  %i.eo = shufflevector <3 x float> %i.en, <3 x float> poison, <8 x i32> <i32 1, i32 2, i32 0, i32 1, i32 2, i32 0, i32 1, i32 2> ; 3 uses
  %19 = extractelement <3 x float> %i.en, i64 1
  %20 = fsub float %19, %i.aa
  %21 = fsub float %18, %i.ap
  %22 = insertelement <2 x float> poison, float %21, i64 0
  %23 = insertelement <2 x float> %22, float %20, i64 1
  %24 = fsub <2 x float> %23, %i.de
  store <2 x float> %24, ptr %i.eg, align 4, !tbaa !23
  %25 = extractelement <3 x float> %i.en, i64 2   ; 2 uses
  %26 = fsub float %25, %i.s
  %27 = fsub float %26, %i.ab
  store float %27, ptr %i.eh, align 4, !tbaa !23
  %28 = shufflevector <3 x float> %i.en, <3 x float> poison, <2 x i32> <i32 poison, i32 1>
  %29 = insertelement <2 x float> %28, float %18, i64 0
  %30 = fsub <2 x float> %29, %i.de
  %31 = fadd <2 x float> %30, %i.bt
  store <2 x float> %31, ptr %16, align 4, !tbaa !23
  %32 = fsub float %25, %i.ab
  %33 = fadd float %32, %i.an
  store float %33, ptr %17, align 4, !tbaa !23
  %34 = fadd float %18, %i.aj
  %35 = fadd float %34, %i.ch
  store float %35, ptr %i.ei, align 4, !tbaa !23
  %36 = shufflevector <3 x float> %i.ai, <3 x float> %i.cl, <8 x i32> <i32 1, i32 2, i32 poison, i32 poison, i32 poison, i32 poison, i32 3, i32 poison>
  %37 = shufflevector <3 x float> %i.em, <3 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 2>
  %38 = shufflevector <8 x float> %36, <8 x float> %37, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 13, i32 6, i32 15>
  %39 = shufflevector <8 x float> %38, <8 x float> %i.cn, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 5, i32 6, i32 7> ; 3 uses
  %40 = fadd <8 x float> %39, %i.eo
  %41 = fsub <8 x float> %39, %i.eo
  %42 = shufflevector <8 x float> %40, <8 x float> %41, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 13, i32 14, i32 15> ; 2 uses
  %43 = shufflevector <3 x float> %i.cl, <3 x float> %i.z, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 3, i32 4, i32 5>
  %44 = shufflevector <8 x float> %43, <8 x float> %39, <8 x i32> <i32 11, i32 12, i32 13, i32 3, i32 15, i32 5, i32 6, i32 7> ; 2 uses
  %45 = fadd <8 x float> %42, %44
  %46 = fsub <8 x float> %42, %44
  %47 = shufflevector <8 x float> %45, <8 x float> %46, <8 x i32> <i32 0, i32 1, i32 10, i32 11, i32 12, i32 5, i32 6, i32 7>
  store <8 x float> %47, ptr %i.ej, align 4, !tbaa !23
  %48 = getelementptr inbounds nuw i8, ptr %2, i64 252
  %49 = insertelement <4 x float> %i.ar, float %i.ao, i64 3
  %50 = shufflevector <3 x float> %i.en, <3 x float> poison, <4 x i32> <i32 poison, i32 1, i32 2, i32 poison>
  %i.ep = insertelement <4 x float> poison, float %18, i64 0
  %51 = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %52 = shufflevector <4 x float> %51, <4 x float> %50, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %53 = fsub <4 x float> %49, %52
  %54 = shufflevector <4 x float> %i.bb, <4 x float> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %55 = fsub <4 x float> %53, %54
  store <4 x float> %55, ptr %48, align 4, !tbaa !23
  %56 = getelementptr inbounds nuw i8, ptr %2, i64 268
  %57 = shufflevector <8 x float> %i.dd, <8 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 5, i32 6>
  %58 = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %59 = shufflevector <4 x float> %58, <4 x float> %57, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %60 = shufflevector <3 x float> %i.en, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 1>
  %61 = shufflevector <4 x float> %60, <4 x float> %51, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.eq = fsub <4 x float> %59, %61               ; 2 uses
  %62 = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %63 = shufflevector <4 x float> %i.bd, <4 x float> %62, <4 x i32> <i32 poison, i32 2, i32 poison, i32 4>
  %64 = insertelement <4 x float> %63, float %i.bk, i64 0
  %65 = insertelement <4 x float> %64, float %i.ap, i64 2 ; 2 uses
  %66 = fsub <4 x float> %i.eq, %65
  %67 = fadd <4 x float> %i.eq, %65
  %68 = shufflevector <4 x float> %66, <4 x float> %67, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %68, ptr %56, align 4, !tbaa !23
  %shift = shufflevector <8 x float> %i.dd, <8 x float> poison, <8 x i32> <i32 poison, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop206 = fsub <8 x float> %shift, %i.eo
  %69 = extractelement <8 x float> %foldExtExtBinop206, i64 1
  %70 = fadd float %69, %i.s
  %71 = getelementptr inbounds nuw i8, ptr %2, i64 284
  store float %70, ptr %71, align 4, !tbaa !23
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
  %i.er = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.es = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.et = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.eu = shufflevector <8 x float> %i.er, <8 x float> %i.es, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ev = shufflevector <8 x float> %i.et, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x float> %i.eu, <16 x float> %i.ev, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec, ptr %2, align 4, !tbaa !23
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %wide.vec.1 = load <24 x float>, ptr %i.ew, align 4, !tbaa !23 ; 3 uses
  %strided.vec.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec199.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec200.1 = shufflevector <24 x float> %wide.vec.1, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.ex = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.ey = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.ez = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200.1, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.fa = shufflevector <8 x float> %i.ex, <8 x float> %i.ey, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fb = shufflevector <8 x float> %i.ez, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.1 = shufflevector <16 x float> %i.fa, <16 x float> %i.fb, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.1, ptr %i.ew, align 4, !tbaa !23
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 192 ; 2 uses
  %wide.vec.2 = load <24 x float>, ptr %i.fc, align 4, !tbaa !23 ; 3 uses
  %strided.vec.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec199.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec200.2 = shufflevector <24 x float> %wide.vec.2, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.fd = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat)
  %i.fe = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec199.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat196)
  %i.ff = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %strided.vec200.2, <8 x float> splat (float 2.500000e-01), <8 x float> %broadcast.splat198)
  %i.fg = shufflevector <8 x float> %i.fd, <8 x float> %i.fe, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.fh = shufflevector <8 x float> %i.ff, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec.2 = shufflevector <16 x float> %i.fg, <16 x float> %i.fh, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec.2, ptr %i.fc, align 4, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_Z22compact_unitcell_edgesv() local_unnamed_addr #1 {
.preheader20:
  %i.a = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.8, i32 noundef 1413, i64 noundef 72, i64 noundef 4) ; 8 uses
  store <8 x i32> <i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 0>, ptr %i.a, align 4, !tbaa !36
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <8 x i32> <i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 4>, ptr %i.b, align 4, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <8 x i32> <i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 8>, ptr %i.c, align 4, !tbaa !36
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store <8 x i32> <i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 12>, ptr %i.d, align 4, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store <8 x i32> <i32 16, i32 17, i32 17, i32 18, i32 18, i32 19, i32 19, i32 16>, ptr %i.e, align 4, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store <8 x i32> <i32 20, i32 21, i32 21, i32 22, i32 22, i32 23, i32 23, i32 20>, ptr %i.f, align 4, !tbaa !36
  %scevgep = getelementptr i8, ptr %i.a, i64 192
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(96) %scevgep, ptr noundef nonnull align 16 dereferenceable(96) @_ZZ22compact_unitcell_edgesvE6hexcon, i64 96, i1 false), !tbaa !36
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
  %5 = alloca %"class.gmx::BasicVector.6", align 16 ; 7 uses
  switch i32 %0, label %bb.e [
    i32 3, label %bb.b
    i32 2, label %vector.ph
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZNSt10filesystem7__cxx114pathC2IA60_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 1 dereferenceable(60) @.str.8, i8 noundef zeroext 2)
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Z14c_pbcTypeNamesB5cxx11, i64 96), align 8, !tbaa !15
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
  %.0 = phi i64 [ 3, %bb.e ], [ 2, %bb.a ]        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %trip.count.minus.1 = add nsw i64 %.0, -1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %trip.count.minus.1, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.c = icmp samesign uge <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3> ; 2 uses
  %wide.gep = getelementptr inbounds nuw [12 x i8], ptr %1, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.gep39 = getelementptr inbounds nuw [4 x i8], <4 x ptr> %wide.gep, <4 x i64> <i64 0, i64 1, i64 2, i64 3>
  %wide.masked.gather = tail call <4 x float> @llvm.masked.gather.v4f32.v4p0(<4 x ptr> align 4 %wide.gep39, <4 x i1> %i.c, <4 x float> poison), !tbaa !23
  %i.d = fdiv <4 x float> splat (float 1.000000e+00), %wide.masked.gather
  call void @llvm.masked.store.v4f32.p0(<4 x float> %i.d, ptr align 16 %5, <4 x i1> %i.c), !tbaa !23
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
  %i.s = load float, ptr %5, align 16, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.u = load float, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.x = load float, ptr %i.w, align 8
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
  %i.af = mul nuw nsw i64 %.0, 12
  %i.ag = shl nuw nsw i64 %.0, 4
  %i.ah = add nsw i64 %i.ag, -12
  %i.ai = getelementptr i8, ptr %1, i64 %i.af
  %i.aj = getelementptr i8, ptr %i.ai, i64 -12
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.i
  %.04916 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ao, %bb.i ] ; 3 uses
  %i.ak = mul i64 %.04916, 12                     ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %2, i64 %i.ak
  %i.al = add i64 %i.ae, %i.ak
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %2, i64 %.04916 ; 11 uses
  br label %bb.j

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block48
  %i.an = icmp samesign ugt i64 %indvars.iv30, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %i.an, label %bb.j, label %bb.i, !llvm.loop !71

bb.i:                                             ; preds = %.loopexit
  %i.ao = add nuw nsw i64 %.04916, 1              ; 2 uses
  %exitcond34.not = icmp eq i64 %i.ao, %i.ad
  br i1 %exitcond34.not, label %.loopexit5, label %.preheader, !llvm.loop !72

bb.j:                                             ; preds = %.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.preheader ], [ %indvar.next, %.loopexit ] ; 5 uses
  %indvars.iv30 = phi i64 [ %.0, %.preheader ], [ %indvars.iv.next31, %.loopexit ] ; 7 uses
end_hunk_0
