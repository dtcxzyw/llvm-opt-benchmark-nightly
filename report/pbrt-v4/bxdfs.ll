Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/bxdfs?download=true
inline.NumInlined: 4082
inline.NumDeleted: 875
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN4pbrt8HairBxDF2MpEfffff:bb.a
  %i.l = fdiv nnan float 1.000000e+00, %i.k
  %i.m = fadd float %i.l, %i.j
  %i.n = fmul float %i.m, 5.000000e-01
  %i.o = fadd float %i.b, %i.n
  br label %_ZN4pbrt5LogI0Ef.exit

bb.d:                                             ; preds = %bb.b
  %i.p = fmul float %i.b, %i.b                    ; 10 uses
  %i.q = fmul float %i.p, 2.500000e-01
  %i.r = fmul float %i.p, %i.p                    ; 2 uses
  %i.s = fmul float %i.r, 1.562500e-02
  %i.t = fmul float %i.p, %i.r                    ; 2 uses
  %i.u = fdiv float %i.t, 2.304000e+03
  %i.v = fmul float %i.p, %i.t                    ; 2 uses
  %i.w = fdiv float %i.v, 1.474560e+05
  %i.x = fmul float %i.p, %i.v                    ; 2 uses
  %i.y = fdiv float %i.x, 1.474560e+07
  %i.z = fmul float %i.p, %i.x                    ; 2 uses
  %i.aa = fmul float %i.p, %i.z                   ; 2 uses
  %i.ab = fmul float %i.p, %i.aa                  ; 2 uses
  %i.ac = fmul float %i.p, %i.ab
  %i.ad = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.ab, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 3
  %i.ah = fdiv <4 x float> %i.ag, <float f0x4EFD2000, float f0x52C1CC80, float f0x56C1CC80, float f0x5AF546D2>
  %op.rdx25 = fadd float %i.q, 1.000000e+00
  %op.rdx26 = fadd float %op.rdx25, %i.s
  %op.rdx27 = fadd float %op.rdx26, %i.u
  %op.rdx28 = fadd float %op.rdx27, %i.w
  %op.rdx29 = fadd float %op.rdx28, %i.y
  %i.ai = tail call float @llvm.vector.reduce.fadd.v4f32(float %op.rdx29, <4 x float> %i.ah)
  %i.aj = tail call noundef float @logf(float noundef %i.ai) #31
  br label %_ZN4pbrt5LogI0Ef.exit

_ZN4pbrt5LogI0Ef.exit:                            ; preds = %bb.c, %bb.d
  %.0.i = phi float [ %i.o, %bb.c ], [ %i.aj, %bb.d ]
  %i.ak = fsub float %.0.i, %i.d
  %i.al = fdiv float 1.000000e+00, %4
  %i.am = fsub float %i.ak, %i.al
  %i.an = fadd float %i.am, 6.931000e-01
  %i.ao = fmul float %4, 2.000000e+00
  %i.ap = fdiv float 1.000000e+00, %i.ao
  %i.aq = tail call noundef float @logf(float noundef %i.ap) #31
  %i.ar = fadd float %i.aq, %i.an
  %i.as = fmul float %i.ar, f0x3FB8AA3B           ; 2 uses
  %i.at = tail call noundef float @llvm.floor.f32(float %i.as) ; 2 uses
  %i.au = fsub float %i.as, %i.at                 ; 3 uses
  %i.av = fptosi float %i.at to i32
  %i.aw = tail call noundef float @llvm.fma.f32(float %i.au, float f0x3DA00AC9, float f0x3E679A0B)
  %i.ax = tail call noundef float @llvm.fma.f32(float %i.au, float %i.aw, float f0x3F321004)
  %i.ay = tail call noundef float @llvm.fma.f32(float %i.au, float %i.ax, float 1.000000e+00)
  %i.az = bitcast float %i.ay to i32              ; 2 uses
  %i.ba = lshr i32 %i.az, 23
  %i.bb = add i32 %i.av, -127
  %i.bc = add i32 %i.bb, %i.ba                    ; 3 uses
  %i.bd = icmp slt i32 %i.bc, -126
  br i1 %i.bd, label %_ZN4pbrt7FastExpEf.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4pbrt5LogI0Ef.exit
  %i.be = icmp sgt i32 %i.bc, 127
  br i1 %i.be, label %_ZN4pbrt7FastExpEf.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bf = and i32 %i.az, -2139095041
  %i.bg = shl nsw i32 %i.bc, 23
  %i.bh = add nsw i32 %i.bg, 1065353216
  %i.bi = or i32 %i.bh, %i.bf
  %i.bj = bitcast i32 %i.bi to float
  br label %_ZN4pbrt7FastExpEf.exit

bb.g:                                             ; preds = %bb.a
  %i.bk = fmul float %i.d, f0xBFB8AA3B            ; 2 uses
  %i.bl = tail call noundef float @llvm.floor.f32(float %i.bk) ; 2 uses
  %i.bm = fsub float %i.bk, %i.bl                 ; 3 uses
  %i.bn = fptosi float %i.bl to i32
  %i.bo = tail call noundef float @llvm.fma.f32(float %i.bm, float f0x3DA00AC9, float f0x3E679A0B)
  %i.bp = tail call noundef float @llvm.fma.f32(float %i.bm, float %i.bo, float f0x3F321004)
  %i.bq = tail call noundef float @llvm.fma.f32(float %i.bm, float %i.bp, float 1.000000e+00)
  %i.br = bitcast float %i.bq to i32              ; 2 uses
  %i.bs = lshr i32 %i.br, 23
  %i.bt = add i32 %i.bn, -127
  %i.bu = add i32 %i.bt, %i.bs                    ; 3 uses
  %i.bv = icmp slt i32 %i.bu, -126
  br i1 %i.bv, label %_ZN4pbrt7FastExpEf.exit18, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = icmp sgt i32 %i.bu, 127
  br i1 %i.bw, label %_ZN4pbrt7FastExpEf.exit18, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = and i32 %i.br, -2139095041
  %i.by = shl nsw i32 %i.bu, 23
  %i.bz = add nsw i32 %i.by, 1065353216
  %i.ca = or i32 %i.bz, %i.bx
  %i.cb = bitcast i32 %i.ca to float
  br label %_ZN4pbrt7FastExpEf.exit18

_ZN4pbrt7FastExpEf.exit18:                        ; preds = %bb.g, %bb.h, %bb.i
  %.0.i17 = phi float [ %i.cb, %bb.i ], [ 0.000000e+00, %bb.g ], [ +inf, %bb.h ]
  %i.cc = fmul float %i.b, %i.b                   ; 10 uses
  %i.cd = fmul float %i.cc, 2.500000e-01
  %i.ce = fmul float %i.cc, %i.cc                 ; 2 uses
  %i.cf = fmul float %i.ce, 1.562500e-02
  %i.cg = fmul float %i.cc, %i.ce                 ; 2 uses
  %i.ch = fdiv float %i.cg, 2.304000e+03
  %i.ci = fmul float %i.cc, %i.cg                 ; 2 uses
  %i.cj = fdiv float %i.ci, 1.474560e+05
  %i.ck = fmul float %i.cc, %i.ci                 ; 2 uses
  %i.cl = fdiv float %i.ck, 1.474560e+07
  %i.cm = fmul float %i.cc, %i.ck                 ; 2 uses
  %i.cn = fmul float %i.cc, %i.cm                 ; 2 uses
  %i.co = fmul float %i.cc, %i.cn                 ; 2 uses
  %i.cp = fmul float %i.cc, %i.co
  %i.cq = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cr = insertelement <4 x float> %i.cq, float %i.cn, i64 1
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 2
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 3
  %i.cu = fdiv <4 x float> %i.ct, <float f0x4EFD2000, float f0x52C1CC80, float f0x56C1CC80, float f0x5AF546D2>
  %op.rdx = fadd float %i.cd, 1.000000e+00
  %op.rdx21 = fadd float %op.rdx, %i.cf
  %op.rdx22 = fadd float %op.rdx21, %i.ch
  %op.rdx23 = fadd float %op.rdx22, %i.cj
  %op.rdx24 = fadd float %op.rdx23, %i.cl
  %i.cv = tail call float @llvm.vector.reduce.fadd.v4f32(float %op.rdx24, <4 x float> %i.cu)
  %i.cw = fmul float %i.cv, %.0.i17
  %i.cx = fdiv float 1.000000e+00, %4
  %i.cy = tail call noundef float @sinhf(float noundef %i.cx) #31
  %i.cz = fmul float %i.cy, 2.000000e+00
  %i.da = fmul float %4, %i.cz
  %i.db = fdiv float %i.cw, %i.da
  br label %_ZN4pbrt7FastExpEf.exit

_ZN4pbrt7FastExpEf.exit:                          ; preds = %bb.f, %bb.e, %_ZN4pbrt5LogI0Ef.exit, %_ZN4pbrt7FastExpEf.exit18
  %i.dc = phi float [ %i.db, %_ZN4pbrt7FastExpEf.exit18 ], [ %i.bj, %bb.f ], [ 0.000000e+00, %_ZN4pbrt5LogI0Ef.exit ], [ +inf, %bb.e ]
  ret float %i.dc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF5ApPDFEf(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(76) %0, float noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = fmul float %1, %1
  %i.b = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.c, float %i.b, float 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load float, ptr %i.d, align 4, !tbaa !84 ; 5 uses
  %i.f = fdiv float %sqrt.i, %i.e                 ; 2 uses
  %i.g = fmul float %i.f, %i.f
  %i.h = fsub float 1.000000e+00, %i.g            ; 2 uses
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  %.sroa.speculated.i27 = select i1 %i.i, float %i.h, float 0.000000e+00
  %sqrt.i28 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i27)
  %i.j = fmul float %i.e, %i.e
  %i.k = fmul float %sqrt.i, %sqrt.i
  %i.l = fsub float %i.j, %i.k                    ; 2 uses
  %i.m = fcmp ogt float %i.l, 0.000000e+00
  %.sroa.speculated.i29 = select i1 %i.m, float %i.l, float 0.000000e+00
  %sqrt.i30 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i29)
  %i.n = fdiv float %sqrt.i30, %1
  %i.o = load float, ptr %0, align 4, !tbaa !83   ; 3 uses
  %i.p = fdiv float %i.o, %i.n                    ; 5 uses
  %i.q = fmul float %i.p, %i.p
  %i.r = fsub float 1.000000e+00, %i.q            ; 2 uses
  %i.s = fcmp ogt float %i.r, 0.000000e+00
  %.sroa.speculated.i31 = select i1 %i.s, float %i.r, float 0.000000e+00
  %sqrt.i32 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i31)
  %i.t = fcmp olt float %i.p, -1.000000e+00
  %i.u = fcmp ogt float %i.p, 1.000000e+00
  %..i.i = select i1 %i.u, float 1.000000e+00, float %i.p
  %.0.i.i = select i1 %i.t, float -1.000000e+00, float %..i.i ; 2 uses
  %i.v = fcmp olt float %.0.i.i, -1.000000e+00
  br i1 %i.v, label %cdce.call, label %cdce.end, !prof !70

cdce.call:                                        ; preds = %bb.a
  %i.w = tail call noundef float @asinf(float noundef %.0.i.i) #31 ; 0 uses
  br label %cdce.end

cdce.end:                                         ; preds = %bb.a, %cdce.call
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = fmul float %sqrt.i32, 2.000000e+00
  %i.z = fdiv float %i.y, %sqrt.i28
  %i.aa = load <4 x float>, ptr %i.x, align 4, !tbaa !20
  %i.ab = fneg <4 x float> %i.aa
  %i.ac = insertelement <4 x float> poison, float %i.z, i64 0
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ae = fmul <4 x float> %i.ad, %i.ab           ; 4 uses
  %i.af = extractelement <4 x float> %i.ae, i64 0
  %i.ag = tail call noundef float @expf(float noundef %i.af) #31
  %i.ah = extractelement <4 x float> %i.ae, i64 1
  %i.ai = tail call noundef float @expf(float noundef %i.ah) #31
  %i.aj = extractelement <4 x float> %i.ae, i64 2
  %i.ak = tail call noundef float @expf(float noundef %i.aj) #31
  %i.al = extractelement <4 x float> %i.ae, i64 3
  %i.am = tail call noundef float @expf(float noundef %i.al) #31
  %i.an = fmul float %i.o, %i.o
  %i.ao = fsub float 1.000000e+00, %i.an          ; 2 uses
  %i.ap = fcmp ogt float %i.ao, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.ap, float %i.ao, float 0.000000e+00
  %sqrt.i.i = tail call nnan ninf float @llvm.sqrt.f32(float %.sroa.speculated.i.i)
  %i.aq = fmul float %1, %sqrt.i.i                ; 3 uses
  %i.ar = fcmp olt float %i.aq, -1.000000e+00
  %i.as = fcmp ogt float %i.aq, 1.000000e+00
  %..i.i.i = select i1 %i.as, float 1.000000e+00, float %i.aq
  %.0.i.i.i = select i1 %i.ar, float -1.000000e+00, float %..i.i.i ; 3 uses
  %i.at = fcmp olt float %.0.i.i.i, 0.000000e+00  ; 2 uses
  %i.au = fdiv float 1.000000e+00, %i.e
  %i.av = fneg float %.0.i.i.i
  %.025.i.i = select i1 %i.at, float %i.au, float %i.e ; 4 uses
  %.024.i.i = select i1 %i.at, float %i.av, float %.0.i.i.i ; 5 uses
  %i.aw = fmul float %.024.i.i, %.024.i.i
  %i.ax = fsub float 1.000000e+00, %i.aw
  %i.ay = fmul float %.025.i.i, %.025.i.i
  %i.az = fdiv float %i.ax, %i.ay                 ; 2 uses
  %i.ba = fcmp ult float %i.az, 1.000000e+00
  br i1 %i.ba, label %bb.b, label %_ZN4pbrt12FrDielectricEff.exit.i

bb.b:                                             ; preds = %cdce.end
  %i.bb = fsub float 1.000000e+00, %i.az          ; 2 uses
  %i.bc = fcmp ogt float %i.bb, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.bc, float %i.bb, float 0.000000e+00
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 3 uses
  %i.bd = fmul float %.025.i.i, %.024.i.i         ; 2 uses
  %i.be = fsub float %i.bd, %sqrt.i.i.i
  %i.bf = fadd float %i.bd, %sqrt.i.i.i
  %i.bg = fdiv float %i.be, %i.bf                 ; 2 uses
  %i.bh = fmul float %.025.i.i, %sqrt.i.i.i       ; 2 uses
  %i.bi = fsub float %.024.i.i, %i.bh
  %i.bj = fadd float %.024.i.i, %i.bh
  %i.bk = fdiv float %i.bi, %i.bj                 ; 2 uses
  %i.bl = fmul float %i.bg, %i.bg
  %i.bm = fmul float %i.bk, %i.bk
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = fmul float %i.bn, 5.000000e-01
  br label %_ZN4pbrt12FrDielectricEff.exit.i

_ZN4pbrt12FrDielectricEff.exit.i:                 ; preds = %bb.b, %cdce.end
  %.0.i.i43 = phi float [ %i.bo, %bb.b ], [ 1.000000e+00, %cdce.end ] ; 6 uses
  %i.bp = fsub float 1.000000e+00, %.0.i.i43      ; 2 uses
  %i.bq = fmul float %i.bp, %i.bp
  %i.br = insertelement <4 x float> poison, float %i.ag, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.ai, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.ak, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.am, i64 3 ; 4 uses
  %i.bv = insertelement <4 x float> poison, float %i.bq, i64 0
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fmul <4 x float> %i.bu, %i.bw           ; 5 uses
  %i.by = fmul <4 x float> %i.bu, %i.bx
  %i.bz = insertelement <4 x float> poison, float %.0.i.i43, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cb = fmul <4 x float> %i.ca, %i.by           ; 5 uses
  %i.cc = fmul <4 x float> %i.bu, %i.ca
  %i.cd = fsub <4 x float> splat (float 1.000000e+00), %i.cc ; 2 uses
  %i.ce = fcmp une <4 x float> %i.cd, zeroinitializer
  %i.cf = bitcast <4 x i1> %i.ce to i4
  %.not = icmp eq i4 %i.cf, 0                     ; 2 uses
  %i.cg = fmul <4 x float> %i.ca, %i.cb
  %i.ch = fmul <4 x float> %i.bu, %i.cg
  %i.ci = fdiv <4 x float> %i.ch, %i.cd           ; 2 uses
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ck = shufflevector <4 x float> %i.ci, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.sroa.40.0 = select i1 %.not, <2 x float> zeroinitializer, <2 x float> %i.ck ; 2 uses
  %.sroa.34.0 = select i1 %.not, <2 x float> zeroinitializer, <2 x float> %i.cj ; 2 uses
  %i.cl = fadd float %.0.i.i43, %.0.i.i43
  %i.cm = fadd float %i.cl, %.0.i.i43
  %shift = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %i.bx, %shift
  %shift82 = shufflevector <4 x float> %i.bx, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop83 = fadd <4 x float> %foldExtExtBinop, %shift82
  %shift85 = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop86 = fadd <4 x float> %i.cb, %shift85
  %shift88 = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop89 = fadd <4 x float> %foldExtExtBinop86, %shift88
  %shift91 = shufflevector <2 x float> %.sroa.34.0, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop92 = fadd <2 x float> %.sroa.34.0, %shift91
  %foldExtExtBinop94 = fadd <2 x float> %foldExtExtBinop92, %.sroa.40.0
  %i.cn = shufflevector <2 x float> %foldExtExtBinop94, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.co = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> %foldExtExtBinop83, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> %foldExtExtBinop89, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cs = shufflevector <2 x float> %.sroa.40.0, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.ct = insertelement <4 x float> %i.cs, float %.0.i.i43, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> %i.cb, <4 x i32> <i32 0, i32 poison, i32 7, i32 3>
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> %i.bx, <4 x i32> <i32 0, i32 7, i32 2, i32 3>
  %i.cw = fadd <4 x float> %i.cr, %i.cv
  %i.cx = fmul <4 x float> %i.cw, splat (float 2.500000e-01) ; 5 uses
  %i.cy = extractelement <4 x float> %i.cx, i64 0
  %i.cz = fadd float %i.cy, 0.000000e+00
  %i.da = extractelement <4 x float> %i.cx, i64 1
  %i.db = fadd float %i.cz, %i.da
  %i.dc = extractelement <4 x float> %i.cx, i64 2
  %i.dd = fadd float %i.db, %i.dc
  %i.de = extractelement <4 x float> %i.cx, i64 3
  %i.df = fadd float %i.dd, %i.de
  %i.dg = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = fdiv <4 x float> %i.cx, %i.dh           ; 2 uses
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.dk = shufflevector <4 x float> %i.di, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.dj, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.dk, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt8HairBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.pstd::optional") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(76) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 %6, i32 %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph.i:
  %8 = alloca %"class.pstd::array", align 8       ; 5 uses
  %.sroa.098.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 14 uses
  %foldExtExtBinop = fmul <2 x float> %2, %2
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.b = fsub float 1.000000e+00, %i.a            ; 2 uses
  %i.c = fcmp ogt float %i.b, 0.000000e+00
  %.sroa.speculated.i = select i1 %i.c, float %i.b, float 0.000000e+00
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i) ; 16 uses
  %.sroa.098.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.d = tail call noundef float @atan2f(float noundef %3, float noundef %.sroa.098.4.vec.extract) #31
  %i.e = load float, ptr %1, align 4, !tbaa !83   ; 4 uses
  %i.f = fcmp olt float %i.e, -1.000000e+00
  %i.g = fcmp ogt float %i.e, 1.000000e+00
  %..i.i = select i1 %i.g, float 1.000000e+00, float %i.e
  %.0.i.i = select i1 %i.f, float -1.000000e+00, float %..i.i
  %i.h = tail call noundef float @asinf(float noundef %.0.i.i) #31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.i = tail call { <2 x float>, <2 x float> } @_ZNK4pbrt8HairBxDF5ApPDFEf(ptr noundef nonnull align 4 dereferenceable(76) %1, float noundef %sqrt.i) ; 2 uses
  %i.j = extractvalue { <2 x float>, <2 x float> } %i.i, 0 ; 3 uses
  store <2 x float> %i.j, ptr %8, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = extractvalue { <2 x float>, <2 x float> } %i.i, 1 ; 3 uses
  store <2 x float> %i.l, ptr %i.k, align 8
  %i.m = extractelement <2 x float> %i.j, i64 0   ; 2 uses
  %i.n = fadd float %i.m, 0.000000e+00
  %i.o = extractelement <2 x float> %i.j, i64 1   ; 2 uses
  %i.p = fadd float %i.n, %i.o
  %i.q = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.r = fadd float %i.p, %i.q
  %i.s = extractelement <2 x float> %i.l, i64 1   ; 2 uses
  %i.t = fadd float %i.r, %i.s                    ; 2 uses
  %i.u = fmul float %4, %i.t                      ; 5 uses
  %i.v = fcmp oeq float %i.u, %i.t
  br i1 %i.v, label %bb.a, label %_ZN4pbrt13NextFloatDownEf.exit.i

bb.a:                                             ; preds = %.lr.ph.i
  %or.cond.i.i = fcmp oeq float %i.u, -inf
  br i1 %or.cond.i.i, label %_ZN4pbrt13NextFloatDownEf.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = fcmp oeq float %i.u, 0.000000e+00
  %spec.store.select.i.i = select i1 %i.w, float -0.000000e+00, float %i.u ; 2 uses
  %i.x = bitcast float %spec.store.select.i.i to i32
  %i.y = fcmp ogt float %spec.store.select.i.i, 0.000000e+00
  %.0.v.i.i = select i1 %i.y, i32 -1, i32 1
  %.0.i.i108 = add i32 %.0.v.i.i, %i.x
  %i.z = bitcast i32 %.0.i.i108 to float
  br label %_ZN4pbrt13NextFloatDownEf.exit.i

_ZN4pbrt13NextFloatDownEf.exit.i:                 ; preds = %bb.b, %bb.a, %.lr.ph.i
  %.031.i = phi float [ %i.u, %.lr.ph.i ], [ %i.z, %bb.b ], [ -inf, %bb.a ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN4pbrt13NextFloatDownEf.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %_ZN4pbrt13NextFloatDownEf.exit.i ] ; 5 uses
  %.0.i = phi float [ %i.ac, %bb.c ], [ 0.000000e+00, %_ZN4pbrt13NextFloatDownEf.exit.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv.i
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20 ; 2 uses
  %i.ac = fadd float %.0.i, %i.ab                 ; 2 uses
  %i.ad = fcmp ugt float %i.ac, %.031.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ad, label %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit, label %bb.c, !llvm.loop !318

_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit: ; preds = %bb.c
  %i.ae = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.af = fsub float %.031.i, %.0.i
  %i.ag = fdiv float %i.af, %i.ab                 ; 2 uses
  %i.ah = fcmp ogt float %i.ag, f0x3F7FFFFF
  %.sroa.speculated.i107 = select i1 %i.ah, float f0x3F7FFFFF, float %i.ag ; 3 uses
  switch i32 %i.ae, label %bb.g [
    i32 0, label %bb.d
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.d:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !20 ; 2 uses
  %i.ak = fmul float %.sroa.098.0.vec.extract, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load float, ptr %i.al, align 4, !tbaa !20 ; 2 uses
  %i.an = fmul float %sqrt.i, %i.am
  %i.ao = fsub float %i.ak, %i.an
  %i.ap = fmul float %sqrt.i, %i.aj
  %i.aq = fmul float %.sroa.098.0.vec.extract, %i.am
  %i.ar = fadd float %i.ap, %i.aq
  br label %bb.g

bb.e:                                             ; preds = %_ZN4pbrt14SampleDiscreteEN4pstd4spanIKfEEfPfS4_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = load float, ptr %i.as, align 4, !tbaa !20 ; 2 uses
  %i.au = fmul float %.sroa.098.0.vec.extract, %i.at
end_hunk_0
begin_hunk_1_@_ZNK4pbrt23DiffuseTransmissionBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE:bb.a
  %i.ag = fcmp oeq float %i.af, 0.000000e+00
  %i.ah = fcmp oeq float %i.ae, 0.000000e+00
  %or.cond.i.i = select i1 %i.ag, i1 %i.ah, i1 false ; 2 uses
  br i1 %i.ab, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %or.cond.i.i, label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ad) ; 2 uses
  %shift = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aj = fcmp ogt <2 x float> %i.ai, %shift
  %i.ak = extractelement <2 x i1> %i.aj, i64 0
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.al = fdiv float %i.ae, %i.af
  %i.am = fmul float %i.al, f0x3F490FDB
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.an = fdiv float %i.af, %i.ae
  %i.ao = fmul float %i.an, f0x3F490FDB
  %i.ap = fsub float f0x3FC90FDB, %i.ao
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.024.i.i = phi float [ %i.am, %bb.f ], [ %i.ap, %bb.g ] ; 2 uses
  %.0.i.i = phi float [ %i.af, %bb.f ], [ %i.ae, %bb.g ] ; 2 uses
  %i.aq = tail call noundef float @cosf(float noundef %.024.i.i) #31
  %i.ar = tail call noundef float @sinf(float noundef %.024.i.i) #31
  %i.as = fmul float %.0.i.i, %i.aq
  %i.at = fmul float %.0.i.i, %i.ar
  %.sroa.0.0.vec.insert.i.i29.i.i = insertelement <2 x float> poison, float %i.as, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i, float %i.at, i64 1
  br label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit

_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit: ; preds = %bb.d, %bb.h
  %.sroa.035.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i, %bb.h ], [ zeroinitializer, %bb.d ] ; 3 uses
  %i.au = fmul <2 x float> %.sroa.035.0.i.i, %.sroa.035.0.i.i ; 2 uses
  %i.av = extractelement <2 x float> %i.au, i64 0
  %i.aw = fsub float 1.000000e+00, %i.av
  %i.ax = extractelement <2 x float> %i.au, i64 1
  %i.ay = fsub float %i.aw, %i.ax                 ; 2 uses
  %i.az = fcmp ogt float %i.ay, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.az, float %i.ay, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.ba = fcmp olt float %3, 0.000000e+00
  %i.bb = fneg float %sqrt.i.i
  %spec.select77 = select i1 %i.ba, float %i.bb, float %sqrt.i.i ; 2 uses
  %i.bc = tail call float @llvm.fabs.f32(float %sqrt.i.i)
  %i.bd = fmul float %i.bc, f0x3EA2F983
  %i.be = fmul float %spec.select, %i.bd
  %i.bf = fdiv float %i.be, %i.z
  %i.bg = fmul float %3, %spec.select77
  %i.bh = fcmp ogt float %i.bg, 0.000000e+00      ; 2 uses
  %.sroa.0.0.copyload.i17.i = load <2 x float>, ptr %i.k, align 4
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %1, align 4
  %.sink.i = select i1 %i.bh, i64 8, i64 24
  %.sroa.0.0.copyload.i17.sink32.i = select i1 %i.bh, <2 x float> %.sroa.0.0.copyload.i.i, <2 x float> %.sroa.0.0.copyload.i17.i
  %.sroa.6.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i
  %.sroa.6.0.copyload.i19.i = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i18.i, align 4, !tbaa !21
  %i.bi = fmul <2 x float> %.sroa.0.0.copyload.i17.sink32.i, splat (float f0x3EA2F983)
  %i.bj = fmul <2 x float> %.sroa.6.0.copyload.i19.i, splat (float f0x3EA2F983)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.bk, align 4, !tbaa !55
  store <2 x float> %i.bi, ptr %0, align 4
  %.sroa.4116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.bj, ptr %.sroa.4116.0..sroa_idx, align 4
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.035.0.i.i, ptr %.sroa.5117.0..sroa_idx, align 4
  %.sroa.6118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %spec.select77, ptr %.sroa.6118.0..sroa_idx, align 4
  %.sroa.7119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.bf, ptr %.sroa.7119.0..sroa_idx, align 4
  %.sroa.8120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 5, ptr %.sroa.8120.0..sroa_idx, align 4
  %.sroa.9121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.9121.0..sroa_idx, align 4
  %.sroa.10122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.10122.0..sroa_idx, align 4
  br label %bb.n

bb.i:                                             ; preds = %bb.c
  br i1 %or.cond.i.i, label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit96, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call noundef float @llvm.fabs.f32(float %i.af)
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.ae)
  %i.bn = fcmp ogt float %i.bl, %i.bm
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = fdiv float %i.ae, %i.af
  %i.bp = fmul float %i.bo, f0x3F490FDB
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bq = fdiv float %i.af, %i.ae
  %i.br = fmul float %i.bq, f0x3F490FDB
  %i.bs = fsub float f0x3FC90FDB, %i.br
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.024.i.i85 = phi float [ %i.bp, %bb.k ], [ %i.bs, %bb.l ] ; 2 uses
  %.0.i.i86 = phi float [ %i.af, %bb.k ], [ %i.ae, %bb.l ] ; 2 uses
  %i.bt = tail call noundef float @cosf(float noundef %.024.i.i85) #31
  %i.bu = tail call noundef float @sinf(float noundef %.024.i.i85) #31
  %i.bv = fmul float %.0.i.i86, %i.bt
  %i.bw = fmul float %.0.i.i86, %i.bu
  %.sroa.0.0.vec.insert.i.i29.i.i87 = insertelement <2 x float> poison, float %i.bv, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i88 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i87, float %i.bw, i64 1
  br label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit96

_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit96: ; preds = %bb.i, %bb.m
  %.sroa.035.0.i.i89 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i88, %bb.m ], [ zeroinitializer, %bb.i ] ; 3 uses
  %i.bx = fmul <2 x float> %.sroa.035.0.i.i89, %.sroa.035.0.i.i89 ; 2 uses
  %i.by = extractelement <2 x float> %i.bx, i64 0
  %i.bz = fsub float 1.000000e+00, %i.by
  %i.ca = extractelement <2 x float> %i.bx, i64 1
  %i.cb = fsub float %i.bz, %i.ca                 ; 2 uses
  %i.cc = fcmp ogt float %i.cb, 0.000000e+00
  %.sroa.speculated.i.i92 = select i1 %i.cc, float %i.cb, float 0.000000e+00
  %sqrt.i.i93 = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i92) ; 3 uses
  %i.cd = fcmp ogt float %3, 0.000000e+00
  %i.ce = fneg float %sqrt.i.i93
  %spec.select78 = select i1 %i.cd, float %i.ce, float %sqrt.i.i93 ; 2 uses
  %i.cf = tail call float @llvm.fabs.f32(float %sqrt.i.i93)
  %i.cg = fmul float %i.cf, f0x3EA2F983
  %i.ch = fmul float %.075, %i.cg
  %i.ci = fdiv float %i.ch, %i.z
  %i.cj = fmul float %3, %spec.select78
  %i.ck = fcmp ogt float %i.cj, 0.000000e+00      ; 2 uses
  %.sroa.0.0.copyload.i17.i97 = load <2 x float>, ptr %i.k, align 4
  %.sroa.0.0.copyload.i.i98 = load <2 x float>, ptr %1, align 4
  %.sink.i99 = select i1 %i.ck, i64 8, i64 24
  %.sroa.0.0.copyload.i17.sink32.i100 = select i1 %i.ck, <2 x float> %.sroa.0.0.copyload.i.i98, <2 x float> %.sroa.0.0.copyload.i17.i97
  %.sroa.6.0..sroa_idx.i18.i101 = getelementptr inbounds nuw i8, ptr %1, i64 %.sink.i99
  %.sroa.6.0.copyload.i19.i102 = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i18.i101, align 4, !tbaa !21
  %i.cl = fmul <2 x float> %.sroa.0.0.copyload.i17.sink32.i100, splat (float f0x3EA2F983)
  %i.cm = fmul <2 x float> %.sroa.6.0.copyload.i19.i102, splat (float f0x3EA2F983)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.cn, align 4, !tbaa !55
  store <2 x float> %i.cl, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cm, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.035.0.i.i89, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %spec.select78, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ci, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 6, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 4
  br label %bb.n

bb.n:                                             ; preds = %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit96, %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt18ThinDielectricBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"class.pstd::optional") align 4 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %3) ; 4 uses
  %i.b = load float, ptr %1, align 4, !tbaa !709  ; 4 uses
  %i.c = fcmp ogt float %i.a, 1.000000e+00
  %..i.i = select i1 %i.c, float 1.000000e+00, float %i.a ; 5 uses
  %i.d = fmul float %..i.i, %..i.i
  %i.e = fsub float 1.000000e+00, %i.d
  %i.f = fmul float %i.b, %i.b
  %i.g = fdiv float %i.e, %i.f                    ; 2 uses
  %i.h = fcmp ult float %i.g, 1.000000e+00
  br i1 %i.h, label %_ZN4pbrt12FrDielectricEff.exit, label %_ZN4pbrt12FrDielectricEff.exit.thread

_ZN4pbrt12FrDielectricEff.exit:                   ; preds = %bb.a
  %i.i = fsub float 1.000000e+00, %i.g            ; 2 uses
  %i.j = fcmp ogt float %i.i, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.j, float %i.i, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.k = fmul float %..i.i, %i.b                  ; 2 uses
  %i.l = fsub float %i.k, %sqrt.i.i
  %i.m = fadd float %i.k, %sqrt.i.i
  %i.n = fdiv float %i.l, %i.m                    ; 2 uses
  %i.o = fmul float %i.b, %sqrt.i.i               ; 2 uses
  %i.p = fsub float %..i.i, %i.o
  %i.q = fadd float %..i.i, %i.o
  %i.r = fdiv float %i.p, %i.q                    ; 2 uses
  %i.s = fmul float %i.n, %i.n
  %i.t = fmul float %i.r, %i.r
  %i.u = fadd float %i.s, %i.t
  %i.v = fmul float %i.u, 5.000000e-01            ; 7 uses
  %i.w = fsub float 1.000000e+00, %i.v            ; 3 uses
  %i.x = fcmp olt float %i.v, 1.000000e+00
  br i1 %i.x, label %bb.b, label %_ZN4pbrt12FrDielectricEff.exit.thread

bb.b:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit
  %i.y = fmul nnan float %i.w, %i.w
  %i.z = fmul float %i.v, %i.y
  %i.aa = fmul nnan float %i.v, %i.v
  %i.ab = fsub float 1.000000e+00, %i.aa
  %i.ac = fdiv float %i.z, %i.ab
  %i.ad = fadd float %i.v, %i.ac                  ; 2 uses
  %i.ae = fsub float 1.000000e+00, %i.ad
  br label %_ZN4pbrt12FrDielectricEff.exit.thread

_ZN4pbrt12FrDielectricEff.exit.thread:            ; preds = %bb.a, %bb.b, %_ZN4pbrt12FrDielectricEff.exit
  %.055 = phi float [ %i.ae, %bb.b ], [ %i.w, %_ZN4pbrt12FrDielectricEff.exit ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.0 = phi float [ %i.ad, %bb.b ], [ %i.v, %_ZN4pbrt12FrDielectricEff.exit ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %i.af = and i32 %7, 1
  %.not = icmp eq i32 %i.af, 0
  %spec.select = select i1 %.not, float 0.000000e+00, float %.0 ; 3 uses
  %i.ag = and i32 %7, 2
  %.not60 = icmp eq i32 %i.ag, 0
  %.057 = select i1 %.not60, float 0.000000e+00, float %.055 ; 3 uses
  %i.ah = fcmp oeq float %spec.select, 0.000000e+00
  %i.ai = fcmp oeq float %.057, 0.000000e+00
  %or.cond = and i1 %i.ai, %i.ah
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  br label %bb.g

bb.d:                                             ; preds = %_ZN4pbrt12FrDielectricEff.exit.thread
  %i.aj = fadd float %.057, %spec.select          ; 2 uses
  %i.ak = fdiv float %spec.select, %i.aj          ; 2 uses
  %i.al = fcmp olt float %4, %i.ak
  %i.am = fneg <2 x float> %2                     ; 2 uses
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.an = fdiv float %.0, %i.a
  %.sroa.076.0.vec.insert = insertelement <2 x float> poison, float %i.an, i64 0
  %.sroa.076.4.vec.insert = shufflevector <2 x float> %.sroa.076.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.ao, align 4, !tbaa !55
  store <2 x float> %.sroa.076.4.vec.insert, ptr %0, align 4
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.076.4.vec.insert, ptr %.sroa.468.0..sroa_idx, align 4
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.am, ptr %.sroa.569.0..sroa_idx, align 4
  %.sroa.670.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %3, ptr %.sroa.670.0..sroa_idx, align 4
  %.sroa.771.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ak, ptr %.sroa.771.0..sroa_idx, align 4
  %.sroa.872.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 17, ptr %.sroa.872.0..sroa_idx, align 4
  %.sroa.973.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.973.0..sroa_idx, align 4
  %.sroa.1074.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.1074.0..sroa_idx, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ap = fneg float %3
  %i.aq = fdiv float %.055, %i.a
  %.sroa.063.0.vec.insert = insertelement <2 x float> poison, float %i.aq, i64 0
  %.sroa.063.4.vec.insert = shufflevector <2 x float> %.sroa.063.0.vec.insert, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ar = fdiv float %.057, %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.as, align 4, !tbaa !55
  store <2 x float> %.sroa.063.4.vec.insert, ptr %0, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.sroa.063.4.vec.insert, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %i.am, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.ap, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.ar, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 18, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4pbrt21NormalizedFresnelBxDF8Sample_fENS_7Vector3IfEEfNS_6Point2IfEENS_13TransportModeENS_18BxDFReflTransFlagsE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::BSDFSample") align 4 %0, ptr noundef nonnull align 4 dereferenceable(4) %1, <2 x float> %2, float %3, float noundef %4, <2 x float> %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = and i32 %7, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %0, i8 0, i64 44, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !710
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.c = fmul <2 x float> %5, splat (float 2.000000e+00)
  %i.d = fadd <2 x float> %i.c, splat (float -1.000000e+00) ; 3 uses
  %i.e = extractelement <2 x float> %i.d, i64 0   ; 4 uses
  %i.f = fcmp oeq float %i.e, 0.000000e+00
  %i.g = extractelement <2 x float> %i.d, i64 1   ; 4 uses
  %i.h = fcmp oeq float %i.g, 0.000000e+00
  %or.cond.i.i = select i1 %i.f, i1 %i.h, i1 false
  br i1 %or.cond.i.i, label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.d) ; 2 uses
  %shift = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.j = fcmp ogt <2 x float> %i.i, %shift
  %i.k = extractelement <2 x i1> %i.j, i64 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = fdiv float %i.g, %i.e
  %i.m = fmul float %i.l, f0x3F490FDB
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.n = fdiv float %i.e, %i.g
  %i.o = fmul float %i.n, f0x3F490FDB
  %i.p = fsub float f0x3FC90FDB, %i.o
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.024.i.i = phi float [ %i.m, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %.0.i.i = phi float [ %i.e, %bb.e ], [ %i.g, %bb.f ] ; 2 uses
  %i.q = tail call noundef float @cosf(float noundef %.024.i.i) #31
  %i.r = tail call noundef float @sinf(float noundef %.024.i.i) #31
  %i.s = fmul float %.0.i.i, %i.q
  %i.t = fmul float %.0.i.i, %i.r
  %.sroa.0.0.vec.insert.i.i29.i.i = insertelement <2 x float> poison, float %i.s, i64 0
  %.sroa.0.4.vec.insert.i.i30.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i29.i.i, float %i.t, i64 1
  br label %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit

_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit: ; preds = %bb.c, %bb.g
  %.sroa.035.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i30.i.i, %bb.g ], [ zeroinitializer, %bb.c ] ; 3 uses
  %i.u = fmul <2 x float> %.sroa.035.0.i.i, %.sroa.035.0.i.i ; 2 uses
  %i.v = extractelement <2 x float> %i.u, i64 0
  %i.w = fsub float 1.000000e+00, %i.v
  %i.x = extractelement <2 x float> %i.u, i64 1
  %i.y = fsub float %i.w, %i.x                    ; 2 uses
  %i.z = fcmp ogt float %i.y, 0.000000e+00
  %.sroa.speculated.i.i = select i1 %i.z, float %i.y, float 0.000000e+00
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i) ; 3 uses
  %i.aa = fcmp olt float %3, 0.000000e+00
  %i.ab = fneg float %sqrt.i.i
  %spec.select = select i1 %i.aa, float %i.ab, float %sqrt.i.i ; 5 uses
  %i.ac = fmul float %3, %spec.select
  %i.ad = fcmp ogt float %i.ac, 0.000000e+00      ; 2 uses
  br i1 %i.ad, label %bb.h, label %_ZNK4pbrt21NormalizedFresnelBxDF1fENS_7Vector3IfEES2_NS_13TransportModeE.exit

bb.h:                                             ; preds = %_ZN4pbrt22SampleCosineHemisphereENS_6Point2IfEE.exit
  %i.ae = load float, ptr %1, align 4, !tbaa !712
  %i.af = fdiv float 1.000000e+00, %i.ae
  %i.ag = tail call noundef float @_ZN4pbrt14FresnelMoment1Ef(float noundef %i.af)
  %i.ah = fmul float %i.ag, 2.000000e+00
  %i.ai = fsub float 1.000000e+00, %i.ah
  %i.aj = load float, ptr %1, align 4, !tbaa !712 ; 4 uses
  %i.ak = fcmp olt float %spec.select, -1.000000e+00
  %i.al = fcmp ogt float %spec.select, 1.000000e+00
  %..i.i.i = select i1 %i.al, float 1.000000e+00, float %spec.select
  %.0.i.i.i = select i1 %i.ak, float -1.000000e+00, float %..i.i.i ; 3 uses
  %i.am = fcmp olt float %.0.i.i.i, 0.000000e+00  ; 2 uses
  %i.an = fdiv float 1.000000e+00, %i.aj
  %i.ao = fneg float %.0.i.i.i
  %.025.i.i = select i1 %i.am, float %i.an, float %i.aj ; 4 uses
  %.024.i.i37 = select i1 %i.am, float %i.ao, float %.0.i.i.i ; 5 uses
  %i.ap = fmul float %.024.i.i37, %.024.i.i37
  %i.aq = fsub float 1.000000e+00, %i.ap
  %i.ar = fmul float %.025.i.i, %.025.i.i
  %i.as = fdiv float %i.aq, %i.ar                 ; 2 uses
  %i.at = fcmp ult float %i.as, 1.000000e+00
  br i1 %i.at, label %bb.i, label %_ZN4pbrt12FrDielectricEff.exit.i

bb.i:                                             ; preds = %bb.h
  %i.au = fsub float 1.000000e+00, %i.as          ; 2 uses
  %i.av = fcmp ogt float %i.au, 0.000000e+00
  %.sroa.speculated.i.i.i = select i1 %i.av, float %i.au, float 0.000000e+00
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %.sroa.speculated.i.i.i) ; 3 uses
  %i.aw = fmul float %.024.i.i37, %.025.i.i       ; 2 uses
  %i.ax = fsub float %i.aw, %sqrt.i.i.i
  %i.ay = fadd float %i.aw, %sqrt.i.i.i
  %i.az = fdiv float %i.ax, %i.ay                 ; 2 uses
  %i.ba = fmul float %.025.i.i, %sqrt.i.i.i       ; 2 uses
  %i.bb = fsub float %.024.i.i37, %i.ba
  %i.bc = fadd float %.024.i.i37, %i.ba
  %i.bd = fdiv float %i.bb, %i.bc                 ; 2 uses
  %i.be = fmul float %i.az, %i.az
  %i.bf = fmul float %i.bd, %i.bd
  %i.bg = fadd float %i.be, %i.bf
  %i.bh = fmul float %i.bg, 5.000000e-01
  br label %_ZN4pbrt12FrDielectricEff.exit.i

_ZN4pbrt12FrDielectricEff.exit.i:                 ; preds = %bb.i, %bb.h
  %.0.i.i38 = phi float [ %i.bh, %bb.i ], [ 1.000000e+00, %bb.h ]
  %i.bi = fsub float 1.000000e+00, %.0.i.i38
  %i.bj = fmul float %i.ai, f0x40490FDB
end_hunk_1
