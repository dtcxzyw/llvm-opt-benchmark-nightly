Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.15?download=true
inline.NumInlined: 54
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ur:bb.a
  %i.aa = fdiv double %i.y, %i.z
  %i.ab = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.y, i64 1
  %i.ad = insertelement <2 x double> <double poison, double 1.000000e+00>, double %2, i64 0
  %i.ae = insertelement <2 x double> poison, double %i.x, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.v, i64 1
  br label %.outer

.outer:                                           ; preds = %bb.n, %bb.k
  %.sroa.027.0.ph = phi double [ %i.be, %bb.n ], [ %i.aa, %bb.k ]
  %.sroa.013.0.ph = phi double [ %i.am, %bb.n ], [ 0.000000e+00, %bb.k ]
  %.ph = phi <2 x double> [ %i.ba, %bb.n ], [ %i.ac, %bb.k ]
  %.ph35 = phi <2 x double> [ %i.bb, %bb.n ], [ %i.ad, %bb.k ]
  %.ph36 = phi <2 x double> [ %i.al, %bb.n ], [ %i.af, %bb.k ]
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ag = fcmp olt double %1, %2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.ag, label %bb.r, label %bb.q

bb.m:                                             ; preds = %.outer, %bb.m
  %.sroa.013.0 = phi double [ %i.am, %bb.m ], [ %.sroa.013.0.ph, %.outer ]
  %i.ai = phi <2 x double> [ %i.ba, %bb.m ], [ %.ph, %.outer ] ; 3 uses
  %i.aj = phi <2 x double> [ %i.bb, %bb.m ], [ %.ph35, %.outer ]
  %i.ak = phi <2 x double> [ %i.al, %bb.m ], [ %.ph36, %.outer ]
  %i.al = fadd <2 x double> %i.ak, <double 2.000000e+00, double 1.000000e+00> ; 4 uses
  %i.am = fadd double %.sroa.013.0, 1.000000e+00  ; 3 uses
  %i.an = extractelement <2 x double> %i.al, i64 1
  %i.ao = fmul double %i.am, %i.an
  %i.ap = shufflevector <2 x double> %i.al, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aq = fmul <2 x double> %i.ai, %i.ap
  %i.ar = insertelement <2 x double> poison, double %i.ao, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x double> %i.aj, %i.as
  %i.au = fsub <2 x double> %i.aq, %i.at          ; 4 uses
  %i.av = extractelement <2 x double> %i.au, i64 1 ; 2 uses
  %i.aw = tail call double @llvm.fabs.f64(double %i.av)
  %i.ax = fcmp ogt double %i.aw, f0x4330000000000000 ; 2 uses
  %i.ay = fmul <2 x double> %i.ai, splat (double f0x3CB0000000000000)
  %i.az = fmul <2 x double> %i.au, splat (double f0x3CB0000000000000)
  %i.ba = select i1 %i.ax, <2 x double> %i.az, <2 x double> %i.au ; 2 uses
  %i.bb = select i1 %i.ax, <2 x double> %i.ay, <2 x double> %i.ai ; 2 uses
  %i.bc = extractelement <2 x double> %i.au, i64 0 ; 2 uses
  %i.bd = fcmp une double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.n, label %bb.m

bb.n:                                             ; preds = %bb.m
  %i.be = fdiv double %i.av, %i.bc                ; 4 uses
  %i.bf = fsub double %.sroa.027.0.ph, %i.be
  %i.bg = fdiv double %i.bf, %i.be
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ugt double %i.bh, 1.000000e-15
  br i1 %i.bi, label %.outer, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = tail call double @llvm.exp.f64(double %i.t)
  %i.bk = fmul double %i.bj, %i.be
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.bk, ptr %i.bl, align 8
  br label %bb.p

bb.p:                                             ; preds = %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit, %bb.r, %bb.q, %bb.o, %bb.f, %bb.d, %bb.b
  %.sink = phi i8 [ 0, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr.exit ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.o ], [ 1, %bb.f ], [ 1, %bb.d ], [ 0, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.q:                                             ; preds = %bb.l
  store double 1.000000e+00, ptr %i.ah, align 8
  br label %bb.p

bb.r:                                             ; preds = %bb.l
  store double 0.000000e+00, ptr %i.ah, align 8
  br label %bb.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp olt double %0, 5.000000e-01
  br i1 %i.a, label %.preheader.preheader, label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %bb.a
  %i.b = insertelement <2 x double> poison, double %0, i64 0
  %i.c = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> zeroinitializer
  %i.d = fadd <2 x double> %i.c, <double 1.000000e+00, double 2.000000e+00>
  %i.e = fadd <2 x double> %i.d, splat (double -1.000000e+00)
  %i.f = fdiv <2 x double> <double f0x3FF0D2A1BF6524BB, double f0xC00BA7ABF7E16B28>, %i.e ; 2 uses
  %i.g = insertelement <8 x double> poison, double %0, i64 0
  %i.h = shufflevector <8 x double> %i.g, <8 x double> poison, <8 x i32> zeroinitializer
  %i.i = fadd <8 x double> %i.h, <double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01>
  %i.j = fadd <8 x double> %i.i, splat (double -1.000000e+00)
  %i.k = fdiv <8 x double> <double f0x40120C925DE05F43, double f0xC007DCE1A4639489, double f0x3FF0E700A97D3899, double f0xBFC903CF5EC71B4C, double f0x3F9181E3E5002551, double f0xBF42BDA9FC284BE3, double f0x3ED36FB6C5EDE4EB, double f0xBE275D3B35ECD3F3>, %i.j
  %i.l = extractelement <2 x double> %i.f, i64 0
  %op.rdx33 = fadd double %i.l, f0x3EFA109C2231ECD3
  %i.m = extractelement <2 x double> %i.f, i64 1
  %op.rdx34 = fadd double %op.rdx33, %i.m
  %i.n = tail call double @llvm.vector.reduce.fadd.v8f64(double %op.rdx34, <8 x double> %i.k)
  %i.o = fmul double %i.n, f0x3FFDC420AF97465B
  %i.p = fadd double %0, -5.000000e-01            ; 2 uses
  %i.q = fadd double %i.p, f0x4025CD0FC71D6063
  %i.r = fdiv double %i.q, f0x4005BF0A8B145769
  %i.s = tail call double @llvm.pow.f64(double %i.r, double %i.p)
  %i.t = fmul double %i.s, %i.o
  br label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.u = insertelement <2 x double> poison, double %0, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fsub <2 x double> <double 1.000000e+00, double 2.000000e+00>, %i.v
  %i.x = fdiv <2 x double> <double f0x3FF0D2A1BF6524BB, double f0xC00BA7ABF7E16B28>, %i.w ; 2 uses
  %i.y = insertelement <8 x double> poison, double %0, i64 0
  %i.z = shufflevector <8 x double> %i.y, <8 x double> poison, <8 x i32> zeroinitializer
  %i.aa = fsub <8 x double> <double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01>, %i.z
  %i.ab = fdiv <8 x double> <double f0x40120C925DE05F43, double f0xC007DCE1A4639489, double f0x3FF0E700A97D3899, double f0xBFC903CF5EC71B4C, double f0x3F9181E3E5002551, double f0xBF42BDA9FC284BE3, double f0x3ED36FB6C5EDE4EB, double f0xBE275D3B35ECD3F3>, %i.aa
  %i.ac = extractelement <2 x double> %i.x, i64 0
  %op.rdx = fadd double %i.ac, f0x3EFA109C2231ECD3
  %i.ad = extractelement <2 x double> %i.x, i64 1
  %op.rdx32 = fadd double %op.rdx, %i.ad
  %i.ae = tail call double @llvm.vector.reduce.fadd.v8f64(double %op.rdx32, <8 x double> %i.ab)
  %i.af = fmul nnan double %0, f0x400921FB54442D18
  %i.ag = tail call double @llvm.sin.f64(double %i.af)
  %i.ah = fmul double %i.ag, %i.ae
  %i.ai = fmul double %i.ah, f0x3FFDC420AF97465B
  %i.aj = fsub double 5.000000e-01, %0            ; 2 uses
  %i.ak = fadd double %i.aj, f0x4025CD0FC71D6063
  %i.al = fdiv double %i.ak, f0x4005BF0A8B145769
  %i.am = tail call double @llvm.pow.f64(double %i.al, double %i.aj)
  %i.an = fmul double %i.am, %i.ai
  %i.ao = fdiv double f0x400921FB54442D18, %i.an
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %.preheader29.preheader
  %.sroa.0.0 = phi double [ %i.ao, %.preheader.preheader ], [ %i.t, %.preheader29.preheader ]
  ret double %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(errnomem: write) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma(double noundef %0) unnamed_addr #4 {
bb.a:
  %or.cond = fcmp ueq double %0, -inf
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = fcmp ole double %0, 0.000000e+00
  %i.b = tail call double @llvm.trunc.f64(double %0)
  %i.c = fcmp oeq double %i.b, %0
  %or.cond31 = and i1 %i.a, %i.c
  br i1 %or.cond31, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fcmp olt double %0, 0.000000e+00
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = fcmp ugt double %0, f0x3EB0C6F7A0B5ED8D
  br i1 %i.e, label %.preheader32, label %bb.h

.preheader32:                                     ; preds = %bb.d
  %i.f = fcmp olt double %0, 1.200000e+01
  br i1 %i.f, label %.lr.ph, label %._crit_edge

bb.e:                                             ; preds = %bb.c
  %i.g = fsub double 1.000000e+00, %0             ; 6 uses
  %i.h = fcmp ugt double %i.g, f0x3EB0C6F7A0B5ED8D
  br i1 %i.h, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.e
  %i.i = fcmp olt double %i.g, 1.200000e+01
  br i1 %i.i, label %.lr.ph38, label %._crit_edge39

bb.f:                                             ; preds = %bb.e
  %i.j = fdiv double 1.000000e+00, %i.g
  %i.k = fsub double f0xBFE2788CFC6FB619, %i.j
  %i.l = fmul nnan double %i.g, f0x3FFA51A6625307D3
  %i.m = fadd double %i.l, %i.k
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit

._crit_edge39:                                    ; preds = %.lr.ph38, %.preheader
  %.sroa.018.0.i.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.p, %.lr.ph38 ] ; 2 uses
  %.sroa.0.0.i.lcssa = phi double [ %i.g, %.preheader ], [ %i.q, %.lr.ph38 ] ; 3 uses
  %i.n = fcmp ult double %.sroa.0.0.i.lcssa, 1.200000e+01
  br i1 %i.n, label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit, label %bb.g

.lr.ph38:                                         ; preds = %.preheader, %.lr.ph38
  %.sroa.0.0.i37 = phi double [ %i.q, %.lr.ph38 ], [ %i.g, %.preheader ] ; 2 uses
  %.sroa.018.0.i36 = phi double [ %i.p, %.lr.ph38 ], [ 0.000000e+00, %.preheader ]
  %i.o = fdiv double 1.000000e+00, %.sroa.0.0.i37
  %i.p = fsub double %.sroa.018.0.i36, %i.o       ; 2 uses
  %i.q = fadd double %.sroa.0.0.i37, 1.000000e+00 ; 3 uses
  %i.r = fcmp olt double %i.q, 1.200000e+01
  br i1 %i.r, label %.lr.ph38, label %._crit_edge39

bb.g:                                             ; preds = %._crit_edge39
  %i.s = fdiv double 1.000000e+00, %.sroa.0.0.i.lcssa ; 3 uses
  %i.t = tail call double @llvm.log.f64(double %.sroa.0.0.i.lcssa)
  %i.u = fmul nnan double %i.s, 5.000000e-01
  %i.v = fsub double %i.t, %i.u
  %i.w = fadd double %.sroa.018.0.i.lcssa, %i.v
  %i.x = fmul double %i.s, %i.s                   ; 5 uses
  %i.y = fmul double %i.x, f0x3F7F07C1F07C1F08
  %i.z = fsub double f0x3F71111111111111, %i.y
  %i.aa = fmul double %i.x, %i.z
  %i.ab = fsub double f0x3F70410410410410, %i.aa
  %i.ac = fmul double %i.x, %i.ab
  %i.ad = fsub double f0x3F81111111111111, %i.ac
  %i.ae = fmul double %i.x, %i.ad
  %i.af = fsub double f0x3FB5555555555555, %i.ae
  %i.ag = fmul double %i.x, %i.af
  %i.ah = fsub double %i.w, %i.ag
  br label %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit

_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit: ; preds = %bb.f, %._crit_edge39, %bb.g
  %.sroa.018.1.i = phi double [ %.sroa.018.0.i.lcssa, %._crit_edge39 ], [ %i.ah, %bb.g ], [ %i.m, %bb.f ]
  %i.ai = fmul nnan double %0, f0xC00921FB54442D18
  %i.aj = tail call noundef double @tan(double noundef %i.ai) #16
  %i.ak = fdiv double f0x400921FB54442D18, %i.aj
  %i.al = fadd double %.sroa.018.1.i, %i.ak
  br label %bb.j

bb.h:                                             ; preds = %bb.d
  %i.am = fdiv double 1.000000e+00, %0
  %i.an = fsub double f0xBFE2788CFC6FB619, %i.am
  %i.ao = fmul nnan double %0, f0x3FFA51A6625307D3
  %i.ap = fadd double %i.ao, %i.an
  br label %bb.j

._crit_edge:                                      ; preds = %.lr.ph, %.preheader32
  %.sroa.018.0.lcssa = phi double [ 0.000000e+00, %.preheader32 ], [ %i.as, %.lr.ph ] ; 2 uses
  %.sroa.0.0.lcssa = phi double [ %0, %.preheader32 ], [ %i.at, %.lr.ph ] ; 3 uses
  %i.aq = fcmp ult double %.sroa.0.0.lcssa, 1.200000e+01
  br i1 %i.aq, label %bb.j, label %bb.i

.lr.ph:                                           ; preds = %.preheader32, %.lr.ph
  %.sroa.0.034 = phi double [ %i.at, %.lr.ph ], [ %0, %.preheader32 ] ; 2 uses
  %.sroa.018.033 = phi double [ %i.as, %.lr.ph ], [ 0.000000e+00, %.preheader32 ]
  %i.ar = fdiv double 1.000000e+00, %.sroa.0.034
  %i.as = fsub double %.sroa.018.033, %i.ar       ; 2 uses
  %i.at = fadd double %.sroa.0.034, 1.000000e+00  ; 3 uses
  %i.au = fcmp olt double %i.at, 1.200000e+01
  br i1 %i.au, label %.lr.ph, label %._crit_edge

bb.i:                                             ; preds = %._crit_edge
  %i.av = fdiv double 1.000000e+00, %.sroa.0.0.lcssa ; 3 uses
  %i.aw = tail call double @llvm.log.f64(double %.sroa.0.0.lcssa)
  %i.ax = fmul nnan double %i.av, 5.000000e-01
  %i.ay = fsub double %i.aw, %i.ax
  %i.az = fadd double %.sroa.018.0.lcssa, %i.ay
  %i.ba = fmul double %i.av, %i.av                ; 5 uses
  %i.bb = fmul double %i.ba, f0x3F7F07C1F07C1F08
  %i.bc = fsub double f0x3F71111111111111, %i.bb
  %i.bd = fmul double %i.ba, %i.bc
  %i.be = fsub double f0x3F70410410410410, %i.bd
  %i.bf = fmul double %i.ba, %i.be
  %i.bg = fsub double f0x3F81111111111111, %i.bf
  %i.bh = fmul double %i.ba, %i.bg
  %i.bi = fsub double f0x3FB5555555555555, %i.bh
  %i.bj = fmul double %i.ba, %i.bi
  %i.bk = fsub double %i.az, %i.bj
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.a, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit, %bb.h, %bb.i, %._crit_edge
  %.sroa.018.1 = phi double [ %.sroa.018.0.lcssa, %._crit_edge ], [ +qnan, %bb.a ], [ %i.al, %_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma7digamma.exit ], [ %i.ap, %bb.h ], [ %i.bk, %bb.i ], [ -inf, %bb.b ]
  ret double %.sroa.018.1
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_li(double noundef %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_lr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %0, double noundef %1), !alias.scope !71
  %i.c = load i8, ptr %i.b, align 8, !range !4, !alias.scope !71, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !72
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !4, !alias.scope !73, !noalias !74, !noundef !5
  store i8 %i.f, ptr %i.a, align 1, !noalias !72
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #15, !noalias !73
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !alias.scope !71, !noundef !5
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %0)
  %i.j = fmul double %i.h, %i.i                   ; 2 uses
  store double %i.j, ptr %i.g, align 8, !alias.scope !71
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret double %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_lr(double noundef %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_lr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %0, double noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.c = load i8, ptr %i.b, align 8, !range !4, !alias.scope !78, !noalias !79, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !4, !alias.scope !78, !noalias !79, !noundef !5
  store i8 %i.f, ptr %i.a, align 1, !noalias !80
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #15, !noalias !78
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !alias.scope !78, !noalias !79, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret double %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ui(double noundef %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ur(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %0, double noundef %1)
  %i.c = load i8, ptr %i.b, align 8, !range !4, !alias.scope !86, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !87
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !4, !alias.scope !88, !noalias !89, !noundef !5
  store i8 %i.f, ptr %i.a, align 1, !noalias !87
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #15, !noalias !88
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.h = load double, ptr %i.g, align 8, !alias.scope !86, !noundef !5
  %i.i = tail call noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma5gamma(double noundef %0)
  %i.j = fmul double %i.h, %i.i                   ; 2 uses
  store double %i.j, ptr %i.g, align 8, !alias.scope !86
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret double %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8gamma_ur(double noundef %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma16checked_gamma_ur(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, double noundef %0, double noundef %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.c = load i8, ptr %i.b, align 8, !range !4, !alias.scope !93, !noalias !94, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit, !prof !6

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !95
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !4, !alias.scope !93, !noalias !94, !noundef !5
  store i8 %i.f, ptr %i.a, align 1, !noalias !95
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #15, !noalias !93
  unreachable

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs8lmMd0ZksV9_6statrs8function5gamma14GammaFuncErrorE6unwrapBO_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load double, ptr %i.g, align 8, !alias.scope !93, !noalias !94, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret double %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function5gamma8ln_gamma(double noundef %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp olt double %0, 5.000000e-01
  br i1 %i.a, label %.preheader.preheader, label %.preheader29.preheader

.preheader29.preheader:                           ; preds = %bb.a
  %i.b = insertelement <2 x double> poison, double %0, i64 0
  %i.c = shufflevector <2 x double> %i.b, <2 x double> poison, <2 x i32> zeroinitializer
  %i.d = fadd <2 x double> %i.c, <double 1.000000e+00, double 2.000000e+00>
  %i.e = fadd <2 x double> %i.d, splat (double -1.000000e+00)
  %i.f = fdiv <2 x double> <double f0x3FF0D2A1BF6524BB, double f0xC00BA7ABF7E16B28>, %i.e ; 2 uses
  %i.g = insertelement <8 x double> poison, double %0, i64 0
  %i.h = shufflevector <8 x double> %i.g, <8 x double> poison, <8 x i32> zeroinitializer
  %i.i = fadd <8 x double> %i.h, <double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01>
  %i.j = fadd <8 x double> %i.i, splat (double -1.000000e+00)
  %i.k = fdiv <8 x double> <double f0x40120C925DE05F43, double f0xC007DCE1A4639489, double f0x3FF0E700A97D3899, double f0xBFC903CF5EC71B4C, double f0x3F9181E3E5002551, double f0xBF42BDA9FC284BE3, double f0x3ED36FB6C5EDE4EB, double f0xBE275D3B35ECD3F3>, %i.j
  %i.l = extractelement <2 x double> %i.f, i64 0
  %op.rdx33 = fadd double %i.l, f0x3EFA109C2231ECD3
  %i.m = extractelement <2 x double> %i.f, i64 1
  %op.rdx34 = fadd double %op.rdx33, %i.m
  %i.n = tail call double @llvm.vector.reduce.fadd.v8f64(double %op.rdx34, <8 x double> %i.k)
  %i.o = tail call double @llvm.log.f64(double %i.n)
  %i.p = fadd double %i.o, f0x3FE3DD72B6129832
  %i.q = fadd double %0, -5.000000e-01            ; 2 uses
  %i.r = fadd double %i.q, f0x4025CD0FC71D6063
  %i.s = fdiv double %i.r, f0x4005BF0A8B145769
  %i.t = tail call double @llvm.log.f64(double %i.s)
  %i.u = fmul double %i.q, %i.t
  %i.v = fadd double %i.u, %i.p
  br label %bb.b

.preheader.preheader:                             ; preds = %bb.a
  %i.w = insertelement <2 x double> poison, double %0, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = fsub <2 x double> <double 1.000000e+00, double 2.000000e+00>, %i.x
  %i.z = fdiv <2 x double> <double f0x3FF0D2A1BF6524BB, double f0xC00BA7ABF7E16B28>, %i.y ; 2 uses
  %i.aa = insertelement <8 x double> poison, double %0, i64 0
  %i.ab = shufflevector <8 x double> %i.aa, <8 x double> poison, <8 x i32> zeroinitializer
  %i.ac = fsub <8 x double> <double 3.000000e+00, double 4.000000e+00, double 5.000000e+00, double 6.000000e+00, double 7.000000e+00, double 8.000000e+00, double 9.000000e+00, double 1.000000e+01>, %i.ab
  %i.ad = fdiv <8 x double> <double f0x40120C925DE05F43, double f0xC007DCE1A4639489, double f0x3FF0E700A97D3899, double f0xBFC903CF5EC71B4C, double f0x3F9181E3E5002551, double f0xBF42BDA9FC284BE3, double f0x3ED36FB6C5EDE4EB, double f0xBE275D3B35ECD3F3>, %i.ac
  %i.ae = extractelement <2 x double> %i.z, i64 0
  %op.rdx = fadd double %i.ae, f0x3EFA109C2231ECD3
  %i.af = extractelement <2 x double> %i.z, i64 1
  %op.rdx32 = fadd double %op.rdx, %i.af
  %i.ag = tail call double @llvm.vector.reduce.fadd.v8f64(double %op.rdx32, <8 x double> %i.ad)
  %i.ah = fmul nnan double %0, f0x400921FB54442D18
  %i.ai = tail call double @llvm.sin.f64(double %i.ah)
  %i.aj = tail call double @llvm.log.f64(double %i.ai)
  %i.ak = fsub double f0x3FF250D048E7A1BD, %i.aj
  %i.al = tail call double @llvm.log.f64(double %i.ag)
  %i.am = fsub double %i.ak, %i.al
  %i.an = fadd double %i.am, f0xBFE3DD72B6129832
  %i.ao = fsub double 5.000000e-01, %0            ; 2 uses
  %i.ap = fadd nnan double %i.ao, f0x4025CD0FC71D6063
  %i.aq = fdiv nnan double %i.ap, f0x4005BF0A8B145769
  %i.ar = tail call double @llvm.log.f64(double %i.aq)
  %i.as = fmul double %i.ao, %i.ar
  %i.at = fsub double %i.an, %i.as
  br label %bb.b

bb.b:                                             ; preds = %.preheader.preheader, %.preheader29.preheader
  %.sroa.0.0 = phi double [ %i.at, %.preheader.preheader ], [ %i.v, %.preheader29.preheader ]
  ret double %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB2_17InverseGammaErrorNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.b = trunc nuw i8 %i.a to i1
end_hunk_0
