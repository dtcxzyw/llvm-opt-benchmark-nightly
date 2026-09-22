Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/freak?download=true
inline.NumInlined: 1638
inline.NumDeleted: 417
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv11xfeatures2d10FREAK_Impl12buildPatternEv:bb.a
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store i8 24, ptr %i.de, align 8, !tbaa !32
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1809
  store i8 27, ptr %i.df, align 1, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1820
  store i8 25, ptr %i.dg, align 4, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 1821
  store i8 28, ptr %i.dh, align 1, !tbaa !33
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 1832
  store i8 26, ptr %i.di, align 8, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 1833
  store i8 29, ptr %i.dj, align 1, !tbaa !33
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 1844
  store i8 30, ptr %i.dk, align 4, !tbaa !32
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1845
  store i8 33, ptr %i.dl, align 1, !tbaa !33
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 1856
  store i8 31, ptr %i.dm, align 8, !tbaa !32
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 1857
  store i8 34, ptr %i.dn, align 1, !tbaa !33
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1868
  store i8 32, ptr %i.do, align 4, !tbaa !32
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1869
  store i8 35, ptr %i.dp, align 1, !tbaa !33
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 1880
  store i8 36, ptr %i.dq, align 8, !tbaa !32
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1881
  store i8 39, ptr %i.dr, align 1, !tbaa !33
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i8 37, ptr %i.ds, align 4, !tbaa !32
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1893
  store i8 40, ptr %i.dt, align 1, !tbaa !33
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 1904
  store i8 38, ptr %i.du, align 8, !tbaa !32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 1905
  store i8 41, ptr %i.dv, align 1, !tbaa !33
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !30  ; 2 uses
  br label %bb.n

bb.g:                                             ; preds = %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl12PatternPointESaIS3_EE6resizeEm.exit, %bb.h
  %indvars.iv168 = phi i64 [ 0, %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl12PatternPointESaIS3_EE6resizeEm.exit ], [ %indvars.iv.next169, %bb.h ] ; 4 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv168 ; 3 uses
  store i32 0, ptr %i.dx, align 4, !tbaa !34
  %i.dy = trunc nuw nsw i64 %indvars.iv168 to i32
  %i.dz = uitofp nneg i32 %i.dy to double
  %i.ea = tail call noundef double @pow(double noundef %exp2, double noundef %i.dz) #21 ; 3 uses
  %.idx200 = mul i64 %indvars.iv168, 132096
  %invariant.gep = getelementptr i8, ptr %i.ag, i64 %.idx200
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.i

bb.h:                                             ; preds = %bb.j
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond171.not = icmp eq i64 %indvars.iv.next169, 64
  br i1 %exitcond171.not, label %bb.f, label %bb.g, !llvm.loop !109

bb.i:                                             ; preds = %bb.g, %bb.j
  %indvars.iv164 = phi i64 [ 0, %bb.g ], [ %indvars.iv.next165, %bb.j ] ; 3 uses
  %indvars.iv164.tr = trunc nuw nsw i64 %indvars.iv164 to i32
  %i.ed = shl nuw nsw i32 %indvars.iv164.tr, 1
  %i.ee = uitofp nneg i32 %i.ed to double
  %i.ef = fmul nnan double %i.ee, f0x400921FB54442D18
  %i.eg = fmul nnan double %i.ef, 3.906250e-03
  %.idx = mul i64 %indvars.iv164, 516
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %bb.i
  %.082141 = phi i64 [ 0, %bb.i ], [ %i.fd, %._crit_edge ] ; 5 uses
  %.083140 = phi i64 [ 0, %bb.i ], [ %indvars.iv.next, %._crit_edge ]
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN2cv11xfeatures2d10FREAK_Impl12buildPatternEv.n, i64 %.082141
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !34 ; 2 uses
  %i.ej = sitofp i32 %i.ei to double              ; 2 uses
  %i.ek = fdiv nnan double f0x400921FB54442D18, %i.ej
  %i.el = and i64 %.082141, 1
  %i.em = uitofp nneg i64 %i.el to double
  %i.en = fmul double %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN2cv11xfeatures2d10FREAK_Impl12buildPatternEv.radius, i64 %.082141
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !36 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN2cv11xfeatures2d10FREAK_Impl12buildPatternEv.sigma, i64 %.082141
  %i.er = load double, ptr %i.eq, align 8, !tbaa !36 ; 2 uses
  %i.es = fmul double %i.ea, %i.er
  %i.et = fmul double %i.ah, %i.es
  %i.eu = fptrunc double %i.et to float
  %i.ev = fadd double %i.ep, %i.er
  %i.ew = fmul double %i.ea, %i.ev
  %i.ex = fmul double %i.ah, %i.ew
  %i.ey = tail call double @llvm.ceil.f64(double %i.ex)
  %i.ez = fptosi double %i.ey to i32              ; 2 uses
  %i.fa = add nsw i32 %i.ez, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ei, i32 1)
  %i.fb = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond167.not = icmp eq i64 %indvars.iv.next165, 256
  br i1 %exitcond167.not, label %bb.h, label %bb.i, !llvm.loop !110

._crit_edge:                                      ; preds = %bb.m
  %i.fd = add nuw nsw i64 %.082141, 1             ; 2 uses
  %exitcond163.not = icmp eq i64 %i.fd, 8
  br i1 %exitcond163.not, label %bb.j, label %.lr.ph, !llvm.loop !111

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %.083140, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.081139 = phi i32 [ 0, %.lr.ph ], [ %i.fv, %bb.m ] ; 2 uses
  %i.fe = shl nuw i32 %.081139, 1
  %i.ff = uitofp i32 %i.fe to double
  %i.fg = fmul nnan double %i.ff, f0x400921FB54442D18
  %i.fh = fdiv double %i.fg, %i.ej
  %i.fi = fadd double %i.fh, %i.en
  %i.fj = fadd double %i.eg, %i.fi                ; 2 uses
  %i.fk = getelementptr [12 x i8], ptr %gep, i64 %indvars.iv ; 2 uses
  %i.fl = tail call double @cos(double noundef %i.fj) #21
  %i.fm = tail call double @sin(double noundef %i.fj) #21
  %i.fn = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fo = insertelement <2 x double> %i.fn, double %i.fm, i64 1
  %i.fp = fmul <2 x double> %i.fc, %i.fo
  %i.fq = fmul <2 x double> %i.ec, %i.fp
  %i.fr = fmul <2 x double> %i.aj, %i.fq
  %i.fs = fptrunc <2 x double> %i.fr to <2 x float>
  store <2 x float> %i.fs, ptr %i.fk, align 4, !tbaa !38
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store float %i.eu, ptr %i.ft, align 4, !tbaa !40
  %i.fu = load i32, ptr %i.dx, align 4, !tbaa !34
  %.not92 = icmp sgt i32 %i.fu, %i.ez
  br i1 %.not92, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 %i.fa, ptr %i.dx, align 4, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.fv = add nuw nsw i32 %.081139, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.fv, %smax
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !112

bb.n:                                             ; preds = %bb.f, %bb.n
  %indvars.iv172 = phi i64 [ 45, %bb.f ], [ %indvars.iv.next173, %bb.n ]
  %indvars.iv.next173 = add nsw i64 %indvars.iv172, -1 ; 3 uses
  %i.fw = getelementptr inbounds nuw [12 x i8], ptr %i.ak, i64 %indvars.iv.next173 ; 4 uses
  %i.fx = load i8, ptr %i.fw, align 4, !tbaa !32
  %i.fy = zext i8 %i.fx to i64
  %i.fz = getelementptr inbounds nuw [12 x i8], ptr %i.dw, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !33
  %i.gc = zext i8 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [12 x i8], ptr %i.dw, i64 %i.gc
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fw, i64 4
  %i.gf = load <2 x float>, ptr %i.fz, align 4, !tbaa !38
  %i.gg = load <2 x float>, ptr %i.gd, align 4, !tbaa !38
  %i.gh = fsub <2 x float> %i.gf, %i.gg           ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.gh, %i.gh
  %i.gi = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.gj = extractelement <2 x float> %i.gh, i64 0 ; 2 uses
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.gj, float %i.gj, float %i.gi)
  %i.gl = insertelement <2 x float> poison, float %i.gk, i64 0
  %i.gm = shufflevector <2 x float> %i.gl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gn = fdiv <2 x float> %i.gh, %i.gm
  %i.go = fpext <2 x float> %i.gn to <2 x double>
  %i.gp = fmul <2 x double> %i.go, splat (double 4.096000e+03) ; 2 uses
  %i.gq = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gp)
  store i32 %i.gq, ptr %i.ge, align 4, !tbaa !41
  %i.gr = shufflevector <2 x double> %i.gp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.gs = tail call noundef i32 @llvm.x86.sse2.cvtsd2si(<2 x double> %i.gr)
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i32 %i.gs, ptr %i.gt, align 4, !tbaa !42
  %.not = icmp eq i64 %indvars.iv.next173, 0
  br i1 %.not, label %.preheader121, label %bb.n, !llvm.loop !113

.preheader121:                                    ; preds = %bb.n, %bb.p
  %.079152 = phi i32 [ %i.ha, %bb.p ], [ 1, %bb.n ] ; 3 uses
  %.sroa.14.0151 = phi ptr [ %.sroa.14.3, %bb.p ], [ null, %bb.n ]
  %.sroa.10.0150 = phi ptr [ %.sroa.10.2, %bb.p ], [ null, %bb.n ]
  %.sroa.0108.0149 = phi ptr [ %.sroa.0108.3, %bb.p ], [ null, %bb.n ]
  %.sroa.0.0.insert.ext100 = trunc nuw nsw i32 %.079152 to i16 ; 2 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.p
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !43 ; 4 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !43 ; 2 uses
  %i.gy = icmp eq ptr %i.gv, %i.gx
  br i1 %i.gy, label %.preheader, label %bb.w

.preheader:                                       ; preds = %bb.o
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 4 uses
  br label %bb.ag

bb.p:                                             ; preds = %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE9push_backERKS3_.exit
  %i.ha = add nuw nsw i32 %.079152, 1             ; 2 uses
  %exitcond176.not = icmp eq i32 %i.ha, 43
  br i1 %exitcond176.not, label %bb.o, label %.preheader121, !llvm.loop !114

bb.q:                                             ; preds = %.preheader121, %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE9push_backERKS3_.exit
  %.078148 = phi i32 [ 0, %.preheader121 ], [ %i.hp, %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.sroa.14.1147 = phi ptr [ %.sroa.14.0151, %.preheader121 ], [ %.sroa.14.3, %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE9push_backERKS3_.exit ] ; 5 uses
  %.sroa.10.1146 = phi ptr [ %.sroa.10.0150, %.preheader121 ], [ %.sroa.10.2, %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %.sroa.0108.1145 = phi ptr [ %.sroa.0108.0149, %.preheader121 ], [ %.sroa.0108.3, %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE9push_backERKS3_.exit ] ; 7 uses
  %.not.i = icmp eq ptr %.sroa.10.1146, %.sroa.14.1147
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.6.0.insert.ext = trunc nuw nsw i32 %.078148 to i16
  %.sroa.6.0.insert.ext.a = shl nuw nsw i16 %.sroa.6.0.insert.ext, 8
  %.sroa.0.0.insert.insert = add nuw nsw i16 %.sroa.6.0.insert.ext.a, %.sroa.0.0.insert.ext100
  store i16 %.sroa.0.0.insert.insert, ptr %.sroa.10.1146, align 1
  br label %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE9push_backERKS3_.exit

bb.s:                                             ; preds = %bb.q
  %i.hb = ptrtoint ptr %.sroa.14.1147 to i64
  %i.hc = ptrtoint ptr %.sroa.0108.1145 to i64
  %i.hd = sub i64 %i.hb, %i.hc                    ; 6 uses
  %i.he = icmp eq i64 %i.hd, 9223372036854775806
  br i1 %i.he, label %bb.t, label %_ZNKSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.t
  unreachable

_ZNKSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.hf = ashr exact i64 %i.hd, 1                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.hf, i64 1)
  %i.hg = add i64 %.sroa.speculated.i.i.i, %i.hf  ; 2 uses
  %i.hh = icmp ult i64 %i.hg, %i.hf
  %i.hi = tail call i64 @llvm.umin.i64(i64 %i.hg, i64 4611686018427387903)
  %i.hj = select i1 %i.hh, i64 4611686018427387903, i64 %i.hi ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.hj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.hk = shl nuw nsw i64 %i.hj, 1
  %i.hl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hk) #23
          to label %.noexc93 unwind label %.loopexit122 ; 4 uses

.noexc93:                                         ; preds = %_ZNKSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 %i.hd ; 2 uses
  %.sroa.6.0.insert.ext104 = trunc nuw nsw i32 %.078148 to i16
  %.sroa.6.0.insert.ext104.a = shl nuw nsw i16 %.sroa.6.0.insert.ext104, 8
  %.sroa.0.0.insert.insert102 = add nuw nsw i16 %.sroa.6.0.insert.ext104.a, %.sroa.0.0.insert.ext100
  store i16 %.sroa.0.0.insert.insert102, ptr %i.hm, align 1
  %i.hn = icmp sgt i64 %i.hd, 0
  br i1 %i.hn, label %bb.u, label %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.u:                                             ; preds = %.noexc93
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hl, ptr align 1 %.sroa.0108.1145, i64 %i.hd, i1 false)
  br label %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.u, %.noexc93
  %.not.i17.i.i = icmp eq ptr %.sroa.0108.1145, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.1145, i64 noundef %i.hd) #24
  br label %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.v, %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %i.hl, i64 %i.hj
  br label %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.r
  %.sroa.0108.3 = phi ptr [ %i.hl, %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0108.1145, %bb.r ] ; 12 uses
  %.pn118 = phi ptr [ %i.hm, %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.10.1146, %bb.r ]
  %.sroa.14.3 = phi ptr [ %i.ho, %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.14.1147, %bb.r ] ; 5 uses
  %.sroa.10.2 = getelementptr inbounds nuw i8, ptr %.pn118, i64 2 ; 2 uses
  %i.hp = add nuw nsw i32 %.078148, 1             ; 2 uses
  %exitcond175.not = icmp eq i32 %i.hp, %.079152
  br i1 %exitcond175.not, label %bb.p, label %bb.q, !llvm.loop !115

.loopexit122:                                     ; preds = %_ZNKSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.w:                                             ; preds = %bb.o
  %i.hq = ptrtoint ptr %i.gx to i64
  %i.hr = ptrtoint ptr %i.gv to i64
  %i.hs = sub i64 %i.hq, %i.hr                    ; 2 uses
  %i.ht = and i64 %i.hs, 17179869180
  %i.hu = icmp eq i64 %i.ht, 2048
  br i1 %i.hu, label %.preheader119, label %bb.ab

.preheader119:                                    ; preds = %bb.w
  %i.hv = ashr exact i64 %i.hs, 2                 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %.preheader119
  %indvars.iv177 = phi i64 [ 0, %.preheader119 ], [ %indvars.iv.next178.1, %bb.z ] ; 5 uses
  %exitcond180.not = icmp eq i64 %indvars.iv177, %i.hv
  br i1 %exitcond180.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.19, i64 noundef %i.hv, i64 noundef %i.hv) #22
          to label %.noexc95 unwind label %bb.aa

.noexc95:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv177
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !34
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0108.3, i64 %i.hz
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %i.hw, i64 %indvars.iv177
  %i.ic = load i16, ptr %i.ia, align 1
  store i16 %i.ic, ptr %i.ib, align 4
  %indvars.iv.next178 = or disjoint i64 %indvars.iv177, 1 ; 2 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %indvars.iv.next178
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !34
  %i.if = sext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0108.3, i64 %i.if
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.hw, i64 %indvars.iv.next178
  %i.ii = load i16, ptr %i.ig, align 1
  store i16 %i.ii, ptr %i.ih, align 2
  %indvars.iv.next178.1 = add nuw nsw i64 %indvars.iv177, 2 ; 2 uses
  %exitcond181.not.1 = icmp eq i64 %indvars.iv.next178.1, 512
  br i1 %exitcond181.not.1, label %.loopexit, label %bb.x, !llvm.loop !116

bb.aa:                                            ; preds = %bb.y
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ab:                                            ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -28, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @__func__._ZN2cv11xfeatures2d10FREAK_Impl12buildPatternEv, ptr noundef nonnull @.str.1, i32 noundef 326) #22
          to label %bb.ad unwind label %bb.af

bb.ad:                                            ; preds = %bb.ac
  unreachable

bb.ae:                                            ; preds = %bb.ab
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.af:                                            ; preds = %bb.ac
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = load ptr, ptr %1, align 8, !tbaa !48    ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.af
  %i.ip = load i64, ptr %i.in, align 8, !tbaa !49
  %i.iq = add i64 %i.ip, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.iq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.ik, %bb.ae ], [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.il, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ag, %.preheader
  %indvars.iv182 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next183.3, %bb.ag ] ; 6 uses
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr @_ZN2cv11xfeatures2dL15FREAK_DEF_PAIRSE, i64 %indvars.iv182
  %i.is = load i32, ptr %i.ir, align 16, !tbaa !34
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0108.3, i64 %i.it
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %indvars.iv182
  %i.iw = load i16, ptr %i.iu, align 1
  store i16 %i.iw, ptr %i.iv, align 8
  %indvars.iv.next183 = or disjoint i64 %indvars.iv182, 1 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr @_ZN2cv11xfeatures2dL15FREAK_DEF_PAIRSE, i64 %indvars.iv.next183
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !34
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0108.3, i64 %i.iz
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %indvars.iv.next183
  %i.jc = load i16, ptr %i.ja, align 1
  store i16 %i.jc, ptr %i.jb, align 2
  %indvars.iv.next183.1 = or disjoint i64 %indvars.iv182, 2 ; 2 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr @_ZN2cv11xfeatures2dL15FREAK_DEF_PAIRSE, i64 %indvars.iv.next183.1
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !34
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0108.3, i64 %i.jf
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %indvars.iv.next183.1
  %i.ji = load i16, ptr %i.jg, align 1
  store i16 %i.ji, ptr %i.jh, align 4
  %indvars.iv.next183.2 = or disjoint i64 %indvars.iv182, 3 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr @_ZN2cv11xfeatures2dL15FREAK_DEF_PAIRSE, i64 %indvars.iv.next183.2
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !34
  %i.jl = sext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0108.3, i64 %i.jl
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %indvars.iv.next183.2
  %i.jo = load i16, ptr %i.jm, align 1
  store i16 %i.jo, ptr %i.jn, align 2
  %indvars.iv.next183.3 = add nuw nsw i64 %indvars.iv182, 4 ; 2 uses
  %exitcond185.not.3 = icmp eq i64 %indvars.iv.next183.3, 512
  br i1 %exitcond185.not.3, label %.loopexit, label %bb.ag, !llvm.loop !117

.loopexit:                                        ; preds = %bb.z, %bb.ag
  %i.jp = ptrtoint ptr %.sroa.14.3 to i64
  %i.jq = ptrtoint ptr %.sroa.0108.3 to i64
  %i.jr = sub i64 %i.jp, %i.jq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.3, i64 noundef %i.jr) #24
  br label %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EED2Ev.exit

_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EED2Ev.exit: ; preds = %.loopexit, %bb.b
  ret void

bb.ah:                                            ; preds = %.loopexit122, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.aa
  %.sroa.0108.2 = phi ptr [ %.sroa.0108.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0108.3, %bb.aa ], [ %.sroa.0108.1145, %.loopexit122 ], [ %.sroa.0108.1145, %.loopexit.split-lp ] ; 3 uses
  %.sroa.14.2 = phi ptr [ %.sroa.14.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.14.3, %bb.aa ], [ %.sroa.14.1147, %.loopexit122 ], [ %.sroa.14.1147, %.loopexit.split-lp ]
  %.pn90 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ij, %bb.aa ], [ %lpad.loopexit, %.loopexit122 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i97 = icmp eq ptr %.sroa.0108.2, null
  br i1 %.not.i.i.i97, label %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EED2Ev.exit98, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.js = ptrtoint ptr %.sroa.14.2 to i64
  %i.jt = ptrtoint ptr %.sroa.0108.2 to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0108.2, i64 noundef %i.ju) #24
  br label %_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EED2Ev.exit98

_ZNSt6vectorIN2cv11xfeatures2d10FREAK_Impl15DescriptionPairESaIS3_EED2Ev.exit98: ; preds = %bb.ah, %bb.ai
  resume { ptr, i32 } %.pn90
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
